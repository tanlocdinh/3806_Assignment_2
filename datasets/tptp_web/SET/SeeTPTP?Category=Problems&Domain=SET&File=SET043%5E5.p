<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET043^5.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET043^5.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET043^5 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET043^5" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET043^5 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Set Theory
% Problem  : TPS problem RUSSELL1
% Version  : Especial.
% English  : One form of Russell's Paradox.

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0069 [Bro09]
%          : RUSSELL1 [TPS]

% Status   : Theorem
% Rating   : 0.08 v9.1.0, 0.00 v9.0.0, 0.08 v8.2.0, 0.09 v8.1.0, 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.3.0, 0.25 v5.2.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :    2 (   0 equ;   0 cnn)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    7 (   2   ~;   0   |;   0   &;   4   @)
%                                         (   1 &lt;=>;   0  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    8 (   8 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :    2 (   0   ^;   1   !;   1   ?;   2   :)
% SPC      : TH0_THM_NEQ_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%------------------------------------------------------------------------------
<A NAME="cE"></A>thf(cE,type,
    cE: $i > $i > $o ).

<A NAME="cRUSSELL1"></A>thf(cRUSSELL1,conjecture,
    ~ ? [U: $i] :
      ! [V: $i] :
        ( ( cE @ V @ U )
      &lt;=> ~ ( cE @ V @ V ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
