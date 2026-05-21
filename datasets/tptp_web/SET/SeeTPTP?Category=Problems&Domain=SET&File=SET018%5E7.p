<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET018^7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET018^7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET018^7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET018^7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET018^7 : TPTP v9.2.1. Released v5.5.0.
% Domain   : Set Theory
% Problem  : Second components of equal ordered pairs are equal
% Version  : [Ben12] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
%          : [Ben12] Benzmueller (2012), Email to Geoff Sutcliffe
% Source   : [Ben12]
% Names    : s4-cumul-SET018+1 [Ben12]

% Status   : Theorem
% Rating   : 1.00 v5.5.0
% Syntax   : Number of formulae    :  213 (  59 unt;  67 typ;  32 def)
%            Number of atoms       :  711 (  36 equ;   0 cnn)
%            Maximal formula atoms :   11 (   4 avg)
%            Number of connectives : 1347 (   5   ~;   5   |;   9   &;1318   @)
%                                         (   0 &lt;=>;  10  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :   19 (   8 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  224 ( 224   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :   78 (  76 usr;  16 con; 0-3 aty)
%            Number of variables   :  345 ( 247   ^;  91   !;   7   ?; 345   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for Modal logic S4 under cumulative domains
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^0.ax>LCL015^0.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL013^5.ax>LCL013^5.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^1.ax>LCL015^1.ax</a>').
%------------------------------------------------------------------------------
<A NAME="inductive_type"></A>thf(inductive_type,type,
    inductive: mu > $i > $o ).

<A NAME="subclass_type"></A>thf(subclass_type,type,
    subclass: mu > mu > $i > $o ).

<A NAME="disjoint_type"></A>thf(disjoint_type,type,
    disjoint: mu > mu > $i > $o ).

<A NAME="function_type"></A>thf(function_type,type,
    function: mu > $i > $o ).

<A NAME="member_type"></A>thf(member_type,type,
    member: mu > mu > $i > $o ).

<A NAME="unordered_pair_type"></A>thf(unordered_pair_type,type,
    unordered_pair: mu > mu > mu ).

<A NAME="existence_of_unordered_pair_ax"></A>thf(existence_of_unordered_pair_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( unordered_pair @ V2 @ V1 ) @ V ) ).

<A NAME="second_type"></A>thf(second_type,type,
    second: mu > mu ).

<A NAME="existence_of_second_ax"></A>thf(existence_of_second_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( second @ V1 ) @ V ) ).

<A NAME="first_type"></A>thf(first_type,type,
    first: mu > mu ).

<A NAME="existence_of_first_ax"></A>thf(existence_of_first_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( first @ V1 ) @ V ) ).

<A NAME="element_relation_type"></A>thf(element_relation_type,type,
    element_relation: mu ).

<A NAME="existence_of_element_relation_ax"></A>thf(existence_of_element_relation_ax,axiom,
    ! [V: $i] : ( exists_in_world @ element_relation @ V ) ).

<A NAME="complement_type"></A>thf(complement_type,type,
    complement: mu > mu ).

<A NAME="existence_of_complement_ax"></A>thf(existence_of_complement_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( complement @ V1 ) @ V ) ).

<A NAME="intersection_type"></A>thf(intersection_type,type,
    intersection: mu > mu > mu ).

<A NAME="existence_of_intersection_ax"></A>thf(existence_of_intersection_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( intersection @ V2 @ V1 ) @ V ) ).

<A NAME="rotate_type"></A>thf(rotate_type,type,
    rotate: mu > mu ).

<A NAME="existence_of_rotate_ax"></A>thf(existence_of_rotate_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( rotate @ V1 ) @ V ) ).

<A NAME="union_type"></A>thf(union_type,type,
    union: mu > mu > mu ).

<A NAME="existence_of_union_ax"></A>thf(existence_of_union_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( union @ V2 @ V1 ) @ V ) ).

<A NAME="successor_type"></A>thf(successor_type,type,
    successor: mu > mu ).

<A NAME="existence_of_successor_ax"></A>thf(existence_of_successor_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( successor @ V1 ) @ V ) ).

<A NAME="flip_type"></A>thf(flip_type,type,
    flip: mu > mu ).

<A NAME="existence_of_flip_ax"></A>thf(existence_of_flip_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( flip @ V1 ) @ V ) ).

<A NAME="domain_of_type"></A>thf(domain_of_type,type,
    domain_of: mu > mu ).

<A NAME="existence_of_domain_of_ax"></A>thf(existence_of_domain_of_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( domain_of @ V1 ) @ V ) ).

<A NAME="restrict_type"></A>thf(restrict_type,type,
    restrict: mu > mu > mu > mu ).

<A NAME="existence_of_restrict_ax"></A>thf(existence_of_restrict_ax,axiom,
    ! [V: $i,V3: mu,V2: mu,V1: mu] : ( exists_in_world @ ( restrict @ V3 @ V2 @ V1 ) @ V ) ).

<A NAME="range_of_type"></A>thf(range_of_type,type,
    range_of: mu > mu ).

<A NAME="existence_of_range_of_ax"></A>thf(existence_of_range_of_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( range_of @ V1 ) @ V ) ).

<A NAME="successor_relation_type"></A>thf(successor_relation_type,type,
    successor_relation: mu ).

<A NAME="existence_of_successor_relation_ax"></A>thf(existence_of_successor_relation_ax,axiom,
    ! [V: $i] : ( exists_in_world @ successor_relation @ V ) ).

<A NAME="power_class_type"></A>thf(power_class_type,type,
    power_class: mu > mu ).

<A NAME="existence_of_power_class_ax"></A>thf(existence_of_power_class_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( power_class @ V1 ) @ V ) ).

<A NAME="identity_relation_type"></A>thf(identity_relation_type,type,
    identity_relation: mu ).

<A NAME="existence_of_identity_relation_ax"></A>thf(existence_of_identity_relation_ax,axiom,
    ! [V: $i] : ( exists_in_world @ identity_relation @ V ) ).

<A NAME="inverse_type"></A>thf(inverse_type,type,
    inverse: mu > mu ).

<A NAME="existence_of_inverse_ax"></A>thf(existence_of_inverse_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( inverse @ V1 ) @ V ) ).

<A NAME="compose_type"></A>thf(compose_type,type,
    compose: mu > mu > mu ).

<A NAME="existence_of_compose_ax"></A>thf(existence_of_compose_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( compose @ V2 @ V1 ) @ V ) ).

<A NAME="cross_product_type"></A>thf(cross_product_type,type,
    cross_product: mu > mu > mu ).

<A NAME="existence_of_cross_product_ax"></A>thf(existence_of_cross_product_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( cross_product @ V2 @ V1 ) @ V ) ).

<A NAME="singleton_type"></A>thf(singleton_type,type,
    singleton: mu > mu ).

<A NAME="existence_of_singleton_ax"></A>thf(existence_of_singleton_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( singleton @ V1 ) @ V ) ).

<A NAME="image_type"></A>thf(image_type,type,
    image: mu > mu > mu ).

<A NAME="existence_of_image_ax"></A>thf(existence_of_image_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( image @ V2 @ V1 ) @ V ) ).

<A NAME="sum_class_type"></A>thf(sum_class_type,type,
    sum_class: mu > mu ).

<A NAME="existence_of_sum_class_ax"></A>thf(existence_of_sum_class_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( sum_class @ V1 ) @ V ) ).

<A NAME="apply_type"></A>thf(apply_type,type,
    apply: mu > mu > mu ).

<A NAME="existence_of_apply_ax"></A>thf(existence_of_apply_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( apply @ V2 @ V1 ) @ V ) ).

<A NAME="null_class_type"></A>thf(null_class_type,type,
    null_class: mu ).

<A NAME="existence_of_null_class_ax"></A>thf(existence_of_null_class_ax,axiom,
    ! [V: $i] : ( exists_in_world @ null_class @ V ) ).

<A NAME="universal_class_type"></A>thf(universal_class_type,type,
    universal_class: mu ).

<A NAME="existence_of_universal_class_ax"></A>thf(existence_of_universal_class_ax,axiom,
    ! [V: $i] : ( exists_in_world @ universal_class @ V ) ).

<A NAME="ordered_pair_type"></A>thf(ordered_pair_type,type,
    ordered_pair: mu > mu > mu ).

<A NAME="existence_of_ordered_pair_ax"></A>thf(existence_of_ordered_pair_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( ordered_pair @ V2 @ V1 ) @ V ) ).

<A NAME="reflexivity"></A>thf(reflexivity,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( qmltpeq @ X @ X ) ) ) ).

<A NAME="symmetry"></A>thf(symmetry,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] : ( mimplies @ ( qmltpeq @ X @ Y ) @ ( qmltpeq @ Y @ X ) ) ) ) ) ).

<A NAME="transitivity"></A>thf(transitivity,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] :
              ( mforall_ind
              @ ^ [Z: mu] : ( mimplies @ ( mand @ ( qmltpeq @ X @ Y ) @ ( qmltpeq @ Y @ Z ) ) @ ( qmltpeq @ X @ Z ) ) ) ) ) ) ).

<A NAME="apply_substitution_1"></A>thf(apply_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( apply @ A @ C ) @ ( apply @ B @ C ) ) ) ) ) ) ) ).

<A NAME="apply_substitution_2"></A>thf(apply_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( apply @ C @ A ) @ ( apply @ C @ B ) ) ) ) ) ) ) ).

<A NAME="complement_substitution_1"></A>thf(complement_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( complement @ A ) @ ( complement @ B ) ) ) ) ) ) ).

<A NAME="compose_substitution_1"></A>thf(compose_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( compose @ A @ C ) @ ( compose @ B @ C ) ) ) ) ) ) ) ).

<A NAME="compose_substitution_2"></A>thf(compose_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( compose @ C @ A ) @ ( compose @ C @ B ) ) ) ) ) ) ) ).

<A NAME="cross_product_substitution_1"></A>thf(cross_product_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( cross_product @ A @ C ) @ ( cross_product @ B @ C ) ) ) ) ) ) ) ).

<A NAME="cross_product_substitution_2"></A>thf(cross_product_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( cross_product @ C @ A ) @ ( cross_product @ C @ B ) ) ) ) ) ) ) ).

<A NAME="domain_of_substitution_1"></A>thf(domain_of_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( domain_of @ A ) @ ( domain_of @ B ) ) ) ) ) ) ).

<A NAME="first_substitution_1"></A>thf(first_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( first @ A ) @ ( first @ B ) ) ) ) ) ) ).

<A NAME="flip_substitution_1"></A>thf(flip_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( flip @ A ) @ ( flip @ B ) ) ) ) ) ) ).

<A NAME="image_substitution_1"></A>thf(image_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( image @ A @ C ) @ ( image @ B @ C ) ) ) ) ) ) ) ).

<A NAME="image_substitution_2"></A>thf(image_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( image @ C @ A ) @ ( image @ C @ B ) ) ) ) ) ) ) ).

<A NAME="intersection_substitution_1"></A>thf(intersection_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( intersection @ A @ C ) @ ( intersection @ B @ C ) ) ) ) ) ) ) ).

<A NAME="intersection_substitution_2"></A>thf(intersection_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( intersection @ C @ A ) @ ( intersection @ C @ B ) ) ) ) ) ) ) ).

<A NAME="inverse_substitution_1"></A>thf(inverse_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( inverse @ A ) @ ( inverse @ B ) ) ) ) ) ) ).

<A NAME="ordered_pair_substitution_1"></A>thf(ordered_pair_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( ordered_pair @ A @ C ) @ ( ordered_pair @ B @ C ) ) ) ) ) ) ) ).

<A NAME="ordered_pair_substitution_2"></A>thf(ordered_pair_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( ordered_pair @ C @ A ) @ ( ordered_pair @ C @ B ) ) ) ) ) ) ) ).

<A NAME="power_class_substitution_1"></A>thf(power_class_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( power_class @ A ) @ ( power_class @ B ) ) ) ) ) ) ).

<A NAME="range_of_substitution_1"></A>thf(range_of_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( range_of @ A ) @ ( range_of @ B ) ) ) ) ) ) ).

<A NAME="restrict_substitution_1"></A>thf(restrict_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] :
                  ( mforall_ind
                  @ ^ [D: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( restrict @ A @ C @ D ) @ ( restrict @ B @ C @ D ) ) ) ) ) ) ) ) ).

<A NAME="restrict_substitution_2"></A>thf(restrict_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] :
                  ( mforall_ind
                  @ ^ [D: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( restrict @ C @ A @ D ) @ ( restrict @ C @ B @ D ) ) ) ) ) ) ) ) ).

<A NAME="restrict_substitution_3"></A>thf(restrict_substitution_3,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] :
                  ( mforall_ind
                  @ ^ [D: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( restrict @ C @ D @ A ) @ ( restrict @ C @ D @ B ) ) ) ) ) ) ) ) ).

<A NAME="rotate_substitution_1"></A>thf(rotate_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( rotate @ A ) @ ( rotate @ B ) ) ) ) ) ) ).

<A NAME="second_substitution_1"></A>thf(second_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( second @ A ) @ ( second @ B ) ) ) ) ) ) ).

<A NAME="singleton_substitution_1"></A>thf(singleton_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) ) ).

<A NAME="successor_substitution_1"></A>thf(successor_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( successor @ A ) @ ( successor @ B ) ) ) ) ) ) ).

<A NAME="sum_class_substitution_1"></A>thf(sum_class_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( sum_class @ A ) @ ( sum_class @ B ) ) ) ) ) ) ).

<A NAME="union_substitution_1"></A>thf(union_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ) ) ) ).

<A NAME="union_substitution_2"></A>thf(union_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ) ) ) ).

<A NAME="unordered_pair_substitution_1"></A>thf(unordered_pair_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ).

<A NAME="unordered_pair_substitution_2"></A>thf(unordered_pair_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ) ) ) ).

<A NAME="disjoint_substitution_1"></A>thf(disjoint_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( disjoint @ A @ C ) ) @ ( disjoint @ B @ C ) ) ) ) ) ) ).

<A NAME="disjoint_substitution_2"></A>thf(disjoint_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( disjoint @ C @ A ) ) @ ( disjoint @ C @ B ) ) ) ) ) ) ).

<A NAME="function_substitution_1"></A>thf(function_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( function @ A ) ) @ ( function @ B ) ) ) ) ) ).

<A NAME="inductive_substitution_1"></A>thf(inductive_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( inductive @ A ) ) @ ( inductive @ B ) ) ) ) ) ).

<A NAME="member_substitution_1"></A>thf(member_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( member @ A @ C ) ) @ ( member @ B @ C ) ) ) ) ) ) ).

<A NAME="member_substitution_2"></A>thf(member_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( member @ C @ A ) ) @ ( member @ C @ B ) ) ) ) ) ) ).

<A NAME="subclass_substitution_1"></A>thf(subclass_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( subclass @ A @ C ) ) @ ( subclass @ B @ C ) ) ) ) ) ) ).

<A NAME="subclass_substitution_2"></A>thf(subclass_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( subclass @ C @ A ) ) @ ( subclass @ C @ B ) ) ) ) ) ) ).

<A NAME="subclass_defn"></A>thf(subclass_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] :
              ( mequiv @ ( subclass @ X @ Y )
              @ ( mforall_ind
                @ ^ [U: mu] : ( mimplies @ ( member @ U @ X ) @ ( member @ U @ Y ) ) ) ) ) ) ) ).

<A NAME="class_elements_are_sets"></A>thf(class_elements_are_sets,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( subclass @ X @ universal_class ) ) ) ).

<A NAME="extensionality"></A>thf(extensionality,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] : ( mequiv @ ( qmltpeq @ X @ Y ) @ ( mand @ ( subclass @ X @ Y ) @ ( subclass @ Y @ X ) ) ) ) ) ) ).

<A NAME="unordered_pair_defn"></A>thf(unordered_pair_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [U: mu] :
          ( mforall_ind
          @ ^ [X: mu] :
              ( mforall_ind
              @ ^ [Y: mu] : ( mequiv @ ( member @ U @ ( unordered_pair @ X @ Y ) ) @ ( mand @ ( member @ U @ universal_class ) @ ( mor @ ( qmltpeq @ U @ X ) @ ( qmltpeq @ U @ Y ) ) ) ) ) ) ) ) ).

<A NAME="unordered_pair"></A>thf(unordered_pair,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] : ( member @ ( unordered_pair @ X @ Y ) @ universal_class ) ) ) ) ).

<A NAME="singleton_set_defn"></A>thf(singleton_set_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( qmltpeq @ ( singleton @ X ) @ ( unordered_pair @ X @ X ) ) ) ) ).

<A NAME="ordered_pair_defn"></A>thf(ordered_pair_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] : ( qmltpeq @ ( ordered_pair @ X @ Y ) @ ( unordered_pair @ ( singleton @ X ) @ ( unordered_pair @ X @ ( singleton @ Y ) ) ) ) ) ) ) ).

<A NAME="cross_product_defn"></A>thf(cross_product_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [U: mu] :
          ( mforall_ind
          @ ^ [V: mu] :
              ( mforall_ind
              @ ^ [X: mu] :
                  ( mforall_ind
                  @ ^ [Y: mu] : ( mequiv @ ( member @ ( ordered_pair @ U @ V ) @ ( cross_product @ X @ Y ) ) @ ( mand @ ( member @ U @ X ) @ ( member @ V @ Y ) ) ) ) ) ) ) ) ).

<A NAME="cross_product"></A>thf(cross_product,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] :
              ( mforall_ind
              @ ^ [Z: mu] : ( mimplies @ ( member @ Z @ ( cross_product @ X @ Y ) ) @ ( qmltpeq @ Z @ ( ordered_pair @ ( first @ Z ) @ ( second @ Z ) ) ) ) ) ) ) ) ).

<A NAME="element_relation_defn"></A>thf(element_relation_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] : ( mequiv @ ( member @ ( ordered_pair @ X @ Y ) @ element_relation ) @ ( mand @ ( member @ Y @ universal_class ) @ ( member @ X @ Y ) ) ) ) ) ) ).

<A NAME="element_relation"></A>thf(element_relation,axiom,
    mvalid @ ( subclass @ element_relation @ ( cross_product @ universal_class @ universal_class ) ) ).

<A NAME="intersection"></A>thf(intersection,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] :
              ( mforall_ind
              @ ^ [Z: mu] : ( mequiv @ ( member @ Z @ ( intersection @ X @ Y ) ) @ ( mand @ ( member @ Z @ X ) @ ( member @ Z @ Y ) ) ) ) ) ) ) ).

<A NAME="complement"></A>thf(complement,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Z: mu] : ( mequiv @ ( member @ Z @ ( complement @ X ) ) @ ( mand @ ( member @ Z @ universal_class ) @ ( mnot @ ( member @ Z @ X ) ) ) ) ) ) ) ).

<A NAME="restrict_defn"></A>thf(restrict_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [XR: mu] :
              ( mforall_ind
              @ ^ [Y: mu] : ( qmltpeq @ ( restrict @ XR @ X @ Y ) @ ( intersection @ XR @ ( cross_product @ X @ Y ) ) ) ) ) ) ) ).

<A NAME="null_class_defn"></A>thf(null_class_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( mnot @ ( member @ X @ null_class ) ) ) ) ).

<A NAME="domain_of"></A>thf(domain_of,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Z: mu] : ( mequiv @ ( member @ Z @ ( domain_of @ X ) ) @ ( mand @ ( member @ Z @ universal_class ) @ ( mnot @ ( qmltpeq @ ( restrict @ X @ ( singleton @ Z ) @ universal_class ) @ null_class ) ) ) ) ) ) ) ).

<A NAME="rotate_defn"></A>thf(rotate_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [U: mu] :
              ( mforall_ind
              @ ^ [V: mu] :
                  ( mforall_ind
                  @ ^ [W: mu] : ( mequiv @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( rotate @ X ) ) @ ( mand @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) @ ( member @ ( ordered_pair @ ( ordered_pair @ V @ W ) @ U ) @ X ) ) ) ) ) ) ) ) ).

<A NAME="rotate"></A>thf(rotate,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( subclass @ ( rotate @ X ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) ).

<A NAME="flip_defn"></A>thf(flip_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [U: mu] :
          ( mforall_ind
          @ ^ [V: mu] :
              ( mforall_ind
              @ ^ [W: mu] :
                  ( mforall_ind
                  @ ^ [X: mu] : ( mequiv @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( flip @ X ) ) @ ( mand @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) @ ( member @ ( ordered_pair @ ( ordered_pair @ V @ U ) @ W ) @ X ) ) ) ) ) ) ) ) ).

<A NAME="flip"></A>thf(flip,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( subclass @ ( flip @ X ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) ).

<A NAME="union_defn"></A>thf(union_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] :
              ( mforall_ind
              @ ^ [Z: mu] : ( mequiv @ ( member @ Z @ ( union @ X @ Y ) ) @ ( mor @ ( member @ Z @ X ) @ ( member @ Z @ Y ) ) ) ) ) ) ) ).

<A NAME="successor_defn"></A>thf(successor_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( qmltpeq @ ( successor @ X ) @ ( union @ X @ ( singleton @ X ) ) ) ) ) ).

<A NAME="successor_relation_defn1"></A>thf(successor_relation_defn1,axiom,
    mvalid @ ( subclass @ successor_relation @ ( cross_product @ universal_class @ universal_class ) ) ).

<A NAME="successor_relation_defn2"></A>thf(successor_relation_defn2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] : ( mequiv @ ( member @ ( ordered_pair @ X @ Y ) @ successor_relation ) @ ( mand @ ( member @ X @ universal_class ) @ ( mand @ ( member @ Y @ universal_class ) @ ( qmltpeq @ ( successor @ X ) @ Y ) ) ) ) ) ) ) ).

<A NAME="inverse_defn"></A>thf(inverse_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [Y: mu] : ( qmltpeq @ ( inverse @ Y ) @ ( domain_of @ ( flip @ ( cross_product @ Y @ universal_class ) ) ) ) ) ) ).

<A NAME="range_of_defn"></A>thf(range_of_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [Z: mu] : ( qmltpeq @ ( range_of @ Z ) @ ( domain_of @ ( inverse @ Z ) ) ) ) ) ).

<A NAME="image_defn"></A>thf(image_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [XR: mu] : ( qmltpeq @ ( image @ XR @ X ) @ ( range_of @ ( restrict @ XR @ X @ universal_class ) ) ) ) ) ) ).

<A NAME="inductive_defn"></A>thf(inductive_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( mequiv @ ( inductive @ X ) @ ( mand @ ( member @ null_class @ X ) @ ( subclass @ ( image @ successor_relation @ X ) @ X ) ) ) ) ) ).

<A NAME="infinity"></A>thf(infinity,axiom,
    ( mvalid
    @ ( mexists_ind
      @ ^ [X: mu] :
          ( mand @ ( member @ X @ universal_class )
          @ ( mand @ ( inductive @ X )
            @ ( mforall_ind
              @ ^ [Y: mu] : ( mimplies @ ( inductive @ Y ) @ ( subclass @ X @ Y ) ) ) ) ) ) ) ).

<A NAME="sum_class_defn"></A>thf(sum_class_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [U: mu] :
          ( mforall_ind
          @ ^ [X: mu] :
              ( mequiv @ ( member @ U @ ( sum_class @ X ) )
              @ ( mexists_ind
                @ ^ [Y: mu] : ( mand @ ( member @ U @ Y ) @ ( member @ Y @ X ) ) ) ) ) ) ) ).

<A NAME="sum_class"></A>thf(sum_class,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( mimplies @ ( member @ X @ universal_class ) @ ( member @ ( sum_class @ X ) @ universal_class ) ) ) ) ).

<A NAME="power_class_defn"></A>thf(power_class_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [U: mu] :
          ( mforall_ind
          @ ^ [X: mu] : ( mequiv @ ( member @ U @ ( power_class @ X ) ) @ ( mand @ ( member @ U @ universal_class ) @ ( subclass @ U @ X ) ) ) ) ) ) ).

<A NAME="power_class"></A>thf(power_class,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [U: mu] : ( mimplies @ ( member @ U @ universal_class ) @ ( member @ ( power_class @ U ) @ universal_class ) ) ) ) ).

<A NAME="compose_defn1"></A>thf(compose_defn1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [XR: mu] :
          ( mforall_ind
          @ ^ [YR: mu] : ( subclass @ ( compose @ YR @ XR ) @ ( cross_product @ universal_class @ universal_class ) ) ) ) ) ).

<A NAME="compose_defn2"></A>thf(compose_defn2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [XR: mu] :
          ( mforall_ind
          @ ^ [YR: mu] :
              ( mforall_ind
              @ ^ [U: mu] :
                  ( mforall_ind
                  @ ^ [V: mu] : ( mequiv @ ( member @ ( ordered_pair @ U @ V ) @ ( compose @ YR @ XR ) ) @ ( mand @ ( member @ U @ universal_class ) @ ( member @ V @ ( image @ YR @ ( image @ YR @ ( singleton @ U ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="function_defn"></A>thf(function_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [XF: mu] : ( mequiv @ ( function @ XF ) @ ( mand @ ( subclass @ XF @ ( cross_product @ universal_class @ universal_class ) ) @ ( subclass @ ( compose @ XF @ ( inverse @ XF ) ) @ identity_relation ) ) ) ) ) ).

<A NAME="replacement"></A>thf(replacement,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [XF: mu] : ( mimplies @ ( mand @ ( member @ X @ universal_class ) @ ( function @ XF ) ) @ ( member @ ( image @ XF @ X ) @ universal_class ) ) ) ) ) ).

<A NAME="disjoint_defn"></A>thf(disjoint_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [Y: mu] :
              ( mequiv @ ( disjoint @ X @ Y )
              @ ( mforall_ind
                @ ^ [U: mu] : ( mnot @ ( mand @ ( member @ U @ X ) @ ( member @ U @ Y ) ) ) ) ) ) ) ) ).

<A NAME="regularity"></A>thf(regularity,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mimplies @ ( mnot @ ( qmltpeq @ X @ null_class ) )
          @ ( mexists_ind
            @ ^ [U: mu] : ( mand @ ( member @ U @ universal_class ) @ ( mand @ ( member @ U @ X ) @ ( disjoint @ U @ X ) ) ) ) ) ) ) ).

<A NAME="apply_defn"></A>thf(apply_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [XF: mu] :
          ( mforall_ind
          @ ^ [Y: mu] : ( qmltpeq @ ( apply @ XF @ Y ) @ ( sum_class @ ( image @ XF @ ( singleton @ Y ) ) ) ) ) ) ) ).

<A NAME="choice"></A>thf(choice,axiom,
    ( mvalid
    @ ( mexists_ind
      @ ^ [XF: mu] :
          ( mand @ ( function @ XF )
          @ ( mforall_ind
            @ ^ [Y: mu] : ( mimplies @ ( member @ Y @ universal_class ) @ ( mor @ ( qmltpeq @ Y @ null_class ) @ ( member @ ( apply @ XF @ Y ) @ Y ) ) ) ) ) ) ) ).

<A NAME="ordered_pair_determines_components2"></A>thf(ordered_pair_determines_components2,conjecture,
    ( mvalid
    @ ( mforall_ind
      @ ^ [W: mu] :
          ( mforall_ind
          @ ^ [X: mu] :
              ( mforall_ind
              @ ^ [Y: mu] :
                  ( mforall_ind
                  @ ^ [Z: mu] : ( mimplies @ ( mand @ ( qmltpeq @ ( ordered_pair @ W @ X ) @ ( ordered_pair @ Y @ Z ) ) @ ( member @ X @ universal_class ) ) @ ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
