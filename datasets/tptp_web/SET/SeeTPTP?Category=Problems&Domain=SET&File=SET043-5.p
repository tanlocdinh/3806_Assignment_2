<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET043-5.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET043-5.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET043-5 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET043-5" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET043-5 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : Russell's Paradox
% Version  : [Pel86] axioms : Incomplete.
% English  : Russell's paradox : there is no Russell set (a set which
%            contains exactly those sets which are not members
%            of themselves).

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
% Source   : [Pel86]
% Names    : Pelletier 39 [Pel86]
%          : p39.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.00 v2.0.0
% Syntax   : Number of clauses     :    2 (   0 unt;   1 nHn;   1 RR)
%            Number of literals    :    4 (   0 equ;   2 neg)
%            Maximal clause size   :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    2 (   0 sgn)
% SPC      : CNF_UNS_EPR_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
<A NAME="clause_1"></A>cnf(clause_1,negated_conjecture,
    ( ~ element(X,a)
    | ~ element(X,X) ) ).

<A NAME="clause_2"></A>cnf(clause_2,negated_conjecture,
    ( element(X,X)
    | element(X,a) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
