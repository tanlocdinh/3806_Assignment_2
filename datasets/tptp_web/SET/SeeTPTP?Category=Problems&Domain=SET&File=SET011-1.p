<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET011-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET011-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET011-1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET011-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET011-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : X \ (X \ Y) = X ^ Y
% Version  : [LS74] axioms.
% English  : The difference of a first set and the set which is the
%            difference of the first set and a second set, is the
%            intersection of the two sets.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=LS74>LS74</a>]  Lawrence & Starkey (1974), Experimental Tests of Resol
%          : [<a href=SeeTPTP?Category=BibTeX&File=WM76>WM76</a>]  Wilson & Minker (1976), Resolution, Refinements, and S
% Source   : [SPRFN]
% Names    : ls121 [LS74]
%          : ls121 [WM76]

% Status   : Unsatisfiable
% Rating   : 0.08 v9.1.0, 0.09 v9.0.0, 0.08 v8.2.0, 0.14 v8.1.0, 0.00 v7.4.0, 0.17 v7.1.0, 0.33 v7.0.0, 0.25 v6.3.0, 0.00 v5.4.0, 0.10 v5.2.0, 0.00 v5.1.0, 0.09 v5.0.0, 0.07 v4.1.0, 0.12 v4.0.1, 0.00 v2.4.0, 0.00 v2.1.0, 0.25 v2.0.0
% Syntax   : Number of clauses     :   21 (   3 unt;   7 nHn;  17 RR)
%            Number of literals    :   57 (   0 equ;  28 neg)
%            Maximal clause size   :    4 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   0 prp; 2-3 aty)
%            Number of functors    :    7 (   7 usr;   4 con; 0-3 aty)
%            Number of variables   :   55 (   4 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include the member and subset axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-0.ax>SET001-0.ax</a>').
%----Include the member and intersection axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-2.ax>SET001-2.ax</a>').
%----Include the member and difference axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-3.ax>SET001-3.ax</a>').
%--------------------------------------------------------------------------
<A NAME="a_minus_b"></A>cnf(a_minus_b,hypothesis,
    difference(a,b,aDb) ).

<A NAME="a_minus_aDb"></A>cnf(a_minus_aDb,hypothesis,
    difference(a,aDb,aD_aDb) ).

<A NAME="prove_a_intersection_b_is_aD_aDb"></A>cnf(prove_a_intersection_b_is_aD_aDb,negated_conjecture,
    ~ intersection(a,b,aD_aDb) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
