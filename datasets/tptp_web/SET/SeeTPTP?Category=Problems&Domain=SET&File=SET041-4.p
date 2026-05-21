<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET041-4.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET041-4.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET041-4 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET041-4" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET041-4 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : Properties of apply for composition of functions, 3 of 3
% Version  : [BL+86] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [BL+86]
% Names    : Lemma 26 [BL+86]

% Status   : Unsatisfiable
% Rating   : 1.00 v2.6.0, 0.90 v2.5.0, 0.92 v2.4.0, 0.89 v2.2.1, 0.89 v2.2.0, 0.89 v2.1.0, 0.89 v2.0.0
% Syntax   : Number of clauses     :  144 (  14 unt;  20 nHn; 121 RR)
%            Number of literals    :  358 (  48 equ; 198 neg)
%            Maximal clause size   :    8 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-5 aty)
%            Number of functors    :   62 (  62 usr;   9 con; 0-5 aty)
%            Number of variables   :  320 (  28 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include Godel's set axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET003-0.ax>SET003-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="a_function"></A>cnf(a_function,hypothesis,
    function(a_function) ).

<A NAME="member_of_domain"></A>cnf(member_of_domain,hypothesis,
    member(a,domain_of(a_function)) ).

<A NAME="prove_apply_for_composition3"></A>cnf(prove_apply_for_composition3,negated_conjecture,
    apply(another_function,apply(a_function,a)) != apply(compose(another_function,a_function),a) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
