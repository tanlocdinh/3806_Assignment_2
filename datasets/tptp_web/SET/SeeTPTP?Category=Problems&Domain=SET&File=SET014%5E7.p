<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET014^7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET014^7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET014^7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET014^7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET014^7 : TPTP v9.2.1. Released v5.5.0.
% Domain   : Set Theory
% Problem  : Union of subsets is a subset
% Version  : [Ben12] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Goe69>Goe69</a>] Goedel (1969), An Interpretation of the Intuitionistic
%          : [Ben12] Benzmueller (2012), Email to Geoff Sutcliffe
% Source   : [Ben12]
% Names    : s4-cumul-GSE014+4 [Ben12]

% Status   : Theorem
% Rating   : 1.00 v5.5.0
% Syntax   : Number of formulae    :  126 (  42 unt;  48 typ;  32 def)
%            Number of atoms       :  678 (  36 equ;   0 cnn)
%            Maximal formula atoms :   30 (   8 avg)
%            Number of connectives :  996 (   5   ~;   5   |;   9   &; 967   @)
%                                         (   0 &lt;=>;  10  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :   21 (   9 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  201 ( 201   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :   59 (  57 usr;  12 con; 0-3 aty)
%            Number of variables   :  201 ( 139   ^;  55   !;   7   ?; 201   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : Goedel translation of SET014+4
%------------------------------------------------------------------------------
%----Include axioms for Modal logic S4 under cumulative domains
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^0.ax>LCL015^0.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL013^5.ax>LCL013^5.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^1.ax>LCL015^1.ax</a>').
%------------------------------------------------------------------------------
<A NAME="equal_set_type"></A>thf(equal_set_type,type,
    equal_set: mu > mu > $i > $o ).

<A NAME="member_type"></A>thf(member_type,type,
    member: mu > mu > $i > $o ).

<A NAME="subset_type"></A>thf(subset_type,type,
    subset: mu > mu > $i > $o ).

<A NAME="power_set_type"></A>thf(power_set_type,type,
    power_set: mu > mu ).

<A NAME="existence_of_power_set_ax"></A>thf(existence_of_power_set_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( power_set @ V1 ) @ V ) ).

<A NAME="intersection_type"></A>thf(intersection_type,type,
    intersection: mu > mu > mu ).

<A NAME="existence_of_intersection_ax"></A>thf(existence_of_intersection_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( intersection @ V2 @ V1 ) @ V ) ).

<A NAME="empty_set_type"></A>thf(empty_set_type,type,
    empty_set: mu ).

<A NAME="existence_of_empty_set_ax"></A>thf(existence_of_empty_set_ax,axiom,
    ! [V: $i] : ( exists_in_world @ empty_set @ V ) ).

<A NAME="difference_type"></A>thf(difference_type,type,
    difference: mu > mu > mu ).

<A NAME="existence_of_difference_ax"></A>thf(existence_of_difference_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( difference @ V2 @ V1 ) @ V ) ).

<A NAME="singleton_type"></A>thf(singleton_type,type,
    singleton: mu > mu ).

<A NAME="existence_of_singleton_ax"></A>thf(existence_of_singleton_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( singleton @ V1 ) @ V ) ).

<A NAME="unordered_pair_type"></A>thf(unordered_pair_type,type,
    unordered_pair: mu > mu > mu ).

<A NAME="existence_of_unordered_pair_ax"></A>thf(existence_of_unordered_pair_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( unordered_pair @ V2 @ V1 ) @ V ) ).

<A NAME="sum_type"></A>thf(sum_type,type,
    sum: mu > mu ).

<A NAME="existence_of_sum_ax"></A>thf(existence_of_sum_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( sum @ V1 ) @ V ) ).

<A NAME="product_type"></A>thf(product_type,type,
    product: mu > mu ).

<A NAME="existence_of_product_ax"></A>thf(existence_of_product_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( product @ V1 ) @ V ) ).

<A NAME="union_type"></A>thf(union_type,type,
    union: mu > mu > mu ).

<A NAME="existence_of_union_ax"></A>thf(existence_of_union_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( union @ V2 @ V1 ) @ V ) ).

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

<A NAME="difference_substitution_1"></A>thf(difference_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( difference @ A @ C ) @ ( difference @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="difference_substitution_2"></A>thf(difference_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( difference @ C @ A ) @ ( difference @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

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

<A NAME="power_set_substitution_1"></A>thf(power_set_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( power_set @ A ) @ ( power_set @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="product_substitution_1"></A>thf(product_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( product @ A ) @ ( product @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="singleton_substitution_1"></A>thf(singleton_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="sum_substitution_1"></A>thf(sum_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( qmltpeq @ ( sum @ A ) @ ( sum @ B ) ) ) ) ) ) ) ) ) ) ).

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

<A NAME="equal_set_substitution_1"></A>thf(equal_set_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( equal_set @ A @ C ) ) ) @ ( mbox_s4 @ ( equal_set @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="equal_set_substitution_2"></A>thf(equal_set_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( equal_set @ C @ A ) ) ) @ ( mbox_s4 @ ( equal_set @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

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

<A NAME="subset_substitution_1"></A>thf(subset_substitution_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( subset @ A @ C ) ) ) @ ( mbox_s4 @ ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="subset_substitution_2"></A>thf(subset_substitution_2,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [C: mu] : ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( qmltpeq @ A @ B ) ) @ ( mbox_s4 @ ( subset @ C @ A ) ) ) @ ( mbox_s4 @ ( subset @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="subset"></A>thf(subset,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] :
                  ( mand
                  @ ( mbox_s4
                    @ ( mimplies @ ( mbox_s4 @ ( subset @ A @ B ) )
                      @ ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [X: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ X @ A ) ) @ ( mbox_s4 @ ( member @ X @ B ) ) ) ) ) ) ) )
                  @ ( mbox_s4
                    @ ( mimplies
                      @ ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [X: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ X @ A ) ) @ ( mbox_s4 @ ( member @ X @ B ) ) ) ) ) )
                      @ ( mbox_s4 @ ( subset @ A @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="equal_set"></A>thf(equal_set,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [B: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( equal_set @ A @ B ) ) @ ( mand @ ( mbox_s4 @ ( subset @ A @ B ) ) @ ( mbox_s4 @ ( subset @ B @ A ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( subset @ A @ B ) ) @ ( mbox_s4 @ ( subset @ B @ A ) ) ) @ ( mbox_s4 @ ( equal_set @ A @ B ) ) ) ) ) ) ) ) ) ) ).

<A NAME="power_set"></A>thf(power_set,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [A: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ X @ ( power_set @ A ) ) ) @ ( mbox_s4 @ ( subset @ X @ A ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( subset @ X @ A ) ) @ ( mbox_s4 @ ( member @ X @ ( power_set @ A ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="intersection"></A>thf(intersection,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [A: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [B: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ X @ ( intersection @ A @ B ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ X @ A ) ) @ ( mbox_s4 @ ( member @ X @ B ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ X @ A ) ) @ ( mbox_s4 @ ( member @ X @ B ) ) ) @ ( mbox_s4 @ ( member @ X @ ( intersection @ A @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="union"></A>thf(union,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [A: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [B: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ X @ ( union @ A @ B ) ) ) @ ( mor @ ( mbox_s4 @ ( member @ X @ A ) ) @ ( mbox_s4 @ ( member @ X @ B ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mor @ ( mbox_s4 @ ( member @ X @ A ) ) @ ( mbox_s4 @ ( member @ X @ B ) ) ) @ ( mbox_s4 @ ( member @ X @ ( union @ A @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="empty_set"></A>thf(empty_set,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] : ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( member @ X @ empty_set ) ) ) ) ) ) ) ).

<A NAME="difference"></A>thf(difference,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [B: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [A: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [E: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ B @ ( difference @ E @ A ) ) ) @ ( mand @ ( mbox_s4 @ ( member @ B @ E ) ) @ ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( member @ B @ A ) ) ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( member @ B @ E ) ) @ ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( member @ B @ A ) ) ) ) ) @ ( mbox_s4 @ ( member @ B @ ( difference @ E @ A ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="singleton"></A>thf(singleton,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [A: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ X @ ( singleton @ A ) ) ) @ ( mbox_s4 @ ( qmltpeq @ X @ A ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( qmltpeq @ X @ A ) ) @ ( mbox_s4 @ ( member @ X @ ( singleton @ A ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="unordered_pair"></A>thf(unordered_pair,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [A: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [B: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ X @ ( unordered_pair @ A @ B ) ) ) @ ( mor @ ( mbox_s4 @ ( qmltpeq @ X @ A ) ) @ ( mbox_s4 @ ( qmltpeq @ X @ B ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mor @ ( mbox_s4 @ ( qmltpeq @ X @ A ) ) @ ( mbox_s4 @ ( qmltpeq @ X @ B ) ) ) @ ( mbox_s4 @ ( member @ X @ ( unordered_pair @ A @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="sum"></A>thf(sum,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [A: mu] :
                  ( mand
                  @ ( mbox_s4
                    @ ( mimplies @ ( mbox_s4 @ ( member @ X @ ( sum @ A ) ) )
                      @ ( mexists_ind
                        @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( member @ Y @ A ) ) @ ( mbox_s4 @ ( member @ X @ Y ) ) ) ) ) )
                  @ ( mbox_s4
                    @ ( mimplies
                      @ ( mexists_ind
                        @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( member @ Y @ A ) ) @ ( mbox_s4 @ ( member @ X @ Y ) ) ) )
                      @ ( mbox_s4 @ ( member @ X @ ( sum @ A ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="product"></A>thf(product,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [X: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [A: mu] :
                  ( mand
                  @ ( mbox_s4
                    @ ( mimplies @ ( mbox_s4 @ ( member @ X @ ( product @ A ) ) )
                      @ ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [Y: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ Y @ A ) ) @ ( mbox_s4 @ ( member @ X @ Y ) ) ) ) ) ) ) )
                  @ ( mbox_s4
                    @ ( mimplies
                      @ ( mbox_s4
                        @ ( mforall_ind
                          @ ^ [Y: mu] : ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( member @ Y @ A ) ) @ ( mbox_s4 @ ( member @ X @ Y ) ) ) ) ) )
                      @ ( mbox_s4 @ ( member @ X @ ( product @ A ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="thI45"></A>thf(thI45,conjecture,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [A: mu] :
            ( mbox_s4
            @ ( mforall_ind
              @ ^ [X: mu] :
                  ( mbox_s4
                  @ ( mforall_ind
                    @ ^ [Y: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( subset @ X @ A ) ) @ ( mbox_s4 @ ( subset @ Y @ A ) ) ) @ ( mbox_s4 @ ( subset @ ( union @ X @ Y ) @ A ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( subset @ ( union @ X @ Y ) @ A ) ) @ ( mand @ ( mbox_s4 @ ( subset @ X @ A ) ) @ ( mbox_s4 @ ( subset @ Y @ A ) ) ) ) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
