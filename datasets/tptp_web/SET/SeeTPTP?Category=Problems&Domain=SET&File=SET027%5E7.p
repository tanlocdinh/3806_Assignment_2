<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SET027^7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<link href="https://tptp.org/Logos/TPTPPL.png" rel="icon" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SET027^7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SET&File=SET027^7 TARGET=_blank>
View Solutions</A>
- <A HREF="https://tptp.org/cgi-bin/SystemOnTPTP?TPTPProblem=SET027^7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SET027^7 : TPTP v9.2.1. Released v5.5.0.
% Domain   : Set Theory
% Problem  : Transitivity of subset
% Version  : [Ben12] axioms.
% English  :

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [<a href=SeeTPTP?Category=BibTeX&File=Try90>Try90</a>] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [<a href=SeeTPTP?Category=BibTeX&File=TS89>TS89</a>]  Trybulec & Swieczkowska (1989), Boolean Properties of
%          : [Ben12] Benzmueller (2012), Email to Geoff Sutcliffe
% Source   : [Ben12]
% Names    : s4-cumul-SET027+3 [Ben12]

% Status   : Theorem
% Rating   : 0.11 v9.1.0, 0.12 v9.0.0, 0.20 v8.2.0, 0.31 v8.1.0, 0.27 v7.5.0, 0.29 v7.4.0, 0.56 v7.2.0, 0.50 v7.1.0, 0.62 v7.0.0, 0.57 v6.4.0, 0.50 v6.3.0, 0.60 v6.2.0, 0.43 v5.5.0
% Syntax   : Number of formulae    :   77 (  33 unt;  38 typ;  32 def)
%            Number of atoms       :  127 (  36 equ;   0 cnn)
%            Maximal formula atoms :    9 (   3 avg)
%            Number of connectives :  178 (   5   ~;   5   |;   9   &; 149   @)
%                                         (   0 &lt;=>;  10  =>;   0  &lt;=;   0 &lt;~>)
%            Maximal formula depth :   14 (   2 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  186 ( 186   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :   44 (  42 usr;   6 con; 0-3 aty)
%            Number of variables   :   97 (  56   ^;  34   !;   7   ?;  97   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for Modal logic S4 under cumulative domains
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^0.ax>LCL015^0.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL013^5.ax>LCL013^5.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^1.ax>LCL015^1.ax</a>').
%------------------------------------------------------------------------------
<A NAME="member_type"></A>thf(member_type,type,
    member: mu > mu > $i > $o ).

<A NAME="subset_type"></A>thf(subset_type,type,
    subset: mu > mu > $i > $o ).

<A NAME="subset_defn"></A>thf(subset_defn,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] :
          ( mforall_ind
          @ ^ [C: mu] :
              ( mequiv @ ( subset @ B @ C )
              @ ( mforall_ind
                @ ^ [D: mu] : ( mimplies @ ( member @ D @ B ) @ ( member @ D @ C ) ) ) ) ) ) ) ).

<A NAME="reflexivity_of_subset"></A>thf(reflexivity_of_subset,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] : ( subset @ B @ B ) ) ) ).

<A NAME="prove_transitivity_of_subset"></A>thf(prove_transitivity_of_subset,conjecture,
    ( mvalid
    @ ( mforall_ind
      @ ^ [B: mu] :
          ( mforall_ind
          @ ^ [C: mu] :
              ( mforall_ind
              @ ^ [D: mu] : ( mimplies @ ( mand @ ( subset @ B @ C ) @ ( subset @ C @ D ) ) @ ( subset @ B @ D ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
