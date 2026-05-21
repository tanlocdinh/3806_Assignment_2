<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET041-6.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET041-6.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET041-6 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET041-6" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET041-6 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Properties of apply for composition of functions, 3 of 3
% Version  : [Qua92] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
%          : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
% Source   : [Quaife]
% Names    : AP11 [Qua92]

% Status   : Unknown
% Rating   : 1.00 v2.1.0
% Syntax   : Number of clauses     :  115 (  40 unt;   8 nHn;  82 RR)
%            Number of literals    :  221 (  50 equ; 101 neg)
%            Maximal clause size   :    5 (   1 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-3 aty)
%            Number of functors    :   49 (  49 usr;  15 con; 0-3 aty)
%            Number of variables   :  214 (  32 sgn)
% SPC      : CNF_UNK_RFO_SEQ_NHN

% Comments : This problem has been removed from its position in Quaife's
%            order of presentation because it corresponds to one of [BL+86]
%            problems. If the user wishes to create augmented versions of
%            the Quaife problems, the theorem name above indicates its
%            position in Quaife's ordering.
%          : Quaife proves all these problems by augmenting the axioms with
%            all previously proved theorems. With a few exceptions (the
%            problems that correspond to [BL+86] problems), the TPTP has
%            retained the order in which Quaife presents the problems. The
%            user may create an augmented version of this problem by adding
%            all previously proved theorems (the ones that correspond to
%            [BL+86] are easily identified and positioned using Quaife's
%            naming scheme).
% Bugfixes : v1.0.1 - Bugfix in SET004-1.ax.
%          : v1.2.1 - Fixed prove_application_property11_1.
%          : v2.1.0 - Bugfix in SET004-0.ax.
%--------------------------------------------------------------------------
%----Include von Neuman-Bernays-Godel set theory axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-0.ax>SET004-0.ax</a>').
%----Include von Neuman-Bernays-Godel Boolean Algebra definitions
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-1.ax>SET004-1.ax</a>').
%--------------------------------------------------------------------------
<A NAME="prove_application_property11_1"></A>cnf(prove_application_property11_1,negated_conjecture,
    single_valued_class(xf) ).

<A NAME="prove_application_property11_2"></A>cnf(prove_application_property11_2,negated_conjecture,
    member(x,domain_of(xf)) ).

<A NAME="prove_application_property11_3"></A>cnf(prove_application_property11_3,negated_conjecture,
    apply(compose(yf,xf),x) != apply(yf,apply(xf,x)) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
