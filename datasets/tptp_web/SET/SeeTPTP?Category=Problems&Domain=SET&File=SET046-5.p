<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET046-5.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET046-5.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET046-5 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET046-5" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET046-5 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : No set of non-circular sets
% Version  : [Pel86] axioms : Incomplete.
% English  : A set is circular if it is a member of another set which
%            in turn is a member of the orginal. Intuitively all sets are
%            non-circular. Prove there is no set of non-circular sets.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
% Source   : [Pel86]
% Names    : Pelletier 42 [Pel86]
%          : p42.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.08 v9.1.0, 0.00 v7.4.0, 0.17 v7.1.0, 0.33 v7.0.0, 0.25 v6.3.0, 0.29 v6.2.0, 0.11 v6.1.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :    3 (   0 unt;   2 nHn;   1 RR)
%            Number of literals    :    7 (   0 equ;   3 neg)
%            Maximal clause size   :    3 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :    4 (   0 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
<A NAME="clause_1"></A>cnf(clause_1,negated_conjecture,
    ( ~ element(X,a)
    | ~ element(X,Y)
    | ~ element(Y,X) ) ).

<A NAME="clause_2"></A>cnf(clause_2,negated_conjecture,
    ( element(X,f(X))
    | element(X,a) ) ).

<A NAME="clause_3"></A>cnf(clause_3,negated_conjecture,
    ( element(f(X),X)
    | element(X,a) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
