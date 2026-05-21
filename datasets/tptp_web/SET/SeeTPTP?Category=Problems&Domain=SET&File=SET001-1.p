<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET001-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET001-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET001-1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET001-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET001-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : Set members are superset members
% Version  : [LS74] axioms.
% English  : A member of a set is also a member of that set's supersets.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=LS74>LS74</a>]  Lawrence & Starkey (1974), Experimental Tests of Resol
%          : [<a href=SeeTPTP?Category=BibTeX&File=WM76>WM76</a>]  Wilson & Minker (1976), Resolution, Refinements, and S
% Source   : [SPRFN]
% Names    : ls100 [LS74]
%          : ls100 [WM76]

% Status   : Unsatisfiable
% Rating   : 0.00 v2.0.0
% Syntax   : Number of clauses     :    9 (   3 unt;   1 nHn;   8 RR)
%            Number of literals    :   17 (   0 equ;   8 neg)
%            Maximal clause size   :    3 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    3 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   4 usr;   3 con; 0-2 aty)
%            Number of variables   :   13 (   0 sgn)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include the member and subset axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET001-0.ax>SET001-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="b_equals_bb"></A>cnf(b_equals_bb,hypothesis,
    equal_sets(b,bb) ).

<A NAME="element_of_b"></A>cnf(element_of_b,hypothesis,
    member(element_of_b,b) ).

<A NAME="prove_element_of_bb"></A>cnf(prove_element_of_bb,negated_conjecture,
    ~ member(element_of_b,bb) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
