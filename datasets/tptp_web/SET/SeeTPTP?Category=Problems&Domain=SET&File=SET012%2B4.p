<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET012+4.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET012+4.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET012+4 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET012%2B4" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET012+4 : TPTP v9.2.1. Released v2.2.0.
% Domain   : Set Theory (Naive)
% Problem  : Complement is an involution
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.45 v9.1.0, 0.39 v9.0.0, 0.42 v8.2.0, 0.47 v8.1.0, 0.44 v7.5.0, 0.47 v7.4.0, 0.40 v7.3.0, 0.38 v7.2.0, 0.34 v7.1.0, 0.30 v7.0.0, 0.37 v6.4.0, 0.38 v6.3.0, 0.42 v6.2.0, 0.36 v6.1.0, 0.50 v6.0.0, 0.52 v5.5.0, 0.56 v5.4.0, 0.61 v5.3.0, 0.63 v5.2.0, 0.50 v5.1.0, 0.57 v5.0.0, 0.71 v4.1.0, 0.65 v4.0.1, 0.70 v4.0.0, 0.71 v3.7.0, 0.70 v3.5.0, 0.74 v3.4.0, 0.84 v3.3.0, 0.71 v3.2.0, 0.82 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :   12 (   1 unt;   0 def)
%            Number of atoms       :   31 (   3 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   21 (   2   ~;   2   |;   4   &)
%                                         (  10 &lt;=>;   3  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    9 (   9 usr;   1 con; 0-2 aty)
%            Number of variables   :   30 (  29   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET006+0.ax>SET006+0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="thI23"></A>fof(thI23,conjecture,
    ! [A,E] :
      ( subset(A,E)
     => equal_set(difference(E,difference(E,A)),A) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
