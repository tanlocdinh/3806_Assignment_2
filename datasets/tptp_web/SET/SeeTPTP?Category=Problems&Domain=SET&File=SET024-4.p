<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET024-4.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET024-4.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET024-4 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET024-4" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET024-4 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : A set belongs to its singleton
% Version  : [BL+86] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [BL+86]
% Names    : Lemma 9 [BL+86]

% Status   : Unsatisfiable
% Rating   : 0.05 v9.1.0, 0.10 v8.2.0, 0.05 v8.1.0, 0.00 v7.5.0, 0.05 v7.4.0, 0.06 v7.3.0, 0.17 v7.2.0, 0.08 v7.0.0, 0.20 v6.4.0, 0.07 v6.3.0, 0.00 v6.1.0, 0.07 v6.0.0, 0.00 v5.5.0, 0.10 v5.3.0, 0.17 v5.2.0, 0.12 v5.1.0, 0.24 v5.0.0, 0.14 v4.1.0, 0.15 v4.0.1, 0.09 v3.7.0, 0.00 v3.3.0, 0.07 v3.2.0, 0.08 v3.1.0, 0.18 v2.7.0, 0.08 v2.6.0, 0.00 v2.5.0, 0.17 v2.4.0, 0.00 v2.2.1, 0.11 v2.2.0, 0.22 v2.1.0, 0.33 v2.0.0
% Syntax   : Number of clauses     :  143 (  13 unt;  20 nHn; 120 RR)
%            Number of literals    :  357 (  47 equ; 198 neg)
%            Maximal clause size   :    8 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-5 aty)
%            Number of functors    :   60 (  60 usr;   7 con; 0-5 aty)
%            Number of variables   :  320 (  28 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include Godel's set axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET003-0.ax>SET003-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="a_little_set"></A>cnf(a_little_set,hypothesis,
    little_set(a) ).

<A NAME="prove_membership_of_singleton_set"></A>cnf(prove_membership_of_singleton_set,negated_conjecture,
    ~ member(a,singleton_set(a)) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
