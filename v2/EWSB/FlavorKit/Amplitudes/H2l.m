(* ----------------------------------------------------------------------------- *) 
(* This model was automatically created by SARAH version4.14.3  *) 
(* SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223 *) 
(* (c) Florian Staub, 2013  *) 
(* ----------------------------------------------------------------------------- *) 
(* File created at 0:37 on 10.2.2021  *) 
(* ---------------------------------------------------------------------- *) 
 
 
LoopContributions[H2l]={
chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, hh][L][gt2,gt1,gt3],coup1R -> Cp[bar[Fe], Fe, hh][R][gt2,gt1,gt3]},}
(* Ah,Fe, Internal:bar[Fe]*) 
{{Ah,Fe,Internal->bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, Ah][L][i2,gt1,i1],coup1R -> Cp[bar[Fe], Fe, Ah][R][i2,gt1,i1],coup2L -> Cp[bar[Fe], Fe, Ah][L][i3,i2,i1],coup2R -> Cp[bar[Fe], Fe, Ah][R][i3,i2,i1],coup3L -> Cp[bar[Fe], Fe, hh][L][gt2,i3,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][gt2,i3,gt3]},{mS1 -> M[Ah][i1],mF1 -> M[Fe][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx1 + coup1L*coup2L*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1L*coup2R*MassEx12 + coup1R*coup2L*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx1 + coup1R*coup2R*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1R*coup2L*MassEx12 + coup1L*coup2R*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)} },
(* Chi,Se, Internal:bar[Fe]*) 
{{Chi,Se,Internal->bar[Fe]},chargefactor -> 1,{coup1L -> Cp[Chi, Fe, conj[Se]][L][i1,gt1,i2],coup1R -> Cp[Chi, Fe, conj[Se]][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Chi, Se][L][i3,i1,i2],coup2R -> Cp[bar[Fe], Chi, Se][R][i3,i1,i2],coup3L -> Cp[bar[Fe], Fe, hh][L][gt2,i3,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][gt2,i3,gt3]},{mF1 -> M[Chi][i1],mS1 -> M[Se][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx1 + coup1L*coup2L*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1L*coup2R*MassEx12 + coup1R*coup2L*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx1 + coup1R*coup2R*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1R*coup2L*MassEx12 + coup1L*coup2R*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)} },
(* hh,Fe, Internal:bar[Fe]*) 
{{hh,Fe,Internal->bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, hh][L][i2,gt1,i1],coup1R -> Cp[bar[Fe], Fe, hh][R][i2,gt1,i1],coup2L -> Cp[bar[Fe], Fe, hh][L][i3,i2,i1],coup2R -> Cp[bar[Fe], Fe, hh][R][i3,i2,i1],coup3L -> Cp[bar[Fe], Fe, hh][L][gt2,i3,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][gt2,i3,gt3]},{mS1 -> M[hh][i1],mF1 -> M[Fe][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx1 + coup1L*coup2L*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1L*coup2R*MassEx12 + coup1R*coup2L*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx1 + coup1R*coup2R*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1R*coup2L*MassEx12 + coup1L*coup2R*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)} },
(* VZ,Fe, Internal:bar[Fe]*) 
{{VZ,Fe,Internal->bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZ][L][i2,gt1],coup1R -> Cp[bar[Fe], Fe, VZ][R][i2,gt1],coup2L -> Cp[bar[Fe], Fe, VZ][L][i3,i2],coup2R -> Cp[bar[Fe], Fe, VZ][R][i3,i2],coup3L -> Cp[bar[Fe], Fe, hh][L][gt2,i3,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][gt2,i3,gt3]},{mV1 -> M[VZ],mF1 -> M[Fe][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}  {OH2lSL,(coup3L*(Finite*(coup1L*coup2L*MassEx12 - 2*coup1R*coup2L*MassEx1*mF1 + coup1R*coup2R*MassEx1*MFin - 2*coup1L*coup2R*mF1*MFin) + 4*mF1*(coup1R*coup2L*MassEx1 + coup1L*coup2R*MFin)*bb0[MassEx12, mF12, mV12] + 2*(coup1L*coup2L*MassEx12 + coup1R*coup2R*MassEx1*MFin)*bb1[MassEx12, mF12, mV12]))/(MassEx12 - MFin2)},   {OH2lSR,(coup3R*(Finite*(coup1R*coup2R*MassEx12 - 2*coup1L*coup2R*MassEx1*mF1 + coup1L*coup2L*MassEx1*MFin - 2*coup1R*coup2L*mF1*MFin) + 4*mF1*(coup1L*coup2R*MassEx1 + coup1R*coup2L*MFin)*bb0[MassEx12, mF12, mV12] + 2*(coup1R*coup2R*MassEx12 + coup1L*coup2L*MassEx1*MFin)*bb1[MassEx12, mF12, mV12]))/(MassEx12 - MFin2)} },
(* VZp,Fe, Internal:bar[Fe]*) 
{{VZp,Fe,Internal->bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZp][L][i2,gt1],coup1R -> Cp[bar[Fe], Fe, VZp][R][i2,gt1],coup2L -> Cp[bar[Fe], Fe, VZp][L][i3,i2],coup2R -> Cp[bar[Fe], Fe, VZp][R][i3,i2],coup3L -> Cp[bar[Fe], Fe, hh][L][gt2,i3,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][gt2,i3,gt3]},{mV1 -> M[VZp],mF1 -> M[Fe][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}  {OH2lSL,(coup3L*(Finite*(coup1L*coup2L*MassEx12 - 2*coup1R*coup2L*MassEx1*mF1 + coup1R*coup2R*MassEx1*MFin - 2*coup1L*coup2R*mF1*MFin) + 4*mF1*(coup1R*coup2L*MassEx1 + coup1L*coup2R*MFin)*bb0[MassEx12, mF12, mV12] + 2*(coup1L*coup2L*MassEx12 + coup1R*coup2R*MassEx1*MFin)*bb1[MassEx12, mF12, mV12]))/(MassEx12 - MFin2)},   {OH2lSR,(coup3R*(Finite*(coup1R*coup2R*MassEx12 - 2*coup1L*coup2R*MassEx1*mF1 + coup1L*coup2L*MassEx1*MFin - 2*coup1R*coup2L*mF1*MFin) + 4*mF1*(coup1L*coup2R*MassEx1 + coup1R*coup2L*MFin)*bb0[MassEx12, mF12, mV12] + 2*(coup1R*coup2R*MassEx12 + coup1L*coup2L*MassEx1*MFin)*bb1[MassEx12, mF12, mV12]))/(MassEx12 - MFin2)} },
(* bar[Cha],Sv, Internal:bar[Fe]*) 
{{bar[Cha],Sv,Internal->bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Cha], Fe, conj[Sv]][L][i1,gt1,i2],coup1R -> Cp[bar[Cha], Fe, conj[Sv]][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Cha, Sv][L][i3,i1,i2],coup2R -> Cp[bar[Fe], Cha, Sv][R][i3,i1,i2],coup3L -> Cp[bar[Fe], Fe, hh][L][gt2,i3,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][gt2,i3,gt3]},{mF1 -> M[Cha][i1],mS1 -> M[Sv][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx1 + coup1L*coup2L*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1L*coup2R*MassEx12 + coup1R*coup2L*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx1 + coup1R*coup2R*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1R*coup2L*MassEx12 + coup1L*coup2R*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)} },
(* bar[Fv],Hpm, Internal:bar[Fe]*) 
{{bar[Fv],Hpm,Internal->bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Fv], Fe, conj[Hpm]][L][i1,gt1,i2],coup1R -> Cp[bar[Fv], Fe, conj[Hpm]][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Fv, Hpm][L][i3,i1,i2],coup2R -> Cp[bar[Fe], Fv, Hpm][R][i3,i1,i2],coup3L -> Cp[bar[Fe], Fe, hh][L][gt2,i3,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][gt2,i3,gt3]},{mF1 -> M[Fv][i1],mS1 -> M[Hpm][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx1 + coup1L*coup2L*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1L*coup2R*MassEx12 + coup1R*coup2L*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx1 + coup1R*coup2R*MFin)*bb0[MassEx12, mF12, mS12]) + (coup1R*coup2L*MassEx12 + coup1L*coup2R*MassEx1*MFin)*bb1[MassEx12, mF12, mS12]))/(MassEx12 - MFin2)} },
(* bar[Fv],VWm, Internal:bar[Fe]*) 
{{bar[Fv],VWm,Internal->bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Fv], Fe, conj[VWm]][L][i1,gt1],coup1R -> Cp[bar[Fv], Fe, conj[VWm]][R][i1,gt1],coup2L -> Cp[bar[Fe], Fv, VWm][L][i3,i1],coup2R -> Cp[bar[Fe], Fv, VWm][R][i3,i1],coup3L -> Cp[bar[Fe], Fe, hh][L][gt2,i3,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][gt2,i3,gt3]},{mF1 -> M[Fv][i1],mV1 -> M[VWm],MFin -> M[Fe][i3]-M[Fe][gt1]}  {OH2lSL,(coup3L*(Finite*(coup1L*coup2L*MassEx12 - 2*coup1R*coup2L*MassEx1*mF1 + coup1R*coup2R*MassEx1*MFin - 2*coup1L*coup2R*mF1*MFin) + 4*mF1*(coup1R*coup2L*MassEx1 + coup1L*coup2R*MFin)*bb0[MassEx12, mF12, mV12] + 2*(coup1L*coup2L*MassEx12 + coup1R*coup2R*MassEx1*MFin)*bb1[MassEx12, mF12, mV12]))/(MassEx12 - MFin2)},   {OH2lSR,(coup3R*(Finite*(coup1R*coup2R*MassEx12 - 2*coup1L*coup2R*MassEx1*mF1 + coup1L*coup2L*MassEx1*MFin - 2*coup1R*coup2L*mF1*MFin) + 4*mF1*(coup1L*coup2R*MassEx1 + coup1R*coup2L*MFin)*bb0[MassEx12, mF12, mV12] + 2*(coup1R*coup2R*MassEx12 + coup1L*coup2L*MassEx1*MFin)*bb1[MassEx12, mF12, mV12]))/(MassEx12 - MFin2)} },
(* Fe,Ah, Internal:Fe*) 
{{Fe,Ah,Internal->Fe},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, hh][L][i3,gt1,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,gt1,gt3],coup2L -> Cp[bar[Fe], Fe, Ah][L][i1,i3,i2],coup2R -> Cp[bar[Fe], Fe, Ah][R][i1,i3,i2],coup1L -> Cp[bar[Fe], Fe, Ah][L][gt2,i1,i2],coup1R -> Cp[bar[Fe], Fe, Ah][R][gt2,i1,i2]},{mF1 -> M[Fe][i1],mS1 -> M[Ah][i2],MFin -> M[Fe][i3]-M[Fe][gt2]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx2 + coup1L*coup2L*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1L*coup2R*MassEx22 + coup1R*coup2L*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx2 + coup1R*coup2R*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1R*coup2L*MassEx22 + coup1L*coup2R*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)} },
(* Se,Chi, Internal:Fe*) 
{{Se,Chi,Internal->Fe},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, hh][L][i3,gt1,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,gt1,gt3],coup2L -> Cp[Chi, Fe, conj[Se]][L][i2,i3,i1],coup2R -> Cp[Chi, Fe, conj[Se]][R][i2,i3,i1],coup1L -> Cp[bar[Fe], Chi, Se][L][gt2,i2,i1],coup1R -> Cp[bar[Fe], Chi, Se][R][gt2,i2,i1]},{mS1 -> M[Se][i1],mF1 -> M[Chi][i2],MFin -> M[Fe][i3]-M[Fe][gt2]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx2 + coup1L*coup2L*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1L*coup2R*MassEx22 + coup1R*coup2L*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx2 + coup1R*coup2R*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1R*coup2L*MassEx22 + coup1L*coup2R*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)} },
(* Fe,hh, Internal:Fe*) 
{{Fe,hh,Internal->Fe},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, hh][L][i3,gt1,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,gt1,gt3],coup2L -> Cp[bar[Fe], Fe, hh][L][i1,i3,i2],coup2R -> Cp[bar[Fe], Fe, hh][R][i1,i3,i2],coup1L -> Cp[bar[Fe], Fe, hh][L][gt2,i1,i2],coup1R -> Cp[bar[Fe], Fe, hh][R][gt2,i1,i2]},{mF1 -> M[Fe][i1],mS1 -> M[hh][i2],MFin -> M[Fe][i3]-M[Fe][gt2]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx2 + coup1L*coup2L*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1L*coup2R*MassEx22 + coup1R*coup2L*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx2 + coup1R*coup2R*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1R*coup2L*MassEx22 + coup1L*coup2R*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)} },
(* Fe,VZ, Internal:Fe*) 
{{Fe,VZ,Internal->Fe},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, hh][L][i3,gt1,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,gt1,gt3],coup2L -> Cp[bar[Fe], Fe, VZ][L][i1,i3],coup2R -> Cp[bar[Fe], Fe, VZ][R][i1,i3],coup1L -> Cp[bar[Fe], Fe, VZ][L][gt2,i1],coup1R -> Cp[bar[Fe], Fe, VZ][R][gt2,i1]},{mF1 -> M[Fe][i1],mV1 -> M[VZ],MFin -> M[Fe][i3]-M[Fe][gt2]}  {OH2lSL,(coup3L*(Finite*(coup1R*coup2R*MassEx22 - 2*coup1L*coup2R*MassEx2*mF1 + coup1L*coup2L*MassEx2*MFin - 2*coup1R*coup2L*mF1*MFin) + 4*mF1*(coup1L*coup2R*MassEx2 + coup1R*coup2L*MFin)*bb0[MassEx22, mF12, mV12] + 2*(coup1R*coup2R*MassEx22 + coup1L*coup2L*MassEx2*MFin)*bb1[MassEx22, mF12, mV12]))/(MassEx22 - MFin2)},   {OH2lSR,(coup3R*(Finite*(coup1L*coup2L*MassEx22 - 2*coup1R*coup2L*MassEx2*mF1 + coup1R*coup2R*MassEx2*MFin - 2*coup1L*coup2R*mF1*MFin) + 4*mF1*(coup1R*coup2L*MassEx2 + coup1L*coup2R*MFin)*bb0[MassEx22, mF12, mV12] + 2*(coup1L*coup2L*MassEx22 + coup1R*coup2R*MassEx2*MFin)*bb1[MassEx22, mF12, mV12]))/(MassEx22 - MFin2)} },
(* Fe,VZp, Internal:Fe*) 
{{Fe,VZp,Internal->Fe},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, hh][L][i3,gt1,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,gt1,gt3],coup2L -> Cp[bar[Fe], Fe, VZp][L][i1,i3],coup2R -> Cp[bar[Fe], Fe, VZp][R][i1,i3],coup1L -> Cp[bar[Fe], Fe, VZp][L][gt2,i1],coup1R -> Cp[bar[Fe], Fe, VZp][R][gt2,i1]},{mF1 -> M[Fe][i1],mV1 -> M[VZp],MFin -> M[Fe][i3]-M[Fe][gt2]}  {OH2lSL,(coup3L*(Finite*(coup1R*coup2R*MassEx22 - 2*coup1L*coup2R*MassEx2*mF1 + coup1L*coup2L*MassEx2*MFin - 2*coup1R*coup2L*mF1*MFin) + 4*mF1*(coup1L*coup2R*MassEx2 + coup1R*coup2L*MFin)*bb0[MassEx22, mF12, mV12] + 2*(coup1R*coup2R*MassEx22 + coup1L*coup2L*MassEx2*MFin)*bb1[MassEx22, mF12, mV12]))/(MassEx22 - MFin2)},   {OH2lSR,(coup3R*(Finite*(coup1L*coup2L*MassEx22 - 2*coup1R*coup2L*MassEx2*mF1 + coup1R*coup2R*MassEx2*MFin - 2*coup1L*coup2R*mF1*MFin) + 4*mF1*(coup1R*coup2L*MassEx2 + coup1L*coup2R*MFin)*bb0[MassEx22, mF12, mV12] + 2*(coup1L*coup2L*MassEx22 + coup1R*coup2R*MassEx2*MFin)*bb1[MassEx22, mF12, mV12]))/(MassEx22 - MFin2)} },
(* Sv,bar[Cha], Internal:Fe*) 
{{Sv,bar[Cha],Internal->Fe},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, hh][L][i3,gt1,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,gt1,gt3],coup2L -> Cp[bar[Cha], Fe, conj[Sv]][L][i2,i3,i1],coup2R -> Cp[bar[Cha], Fe, conj[Sv]][R][i2,i3,i1],coup1L -> Cp[bar[Fe], Cha, Sv][L][gt2,i2,i1],coup1R -> Cp[bar[Fe], Cha, Sv][R][gt2,i2,i1]},{mS1 -> M[Sv][i1],mF1 -> M[Cha][i2],MFin -> M[Fe][i3]-M[Fe][gt2]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx2 + coup1L*coup2L*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1L*coup2R*MassEx22 + coup1R*coup2L*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx2 + coup1R*coup2R*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1R*coup2L*MassEx22 + coup1L*coup2R*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)} },
(* Hpm,bar[Fv], Internal:Fe*) 
{{Hpm,bar[Fv],Internal->Fe},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, hh][L][i3,gt1,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,gt1,gt3],coup2L -> Cp[bar[Fv], Fe, conj[Hpm]][L][i2,i3,i1],coup2R -> Cp[bar[Fv], Fe, conj[Hpm]][R][i2,i3,i1],coup1L -> Cp[bar[Fe], Fv, Hpm][L][gt2,i2,i1],coup1R -> Cp[bar[Fe], Fv, Hpm][R][gt2,i2,i1]},{mS1 -> M[Hpm][i1],mF1 -> M[Fv][i2],MFin -> M[Fe][i3]-M[Fe][gt2]}  {OH2lSL,(coup3L*(-(mF1*(coup1R*coup2R*MassEx2 + coup1L*coup2L*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1L*coup2R*MassEx22 + coup1R*coup2L*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)},   {OH2lSR,(coup3R*(-(mF1*(coup1L*coup2L*MassEx2 + coup1R*coup2R*MFin)*bb0[MassEx22, mF12, mS12]) + (coup1R*coup2L*MassEx22 + coup1L*coup2R*MassEx2*MFin)*bb1[MassEx22, mF12, mS12]))/(MassEx22 - MFin2)} },
(* VWm,bar[Fv], Internal:Fe*) 
{{VWm,bar[Fv],Internal->Fe},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, hh][L][i3,gt1,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,gt1,gt3],coup2L -> Cp[bar[Fv], Fe, conj[VWm]][L][i2,i3],coup2R -> Cp[bar[Fv], Fe, conj[VWm]][R][i2,i3],coup1L -> Cp[bar[Fe], Fv, VWm][L][gt2,i2],coup1R -> Cp[bar[Fe], Fv, VWm][R][gt2,i2]},{mV1 -> M[VWm],mF1 -> M[Fv][i2],MFin -> M[Fe][i3]-M[Fe][gt2]}  {OH2lSL,(coup3L*(Finite*(coup1R*coup2R*MassEx22 - 2*coup1L*coup2R*MassEx2*mF1 + coup1L*coup2L*MassEx2*MFin - 2*coup1R*coup2L*mF1*MFin) + 4*mF1*(coup1L*coup2R*MassEx2 + coup1R*coup2L*MFin)*bb0[MassEx22, mF12, mV12] + 2*(coup1R*coup2R*MassEx22 + coup1L*coup2L*MassEx2*MFin)*bb1[MassEx22, mF12, mV12]))/(MassEx22 - MFin2)},   {OH2lSR,(coup3R*(Finite*(coup1L*coup2L*MassEx22 - 2*coup1R*coup2L*MassEx2*mF1 + coup1R*coup2R*MassEx2*MFin - 2*coup1L*coup2R*mF1*MFin) + 4*mF1*(coup1R*coup2L*MassEx2 + coup1L*coup2R*MFin)*bb0[MassEx22, mF12, mV12] + 2*(coup1L*coup2L*MassEx22 + coup1R*coup2R*MassEx2*MFin)*bb1[MassEx22, mF12, mV12]))/(MassEx22 - MFin2)} }
(* Ah,Fe,Fe*) 
{{Ah,Fe,Fe},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, Ah][L][i2,gt1,i1],coup1R -> Cp[bar[Fe], Fe, Ah][R][i2,gt1,i1],coup2L -> Cp[bar[Fe], Fe, Ah][L][gt2,i3,i1],coup2R -> Cp[bar[Fe], Fe, Ah][R][gt2,i3,i1],coup3L -> Cp[bar[Fe], Fe, hh][L][i3,i2,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,i2,gt3]},  {OH2lSL,-(coup1L*coup2L*(coup3R*bb0[MassEx32, mF12, mF22] + (coup3L*mF1*mF2 + coup3R*mS12)*cc0[MassEx32, 0, 0, mF22, mF12, mS12]))},   {OH2lSR,-(coup1R*coup2R*(coup3L*bb0[MassEx32, mF12, mF22] + (coup3R*mF1*mF2 + coup3L*mS12)*cc0[MassEx32, 0, 0, mF22, mF12, mS12]))} },
(* Chi,Se,Se*) 
{{Chi,Se,Se},chargefactor -> 1,{coup1L -> Cp[Chi, Fe, conj[Se]][L][i1,gt1,i2],coup1R -> Cp[Chi, Fe, conj[Se]][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Chi, Se][L][gt2,i1,i3],coup2R -> Cp[bar[Fe], Chi, Se][R][gt2,i1,i3],coup3 -> Cp[hh, Se, conj[Se]][gt3,i2,i3]},  {OH2lSL,-(coup1L*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])},   {OH2lSR,-(coup1R*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])} },
(* hh,Fe,Fe*) 
{{hh,Fe,Fe},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, hh][L][i2,gt1,i1],coup1R -> Cp[bar[Fe], Fe, hh][R][i2,gt1,i1],coup2L -> Cp[bar[Fe], Fe, hh][L][gt2,i3,i1],coup2R -> Cp[bar[Fe], Fe, hh][R][gt2,i3,i1],coup3L -> Cp[bar[Fe], Fe, hh][L][i3,i2,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,i2,gt3]},  {OH2lSL,-(coup1L*coup2L*(coup3R*bb0[MassEx32, mF12, mF22] + (coup3L*mF1*mF2 + coup3R*mS12)*cc0[MassEx32, 0, 0, mF22, mF12, mS12]))},   {OH2lSR,-(coup1R*coup2R*(coup3L*bb0[MassEx32, mF12, mF22] + (coup3R*mF1*mF2 + coup3L*mS12)*cc0[MassEx32, 0, 0, mF22, mF12, mS12]))} },
(* VZ,Fe,Fe*) 
{{VZ,Fe,Fe},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZ][L][i2,gt1],coup1R -> Cp[bar[Fe], Fe, VZ][R][i2,gt1],coup2L -> Cp[bar[Fe], Fe, VZ][L][gt2,i3],coup2R -> Cp[bar[Fe], Fe, VZ][R][gt2,i3],coup3L -> Cp[bar[Fe], Fe, hh][L][i3,i2,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,i2,gt3]},  {OH2lSL,2*coup1L*coup2R*(-(coup3L*Finite) + 2*coup3L*bb0[MassEx32, mF12, mF22] + 2*(coup3R*mF1*mF2 + coup3L*mV12)*cc0[MassEx32, 0, 0, mF22, mF12, mV12])},   {OH2lSR,2*coup1R*coup2L*(-(coup3R*Finite) + 2*coup3R*bb0[MassEx32, mF12, mF22] + 2*(coup3L*mF1*mF2 + coup3R*mV12)*cc0[MassEx32, 0, 0, mF22, mF12, mV12])} },
(* VZp,Fe,Fe*) 
{{VZp,Fe,Fe},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZp][L][i2,gt1],coup1R -> Cp[bar[Fe], Fe, VZp][R][i2,gt1],coup2L -> Cp[bar[Fe], Fe, VZp][L][gt2,i3],coup2R -> Cp[bar[Fe], Fe, VZp][R][gt2,i3],coup3L -> Cp[bar[Fe], Fe, hh][L][i3,i2,gt3],coup3R -> Cp[bar[Fe], Fe, hh][R][i3,i2,gt3]},  {OH2lSL,2*coup1L*coup2R*(-(coup3L*Finite) + 2*coup3L*bb0[MassEx32, mF12, mF22] + 2*(coup3R*mF1*mF2 + coup3L*mV12)*cc0[MassEx32, 0, 0, mF22, mF12, mV12])},   {OH2lSR,2*coup1R*coup2L*(-(coup3R*Finite) + 2*coup3R*bb0[MassEx32, mF12, mF22] + 2*(coup3L*mF1*mF2 + coup3R*mV12)*cc0[MassEx32, 0, 0, mF22, mF12, mV12])} },
(* bar[Cha],Sv,Sv*) 
{{bar[Cha],Sv,Sv},chargefactor -> 1,{coup1L -> Cp[bar[Cha], Fe, conj[Sv]][L][i1,gt1,i2],coup1R -> Cp[bar[Cha], Fe, conj[Sv]][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Cha, Sv][L][gt2,i1,i3],coup2R -> Cp[bar[Fe], Cha, Sv][R][gt2,i1,i3],coup3 -> Cp[hh, Sv, conj[Sv]][gt3,i2,i3]},  {OH2lSL,-(coup1L*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])},   {OH2lSR,-(coup1R*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])} },
(* bar[Fe],Ah,Ah*) 
{{bar[Fe],Ah,Ah},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, Ah][L][i1,gt1,i2],coup1R -> Cp[bar[Fe], Fe, Ah][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Fe, Ah][L][gt2,i1,i3],coup2R -> Cp[bar[Fe], Fe, Ah][R][gt2,i1,i3],coup3 -> Cp[Ah, Ah, hh][i3,i2,gt3]},  {OH2lSL,-(coup1L*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])},   {OH2lSR,-(coup1R*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])} },
(* bar[Fe],VZ,Ah*) 
{{bar[Fe],VZ,Ah},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZ][L][i1,gt1],coup1R -> Cp[bar[Fe], Fe, VZ][R][i1,gt1],coup2L -> Cp[bar[Fe], Fe, Ah][L][gt2,i1,i3],coup2R -> Cp[bar[Fe], Fe, Ah][R][gt2,i1,i3],coup3 -> Cp[Ah, hh, VZ][i3,gt3]},  {OH2lSL,-(coup1L*coup2L*coup3*(bb0[MassEx32, mS22, mV12] + mF12*cc0[0, MassEx32, 0, mF12, mS22, mV12]))},   {OH2lSR,-(coup1R*coup2R*coup3*(bb0[MassEx32, mS22, mV12] + mF12*cc0[0, MassEx32, 0, mF12, mS22, mV12]))} },
(* bar[Fe],VZp,Ah*) 
{{bar[Fe],VZp,Ah},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZp][L][i1,gt1],coup1R -> Cp[bar[Fe], Fe, VZp][R][i1,gt1],coup2L -> Cp[bar[Fe], Fe, Ah][L][gt2,i1,i3],coup2R -> Cp[bar[Fe], Fe, Ah][R][gt2,i1,i3],coup3 -> Cp[Ah, hh, VZp][i3,gt3]},  {OH2lSL,-(coup1L*coup2L*coup3*(bb0[MassEx32, mS22, mV12] + mF12*cc0[0, MassEx32, 0, mF12, mS22, mV12]))},   {OH2lSR,-(coup1R*coup2R*coup3*(bb0[MassEx32, mS22, mV12] + mF12*cc0[0, MassEx32, 0, mF12, mS22, mV12]))} },
(* bar[Fe],hh,hh*) 
{{bar[Fe],hh,hh},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, hh][L][i1,gt1,i2],coup1R -> Cp[bar[Fe], Fe, hh][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Fe, hh][L][gt2,i1,i3],coup2R -> Cp[bar[Fe], Fe, hh][R][gt2,i1,i3],coup3 -> Cp[hh, hh, hh][gt3,i3,i2]},  {OH2lSL,-(coup1L*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])},   {OH2lSR,-(coup1R*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])} },
(* bar[Fe],Ah,VZ*) 
{{bar[Fe],Ah,VZ},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, Ah][L][i1,gt1,i2],coup1R -> Cp[bar[Fe], Fe, Ah][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Fe, VZ][L][gt2,i1],coup2R -> Cp[bar[Fe], Fe, VZ][R][gt2,i1],coup3 -> Cp[Ah, hh, VZ][i2,gt3]},  {OH2lSL,coup1L*coup2R*coup3*(bb0[MassEx32, mS12, mV22] + mF12*cc0[0, MassEx32, 0, mF12, mV22, mS12])},   {OH2lSR,coup1R*coup2L*coup3*(bb0[MassEx32, mS12, mV22] + mF12*cc0[0, MassEx32, 0, mF12, mV22, mS12])} },
(* bar[Fe],VZ,VZ*) 
{{bar[Fe],VZ,VZ},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZ][L][i1,gt1],coup1R -> Cp[bar[Fe], Fe, VZ][R][i1,gt1],coup2L -> Cp[bar[Fe], Fe, VZ][L][gt2,i1],coup2R -> Cp[bar[Fe], Fe, VZ][R][gt2,i1],coup3 -> Cp[hh, VZ, VZ][gt3]},  {OH2lSL,-4*coup1L*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]},   {OH2lSR,-4*coup1R*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]} },
(* bar[Fe],VZp,VZ*) 
{{bar[Fe],VZp,VZ},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZp][L][i1,gt1],coup1R -> Cp[bar[Fe], Fe, VZp][R][i1,gt1],coup2L -> Cp[bar[Fe], Fe, VZ][L][gt2,i1],coup2R -> Cp[bar[Fe], Fe, VZ][R][gt2,i1],coup3 -> Cp[hh, VZ, VZp][gt3]},  {OH2lSL,-4*coup1L*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]},   {OH2lSR,-4*coup1R*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]} },
(* bar[Fe],Ah,VZp*) 
{{bar[Fe],Ah,VZp},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, Ah][L][i1,gt1,i2],coup1R -> Cp[bar[Fe], Fe, Ah][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Fe, VZp][L][gt2,i1],coup2R -> Cp[bar[Fe], Fe, VZp][R][gt2,i1],coup3 -> Cp[Ah, hh, VZp][i2,gt3]},  {OH2lSL,coup1L*coup2R*coup3*(bb0[MassEx32, mS12, mV22] + mF12*cc0[0, MassEx32, 0, mF12, mV22, mS12])},   {OH2lSR,coup1R*coup2L*coup3*(bb0[MassEx32, mS12, mV22] + mF12*cc0[0, MassEx32, 0, mF12, mV22, mS12])} },
(* bar[Fe],VZ,VZp*) 
{{bar[Fe],VZ,VZp},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZ][L][i1,gt1],coup1R -> Cp[bar[Fe], Fe, VZ][R][i1,gt1],coup2L -> Cp[bar[Fe], Fe, VZp][L][gt2,i1],coup2R -> Cp[bar[Fe], Fe, VZp][R][gt2,i1],coup3 -> Cp[hh, VZ, VZp][gt3]},  {OH2lSL,-4*coup1L*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]},   {OH2lSR,-4*coup1R*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]} },
(* bar[Fe],VZp,VZp*) 
{{bar[Fe],VZp,VZp},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZp][L][i1,gt1],coup1R -> Cp[bar[Fe], Fe, VZp][R][i1,gt1],coup2L -> Cp[bar[Fe], Fe, VZp][L][gt2,i1],coup2R -> Cp[bar[Fe], Fe, VZp][R][gt2,i1],coup3 -> Cp[hh, VZp, VZp][gt3]},  {OH2lSL,-4*coup1L*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]},   {OH2lSR,-4*coup1R*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]} },
(* bar[Fv],Hpm,Hpm*) 
{{bar[Fv],Hpm,Hpm},chargefactor -> 1,{coup1L -> Cp[bar[Fv], Fe, conj[Hpm]][L][i1,gt1,i2],coup1R -> Cp[bar[Fv], Fe, conj[Hpm]][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Fv, Hpm][L][gt2,i1,i3],coup2R -> Cp[bar[Fe], Fv, Hpm][R][gt2,i1,i3],coup3 -> Cp[hh, Hpm, conj[Hpm]][gt3,i2,i3]},  {OH2lSL,-(coup1L*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])},   {OH2lSR,-(coup1R*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mS22, mS12])} },
(* bar[Fv],VWm,Hpm*) 
{{bar[Fv],VWm,Hpm},chargefactor -> 1,{coup1L -> Cp[bar[Fv], Fe, conj[VWm]][L][i1,gt1],coup1R -> Cp[bar[Fv], Fe, conj[VWm]][R][i1,gt1],coup2L -> Cp[bar[Fe], Fv, Hpm][L][gt2,i1,i3],coup2R -> Cp[bar[Fe], Fv, Hpm][R][gt2,i1,i3],coup3 -> Cp[hh, conj[Hpm], VWm][gt3,i3]},  {OH2lSL,-(coup1L*coup2L*coup3*(bb0[MassEx32, mS22, mV12] + mF12*cc0[0, MassEx32, 0, mF12, mS22, mV12]))},   {OH2lSR,-(coup1R*coup2R*coup3*(bb0[MassEx32, mS22, mV12] + mF12*cc0[0, MassEx32, 0, mF12, mS22, mV12]))} },
(* bar[Fv],Hpm,VWm*) 
{{bar[Fv],Hpm,VWm},chargefactor -> 1,{coup1L -> Cp[bar[Fv], Fe, conj[Hpm]][L][i1,gt1,i2],coup1R -> Cp[bar[Fv], Fe, conj[Hpm]][R][i1,gt1,i2],coup2L -> Cp[bar[Fe], Fv, VWm][L][gt2,i1],coup2R -> Cp[bar[Fe], Fv, VWm][R][gt2,i1],coup3 -> Cp[hh, Hpm, conj[VWm]][gt3,i2]},  {OH2lSL,coup1L*coup2R*coup3*(bb0[MassEx32, mS12, mV22] + mF12*cc0[0, MassEx32, 0, mF12, mV22, mS12])},   {OH2lSR,coup1R*coup2L*coup3*(bb0[MassEx32, mS12, mV22] + mF12*cc0[0, MassEx32, 0, mF12, mV22, mS12])} },
(* bar[Fv],VWm,VWm*) 
{{bar[Fv],VWm,VWm},chargefactor -> 1,{coup1L -> Cp[bar[Fv], Fe, conj[VWm]][L][i1,gt1],coup1R -> Cp[bar[Fv], Fe, conj[VWm]][R][i1,gt1],coup2L -> Cp[bar[Fe], Fv, VWm][L][gt2,i1],coup2R -> Cp[bar[Fe], Fv, VWm][R][gt2,i1],coup3 -> Cp[hh, conj[VWm], VWm][gt3]},  {OH2lSL,-4*coup1L*coup2R*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]},   {OH2lSR,-4*coup1R*coup2L*coup3*mF1*cc0[0, MassEx32, 0, mF12, mV22, mV12]} },
(* conj[Se],Chi,Chi*) 
{{conj[Se],Chi,Chi},chargefactor -> 1,{coup1L -> Cp[Chi, Fe, conj[Se]][L][i2,gt1,i1],coup1R -> Cp[Chi, Fe, conj[Se]][R][i2,gt1,i1],coup2L -> Cp[bar[Fe], Chi, Se][L][gt2,i3,i1],coup2R -> Cp[bar[Fe], Chi, Se][R][gt2,i3,i1],coup3L -> Cp[Chi, Chi, hh][L][i3,i2,gt3],coup3R -> Cp[Chi, Chi, hh][R][i3,i2,gt3]},  {OH2lSL,-(coup1L*coup2L*(coup3R*bb0[MassEx32, mF12, mF22] + (coup3L*mF1*mF2 + coup3R*mS12)*cc0[MassEx32, 0, 0, mF22, mF12, mS12]))},   {OH2lSR,-(coup1R*coup2R*(coup3L*bb0[MassEx32, mF12, mF22] + (coup3R*mF1*mF2 + coup3L*mS12)*cc0[MassEx32, 0, 0, mF22, mF12, mS12]))} },
(* conj[Sv],Cha,Cha*) 
{{conj[Sv],Cha,Cha},chargefactor -> 1,{coup1L -> Cp[bar[Cha], Fe, conj[Sv]][L][i2,gt1,i1],coup1R -> Cp[bar[Cha], Fe, conj[Sv]][R][i2,gt1,i1],coup2L -> Cp[bar[Fe], Cha, Sv][L][gt2,i3,i1],coup2R -> Cp[bar[Fe], Cha, Sv][R][gt2,i3,i1],coup3L -> Cp[bar[Cha], Cha, hh][L][i3,i2,gt3],coup3R -> Cp[bar[Cha], Cha, hh][R][i3,i2,gt3]},  {OH2lSL,-(coup1L*coup2L*(coup3R*bb0[MassEx32, mF12, mF22] + (coup3L*mF1*mF2 + coup3R*mS12)*cc0[MassEx32, 0, 0, mF22, mF12, mS12]))},   {OH2lSR,-(coup1R*coup2R*(coup3L*bb0[MassEx32, mF12, mF22] + (coup3R*mF1*mF2 + coup3L*mS12)*cc0[MassEx32, 0, 0, mF22, mF12, mS12]))} }
};