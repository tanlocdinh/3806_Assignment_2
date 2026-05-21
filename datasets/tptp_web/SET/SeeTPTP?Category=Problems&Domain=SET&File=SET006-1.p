<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET006-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET006-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET006-1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET006-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET006-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : A = A ^ B if A (= B
% Version  : [LS74] axioms.
% English  : If the intersection of two sets is the first of the two sets,
%            then the first is a subset of the second.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=LS74>LS74</a>]  Lawrence & Starkey (1974), Experimental Tests of Resol
%          : [<a href=SeeTPTP?Category=BibTeX&File=WM76>WM76</a>]  Wilson & Minker (1976), Resolution, Refinements, and S
% Source   : [SPRFN]
% Names    : ls111 [LS74]
%          : ls111 [WM76]

% Status   : Unsatisfiable
% Rating   : 0.00 v7.1.0, 0.17 v7.0.0, 0.12 v6.3.0, 0.14 v6.2.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :   14 (   2 unt;   3 nHn;  11 RR)
%            Number of literals    :   36 (   0 equ;  18 neg)
%            Maximal clause size   :    4 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 2-3 aty)
%            Number of functors    :    4 (   4 usr;   2 con; 0-3 aty)
%            Number of variables   :   34 (   2 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include the member and subset axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-0.ax>SET001-0.ax</a>').
%----Include the member and intersection axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-2.ax>SET001-2.ax</a>').
%--------------------------------------------------------------------------
<A NAME="d_intersection_a_is_d"></A>cnf(d_intersection_a_is_d,hypothesis,
    intersection(d,a,d) ).

<A NAME="prove_d_is_a_subset_of_a"></A>cnf(prove_d_is_a_subset_of_a,negated_conjecture,
    ~ subset(d,a) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
