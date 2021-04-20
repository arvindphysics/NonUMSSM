Module EffectivePotential_NonUMSSMv4 
 
Use Control 
Use Settings 
Use Couplings_NonUMSSMv4 
Use LoopFunctions 
Use Mathematics 
Use MathematicsQP 
Use Model_Data_NonUMSSMv4 
Use StandardModel 
Use TreeLevelMasses_NonUMSSMv4 
Use EffPotFunctions
Use DerivativesEffPotFunctions
 
Contains 
 
Subroutine CalculateCorrectionsEffPot(ti_ep2L,pi_ep2L,vd,vu,vS,g1,g2,g3,              & 
& gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,            & 
& TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,              & 
& mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,kont)

Implicit None 
Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Real(dp),Intent(in) :: vd,vu,vS

Integer , Intent(inout):: kont 
Integer :: iout 
Real(dp) :: err,h_start,vevs(3) 
Real(dp), Intent(out) :: ti_ep2L(3)  
Real(dp), Intent(out) :: pi_ep2L(3,3)


err2L = 0._dp 
If (.not.PurelyNumericalEffPot) Then 
epsM = 1.0E-8_dp 
epsD = 1.0E-8_dp 
! 2nd deriv. also calculates the 1st deriv. of V
Call SecondDerivativeEffPot2Loop(vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,              & 
& lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,              & 
& ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,            & 
& ms2,M1,M2,M3,M4,Tep,Tmup,kont,pi_ep2L,ti_ep2L)

Else 
epsM = 1.0E-6_dp 
epsD = 1.0E-6_dp 
vevs = (/vd,vu,vS/) 
! Calculate 1st (ti_ep) and 2nd derivatives (pi_ep)
ti_ep2L(1) = partialDiff_Ridders(EffPotFunction2Loop,vevs,1,3,err,h_start,iout) 
If (err.gt.err2L) err2L = err 
ti_ep2L(2) = partialDiff_Ridders(EffPotFunction2Loop,vevs,2,3,err,h_start,iout) 
If (err.gt.err2L) err2L = err 
ti_ep2L(3) = partialDiff_Ridders(EffPotFunction2Loop,vevs,3,3,err,h_start,iout) 
If (err.gt.err2L) err2L = err 
pi_ep2L(1,1) = partialDiffXY_Ridders(EffPotFunction2Loop,vevs,1,1,3,err,h_start,iout) 
If (err.gt.err2L) err2L = err 
pi_ep2L(2,1) = partialDiffXY_Ridders(EffPotFunction2Loop,vevs,2,1,3,err,h_start,iout) 
If (err.gt.err2L) err2L = err 
pi_ep2L(2,2) = partialDiffXY_Ridders(EffPotFunction2Loop,vevs,2,2,3,err,h_start,iout) 
If (err.gt.err2L) err2L = err 
pi_ep2L(3,1) = partialDiffXY_Ridders(EffPotFunction2Loop,vevs,3,1,3,err,h_start,iout) 
If (err.gt.err2L) err2L = err 
pi_ep2L(3,2) = partialDiffXY_Ridders(EffPotFunction2Loop,vevs,3,2,3,err,h_start,iout) 
If (err.gt.err2L) err2L = err 
pi_ep2L(3,3) = partialDiffXY_Ridders(EffPotFunction2Loop,vevs,3,3,3,err,h_start,iout) 
If (err.gt.err2L) err2L = err 
pi_ep2L(1,2)=pi_ep2L(2,1)
pi_ep2L(1,3)=pi_ep2L(3,1)
pi_ep2L(2,3)=pi_ep2L(3,2)
End If 
Contains 

Real(dp) Function EffPotFunction(vevs) 
  ! a wrapping function to be passed to numerical differentiation 
  Implicit None 
  Real(dp), Intent(in) :: vevs(3) 
  Real(dp) :: effPot 
Call CalculateEffPot(vevs(1),vevs(2),vevs(3),g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,           & 
& lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,              & 
& ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,            & 
& ms2,M1,M2,M3,M4,Tep,Tmup,kont,effPot)

  EffPotFunction = effPot 
  End Function 

Real(dp) Function EffPotFunction2Loop(vevs) 
  ! a wrapping function to be passed to numerical differentiation 
  Implicit None 
  Real(dp), Intent(in) :: vevs(3) 
  Real(dp) :: effPot2L 
Call CalculateEffPot2Loop(vevs(1),vevs(2),vevs(3),g1,g2,g3,gp,Yd,Ye11,Ye22,           & 
& Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,             & 
& mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,               & 
& mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,kont,effPot2L)

  EffPotFunction2Loop = effPot2L 
  End Function 

End subroutine CalculateCorrectionsEffPot 


Subroutine CalculateEffPot(vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,           & 
& Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,           & 
& ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,              & 
& M3,M4,Tep,Tmup,kont,effPot)

Implicit None 
Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Real(dp),Intent(in) :: vd,vu,vS

Real(dp) :: MAh(3),MAh2(3),MCha(2),MCha2(2),MChi(6),MChi2(6),MFd(3),MFd2(3),MFe(3),               & 
& MFe2(3),MFu(3),MFu2(3),MFv(3),MFv2(3),MGlu,MGlu2,Mhh(3),Mhh2(3),MHpm(2),               & 
& MHpm2(2),MSd(6),MSd2(6),MSe(6),MSe2(6),MSu(6),MSu2(6),MSv(6),MSv2(6),MVWm,             & 
& MVWm2,MVZ,MVZ2,MVZp,MVZp2,TW,TWp,v,ZP(2,2),ZZ(3,3),betaH

Complex(dp) :: pG,UM(2,2),UP(2,2),ZA(3,3),ZD(6,6),ZDL(3,3),ZDR(3,3),ZE(6,6),ZEL(3,3),ZER(3,3),       & 
& ZH(3,3),ZN(6,6),ZU(6,6),ZUL(3,3),ZUR(3,3),ZV(6,6),ZVL(3,3),ZVR(3,3),ZW(2,2)

Integer, Intent(inout):: kont
Integer :: i 
Real(dp) :: effpot,Qscale,result,temp


Call TreeMasses(MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,            & 
& MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,           & 
& MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,             & 
& ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZVR,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,               & 
& Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,           & 
& Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,            & 
& mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,.True.,kont)

Qscale= getRenormalizationScale()
result=0._dp
temp=0._dp
! sum over real scalars (color *[2 if complex]) 
Do i=1,6
temp=temp+(3*2) * h_SMartin(MSd2(i),Qscale) ! Sd
End Do
Do i=1,6
temp=temp+(2)    * h_SMartin(MSv2(i),Qscale) ! Sv
End Do
Do i=1,6
temp=temp+(3*2) * h_SMartin(MSu2(i),Qscale) ! Su
End Do
Do i=1,6
temp=temp+(2)    * h_SMartin(MSe2(i),Qscale) ! Se
End Do
Do i=1,3
temp=temp+          h_SMartin(Mhh2(i),Qscale) ! hh
End Do
Do i=3,3
temp=temp+          h_SMartin(MAh2(i),Qscale) ! Ah
End Do
Do i=2,2
temp=temp+(2)    * h_SMartin(MHpm2(i),Qscale) ! Hpm
End Do
result=(+1)*temp !scalars

temp=0._dp
! sum over two-component fermions (*color [*2 if Dirac Fermion]) 
Do i=1,2
temp=temp+          h_SMartin(MCha2(i),Qscale)*2 ! Cha
End Do
Do i=1,6
temp=temp+          h_SMartin(MChi2(i),Qscale)*1 ! Chi
End Do
Do i=1,3
temp=temp+(3)   * h_SMartin(MFd2(i),Qscale)*2 ! Fd
End Do
Do i=1,3
temp=temp+          h_SMartin(MFe2(i),Qscale)*2 ! Fe
End Do
Do i=1,3
temp=temp+(3)   * h_SMartin(MFu2(i),Qscale)*2 ! Fu
End Do
Do i=1,3
temp=temp+          h_SMartin(MFv2(i),Qscale)*2 ! Fv
End Do
temp=temp+(8)   * h_SMartin(MGlu2,Qscale)*1 ! Glu
result=result+(-2)*temp ! fermions

temp=0._dp
! sum over real vectors (color *[2 if complex]) 
temp=temp+(8)   * h_SMartin(0._dp,Qscale) ! VG
temp=temp+          h_SMartin(0._dp,Qscale) ! VP
temp=temp+          h_SMartin(MVZ2,Qscale) ! VZ
temp=temp+          h_SMartin(MVZp2,Qscale) ! VZp
temp=temp+(2)    * h_SMartin(MVWm2,Qscale) ! VWm
result=result+(+3)*temp ! vectors

effPot = result * oo16pi2

End Subroutine CalculateEffPot 



 
 
Subroutine CalculateEffPot2Loop(vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,               & 
& lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,              & 
& ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,            & 
& ms2,M1,M2,M3,M4,Tep,Tmup,kont,effPot2L)

Implicit None 
Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Real(dp),Intent(in) :: vd,vu,vS

Real(dp) :: MAh(3),MAh2(3),MCha(2),MCha2(2),MChi(6),MChi2(6),MFd(3),MFd2(3),MFe(3),               & 
& MFe2(3),MFu(3),MFu2(3),MFv(3),MFv2(3),MGlu,MGlu2,Mhh(3),Mhh2(3),MHpm(2),               & 
& MHpm2(2),MSd(6),MSd2(6),MSe(6),MSe2(6),MSu(6),MSu2(6),MSv(6),MSv2(6),MVWm,             & 
& MVWm2,MVZ,MVZ2,MVZp,MVZp2,TW,TWp,v,ZP(2,2),ZZ(3,3),betaH

Complex(dp) :: pG,UM(2,2),UP(2,2),ZA(3,3),ZD(6,6),ZDL(3,3),ZDR(3,3),ZE(6,6),ZEL(3,3),ZER(3,3),       & 
& ZH(3,3),ZN(6,6),ZU(6,6),ZUL(3,3),ZUR(3,3),ZV(6,6),ZVL(3,3),ZVR(3,3),ZW(2,2)

Integer, Intent(inout):: kont
Real(dp), Intent(out) :: effpot2L
Integer :: i,i1,i2,i3,includeGhosts,NrContr 
Integer :: NrContr1,NrContr2 !nr of contributing diagrams
Real(dp) :: Qscale,result,colorfactor,coeff,coeffbar
Complex(dp) :: temp,coupx,coupxbar,coup1,coup2,coup1L,coup1R,coup2L,coup2R
Complex(dp) :: dcoupx,dcoupxbar,dcoup1,dcoup2,dcoup1L,dcoup1R,dcoup2L,dcoup2R
Complex(dp) :: cplAhAhAh(3,3,3),cplAhAhhh(3,3,3),cplAhhhhh(3,3,3),cplAhHpmcHpm(3,2,2),               & 
& cplAhSdcSd(3,6,6),cplAhSecSe(3,6,6),cplAhSucSu(3,6,6),cplAhSvcSv(3,6,6),               & 
& cplhhhhhh(3,3,3),cplhhHpmcHpm(3,2,2),cplhhSdcSd(3,6,6),cplhhSecSe(3,6,6),              & 
& cplhhSucSu(3,6,6),cplhhSvcSv(3,6,6),cplHpmSucSd(2,6,6),cplHpmSvcSe(2,6,6),             & 
& cplSdcHpmcSu(6,2,6),cplSecHpmcSv(6,2,6),cplSdcSdVG(6,6),cplSucSuVG(6,6),               & 
& cplVGVGVG,cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplChiChiAhL(6,6,3),               & 
& cplChiChiAhR(6,6,3),cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),cplcFeFeAhL(3,3,3),          & 
& cplcFeFeAhR(3,3,3),cplcFuFuAhL(3,3,3),cplcFuFuAhR(3,3,3),cplcFvFvAhL(3,3,3),           & 
& cplcFvFvAhR(3,3,3),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),cplChaFucSdL(2,3,6),    & 
& cplChaFucSdR(2,3,6),cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplcChaChahhL(2,2,3),      & 
& cplcChaChahhR(2,2,3),cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),cplcFeChaSvL(3,2,6),      & 
& cplcFeChaSvR(3,2,6),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiFdcSdL(6,3,6),       & 
& cplChiFdcSdR(6,3,6),cplChiFecSeL(6,3,6),cplChiFecSeR(6,3,6),cplChiFucSuL(6,3,6),       & 
& cplChiFucSuR(6,3,6),cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6),cplcChaChiHpmL(2,6,2),     & 
& cplcChaChiHpmR(2,6,2),cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFeChiSeL(3,6,6),     & 
& cplcFeChiSeR(3,6,6),cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFvChiSvL(3,6,6),       & 
& cplcFvChiSvR(3,6,6),cplGluFdcSdL(3,6),cplGluFdcSdR(3,6),cplcFdFdhhL(3,3,3),            & 
& cplcFdFdhhR(3,3,3),cplcChaFdcSuL(2,3,6),cplcChaFdcSuR(2,3,6),cplcFuFdcHpmL(3,3,2),     & 
& cplcFuFdcHpmR(3,3,2),cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcChaFecSvL(2,3,6),       & 
& cplcChaFecSvR(2,3,6),cplcFvFecHpmL(3,3,2),cplcFvFecHpmR(3,3,2),cplGluFucSuL(3,6),      & 
& cplGluFucSuR(3,6),cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFdFuHpmL(3,3,2),           & 
& cplcFdFuHpmR(3,3,2),cplcFvFvhhL(3,3,3),cplcFvFvhhR(3,3,3),cplcFeFvHpmL(3,3,2),         & 
& cplcFeFvHpmR(3,3,2),cplcFdGluSdL(3,6),cplcFdGluSdR(3,6),cplcFuGluSuL(3,6),             & 
& cplcFuGluSuR(3,6),cplcChacFuSdL(2,3,6),cplcChacFuSdR(2,3,6),cplcChacFvSeL(2,3,6),      & 
& cplcChacFvSeR(2,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFuFuVGL(3,3),               & 
& cplcFuFuVGR(3,3),cplGluGluVGL,cplGluGluVGR

Complex(dp) :: cplAhAhAhAh(3,3,3,3),cplAhAhhhhh(3,3,3,3),cplAhAhHpmcHpm(3,3,2,2),cplAhAhSdcSd(3,3,6,6),& 
& cplAhAhSecSe(3,3,6,6),cplAhAhSucSu(3,3,6,6),cplAhAhSvcSv(3,3,6,6),cplhhhhhhhh(3,3,3,3),& 
& cplhhhhHpmcHpm(3,3,2,2),cplhhhhSdcSd(3,3,6,6),cplhhhhSecSe(3,3,6,6),cplhhhhSucSu(3,3,6,6),& 
& cplhhhhSvcSv(3,3,6,6),cplHpmHpmcHpmcHpm(2,2,2,2),cplHpmSdcHpmcSd(2,6,2,6),             & 
& cplHpmSecHpmcSe(2,6,2,6),cplHpmSucHpmcSu(2,6,2,6),cplHpmSvcHpmcSv(2,6,2,6),            & 
& cplSdSdcSdcSd(6,6,6,6),cplSdSecSdcSe(6,6,6,6),cplSdSucSdcSu(6,6,6,6),cplSeSecSecSe(6,6,6,6),& 
& cplSeSvcSecSv(6,6,6,6),cplSuSucSucSu(6,6,6,6),cplSuSvcSucSv(6,6,6,6),cplSvSvcSvcSv(6,6,6,6),& 
& cplSdcSdVGVG(6,6),cplSucSuVGVG(6,6)

Real(dp) :: results1(47),results2(28)


Call TreeMassesEffPot(MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,               & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZVR,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,               & 
& gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,            & 
& TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,              & 
& mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,.True.,kont)

Call CouplingsForEffPot3(lam,Tlam,ZA,vd,vu,vS,ZH,ZP,Yd,Td,ZD,Ye11,TYe11,              & 
& Ye22,TYe22,Ye33,TYe33,Tep,Tmup,ZE,Yu,Tu,ZU,Yv11,TYv11,Yv22,TYv22,Yv33,TYv33,           & 
& ZV,g3,UM,UP,ZN,ZDL,ZDR,ZEL,ZER,ZUL,ZUR,ZVL,ZVR,pG,cplAhAhAh,cplAhAhhh,cplAhhhhh,       & 
& cplAhHpmcHpm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,       & 
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,      & 
& cplSecHpmcSv,cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,              & 
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,         & 
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,       & 
& cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,         & 
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         & 
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         & 
& cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,         & 
& cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,       & 
& cplcFvFecHpmL,cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,           & 
& cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,       & 
& cplcChacFvSeL,cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplGluGluVGL,cplGluGluVGR)

Call CouplingsForEffPot4(lam,ZA,ZH,ZP,Yd,ZD,Ye11,Ye22,Ye33,ZE,Yu,ZU,Yv11,             & 
& Yv22,Yv33,ZV,g3,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,cplAhAhSecSe,      & 
& cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,cplhhhhSecSe,        & 
& cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,cplHpmSecHpmcSe,           & 
& cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,cplSdSucSdcSu,             & 
& cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,cplSdcSdVGVG,    & 
& cplSucSuVGVG)


Qscale = getRenormalizationScale()
result=0._dp
results1=0._dp
results2=0._dp
temp=0._dp
! ----- Topology1 (sunrise): diagrams w. 3 Particles and 2 Vertices

! ----- diagrams of type SSS, 16 ------ 
! ---- Ah,Ah,Ah ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplAhAhAh(i1,i2,i3)
coup2 = cplAhAhAh(i1,i2,i3)
colorfactor=1
temp=temp+colorfactor*1._dp/12._dp*abs(coup1)**2*Fep_SSS(MAh2(i1),MAh2(i2),MAh2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Ah, Ah]' 
    End Do
  End Do
End Do
results1(1)=temp
! ---- Ah,Ah,hh ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplAhAhhh(i1,i2,i3)
coup2 = cplAhAhhh(i1,i2,i3)
colorfactor=1
temp=temp+colorfactor*0.25_dp*abs(coup1)**2*Fep_SSS(MAh2(i1),MAh2(i2),Mhh2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Ah, hh]' 
    End Do
  End Do
End Do
results1(2)=temp
! ---- Ah,hh,hh ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplAhhhhh(i1,i2,i3)
coup2 = cplAhhhhh(i1,i2,i3)
colorfactor=1
temp=temp+colorfactor*0.25_dp*abs(coup1)**2*Fep_SSS(MAh2(i1),Mhh2(i2),Mhh2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, hh, hh]' 
    End Do
  End Do
End Do
results1(3)=temp
! ---- Ah,Hpm,conj[Hpm] ----
temp=0._dp
Do i1=1,3
 Do i2=1,2
    Do i3=1,2
coup1 = cplAhHpmcHpm(i1,i2,i3)
coup2 = cplAhHpmcHpm(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(MAh2(i1),MHpm2(i2),MHpm2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Hpm, conj[Hpm]]' 
    End Do
  End Do
End Do
results1(4)=temp
! ---- Ah,Sd,conj[Sd] ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSdcSd(i1,i2,i3)
coup2 = cplAhSdcSd(i1,i3,i2)
colorfactor=3
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(MAh2(i1),MSd2(i2),MSd2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Sd, conj[Sd]]' 
    End Do
  End Do
End Do
results1(5)=temp
! ---- Ah,Se,conj[Se] ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSecSe(i1,i2,i3)
coup2 = cplAhSecSe(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(MAh2(i1),MSe2(i2),MSe2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Se, conj[Se]]' 
    End Do
  End Do
End Do
results1(6)=temp
! ---- Ah,Su,conj[Su] ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSucSu(i1,i2,i3)
coup2 = cplAhSucSu(i1,i3,i2)
colorfactor=3
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(MAh2(i1),MSu2(i2),MSu2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Su, conj[Su]]' 
    End Do
  End Do
End Do
results1(7)=temp
! ---- Ah,Sv,conj[Sv] ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSvcSv(i1,i2,i3)
coup2 = cplAhSvcSv(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(MAh2(i1),MSv2(i2),MSv2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Sv, conj[Sv]]' 
    End Do
  End Do
End Do
results1(8)=temp
! ---- hh,hh,hh ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplhhhhhh(i1,i2,i3)
coup2 = cplhhhhhh(i1,i2,i3)
colorfactor=1
temp=temp+colorfactor*1._dp/12._dp*abs(coup1)**2*Fep_SSS(Mhh2(i1),Mhh2(i2),Mhh2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, hh, hh]' 
    End Do
  End Do
End Do
results1(9)=temp
! ---- hh,Hpm,conj[Hpm] ----
temp=0._dp
Do i1=1,3
 Do i2=1,2
    Do i3=1,2
coup1 = cplhhHpmcHpm(i1,i2,i3)
coup2 = cplhhHpmcHpm(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(Mhh2(i1),MHpm2(i2),MHpm2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Hpm, conj[Hpm]]' 
    End Do
  End Do
End Do
results1(10)=temp
! ---- hh,Sd,conj[Sd] ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSdcSd(i1,i2,i3)
coup2 = cplhhSdcSd(i1,i3,i2)
colorfactor=3
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(Mhh2(i1),MSd2(i2),MSd2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Sd, conj[Sd]]' 
    End Do
  End Do
End Do
results1(11)=temp
! ---- hh,Se,conj[Se] ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSecSe(i1,i2,i3)
coup2 = cplhhSecSe(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(Mhh2(i1),MSe2(i2),MSe2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Se, conj[Se]]' 
    End Do
  End Do
End Do
results1(12)=temp
! ---- hh,Su,conj[Su] ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSucSu(i1,i2,i3)
coup2 = cplhhSucSu(i1,i3,i2)
colorfactor=3
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(Mhh2(i1),MSu2(i2),MSu2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Su, conj[Su]]' 
    End Do
  End Do
End Do
results1(13)=temp
! ---- hh,Sv,conj[Sv] ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSvcSv(i1,i2,i3)
coup2 = cplhhSvcSv(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSS(Mhh2(i1),MSv2(i2),MSv2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Sv, conj[Sv]]' 
    End Do
  End Do
End Do
results1(14)=temp
! ---- Sd,conj[Hpm],conj[Su] ----
temp=0._dp
Do i1=1,6
 Do i2=1,2
    Do i3=1,6
coup1 = cplSdcHpmcSu(i1,i2,i3)
coup2 = cplHpmSucSd(i2,i3,i1)
colorfactor=3
temp=temp+colorfactor*1._dp*abs(coup1)**2*Fep_SSS(MSd2(i1),MHpm2(i2),MSu2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Sd, conj[Hpm], conj[Su]]' 
    End Do
  End Do
End Do
results1(15)=temp
! ---- Se,conj[Hpm],conj[Sv] ----
temp=0._dp
Do i1=1,6
 Do i2=1,2
    Do i3=1,6
coup1 = cplSecHpmcSv(i1,i2,i3)
coup2 = cplHpmSvcSe(i2,i3,i1)
colorfactor=1
temp=temp+colorfactor*1._dp*abs(coup1)**2*Fep_SSS(MSe2(i1),MHpm2(i2),MSv2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Se, conj[Hpm], conj[Sv]]' 
    End Do
  End Do
End Do
results1(16)=temp
! ----- diagrams of type FFS, 25 ------ 
! ---- Ah,Cha,bar[Cha] ----
temp=0._dp
Do i1=1,3
 Do i2=1,2
    Do i3=1,2
coup1L = cplcChaChaAhL(i3,i2,i1)
coup1R = cplcChaChaAhR(i3,i2,i1)
coup2L = cplcChaChaAhL(i2,i3,i1)
coup2R = cplcChaChaAhR(i2,i3,i1)
colorfactor=1
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MCha2(i3),MCha2(i2),MAh2(i1),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Cha, bar[Cha]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MCha(i2)*MCha(i3)*Fep_FFSbar(MCha2(i3),MCha2(i2),MAh2(i1),Qscale)
    End Do
  End Do
End Do
results1(17)=temp
! ---- Ah,Chi,Chi ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1L = cplChiChiAhL(i2,i3,i1)
coup1R = cplChiChiAhR(i2,i3,i1)
coup2L = cplChiChiAhL(i2,i3,i1)
coup2R = cplChiChiAhR(i2,i3,i1)
colorfactor=1
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2)*Fep_FFS(MChi2(i3),MChi2(i2),MAh2(i1),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Chi, Chi]' 
temp=temp+colorfactor*0.5_dp*Real(coup1L**2,dp)*MChi(i2)*MChi(i3)*Fep_FFSbar(MChi2(i3),MChi2(i2),MAh2(i1),Qscale)
    End Do
  End Do
End Do
results1(18)=temp
! ---- Ah,Fd,bar[Fd] ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFdFdAhL(i3,i2,i1)
coup1R = cplcFdFdAhR(i3,i2,i1)
coup2L = cplcFdFdAhL(i2,i3,i1)
coup2R = cplcFdFdAhR(i2,i3,i1)
colorfactor=3
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFd2(i3),MFd2(i2),MAh2(i1),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Fd, bar[Fd]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MFd(i2)*MFd(i3)*Fep_FFSbar(MFd2(i3),MFd2(i2),MAh2(i1),Qscale)
    End Do
  End Do
End Do
results1(19)=temp
! ---- Ah,Fe,bar[Fe] ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFeFeAhL(i3,i2,i1)
coup1R = cplcFeFeAhR(i3,i2,i1)
coup2L = cplcFeFeAhL(i2,i3,i1)
coup2R = cplcFeFeAhR(i2,i3,i1)
colorfactor=1
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFe2(i3),MFe2(i2),MAh2(i1),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Fe, bar[Fe]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MFe(i2)*MFe(i3)*Fep_FFSbar(MFe2(i3),MFe2(i2),MAh2(i1),Qscale)
    End Do
  End Do
End Do
results1(20)=temp
! ---- Ah,Fu,bar[Fu] ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFuFuAhL(i3,i2,i1)
coup1R = cplcFuFuAhR(i3,i2,i1)
coup2L = cplcFuFuAhL(i2,i3,i1)
coup2R = cplcFuFuAhR(i2,i3,i1)
colorfactor=3
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFu2(i3),MFu2(i2),MAh2(i1),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Fu, bar[Fu]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MFu(i2)*MFu(i3)*Fep_FFSbar(MFu2(i3),MFu2(i2),MAh2(i1),Qscale)
    End Do
  End Do
End Do
results1(21)=temp
! ---- Ah,Fv,bar[Fv] ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFvFvAhL(i3,i2,i1)
coup1R = cplcFvFvAhR(i3,i2,i1)
coup2L = cplcFvFvAhL(i2,i3,i1)
coup2R = cplcFvFvAhR(i2,i3,i1)
colorfactor=1
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFv2(i3),MFv2(i2),MAh2(i1),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Fv, bar[Fv]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MFv(i2)*MFv(i3)*Fep_FFSbar(MFv2(i3),MFv2(i2),MAh2(i1),Qscale)
    End Do
  End Do
End Do
results1(22)=temp
! ---- Cha,hh,bar[Cha] ----
temp=0._dp
Do i1=1,2
 Do i2=1,3
    Do i3=1,2
coup1L = cplcChaChahhL(i3,i1,i2)
coup1R = cplcChaChahhR(i3,i1,i2)
coup2L = cplcChaChahhL(i1,i3,i2)
coup2R = cplcChaChahhR(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MCha2(i3),MCha2(i1),Mhh2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Cha, hh, bar[Cha]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MCha(i1)*MCha(i3)*Fep_FFSbar(MCha2(i3),MCha2(i1),Mhh2(i2),Qscale)
    End Do
  End Do
End Do
results1(23)=temp
! ---- Chi,Chi,hh ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplChiChihhL(i1,i2,i3)
coup1R = cplChiChihhR(i1,i2,i3)
coup2L = cplChiChihhL(i1,i2,i3)
coup2R = cplChiChihhR(i1,i2,i3)
colorfactor=1
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2)*Fep_FFS(MChi2(i2),MChi2(i1),Mhh2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Chi, hh]' 
temp=temp+colorfactor*0.5_dp*Real(coup1L**2,dp)*MChi(i1)*MChi(i2)*Fep_FFSbar(MChi2(i2),MChi2(i1),Mhh2(i3),Qscale)
    End Do
  End Do
End Do
results1(24)=temp
! ---- Chi,Hpm,bar[Cha] ----
temp=0._dp
Do i1=1,6
 Do i2=1,2
    Do i3=1,2
coup1L = cplcChaChiHpmL(i3,i1,i2)
coup1R = cplcChaChiHpmR(i3,i1,i2)
coup2L = cplChiChacHpmL(i1,i3,i2)
coup2R = cplChiChacHpmR(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MCha2(i3),MChi2(i1),MHpm2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Hpm, bar[Cha]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MChi(i1)*MCha(i3)*Fep_FFSbar(MCha2(i3),MChi2(i1),MHpm2(i2),Qscale)
    End Do
  End Do
End Do
results1(25)=temp
! ---- Chi,Sd,bar[Fd] ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFdChiSdL(i3,i1,i2)
coup1R = cplcFdChiSdR(i3,i1,i2)
coup2L = cplChiFdcSdL(i1,i3,i2)
coup2R = cplChiFdcSdR(i1,i3,i2)
colorfactor=3
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFd2(i3),MChi2(i1),MSd2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Sd, bar[Fd]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MChi(i1)*MFd(i3)*Fep_FFSbar(MFd2(i3),MChi2(i1),MSd2(i2),Qscale)
    End Do
  End Do
End Do
results1(26)=temp
! ---- Chi,Se,bar[Fe] ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFeChiSeL(i3,i1,i2)
coup1R = cplcFeChiSeR(i3,i1,i2)
coup2L = cplChiFecSeL(i1,i3,i2)
coup2R = cplChiFecSeR(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFe2(i3),MChi2(i1),MSe2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Se, bar[Fe]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MChi(i1)*MFe(i3)*Fep_FFSbar(MFe2(i3),MChi2(i1),MSe2(i2),Qscale)
    End Do
  End Do
End Do
results1(27)=temp
! ---- Chi,Su,bar[Fu] ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFuChiSuL(i3,i1,i2)
coup1R = cplcFuChiSuR(i3,i1,i2)
coup2L = cplChiFucSuL(i1,i3,i2)
coup2R = cplChiFucSuR(i1,i3,i2)
colorfactor=3
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFu2(i3),MChi2(i1),MSu2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Su, bar[Fu]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MChi(i1)*MFu(i3)*Fep_FFSbar(MFu2(i3),MChi2(i1),MSu2(i2),Qscale)
    End Do
  End Do
End Do
results1(28)=temp
! ---- Chi,Sv,bar[Fv] ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFvChiSvL(i3,i1,i2)
coup1R = cplcFvChiSvR(i3,i1,i2)
coup2L = cplChiFvcSvL(i1,i3,i2)
coup2R = cplChiFvcSvR(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFv2(i3),MChi2(i1),MSv2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Sv, bar[Fv]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MChi(i1)*MFv(i3)*Fep_FFSbar(MFv2(i3),MChi2(i1),MSv2(i2),Qscale)
    End Do
  End Do
End Do
results1(29)=temp
! ---- Fd,hh,bar[Fd] ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFdFdhhL(i3,i1,i2)
coup1R = cplcFdFdhhR(i3,i1,i2)
coup2L = cplcFdFdhhL(i1,i3,i2)
coup2R = cplcFdFdhhR(i1,i3,i2)
colorfactor=3
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFd2(i3),MFd2(i1),Mhh2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fd, hh, bar[Fd]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MFd(i1)*MFd(i3)*Fep_FFSbar(MFd2(i3),MFd2(i1),Mhh2(i2),Qscale)
    End Do
  End Do
End Do
results1(30)=temp
! ---- Fd,bar[Cha],conj[Su] ----
temp=0._dp
Do i1=1,3
 Do i2=1,2
    Do i3=1,6
coup1L = cplcChaFdcSuL(i2,i1,i3)
coup1R = cplcChaFdcSuR(i2,i1,i3)
coup2L = cplcFdChaSuL(i1,i2,i3)
coup2R = cplcFdChaSuR(i1,i2,i3)
colorfactor=3
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MCha2(i2),MFd2(i1),MSu2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fd, bar[Cha], conj[Su]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MFd(i1)*MCha(i2)*Fep_FFSbar(MCha2(i2),MFd2(i1),MSu2(i3),Qscale)
    End Do
  End Do
End Do
results1(31)=temp
! ---- Fe,hh,bar[Fe] ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFeFehhL(i3,i1,i2)
coup1R = cplcFeFehhR(i3,i1,i2)
coup2L = cplcFeFehhL(i1,i3,i2)
coup2R = cplcFeFehhR(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFe2(i3),MFe2(i1),Mhh2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fe, hh, bar[Fe]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MFe(i1)*MFe(i3)*Fep_FFSbar(MFe2(i3),MFe2(i1),Mhh2(i2),Qscale)
    End Do
  End Do
End Do
results1(32)=temp
! ---- Fe,bar[Cha],conj[Sv] ----
temp=0._dp
Do i1=1,3
 Do i2=1,2
    Do i3=1,6
coup1L = cplcChaFecSvL(i2,i1,i3)
coup1R = cplcChaFecSvR(i2,i1,i3)
coup2L = cplcFeChaSvL(i1,i2,i3)
coup2R = cplcFeChaSvR(i1,i2,i3)
colorfactor=1
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MCha2(i2),MFe2(i1),MSv2(i3),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fe, bar[Cha], conj[Sv]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MFe(i1)*MCha(i2)*Fep_FFSbar(MCha2(i2),MFe2(i1),MSv2(i3),Qscale)
    End Do
  End Do
End Do
results1(33)=temp
! ---- Fu,hh,bar[Fu] ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFuFuhhL(i3,i1,i2)
coup1R = cplcFuFuhhR(i3,i1,i2)
coup2L = cplcFuFuhhL(i1,i3,i2)
coup2R = cplcFuFuhhR(i1,i3,i2)
colorfactor=3
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFu2(i3),MFu2(i1),Mhh2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fu, hh, bar[Fu]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MFu(i1)*MFu(i3)*Fep_FFSbar(MFu2(i3),MFu2(i1),Mhh2(i2),Qscale)
    End Do
  End Do
End Do
results1(34)=temp
! ---- Fu,Hpm,bar[Fd] ----
temp=0._dp
Do i1=1,3
 Do i2=1,2
    Do i3=1,3
coup1L = cplcFdFuHpmL(i3,i1,i2)
coup1R = cplcFdFuHpmR(i3,i1,i2)
coup2L = cplcFuFdcHpmL(i1,i3,i2)
coup2R = cplcFuFdcHpmR(i1,i3,i2)
colorfactor=3
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFd2(i3),MFu2(i1),MHpm2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fu, Hpm, bar[Fd]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MFu(i1)*MFd(i3)*Fep_FFSbar(MFd2(i3),MFu2(i1),MHpm2(i2),Qscale)
    End Do
  End Do
End Do
results1(35)=temp
! ---- Fv,hh,bar[Fv] ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFvFvhhL(i3,i1,i2)
coup1R = cplcFvFvhhR(i3,i1,i2)
coup2L = cplcFvFvhhL(i1,i3,i2)
coup2R = cplcFvFvhhR(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFv2(i3),MFv2(i1),Mhh2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fv, hh, bar[Fv]]' 
temp=temp+colorfactor*0.5_dp*2*Real(coup1L*conjg(coup1R),dp)*MFv(i1)*MFv(i3)*Fep_FFSbar(MFv2(i3),MFv2(i1),Mhh2(i2),Qscale)
    End Do
  End Do
End Do
results1(36)=temp
! ---- Fv,Hpm,bar[Fe] ----
temp=0._dp
Do i1=1,3
 Do i2=1,2
    Do i3=1,3
coup1L = cplcFeFvHpmL(i3,i1,i2)
coup1R = cplcFeFvHpmR(i3,i1,i2)
coup2L = cplcFvFecHpmL(i1,i3,i2)
coup2R = cplcFvFecHpmR(i1,i3,i2)
colorfactor=1
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFe2(i3),MFv2(i1),MHpm2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fv, Hpm, bar[Fe]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MFv(i1)*MFe(i3)*Fep_FFSbar(MFe2(i3),MFv2(i1),MHpm2(i2),Qscale)
    End Do
  End Do
End Do
results1(37)=temp
! ---- Glu,Sd,bar[Fd] ----
temp=0._dp
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFdGluSdL(i3,i2)
coup1R = cplcFdGluSdR(i3,i2)
coup2L = cplGluFdcSdL(i3,i2)
coup2R = cplGluFdcSdR(i3,i2)
colorfactor=4
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFd2(i3),MGlu2,MSd2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Glu, Sd, bar[Fd]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MGlu*MFd(i3)*Fep_FFSbar(MFd2(i3),MGlu2,MSd2(i2),Qscale)
    End Do
  End Do
results1(38)=temp
! ---- Glu,Su,bar[Fu] ----
temp=0._dp
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFuGluSuL(i3,i2)
coup1R = cplcFuGluSuR(i3,i2)
coup2L = cplGluFucSuL(i3,i2)
coup2R = cplGluFucSuR(i3,i2)
colorfactor=4
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFu2(i3),MGlu2,MSu2(i2),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Glu, Su, bar[Fu]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MGlu*MFu(i3)*Fep_FFSbar(MFu2(i3),MGlu2,MSu2(i2),Qscale)
    End Do
  End Do
results1(39)=temp
! ---- Sd,bar[Cha],bar[Fu] ----
temp=0._dp
Do i1=1,6
 Do i2=1,2
    Do i3=1,3
coup1L = cplcChacFuSdL(i2,i3,i1)
coup1R = cplcChacFuSdR(i2,i3,i1)
coup2L = cplChaFucSdL(i2,i3,i1)
coup2R = cplChaFucSdR(i2,i3,i1)
colorfactor=3
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFu2(i3),MCha2(i2),MSd2(i1),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Sd, bar[Cha], bar[Fu]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MCha(i2)*MFu(i3)*Fep_FFSbar(MFu2(i3),MCha2(i2),MSd2(i1),Qscale)
    End Do
  End Do
End Do
results1(40)=temp
! ---- Se,bar[Cha],bar[Fv] ----
temp=0._dp
Do i1=1,6
 Do i2=1,2
    Do i3=1,3
coup1L = cplcChacFvSeL(i2,i3,i1)
coup1R = cplcChacFvSeR(i2,i3,i1)
coup2L = cplChaFvcSeL(i2,i3,i1)
coup2R = cplChaFvcSeR(i2,i3,i1)
colorfactor=1
temp=temp+colorfactor*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFS(MFv2(i3),MCha2(i2),MSe2(i1),Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Se, bar[Cha], bar[Fv]]' 
temp=temp+colorfactor*2*Real(coup1L*conjg(coup1R),dp)*MCha(i2)*MFv(i3)*Fep_FFSbar(MFv2(i3),MCha2(i2),MSe2(i1),Qscale)
    End Do
  End Do
End Do
results1(41)=temp
! ----- diagrams of type SSV, 2 ------ 
! ---- Sd,VG,conj[Sd] ----
temp=0._dp
Do i1=1,6
    Do i3=1,6
coup1 = cplSdcSdVG(i1,i3)
coup2 = cplSdcSdVG(i3,i1)
colorfactor=4
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSV(MSd2(i3),MSd2(i1),0._dp,Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSV C[Sd, VG, conj[Sd]]' 
    End Do
End Do
results1(42)=temp
! ---- Su,VG,conj[Su] ----
temp=0._dp
Do i1=1,6
    Do i3=1,6
coup1 = cplSucSuVG(i1,i3)
coup2 = cplSucSuVG(i3,i1)
colorfactor=4
temp=temp+colorfactor*0.5_dp*abs(coup1)**2*Fep_SSV(MSu2(i3),MSu2(i1),0._dp,Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSV C[Su, VG, conj[Su]]' 
    End Do
End Do
results1(43)=temp
! ----- diagrams of type FFV, 3 ------ 
! ---- Fd,VG,bar[Fd] ----
temp=0._dp
Do i1=1,3
    Do i3=1,3
coup1L = cplcFdFdVGL(i3,i1)
coup1R = cplcFdFdVGR(i3,i1)
coup2L = cplcFdFdVGL(i1,i3)
coup2R = cplcFdFdVGR(i1,i3)
colorfactor=4
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFV(MFd2(i3),MFd2(i1),0._dp,Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFV C[Fd, VG, bar[Fd]]' 
temp=temp+colorfactor*0.5_dp*2*Real(-coup1L*conjg(coup1R),dp)*MFd(i1)*MFd(i3)*Fep_FFVbar(MFd2(i3),MFd2(i1),0._dp,Qscale)
    End Do
End Do
results1(44)=temp
! ---- Fu,VG,bar[Fu] ----
temp=0._dp
Do i1=1,3
    Do i3=1,3
coup1L = cplcFuFuVGL(i3,i1)
coup1R = cplcFuFuVGR(i3,i1)
coup2L = cplcFuFuVGL(i1,i3)
coup2R = cplcFuFuVGR(i1,i3)
colorfactor=4
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2+abs(coup1R)**2)*Fep_FFV(MFu2(i3),MFu2(i1),0._dp,Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFV C[Fu, VG, bar[Fu]]' 
temp=temp+colorfactor*0.5_dp*2*Real(-coup1L*conjg(coup1R),dp)*MFu(i1)*MFu(i3)*Fep_FFVbar(MFu2(i3),MFu2(i1),0._dp,Qscale)
    End Do
End Do
results1(45)=temp
! ---- Glu,Glu,VG ----
temp=0._dp
coup1L = cplGluGluVGL
coup1R = cplGluGluVGR
coup2L = cplGluGluVGL
coup2R = cplGluGluVGR
colorfactor=24
temp=temp+colorfactor*0.5_dp*(abs(coup1L)**2)*Fep_FFV(MGlu2,MGlu2,0._dp,Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFV C[Glu, Glu, VG]' 
temp=temp+colorfactor*0.5_dp*Real(coup1L**2,dp)*MGlu*MGlu*Fep_FFVbar(MGlu2,MGlu2,0._dp,Qscale)
results1(46)=temp
! ----- diagrams of type VVV, 1 ------ 
! ---- VG,VG,VG ----
temp=0._dp
coup1 = cplVGVGVG
coup2 = cplVGVGVG
colorfactor=24
temp=temp+colorfactor*1._dp/12._dp*(coup1)**2*Fep_gauge(0._dp,0._dp,0._dp,Qscale)
 if (.not.(temp.eq.temp))  write(*,*) 'NaN at VVV C[VG, VG, VG]' 
results1(47)=temp
! ----- Topology2: diagrams w. 2 Particles and 1 Vertex

! ----- diagrams of type SS, 26 ------ 
! ---- Ah,Ah ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
coup1 = cplAhAhAhAh(i1,i1,i2,i2)
temp=temp+(-1._dp/8._dp)*(-coup1)*Fep_SS(MAh2(i1),MAh2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Ah, Ah]' 
  End Do
End Do
results2(1)=temp
! ---- Ah,hh ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
coup1 = cplAhAhhhhh(i1,i1,i2,i2)
temp=temp+(-0.25_dp)*(-coup1)*Fep_SS(MAh2(i1),Mhh2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, hh, hh]' 
  End Do
End Do
results2(2)=temp
! ---- Ah,Hpm ----
temp=0._dp
Do i1=1,3
 Do i2=1,2
coup1 = cplAhAhHpmcHpm(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MAh2(i1),MHpm2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Hpm, conj[Hpm]]' 
  End Do
End Do
results2(3)=temp
! ---- Ah,Sd ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSdcSd(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MAh2(i1),MSd2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Sd, conj[Sd]]' 
  End Do
End Do
results2(4)=temp
! ---- Ah,Se ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSecSe(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MAh2(i1),MSe2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Se, conj[Se]]' 
  End Do
End Do
results2(5)=temp
! ---- Ah,Su ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSucSu(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MAh2(i1),MSu2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Su, conj[Su]]' 
  End Do
End Do
results2(6)=temp
! ---- Ah,Sv ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSvcSv(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MAh2(i1),MSv2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Sv, conj[Sv]]' 
  End Do
End Do
results2(7)=temp
! ---- hh,hh ----
temp=0._dp
Do i1=1,3
 Do i2=1,3
coup1 = cplhhhhhhhh(i1,i1,i2,i2)
temp=temp+(-1._dp/8._dp)*(-coup1)*Fep_SS(Mhh2(i1),Mhh2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, hh, hh]' 
  End Do
End Do
results2(8)=temp
! ---- hh,Hpm ----
temp=0._dp
Do i1=1,3
 Do i2=1,2
coup1 = cplhhhhHpmcHpm(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(Mhh2(i1),MHpm2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Hpm, conj[Hpm]]' 
  End Do
End Do
results2(9)=temp
! ---- hh,Sd ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSdcSd(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(Mhh2(i1),MSd2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Sd, conj[Sd]]' 
  End Do
End Do
results2(10)=temp
! ---- hh,Se ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSecSe(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(Mhh2(i1),MSe2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Se, conj[Se]]' 
  End Do
End Do
results2(11)=temp
! ---- hh,Su ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSucSu(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(Mhh2(i1),MSu2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Su, conj[Su]]' 
  End Do
End Do
results2(12)=temp
! ---- hh,Sv ----
temp=0._dp
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSvcSv(i1,i1,i2,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(Mhh2(i1),MSv2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Sv, conj[Sv]]' 
  End Do
End Do
results2(13)=temp
! ---- Hpm,Hpm ----
temp=0._dp
Do i1=1,2
 Do i2=1,2
coup1 = cplHpmHpmcHpmcHpm(i1,i2,i1,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MHpm2(i1),MHpm2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Hpm, conj[Hpm], conj[Hpm]]' 
  End Do
End Do
results2(14)=temp
! ---- Hpm,Sd ----
temp=0._dp
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSdcHpmcSd(i1,i2,i1,i2)
temp=temp+(-1._dp)*(-coup1)*Fep_SS(MHpm2(i1),MSd2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Sd, conj[Hpm], conj[Sd]]' 
  End Do
End Do
results2(15)=temp
! ---- Hpm,Se ----
temp=0._dp
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSecHpmcSe(i1,i2,i1,i2)
temp=temp+(-1._dp)*(-coup1)*Fep_SS(MHpm2(i1),MSe2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Se, conj[Hpm], conj[Se]]' 
  End Do
End Do
results2(16)=temp
! ---- Hpm,Su ----
temp=0._dp
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSucHpmcSu(i1,i2,i1,i2)
temp=temp+(-1._dp)*(-coup1)*Fep_SS(MHpm2(i1),MSu2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Su, conj[Hpm], conj[Su]]' 
  End Do
End Do
results2(17)=temp
! ---- Hpm,Sv ----
temp=0._dp
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSvcHpmcSv(i1,i2,i1,i2)
temp=temp+(-1._dp)*(-coup1)*Fep_SS(MHpm2(i1),MSv2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Sv, conj[Hpm], conj[Sv]]' 
  End Do
End Do
results2(18)=temp
! ---- Sd,Sd ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
coup1 = cplSdSdcSdcSd(i1,i2,i1,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MSd2(i1),MSd2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Sd, Sd, conj[Sd], conj[Sd]]' 
  End Do
End Do
results2(19)=temp
! ---- Sd,Se ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
coup1 = cplSdSecSdcSe(i1,i2,i1,i2)
temp=temp+(-1._dp)*(-coup1)*Fep_SS(MSd2(i1),MSe2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Sd, Se, conj[Sd], conj[Se]]' 
  End Do
End Do
results2(20)=temp
! ---- Sd,Su ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
coup1 = cplSdSucSdcSu(i1,i2,i1,i2)
temp=temp+(-1._dp)*(-coup1)*Fep_SS(MSd2(i1),MSu2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Sd, Su, conj[Sd], conj[Su]]' 
  End Do
End Do
results2(21)=temp
! ---- Se,Se ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
coup1 = cplSeSecSecSe(i1,i2,i1,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MSe2(i1),MSe2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Se, Se, conj[Se], conj[Se]]' 
  End Do
End Do
results2(22)=temp
! ---- Se,Sv ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
coup1 = cplSeSvcSecSv(i1,i2,i1,i2)
temp=temp+(-1._dp)*(-coup1)*Fep_SS(MSe2(i1),MSv2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Se, Sv, conj[Se], conj[Sv]]' 
  End Do
End Do
results2(23)=temp
! ---- Su,Su ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
coup1 = cplSuSucSucSu(i1,i2,i1,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MSu2(i1),MSu2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Su, Su, conj[Su], conj[Su]]' 
  End Do
End Do
results2(24)=temp
! ---- Su,Sv ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
coup1 = cplSuSvcSucSv(i1,i2,i1,i2)
temp=temp+(-1._dp)*(-coup1)*Fep_SS(MSu2(i1),MSv2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Su, Sv, conj[Su], conj[Sv]]' 
  End Do
End Do
results2(25)=temp
! ---- Sv,Sv ----
temp=0._dp
Do i1=1,6
 Do i2=1,6
coup1 = cplSvSvcSvcSv(i1,i2,i1,i2)
temp=temp+(-0.5_dp)*(-coup1)*Fep_SS(MSv2(i1),MSv2(i2),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Sv, Sv, conj[Sv], conj[Sv]]' 
  End Do
End Do
results2(26)=temp
! ----- diagrams of type VS, 2 ------ 
! ---- Sd,VG ----
temp=0._dp
Do i1=1,6
coup1 = cplSdcSdVGVG(i1,i1)
temp=temp+0.25_dp*coup1*Fep_VS(0._dp,MSd2(i1),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at VS C[Sd, VG, VG, conj[Sd]]' 
End Do
results2(27)=temp
! ---- Su,VG ----
temp=0._dp
Do i1=1,6
coup1 = cplSucSuVGVG(i1,i1)
temp=temp+0.25_dp*coup1*Fep_VS(0._dp,MSu2(i1),Qscale)
if (.not.(temp.eq.temp))  write(*,*) 'NaN at VS C[Su, VG, VG, conj[Su]]' 
End Do
results2(28)=temp
result = sum(results1)+sum(results2) 
effPot2L = result * oo16pi2 * oo16Pi2
End Subroutine CalculateEffPot2Loop


Subroutine SecondDerivativeEffPot2Loop(vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,             & 
& Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,             & 
& mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,               & 
& mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,kont,pi2L,ti2L)

Implicit None 
Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Real(dp),Intent(in) :: vd,vu,vS

Integer, Intent(inout):: kont
Real(dp), Intent(out) :: pi2L(3,3),ti2L(3)
Integer :: i,i1,i2,i3,NrContr 
Integer :: iv1, iv2 
Integer :: NrContr1,NrContr2 !nr of contributing diagrams
Real(dp) :: Q2,colorfactor,coeff,coeffbar
Complex(dp) :: result,result_ti,temp,temp_ti,temp_tj,tempbar,tempbar_ti,tempbar_tj
Complex(dp) :: coup1,coup2,coup1L,coup1R,coup2L,coup2R,coupx,coupxbar
Complex(dp) :: Di_coup1,Di_coup2,Di_coup1L,Di_coup1R,Di_coup2L,Di_coup2R,Di_coupx,Di_coupxbar
Complex(dp) :: Dj_coup1,Dj_coup2,Dj_coup1L,Dj_coup1R,Dj_coup2L,Dj_coup2R,Dj_coupx,Dj_coupxbar
Complex(dp) :: DDcoup1,DDcoup2,DDcoup1L,DDcoup1R,DDcoup2L,DDcoup2R,DDcoupx,DDcoupxbar
Complex(dp) :: results1(47),results2(28)
Complex(dp) :: results1_ti(47),results2_ti(28)
Real(dp) :: gout(37980) 
Complex(dp) :: cplAhAhAh(3,3,3),cplAhAhhh(3,3,3),cplAhhhhh(3,3,3),cplAhHpmcHpm(3,2,2),               & 
& cplAhSdcSd(3,6,6),cplAhSecSe(3,6,6),cplAhSucSu(3,6,6),cplAhSvcSv(3,6,6),               & 
& cplhhhhhh(3,3,3),cplhhHpmcHpm(3,2,2),cplhhSdcSd(3,6,6),cplhhSecSe(3,6,6),              & 
& cplhhSucSu(3,6,6),cplhhSvcSv(3,6,6),cplHpmSucSd(2,6,6),cplHpmSvcSe(2,6,6),             & 
& cplSdcHpmcSu(6,2,6),cplSecHpmcSv(6,2,6),cplSdcSdVG(6,6),cplSucSuVG(6,6),               & 
& cplVGVGVG,cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplChiChiAhL(6,6,3),               & 
& cplChiChiAhR(6,6,3),cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),cplcFeFeAhL(3,3,3),          & 
& cplcFeFeAhR(3,3,3),cplcFuFuAhL(3,3,3),cplcFuFuAhR(3,3,3),cplcFvFvAhL(3,3,3),           & 
& cplcFvFvAhR(3,3,3),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),cplChaFucSdL(2,3,6),    & 
& cplChaFucSdR(2,3,6),cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplcChaChahhL(2,2,3),      & 
& cplcChaChahhR(2,2,3),cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),cplcFeChaSvL(3,2,6),      & 
& cplcFeChaSvR(3,2,6),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiFdcSdL(6,3,6),       & 
& cplChiFdcSdR(6,3,6),cplChiFecSeL(6,3,6),cplChiFecSeR(6,3,6),cplChiFucSuL(6,3,6),       & 
& cplChiFucSuR(6,3,6),cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6),cplcChaChiHpmL(2,6,2),     & 
& cplcChaChiHpmR(2,6,2),cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFeChiSeL(3,6,6),     & 
& cplcFeChiSeR(3,6,6),cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFvChiSvL(3,6,6),       & 
& cplcFvChiSvR(3,6,6),cplGluFdcSdL(3,6),cplGluFdcSdR(3,6),cplcFdFdhhL(3,3,3),            & 
& cplcFdFdhhR(3,3,3),cplcChaFdcSuL(2,3,6),cplcChaFdcSuR(2,3,6),cplcFuFdcHpmL(3,3,2),     & 
& cplcFuFdcHpmR(3,3,2),cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcChaFecSvL(2,3,6),       & 
& cplcChaFecSvR(2,3,6),cplcFvFecHpmL(3,3,2),cplcFvFecHpmR(3,3,2),cplGluFucSuL(3,6),      & 
& cplGluFucSuR(3,6),cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFdFuHpmL(3,3,2),           & 
& cplcFdFuHpmR(3,3,2),cplcFvFvhhL(3,3,3),cplcFvFvhhR(3,3,3),cplcFeFvHpmL(3,3,2),         & 
& cplcFeFvHpmR(3,3,2),cplcFdGluSdL(3,6),cplcFdGluSdR(3,6),cplcFuGluSuL(3,6),             & 
& cplcFuGluSuR(3,6),cplcChacFuSdL(2,3,6),cplcChacFuSdR(2,3,6),cplcChacFvSeL(2,3,6),      & 
& cplcChacFvSeR(2,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFuFuVGL(3,3),               & 
& cplcFuFuVGR(3,3),cplGluGluVGL,cplGluGluVGR

Complex(dp) :: cplAhAhAhAh(3,3,3,3),cplAhAhhhhh(3,3,3,3),cplAhAhHpmcHpm(3,3,2,2),cplAhAhSdcSd(3,3,6,6),& 
& cplAhAhSecSe(3,3,6,6),cplAhAhSucSu(3,3,6,6),cplAhAhSvcSv(3,3,6,6),cplhhhhhhhh(3,3,3,3),& 
& cplhhhhHpmcHpm(3,3,2,2),cplhhhhSdcSd(3,3,6,6),cplhhhhSecSe(3,3,6,6),cplhhhhSucSu(3,3,6,6),& 
& cplhhhhSvcSv(3,3,6,6),cplHpmHpmcHpmcHpm(2,2,2,2),cplHpmSdcHpmcSd(2,6,2,6),             & 
& cplHpmSecHpmcSe(2,6,2,6),cplHpmSucHpmcSu(2,6,2,6),cplHpmSvcHpmcSv(2,6,2,6),            & 
& cplSdSdcSdcSd(6,6,6,6),cplSdSecSdcSe(6,6,6,6),cplSdSucSdcSu(6,6,6,6),cplSeSecSecSe(6,6,6,6),& 
& cplSeSvcSecSv(6,6,6,6),cplSuSucSucSu(6,6,6,6),cplSuSvcSucSv(6,6,6,6),cplSvSvcSvcSv(6,6,6,6),& 
& cplSdcSdVGVG(6,6),cplSucSuVGVG(6,6)

Complex(dp) :: dcplAhAhAh(3,3,3,3),dcplAhAhhh(3,3,3,3),dcplAhhhhh(3,3,3,3),dcplAhHpmcHpm(3,2,2,3),   & 
& dcplAhSdcSd(3,6,6,3),dcplAhSecSe(3,6,6,3),dcplAhSucSu(3,6,6,3),dcplAhSvcSv(3,6,6,3),   & 
& dcplhhhhhh(3,3,3,3),dcplhhHpmcHpm(3,2,2,3),dcplhhSdcSd(3,6,6,3),dcplhhSecSe(3,6,6,3),  & 
& dcplhhSucSu(3,6,6,3),dcplhhSvcSv(3,6,6,3),dcplHpmSucSd(2,6,6,3),dcplHpmSvcSe(2,6,6,3), & 
& dcplSdcHpmcSu(6,2,6,3),dcplSecHpmcSv(6,2,6,3),dcplSdcSdVG(6,6,3),dcplSucSuVG(6,6,3),   & 
& dcplVGVGVG(3),dcplcChaChaAhL(2,2,3,3),dcplcChaChaAhR(2,2,3,3),dcplChiChiAhL(6,6,3,3),  & 
& dcplChiChiAhR(6,6,3,3),dcplcFdFdAhL(3,3,3,3),dcplcFdFdAhR(3,3,3,3),dcplcFeFeAhL(3,3,3,3),& 
& dcplcFeFeAhR(3,3,3,3),dcplcFuFuAhL(3,3,3,3),dcplcFuFuAhR(3,3,3,3),dcplcFvFvAhL(3,3,3,3),& 
& dcplcFvFvAhR(3,3,3,3),dcplChiChacHpmL(6,2,2,3),dcplChiChacHpmR(6,2,2,3),               & 
& dcplChaFucSdL(2,3,6,3),dcplChaFucSdR(2,3,6,3),dcplChaFvcSeL(2,3,6,3),dcplChaFvcSeR(2,3,6,3),& 
& dcplcChaChahhL(2,2,3,3),dcplcChaChahhR(2,2,3,3),dcplcFdChaSuL(3,2,6,3),dcplcFdChaSuR(3,2,6,3),& 
& dcplcFeChaSvL(3,2,6,3),dcplcFeChaSvR(3,2,6,3),dcplChiChihhL(6,6,3,3),dcplChiChihhR(6,6,3,3),& 
& dcplChiFdcSdL(6,3,6,3),dcplChiFdcSdR(6,3,6,3),dcplChiFecSeL(6,3,6,3),dcplChiFecSeR(6,3,6,3),& 
& dcplChiFucSuL(6,3,6,3),dcplChiFucSuR(6,3,6,3),dcplChiFvcSvL(6,3,6,3),dcplChiFvcSvR(6,3,6,3),& 
& dcplcChaChiHpmL(2,6,2,3),dcplcChaChiHpmR(2,6,2,3),dcplcFdChiSdL(3,6,6,3),              & 
& dcplcFdChiSdR(3,6,6,3),dcplcFeChiSeL(3,6,6,3),dcplcFeChiSeR(3,6,6,3),dcplcFuChiSuL(3,6,6,3),& 
& dcplcFuChiSuR(3,6,6,3),dcplcFvChiSvL(3,6,6,3),dcplcFvChiSvR(3,6,6,3),dcplGluFdcSdL(3,6,3),& 
& dcplGluFdcSdR(3,6,3),dcplcFdFdhhL(3,3,3,3),dcplcFdFdhhR(3,3,3,3),dcplcChaFdcSuL(2,3,6,3),& 
& dcplcChaFdcSuR(2,3,6,3),dcplcFuFdcHpmL(3,3,2,3),dcplcFuFdcHpmR(3,3,2,3),               & 
& dcplcFeFehhL(3,3,3,3),dcplcFeFehhR(3,3,3,3),dcplcChaFecSvL(2,3,6,3),dcplcChaFecSvR(2,3,6,3),& 
& dcplcFvFecHpmL(3,3,2,3),dcplcFvFecHpmR(3,3,2,3),dcplGluFucSuL(3,6,3),dcplGluFucSuR(3,6,3),& 
& dcplcFuFuhhL(3,3,3,3),dcplcFuFuhhR(3,3,3,3),dcplcFdFuHpmL(3,3,2,3),dcplcFdFuHpmR(3,3,2,3),& 
& dcplcFvFvhhL(3,3,3,3),dcplcFvFvhhR(3,3,3,3),dcplcFeFvHpmL(3,3,2,3),dcplcFeFvHpmR(3,3,2,3),& 
& dcplcFdGluSdL(3,6,3),dcplcFdGluSdR(3,6,3),dcplcFuGluSuL(3,6,3),dcplcFuGluSuR(3,6,3),   & 
& dcplcChacFuSdL(2,3,6,3),dcplcChacFuSdR(2,3,6,3),dcplcChacFvSeL(2,3,6,3),               & 
& dcplcChacFvSeR(2,3,6,3),dcplcFdFdVGL(3,3,3),dcplcFdFdVGR(3,3,3),dcplcFuFuVGL(3,3,3),   & 
& dcplcFuFuVGR(3,3,3),dcplGluGluVGL(3),dcplGluGluVGR(3)

Complex(dp) :: dcplAhAhAhAh(3,3,3,3,3),dcplAhAhhhhh(3,3,3,3,3),dcplAhAhHpmcHpm(3,3,2,2,3),           & 
& dcplAhAhSdcSd(3,3,6,6,3),dcplAhAhSecSe(3,3,6,6,3),dcplAhAhSucSu(3,3,6,6,3),            & 
& dcplAhAhSvcSv(3,3,6,6,3),dcplhhhhhhhh(3,3,3,3,3),dcplhhhhHpmcHpm(3,3,2,2,3),           & 
& dcplhhhhSdcSd(3,3,6,6,3),dcplhhhhSecSe(3,3,6,6,3),dcplhhhhSucSu(3,3,6,6,3),            & 
& dcplhhhhSvcSv(3,3,6,6,3),dcplHpmHpmcHpmcHpm(2,2,2,2,3),dcplHpmSdcHpmcSd(2,6,2,6,3),    & 
& dcplHpmSecHpmcSe(2,6,2,6,3),dcplHpmSucHpmcSu(2,6,2,6,3),dcplHpmSvcHpmcSv(2,6,2,6,3),   & 
& dcplSdSdcSdcSd(6,6,6,6,3),dcplSdSecSdcSe(6,6,6,6,3),dcplSdSucSdcSu(6,6,6,6,3),         & 
& dcplSeSecSecSe(6,6,6,6,3),dcplSeSvcSecSv(6,6,6,6,3),dcplSuSucSucSu(6,6,6,6,3),         & 
& dcplSuSvcSucSv(6,6,6,6,3),dcplSvSvcSvcSv(6,6,6,6,3),dcplSdcSdVGVG(6,6,3),              & 
& dcplSucSuVGVG(6,6,3)

Complex(dp) :: ddcplAhAhAh(3,3,3,3,3),ddcplAhAhhh(3,3,3,3,3),ddcplAhhhhh(3,3,3,3,3),ddcplAhHpmcHpm(3,2,2,3,3),& 
& ddcplAhSdcSd(3,6,6,3,3),ddcplAhSecSe(3,6,6,3,3),ddcplAhSucSu(3,6,6,3,3),               & 
& ddcplAhSvcSv(3,6,6,3,3),ddcplhhhhhh(3,3,3,3,3),ddcplhhHpmcHpm(3,2,2,3,3),              & 
& ddcplhhSdcSd(3,6,6,3,3),ddcplhhSecSe(3,6,6,3,3),ddcplhhSucSu(3,6,6,3,3),               & 
& ddcplhhSvcSv(3,6,6,3,3),ddcplHpmSucSd(2,6,6,3,3),ddcplHpmSvcSe(2,6,6,3,3),             & 
& ddcplSdcHpmcSu(6,2,6,3,3),ddcplSecHpmcSv(6,2,6,3,3),ddcplSdcSdVG(6,6,3,3),             & 
& ddcplSucSuVG(6,6,3,3),ddcplVGVGVG(3,3),ddcplcChaChaAhL(2,2,3,3,3),ddcplcChaChaAhR(2,2,3,3,3),& 
& ddcplChiChiAhL(6,6,3,3,3),ddcplChiChiAhR(6,6,3,3,3),ddcplcFdFdAhL(3,3,3,3,3),          & 
& ddcplcFdFdAhR(3,3,3,3,3),ddcplcFeFeAhL(3,3,3,3,3),ddcplcFeFeAhR(3,3,3,3,3),            & 
& ddcplcFuFuAhL(3,3,3,3,3),ddcplcFuFuAhR(3,3,3,3,3),ddcplcFvFvAhL(3,3,3,3,3),            & 
& ddcplcFvFvAhR(3,3,3,3,3),ddcplChiChacHpmL(6,2,2,3,3),ddcplChiChacHpmR(6,2,2,3,3),      & 
& ddcplChaFucSdL(2,3,6,3,3),ddcplChaFucSdR(2,3,6,3,3),ddcplChaFvcSeL(2,3,6,3,3),         & 
& ddcplChaFvcSeR(2,3,6,3,3),ddcplcChaChahhL(2,2,3,3,3),ddcplcChaChahhR(2,2,3,3,3),       & 
& ddcplcFdChaSuL(3,2,6,3,3),ddcplcFdChaSuR(3,2,6,3,3),ddcplcFeChaSvL(3,2,6,3,3),         & 
& ddcplcFeChaSvR(3,2,6,3,3),ddcplChiChihhL(6,6,3,3,3),ddcplChiChihhR(6,6,3,3,3),         & 
& ddcplChiFdcSdL(6,3,6,3,3),ddcplChiFdcSdR(6,3,6,3,3),ddcplChiFecSeL(6,3,6,3,3),         & 
& ddcplChiFecSeR(6,3,6,3,3),ddcplChiFucSuL(6,3,6,3,3),ddcplChiFucSuR(6,3,6,3,3),         & 
& ddcplChiFvcSvL(6,3,6,3,3),ddcplChiFvcSvR(6,3,6,3,3),ddcplcChaChiHpmL(2,6,2,3,3),       & 
& ddcplcChaChiHpmR(2,6,2,3,3),ddcplcFdChiSdL(3,6,6,3,3),ddcplcFdChiSdR(3,6,6,3,3),       & 
& ddcplcFeChiSeL(3,6,6,3,3),ddcplcFeChiSeR(3,6,6,3,3),ddcplcFuChiSuL(3,6,6,3,3),         & 
& ddcplcFuChiSuR(3,6,6,3,3),ddcplcFvChiSvL(3,6,6,3,3),ddcplcFvChiSvR(3,6,6,3,3),         & 
& ddcplGluFdcSdL(3,6,3,3),ddcplGluFdcSdR(3,6,3,3),ddcplcFdFdhhL(3,3,3,3,3),              & 
& ddcplcFdFdhhR(3,3,3,3,3),ddcplcChaFdcSuL(2,3,6,3,3),ddcplcChaFdcSuR(2,3,6,3,3),        & 
& ddcplcFuFdcHpmL(3,3,2,3,3),ddcplcFuFdcHpmR(3,3,2,3,3),ddcplcFeFehhL(3,3,3,3,3),        & 
& ddcplcFeFehhR(3,3,3,3,3),ddcplcChaFecSvL(2,3,6,3,3),ddcplcChaFecSvR(2,3,6,3,3),        & 
& ddcplcFvFecHpmL(3,3,2,3,3),ddcplcFvFecHpmR(3,3,2,3,3),ddcplGluFucSuL(3,6,3,3),         & 
& ddcplGluFucSuR(3,6,3,3),ddcplcFuFuhhL(3,3,3,3,3),ddcplcFuFuhhR(3,3,3,3,3),             & 
& ddcplcFdFuHpmL(3,3,2,3,3),ddcplcFdFuHpmR(3,3,2,3,3),ddcplcFvFvhhL(3,3,3,3,3),          & 
& ddcplcFvFvhhR(3,3,3,3,3),ddcplcFeFvHpmL(3,3,2,3,3),ddcplcFeFvHpmR(3,3,2,3,3),          & 
& ddcplcFdGluSdL(3,6,3,3),ddcplcFdGluSdR(3,6,3,3),ddcplcFuGluSuL(3,6,3,3),               & 
& ddcplcFuGluSuR(3,6,3,3),ddcplcChacFuSdL(2,3,6,3,3),ddcplcChacFuSdR(2,3,6,3,3),         & 
& ddcplcChacFvSeL(2,3,6,3,3),ddcplcChacFvSeR(2,3,6,3,3),ddcplcFdFdVGL(3,3,3,3),          & 
& ddcplcFdFdVGR(3,3,3,3),ddcplcFuFuVGL(3,3,3,3),ddcplcFuFuVGR(3,3,3,3),ddcplGluGluVGL(3,3),& 
& ddcplGluGluVGR(3,3)

Complex(dp) :: ddcplAhAhAhAh(3,3,3,3,3,3),ddcplAhAhhhhh(3,3,3,3,3,3),ddcplAhAhHpmcHpm(3,3,2,2,3,3),  & 
& ddcplAhAhSdcSd(3,3,6,6,3,3),ddcplAhAhSecSe(3,3,6,6,3,3),ddcplAhAhSucSu(3,3,6,6,3,3),   & 
& ddcplAhAhSvcSv(3,3,6,6,3,3),ddcplhhhhhhhh(3,3,3,3,3,3),ddcplhhhhHpmcHpm(3,3,2,2,3,3),  & 
& ddcplhhhhSdcSd(3,3,6,6,3,3),ddcplhhhhSecSe(3,3,6,6,3,3),ddcplhhhhSucSu(3,3,6,6,3,3),   & 
& ddcplhhhhSvcSv(3,3,6,6,3,3),ddcplHpmHpmcHpmcHpm(2,2,2,2,3,3),ddcplHpmSdcHpmcSd(2,6,2,6,3,3),& 
& ddcplHpmSecHpmcSe(2,6,2,6,3,3),ddcplHpmSucHpmcSu(2,6,2,6,3,3),ddcplHpmSvcHpmcSv(2,6,2,6,3,3),& 
& ddcplSdSdcSdcSd(6,6,6,6,3,3),ddcplSdSecSdcSe(6,6,6,6,3,3),ddcplSdSucSdcSu(6,6,6,6,3,3),& 
& ddcplSeSecSecSe(6,6,6,6,3,3),ddcplSeSvcSecSv(6,6,6,6,3,3),ddcplSuSucSucSu(6,6,6,6,3,3),& 
& ddcplSuSvcSucSv(6,6,6,6,3,3),ddcplSvSvcSvcSv(6,6,6,6,3,3),ddcplSdcSdVGVG(6,6,3,3),     & 
& ddcplSucSuVGVG(6,6,3,3)

Real(dp) :: MSd(6),MSd2(6),MSv(6),MSv2(6),MFv(3),MFv2(3),MSu(6),MSu2(6),MSe(6),MSe2(6),           & 
& Mhh(3),Mhh2(3),MAh(3),MAh2(3),MHpm(2),MHpm2(2),MChi(6),MChi2(6),MCha(2),               & 
& MCha2(2),MFe(3),MFe2(3),MFd(3),MFd2(3),MFu(3),MFu2(3),MGlu,MGlu2,MVZ,MVZp,             & 
& MVZ2,MVZp2,MVWm,MVWm2

Complex(dp) :: dMSd(6,3),dMSd2(6,3),dMSv(6,3),dMSv2(6,3),dMFv(3,3),dMFv2(3,3),dMSu(6,3),             & 
& dMSu2(6,3),dMSe(6,3),dMSe2(6,3),dMhh(3,3),dMhh2(3,3),dMAh(3,3),dMAh2(3,3),             & 
& dMHpm(2,3),dMHpm2(2,3),dMChi(6,3),dMChi2(6,3),dMCha(2,3),dMCha2(2,3),dMFe(3,3),        & 
& dMFe2(3,3),dMFd(3,3),dMFd2(3,3),dMFu(3,3),dMFu2(3,3),dMGlu(1,3),dMGlu2(1,3),           & 
& dMVZ(1,3),dMVZp(1,3),dMVZ2(1,3),dMVZp2(1,3),dMVWm(1,3),dMVWm2(1,3)

Complex(dp) :: ddMSd(6,3,3),ddMSd2(6,3,3),ddMSv(6,3,3),ddMSv2(6,3,3),ddMFv(3,3,3),ddMFv2(3,3,3),     & 
& ddMSu(6,3,3),ddMSu2(6,3,3),ddMSe(6,3,3),ddMSe2(6,3,3),ddMhh(3,3,3),ddMhh2(3,3,3),      & 
& ddMAh(3,3,3),ddMAh2(3,3,3),ddMHpm(2,3,3),ddMHpm2(2,3,3),ddMChi(6,3,3),ddMChi2(6,3,3),  & 
& ddMCha(2,3,3),ddMCha2(2,3,3),ddMFe(3,3,3),ddMFe2(3,3,3),ddMFd(3,3,3),ddMFd2(3,3,3),    & 
& ddMFu(3,3,3),ddMFu2(3,3,3),ddMGlu(1,3,3),ddMGlu2(1,3,3),ddMVZ(1,3,3),ddMVZp(1,3,3),    & 
& ddMVZ2(1,3,3),ddMVZp2(1,3,3),ddMVWm(1,3,3),ddMVWm2(1,3,3)

!! ------------------------------------------------- 
!! Calculate masses, couplings and their derivatives 
!! ------------------------------------------------- 

Do i1=1,3
Call FirstDerivativeMassesCoups(i1,vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,            & 
& lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,              & 
& ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,            & 
& ms2,M1,M2,M3,M4,Tep,Tmup,gout)

Call GToMassesCoups(gout,MSd,MSd2,MSv,MSv2,MFv,MFv2,MSu,MSu2,MSe,MSe2,Mhh,            & 
& Mhh2,MAh,MAh2,MHpm,MHpm2,MChi,MChi2,MCha,MCha2,MFe,MFe2,MFd,MFd2,MFu,MFu2,             & 
& MGlu,MGlu2,MVZ,MVZp,MVZ2,MVZp2,MVWm,MVWm2,cplAhAhAh,cplAhAhhh,cplAhhhhh,               & 
& cplAhHpmcHpm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,       & 
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,      & 
& cplSecHpmcSv,cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,              & 
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,         & 
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,       & 
& cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,         & 
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         & 
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         & 
& cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,         & 
& cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,       & 
& cplcFvFecHpmL,cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,           & 
& cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,       & 
& cplcChacFvSeL,cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplGluGluVGL,cplGluGluVGR,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,         & 
& cplAhAhSecSe,cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,        & 
& cplhhhhSecSe,cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,              & 
& cplHpmSecHpmcSe,cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,           & 
& cplSdSucSdcSu,cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,   & 
& cplSdcSdVGVG,cplSucSuVGVG)

dMSd(:,i1) = MSd
dMSd2(:,i1) = MSd2
dMSv(:,i1) = MSv
dMSv2(:,i1) = MSv2
dMFv(:,i1) = MFv
dMFv2(:,i1) = MFv2
dMSu(:,i1) = MSu
dMSu2(:,i1) = MSu2
dMSe(:,i1) = MSe
dMSe2(:,i1) = MSe2
dMhh(:,i1) = Mhh
dMhh2(:,i1) = Mhh2
dMAh(:,i1) = MAh
dMAh2(:,i1) = MAh2
dMHpm(:,i1) = MHpm
dMHpm2(:,i1) = MHpm2
dMChi(:,i1) = MChi
dMChi2(:,i1) = MChi2
dMCha(:,i1) = MCha
dMCha2(:,i1) = MCha2
dMFe(:,i1) = MFe
dMFe2(:,i1) = MFe2
dMFd(:,i1) = MFd
dMFd2(:,i1) = MFd2
dMFu(:,i1) = MFu
dMFu2(:,i1) = MFu2
dMGlu(:,i1) = MGlu
dMGlu2(:,i1) = MGlu2
dMVZ(:,i1) = MVZ
dMVZp(:,i1) = MVZp
dMVZ2(:,i1) = MVZ2
dMVZp2(:,i1) = MVZp2
dMVWm(:,i1) = MVWm
dMVWm2(:,i1) = MVWm2
dcplAhAhAh(:,:,:,i1) = cplAhAhAh
dcplAhAhhh(:,:,:,i1) = cplAhAhhh
dcplAhhhhh(:,:,:,i1) = cplAhhhhh
dcplAhHpmcHpm(:,:,:,i1) = cplAhHpmcHpm
dcplAhSdcSd(:,:,:,i1) = cplAhSdcSd
dcplAhSecSe(:,:,:,i1) = cplAhSecSe
dcplAhSucSu(:,:,:,i1) = cplAhSucSu
dcplAhSvcSv(:,:,:,i1) = cplAhSvcSv
dcplhhhhhh(:,:,:,i1) = cplhhhhhh
dcplhhHpmcHpm(:,:,:,i1) = cplhhHpmcHpm
dcplhhSdcSd(:,:,:,i1) = cplhhSdcSd
dcplhhSecSe(:,:,:,i1) = cplhhSecSe
dcplhhSucSu(:,:,:,i1) = cplhhSucSu
dcplhhSvcSv(:,:,:,i1) = cplhhSvcSv
dcplHpmSucSd(:,:,:,i1) = cplHpmSucSd
dcplHpmSvcSe(:,:,:,i1) = cplHpmSvcSe
dcplSdcHpmcSu(:,:,:,i1) = cplSdcHpmcSu
dcplSecHpmcSv(:,:,:,i1) = cplSecHpmcSv
dcplSdcSdVG(:,:,i1) = cplSdcSdVG
dcplSucSuVG(:,:,i1) = cplSucSuVG
dcplVGVGVG(i1) = cplVGVGVG
dcplcChaChaAhL(:,:,:,i1) = cplcChaChaAhL
dcplcChaChaAhR(:,:,:,i1) = cplcChaChaAhR
dcplChiChiAhL(:,:,:,i1) = cplChiChiAhL
dcplChiChiAhR(:,:,:,i1) = cplChiChiAhR
dcplcFdFdAhL(:,:,:,i1) = cplcFdFdAhL
dcplcFdFdAhR(:,:,:,i1) = cplcFdFdAhR
dcplcFeFeAhL(:,:,:,i1) = cplcFeFeAhL
dcplcFeFeAhR(:,:,:,i1) = cplcFeFeAhR
dcplcFuFuAhL(:,:,:,i1) = cplcFuFuAhL
dcplcFuFuAhR(:,:,:,i1) = cplcFuFuAhR
dcplcFvFvAhL(:,:,:,i1) = cplcFvFvAhL
dcplcFvFvAhR(:,:,:,i1) = cplcFvFvAhR
dcplChiChacHpmL(:,:,:,i1) = cplChiChacHpmL
dcplChiChacHpmR(:,:,:,i1) = cplChiChacHpmR
dcplChaFucSdL(:,:,:,i1) = cplChaFucSdL
dcplChaFucSdR(:,:,:,i1) = cplChaFucSdR
dcplChaFvcSeL(:,:,:,i1) = cplChaFvcSeL
dcplChaFvcSeR(:,:,:,i1) = cplChaFvcSeR
dcplcChaChahhL(:,:,:,i1) = cplcChaChahhL
dcplcChaChahhR(:,:,:,i1) = cplcChaChahhR
dcplcFdChaSuL(:,:,:,i1) = cplcFdChaSuL
dcplcFdChaSuR(:,:,:,i1) = cplcFdChaSuR
dcplcFeChaSvL(:,:,:,i1) = cplcFeChaSvL
dcplcFeChaSvR(:,:,:,i1) = cplcFeChaSvR
dcplChiChihhL(:,:,:,i1) = cplChiChihhL
dcplChiChihhR(:,:,:,i1) = cplChiChihhR
dcplChiFdcSdL(:,:,:,i1) = cplChiFdcSdL
dcplChiFdcSdR(:,:,:,i1) = cplChiFdcSdR
dcplChiFecSeL(:,:,:,i1) = cplChiFecSeL
dcplChiFecSeR(:,:,:,i1) = cplChiFecSeR
dcplChiFucSuL(:,:,:,i1) = cplChiFucSuL
dcplChiFucSuR(:,:,:,i1) = cplChiFucSuR
dcplChiFvcSvL(:,:,:,i1) = cplChiFvcSvL
dcplChiFvcSvR(:,:,:,i1) = cplChiFvcSvR
dcplcChaChiHpmL(:,:,:,i1) = cplcChaChiHpmL
dcplcChaChiHpmR(:,:,:,i1) = cplcChaChiHpmR
dcplcFdChiSdL(:,:,:,i1) = cplcFdChiSdL
dcplcFdChiSdR(:,:,:,i1) = cplcFdChiSdR
dcplcFeChiSeL(:,:,:,i1) = cplcFeChiSeL
dcplcFeChiSeR(:,:,:,i1) = cplcFeChiSeR
dcplcFuChiSuL(:,:,:,i1) = cplcFuChiSuL
dcplcFuChiSuR(:,:,:,i1) = cplcFuChiSuR
dcplcFvChiSvL(:,:,:,i1) = cplcFvChiSvL
dcplcFvChiSvR(:,:,:,i1) = cplcFvChiSvR
dcplGluFdcSdL(:,:,i1) = cplGluFdcSdL
dcplGluFdcSdR(:,:,i1) = cplGluFdcSdR
dcplcFdFdhhL(:,:,:,i1) = cplcFdFdhhL
dcplcFdFdhhR(:,:,:,i1) = cplcFdFdhhR
dcplcChaFdcSuL(:,:,:,i1) = cplcChaFdcSuL
dcplcChaFdcSuR(:,:,:,i1) = cplcChaFdcSuR
dcplcFuFdcHpmL(:,:,:,i1) = cplcFuFdcHpmL
dcplcFuFdcHpmR(:,:,:,i1) = cplcFuFdcHpmR
dcplcFeFehhL(:,:,:,i1) = cplcFeFehhL
dcplcFeFehhR(:,:,:,i1) = cplcFeFehhR
dcplcChaFecSvL(:,:,:,i1) = cplcChaFecSvL
dcplcChaFecSvR(:,:,:,i1) = cplcChaFecSvR
dcplcFvFecHpmL(:,:,:,i1) = cplcFvFecHpmL
dcplcFvFecHpmR(:,:,:,i1) = cplcFvFecHpmR
dcplGluFucSuL(:,:,i1) = cplGluFucSuL
dcplGluFucSuR(:,:,i1) = cplGluFucSuR
dcplcFuFuhhL(:,:,:,i1) = cplcFuFuhhL
dcplcFuFuhhR(:,:,:,i1) = cplcFuFuhhR
dcplcFdFuHpmL(:,:,:,i1) = cplcFdFuHpmL
dcplcFdFuHpmR(:,:,:,i1) = cplcFdFuHpmR
dcplcFvFvhhL(:,:,:,i1) = cplcFvFvhhL
dcplcFvFvhhR(:,:,:,i1) = cplcFvFvhhR
dcplcFeFvHpmL(:,:,:,i1) = cplcFeFvHpmL
dcplcFeFvHpmR(:,:,:,i1) = cplcFeFvHpmR
dcplcFdGluSdL(:,:,i1) = cplcFdGluSdL
dcplcFdGluSdR(:,:,i1) = cplcFdGluSdR
dcplcFuGluSuL(:,:,i1) = cplcFuGluSuL
dcplcFuGluSuR(:,:,i1) = cplcFuGluSuR
dcplcChacFuSdL(:,:,:,i1) = cplcChacFuSdL
dcplcChacFuSdR(:,:,:,i1) = cplcChacFuSdR
dcplcChacFvSeL(:,:,:,i1) = cplcChacFvSeL
dcplcChacFvSeR(:,:,:,i1) = cplcChacFvSeR
dcplcFdFdVGL(:,:,i1) = cplcFdFdVGL
dcplcFdFdVGR(:,:,i1) = cplcFdFdVGR
dcplcFuFuVGL(:,:,i1) = cplcFuFuVGL
dcplcFuFuVGR(:,:,i1) = cplcFuFuVGR
dcplGluGluVGL(i1) = cplGluGluVGL
dcplGluGluVGR(i1) = cplGluGluVGR
dcplAhAhAhAh(:,:,:,:,i1) = cplAhAhAhAh
dcplAhAhhhhh(:,:,:,:,i1) = cplAhAhhhhh
dcplAhAhHpmcHpm(:,:,:,:,i1) = cplAhAhHpmcHpm
dcplAhAhSdcSd(:,:,:,:,i1) = cplAhAhSdcSd
dcplAhAhSecSe(:,:,:,:,i1) = cplAhAhSecSe
dcplAhAhSucSu(:,:,:,:,i1) = cplAhAhSucSu
dcplAhAhSvcSv(:,:,:,:,i1) = cplAhAhSvcSv
dcplhhhhhhhh(:,:,:,:,i1) = cplhhhhhhhh
dcplhhhhHpmcHpm(:,:,:,:,i1) = cplhhhhHpmcHpm
dcplhhhhSdcSd(:,:,:,:,i1) = cplhhhhSdcSd
dcplhhhhSecSe(:,:,:,:,i1) = cplhhhhSecSe
dcplhhhhSucSu(:,:,:,:,i1) = cplhhhhSucSu
dcplhhhhSvcSv(:,:,:,:,i1) = cplhhhhSvcSv
dcplHpmHpmcHpmcHpm(:,:,:,:,i1) = cplHpmHpmcHpmcHpm
dcplHpmSdcHpmcSd(:,:,:,:,i1) = cplHpmSdcHpmcSd
dcplHpmSecHpmcSe(:,:,:,:,i1) = cplHpmSecHpmcSe
dcplHpmSucHpmcSu(:,:,:,:,i1) = cplHpmSucHpmcSu
dcplHpmSvcHpmcSv(:,:,:,:,i1) = cplHpmSvcHpmcSv
dcplSdSdcSdcSd(:,:,:,:,i1) = cplSdSdcSdcSd
dcplSdSecSdcSe(:,:,:,:,i1) = cplSdSecSdcSe
dcplSdSucSdcSu(:,:,:,:,i1) = cplSdSucSdcSu
dcplSeSecSecSe(:,:,:,:,i1) = cplSeSecSecSe
dcplSeSvcSecSv(:,:,:,:,i1) = cplSeSvcSecSv
dcplSuSucSucSu(:,:,:,:,i1) = cplSuSucSucSu
dcplSuSvcSucSv(:,:,:,:,i1) = cplSuSvcSucSv
dcplSvSvcSvcSv(:,:,:,:,i1) = cplSvSvcSvcSv
dcplSdcSdVGVG(:,:,i1) = cplSdcSdVGVG
dcplSucSuVGVG(:,:,i1) = cplSucSuVGVG
End Do 
 
Do i1=1,3
  Do i2=i1,3
Call SecondDerivativeMassesCoups(i1,i2,vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,             & 
& Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,             & 
& mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,               & 
& mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,gout)

Call GToMassesCoups(gout,MSd,MSd2,MSv,MSv2,MFv,MFv2,MSu,MSu2,MSe,MSe2,Mhh,            & 
& Mhh2,MAh,MAh2,MHpm,MHpm2,MChi,MChi2,MCha,MCha2,MFe,MFe2,MFd,MFd2,MFu,MFu2,             & 
& MGlu,MGlu2,MVZ,MVZp,MVZ2,MVZp2,MVWm,MVWm2,cplAhAhAh,cplAhAhhh,cplAhhhhh,               & 
& cplAhHpmcHpm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,       & 
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,      & 
& cplSecHpmcSv,cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,              & 
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,         & 
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,       & 
& cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,         & 
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         & 
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         & 
& cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,         & 
& cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,       & 
& cplcFvFecHpmL,cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,           & 
& cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,       & 
& cplcChacFvSeL,cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplGluGluVGL,cplGluGluVGR,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,         & 
& cplAhAhSecSe,cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,        & 
& cplhhhhSecSe,cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,              & 
& cplHpmSecHpmcSe,cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,           & 
& cplSdSucSdcSu,cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,   & 
& cplSdcSdVGVG,cplSucSuVGVG)

ddMSd(:,i1,i2) = MSd
ddMSd2(:,i1,i2) = MSd2
ddMSv(:,i1,i2) = MSv
ddMSv2(:,i1,i2) = MSv2
ddMFv(:,i1,i2) = MFv
ddMFv2(:,i1,i2) = MFv2
ddMSu(:,i1,i2) = MSu
ddMSu2(:,i1,i2) = MSu2
ddMSe(:,i1,i2) = MSe
ddMSe2(:,i1,i2) = MSe2
ddMhh(:,i1,i2) = Mhh
ddMhh2(:,i1,i2) = Mhh2
ddMAh(:,i1,i2) = MAh
ddMAh2(:,i1,i2) = MAh2
ddMHpm(:,i1,i2) = MHpm
ddMHpm2(:,i1,i2) = MHpm2
ddMChi(:,i1,i2) = MChi
ddMChi2(:,i1,i2) = MChi2
ddMCha(:,i1,i2) = MCha
ddMCha2(:,i1,i2) = MCha2
ddMFe(:,i1,i2) = MFe
ddMFe2(:,i1,i2) = MFe2
ddMFd(:,i1,i2) = MFd
ddMFd2(:,i1,i2) = MFd2
ddMFu(:,i1,i2) = MFu
ddMFu2(:,i1,i2) = MFu2
ddMGlu(:,i1,i2) = MGlu
ddMGlu2(:,i1,i2) = MGlu2
ddMVZ(:,i1,i2) = MVZ
ddMVZp(:,i1,i2) = MVZp
ddMVZ2(:,i1,i2) = MVZ2
ddMVZp2(:,i1,i2) = MVZp2
ddMVWm(:,i1,i2) = MVWm
ddMVWm2(:,i1,i2) = MVWm2
ddcplAhAhAh(:,:,:,i1,i2) = cplAhAhAh
ddcplAhAhhh(:,:,:,i1,i2) = cplAhAhhh
ddcplAhhhhh(:,:,:,i1,i2) = cplAhhhhh
ddcplAhHpmcHpm(:,:,:,i1,i2) = cplAhHpmcHpm
ddcplAhSdcSd(:,:,:,i1,i2) = cplAhSdcSd
ddcplAhSecSe(:,:,:,i1,i2) = cplAhSecSe
ddcplAhSucSu(:,:,:,i1,i2) = cplAhSucSu
ddcplAhSvcSv(:,:,:,i1,i2) = cplAhSvcSv
ddcplhhhhhh(:,:,:,i1,i2) = cplhhhhhh
ddcplhhHpmcHpm(:,:,:,i1,i2) = cplhhHpmcHpm
ddcplhhSdcSd(:,:,:,i1,i2) = cplhhSdcSd
ddcplhhSecSe(:,:,:,i1,i2) = cplhhSecSe
ddcplhhSucSu(:,:,:,i1,i2) = cplhhSucSu
ddcplhhSvcSv(:,:,:,i1,i2) = cplhhSvcSv
ddcplHpmSucSd(:,:,:,i1,i2) = cplHpmSucSd
ddcplHpmSvcSe(:,:,:,i1,i2) = cplHpmSvcSe
ddcplSdcHpmcSu(:,:,:,i1,i2) = cplSdcHpmcSu
ddcplSecHpmcSv(:,:,:,i1,i2) = cplSecHpmcSv
ddcplSdcSdVG(:,:,i1,i2) = cplSdcSdVG
ddcplSucSuVG(:,:,i1,i2) = cplSucSuVG
ddcplVGVGVG(i1,i2) = cplVGVGVG
ddcplcChaChaAhL(:,:,:,i1,i2) = cplcChaChaAhL
ddcplcChaChaAhR(:,:,:,i1,i2) = cplcChaChaAhR
ddcplChiChiAhL(:,:,:,i1,i2) = cplChiChiAhL
ddcplChiChiAhR(:,:,:,i1,i2) = cplChiChiAhR
ddcplcFdFdAhL(:,:,:,i1,i2) = cplcFdFdAhL
ddcplcFdFdAhR(:,:,:,i1,i2) = cplcFdFdAhR
ddcplcFeFeAhL(:,:,:,i1,i2) = cplcFeFeAhL
ddcplcFeFeAhR(:,:,:,i1,i2) = cplcFeFeAhR
ddcplcFuFuAhL(:,:,:,i1,i2) = cplcFuFuAhL
ddcplcFuFuAhR(:,:,:,i1,i2) = cplcFuFuAhR
ddcplcFvFvAhL(:,:,:,i1,i2) = cplcFvFvAhL
ddcplcFvFvAhR(:,:,:,i1,i2) = cplcFvFvAhR
ddcplChiChacHpmL(:,:,:,i1,i2) = cplChiChacHpmL
ddcplChiChacHpmR(:,:,:,i1,i2) = cplChiChacHpmR
ddcplChaFucSdL(:,:,:,i1,i2) = cplChaFucSdL
ddcplChaFucSdR(:,:,:,i1,i2) = cplChaFucSdR
ddcplChaFvcSeL(:,:,:,i1,i2) = cplChaFvcSeL
ddcplChaFvcSeR(:,:,:,i1,i2) = cplChaFvcSeR
ddcplcChaChahhL(:,:,:,i1,i2) = cplcChaChahhL
ddcplcChaChahhR(:,:,:,i1,i2) = cplcChaChahhR
ddcplcFdChaSuL(:,:,:,i1,i2) = cplcFdChaSuL
ddcplcFdChaSuR(:,:,:,i1,i2) = cplcFdChaSuR
ddcplcFeChaSvL(:,:,:,i1,i2) = cplcFeChaSvL
ddcplcFeChaSvR(:,:,:,i1,i2) = cplcFeChaSvR
ddcplChiChihhL(:,:,:,i1,i2) = cplChiChihhL
ddcplChiChihhR(:,:,:,i1,i2) = cplChiChihhR
ddcplChiFdcSdL(:,:,:,i1,i2) = cplChiFdcSdL
ddcplChiFdcSdR(:,:,:,i1,i2) = cplChiFdcSdR
ddcplChiFecSeL(:,:,:,i1,i2) = cplChiFecSeL
ddcplChiFecSeR(:,:,:,i1,i2) = cplChiFecSeR
ddcplChiFucSuL(:,:,:,i1,i2) = cplChiFucSuL
ddcplChiFucSuR(:,:,:,i1,i2) = cplChiFucSuR
ddcplChiFvcSvL(:,:,:,i1,i2) = cplChiFvcSvL
ddcplChiFvcSvR(:,:,:,i1,i2) = cplChiFvcSvR
ddcplcChaChiHpmL(:,:,:,i1,i2) = cplcChaChiHpmL
ddcplcChaChiHpmR(:,:,:,i1,i2) = cplcChaChiHpmR
ddcplcFdChiSdL(:,:,:,i1,i2) = cplcFdChiSdL
ddcplcFdChiSdR(:,:,:,i1,i2) = cplcFdChiSdR
ddcplcFeChiSeL(:,:,:,i1,i2) = cplcFeChiSeL
ddcplcFeChiSeR(:,:,:,i1,i2) = cplcFeChiSeR
ddcplcFuChiSuL(:,:,:,i1,i2) = cplcFuChiSuL
ddcplcFuChiSuR(:,:,:,i1,i2) = cplcFuChiSuR
ddcplcFvChiSvL(:,:,:,i1,i2) = cplcFvChiSvL
ddcplcFvChiSvR(:,:,:,i1,i2) = cplcFvChiSvR
ddcplGluFdcSdL(:,:,i1,i2) = cplGluFdcSdL
ddcplGluFdcSdR(:,:,i1,i2) = cplGluFdcSdR
ddcplcFdFdhhL(:,:,:,i1,i2) = cplcFdFdhhL
ddcplcFdFdhhR(:,:,:,i1,i2) = cplcFdFdhhR
ddcplcChaFdcSuL(:,:,:,i1,i2) = cplcChaFdcSuL
ddcplcChaFdcSuR(:,:,:,i1,i2) = cplcChaFdcSuR
ddcplcFuFdcHpmL(:,:,:,i1,i2) = cplcFuFdcHpmL
ddcplcFuFdcHpmR(:,:,:,i1,i2) = cplcFuFdcHpmR
ddcplcFeFehhL(:,:,:,i1,i2) = cplcFeFehhL
ddcplcFeFehhR(:,:,:,i1,i2) = cplcFeFehhR
ddcplcChaFecSvL(:,:,:,i1,i2) = cplcChaFecSvL
ddcplcChaFecSvR(:,:,:,i1,i2) = cplcChaFecSvR
ddcplcFvFecHpmL(:,:,:,i1,i2) = cplcFvFecHpmL
ddcplcFvFecHpmR(:,:,:,i1,i2) = cplcFvFecHpmR
ddcplGluFucSuL(:,:,i1,i2) = cplGluFucSuL
ddcplGluFucSuR(:,:,i1,i2) = cplGluFucSuR
ddcplcFuFuhhL(:,:,:,i1,i2) = cplcFuFuhhL
ddcplcFuFuhhR(:,:,:,i1,i2) = cplcFuFuhhR
ddcplcFdFuHpmL(:,:,:,i1,i2) = cplcFdFuHpmL
ddcplcFdFuHpmR(:,:,:,i1,i2) = cplcFdFuHpmR
ddcplcFvFvhhL(:,:,:,i1,i2) = cplcFvFvhhL
ddcplcFvFvhhR(:,:,:,i1,i2) = cplcFvFvhhR
ddcplcFeFvHpmL(:,:,:,i1,i2) = cplcFeFvHpmL
ddcplcFeFvHpmR(:,:,:,i1,i2) = cplcFeFvHpmR
ddcplcFdGluSdL(:,:,i1,i2) = cplcFdGluSdL
ddcplcFdGluSdR(:,:,i1,i2) = cplcFdGluSdR
ddcplcFuGluSuL(:,:,i1,i2) = cplcFuGluSuL
ddcplcFuGluSuR(:,:,i1,i2) = cplcFuGluSuR
ddcplcChacFuSdL(:,:,:,i1,i2) = cplcChacFuSdL
ddcplcChacFuSdR(:,:,:,i1,i2) = cplcChacFuSdR
ddcplcChacFvSeL(:,:,:,i1,i2) = cplcChacFvSeL
ddcplcChacFvSeR(:,:,:,i1,i2) = cplcChacFvSeR
ddcplcFdFdVGL(:,:,i1,i2) = cplcFdFdVGL
ddcplcFdFdVGR(:,:,i1,i2) = cplcFdFdVGR
ddcplcFuFuVGL(:,:,i1,i2) = cplcFuFuVGL
ddcplcFuFuVGR(:,:,i1,i2) = cplcFuFuVGR
ddcplGluGluVGL(i1,i2) = cplGluGluVGL
ddcplGluGluVGR(i1,i2) = cplGluGluVGR
ddcplAhAhAhAh(:,:,:,:,i1,i2) = cplAhAhAhAh
ddcplAhAhhhhh(:,:,:,:,i1,i2) = cplAhAhhhhh
ddcplAhAhHpmcHpm(:,:,:,:,i1,i2) = cplAhAhHpmcHpm
ddcplAhAhSdcSd(:,:,:,:,i1,i2) = cplAhAhSdcSd
ddcplAhAhSecSe(:,:,:,:,i1,i2) = cplAhAhSecSe
ddcplAhAhSucSu(:,:,:,:,i1,i2) = cplAhAhSucSu
ddcplAhAhSvcSv(:,:,:,:,i1,i2) = cplAhAhSvcSv
ddcplhhhhhhhh(:,:,:,:,i1,i2) = cplhhhhhhhh
ddcplhhhhHpmcHpm(:,:,:,:,i1,i2) = cplhhhhHpmcHpm
ddcplhhhhSdcSd(:,:,:,:,i1,i2) = cplhhhhSdcSd
ddcplhhhhSecSe(:,:,:,:,i1,i2) = cplhhhhSecSe
ddcplhhhhSucSu(:,:,:,:,i1,i2) = cplhhhhSucSu
ddcplhhhhSvcSv(:,:,:,:,i1,i2) = cplhhhhSvcSv
ddcplHpmHpmcHpmcHpm(:,:,:,:,i1,i2) = cplHpmHpmcHpmcHpm
ddcplHpmSdcHpmcSd(:,:,:,:,i1,i2) = cplHpmSdcHpmcSd
ddcplHpmSecHpmcSe(:,:,:,:,i1,i2) = cplHpmSecHpmcSe
ddcplHpmSucHpmcSu(:,:,:,:,i1,i2) = cplHpmSucHpmcSu
ddcplHpmSvcHpmcSv(:,:,:,:,i1,i2) = cplHpmSvcHpmcSv
ddcplSdSdcSdcSd(:,:,:,:,i1,i2) = cplSdSdcSdcSd
ddcplSdSecSdcSe(:,:,:,:,i1,i2) = cplSdSecSdcSe
ddcplSdSucSdcSu(:,:,:,:,i1,i2) = cplSdSucSdcSu
ddcplSeSecSecSe(:,:,:,:,i1,i2) = cplSeSecSecSe
ddcplSeSvcSecSv(:,:,:,:,i1,i2) = cplSeSvcSecSv
ddcplSuSucSucSu(:,:,:,:,i1,i2) = cplSuSucSucSu
ddcplSuSvcSucSv(:,:,:,:,i1,i2) = cplSuSvcSucSv
ddcplSvSvcSvcSv(:,:,:,:,i1,i2) = cplSvSvcSvcSv
ddcplSdcSdVGVG(:,:,i1,i2) = cplSdcSdVGVG
ddcplSucSuVGVG(:,:,i1,i2) = cplSucSuVGVG
  End Do 
 End Do 
 
Call TreeMassesEffPot(MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,               & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZVR,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,               & 
& gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,            & 
& TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,              & 
& mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,.True.,kont)

Call CouplingsForEffPot3(lam,Tlam,ZA,vd,vu,vS,ZH,ZP,Yd,Td,ZD,Ye11,TYe11,              & 
& Ye22,TYe22,Ye33,TYe33,Tep,Tmup,ZE,Yu,Tu,ZU,Yv11,TYv11,Yv22,TYv22,Yv33,TYv33,           & 
& ZV,g3,UM,UP,ZN,ZDL,ZDR,ZEL,ZER,ZUL,ZUR,ZVL,ZVR,pG,cplAhAhAh,cplAhAhhh,cplAhhhhh,       & 
& cplAhHpmcHpm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,       & 
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,      & 
& cplSecHpmcSv,cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,              & 
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,         & 
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,       & 
& cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,         & 
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         & 
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         & 
& cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,         & 
& cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,       & 
& cplcFvFecHpmL,cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,           & 
& cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,       & 
& cplcChacFvSeL,cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplGluGluVGL,cplGluGluVGR)

Call CouplingsForEffPot4(lam,ZA,ZH,ZP,Yd,ZD,Ye11,Ye22,Ye33,ZE,Yu,ZU,Yv11,             & 
& Yv22,Yv33,ZV,g3,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,cplAhAhSecSe,      & 
& cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,cplhhhhSecSe,        & 
& cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,cplHpmSecHpmcSe,           & 
& cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,cplSdSucSdcSu,             & 
& cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,cplSdcSdVGVG,    & 
& cplSucSuVGVG)



!! ------------------------------------------------- 
!! Calculate derivative of effective potential      
!! ------------------------------------------------- 



Q2 = getRenormalizationScale()
Do iv1=1,3
  Do iv2=iv1,3
    result = ZeroC
    result_ti = ZeroC
    results1 = ZeroC
    results1_ti = ZeroC
    results2 = ZeroC
    results2_ti = ZeroC


! ----- Topology1 (sunrise): diagrams w. 3 Particles and 2 Vertices


! ----- diagrams of type SSS, 16 ------ 

! ---- Ah,Ah,Ah ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplAhAhAh(i1,i2,i3)
coup2 = cplAhAhAh(i1,i2,i3)
Di_coup1 = dcplAhAhAh(i1,i2,i3,iv1)
Dj_coup1 = dcplAhAhAh(i1,i2,i3,iv2)
DDcoup1 = ddcplAhAhAh(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MAh2(i1),MAh2(i2),MAh2(i3),dMAh2(i1,iv1)            & 
& ,dMAh2(i2,iv1),dMAh2(i3,iv1),dMAh2(i1,iv2),dMAh2(i2,iv2),dMAh2(i3,iv2),ddMAh2(i1,iv1,iv2)& 
& ,ddMAh2(i2,iv1,iv2),ddMAh2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 1._dp/12._dp
colorfactor = 1
results1(1)=results1(1) + coeff*colorfactor*temp
results1_ti(1)=results1_ti(1) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(1).eq.results1(1)))  write(*,*) 'NaN at SSS C[Ah, Ah, Ah]' 
! ---- Ah,Ah,hh ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplAhAhhh(i1,i2,i3)
coup2 = cplAhAhhh(i1,i2,i3)
Di_coup1 = dcplAhAhhh(i1,i2,i3,iv1)
Dj_coup1 = dcplAhAhhh(i1,i2,i3,iv2)
DDcoup1 = ddcplAhAhhh(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MAh2(i1),MAh2(i2),Mhh2(i3),dMAh2(i1,iv1)            & 
& ,dMAh2(i2,iv1),dMhh2(i3,iv1),dMAh2(i1,iv2),dMAh2(i2,iv2),dMhh2(i3,iv2),ddMAh2(i1,iv1,iv2)& 
& ,ddMAh2(i2,iv1,iv2),ddMhh2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.25_dp
colorfactor = 1
results1(2)=results1(2) + coeff*colorfactor*temp
results1_ti(2)=results1_ti(2) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(2).eq.results1(2)))  write(*,*) 'NaN at SSS C[Ah, Ah, hh]' 
! ---- Ah,hh,hh ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplAhhhhh(i1,i2,i3)
coup2 = cplAhhhhh(i1,i2,i3)
Di_coup1 = dcplAhhhhh(i1,i2,i3,iv1)
Dj_coup1 = dcplAhhhhh(i1,i2,i3,iv2)
DDcoup1 = ddcplAhhhhh(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MAh2(i1),Mhh2(i2),Mhh2(i3),dMAh2(i1,iv1)            & 
& ,dMhh2(i2,iv1),dMhh2(i3,iv1),dMAh2(i1,iv2),dMhh2(i2,iv2),dMhh2(i3,iv2),ddMAh2(i1,iv1,iv2)& 
& ,ddMhh2(i2,iv1,iv2),ddMhh2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.25_dp
colorfactor = 1
results1(3)=results1(3) + coeff*colorfactor*temp
results1_ti(3)=results1_ti(3) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(3).eq.results1(3)))  write(*,*) 'NaN at SSS C[Ah, hh, hh]' 
! ---- Ah,Hpm,conj[Hpm] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,2
coup1 = cplAhHpmcHpm(i1,i2,i3)
coup2 = cplAhHpmcHpm(i1,i3,i2)
Di_coup1 = dcplAhHpmcHpm(i1,i2,i3,iv1)
Dj_coup1 = dcplAhHpmcHpm(i1,i2,i3,iv2)
DDcoup1 = ddcplAhHpmcHpm(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MAh2(i1),MHpm2(i2),MHpm2(i3),dMAh2(i1,iv1)          & 
& ,dMHpm2(i2,iv1),dMHpm2(i3,iv1),dMAh2(i1,iv2),dMHpm2(i2,iv2),dMHpm2(i3,iv2)             & 
& ,ddMAh2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),ddMHpm2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 1
results1(4)=results1(4) + coeff*colorfactor*temp
results1_ti(4)=results1_ti(4) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(4).eq.results1(4)))  write(*,*) 'NaN at SSS C[Ah, Hpm, conj[Hpm]]' 
! ---- Ah,Sd,conj[Sd] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSdcSd(i1,i2,i3)
coup2 = cplAhSdcSd(i1,i3,i2)
Di_coup1 = dcplAhSdcSd(i1,i2,i3,iv1)
Dj_coup1 = dcplAhSdcSd(i1,i2,i3,iv2)
DDcoup1 = ddcplAhSdcSd(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MAh2(i1),MSd2(i2),MSd2(i3),dMAh2(i1,iv1)            & 
& ,dMSd2(i2,iv1),dMSd2(i3,iv1),dMAh2(i1,iv2),dMSd2(i2,iv2),dMSd2(i3,iv2),ddMAh2(i1,iv1,iv2)& 
& ,ddMSd2(i2,iv1,iv2),ddMSd2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 3
results1(5)=results1(5) + coeff*colorfactor*temp
results1_ti(5)=results1_ti(5) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(5).eq.results1(5)))  write(*,*) 'NaN at SSS C[Ah, Sd, conj[Sd]]' 
! ---- Ah,Se,conj[Se] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSecSe(i1,i2,i3)
coup2 = cplAhSecSe(i1,i3,i2)
Di_coup1 = dcplAhSecSe(i1,i2,i3,iv1)
Dj_coup1 = dcplAhSecSe(i1,i2,i3,iv2)
DDcoup1 = ddcplAhSecSe(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MAh2(i1),MSe2(i2),MSe2(i3),dMAh2(i1,iv1)            & 
& ,dMSe2(i2,iv1),dMSe2(i3,iv1),dMAh2(i1,iv2),dMSe2(i2,iv2),dMSe2(i3,iv2),ddMAh2(i1,iv1,iv2)& 
& ,ddMSe2(i2,iv1,iv2),ddMSe2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 1
results1(6)=results1(6) + coeff*colorfactor*temp
results1_ti(6)=results1_ti(6) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(6).eq.results1(6)))  write(*,*) 'NaN at SSS C[Ah, Se, conj[Se]]' 
! ---- Ah,Su,conj[Su] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSucSu(i1,i2,i3)
coup2 = cplAhSucSu(i1,i3,i2)
Di_coup1 = dcplAhSucSu(i1,i2,i3,iv1)
Dj_coup1 = dcplAhSucSu(i1,i2,i3,iv2)
DDcoup1 = ddcplAhSucSu(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MAh2(i1),MSu2(i2),MSu2(i3),dMAh2(i1,iv1)            & 
& ,dMSu2(i2,iv1),dMSu2(i3,iv1),dMAh2(i1,iv2),dMSu2(i2,iv2),dMSu2(i3,iv2),ddMAh2(i1,iv1,iv2)& 
& ,ddMSu2(i2,iv1,iv2),ddMSu2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 3
results1(7)=results1(7) + coeff*colorfactor*temp
results1_ti(7)=results1_ti(7) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(7).eq.results1(7)))  write(*,*) 'NaN at SSS C[Ah, Su, conj[Su]]' 
! ---- Ah,Sv,conj[Sv] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSvcSv(i1,i2,i3)
coup2 = cplAhSvcSv(i1,i3,i2)
Di_coup1 = dcplAhSvcSv(i1,i2,i3,iv1)
Dj_coup1 = dcplAhSvcSv(i1,i2,i3,iv2)
DDcoup1 = ddcplAhSvcSv(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MAh2(i1),MSv2(i2),MSv2(i3),dMAh2(i1,iv1)            & 
& ,dMSv2(i2,iv1),dMSv2(i3,iv1),dMAh2(i1,iv2),dMSv2(i2,iv2),dMSv2(i3,iv2),ddMAh2(i1,iv1,iv2)& 
& ,ddMSv2(i2,iv1,iv2),ddMSv2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 1
results1(8)=results1(8) + coeff*colorfactor*temp
results1_ti(8)=results1_ti(8) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(8).eq.results1(8)))  write(*,*) 'NaN at SSS C[Ah, Sv, conj[Sv]]' 
! ---- hh,hh,hh ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplhhhhhh(i1,i2,i3)
coup2 = cplhhhhhh(i1,i2,i3)
Di_coup1 = dcplhhhhhh(i1,i2,i3,iv1)
Dj_coup1 = dcplhhhhhh(i1,i2,i3,iv2)
DDcoup1 = ddcplhhhhhh(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(Mhh2(i1),Mhh2(i2),Mhh2(i3),dMhh2(i1,iv1)            & 
& ,dMhh2(i2,iv1),dMhh2(i3,iv1),dMhh2(i1,iv2),dMhh2(i2,iv2),dMhh2(i3,iv2),ddMhh2(i1,iv1,iv2)& 
& ,ddMhh2(i2,iv1,iv2),ddMhh2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 1._dp/12._dp
colorfactor = 1
results1(9)=results1(9) + coeff*colorfactor*temp
results1_ti(9)=results1_ti(9) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(9).eq.results1(9)))  write(*,*) 'NaN at SSS C[hh, hh, hh]' 
! ---- hh,Hpm,conj[Hpm] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,2
coup1 = cplhhHpmcHpm(i1,i2,i3)
coup2 = cplhhHpmcHpm(i1,i3,i2)
Di_coup1 = dcplhhHpmcHpm(i1,i2,i3,iv1)
Dj_coup1 = dcplhhHpmcHpm(i1,i2,i3,iv2)
DDcoup1 = ddcplhhHpmcHpm(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(Mhh2(i1),MHpm2(i2),MHpm2(i3),dMhh2(i1,iv1)          & 
& ,dMHpm2(i2,iv1),dMHpm2(i3,iv1),dMhh2(i1,iv2),dMHpm2(i2,iv2),dMHpm2(i3,iv2)             & 
& ,ddMhh2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),ddMHpm2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 1
results1(10)=results1(10) + coeff*colorfactor*temp
results1_ti(10)=results1_ti(10) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(10).eq.results1(10)))  write(*,*) 'NaN at SSS C[hh, Hpm, conj[Hpm]]' 
! ---- hh,Sd,conj[Sd] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSdcSd(i1,i2,i3)
coup2 = cplhhSdcSd(i1,i3,i2)
Di_coup1 = dcplhhSdcSd(i1,i2,i3,iv1)
Dj_coup1 = dcplhhSdcSd(i1,i2,i3,iv2)
DDcoup1 = ddcplhhSdcSd(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(Mhh2(i1),MSd2(i2),MSd2(i3),dMhh2(i1,iv1)            & 
& ,dMSd2(i2,iv1),dMSd2(i3,iv1),dMhh2(i1,iv2),dMSd2(i2,iv2),dMSd2(i3,iv2),ddMhh2(i1,iv1,iv2)& 
& ,ddMSd2(i2,iv1,iv2),ddMSd2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 3
results1(11)=results1(11) + coeff*colorfactor*temp
results1_ti(11)=results1_ti(11) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(11).eq.results1(11)))  write(*,*) 'NaN at SSS C[hh, Sd, conj[Sd]]' 
! ---- hh,Se,conj[Se] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSecSe(i1,i2,i3)
coup2 = cplhhSecSe(i1,i3,i2)
Di_coup1 = dcplhhSecSe(i1,i2,i3,iv1)
Dj_coup1 = dcplhhSecSe(i1,i2,i3,iv2)
DDcoup1 = ddcplhhSecSe(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(Mhh2(i1),MSe2(i2),MSe2(i3),dMhh2(i1,iv1)            & 
& ,dMSe2(i2,iv1),dMSe2(i3,iv1),dMhh2(i1,iv2),dMSe2(i2,iv2),dMSe2(i3,iv2),ddMhh2(i1,iv1,iv2)& 
& ,ddMSe2(i2,iv1,iv2),ddMSe2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 1
results1(12)=results1(12) + coeff*colorfactor*temp
results1_ti(12)=results1_ti(12) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(12).eq.results1(12)))  write(*,*) 'NaN at SSS C[hh, Se, conj[Se]]' 
! ---- hh,Su,conj[Su] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSucSu(i1,i2,i3)
coup2 = cplhhSucSu(i1,i3,i2)
Di_coup1 = dcplhhSucSu(i1,i2,i3,iv1)
Dj_coup1 = dcplhhSucSu(i1,i2,i3,iv2)
DDcoup1 = ddcplhhSucSu(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(Mhh2(i1),MSu2(i2),MSu2(i3),dMhh2(i1,iv1)            & 
& ,dMSu2(i2,iv1),dMSu2(i3,iv1),dMhh2(i1,iv2),dMSu2(i2,iv2),dMSu2(i3,iv2),ddMhh2(i1,iv1,iv2)& 
& ,ddMSu2(i2,iv1,iv2),ddMSu2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 3
results1(13)=results1(13) + coeff*colorfactor*temp
results1_ti(13)=results1_ti(13) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(13).eq.results1(13)))  write(*,*) 'NaN at SSS C[hh, Su, conj[Su]]' 
! ---- hh,Sv,conj[Sv] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSvcSv(i1,i2,i3)
coup2 = cplhhSvcSv(i1,i3,i2)
Di_coup1 = dcplhhSvcSv(i1,i2,i3,iv1)
Dj_coup1 = dcplhhSvcSv(i1,i2,i3,iv2)
DDcoup1 = ddcplhhSvcSv(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(Mhh2(i1),MSv2(i2),MSv2(i3),dMhh2(i1,iv1)            & 
& ,dMSv2(i2,iv1),dMSv2(i3,iv1),dMhh2(i1,iv2),dMSv2(i2,iv2),dMSv2(i3,iv2),ddMhh2(i1,iv1,iv2)& 
& ,ddMSv2(i2,iv1,iv2),ddMSv2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 1
results1(14)=results1(14) + coeff*colorfactor*temp
results1_ti(14)=results1_ti(14) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(14).eq.results1(14)))  write(*,*) 'NaN at SSS C[hh, Sv, conj[Sv]]' 
! ---- Sd,conj[Hpm],conj[Su] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,6
coup1 = cplSdcHpmcSu(i1,i2,i3)
coup2 = cplHpmSucSd(i2,i3,i1)
Di_coup1 = dcplSdcHpmcSu(i1,i2,i3,iv1)
Dj_coup1 = dcplSdcHpmcSu(i1,i2,i3,iv2)
DDcoup1 = ddcplSdcHpmcSu(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MSd2(i1),MHpm2(i2),MSu2(i3),dMSd2(i1,iv1)           & 
& ,dMHpm2(i2,iv1),dMSu2(i3,iv1),dMSd2(i1,iv2),dMHpm2(i2,iv2),dMSu2(i3,iv2)               & 
& ,ddMSd2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),ddMSu2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 1._dp
colorfactor = 3
results1(15)=results1(15) + coeff*colorfactor*temp
results1_ti(15)=results1_ti(15) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(15).eq.results1(15)))  write(*,*) 'NaN at SSS C[Sd, conj[Hpm], conj[Su]]' 
! ---- Se,conj[Hpm],conj[Sv] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,6
coup1 = cplSecHpmcSv(i1,i2,i3)
coup2 = cplHpmSvcSe(i2,i3,i1)
Di_coup1 = dcplSecHpmcSv(i1,i2,i3,iv1)
Dj_coup1 = dcplSecHpmcSv(i1,i2,i3,iv2)
DDcoup1 = ddcplSecHpmcSv(i1,i2,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MSe2(i1),MHpm2(i2),MSv2(i3),dMSe2(i1,iv1)           & 
& ,dMHpm2(i2,iv1),dMSv2(i3,iv1),dMSe2(i1,iv2),dMHpm2(i2,iv2),dMSv2(i3,iv2)               & 
& ,ddMSe2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),ddMSv2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'SSS   ',Q2,temp,temp_ti,temp_tj)
coeff = 1._dp
colorfactor = 1
results1(16)=results1(16) + coeff*colorfactor*temp
results1_ti(16)=results1_ti(16) + coeff*colorfactor*temp_ti
    End Do
  End Do
End Do
if (.not.(results1(16).eq.results1(16)))  write(*,*) 'NaN at SSS C[Se, conj[Hpm], conj[Sv]]' 

! ----- diagrams of type FFS, 25 ------ 

! ---- Ah,Cha,bar[Cha] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,2
coup1L = cplcChaChaAhL(i3,i2,i1)
coup1R = cplcChaChaAhR(i3,i2,i1)
coup2L = cplcChaChaAhL(i2,i3,i1)
coup2R = cplcChaChaAhR(i2,i3,i1)
Di_coup1L = dcplcChaChaAhL(i3,i2,i1,iv1)
Di_coup1R = dcplcChaChaAhR(i3,i2,i1,iv1)
Dj_coup1L = dcplcChaChaAhL(i3,i2,i1,iv2)
Dj_coup1R = dcplcChaChaAhR(i3,i2,i1,iv2)
DDcoup1L = ddcplcChaChaAhL(i3,i2,i1,iv1,iv2)
DDcoup1R = ddcplcChaChaAhR(i3,i2,i1,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MCha2(i3),MCha2(i2),MAh2(i1),dMCha2(i3,iv1)         & 
& ,dMCha2(i2,iv1),dMAh2(i1,iv1),dMCha2(i3,iv2),dMCha2(i2,iv2),dMAh2(i1,iv2)              & 
& ,ddMCha2(i3,iv1,iv2),ddMCha2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MCha2(i3),MCha2(i2),MAh2(i1),dMCha2(i3,iv1)         & 
& ,dMCha2(i2,iv1),dMAh2(i1,iv1),dMCha2(i3,iv2),dMCha2(i2,iv2),dMAh2(i1,iv2)              & 
& ,ddMCha2(i3,iv1,iv2),ddMCha2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 1
results1(17)=results1(17) + coeff*colorfactor*temp
results1_ti(17)=results1_ti(17) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(17)=results1(17) + coeffbar*colorfactor*tempbar
results1_ti(17)=results1_ti(17) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(17).eq.results1(17)))  write(*,*) 'NaN at FFS C[Ah, Cha, bar[Cha]]' 
! ---- Ah,Chi,Chi ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1L = cplChiChiAhL(i2,i3,i1)
coup1R = cplChiChiAhR(i2,i3,i1)
coup2L = cplChiChiAhL(i2,i3,i1)
coup2R = cplChiChiAhR(i2,i3,i1)
Di_coup1L = dcplChiChiAhL(i2,i3,i1,iv1)
Di_coup1R = dcplChiChiAhR(i2,i3,i1,iv1)
Dj_coup1L = dcplChiChiAhL(i2,i3,i1,iv2)
Dj_coup1R = dcplChiChiAhR(i2,i3,i1,iv2)
DDcoup1L = ddcplChiChiAhL(i2,i3,i1,iv1,iv2)
DDcoup1R = ddcplChiChiAhR(i2,i3,i1,iv1,iv2)
coupx = abs(coup1L)**2
Di_coupx=Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) 
Dj_coupx=Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L)  
Call SecondDerivativeVeff_sunrise(MChi2(i3),MChi2(i2),MAh2(i1),dMChi2(i3,iv1)         & 
& ,dMChi2(i2,iv1),dMAh2(i1,iv1),dMChi2(i3,iv2),dMChi2(i2,iv2),dMAh2(i1,iv2)              & 
& ,ddMChi2(i3,iv1,iv2),ddMChi2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = Real(coup1L**2,dp) 
Di_coupxbar = Real(2*Di_coup1L*coup1L,dp) 
Dj_coupxbar = Real(2*Dj_coup1L*coup1L,dp) 
DDcoupxbar = Real(2*DDcoup1L*coup1L + 2*Di_coup1L*Dj_coup1L,dp) 
Call SecondDerivativeVeff_sunrise(MChi2(i3),MChi2(i2),MAh2(i1),dMChi2(i3,iv1)         & 
& ,dMChi2(i2,iv1),dMAh2(i1,iv1),dMChi2(i3,iv2),dMChi2(i2,iv2),dMAh2(i1,iv2)              & 
& ,ddMChi2(i3,iv1,iv2),ddMChi2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 1
results1(18)=results1(18) + coeff*colorfactor*temp
results1_ti(18)=results1_ti(18) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(18)=results1(18) + coeffbar*colorfactor*tempbar
results1_ti(18)=results1_ti(18) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(18).eq.results1(18)))  write(*,*) 'NaN at FFS C[Ah, Chi, Chi]' 
! ---- Ah,Fd,bar[Fd] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFdFdAhL(i3,i2,i1)
coup1R = cplcFdFdAhR(i3,i2,i1)
coup2L = cplcFdFdAhL(i2,i3,i1)
coup2R = cplcFdFdAhR(i2,i3,i1)
Di_coup1L = dcplcFdFdAhL(i3,i2,i1,iv1)
Di_coup1R = dcplcFdFdAhR(i3,i2,i1,iv1)
Dj_coup1L = dcplcFdFdAhL(i3,i2,i1,iv2)
Dj_coup1R = dcplcFdFdAhR(i3,i2,i1,iv2)
DDcoup1L = ddcplcFdFdAhL(i3,i2,i1,iv1,iv2)
DDcoup1R = ddcplcFdFdAhR(i3,i2,i1,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFd2(i3),MFd2(i2),MAh2(i1),dMFd2(i3,iv1)            & 
& ,dMFd2(i2,iv1),dMAh2(i1,iv1),dMFd2(i3,iv2),dMFd2(i2,iv2),dMAh2(i1,iv2),ddMFd2(i3,iv1,iv2)& 
& ,ddMFd2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFd2(i3),MFd2(i2),MAh2(i1),dMFd2(i3,iv1)            & 
& ,dMFd2(i2,iv1),dMAh2(i1,iv1),dMFd2(i3,iv2),dMFd2(i2,iv2),dMAh2(i1,iv2),ddMFd2(i3,iv1,iv2)& 
& ,ddMFd2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 3
results1(19)=results1(19) + coeff*colorfactor*temp
results1_ti(19)=results1_ti(19) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(19)=results1(19) + coeffbar*colorfactor*tempbar
results1_ti(19)=results1_ti(19) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(19).eq.results1(19)))  write(*,*) 'NaN at FFS C[Ah, Fd, bar[Fd]]' 
! ---- Ah,Fe,bar[Fe] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFeFeAhL(i3,i2,i1)
coup1R = cplcFeFeAhR(i3,i2,i1)
coup2L = cplcFeFeAhL(i2,i3,i1)
coup2R = cplcFeFeAhR(i2,i3,i1)
Di_coup1L = dcplcFeFeAhL(i3,i2,i1,iv1)
Di_coup1R = dcplcFeFeAhR(i3,i2,i1,iv1)
Dj_coup1L = dcplcFeFeAhL(i3,i2,i1,iv2)
Dj_coup1R = dcplcFeFeAhR(i3,i2,i1,iv2)
DDcoup1L = ddcplcFeFeAhL(i3,i2,i1,iv1,iv2)
DDcoup1R = ddcplcFeFeAhR(i3,i2,i1,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFe2(i3),MFe2(i2),MAh2(i1),dMFe2(i3,iv1)            & 
& ,dMFe2(i2,iv1),dMAh2(i1,iv1),dMFe2(i3,iv2),dMFe2(i2,iv2),dMAh2(i1,iv2),ddMFe2(i3,iv1,iv2)& 
& ,ddMFe2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFe2(i3),MFe2(i2),MAh2(i1),dMFe2(i3,iv1)            & 
& ,dMFe2(i2,iv1),dMAh2(i1,iv1),dMFe2(i3,iv2),dMFe2(i2,iv2),dMAh2(i1,iv2),ddMFe2(i3,iv1,iv2)& 
& ,ddMFe2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 1
results1(20)=results1(20) + coeff*colorfactor*temp
results1_ti(20)=results1_ti(20) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(20)=results1(20) + coeffbar*colorfactor*tempbar
results1_ti(20)=results1_ti(20) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(20).eq.results1(20)))  write(*,*) 'NaN at FFS C[Ah, Fe, bar[Fe]]' 
! ---- Ah,Fu,bar[Fu] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFuFuAhL(i3,i2,i1)
coup1R = cplcFuFuAhR(i3,i2,i1)
coup2L = cplcFuFuAhL(i2,i3,i1)
coup2R = cplcFuFuAhR(i2,i3,i1)
Di_coup1L = dcplcFuFuAhL(i3,i2,i1,iv1)
Di_coup1R = dcplcFuFuAhR(i3,i2,i1,iv1)
Dj_coup1L = dcplcFuFuAhL(i3,i2,i1,iv2)
Dj_coup1R = dcplcFuFuAhR(i3,i2,i1,iv2)
DDcoup1L = ddcplcFuFuAhL(i3,i2,i1,iv1,iv2)
DDcoup1R = ddcplcFuFuAhR(i3,i2,i1,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFu2(i3),MFu2(i2),MAh2(i1),dMFu2(i3,iv1)            & 
& ,dMFu2(i2,iv1),dMAh2(i1,iv1),dMFu2(i3,iv2),dMFu2(i2,iv2),dMAh2(i1,iv2),ddMFu2(i3,iv1,iv2)& 
& ,ddMFu2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFu2(i3),MFu2(i2),MAh2(i1),dMFu2(i3,iv1)            & 
& ,dMFu2(i2,iv1),dMAh2(i1,iv1),dMFu2(i3,iv2),dMFu2(i2,iv2),dMAh2(i1,iv2),ddMFu2(i3,iv1,iv2)& 
& ,ddMFu2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 3
results1(21)=results1(21) + coeff*colorfactor*temp
results1_ti(21)=results1_ti(21) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(21)=results1(21) + coeffbar*colorfactor*tempbar
results1_ti(21)=results1_ti(21) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(21).eq.results1(21)))  write(*,*) 'NaN at FFS C[Ah, Fu, bar[Fu]]' 
! ---- Ah,Fv,bar[Fv] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFvFvAhL(i3,i2,i1)
coup1R = cplcFvFvAhR(i3,i2,i1)
coup2L = cplcFvFvAhL(i2,i3,i1)
coup2R = cplcFvFvAhR(i2,i3,i1)
Di_coup1L = dcplcFvFvAhL(i3,i2,i1,iv1)
Di_coup1R = dcplcFvFvAhR(i3,i2,i1,iv1)
Dj_coup1L = dcplcFvFvAhL(i3,i2,i1,iv2)
Dj_coup1R = dcplcFvFvAhR(i3,i2,i1,iv2)
DDcoup1L = ddcplcFvFvAhL(i3,i2,i1,iv1,iv2)
DDcoup1R = ddcplcFvFvAhR(i3,i2,i1,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFv2(i3),MFv2(i2),MAh2(i1),dMFv2(i3,iv1)            & 
& ,dMFv2(i2,iv1),dMAh2(i1,iv1),dMFv2(i3,iv2),dMFv2(i2,iv2),dMAh2(i1,iv2),ddMFv2(i3,iv1,iv2)& 
& ,ddMFv2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFv2(i3),MFv2(i2),MAh2(i1),dMFv2(i3,iv1)            & 
& ,dMFv2(i2,iv1),dMAh2(i1,iv1),dMFv2(i3,iv2),dMFv2(i2,iv2),dMAh2(i1,iv2),ddMFv2(i3,iv1,iv2)& 
& ,ddMFv2(i2,iv1,iv2),ddMAh2(i1,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 1
results1(22)=results1(22) + coeff*colorfactor*temp
results1_ti(22)=results1_ti(22) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(22)=results1(22) + coeffbar*colorfactor*tempbar
results1_ti(22)=results1_ti(22) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(22).eq.results1(22)))  write(*,*) 'NaN at FFS C[Ah, Fv, bar[Fv]]' 
! ---- Cha,hh,bar[Cha] ----
Do i1=1,2
 Do i2=1,3
    Do i3=1,2
coup1L = cplcChaChahhL(i3,i1,i2)
coup1R = cplcChaChahhR(i3,i1,i2)
coup2L = cplcChaChahhL(i1,i3,i2)
coup2R = cplcChaChahhR(i1,i3,i2)
Di_coup1L = dcplcChaChahhL(i3,i1,i2,iv1)
Di_coup1R = dcplcChaChahhR(i3,i1,i2,iv1)
Dj_coup1L = dcplcChaChahhL(i3,i1,i2,iv2)
Dj_coup1R = dcplcChaChahhR(i3,i1,i2,iv2)
DDcoup1L = ddcplcChaChahhL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcChaChahhR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MCha2(i3),MCha2(i1),Mhh2(i2),dMCha2(i3,iv1)         & 
& ,dMCha2(i1,iv1),dMhh2(i2,iv1),dMCha2(i3,iv2),dMCha2(i1,iv2),dMhh2(i2,iv2)              & 
& ,ddMCha2(i3,iv1,iv2),ddMCha2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MCha2(i3),MCha2(i1),Mhh2(i2),dMCha2(i3,iv1)         & 
& ,dMCha2(i1,iv1),dMhh2(i2,iv1),dMCha2(i3,iv2),dMCha2(i1,iv2),dMhh2(i2,iv2)              & 
& ,ddMCha2(i3,iv1,iv2),ddMCha2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 1
results1(23)=results1(23) + coeff*colorfactor*temp
results1_ti(23)=results1_ti(23) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(23)=results1(23) + coeffbar*colorfactor*tempbar
results1_ti(23)=results1_ti(23) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(23).eq.results1(23)))  write(*,*) 'NaN at FFS C[Cha, hh, bar[Cha]]' 
! ---- Chi,Chi,hh ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplChiChihhL(i1,i2,i3)
coup1R = cplChiChihhR(i1,i2,i3)
coup2L = cplChiChihhL(i1,i2,i3)
coup2R = cplChiChihhR(i1,i2,i3)
Di_coup1L = dcplChiChihhL(i1,i2,i3,iv1)
Di_coup1R = dcplChiChihhR(i1,i2,i3,iv1)
Dj_coup1L = dcplChiChihhL(i1,i2,i3,iv2)
Dj_coup1R = dcplChiChihhR(i1,i2,i3,iv2)
DDcoup1L = ddcplChiChihhL(i1,i2,i3,iv1,iv2)
DDcoup1R = ddcplChiChihhR(i1,i2,i3,iv1,iv2)
coupx = abs(coup1L)**2
Di_coupx=Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) 
Dj_coupx=Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L)  
Call SecondDerivativeVeff_sunrise(MChi2(i2),MChi2(i1),Mhh2(i3),dMChi2(i2,iv1)         & 
& ,dMChi2(i1,iv1),dMhh2(i3,iv1),dMChi2(i2,iv2),dMChi2(i1,iv2),dMhh2(i3,iv2)              & 
& ,ddMChi2(i2,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMhh2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = Real(coup1L**2,dp) 
Di_coupxbar = Real(2*Di_coup1L*coup1L,dp) 
Dj_coupxbar = Real(2*Dj_coup1L*coup1L,dp) 
DDcoupxbar = Real(2*DDcoup1L*coup1L + 2*Di_coup1L*Dj_coup1L,dp) 
Call SecondDerivativeVeff_sunrise(MChi2(i2),MChi2(i1),Mhh2(i3),dMChi2(i2,iv1)         & 
& ,dMChi2(i1,iv1),dMhh2(i3,iv1),dMChi2(i2,iv2),dMChi2(i1,iv2),dMhh2(i3,iv2)              & 
& ,ddMChi2(i2,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMhh2(i3,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 1
results1(24)=results1(24) + coeff*colorfactor*temp
results1_ti(24)=results1_ti(24) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(24)=results1(24) + coeffbar*colorfactor*tempbar
results1_ti(24)=results1_ti(24) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(24).eq.results1(24)))  write(*,*) 'NaN at FFS C[Chi, Chi, hh]' 
! ---- Chi,Hpm,bar[Cha] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,2
coup1L = cplcChaChiHpmL(i3,i1,i2)
coup1R = cplcChaChiHpmR(i3,i1,i2)
coup2L = cplChiChacHpmL(i1,i3,i2)
coup2R = cplChiChacHpmR(i1,i3,i2)
Di_coup1L = dcplcChaChiHpmL(i3,i1,i2,iv1)
Di_coup1R = dcplcChaChiHpmR(i3,i1,i2,iv1)
Dj_coup1L = dcplcChaChiHpmL(i3,i1,i2,iv2)
Dj_coup1R = dcplcChaChiHpmR(i3,i1,i2,iv2)
DDcoup1L = ddcplcChaChiHpmL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcChaChiHpmR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MCha2(i3),MChi2(i1),MHpm2(i2),dMCha2(i3,iv1)        & 
& ,dMChi2(i1,iv1),dMHpm2(i2,iv1),dMCha2(i3,iv2),dMChi2(i1,iv2),dMHpm2(i2,iv2)            & 
& ,ddMCha2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MCha2(i3),MChi2(i1),MHpm2(i2),dMCha2(i3,iv1)        & 
& ,dMChi2(i1,iv1),dMHpm2(i2,iv1),dMCha2(i3,iv2),dMChi2(i1,iv2),dMHpm2(i2,iv2)            & 
& ,ddMCha2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 1
results1(25)=results1(25) + coeff*colorfactor*temp
results1_ti(25)=results1_ti(25) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(25)=results1(25) + coeffbar*colorfactor*tempbar
results1_ti(25)=results1_ti(25) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(25).eq.results1(25)))  write(*,*) 'NaN at FFS C[Chi, Hpm, bar[Cha]]' 
! ---- Chi,Sd,bar[Fd] ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFdChiSdL(i3,i1,i2)
coup1R = cplcFdChiSdR(i3,i1,i2)
coup2L = cplChiFdcSdL(i1,i3,i2)
coup2R = cplChiFdcSdR(i1,i3,i2)
Di_coup1L = dcplcFdChiSdL(i3,i1,i2,iv1)
Di_coup1R = dcplcFdChiSdR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFdChiSdL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFdChiSdR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFdChiSdL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFdChiSdR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFd2(i3),MChi2(i1),MSd2(i2),dMFd2(i3,iv1)           & 
& ,dMChi2(i1,iv1),dMSd2(i2,iv1),dMFd2(i3,iv2),dMChi2(i1,iv2),dMSd2(i2,iv2)               & 
& ,ddMFd2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMSd2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFd2(i3),MChi2(i1),MSd2(i2),dMFd2(i3,iv1)           & 
& ,dMChi2(i1,iv1),dMSd2(i2,iv1),dMFd2(i3,iv2),dMChi2(i1,iv2),dMSd2(i2,iv2)               & 
& ,ddMFd2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMSd2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 3
results1(26)=results1(26) + coeff*colorfactor*temp
results1_ti(26)=results1_ti(26) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(26)=results1(26) + coeffbar*colorfactor*tempbar
results1_ti(26)=results1_ti(26) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(26).eq.results1(26)))  write(*,*) 'NaN at FFS C[Chi, Sd, bar[Fd]]' 
! ---- Chi,Se,bar[Fe] ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFeChiSeL(i3,i1,i2)
coup1R = cplcFeChiSeR(i3,i1,i2)
coup2L = cplChiFecSeL(i1,i3,i2)
coup2R = cplChiFecSeR(i1,i3,i2)
Di_coup1L = dcplcFeChiSeL(i3,i1,i2,iv1)
Di_coup1R = dcplcFeChiSeR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFeChiSeL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFeChiSeR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFeChiSeL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFeChiSeR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFe2(i3),MChi2(i1),MSe2(i2),dMFe2(i3,iv1)           & 
& ,dMChi2(i1,iv1),dMSe2(i2,iv1),dMFe2(i3,iv2),dMChi2(i1,iv2),dMSe2(i2,iv2)               & 
& ,ddMFe2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMSe2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFe2(i3),MChi2(i1),MSe2(i2),dMFe2(i3,iv1)           & 
& ,dMChi2(i1,iv1),dMSe2(i2,iv1),dMFe2(i3,iv2),dMChi2(i1,iv2),dMSe2(i2,iv2)               & 
& ,ddMFe2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMSe2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 1
results1(27)=results1(27) + coeff*colorfactor*temp
results1_ti(27)=results1_ti(27) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(27)=results1(27) + coeffbar*colorfactor*tempbar
results1_ti(27)=results1_ti(27) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(27).eq.results1(27)))  write(*,*) 'NaN at FFS C[Chi, Se, bar[Fe]]' 
! ---- Chi,Su,bar[Fu] ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFuChiSuL(i3,i1,i2)
coup1R = cplcFuChiSuR(i3,i1,i2)
coup2L = cplChiFucSuL(i1,i3,i2)
coup2R = cplChiFucSuR(i1,i3,i2)
Di_coup1L = dcplcFuChiSuL(i3,i1,i2,iv1)
Di_coup1R = dcplcFuChiSuR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFuChiSuL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFuChiSuR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFuChiSuL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFuChiSuR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFu2(i3),MChi2(i1),MSu2(i2),dMFu2(i3,iv1)           & 
& ,dMChi2(i1,iv1),dMSu2(i2,iv1),dMFu2(i3,iv2),dMChi2(i1,iv2),dMSu2(i2,iv2)               & 
& ,ddMFu2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMSu2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFu2(i3),MChi2(i1),MSu2(i2),dMFu2(i3,iv1)           & 
& ,dMChi2(i1,iv1),dMSu2(i2,iv1),dMFu2(i3,iv2),dMChi2(i1,iv2),dMSu2(i2,iv2)               & 
& ,ddMFu2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMSu2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 3
results1(28)=results1(28) + coeff*colorfactor*temp
results1_ti(28)=results1_ti(28) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(28)=results1(28) + coeffbar*colorfactor*tempbar
results1_ti(28)=results1_ti(28) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(28).eq.results1(28)))  write(*,*) 'NaN at FFS C[Chi, Su, bar[Fu]]' 
! ---- Chi,Sv,bar[Fv] ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFvChiSvL(i3,i1,i2)
coup1R = cplcFvChiSvR(i3,i1,i2)
coup2L = cplChiFvcSvL(i1,i3,i2)
coup2R = cplChiFvcSvR(i1,i3,i2)
Di_coup1L = dcplcFvChiSvL(i3,i1,i2,iv1)
Di_coup1R = dcplcFvChiSvR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFvChiSvL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFvChiSvR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFvChiSvL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFvChiSvR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFv2(i3),MChi2(i1),MSv2(i2),dMFv2(i3,iv1)           & 
& ,dMChi2(i1,iv1),dMSv2(i2,iv1),dMFv2(i3,iv2),dMChi2(i1,iv2),dMSv2(i2,iv2)               & 
& ,ddMFv2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMSv2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFv2(i3),MChi2(i1),MSv2(i2),dMFv2(i3,iv1)           & 
& ,dMChi2(i1,iv1),dMSv2(i2,iv1),dMFv2(i3,iv2),dMChi2(i1,iv2),dMSv2(i2,iv2)               & 
& ,ddMFv2(i3,iv1,iv2),ddMChi2(i1,iv1,iv2),ddMSv2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 1
results1(29)=results1(29) + coeff*colorfactor*temp
results1_ti(29)=results1_ti(29) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(29)=results1(29) + coeffbar*colorfactor*tempbar
results1_ti(29)=results1_ti(29) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(29).eq.results1(29)))  write(*,*) 'NaN at FFS C[Chi, Sv, bar[Fv]]' 
! ---- Fd,hh,bar[Fd] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFdFdhhL(i3,i1,i2)
coup1R = cplcFdFdhhR(i3,i1,i2)
coup2L = cplcFdFdhhL(i1,i3,i2)
coup2R = cplcFdFdhhR(i1,i3,i2)
Di_coup1L = dcplcFdFdhhL(i3,i1,i2,iv1)
Di_coup1R = dcplcFdFdhhR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFdFdhhL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFdFdhhR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFdFdhhL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFdFdhhR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFd2(i3),MFd2(i1),Mhh2(i2),dMFd2(i3,iv1)            & 
& ,dMFd2(i1,iv1),dMhh2(i2,iv1),dMFd2(i3,iv2),dMFd2(i1,iv2),dMhh2(i2,iv2),ddMFd2(i3,iv1,iv2)& 
& ,ddMFd2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFd2(i3),MFd2(i1),Mhh2(i2),dMFd2(i3,iv1)            & 
& ,dMFd2(i1,iv1),dMhh2(i2,iv1),dMFd2(i3,iv2),dMFd2(i1,iv2),dMhh2(i2,iv2),ddMFd2(i3,iv1,iv2)& 
& ,ddMFd2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 3
results1(30)=results1(30) + coeff*colorfactor*temp
results1_ti(30)=results1_ti(30) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(30)=results1(30) + coeffbar*colorfactor*tempbar
results1_ti(30)=results1_ti(30) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(30).eq.results1(30)))  write(*,*) 'NaN at FFS C[Fd, hh, bar[Fd]]' 
! ---- Fd,bar[Cha],conj[Su] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,6
coup1L = cplcChaFdcSuL(i2,i1,i3)
coup1R = cplcChaFdcSuR(i2,i1,i3)
coup2L = cplcFdChaSuL(i1,i2,i3)
coup2R = cplcFdChaSuR(i1,i2,i3)
Di_coup1L = dcplcChaFdcSuL(i2,i1,i3,iv1)
Di_coup1R = dcplcChaFdcSuR(i2,i1,i3,iv1)
Dj_coup1L = dcplcChaFdcSuL(i2,i1,i3,iv2)
Dj_coup1R = dcplcChaFdcSuR(i2,i1,i3,iv2)
DDcoup1L = ddcplcChaFdcSuL(i2,i1,i3,iv1,iv2)
DDcoup1R = ddcplcChaFdcSuR(i2,i1,i3,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MCha2(i2),MFd2(i1),MSu2(i3),dMCha2(i2,iv1)          & 
& ,dMFd2(i1,iv1),dMSu2(i3,iv1),dMCha2(i2,iv2),dMFd2(i1,iv2),dMSu2(i3,iv2),ddMCha2(i2,iv1,iv2)& 
& ,ddMFd2(i1,iv1,iv2),ddMSu2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MCha2(i2),MFd2(i1),MSu2(i3),dMCha2(i2,iv1)          & 
& ,dMFd2(i1,iv1),dMSu2(i3,iv1),dMCha2(i2,iv2),dMFd2(i1,iv2),dMSu2(i3,iv2),ddMCha2(i2,iv1,iv2)& 
& ,ddMFd2(i1,iv1,iv2),ddMSu2(i3,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 3
results1(31)=results1(31) + coeff*colorfactor*temp
results1_ti(31)=results1_ti(31) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(31)=results1(31) + coeffbar*colorfactor*tempbar
results1_ti(31)=results1_ti(31) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(31).eq.results1(31)))  write(*,*) 'NaN at FFS C[Fd, bar[Cha], conj[Su]]' 
! ---- Fe,hh,bar[Fe] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFeFehhL(i3,i1,i2)
coup1R = cplcFeFehhR(i3,i1,i2)
coup2L = cplcFeFehhL(i1,i3,i2)
coup2R = cplcFeFehhR(i1,i3,i2)
Di_coup1L = dcplcFeFehhL(i3,i1,i2,iv1)
Di_coup1R = dcplcFeFehhR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFeFehhL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFeFehhR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFeFehhL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFeFehhR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFe2(i3),MFe2(i1),Mhh2(i2),dMFe2(i3,iv1)            & 
& ,dMFe2(i1,iv1),dMhh2(i2,iv1),dMFe2(i3,iv2),dMFe2(i1,iv2),dMhh2(i2,iv2),ddMFe2(i3,iv1,iv2)& 
& ,ddMFe2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFe2(i3),MFe2(i1),Mhh2(i2),dMFe2(i3,iv1)            & 
& ,dMFe2(i1,iv1),dMhh2(i2,iv1),dMFe2(i3,iv2),dMFe2(i1,iv2),dMhh2(i2,iv2),ddMFe2(i3,iv1,iv2)& 
& ,ddMFe2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 1
results1(32)=results1(32) + coeff*colorfactor*temp
results1_ti(32)=results1_ti(32) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(32)=results1(32) + coeffbar*colorfactor*tempbar
results1_ti(32)=results1_ti(32) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(32).eq.results1(32)))  write(*,*) 'NaN at FFS C[Fe, hh, bar[Fe]]' 
! ---- Fe,bar[Cha],conj[Sv] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,6
coup1L = cplcChaFecSvL(i2,i1,i3)
coup1R = cplcChaFecSvR(i2,i1,i3)
coup2L = cplcFeChaSvL(i1,i2,i3)
coup2R = cplcFeChaSvR(i1,i2,i3)
Di_coup1L = dcplcChaFecSvL(i2,i1,i3,iv1)
Di_coup1R = dcplcChaFecSvR(i2,i1,i3,iv1)
Dj_coup1L = dcplcChaFecSvL(i2,i1,i3,iv2)
Dj_coup1R = dcplcChaFecSvR(i2,i1,i3,iv2)
DDcoup1L = ddcplcChaFecSvL(i2,i1,i3,iv1,iv2)
DDcoup1R = ddcplcChaFecSvR(i2,i1,i3,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MCha2(i2),MFe2(i1),MSv2(i3),dMCha2(i2,iv1)          & 
& ,dMFe2(i1,iv1),dMSv2(i3,iv1),dMCha2(i2,iv2),dMFe2(i1,iv2),dMSv2(i3,iv2),ddMCha2(i2,iv1,iv2)& 
& ,ddMFe2(i1,iv1,iv2),ddMSv2(i3,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MCha2(i2),MFe2(i1),MSv2(i3),dMCha2(i2,iv1)          & 
& ,dMFe2(i1,iv1),dMSv2(i3,iv1),dMCha2(i2,iv2),dMFe2(i1,iv2),dMSv2(i3,iv2),ddMCha2(i2,iv1,iv2)& 
& ,ddMFe2(i1,iv1,iv2),ddMSv2(i3,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 1
results1(33)=results1(33) + coeff*colorfactor*temp
results1_ti(33)=results1_ti(33) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(33)=results1(33) + coeffbar*colorfactor*tempbar
results1_ti(33)=results1_ti(33) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(33).eq.results1(33)))  write(*,*) 'NaN at FFS C[Fe, bar[Cha], conj[Sv]]' 
! ---- Fu,hh,bar[Fu] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFuFuhhL(i3,i1,i2)
coup1R = cplcFuFuhhR(i3,i1,i2)
coup2L = cplcFuFuhhL(i1,i3,i2)
coup2R = cplcFuFuhhR(i1,i3,i2)
Di_coup1L = dcplcFuFuhhL(i3,i1,i2,iv1)
Di_coup1R = dcplcFuFuhhR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFuFuhhL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFuFuhhR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFuFuhhL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFuFuhhR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFu2(i3),MFu2(i1),Mhh2(i2),dMFu2(i3,iv1)            & 
& ,dMFu2(i1,iv1),dMhh2(i2,iv1),dMFu2(i3,iv2),dMFu2(i1,iv2),dMhh2(i2,iv2),ddMFu2(i3,iv1,iv2)& 
& ,ddMFu2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFu2(i3),MFu2(i1),Mhh2(i2),dMFu2(i3,iv1)            & 
& ,dMFu2(i1,iv1),dMhh2(i2,iv1),dMFu2(i3,iv2),dMFu2(i1,iv2),dMhh2(i2,iv2),ddMFu2(i3,iv1,iv2)& 
& ,ddMFu2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 3
results1(34)=results1(34) + coeff*colorfactor*temp
results1_ti(34)=results1_ti(34) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(34)=results1(34) + coeffbar*colorfactor*tempbar
results1_ti(34)=results1_ti(34) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(34).eq.results1(34)))  write(*,*) 'NaN at FFS C[Fu, hh, bar[Fu]]' 
! ---- Fu,Hpm,bar[Fd] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,3
coup1L = cplcFdFuHpmL(i3,i1,i2)
coup1R = cplcFdFuHpmR(i3,i1,i2)
coup2L = cplcFuFdcHpmL(i1,i3,i2)
coup2R = cplcFuFdcHpmR(i1,i3,i2)
Di_coup1L = dcplcFdFuHpmL(i3,i1,i2,iv1)
Di_coup1R = dcplcFdFuHpmR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFdFuHpmL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFdFuHpmR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFdFuHpmL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFdFuHpmR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFd2(i3),MFu2(i1),MHpm2(i2),dMFd2(i3,iv1)           & 
& ,dMFu2(i1,iv1),dMHpm2(i2,iv1),dMFd2(i3,iv2),dMFu2(i1,iv2),dMHpm2(i2,iv2)               & 
& ,ddMFd2(i3,iv1,iv2),ddMFu2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFd2(i3),MFu2(i1),MHpm2(i2),dMFd2(i3,iv1)           & 
& ,dMFu2(i1,iv1),dMHpm2(i2,iv1),dMFd2(i3,iv2),dMFu2(i1,iv2),dMHpm2(i2,iv2)               & 
& ,ddMFd2(i3,iv1,iv2),ddMFu2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 3
results1(35)=results1(35) + coeff*colorfactor*temp
results1_ti(35)=results1_ti(35) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(35)=results1(35) + coeffbar*colorfactor*tempbar
results1_ti(35)=results1_ti(35) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(35).eq.results1(35)))  write(*,*) 'NaN at FFS C[Fu, Hpm, bar[Fd]]' 
! ---- Fv,hh,bar[Fv] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFvFvhhL(i3,i1,i2)
coup1R = cplcFvFvhhR(i3,i1,i2)
coup2L = cplcFvFvhhL(i1,i3,i2)
coup2R = cplcFvFvhhR(i1,i3,i2)
Di_coup1L = dcplcFvFvhhL(i3,i1,i2,iv1)
Di_coup1R = dcplcFvFvhhR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFvFvhhL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFvFvhhR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFvFvhhL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFvFvhhR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFv2(i3),MFv2(i1),Mhh2(i2),dMFv2(i3,iv1)            & 
& ,dMFv2(i1,iv1),dMhh2(i2,iv1),dMFv2(i3,iv2),dMFv2(i1,iv2),dMhh2(i2,iv2),ddMFv2(i3,iv1,iv2)& 
& ,ddMFv2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFv2(i3),MFv2(i1),Mhh2(i2),dMFv2(i3,iv1)            & 
& ,dMFv2(i1,iv1),dMhh2(i2,iv1),dMFv2(i3,iv2),dMFv2(i1,iv2),dMhh2(i2,iv2),ddMFv2(i3,iv1,iv2)& 
& ,ddMFv2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 1
results1(36)=results1(36) + coeff*colorfactor*temp
results1_ti(36)=results1_ti(36) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(36)=results1(36) + coeffbar*colorfactor*tempbar
results1_ti(36)=results1_ti(36) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(36).eq.results1(36)))  write(*,*) 'NaN at FFS C[Fv, hh, bar[Fv]]' 
! ---- Fv,Hpm,bar[Fe] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,3
coup1L = cplcFeFvHpmL(i3,i1,i2)
coup1R = cplcFeFvHpmR(i3,i1,i2)
coup2L = cplcFvFecHpmL(i1,i3,i2)
coup2R = cplcFvFecHpmR(i1,i3,i2)
Di_coup1L = dcplcFeFvHpmL(i3,i1,i2,iv1)
Di_coup1R = dcplcFeFvHpmR(i3,i1,i2,iv1)
Dj_coup1L = dcplcFeFvHpmL(i3,i1,i2,iv2)
Dj_coup1R = dcplcFeFvHpmR(i3,i1,i2,iv2)
DDcoup1L = ddcplcFeFvHpmL(i3,i1,i2,iv1,iv2)
DDcoup1R = ddcplcFeFvHpmR(i3,i1,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFe2(i3),MFv2(i1),MHpm2(i2),dMFe2(i3,iv1)           & 
& ,dMFv2(i1,iv1),dMHpm2(i2,iv1),dMFe2(i3,iv2),dMFv2(i1,iv2),dMHpm2(i2,iv2)               & 
& ,ddMFe2(i3,iv1,iv2),ddMFv2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFe2(i3),MFv2(i1),MHpm2(i2),dMFe2(i3,iv1)           & 
& ,dMFv2(i1,iv1),dMHpm2(i2,iv1),dMFe2(i3,iv2),dMFv2(i1,iv2),dMHpm2(i2,iv2)               & 
& ,ddMFe2(i3,iv1,iv2),ddMFv2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 1
results1(37)=results1(37) + coeff*colorfactor*temp
results1_ti(37)=results1_ti(37) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(37)=results1(37) + coeffbar*colorfactor*tempbar
results1_ti(37)=results1_ti(37) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(37).eq.results1(37)))  write(*,*) 'NaN at FFS C[Fv, Hpm, bar[Fe]]' 
! ---- Glu,Sd,bar[Fd] ----
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFdGluSdL(i3,i2)
coup1R = cplcFdGluSdR(i3,i2)
coup2L = cplGluFdcSdL(i3,i2)
coup2R = cplGluFdcSdR(i3,i2)
Di_coup1L = dcplcFdGluSdL(i3,i2,iv1)
Di_coup1R = dcplcFdGluSdR(i3,i2,iv1)
Dj_coup1L = dcplcFdGluSdL(i3,i2,iv2)
Dj_coup1R = dcplcFdGluSdR(i3,i2,iv2)
DDcoup1L = ddcplcFdGluSdL(i3,i2,iv1,iv2)
DDcoup1R = ddcplcFdGluSdR(i3,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFd2(i3),MGlu2,MSd2(i2),dMFd2(i3,iv1)               & 
& ,dMGlu2(1,iv1),dMSd2(i2,iv1),dMFd2(i3,iv2),dMGlu2(1,iv2),dMSd2(i2,iv2),ddMFd2(i3,iv1,iv2)& 
& ,ddMGlu2(1,iv1,iv2),ddMSd2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFd2(i3),MGlu2,MSd2(i2),dMFd2(i3,iv1)               & 
& ,dMGlu2(1,iv1),dMSd2(i2,iv1),dMFd2(i3,iv2),dMGlu2(1,iv2),dMSd2(i2,iv2),ddMFd2(i3,iv1,iv2)& 
& ,ddMGlu2(1,iv1,iv2),ddMSd2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 4
results1(38)=results1(38) + coeff*colorfactor*temp
results1_ti(38)=results1_ti(38) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(38)=results1(38) + coeffbar*colorfactor*tempbar
results1_ti(38)=results1_ti(38) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
if (.not.(results1(38).eq.results1(38)))  write(*,*) 'NaN at FFS C[Glu, Sd, bar[Fd]]' 
! ---- Glu,Su,bar[Fu] ----
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFuGluSuL(i3,i2)
coup1R = cplcFuGluSuR(i3,i2)
coup2L = cplGluFucSuL(i3,i2)
coup2R = cplGluFucSuR(i3,i2)
Di_coup1L = dcplcFuGluSuL(i3,i2,iv1)
Di_coup1R = dcplcFuGluSuR(i3,i2,iv1)
Dj_coup1L = dcplcFuGluSuL(i3,i2,iv2)
Dj_coup1R = dcplcFuGluSuR(i3,i2,iv2)
DDcoup1L = ddcplcFuGluSuL(i3,i2,iv1,iv2)
DDcoup1R = ddcplcFuGluSuR(i3,i2,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFu2(i3),MGlu2,MSu2(i2),dMFu2(i3,iv1)               & 
& ,dMGlu2(1,iv1),dMSu2(i2,iv1),dMFu2(i3,iv2),dMGlu2(1,iv2),dMSu2(i2,iv2),ddMFu2(i3,iv1,iv2)& 
& ,ddMGlu2(1,iv1,iv2),ddMSu2(i2,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFu2(i3),MGlu2,MSu2(i2),dMFu2(i3,iv1)               & 
& ,dMGlu2(1,iv1),dMSu2(i2,iv1),dMFu2(i3,iv2),dMGlu2(1,iv2),dMSu2(i2,iv2),ddMFu2(i3,iv1,iv2)& 
& ,ddMGlu2(1,iv1,iv2),ddMSu2(i2,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 4
results1(39)=results1(39) + coeff*colorfactor*temp
results1_ti(39)=results1_ti(39) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(39)=results1(39) + coeffbar*colorfactor*tempbar
results1_ti(39)=results1_ti(39) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
if (.not.(results1(39).eq.results1(39)))  write(*,*) 'NaN at FFS C[Glu, Su, bar[Fu]]' 
! ---- Sd,bar[Cha],bar[Fu] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,3
coup1L = cplcChacFuSdL(i2,i3,i1)
coup1R = cplcChacFuSdR(i2,i3,i1)
coup2L = cplChaFucSdL(i2,i3,i1)
coup2R = cplChaFucSdR(i2,i3,i1)
Di_coup1L = dcplcChacFuSdL(i2,i3,i1,iv1)
Di_coup1R = dcplcChacFuSdR(i2,i3,i1,iv1)
Dj_coup1L = dcplcChacFuSdL(i2,i3,i1,iv2)
Dj_coup1R = dcplcChacFuSdR(i2,i3,i1,iv2)
DDcoup1L = ddcplcChacFuSdL(i2,i3,i1,iv1,iv2)
DDcoup1R = ddcplcChacFuSdR(i2,i3,i1,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFu2(i3),MCha2(i2),MSd2(i1),dMFu2(i3,iv1)           & 
& ,dMCha2(i2,iv1),dMSd2(i1,iv1),dMFu2(i3,iv2),dMCha2(i2,iv2),dMSd2(i1,iv2)               & 
& ,ddMFu2(i3,iv1,iv2),ddMCha2(i2,iv1,iv2),ddMSd2(i1,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFu2(i3),MCha2(i2),MSd2(i1),dMFu2(i3,iv1)           & 
& ,dMCha2(i2,iv1),dMSd2(i1,iv1),dMFu2(i3,iv2),dMCha2(i2,iv2),dMSd2(i1,iv2)               & 
& ,ddMFu2(i3,iv1,iv2),ddMCha2(i2,iv1,iv2),ddMSd2(i1,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 3
results1(40)=results1(40) + coeff*colorfactor*temp
results1_ti(40)=results1_ti(40) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(40)=results1(40) + coeffbar*colorfactor*tempbar
results1_ti(40)=results1_ti(40) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(40).eq.results1(40)))  write(*,*) 'NaN at FFS C[Sd, bar[Cha], bar[Fu]]' 
! ---- Se,bar[Cha],bar[Fv] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,3
coup1L = cplcChacFvSeL(i2,i3,i1)
coup1R = cplcChacFvSeR(i2,i3,i1)
coup2L = cplChaFvcSeL(i2,i3,i1)
coup2R = cplChaFvcSeR(i2,i3,i1)
Di_coup1L = dcplcChacFvSeL(i2,i3,i1,iv1)
Di_coup1R = dcplcChacFvSeR(i2,i3,i1,iv1)
Dj_coup1L = dcplcChacFvSeL(i2,i3,i1,iv2)
Dj_coup1R = dcplcChacFvSeR(i2,i3,i1,iv2)
DDcoup1L = ddcplcChacFvSeL(i2,i3,i1,iv1,iv2)
DDcoup1R = ddcplcChacFvSeR(i2,i3,i1,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFv2(i3),MCha2(i2),MSe2(i1),dMFv2(i3,iv1)           & 
& ,dMCha2(i2,iv1),dMSe2(i1,iv1),dMFv2(i3,iv2),dMCha2(i2,iv2),dMSe2(i1,iv2)               & 
& ,ddMFv2(i3,iv1,iv2),ddMCha2(i2,iv1,iv2),ddMSe2(i1,iv1,iv2),coupx,Di_coupx,Dj_coupx,DDcoupx,'FFS   ',Q2,temp,temp_ti,temp_tj)
coupxbar = 2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = 2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = 2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = 2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFv2(i3),MCha2(i2),MSe2(i1),dMFv2(i3,iv1)           & 
& ,dMCha2(i2,iv1),dMSe2(i1,iv1),dMFv2(i3,iv2),dMCha2(i2,iv2),dMSe2(i1,iv2)               & 
& ,ddMFv2(i3,iv1,iv2),ddMCha2(i2,iv1,iv2),ddMSe2(i1,iv1,iv2),coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFSbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 1._dp
colorfactor = 1
results1(41)=results1(41) + coeff*colorfactor*temp
results1_ti(41)=results1_ti(41) + coeff*colorfactor*temp_ti
coeffbar = 1._dp
results1(41)=results1(41) + coeffbar*colorfactor*tempbar
results1_ti(41)=results1_ti(41) + coeffbar*colorfactor*tempbar_ti
    End Do
  End Do
End Do
if (.not.(results1(41).eq.results1(41)))  write(*,*) 'NaN at FFS C[Se, bar[Cha], bar[Fv]]' 

! ----- diagrams of type SSV, 2 ------ 

! ---- Sd,VG,conj[Sd] ----
Do i1=1,6
    Do i3=1,6
coup1 = cplSdcSdVG(i1,i3)
coup2 = cplSdcSdVG(i3,i1)
Di_coup1 = dcplSdcSdVG(i1,i3,iv1)
Dj_coup1 = dcplSdcSdVG(i1,i3,iv2)
DDcoup1 = ddcplSdcSdVG(i1,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MSd2(i3),MSd2(i1),0._dp,dMSd2(i3,iv1)               & 
& ,dMSd2(i1,iv1),ZeroC,dMSd2(i3,iv2),dMSd2(i1,iv2),ZeroC,ddMSd2(i3,iv1,iv2)              & 
& ,ddMSd2(i1,iv1,iv2),ZeroC,coupx,Di_coupx,Dj_coupx,DDcoupx,'SSV   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 4
results1(42)=results1(42) + coeff*colorfactor*temp
results1_ti(42)=results1_ti(42) + coeff*colorfactor*temp_ti
    End Do
End Do
if (.not.(results1(42).eq.results1(42)))  write(*,*) 'NaN at SSV C[Sd, VG, conj[Sd]]' 
! ---- Su,VG,conj[Su] ----
Do i1=1,6
    Do i3=1,6
coup1 = cplSucSuVG(i1,i3)
coup2 = cplSucSuVG(i3,i1)
Di_coup1 = dcplSucSuVG(i1,i3,iv1)
Dj_coup1 = dcplSucSuVG(i1,i3,iv2)
DDcoup1 = ddcplSucSuVG(i1,i3,iv1,iv2)
coupx=abs(coup1)**2 
Di_coupx=Di_coup1*conjg(coup1)+coup1*conjg(Di_coup1) 
Dj_coupx=Dj_coup1*conjg(coup1)+coup1*conjg(Dj_coup1) 
DDcoupx = DDcoup1*conjg(coup1)+coup1*conjg(DDcoup1) & 
& + Di_coup1*conjg(Dj_coup1)+Dj_coup1*conjg(Di_coup1)  
Call SecondDerivativeVeff_sunrise(MSu2(i3),MSu2(i1),0._dp,dMSu2(i3,iv1)               & 
& ,dMSu2(i1,iv1),ZeroC,dMSu2(i3,iv2),dMSu2(i1,iv2),ZeroC,ddMSu2(i3,iv1,iv2)              & 
& ,ddMSu2(i1,iv1,iv2),ZeroC,coupx,Di_coupx,Dj_coupx,DDcoupx,'SSV   ',Q2,temp,temp_ti,temp_tj)
coeff = 0.5_dp
colorfactor = 4
results1(43)=results1(43) + coeff*colorfactor*temp
results1_ti(43)=results1_ti(43) + coeff*colorfactor*temp_ti
    End Do
End Do
if (.not.(results1(43).eq.results1(43)))  write(*,*) 'NaN at SSV C[Su, VG, conj[Su]]' 

! ----- diagrams of type FFV, 3 ------ 

! ---- Fd,VG,bar[Fd] ----
Do i1=1,3
    Do i3=1,3
coup1L = cplcFdFdVGL(i3,i1)
coup1R = cplcFdFdVGR(i3,i1)
coup2L = cplcFdFdVGL(i1,i3)
coup2R = cplcFdFdVGR(i1,i3)
Di_coup1L = dcplcFdFdVGL(i3,i1,iv1)
Di_coup1R = dcplcFdFdVGR(i3,i1,iv1)
Dj_coup1L = dcplcFdFdVGL(i3,i1,iv2)
Dj_coup1R = dcplcFdFdVGR(i3,i1,iv2)
DDcoup1L = ddcplcFdFdVGL(i3,i1,iv1,iv2)
DDcoup1R = ddcplcFdFdVGR(i3,i1,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFd2(i3),MFd2(i1),0._dp,dMFd2(i3,iv1)               & 
& ,dMFd2(i1,iv1),ZeroC,dMFd2(i3,iv2),dMFd2(i1,iv2),ZeroC,ddMFd2(i3,iv1,iv2)              & 
& ,ddMFd2(i1,iv1,iv2),ZeroC,coupx,Di_coupx,Dj_coupx,DDcoupx,'FFV   ',Q2,temp,temp_ti,temp_tj)
coupxbar = -2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = -2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = -2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = -2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFd2(i3),MFd2(i1),0._dp,dMFd2(i3,iv1)               & 
& ,dMFd2(i1,iv1),ZeroC,dMFd2(i3,iv2),dMFd2(i1,iv2),ZeroC,ddMFd2(i3,iv1,iv2)              & 
& ,ddMFd2(i1,iv1,iv2),ZeroC,coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFVbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 4
results1(44)=results1(44) + coeff*colorfactor*temp
results1_ti(44)=results1_ti(44) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(44)=results1(44) + coeffbar*colorfactor*tempbar
results1_ti(44)=results1_ti(44) + coeffbar*colorfactor*tempbar_ti
    End Do
End Do
if (.not.(results1(44).eq.results1(44)))  write(*,*) 'NaN at FFV C[Fd, VG, bar[Fd]]' 
! ---- Fu,VG,bar[Fu] ----
Do i1=1,3
    Do i3=1,3
coup1L = cplcFuFuVGL(i3,i1)
coup1R = cplcFuFuVGR(i3,i1)
coup2L = cplcFuFuVGL(i1,i3)
coup2R = cplcFuFuVGR(i1,i3)
Di_coup1L = dcplcFuFuVGL(i3,i1,iv1)
Di_coup1R = dcplcFuFuVGR(i3,i1,iv1)
Dj_coup1L = dcplcFuFuVGL(i3,i1,iv2)
Dj_coup1R = dcplcFuFuVGR(i3,i1,iv2)
DDcoup1L = ddcplcFuFuVGL(i3,i1,iv1,iv2)
DDcoup1R = ddcplcFuFuVGR(i3,i1,iv1,iv2)
coupx = (abs(coup1L)**2 + abs(coup1R)**2) 
Di_coupx = Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) &
& + Di_coup1R*conjg(coup1R)+coup1R*conjg(Di_coup1R) 
Dj_coupx = Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) &
& + Dj_coup1R*conjg(coup1R)+coup1R*conjg(Dj_coup1R) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L) & 
& + DDcoup1R*conjg(coup1R)+coup1R*conjg(DDcoup1R) & 
& + Di_coup1R*conjg(Dj_coup1R)+Dj_coup1R*conjg(Di_coup1R)  
Call SecondDerivativeVeff_sunrise(MFu2(i3),MFu2(i1),0._dp,dMFu2(i3,iv1)               & 
& ,dMFu2(i1,iv1),ZeroC,dMFu2(i3,iv2),dMFu2(i1,iv2),ZeroC,ddMFu2(i3,iv1,iv2)              & 
& ,ddMFu2(i1,iv1,iv2),ZeroC,coupx,Di_coupx,Dj_coupx,DDcoupx,'FFV   ',Q2,temp,temp_ti,temp_tj)
coupxbar = -2*Real(coup1L*conjg(coup1R),dp) 
Di_coupxbar = -2*Real(Di_coup1L*conjg(coup1R)+coup1L*conjg(Di_coup1R),dp) 
Dj_coupxbar = -2*Real(Dj_coup1L*conjg(coup1R)+coup1L*conjg(Dj_coup1R),dp) 
DDcoupxbar = -2*Real(DDcoup1L*conjg(coup1R)+coup1L*conjg(DDcoup1R) &  
&          + Di_coup1L*conjg(Dj_coup1R)+Dj_coup1L*conjg(Di_coup1R)  ,dp) 
Call SecondDerivativeVeff_sunrise(MFu2(i3),MFu2(i1),0._dp,dMFu2(i3,iv1)               & 
& ,dMFu2(i1,iv1),ZeroC,dMFu2(i3,iv2),dMFu2(i1,iv2),ZeroC,ddMFu2(i3,iv1,iv2)              & 
& ,ddMFu2(i1,iv1,iv2),ZeroC,coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFVbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 4
results1(45)=results1(45) + coeff*colorfactor*temp
results1_ti(45)=results1_ti(45) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(45)=results1(45) + coeffbar*colorfactor*tempbar
results1_ti(45)=results1_ti(45) + coeffbar*colorfactor*tempbar_ti
    End Do
End Do
if (.not.(results1(45).eq.results1(45)))  write(*,*) 'NaN at FFV C[Fu, VG, bar[Fu]]' 
! ---- Glu,Glu,VG ----
coup1L = cplGluGluVGL
coup1R = cplGluGluVGR
coup2L = cplGluGluVGL
coup2R = cplGluGluVGR
Di_coup1L = dcplGluGluVGL(iv1)
Di_coup1R = dcplGluGluVGR(iv1)
Dj_coup1L = dcplGluGluVGL(iv2)
Dj_coup1R = dcplGluGluVGR(iv2)
DDcoup1L = ddcplGluGluVGL(iv1,iv2)
DDcoup1R = ddcplGluGluVGR(iv1,iv2)
coupx = abs(coup1L)**2
Di_coupx=Di_coup1L*conjg(coup1L)+coup1L*conjg(Di_coup1L) 
Dj_coupx=Dj_coup1L*conjg(coup1L)+coup1L*conjg(Dj_coup1L) 
DDcoupx = DDcoup1L*conjg(coup1L)+coup1L*conjg(DDcoup1L) & 
& + Di_coup1L*conjg(Dj_coup1L)+Dj_coup1L*conjg(Di_coup1L)  
Call SecondDerivativeVeff_sunrise(MGlu2,MGlu2,0._dp,dMGlu2(1,iv1),dMGlu2(1,iv1)       & 
& ,ZeroC,dMGlu2(1,iv2),dMGlu2(1,iv2),ZeroC,ddMGlu2(1,iv1,iv2),ddMGlu2(1,iv1,iv2)         & 
& ,ZeroC,coupx,Di_coupx,Dj_coupx,DDcoupx,'FFV   ',Q2,temp,temp_ti,temp_tj)
coupxbar = Real(coup1L**2,dp) 
Di_coupxbar = Real(2*Di_coup1L*coup1L,dp) 
Dj_coupxbar = Real(2*Dj_coup1L*coup1L,dp) 
DDcoupxbar = Real(2*DDcoup1L*coup1L + 2*Di_coup1L*Dj_coup1L,dp) 
Call SecondDerivativeVeff_sunrise(MGlu2,MGlu2,0._dp,dMGlu2(1,iv1),dMGlu2(1,iv1)       & 
& ,ZeroC,dMGlu2(1,iv2),dMGlu2(1,iv2),ZeroC,ddMGlu2(1,iv1,iv2),ddMGlu2(1,iv1,iv2)         & 
& ,ZeroC,coupxbar,Di_coupxbar,Dj_coupxbar,DDcoupxbar,'FFVbar',Q2,tempbar,tempbar_ti,tempbar_tj)
coeff = 0.5_dp
colorfactor = 24
results1(46)=results1(46) + coeff*colorfactor*temp
results1_ti(46)=results1_ti(46) + coeff*colorfactor*temp_ti
coeffbar = 0.5_dp
results1(46)=results1(46) + coeffbar*colorfactor*tempbar
results1_ti(46)=results1_ti(46) + coeffbar*colorfactor*tempbar_ti
if (.not.(results1(46).eq.results1(46)))  write(*,*) 'NaN at FFV C[Glu, Glu, VG]' 

! ----- diagrams of type VVV, 1 ------ 

! ---- VG,VG,VG ----
coup1 = cplVGVGVG
coup2 = cplVGVGVG
Di_coup1 = dcplVGVGVG(iv1)
Dj_coup1 = dcplVGVGVG(iv2)
DDcoup1 = ddcplVGVGVG(iv1,iv2)
coeff = 0.000
colorfactor = 24
results1(47)=results1(47) + coeff*colorfactor*temp
results1_ti(47)=results1_ti(47) + coeff*colorfactor*temp_ti
if (.not.(results1(47).eq.results1(47)))  write(*,*) 'NaN at VVV C[VG, VG, VG]' 
! ----- Topology2: diagrams w. 2 Particles and 1 Vertex


! ----- diagrams of type SS, 26 ------ 

! ---- Ah,Ah ----
Do i1=1,3
 Do i2=1,3
coup1 = cplAhAhAhAh(i1,i1,i2,i2)
Di_coup1 = dcplAhAhAhAh(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplAhAhAhAh(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplAhAhAhAh(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MAh2(i1),MAh2(i2),dMAh2(i1,iv1),dMAh2(i2,iv1)         & 
& ,dMAh2(i1,iv2),dMAh2(i2,iv2),ddMAh2(i1,iv1,iv2),ddMAh2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp/8._dp)
results2(1)=results2(1) + coeff*temp
results2_ti(1)=results2_ti(1) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(1).eq.results2(1)))  write(*,*) 'NaN at SS C[Ah, Ah, Ah, Ah]' 
! ---- Ah,hh ----
Do i1=1,3
 Do i2=1,3
coup1 = cplAhAhhhhh(i1,i1,i2,i2)
Di_coup1 = dcplAhAhhhhh(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplAhAhhhhh(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplAhAhhhhh(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MAh2(i1),Mhh2(i2),dMAh2(i1,iv1),dMhh2(i2,iv1)         & 
& ,dMAh2(i1,iv2),dMhh2(i2,iv2),ddMAh2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.25_dp)
results2(2)=results2(2) + coeff*temp
results2_ti(2)=results2_ti(2) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(2).eq.results2(2)))  write(*,*) 'NaN at SS C[Ah, Ah, hh, hh]' 
! ---- Ah,Hpm ----
Do i1=1,3
 Do i2=1,2
coup1 = cplAhAhHpmcHpm(i1,i1,i2,i2)
Di_coup1 = dcplAhAhHpmcHpm(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplAhAhHpmcHpm(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplAhAhHpmcHpm(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MAh2(i1),MHpm2(i2),dMAh2(i1,iv1),dMHpm2(i2,iv1)       & 
& ,dMAh2(i1,iv2),dMHpm2(i2,iv2),ddMAh2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(3)=results2(3) + coeff*temp
results2_ti(3)=results2_ti(3) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(3).eq.results2(3)))  write(*,*) 'NaN at SS C[Ah, Ah, Hpm, conj[Hpm]]' 
! ---- Ah,Sd ----
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSdcSd(i1,i1,i2,i2)
Di_coup1 = dcplAhAhSdcSd(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplAhAhSdcSd(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplAhAhSdcSd(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MAh2(i1),MSd2(i2),dMAh2(i1,iv1),dMSd2(i2,iv1)         & 
& ,dMAh2(i1,iv2),dMSd2(i2,iv2),ddMAh2(i1,iv1,iv2),ddMSd2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(4)=results2(4) + coeff*temp
results2_ti(4)=results2_ti(4) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(4).eq.results2(4)))  write(*,*) 'NaN at SS C[Ah, Ah, Sd, conj[Sd]]' 
! ---- Ah,Se ----
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSecSe(i1,i1,i2,i2)
Di_coup1 = dcplAhAhSecSe(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplAhAhSecSe(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplAhAhSecSe(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MAh2(i1),MSe2(i2),dMAh2(i1,iv1),dMSe2(i2,iv1)         & 
& ,dMAh2(i1,iv2),dMSe2(i2,iv2),ddMAh2(i1,iv1,iv2),ddMSe2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(5)=results2(5) + coeff*temp
results2_ti(5)=results2_ti(5) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(5).eq.results2(5)))  write(*,*) 'NaN at SS C[Ah, Ah, Se, conj[Se]]' 
! ---- Ah,Su ----
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSucSu(i1,i1,i2,i2)
Di_coup1 = dcplAhAhSucSu(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplAhAhSucSu(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplAhAhSucSu(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MAh2(i1),MSu2(i2),dMAh2(i1,iv1),dMSu2(i2,iv1)         & 
& ,dMAh2(i1,iv2),dMSu2(i2,iv2),ddMAh2(i1,iv1,iv2),ddMSu2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(6)=results2(6) + coeff*temp
results2_ti(6)=results2_ti(6) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(6).eq.results2(6)))  write(*,*) 'NaN at SS C[Ah, Ah, Su, conj[Su]]' 
! ---- Ah,Sv ----
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSvcSv(i1,i1,i2,i2)
Di_coup1 = dcplAhAhSvcSv(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplAhAhSvcSv(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplAhAhSvcSv(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MAh2(i1),MSv2(i2),dMAh2(i1,iv1),dMSv2(i2,iv1)         & 
& ,dMAh2(i1,iv2),dMSv2(i2,iv2),ddMAh2(i1,iv1,iv2),ddMSv2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(7)=results2(7) + coeff*temp
results2_ti(7)=results2_ti(7) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(7).eq.results2(7)))  write(*,*) 'NaN at SS C[Ah, Ah, Sv, conj[Sv]]' 
! ---- hh,hh ----
Do i1=1,3
 Do i2=1,3
coup1 = cplhhhhhhhh(i1,i1,i2,i2)
Di_coup1 = dcplhhhhhhhh(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplhhhhhhhh(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplhhhhhhhh(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(Mhh2(i1),Mhh2(i2),dMhh2(i1,iv1),dMhh2(i2,iv1)         & 
& ,dMhh2(i1,iv2),dMhh2(i2,iv2),ddMhh2(i1,iv1,iv2),ddMhh2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp/8._dp)
results2(8)=results2(8) + coeff*temp
results2_ti(8)=results2_ti(8) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(8).eq.results2(8)))  write(*,*) 'NaN at SS C[hh, hh, hh, hh]' 
! ---- hh,Hpm ----
Do i1=1,3
 Do i2=1,2
coup1 = cplhhhhHpmcHpm(i1,i1,i2,i2)
Di_coup1 = dcplhhhhHpmcHpm(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplhhhhHpmcHpm(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplhhhhHpmcHpm(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(Mhh2(i1),MHpm2(i2),dMhh2(i1,iv1),dMHpm2(i2,iv1)       & 
& ,dMhh2(i1,iv2),dMHpm2(i2,iv2),ddMhh2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(9)=results2(9) + coeff*temp
results2_ti(9)=results2_ti(9) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(9).eq.results2(9)))  write(*,*) 'NaN at SS C[hh, hh, Hpm, conj[Hpm]]' 
! ---- hh,Sd ----
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSdcSd(i1,i1,i2,i2)
Di_coup1 = dcplhhhhSdcSd(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplhhhhSdcSd(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplhhhhSdcSd(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(Mhh2(i1),MSd2(i2),dMhh2(i1,iv1),dMSd2(i2,iv1)         & 
& ,dMhh2(i1,iv2),dMSd2(i2,iv2),ddMhh2(i1,iv1,iv2),ddMSd2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(10)=results2(10) + coeff*temp
results2_ti(10)=results2_ti(10) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(10).eq.results2(10)))  write(*,*) 'NaN at SS C[hh, hh, Sd, conj[Sd]]' 
! ---- hh,Se ----
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSecSe(i1,i1,i2,i2)
Di_coup1 = dcplhhhhSecSe(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplhhhhSecSe(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplhhhhSecSe(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(Mhh2(i1),MSe2(i2),dMhh2(i1,iv1),dMSe2(i2,iv1)         & 
& ,dMhh2(i1,iv2),dMSe2(i2,iv2),ddMhh2(i1,iv1,iv2),ddMSe2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(11)=results2(11) + coeff*temp
results2_ti(11)=results2_ti(11) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(11).eq.results2(11)))  write(*,*) 'NaN at SS C[hh, hh, Se, conj[Se]]' 
! ---- hh,Su ----
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSucSu(i1,i1,i2,i2)
Di_coup1 = dcplhhhhSucSu(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplhhhhSucSu(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplhhhhSucSu(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(Mhh2(i1),MSu2(i2),dMhh2(i1,iv1),dMSu2(i2,iv1)         & 
& ,dMhh2(i1,iv2),dMSu2(i2,iv2),ddMhh2(i1,iv1,iv2),ddMSu2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(12)=results2(12) + coeff*temp
results2_ti(12)=results2_ti(12) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(12).eq.results2(12)))  write(*,*) 'NaN at SS C[hh, hh, Su, conj[Su]]' 
! ---- hh,Sv ----
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSvcSv(i1,i1,i2,i2)
Di_coup1 = dcplhhhhSvcSv(i1,i1,i2,i2,iv1)
Dj_coup1 = dcplhhhhSvcSv(i1,i1,i2,i2,iv2)
DDcoup1 = ddcplhhhhSvcSv(i1,i1,i2,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(Mhh2(i1),MSv2(i2),dMhh2(i1,iv1),dMSv2(i2,iv1)         & 
& ,dMhh2(i1,iv2),dMSv2(i2,iv2),ddMhh2(i1,iv1,iv2),ddMSv2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(13)=results2(13) + coeff*temp
results2_ti(13)=results2_ti(13) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(13).eq.results2(13)))  write(*,*) 'NaN at SS C[hh, hh, Sv, conj[Sv]]' 
! ---- Hpm,Hpm ----
Do i1=1,2
 Do i2=1,2
coup1 = cplHpmHpmcHpmcHpm(i1,i2,i1,i2)
Di_coup1 = dcplHpmHpmcHpmcHpm(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplHpmHpmcHpmcHpm(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplHpmHpmcHpmcHpm(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MHpm2(i1),MHpm2(i2),dMHpm2(i1,iv1),dMHpm2(i2,iv1)     & 
& ,dMHpm2(i1,iv2),dMHpm2(i2,iv2),ddMHpm2(i1,iv1,iv2),ddMHpm2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(14)=results2(14) + coeff*temp
results2_ti(14)=results2_ti(14) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(14).eq.results2(14)))  write(*,*) 'NaN at SS C[Hpm, Hpm, conj[Hpm], conj[Hpm]]' 
! ---- Hpm,Sd ----
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSdcHpmcSd(i1,i2,i1,i2)
Di_coup1 = dcplHpmSdcHpmcSd(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplHpmSdcHpmcSd(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplHpmSdcHpmcSd(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MHpm2(i1),MSd2(i2),dMHpm2(i1,iv1),dMSd2(i2,iv1)       & 
& ,dMHpm2(i1,iv2),dMSd2(i2,iv2),ddMHpm2(i1,iv1,iv2),ddMSd2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp)
results2(15)=results2(15) + coeff*temp
results2_ti(15)=results2_ti(15) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(15).eq.results2(15)))  write(*,*) 'NaN at SS C[Hpm, Sd, conj[Hpm], conj[Sd]]' 
! ---- Hpm,Se ----
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSecHpmcSe(i1,i2,i1,i2)
Di_coup1 = dcplHpmSecHpmcSe(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplHpmSecHpmcSe(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplHpmSecHpmcSe(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MHpm2(i1),MSe2(i2),dMHpm2(i1,iv1),dMSe2(i2,iv1)       & 
& ,dMHpm2(i1,iv2),dMSe2(i2,iv2),ddMHpm2(i1,iv1,iv2),ddMSe2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp)
results2(16)=results2(16) + coeff*temp
results2_ti(16)=results2_ti(16) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(16).eq.results2(16)))  write(*,*) 'NaN at SS C[Hpm, Se, conj[Hpm], conj[Se]]' 
! ---- Hpm,Su ----
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSucHpmcSu(i1,i2,i1,i2)
Di_coup1 = dcplHpmSucHpmcSu(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplHpmSucHpmcSu(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplHpmSucHpmcSu(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MHpm2(i1),MSu2(i2),dMHpm2(i1,iv1),dMSu2(i2,iv1)       & 
& ,dMHpm2(i1,iv2),dMSu2(i2,iv2),ddMHpm2(i1,iv1,iv2),ddMSu2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp)
results2(17)=results2(17) + coeff*temp
results2_ti(17)=results2_ti(17) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(17).eq.results2(17)))  write(*,*) 'NaN at SS C[Hpm, Su, conj[Hpm], conj[Su]]' 
! ---- Hpm,Sv ----
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSvcHpmcSv(i1,i2,i1,i2)
Di_coup1 = dcplHpmSvcHpmcSv(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplHpmSvcHpmcSv(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplHpmSvcHpmcSv(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MHpm2(i1),MSv2(i2),dMHpm2(i1,iv1),dMSv2(i2,iv1)       & 
& ,dMHpm2(i1,iv2),dMSv2(i2,iv2),ddMHpm2(i1,iv1,iv2),ddMSv2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp)
results2(18)=results2(18) + coeff*temp
results2_ti(18)=results2_ti(18) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(18).eq.results2(18)))  write(*,*) 'NaN at SS C[Hpm, Sv, conj[Hpm], conj[Sv]]' 
! ---- Sd,Sd ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSdSdcSdcSd(i1,i2,i1,i2)
Di_coup1 = dcplSdSdcSdcSd(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplSdSdcSdcSd(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplSdSdcSdcSd(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MSd2(i1),MSd2(i2),dMSd2(i1,iv1),dMSd2(i2,iv1)         & 
& ,dMSd2(i1,iv2),dMSd2(i2,iv2),ddMSd2(i1,iv1,iv2),ddMSd2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(19)=results2(19) + coeff*temp
results2_ti(19)=results2_ti(19) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(19).eq.results2(19)))  write(*,*) 'NaN at SS C[Sd, Sd, conj[Sd], conj[Sd]]' 
! ---- Sd,Se ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSdSecSdcSe(i1,i2,i1,i2)
Di_coup1 = dcplSdSecSdcSe(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplSdSecSdcSe(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplSdSecSdcSe(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MSd2(i1),MSe2(i2),dMSd2(i1,iv1),dMSe2(i2,iv1)         & 
& ,dMSd2(i1,iv2),dMSe2(i2,iv2),ddMSd2(i1,iv1,iv2),ddMSe2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp)
results2(20)=results2(20) + coeff*temp
results2_ti(20)=results2_ti(20) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(20).eq.results2(20)))  write(*,*) 'NaN at SS C[Sd, Se, conj[Sd], conj[Se]]' 
! ---- Sd,Su ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSdSucSdcSu(i1,i2,i1,i2)
Di_coup1 = dcplSdSucSdcSu(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplSdSucSdcSu(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplSdSucSdcSu(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MSd2(i1),MSu2(i2),dMSd2(i1,iv1),dMSu2(i2,iv1)         & 
& ,dMSd2(i1,iv2),dMSu2(i2,iv2),ddMSd2(i1,iv1,iv2),ddMSu2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp)
results2(21)=results2(21) + coeff*temp
results2_ti(21)=results2_ti(21) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(21).eq.results2(21)))  write(*,*) 'NaN at SS C[Sd, Su, conj[Sd], conj[Su]]' 
! ---- Se,Se ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSeSecSecSe(i1,i2,i1,i2)
Di_coup1 = dcplSeSecSecSe(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplSeSecSecSe(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplSeSecSecSe(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MSe2(i1),MSe2(i2),dMSe2(i1,iv1),dMSe2(i2,iv1)         & 
& ,dMSe2(i1,iv2),dMSe2(i2,iv2),ddMSe2(i1,iv1,iv2),ddMSe2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(22)=results2(22) + coeff*temp
results2_ti(22)=results2_ti(22) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(22).eq.results2(22)))  write(*,*) 'NaN at SS C[Se, Se, conj[Se], conj[Se]]' 
! ---- Se,Sv ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSeSvcSecSv(i1,i2,i1,i2)
Di_coup1 = dcplSeSvcSecSv(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplSeSvcSecSv(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplSeSvcSecSv(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MSe2(i1),MSv2(i2),dMSe2(i1,iv1),dMSv2(i2,iv1)         & 
& ,dMSe2(i1,iv2),dMSv2(i2,iv2),ddMSe2(i1,iv1,iv2),ddMSv2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp)
results2(23)=results2(23) + coeff*temp
results2_ti(23)=results2_ti(23) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(23).eq.results2(23)))  write(*,*) 'NaN at SS C[Se, Sv, conj[Se], conj[Sv]]' 
! ---- Su,Su ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSuSucSucSu(i1,i2,i1,i2)
Di_coup1 = dcplSuSucSucSu(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplSuSucSucSu(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplSuSucSucSu(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MSu2(i1),MSu2(i2),dMSu2(i1,iv1),dMSu2(i2,iv1)         & 
& ,dMSu2(i1,iv2),dMSu2(i2,iv2),ddMSu2(i1,iv1,iv2),ddMSu2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(24)=results2(24) + coeff*temp
results2_ti(24)=results2_ti(24) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(24).eq.results2(24)))  write(*,*) 'NaN at SS C[Su, Su, conj[Su], conj[Su]]' 
! ---- Su,Sv ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSuSvcSucSv(i1,i2,i1,i2)
Di_coup1 = dcplSuSvcSucSv(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplSuSvcSucSv(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplSuSvcSucSv(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MSu2(i1),MSv2(i2),dMSu2(i1,iv1),dMSv2(i2,iv1)         & 
& ,dMSu2(i1,iv2),dMSv2(i2,iv2),ddMSu2(i1,iv1,iv2),ddMSv2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-1._dp)
results2(25)=results2(25) + coeff*temp
results2_ti(25)=results2_ti(25) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(25).eq.results2(25)))  write(*,*) 'NaN at SS C[Su, Sv, conj[Su], conj[Sv]]' 
! ---- Sv,Sv ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSvSvcSvcSv(i1,i2,i1,i2)
Di_coup1 = dcplSvSvcSvcSv(i1,i2,i1,i2,iv1)
Dj_coup1 = dcplSvSvcSvcSv(i1,i2,i1,i2,iv2)
DDcoup1 = ddcplSvSvcSvcSv(i1,i2,i1,i2,iv1,iv2)
Call SecondDerivativeVeff_balls(MSv2(i1),MSv2(i2),dMSv2(i1,iv1),dMSv2(i2,iv1)         & 
& ,dMSv2(i1,iv2),dMSv2(i2,iv2),ddMSv2(i1,iv1,iv2),ddMSv2(i2,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'SS',Q2,temp,temp_ti,temp_tj)
coeff = (-0.5_dp)
results2(26)=results2(26) + coeff*temp
results2_ti(26)=results2_ti(26) + coeff*temp_ti
  End Do
End Do
if (.not.(results2(26).eq.results2(26)))  write(*,*) 'NaN at SS C[Sv, Sv, conj[Sv], conj[Sv]]' 

! ----- diagrams of type VS, 2 ------ 

! ---- Sd,VG ----
Do i1=1,6
coup1 = cplSdcSdVGVG(i1,i1)
Di_coup1 = dcplSdcSdVGVG(i1,i1,iv1)
Dj_coup1 = dcplSdcSdVGVG(i1,i1,iv2)
DDcoup1 = ddcplSdcSdVGVG(i1,i1,iv1,iv2)
Call SecondDerivativeVeff_balls(0._dp,MSd2(i1),ZeroC,dMSd2(i1,iv1),ZeroC,dMSd2(i1,iv2)& 
& ,ZeroC,ddMSd2(i1,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'VS',Q2,temp,temp_ti,temp_tj)
coeff = 0._dp
results2(27)=results2(27) + coeff*temp
results2_ti(27)=results2_ti(27) + coeff*temp_ti
End Do
if (.not.(results2(27).eq.results2(27)))  write(*,*) 'NaN at VS C[Sd, VG, VG, conj[Sd]]' 
! ---- Su,VG ----
Do i1=1,6
coup1 = cplSucSuVGVG(i1,i1)
Di_coup1 = dcplSucSuVGVG(i1,i1,iv1)
Dj_coup1 = dcplSucSuVGVG(i1,i1,iv2)
DDcoup1 = ddcplSucSuVGVG(i1,i1,iv1,iv2)
Call SecondDerivativeVeff_balls(0._dp,MSu2(i1),ZeroC,dMSu2(i1,iv1),ZeroC,dMSu2(i1,iv2)& 
& ,ZeroC,ddMSu2(i1,iv1,iv2),coup1,Di_coup1,Dj_coup1,DDcoup1,'VS',Q2,temp,temp_ti,temp_tj)
coeff = 0._dp
results2(28)=results2(28) + coeff*temp
results2_ti(28)=results2_ti(28) + coeff*temp_ti
End Do
if (.not.(results2(28).eq.results2(28)))  write(*,*) 'NaN at VS C[Su, VG, VG, conj[Su]]' 

  result = sum(results1)+sum(results2) ! 2nd deriv. of V
  result_ti = sum(results1_ti)+sum(results2_ti) ! 1st deriv. of V
  pi2L(iv1,iv2) = oo16pi2**2 * Real(result,dp) 
  End Do 
  ti2L(iv1) = oo16pi2**2 * Real(result_ti,dp) 
End Do 
Do iv1=1,3
  Do iv2=1,iv1-1
  pi2L(iv1,iv2) = pi2L(iv2,iv1) 
  End Do 
End Do 
End Subroutine SecondDerivativeEffPot2Loop 





Subroutine FirstDerivativeEffPot2Loop(vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,              & 
& Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,             & 
& mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,               & 
& mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,kont,ti2L)

Implicit None 
Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Real(dp),Intent(in) :: vd,vu,vS

Integer, Intent(inout):: kont
Real(dp), Intent(out) :: ti2L(3)
Integer :: i,i1,i2,i3,includeGhosts,NrContr 
Integer :: iv1, iv2 
Integer :: NrContr1,NrContr2 !nr of contributing diagrams
Real(dp) :: Q2,colorfactor,coeff,coeffbar
Complex(dp) :: result,temp,tempbar
Complex(dp) :: coup1,coup2,coup1L,coup1R,coup2L,coup2R,coupx,coupxbar
Complex(dp) :: dcoup1,dcoup2,dcoup1L,dcoup1R,dcoup2L,dcoup2R,dcoupx,dcoupxbar
Real(dp) :: gout(37980) 
Real(dp) :: results1(47),results2(28)
Complex(dp) :: cplAhAhAh(3,3,3),cplAhAhhh(3,3,3),cplAhhhhh(3,3,3),cplAhHpmcHpm(3,2,2),               & 
& cplAhSdcSd(3,6,6),cplAhSecSe(3,6,6),cplAhSucSu(3,6,6),cplAhSvcSv(3,6,6),               & 
& cplhhhhhh(3,3,3),cplhhHpmcHpm(3,2,2),cplhhSdcSd(3,6,6),cplhhSecSe(3,6,6),              & 
& cplhhSucSu(3,6,6),cplhhSvcSv(3,6,6),cplHpmSucSd(2,6,6),cplHpmSvcSe(2,6,6),             & 
& cplSdcHpmcSu(6,2,6),cplSecHpmcSv(6,2,6),cplSdcSdVG(6,6),cplSucSuVG(6,6),               & 
& cplVGVGVG,cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplChiChiAhL(6,6,3),               & 
& cplChiChiAhR(6,6,3),cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),cplcFeFeAhL(3,3,3),          & 
& cplcFeFeAhR(3,3,3),cplcFuFuAhL(3,3,3),cplcFuFuAhR(3,3,3),cplcFvFvAhL(3,3,3),           & 
& cplcFvFvAhR(3,3,3),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),cplChaFucSdL(2,3,6),    & 
& cplChaFucSdR(2,3,6),cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplcChaChahhL(2,2,3),      & 
& cplcChaChahhR(2,2,3),cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),cplcFeChaSvL(3,2,6),      & 
& cplcFeChaSvR(3,2,6),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiFdcSdL(6,3,6),       & 
& cplChiFdcSdR(6,3,6),cplChiFecSeL(6,3,6),cplChiFecSeR(6,3,6),cplChiFucSuL(6,3,6),       & 
& cplChiFucSuR(6,3,6),cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6),cplcChaChiHpmL(2,6,2),     & 
& cplcChaChiHpmR(2,6,2),cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFeChiSeL(3,6,6),     & 
& cplcFeChiSeR(3,6,6),cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFvChiSvL(3,6,6),       & 
& cplcFvChiSvR(3,6,6),cplGluFdcSdL(3,6),cplGluFdcSdR(3,6),cplcFdFdhhL(3,3,3),            & 
& cplcFdFdhhR(3,3,3),cplcChaFdcSuL(2,3,6),cplcChaFdcSuR(2,3,6),cplcFuFdcHpmL(3,3,2),     & 
& cplcFuFdcHpmR(3,3,2),cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcChaFecSvL(2,3,6),       & 
& cplcChaFecSvR(2,3,6),cplcFvFecHpmL(3,3,2),cplcFvFecHpmR(3,3,2),cplGluFucSuL(3,6),      & 
& cplGluFucSuR(3,6),cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFdFuHpmL(3,3,2),           & 
& cplcFdFuHpmR(3,3,2),cplcFvFvhhL(3,3,3),cplcFvFvhhR(3,3,3),cplcFeFvHpmL(3,3,2),         & 
& cplcFeFvHpmR(3,3,2),cplcFdGluSdL(3,6),cplcFdGluSdR(3,6),cplcFuGluSuL(3,6),             & 
& cplcFuGluSuR(3,6),cplcChacFuSdL(2,3,6),cplcChacFuSdR(2,3,6),cplcChacFvSeL(2,3,6),      & 
& cplcChacFvSeR(2,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFuFuVGL(3,3),               & 
& cplcFuFuVGR(3,3),cplGluGluVGL,cplGluGluVGR

Complex(dp) :: cplAhAhAhAh(3,3,3,3),cplAhAhhhhh(3,3,3,3),cplAhAhHpmcHpm(3,3,2,2),cplAhAhSdcSd(3,3,6,6),& 
& cplAhAhSecSe(3,3,6,6),cplAhAhSucSu(3,3,6,6),cplAhAhSvcSv(3,3,6,6),cplhhhhhhhh(3,3,3,3),& 
& cplhhhhHpmcHpm(3,3,2,2),cplhhhhSdcSd(3,3,6,6),cplhhhhSecSe(3,3,6,6),cplhhhhSucSu(3,3,6,6),& 
& cplhhhhSvcSv(3,3,6,6),cplHpmHpmcHpmcHpm(2,2,2,2),cplHpmSdcHpmcSd(2,6,2,6),             & 
& cplHpmSecHpmcSe(2,6,2,6),cplHpmSucHpmcSu(2,6,2,6),cplHpmSvcHpmcSv(2,6,2,6),            & 
& cplSdSdcSdcSd(6,6,6,6),cplSdSecSdcSe(6,6,6,6),cplSdSucSdcSu(6,6,6,6),cplSeSecSecSe(6,6,6,6),& 
& cplSeSvcSecSv(6,6,6,6),cplSuSucSucSu(6,6,6,6),cplSuSvcSucSv(6,6,6,6),cplSvSvcSvcSv(6,6,6,6),& 
& cplSdcSdVGVG(6,6),cplSucSuVGVG(6,6)

Complex(dp) :: dcplAhAhAh(3,3,3,3),dcplAhAhhh(3,3,3,3),dcplAhhhhh(3,3,3,3),dcplAhHpmcHpm(3,2,2,3),   & 
& dcplAhSdcSd(3,6,6,3),dcplAhSecSe(3,6,6,3),dcplAhSucSu(3,6,6,3),dcplAhSvcSv(3,6,6,3),   & 
& dcplhhhhhh(3,3,3,3),dcplhhHpmcHpm(3,2,2,3),dcplhhSdcSd(3,6,6,3),dcplhhSecSe(3,6,6,3),  & 
& dcplhhSucSu(3,6,6,3),dcplhhSvcSv(3,6,6,3),dcplHpmSucSd(2,6,6,3),dcplHpmSvcSe(2,6,6,3), & 
& dcplSdcHpmcSu(6,2,6,3),dcplSecHpmcSv(6,2,6,3),dcplSdcSdVG(6,6,3),dcplSucSuVG(6,6,3),   & 
& dcplVGVGVG(3),dcplcChaChaAhL(2,2,3,3),dcplcChaChaAhR(2,2,3,3),dcplChiChiAhL(6,6,3,3),  & 
& dcplChiChiAhR(6,6,3,3),dcplcFdFdAhL(3,3,3,3),dcplcFdFdAhR(3,3,3,3),dcplcFeFeAhL(3,3,3,3),& 
& dcplcFeFeAhR(3,3,3,3),dcplcFuFuAhL(3,3,3,3),dcplcFuFuAhR(3,3,3,3),dcplcFvFvAhL(3,3,3,3),& 
& dcplcFvFvAhR(3,3,3,3),dcplChiChacHpmL(6,2,2,3),dcplChiChacHpmR(6,2,2,3),               & 
& dcplChaFucSdL(2,3,6,3),dcplChaFucSdR(2,3,6,3),dcplChaFvcSeL(2,3,6,3),dcplChaFvcSeR(2,3,6,3),& 
& dcplcChaChahhL(2,2,3,3),dcplcChaChahhR(2,2,3,3),dcplcFdChaSuL(3,2,6,3),dcplcFdChaSuR(3,2,6,3),& 
& dcplcFeChaSvL(3,2,6,3),dcplcFeChaSvR(3,2,6,3),dcplChiChihhL(6,6,3,3),dcplChiChihhR(6,6,3,3),& 
& dcplChiFdcSdL(6,3,6,3),dcplChiFdcSdR(6,3,6,3),dcplChiFecSeL(6,3,6,3),dcplChiFecSeR(6,3,6,3),& 
& dcplChiFucSuL(6,3,6,3),dcplChiFucSuR(6,3,6,3),dcplChiFvcSvL(6,3,6,3),dcplChiFvcSvR(6,3,6,3),& 
& dcplcChaChiHpmL(2,6,2,3),dcplcChaChiHpmR(2,6,2,3),dcplcFdChiSdL(3,6,6,3),              & 
& dcplcFdChiSdR(3,6,6,3),dcplcFeChiSeL(3,6,6,3),dcplcFeChiSeR(3,6,6,3),dcplcFuChiSuL(3,6,6,3),& 
& dcplcFuChiSuR(3,6,6,3),dcplcFvChiSvL(3,6,6,3),dcplcFvChiSvR(3,6,6,3),dcplGluFdcSdL(3,6,3),& 
& dcplGluFdcSdR(3,6,3),dcplcFdFdhhL(3,3,3,3),dcplcFdFdhhR(3,3,3,3),dcplcChaFdcSuL(2,3,6,3),& 
& dcplcChaFdcSuR(2,3,6,3),dcplcFuFdcHpmL(3,3,2,3),dcplcFuFdcHpmR(3,3,2,3),               & 
& dcplcFeFehhL(3,3,3,3),dcplcFeFehhR(3,3,3,3),dcplcChaFecSvL(2,3,6,3),dcplcChaFecSvR(2,3,6,3),& 
& dcplcFvFecHpmL(3,3,2,3),dcplcFvFecHpmR(3,3,2,3),dcplGluFucSuL(3,6,3),dcplGluFucSuR(3,6,3),& 
& dcplcFuFuhhL(3,3,3,3),dcplcFuFuhhR(3,3,3,3),dcplcFdFuHpmL(3,3,2,3),dcplcFdFuHpmR(3,3,2,3),& 
& dcplcFvFvhhL(3,3,3,3),dcplcFvFvhhR(3,3,3,3),dcplcFeFvHpmL(3,3,2,3),dcplcFeFvHpmR(3,3,2,3),& 
& dcplcFdGluSdL(3,6,3),dcplcFdGluSdR(3,6,3),dcplcFuGluSuL(3,6,3),dcplcFuGluSuR(3,6,3),   & 
& dcplcChacFuSdL(2,3,6,3),dcplcChacFuSdR(2,3,6,3),dcplcChacFvSeL(2,3,6,3),               & 
& dcplcChacFvSeR(2,3,6,3),dcplcFdFdVGL(3,3,3),dcplcFdFdVGR(3,3,3),dcplcFuFuVGL(3,3,3),   & 
& dcplcFuFuVGR(3,3,3),dcplGluGluVGL(3),dcplGluGluVGR(3)

Complex(dp) :: dcplAhAhAhAh(3,3,3,3,3),dcplAhAhhhhh(3,3,3,3,3),dcplAhAhHpmcHpm(3,3,2,2,3),           & 
& dcplAhAhSdcSd(3,3,6,6,3),dcplAhAhSecSe(3,3,6,6,3),dcplAhAhSucSu(3,3,6,6,3),            & 
& dcplAhAhSvcSv(3,3,6,6,3),dcplhhhhhhhh(3,3,3,3,3),dcplhhhhHpmcHpm(3,3,2,2,3),           & 
& dcplhhhhSdcSd(3,3,6,6,3),dcplhhhhSecSe(3,3,6,6,3),dcplhhhhSucSu(3,3,6,6,3),            & 
& dcplhhhhSvcSv(3,3,6,6,3),dcplHpmHpmcHpmcHpm(2,2,2,2,3),dcplHpmSdcHpmcSd(2,6,2,6,3),    & 
& dcplHpmSecHpmcSe(2,6,2,6,3),dcplHpmSucHpmcSu(2,6,2,6,3),dcplHpmSvcHpmcSv(2,6,2,6,3),   & 
& dcplSdSdcSdcSd(6,6,6,6,3),dcplSdSecSdcSe(6,6,6,6,3),dcplSdSucSdcSu(6,6,6,6,3),         & 
& dcplSeSecSecSe(6,6,6,6,3),dcplSeSvcSecSv(6,6,6,6,3),dcplSuSucSucSu(6,6,6,6,3),         & 
& dcplSuSvcSucSv(6,6,6,6,3),dcplSvSvcSvcSv(6,6,6,6,3),dcplSdcSdVGVG(6,6,3),              & 
& dcplSucSuVGVG(6,6,3)

Real(dp) :: MSd(6),MSd2(6),MSv(6),MSv2(6),MFv(3),MFv2(3),MSu(6),MSu2(6),MSe(6),MSe2(6),           & 
& Mhh(3),Mhh2(3),MAh(3),MAh2(3),MHpm(2),MHpm2(2),MChi(6),MChi2(6),MCha(2),               & 
& MCha2(2),MFe(3),MFe2(3),MFd(3),MFd2(3),MFu(3),MFu2(3),MGlu,MGlu2,MVZ,MVZp,             & 
& MVZ2,MVZp2,MVWm,MVWm2

Complex(dp) :: dMSd(6,3),dMSd2(6,3),dMSv(6,3),dMSv2(6,3),dMFv(3,3),dMFv2(3,3),dMSu(6,3),             & 
& dMSu2(6,3),dMSe(6,3),dMSe2(6,3),dMhh(3,3),dMhh2(3,3),dMAh(3,3),dMAh2(3,3),             & 
& dMHpm(2,3),dMHpm2(2,3),dMChi(6,3),dMChi2(6,3),dMCha(2,3),dMCha2(2,3),dMFe(3,3),        & 
& dMFe2(3,3),dMFd(3,3),dMFd2(3,3),dMFu(3,3),dMFu2(3,3),dMGlu(1,3),dMGlu2(1,3),           & 
& dMVZ(1,3),dMVZp(1,3),dMVZ2(1,3),dMVZp2(1,3),dMVWm(1,3),dMVWm2(1,3)

!! ------------------------------------------------- 
!! Calculate masses, couplings and their derivatives 
!! ------------------------------------------------- 

Do i1=1,3
Call FirstDerivativeMassesCoups(i1,vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,            & 
& lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,              & 
& ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,            & 
& ms2,M1,M2,M3,M4,Tep,Tmup,gout)

Call GToMassesCoups(gout,MSd,MSd2,MSv,MSv2,MFv,MFv2,MSu,MSu2,MSe,MSe2,Mhh,            & 
& Mhh2,MAh,MAh2,MHpm,MHpm2,MChi,MChi2,MCha,MCha2,MFe,MFe2,MFd,MFd2,MFu,MFu2,             & 
& MGlu,MGlu2,MVZ,MVZp,MVZ2,MVZp2,MVWm,MVWm2,cplAhAhAh,cplAhAhhh,cplAhhhhh,               & 
& cplAhHpmcHpm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,       & 
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,      & 
& cplSecHpmcSv,cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,              & 
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,         & 
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,       & 
& cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,         & 
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         & 
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         & 
& cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,         & 
& cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,       & 
& cplcFvFecHpmL,cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,           & 
& cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,       & 
& cplcChacFvSeL,cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplGluGluVGL,cplGluGluVGR,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,         & 
& cplAhAhSecSe,cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,        & 
& cplhhhhSecSe,cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,              & 
& cplHpmSecHpmcSe,cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,           & 
& cplSdSucSdcSu,cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,   & 
& cplSdcSdVGVG,cplSucSuVGVG)

dMSd(:,i1) = MSd
dMSd2(:,i1) = MSd2
dMSv(:,i1) = MSv
dMSv2(:,i1) = MSv2
dMFv(:,i1) = MFv
dMFv2(:,i1) = MFv2
dMSu(:,i1) = MSu
dMSu2(:,i1) = MSu2
dMSe(:,i1) = MSe
dMSe2(:,i1) = MSe2
dMhh(:,i1) = Mhh
dMhh2(:,i1) = Mhh2
dMAh(:,i1) = MAh
dMAh2(:,i1) = MAh2
dMHpm(:,i1) = MHpm
dMHpm2(:,i1) = MHpm2
dMChi(:,i1) = MChi
dMChi2(:,i1) = MChi2
dMCha(:,i1) = MCha
dMCha2(:,i1) = MCha2
dMFe(:,i1) = MFe
dMFe2(:,i1) = MFe2
dMFd(:,i1) = MFd
dMFd2(:,i1) = MFd2
dMFu(:,i1) = MFu
dMFu2(:,i1) = MFu2
dMGlu(:,i1) = MGlu
dMGlu2(:,i1) = MGlu2
dMVZ(:,i1) = MVZ
dMVZp(:,i1) = MVZp
dMVZ2(:,i1) = MVZ2
dMVZp2(:,i1) = MVZp2
dMVWm(:,i1) = MVWm
dMVWm2(:,i1) = MVWm2
dcplAhAhAh(:,:,:,i1) = cplAhAhAh
dcplAhAhhh(:,:,:,i1) = cplAhAhhh
dcplAhhhhh(:,:,:,i1) = cplAhhhhh
dcplAhHpmcHpm(:,:,:,i1) = cplAhHpmcHpm
dcplAhSdcSd(:,:,:,i1) = cplAhSdcSd
dcplAhSecSe(:,:,:,i1) = cplAhSecSe
dcplAhSucSu(:,:,:,i1) = cplAhSucSu
dcplAhSvcSv(:,:,:,i1) = cplAhSvcSv
dcplhhhhhh(:,:,:,i1) = cplhhhhhh
dcplhhHpmcHpm(:,:,:,i1) = cplhhHpmcHpm
dcplhhSdcSd(:,:,:,i1) = cplhhSdcSd
dcplhhSecSe(:,:,:,i1) = cplhhSecSe
dcplhhSucSu(:,:,:,i1) = cplhhSucSu
dcplhhSvcSv(:,:,:,i1) = cplhhSvcSv
dcplHpmSucSd(:,:,:,i1) = cplHpmSucSd
dcplHpmSvcSe(:,:,:,i1) = cplHpmSvcSe
dcplSdcHpmcSu(:,:,:,i1) = cplSdcHpmcSu
dcplSecHpmcSv(:,:,:,i1) = cplSecHpmcSv
dcplSdcSdVG(:,:,i1) = cplSdcSdVG
dcplSucSuVG(:,:,i1) = cplSucSuVG
dcplVGVGVG(i1) = cplVGVGVG
dcplcChaChaAhL(:,:,:,i1) = cplcChaChaAhL
dcplcChaChaAhR(:,:,:,i1) = cplcChaChaAhR
dcplChiChiAhL(:,:,:,i1) = cplChiChiAhL
dcplChiChiAhR(:,:,:,i1) = cplChiChiAhR
dcplcFdFdAhL(:,:,:,i1) = cplcFdFdAhL
dcplcFdFdAhR(:,:,:,i1) = cplcFdFdAhR
dcplcFeFeAhL(:,:,:,i1) = cplcFeFeAhL
dcplcFeFeAhR(:,:,:,i1) = cplcFeFeAhR
dcplcFuFuAhL(:,:,:,i1) = cplcFuFuAhL
dcplcFuFuAhR(:,:,:,i1) = cplcFuFuAhR
dcplcFvFvAhL(:,:,:,i1) = cplcFvFvAhL
dcplcFvFvAhR(:,:,:,i1) = cplcFvFvAhR
dcplChiChacHpmL(:,:,:,i1) = cplChiChacHpmL
dcplChiChacHpmR(:,:,:,i1) = cplChiChacHpmR
dcplChaFucSdL(:,:,:,i1) = cplChaFucSdL
dcplChaFucSdR(:,:,:,i1) = cplChaFucSdR
dcplChaFvcSeL(:,:,:,i1) = cplChaFvcSeL
dcplChaFvcSeR(:,:,:,i1) = cplChaFvcSeR
dcplcChaChahhL(:,:,:,i1) = cplcChaChahhL
dcplcChaChahhR(:,:,:,i1) = cplcChaChahhR
dcplcFdChaSuL(:,:,:,i1) = cplcFdChaSuL
dcplcFdChaSuR(:,:,:,i1) = cplcFdChaSuR
dcplcFeChaSvL(:,:,:,i1) = cplcFeChaSvL
dcplcFeChaSvR(:,:,:,i1) = cplcFeChaSvR
dcplChiChihhL(:,:,:,i1) = cplChiChihhL
dcplChiChihhR(:,:,:,i1) = cplChiChihhR
dcplChiFdcSdL(:,:,:,i1) = cplChiFdcSdL
dcplChiFdcSdR(:,:,:,i1) = cplChiFdcSdR
dcplChiFecSeL(:,:,:,i1) = cplChiFecSeL
dcplChiFecSeR(:,:,:,i1) = cplChiFecSeR
dcplChiFucSuL(:,:,:,i1) = cplChiFucSuL
dcplChiFucSuR(:,:,:,i1) = cplChiFucSuR
dcplChiFvcSvL(:,:,:,i1) = cplChiFvcSvL
dcplChiFvcSvR(:,:,:,i1) = cplChiFvcSvR
dcplcChaChiHpmL(:,:,:,i1) = cplcChaChiHpmL
dcplcChaChiHpmR(:,:,:,i1) = cplcChaChiHpmR
dcplcFdChiSdL(:,:,:,i1) = cplcFdChiSdL
dcplcFdChiSdR(:,:,:,i1) = cplcFdChiSdR
dcplcFeChiSeL(:,:,:,i1) = cplcFeChiSeL
dcplcFeChiSeR(:,:,:,i1) = cplcFeChiSeR
dcplcFuChiSuL(:,:,:,i1) = cplcFuChiSuL
dcplcFuChiSuR(:,:,:,i1) = cplcFuChiSuR
dcplcFvChiSvL(:,:,:,i1) = cplcFvChiSvL
dcplcFvChiSvR(:,:,:,i1) = cplcFvChiSvR
dcplGluFdcSdL(:,:,i1) = cplGluFdcSdL
dcplGluFdcSdR(:,:,i1) = cplGluFdcSdR
dcplcFdFdhhL(:,:,:,i1) = cplcFdFdhhL
dcplcFdFdhhR(:,:,:,i1) = cplcFdFdhhR
dcplcChaFdcSuL(:,:,:,i1) = cplcChaFdcSuL
dcplcChaFdcSuR(:,:,:,i1) = cplcChaFdcSuR
dcplcFuFdcHpmL(:,:,:,i1) = cplcFuFdcHpmL
dcplcFuFdcHpmR(:,:,:,i1) = cplcFuFdcHpmR
dcplcFeFehhL(:,:,:,i1) = cplcFeFehhL
dcplcFeFehhR(:,:,:,i1) = cplcFeFehhR
dcplcChaFecSvL(:,:,:,i1) = cplcChaFecSvL
dcplcChaFecSvR(:,:,:,i1) = cplcChaFecSvR
dcplcFvFecHpmL(:,:,:,i1) = cplcFvFecHpmL
dcplcFvFecHpmR(:,:,:,i1) = cplcFvFecHpmR
dcplGluFucSuL(:,:,i1) = cplGluFucSuL
dcplGluFucSuR(:,:,i1) = cplGluFucSuR
dcplcFuFuhhL(:,:,:,i1) = cplcFuFuhhL
dcplcFuFuhhR(:,:,:,i1) = cplcFuFuhhR
dcplcFdFuHpmL(:,:,:,i1) = cplcFdFuHpmL
dcplcFdFuHpmR(:,:,:,i1) = cplcFdFuHpmR
dcplcFvFvhhL(:,:,:,i1) = cplcFvFvhhL
dcplcFvFvhhR(:,:,:,i1) = cplcFvFvhhR
dcplcFeFvHpmL(:,:,:,i1) = cplcFeFvHpmL
dcplcFeFvHpmR(:,:,:,i1) = cplcFeFvHpmR
dcplcFdGluSdL(:,:,i1) = cplcFdGluSdL
dcplcFdGluSdR(:,:,i1) = cplcFdGluSdR
dcplcFuGluSuL(:,:,i1) = cplcFuGluSuL
dcplcFuGluSuR(:,:,i1) = cplcFuGluSuR
dcplcChacFuSdL(:,:,:,i1) = cplcChacFuSdL
dcplcChacFuSdR(:,:,:,i1) = cplcChacFuSdR
dcplcChacFvSeL(:,:,:,i1) = cplcChacFvSeL
dcplcChacFvSeR(:,:,:,i1) = cplcChacFvSeR
dcplcFdFdVGL(:,:,i1) = cplcFdFdVGL
dcplcFdFdVGR(:,:,i1) = cplcFdFdVGR
dcplcFuFuVGL(:,:,i1) = cplcFuFuVGL
dcplcFuFuVGR(:,:,i1) = cplcFuFuVGR
dcplGluGluVGL(i1) = cplGluGluVGL
dcplGluGluVGR(i1) = cplGluGluVGR
dcplAhAhAhAh(:,:,:,:,i1) = cplAhAhAhAh
dcplAhAhhhhh(:,:,:,:,i1) = cplAhAhhhhh
dcplAhAhHpmcHpm(:,:,:,:,i1) = cplAhAhHpmcHpm
dcplAhAhSdcSd(:,:,:,:,i1) = cplAhAhSdcSd
dcplAhAhSecSe(:,:,:,:,i1) = cplAhAhSecSe
dcplAhAhSucSu(:,:,:,:,i1) = cplAhAhSucSu
dcplAhAhSvcSv(:,:,:,:,i1) = cplAhAhSvcSv
dcplhhhhhhhh(:,:,:,:,i1) = cplhhhhhhhh
dcplhhhhHpmcHpm(:,:,:,:,i1) = cplhhhhHpmcHpm
dcplhhhhSdcSd(:,:,:,:,i1) = cplhhhhSdcSd
dcplhhhhSecSe(:,:,:,:,i1) = cplhhhhSecSe
dcplhhhhSucSu(:,:,:,:,i1) = cplhhhhSucSu
dcplhhhhSvcSv(:,:,:,:,i1) = cplhhhhSvcSv
dcplHpmHpmcHpmcHpm(:,:,:,:,i1) = cplHpmHpmcHpmcHpm
dcplHpmSdcHpmcSd(:,:,:,:,i1) = cplHpmSdcHpmcSd
dcplHpmSecHpmcSe(:,:,:,:,i1) = cplHpmSecHpmcSe
dcplHpmSucHpmcSu(:,:,:,:,i1) = cplHpmSucHpmcSu
dcplHpmSvcHpmcSv(:,:,:,:,i1) = cplHpmSvcHpmcSv
dcplSdSdcSdcSd(:,:,:,:,i1) = cplSdSdcSdcSd
dcplSdSecSdcSe(:,:,:,:,i1) = cplSdSecSdcSe
dcplSdSucSdcSu(:,:,:,:,i1) = cplSdSucSdcSu
dcplSeSecSecSe(:,:,:,:,i1) = cplSeSecSecSe
dcplSeSvcSecSv(:,:,:,:,i1) = cplSeSvcSecSv
dcplSuSucSucSu(:,:,:,:,i1) = cplSuSucSucSu
dcplSuSvcSucSv(:,:,:,:,i1) = cplSuSvcSucSv
dcplSvSvcSvcSv(:,:,:,:,i1) = cplSvSvcSvcSv
dcplSdcSdVGVG(:,:,i1) = cplSdcSdVGVG
dcplSucSuVGVG(:,:,i1) = cplSucSuVGVG
End Do 
 
Call TreeMassesEffPot(MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,               & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZVR,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,               & 
& gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,            & 
& TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,              & 
& mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,.True.,kont)

Call CouplingsForEffPot3(lam,Tlam,ZA,vd,vu,vS,ZH,ZP,Yd,Td,ZD,Ye11,TYe11,              & 
& Ye22,TYe22,Ye33,TYe33,Tep,Tmup,ZE,Yu,Tu,ZU,Yv11,TYv11,Yv22,TYv22,Yv33,TYv33,           & 
& ZV,g3,UM,UP,ZN,ZDL,ZDR,ZEL,ZER,ZUL,ZUR,ZVL,ZVR,pG,cplAhAhAh,cplAhAhhh,cplAhhhhh,       & 
& cplAhHpmcHpm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,       & 
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,      & 
& cplSecHpmcSv,cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,              & 
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,         & 
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,       & 
& cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,         & 
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         & 
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         & 
& cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,         & 
& cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,       & 
& cplcFvFecHpmL,cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,           & 
& cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,       & 
& cplcChacFvSeL,cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplGluGluVGL,cplGluGluVGR)

Call CouplingsForEffPot4(lam,ZA,ZH,ZP,Yd,ZD,Ye11,Ye22,Ye33,ZE,Yu,ZU,Yv11,             & 
& Yv22,Yv33,ZV,g3,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,cplAhAhSecSe,      & 
& cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,cplhhhhSecSe,        & 
& cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,cplHpmSecHpmcSe,           & 
& cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,cplSdSucSdcSu,             & 
& cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,cplSdcSdVGVG,    & 
& cplSucSuVGVG)



!! ------------------------------------------------- 
!! Calculate derivative of effective potential      
!! ------------------------------------------------- 



Q2 = getRenormalizationScale()
ti2L = 0._dp
result = ZeroC
results1 = ZeroC
results2 = ZeroC
Do iv1=1,3
! ----- Topology1 (sunrise): diagrams w. 3 Particles and 2 Vertices

! ----- diagrams of type SSS, 16 ------ 
! ---- Ah,Ah,Ah ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplAhAhAh(i1,i2,i3)
coup2 = cplAhAhAh(i1,i2,i3)
dcoup1 = dcplAhAhAh(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MAh2(i1),MAh2(i2),MAh2(i3),dMAh2(i1,iv1)             & 
& ,dMAh2(i2,iv1),dMAh2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 1._dp/12._dp
colorfactor = 1
results1(1)=results1(1) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Ah, Ah]' 
    End Do
  End Do
End Do
! ---- Ah,Ah,hh ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplAhAhhh(i1,i2,i3)
coup2 = cplAhAhhh(i1,i2,i3)
dcoup1 = dcplAhAhhh(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MAh2(i1),MAh2(i2),Mhh2(i3),dMAh2(i1,iv1)             & 
& ,dMAh2(i2,iv1),dMhh2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.25_dp
colorfactor = 1
results1(2)=results1(2) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Ah, hh]' 
    End Do
  End Do
End Do
! ---- Ah,hh,hh ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplAhhhhh(i1,i2,i3)
coup2 = cplAhhhhh(i1,i2,i3)
dcoup1 = dcplAhhhhh(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MAh2(i1),Mhh2(i2),Mhh2(i3),dMAh2(i1,iv1)             & 
& ,dMhh2(i2,iv1),dMhh2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.25_dp
colorfactor = 1
results1(3)=results1(3) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, hh, hh]' 
    End Do
  End Do
End Do
! ---- Ah,Hpm,conj[Hpm] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,2
coup1 = cplAhHpmcHpm(i1,i2,i3)
coup2 = cplAhHpmcHpm(i1,i3,i2)
dcoup1 = dcplAhHpmcHpm(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MAh2(i1),MHpm2(i2),MHpm2(i3),dMAh2(i1,iv1)           & 
& ,dMHpm2(i2,iv1),dMHpm2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 1
results1(4)=results1(4) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Hpm, conj[Hpm]]' 
    End Do
  End Do
End Do
! ---- Ah,Sd,conj[Sd] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSdcSd(i1,i2,i3)
coup2 = cplAhSdcSd(i1,i3,i2)
dcoup1 = dcplAhSdcSd(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MAh2(i1),MSd2(i2),MSd2(i3),dMAh2(i1,iv1)             & 
& ,dMSd2(i2,iv1),dMSd2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 3
results1(5)=results1(5) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Sd, conj[Sd]]' 
    End Do
  End Do
End Do
! ---- Ah,Se,conj[Se] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSecSe(i1,i2,i3)
coup2 = cplAhSecSe(i1,i3,i2)
dcoup1 = dcplAhSecSe(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MAh2(i1),MSe2(i2),MSe2(i3),dMAh2(i1,iv1)             & 
& ,dMSe2(i2,iv1),dMSe2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 1
results1(6)=results1(6) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Se, conj[Se]]' 
    End Do
  End Do
End Do
! ---- Ah,Su,conj[Su] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSucSu(i1,i2,i3)
coup2 = cplAhSucSu(i1,i3,i2)
dcoup1 = dcplAhSucSu(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MAh2(i1),MSu2(i2),MSu2(i3),dMAh2(i1,iv1)             & 
& ,dMSu2(i2,iv1),dMSu2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 3
results1(7)=results1(7) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Su, conj[Su]]' 
    End Do
  End Do
End Do
! ---- Ah,Sv,conj[Sv] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplAhSvcSv(i1,i2,i3)
coup2 = cplAhSvcSv(i1,i3,i2)
dcoup1 = dcplAhSvcSv(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MAh2(i1),MSv2(i2),MSv2(i3),dMAh2(i1,iv1)             & 
& ,dMSv2(i2,iv1),dMSv2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 1
results1(8)=results1(8) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Ah, Sv, conj[Sv]]' 
    End Do
  End Do
End Do
! ---- hh,hh,hh ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1 = cplhhhhhh(i1,i2,i3)
coup2 = cplhhhhhh(i1,i2,i3)
dcoup1 = dcplhhhhhh(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(Mhh2(i1),Mhh2(i2),Mhh2(i3),dMhh2(i1,iv1)             & 
& ,dMhh2(i2,iv1),dMhh2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 1._dp/12._dp
colorfactor = 1
results1(9)=results1(9) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, hh, hh]' 
    End Do
  End Do
End Do
! ---- hh,Hpm,conj[Hpm] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,2
coup1 = cplhhHpmcHpm(i1,i2,i3)
coup2 = cplhhHpmcHpm(i1,i3,i2)
dcoup1 = dcplhhHpmcHpm(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(Mhh2(i1),MHpm2(i2),MHpm2(i3),dMhh2(i1,iv1)           & 
& ,dMHpm2(i2,iv1),dMHpm2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 1
results1(10)=results1(10) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Hpm, conj[Hpm]]' 
    End Do
  End Do
End Do
! ---- hh,Sd,conj[Sd] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSdcSd(i1,i2,i3)
coup2 = cplhhSdcSd(i1,i3,i2)
dcoup1 = dcplhhSdcSd(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(Mhh2(i1),MSd2(i2),MSd2(i3),dMhh2(i1,iv1)             & 
& ,dMSd2(i2,iv1),dMSd2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 3
results1(11)=results1(11) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Sd, conj[Sd]]' 
    End Do
  End Do
End Do
! ---- hh,Se,conj[Se] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSecSe(i1,i2,i3)
coup2 = cplhhSecSe(i1,i3,i2)
dcoup1 = dcplhhSecSe(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(Mhh2(i1),MSe2(i2),MSe2(i3),dMhh2(i1,iv1)             & 
& ,dMSe2(i2,iv1),dMSe2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 1
results1(12)=results1(12) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Se, conj[Se]]' 
    End Do
  End Do
End Do
! ---- hh,Su,conj[Su] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSucSu(i1,i2,i3)
coup2 = cplhhSucSu(i1,i3,i2)
dcoup1 = dcplhhSucSu(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(Mhh2(i1),MSu2(i2),MSu2(i3),dMhh2(i1,iv1)             & 
& ,dMSu2(i2,iv1),dMSu2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 3
results1(13)=results1(13) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Su, conj[Su]]' 
    End Do
  End Do
End Do
! ---- hh,Sv,conj[Sv] ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1 = cplhhSvcSv(i1,i2,i3)
coup2 = cplhhSvcSv(i1,i3,i2)
dcoup1 = dcplhhSvcSv(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(Mhh2(i1),MSv2(i2),MSv2(i3),dMhh2(i1,iv1)             & 
& ,dMSv2(i2,iv1),dMSv2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 1
results1(14)=results1(14) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[hh, Sv, conj[Sv]]' 
    End Do
  End Do
End Do
! ---- Sd,conj[Hpm],conj[Su] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,6
coup1 = cplSdcHpmcSu(i1,i2,i3)
coup2 = cplHpmSucSd(i2,i3,i1)
dcoup1 = dcplSdcHpmcSu(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MSd2(i1),MHpm2(i2),MSu2(i3),dMSd2(i1,iv1)            & 
& ,dMHpm2(i2,iv1),dMSu2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 1._dp
colorfactor = 3
results1(15)=results1(15) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Sd, conj[Hpm], conj[Su]]' 
    End Do
  End Do
End Do
! ---- Se,conj[Hpm],conj[Sv] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,6
coup1 = cplSecHpmcSv(i1,i2,i3)
coup2 = cplHpmSvcSe(i2,i3,i1)
dcoup1 = dcplSecHpmcSv(i1,i2,i3,iv1)
coupx=abs(coup1)**2 
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MSe2(i1),MHpm2(i2),MSv2(i3),dMSe2(i1,iv1)            & 
& ,dMHpm2(i2,iv1),dMSv2(i3,iv1),coupx,dcoupx,'SSS   ',Q2,temp)
coeff = 1._dp
colorfactor = 1
results1(16)=results1(16) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSS C[Se, conj[Hpm], conj[Sv]]' 
    End Do
  End Do
End Do
! ----- diagrams of type FFS, 25 ------ 
! ---- Ah,Cha,bar[Cha] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,2
coup1L = cplcChaChaAhL(i3,i2,i1)
coup1R = cplcChaChaAhR(i3,i2,i1)
coup2L = cplcChaChaAhL(i2,i3,i1)
coup2R = cplcChaChaAhR(i2,i3,i1)
dcoup1L = dcplcChaChaAhL(i3,i2,i1,iv1)
dcoup1R = dcplcChaChaAhR(i3,i2,i1,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MCha2(i3),MCha2(i2),MAh2(i1),dMCha2(i3,iv1)          & 
& ,dMCha2(i2,iv1),dMAh2(i1,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MCha2(i3),MCha2(i2),MAh2(i1),dMCha2(i3,iv1)          & 
& ,dMCha2(i2,iv1),dMAh2(i1,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 1
results1(17)=results1(17) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Cha, bar[Cha]]' 
coeffbar = 0.5_dp
results1(17)=results1(17) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Ah,Chi,Chi ----
Do i1=1,3
 Do i2=1,6
    Do i3=1,6
coup1L = cplChiChiAhL(i2,i3,i1)
coup1R = cplChiChiAhR(i2,i3,i1)
coup2L = cplChiChiAhL(i2,i3,i1)
coup2R = cplChiChiAhR(i2,i3,i1)
dcoup1L = dcplChiChiAhL(i2,i3,i1,iv1)
dcoup1R = dcplChiChiAhR(i2,i3,i1,iv1)
coupx=(abs(coup1L)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L) 
coupxbar=Real(coup1L**2,dp) 
dcoupxbar=Real(2*dcoup1L*coup1L,dp) 
Call FirstDerivativeVeff_sunrise(MChi2(i3),MChi2(i2),MAh2(i1),dMChi2(i3,iv1)          & 
& ,dMChi2(i2,iv1),dMAh2(i1,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MChi2(i3),MChi2(i2),MAh2(i1),dMChi2(i3,iv1)          & 
& ,dMChi2(i2,iv1),dMAh2(i1,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 1
results1(18)=results1(18) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Chi, Chi]' 
coeffbar = 0.5_dp
results1(18)=results1(18) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Ah,Fd,bar[Fd] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFdFdAhL(i3,i2,i1)
coup1R = cplcFdFdAhR(i3,i2,i1)
coup2L = cplcFdFdAhL(i2,i3,i1)
coup2R = cplcFdFdAhR(i2,i3,i1)
dcoup1L = dcplcFdFdAhL(i3,i2,i1,iv1)
dcoup1R = dcplcFdFdAhR(i3,i2,i1,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFd2(i3),MFd2(i2),MAh2(i1),dMFd2(i3,iv1)             & 
& ,dMFd2(i2,iv1),dMAh2(i1,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFd2(i3),MFd2(i2),MAh2(i1),dMFd2(i3,iv1)             & 
& ,dMFd2(i2,iv1),dMAh2(i1,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 3
results1(19)=results1(19) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Fd, bar[Fd]]' 
coeffbar = 0.5_dp
results1(19)=results1(19) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Ah,Fe,bar[Fe] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFeFeAhL(i3,i2,i1)
coup1R = cplcFeFeAhR(i3,i2,i1)
coup2L = cplcFeFeAhL(i2,i3,i1)
coup2R = cplcFeFeAhR(i2,i3,i1)
dcoup1L = dcplcFeFeAhL(i3,i2,i1,iv1)
dcoup1R = dcplcFeFeAhR(i3,i2,i1,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFe2(i3),MFe2(i2),MAh2(i1),dMFe2(i3,iv1)             & 
& ,dMFe2(i2,iv1),dMAh2(i1,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFe2(i3),MFe2(i2),MAh2(i1),dMFe2(i3,iv1)             & 
& ,dMFe2(i2,iv1),dMAh2(i1,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 1
results1(20)=results1(20) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Fe, bar[Fe]]' 
coeffbar = 0.5_dp
results1(20)=results1(20) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Ah,Fu,bar[Fu] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFuFuAhL(i3,i2,i1)
coup1R = cplcFuFuAhR(i3,i2,i1)
coup2L = cplcFuFuAhL(i2,i3,i1)
coup2R = cplcFuFuAhR(i2,i3,i1)
dcoup1L = dcplcFuFuAhL(i3,i2,i1,iv1)
dcoup1R = dcplcFuFuAhR(i3,i2,i1,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFu2(i3),MFu2(i2),MAh2(i1),dMFu2(i3,iv1)             & 
& ,dMFu2(i2,iv1),dMAh2(i1,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFu2(i3),MFu2(i2),MAh2(i1),dMFu2(i3,iv1)             & 
& ,dMFu2(i2,iv1),dMAh2(i1,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 3
results1(21)=results1(21) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Fu, bar[Fu]]' 
coeffbar = 0.5_dp
results1(21)=results1(21) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Ah,Fv,bar[Fv] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFvFvAhL(i3,i2,i1)
coup1R = cplcFvFvAhR(i3,i2,i1)
coup2L = cplcFvFvAhL(i2,i3,i1)
coup2R = cplcFvFvAhR(i2,i3,i1)
dcoup1L = dcplcFvFvAhL(i3,i2,i1,iv1)
dcoup1R = dcplcFvFvAhR(i3,i2,i1,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFv2(i3),MFv2(i2),MAh2(i1),dMFv2(i3,iv1)             & 
& ,dMFv2(i2,iv1),dMAh2(i1,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFv2(i3),MFv2(i2),MAh2(i1),dMFv2(i3,iv1)             & 
& ,dMFv2(i2,iv1),dMAh2(i1,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 1
results1(22)=results1(22) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Ah, Fv, bar[Fv]]' 
coeffbar = 0.5_dp
results1(22)=results1(22) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Cha,hh,bar[Cha] ----
Do i1=1,2
 Do i2=1,3
    Do i3=1,2
coup1L = cplcChaChahhL(i3,i1,i2)
coup1R = cplcChaChahhR(i3,i1,i2)
coup2L = cplcChaChahhL(i1,i3,i2)
coup2R = cplcChaChahhR(i1,i3,i2)
dcoup1L = dcplcChaChahhL(i3,i1,i2,iv1)
dcoup1R = dcplcChaChahhR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MCha2(i3),MCha2(i1),Mhh2(i2),dMCha2(i3,iv1)          & 
& ,dMCha2(i1,iv1),dMhh2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MCha2(i3),MCha2(i1),Mhh2(i2),dMCha2(i3,iv1)          & 
& ,dMCha2(i1,iv1),dMhh2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 1
results1(23)=results1(23) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Cha, hh, bar[Cha]]' 
coeffbar = 0.5_dp
results1(23)=results1(23) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Chi,Chi,hh ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplChiChihhL(i1,i2,i3)
coup1R = cplChiChihhR(i1,i2,i3)
coup2L = cplChiChihhL(i1,i2,i3)
coup2R = cplChiChihhR(i1,i2,i3)
dcoup1L = dcplChiChihhL(i1,i2,i3,iv1)
dcoup1R = dcplChiChihhR(i1,i2,i3,iv1)
coupx=(abs(coup1L)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L) 
coupxbar=Real(coup1L**2,dp) 
dcoupxbar=Real(2*dcoup1L*coup1L,dp) 
Call FirstDerivativeVeff_sunrise(MChi2(i2),MChi2(i1),Mhh2(i3),dMChi2(i2,iv1)          & 
& ,dMChi2(i1,iv1),dMhh2(i3,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MChi2(i2),MChi2(i1),Mhh2(i3),dMChi2(i2,iv1)          & 
& ,dMChi2(i1,iv1),dMhh2(i3,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 1
results1(24)=results1(24) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Chi, hh]' 
coeffbar = 0.5_dp
results1(24)=results1(24) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Chi,Hpm,bar[Cha] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,2
coup1L = cplcChaChiHpmL(i3,i1,i2)
coup1R = cplcChaChiHpmR(i3,i1,i2)
coup2L = cplChiChacHpmL(i1,i3,i2)
coup2R = cplChiChacHpmR(i1,i3,i2)
dcoup1L = dcplcChaChiHpmL(i3,i1,i2,iv1)
dcoup1R = dcplcChaChiHpmR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MCha2(i3),MChi2(i1),MHpm2(i2),dMCha2(i3,iv1)         & 
& ,dMChi2(i1,iv1),dMHpm2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MCha2(i3),MChi2(i1),MHpm2(i2),dMCha2(i3,iv1)         & 
& ,dMChi2(i1,iv1),dMHpm2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 1
results1(25)=results1(25) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Hpm, bar[Cha]]' 
coeffbar = 1._dp
results1(25)=results1(25) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Chi,Sd,bar[Fd] ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFdChiSdL(i3,i1,i2)
coup1R = cplcFdChiSdR(i3,i1,i2)
coup2L = cplChiFdcSdL(i1,i3,i2)
coup2R = cplChiFdcSdR(i1,i3,i2)
dcoup1L = dcplcFdChiSdL(i3,i1,i2,iv1)
dcoup1R = dcplcFdChiSdR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFd2(i3),MChi2(i1),MSd2(i2),dMFd2(i3,iv1)            & 
& ,dMChi2(i1,iv1),dMSd2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFd2(i3),MChi2(i1),MSd2(i2),dMFd2(i3,iv1)            & 
& ,dMChi2(i1,iv1),dMSd2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 3
results1(26)=results1(26) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Sd, bar[Fd]]' 
coeffbar = 1._dp
results1(26)=results1(26) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Chi,Se,bar[Fe] ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFeChiSeL(i3,i1,i2)
coup1R = cplcFeChiSeR(i3,i1,i2)
coup2L = cplChiFecSeL(i1,i3,i2)
coup2R = cplChiFecSeR(i1,i3,i2)
dcoup1L = dcplcFeChiSeL(i3,i1,i2,iv1)
dcoup1R = dcplcFeChiSeR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFe2(i3),MChi2(i1),MSe2(i2),dMFe2(i3,iv1)            & 
& ,dMChi2(i1,iv1),dMSe2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFe2(i3),MChi2(i1),MSe2(i2),dMFe2(i3,iv1)            & 
& ,dMChi2(i1,iv1),dMSe2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 1
results1(27)=results1(27) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Se, bar[Fe]]' 
coeffbar = 1._dp
results1(27)=results1(27) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Chi,Su,bar[Fu] ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFuChiSuL(i3,i1,i2)
coup1R = cplcFuChiSuR(i3,i1,i2)
coup2L = cplChiFucSuL(i1,i3,i2)
coup2R = cplChiFucSuR(i1,i3,i2)
dcoup1L = dcplcFuChiSuL(i3,i1,i2,iv1)
dcoup1R = dcplcFuChiSuR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFu2(i3),MChi2(i1),MSu2(i2),dMFu2(i3,iv1)            & 
& ,dMChi2(i1,iv1),dMSu2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFu2(i3),MChi2(i1),MSu2(i2),dMFu2(i3,iv1)            & 
& ,dMChi2(i1,iv1),dMSu2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 3
results1(28)=results1(28) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Su, bar[Fu]]' 
coeffbar = 1._dp
results1(28)=results1(28) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Chi,Sv,bar[Fv] ----
Do i1=1,6
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFvChiSvL(i3,i1,i2)
coup1R = cplcFvChiSvR(i3,i1,i2)
coup2L = cplChiFvcSvL(i1,i3,i2)
coup2R = cplChiFvcSvR(i1,i3,i2)
dcoup1L = dcplcFvChiSvL(i3,i1,i2,iv1)
dcoup1R = dcplcFvChiSvR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFv2(i3),MChi2(i1),MSv2(i2),dMFv2(i3,iv1)            & 
& ,dMChi2(i1,iv1),dMSv2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFv2(i3),MChi2(i1),MSv2(i2),dMFv2(i3,iv1)            & 
& ,dMChi2(i1,iv1),dMSv2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 1
results1(29)=results1(29) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Chi, Sv, bar[Fv]]' 
coeffbar = 1._dp
results1(29)=results1(29) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Fd,hh,bar[Fd] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFdFdhhL(i3,i1,i2)
coup1R = cplcFdFdhhR(i3,i1,i2)
coup2L = cplcFdFdhhL(i1,i3,i2)
coup2R = cplcFdFdhhR(i1,i3,i2)
dcoup1L = dcplcFdFdhhL(i3,i1,i2,iv1)
dcoup1R = dcplcFdFdhhR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFd2(i3),MFd2(i1),Mhh2(i2),dMFd2(i3,iv1)             & 
& ,dMFd2(i1,iv1),dMhh2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFd2(i3),MFd2(i1),Mhh2(i2),dMFd2(i3,iv1)             & 
& ,dMFd2(i1,iv1),dMhh2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 3
results1(30)=results1(30) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fd, hh, bar[Fd]]' 
coeffbar = 0.5_dp
results1(30)=results1(30) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Fd,bar[Cha],conj[Su] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,6
coup1L = cplcChaFdcSuL(i2,i1,i3)
coup1R = cplcChaFdcSuR(i2,i1,i3)
coup2L = cplcFdChaSuL(i1,i2,i3)
coup2R = cplcFdChaSuR(i1,i2,i3)
dcoup1L = dcplcChaFdcSuL(i2,i1,i3,iv1)
dcoup1R = dcplcChaFdcSuR(i2,i1,i3,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MCha2(i2),MFd2(i1),MSu2(i3),dMCha2(i2,iv1)           & 
& ,dMFd2(i1,iv1),dMSu2(i3,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MCha2(i2),MFd2(i1),MSu2(i3),dMCha2(i2,iv1)           & 
& ,dMFd2(i1,iv1),dMSu2(i3,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 3
results1(31)=results1(31) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fd, bar[Cha], conj[Su]]' 
coeffbar = 1._dp
results1(31)=results1(31) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Fe,hh,bar[Fe] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFeFehhL(i3,i1,i2)
coup1R = cplcFeFehhR(i3,i1,i2)
coup2L = cplcFeFehhL(i1,i3,i2)
coup2R = cplcFeFehhR(i1,i3,i2)
dcoup1L = dcplcFeFehhL(i3,i1,i2,iv1)
dcoup1R = dcplcFeFehhR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFe2(i3),MFe2(i1),Mhh2(i2),dMFe2(i3,iv1)             & 
& ,dMFe2(i1,iv1),dMhh2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFe2(i3),MFe2(i1),Mhh2(i2),dMFe2(i3,iv1)             & 
& ,dMFe2(i1,iv1),dMhh2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 1
results1(32)=results1(32) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fe, hh, bar[Fe]]' 
coeffbar = 0.5_dp
results1(32)=results1(32) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Fe,bar[Cha],conj[Sv] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,6
coup1L = cplcChaFecSvL(i2,i1,i3)
coup1R = cplcChaFecSvR(i2,i1,i3)
coup2L = cplcFeChaSvL(i1,i2,i3)
coup2R = cplcFeChaSvR(i1,i2,i3)
dcoup1L = dcplcChaFecSvL(i2,i1,i3,iv1)
dcoup1R = dcplcChaFecSvR(i2,i1,i3,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MCha2(i2),MFe2(i1),MSv2(i3),dMCha2(i2,iv1)           & 
& ,dMFe2(i1,iv1),dMSv2(i3,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MCha2(i2),MFe2(i1),MSv2(i3),dMCha2(i2,iv1)           & 
& ,dMFe2(i1,iv1),dMSv2(i3,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 1
results1(33)=results1(33) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fe, bar[Cha], conj[Sv]]' 
coeffbar = 1._dp
results1(33)=results1(33) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Fu,hh,bar[Fu] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFuFuhhL(i3,i1,i2)
coup1R = cplcFuFuhhR(i3,i1,i2)
coup2L = cplcFuFuhhL(i1,i3,i2)
coup2R = cplcFuFuhhR(i1,i3,i2)
dcoup1L = dcplcFuFuhhL(i3,i1,i2,iv1)
dcoup1R = dcplcFuFuhhR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFu2(i3),MFu2(i1),Mhh2(i2),dMFu2(i3,iv1)             & 
& ,dMFu2(i1,iv1),dMhh2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFu2(i3),MFu2(i1),Mhh2(i2),dMFu2(i3,iv1)             & 
& ,dMFu2(i1,iv1),dMhh2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 3
results1(34)=results1(34) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fu, hh, bar[Fu]]' 
coeffbar = 0.5_dp
results1(34)=results1(34) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Fu,Hpm,bar[Fd] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,3
coup1L = cplcFdFuHpmL(i3,i1,i2)
coup1R = cplcFdFuHpmR(i3,i1,i2)
coup2L = cplcFuFdcHpmL(i1,i3,i2)
coup2R = cplcFuFdcHpmR(i1,i3,i2)
dcoup1L = dcplcFdFuHpmL(i3,i1,i2,iv1)
dcoup1R = dcplcFdFuHpmR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFd2(i3),MFu2(i1),MHpm2(i2),dMFd2(i3,iv1)            & 
& ,dMFu2(i1,iv1),dMHpm2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFd2(i3),MFu2(i1),MHpm2(i2),dMFd2(i3,iv1)            & 
& ,dMFu2(i1,iv1),dMHpm2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 3
results1(35)=results1(35) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fu, Hpm, bar[Fd]]' 
coeffbar = 1._dp
results1(35)=results1(35) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Fv,hh,bar[Fv] ----
Do i1=1,3
 Do i2=1,3
    Do i3=1,3
coup1L = cplcFvFvhhL(i3,i1,i2)
coup1R = cplcFvFvhhR(i3,i1,i2)
coup2L = cplcFvFvhhL(i1,i3,i2)
coup2R = cplcFvFvhhR(i1,i3,i2)
dcoup1L = dcplcFvFvhhL(i3,i1,i2,iv1)
dcoup1R = dcplcFvFvhhR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFv2(i3),MFv2(i1),Mhh2(i2),dMFv2(i3,iv1)             & 
& ,dMFv2(i1,iv1),dMhh2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFv2(i3),MFv2(i1),Mhh2(i2),dMFv2(i3,iv1)             & 
& ,dMFv2(i1,iv1),dMhh2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 0.5_dp
colorfactor = 1
results1(36)=results1(36) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fv, hh, bar[Fv]]' 
coeffbar = 0.5_dp
results1(36)=results1(36) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Fv,Hpm,bar[Fe] ----
Do i1=1,3
 Do i2=1,2
    Do i3=1,3
coup1L = cplcFeFvHpmL(i3,i1,i2)
coup1R = cplcFeFvHpmR(i3,i1,i2)
coup2L = cplcFvFecHpmL(i1,i3,i2)
coup2R = cplcFvFecHpmR(i1,i3,i2)
dcoup1L = dcplcFeFvHpmL(i3,i1,i2,iv1)
dcoup1R = dcplcFeFvHpmR(i3,i1,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFe2(i3),MFv2(i1),MHpm2(i2),dMFe2(i3,iv1)            & 
& ,dMFv2(i1,iv1),dMHpm2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFe2(i3),MFv2(i1),MHpm2(i2),dMFe2(i3,iv1)            & 
& ,dMFv2(i1,iv1),dMHpm2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 1
results1(37)=results1(37) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Fv, Hpm, bar[Fe]]' 
coeffbar = 1._dp
results1(37)=results1(37) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Glu,Sd,bar[Fd] ----
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFdGluSdL(i3,i2)
coup1R = cplcFdGluSdR(i3,i2)
coup2L = cplGluFdcSdL(i3,i2)
coup2R = cplGluFdcSdR(i3,i2)
dcoup1L = dcplcFdGluSdL(i3,i2,iv1)
dcoup1R = dcplcFdGluSdR(i3,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFd2(i3),MGlu2,MSd2(i2),dMFd2(i3,iv1),dMGlu2(1,iv1)  & 
& ,dMSd2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFd2(i3),MGlu2,MSd2(i2),dMFd2(i3,iv1),dMGlu2(1,iv1)  & 
& ,dMSd2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 4
results1(38)=results1(38) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Glu, Sd, bar[Fd]]' 
coeffbar = 1._dp
results1(38)=results1(38) + coeffbar*colorfactor*tempbar
    End Do
  End Do
! ---- Glu,Su,bar[Fu] ----
 Do i2=1,6
    Do i3=1,3
coup1L = cplcFuGluSuL(i3,i2)
coup1R = cplcFuGluSuR(i3,i2)
coup2L = cplGluFucSuL(i3,i2)
coup2R = cplGluFucSuR(i3,i2)
dcoup1L = dcplcFuGluSuL(i3,i2,iv1)
dcoup1R = dcplcFuGluSuR(i3,i2,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFu2(i3),MGlu2,MSu2(i2),dMFu2(i3,iv1),dMGlu2(1,iv1)  & 
& ,dMSu2(i2,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFu2(i3),MGlu2,MSu2(i2),dMFu2(i3,iv1),dMGlu2(1,iv1)  & 
& ,dMSu2(i2,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 4
results1(39)=results1(39) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Glu, Su, bar[Fu]]' 
coeffbar = 1._dp
results1(39)=results1(39) + coeffbar*colorfactor*tempbar
    End Do
  End Do
! ---- Sd,bar[Cha],bar[Fu] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,3
coup1L = cplcChacFuSdL(i2,i3,i1)
coup1R = cplcChacFuSdR(i2,i3,i1)
coup2L = cplChaFucSdL(i2,i3,i1)
coup2R = cplChaFucSdR(i2,i3,i1)
dcoup1L = dcplcChacFuSdL(i2,i3,i1,iv1)
dcoup1R = dcplcChacFuSdR(i2,i3,i1,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFu2(i3),MCha2(i2),MSd2(i1),dMFu2(i3,iv1)            & 
& ,dMCha2(i2,iv1),dMSd2(i1,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFu2(i3),MCha2(i2),MSd2(i1),dMFu2(i3,iv1)            & 
& ,dMCha2(i2,iv1),dMSd2(i1,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 3
results1(40)=results1(40) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Sd, bar[Cha], bar[Fu]]' 
coeffbar = 1._dp
results1(40)=results1(40) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ---- Se,bar[Cha],bar[Fv] ----
Do i1=1,6
 Do i2=1,2
    Do i3=1,3
coup1L = cplcChacFvSeL(i2,i3,i1)
coup1R = cplcChacFvSeR(i2,i3,i1)
coup2L = cplChaFvcSeL(i2,i3,i1)
coup2R = cplChaFvcSeR(i2,i3,i1)
dcoup1L = dcplcChacFvSeL(i2,i3,i1,iv1)
dcoup1R = dcplcChacFvSeR(i2,i3,i1,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFv2(i3),MCha2(i2),MSe2(i1),dMFv2(i3,iv1)            & 
& ,dMCha2(i2,iv1),dMSe2(i1,iv1),coupx,dcoupx,'FFS   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFv2(i3),MCha2(i2),MSe2(i1),dMFv2(i3,iv1)            & 
& ,dMCha2(i2,iv1),dMSe2(i1,iv1),coupxbar,dcoupxbar,'FFSbar',Q2,tempbar)
coeff = 1._dp
colorfactor = 1
results1(41)=results1(41) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFS C[Se, bar[Cha], bar[Fv]]' 
coeffbar = 1._dp
results1(41)=results1(41) + coeffbar*colorfactor*tempbar
    End Do
  End Do
End Do
! ----- diagrams of type SSV, 2 ------ 
! ---- Sd,VG,conj[Sd] ----
Do i1=1,6
    Do i3=1,6
coup1 = cplSdcSdVG(i1,i3)
coup2 = cplSdcSdVG(i3,i1)
dcoup1 = dcplSdcSdVG(i1,i3,iv1)
coupx=abs(coup1)**2
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MSd2(i3),MSd2(i1),0._dp,dMSd2(i3,iv1),dMSd2(i1,iv1)  & 
& ,ZeroC,coupx,dcoupx,'SSV   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 4
results1(42)=results1(42) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSV C[Sd, VG, conj[Sd]]' 
    End Do
End Do
! ---- Su,VG,conj[Su] ----
Do i1=1,6
    Do i3=1,6
coup1 = cplSucSuVG(i1,i3)
coup2 = cplSucSuVG(i3,i1)
dcoup1 = dcplSucSuVG(i1,i3,iv1)
coupx=abs(coup1)**2
dcoupx=dcoup1*conjg(coup1)+coup1*conjg(dcoup1) 
Call FirstDerivativeVeff_sunrise(MSu2(i3),MSu2(i1),0._dp,dMSu2(i3,iv1),dMSu2(i1,iv1)  & 
& ,ZeroC,coupx,dcoupx,'SSV   ',Q2,temp)
coeff = 0.5_dp
colorfactor = 4
results1(43)=results1(43) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SSV C[Su, VG, conj[Su]]' 
    End Do
End Do
! ----- diagrams of type FFV, 3 ------ 
! ---- Fd,VG,bar[Fd] ----
Do i1=1,3
    Do i3=1,3
coup1L = cplcFdFdVGL(i3,i1)
coup1R = cplcFdFdVGR(i3,i1)
coup2L = cplcFdFdVGL(i1,i3)
coup2R = cplcFdFdVGR(i1,i3)
dcoup1L = dcplcFdFdVGL(i3,i1,iv1)
dcoup1R = dcplcFdFdVGR(i3,i1,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=-2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=-2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFd2(i3),MFd2(i1),0._dp,dMFd2(i3,iv1),dMFd2(i1,iv1)  & 
& ,ZeroC,coupx,dcoupx,'FFV   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFd2(i3),MFd2(i1),0._dp,dMFd2(i3,iv1),dMFd2(i1,iv1)  & 
& ,ZeroC,coupxbar,dcoupxbar,'FFVbar',Q2,temp)
coeff = 0.5_dp
colorfactor = 4
results1(44)=results1(44) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFV C[Fd, VG, bar[Fd]]' 
coeffbar = 0.5_dp
results1(44)=results1(44) + coeffbar*colorfactor*tempbar
    End Do
End Do
! ---- Fu,VG,bar[Fu] ----
Do i1=1,3
    Do i3=1,3
coup1L = cplcFuFuVGL(i3,i1)
coup1R = cplcFuFuVGR(i3,i1)
coup2L = cplcFuFuVGL(i1,i3)
coup2R = cplcFuFuVGR(i1,i3)
dcoup1L = dcplcFuFuVGL(i3,i1,iv1)
dcoup1R = dcplcFuFuVGR(i3,i1,iv1)
coupx=(abs(coup1L)**2+abs(coup1R)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L)+dcoup1R*conjg(coup1R)+coup1R*conjg(dcoup1R) 
coupxbar=-2*Real(coup1L*conjg(coup1R),dp) 
dcoupxbar=-2*Real(dcoup1L*conjg(coup1R)+coup1L*conjg(dcoup1R),dp) 
Call FirstDerivativeVeff_sunrise(MFu2(i3),MFu2(i1),0._dp,dMFu2(i3,iv1),dMFu2(i1,iv1)  & 
& ,ZeroC,coupx,dcoupx,'FFV   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MFu2(i3),MFu2(i1),0._dp,dMFu2(i3,iv1),dMFu2(i1,iv1)  & 
& ,ZeroC,coupxbar,dcoupxbar,'FFVbar',Q2,temp)
coeff = 0.5_dp
colorfactor = 4
results1(45)=results1(45) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFV C[Fu, VG, bar[Fu]]' 
coeffbar = 0.5_dp
results1(45)=results1(45) + coeffbar*colorfactor*tempbar
    End Do
End Do
! ---- Glu,Glu,VG ----
coup1L = cplGluGluVGL
coup1R = cplGluGluVGR
coup2L = cplGluGluVGL
coup2R = cplGluGluVGR
dcoup1L = dcplGluGluVGL(iv1)
dcoup1R = dcplGluGluVGR(iv1)
coupx=(abs(coup1L)**2) 
dcoupx=dcoup1L*conjg(coup1L)+coup1L*conjg(dcoup1L) 
coupxbar=Real(coup1L**2,dp) 
dcoupxbar=Real(2*dcoup1L*coup1L,dp) 
Call FirstDerivativeVeff_sunrise(MGlu2,MGlu2,0._dp,dMGlu2(1,iv1),dMGlu2(1,iv1)        & 
& ,ZeroC,coupx,dcoupx,'FFV   ',Q2,temp)
Call FirstDerivativeVeff_sunrise(MGlu2,MGlu2,0._dp,dMGlu2(1,iv1),dMGlu2(1,iv1)        & 
& ,ZeroC,coupxbar,dcoupxbar,'FFVbar',Q2,temp)
coeff = 0.5_dp
colorfactor = 24
results1(46)=results1(46) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at FFV C[Glu, Glu, VG]' 
coeffbar = 0.5_dp
results1(46)=results1(46) + coeffbar*colorfactor*tempbar
! ----- diagrams of type VVV, 1 ------ 
! ---- VG,VG,VG ----
coup1 = cplVGVGVG
coup2 = cplVGVGVG
dcoup1 = dcplVGVGVG(iv1)
coeff = 0.0000
colorfactor = 24
results1(47)=results1(47) + coeff*colorfactor*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at VVV C[VG, VG, VG]' 
! ----- Topology2: diagrams w. 2 Particles and 1 Vertex

! ----- diagrams of type SS, 26 ------ 
! ---- Ah,Ah ----
Do i1=1,3
 Do i2=1,3
coup1 = cplAhAhAhAh(i1,i1,i2,i2)
dcoup1 = dcplAhAhAhAh(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(MAh2(i1),MAh2(i2),dMAh2(i1,iv1),dMAh2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp/8._dp)
results2(1)=results2(1) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Ah, Ah]' 
  End Do
End Do
! ---- Ah,hh ----
Do i1=1,3
 Do i2=1,3
coup1 = cplAhAhhhhh(i1,i1,i2,i2)
dcoup1 = dcplAhAhhhhh(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(MAh2(i1),Mhh2(i2),dMAh2(i1,iv1),dMhh2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.25_dp)
results2(2)=results2(2) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, hh, hh]' 
  End Do
End Do
! ---- Ah,Hpm ----
Do i1=1,3
 Do i2=1,2
coup1 = cplAhAhHpmcHpm(i1,i1,i2,i2)
dcoup1 = dcplAhAhHpmcHpm(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(MAh2(i1),MHpm2(i2),dMAh2(i1,iv1),dMHpm2(i2,iv1)        & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(3)=results2(3) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Hpm, conj[Hpm]]' 
  End Do
End Do
! ---- Ah,Sd ----
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSdcSd(i1,i1,i2,i2)
dcoup1 = dcplAhAhSdcSd(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(MAh2(i1),MSd2(i2),dMAh2(i1,iv1),dMSd2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(4)=results2(4) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Sd, conj[Sd]]' 
  End Do
End Do
! ---- Ah,Se ----
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSecSe(i1,i1,i2,i2)
dcoup1 = dcplAhAhSecSe(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(MAh2(i1),MSe2(i2),dMAh2(i1,iv1),dMSe2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(5)=results2(5) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Se, conj[Se]]' 
  End Do
End Do
! ---- Ah,Su ----
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSucSu(i1,i1,i2,i2)
dcoup1 = dcplAhAhSucSu(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(MAh2(i1),MSu2(i2),dMAh2(i1,iv1),dMSu2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(6)=results2(6) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Su, conj[Su]]' 
  End Do
End Do
! ---- Ah,Sv ----
Do i1=1,3
 Do i2=1,6
coup1 = cplAhAhSvcSv(i1,i1,i2,i2)
dcoup1 = dcplAhAhSvcSv(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(MAh2(i1),MSv2(i2),dMAh2(i1,iv1),dMSv2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(7)=results2(7) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Ah, Ah, Sv, conj[Sv]]' 
  End Do
End Do
! ---- hh,hh ----
Do i1=1,3
 Do i2=1,3
coup1 = cplhhhhhhhh(i1,i1,i2,i2)
dcoup1 = dcplhhhhhhhh(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(Mhh2(i1),Mhh2(i2),dMhh2(i1,iv1),dMhh2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp/8._dp)
results2(8)=results2(8) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, hh, hh]' 
  End Do
End Do
! ---- hh,Hpm ----
Do i1=1,3
 Do i2=1,2
coup1 = cplhhhhHpmcHpm(i1,i1,i2,i2)
dcoup1 = dcplhhhhHpmcHpm(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(Mhh2(i1),MHpm2(i2),dMhh2(i1,iv1),dMHpm2(i2,iv1)        & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(9)=results2(9) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Hpm, conj[Hpm]]' 
  End Do
End Do
! ---- hh,Sd ----
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSdcSd(i1,i1,i2,i2)
dcoup1 = dcplhhhhSdcSd(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(Mhh2(i1),MSd2(i2),dMhh2(i1,iv1),dMSd2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(10)=results2(10) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Sd, conj[Sd]]' 
  End Do
End Do
! ---- hh,Se ----
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSecSe(i1,i1,i2,i2)
dcoup1 = dcplhhhhSecSe(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(Mhh2(i1),MSe2(i2),dMhh2(i1,iv1),dMSe2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(11)=results2(11) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Se, conj[Se]]' 
  End Do
End Do
! ---- hh,Su ----
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSucSu(i1,i1,i2,i2)
dcoup1 = dcplhhhhSucSu(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(Mhh2(i1),MSu2(i2),dMhh2(i1,iv1),dMSu2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(12)=results2(12) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Su, conj[Su]]' 
  End Do
End Do
! ---- hh,Sv ----
Do i1=1,3
 Do i2=1,6
coup1 = cplhhhhSvcSv(i1,i1,i2,i2)
dcoup1 = dcplhhhhSvcSv(i1,i1,i2,i2,iv1)
Call FirstDerivativeVeff_balls(Mhh2(i1),MSv2(i2),dMhh2(i1,iv1),dMSv2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(13)=results2(13) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[hh, hh, Sv, conj[Sv]]' 
  End Do
End Do
! ---- Hpm,Hpm ----
Do i1=1,2
 Do i2=1,2
coup1 = cplHpmHpmcHpmcHpm(i1,i2,i1,i2)
dcoup1 = dcplHpmHpmcHpmcHpm(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MHpm2(i1),MHpm2(i2),dMHpm2(i1,iv1),dMHpm2(i2,iv1)      & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(14)=results2(14) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Hpm, conj[Hpm], conj[Hpm]]' 
  End Do
End Do
! ---- Hpm,Sd ----
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSdcHpmcSd(i1,i2,i1,i2)
dcoup1 = dcplHpmSdcHpmcSd(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MHpm2(i1),MSd2(i2),dMHpm2(i1,iv1),dMSd2(i2,iv1)        & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp)
results2(15)=results2(15) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Sd, conj[Hpm], conj[Sd]]' 
  End Do
End Do
! ---- Hpm,Se ----
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSecHpmcSe(i1,i2,i1,i2)
dcoup1 = dcplHpmSecHpmcSe(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MHpm2(i1),MSe2(i2),dMHpm2(i1,iv1),dMSe2(i2,iv1)        & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp)
results2(16)=results2(16) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Se, conj[Hpm], conj[Se]]' 
  End Do
End Do
! ---- Hpm,Su ----
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSucHpmcSu(i1,i2,i1,i2)
dcoup1 = dcplHpmSucHpmcSu(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MHpm2(i1),MSu2(i2),dMHpm2(i1,iv1),dMSu2(i2,iv1)        & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp)
results2(17)=results2(17) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Su, conj[Hpm], conj[Su]]' 
  End Do
End Do
! ---- Hpm,Sv ----
Do i1=1,2
 Do i2=1,6
coup1 = cplHpmSvcHpmcSv(i1,i2,i1,i2)
dcoup1 = dcplHpmSvcHpmcSv(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MHpm2(i1),MSv2(i2),dMHpm2(i1,iv1),dMSv2(i2,iv1)        & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp)
results2(18)=results2(18) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Hpm, Sv, conj[Hpm], conj[Sv]]' 
  End Do
End Do
! ---- Sd,Sd ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSdSdcSdcSd(i1,i2,i1,i2)
dcoup1 = dcplSdSdcSdcSd(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MSd2(i1),MSd2(i2),dMSd2(i1,iv1),dMSd2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(19)=results2(19) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Sd, Sd, conj[Sd], conj[Sd]]' 
  End Do
End Do
! ---- Sd,Se ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSdSecSdcSe(i1,i2,i1,i2)
dcoup1 = dcplSdSecSdcSe(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MSd2(i1),MSe2(i2),dMSd2(i1,iv1),dMSe2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp)
results2(20)=results2(20) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Sd, Se, conj[Sd], conj[Se]]' 
  End Do
End Do
! ---- Sd,Su ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSdSucSdcSu(i1,i2,i1,i2)
dcoup1 = dcplSdSucSdcSu(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MSd2(i1),MSu2(i2),dMSd2(i1,iv1),dMSu2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp)
results2(21)=results2(21) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Sd, Su, conj[Sd], conj[Su]]' 
  End Do
End Do
! ---- Se,Se ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSeSecSecSe(i1,i2,i1,i2)
dcoup1 = dcplSeSecSecSe(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MSe2(i1),MSe2(i2),dMSe2(i1,iv1),dMSe2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(22)=results2(22) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Se, Se, conj[Se], conj[Se]]' 
  End Do
End Do
! ---- Se,Sv ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSeSvcSecSv(i1,i2,i1,i2)
dcoup1 = dcplSeSvcSecSv(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MSe2(i1),MSv2(i2),dMSe2(i1,iv1),dMSv2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp)
results2(23)=results2(23) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Se, Sv, conj[Se], conj[Sv]]' 
  End Do
End Do
! ---- Su,Su ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSuSucSucSu(i1,i2,i1,i2)
dcoup1 = dcplSuSucSucSu(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MSu2(i1),MSu2(i2),dMSu2(i1,iv1),dMSu2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(24)=results2(24) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Su, Su, conj[Su], conj[Su]]' 
  End Do
End Do
! ---- Su,Sv ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSuSvcSucSv(i1,i2,i1,i2)
dcoup1 = dcplSuSvcSucSv(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MSu2(i1),MSv2(i2),dMSu2(i1,iv1),dMSv2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-1._dp)
results2(25)=results2(25) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Su, Sv, conj[Su], conj[Sv]]' 
  End Do
End Do
! ---- Sv,Sv ----
Do i1=1,6
 Do i2=1,6
coup1 = cplSvSvcSvcSv(i1,i2,i1,i2)
dcoup1 = dcplSvSvcSvcSv(i1,i2,i1,i2,iv1)
Call FirstDerivativeVeff_balls(MSv2(i1),MSv2(i2),dMSv2(i1,iv1),dMSv2(i2,iv1)          & 
& ,coup1,dcoup1,'SS',Q2,temp)
coeff = (-0.5_dp)
results2(26)=results2(26) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at SS C[Sv, Sv, conj[Sv], conj[Sv]]' 
  End Do
End Do
! ----- diagrams of type VS, 2 ------ 
! ---- Sd,VG ----
Do i1=1,6
coup1 = cplSdcSdVGVG(i1,i1)
dcoup1 = dcplSdcSdVGVG(i1,i1,iv1)
Call FirstDerivativeVeff_balls(0._dp,MSd2(i1),ZeroC,dMSd2(i1,iv1),coup1,dcoup1,'VS',Q2,temp)
coeff = 0._dp
results2(27)=results2(27) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at VS C[Sd, VG, VG, conj[Sd]]' 
End Do
! ---- Su,VG ----
Do i1=1,6
coup1 = cplSucSuVGVG(i1,i1)
dcoup1 = dcplSucSuVGVG(i1,i1,iv1)
Call FirstDerivativeVeff_balls(0._dp,MSu2(i1),ZeroC,dMSu2(i1,iv1),coup1,dcoup1,'VS',Q2,temp)
coeff = 0._dp
results2(28)=results2(28) + coeff*temp
if (.not.(temp.eq.temp))  write(*,*) 'NaN at VS C[Su, VG, VG, conj[Su]]' 
End Do
result = sum(results1)+sum(results2) 


 
ti2L(iv1) = oo16pi2**2 * Real(result,dp) 
End Do 
End Subroutine FirstDerivativeEffPot2Loop 


Subroutine SecondDerivativeMassesCoups(i1,i2,vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,            & 
& Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,           & 
& Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,            & 
& mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,gout)

Implicit None 
Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Real(dp),Intent(in) :: vd,vu,vS

Real(dp), Intent(out) :: gout(:) 
Real(dp) :: err, vevs(3) 
Integer :: iout 
Integer, Intent(in) :: i1,i2 
vevs = (/vd,vu,vS/) 
gout = partialDiffXY_RiddersMulDim(AllMassesCouplings,37980,vevs,i1,i2,3,err) 
If (err.gt.err2L) err2L = err 
End Subroutine SecondDerivativeMassesCoups

Subroutine FirstDerivativeMassesCoups(i1,vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,           & 
& Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,             & 
& mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,               & 
& mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,gout)

Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Real(dp),Intent(in) :: vd,vu,vS

Real(dp), Intent(out) :: gout(:) 
Real(dp) :: err, vevs(3) 
Integer :: iout 
Integer, Intent(in) :: i1 
vevs = (/vd,vu,vS/) 
gout = partialDiff_RiddersMulDim(AllMassesCouplings,37980,vevs,i1,3,err) 
If (err.gt.err2L) err2L = err 
End Subroutine FirstDerivativeMassesCoups

Subroutine AllMassesCouplings(vevs,gout) 
Implicit None 
Real(dp), Intent(out) :: gout(37980) 
Real(dp), Intent(in) :: vevs(3) 
Integer :: kont 
Real(dp) :: vd,vu,vS

Complex(dp) :: cplAhAhAh(3,3,3),cplAhAhhh(3,3,3),cplAhhhhh(3,3,3),cplAhHpmcHpm(3,2,2),               & 
& cplAhSdcSd(3,6,6),cplAhSecSe(3,6,6),cplAhSucSu(3,6,6),cplAhSvcSv(3,6,6),               & 
& cplhhhhhh(3,3,3),cplhhHpmcHpm(3,2,2),cplhhSdcSd(3,6,6),cplhhSecSe(3,6,6),              & 
& cplhhSucSu(3,6,6),cplhhSvcSv(3,6,6),cplHpmSucSd(2,6,6),cplHpmSvcSe(2,6,6),             & 
& cplSdcHpmcSu(6,2,6),cplSecHpmcSv(6,2,6),cplSdcSdVG(6,6),cplSucSuVG(6,6),               & 
& cplVGVGVG,cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplChiChiAhL(6,6,3),               & 
& cplChiChiAhR(6,6,3),cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),cplcFeFeAhL(3,3,3),          & 
& cplcFeFeAhR(3,3,3),cplcFuFuAhL(3,3,3),cplcFuFuAhR(3,3,3),cplcFvFvAhL(3,3,3),           & 
& cplcFvFvAhR(3,3,3),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),cplChaFucSdL(2,3,6),    & 
& cplChaFucSdR(2,3,6),cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplcChaChahhL(2,2,3),      & 
& cplcChaChahhR(2,2,3),cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),cplcFeChaSvL(3,2,6),      & 
& cplcFeChaSvR(3,2,6),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiFdcSdL(6,3,6),       & 
& cplChiFdcSdR(6,3,6),cplChiFecSeL(6,3,6),cplChiFecSeR(6,3,6),cplChiFucSuL(6,3,6),       & 
& cplChiFucSuR(6,3,6),cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6),cplcChaChiHpmL(2,6,2),     & 
& cplcChaChiHpmR(2,6,2),cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFeChiSeL(3,6,6),     & 
& cplcFeChiSeR(3,6,6),cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFvChiSvL(3,6,6),       & 
& cplcFvChiSvR(3,6,6),cplGluFdcSdL(3,6),cplGluFdcSdR(3,6),cplcFdFdhhL(3,3,3),            & 
& cplcFdFdhhR(3,3,3),cplcChaFdcSuL(2,3,6),cplcChaFdcSuR(2,3,6),cplcFuFdcHpmL(3,3,2),     & 
& cplcFuFdcHpmR(3,3,2),cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcChaFecSvL(2,3,6),       & 
& cplcChaFecSvR(2,3,6),cplcFvFecHpmL(3,3,2),cplcFvFecHpmR(3,3,2),cplGluFucSuL(3,6),      & 
& cplGluFucSuR(3,6),cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFdFuHpmL(3,3,2),           & 
& cplcFdFuHpmR(3,3,2),cplcFvFvhhL(3,3,3),cplcFvFvhhR(3,3,3),cplcFeFvHpmL(3,3,2),         & 
& cplcFeFvHpmR(3,3,2),cplcFdGluSdL(3,6),cplcFdGluSdR(3,6),cplcFuGluSuL(3,6),             & 
& cplcFuGluSuR(3,6),cplcChacFuSdL(2,3,6),cplcChacFuSdR(2,3,6),cplcChacFvSeL(2,3,6),      & 
& cplcChacFvSeR(2,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFuFuVGL(3,3),               & 
& cplcFuFuVGR(3,3),cplGluGluVGL,cplGluGluVGR

Complex(dp) :: cplAhAhAhAh(3,3,3,3),cplAhAhhhhh(3,3,3,3),cplAhAhHpmcHpm(3,3,2,2),cplAhAhSdcSd(3,3,6,6),& 
& cplAhAhSecSe(3,3,6,6),cplAhAhSucSu(3,3,6,6),cplAhAhSvcSv(3,3,6,6),cplhhhhhhhh(3,3,3,3),& 
& cplhhhhHpmcHpm(3,3,2,2),cplhhhhSdcSd(3,3,6,6),cplhhhhSecSe(3,3,6,6),cplhhhhSucSu(3,3,6,6),& 
& cplhhhhSvcSv(3,3,6,6),cplHpmHpmcHpmcHpm(2,2,2,2),cplHpmSdcHpmcSd(2,6,2,6),             & 
& cplHpmSecHpmcSe(2,6,2,6),cplHpmSucHpmcSu(2,6,2,6),cplHpmSvcHpmcSv(2,6,2,6),            & 
& cplSdSdcSdcSd(6,6,6,6),cplSdSecSdcSe(6,6,6,6),cplSdSucSdcSu(6,6,6,6),cplSeSecSecSe(6,6,6,6),& 
& cplSeSvcSecSv(6,6,6,6),cplSuSucSucSu(6,6,6,6),cplSuSvcSucSv(6,6,6,6),cplSvSvcSvcSv(6,6,6,6),& 
& cplSdcSdVGVG(6,6),cplSucSuVGVG(6,6)

Real(dp) :: MAh(3),MAh2(3),MCha(2),MCha2(2),MChi(6),MChi2(6),MFd(3),MFd2(3),MFe(3),               & 
& MFe2(3),MFu(3),MFu2(3),MFv(3),MFv2(3),MGlu,MGlu2,Mhh(3),Mhh2(3),MHpm(2),               & 
& MHpm2(2),MSd(6),MSd2(6),MSe(6),MSe2(6),MSu(6),MSu2(6),MSv(6),MSv2(6),MVWm,             & 
& MVWm2,MVZ,MVZ2,MVZp,MVZp2,TW,TWp,v,ZP(2,2),ZZ(3,3),betaH

Complex(dp) :: pG,UM(2,2),UP(2,2),ZA(3,3),ZD(6,6),ZDL(3,3),ZDR(3,3),ZE(6,6),ZEL(3,3),ZER(3,3),       & 
& ZH(3,3),ZN(6,6),ZU(6,6),ZUL(3,3),ZUR(3,3),ZV(6,6),ZVL(3,3),ZVR(3,3),ZW(2,2)

vd=vevs(1) 
vu=vevs(2) 
vS=vevs(3) 
Call WrapperForDerivatives(vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,           & 
& Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,           & 
& ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,              & 
& M3,M4,Tep,Tmup,gout)

End Subroutine 

Subroutine WrapperForDerivatives(vd,vu,vS,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,              & 
& lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,              & 
& ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,            & 
& ms2,M1,M2,M3,M4,Tep,Tmup,gout)

Implicit None 
Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Real(dp),Intent(in) :: vd,vu,vS

Real(dp), Intent(out) :: gout(:) 
Integer :: kont 
Real(dp) :: MSd(6),MSd2(6),MSv(6),MSv2(6),MFv(3),MFv2(3),MSu(6),MSu2(6),MSe(6),MSe2(6),           & 
& Mhh(3),Mhh2(3),MAh(3),MAh2(3),MHpm(2),MHpm2(2),MChi(6),MChi2(6),MCha(2),               & 
& MCha2(2),MFe(3),MFe2(3),MFd(3),MFd2(3),MFu(3),MFu2(3),MGlu,MGlu2,MVZ,MVZp,             & 
& MVZ2,MVZp2,MVWm,MVWm2

Complex(dp) :: cplAhAhAh(3,3,3),cplAhAhhh(3,3,3),cplAhhhhh(3,3,3),cplAhHpmcHpm(3,2,2),               & 
& cplAhSdcSd(3,6,6),cplAhSecSe(3,6,6),cplAhSucSu(3,6,6),cplAhSvcSv(3,6,6),               & 
& cplhhhhhh(3,3,3),cplhhHpmcHpm(3,2,2),cplhhSdcSd(3,6,6),cplhhSecSe(3,6,6),              & 
& cplhhSucSu(3,6,6),cplhhSvcSv(3,6,6),cplHpmSucSd(2,6,6),cplHpmSvcSe(2,6,6),             & 
& cplSdcHpmcSu(6,2,6),cplSecHpmcSv(6,2,6),cplSdcSdVG(6,6),cplSucSuVG(6,6),               & 
& cplVGVGVG,cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplChiChiAhL(6,6,3),               & 
& cplChiChiAhR(6,6,3),cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),cplcFeFeAhL(3,3,3),          & 
& cplcFeFeAhR(3,3,3),cplcFuFuAhL(3,3,3),cplcFuFuAhR(3,3,3),cplcFvFvAhL(3,3,3),           & 
& cplcFvFvAhR(3,3,3),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),cplChaFucSdL(2,3,6),    & 
& cplChaFucSdR(2,3,6),cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplcChaChahhL(2,2,3),      & 
& cplcChaChahhR(2,2,3),cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),cplcFeChaSvL(3,2,6),      & 
& cplcFeChaSvR(3,2,6),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiFdcSdL(6,3,6),       & 
& cplChiFdcSdR(6,3,6),cplChiFecSeL(6,3,6),cplChiFecSeR(6,3,6),cplChiFucSuL(6,3,6),       & 
& cplChiFucSuR(6,3,6),cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6),cplcChaChiHpmL(2,6,2),     & 
& cplcChaChiHpmR(2,6,2),cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFeChiSeL(3,6,6),     & 
& cplcFeChiSeR(3,6,6),cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFvChiSvL(3,6,6),       & 
& cplcFvChiSvR(3,6,6),cplGluFdcSdL(3,6),cplGluFdcSdR(3,6),cplcFdFdhhL(3,3,3),            & 
& cplcFdFdhhR(3,3,3),cplcChaFdcSuL(2,3,6),cplcChaFdcSuR(2,3,6),cplcFuFdcHpmL(3,3,2),     & 
& cplcFuFdcHpmR(3,3,2),cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcChaFecSvL(2,3,6),       & 
& cplcChaFecSvR(2,3,6),cplcFvFecHpmL(3,3,2),cplcFvFecHpmR(3,3,2),cplGluFucSuL(3,6),      & 
& cplGluFucSuR(3,6),cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFdFuHpmL(3,3,2),           & 
& cplcFdFuHpmR(3,3,2),cplcFvFvhhL(3,3,3),cplcFvFvhhR(3,3,3),cplcFeFvHpmL(3,3,2),         & 
& cplcFeFvHpmR(3,3,2),cplcFdGluSdL(3,6),cplcFdGluSdR(3,6),cplcFuGluSuL(3,6),             & 
& cplcFuGluSuR(3,6),cplcChacFuSdL(2,3,6),cplcChacFuSdR(2,3,6),cplcChacFvSeL(2,3,6),      & 
& cplcChacFvSeR(2,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFuFuVGL(3,3),               & 
& cplcFuFuVGR(3,3),cplGluGluVGL,cplGluGluVGR

Complex(dp) :: cplAhAhAhAh(3,3,3,3),cplAhAhhhhh(3,3,3,3),cplAhAhHpmcHpm(3,3,2,2),cplAhAhSdcSd(3,3,6,6),& 
& cplAhAhSecSe(3,3,6,6),cplAhAhSucSu(3,3,6,6),cplAhAhSvcSv(3,3,6,6),cplhhhhhhhh(3,3,3,3),& 
& cplhhhhHpmcHpm(3,3,2,2),cplhhhhSdcSd(3,3,6,6),cplhhhhSecSe(3,3,6,6),cplhhhhSucSu(3,3,6,6),& 
& cplhhhhSvcSv(3,3,6,6),cplHpmHpmcHpmcHpm(2,2,2,2),cplHpmSdcHpmcSd(2,6,2,6),             & 
& cplHpmSecHpmcSe(2,6,2,6),cplHpmSucHpmcSu(2,6,2,6),cplHpmSvcHpmcSv(2,6,2,6),            & 
& cplSdSdcSdcSd(6,6,6,6),cplSdSecSdcSe(6,6,6,6),cplSdSucSdcSu(6,6,6,6),cplSeSecSecSe(6,6,6,6),& 
& cplSeSvcSecSv(6,6,6,6),cplSuSucSucSu(6,6,6,6),cplSuSvcSucSv(6,6,6,6),cplSvSvcSvcSv(6,6,6,6),& 
& cplSdcSdVGVG(6,6),cplSucSuVGVG(6,6)

Call TreeMassesEffPot(MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,               & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZVR,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,               & 
& gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,            & 
& TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,              & 
& mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,.True.,kont)

Call CouplingsForEffPot3(lam,Tlam,ZA,vd,vu,vS,ZH,ZP,Yd,Td,ZD,Ye11,TYe11,              & 
& Ye22,TYe22,Ye33,TYe33,Tep,Tmup,ZE,Yu,Tu,ZU,Yv11,TYv11,Yv22,TYv22,Yv33,TYv33,           & 
& ZV,g3,UM,UP,ZN,ZDL,ZDR,ZEL,ZER,ZUL,ZUR,ZVL,ZVR,pG,cplAhAhAh,cplAhAhhh,cplAhhhhh,       & 
& cplAhHpmcHpm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,       & 
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,      & 
& cplSecHpmcSv,cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,              & 
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,         & 
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,       & 
& cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,         & 
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         & 
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         & 
& cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,         & 
& cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,       & 
& cplcFvFecHpmL,cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,           & 
& cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,       & 
& cplcChacFvSeL,cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplGluGluVGL,cplGluGluVGR)

Call CouplingsForEffPot4(lam,ZA,ZH,ZP,Yd,ZD,Ye11,Ye22,Ye33,ZE,Yu,ZU,Yv11,             & 
& Yv22,Yv33,ZV,g3,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,cplAhAhSecSe,      & 
& cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,cplhhhhSecSe,        & 
& cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,cplHpmSecHpmcSe,           & 
& cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,cplSdSucSdcSu,             & 
& cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,cplSdcSdVGVG,    & 
& cplSucSuVGVG)

Call MassesCoupsToG(MSd,MSd2,MSv,MSv2,MFv,MFv2,MSu,MSu2,MSe,MSe2,Mhh,Mhh2,            & 
& MAh,MAh2,MHpm,MHpm2,MChi,MChi2,MCha,MCha2,MFe,MFe2,MFd,MFd2,MFu,MFu2,MGlu,             & 
& MGlu2,MVZ,MVZp,MVZ2,MVZp2,MVWm,MVWm2,cplAhAhAh,cplAhAhhh,cplAhhhhh,cplAhHpmcHpm,       & 
& cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,cplhhSdcSd,         & 
& cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,cplSecHpmcSv,    & 
& cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,cplChiChiAhL,              & 
& cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,cplcFuFuAhL,              & 
& cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,cplChaFucSdL,        & 
& cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,       & 
& cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,cplChiFdcSdL,         & 
& cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,         & 
& cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,     & 
& cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,cplGluFdcSdL,         & 
& cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,cplcFuFdcHpmL,        & 
& cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,       & 
& cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHpmL,          & 
& cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFdGluSdL,           & 
& cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,cplcChacFvSeL,      & 
& cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,cplGluGluVGL,            & 
& cplGluGluVGR,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,cplAhAhSecSe,         & 
& cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,cplhhhhSecSe,        & 
& cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,cplHpmSecHpmcSe,           & 
& cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,cplSdSucSdcSu,             & 
& cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,cplSdcSdVGVG,    & 
& cplSucSuVGVG,gout)

End Subroutine WrapperForDerivatives

Subroutine MassesCoupsToG(MSd,MSd2,MSv,MSv2,MFv,MFv2,MSu,MSu2,MSe,MSe2,               & 
& Mhh,Mhh2,MAh,MAh2,MHpm,MHpm2,MChi,MChi2,MCha,MCha2,MFe,MFe2,MFd,MFd2,MFu,              & 
& MFu2,MGlu,MGlu2,MVZ,MVZp,MVZ2,MVZp2,MVWm,MVWm2,cplAhAhAh,cplAhAhhh,cplAhhhhh,          & 
& cplAhHpmcHpm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,       & 
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,      & 
& cplSecHpmcSv,cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,              & 
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,         & 
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,       & 
& cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,         & 
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         & 
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         & 
& cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,         & 
& cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,       & 
& cplcFvFecHpmL,cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,           & 
& cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,       & 
& cplcChacFvSeL,cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplGluGluVGL,cplGluGluVGR,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,         & 
& cplAhAhSecSe,cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,        & 
& cplhhhhSecSe,cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,              & 
& cplHpmSecHpmcSe,cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,           & 
& cplSdSucSdcSu,cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,   & 
& cplSdcSdVGVG,cplSucSuVGVG,g)

Implicit None 
Real(dp), Intent(out) :: g(:) 
Integer :: i1,i2,i3,i4, sumI
Real(dp),Intent(in) :: MSd(6),MSd2(6),MSv(6),MSv2(6),MFv(3),MFv2(3),MSu(6),MSu2(6),MSe(6),MSe2(6),           & 
& Mhh(3),Mhh2(3),MAh(3),MAh2(3),MHpm(2),MHpm2(2),MChi(6),MChi2(6),MCha(2),               & 
& MCha2(2),MFe(3),MFe2(3),MFd(3),MFd2(3),MFu(3),MFu2(3),MGlu,MGlu2,MVZ,MVZp,             & 
& MVZ2,MVZp2,MVWm,MVWm2

Complex(dp),Intent(in) :: cplAhAhAh(3,3,3),cplAhAhhh(3,3,3),cplAhhhhh(3,3,3),cplAhHpmcHpm(3,2,2),               & 
& cplAhSdcSd(3,6,6),cplAhSecSe(3,6,6),cplAhSucSu(3,6,6),cplAhSvcSv(3,6,6),               & 
& cplhhhhhh(3,3,3),cplhhHpmcHpm(3,2,2),cplhhSdcSd(3,6,6),cplhhSecSe(3,6,6),              & 
& cplhhSucSu(3,6,6),cplhhSvcSv(3,6,6),cplHpmSucSd(2,6,6),cplHpmSvcSe(2,6,6),             & 
& cplSdcHpmcSu(6,2,6),cplSecHpmcSv(6,2,6),cplSdcSdVG(6,6),cplSucSuVG(6,6),               & 
& cplVGVGVG,cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplChiChiAhL(6,6,3),               & 
& cplChiChiAhR(6,6,3),cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),cplcFeFeAhL(3,3,3),          & 
& cplcFeFeAhR(3,3,3),cplcFuFuAhL(3,3,3),cplcFuFuAhR(3,3,3),cplcFvFvAhL(3,3,3),           & 
& cplcFvFvAhR(3,3,3),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),cplChaFucSdL(2,3,6),    & 
& cplChaFucSdR(2,3,6),cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplcChaChahhL(2,2,3),      & 
& cplcChaChahhR(2,2,3),cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),cplcFeChaSvL(3,2,6),      & 
& cplcFeChaSvR(3,2,6),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiFdcSdL(6,3,6),       & 
& cplChiFdcSdR(6,3,6),cplChiFecSeL(6,3,6),cplChiFecSeR(6,3,6),cplChiFucSuL(6,3,6),       & 
& cplChiFucSuR(6,3,6),cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6),cplcChaChiHpmL(2,6,2),     & 
& cplcChaChiHpmR(2,6,2),cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFeChiSeL(3,6,6),     & 
& cplcFeChiSeR(3,6,6),cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFvChiSvL(3,6,6),       & 
& cplcFvChiSvR(3,6,6),cplGluFdcSdL(3,6),cplGluFdcSdR(3,6),cplcFdFdhhL(3,3,3),            & 
& cplcFdFdhhR(3,3,3),cplcChaFdcSuL(2,3,6),cplcChaFdcSuR(2,3,6),cplcFuFdcHpmL(3,3,2),     & 
& cplcFuFdcHpmR(3,3,2),cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcChaFecSvL(2,3,6),       & 
& cplcChaFecSvR(2,3,6),cplcFvFecHpmL(3,3,2),cplcFvFecHpmR(3,3,2),cplGluFucSuL(3,6),      & 
& cplGluFucSuR(3,6),cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFdFuHpmL(3,3,2),           & 
& cplcFdFuHpmR(3,3,2),cplcFvFvhhL(3,3,3),cplcFvFvhhR(3,3,3),cplcFeFvHpmL(3,3,2),         & 
& cplcFeFvHpmR(3,3,2),cplcFdGluSdL(3,6),cplcFdGluSdR(3,6),cplcFuGluSuL(3,6),             & 
& cplcFuGluSuR(3,6),cplcChacFuSdL(2,3,6),cplcChacFuSdR(2,3,6),cplcChacFvSeL(2,3,6),      & 
& cplcChacFvSeR(2,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFuFuVGL(3,3),               & 
& cplcFuFuVGR(3,3),cplGluGluVGL,cplGluGluVGR

Complex(dp),Intent(in) :: cplAhAhAhAh(3,3,3,3),cplAhAhhhhh(3,3,3,3),cplAhAhHpmcHpm(3,3,2,2),cplAhAhSdcSd(3,3,6,6),& 
& cplAhAhSecSe(3,3,6,6),cplAhAhSucSu(3,3,6,6),cplAhAhSvcSv(3,3,6,6),cplhhhhhhhh(3,3,3,3),& 
& cplhhhhHpmcHpm(3,3,2,2),cplhhhhSdcSd(3,3,6,6),cplhhhhSecSe(3,3,6,6),cplhhhhSucSu(3,3,6,6),& 
& cplhhhhSvcSv(3,3,6,6),cplHpmHpmcHpmcHpm(2,2,2,2),cplHpmSdcHpmcSd(2,6,2,6),             & 
& cplHpmSecHpmcSe(2,6,2,6),cplHpmSucHpmcSu(2,6,2,6),cplHpmSvcHpmcSv(2,6,2,6),            & 
& cplSdSdcSdcSd(6,6,6,6),cplSdSecSdcSe(6,6,6,6),cplSdSucSdcSu(6,6,6,6),cplSeSecSecSe(6,6,6,6),& 
& cplSeSvcSecSv(6,6,6,6),cplSuSucSucSu(6,6,6,6),cplSuSvcSucSv(6,6,6,6),cplSvSvcSvcSv(6,6,6,6),& 
& cplSdcSdVGVG(6,6),cplSucSuVGVG(6,6)

g(1:6) = MSd
g(7:12) = MSd2
g(13:18) = MSv
g(19:24) = MSv2
g(25:27) = MFv
g(28:30) = MFv2
g(31:36) = MSu
g(37:42) = MSu2
g(43:48) = MSe
g(49:54) = MSe2
g(55:57) = Mhh
g(58:60) = Mhh2
g(61:63) = MAh
g(64:66) = MAh2
g(67:68) = MHpm
g(69:70) = MHpm2
g(71:76) = MChi
g(77:82) = MChi2
g(83:84) = MCha
g(85:86) = MCha2
g(87:89) = MFe
g(90:92) = MFe2
g(93:95) = MFd
g(96:98) = MFd2
g(99:101) = MFu
g(102:104) = MFu2
g(105) = MGlu
g(106) = MGlu2
g(107) = MVZ
g(108) = MVZp
g(109) = MVZ2
g(110) = MVZp2
g(111) = MVWm
g(112) = MVWm2
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+113) = Real(cplAhAhAh(i1,i2,i3), dp) 
g(SumI+114) = Aimag(cplAhAhAh(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+167) = Real(cplAhAhhh(i1,i2,i3), dp) 
g(SumI+168) = Aimag(cplAhAhhh(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+221) = Real(cplAhhhhh(i1,i2,i3), dp) 
g(SumI+222) = Aimag(cplAhhhhh(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*4
SumI = SumI*2 
g(SumI+275) = Real(cplAhHpmcHpm(i1,i2,i3), dp) 
g(SumI+276) = Aimag(cplAhHpmcHpm(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+299) = Real(cplAhSdcSd(i1,i2,i3), dp) 
g(SumI+300) = Aimag(cplAhSdcSd(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+515) = Real(cplAhSecSe(i1,i2,i3), dp) 
g(SumI+516) = Aimag(cplAhSecSe(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+731) = Real(cplAhSucSu(i1,i2,i3), dp) 
g(SumI+732) = Aimag(cplAhSucSu(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+947) = Real(cplAhSvcSv(i1,i2,i3), dp) 
g(SumI+948) = Aimag(cplAhSvcSv(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+1163) = Real(cplhhhhhh(i1,i2,i3), dp) 
g(SumI+1164) = Aimag(cplhhhhhh(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*4
SumI = SumI*2 
g(SumI+1217) = Real(cplhhHpmcHpm(i1,i2,i3), dp) 
g(SumI+1218) = Aimag(cplhhHpmcHpm(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+1241) = Real(cplhhSdcSd(i1,i2,i3), dp) 
g(SumI+1242) = Aimag(cplhhSdcSd(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+1457) = Real(cplhhSecSe(i1,i2,i3), dp) 
g(SumI+1458) = Aimag(cplhhSecSe(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+1673) = Real(cplhhSucSu(i1,i2,i3), dp) 
g(SumI+1674) = Aimag(cplhhSucSu(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+1889) = Real(cplhhSvcSv(i1,i2,i3), dp) 
g(SumI+1890) = Aimag(cplhhSvcSv(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+2105) = Real(cplHpmSucSd(i1,i2,i3), dp) 
g(SumI+2106) = Aimag(cplHpmSucSd(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+2249) = Real(cplHpmSvcSe(i1,i2,i3), dp) 
g(SumI+2250) = Aimag(cplHpmSvcSe(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
g(SumI+2393) = Real(cplSdcHpmcSu(i1,i2,i3), dp) 
g(SumI+2394) = Aimag(cplSdcHpmcSu(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
g(SumI+2537) = Real(cplSecHpmcSv(i1,i2,i3), dp) 
g(SumI+2538) = Aimag(cplSecHpmcSv(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+2681) = Real(cplSdcSdVG(i1,i2), dp) 
g(SumI+2682) = Aimag(cplSdcSdVG(i1,i2)) 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+2753) = Real(cplSucSuVG(i1,i2), dp) 
g(SumI+2754) = Aimag(cplSucSuVG(i1,i2)) 
End Do 
End Do 

g(2825) = Real(cplVGVGVG,dp)  
g(2826) = Aimag(cplVGVGVG)  
Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*6
SumI = SumI*2 
g(SumI+2827) = Real(cplcChaChaAhL(i1,i2,i3), dp) 
g(SumI+2828) = Aimag(cplcChaChaAhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*6
SumI = SumI*2 
g(SumI+2851) = Real(cplcChaChaAhR(i1,i2,i3), dp) 
g(SumI+2852) = Aimag(cplcChaChaAhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*18
SumI = SumI*2 
g(SumI+2875) = Real(cplChiChiAhL(i1,i2,i3), dp) 
g(SumI+2876) = Aimag(cplChiChiAhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*18
SumI = SumI*2 
g(SumI+3091) = Real(cplChiChiAhR(i1,i2,i3), dp) 
g(SumI+3092) = Aimag(cplChiChiAhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+3307) = Real(cplcFdFdAhL(i1,i2,i3), dp) 
g(SumI+3308) = Aimag(cplcFdFdAhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+3361) = Real(cplcFdFdAhR(i1,i2,i3), dp) 
g(SumI+3362) = Aimag(cplcFdFdAhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+3415) = Real(cplcFeFeAhL(i1,i2,i3), dp) 
g(SumI+3416) = Aimag(cplcFeFeAhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+3469) = Real(cplcFeFeAhR(i1,i2,i3), dp) 
g(SumI+3470) = Aimag(cplcFeFeAhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+3523) = Real(cplcFuFuAhL(i1,i2,i3), dp) 
g(SumI+3524) = Aimag(cplcFuFuAhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+3577) = Real(cplcFuFuAhR(i1,i2,i3), dp) 
g(SumI+3578) = Aimag(cplcFuFuAhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+3631) = Real(cplcFvFvAhL(i1,i2,i3), dp) 
g(SumI+3632) = Aimag(cplcFvFvAhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+3685) = Real(cplcFvFvAhR(i1,i2,i3), dp) 
g(SumI+3686) = Aimag(cplcFvFvAhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,2
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*4
SumI = SumI*2 
g(SumI+3739) = Real(cplChiChacHpmL(i1,i2,i3), dp) 
g(SumI+3740) = Aimag(cplChiChacHpmL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,2
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*4
SumI = SumI*2 
g(SumI+3787) = Real(cplChiChacHpmR(i1,i2,i3), dp) 
g(SumI+3788) = Aimag(cplChiChacHpmR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+3835) = Real(cplChaFucSdL(i1,i2,i3), dp) 
g(SumI+3836) = Aimag(cplChaFucSdL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+3907) = Real(cplChaFucSdR(i1,i2,i3), dp) 
g(SumI+3908) = Aimag(cplChaFucSdR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+3979) = Real(cplChaFvcSeL(i1,i2,i3), dp) 
g(SumI+3980) = Aimag(cplChaFvcSeL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+4051) = Real(cplChaFvcSeR(i1,i2,i3), dp) 
g(SumI+4052) = Aimag(cplChaFvcSeR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*6
SumI = SumI*2 
g(SumI+4123) = Real(cplcChaChahhL(i1,i2,i3), dp) 
g(SumI+4124) = Aimag(cplcChaChahhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*6
SumI = SumI*2 
g(SumI+4147) = Real(cplcChaChahhR(i1,i2,i3), dp) 
g(SumI+4148) = Aimag(cplcChaChahhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
g(SumI+4171) = Real(cplcFdChaSuL(i1,i2,i3), dp) 
g(SumI+4172) = Aimag(cplcFdChaSuL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
g(SumI+4243) = Real(cplcFdChaSuR(i1,i2,i3), dp) 
g(SumI+4244) = Aimag(cplcFdChaSuR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
g(SumI+4315) = Real(cplcFeChaSvL(i1,i2,i3), dp) 
g(SumI+4316) = Aimag(cplcFeChaSvL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
g(SumI+4387) = Real(cplcFeChaSvR(i1,i2,i3), dp) 
g(SumI+4388) = Aimag(cplcFeChaSvR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*18
SumI = SumI*2 
g(SumI+4459) = Real(cplChiChihhL(i1,i2,i3), dp) 
g(SumI+4460) = Aimag(cplChiChihhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*18
SumI = SumI*2 
g(SumI+4675) = Real(cplChiChihhR(i1,i2,i3), dp) 
g(SumI+4676) = Aimag(cplChiChihhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+4891) = Real(cplChiFdcSdL(i1,i2,i3), dp) 
g(SumI+4892) = Aimag(cplChiFdcSdL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+5107) = Real(cplChiFdcSdR(i1,i2,i3), dp) 
g(SumI+5108) = Aimag(cplChiFdcSdR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+5323) = Real(cplChiFecSeL(i1,i2,i3), dp) 
g(SumI+5324) = Aimag(cplChiFecSeL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+5539) = Real(cplChiFecSeR(i1,i2,i3), dp) 
g(SumI+5540) = Aimag(cplChiFecSeR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+5755) = Real(cplChiFucSuL(i1,i2,i3), dp) 
g(SumI+5756) = Aimag(cplChiFucSuL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+5971) = Real(cplChiFucSuR(i1,i2,i3), dp) 
g(SumI+5972) = Aimag(cplChiFucSuR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+6187) = Real(cplChiFvcSvL(i1,i2,i3), dp) 
g(SumI+6188) = Aimag(cplChiFvcSvL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+6403) = Real(cplChiFvcSvR(i1,i2,i3), dp) 
g(SumI+6404) = Aimag(cplChiFvcSvR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*12
SumI = SumI*2 
g(SumI+6619) = Real(cplcChaChiHpmL(i1,i2,i3), dp) 
g(SumI+6620) = Aimag(cplcChaChiHpmL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*12
SumI = SumI*2 
g(SumI+6667) = Real(cplcChaChiHpmR(i1,i2,i3), dp) 
g(SumI+6668) = Aimag(cplcChaChiHpmR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+6715) = Real(cplcFdChiSdL(i1,i2,i3), dp) 
g(SumI+6716) = Aimag(cplcFdChiSdL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+6931) = Real(cplcFdChiSdR(i1,i2,i3), dp) 
g(SumI+6932) = Aimag(cplcFdChiSdR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+7147) = Real(cplcFeChiSeL(i1,i2,i3), dp) 
g(SumI+7148) = Aimag(cplcFeChiSeL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+7363) = Real(cplcFeChiSeR(i1,i2,i3), dp) 
g(SumI+7364) = Aimag(cplcFeChiSeR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+7579) = Real(cplcFuChiSuL(i1,i2,i3), dp) 
g(SumI+7580) = Aimag(cplcFuChiSuL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+7795) = Real(cplcFuChiSuR(i1,i2,i3), dp) 
g(SumI+7796) = Aimag(cplcFuChiSuR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+8011) = Real(cplcFvChiSvL(i1,i2,i3), dp) 
g(SumI+8012) = Aimag(cplcFvChiSvL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
g(SumI+8227) = Real(cplcFvChiSvR(i1,i2,i3), dp) 
g(SumI+8228) = Aimag(cplcFvChiSvR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+8443) = Real(cplGluFdcSdL(i1,i2), dp) 
g(SumI+8444) = Aimag(cplGluFdcSdL(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+8479) = Real(cplGluFdcSdR(i1,i2), dp) 
g(SumI+8480) = Aimag(cplGluFdcSdR(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+8515) = Real(cplcFdFdhhL(i1,i2,i3), dp) 
g(SumI+8516) = Aimag(cplcFdFdhhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+8569) = Real(cplcFdFdhhR(i1,i2,i3), dp) 
g(SumI+8570) = Aimag(cplcFdFdhhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+8623) = Real(cplcChaFdcSuL(i1,i2,i3), dp) 
g(SumI+8624) = Aimag(cplcChaFdcSuL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+8695) = Real(cplcChaFdcSuR(i1,i2,i3), dp) 
g(SumI+8696) = Aimag(cplcChaFdcSuR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
g(SumI+8767) = Real(cplcFuFdcHpmL(i1,i2,i3), dp) 
g(SumI+8768) = Aimag(cplcFuFdcHpmL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
g(SumI+8803) = Real(cplcFuFdcHpmR(i1,i2,i3), dp) 
g(SumI+8804) = Aimag(cplcFuFdcHpmR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+8839) = Real(cplcFeFehhL(i1,i2,i3), dp) 
g(SumI+8840) = Aimag(cplcFeFehhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+8893) = Real(cplcFeFehhR(i1,i2,i3), dp) 
g(SumI+8894) = Aimag(cplcFeFehhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+8947) = Real(cplcChaFecSvL(i1,i2,i3), dp) 
g(SumI+8948) = Aimag(cplcChaFecSvL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+9019) = Real(cplcChaFecSvR(i1,i2,i3), dp) 
g(SumI+9020) = Aimag(cplcChaFecSvR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
g(SumI+9091) = Real(cplcFvFecHpmL(i1,i2,i3), dp) 
g(SumI+9092) = Aimag(cplcFvFecHpmL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
g(SumI+9127) = Real(cplcFvFecHpmR(i1,i2,i3), dp) 
g(SumI+9128) = Aimag(cplcFvFecHpmR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+9163) = Real(cplGluFucSuL(i1,i2), dp) 
g(SumI+9164) = Aimag(cplGluFucSuL(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+9199) = Real(cplGluFucSuR(i1,i2), dp) 
g(SumI+9200) = Aimag(cplGluFucSuR(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+9235) = Real(cplcFuFuhhL(i1,i2,i3), dp) 
g(SumI+9236) = Aimag(cplcFuFuhhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+9289) = Real(cplcFuFuhhR(i1,i2,i3), dp) 
g(SumI+9290) = Aimag(cplcFuFuhhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
g(SumI+9343) = Real(cplcFdFuHpmL(i1,i2,i3), dp) 
g(SumI+9344) = Aimag(cplcFdFuHpmL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
g(SumI+9379) = Real(cplcFdFuHpmR(i1,i2,i3), dp) 
g(SumI+9380) = Aimag(cplcFdFuHpmR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+9415) = Real(cplcFvFvhhL(i1,i2,i3), dp) 
g(SumI+9416) = Aimag(cplcFvFvhhL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
g(SumI+9469) = Real(cplcFvFvhhR(i1,i2,i3), dp) 
g(SumI+9470) = Aimag(cplcFvFvhhR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
g(SumI+9523) = Real(cplcFeFvHpmL(i1,i2,i3), dp) 
g(SumI+9524) = Aimag(cplcFeFvHpmL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
g(SumI+9559) = Real(cplcFeFvHpmR(i1,i2,i3), dp) 
g(SumI+9560) = Aimag(cplcFeFvHpmR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+9595) = Real(cplcFdGluSdL(i1,i2), dp) 
g(SumI+9596) = Aimag(cplcFdGluSdL(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+9631) = Real(cplcFdGluSdR(i1,i2), dp) 
g(SumI+9632) = Aimag(cplcFdGluSdR(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+9667) = Real(cplcFuGluSuL(i1,i2), dp) 
g(SumI+9668) = Aimag(cplcFuGluSuL(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+9703) = Real(cplcFuGluSuR(i1,i2), dp) 
g(SumI+9704) = Aimag(cplcFuGluSuR(i1,i2)) 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+9739) = Real(cplcChacFuSdL(i1,i2,i3), dp) 
g(SumI+9740) = Aimag(cplcChacFuSdL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+9811) = Real(cplcChacFuSdR(i1,i2,i3), dp) 
g(SumI+9812) = Aimag(cplcChacFuSdR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+9883) = Real(cplcChacFvSeL(i1,i2,i3), dp) 
g(SumI+9884) = Aimag(cplcChacFvSeL(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
g(SumI+9955) = Real(cplcChacFvSeR(i1,i2,i3), dp) 
g(SumI+9956) = Aimag(cplcChacFvSeR(i1,i2,i3)) 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+10027) = Real(cplcFdFdVGL(i1,i2), dp) 
g(SumI+10028) = Aimag(cplcFdFdVGL(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+10045) = Real(cplcFdFdVGR(i1,i2), dp) 
g(SumI+10046) = Aimag(cplcFdFdVGR(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+10063) = Real(cplcFuFuVGL(i1,i2), dp) 
g(SumI+10064) = Aimag(cplcFuFuVGL(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+10081) = Real(cplcFuFuVGR(i1,i2), dp) 
g(SumI+10082) = Aimag(cplcFuFuVGR(i1,i2)) 
End Do 
End Do 

g(10099) = Real(cplGluGluVGL,dp)  
g(10100) = Aimag(cplGluGluVGL)  
g(10101) = Real(cplGluGluVGR,dp)  
g(10102) = Aimag(cplGluGluVGR)  
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
Do i4 = 1,3
SumI = (i4-1) + (i3-1)*3 + (i2-1)*9 + (i1-1)*27
SumI = SumI*2 
g(SumI+10103) = Real(cplAhAhAhAh(i1,i2,i3,i4), dp) 
g(SumI+10104) = Aimag(cplAhAhAhAh(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
Do i4 = 1,3
SumI = (i4-1) + (i3-1)*3 + (i2-1)*9 + (i1-1)*27
SumI = SumI*2 
g(SumI+10265) = Real(cplAhAhhhhh(i1,i2,i3,i4), dp) 
g(SumI+10266) = Aimag(cplAhAhhhhh(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
Do i4 = 1,2
SumI = (i4-1) + (i3-1)*2 + (i2-1)*4 + (i1-1)*12
SumI = SumI*2 
g(SumI+10427) = Real(cplAhAhHpmcHpm(i1,i2,i3,i4), dp) 
g(SumI+10428) = Aimag(cplAhAhHpmcHpm(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
g(SumI+10499) = Real(cplAhAhSdcSd(i1,i2,i3,i4), dp) 
g(SumI+10500) = Aimag(cplAhAhSdcSd(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
g(SumI+11147) = Real(cplAhAhSecSe(i1,i2,i3,i4), dp) 
g(SumI+11148) = Aimag(cplAhAhSecSe(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
g(SumI+11795) = Real(cplAhAhSucSu(i1,i2,i3,i4), dp) 
g(SumI+11796) = Aimag(cplAhAhSucSu(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
g(SumI+12443) = Real(cplAhAhSvcSv(i1,i2,i3,i4), dp) 
g(SumI+12444) = Aimag(cplAhAhSvcSv(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
Do i4 = 1,3
SumI = (i4-1) + (i3-1)*3 + (i2-1)*9 + (i1-1)*27
SumI = SumI*2 
g(SumI+13091) = Real(cplhhhhhhhh(i1,i2,i3,i4), dp) 
g(SumI+13092) = Aimag(cplhhhhhhhh(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
Do i4 = 1,2
SumI = (i4-1) + (i3-1)*2 + (i2-1)*4 + (i1-1)*12
SumI = SumI*2 
g(SumI+13253) = Real(cplhhhhHpmcHpm(i1,i2,i3,i4), dp) 
g(SumI+13254) = Aimag(cplhhhhHpmcHpm(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
g(SumI+13325) = Real(cplhhhhSdcSd(i1,i2,i3,i4), dp) 
g(SumI+13326) = Aimag(cplhhhhSdcSd(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
g(SumI+13973) = Real(cplhhhhSecSe(i1,i2,i3,i4), dp) 
g(SumI+13974) = Aimag(cplhhhhSecSe(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
g(SumI+14621) = Real(cplhhhhSucSu(i1,i2,i3,i4), dp) 
g(SumI+14622) = Aimag(cplhhhhSucSu(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
g(SumI+15269) = Real(cplhhhhSvcSv(i1,i2,i3,i4), dp) 
g(SumI+15270) = Aimag(cplhhhhSvcSv(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,2
Do i4 = 1,2
SumI = (i4-1) + (i3-1)*2 + (i2-1)*4 + (i1-1)*8
SumI = SumI*2 
g(SumI+15917) = Real(cplHpmHpmcHpmcHpm(i1,i2,i3,i4), dp) 
g(SumI+15918) = Aimag(cplHpmHpmcHpmcHpm(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*12 + (i1-1)*72
SumI = SumI*2 
g(SumI+15949) = Real(cplHpmSdcHpmcSd(i1,i2,i3,i4), dp) 
g(SumI+15950) = Aimag(cplHpmSdcHpmcSd(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*12 + (i1-1)*72
SumI = SumI*2 
g(SumI+16237) = Real(cplHpmSecHpmcSe(i1,i2,i3,i4), dp) 
g(SumI+16238) = Aimag(cplHpmSecHpmcSe(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*12 + (i1-1)*72
SumI = SumI*2 
g(SumI+16525) = Real(cplHpmSucHpmcSu(i1,i2,i3,i4), dp) 
g(SumI+16526) = Aimag(cplHpmSucHpmcSu(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*12 + (i1-1)*72
SumI = SumI*2 
g(SumI+16813) = Real(cplHpmSvcHpmcSv(i1,i2,i3,i4), dp) 
g(SumI+16814) = Aimag(cplHpmSvcHpmcSv(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
g(SumI+17101) = Real(cplSdSdcSdcSd(i1,i2,i3,i4), dp) 
g(SumI+17102) = Aimag(cplSdSdcSdcSd(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
g(SumI+19693) = Real(cplSdSecSdcSe(i1,i2,i3,i4), dp) 
g(SumI+19694) = Aimag(cplSdSecSdcSe(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
g(SumI+22285) = Real(cplSdSucSdcSu(i1,i2,i3,i4), dp) 
g(SumI+22286) = Aimag(cplSdSucSdcSu(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
g(SumI+24877) = Real(cplSeSecSecSe(i1,i2,i3,i4), dp) 
g(SumI+24878) = Aimag(cplSeSecSecSe(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
g(SumI+27469) = Real(cplSeSvcSecSv(i1,i2,i3,i4), dp) 
g(SumI+27470) = Aimag(cplSeSvcSecSv(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
g(SumI+30061) = Real(cplSuSucSucSu(i1,i2,i3,i4), dp) 
g(SumI+30062) = Aimag(cplSuSucSucSu(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
g(SumI+32653) = Real(cplSuSvcSucSv(i1,i2,i3,i4), dp) 
g(SumI+32654) = Aimag(cplSuSvcSucSv(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
g(SumI+35245) = Real(cplSvSvcSvcSv(i1,i2,i3,i4), dp) 
g(SumI+35246) = Aimag(cplSvSvcSvcSv(i1,i2,i3,i4)) 
End Do 
End Do 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+37837) = Real(cplSdcSdVGVG(i1,i2), dp) 
g(SumI+37838) = Aimag(cplSdcSdVGVG(i1,i2)) 
End Do 
End Do 

Do i1 = 1,6
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
g(SumI+37909) = Real(cplSucSuVGVG(i1,i2), dp) 
g(SumI+37910) = Aimag(cplSucSuVGVG(i1,i2)) 
End Do 
End Do 

End Subroutine MassesCoupsToG

Subroutine GToMassesCoups(g,MSd,MSd2,MSv,MSv2,MFv,MFv2,MSu,MSu2,MSe,MSe2,             & 
& Mhh,Mhh2,MAh,MAh2,MHpm,MHpm2,MChi,MChi2,MCha,MCha2,MFe,MFe2,MFd,MFd2,MFu,              & 
& MFu2,MGlu,MGlu2,MVZ,MVZp,MVZ2,MVZp2,MVWm,MVWm2,cplAhAhAh,cplAhAhhh,cplAhhhhh,          & 
& cplAhHpmcHpm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhSvcSv,cplhhhhhh,cplhhHpmcHpm,       & 
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,      & 
& cplSecHpmcSv,cplSdcSdVG,cplSucSuVG,cplVGVGVG,cplcChaChaAhL,cplcChaChaAhR,              & 
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFvFvAhL,cplcFvFvAhR,cplChiChacHpmL,cplChiChacHpmR,         & 
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,       & 
& cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplChiChihhL,cplChiChihhR,         & 
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         & 
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         & 
& cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcChaFdcSuL,cplcChaFdcSuR,         & 
& cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,       & 
& cplcFvFecHpmL,cplcFvFecHpmR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFvFvhhL,cplcFvFvhhR,cplcFeFvHpmL,cplcFeFvHpmR,           & 
& cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplcChacFuSdL,cplcChacFuSdR,       & 
& cplcChacFvSeL,cplcChacFvSeR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplGluGluVGL,cplGluGluVGR,cplAhAhAhAh,cplAhAhhhhh,cplAhAhHpmcHpm,cplAhAhSdcSd,         & 
& cplAhAhSecSe,cplAhAhSucSu,cplAhAhSvcSv,cplhhhhhhhh,cplhhhhHpmcHpm,cplhhhhSdcSd,        & 
& cplhhhhSecSe,cplhhhhSucSu,cplhhhhSvcSv,cplHpmHpmcHpmcHpm,cplHpmSdcHpmcSd,              & 
& cplHpmSecHpmcSe,cplHpmSucHpmcSu,cplHpmSvcHpmcSv,cplSdSdcSdcSd,cplSdSecSdcSe,           & 
& cplSdSucSdcSu,cplSeSecSecSe,cplSeSvcSecSv,cplSuSucSucSu,cplSuSvcSucSv,cplSvSvcSvcSv,   & 
& cplSdcSdVGVG,cplSucSuVGVG)

Implicit None 
Real(dp), Intent(in) :: g(:) 
Integer :: i1,i2,i3,i4, sumI
Real(dp),Intent(inout) :: MSd(6),MSd2(6),MSv(6),MSv2(6),MFv(3),MFv2(3),MSu(6),MSu2(6),MSe(6),MSe2(6),           & 
& Mhh(3),Mhh2(3),MAh(3),MAh2(3),MHpm(2),MHpm2(2),MChi(6),MChi2(6),MCha(2),               & 
& MCha2(2),MFe(3),MFe2(3),MFd(3),MFd2(3),MFu(3),MFu2(3),MGlu,MGlu2,MVZ,MVZp,             & 
& MVZ2,MVZp2,MVWm,MVWm2

Complex(dp),Intent(inout) :: cplAhAhAh(3,3,3),cplAhAhhh(3,3,3),cplAhhhhh(3,3,3),cplAhHpmcHpm(3,2,2),               & 
& cplAhSdcSd(3,6,6),cplAhSecSe(3,6,6),cplAhSucSu(3,6,6),cplAhSvcSv(3,6,6),               & 
& cplhhhhhh(3,3,3),cplhhHpmcHpm(3,2,2),cplhhSdcSd(3,6,6),cplhhSecSe(3,6,6),              & 
& cplhhSucSu(3,6,6),cplhhSvcSv(3,6,6),cplHpmSucSd(2,6,6),cplHpmSvcSe(2,6,6),             & 
& cplSdcHpmcSu(6,2,6),cplSecHpmcSv(6,2,6),cplSdcSdVG(6,6),cplSucSuVG(6,6),               & 
& cplVGVGVG,cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplChiChiAhL(6,6,3),               & 
& cplChiChiAhR(6,6,3),cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),cplcFeFeAhL(3,3,3),          & 
& cplcFeFeAhR(3,3,3),cplcFuFuAhL(3,3,3),cplcFuFuAhR(3,3,3),cplcFvFvAhL(3,3,3),           & 
& cplcFvFvAhR(3,3,3),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),cplChaFucSdL(2,3,6),    & 
& cplChaFucSdR(2,3,6),cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplcChaChahhL(2,2,3),      & 
& cplcChaChahhR(2,2,3),cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),cplcFeChaSvL(3,2,6),      & 
& cplcFeChaSvR(3,2,6),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiFdcSdL(6,3,6),       & 
& cplChiFdcSdR(6,3,6),cplChiFecSeL(6,3,6),cplChiFecSeR(6,3,6),cplChiFucSuL(6,3,6),       & 
& cplChiFucSuR(6,3,6),cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6),cplcChaChiHpmL(2,6,2),     & 
& cplcChaChiHpmR(2,6,2),cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFeChiSeL(3,6,6),     & 
& cplcFeChiSeR(3,6,6),cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFvChiSvL(3,6,6),       & 
& cplcFvChiSvR(3,6,6),cplGluFdcSdL(3,6),cplGluFdcSdR(3,6),cplcFdFdhhL(3,3,3),            & 
& cplcFdFdhhR(3,3,3),cplcChaFdcSuL(2,3,6),cplcChaFdcSuR(2,3,6),cplcFuFdcHpmL(3,3,2),     & 
& cplcFuFdcHpmR(3,3,2),cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcChaFecSvL(2,3,6),       & 
& cplcChaFecSvR(2,3,6),cplcFvFecHpmL(3,3,2),cplcFvFecHpmR(3,3,2),cplGluFucSuL(3,6),      & 
& cplGluFucSuR(3,6),cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFdFuHpmL(3,3,2),           & 
& cplcFdFuHpmR(3,3,2),cplcFvFvhhL(3,3,3),cplcFvFvhhR(3,3,3),cplcFeFvHpmL(3,3,2),         & 
& cplcFeFvHpmR(3,3,2),cplcFdGluSdL(3,6),cplcFdGluSdR(3,6),cplcFuGluSuL(3,6),             & 
& cplcFuGluSuR(3,6),cplcChacFuSdL(2,3,6),cplcChacFuSdR(2,3,6),cplcChacFvSeL(2,3,6),      & 
& cplcChacFvSeR(2,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFuFuVGL(3,3),               & 
& cplcFuFuVGR(3,3),cplGluGluVGL,cplGluGluVGR

Complex(dp),Intent(inout) :: cplAhAhAhAh(3,3,3,3),cplAhAhhhhh(3,3,3,3),cplAhAhHpmcHpm(3,3,2,2),cplAhAhSdcSd(3,3,6,6),& 
& cplAhAhSecSe(3,3,6,6),cplAhAhSucSu(3,3,6,6),cplAhAhSvcSv(3,3,6,6),cplhhhhhhhh(3,3,3,3),& 
& cplhhhhHpmcHpm(3,3,2,2),cplhhhhSdcSd(3,3,6,6),cplhhhhSecSe(3,3,6,6),cplhhhhSucSu(3,3,6,6),& 
& cplhhhhSvcSv(3,3,6,6),cplHpmHpmcHpmcHpm(2,2,2,2),cplHpmSdcHpmcSd(2,6,2,6),             & 
& cplHpmSecHpmcSe(2,6,2,6),cplHpmSucHpmcSu(2,6,2,6),cplHpmSvcHpmcSv(2,6,2,6),            & 
& cplSdSdcSdcSd(6,6,6,6),cplSdSecSdcSe(6,6,6,6),cplSdSucSdcSu(6,6,6,6),cplSeSecSecSe(6,6,6,6),& 
& cplSeSvcSecSv(6,6,6,6),cplSuSucSucSu(6,6,6,6),cplSuSvcSucSv(6,6,6,6),cplSvSvcSvcSv(6,6,6,6),& 
& cplSdcSdVGVG(6,6),cplSucSuVGVG(6,6)

MSd=g(1:6) 
MSd2=g(7:12) 
MSv=g(13:18) 
MSv2=g(19:24) 
MFv=g(25:27) 
MFv2=g(28:30) 
MSu=g(31:36) 
MSu2=g(37:42) 
MSe=g(43:48) 
MSe2=g(49:54) 
Mhh=g(55:57) 
Mhh2=g(58:60) 
MAh=g(61:63) 
MAh2=g(64:66) 
MHpm=g(67:68) 
MHpm2=g(69:70) 
MChi=g(71:76) 
MChi2=g(77:82) 
MCha=g(83:84) 
MCha2=g(85:86) 
MFe=g(87:89) 
MFe2=g(90:92) 
MFd=g(93:95) 
MFd2=g(96:98) 
MFu=g(99:101) 
MFu2=g(102:104) 
MGlu=g(105) 
MGlu2=g(106) 
MVZ=g(107) 
MVZp=g(108) 
MVZ2=g(109) 
MVZp2=g(110) 
MVWm=g(111) 
MVWm2=g(112) 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplAhAhAh(i1,i2,i3) = Cmplx( g(SumI+113), g(SumI+114), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplAhAhhh(i1,i2,i3) = Cmplx( g(SumI+167), g(SumI+168), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplAhhhhh(i1,i2,i3) = Cmplx( g(SumI+221), g(SumI+222), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*4
SumI = SumI*2 
cplAhHpmcHpm(i1,i2,i3) = Cmplx( g(SumI+275), g(SumI+276), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplAhSdcSd(i1,i2,i3) = Cmplx( g(SumI+299), g(SumI+300), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplAhSecSe(i1,i2,i3) = Cmplx( g(SumI+515), g(SumI+516), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplAhSucSu(i1,i2,i3) = Cmplx( g(SumI+731), g(SumI+732), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplAhSvcSv(i1,i2,i3) = Cmplx( g(SumI+947), g(SumI+948), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplhhhhhh(i1,i2,i3) = Cmplx( g(SumI+1163), g(SumI+1164), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*4
SumI = SumI*2 
cplhhHpmcHpm(i1,i2,i3) = Cmplx( g(SumI+1217), g(SumI+1218), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplhhSdcSd(i1,i2,i3) = Cmplx( g(SumI+1241), g(SumI+1242), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplhhSecSe(i1,i2,i3) = Cmplx( g(SumI+1457), g(SumI+1458), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplhhSucSu(i1,i2,i3) = Cmplx( g(SumI+1673), g(SumI+1674), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplhhSvcSv(i1,i2,i3) = Cmplx( g(SumI+1889), g(SumI+1890), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplHpmSucSd(i1,i2,i3) = Cmplx( g(SumI+2105), g(SumI+2106), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplHpmSvcSe(i1,i2,i3) = Cmplx( g(SumI+2249), g(SumI+2250), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
cplSdcHpmcSu(i1,i2,i3) = Cmplx( g(SumI+2393), g(SumI+2394), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
cplSecHpmcSv(i1,i2,i3) = Cmplx( g(SumI+2537), g(SumI+2538), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplSdcSdVG(i1,i2) = Cmplx( g(SumI+2681), g(SumI+2682), dp) 
End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplSucSuVG(i1,i2) = Cmplx( g(SumI+2753), g(SumI+2754), dp) 
End Do 
 End Do 
 
cplVGVGVG= Cmplx(g(2825),g(2826),dp) 
Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*6
SumI = SumI*2 
cplcChaChaAhL(i1,i2,i3) = Cmplx( g(SumI+2827), g(SumI+2828), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*6
SumI = SumI*2 
cplcChaChaAhR(i1,i2,i3) = Cmplx( g(SumI+2851), g(SumI+2852), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*18
SumI = SumI*2 
cplChiChiAhL(i1,i2,i3) = Cmplx( g(SumI+2875), g(SumI+2876), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*18
SumI = SumI*2 
cplChiChiAhR(i1,i2,i3) = Cmplx( g(SumI+3091), g(SumI+3092), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFdFdAhL(i1,i2,i3) = Cmplx( g(SumI+3307), g(SumI+3308), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFdFdAhR(i1,i2,i3) = Cmplx( g(SumI+3361), g(SumI+3362), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFeFeAhL(i1,i2,i3) = Cmplx( g(SumI+3415), g(SumI+3416), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFeFeAhR(i1,i2,i3) = Cmplx( g(SumI+3469), g(SumI+3470), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFuFuAhL(i1,i2,i3) = Cmplx( g(SumI+3523), g(SumI+3524), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFuFuAhR(i1,i2,i3) = Cmplx( g(SumI+3577), g(SumI+3578), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFvFvAhL(i1,i2,i3) = Cmplx( g(SumI+3631), g(SumI+3632), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFvFvAhR(i1,i2,i3) = Cmplx( g(SumI+3685), g(SumI+3686), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,2
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*4
SumI = SumI*2 
cplChiChacHpmL(i1,i2,i3) = Cmplx( g(SumI+3739), g(SumI+3740), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,2
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*4
SumI = SumI*2 
cplChiChacHpmR(i1,i2,i3) = Cmplx( g(SumI+3787), g(SumI+3788), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChaFucSdL(i1,i2,i3) = Cmplx( g(SumI+3835), g(SumI+3836), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChaFucSdR(i1,i2,i3) = Cmplx( g(SumI+3907), g(SumI+3908), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChaFvcSeL(i1,i2,i3) = Cmplx( g(SumI+3979), g(SumI+3980), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChaFvcSeR(i1,i2,i3) = Cmplx( g(SumI+4051), g(SumI+4052), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*6
SumI = SumI*2 
cplcChaChahhL(i1,i2,i3) = Cmplx( g(SumI+4123), g(SumI+4124), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*6
SumI = SumI*2 
cplcChaChahhR(i1,i2,i3) = Cmplx( g(SumI+4147), g(SumI+4148), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
cplcFdChaSuL(i1,i2,i3) = Cmplx( g(SumI+4171), g(SumI+4172), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
cplcFdChaSuR(i1,i2,i3) = Cmplx( g(SumI+4243), g(SumI+4244), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
cplcFeChaSvL(i1,i2,i3) = Cmplx( g(SumI+4315), g(SumI+4316), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,2
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*12
SumI = SumI*2 
cplcFeChaSvR(i1,i2,i3) = Cmplx( g(SumI+4387), g(SumI+4388), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*18
SumI = SumI*2 
cplChiChihhL(i1,i2,i3) = Cmplx( g(SumI+4459), g(SumI+4460), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*18
SumI = SumI*2 
cplChiChihhR(i1,i2,i3) = Cmplx( g(SumI+4675), g(SumI+4676), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChiFdcSdL(i1,i2,i3) = Cmplx( g(SumI+4891), g(SumI+4892), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChiFdcSdR(i1,i2,i3) = Cmplx( g(SumI+5107), g(SumI+5108), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChiFecSeL(i1,i2,i3) = Cmplx( g(SumI+5323), g(SumI+5324), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChiFecSeR(i1,i2,i3) = Cmplx( g(SumI+5539), g(SumI+5540), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChiFucSuL(i1,i2,i3) = Cmplx( g(SumI+5755), g(SumI+5756), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChiFucSuR(i1,i2,i3) = Cmplx( g(SumI+5971), g(SumI+5972), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChiFvcSvL(i1,i2,i3) = Cmplx( g(SumI+6187), g(SumI+6188), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplChiFvcSvR(i1,i2,i3) = Cmplx( g(SumI+6403), g(SumI+6404), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*12
SumI = SumI*2 
cplcChaChiHpmL(i1,i2,i3) = Cmplx( g(SumI+6619), g(SumI+6620), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*12
SumI = SumI*2 
cplcChaChiHpmR(i1,i2,i3) = Cmplx( g(SumI+6667), g(SumI+6668), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplcFdChiSdL(i1,i2,i3) = Cmplx( g(SumI+6715), g(SumI+6716), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplcFdChiSdR(i1,i2,i3) = Cmplx( g(SumI+6931), g(SumI+6932), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplcFeChiSeL(i1,i2,i3) = Cmplx( g(SumI+7147), g(SumI+7148), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplcFeChiSeR(i1,i2,i3) = Cmplx( g(SumI+7363), g(SumI+7364), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplcFuChiSuL(i1,i2,i3) = Cmplx( g(SumI+7579), g(SumI+7580), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplcFuChiSuR(i1,i2,i3) = Cmplx( g(SumI+7795), g(SumI+7796), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplcFvChiSvL(i1,i2,i3) = Cmplx( g(SumI+8011), g(SumI+8012), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*36
SumI = SumI*2 
cplcFvChiSvR(i1,i2,i3) = Cmplx( g(SumI+8227), g(SumI+8228), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplGluFdcSdL(i1,i2) = Cmplx( g(SumI+8443), g(SumI+8444), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplGluFdcSdR(i1,i2) = Cmplx( g(SumI+8479), g(SumI+8480), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFdFdhhL(i1,i2,i3) = Cmplx( g(SumI+8515), g(SumI+8516), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFdFdhhR(i1,i2,i3) = Cmplx( g(SumI+8569), g(SumI+8570), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplcChaFdcSuL(i1,i2,i3) = Cmplx( g(SumI+8623), g(SumI+8624), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplcChaFdcSuR(i1,i2,i3) = Cmplx( g(SumI+8695), g(SumI+8696), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
cplcFuFdcHpmL(i1,i2,i3) = Cmplx( g(SumI+8767), g(SumI+8768), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
cplcFuFdcHpmR(i1,i2,i3) = Cmplx( g(SumI+8803), g(SumI+8804), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFeFehhL(i1,i2,i3) = Cmplx( g(SumI+8839), g(SumI+8840), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFeFehhR(i1,i2,i3) = Cmplx( g(SumI+8893), g(SumI+8894), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplcChaFecSvL(i1,i2,i3) = Cmplx( g(SumI+8947), g(SumI+8948), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplcChaFecSvR(i1,i2,i3) = Cmplx( g(SumI+9019), g(SumI+9020), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
cplcFvFecHpmL(i1,i2,i3) = Cmplx( g(SumI+9091), g(SumI+9092), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
cplcFvFecHpmR(i1,i2,i3) = Cmplx( g(SumI+9127), g(SumI+9128), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplGluFucSuL(i1,i2) = Cmplx( g(SumI+9163), g(SumI+9164), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplGluFucSuR(i1,i2) = Cmplx( g(SumI+9199), g(SumI+9200), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFuFuhhL(i1,i2,i3) = Cmplx( g(SumI+9235), g(SumI+9236), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFuFuhhR(i1,i2,i3) = Cmplx( g(SumI+9289), g(SumI+9290), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
cplcFdFuHpmL(i1,i2,i3) = Cmplx( g(SumI+9343), g(SumI+9344), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
cplcFdFuHpmR(i1,i2,i3) = Cmplx( g(SumI+9379), g(SumI+9380), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFvFvhhL(i1,i2,i3) = Cmplx( g(SumI+9415), g(SumI+9416), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
SumI = (i3-1) + (i2-1)*3 + (i1-1)*9
SumI = SumI*2 
cplcFvFvhhR(i1,i2,i3) = Cmplx( g(SumI+9469), g(SumI+9470), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
cplcFeFvHpmL(i1,i2,i3) = Cmplx( g(SumI+9523), g(SumI+9524), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
SumI = (i3-1) + (i2-1)*2 + (i1-1)*6
SumI = SumI*2 
cplcFeFvHpmR(i1,i2,i3) = Cmplx( g(SumI+9559), g(SumI+9560), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplcFdGluSdL(i1,i2) = Cmplx( g(SumI+9595), g(SumI+9596), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplcFdGluSdR(i1,i2) = Cmplx( g(SumI+9631), g(SumI+9632), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplcFuGluSuL(i1,i2) = Cmplx( g(SumI+9667), g(SumI+9668), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplcFuGluSuR(i1,i2) = Cmplx( g(SumI+9703), g(SumI+9704), dp) 
End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplcChacFuSdL(i1,i2,i3) = Cmplx( g(SumI+9739), g(SumI+9740), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplcChacFuSdR(i1,i2,i3) = Cmplx( g(SumI+9811), g(SumI+9812), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplcChacFvSeL(i1,i2,i3) = Cmplx( g(SumI+9883), g(SumI+9884), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,3
Do i3 = 1,6
SumI = (i3-1) + (i2-1)*6 + (i1-1)*18
SumI = SumI*2 
cplcChacFvSeR(i1,i2,i3) = Cmplx( g(SumI+9955), g(SumI+9956), dp) 
End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
cplcFdFdVGL(i1,i2) = Cmplx( g(SumI+10027), g(SumI+10028), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
cplcFdFdVGR(i1,i2) = Cmplx( g(SumI+10045), g(SumI+10046), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
cplcFuFuVGL(i1,i2) = Cmplx( g(SumI+10063), g(SumI+10064), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
cplcFuFuVGR(i1,i2) = Cmplx( g(SumI+10081), g(SumI+10082), dp) 
End Do 
 End Do 
 
cplGluGluVGL= Cmplx(g(10099),g(10100),dp) 
cplGluGluVGR= Cmplx(g(10101),g(10102),dp) 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
Do i4 = 1,3
SumI = (i4-1) + (i3-1)*3 + (i2-1)*9 + (i1-1)*27
SumI = SumI*2 
cplAhAhAhAh(i1,i2,i3,i4) = Cmplx( g(SumI+10103), g(SumI+10104), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
Do i4 = 1,3
SumI = (i4-1) + (i3-1)*3 + (i2-1)*9 + (i1-1)*27
SumI = SumI*2 
cplAhAhhhhh(i1,i2,i3,i4) = Cmplx( g(SumI+10265), g(SumI+10266), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
Do i4 = 1,2
SumI = (i4-1) + (i3-1)*2 + (i2-1)*4 + (i1-1)*12
SumI = SumI*2 
cplAhAhHpmcHpm(i1,i2,i3,i4) = Cmplx( g(SumI+10427), g(SumI+10428), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
cplAhAhSdcSd(i1,i2,i3,i4) = Cmplx( g(SumI+10499), g(SumI+10500), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
cplAhAhSecSe(i1,i2,i3,i4) = Cmplx( g(SumI+11147), g(SumI+11148), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
cplAhAhSucSu(i1,i2,i3,i4) = Cmplx( g(SumI+11795), g(SumI+11796), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
cplAhAhSvcSv(i1,i2,i3,i4) = Cmplx( g(SumI+12443), g(SumI+12444), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,3
Do i4 = 1,3
SumI = (i4-1) + (i3-1)*3 + (i2-1)*9 + (i1-1)*27
SumI = SumI*2 
cplhhhhhhhh(i1,i2,i3,i4) = Cmplx( g(SumI+13091), g(SumI+13092), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,2
Do i4 = 1,2
SumI = (i4-1) + (i3-1)*2 + (i2-1)*4 + (i1-1)*12
SumI = SumI*2 
cplhhhhHpmcHpm(i1,i2,i3,i4) = Cmplx( g(SumI+13253), g(SumI+13254), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
cplhhhhSdcSd(i1,i2,i3,i4) = Cmplx( g(SumI+13325), g(SumI+13326), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
cplhhhhSecSe(i1,i2,i3,i4) = Cmplx( g(SumI+13973), g(SumI+13974), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
cplhhhhSucSu(i1,i2,i3,i4) = Cmplx( g(SumI+14621), g(SumI+14622), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*108
SumI = SumI*2 
cplhhhhSvcSv(i1,i2,i3,i4) = Cmplx( g(SumI+15269), g(SumI+15270), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,2
Do i3 = 1,2
Do i4 = 1,2
SumI = (i4-1) + (i3-1)*2 + (i2-1)*4 + (i1-1)*8
SumI = SumI*2 
cplHpmHpmcHpmcHpm(i1,i2,i3,i4) = Cmplx( g(SumI+15917), g(SumI+15918), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*12 + (i1-1)*72
SumI = SumI*2 
cplHpmSdcHpmcSd(i1,i2,i3,i4) = Cmplx( g(SumI+15949), g(SumI+15950), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*12 + (i1-1)*72
SumI = SumI*2 
cplHpmSecHpmcSe(i1,i2,i3,i4) = Cmplx( g(SumI+16237), g(SumI+16238), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*12 + (i1-1)*72
SumI = SumI*2 
cplHpmSucHpmcSu(i1,i2,i3,i4) = Cmplx( g(SumI+16525), g(SumI+16526), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,6
Do i3 = 1,2
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*12 + (i1-1)*72
SumI = SumI*2 
cplHpmSvcHpmcSv(i1,i2,i3,i4) = Cmplx( g(SumI+16813), g(SumI+16814), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
cplSdSdcSdcSd(i1,i2,i3,i4) = Cmplx( g(SumI+17101), g(SumI+17102), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
cplSdSecSdcSe(i1,i2,i3,i4) = Cmplx( g(SumI+19693), g(SumI+19694), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
cplSdSucSdcSu(i1,i2,i3,i4) = Cmplx( g(SumI+22285), g(SumI+22286), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
cplSeSecSecSe(i1,i2,i3,i4) = Cmplx( g(SumI+24877), g(SumI+24878), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
cplSeSvcSecSv(i1,i2,i3,i4) = Cmplx( g(SumI+27469), g(SumI+27470), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
cplSuSucSucSu(i1,i2,i3,i4) = Cmplx( g(SumI+30061), g(SumI+30062), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
cplSuSvcSucSv(i1,i2,i3,i4) = Cmplx( g(SumI+32653), g(SumI+32654), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
Do i3 = 1,6
Do i4 = 1,6
SumI = (i4-1) + (i3-1)*6 + (i2-1)*36 + (i1-1)*216
SumI = SumI*2 
cplSvSvcSvcSv(i1,i2,i3,i4) = Cmplx( g(SumI+35245), g(SumI+35246), dp) 
End Do 
 End Do 
 End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplSdcSdVGVG(i1,i2) = Cmplx( g(SumI+37837), g(SumI+37838), dp) 
End Do 
 End Do 
 
Do i1 = 1,6
Do i2 = 1,6
SumI = (i2-1) + (i1-1)*6
SumI = SumI*2 
cplSucSuVGVG(i1,i2) = Cmplx( g(SumI+37909), g(SumI+37910), dp) 
End Do 
 End Do 
 
End Subroutine GToMassesCoups

End Module EffectivePotential_NonUMSSMv4 
 
