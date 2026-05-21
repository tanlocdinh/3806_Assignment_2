<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET018-6.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET018-6.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET018-6 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET018-6" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET018-6 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Second components of equal ordered pairs are equal
% Version  : [Qua92] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
% Source   : [Quaife]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.41 v9.1.0, 0.45 v8.2.0, 0.48 v8.1.0, 0.47 v7.5.0, 0.53 v7.4.0, 0.41 v7.3.0, 0.42 v7.1.0, 0.33 v7.0.0, 0.53 v6.3.0, 0.45 v6.2.0, 0.60 v6.1.0, 0.64 v6.0.0, 0.70 v5.5.0, 0.95 v5.3.0, 0.94 v5.2.0, 0.81 v5.1.0, 0.82 v5.0.0, 0.79 v4.1.0, 0.85 v4.0.1, 0.73 v4.0.0, 0.82 v3.7.0, 0.80 v3.5.0, 0.82 v3.4.0, 0.75 v3.3.0, 0.79 v3.2.0, 0.77 v3.1.0, 0.91 v2.7.0, 0.92 v2.6.0, 1.00 v2.1.0
% Syntax   : Number of clauses     :   94 (  32 unt;   8 nHn;  65 RR)
%            Number of literals    :  184 (  41 equ;  85 neg)
%            Maximal clause size   :    5 (   1 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :   10 (   9 usr;   0 prp; 1-3 aty)
%            Number of functors    :   42 (  42 usr;  12 con; 0-3 aty)
%            Number of variables   :  176 (  25 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : OP5 uses an extra antecedent, not used in OP11. This is the
%            OP11 version.
% Bugfixes : v2.1.0 - Bugfix in SET004-0.ax.
%--------------------------------------------------------------------------
%----Include von Neuman-Bernays-Godel set theory axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-0.ax>SET004-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="prove_ordered_pair_determines_components2_1"></A>cnf(prove_ordered_pair_determines_components2_1,negated_conjecture,
    ordered_pair(w,x) = ordered_pair(y,z) ).

<A NAME="prove_ordered_pair_determines_components2_2"></A>cnf(prove_ordered_pair_determines_components2_2,negated_conjecture,
    member(x,universal_class) ).

%----This is the extra clause from [Qua92] for OP4
% input_clause(prove_ordered_pair_determines_components1_2a,negated_conjecture,
%     [++member(z,universal_class)]).

<A NAME="prove_ordered_pair_determines_components2_3"></A>cnf(prove_ordered_pair_determines_components2_3,negated_conjecture,
    x != z ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
