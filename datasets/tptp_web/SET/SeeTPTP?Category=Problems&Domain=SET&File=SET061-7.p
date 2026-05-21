<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET061-7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET061-7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET061-7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET061-7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET061-7 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Existence of the null class
% Version  : [Qua92] axioms : Augmented.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
% Source   : [Quaife]
% Names    : SP2 [Qua92]

% Status   : Unsatisfiable
% Rating   : 0.14 v9.1.0, 0.20 v8.2.0, 0.24 v8.1.0, 0.16 v7.5.0, 0.21 v7.4.0, 0.24 v7.3.0, 0.17 v7.1.0, 0.08 v7.0.0, 0.20 v6.4.0, 0.27 v6.3.0, 0.18 v6.2.0, 0.10 v6.1.0, 0.07 v6.0.0, 0.00 v5.5.0, 0.20 v5.3.0, 0.22 v5.2.0, 0.19 v5.1.0, 0.18 v5.0.0, 0.21 v4.1.0, 0.31 v4.0.1, 0.27 v4.0.0, 0.36 v3.7.0, 0.30 v3.5.0, 0.36 v3.4.0, 0.25 v3.3.0, 0.21 v3.2.0, 0.08 v3.1.0, 0.09 v2.7.0, 0.08 v2.6.0, 0.00 v2.5.0, 0.09 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of clauses     :  103 (  32 unt;  11 nHn;  72 RR)
%            Number of literals    :  207 (  43 equ;  95 neg)
%            Maximal clause size   :    5 (   2 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :   10 (   9 usr;   0 prp; 1-3 aty)
%            Number of functors    :   39 (  39 usr;   9 con; 0-3 aty)
%            Number of variables   :  206 (  36 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Preceding lemmas are added.
% Bugfixes : v2.1.0 - Bugfix in SET004-0.ax.
%--------------------------------------------------------------------------
%----Include von Neuman-Bernays-Godel set theory axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-0.ax>SET004-0.ax</a>').
%--------------------------------------------------------------------------
%----Corollaries to Unordered pair axiom. Not in paper, but in email.
<A NAME="corollary_1_to_unordered_pair"></A>cnf(corollary_1_to_unordered_pair,axiom,
    ( ~ member(ordered_pair(X,Y),cross_product(U,V))
    | member(X,unordered_pair(X,Y)) ) ).

<A NAME="corollary_2_to_unordered_pair"></A>cnf(corollary_2_to_unordered_pair,axiom,
    ( ~ member(ordered_pair(X,Y),cross_product(U,V))
    | member(Y,unordered_pair(X,Y)) ) ).

%----Corollaries to Cartesian product axiom.
<A NAME="corollary_1_to_cartesian_product"></A>cnf(corollary_1_to_cartesian_product,axiom,
    ( ~ member(ordered_pair(U,V),cross_product(X,Y))
    | member(U,universal_class) ) ).

<A NAME="corollary_2_to_cartesian_product"></A>cnf(corollary_2_to_cartesian_product,axiom,
    ( ~ member(ordered_pair(U,V),cross_product(X,Y))
    | member(V,universal_class) ) ).

%----                        PARTIAL ORDER.
%----(PO1): reflexive.
<A NAME="subclass_is_reflexive"></A>cnf(subclass_is_reflexive,axiom,
    subclass(X,X) ).

%----(PO2): antisymmetry is part of A-3.
%----(x &lt; y), (y &lt; x) --> (x = y).

%----(PO3): transitivity.
<A NAME="transitivity_of_subclass"></A>cnf(transitivity_of_subclass,axiom,
    ( ~ subclass(X,Y)
    | ~ subclass(Y,Z)
    | subclass(X,Z) ) ).

%----                          EQUALITY.
%----(EQ1): equality axiom.
%----a:x:(x = x).
%----This is always an axiom in the TPTP presentation.

%----(EQ2): expanded equality definition.
<A NAME="equality1"></A>cnf(equality1,axiom,
    ( X = Y
    | member(not_subclass_element(X,Y),X)
    | member(not_subclass_element(Y,X),Y) ) ).

<A NAME="equality2"></A>cnf(equality2,axiom,
    ( ~ member(not_subclass_element(X,Y),Y)
    | X = Y
    | member(not_subclass_element(Y,X),Y) ) ).

<A NAME="equality3"></A>cnf(equality3,axiom,
    ( ~ member(not_subclass_element(Y,X),X)
    | X = Y
    | member(not_subclass_element(X,Y),X) ) ).

<A NAME="equality4"></A>cnf(equality4,axiom,
    ( ~ member(not_subclass_element(X,Y),Y)
    | ~ member(not_subclass_element(Y,X),X)
    | X = Y ) ).

%----                        SPECIAL CLASSES.
%----(SP1): lemma.
<A NAME="special_classes_lemma"></A>cnf(special_classes_lemma,axiom,
    ~ member(Y,intersection(complement(X),X)) ).

<A NAME="prove_existence_of_null_class_1"></A>cnf(prove_existence_of_null_class_1,negated_conjecture,
    member(z,null_class) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
