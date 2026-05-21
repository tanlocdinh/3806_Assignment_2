<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET002-6.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET002-6.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET002-6 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET002-6" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET002-6 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Idempotency of union
% Version  : [Qua92] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
%          : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
% Source   : [Quaife]
% Names    : U6 [Qua92]

% Status   : Unsatisfiable
% Rating   : 0.41 v9.1.0, 0.40 v9.0.0, 0.50 v8.2.0, 0.57 v8.1.0, 0.58 v7.5.0, 0.63 v7.4.0, 0.59 v7.3.0, 0.67 v7.1.0, 0.58 v7.0.0, 0.67 v6.3.0, 0.55 v6.2.0, 0.60 v6.1.0, 0.71 v6.0.0, 0.80 v5.5.0, 0.95 v5.4.0, 0.90 v5.3.0, 0.94 v5.2.0, 0.88 v5.0.0, 0.86 v4.1.0, 0.85 v4.0.1, 0.82 v4.0.0, 0.73 v3.7.0, 0.80 v3.5.0, 0.82 v3.4.0, 0.83 v3.3.0, 0.79 v3.2.0, 0.77 v3.1.0, 0.73 v2.7.0, 0.75 v2.6.0, 0.67 v2.5.0, 0.73 v2.4.0, 0.88 v2.3.0, 1.00 v2.1.0
% Syntax   : Number of clauses     :  113 (  38 unt;   8 nHn;  80 RR)
%            Number of literals    :  219 (  50 equ; 101 neg)
%            Maximal clause size   :    5 (   1 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-3 aty)
%            Number of functors    :   47 (  47 usr;  13 con; 0-3 aty)
%            Number of variables   :  214 (  32 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Quaife proves all these problems by augmenting the axioms with
%            all previously proved theorems. With a few exceptions (the
%            problems that correspond to [BL+86] problems), the TPTP has
%            retained the order in which Quaife presents the problems. The
%            user may create an augmented version of this problem by adding
%            all previously proved theorems (the ones that correspond to
%            [BL+86] are easily identified and positioned using Quaife's
%            naming scheme).
%          : Used as a demodulator by Quaife.
% Bugfixes : v1.0.1 - Bugfix in SET004-1.ax.
%          : v2.1.0 - Bugfix in SET004-0.ax.
%          : v2.2.0 - Renamed from SET164-6.p.
%--------------------------------------------------------------------------
%----Include von Neuman-Bernays-Godel set theory axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-0.ax>SET004-0.ax</a>').
%----Include von Neuman-Bernays-Godel Boolean Algebra definitions
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-1.ax>SET004-1.ax</a>').
%--------------------------------------------------------------------------
<A NAME="prove_idempotency_of_union_1"></A>cnf(prove_idempotency_of_union_1,negated_conjecture,
    union(x,x) != x ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
