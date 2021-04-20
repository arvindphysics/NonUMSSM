% Diagrams/FeynDia54.mp -- do not edit, generated automatically by NonUMSSM-EWSB.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 75*1.0pt#, 75*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__l1, __l2);
vright (__r1, __r2);
vconnect ("scalar", __l1, __v1);
vconnect ("scalar", __r1, __v1);
vconnect ("scalar", __v1, __r2);
vconnect ("scalar", __v1, __l2);
vlabel ("$\tilde {u}_{{i \alpha }}$", __l1);
vlabel ("$\tilde {u}_{{j \beta }}$", __r1);
vlabel ("$\tilde {u}^*_{{k \gamma }}$", __r2);
vlabel ("$\tilde {u}^*_{{l \delta }}$", __l2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
