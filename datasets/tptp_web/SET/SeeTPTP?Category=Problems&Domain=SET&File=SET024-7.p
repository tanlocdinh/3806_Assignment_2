<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET024-7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET024-7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET024-7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET024-7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET024-7 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : A set belongs to its singleton
% Version  : [Qua92] axioms : Augmented.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
% Source   : [Quaife]
% Names    : SS2 [Qua92]

% Status   : Unsatisfiable
% Rating   : 0.05 v7.4.0, 0.06 v7.3.0, 0.00 v7.0.0, 0.20 v6.4.0, 0.13 v6.3.0, 0.09 v6.2.0, 0.10 v6.1.0, 0.07 v6.0.0, 0.00 v5.5.0, 0.10 v5.4.0, 0.15 v5.3.0, 0.06 v5.0.0, 0.14 v4.1.0, 0.15 v4.0.1, 0.09 v4.0.0, 0.18 v3.7.0, 0.20 v3.5.0, 0.18 v3.4.0, 0.08 v3.3.0, 0.07 v3.2.0, 0.08 v3.1.0, 0.09 v2.7.0, 0.08 v2.6.0, 0.00 v2.5.0, 0.09 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of clauses     :  123 (  41 unt;  15 nHn;  82 RR)
%            Number of literals    :  242 (  56 equ; 110 neg)
%            Maximal clause size   :    5 (   1 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :   10 (   9 usr;   0 prp; 1-3 aty)
%            Number of functors    :   39 (  39 usr;   9 con; 0-3 aty)
%            Number of variables   :  242 (  46 sgn)
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

%----(SP2):  Existence of O (null class).
%----e:x:a:z:(-(z e x)).
<A NAME="existence_of_null_class"></A>cnf(existence_of_null_class,axiom,
    ~ member(Z,null_class) ).

%----(SP3): O is a subclass of every class.
<A NAME="null_class_is_subclass"></A>cnf(null_class_is_subclass,axiom,
    subclass(null_class,X) ).

%----corollary.
<A NAME="corollary_of_null_class_is_subclass"></A>cnf(corollary_of_null_class_is_subclass,axiom,
    ( ~ subclass(X,null_class)
    | X = null_class ) ).

%----(SP4): uniqueness of null class.
<A NAME="null_class_is_unique"></A>cnf(null_class_is_unique,axiom,
    ( Z = null_class
    | member(not_subclass_element(Z,null_class),Z) ) ).

%----(SP5): O is a set (follows from axiom of infinity).
<A NAME="null_class_is_a_set"></A>cnf(null_class_is_a_set,axiom,
    member(null_class,universal_class) ).

%----                      UNORDERED PAIRS.
%----(UP1): unordered pair is commutative.
<A NAME="commutativity_of_unordered_pair"></A>cnf(commutativity_of_unordered_pair,axiom,
    unordered_pair(X,Y) = unordered_pair(Y,X) ).

%----(UP2): if one argument is a proper class, pair contains only the
%----other. In a slightly different form to the paper
<A NAME="singleton_in_unordered_pair1"></A>cnf(singleton_in_unordered_pair1,axiom,
    subclass(singleton(X),unordered_pair(X,Y)) ).

<A NAME="singleton_in_unordered_pair2"></A>cnf(singleton_in_unordered_pair2,axiom,
    subclass(singleton(Y),unordered_pair(X,Y)) ).

<A NAME="unordered_pair_equals_singleton1"></A>cnf(unordered_pair_equals_singleton1,axiom,
    ( member(Y,universal_class)
    | unordered_pair(X,Y) = singleton(X) ) ).

<A NAME="unordered_pair_equals_singleton2"></A>cnf(unordered_pair_equals_singleton2,axiom,
    ( member(X,universal_class)
    | unordered_pair(X,Y) = singleton(Y) ) ).

%----(UP3): if both arguments are proper classes, pair is null.
<A NAME="null_unordered_pair"></A>cnf(null_unordered_pair,axiom,
    ( unordered_pair(X,Y) = null_class
    | member(X,universal_class)
    | member(Y,universal_class) ) ).

%----(UP4): left cancellation for unordered pairs.
<A NAME="left_cancellation"></A>cnf(left_cancellation,axiom,
    ( unordered_pair(X,Y) != unordered_pair(X,Z)
    | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class))
    | Y = Z ) ).

%----(UP5): right cancellation for unordered pairs.
<A NAME="right_cancellation"></A>cnf(right_cancellation,axiom,
    ( unordered_pair(X,Z) != unordered_pair(Y,Z)
    | ~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class))
    | X = Y ) ).

%----(UP6): corollary to (A-4).
<A NAME="corollary_to_unordered_pair_axiom1"></A>cnf(corollary_to_unordered_pair_axiom1,axiom,
    ( ~ member(X,universal_class)
    | unordered_pair(X,Y) != null_class ) ).

<A NAME="corollary_to_unordered_pair_axiom2"></A>cnf(corollary_to_unordered_pair_axiom2,axiom,
    ( ~ member(Y,universal_class)
    | unordered_pair(X,Y) != null_class ) ).

%----corollary to instantiate variables.
%----Not in the paper
<A NAME="corollary_to_unordered_pair_axiom3"></A>cnf(corollary_to_unordered_pair_axiom3,axiom,
    ( ~ member(ordered_pair(X,Y),cross_product(U,V))
    | unordered_pair(X,Y) != null_class ) ).

%----(UP7): if both members of a pair belong to a set, the pair
%----is a subset.
<A NAME="unordered_pair_is_subset"></A>cnf(unordered_pair_is_subset,axiom,
    ( ~ member(X,Z)
    | ~ member(Y,Z)
    | subclass(unordered_pair(X,Y),Z) ) ).

%----                       SINGLETONS.
%----(SS1):  every singleton is a set.
<A NAME="singletons_are_sets"></A>cnf(singletons_are_sets,axiom,
    member(singleton(X),universal_class) ).

%----corollary, not in the paper.
<A NAME="corollary_1_to_singletons_are_sets"></A>cnf(corollary_1_to_singletons_are_sets,axiom,
    member(singleton(Y),unordered_pair(X,singleton(Y))) ).

<A NAME="prove_set_in_its_singleton_1"></A>cnf(prove_set_in_its_singleton_1,negated_conjecture,
    member(x,universal_class) ).

<A NAME="prove_set_in_its_singleton_2"></A>cnf(prove_set_in_its_singleton_2,negated_conjecture,
    ~ member(x,singleton(x)) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
