<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET004-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET004-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET004-1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET004-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET004-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : A set is a subset of the union of itself and another set
% Version  : [LS74] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=LS74>LS74</a>]  Lawrence & Starkey (1974), Experimental Tests of Resol
%          : [<a href=SeeTPTP?Category=BibTeX&File=WM76>WM76</a>]  Wilson & Minker (1976), Resolution, Refinements, and S
% Source   : [SPRFN]
% Names    : ls106 [LS74]
%          : ls106 [WM76]

% Status   : Unsatisfiable
% Rating   : 0.00 v2.0.0
% Syntax   : Number of clauses     :   14 (   2 unt;   3 nHn;  12 RR)
%            Number of literals    :   36 (   0 equ;  18 neg)
%            Maximal clause size   :    4 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 2-3 aty)
%            Number of functors    :    5 (   5 usr;   3 con; 0-3 aty)
%            Number of variables   :   34 (   2 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include the member and subset axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-0.ax>SET001-0.ax</a>').
%----Include the member and union axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-1.ax>SET001-1.ax</a>').
%--------------------------------------------------------------------------
<A NAME="a_union_b_is_aUb"></A>cnf(a_union_b_is_aUb,hypothesis,
    union(a,b,aUb) ).

<A NAME="prove_a_is_a_subset_of_aUb"></A>cnf(prove_a_is_a_subset_of_aUb,negated_conjecture,
    ~ subset(a,aUb) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
