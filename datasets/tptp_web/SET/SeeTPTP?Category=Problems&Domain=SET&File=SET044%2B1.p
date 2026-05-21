<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET044+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET044+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET044+1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET044%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET044+1 : TPTP v9.2.1. Released v2.0.0.
% Domain   : Set Theory
% Problem  : Anti-Russell Sets
% Version  : Especial.
% English  : If there were an anti-Russell set (a set that contains exactly
%            those sets that are members of themselves), then not every set
%            has a complement.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=KM64>KM64</a>]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : Pelletier 40 [Pel86]

% Status   : Theorem
% Rating   : 0.05 v9.1.0, 0.07 v9.0.0, 0.00 v6.3.0, 0.08 v6.2.0, 0.00 v6.1.0, 0.04 v6.0.0, 0.25 v5.5.0, 0.08 v5.4.0, 0.09 v5.3.0, 0.17 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    4 (   4 avg)
%            Number of connectives :    5 (   2   ~;   0   |;   0   &)
%                                         (   2 &lt;=>;   1  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    8 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (   3   !;   2   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
<A NAME="pel40"></A>fof(pel40,conjecture,
    ( ? [Y] :
      ! [X] :
        ( element(X,Y)
      &lt;=> element(X,X) )
   => ~ ! [X1] :
        ? [Y1] :
        ! [Z] :
          ( element(Z,Y1)
        &lt;=> ~ element(Z,X1) ) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
