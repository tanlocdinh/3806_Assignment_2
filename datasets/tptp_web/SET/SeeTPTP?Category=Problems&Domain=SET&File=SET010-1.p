<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET010-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET010-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET010-1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET010-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET010-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : X \ Y ^ Z = (X \ Y) U (X \ Z)
% Version  : [LS74] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=LS74>LS74</a>]  Lawrence & Starkey (1974), Experimental Tests of Resol
%          : [<a href=SeeTPTP?Category=BibTeX&File=WM76>WM76</a>]  Wilson & Minker (1976), Resolution, Refinements, and S
% Source   : [SPRFN]
% Names    : ls118 [LS74]
%          : ls118 [WM76]

% Status   : Unsatisfiable
% Rating   : 0.08 v9.1.0, 0.09 v9.0.0, 0.08 v8.2.0, 0.14 v7.5.0, 0.00 v7.4.0, 0.17 v7.0.0, 0.12 v6.3.0, 0.14 v6.2.0, 0.00 v6.0.0, 0.14 v5.5.0, 0.25 v5.4.0, 0.30 v5.2.0, 0.10 v5.1.0, 0.18 v5.0.0, 0.21 v4.1.0, 0.12 v4.0.1, 0.20 v4.0.0, 0.43 v3.4.0, 0.75 v3.3.0, 0.67 v3.2.0, 0.33 v2.7.0, 0.12 v2.6.0, 0.67 v2.5.0, 0.20 v2.4.0, 0.00 v2.2.1, 0.25 v2.1.0, 1.00 v2.0.0
% Syntax   : Number of clauses     :   29 (   5 unt;   9 nHn;  24 RR)
%            Number of literals    :   79 (   0 equ;  38 neg)
%            Maximal clause size   :    4 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 2-3 aty)
%            Number of functors    :   11 (  11 usr;   7 con; 0-3 aty)
%            Number of variables   :   76 (   6 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include the member and subset axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-0.ax>SET001-0.ax</a>').
%----Include the member and union axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-1.ax>SET001-1.ax</a>').
%----Include the member and intersection axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-2.ax>SET001-2.ax</a>').
%----Include the member and difference axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-3.ax>SET001-3.ax</a>').
%--------------------------------------------------------------------------
<A NAME="a_intersection_b"></A>cnf(a_intersection_b,hypothesis,
    intersection(a,b,aIb) ).

<A NAME="c_minus_a"></A>cnf(c_minus_a,hypothesis,
    difference(c,a,cDa) ).

<A NAME="c_minus_b"></A>cnf(c_minus_b,hypothesis,
    difference(c,b,cDb) ).

<A NAME="c_minus_aIb"></A>cnf(c_minus_aIb,hypothesis,
    difference(c,aIb,cD_aIb) ).

<A NAME="prove_cDa_union_cDb_is_cD_aIb"></A>cnf(prove_cDa_union_cDb_is_cD_aIb,negated_conjecture,
    ~ union(cDa,cDb,cD_aIb) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
