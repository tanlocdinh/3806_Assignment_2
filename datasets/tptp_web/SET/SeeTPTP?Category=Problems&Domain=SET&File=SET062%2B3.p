<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET062+3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET062+3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET062+3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET062%2B3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET062+3 : TPTP v9.2.1. Released v2.2.0.
% Domain   : Set Theory
% Problem  : The empty set is a subset of X
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [<a href=SeeTPTP?Category=BibTeX&File=Try90>Try90</a>] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (27) [TS89]

% Status   : Theorem
% Rating   : 0.00 v6.3.0, 0.08 v6.2.0, 0.00 v6.1.0, 0.04 v6.0.0, 0.25 v5.5.0, 0.04 v5.3.0, 0.17 v5.2.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :    5 (   3 unt;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    5 (   2   ~;   0   |;   0   &)
%                                         (   2 &lt;=>;   1  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    3 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    8 (   8   !;   0   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
%---- line(hidden - axiom26,1832636)
<A NAME="empty_set_defn"></A>fof(empty_set_defn,axiom,
    ! [B] : ~ member(B,empty_set) ).

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

%---- line(hidden - axiom28,1832628)
<A NAME="empty_defn"></A>fof(empty_defn,axiom,
    ! [B] :
      ( empty(B)
    &lt;=> ! [C] : ~ member(C,B) ) ).

%---- line(boole - th(27),1833153)
<A NAME="prove_empty_set_subset"></A>fof(prove_empty_set_subset,conjecture,
    ! [B] : subset(empty_set,B) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
