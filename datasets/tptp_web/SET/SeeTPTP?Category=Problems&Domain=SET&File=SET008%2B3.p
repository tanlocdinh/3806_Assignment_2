<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET008+3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET008+3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET008+3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET008%2B3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET008+3 : TPTP v9.2.1. Released v2.2.0.
% Domain   : Set Theory
% Problem  : (X \ Y) ^ Y = the empty set
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : The intersection of (the difference of X and Y) and Y is the
%            empty set.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [<a href=SeeTPTP?Category=BibTeX&File=Try90>Try90</a>] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (78) [TS89]

% Status   : Theorem
% Rating   : 0.15 v9.1.0, 0.12 v9.0.0, 0.17 v7.5.0, 0.19 v7.4.0, 0.10 v7.3.0, 0.17 v7.2.0, 0.14 v7.1.0, 0.13 v6.4.0, 0.12 v6.3.0, 0.21 v6.2.0, 0.20 v6.1.0, 0.37 v6.0.0, 0.43 v5.5.0, 0.37 v5.4.0, 0.39 v5.3.0, 0.44 v5.2.0, 0.25 v5.1.0, 0.24 v5.0.0, 0.25 v4.1.0, 0.26 v4.0.0, 0.25 v3.7.0, 0.20 v3.5.0, 0.21 v3.2.0, 0.18 v3.1.0, 0.11 v2.7.0, 0.00 v2.5.0, 0.12 v2.4.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :   10 (   4 unt;   0 def)
%            Number of atoms       :   21 (   4 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   14 (   3   ~;   0   |;   3   &)
%                                         (   7 &lt;=>;   1  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   22 (  22   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%---- line(boole - df(3),1833060)
<A NAME="intersection_defn"></A>fof(intersection_defn,axiom,
    ! [B,C,D] :
      ( member(D,intersection(B,C))
    &lt;=> ( member(D,B)
        & member(D,C) ) ) ).

%---- line(boole - df(4),1833078)
<A NAME="difference_defn"></A>fof(difference_defn,axiom,
    ! [B,C,D] :
      ( member(D,difference(B,C))
    &lt;=> ( member(D,B)
        & ~ member(D,C) ) ) ).

%---- line(hidden - axiom135,1832636)
<A NAME="empty_set_defn"></A>fof(empty_set_defn,axiom,
    ! [B] : ~ member(B,empty_set) ).

%---- line(boole - df(8),1833103)
<A NAME="equal_defn"></A>fof(equal_defn,axiom,
    ! [B,C] :
      ( B = C
    &lt;=> ( subset(B,C)
        & subset(C,B) ) ) ).

%---- property(commutativity,op(intersection,2,function))
<A NAME="commutativity_of_intersection"></A>fof(commutativity_of_intersection,axiom,
    ! [B,C] : intersection(B,C) = intersection(C,B) ).

%---- line(tarski - df(3),1832749)
<A NAME="subset_defn"></A>fof(subset_defn,axiom,
    ! [B,C] :
      ( subset(B,C)
    &lt;=> ! [D] :
          ( member(D,B)
         => member(D,C) ) ) ).

%---- property(reflexivity,op(subset,2,predicate))
<A NAME="reflexivity_of_subset"></A>fof(reflexivity_of_subset,axiom,
    ! [B] : subset(B,B) ).

%---- line(hidden - axiom137,1832628)
<A NAME="empty_defn"></A>fof(empty_defn,axiom,
    ! [B] :
      ( empty(B)
    &lt;=> ! [C] : ~ member(C,B) ) ).

%---- line(hidden - axiom138,1832615)
<A NAME="equal_member_defn"></A>fof(equal_member_defn,axiom,
    ! [B,C] :
      ( B = C
    &lt;=> ! [D] :
          ( member(D,B)
        &lt;=> member(D,C) ) ) ).

%---- line(boole - th(78),1833894)
<A NAME="prove_intersection_difference_empty_set"></A>fof(prove_intersection_difference_empty_set,conjecture,
    ! [B,C] : intersection(difference(B,C),C) = empty_set ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
