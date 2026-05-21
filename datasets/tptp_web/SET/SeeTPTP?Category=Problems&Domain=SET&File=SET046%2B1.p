<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET046+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET046+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET046+1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET046%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET046+1 : TPTP v9.2.1. Released v2.0.0.
% Domain   : Set Theory
% Problem  : No set of non-circular sets
% Version  : Especial.
% English  : A set is circular if it is a member of another set which
%            in turn is a member of the orginal. Intuitively all sets are
%            non-circular. Prove there is no set of non-circular sets.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=KM64>KM64</a>]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : Pelletier 42 [Pel86]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    3 (   0 equ)
%            Maximal formula atoms :    3 (   3 avg)
%            Number of connectives :    4 (   2   ~;   0   |;   1   &)
%                                         (   1 &lt;=>;   0  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    8 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (   1   !;   2   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
<A NAME="pel42"></A>fof(pel42,conjecture,
    ~ ? [Y] :
      ! [X] :
        ( element(X,Y)
      &lt;=> ~ ? [Z] :
              ( element(X,Z)
              & element(Z,X) ) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
