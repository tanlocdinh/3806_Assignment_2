<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET042-4.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET042-4.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET042-4 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET042-4" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET042-4 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : Ordered pairs are in cross products
% Version  : [BL+86] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [BL+86]
% Names    : Lemma 27 [BL+86]

% Status   : Unknown
% Rating   : 1.00 v2.0.0
% Syntax   : Number of clauses     :  144 (  14 unt;  20 nHn; 121 RR)
%            Number of literals    :  358 (  47 equ; 198 neg)
%            Maximal clause size   :    8 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-5 aty)
%            Number of functors    :   63 (  63 usr;  10 con; 0-5 aty)
%            Number of variables   :  320 (  28 sgn)
% SPC      : CNF_UNK_RFO_SEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include Godel's set axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET003-0.ax>SET003-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="member_of_set_a"></A>cnf(member_of_set_a,hypothesis,
    member(a,set_a) ).

<A NAME="member_of_set_b"></A>cnf(member_of_set_b,hypothesis,
    member(b,set_b) ).

<A NAME="prove_ordered_pair_is_in_cross_product"></A>cnf(prove_ordered_pair_is_in_cross_product,negated_conjecture,
    ~ member(ordered_pair(a,b),cross_product(set_a,set_b)) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
