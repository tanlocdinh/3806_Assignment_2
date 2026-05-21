<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET042-3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET042-3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET042-3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET042-3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET042-3 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : Ordered pairs are in cross products
% Version  : [BL+86] axioms : Augmented.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [BL+86]
% Names    : Lemma 27 [BL+86]

% Status   : Unsatisfiable
% Rating   : 0.27 v9.1.0, 0.30 v8.2.0, 0.38 v8.1.0, 0.32 v7.5.0, 0.47 v7.3.0, 0.42 v7.1.0, 0.33 v7.0.0, 0.53 v6.3.0, 0.45 v6.2.0, 0.50 v6.1.0, 0.64 v6.0.0, 0.80 v5.5.0, 0.90 v5.3.0, 0.89 v5.2.0, 0.75 v5.1.0, 0.76 v5.0.0, 0.79 v4.1.0, 0.85 v4.0.1, 0.82 v4.0.0, 0.73 v3.7.0, 0.60 v3.5.0, 0.64 v3.4.0, 0.58 v3.3.0, 0.79 v3.2.0, 0.77 v3.1.0, 0.64 v2.7.0, 0.75 v2.6.0, 0.60 v2.5.0, 0.75 v2.4.0, 0.67 v2.3.0, 0.78 v2.2.1, 0.89 v2.2.0, 0.89 v2.1.0, 0.89 v2.0.0
% Syntax   : Number of clauses     :  170 (  19 unt;  20 nHn; 138 RR)
%            Number of literals    :  427 (  60 equ; 241 neg)
%            Maximal clause size   :    8 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-5 aty)
%            Number of functors    :   63 (  63 usr;  10 con; 0-5 aty)
%            Number of variables   :  384 (  36 sgn)
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

<A NAME="first_component_is_small"></A>cnf(first_component_is_small,axiom,
    ( ~ ordered_pair_predicate(X)
    | little_set(first(X)) ) ).

<A NAME="second_component_is_small"></A>cnf(second_component_is_small,axiom,
    ( ~ ordered_pair_predicate(X)
    | little_set(second(X)) ) ).

<A NAME="property_of_singleton_sets"></A>cnf(property_of_singleton_sets,axiom,
    ( ~ little_set(X)
    | member(X,singleton_set(X)) ) ).

<A NAME="ordered_pairs_are_small1"></A>cnf(ordered_pairs_are_small1,axiom,
    little_set(ordered_pair(X,Y)) ).

<A NAME="ordered_pairs_are_small2"></A>cnf(ordered_pairs_are_small2,axiom,
    ( ~ ordered_pair_predicate(X)
    | little_set(X) ) ).

<A NAME="containment_is_transitive"></A>cnf(containment_is_transitive,axiom,
    ( ~ subset(X,Y)
    | ~ subset(Y,Z)
    | subset(X,Z) ) ).

<A NAME="image_and_apply1"></A>cnf(image_and_apply1,axiom,
    subset(apply(Xf,Y),sigma(image(singleton_set(Y),Xf))) ).

<A NAME="image_and_apply2"></A>cnf(image_and_apply2,axiom,
    subset(image(singleton_set(Y),Xf),apply(Xf,Y)) ).

<A NAME="function_values_are_small"></A>cnf(function_values_are_small,axiom,
    ( ~ function(Y)
    | little_set(apply(Y,X)) ) ).

<A NAME="composition_is_a_relation"></A>cnf(composition_is_a_relation,axiom,
    relation(compose(Y,X)) ).

<A NAME="range_of_composition"></A>cnf(range_of_composition,axiom,
    subset(range_of(compose(Y,X)),range_of(Y)) ).

<A NAME="domain_of_composition"></A>cnf(domain_of_composition,axiom,
    ( ~ subset(range_of(X),domain_of(Y))
    | domain_of(X) = domain_of(compose(Y,X)) ) ).

<A NAME="composition_is_a_function"></A>cnf(composition_is_a_function,axiom,
    ( ~ function(X)
    | ~ function(Y)
    | function(compose(Y,X)) ) ).

<A NAME="maps_for_composition"></A>cnf(maps_for_composition,axiom,
    ( ~ maps(Xf,U,V)
    | ~ maps(Xg,V,W)
    | maps(compose(Xg,Xf),U,W) ) ).

<A NAME="apply_for_functions1"></A>cnf(apply_for_functions1,axiom,
    ( ~ little_set(X)
    | ~ little_set(Y)
    | ~ function(Xf)
    | ~ member(ordered_pair(X,Y),Xf)
    | apply(Xf,X) = Y ) ).

<A NAME="apply_for_functions2"></A>cnf(apply_for_functions2,axiom,
    ( ~ function(Xf)
    | ~ member(X,domain_of(Xf))
    | apply(Xf,X) != Y
    | member(ordered_pair(X,Y),Xf) ) ).

<A NAME="apply_for_functions3"></A>cnf(apply_for_functions3,axiom,
    ( ~ maps(Xf,Xd,Xr)
    | ~ member(X,Xd)
    | member(apply(Xf,X),Xr) ) ).

<A NAME="apply_for_composition1"></A>cnf(apply_for_composition1,axiom,
    ( ~ function(Xf)
    | ~ member(X,domain_of(Xf))
    | subset(apply(Xg,apply(Xf,X)),apply(compose(Xg,Xf),X)) ) ).

<A NAME="apply_for_composition2"></A>cnf(apply_for_composition2,axiom,
    ( ~ function(Xf)
    | subset(apply(compose(Xg,Xf),X),apply(Xg,apply(Xf,X))) ) ).

<A NAME="apply_for_composition3"></A>cnf(apply_for_composition3,axiom,
    ( ~ function(Xf)
    | ~ member(X,domain_of(Xf))
    | apply(Xg,apply(Xf,X)) = apply(compose(Xg,Xf),X) ) ).

<A NAME="member_of_set_a"></A>cnf(member_of_set_a,hypothesis,
    member(a,set_a) ).

<A NAME="member_of_set_b"></A>cnf(member_of_set_b,hypothesis,
    member(b,set_b) ).

<A NAME="prove_ordered_pair_is_in_cross_product"></A>cnf(prove_ordered_pair_is_in_cross_product,negated_conjecture,
    ~ member(ordered_pair(a,b),cross_product(set_a,set_b)) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
