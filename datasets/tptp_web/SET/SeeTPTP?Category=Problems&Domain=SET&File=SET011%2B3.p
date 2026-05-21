<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET011+3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET011+3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET011+3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET011%2B3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET011+3 : TPTP v9.2.1. Released v2.2.0.
% Domain   : Set Theory
% Problem  : X \ (X \ Y) = X ^ Y
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : The difference of X and (the difference of X and Y) is the
%            intersection of X and Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [<a href=SeeTPTP?Category=BibTeX&File=Try90>Try90</a>] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (82) [TS89]

% Status   : Theorem
% Rating   : 0.42 v9.0.0, 0.47 v8.2.0, 0.44 v8.1.0, 0.47 v7.5.0, 0.53 v7.4.0, 0.33 v7.3.0, 0.38 v7.2.0, 0.34 v7.1.0, 0.39 v7.0.0, 0.37 v6.4.0, 0.35 v6.3.0, 0.42 v6.2.0, 0.44 v6.1.0, 0.57 v6.0.0, 0.52 v5.5.0, 0.56 v5.4.0, 0.64 v5.3.0, 0.67 v5.2.0, 0.55 v5.1.0, 0.57 v5.0.0, 0.50 v4.1.0, 0.48 v4.0.1, 0.52 v4.0.0, 0.50 v3.5.0, 0.53 v3.4.0, 0.58 v3.3.0, 0.57 v3.2.0, 0.55 v3.1.0, 0.67 v2.7.0, 0.50 v2.6.0, 0.57 v2.5.0, 0.75 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :    8 (   3 unt;   0 def)
%            Number of atoms       :   18 (   4 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   11 (   1   ~;   0   |;   3   &)
%                                         (   6 &lt;=>;   1  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 2-2 aty)
%            Number of variables   :   19 (  19   !;   0   ?)
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

%---- line(hidden - axiom146,1832615)
<A NAME="equal_member_defn"></A>fof(equal_member_defn,axiom,
    ! [B,C] :
      ( B = C
    &lt;=> ! [D] :
          ( member(D,B)
        &lt;=> member(D,C) ) ) ).

%---- line(boole - th(82),1833997)
<A NAME="prove_difference_difference_intersection"></A>fof(prove_difference_difference_intersection,conjecture,
    ! [B,C] : difference(B,difference(B,C)) = intersection(B,C) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
