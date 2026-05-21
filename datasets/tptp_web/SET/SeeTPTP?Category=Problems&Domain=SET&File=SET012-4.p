<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET012-4.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET012-4.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET012-4 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET012-4" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET012-4 : TPTP v9.2.1. Bugfixed v1.2.1.
% Domain   : Set Theory
% Problem  : Complement is an involution
% Version  : [BL+86] axioms : Reduced > Incomplete.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [ANL]
% Names    : compl.ver2.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.05 v9.0.0, 0.10 v8.1.0, 0.00 v7.5.0, 0.05 v7.4.0, 0.06 v7.3.0, 0.08 v7.1.0, 0.00 v7.0.0, 0.13 v6.4.0, 0.07 v6.3.0, 0.09 v6.2.0, 0.00 v6.1.0, 0.07 v6.0.0, 0.00 v5.5.0, 0.10 v5.4.0, 0.05 v5.3.0, 0.06 v5.2.0, 0.00 v3.3.0, 0.07 v3.2.0, 0.08 v3.1.0, 0.09 v2.7.0, 0.08 v2.6.0, 0.00 v2.5.0, 0.18 v2.4.0, 0.12 v2.2.1, 0.00 v2.1.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :   11 (   4 unt;   3 nHn;   8 RR)
%            Number of literals    :   21 (   6 equ;   9 neg)
%            Maximal clause size   :    3 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    7 (   7 usr;   5 con; 0-2 aty)
%            Number of variables   :   14 (   2 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
% Bugfixes : v1.2.1 - Missing substitution axioms added.
%--------------------------------------------------------------------------
%----Axiom A-2, elements of sets are little sets.
<A NAME="a2"></A>cnf(a2,axiom,
    ( ~ member(X,Y)
    | little_set(X) ) ).

%----Axiom A-3, principle of extensionality
<A NAME="extensionality1"></A>cnf(extensionality1,axiom,
    ( little_set(f1(X,Y))
    | X = Y ) ).

<A NAME="extensionality2"></A>cnf(extensionality2,axiom,
    ( member(f1(X,Y),X)
    | member(f1(X,Y),Y)
    | X = Y ) ).

<A NAME="extensionality3"></A>cnf(extensionality3,axiom,
    ( ~ member(f1(X,Y),X)
    | ~ member(f1(X,Y),Y)
    | X = Y ) ).

%----Axiom B-3, complement
<A NAME="complement1"></A>cnf(complement1,axiom,
    ( ~ member(Z,complement(X))
    | ~ member(Z,X) ) ).

<A NAME="complement2"></A>cnf(complement2,axiom,
    ( member(Z,complement(X))
    | ~ little_set(Z)
    | member(Z,X) ) ).

%----Definition of empty set
<A NAME="empty_set"></A>cnf(empty_set,axiom,
    ~ member(Z,empty_set) ).

%----Definition of universal set
<A NAME="universal_set"></A>cnf(universal_set,axiom,
    ( member(Z,universal_set)
    | ~ little_set(Z) ) ).

<A NAME="complement_of_a_is_b"></A>cnf(complement_of_a_is_b,hypothesis,
    complement(as) = bs ).

<A NAME="complement_of_b_is_c"></A>cnf(complement_of_b_is_c,hypothesis,
    complement(bs) = cs ).

<A NAME="prove_a_equals_c"></A>cnf(prove_a_equals_c,negated_conjecture,
    as != cs ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
