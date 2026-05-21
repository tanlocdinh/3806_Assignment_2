<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET010^5.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET010^5.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET010^5 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET010^5" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET010^5 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Set Theory
% Problem  : TPS problem BOOL-PROP-86
% Version  : Especial.
% English  : Trybulec's 86th Boolean property of sets

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0308 [Bro09]
%          : BOOL-PROP-86 [TPS]

% Status   : Theorem
% Rating   : 0.00 v8.2.0, 0.08 v8.1.0, 0.00 v7.4.0, 0.11 v7.2.0, 0.00 v7.1.0, 0.12 v7.0.0, 0.14 v6.4.0, 0.17 v6.3.0, 0.20 v6.2.0, 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v4.0.1, 0.33 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unt;   1 typ;   0 def)
%            Number of atoms       :    1 (   1 equ;   0 cnn)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :   15 (   3   ~;   1   |;   4   &;   7   @)
%                                         (   0 &lt;=>;   0  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :    4 (   4 avg)
%            Number of types       :    2 (   1 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :    1 (   0 usr;   0 con; 2-2 aty)
%            Number of variables   :    5 (   2   ^;   3   !;   0   ?;   5   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%          : Polymorphic definitions expanded.
%------------------------------------------------------------------------------
<A NAME="a_type"></A>thf(a_type,type,
    a: $tType ).

<A NAME="cBOOL_PROP_86_pme"></A>thf(cBOOL_PROP_86_pme,conjecture,
    ! [X: a > $o,Y: a > $o,Z: a > $o] :
      ( ( ^ [Xx: a] :
            ( ( X @ Xx )
            & ~ ( ( Y @ Xx )
                & ( Z @ Xx ) ) ) )
      = ( ^ [Xz: a] :
            ( ( ( X @ Xz )
              & ~ ( Y @ Xz ) )
            | ( ( X @ Xz )
              & ~ ( Z @ Xz ) ) ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
