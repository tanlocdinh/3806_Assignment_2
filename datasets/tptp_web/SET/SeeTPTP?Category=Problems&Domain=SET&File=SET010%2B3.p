<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET010+3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET010+3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET010+3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET010%2B3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET010+3 : TPTP v9.2.1. Released v2.2.0.
% Domain   : Set Theory
% Problem  : X \ Y ^ Z = (X \ Y) U (X \ Z)
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : The difference of X and the intersection of Y and Z is the
%            union of (the difference of X and Y) and (the difference of X
%            and Z).

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [<a href=SeeTPTP?Category=BibTeX&File=Try90>Try90</a>] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (86) [TS89]

% Status   : Theorem
% Rating   : 0.55 v9.1.0, 0.58 v7.5.0, 0.59 v7.4.0, 0.57 v7.3.0, 0.55 v7.2.0, 0.52 v7.0.0, 0.50 v6.3.0, 0.67 v6.2.0, 0.72 v6.1.0, 0.80 v6.0.0, 0.74 v5.5.0, 0.78 v5.4.0, 0.79 v5.3.0, 0.81 v5.2.0, 0.75 v5.1.0, 0.76 v5.0.0, 0.79 v4.1.0, 0.74 v4.0.0, 0.71 v3.7.0, 0.65 v3.5.0, 0.68 v3.4.0, 0.74 v3.3.0, 0.79 v3.2.0, 1.00 v3.1.0, 0.89 v2.7.0, 1.00 v2.5.0, 0.88 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
% Syntax   : Number of formulae    :   13 (   5 unt;   0 def)
%            Number of atoms       :   28 (   5 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   16 (   1   ~;   1   |;   4   &)
%                                         (   7 &lt;=>;   3  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   3 usr;   0 con; 2-2 aty)
%            Number of variables   :   33 (  33   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%---- line(boole - df(2),1833042)
<A NAME="union_defn"></A>fof(union_defn,axiom,
    ! [B,C,D] :
      ( member(D,union(B,C))
    &lt;=> ( member(D,B)
        | member(D,C) ) ) ).

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

%---- line(boole - th(32),1833206)
<A NAME="union_subset"></A>fof(union_subset,axiom,
    ! [B,C,D] :
      ( ( subset(B,C)
        & subset(D,C) )
     => subset(union(B,D),C) ) ).

%---- line(boole - th(37),1833277)
<A NAME="intersection_is_subset"></A>fof(intersection_is_subset,axiom,
    ! [B,C] : subset(intersection(B,C),B) ).

%---- line(boole - th(47),1833437)
<A NAME="subset_difference"></A>fof(subset_difference,axiom,
    ! [B,C,D] :
      ( subset(B,C)
     => subset(difference(D,C),difference(D,B)) ) ).

%---- line(boole - df(8),1833103)
<A NAME="equal_defn"></A>fof(equal_defn,axiom,
    ! [B,C] :
      ( B = C
    &lt;=> ( subset(B,C)
        & subset(C,B) ) ) ).

%---- property(commutativity,op(union,2,function))
<A NAME="commutativity_of_union"></A>fof(commutativity_of_union,axiom,
    ! [B,C] : union(B,C) = union(C,B) ).

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

%---- line(hidden - axiom156,1832615)
<A NAME="equal_member_defn"></A>fof(equal_member_defn,axiom,
    ! [B,C] :
      ( B = C
    &lt;=> ! [D] :
          ( member(D,B)
        &lt;=> member(D,C) ) ) ).

%---- line(boole - th(86),1834100)
<A NAME="prove_difference_and_intersection_and_union"></A>fof(prove_difference_and_intersection_and_union,conjecture,
    ! [B,C,D] : difference(B,intersection(C,D)) = union(difference(B,C),difference(B,D)) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
