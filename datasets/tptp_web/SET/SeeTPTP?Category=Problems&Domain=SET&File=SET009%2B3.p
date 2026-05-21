<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET009+3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET009+3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET009+3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET009%2B3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET009+3 : TPTP v9.2.1. Released v2.2.0.
% Domain   : Set Theory
% Problem  : If X is a subset of Y, then Z \ Y is a subset of Z \ X
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : If X is a subset of Y, then the difference of Z and Y is a
%            subset of the difference of Z and X.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [<a href=SeeTPTP?Category=BibTeX&File=Try90>Try90</a>] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (47) [TS89]

% Status   : Theorem
% Rating   : 0.10 v9.1.0, 0.07 v9.0.0, 0.00 v7.5.0, 0.05 v7.4.0, 0.00 v7.0.0, 0.07 v6.4.0, 0.00 v6.3.0, 0.08 v6.2.0, 0.00 v6.1.0, 0.20 v6.0.0, 0.25 v5.5.0, 0.17 v5.4.0, 0.22 v5.3.0, 0.26 v5.2.0, 0.00 v4.0.1, 0.05 v3.7.0, 0.14 v3.5.0, 0.00 v3.1.0, 0.25 v2.7.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :    4 (   1 unt;   0 def)
%            Number of atoms       :    9 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    6 (   1   ~;   0   |;   1   &)
%                                         (   2 &lt;=>;   2  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   10 (  10   !;   0   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
%---- line(boole - df(4),1833078)
<A NAME="difference_defn"></A>fof(difference_defn,axiom,
    ! [B,C,D] :
      ( member(D,difference(B,C))
    &lt;=> ( member(D,B)
        & ~ member(D,C) ) ) ).

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

%---- line(boole - th(47),1833437)
<A NAME="prove_subset_difference"></A>fof(prove_subset_difference,conjecture,
    ! [B,C,D] :
      ( subset(B,C)
     => subset(difference(D,C),difference(D,B)) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
