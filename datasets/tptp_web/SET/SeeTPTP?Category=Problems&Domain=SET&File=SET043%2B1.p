<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET043+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET043+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET043+1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET043%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET043+1 : TPTP v9.2.1. Released v2.0.0.
% Domain   : Set Theory
% Problem  : Russell's Paradox
% Version  : Especial.
% English  : Russell's paradox : there is no Russell set (a set which
%            contains exactly those sets which are not members
%            of themselves).

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=KM64>KM64</a>]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : Pelletier 39 [Pel86]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    2 (   0 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    3 (   2   ~;   0   |;   0   &)
%                                         (   1 &lt;=>;   0  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    6 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (   1   !;   1   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
<A NAME="pel39"></A>fof(pel39,conjecture,
    ~ ? [X] :
      ! [Y] :
        ( element(Y,X)
      &lt;=> ~ element(Y,Y) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
