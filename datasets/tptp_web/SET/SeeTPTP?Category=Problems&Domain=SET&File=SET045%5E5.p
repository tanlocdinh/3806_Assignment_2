<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET045^5.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET045^5.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET045^5 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET045^5" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET045^5 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Set Theory
% Problem  : TPS problem TTTP5243
% Version  : Especial.
% English  : Comprehension Theorem.

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0027 [Bro09]
%          : TTTP5243 [TPS]

% Status   : Theorem
% Rating   : 0.11 v9.1.0, 0.12 v9.0.0, 0.20 v8.2.0, 0.46 v8.1.0, 0.45 v7.5.0, 0.14 v7.4.0, 0.00 v6.2.0, 0.14 v6.1.0, 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v4.1.0, 0.00 v4.0.1, 0.33 v4.0.0
% Syntax   : Number of formulae    :    4 (   1 unt;   3 typ;   0 def)
%            Number of atoms       :    1 (   1 equ;   0 cnn)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   0   &;   1   @)
%                                         (   0 &lt;=>;   0  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    3 (   3 avg)
%            Number of types       :    2 (   2 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :    2 (   1 usr;   1 con; 0-2 aty)
%            Number of variables   :    2 (   0   ^;   1   !;   1   ?;   2   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%------------------------------------------------------------------------------
<A NAME="b_type"></A>thf(b_type,type,
    b: $tType ).

<A NAME="a_type"></A>thf(a_type,type,
    a: $tType ).

<A NAME="cA"></A>thf(cA,type,
    cA: b ).

<A NAME="cTTTP5243"></A>thf(cTTTP5243,conjecture,
    ? [U: a > b] :
    ! [V: a] :
      ( ( U @ V )
      = cA ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
