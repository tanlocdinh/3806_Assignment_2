<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET044-5.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET044-5.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET044-5 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET044-5" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET044-5 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : Anti-Russell Sets
% Version  : [Pel86] axioms : Incomplete.
% English  : If there were an anti-Russell set (a set that contains
%            exactly those sets that are members of themselves), then not
%            every set has a complement.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [<a href=SeeTPTP?Category=BibTeX&File=Pel88>Pel88</a>] Pelletier (1988), Errata
% Source   : [Pel86]
% Names    : Pelletier 40 [Pel86]
%          : p40.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.00 v7.1.0, 0.17 v7.0.0, 0.12 v6.3.0, 0.14 v6.2.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :    4 (   0 unt;   1 nHn;   3 RR)
%            Number of literals    :    8 (   0 equ;   4 neg)
%            Maximal clause size   :    2 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :    6 (   0 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments : This problem is incorrect in [Pel86] and is corrected in [Pel88].
%--------------------------------------------------------------------------
<A NAME="clause_1"></A>cnf(clause_1,negated_conjecture,
    ( ~ element(X,a)
    | element(X,X) ) ).

<A NAME="clause_2"></A>cnf(clause_2,negated_conjecture,
    ( ~ element(X,X)
    | element(X,a) ) ).

<A NAME="clause_3"></A>cnf(clause_3,negated_conjecture,
    ( ~ element(Y,f(X))
    | ~ element(Y,X) ) ).

<A NAME="clause_4"></A>cnf(clause_4,negated_conjecture,
    ( element(Y,X)
    | element(Y,f(X)) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
