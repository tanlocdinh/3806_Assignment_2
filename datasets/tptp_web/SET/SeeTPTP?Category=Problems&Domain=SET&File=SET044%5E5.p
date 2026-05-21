<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET044^5.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET044^5.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET044^5 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET044^5" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET044^5 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Set Theory
% Problem  : TPS problem PELL40
% Version  : Especial.
% English  : If there were an anti-Russell set (a set that contains exactly
%            those sets that are members of themselves), then not every set
%            has a complement.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0236 [Bro09]
%          : PELL40 [TPS]
%          : Pelletier 40 [Pel86]

% Status   : Theorem
% Rating   : 0.17 v9.1.0, 0.12 v9.0.0, 0.17 v8.2.0, 0.18 v8.1.0, 0.08 v7.4.0, 0.11 v7.3.0, 0.10 v7.2.0, 0.12 v7.1.0, 0.14 v7.0.0, 0.12 v6.4.0, 0.14 v6.3.0, 0.17 v6.2.0, 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.3.0, 0.25 v5.2.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :    4 (   0 equ;   0 cnn)
%            Maximal formula atoms :    4 (   4 avg)
%            Number of connectives :   13 (   2   ~;   0   |;   0   &;   8   @)
%                                         (   2 &lt;=>;   1  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :   10 (  10 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :    5 (   0   ^;   3   !;   2   ?;   5   :)
% SPC      : TH0_THM_NEQ_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%------------------------------------------------------------------------------
<A NAME="cF"></A>thf(cF,type,
    cF: $i > $i > $o ).

<A NAME="cPELL40"></A>thf(cPELL40,conjecture,
    ( ? [Xy: $i] :
      ! [Xx: $i] :
        ( ( cF @ Xx @ Xy )
      &lt;=> ( cF @ Xx @ Xx ) )
   => ~ ! [Xx: $i] :
        ? [Xy: $i] :
        ! [Xz: $i] :
          ( ( cF @ Xz @ Xy )
        &lt;=> ~ ( cF @ Xz @ Xx ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
