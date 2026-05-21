<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET022-3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET022-3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET022-3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET022-3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET022-3 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : The first component of an ordered pair is a little set
% Version  : [BL+86] axioms : Augmented.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [BL+86]
% Names    : Lemma 7 [BL+86]

% Status   : Unsatisfiable
% Rating   : 0.18 v9.1.0, 0.25 v9.0.0, 0.15 v8.2.0, 0.14 v8.1.0, 0.16 v7.5.0, 0.21 v7.4.0, 0.18 v7.3.0, 0.17 v7.2.0, 0.25 v7.1.0, 0.08 v7.0.0, 0.27 v6.3.0, 0.18 v6.2.0, 0.20 v6.1.0, 0.36 v6.0.0, 0.30 v5.5.0, 0.60 v5.4.0, 0.55 v5.3.0, 0.67 v5.2.0, 0.56 v5.1.0, 0.59 v5.0.0, 0.43 v4.1.0, 0.38 v4.0.1, 0.36 v4.0.0, 0.27 v3.7.0, 0.20 v3.5.0, 0.36 v3.4.0, 0.42 v3.3.0, 0.43 v3.2.0, 0.54 v3.1.0, 0.27 v2.7.0, 0.42 v2.6.0, 0.40 v2.5.0, 0.50 v2.4.0, 0.44 v2.3.0, 0.56 v2.2.1, 0.67 v2.2.0, 0.67 v2.1.0, 0.89 v2.0.0
% Syntax   : Number of clauses     :  149 (  13 unt;  20 nHn; 126 RR)
%            Number of literals    :  380 (  56 equ; 215 neg)
%            Maximal clause size   :    8 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-5 aty)
%            Number of functors    :   60 (  60 usr;   7 con; 0-5 aty)
%            Number of variables   :  337 (  30 sgn)
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

<A NAME="property_of_second"></A>cnf(property_of_second,axiom,
    ( ~ little_set(X)
    | ~ little_set(Y)
    | second(ordered_pair(X,Y)) = Y ) ).

<A NAME="an_ordered_pair_predicate"></A>cnf(an_ordered_pair_predicate,hypothesis,
    ordered_pair_predicate(a) ).

<A NAME="prove_first_component_is_small"></A>cnf(prove_first_component_is_small,negated_conjecture,
    ~ little_set(first(a)) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
