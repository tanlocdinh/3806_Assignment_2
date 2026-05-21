<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET017^1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET017^1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET017^1 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET017^1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET017^1 : TPTP v9.2.1. Released v3.6.0.
% Domain   : Set Theory
% Problem  : Left cancellation for unordered pairs
% Version  : [BS+08] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BS+05>BS+05</a>] Benzmueller et al. (2005), Can a Higher-Order and a Fi
%          : [<a href=SeeTPTP?Category=BibTeX&File=BS+08>BS+08</a>] Benzmueller et al. (2008), Combined Reasoning by Autom
%          : [Ben08] Benzmueller (2008), Email to Geoff Sutcliffe
% Source   : [Ben08]
% Names    :

% Status   : Theorem
% Rating   : 0.11 v9.1.0, 0.12 v9.0.0, 0.20 v8.2.0, 0.31 v8.1.0, 0.09 v7.5.0, 0.00 v7.4.0, 0.22 v7.2.0, 0.12 v7.0.0, 0.14 v6.4.0, 0.17 v6.3.0, 0.20 v6.2.0, 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.60 v5.0.0, 0.40 v4.1.0, 0.67 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :   29 (  14 unt;  14 typ;  14 def)
%            Number of atoms       :   39 (  20 equ;   0 cnn)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :   41 (   5   ~;   3   |;   6   &;  25   @)
%                                         (   0 &lt;=>;   2  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    5 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   70 (  70   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :   17 (  15 usr;   2 con; 0-3 aty)
%            Number of variables   :   38 (  32   ^;   4   !;   2   ?;  38   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Basic set theory definitions
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SET008^0.ax>SET008^0.ax</a>').
%------------------------------------------------------------------------------
<A NAME="thm"></A>thf(thm,conjecture,
    ! [X: $i,Y: $i,Z: $i] :
      ( ( ( unord_pair @ X @ Y )
        = ( unord_pair @ X @ Z ) )
     => ( Y = Z ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
