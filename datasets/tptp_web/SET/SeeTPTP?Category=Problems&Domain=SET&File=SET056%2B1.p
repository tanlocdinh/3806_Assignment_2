<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET056+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET056+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET056+1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET056%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET056+1 : TPTP v9.2.1. Bugfixed v5.4.0.
% Domain   : Set Theory
% Problem  : Expanded equality definition
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Qua92>Qua92</a>] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [<a href=SeeTPTP?Category=BibTeX&File=BL+86>BL+86</a>] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.39 v8.1.0, 0.36 v7.5.0, 0.34 v7.4.0, 0.43 v7.3.0, 0.45 v7.2.0, 0.41 v7.1.0, 0.43 v7.0.0, 0.40 v6.4.0, 0.42 v6.3.0, 0.46 v6.2.0, 0.48 v6.1.0, 0.50 v6.0.0, 0.61 v5.5.0, 0.56 v5.4.0
% Syntax   : Number of formulae    :   44 (  16 unt;   0 def)
%            Number of atoms       :  105 (  20 equ)
%            Maximal formula atoms :    5 (   2 avg)
%            Number of connectives :   68 (   7   ~;   5   |;  28   &)
%                                         (  19 &lt;=>;   9  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    8 (   4 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :   26 (  26 usr;   5 con; 0-3 aty)
%            Number of variables   :   90 (  83   !;   7   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixed : v5.4.0 - Bugfixes to SET005+0 axiom file.
% Bugfixes : v2.7.0 - Combined SET05[6789] to a single conjecture
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET005+0.ax>SET005+0.ax</a>').
%--------------------------------------------------------------------------
%----EQ2: Expanded equality definition
<A NAME="equality1"></A>fof(equality1,conjecture,
    ! [X,Y] :
      ( X = Y
      | ? [U] :
          ( member(U,X)
          & ~ member(U,Y) )
      | ? [W] :
          ( member(W,Y)
          & ~ member(W,X) ) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
