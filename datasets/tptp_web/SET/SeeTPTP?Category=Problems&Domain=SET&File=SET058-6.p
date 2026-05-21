<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET058-6.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET058-6.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET058-6 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET058-6" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET058-6 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Expanded equality definition
% Version  : [Qua92] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
% Source   : [Quaife]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.05 v9.1.0, 0.10 v8.2.0, 0.14 v8.1.0, 0.11 v7.4.0, 0.12 v7.3.0, 0.00 v7.0.0, 0.13 v6.3.0, 0.00 v6.2.0, 0.10 v6.1.0, 0.00 v5.5.0, 0.10 v5.4.0, 0.15 v5.3.0, 0.06 v5.1.0, 0.12 v5.0.0, 0.07 v4.1.0, 0.08 v4.0.1, 0.18 v3.7.0, 0.20 v3.5.0, 0.18 v3.4.0, 0.08 v3.3.0, 0.07 v3.2.0, 0.08 v3.1.0, 0.09 v2.7.0, 0.08 v2.6.0, 0.00 v2.1.0
% Syntax   : Number of clauses     :   94 (  32 unt;   8 nHn;  65 RR)
%            Number of literals    :  184 (  40 equ;  86 neg)
%            Maximal clause size   :    5 (   1 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :   10 (   9 usr;   0 prp; 1-3 aty)
%            Number of functors    :   40 (  40 usr;  10 con; 0-3 aty)
%            Number of variables   :  176 (  25 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
% Bugfixes : v2.1.0 - Bugfix in SET004-0.ax.
%--------------------------------------------------------------------------
%----Include von Neuman-Bernays-Godel set theory axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-0.ax>SET004-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="prove_equality3_1"></A>cnf(prove_equality3_1,negated_conjecture,
    member(not_subclass_element(y,x),x) ).

<A NAME="prove_equality3_2"></A>cnf(prove_equality3_2,negated_conjecture,
    x != y ).

<A NAME="prove_equality3_3"></A>cnf(prove_equality3_3,negated_conjecture,
    ~ member(not_subclass_element(x,y),x) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
