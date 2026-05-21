<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET047+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET047+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET047+1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET047%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET047+1 : TPTP v9.2.1. Released v2.0.0.
% Domain   : Set Theory
% Problem  : Set equality is symmetric
% Version  : Especial.
% English  : Define set equality as having exactly the same members. Prove
%            set equality is symmetric.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=DeC79>DeC79</a>] DeChampeaux (1979), Sub-problem Finder and Instance Ch
%          : [<a href=SeeTPTP?Category=BibTeX&File=KM64>KM64</a>]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Pel86]
% Names    : Pelletier 43 [Pel86]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.04 v6.0.0, 0.50 v5.5.0, 0.04 v5.3.0, 0.17 v5.2.0, 0.00 v4.0.0, 0.05 v3.7.0, 0.00 v3.3.0, 0.11 v3.2.0, 0.22 v3.1.0, 0.17 v2.7.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    2 (   0 unt;   0 def)
%            Number of atoms       :    5 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   3 &lt;=>;   0  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (   5   !;   0   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments : The version in [Hah94] is a bit expanded.
%--------------------------------------------------------------------------
<A NAME="pel43_1"></A>fof(pel43_1,axiom,
    ! [X,Y] :
      ( set_equal(X,Y)
    &lt;=> ! [Z] :
          ( element(Z,X)
        &lt;=> element(Z,Y) ) ) ).

<A NAME="pel43"></A>fof(pel43,conjecture,
    ! [X,Y] :
      ( set_equal(X,Y)
    &lt;=> set_equal(Y,X) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
