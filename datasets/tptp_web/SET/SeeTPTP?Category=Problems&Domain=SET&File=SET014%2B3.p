<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET014+3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET014+3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET014+3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET014%2B3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET014+3 : TPTP v9.2.1. Released v2.2.0.
% Domain   : Set Theory
% Problem  : If X (= Z and Y (= Z, then X U Y (= Z
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : If X is a subset of Z and Y is a subset of Z, then the union of
%            X and Y is a subset of Z.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [<a href=SeeTPTP?Category=BibTeX&File=Try90>Try90</a>] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (32) [TS89]

% Status   : Theorem
% Rating   : 0.12 v9.1.0, 0.06 v9.0.0, 0.11 v8.1.0, 0.06 v7.4.0, 0.10 v7.3.0, 0.07 v7.2.0, 0.03 v7.1.0, 0.00 v6.4.0, 0.04 v6.2.0, 0.00 v6.1.0, 0.13 v5.5.0, 0.19 v5.4.0, 0.25 v5.3.0, 0.30 v5.2.0, 0.05 v5.1.0, 0.10 v5.0.0, 0.12 v4.1.0, 0.09 v4.0.1, 0.13 v4.0.0, 0.12 v3.7.0, 0.15 v3.5.0, 0.11 v3.4.0, 0.26 v3.3.0, 0.21 v3.2.0, 0.36 v3.1.0, 0.33 v2.7.0, 0.17 v2.6.0, 0.14 v2.5.0, 0.12 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :    6 (   2 unt;   0 def)
%            Number of atoms       :   14 (   2 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    8 (   0   ~;   1   |;   1   &)
%                                         (   4 &lt;=>;   2  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   15 (  15   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%---- line(boole - df(2),1833042)
<A NAME="union_defn"></A>fof(union_defn,axiom,
    ! [B,C,D] :
      ( member(D,union(B,C))
    &lt;=> ( member(D,B)
        | member(D,C) ) ) ).

%---- line(tarski - df(3),1832749)
<A NAME="subset_defn"></A>fof(subset_defn,axiom,
    ! [B,C] :
      ( subset(B,C)
    &lt;=> ! [D] :
          ( member(D,B)
         => member(D,C) ) ) ).

%---- property(commutativity,op(union,2,function))
<A NAME="commutativity_of_union"></A>fof(commutativity_of_union,axiom,
    ! [B,C] : union(B,C) = union(C,B) ).

%---- property(reflexivity,op(subset,2,predicate))
<A NAME="reflexivity_of_subset"></A>fof(reflexivity_of_subset,axiom,
    ! [B] : subset(B,B) ).

%---- line(hidden - axiom37,1832615)
<A NAME="equal_member_defn"></A>fof(equal_member_defn,axiom,
    ! [B,C] :
      ( B = C
    &lt;=> ! [D] :
          ( member(D,B)
        &lt;=> member(D,C) ) ) ).

%---- line(boole - th(32),1833206)
<A NAME="prove_union_subset"></A>fof(prove_union_subset,conjecture,
    ! [B,C,D] :
      ( ( subset(B,C)
        & subset(D,C) )
     => subset(union(B,D),C) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
