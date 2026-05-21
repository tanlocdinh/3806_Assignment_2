from pathlib import Path
import re
import argparse


def clean_isabelle_text(s: str) -> str:
    s = s.replace("\\<and>", "∧")
    s = s.replace("\\<or>", "∨")
    s = s.replace("\\<Longrightarrow>", "⟹")
    s = s.replace("\\<longrightarrow>", "⟶")
    s = s.replace("\\<forall>", "∀")
    s = s.replace("\\<exists>", "∃")
    s = s.replace("\\<noteq>", "≠")
    s = s.replace("\\<in>", "∈")
    s = s.replace("\\<notin>", "∉")
    s = s.replace("\\<le>", "≤")
    s = s.replace("\\<ge>", "≥")
    s = re.sub(r"\s+", " ", s).strip()
    return s


def strip_quotes(s: str) -> str:
    s = s.strip()
    if s.startswith('"') and s.endswith('"'):
        return s[1:-1]
    return s


def extract_blocks(text: str):
    # Remove comments roughly
    text = re.sub(r"\(\*.*?\*\)", "", text, flags=re.S)

    pattern = re.compile(
        r"\b(theorem|lemma|corollary)\s+([A-Za-z0-9_'.-]+)?\s*:\s*(.*?)(?=\n\s*(?:sorry|by\b|proof\b|qed\b|theorem\b|lemma\b|corollary\b|end\b))",
        re.S,
    )
    return pattern.findall(text)


def extract_goal_from_block(block: str) -> str | None:
    block = block.strip()

    fixes_match = re.search(r"\bfixes\b(.*?)(?=\bassumes\b|\bshows\b|$)", block, re.S)
    assumes_matches = re.findall(
        r"\bassumes\b\s+((?:\".*?\"|\S.*?))(?=\s+\band\b|\s+\bshows\b|$)", block, re.S
    )
    and_assumes = re.findall(r"\band\b\s+\"(.*?)\"", block, re.S)

    shows_match = re.search(r"\bshows\b\s+\"(.*?)\"", block, re.S)
    if not shows_match:
        # theorem may be written directly after colon without assumes/shows
        direct = re.search(r"\"(.*?)\"", block, re.S)
        if direct:
            return clean_isabelle_text(strip_quotes(direct.group(1)))
        return None

    assumptions = []
    for m in assumes_matches:
        m = m.strip()
        qs = re.findall(r"\"(.*?)\"", m, re.S)
        if qs:
            assumptions.extend(qs)

    # Add separately written `and "..."`
    assumptions.extend(and_assumes)

    # Remove duplicate assumptions while preserving order
    seen = set()
    uniq = []
    for a in assumptions:
        a = clean_isabelle_text(strip_quotes(a))
        if a and a not in seen:
            seen.add(a)
            uniq.append(a)

    conclusion = clean_isabelle_text(strip_quotes(shows_match.group(1)))

    # Type hints from fixes are difficult to preserve perfectly.
    # For many benchmark goals, Isabelle can infer types.
    # If needed, manually add type annotations to hard arithmetic goals.
    if uniq:
        return " ⟹ ".join(uniq + [conclusion])
    return conclusion


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--input-dir", required=True)
    ap.add_argument("--output", required=True)
    args = ap.parse_args()

    input_dir = Path(args.input_dir)
    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    goals = []
    for thy in sorted(input_dir.rglob("*.thy")):
        text = thy.read_text(encoding="utf-8", errors="ignore")
        for _, name, block in extract_blocks(text):
            goal = extract_goal_from_block(block)
            if goal:
                goals.append((thy.name, name or "unnamed", goal))

    with out_path.open("w", encoding="utf-8") as f:
        for _, _, goal in goals:
            f.write(goal + "\n")

    print(f"Extracted {len(goals)} goals → {out_path}")


if __name__ == "__main__":
    main()
