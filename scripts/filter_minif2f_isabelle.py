#!/usr/bin/env python3
from pathlib import Path
import re
import csv
import argparse

HARD_KEYWORDS = [
    "ln", "sqrt", "norm", "complex", "floor", "card",
    "sin", "cos", "tan", "pi", "quotient_of",
    "\\<Sum>", "∑", "sum", "finite"
]

GOOD_METHODS = [
    "by simp", "by auto", "by linarith", "by nlinarith",
    "by ring", "by argo", "by presburger"
]

def strip_comments(text):
    return re.sub(r"\(\*.*?\*\)", "", text, flags=re.S)

def norm(s):
    return " ".join(s.split())

def extract_goal(text):
    text = strip_comments(text)

    m = re.search(r"\btheorem\s+([A-Za-z0-9_']+)\s*:", text)
    if not m:
        return None, None

    name = m.group(1)
    block = text[m.start():]

    shows = re.search(r"\bshows\s+\"(.*?)\"", block, flags=re.S)
    if not shows:
        return None, None

    conclusion = norm(shows.group(1))
    before = block[:shows.start()]

    assms = []
    for a in re.finditer(r"(?:assumes|and)\s+(?:[A-Za-z0-9_']+\s*:\s*)?\"(.*?)\"", before, flags=re.S):
        assms.append(norm(a.group(1)))

    goal = " ⟹ ".join(assms + [conclusion]) if assms else conclusion

    # Add one type annotation from fixes if the goal has no explicit type.
    if "::" not in goal:
        fm = re.search(r"\bfixes\s+(.+?)::\s*([A-Za-z0-9_.'\"\\<>]+)", block, flags=re.S)
        if fm:
            vars_part = fm.group(1)
            typ = fm.group(2).strip()
            vars_ = re.findall(r"[A-Za-z_][A-Za-z0-9_']*", vars_part)
            if vars_:
                v = vars_[0]
                goal = re.sub(rf"\b{re.escape(v)}\b", f"({v}::{typ})", goal, count=1)

    return name, goal

def score_goal(goal, text):
    score = 0
    reasons = []

    if any(t in goal for t in ["nat", "int", "real"]):
        score += 8
        reasons.append("good_type")

    if any(op in goal for op in ["+", "-", "*", "="]):
        score += 5
        reasons.append("arithmetic")

    if goal.count("⟹") <= 5:
        score += 4
        reasons.append("not_too_many_assumptions")
    else:
        score -= 4
        reasons.append("many_assumptions")

    for m in GOOD_METHODS:
        if m in text:
            score += 10
            reasons.append("source_" + m.replace(" ", "_"))
            break

    for kw in HARD_KEYWORDS:
        if kw in goal or kw in text:
            score -= 12
            reasons.append("hard_" + kw)

    if len(goal) < 220:
        score += 4
        reasons.append("short")
    else:
        score -= 4
        reasons.append("long")

    return score, ", ".join(reasons)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", required=True)
    ap.add_argument("--out-dir", required=True)
    ap.add_argument("--csv", required=True)
    ap.add_argument("--top", type=int, default=50)
    args = ap.parse_args()

    root = Path(args.root)
    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    rows = []

    for p in sorted(root.rglob("*.thy")):
        text = p.read_text(encoding="utf-8", errors="ignore")
        name, goal = extract_goal(text)
        if not name or not goal:
            continue

        score, reasons = score_goal(goal, text)

        rows.append({
            "score": score,
            "name": name,
            "path": str(p),
            "reasons": reasons,
            "goal": goal
        })

    rows.sort(key=lambda r: r["score"], reverse=True)

    Path(args.csv).parent.mkdir(parents=True, exist_ok=True)
    with open(args.csv, "w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=["score", "name", "path", "reasons", "goal"])
        w.writeheader()
        w.writerows(rows)

    for r in rows[:args.top]:
        filename = f"{r['score']:03d}_{r['name']}.txt"
        (out_dir / filename).write_text(r["goal"] + "\n", encoding="utf-8")

    print(f"Wrote CSV: {args.csv}")
    print(f"Wrote candidates to: {args.out_dir}")
    print()
    print("Top candidates:")
    for r in rows[:20]:
        print(f"{r['score']:>4} | {r['name']} | {r['path']}")
        print(f"     {r['reasons']}")
        print(f"     {r['goal'][:200]}")
        print()

if __name__ == "__main__":
    main()
