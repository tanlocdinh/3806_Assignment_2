<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET021-3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET021-3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET021-3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET021-3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET021-3 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : 2nd is unique when x is an ordered pair of sets
% Version  : [BL+86] axioms : Augmented.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [BL+86]
% Names    : Lemma 6 [BL+86]

% Status   : Unsatisfiable
% Rating   : 0.86 v9.1.0, 0.90 v9.0.0, 0.85 v8.2.0, 0.95 v7.5.0, 1.00 v7.3.0, 0.83 v7.0.0, 1.00 v6.4.0, 0.87 v6.3.0, 1.00 v6.0.0, 0.90 v5.5.0, 0.95 v5.3.0, 0.94 v5.2.0, 1.00 v2.0.0
% Syntax   : Number of clauses     :  149 (  14 unt;  20 nHn; 126 RR)
%            Number of literals    :  378 (  56 equ; 213 neg)
%            Maximal clause size   :    8 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-5 aty)
%            Number of functors    :   61 (  61 usr;   8 con; 0-5 aty)
%            Number of variables   :  335 (  30 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include Godel's set axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET003-0.ax>SET003-0.ax</a>').
%--------------------------------------------------------------------------
%----Previously proved lemmas are added at each step
<A NAME="first_components_are_equal"></A>cnf(first_components_are_equal,axiom,
    ( ~ little_set(X)
    | ~ little_set(U)
    | ordered_pair(X,Y) != ordered_pair(U,V)
    | X = U ) ).

<A NAME="left_cancellation"></A>cnf(left_cancellation,axiom,
    ( ~ little_set(X)
    | ~ little_set(Y)
    | non_ordered_pair(Z,X) != non_ordered_pair(Z,Y)
    | X = Y ) ).

<A NAME="second_components_are_equal"></A>cnf(second_components_are_equal,axiom,
    ( ~ little_set(X)
    | ~ little_set(Y)
    | ~ little_set(U)
    | ~ little_set(V)
    | ordered_pair(X,Y) != ordered_pair(U,V)
    | Y = V ) ).

<A NAME="two_sets_equal"></A>cnf(two_sets_equal,axiom,
    ( ~ subset(X,Y)
    | ~ subset(Y,X)
    | X = Y ) ).

<A NAME="property_of_first"></A>cnf(property_of_first,axiom,
    ( ~ little_set(X)
    | ~ little_set(Y)
    | first(ordered_pair(X,Y)) = X ) ).

<A NAME="a_little_set"></A>cnf(a_little_set,hypothesis,
    little_set(a) ).

<A NAME="b_little_set"></A>cnf(b_little_set,hypothesis,
    little_set(b) ).

<A NAME="prove_second_is_second"></A>cnf(prove_second_is_second,negated_conjecture,
    second(ordered_pair(a,b)) != b ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
