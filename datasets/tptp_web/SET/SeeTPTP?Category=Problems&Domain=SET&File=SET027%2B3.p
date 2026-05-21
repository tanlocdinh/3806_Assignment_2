<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET027+3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET027+3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET027+3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET027%2B3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET027+3 : TPTP v9.2.1. Released v2.2.0.
% Domain   : Set Theory
% Problem  : Transitivity of subset
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : If X is a subset of Y and Y is a subset of Z, then X is a
%            subset of Z.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [<a href=SeeTPTP?Category=BibTeX&File=Try90>Try90</a>] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (29) [TS89]

% Status   : Theorem
% Rating   : 0.00 v6.3.0, 0.08 v6.2.0, 0.00 v6.1.0, 0.04 v6.0.0, 0.25 v5.5.0, 0.04 v5.3.0, 0.13 v5.2.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :    7 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    4 (   0   ~;   0   |;   1   &)
%                                         (   1 &lt;=>;   2  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    7 (   7   !;   0   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
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

%---- line(boole - th(29),1833172)
<A NAME="prove_transitivity_of_subset"></A>fof(prove_transitivity_of_subset,conjecture,
    ! [B,C,D] :
      ( ( subset(B,C)
        & subset(C,D) )
     => subset(B,D) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
