<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET005-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET005-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET005-1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET005-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET005-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : Associativity of set intersection
% Version  : [LS74] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=LS74>LS74</a>]  Lawrence & Starkey (1974), Experimental Tests of Resol
%          : [<a href=SeeTPTP?Category=BibTeX&File=WM76>WM76</a>]  Wilson & Minker (1976), Resolution, Refinements, and S
% Source   : [SPRFN]
% Names    : ls108 [LS74]
%          : ls108 [WM76]

% Status   : Unsatisfiable
% Rating   : 0.08 v9.1.0, 0.09 v9.0.0, 0.08 v8.2.0, 0.14 v8.1.0, 0.00 v7.0.0, 0.12 v6.3.0, 0.14 v6.2.0, 0.00 v4.0.0, 0.14 v3.4.0, 0.25 v3.3.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.00 v2.1.0, 0.12 v2.0.0
% Syntax   : Number of clauses     :   16 (   4 unt;   3 nHn;  13 RR)
%            Number of literals    :   38 (   0 equ;  18 neg)
%            Maximal clause size   :    4 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 2-3 aty)
%            Number of functors    :    8 (   8 usr;   6 con; 0-3 aty)
%            Number of variables   :   34 (   2 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include the member and subset axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-0.ax>SET001-0.ax</a>').
%----Include the member and intersection axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-2.ax>SET001-2.ax</a>').
%--------------------------------------------------------------------------
<A NAME="a_intersection_b"></A>cnf(a_intersection_b,axiom,
    intersection(a,b,aIb) ).

<A NAME="b_intersection_c"></A>cnf(b_intersection_c,axiom,
    intersection(b,c,bIc) ).

<A NAME="a_intersection_bIc"></A>cnf(a_intersection_bIc,axiom,
    intersection(a,bIc,aIbIc) ).

<A NAME="prove_aIb_intersection_c_is_aIbIc"></A>cnf(prove_aIb_intersection_c_is_aIbIc,negated_conjecture,
    ~ intersection(aIb,c,aIbIc) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
