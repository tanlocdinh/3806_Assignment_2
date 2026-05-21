"""
planner/tptp_to_isabelle.py

Converts TPTP set-theory goals (prefix/functional notation) into
Isabelle/HOL built-in set notation so the planner pipeline can
attempt proofs without extra axiom imports.

Usage (standalone):
    python tptp_to_isabelle.py "∀B. (subset empty_set B)"

Usage (in pipeline):
    from planner.tptp_to_isabelle import tptp_to_hol, is_tptp_goal
"""

from __future__ import annotations
import re
from typing import Optional

# ---------------------------------------------------------------------------
# Atom / constant map
# ---------------------------------------------------------------------------
_ATOM_MAP: dict[str, str] = {
    "empty_set": "{}",
    "universal_class": "UNIV",
}

# Binary function/predicate map  →  HOL infix template
# {a} and {b} are placeholders for the two converted sub-expressions.
_BINARY_MAP: dict[str, str] = {
    "member": "{a} ∈ {b}",
    "subset": "{a} ⊆ {b}",
    "union": "{a} ∪ {b}",
    "intersection": "{a} ∩ {b}",
    "difference": "{a} - {b}",
    "unordered_pair": "{{{a}, {b}}}",
}

# Unary function/predicate map
_UNARY_MAP: dict[str, str] = {
    "complement": "UNIV - {a}",
    "singleton": "{{{a}}}",
    "empty": "{a} = {}",
}

# All TPTP set-theory keywords — used to detect whether a goal needs conversion
_TPTP_KEYWORDS = set(_BINARY_MAP) | set(_UNARY_MAP) | set(_ATOM_MAP)


# ---------------------------------------------------------------------------
# Tokeniser helpers
# ---------------------------------------------------------------------------


def _find_paren_end(s: str, start: int = 0) -> int:
    """Return the index just past the matching ')' for the '(' at *start*."""
    assert s[start] == "(", f"Expected '(' at position {start}, got {s[start]!r}"
    depth = 0
    for i in range(start, len(s)):
        if s[i] == "(":
            depth += 1
        elif s[i] == ")":
            depth -= 1
            if depth == 0:
                return i + 1
    raise ValueError(f"Unmatched '(' in: {s!r}")


def _next_token_end(s: str, start: int = 0) -> int:
    """
    Return the end index of the next 'token' starting at *start*.
    A token is either a parenthesised block or a run of non-whitespace,
    non-paren characters.
    """
    i = start
    # skip leading whitespace
    while i < len(s) and s[i] == " ":
        i += 1
    if i >= len(s):
        return i
    if s[i] == "(":
        return _find_paren_end(s, i)
    # bare identifier / symbol run
    j = i
    while j < len(s) and s[j] not in " ()":
        j += 1
    return j


def _split_args(s: str, n: int) -> list[str] | None:
    """
    Extract the first *n* space-separated top-level tokens from *s*.
    Returns a list of raw token strings, or None if fewer than *n* found.
    """
    s = s.strip()
    tokens: list[str] = []
    pos = 0
    for _ in range(n):
        # skip whitespace
        while pos < len(s) and s[pos] == " ":
            pos += 1
        if pos >= len(s):
            return None
        end = _next_token_end(s, pos)
        tokens.append(s[pos:end])
        pos = end
    return tokens


# ---------------------------------------------------------------------------
# Core recursive converter
# ---------------------------------------------------------------------------


def _convert_expr(expr: str) -> str:
    """
    Recursively convert a single TPTP expression (term or formula fragment)
    into HOL notation.  This function is called on sub-expressions after
    the top-level connectives (∀ ⟹ ∧ ∨ ¬ ⟷ ⟶ = ≠) have been preserved
    as-is by the caller.
    """
    expr = expr.strip()

    # ------------------------------------------------------------------ atoms
    if expr in _ATOM_MAP:
        return _ATOM_MAP[expr]

    # --------------------------------------------------------- parenthesised
    # Strip a single layer of redundant parens that wrap the whole expression.
    if expr.startswith("(") and _find_paren_end(expr, 0) == len(expr):
        inner = expr[1:-1].strip()
        # Recurse on the inner content
        return _convert_expr(inner)

    # ----------------------------------------------- binary TPTP predicates
    for name, template in _BINARY_MAP.items():
        if expr.startswith(name) and (
            len(expr) == len(name) or expr[len(name)] in " ("
        ):
            rest = expr[len(name) :].strip()
            args = _split_args(rest, 2)
            if args and len(args) == 2:
                a = _convert_expr(args[0])
                b = _convert_expr(args[1])
                result = template.format(a=a, b=b)
                return result

    # ----------------------------------------------- unary TPTP predicates
    for name, template in _UNARY_MAP.items():
        if expr.startswith(name) and (
            len(expr) == len(name) or expr[len(name)] in " ("
        ):
            rest = expr[len(name) :].strip()
            args = _split_args(rest, 1)
            if args:
                a = _convert_expr(args[0])
                return template.format(a=a)

    # ------------------------------------------ fallback: return as-is
    return expr


# ---------------------------------------------------------------------------
# Top-level goal converter
# ---------------------------------------------------------------------------

# Matches TPTP function calls at ANY depth inside the goal string.
# We use a simple iterative replacement strategy: repeatedly find the
# innermost TPTP call (one with no nested TPTP call inside) and replace it.

_INNER_BINARY_RE = re.compile(
    r"\("
    + r"("
    + "|".join(re.escape(k) for k in sorted(_BINARY_MAP, key=len, reverse=True))
    + r")"
    + r"\s+"
    + r"([^()]+?)"  # arg1: no parens (innermost)
    + r"\s+"
    + r"([^()]+?)"  # arg2: no parens (innermost)
    + r"\)"
)

_INNER_UNARY_RE = re.compile(
    r"\("
    + r"("
    + "|".join(re.escape(k) for k in sorted(_UNARY_MAP, key=len, reverse=True))
    + r")"
    + r"\s+"
    + r"([^()]+?)"  # arg: no parens (innermost)
    + r"\)"
)


def _replace_binary(m: re.Match) -> str:
    name, a, b = m.group(1), m.group(2).strip(), m.group(3).strip()
    a = _ATOM_MAP.get(a, a)
    b = _ATOM_MAP.get(b, b)
    template = _BINARY_MAP[name]
    return f"({template.format(a=a, b=b)})"


def _replace_unary(m: re.Match) -> str:
    name, a = m.group(1), m.group(2).strip()
    a = _ATOM_MAP.get(a, a)
    template = _UNARY_MAP[name]
    return f"({template.format(a=a)})"


def tptp_to_hol(goal: str) -> str:
    """
    Convert a TPTP set-theory goal string to Isabelle/HOL notation.

    The conversion is iterative: we repeatedly replace the innermost
    (deepest, paren-free) TPTP function applications until none remain.
    Top-level logical connectives (∀ ∃ ⟹ ∧ ∨ ¬ ⟷ ⟶ = ≠) are preserved.
    """
    g = goal.strip()

    # Replace bare atoms first
    for atom, hol in _ATOM_MAP.items():
        # Only replace when standing alone (not as a prefix of a longer word)
        g = re.sub(rf"\b{re.escape(atom)}\b", hol, g)

    # Iteratively replace innermost TPTP calls
    max_iters = 200
    for _ in range(max_iters):
        g_new = _INNER_UNARY_RE.sub(_replace_unary, g)
        g_new = _INNER_BINARY_RE.sub(_replace_binary, g_new)
        if g_new == g:
            break
        g = g_new

    # Clean up redundant double-parens  ((x))  →  (x)  (cosmetic)
    prev = None
    while prev != g:
        prev = g
        g = re.sub(r"\(\(([^()]+)\)\)", r"(\1)", g)

    return g


def is_tptp_goal(goal: str) -> bool:
    """
    Heuristic: return True if the goal looks like a TPTP set-theory goal
    (i.e. contains at least one TPTP predicate/function name).
    """
    for kw in _TPTP_KEYWORDS:
        # word-boundary check so we don't match 'member' inside 'remember'
        if re.search(rf"\b{re.escape(kw)}\b", goal):
            return True
    return False


# ---------------------------------------------------------------------------
# Post-processing: fix remaining unconverted calls
# (handles cases where arg itself contains spaces — e.g. after partial conversion)
# ---------------------------------------------------------------------------


def tptp_to_hol_full(goal: str) -> str:
    g = tptp_to_hol(goal)

    # Fix remaining 'member X Y' với Y là bất kỳ expression nào
    # Dùng hàm helper để find matching paren
    def replace_member_calls(s: str) -> str:
        pattern = re.compile(r"member\s+(\w+)\s+")
        result = []
        pos = 0
        for m in pattern.finditer(s):
            result.append(s[pos : m.start()])
            var = m.group(1)
            rest_start = m.end()
            rest = s[rest_start:]
            if rest.startswith("("):
                # Find matching closing paren
                depth = 0
                end = 0
                for i, c in enumerate(rest):
                    if c == "(":
                        depth += 1
                    elif c == ")":
                        depth -= 1
                    if depth == 0:
                        end = i + 1
                        break
                arg = rest[:end]
                result.append(f"{var} ∈ {arg}")
                pos = rest_start + end
            else:
                # Simple token
                tok_m = re.match(r"\S+", rest)
                if tok_m:
                    result.append(f"{var} ∈ {tok_m.group(0)}")
                    pos = rest_start + tok_m.end()
                else:
                    result.append(f"member {var} ")
                    pos = rest_start
        result.append(s[pos:])
        return "".join(result)

    # Apply member conversion until stable
    prev = None
    while prev != g:
        prev = g
        g = replace_member_calls(g)

    # Fix remaining binary TPTP ops with HOL args
    for tptp_name, hol_op in [
        ("intersection", "∩"),
        ("difference", "-"),
        ("union", "∪"),
        ("subset", "⊆"),
    ]:
        pattern = rf"{tptp_name}\s+(\([^()]+\)|\w+)\s+(\([^()]+\)|\w+)"
        replacement = rf"(\1 {hol_op} \2)"
        prev = None
        while prev != g:
            prev = g
            g = re.sub(pattern, replacement, g)

    # Fix complement
    g = re.sub(r"complement\s+(\w+)", r"(UNIV - \1)", g)

    # Remove double parens
    prev = None
    while prev != g:
        prev = g
        g = re.sub(r"\(\(([^()]+)\)\)", r"(\1)", g)

    return g


# ---------------------------------------------------------------------------
# CLI for quick testing
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    import sys

    test_goals = [
        # Simple
        "∀B. (subset empty_set B)",
        "∀B C. ((union B C) = (union C B))",
        # Nested
        "∀B C D. (((member D (union B C)) ⟷ (((member D B) ∨ (member D C)))))",
        # Complement / complement
        "∀X Y. ¬ (member Y (intersection (complement X) X))",
        # Singleton / universal_class
        "∀X. (((member X universal_class) ⟶ (member X (singleton X))))",
        # Deep nesting
        (
            "∀B C D. (((member D (difference B (intersection C D))) ⟷ "
            "(((member D (difference B C)) ∨ (member D (difference B D))))))"
        ),
    ]

    if len(sys.argv) > 1:
        test_goals = [" ".join(sys.argv[1:])]

    for g in test_goals:
        converted = tptp_to_hol_full(g)
        print("TPTP :", g)
        print("HOL  :", converted)
        print()
