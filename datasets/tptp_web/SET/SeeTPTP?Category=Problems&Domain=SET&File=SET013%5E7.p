<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET013^7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET013^7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET013^7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET013^7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET013^7 : TPTP v9.2.1. Released v5.5.0.
% Domain   : Set Theory
% Problem  : Commutativity of intersection
% Version  : [Ben12] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
%          : [Ben12] Benzmueller (2012), Email to Geoff Sutcliffe
% Source   : [Ben12]
% Names    : s4-cumul-SET013+4 [Ben12]

% Status   : Theorem
% Rating   : 0.78 v9.1.0, 0.75 v9.0.0, 0.80 v8.2.0, 0.77 v8.1.0, 0.82 v7.5.0, 0.86 v7.4.0, 0.89 v7.3.0, 1.00 v5.5.0
% Syntax   : Number of formulae    :  126 (  42 unt;  48 typ;  32 def)
%            Number of atoms       :  359 (  36 equ;   0 cnn)
%            Maximal formula atoms :   10 (   4 avg)
%            Number of connectives :  599 (   5   ~;   5   |;   9   &; 570   @)
%                                         (   0 &lt;=>;  10  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :   14 (   6 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  201 ( 201   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :   59 (  57 usr;  12 con; 0-3 aty)
%            Number of variables   :  197 ( 135   ^;  55   !;   7   ?; 197   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for Modal logic S4 under cumulative domains
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^0.ax>LCL015^0.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL013^5.ax>LCL013^5.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^1.ax>LCL015^1.ax</a>').
%------------------------------------------------------------------------------
<A NAME="subset_type"></A>thf(subset_type,type,
    subset: mu > mu > $i > $o ).

<A NAME="member_type"></A>thf(member_type,type,
    member: mu > mu > $i > $o ).

<A NAME="equal_set_type"></A>thf(equal_set_type,type,
    equal_set: mu > mu > $i > $o ).

<A NAME="power_set_type"></A>thf(power_set_type,type,
    power_set: mu > mu ).

<A NAME="existence_of_power_set_ax"></A>thf(existence_of_power_set_ax,axiom,
    ! [V: $i,V1: mu] : ( exists_in_world @ ( power_set @ V1 ) @ V ) ).

<A NAME="union_type"></A>thf(union_type,type,
    union: mu > mu > mu ).

<A NAME="existence_of_union_ax"></A>thf(existence_of_union_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( union @ V2 @ V1 ) @ V ) ).

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

<A NAME="intersection_type"></A>thf(intersection_type,type,
    intersection: mu > mu > mu ).

<A NAME="existence_of_intersection_ax"></A>thf(existence_of_intersection_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( intersection @ V2 @ V1 ) @ V ) ).

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

<A NAME="difference_substitution_1"></A>thf(difference_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( difference @ A @ C ) @ ( difference @ B @ C ) ) ) ) ) ) ) ).

<A NAME="difference_substitution_2"></A>thf(difference_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( difference @ C @ A ) @ ( difference @ C @ B ) ) ) ) ) ) ) ).

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

<A NAME="power_set_substitution_1"></A>thf(power_set_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( power_set @ A ) @ ( power_set @ B ) ) ) ) ) ) ).

<A NAME="product_substitution_1"></A>thf(product_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( product @ A ) @ ( product @ B ) ) ) ) ) ) ).

<A NAME="singleton_substitution_1"></A>thf(singleton_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) ) ).

<A NAME="sum_substitution_1"></A>thf(sum_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( sum @ A ) @ ( sum @ B ) ) ) ) ) ) ).

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

<A NAME="equal_set_substitution_1"></A>thf(equal_set_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( equal_set @ A @ C ) ) @ ( equal_set @ B @ C ) ) ) ) ) ) ).

<A NAME="equal_set_substitution_2"></A>thf(equal_set_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( equal_set @ C @ A ) ) @ ( equal_set @ C @ B ) ) ) ) ) ) ).

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

<A NAME="subset_substitution_1"></A>thf(subset_substitution_1,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( subset @ A @ C ) ) @ ( subset @ B @ C ) ) ) ) ) ) ).

<A NAME="subset_substitution_2"></A>thf(subset_substitution_2,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mforall_ind
              @ ^ [C: mu] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( subset @ C @ A ) ) @ ( subset @ C @ B ) ) ) ) ) ) ).

<A NAME="subset"></A>thf(subset,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] :
              ( mequiv @ ( subset @ A @ B )
              @ ( mforall_ind
                @ ^ [X: mu] : ( mimplies @ ( member @ X @ A ) @ ( member @ X @ B ) ) ) ) ) ) ) ).

<A NAME="equal_set"></A>thf(equal_set,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( mequiv @ ( equal_set @ A @ B ) @ ( mand @ ( subset @ A @ B ) @ ( subset @ B @ A ) ) ) ) ) ) ).

<A NAME="power_set"></A>thf(power_set,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [A: mu] : ( mequiv @ ( member @ X @ ( power_set @ A ) ) @ ( subset @ X @ A ) ) ) ) ) ).

<A NAME="intersection"></A>thf(intersection,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [A: mu] :
              ( mforall_ind
              @ ^ [B: mu] : ( mequiv @ ( member @ X @ ( intersection @ A @ B ) ) @ ( mand @ ( member @ X @ A ) @ ( member @ X @ B ) ) ) ) ) ) ) ).

<A NAME="union"></A>thf(union,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [A: mu] :
              ( mforall_ind
              @ ^ [B: mu] : ( mequiv @ ( member @ X @ ( union @ A @ B ) ) @ ( mor @ ( member @ X @ A ) @ ( member @ X @ B ) ) ) ) ) ) ) ).

<A NAME="empty_set"></A>thf(empty_set,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] : ( mnot @ ( member @ X @ empty_set ) ) ) ) ).

<A NAME="difference"></A>thf(difference,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] :
          ( mforall_ind
          @ ^ [A: mu] :
              ( mforall_ind
              @ ^ [E: mu] : ( mequiv @ ( member @ B @ ( difference @ E @ A ) ) @ ( mand @ ( member @ B @ E ) @ ( mnot @ ( member @ B @ A ) ) ) ) ) ) ) ) ).

<A NAME="singleton"></A>thf(singleton,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [A: mu] : ( mequiv @ ( member @ X @ ( singleton @ A ) ) @ ( qmltpeq @ X @ A ) ) ) ) ) ).

<A NAME="unordered_pair"></A>thf(unordered_pair,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [A: mu] :
              ( mforall_ind
              @ ^ [B: mu] : ( mequiv @ ( member @ X @ ( unordered_pair @ A @ B ) ) @ ( mor @ ( qmltpeq @ X @ A ) @ ( qmltpeq @ X @ B ) ) ) ) ) ) ) ).

<A NAME="sum"></A>thf(sum,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [A: mu] :
              ( mequiv @ ( member @ X @ ( sum @ A ) )
              @ ( mexists_ind
                @ ^ [Y: mu] : ( mand @ ( member @ Y @ A ) @ ( member @ X @ Y ) ) ) ) ) ) ) ).

<A NAME="product"></A>thf(product,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mforall_ind
          @ ^ [A: mu] :
              ( mequiv @ ( member @ X @ ( product @ A ) )
              @ ( mforall_ind
                @ ^ [Y: mu] : ( mimplies @ ( member @ Y @ A ) @ ( member @ X @ Y ) ) ) ) ) ) ) ).

<A NAME="thI06"></A>thf(thI06,conjecture,
    ( mvalid
    @ ( mforall_ind
      @ ^ [A: mu] :
          ( mforall_ind
          @ ^ [B: mu] : ( equal_set @ ( intersection @ A @ B ) @ ( intersection @ B @ A ) ) ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
