<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET055-7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET055-7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET055-7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET055-7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET055-7 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : Equality is reflexive
% Version  : [Qua92] axioms : Augmented.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
% Source   : [Quaife]
% Names    : EQ1 [Qua92]

% Status   : Unsatisfiable
% Rating   : 0.08 v9.1.0, 0.18 v9.0.0, 0.08 v8.2.0, 0.14 v8.1.0, 0.00 v7.5.0, 0.17 v7.4.0, 0.00 v7.0.0, 0.12 v6.4.0, 0.25 v6.3.0, 0.14 v6.2.0, 0.11 v6.1.0, 0.00 v5.0.0, 0.14 v4.1.0, 0.12 v4.0.1, 0.20 v4.0.0, 0.14 v3.4.0, 0.25 v3.3.0, 0.33 v3.2.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :  165 (  31 unt;   8 nHn;  99 RR)
%            Number of literals    :  344 (   0 equ; 174 neg)
%            Maximal clause size   :    5 (   2 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :   10 (  10 usr;   0 prp; 1-3 aty)
%            Number of functors    :   39 (  39 usr;   9 con; 0-3 aty)
%            Number of variables   :  398 (  36 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments : Preceding lemmas are added.
%--------------------------------------------------------------------------
%----Don't include von Neuman-Bernays-Godel set theory axioms because
%----equality is incomplete
%include('Axioms/SET004-0.ax').
%--------------------------------------------------------------------------
<A NAME="symmetry"></A>cnf(symmetry,axiom,
    ( ~ equalish(X,Y)
    | equalish(Y,X) ) ).

<A NAME="transitivity"></A>cnf(transitivity,axiom,
    ( ~ equalish(X,Y)
    | ~ equalish(Y,Z)
    | equalish(X,Z) ) ).

<A NAME="apply_substitution1"></A>cnf(apply_substitution1,axiom,
    ( ~ equalish(D,E)
    | equalish(apply(D,F),apply(E,F)) ) ).

<A NAME="apply_substitution2"></A>cnf(apply_substitution2,axiom,
    ( ~ equalish(G,H)
    | equalish(apply(I,G),apply(I,H)) ) ).

<A NAME="cantor_substitution1"></A>cnf(cantor_substitution1,axiom,
    ( ~ equalish(J,K)
    | equalish(cantor(J),cantor(K)) ) ).

<A NAME="complement_substitution1"></A>cnf(complement_substitution1,axiom,
    ( ~ equalish(L,M)
    | equalish(complement(L),complement(M)) ) ).

<A NAME="compose_substitution1"></A>cnf(compose_substitution1,axiom,
    ( ~ equalish(N,O)
    | equalish(compose(N,P),compose(O,P)) ) ).

<A NAME="compose_substitution2"></A>cnf(compose_substitution2,axiom,
    ( ~ equalish(Q,R)
    | equalish(compose(S,Q),compose(S,R)) ) ).

<A NAME="cross_product_substitution1"></A>cnf(cross_product_substitution1,axiom,
    ( ~ equalish(T,U)
    | equalish(cross_product(T,V),cross_product(U,V)) ) ).

<A NAME="cross_product_substitution2"></A>cnf(cross_product_substitution2,axiom,
    ( ~ equalish(W,X)
    | equalish(cross_product(Y,W),cross_product(Y,X)) ) ).

<A NAME="diagonalise_substitution1"></A>cnf(diagonalise_substitution1,axiom,
    ( ~ equalish(Z,A1)
    | equalish(diagonalise(Z),diagonalise(A1)) ) ).

<A NAME="symmetric_difference_substitution1"></A>cnf(symmetric_difference_substitution1,axiom,
    ( ~ equalish(B1,C1)
    | equalish(symmetric_difference(B1,D1),symmetric_difference(C1,D1)) ) ).

<A NAME="symmetric_difference_substitution2"></A>cnf(symmetric_difference_substitution2,axiom,
    ( ~ equalish(E1,F1)
    | equalish(symmetric_difference(G1,E1),symmetric_difference(G1,F1)) ) ).

<A NAME="domain_substitution1"></A>cnf(domain_substitution1,axiom,
    ( ~ equalish(H1,I1)
    | equalish(domain(H1,J1,K1),domain(I1,J1,K1)) ) ).

<A NAME="domain_substitution2"></A>cnf(domain_substitution2,axiom,
    ( ~ equalish(L1,M1)
    | equalish(domain(N1,L1,O1),domain(N1,M1,O1)) ) ).

<A NAME="domain_substitution3"></A>cnf(domain_substitution3,axiom,
    ( ~ equalish(P1,Q1)
    | equalish(domain(R1,S1,P1),domain(R1,S1,Q1)) ) ).

<A NAME="domain_of_substitution1"></A>cnf(domain_of_substitution1,axiom,
    ( ~ equalish(T1,U1)
    | equalish(domain_of(T1),domain_of(U1)) ) ).

<A NAME="first_substitution1"></A>cnf(first_substitution1,axiom,
    ( ~ equalish(V1,W1)
    | equalish(first(V1),first(W1)) ) ).

<A NAME="flip_substitution1"></A>cnf(flip_substitution1,axiom,
    ( ~ equalish(X1,Y1)
    | equalish(flip(X1),flip(Y1)) ) ).

<A NAME="image_substitution1"></A>cnf(image_substitution1,axiom,
    ( ~ equalish(Z1,A2)
    | equalish(image(Z1,B2),image(A2,B2)) ) ).

<A NAME="image_substitution2"></A>cnf(image_substitution2,axiom,
    ( ~ equalish(C2,D2)
    | equalish(image(E2,C2),image(E2,D2)) ) ).

<A NAME="intersection_substitution1"></A>cnf(intersection_substitution1,axiom,
    ( ~ equalish(F2,G2)
    | equalish(intersection(F2,H2),intersection(G2,H2)) ) ).

<A NAME="intersection_substitution2"></A>cnf(intersection_substitution2,axiom,
    ( ~ equalish(I2,J2)
    | equalish(intersection(K2,I2),intersection(K2,J2)) ) ).

<A NAME="inverse_substitution1"></A>cnf(inverse_substitution1,axiom,
    ( ~ equalish(L2,M2)
    | equalish(inverse(L2),inverse(M2)) ) ).

<A NAME="not_homomorphism1_substitution1"></A>cnf(not_homomorphism1_substitution1,axiom,
    ( ~ equalish(N2,O2)
    | equalish(not_homomorphism1(N2,P2,Q2),not_homomorphism1(O2,P2,Q2)) ) ).

<A NAME="not_homomorphism1_substitution2"></A>cnf(not_homomorphism1_substitution2,axiom,
    ( ~ equalish(R2,S2)
    | equalish(not_homomorphism1(T2,R2,U2),not_homomorphism1(T2,S2,U2)) ) ).

<A NAME="not_homomorphism1_substitution3"></A>cnf(not_homomorphism1_substitution3,axiom,
    ( ~ equalish(V2,W2)
    | equalish(not_homomorphism1(X2,Y2,V2),not_homomorphism1(X2,Y2,W2)) ) ).

<A NAME="not_homomorphism2_substitution1"></A>cnf(not_homomorphism2_substitution1,axiom,
    ( ~ equalish(Z2,A3)
    | equalish(not_homomorphism2(Z2,B3,C3),not_homomorphism2(A3,B3,C3)) ) ).

<A NAME="not_homomorphism2_substitution2"></A>cnf(not_homomorphism2_substitution2,axiom,
    ( ~ equalish(D3,E3)
    | equalish(not_homomorphism2(F3,D3,G3),not_homomorphism2(F3,E3,G3)) ) ).

<A NAME="not_homomorphism2_substitution3"></A>cnf(not_homomorphism2_substitution3,axiom,
    ( ~ equalish(H3,I3)
    | equalish(not_homomorphism2(J3,K3,H3),not_homomorphism2(J3,K3,I3)) ) ).

<A NAME="not_subclass_element_substitution1"></A>cnf(not_subclass_element_substitution1,axiom,
    ( ~ equalish(L3,M3)
    | equalish(not_subclass_element(L3,N3),not_subclass_element(M3,N3)) ) ).

<A NAME="not_subclass_element_substitution2"></A>cnf(not_subclass_element_substitution2,axiom,
    ( ~ equalish(O3,P3)
    | equalish(not_subclass_element(Q3,O3),not_subclass_element(Q3,P3)) ) ).

<A NAME="ordered_pair_substitution1"></A>cnf(ordered_pair_substitution1,axiom,
    ( ~ equalish(R3,S3)
    | equalish(ordered_pair(R3,T3),ordered_pair(S3,T3)) ) ).

<A NAME="ordered_pair_substitution2"></A>cnf(ordered_pair_substitution2,axiom,
    ( ~ equalish(U3,V3)
    | equalish(ordered_pair(W3,U3),ordered_pair(W3,V3)) ) ).

<A NAME="power_class_substitution1"></A>cnf(power_class_substitution1,axiom,
    ( ~ equalish(X3,Y3)
    | equalish(power_class(X3),power_class(Y3)) ) ).

<A NAME="range_substitution1"></A>cnf(range_substitution1,axiom,
    ( ~ equalish(Z3,A4)
    | equalish(range(Z3,B4,C4),range(A4,B4,C4)) ) ).

<A NAME="range_substitution2"></A>cnf(range_substitution2,axiom,
    ( ~ equalish(D4,E4)
    | equalish(range(F4,D4,G4),range(F4,E4,G4)) ) ).

<A NAME="range_substitution3"></A>cnf(range_substitution3,axiom,
    ( ~ equalish(H4,I4)
    | equalish(range(J4,K4,H4),range(J4,K4,I4)) ) ).

<A NAME="range_of_substitution1"></A>cnf(range_of_substitution1,axiom,
    ( ~ equalish(L4,M4)
    | equalish(range_of(L4),range_of(M4)) ) ).

<A NAME="regular_substitution1"></A>cnf(regular_substitution1,axiom,
    ( ~ equalish(N4,O4)
    | equalish(regular(N4),regular(O4)) ) ).

<A NAME="restrict_substitution1"></A>cnf(restrict_substitution1,axiom,
    ( ~ equalish(P4,Q4)
    | equalish(restrict(P4,R4,S4),restrict(Q4,R4,S4)) ) ).

<A NAME="restrict_substitution2"></A>cnf(restrict_substitution2,axiom,
    ( ~ equalish(T4,U4)
    | equalish(restrict(V4,T4,W4),restrict(V4,U4,W4)) ) ).

<A NAME="restrict_substitution3"></A>cnf(restrict_substitution3,axiom,
    ( ~ equalish(X4,Y4)
    | equalish(restrict(Z4,A5,X4),restrict(Z4,A5,Y4)) ) ).

<A NAME="rotate_substitution1"></A>cnf(rotate_substitution1,axiom,
    ( ~ equalish(B5,C5)
    | equalish(rotate(B5),rotate(C5)) ) ).

<A NAME="second_substitution1"></A>cnf(second_substitution1,axiom,
    ( ~ equalish(D5,E5)
    | equalish(second(D5),second(E5)) ) ).

<A NAME="singleton_substitution1"></A>cnf(singleton_substitution1,axiom,
    ( ~ equalish(F5,G5)
    | equalish(singleton(F5),singleton(G5)) ) ).

<A NAME="successor_substitution1"></A>cnf(successor_substitution1,axiom,
    ( ~ equalish(H5,I5)
    | equalish(successor(H5),successor(I5)) ) ).

<A NAME="sum_class_substitution1"></A>cnf(sum_class_substitution1,axiom,
    ( ~ equalish(J5,K5)
    | equalish(sum_class(J5),sum_class(K5)) ) ).

<A NAME="union_substitution1"></A>cnf(union_substitution1,axiom,
    ( ~ equalish(L5,M5)
    | equalish(union(L5,N5),union(M5,N5)) ) ).

<A NAME="union_substitution2"></A>cnf(union_substitution2,axiom,
    ( ~ equalish(O5,P5)
    | equalish(union(Q5,O5),union(Q5,P5)) ) ).

<A NAME="unordered_pair_substitution1"></A>cnf(unordered_pair_substitution1,axiom,
    ( ~ equalish(R5,S5)
    | equalish(unordered_pair(R5,T5),unordered_pair(S5,T5)) ) ).

<A NAME="unordered_pair_substitution2"></A>cnf(unordered_pair_substitution2,axiom,
    ( ~ equalish(U5,V5)
    | equalish(unordered_pair(W5,U5),unordered_pair(W5,V5)) ) ).

<A NAME="compatible_substitution1"></A>cnf(compatible_substitution1,axiom,
    ( ~ equalish(X5,Y5)
    | ~ compatible(X5,Z5,A6)
    | compatible(Y5,Z5,A6) ) ).

<A NAME="compatible_substitution2"></A>cnf(compatible_substitution2,axiom,
    ( ~ equalish(B6,C6)
    | ~ compatible(D6,B6,E6)
    | compatible(D6,C6,E6) ) ).

<A NAME="compatible_substitution3"></A>cnf(compatible_substitution3,axiom,
    ( ~ equalish(F6,G6)
    | ~ compatible(H6,I6,F6)
    | compatible(H6,I6,G6) ) ).

<A NAME="function_substitution1"></A>cnf(function_substitution1,axiom,
    ( ~ equalish(J6,K6)
    | ~ function(J6)
    | function(K6) ) ).

<A NAME="homomorphism_substitution1"></A>cnf(homomorphism_substitution1,axiom,
    ( ~ equalish(L6,M6)
    | ~ homomorphism(L6,N6,O6)
    | homomorphism(M6,N6,O6) ) ).

<A NAME="homomorphism_substitution2"></A>cnf(homomorphism_substitution2,axiom,
    ( ~ equalish(P6,Q6)
    | ~ homomorphism(R6,P6,S6)
    | homomorphism(R6,Q6,S6) ) ).

<A NAME="homomorphism_substitution3"></A>cnf(homomorphism_substitution3,axiom,
    ( ~ equalish(T6,U6)
    | ~ homomorphism(V6,W6,T6)
    | homomorphism(V6,W6,U6) ) ).

<A NAME="inductive_substitution1"></A>cnf(inductive_substitution1,axiom,
    ( ~ equalish(X6,Y6)
    | ~ inductive(X6)
    | inductive(Y6) ) ).

<A NAME="member_substitution1"></A>cnf(member_substitution1,axiom,
    ( ~ equalish(Z6,A7)
    | ~ member(Z6,B7)
    | member(A7,B7) ) ).

<A NAME="member_substitution2"></A>cnf(member_substitution2,axiom,
    ( ~ equalish(C7,D7)
    | ~ member(E7,C7)
    | member(E7,D7) ) ).

<A NAME="one_to_one_substitution1"></A>cnf(one_to_one_substitution1,axiom,
    ( ~ equalish(F7,G7)
    | ~ one_to_one(F7)
    | one_to_one(G7) ) ).

<A NAME="operation_substitution1"></A>cnf(operation_substitution1,axiom,
    ( ~ equalish(H7,I7)
    | ~ operation(H7)
    | operation(I7) ) ).

<A NAME="single_valued_class_substitution1"></A>cnf(single_valued_class_substitution1,axiom,
    ( ~ equalish(J7,K7)
    | ~ single_valued_class(J7)
    | single_valued_class(K7) ) ).

<A NAME="subclass_substitution1"></A>cnf(subclass_substitution1,axiom,
    ( ~ equalish(L7,M7)
    | ~ subclass(L7,N7)
    | subclass(M7,N7) ) ).

<A NAME="subclass_substitution2"></A>cnf(subclass_substitution2,axiom,
    ( ~ equalish(O7,P7)
    | ~ subclass(Q7,O7)
    | subclass(Q7,P7) ) ).

%----GROUP 1:          AXIOMS AND BASIC DEFINITIONS.

%----Axiom A-1:  sets are classes (omitted because all objects are
%----classes).

%----Definition of &lt; (subclass).
%----a:x:a:y:((x &lt; y) &lt;=> a:u:((u e x) ==> (u e y))).
<A NAME="subclass_members"></A>cnf(subclass_members,axiom,
    ( ~ subclass(X,Y)
    | ~ member(U,X)
    | member(U,Y) ) ).

<A NAME="not_subclass_members1"></A>cnf(not_subclass_members1,axiom,
    ( member(not_subclass_element(X,Y),X)
    | subclass(X,Y) ) ).

<A NAME="not_subclass_members2"></A>cnf(not_subclass_members2,axiom,
    ( ~ member(not_subclass_element(X,Y),Y)
    | subclass(X,Y) ) ).

%----Axiom A-2: elements of classes are sets.
%----a:x:(x &lt; universal_class).
<A NAME="class_elements_are_sets"></A>cnf(class_elements_are_sets,axiom,
    subclass(X,universal_class) ).

%----Axiom A-3: principle of extensionality.
%----a:x:a:y:((x = y) &lt;=> (x &lt; y) & (y &lt; x)).
<A NAME="equal_implies_subclass1"></A>cnf(equal_implies_subclass1,axiom,
    ( ~ equalish(X,Y)
    | subclass(X,Y) ) ).

<A NAME="equal_implies_subclass2"></A>cnf(equal_implies_subclass2,axiom,
    ( ~ equalish(X,Y)
    | subclass(Y,X) ) ).

<A NAME="subclass_implies_equal"></A>cnf(subclass_implies_equal,axiom,
    ( ~ subclass(X,Y)
    | ~ subclass(Y,X)
    | equalish(X,Y) ) ).

%----Axiom A-4: existence of unordered pair.
%----a:u:a:x:a:y:((u e {x, y}) &lt;=> (u e universal_class)
%----& (u = x | u = y)).
%----a:x:a:y:({x, y} e universal_class).
<A NAME="unordered_pair_member"></A>cnf(unordered_pair_member,axiom,
    ( ~ member(U,unordered_pair(X,Y))
    | equalish(U,X)
    | equalish(U,Y) ) ).

%----(x e universal_class), (u = x) --> (u e {x, y}).
<A NAME="unordered_pair2"></A>cnf(unordered_pair2,axiom,
    ( ~ member(X,universal_class)
    | member(X,unordered_pair(X,Y)) ) ).

%----(y e universal_class), (u = y) --> (u e {x, y}).
<A NAME="unordered_pair3"></A>cnf(unordered_pair3,axiom,
    ( ~ member(Y,universal_class)
    | member(Y,unordered_pair(X,Y)) ) ).

<A NAME="unordered_pairs_in_universal"></A>cnf(unordered_pairs_in_universal,axiom,
    member(unordered_pair(X,Y),universal_class) ).

%----Definition of singleton set.
%----a:x:({x} = {x, x}).
<A NAME="singleton_set"></A>cnf(singleton_set,axiom,
    equalish(unordered_pair(X,X),singleton(X)) ).

%----See Theorem (SS6) for memb.

%----Definition of ordered pair.
%----a:x:a:y:([x,y] = {{x}, {x, {y}}}).
<A NAME="ordered_pair"></A>cnf(ordered_pair,axiom,
    equalish(unordered_pair(singleton(X),unordered_pair(X,singleton(Y))),ordered_pair(X,Y)) ).

%----Axiom B-5'a: Cartesian product.
%----a:u:a:v:a:y:(([u,v] e cross_product(x,y)) &lt;=> (u e x) & (v e y)).
<A NAME="cartesian_product1"></A>cnf(cartesian_product1,axiom,
    ( ~ member(ordered_pair(U,V),cross_product(X,Y))
    | member(U,X) ) ).

<A NAME="cartesian_product2"></A>cnf(cartesian_product2,axiom,
    ( ~ member(ordered_pair(U,V),cross_product(X,Y))
    | member(V,Y) ) ).

<A NAME="cartesian_product3"></A>cnf(cartesian_product3,axiom,
    ( ~ member(U,X)
    | ~ member(V,Y)
    | member(ordered_pair(U,V),cross_product(X,Y)) ) ).

%----See Theorem (OP6) for 1st and 2nd.

%----Axiom B-5'b: Cartesian product.
%----a:z:(z e cross_product(x,y) --> ([first(z),second(z)] = z)
<A NAME="cartesian_product4"></A>cnf(cartesian_product4,axiom,
    ( ~ member(Z,cross_product(X,Y))
    | equalish(ordered_pair(first(Z),second(Z)),Z) ) ).

%----Axiom B-1: E (element relation).
%----(E &lt; cross_product(universal_class,universal_class)).
%----a:x:a:y:(([x,y] e E) &lt;=> ([x,y] e cross_product(universal_class,
%----universal_class)) (x e y)).
<A NAME="element_relation1"></A>cnf(element_relation1,axiom,
    subclass(element_relation,cross_product(universal_class,universal_class)) ).

<A NAME="element_relation2"></A>cnf(element_relation2,axiom,
    ( ~ member(ordered_pair(X,Y),element_relation)
    | member(X,Y) ) ).

<A NAME="element_relation3"></A>cnf(element_relation3,axiom,
    ( ~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class))
    | ~ member(X,Y)
    | member(ordered_pair(X,Y),element_relation) ) ).

%----Axiom B-2: * (intersection).
%----a:z:a:x:a:y:((z e (x * y)) &lt;=> (z e x) & (z e y)).
<A NAME="intersection1"></A>cnf(intersection1,axiom,
    ( ~ member(Z,intersection(X,Y))
    | member(Z,X) ) ).

<A NAME="intersection2"></A>cnf(intersection2,axiom,
    ( ~ member(Z,intersection(X,Y))
    | member(Z,Y) ) ).

<A NAME="intersection3"></A>cnf(intersection3,axiom,
    ( ~ member(Z,X)
    | ~ member(Z,Y)
    | member(Z,intersection(X,Y)) ) ).

%----Axiom B-3: complement.
%----a:z:a:x:((z e ~(x)) &lt;=> (z e universal_class) & -(z e x)).
<A NAME="complement1"></A>cnf(complement1,axiom,
    ( ~ member(Z,complement(X))
    | ~ member(Z,X) ) ).

<A NAME="complement2"></A>cnf(complement2,axiom,
    ( ~ member(Z,universal_class)
    | member(Z,complement(X))
    | member(Z,X) ) ).

%---- Theorem (SP2) introduces the null class O.

%----Definition of + (union).
%----a:x:a:y:((x + y) = ~((~(x) * ~(y)))).
<A NAME="union"></A>cnf(union,axiom,
    equalish(complement(intersection(complement(X),complement(Y))),union(X,Y)) ).

%----Definition of & (exclusive or). (= symmetric_difference).
%----a:x:a:y:((x y) = (~(x * y) * ~(~(x) * ~(y)))).
<A NAME="symmetric_difference"></A>cnf(symmetric_difference,axiom,
    equalish(intersection(complement(intersection(X,Y)),complement(intersection(complement(X),complement(Y)))),symmetric_difference(X,Y)) ).

%----Definition of restriction.
%----a:x(restrict(xr,x,y) = (xr * cross_product(x,y))).
%----This is extra to the paper
<A NAME="restriction1"></A>cnf(restriction1,axiom,
    equalish(intersection(Xr,cross_product(X,Y)),restrict(Xr,X,Y)) ).

<A NAME="restriction2"></A>cnf(restriction2,axiom,
    equalish(intersection(cross_product(X,Y),Xr),restrict(Xr,X,Y)) ).

%----Axiom B-4: D (domain_of).
%----a:y:a:z:((z e domain_of(x)) &lt;=> (z e universal_class) &
%---- -(restrict(x,{z},universal_class) = O)).
%----next is subsumed by A-2.
%------> (domain_of(x) &lt; universal_class).
<A NAME="domain1"></A>cnf(domain1,axiom,
    ( ~ equalish(restrict(X,singleton(Z),universal_class),null_class)
    | ~ member(Z,domain_of(X)) ) ).

<A NAME="domain2"></A>cnf(domain2,axiom,
    ( ~ member(Z,universal_class)
    | equalish(restrict(X,singleton(Z),universal_class),null_class)
    | member(Z,domain_of(X)) ) ).

%----Axiom B-7: rotate.
%----a:x:(rotate(x) &lt;  cross_product(cross_product(universal_class,
%----universal_class),universal_class)).
%----a:x:a:u:a:v:a:w:(([[u,v],w] e rotate(x)) &lt;=> ([[u,v],w]]
%---- e cross_product(cross_product(universal_class,universal_class),
%----universal_class)) & ([[v,w],u]] e x).
<A NAME="rotate1"></A>cnf(rotate1,axiom,
    subclass(rotate(X),cross_product(cross_product(universal_class,universal_class),universal_class)) ).

<A NAME="rotate2"></A>cnf(rotate2,axiom,
    ( ~ member(ordered_pair(ordered_pair(U,V),W),rotate(X))
    | member(ordered_pair(ordered_pair(V,W),U),X) ) ).

<A NAME="rotate3"></A>cnf(rotate3,axiom,
    ( ~ member(ordered_pair(ordered_pair(V,W),U),X)
    | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))
    | member(ordered_pair(ordered_pair(U,V),W),rotate(X)) ) ).

%----Axiom B-8: flip.
%----a:x:(flip(x) &lt;  cross_product(cross_product(universal_class,
%----universal_class),universal_class)).
%----a:z:a:u:a:v:a:w:(([[u,v],w] e flip(x)) &lt;=> ([[u,v],w]
%----e cross_product(cross_product(universal_class,universal_class),
%----universal_class)) & ([[v,u],w] e x).
<A NAME="flip1"></A>cnf(flip1,axiom,
    subclass(flip(X),cross_product(cross_product(universal_class,universal_class),universal_class)) ).

<A NAME="flip2"></A>cnf(flip2,axiom,
    ( ~ member(ordered_pair(ordered_pair(U,V),W),flip(X))
    | member(ordered_pair(ordered_pair(V,U),W),X) ) ).

<A NAME="flip3"></A>cnf(flip3,axiom,
    ( ~ member(ordered_pair(ordered_pair(V,U),W),X)
    | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))
    | member(ordered_pair(ordered_pair(U,V),W),flip(X)) ) ).

%----Definition of inverse.
%----a:y:(inverse(y) = domain_of(flip(cross_product(y,V)))).
<A NAME="inverse"></A>cnf(inverse,axiom,
    equalish(domain_of(flip(cross_product(Y,universal_class))),inverse(Y)) ).

%----Definition of R (range_of).
%----a:z:(range_of(z) = domain_of(inverse(z))).
<A NAME="range_of"></A>cnf(range_of,axiom,
    equalish(domain_of(inverse(Z)),range_of(Z)) ).

%----Definition of domain.
%----a:z:a:x:a:y:(domain(z,x,y) = first(notsub(restrict(z,x,{y}),O))).
<A NAME="domain"></A>cnf(domain,axiom,
    equalish(first(not_subclass_element(restrict(Z,X,singleton(Y)),null_class)),domain(Z,X,Y)) ).

%----Definition of range.
%----a:z:a:x:(range(z,x,y) = second(notsub(restrict(z,{x},y),O))).
<A NAME="range"></A>cnf(range,axiom,
    equalish(second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)),range(Z,X,Y)) ).

%----Definition of image.
%----a:x:a:xr:((xr image x) = range_of(restrict(xr,x,V))).
<A NAME="image"></A>cnf(image,axiom,
    equalish(range_of(restrict(Xr,X,universal_class)),image(Xr,X)) ).

%----Definition of successor.
%----a:x:(successor(x) = (x + {x})).
<A NAME="successor"></A>cnf(successor,axiom,
    equalish(union(X,singleton(X)),successor(X)) ).

%----Explicit definition of successor_relation.
%------> ((cross_product(V,V) * ~(((E ^ ~(inverse((E + I)))) +
%----(~(E) ^ inverse((E + I)))))) = successor_relation).
%----Definition of successor_relation from the Class Existence Theorem.
%----a:x:a:y:([x,y] e successor_relation &lt;=> x e V & successor(x) = y).
%----The above FOF does not agree with the book
<A NAME="successor_relation1"></A>cnf(successor_relation1,axiom,
    subclass(successor_relation,cross_product(universal_class,universal_class)) ).

<A NAME="successor_relation2"></A>cnf(successor_relation2,axiom,
    ( ~ member(ordered_pair(X,Y),successor_relation)
    | equalish(successor(X),Y) ) ).

%----This is what's in the book and paper. Does not change axiom.
% input_clause(successor_relation3,axiom,
%     [--equalish(successor(X),Y),
%      --member(X,universal_class),
%      ++member(ordered_pair(X,Y),successor_relation)]).

%----This is what I got by email from Quaife
<A NAME="successor_relation3"></A>cnf(successor_relation3,axiom,
    ( ~ equalish(successor(X),Y)
    | ~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class))
    | member(ordered_pair(X,Y),successor_relation) ) ).

%----Definition of inductive a:x:(inductive(x) &lt;=> null_class
%----e x & (successor_relation image x) &lt; x)).
<A NAME="inductive1"></A>cnf(inductive1,axiom,
    ( ~ inductive(X)
    | member(null_class,X) ) ).

<A NAME="inductive2"></A>cnf(inductive2,axiom,
    ( ~ inductive(X)
    | subclass(image(successor_relation,X),X) ) ).

<A NAME="inductive3"></A>cnf(inductive3,axiom,
    ( ~ member(null_class,X)
    | ~ subclass(image(successor_relation,X),X)
    | inductive(X) ) ).

%----Axiom C-1: infinity.
%----e:x:((x e V) & inductive(x) & a:y:(inductive(y) ==> (x &lt; y))).
%----e:x:((x e V) & (O e x) & ((successor_relation image x) &lt; x)
%----        & a:y:((O e y) & ((successor_relation image y) &lt; y) ==>
%----(x &lt; y))).
<A NAME="omega_is_inductive1"></A>cnf(omega_is_inductive1,axiom,
    inductive(omega) ).

<A NAME="omega_is_inductive2"></A>cnf(omega_is_inductive2,axiom,
    ( ~ inductive(Y)
    | subclass(omega,Y) ) ).

<A NAME="omega_in_universal"></A>cnf(omega_in_universal,axiom,
    member(omega,universal_class) ).

%----These were commented out in the set Quaife sent me, and are not
%----in the paper true --> (null_class e omega).
%----true --> ((successor_relation image omega) &lt; omega).
%----(null_class e y), ((successor_relation image y) &lt; y) -->
%----(omega &lt; y). true --> (omega e universal_class).

%----Definition of U (sum class).
%----a:x:(sum_class(x) = domain_of(restrict(E,V,x))).
<A NAME="sum_class_definition"></A>cnf(sum_class_definition,axiom,
    equalish(domain_of(restrict(element_relation,universal_class,X)),sum_class(X)) ).

%----Axiom C-2: U (sum class).
%----a:x:((x e V) ==> (sum_class(x) e V)).
<A NAME="sum_class2"></A>cnf(sum_class2,axiom,
    ( ~ member(X,universal_class)
    | member(sum_class(X),universal_class) ) ).

%----Definition of P (power class).
%----a:x:(power_class(x) = ~((E image ~(x)))).
<A NAME="power_class_definition"></A>cnf(power_class_definition,axiom,
    equalish(complement(image(element_relation,complement(X))),power_class(X)) ).

%----Axiom C-3: P (power class).
%----a:u:((u e V) ==> (power_class(u) e V)).
<A NAME="power_class2"></A>cnf(power_class2,axiom,
    ( ~ member(U,universal_class)
    | member(power_class(U),universal_class) ) ).

%----Definition of compose.
%----a:xr:a:yr:((yr ^ xr) &lt; cross_product(V,V)).
%----a:u:a:v:a:xr:a:yr:(([u,v] e (yr ^ xr)) &lt;=> ([u,v]
%----e cross_product(V,V)) & (v e (yr image (xr image {u})))).
<A NAME="compose1"></A>cnf(compose1,axiom,
    subclass(compose(Yr,Xr),cross_product(universal_class,universal_class)) ).

<A NAME="compose2"></A>cnf(compose2,axiom,
    ( ~ member(ordered_pair(Y,Z),compose(Yr,Xr))
    | member(Z,image(Yr,image(Xr,singleton(Y)))) ) ).

<A NAME="compose3"></A>cnf(compose3,axiom,
    ( ~ member(Z,image(Yr,image(Xr,singleton(Y))))
    | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class))
    | member(ordered_pair(Y,Z),compose(Yr,Xr)) ) ).

%----7/21/90 eliminate SINGVAL and just use FUNCTION.
%----Not eliminated in TPTP - I'm following the paper
<A NAME="single_valued_class1"></A>cnf(single_valued_class1,axiom,
    ( ~ single_valued_class(X)
    | subclass(compose(X,inverse(X)),identity_relation) ) ).

<A NAME="single_valued_class2"></A>cnf(single_valued_class2,axiom,
    ( ~ subclass(compose(X,inverse(X)),identity_relation)
    | single_valued_class(X) ) ).

%----Definition of function.
%----a:xf:(function(xf) &lt;=> (xf &lt; cross_product(V,V)) & ((xf
%----^ inverse(xf)) &lt; identity_relation)).
<A NAME="function1"></A>cnf(function1,axiom,
    ( ~ function(Xf)
    | subclass(Xf,cross_product(universal_class,universal_class)) ) ).

<A NAME="function2"></A>cnf(function2,axiom,
    ( ~ function(Xf)
    | subclass(compose(Xf,inverse(Xf)),identity_relation) ) ).

<A NAME="function3"></A>cnf(function3,axiom,
    ( ~ subclass(Xf,cross_product(universal_class,universal_class))
    | ~ subclass(compose(Xf,inverse(Xf)),identity_relation)
    | function(Xf) ) ).

%----Axiom C-4: replacement.
%----a:x:((x e V) & function(xf) ==> ((xf image x) e V)).
<A NAME="replacement"></A>cnf(replacement,axiom,
    ( ~ function(Xf)
    | ~ member(X,universal_class)
    | member(image(Xf,X),universal_class) ) ).

%----Axiom D: regularity.
%----a:x:(-(x = O) ==> e:u:((u e V) & (u e x) & ((u * x) = O))).
<A NAME="regularity1"></A>cnf(regularity1,axiom,
    ( equalish(X,null_class)
    | member(regular(X),X) ) ).

<A NAME="regularity2"></A>cnf(regularity2,axiom,
    ( equalish(X,null_class)
    | equalish(intersection(X,regular(X)),null_class) ) ).

%----Definition of apply (apply).
%----a:xf:a:y:((xf apply y) = sum_class((xf image {y}))).
<A NAME="apply"></A>cnf(apply,axiom,
    equalish(sum_class(image(Xf,singleton(Y))),apply(Xf,Y)) ).

%----Axiom E: universal choice.
%----e:xf:(function(xf) & a:y:((y e V) ==> (y = null_class) |
%----((xf apply y) e y))).
<A NAME="choice1"></A>cnf(choice1,axiom,
    function(choice) ).

<A NAME="choice2"></A>cnf(choice2,axiom,
    ( ~ member(Y,universal_class)
    | equalish(Y,null_class)
    | member(apply(choice,Y),Y) ) ).

%----GROUP 2:             MORE SET THEORY DEFINITIONS.

%----Definition of one_to_one (one-to-one function).
%----a:xf:(one_to_one(xf) &lt;=> function(xf) & function(inverse(xf))).
<A NAME="one_to_one1"></A>cnf(one_to_one1,axiom,
    ( ~ one_to_one(Xf)
    | function(Xf) ) ).

<A NAME="one_to_one2"></A>cnf(one_to_one2,axiom,
    ( ~ one_to_one(Xf)
    | function(inverse(Xf)) ) ).

<A NAME="one_to_one3"></A>cnf(one_to_one3,axiom,
    ( ~ function(inverse(Xf))
    | ~ function(Xf)
    | one_to_one(Xf) ) ).

%----Definition of S (subset relation).
<A NAME="subset_relation"></A>cnf(subset_relation,axiom,
    equalish(intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))),subset_relation) ).

%----Definition of I (identity relation).
<A NAME="identity_relation"></A>cnf(identity_relation,axiom,
    equalish(intersection(inverse(subset_relation),subset_relation),identity_relation) ).

%----Definition of diagonalization.
%----a:xr:(diagonalise(xr) = ~(domain_of((identity_relation * xr)))).
<A NAME="diagonalisation"></A>cnf(diagonalisation,axiom,
    equalish(complement(domain_of(intersection(Xr,identity_relation))),diagonalise(Xr)) ).

%----Definition of Cantor class.
<A NAME="cantor_class"></A>cnf(cantor_class,axiom,
    equalish(intersection(domain_of(X),diagonalise(compose(inverse(element_relation),X))),cantor(X)) ).

%----Definition of operation.
%----a:xf:(operation(xf) &lt;=> function(xf) & (cross_product(domain_of(
%----domain_of(xf)),domain_of(domain_of(xf))) = domain_of(xf))
%----& (range_of(xf) &lt; domain_of(domain_of(xf))).
<A NAME="operation1"></A>cnf(operation1,axiom,
    ( ~ operation(Xf)
    | function(Xf) ) ).

<A NAME="operation2"></A>cnf(operation2,axiom,
    ( ~ operation(Xf)
    | equalish(cross_product(domain_of(domain_of(Xf)),domain_of(domain_of(Xf))),domain_of(Xf)) ) ).

<A NAME="operation3"></A>cnf(operation3,axiom,
    ( ~ operation(Xf)
    | subclass(range_of(Xf),domain_of(domain_of(Xf))) ) ).

<A NAME="operation4"></A>cnf(operation4,axiom,
    ( ~ function(Xf)
    | ~ equalish(cross_product(domain_of(domain_of(Xf)),domain_of(domain_of(Xf))),domain_of(Xf))
    | ~ subclass(range_of(Xf),domain_of(domain_of(Xf)))
    | operation(Xf) ) ).

%----Definition of compatible.
%----a:xh:a:xf1:a:af2: (compatible(xh,xf1,xf2) &lt;=> function(xh)
%----& (domain_of(domain_of(xf1)) = domain_of(xh)) & (range_of(xh)
%----&lt; domain_of(domain_of(xf2)))).
<A NAME="compatible1"></A>cnf(compatible1,axiom,
    ( ~ compatible(Xh,Xf1,Xf2)
    | function(Xh) ) ).

<A NAME="compatible2"></A>cnf(compatible2,axiom,
    ( ~ compatible(Xh,Xf1,Xf2)
    | equalish(domain_of(domain_of(Xf1)),domain_of(Xh)) ) ).

<A NAME="compatible3"></A>cnf(compatible3,axiom,
    ( ~ compatible(Xh,Xf1,Xf2)
    | subclass(range_of(Xh),domain_of(domain_of(Xf2))) ) ).

<A NAME="compatible4"></A>cnf(compatible4,axiom,
    ( ~ function(Xh)
    | ~ equalish(domain_of(domain_of(Xf1)),domain_of(Xh))
    | ~ subclass(range_of(Xh),domain_of(domain_of(Xf2)))
    | compatible(Xh1,Xf1,Xf2) ) ).

%----Definition of homomorphism.
%----a:xh:a:xf1:a:xf2: (homomorphism(xh,xf1,xf2) &lt;=>
%---- operation(xf1) & operation(xf2) & compatible(xh,xf1,xf2) &
%---- a:x:a:y:(([x,y] e domain_of(xf1)) ==> (((xf2 apply [(xh apply x),
%----(xh apply y)]) = (xh apply (xf1 apply [x,y])))).
<A NAME="homomorphism1"></A>cnf(homomorphism1,axiom,
    ( ~ homomorphism(Xh,Xf1,Xf2)
    | operation(Xf1) ) ).

<A NAME="homomorphism2"></A>cnf(homomorphism2,axiom,
    ( ~ homomorphism(Xh,Xf1,Xf2)
    | operation(Xf2) ) ).

<A NAME="homomorphism3"></A>cnf(homomorphism3,axiom,
    ( ~ homomorphism(Xh,Xf1,Xf2)
    | compatible(Xh,Xf1,Xf2) ) ).

<A NAME="homomorphism4"></A>cnf(homomorphism4,axiom,
    ( ~ homomorphism(Xh,Xf1,Xf2)
    | ~ member(ordered_pair(X,Y),domain_of(Xf1))
    | equalish(apply(Xf2,ordered_pair(apply(Xh,X),apply(Xh,Y))),apply(Xh,apply(Xf1,ordered_pair(X,Y)))) ) ).

<A NAME="homomorphism5"></A>cnf(homomorphism5,axiom,
    ( ~ operation(Xf1)
    | ~ operation(Xf2)
    | ~ compatible(Xh,Xf1,Xf2)
    | member(ordered_pair(not_homomorphism1(Xh,Xf1,Xf2),not_homomorphism2(Xh,Xf1,Xf2)),domain_of(Xf1))
    | homomorphism(Xh,Xf1,Xf2) ) ).

<A NAME="homomorphism6"></A>cnf(homomorphism6,axiom,
    ( ~ operation(Xf1)
    | ~ operation(Xf2)
    | ~ compatible(Xh,Xf1,Xf2)
    | ~ equalish(apply(Xf2,ordered_pair(apply(Xh,not_homomorphism1(Xh,Xf1,Xf2)),apply(Xh,not_homomorphism2(Xh,Xf1,Xf2)))),apply(Xh,apply(Xf1,ordered_pair(not_homomorphism1(Xh,Xf1,Xf2),not_homomorphism2(Xh,Xf1,Xf2)))))
    | homomorphism(Xh,Xf1,Xf2) ) ).

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

<A NAME="prove_reflexivity"></A>cnf(prove_reflexivity,negated_conjecture,
    ~ equalish(x,x) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
