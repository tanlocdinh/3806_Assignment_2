<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET002^7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET002^7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET002^7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET002^7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET002^7 : TPTP v9.2.1. Released v5.5.0.
% Domain   : Set Theory
% Problem  : Idempotency of union
% Version  : [Ben12] axioms.
% English  :

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [<a href=SeeTPTP?Category=BibTeX&File=Try90>Try90</a>] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
%          : [Ben12] Benzmueller (2012), Email to Geoff Sutcliffe
% Source   : [Ben12]
% Names    : s4-cumul-SET002+3 [Ben12]

% Status   : Theorem
% Rating   : 0.11 v9.1.0, 0.12 v9.0.0, 0.10 v8.2.0, 0.23 v8.1.0, 0.18 v7.5.0, 0.14 v7.4.0, 0.11 v7.2.0, 0.00 v7.1.0, 0.25 v7.0.0, 0.14 v6.4.0, 0.17 v6.3.0, 0.20 v6.2.0, 0.29 v5.5.0
% Syntax   : Number of formulae    :   93 (  34 unt;  39 typ;  32 def)
%            Number of atoms       :  226 (  36 equ;   0 cnn)
%            Maximal formula atoms :    9 (   4 avg)
%            Number of connectives :  348 (   5   ~;   5   |;   9   &; 319   @)
%                                         (   0 &lt;=>;  10  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :   14 (   5 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  188 ( 188   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :   48 (  46 usr;   9 con; 0-3 aty)
%            Number of variables   :  134 (  90   ^;  37   !;   7   ?; 134   :)
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

<A NAME="union_type"></A>thf(union_type,type,
    union: mu > mu > mu ).

<A NAME="existence_of_union_ax"></A>thf(existence_of_union_ax,axiom,
    ! [V: $i,V2: mu,V1: mu] : ( exists_in_world @ ( union @ V2 @ V1 ) @ V ) ).

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

<A NAME="subset_union"></A>thf(subset_union,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] :
          ( mforall_ind
          @ ^ [C: mu] : ( mimplies @ ( subset @ B @ C ) @ ( qmltpeq @ ( union @ B @ C ) @ C ) ) ) ) ) ).

<A NAME="union_defn"></A>thf(union_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] :
          ( mforall_ind
          @ ^ [C: mu] :
              ( mforall_ind
              @ ^ [D: mu] : ( mequiv @ ( member @ D @ ( union @ B @ C ) ) @ ( mor @ ( member @ D @ B ) @ ( member @ D @ C ) ) ) ) ) ) ) ).

<A NAME="equal_defn"></A>thf(equal_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] :
          ( mforall_ind
          @ ^ [C: mu] : ( mequiv @ ( qmltpeq @ B @ C ) @ ( mand @ ( subset @ B @ C ) @ ( subset @ C @ B ) ) ) ) ) ) ).

<A NAME="commutativity_of_union"></A>thf(commutativity_of_union,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] :
          ( mforall_ind
          @ ^ [C: mu] : ( qmltpeq @ ( union @ B @ C ) @ ( union @ C @ B ) ) ) ) ) ).

<A NAME="subset_defn"></A>thf(subset_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] :
          ( mforall_ind
          @ ^ [C: mu] :
              ( mequiv @ ( subset @ B @ C )
              @ ( mforall_ind
                @ ^ [D: mu] : ( mimplies @ ( member @ D @ B ) @ ( member @ D @ C ) ) ) ) ) ) ) ).

<A NAME="reflexivity_of_subset"></A>thf(reflexivity_of_subset,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] : ( subset @ B @ B ) ) ) ).

<A NAME="equal_member_defn"></A>thf(equal_member_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] :
          ( mforall_ind
          @ ^ [C: mu] :
              ( mequiv @ ( qmltpeq @ B @ C )
              @ ( mforall_ind
                @ ^ [D: mu] : ( mequiv @ ( member @ D @ B ) @ ( member @ D @ C ) ) ) ) ) ) ) ).

<A NAME="prove_idempotency_of_union"></A>thf(prove_idempotency_of_union,conjecture,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] : ( qmltpeq @ ( union @ B @ B ) @ B ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
