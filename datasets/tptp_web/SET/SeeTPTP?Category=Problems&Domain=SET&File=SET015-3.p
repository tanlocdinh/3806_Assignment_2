<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET015-3.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET015-3.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET015-3 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET015-3" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET015-3 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Set Theory
% Problem  : The union of sets is commutative
% Version  : [BL+86] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.77 v9.1.0, 0.85 v9.0.0, 0.80 v8.2.0, 0.76 v8.1.0, 0.79 v7.4.0, 0.76 v7.3.0, 0.75 v7.1.0, 0.67 v7.0.0, 0.73 v6.2.0, 0.80 v6.1.0, 0.86 v6.0.0, 0.80 v5.5.0, 0.90 v5.3.0, 0.94 v5.2.0, 0.88 v5.0.0, 0.86 v4.1.0, 0.85 v4.0.1, 0.91 v3.7.0, 0.80 v3.5.0, 0.82 v3.4.0, 0.83 v3.3.0, 0.86 v3.2.0, 0.85 v3.1.0, 0.82 v2.7.0, 0.92 v2.6.0, 1.00 v2.5.0, 0.92 v2.4.0, 1.00 v2.0.0
% Syntax   : Number of clauses     :  144 (  14 unt;  20 nHn; 121 RR)
%            Number of literals    :  358 (  50 equ; 198 neg)
%            Maximal clause size   :    8 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-5 aty)
%            Number of functors    :   63 (  63 usr;  10 con; 0-5 aty)
%            Number of variables   :  320 (  28 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include Godel's set axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET003-0.ax>SET003-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="a_union_b_is_c"></A>cnf(a_union_b_is_c,hypothesis,
    union(as,bs) = cs ).

<A NAME="b_union_a_is_d"></A>cnf(b_union_a_is_d,hypothesis,
    union(bs,as) = ds ).

<A NAME="prove_c_equals_d"></A>cnf(prove_c_equals_d,negated_conjecture,
    cs != ds ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
