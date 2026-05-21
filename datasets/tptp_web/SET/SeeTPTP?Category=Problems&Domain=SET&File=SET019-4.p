<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET019-4.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET019-4.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET019-4 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET019-4" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET019-4 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : Two sets that contain one another are equal
% Version  : [BL+86] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [BL+86]
% Names    : Lemma 4 [BL+86]

% Status   : Unsatisfiable
% Rating   : 0.41 v9.1.0, 0.45 v9.0.0, 0.50 v8.2.0, 0.48 v8.1.0, 0.47 v7.5.0, 0.53 v7.4.0, 0.59 v7.3.0, 0.58 v7.1.0, 0.50 v7.0.0, 0.40 v6.3.0, 0.36 v6.2.0, 0.30 v6.1.0, 0.43 v6.0.0, 0.50 v5.5.0, 0.60 v5.3.0, 0.61 v5.2.0, 0.56 v5.1.0, 0.53 v5.0.0, 0.43 v4.1.0, 0.31 v4.0.1, 0.27 v3.7.0, 0.20 v3.5.0, 0.27 v3.4.0, 0.50 v3.2.0, 0.31 v3.1.0, 0.36 v2.7.0, 0.33 v2.6.0, 0.30 v2.5.0, 0.42 v2.4.0, 0.33 v2.2.1, 0.33 v2.2.0, 0.22 v2.1.0, 0.44 v2.0.0
% Syntax   : Number of clauses     :  144 (  14 unt;  20 nHn; 121 RR)
%            Number of literals    :  358 (  48 equ; 198 neg)
%            Maximal clause size   :    8 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-5 aty)
%            Number of functors    :   61 (  61 usr;   8 con; 0-5 aty)
%            Number of variables   :  320 (  28 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include Godel's set axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET003-0.ax>SET003-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="a_contains_b"></A>cnf(a_contains_b,hypothesis,
    subset(b,a) ).

<A NAME="b_contains_a"></A>cnf(b_contains_a,hypothesis,
    subset(a,b) ).

<A NAME="prove__a_equals_b"></A>cnf(prove__a_equals_b,negated_conjecture,
    a != b ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
