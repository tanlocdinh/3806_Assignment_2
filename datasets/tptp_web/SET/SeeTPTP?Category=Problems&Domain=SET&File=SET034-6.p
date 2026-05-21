<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET034-6.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET034-6.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET034-6 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET034-6" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET034-6 : TPTP v9.2.1. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : The composition of functions is a function
% Version  : [Qua92] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
%          : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
% Source   : [Quaife]
% Names    : FU6 [Qua92]

% Status   : Unknown
% Rating   : 1.00 v2.1.0
% Syntax   : Number of clauses     :  115 (  40 unt;   8 nHn;  82 RR)
%            Number of literals    :  221 (  49 equ; 101 neg)
%            Maximal clause size   :    5 (   1 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-3 aty)
%            Number of functors    :   48 (  48 usr;  14 con; 0-3 aty)
%            Number of variables   :  214 (  32 sgn)
% SPC      : CNF_UNK_RFO_SEQ_NHN

% Comments : This problem has been removed from its position in Quaife's
%            order of presentation because it corresponds to one of [BL+86]
%            problems. If the user wishes to create augmented versions of
%            the Quaife problems, the theorem name above indicates its
%            position in Quaife's ordering.
% Bugfixes : v1.0.1 - Bugfix in SET004-1.ax.
%          : v2.1.0 - Bugfix in SET004-0.ax.
%--------------------------------------------------------------------------
%----Include von Neuman-Bernays-Godel set theory axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-0.ax>SET004-0.ax</a>').
%----Include von Neuman-Bernays-Godel Boolean Algebra definitions
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET004-1.ax>SET004-1.ax</a>').
%--------------------------------------------------------------------------
<A NAME="prove_composition_of_functions_1"></A>cnf(prove_composition_of_functions_1,negated_conjecture,
    function(xf) ).

<A NAME="prove_composition_of_functions_2"></A>cnf(prove_composition_of_functions_2,negated_conjecture,
    function(yf) ).

<A NAME="prove_composition_of_functions_3"></A>cnf(prove_composition_of_functions_3,negated_conjecture,
    ~ function(compose(xf,yf)) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
