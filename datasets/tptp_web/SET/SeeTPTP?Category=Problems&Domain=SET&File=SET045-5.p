<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET045-5.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET045-5.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET045-5 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET045-5" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET045-5 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : No Universal Set
% Version  : [Pel86] axioms : Incomplete.
% English  : The restricted comprehension axiom says : given a set
%            z, there is a set all of whose members are drawn from z and
%            which satisfy some property. If there were a universal set,
%            then the Russell set could be formed, using this axiom.
%            So given the appropriate instance of this axiom, there
%            is no universal set.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
% Source   : [Pel86]
% Names    : Pelletier 41 [Pel86]
%          : p41.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.00 v9.1.0, 0.09 v9.0.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :    4 (   1 unt;   1 nHn;   3 RR)
%            Number of literals    :    8 (   0 equ;   4 neg)
%            Maximal clause size   :    3 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :    7 (   2 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
<A NAME="clause_1"></A>cnf(clause_1,axiom,
    ( ~ element(X,f(Y))
    | element(X,Y) ) ).

<A NAME="clause_2"></A>cnf(clause_2,axiom,
    ( ~ element(X,f(Y))
    | ~ element(X,X) ) ).

<A NAME="clause_3"></A>cnf(clause_3,axiom,
    ( ~ element(X,Y)
    | element(X,X)
    | element(X,f(Y)) ) ).

<A NAME="clause_4"></A>cnf(clause_4,negated_conjecture,
    element(X,a) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
