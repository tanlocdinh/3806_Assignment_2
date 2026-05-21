<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET020^7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET020^7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET020^7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET020^7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET020^7 : TPTP v9.2.1. Released v5.5.0.
% Domain   : Set Theory
% Problem  : Uniqueness of 1st and 2nd when X is an ordered pair of sets
% Version  : [Ben12] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Goe69>Goe69</a>] Goedel (1969), An Interpretation of the Intuitionistic
%          : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
%          : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [Ben12] Benzmueller (2012), Email to Geoff Sutcliffe
% Source   : [Ben12]
% Names    : s4-cumul-GSE020+1 [Ben12]

% Status   : Theorem
% Rating   : 1.00 v5.5.0
% Syntax   : Number of formulae    :  213 (  59 unt;  67 typ;  32 def)
%            Number of atoms       : 1368 (  36 equ;   0 cnn)
%            Maximal formula atoms :   32 (   9 avg)
%            Number of connectives : 2191 (   5   ~;   5   |;   9   &;2162   @)
%                                         (   0 &lt;=>;  10  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :   27 (  11 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  224 ( 224   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :   78 (  76 usr;  16 con; 0-3 aty)
%            Number of variables   :  347 ( 249   ^;  91   !;   7   ?; 347   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : Goedel translation of SET020+1
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

<A NAME="second_type"></A>thf(second_type,type,
    second: mu > mu ).

<A NAME="existence_of_second_ax"></A>thf(existence_of_second_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( second @ V1 ) @ V ) ).

<A NAME="first_type"></A>thf(first_type,type,
    first: mu > mu ).

<A NAME="existence_of_first_ax"></A>thf(existence_of_first_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( first @ V1 ) @ V ) ).

<A NAME="ordered_pair_type"></A>thf(ordered_pair_type,type,
    ordered_pair: mu > mu > mu ).

<A NAME="existence_of_ordered_pair_ax"></A>thf(existence_of_ordered_pair_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( ordered_pair @ V2 @ V1 ) @ V ) ).

<A NAME="universal_class_type"></A>thf(universal_class_type,type,
    universal_class: mu ).

<A NAME="existence_of_universal_class_ax"></A>thf(existence_of_universal_class_ax,axiom,
    ! [V: $i] : ( exists_in_world @ universal_class @ V ) ).

<A NAME="reflexivity"></A>thf(reflexivity,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mbox_s4 @ ( qmltpeq @ X @ X ) ) ) ) ) ).

<A NAME="symmetry"></A>thf(symmetry,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ X @ Y ) ) @ ( mbox_s4 @ ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ).

<A NAME="transitivity"></A>thf(transitivity,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [Z: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ X @ Y ) ) @ ( mbox_s4 @ ( qmltpeq @ Y @ Z ) ) ) @ ( mbox_s4 @ ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="apply_substitution_1"></A>thf(apply_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( apply @ A @ C ) @ ( apply @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="apply_substitution_2"></A>thf(apply_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( apply @ C @ A ) @ ( apply @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="complement_substitution_1"></A>thf(complement_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( complement @ A ) @ ( complement @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="compose_substitution_1"></A>thf(compose_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( compose @ A @ C ) @ ( compose @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="compose_substitution_2"></A>thf(compose_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( compose @ C @ A ) @ ( compose @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="cross_product_substitution_1"></A>thf(cross_product_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( cross_product @ A @ C ) @ ( cross_product @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="cross_product_substitution_2"></A>thf(cross_product_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( cross_product @ C @ A ) @ ( cross_product @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="domain_of_substitution_1"></A>thf(domain_of_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( domain_of @ A ) @ ( domain_of @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="first_substitution_1"></A>thf(first_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( first @ A ) @ ( first @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="flip_substitution_1"></A>thf(flip_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( flip @ A ) @ ( flip @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="image_substitution_1"></A>thf(image_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( image @ A @ C ) @ ( image @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="image_substitution_2"></A>thf(image_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( image @ C @ A ) @ ( image @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="intersection_substitution_1"></A>thf(intersection_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( intersection @ A @ C ) @ ( intersection @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="intersection_substitution_2"></A>thf(intersection_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( intersection @ C @ A ) @ ( intersection @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="inverse_substitution_1"></A>thf(inverse_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( inverse @ A ) @ ( inverse @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="ordered_pair_substitution_1"></A>thf(ordered_pair_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( ordered_pair @ A @ C ) @ ( ordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="ordered_pair_substitution_2"></A>thf(ordered_pair_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( ordered_pair @ C @ A ) @ ( ordered_pair @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="power_class_substitution_1"></A>thf(power_class_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( power_class @ A ) @ ( power_class @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="range_of_substitution_1"></A>thf(range_of_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( range_of @ A ) @ ( range_of @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="restrict_substitution_1"></A>thf(restrict_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] :
                        ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [D: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( restrict @ A @ C @ D ) @ ( restrict @ B @ C @ D ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="restrict_substitution_2"></A>thf(restrict_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] :
                        ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [D: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( restrict @ C @ A @ D ) @ ( restrict @ C @ B @ D ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="restrict_substitution_3"></A>thf(restrict_substitution_3,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] :
                        ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [D: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( restrict @ C @ D @ A ) @ ( restrict @ C @ D @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="rotate_substitution_1"></A>thf(rotate_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( rotate @ A ) @ ( rotate @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="second_substitution_1"></A>thf(second_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( second @ A ) @ ( second @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="singleton_substitution_1"></A>thf(singleton_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="successor_substitution_1"></A>thf(successor_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( successor @ A ) @ ( successor @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="sum_class_substitution_1"></A>thf(sum_class_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( sum_class @ A ) @ ( sum_class @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="union_substitution_1"></A>thf(union_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="union_substitution_2"></A>thf(union_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="unordered_pair_substitution_1"></A>thf(unordered_pair_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="unordered_pair_substitution_2"></A>thf(unordered_pair_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="disjoint_substitution_1"></A>thf(disjoint_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( disjoint @ A @ C ) ) ) @ ( mbox_s4 @ ( disjoint @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="disjoint_substitution_2"></A>thf(disjoint_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( disjoint @ C @ A ) ) ) @ ( mbox_s4 @ ( disjoint @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="function_substitution_1"></A>thf(function_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( function @ A ) ) ) @ ( mbox_s4 @ ( function @ B ) ) ) ) ) ) ) ) ) ).

<A NAME="inductive_substitution_1"></A>thf(inductive_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( inductive @ A ) ) ) @ ( mbox_s4 @ ( inductive @ B ) ) ) ) ) ) ) ) ) ).

<A NAME="member_substitution_1"></A>thf(member_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( member @ A @ C ) ) ) @ ( mbox_s4 @ ( member @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="member_substitution_2"></A>thf(member_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( member @ C @ A ) ) ) @ ( mbox_s4 @ ( member @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="subclass_substitution_1"></A>thf(subclass_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( subclass @ A @ C ) ) ) @ ( mbox_s4 @ ( subclass @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="subclass_substitution_2"></A>thf(subclass_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( subclass @ C @ A ) ) ) @ ( mbox_s4 @ ( subclass @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="subclass_defn"></A>thf(subclass_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] :
                  ( mand
                  @ ( mbox_s4
                    @ ( mimplies @ ( mbox_s4 @ ( subclass @ X @ Y ) )
                      @ ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [U: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ U @ X ) ) @ ( mbox_s4 @ ( member @ U @ Y ) ) ) ) ) ) ) )
                  @ ( mbox_s4
                    @ ( mimplies
                      @ ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [U: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ U @ X ) ) @ ( mbox_s4 @ ( member @ U @ Y ) ) ) ) ) )
                      @ ( mbox_s4 @ ( subclass @ X @ Y ) ) ) ) ) ) ) ) ) ) ).

<A NAME="class_elements_are_sets"></A>thf(class_elements_are_sets,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mbox_s4 @ ( subclass @ X @ universal_class ) ) ) ) ) ).

<A NAME="extensionality"></A>thf(extensionality,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ X @ Y ) ) @ ( mand @ ( mbox_s4 @ ( subclass @ X @ Y ) ) @ ( mbox_s4 @ ( subclass @ Y @ X ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( subclass @ X @ Y ) ) @ ( mbox_s4 @ ( subclass @ Y @ X ) ) ) @ ( mbox_s4 @ ( qmltpeq @ X @ Y ) ) ) ) ) ) ) ) ) ) ).

<A NAME="unordered_pair_defn"></A>thf(unordered_pair_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [U: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [X: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ U @ ( unordered_pair @ X @ Y ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ U @ universal_class ) ) @ ( mor @ ( mbox_s4 @ ( qmltpeq @ U @ X ) ) @ ( mbox_s4 @ ( qmltpeq @ U @ Y ) ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ U @ universal_class ) ) @ ( mor @ ( mbox_s4 @ ( qmltpeq @ U @ X ) ) @ ( mbox_s4 @ ( qmltpeq @ U @ Y ) ) ) ) @ ( mbox_s4 @ ( member @ U @ ( unordered_pair @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="unordered_pair"></A>thf(unordered_pair,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] : ( mbox_s4 @ ( member @ ( unordered_pair @ X @ Y ) @ universal_class ) ) ) ) ) ) ) ).

<A NAME="singleton_set_defn"></A>thf(singleton_set_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mbox_s4 @ ( qmltpeq @ ( singleton @ X ) @ ( unordered_pair @ X @ X ) ) ) ) ) ) ).

<A NAME="ordered_pair_defn"></A>thf(ordered_pair_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] : ( mbox_s4 @ ( qmltpeq @ ( ordered_pair @ X @ Y ) @ ( unordered_pair @ ( singleton @ X ) @ ( unordered_pair @ X @ ( singleton @ Y ) ) ) ) ) ) ) ) ) ) ).

<A NAME="cross_product_defn"></A>thf(cross_product_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [U: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [V: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [X: mu] :
                        ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ ( ordered_pair @ U @ V ) @ ( cross_product @ X @ Y ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ U @ X ) ) @ ( mbox_s4 @ ( member @ V @ Y ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ U @ X ) ) @ ( mbox_s4 @ ( member @ V @ Y ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ U @ V ) @ ( cross_product @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="cross_product"></A>thf(cross_product,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [Z: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ Z @ ( cross_product @ X @ Y ) ) ) @ ( mbox_s4 @ ( qmltpeq @ Z @ ( ordered_pair @ ( first @ Z ) @ ( second @ Z ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="element_relation_defn"></A>thf(element_relation_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ ( ordered_pair @ X @ Y ) @ element_relation ) ) @ ( mand @ ( mbox_s4 @ ( member @ Y @ universal_class ) ) @ ( mbox_s4 @ ( member @ X @ Y ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ Y @ universal_class ) ) @ ( mbox_s4 @ ( member @ X @ Y ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ X @ Y ) @ element_relation ) ) ) ) ) ) ) ) ) ) ).

<A NAME="element_relation"></A>thf(element_relation,axiom,
    mvalid @ ( mbox_s4 @ ( subclass @ element_relation @ ( cross_product @ universal_class @ universal_class ) ) ) ).

<A NAME="intersection"></A>thf(intersection,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [Z: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ Z @ ( intersection @ X @ Y ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ Z @ X ) ) @ ( mbox_s4 @ ( member @ Z @ Y ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ Z @ X ) ) @ ( mbox_s4 @ ( member @ Z @ Y ) ) ) @ ( mbox_s4 @ ( member @ Z @ ( intersection @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="complement"></A>thf(complement,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Z: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ Z @ ( complement @ X ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ Z @ universal_class ) ) @ ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( member @ Z @ X ) ) ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ Z @ universal_class ) ) @ ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( member @ Z @ X ) ) ) ) ) @ ( mbox_s4 @ ( member @ Z @ ( complement @ X ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="restrict_defn"></A>thf(restrict_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [XR: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [Y: mu] : ( mbox_s4 @ ( qmltpeq @ ( restrict @ XR @ X @ Y ) @ ( intersection @ XR @ ( cross_product @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="null_class_defn"></A>thf(null_class_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( member @ X @ null_class ) ) ) ) ) ) ) ).

<A NAME="domain_of"></A>thf(domain_of,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Z: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ Z @ ( domain_of @ X ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ Z @ universal_class ) ) @ ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( qmltpeq @ ( restrict @ X @ ( singleton @ Z ) @ universal_class ) @ null_class ) ) ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ Z @ universal_class ) ) @ ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( qmltpeq @ ( restrict @ X @ ( singleton @ Z ) @ universal_class ) @ null_class ) ) ) ) ) @ ( mbox_s4 @ ( member @ Z @ ( domain_of @ X ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="rotate_defn"></A>thf(rotate_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [U: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [V: mu] :
                        ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [W: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( rotate @ X ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ V @ W ) @ U ) @ X ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ V @ W ) @ U ) @ X ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( rotate @ X ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="rotate"></A>thf(rotate,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mbox_s4 @ ( subclass @ ( rotate @ X ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) ) ) ).

<A NAME="flip_defn"></A>thf(flip_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [U: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [V: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [W: mu] :
                        ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [X: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( flip @ X ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ V @ U ) @ W ) @ X ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ V @ U ) @ W ) @ X ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( flip @ X ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="flip"></A>thf(flip,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mbox_s4 @ ( subclass @ ( flip @ X ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) ) ) ).

<A NAME="union_defn"></A>thf(union_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [Z: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ Z @ ( union @ X @ Y ) ) ) @ ( mor @ ( mbox_s4 @ ( member @ Z @ X ) ) @ ( mbox_s4 @ ( member @ Z @ Y ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mor @ ( mbox_s4 @ ( member @ Z @ X ) ) @ ( mbox_s4 @ ( member @ Z @ Y ) ) ) @ ( mbox_s4 @ ( member @ Z @ ( union @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="successor_defn"></A>thf(successor_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mbox_s4 @ ( qmltpeq @ ( successor @ X ) @ ( union @ X @ ( singleton @ X ) ) ) ) ) ) ) ).

<A NAME="successor_relation_defn1"></A>thf(successor_relation_defn1,axiom,
    mvalid @ ( mbox_s4 @ ( subclass @ successor_relation @ ( cross_product @ universal_class @ universal_class ) ) ) ).

<A NAME="successor_relation_defn2"></A>thf(successor_relation_defn2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ ( ordered_pair @ X @ Y ) @ successor_relation ) ) @ ( mand @ ( mbox_s4 @ ( member @ X @ universal_class ) ) @ ( mand @ ( mbox_s4 @ ( member @ Y @ universal_class ) ) @ ( mbox_s4 @ ( qmltpeq @ ( successor @ X ) @ Y ) ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ X @ universal_class ) ) @ ( mand @ ( mbox_s4 @ ( member @ Y @ universal_class ) ) @ ( mbox_s4 @ ( qmltpeq @ ( successor @ X ) @ Y ) ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ X @ Y ) @ successor_relation ) ) ) ) ) ) ) ) ) ) ).

<A NAME="inverse_defn"></A>thf(inverse_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [Y: mu] : ( mbox_s4 @ ( qmltpeq @ ( inverse @ Y ) @ ( domain_of @ ( flip @ ( cross_product @ Y @ universal_class ) ) ) ) ) ) ) ) ).

<A NAME="range_of_defn"></A>thf(range_of_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [Z: mu] : ( mbox_s4 @ ( qmltpeq @ ( range_of @ Z ) @ ( domain_of @ ( inverse @ Z ) ) ) ) ) ) ) ).

<A NAME="image_defn"></A>thf(image_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [XR: mu] : ( mbox_s4 @ ( qmltpeq @ ( image @ XR @ X ) @ ( range_of @ ( restrict @ XR @ X @ universal_class ) ) ) ) ) ) ) ) ) ).

<A NAME="inductive_defn"></A>thf(inductive_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( inductive @ X ) ) @ ( mand @ ( mbox_s4 @ ( member @ null_class @ X ) ) @ ( mbox_s4 @ ( subclass @ ( image @ successor_relation @ X ) @ X ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ null_class @ X ) ) @ ( mbox_s4 @ ( subclass @ ( image @ successor_relation @ X ) @ X ) ) ) @ ( mbox_s4 @ ( inductive @ X ) ) ) ) ) ) ) ) ).

<A NAME="infinity"></A>thf(infinity,axiom,
    ( mvalid
    @ ( mexists_ind
      @ ^ [X: mu] :
          ( mand @ ( mbox_s4 @ ( member @ X @ universal_class ) )
          @ ( mand @ ( mbox_s4 @ ( inductive @ X ) )
            @ ( mbox_s4
              @ ( mforall_ind
                @ ^ [Y: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( inductive @ Y ) ) @ ( mbox_s4 @ ( subclass @ X @ Y ) ) ) ) ) ) ) ) ) ) ).

<A NAME="sum_class_defn"></A>thf(sum_class_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [U: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [X: mu] :
                  ( mand
                  @ ( mbox_s4
                    @ ( mimplies @ ( mbox_s4 @ ( member @ U @ ( sum_class @ X ) ) )
                      @ ( mexists_ind
                        @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( member @ U @ Y ) ) @ ( mbox_s4 @ ( member @ Y @ X ) ) ) ) ) )
                  @ ( mbox_s4
                    @ ( mimplies
                      @ ( mexists_ind
                        @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( member @ U @ Y ) ) @ ( mbox_s4 @ ( member @ Y @ X ) ) ) )
                      @ ( mbox_s4 @ ( member @ U @ ( sum_class @ X ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="sum_class"></A>thf(sum_class,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ X @ universal_class ) ) @ ( mbox_s4 @ ( member @ ( sum_class @ X ) @ universal_class ) ) ) ) ) ) ) ).

<A NAME="power_class_defn"></A>thf(power_class_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [U: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [X: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ U @ ( power_class @ X ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ U @ universal_class ) ) @ ( mbox_s4 @ ( subclass @ U @ X ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ U @ universal_class ) ) @ ( mbox_s4 @ ( subclass @ U @ X ) ) ) @ ( mbox_s4 @ ( member @ U @ ( power_class @ X ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="power_class"></A>thf(power_class,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [U: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ U @ universal_class ) ) @ ( mbox_s4 @ ( member @ ( power_class @ U ) @ universal_class ) ) ) ) ) ) ) ).

<A NAME="compose_defn1"></A>thf(compose_defn1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [XR: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [YR: mu] : ( mbox_s4 @ ( subclass @ ( compose @ YR @ XR ) @ ( cross_product @ universal_class @ universal_class ) ) ) ) ) ) ) ) ).

<A NAME="compose_defn2"></A>thf(compose_defn2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [XR: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [YR: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [U: mu] :
                        ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [V: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ ( ordered_pair @ U @ V ) @ ( compose @ YR @ XR ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ U @ universal_class ) ) @ ( mbox_s4 @ ( member @ V @ ( image @ YR @ ( image @ YR @ ( singleton @ U ) ) ) ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ U @ universal_class ) ) @ ( mbox_s4 @ ( member @ V @ ( image @ YR @ ( image @ YR @ ( singleton @ U ) ) ) ) ) ) @ ( mbox_s4 @ ( member @ ( ordered_pair @ U @ V ) @ ( compose @ YR @ XR ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="function_defn"></A>thf(function_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [XF: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( function @ XF ) ) @ ( mand @ ( mbox_s4 @ ( subclass @ XF @ ( cross_product @ universal_class @ universal_class ) ) ) @ ( mbox_s4 @ ( subclass @ ( compose @ XF @ ( inverse @ XF ) ) @ identity_relation ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( subclass @ XF @ ( cross_product @ universal_class @ universal_class ) ) ) @ ( mbox_s4 @ ( subclass @ ( compose @ XF @ ( inverse @ XF ) ) @ identity_relation ) ) ) @ ( mbox_s4 @ ( function @ XF ) ) ) ) ) ) ) ) ).

<A NAME="replacement"></A>thf(replacement,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [XF: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ X @ universal_class ) ) @ ( mbox_s4 @ ( function @ XF ) ) ) @ ( mbox_s4 @ ( member @ ( image @ XF @ X ) @ universal_class ) ) ) ) ) ) ) ) ) ).

<A NAME="disjoint_defn"></A>thf(disjoint_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] :
                  ( mand
                  @ ( mbox_s4
                    @ ( mimplies @ ( mbox_s4 @ ( disjoint @ X @ Y ) )
                      @ ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [U: mu] : ( mbox_s4 @ ( mnot @ ( mand @ ( mbox_s4 @ ( member @ U @ X ) ) @ ( mbox_s4 @ ( member @ U @ Y ) ) ) ) ) ) ) ) )
                  @ ( mbox_s4
                    @ ( mimplies
                      @ ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [U: mu] : ( mbox_s4 @ ( mnot @ ( mand @ ( mbox_s4 @ ( member @ U @ X ) ) @ ( mbox_s4 @ ( member @ U @ Y ) ) ) ) ) ) )
                      @ ( mbox_s4 @ ( disjoint @ X @ Y ) ) ) ) ) ) ) ) ) ) ).

<A NAME="regularity"></A>thf(regularity,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mimplies @ ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( qmltpeq @ X @ null_class ) ) ) )
              @ ( mexists_ind
                @ ^ [U: mu] : ( mand @ ( mbox_s4 @ ( member @ U @ universal_class ) ) @ ( mand @ ( mbox_s4 @ ( member @ U @ X ) ) @ ( mbox_s4 @ ( disjoint @ U @ X ) ) ) ) ) ) ) ) ) ) ).

<A NAME="apply_defn"></A>thf(apply_defn,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [XF: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] : ( mbox_s4 @ ( qmltpeq @ ( apply @ XF @ Y ) @ ( sum_class @ ( image @ XF @ ( singleton @ Y ) ) ) ) ) ) ) ) ) ) ).

<A NAME="choice"></A>thf(choice,axiom,
    ( mvalid
    @ ( mexists_ind
      @ ^ [XF: mu] :
          ( mand @ ( mbox_s4 @ ( function @ XF ) )
          @ ( mbox_s4
            @ ( mforall_ind
              @ ^ [Y: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ Y @ universal_class ) ) @ ( mor @ ( mbox_s4 @ ( qmltpeq @ Y @ null_class ) ) @ ( mbox_s4 @ ( member @ ( apply @ XF @ Y ) @ Y ) ) ) ) ) ) ) ) ) ) ).

<A NAME="unique_1st_and_2nd_in_pair_of_sets1"></A>thf(unique_1st_and_2nd_in_pair_of_sets1,conjecture,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [U: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [V: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [X: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ U @ universal_class ) ) @ ( mand @ ( mbox_s4 @ ( member @ V @ universal_class ) ) @ ( mbox_s4 @ ( qmltpeq @ X @ ( ordered_pair @ U @ V ) ) ) ) ) @ ( mand @ ( mbox_s4 @ ( qmltpeq @ ( first @ X ) @ U ) ) @ ( mbox_s4 @ ( qmltpeq @ ( second @ X ) @ V ) ) ) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
