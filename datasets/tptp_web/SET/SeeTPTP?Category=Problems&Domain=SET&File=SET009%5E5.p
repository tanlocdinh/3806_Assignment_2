<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET009^5.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET009^5.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET009^5 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET009^5" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET009^5 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Set Theory
% Problem  : TPS problem BOOL-PROP-47
% Version  : Especial.
% English  : Trybulec's 47th Boolean property of sets

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0138 [Bro09]
%          : BOOL-PROP-47 [TPS]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.25 v5.2.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :    0 (   0 equ;   0 cnn)
%            Maximal formula atoms :    0 (   0 avg)
%            Number of connectives :   13 (   2   ~;   0   |;   2   &;   6   @)
%                                         (   0 &lt;=>;   3  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :   10 (  10 avg)
%            Number of types       :    2 (   1 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (   0   ^;   5   !;   0   ?;   5   :)
% SPC      : TH0_THM_NEQ_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%          : Polymorphic definitions expanded.
%------------------------------------------------------------------------------
<A NAME="a_type"></A>thf(a_type,type,
    a: $tType ).

<A NAME="cBOOL_PROP_47_pme"></A>thf(cBOOL_PROP_47_pme,conjecture,
    ! [X: a > $o,Y: a > $o,Z: a > $o] :
      ( ! [Xx: a] :
          ( ( X @ Xx )
         => ( Y @ Xx ) )
     => ! [Xx: a] :
          ( ( ( Z @ Xx )
            & ~ ( Y @ Xx ) )
         => ( ( Z @ Xx )
            & ~ ( X @ Xx ) ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
