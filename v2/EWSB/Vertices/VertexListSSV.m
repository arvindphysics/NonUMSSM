{{{Ah[{gt1}], hh[{gt2}], VZ[{lt3}]}, 
  {(2*gp*Qs*conj[ZA[gt1, 3]]*conj[ZH[gt2, 3]]*Sin[ThetaWp] + 
     conj[ZA[gt1, 1]]*conj[ZH[gt2, 1]]*(g2*Cos[ThetaW]*Cos[ThetaWp] + 
       g1*Cos[ThetaWp]*Sin[ThetaW] + 2*gp*QHd*Sin[ThetaWp]) - 
     conj[ZA[gt1, 2]]*conj[ZH[gt2, 2]]*(g2*Cos[ThetaW]*Cos[ThetaWp] + 
       g1*Cos[ThetaWp]*Sin[ThetaW] - 2*gp*QHu*Sin[ThetaWp]))/2, 
   Mom[Ah[{gt1}], lt3] - Mom[hh[{gt2}], lt3]}}, 
 {{Ah[{gt1}], hh[{gt2}], VZp[{lt3}]}, 
  {(2*gp*Qs*conj[ZA[gt1, 3]]*conj[ZH[gt2, 3]]*Cos[ThetaWp] + 
     conj[ZA[gt1, 2]]*conj[ZH[gt2, 2]]*(2*gp*QHu*Cos[ThetaWp] + 
       g2*Cos[ThetaW]*Sin[ThetaWp] + g1*Sin[ThetaW]*Sin[ThetaWp]) + 
     conj[ZA[gt1, 1]]*conj[ZH[gt2, 1]]*(2*gp*QHd*Cos[ThetaWp] - 
       (g2*Cos[ThetaW] + g1*Sin[ThetaW])*Sin[ThetaWp]))/2, 
   Mom[Ah[{gt1}], lt3] - Mom[hh[{gt2}], lt3]}}, 
 {{Ah[{gt1}], Hpm[{gt2}], conj[VWm[{lt3}]]}, 
  {(g2*(conj[ZA[gt1, 1]]*ZP[gt2, 1] + conj[ZA[gt1, 2]]*ZP[gt2, 2]))/2, 
   Mom[Ah[{gt1}], lt3] - Mom[Hpm[{gt2}], lt3]}}, 
 {{Ah[{gt1}], conj[Hpm[{gt2}]], VWm[{lt3}]}, 
  {(g2*(conj[ZA[gt1, 1]]*ZP[gt2, 1] + conj[ZA[gt1, 2]]*ZP[gt2, 2]))/2, 
   Mom[Ah[{gt1}], lt3] - Mom[conj[Hpm[{gt2}]], lt3]}}, 
 {{hh[{gt1}], Hpm[{gt2}], conj[VWm[{lt3}]]}, 
  {(I/2)*g2*(conj[ZH[gt1, 1]]*ZP[gt2, 1] - conj[ZH[gt1, 2]]*ZP[gt2, 2]), 
   Mom[hh[{gt1}], lt3] - Mom[Hpm[{gt2}], lt3]}}, 
 {{hh[{gt1}], conj[Hpm[{gt2}]], VWm[{lt3}]}, 
  {(-I/2)*g2*(conj[ZH[gt1, 1]]*ZP[gt2, 1] - conj[ZH[gt1, 2]]*ZP[gt2, 2]), 
   -Mom[conj[Hpm[{gt2}]], lt3] + Mom[hh[{gt1}], lt3]}}, 
 {{Hpm[{gt1}], conj[Hpm[{gt2}]], VP[{lt3}]}, 
  {(I/2)*(g1*Cos[ThetaW] + g2*Sin[ThetaW])*(ZP[gt1, 1]*ZP[gt2, 1] + 
     ZP[gt1, 2]*ZP[gt2, 2]), -Mom[conj[Hpm[{gt2}]], lt3] + 
    Mom[Hpm[{gt1}], lt3]}}, {{Hpm[{gt1}], conj[Hpm[{gt2}]], VZ[{lt3}]}, 
  {(I/2)*((g2*Cos[ThetaW]*Cos[ThetaWp] - g1*Cos[ThetaWp]*Sin[ThetaW] - 
       2*gp*QHd*Sin[ThetaWp])*ZP[gt1, 1]*ZP[gt2, 1] + 
     (g2*Cos[ThetaW]*Cos[ThetaWp] - g1*Cos[ThetaWp]*Sin[ThetaW] + 
       2*gp*QHu*Sin[ThetaWp])*ZP[gt1, 2]*ZP[gt2, 2]), 
   -Mom[conj[Hpm[{gt2}]], lt3] + Mom[Hpm[{gt1}], lt3]}}, 
 {{Hpm[{gt1}], conj[Hpm[{gt2}]], VZp[{lt3}]}, 
  {(-I/2)*((2*gp*QHd*Cos[ThetaWp] + (g2*Cos[ThetaW] - g1*Sin[ThetaW])*
        Sin[ThetaWp])*ZP[gt1, 1]*ZP[gt2, 1] + 
     (-2*gp*QHu*Cos[ThetaWp] + (g2*Cos[ThetaW] - g1*Sin[ThetaW])*
        Sin[ThetaWp])*ZP[gt1, 2]*ZP[gt2, 2]), -Mom[conj[Hpm[{gt2}]], lt3] + 
    Mom[Hpm[{gt1}], lt3]}}, {{Sd[{gt1, ct1}], conj[Sd[{gt2, ct2}]], 
   VG[{ct3, lt3}]}, {(-I/2)*g3*Delta[gt1, gt2]*Lam[ct3, ct2, ct1], 
   -Mom[conj[Sd[{gt2, ct2}]], lt3] + Mom[Sd[{gt1, ct1}], lt3]}}, 
 {{Sd[{gt1, ct1}], conj[Sd[{gt2, ct2}]], VP[{lt3}]}, 
  {(-I/6)*Delta[ct1, ct2]*((g1*Cos[ThetaW] - 3*g2*Sin[ThetaW])*
      sum[j1, 1, 3, conj[ZD[gt1, j1]]*ZD[gt2, j1]] - 
     2*g1*Cos[ThetaW]*sum[j1, 1, 3, conj[ZD[gt1, 3 + j1]]*ZD[gt2, 3 + j1]]), 
   -Mom[conj[Sd[{gt2, ct2}]], lt3] + Mom[Sd[{gt1, ct1}], lt3]}}, 
 {{Sd[{gt1, ct1}], conj[Sd[{gt2, ct2}]], VZ[{lt3}]}, 
  {(I/6)*Delta[ct1, ct2]*((3*g2*Cos[ThetaW]*Cos[ThetaWp] + 
       g1*Cos[ThetaWp]*Sin[ThetaW] - 6*gp*Qq*Sin[ThetaWp])*
      sum[j1, 1, 3, conj[ZD[gt1, j1]]*ZD[gt2, j1]] - 
     2*(g1*Cos[ThetaWp]*Sin[ThetaW] - 3*gp*Qd*Sin[ThetaWp])*
      sum[j1, 1, 3, conj[ZD[gt1, 3 + j1]]*ZD[gt2, 3 + j1]]), 
   -Mom[conj[Sd[{gt2, ct2}]], lt3] + Mom[Sd[{gt1, ct1}], lt3]}}, 
 {{Sd[{gt1, ct1}], conj[Sd[{gt2, ct2}]], VZp[{lt3}]}, 
  {(-I/6)*Delta[ct1, ct2]*
    ((6*gp*Qq*Cos[ThetaWp] + (3*g2*Cos[ThetaW] + g1*Sin[ThetaW])*
        Sin[ThetaWp])*sum[j1, 1, 3, conj[ZD[gt1, j1]]*ZD[gt2, j1]] - 
     2*(3*gp*Qd*Cos[ThetaWp] + g1*Sin[ThetaW]*Sin[ThetaWp])*
      sum[j1, 1, 3, conj[ZD[gt1, 3 + j1]]*ZD[gt2, 3 + j1]]), 
   -Mom[conj[Sd[{gt2, ct2}]], lt3] + Mom[Sd[{gt1, ct1}], lt3]}}, 
 {{Sd[{gt1, ct1}], conj[Su[{gt2, ct2}]], conj[VWm[{lt3}]]}, 
  {((-I)*g2*Delta[ct1, ct2]*sum[j1, 1, 3, conj[ZD[gt1, j1]]*ZU[gt2, j1]])/
    Sqrt[2], -Mom[conj[Su[{gt2, ct2}]], lt3] + Mom[Sd[{gt1, ct1}], lt3]}}, 
 {{Se[{gt1}], conj[Se[{gt2}]], VP[{lt3}]}, 
  {(I/2)*(conj[ZE[gt1, 1]]*(g1*Cos[ThetaW] + g2*Sin[ThetaW])*ZE[gt2, 1] + 
     conj[ZE[gt1, 2]]*(g1*Cos[ThetaW] + g2*Sin[ThetaW])*ZE[gt2, 2] + 
     g1*conj[ZE[gt1, 3]]*Cos[ThetaW]*ZE[gt2, 3] + g2*conj[ZE[gt1, 3]]*
      Sin[ThetaW]*ZE[gt2, 3] + 2*g1*conj[ZE[gt1, 4]]*Cos[ThetaW]*ZE[gt2, 4] + 
     2*g1*conj[ZE[gt1, 5]]*Cos[ThetaW]*ZE[gt2, 5] + 
     2*g1*conj[ZE[gt1, 6]]*Cos[ThetaW]*ZE[gt2, 6]), 
   -Mom[conj[Se[{gt2}]], lt3] + Mom[Se[{gt1}], lt3]}}, 
 {{Se[{gt1}], conj[Se[{gt2}]], VZ[{lt3}]}, 
  {(I/2)*(conj[ZE[gt1, 1]]*(g2*Cos[ThetaW]*Cos[ThetaWp] - 
       g1*Cos[ThetaWp]*Sin[ThetaW] - 2*gp*Ql1*Sin[ThetaWp])*ZE[gt2, 1] + 
     conj[ZE[gt1, 2]]*(g2*Cos[ThetaW]*Cos[ThetaWp] - 
       g1*Cos[ThetaWp]*Sin[ThetaW] - 2*gp*Ql2*Sin[ThetaWp])*ZE[gt2, 2] + 
     g2*conj[ZE[gt1, 3]]*Cos[ThetaW]*Cos[ThetaWp]*ZE[gt2, 3] - 
     g1*conj[ZE[gt1, 3]]*Cos[ThetaWp]*Sin[ThetaW]*ZE[gt2, 3] - 
     2*gp*Ql3*conj[ZE[gt1, 3]]*Sin[ThetaWp]*ZE[gt2, 3] - 
     2*g1*conj[ZE[gt1, 4]]*Cos[ThetaWp]*Sin[ThetaW]*ZE[gt2, 4] + 
     2*gp*Qe1*conj[ZE[gt1, 4]]*Sin[ThetaWp]*ZE[gt2, 4] - 
     2*g1*conj[ZE[gt1, 5]]*Cos[ThetaWp]*Sin[ThetaW]*ZE[gt2, 5] + 
     2*gp*Qe2*conj[ZE[gt1, 5]]*Sin[ThetaWp]*ZE[gt2, 5] - 
     2*g1*conj[ZE[gt1, 6]]*Cos[ThetaWp]*Sin[ThetaW]*ZE[gt2, 6] + 
     2*gp*Qe3*conj[ZE[gt1, 6]]*Sin[ThetaWp]*ZE[gt2, 6]), 
   -Mom[conj[Se[{gt2}]], lt3] + Mom[Se[{gt1}], lt3]}}, 
 {{Se[{gt1}], conj[Se[{gt2}]], VZp[{lt3}]}, 
  {(-I/2)*(conj[ZE[gt1, 1]]*(2*gp*Ql1*Cos[ThetaWp] + 
       (g2*Cos[ThetaW] - g1*Sin[ThetaW])*Sin[ThetaWp])*ZE[gt2, 1] + 
     conj[ZE[gt1, 2]]*(2*gp*Ql2*Cos[ThetaWp] + g2*Cos[ThetaW]*Sin[ThetaWp] - 
       g1*Sin[ThetaW]*Sin[ThetaWp])*ZE[gt2, 2] + 2*gp*Ql3*conj[ZE[gt1, 3]]*
      Cos[ThetaWp]*ZE[gt2, 3] + g2*conj[ZE[gt1, 3]]*Cos[ThetaW]*Sin[ThetaWp]*
      ZE[gt2, 3] - g1*conj[ZE[gt1, 3]]*Sin[ThetaW]*Sin[ThetaWp]*ZE[gt2, 3] - 
     2*gp*Qe1*conj[ZE[gt1, 4]]*Cos[ThetaWp]*ZE[gt2, 4] - 
     2*g1*conj[ZE[gt1, 4]]*Sin[ThetaW]*Sin[ThetaWp]*ZE[gt2, 4] - 
     2*gp*Qe2*conj[ZE[gt1, 5]]*Cos[ThetaWp]*ZE[gt2, 5] - 
     2*g1*conj[ZE[gt1, 5]]*Sin[ThetaW]*Sin[ThetaWp]*ZE[gt2, 5] - 
     2*gp*Qe3*conj[ZE[gt1, 6]]*Cos[ThetaWp]*ZE[gt2, 6] - 
     2*g1*conj[ZE[gt1, 6]]*Sin[ThetaW]*Sin[ThetaWp]*ZE[gt2, 6]), 
   -Mom[conj[Se[{gt2}]], lt3] + Mom[Se[{gt1}], lt3]}}, 
 {{Se[{gt1}], conj[Sv[{gt2}]], conj[VWm[{lt3}]]}, 
  {((-I)*g2*(conj[ZE[gt1, 1]]*ZV[gt2, 1] + conj[ZE[gt1, 2]]*ZV[gt2, 2] + 
      conj[ZE[gt1, 3]]*ZV[gt2, 3]))/Sqrt[2], -Mom[conj[Sv[{gt2}]], lt3] + 
    Mom[Se[{gt1}], lt3]}}, {{Su[{gt1, ct1}], conj[Su[{gt2, ct2}]], 
   VG[{ct3, lt3}]}, {(-I/2)*g3*Delta[gt1, gt2]*Lam[ct3, ct2, ct1], 
   -Mom[conj[Su[{gt2, ct2}]], lt3] + Mom[Su[{gt1, ct1}], lt3]}}, 
 {{Su[{gt1, ct1}], conj[Su[{gt2, ct2}]], VP[{lt3}]}, 
  {(-I/6)*Delta[ct1, ct2]*((g1*Cos[ThetaW] + 3*g2*Sin[ThetaW])*
      sum[j1, 1, 3, conj[ZU[gt1, j1]]*ZU[gt2, j1]] + 
     4*g1*Cos[ThetaW]*sum[j1, 1, 3, conj[ZU[gt1, 3 + j1]]*ZU[gt2, 3 + j1]]), 
   -Mom[conj[Su[{gt2, ct2}]], lt3] + Mom[Su[{gt1, ct1}], lt3]}}, 
 {{Su[{gt1, ct1}], conj[Sd[{gt2, ct2}]], VWm[{lt3}]}, 
  {((-I)*g2*Delta[ct1, ct2]*sum[j1, 1, 3, conj[ZU[gt1, j1]]*ZD[gt2, j1]])/
    Sqrt[2], -Mom[conj[Sd[{gt2, ct2}]], lt3] + Mom[Su[{gt1, ct1}], lt3]}}, 
 {{Su[{gt1, ct1}], conj[Su[{gt2, ct2}]], VZ[{lt3}]}, 
  {(-I/6)*Delta[ct1, ct2]*((3*g2*Cos[ThetaW]*Cos[ThetaWp] - 
       g1*Cos[ThetaWp]*Sin[ThetaW] + 6*gp*Qq*Sin[ThetaWp])*
      sum[j1, 1, 3, conj[ZU[gt1, j1]]*ZU[gt2, j1]] - 
     2*(2*g1*Cos[ThetaWp]*Sin[ThetaW] + 3*gp*Qu*Sin[ThetaWp])*
      sum[j1, 1, 3, conj[ZU[gt1, 3 + j1]]*ZU[gt2, 3 + j1]]), 
   -Mom[conj[Su[{gt2, ct2}]], lt3] + Mom[Su[{gt1, ct1}], lt3]}}, 
 {{Su[{gt1, ct1}], conj[Su[{gt2, ct2}]], VZp[{lt3}]}, 
  {(-I/6)*Delta[ct1, ct2]*
    ((6*gp*Qq*Cos[ThetaWp] + (-3*g2*Cos[ThetaW] + g1*Sin[ThetaW])*
        Sin[ThetaWp])*sum[j1, 1, 3, conj[ZU[gt1, j1]]*ZU[gt2, j1]] + 
     2*(-3*gp*Qu*Cos[ThetaWp] + 2*g1*Sin[ThetaW]*Sin[ThetaWp])*
      sum[j1, 1, 3, conj[ZU[gt1, 3 + j1]]*ZU[gt2, 3 + j1]]), 
   -Mom[conj[Su[{gt2, ct2}]], lt3] + Mom[Su[{gt1, ct1}], lt3]}}, 
 {{Sv[{gt1}], conj[Se[{gt2}]], VWm[{lt3}]}, 
  {((-I)*g2*(conj[ZV[gt1, 1]]*ZE[gt2, 1] + conj[ZV[gt1, 2]]*ZE[gt2, 2] + 
      conj[ZV[gt1, 3]]*ZE[gt2, 3]))/Sqrt[2], -Mom[conj[Se[{gt2}]], lt3] + 
    Mom[Sv[{gt1}], lt3]}}, {{Sv[{gt1}], conj[Sv[{gt2}]], VZ[{lt3}]}, 
  {(-I/2)*(conj[ZV[gt1, 1]]*(g2*Cos[ThetaW]*Cos[ThetaWp] + 
       g1*Cos[ThetaWp]*Sin[ThetaW] + 2*gp*Ql1*Sin[ThetaWp])*ZV[gt2, 1] + 
     conj[ZV[gt1, 2]]*(g2*Cos[ThetaW]*Cos[ThetaWp] + 
       g1*Cos[ThetaWp]*Sin[ThetaW] + 2*gp*Ql2*Sin[ThetaWp])*ZV[gt2, 2] + 
     conj[ZV[gt1, 3]]*(g2*Cos[ThetaW]*Cos[ThetaWp] + 
       g1*Cos[ThetaWp]*Sin[ThetaW] + 2*gp*Ql3*Sin[ThetaWp])*ZV[gt2, 3]), 
   -Mom[conj[Sv[{gt2}]], lt3] + Mom[Sv[{gt1}], lt3]}}, 
 {{Sv[{gt1}], conj[Sv[{gt2}]], VZp[{lt3}]}, 
  {(-I/2)*(conj[ZV[gt1, 1]]*(2*gp*Ql1*Cos[ThetaWp] - 
       (g2*Cos[ThetaW] + g1*Sin[ThetaW])*Sin[ThetaWp])*ZV[gt2, 1] + 
     conj[ZV[gt1, 2]]*(2*gp*Ql2*Cos[ThetaWp] - 
       (g2*Cos[ThetaW] + g1*Sin[ThetaW])*Sin[ThetaWp])*ZV[gt2, 2] + 
     conj[ZV[gt1, 3]]*(2*gp*Ql3*Cos[ThetaWp] - 
       (g2*Cos[ThetaW] + g1*Sin[ThetaW])*Sin[ThetaWp])*ZV[gt2, 3]), 
   -Mom[conj[Sv[{gt2}]], lt3] + Mom[Sv[{gt1}], lt3]}}}
