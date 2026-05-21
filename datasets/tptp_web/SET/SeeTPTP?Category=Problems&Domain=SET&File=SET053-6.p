<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET053-6.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET053-6.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET053-6 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET053-6" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET053-6 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Corollary to Cartesian product axiom
% Version  : [Qua92] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.09 v9.1.0, 0.10 v8.2.0, 0.14 v8.1.0, 0.16 v7.5.0, 0.11 v7.4.0, 0.24 v7.3.0, 0.17 v7.0.0, 0.20 v6.3.0, 0.09 v6.2.0, 0.10 v6.1.0, 0.00 v5.5.0, 0.20 v5.3.0, 0.11 v5.2.0, 0.12 v5.0.0, 0.14 v4.1.0, 0.15 v4.0.1, 0.27 v3.7.0, 0.30 v3.5.0, 0.27 v3.4.0, 0.17 v3.3.0, 0.14 v3.2.0, 0.08 v3.1.0, 0.09 v2.7.0, 0.08 v2.6.0, 0.00 v2.1.0
% Syntax   : Number of clauses     :   93 (  31 unt;   8 nHn;  64 RR)
%            Number of literals    :  183 (  39 equ;  85 neg)
%            Maximal clause size   :    5 (   1 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :   10 (   9 usr;   0 prp; 1-3 aty)
%            Number of functors    :   42 (  42 usr;  12 con; 0-3 aty)
%            Number of variables   :  176 (  25 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Not in [Qua92]. Extracted from Quaife's email.
% Bugfixes : v2.1.0 - Bugfix in SET004-0.ax.
%--------------------------------------------------------------------------
%----Include von Neuman-Bernays-Godel set theory axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-0.ax>SET004-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="prove_corollary_2_to_cartesian_product_1"></A>cnf(prove_corollary_2_to_cartesian_product_1,negated_conjecture,
    member(ordered_pair(u,v),cross_product(x,y)) ).

<A NAME="prove_corollary_2_to_cartesian_product_2"></A>cnf(prove_corollary_2_to_cartesian_product_2,negated_conjecture,
    ~ member(v,universal_class) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
