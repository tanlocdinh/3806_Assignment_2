<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET012-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET012-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET012-1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET012-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET012-1 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Complement is an involution
% Version  : [MOW76] axioms : Especial.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=MOW76>MOW76</a>] McCharen et al. (1976), Problems and Experiments for a
%          : [<a href=SeeTPTP?Category=BibTeX&File=WB87>WB87</a>]  Wang & Bledsoe (1987), Hierarchical Deduction
% Source   : [MOW76]
% Names    : S1 [MOW76]
%          : EST-S1 [WB87]

% Status   : Unsatisfiable
% Rating   : 0.31 v9.1.0, 0.27 v9.0.0, 0.17 v8.2.0, 0.14 v8.1.0, 0.00 v7.4.0, 0.33 v7.0.0, 0.12 v6.3.0, 0.29 v6.2.0, 0.22 v6.1.0, 0.29 v6.0.0, 0.43 v5.5.0, 0.50 v5.4.0, 0.60 v5.2.0, 0.40 v5.1.0, 0.45 v5.0.0, 0.57 v4.1.0, 0.50 v4.0.1, 0.40 v4.0.0, 0.43 v3.4.0, 0.25 v3.3.0, 0.33 v2.7.0, 0.25 v2.6.0, 0.67 v2.5.0, 0.00 v2.4.0, 0.20 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of clauses     :   22 (   4 unt;   3 nHn;  16 RR)
%            Number of literals    :   46 (   0 equ;  24 neg)
%            Maximal clause size   :    3 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 2-2 aty)
%            Number of functors    :    6 (   6 usr;   2 con; 0-2 aty)
%            Number of variables   :   48 (   5 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
% Bugfixes : v2.1.0 - Bugfix in SET002-0.eq
%--------------------------------------------------------------------------
%----Include set axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET002-0.ax>SET002-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="prove_involution"></A>cnf(prove_involution,negated_conjecture,
    ~ equal_sets(complement(complement(a)),a) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
