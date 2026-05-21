<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET014-4.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET014-4.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET014-4 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET014-4" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET014-4 : TPTP v9.2.1. Bugfixed v1.2.1.
% Domain   : Set Theory
% Problem  : Union of subsets is a subset
% Version  : [BL+86] axioms : Reduced > Incomplete.
% English  : If A and B are contained in C then the union of A and B is also.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [ANL]
% Names    : subset.ver2.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.18 v9.1.0, 0.15 v9.0.0, 0.20 v8.2.0, 0.14 v8.1.0, 0.21 v7.5.0, 0.26 v7.4.0, 0.35 v7.3.0, 0.33 v7.1.0, 0.25 v7.0.0, 0.40 v6.4.0, 0.33 v6.3.0, 0.36 v6.2.0, 0.20 v6.1.0, 0.43 v6.0.0, 0.40 v5.5.0, 0.75 v5.4.0, 0.80 v5.3.0, 0.78 v5.2.0, 0.62 v5.1.0, 0.59 v5.0.0, 0.50 v4.1.0, 0.54 v4.0.1, 0.64 v4.0.0, 0.45 v3.7.0, 0.30 v3.5.0, 0.36 v3.4.0, 0.42 v3.3.0, 0.50 v3.2.0, 0.46 v3.1.0, 0.36 v2.7.0, 0.50 v2.6.0, 0.56 v2.5.0, 0.73 v2.4.0, 0.62 v2.3.0, 0.75 v2.2.1, 0.86 v2.2.0, 0.80 v2.1.0, 1.00 v2.0.0
% Syntax   : Number of clauses     :   18 (   5 unt;   4 nHn;  13 RR)
%            Number of literals    :   36 (   4 equ;  16 neg)
%            Maximal clause size   :    3 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :   10 (  10 usr;   5 con; 0-2 aty)
%            Number of variables   :   32 (   4 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
% Bugfixes : v1.2.1 - Missing substitution axioms added.
%------------------------------------------------------------------------------
%----Axiom A-2, elements of sets are little sets.
<A NAME="a2"></A>cnf(a2,axiom,
    ( ~ member(X,Y)
    | little_set(X) ) ).

%----Axiom A-3, principle of extensionality
<A NAME="extensionality1"></A>cnf(extensionality1,axiom,
    ( little_set(f1(X,Y))
    | X = Y ) ).

<A NAME="extensionality2"></A>cnf(extensionality2,axiom,
    ( member(f1(X,Y),X)
    | member(f1(X,Y),Y)
    | X = Y ) ).

<A NAME="extensionality3"></A>cnf(extensionality3,axiom,
    ( ~ member(f1(X,Y),X)
    | ~ member(f1(X,Y),Y)
    | X = Y ) ).

%----Axiom B-2, intersection
<A NAME="intersection1"></A>cnf(intersection1,axiom,
    ( ~ member(Z,intersection(X,Y))
    | member(Z,X) ) ).

<A NAME="intersection2"></A>cnf(intersection2,axiom,
    ( ~ member(Z,intersection(X,Y))
    | member(Z,Y) ) ).

<A NAME="intersection3"></A>cnf(intersection3,axiom,
    ( member(Z,intersection(X,Y))
    | ~ member(Z,X)
    | ~ member(Z,Y) ) ).

%----Axiom B-3, complement
<A NAME="complement1"></A>cnf(complement1,axiom,
    ( ~ member(Z,complement(X))
    | ~ member(Z,X) ) ).

<A NAME="complement2"></A>cnf(complement2,axiom,
    ( member(Z,complement(X))
    | ~ little_set(Z)
    | member(Z,X) ) ).

%----Definition of union
<A NAME="union"></A>cnf(union,axiom,
    union(X,Y) = complement(intersection(complement(X),complement(Y))) ).

%----Definition of empty set
<A NAME="empty_set"></A>cnf(empty_set,axiom,
    ~ member(Z,empty_set) ).

%----Definition of universal set
<A NAME="universal_set"></A>cnf(universal_set,axiom,
    ( member(Z,universal_set)
    | ~ little_set(Z) ) ).

%----Definition of subset
<A NAME="subset1"></A>cnf(subset1,axiom,
    ( ~ subset(X,Y)
    | ~ member(U,X)
    | member(U,Y) ) ).

<A NAME="subset2"></A>cnf(subset2,axiom,
    ( subset(X,Y)
    | member(f17(X,Y),X) ) ).

<A NAME="subset3"></A>cnf(subset3,axiom,
    ( subset(X,Y)
    | ~ member(f17(X,Y),Y) ) ).

<A NAME="a_subset_of_c"></A>cnf(a_subset_of_c,hypothesis,
    subset(as,cs) ).

<A NAME="b_subset_of_c"></A>cnf(b_subset_of_c,hypothesis,
    subset(bs,cs) ).

<A NAME="prove_a_union_b_subset_of_c"></A>cnf(prove_a_union_b_subset_of_c,negated_conjecture,
    ~ subset(union(as,bs),cs) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
