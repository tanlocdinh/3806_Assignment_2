<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET014-2.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET014-2.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET014-2 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET014-2" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET014-2 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Union of subsets is a subset
% Version  : [MOW76] axioms : Especial.
% English  : If A and B are contained in C then the union of A and B is also.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=MOW76>MOW76</a>] McCharen et al. (1976), Problems and Experiments for a
%          : [<a href=SeeTPTP?Category=BibTeX&File=WB87>WB87</a>]  Wang & Bledsoe (1987), Hierarchical Deduction
% Source   : [ANL]
% Names    : S4 [MOW76]
%          : subset.ver1.in [ANL]
%          : EST-S4 [WB87]

% Status   : Unsatisfiable
% Rating   : 0.08 v9.1.0, 0.09 v9.0.0, 0.08 v8.2.0, 0.14 v7.5.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.00 v2.6.0, 0.33 v2.5.0, 0.00 v2.4.0, 0.20 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of clauses     :   24 (   6 unt;   3 nHn;  18 RR)
%            Number of literals    :   48 (   0 equ;  24 neg)
%            Maximal clause size   :    3 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   8 usr;   4 con; 0-2 aty)
%            Number of variables   :   48 (   5 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
% Bugfixes : v2.1.0 - Bugfix in SET002-0.eq
%------------------------------------------------------------------------------
%----Include set axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET002-0.ax>SET002-0.ax</a>').
%------------------------------------------------------------------------------
<A NAME="a_subset_of_c"></A>cnf(a_subset_of_c,hypothesis,
    subset(as,cs) ).

<A NAME="b_subset_of_c"></A>cnf(b_subset_of_c,hypothesis,
    subset(bs,cs) ).

<A NAME="prove_a_union_b_subset_of_c"></A>cnf(prove_a_union_b_subset_of_c,negated_conjecture,
    ~ subset(union(as,bs),cs) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
