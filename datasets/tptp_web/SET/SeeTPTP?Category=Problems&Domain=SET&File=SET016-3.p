<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET016-3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET016-3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET016-3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET016-3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET016-3 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : First components of equal ordered pairs are equal
% Version  : [BL+86] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [BL+86]
% Names    : Lemma 1 [BL+86]

% Status   : Unsatisfiable
% Rating   : 0.45 v8.2.0, 0.48 v8.1.0, 0.42 v7.5.0, 0.53 v7.3.0, 0.50 v7.1.0, 0.42 v7.0.0, 0.53 v6.3.0, 0.45 v6.2.0, 0.60 v6.1.0, 0.71 v6.0.0, 0.80 v5.5.0, 0.90 v5.3.0, 0.94 v5.2.0, 0.88 v5.0.0, 0.86 v4.1.0, 0.85 v4.0.1, 0.82 v3.7.0, 0.80 v3.5.0, 0.82 v3.4.0, 0.83 v3.3.0, 0.86 v3.2.0, 0.77 v3.1.0, 0.73 v2.7.0, 0.75 v2.6.0, 0.70 v2.5.0, 0.75 v2.4.0, 0.89 v2.2.1, 1.00 v2.0.0
% Syntax   : Number of clauses     :  145 (  15 unt;  20 nHn; 122 RR)
%            Number of literals    :  359 (  49 equ; 198 neg)
%            Maximal clause size   :    8 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-5 aty)
%            Number of functors    :   63 (  63 usr;  10 con; 0-5 aty)
%            Number of variables   :  320 (  28 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include Godel's set axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET003-0.ax>SET003-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="little_set_a"></A>cnf(little_set_a,hypothesis,
    little_set(a) ).

<A NAME="little_set_b"></A>cnf(little_set_b,hypothesis,
    little_set(b) ).

<A NAME="equal_ordered_pairs"></A>cnf(equal_ordered_pairs,hypothesis,
    ordered_pair(a,c) = ordered_pair(b,d) ).

<A NAME="prove_first_components_equal"></A>cnf(prove_first_components_equal,negated_conjecture,
    a != b ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
