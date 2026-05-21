#!/usr/bin/env python3
from pathlib import Path
import argparse
import csv
import re
import urllib.request
import html
from urllib.parse import urlencode

BASE = "https://tptp.org/cgi-bin/SeeTPTP"

TARGET_SYMBOLS = {
    "member",
    "union",
    "intersection",
    "subset",
    "complement",
    "singleton",
    "unordered_pair",
    "null_class",
    "universal_class",
}

PREFERRED_SYMBOLS = {"member", "union", "intersection", "subset"}

TOKEN_RE = re.compile(
    r"<=>|=>|<=|!=|[!?\[\]\(\),:\.&\|~=]|[A-Za-z_][A-Za-z0-9_]*|\$[A-Za-z_][A-Za-z0-9_]*"
)


def fetch_text(url: str) -> str:
    req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0"})
    with urllib.request.urlopen(req, timeout=30) as r:
        return r.read().decode("utf-8", errors="ignore")


def download(url: str, out: Path):
    out.parent.mkdir(parents=True, exist_ok=True)
    if out.exists() and out.stat().st_size > 0:
        return
    req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0"})
    with urllib.request.urlopen(req, timeout=60) as r:
        data = r.read()
    out.write_bytes(data)


def strip_comments(text: str) -> str:
    lines = []
    for line in text.splitlines():
        if line.strip().startswith("%"):
            continue
        lines.append(line)
    return "\n".join(lines)


def make_tptp_url(domain: str, file: str | None = None) -> str:
    params = {
        "Category": "Problems",
        "Domain": domain,
    }
    if file is not None:
        params["File"] = file
    return BASE + "?" + urlencode(params)


def find_problem_links(domain: str, limit: int | None = None):
    """
    Scan the TPTP CGI domain page and extract problem file names,
    e.g. SET171+3.p, then return CGI URLs for each file.
    """
    url = make_tptp_url(domain)
    html = fetch_text(url)

    # Match TPTP problem files such as SET171+3.p, SET001-1.p, SET123=4.p.
    pattern = rf"{re.escape(domain)}[0-9]{{3}}[+\-=^][A-Za-z0-9_.+\-]*\.p"
    files = sorted(set(re.findall(pattern, html)))

    if limit:
        files = files[:limit]

    return [make_tptp_url(domain, f) for f in files]


def find_blocks(text: str, keyword: str):
    blocks = []
    i = 0
    while True:
        start = text.find(keyword + "(", i)
        if start == -1:
            break

        j = start + len(keyword) + 1
        depth = 1
        in_quote = False
        quote_char = ""

        while j < len(text):
            ch = text[j]

            if in_quote:
                if ch == quote_char:
                    in_quote = False
                j += 1
                continue

            if ch in ["'", '"']:
                in_quote = True
                quote_char = ch
                j += 1
                continue

            if ch == "(":
                depth += 1
            elif ch == ")":
                depth -= 1
                if depth == 0:
                    k = j + 1
                    while k < len(text) and text[k].isspace():
                        k += 1
                    if k < len(text) and text[k] == ".":
                        blocks.append(text[start : k + 1])
                        i = k + 1
                        break
            j += 1
        else:
            break

    return blocks


def split_top_level_commas(s: str):
    parts, cur = [], []
    depth = 0
    in_quote = False
    quote_char = ""

    for ch in s:
        if in_quote:
            cur.append(ch)
            if ch == quote_char:
                in_quote = False
            continue

        if ch in ["'", '"']:
            in_quote = True
            quote_char = ch
            cur.append(ch)
            continue

        if ch in "([":
            depth += 1
        elif ch in ")]":
            depth -= 1

        if ch == "," and depth == 0:
            parts.append("".join(cur).strip())
            cur = []
        else:
            cur.append(ch)

    if cur:
        parts.append("".join(cur).strip())

    return parts


def parse_fof_block(block: str):
    inner = block.strip()
    if not inner.startswith("fof("):
        return None
    inner = inner[len("fof(") :]
    if inner.endswith(")."):
        inner = inner[:-2]

    parts = split_top_level_commas(inner)
    if len(parts) < 3:
        return None

    return {
        "name": parts[0].strip().strip("'\""),
        "role": parts[1].strip(),
        "formula": parts[2].strip(),
    }


class Parser:
    def __init__(self, text):
        self.tokens = TOKEN_RE.findall(text)
        self.i = 0

    def peek(self):
        return self.tokens[self.i] if self.i < len(self.tokens) else None

    def pop(self, expected=None):
        tok = self.peek()
        if expected is not None and tok != expected:
            raise ValueError(f"Expected {expected}, got {tok}")
        self.i += 1
        return tok

    def parse(self):
        return self.parse_iff()

    def parse_iff(self):
        left = self.parse_imp()
        while self.peek() == "<=>":
            self.pop()
            right = self.parse_imp()
            left = f"({left} ⟷ {right})"
        return left

    def parse_imp(self):
        left = self.parse_or()
        while self.peek() in ("=>", "<="):
            op = self.pop()
            right = self.parse_or()
            if op == "=>":
                left = f"({left} ⟶ {right})"
            else:
                left = f"({right} ⟶ {left})"
        return left

    def parse_or(self):
        left = self.parse_and()
        while self.peek() == "|":
            self.pop()
            right = self.parse_and()
            left = f"({left} ∨ {right})"
        return left

    def parse_and(self):
        left = self.parse_not()
        while self.peek() == "&":
            self.pop()
            right = self.parse_not()
            left = f"({left} ∧ {right})"
        return left

    def parse_not(self):
        if self.peek() == "~":
            self.pop()
            return f"¬ {self.parse_not()}"
        return self.parse_quant_or_atom()

    def parse_quant_or_atom(self):
        if self.peek() in ("!", "?"):
            q = self.pop()
            self.pop("[")
            vars_ = []
            while True:
                vars_.append(self.pop())
                if self.peek() == ",":
                    self.pop(",")
                    continue
                break
            self.pop("]")
            self.pop(":")
            body = self.parse_iff()
            qsym = "∀" if q == "!" else "∃"
            return f"({qsym}{' '.join(vars_)}. {body})"

        if self.peek() == "(":
            self.pop("(")
            inside = self.parse_iff()
            self.pop(")")
            return f"({inside})"

        return self.parse_atomic()

    def parse_atomic(self):
        left = self.parse_term()
        if self.peek() in ("=", "!="):
            op = self.pop()
            right = self.parse_term()
            return f"({left} {'=' if op == '=' else '≠'} {right})"
        return left

    def parse_term(self):
        name = self.pop()
        if name is None:
            raise ValueError("Unexpected EOF")

        if self.peek() == "(":
            self.pop("(")
            args = []
            if self.peek() != ")":
                while True:
                    args.append(self.parse_term())
                    if self.peek() == ",":
                        self.pop(",")
                        continue
                    break
            self.pop(")")
            return "(" + " ".join([name] + args) + ")"

        return name


def balanced_outer(s: str):
    depth = 0
    for i, ch in enumerate(s):
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
            if depth == 0 and i != len(s) - 1:
                return False
    return depth == 0


def fof_to_isabelle(formula: str):
    out = Parser(formula.strip()).parse().strip()
    while out.startswith("(") and out.endswith(")") and balanced_outer(out):
        out = out[1:-1].strip()
    return out


def symbols_in(text: str):
    return set(re.findall(r"[A-Za-z_][A-Za-z0-9_]*", text))


def score_fofs(domain: str, fofs):
    text = "\n".join(f["formula"] for f in fofs)
    syms = symbols_in(text)
    score = 0
    reasons = []

    if domain == "SET":
        score += 20
        reasons.append("+SET")

    overlap = len(syms & TARGET_SYMBOLS)
    score += overlap * 5
    reasons.append(f"+target_overlap_{overlap}")

    preferred = len(syms & PREFERRED_SYMBOLS)
    score += preferred * 8
    reasons.append(f"+preferred_overlap_{preferred}")

    if "union" in syms and "intersection" in syms:
        score += 15
        reasons.append("+union_intersection")

    if "subset" in syms and "member" in syms:
        score += 15
        reasons.append("+subset_member")

    if len(text) < 3000:
        score += 10
        reasons.append("+short")
    elif len(text) > 7000:
        score -= 20
        reasons.append("-long")

    if any(f["role"] in ("conjecture", "theorem") for f in fofs):
        score += 10
        reasons.append("+has_conjecture")
    else:
        score -= 50
        reasons.append("-no_conjecture")

    return score, reasons


def select_axioms(axioms, conjecture_formula, max_axioms):
    csyms = symbols_in(conjecture_formula)
    scored = []
    for a in axioms:
        asyms = symbols_in(a["formula"])
        score = len(asyms & csyms) * 5 + len(asyms & PREFERRED_SYMBOLS) * 3
        if len(a["formula"]) > 800:
            score -= 5
        scored.append((score, a))

    scored.sort(key=lambda x: x[0], reverse=True)
    return [a for _, a in scored[:max_axioms]]


def extract_from_file(local_path: Path, domain: str, max_axioms: int):
    raw = local_path.read_text(encoding="utf-8", errors="ignore")
    raw = html.unescape(raw)
    text = strip_comments(raw)
    fofs = []
    for block in find_blocks(text, "fof"):
        obj = parse_fof_block(block)
        if obj:
            fofs.append(obj)

    if not fofs:
        return []

    score, reasons = score_fofs(domain, fofs)

    conjectures = [f for f in fofs if f["role"] in ("conjecture", "theorem")]
    axioms = [f for f in fofs if f["role"] in ("axiom", "hypothesis", "lemma")]

    rows = []
    for conj in conjectures:
        try:
            chosen = select_axioms(axioms, conj["formula"], max_axioms)
            assms = [fof_to_isabelle(a["formula"]) for a in chosen]
            conclusion = fof_to_isabelle(conj["formula"])
            goal = " ⟹ ".join(assms + [conclusion])
            if len(goal) > 3500:
                continue

            rows.append(
                {
                    "score": score,
                    "file": str(local_path),
                    "conjecture": conj["name"],
                    "num_axioms": len(chosen),
                    "reasons": ", ".join(reasons),
                    "goal": goal,
                }
            )
        except Exception as e:
            rows.append(
                {
                    "score": score,
                    "file": str(local_path),
                    "conjecture": conj["name"],
                    "num_axioms": 0,
                    "reasons": "CONVERT_FAIL: " + str(e),
                    "goal": "",
                }
            )

    return rows


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--domains", nargs="+", default=["SET"])
    ap.add_argument("--download-dir", default="datasets/tptp_web")
    ap.add_argument("--out", default="datasets/my_tests/tptp_set_like_web_goals.txt")
    ap.add_argument("--csv", default="datasets/my_tests/tptp_set_like_web_goals.csv")
    ap.add_argument("--domain-limit", type=int, default=150)
    ap.add_argument("--max-goals", type=int, default=30)
    ap.add_argument("--max-axioms", type=int, default=10)
    ap.add_argument("--min-score", type=int, default=60)
    args = ap.parse_args()

    download_dir = Path(args.download_dir)
    all_rows = []

    for domain in args.domains:
        print(f"Scanning domain {domain}...")
        links = find_problem_links(domain, args.domain_limit)
        print(f"Found {len(links)} .p links in {domain}")

        for idx, url in enumerate(links, 1):
            name = Path(url).name
            local = download_dir / domain / name
            print(f"[{idx}/{len(links)}] downloading/parsing {name}", flush=True)

            try:
                download(url, local)
                rows = extract_from_file(local, domain, args.max_axioms)
                for r in rows:
                    if int(r["score"]) >= args.min_score and r["goal"]:
                        all_rows.append(r)
            except Exception as e:
                print(f"[skip] {url}: {e}")

    all_rows.sort(key=lambda r: int(r["score"]), reverse=True)

    final_goals = []
    seen = set()
    final_rows = []

    for r in all_rows:
        g = r["goal"]
        if not g or g in seen:
            continue
        seen.add(g)
        final_goals.append(g)
        final_rows.append(r)
        if len(final_goals) >= args.max_goals:
            break

    Path(args.out).parent.mkdir(parents=True, exist_ok=True)
    Path(args.csv).parent.mkdir(parents=True, exist_ok=True)

    Path(args.out).write_text("\n".join(final_goals) + "\n", encoding="utf-8")

    with open(args.csv, "w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(
            f,
            fieldnames=["score", "file", "conjecture", "num_axioms", "reasons", "goal"],
        )
        w.writeheader()
        w.writerows(final_rows)

    print()
    print(f"Wrote goals: {args.out}")
    print(f"Wrote CSV:   {args.csv}")
    print(f"Goals kept:  {len(final_goals)}")
    print()
    for i, r in enumerate(final_rows[:10], 1):
        print(f"[{i}] score={r['score']} file={r['file']} conjecture={r['conjecture']}")
        print(f"    {r['goal'][:250]}...")
        print()


if __name__ == "__main__":
    main()
