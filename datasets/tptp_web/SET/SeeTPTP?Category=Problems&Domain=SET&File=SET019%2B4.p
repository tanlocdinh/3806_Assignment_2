<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET019+4.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET019+4.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET019+4 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET019%2B4" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SET019+4 : TPTP v9.2.1. Released v2.2.0.
% Domain   : Set Theory (Naive)
% Problem  : Two sets that contain one another are equal
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.03 v7.1.0, 0.04 v7.0.0, 0.03 v6.4.0, 0.04 v6.1.0, 0.10 v6.0.0, 0.09 v5.5.0, 0.04 v5.3.0, 0.11 v5.2.0, 0.05 v5.0.0, 0.00 v4.0.0, 0.04 v3.7.0, 0.05 v3.4.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :   12 (   1 unt;   0 def)
%            Number of atoms       :   32 (   3 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   22 (   2   ~;   2   |;   5   &)
%                                         (  10 &lt;=>;   3  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    9 (   9 usr;   1 con; 0-2 aty)
%            Number of variables   :   30 (  29   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET006+0.ax>SET006+0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="thI02"></A>fof(thI02,conjecture,
    ! [A,B] :
      ( ( subset(A,B)
        & subset(B,A) )
     => equal_set(A,B) ) ).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
