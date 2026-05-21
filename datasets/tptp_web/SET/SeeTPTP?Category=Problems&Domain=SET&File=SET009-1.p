<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET009-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET009-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET009-1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET009-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET009-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : If X is a subset of Y, then Z \ Y is a subset of Z \ X
% Version  : [LS74] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=LS74>LS74</a>]  Lawrence & Starkey (1974), Experimental Tests of Resol
%          : [<a href=SeeTPTP?Category=BibTeX&File=WM76>WM76</a>]  Wilson & Minker (1976), Resolution, Refinements, and S
% Source   : [SPRFN]
% Names    : ls116 [LS74]
%          : ls116 [WM76]

% Status   : Unsatisfiable
% Rating   : 0.00 v7.0.0, 0.12 v6.3.0, 0.14 v6.2.0, 0.00 v2.1.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :   16 (   4 unt;   5 nHn;  14 RR)
%            Number of literals    :   38 (   0 equ;  18 neg)
%            Maximal clause size   :    4 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 2-3 aty)
%            Number of functors    :    7 (   7 usr;   5 con; 0-3 aty)
%            Number of variables   :   34 (   2 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include the member and subset axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-0.ax>SET001-0.ax</a>').
%----Include the member and difference axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-3.ax>SET001-3.ax</a>').
%--------------------------------------------------------------------------
<A NAME="d_is_a_subset_of_a"></A>cnf(d_is_a_subset_of_a,hypothesis,
    subset(d,a) ).

<A NAME="b_minus_a"></A>cnf(b_minus_a,hypothesis,
    difference(b,a,bDa) ).

<A NAME="b_minus_d"></A>cnf(b_minus_d,hypothesis,
    difference(b,d,bDd) ).

<A NAME="prove_bDa_is_a_subset_of_bDd"></A>cnf(prove_bDa_is_a_subset_of_bDd,negated_conjecture,
    ~ subset(bDa,bDd) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
