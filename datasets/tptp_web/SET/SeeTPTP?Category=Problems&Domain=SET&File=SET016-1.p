<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET016-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET016-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET016-1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET016-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET016-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : First components of equal ordered pairs are equal
% Version  : [LW91] axioms : Incomplete.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=LW91>LW91</a>]  Lusk & Wos (1991), Benchmark Problems in Which Equalit
%          : [<a href=SeeTPTP?Category=BibTeX&File=LW92>LW92</a>]  Lusk & Wos (1992), Benchmark Problems in Which Equalit
% Source   : [LW91]
% Names    : NU3.1 [LW92]

% Status   : Unsatisfiable
% Rating   : 0.05 v9.0.0, 0.10 v8.1.0, 0.00 v7.5.0, 0.05 v7.4.0, 0.06 v7.3.0, 0.08 v7.1.0, 0.00 v7.0.0, 0.13 v6.3.0, 0.09 v6.2.0, 0.10 v6.1.0, 0.21 v6.0.0, 0.10 v5.5.0, 0.25 v5.4.0, 0.20 v5.3.0, 0.22 v5.2.0, 0.06 v5.1.0, 0.12 v5.0.0, 0.07 v4.1.0, 0.08 v4.0.1, 0.18 v3.7.0, 0.10 v3.5.0, 0.09 v3.4.0, 0.17 v3.3.0, 0.14 v3.2.0, 0.23 v3.1.0, 0.18 v2.7.0, 0.25 v2.6.0, 0.10 v2.5.0, 0.25 v2.4.0, 0.11 v2.3.0, 0.22 v2.2.1, 0.22 v2.2.0, 0.33 v2.1.0, 0.33 v2.0.0
% Syntax   : Number of clauses     :    8 (   6 unt;   1 nHn;   4 RR)
%            Number of literals    :   11 (   6 equ;   3 neg)
%            Maximal clause size   :    3 (   1 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    7 (   7 usr;   4 con; 0-2 aty)
%            Number of variables   :   12 (   2 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
%--------------------------------------------------------------------------
<A NAME="singleton_1"></A>cnf(singleton_1,axiom,
    member(X,singleton_set(X)) ).

<A NAME="singleton_2"></A>cnf(singleton_2,axiom,
    ( ~ member(X,singleton_set(Y))
    | X = Y ) ).

<A NAME="unordered_pair_1"></A>cnf(unordered_pair_1,axiom,
    member(X,unordered_pair(X,Y)) ).

<A NAME="unordered_pair_2"></A>cnf(unordered_pair_2,axiom,
    member(Y,unordered_pair(X,Y)) ).

<A NAME="unordered_pair_3"></A>cnf(unordered_pair_3,axiom,
    ( ~ member(X,unordered_pair(Y,Z))
    | X = Y
    | X = Z ) ).

<A NAME="ordered_pair"></A>cnf(ordered_pair,axiom,
    ordered_pair(X,Y) = unordered_pair(singleton_set(X),unordered_pair(X,Y)) ).

<A NAME="equal_ordered_pairs"></A>cnf(equal_ordered_pairs,hypothesis,
    ordered_pair(m1,r1) = ordered_pair(m2,r2) ).

<A NAME="prove_first_components_equal"></A>cnf(prove_first_components_equal,negated_conjecture,
    m1 != m2 ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
