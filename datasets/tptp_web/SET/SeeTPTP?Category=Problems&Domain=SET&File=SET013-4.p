<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET013-4.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET013-4.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET013-4 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET013-4" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET013-4 : TPTP v9.2.1. Bugfixed v1.2.1.
% Domain   : Set Theory
% Problem  : The intersection of sets is commutative
% Version  : [BL+86] axioms : Reduced > Incomplete.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [ANL]
% Names    : inters.ver2.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.18 v9.1.0, 0.20 v9.0.0, 0.25 v8.2.0, 0.19 v8.1.0, 0.11 v7.5.0, 0.16 v7.4.0, 0.12 v7.3.0, 0.08 v7.1.0, 0.00 v7.0.0, 0.13 v6.4.0, 0.07 v6.3.0, 0.09 v6.2.0, 0.20 v6.1.0, 0.36 v6.0.0, 0.20 v5.5.0, 0.45 v5.4.0, 0.40 v5.3.0, 0.39 v5.2.0, 0.31 v5.1.0, 0.35 v5.0.0, 0.36 v4.1.0, 0.31 v4.0.1, 0.18 v4.0.0, 0.09 v3.7.0, 0.00 v3.5.0, 0.09 v3.4.0, 0.00 v3.3.0, 0.21 v3.2.0, 0.23 v3.1.0, 0.36 v2.7.0, 0.33 v2.6.0, 0.11 v2.5.0, 0.27 v2.4.0, 0.12 v2.2.1, 0.14 v2.2.0, 0.20 v2.1.0, 0.75 v2.0.0
% Syntax   : Number of clauses     :   12 (   4 unt;   2 nHn;  10 RR)
%            Number of literals    :   23 (   6 equ;  10 neg)
%            Maximal clause size   :    3 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    8 (   8 usr;   6 con; 0-2 aty)
%            Number of variables   :   19 (   4 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
% Bugfixes : v1.2.1 - Missing substitution axioms added.
%--------------------------------------------------------------------------
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

%----Definition of empty set
<A NAME="empty_set"></A>cnf(empty_set,axiom,
    ~ member(Z,empty_set) ).

%----Definition of universal set
<A NAME="universal_set"></A>cnf(universal_set,axiom,
    ( member(Z,universal_set)
    | ~ little_set(Z) ) ).

<A NAME="intersection_of_a_and_b_is_c"></A>cnf(intersection_of_a_and_b_is_c,hypothesis,
    intersection(as,bs) = cs ).

<A NAME="intersection_of_b_and_a_is_d"></A>cnf(intersection_of_b_and_a_is_d,hypothesis,
    intersection(bs,as) = ds ).

<A NAME="prove_c_equals_d"></A>cnf(prove_c_equals_d,negated_conjecture,
    cs != ds ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
