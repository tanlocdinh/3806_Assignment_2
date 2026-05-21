<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET013-3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET013-3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET013-3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET013-3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET013-3 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : The intersection of sets is commutative
% Version  : [BL+86] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.50 v9.1.0, 0.55 v9.0.0, 0.60 v8.2.0, 0.62 v8.1.0, 0.63 v7.5.0, 0.68 v7.4.0, 0.65 v7.3.0, 0.75 v7.1.0, 0.67 v7.0.0, 0.73 v6.2.0, 0.60 v6.1.0, 0.64 v6.0.0, 0.70 v5.5.0, 0.85 v5.4.0, 0.75 v5.3.0, 0.83 v5.2.0, 0.81 v5.1.0, 0.82 v5.0.0, 0.79 v4.1.0, 0.69 v4.0.1, 0.64 v3.7.0, 0.60 v3.5.0, 0.64 v3.4.0, 0.67 v3.3.0, 0.71 v3.2.0, 0.62 v3.1.0, 0.73 v2.7.0, 0.75 v2.6.0, 0.80 v2.5.0, 0.75 v2.4.0, 0.89 v2.2.1, 0.89 v2.2.0, 0.89 v2.1.0, 1.00 v2.0.0
% Syntax   : Number of clauses     :  144 (  14 unt;  20 nHn; 121 RR)
%            Number of literals    :  358 (  50 equ; 198 neg)
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
<A NAME="intersection_of_a_and_b_is_c"></A>cnf(intersection_of_a_and_b_is_c,hypothesis,
    intersection(as,bs) = cs ).

<A NAME="intersection_of_b_and_a_is_d"></A>cnf(intersection_of_b_and_a_is_d,hypothesis,
    intersection(bs,as) = ds ).

<A NAME="prove_c_equals_d"></A>cnf(prove_c_equals_d,negated_conjecture,
    cs != ds ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
