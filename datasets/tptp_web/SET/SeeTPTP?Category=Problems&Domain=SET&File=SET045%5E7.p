<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET045^7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET045^7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET045^7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET045^7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET045^7 : TPTP v9.2.1. Released v5.5.0.
% Domain   : Set Theory
% Problem  : No Universal Set
% Version  : [Ben12] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=KM64>KM64</a>]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [<a href=SeeTPTP?Category=BibTeX&File=Goe69>Goe69</a>] Goedel (1969), An Interpretation of the Intuitionistic
%          : [<a href=SeeTPTP?Category=BibTeX&File=Pel86>Pel86</a>] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Ben12] Benzmueller (2012), Email to Geoff Sutcliffe
% Source   : [Ben12]
% Names    : s4-cumul-GSE045+1 [Ben12]

% Status   : Theorem
% Rating   : 0.78 v9.1.0, 0.75 v9.0.0, 0.90 v8.2.0, 0.85 v8.1.0, 0.91 v7.5.0, 0.86 v7.4.0, 0.89 v7.2.0, 0.88 v7.0.0, 0.86 v6.4.0, 0.83 v6.3.0, 0.80 v6.2.0, 0.86 v5.5.0
% Syntax   : Number of formulae    :   75 (  33 unt;  37 typ;  32 def)
%            Number of atoms       :  143 (  36 equ;   0 cnn)
%            Maximal formula atoms :   29 (   3 avg)
%            Number of connectives :  195 (   5   ~;   5   |;   9   &; 166   @)
%                                         (   0 &lt;=>;  10  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :   20 (   2 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  183 ( 183   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :   45 (  43 usr;   8 con; 0-3 aty)
%            Number of variables   :   95 (  54   ^;  34   !;   7   ?;  95   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : Goedel translation of SET045+1
%------------------------------------------------------------------------------
%----Include axioms for Modal logic S4 under cumulative domains
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^0.ax>LCL015^0.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL013^5.ax>LCL013^5.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^1.ax>LCL015^1.ax</a>').
%------------------------------------------------------------------------------
<A NAME="element_type"></A>thf(element_type,type,
    element: mu > mu > $i > $o ).

<A NAME="pel41_1"></A>thf(pel41_1,axiom,
    ( mvalid
    @ ( mbox_s4
      @ ( mforall_ind
        @ ^ [Z: mu] :
            ( mexists_ind
            @ ^ [Y: mu] :
                ( mbox_s4
                @ ( mforall_ind
                  @ ^ [X: mu] : ( mand @ ( mbox_s4 @ ( mimplies @ ( mbox_s4 @ ( element @ X @ Y ) ) @ ( mand @ ( mbox_s4 @ ( element @ X @ Z ) ) @ ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( element @ X @ X ) ) ) ) ) ) ) @ ( mbox_s4 @ ( mimplies @ ( mand @ ( mbox_s4 @ ( element @ X @ Z ) ) @ ( mbox_s4 @ ( mnot @ ( mbox_s4 @ ( element @ X @ X ) ) ) ) ) @ ( mbox_s4 @ ( element @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ).

<A NAME="pel41"></A>thf(pel41,conjecture,
    ( mvalid
    @ ( mbox_s4
      @ ( mnot
        @ ( mexists_ind
          @ ^ [Z: mu] :
              ( mbox_s4
              @ ( mforall_ind
                @ ^ [X: mu] : ( mbox_s4 @ ( element @ X @ Z ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
