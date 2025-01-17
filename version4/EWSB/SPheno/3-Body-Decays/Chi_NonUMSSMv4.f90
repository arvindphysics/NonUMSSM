! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 16:01 on 21.3.2021   
! ----------------------------------------------------------------------  
 
 
Module Chi3Decays_NonUMSSMv4 
 
Use Control 
Use Settings 
Use CouplingsForDecays_NonUMSSMv4 
Use ThreeBodyPhaseSpace 
 
Contains 
 
Subroutine ChiThreeBodyDecay(n_in,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,            & 
& MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,           & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZVR,ZW,ZZ,betaH,g1,g2,g3,gp,             & 
& Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,               & 
& TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,              & 
& mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,vd,vu,vS,gTAh,gThh,gTHpm,gTSd,           & 
& gTSe,gTSu,gTSv,gTVWm,gTVZ,gTVZp,gChiChicChaCha,gChiChiChiChi,gChiChicFdFd,             & 
& gChiChicFeFe,gChiChicFuFu,gChiChicFvFv,gChiChacFdFu,gChiChacFeFv,gChiFdcFdGlu,         & 
& gChiFucFuGlu,epsI,deltaM,CheckRealStates,gT,gPartial,BR)

Implicit None 
 
Real(dp),Intent(in) :: MAh(3),MAh2(3),MCha(2),MCha2(2),MChi(6),MChi2(6),MFd(3),MFd2(3),MFe(3),               & 
& MFe2(3),MFu(3),MFu2(3),MFv(3),MFv2(3),MGlu,MGlu2,Mhh(3),Mhh2(3),MHpm(2),               & 
& MHpm2(2),MSd(6),MSd2(6),MSe(6),MSe2(6),MSu(6),MSu2(6),MSv(6),MSv2(6),MVWm,             & 
& MVWm2,MVZ,MVZ2,MVZp,MVZp2,TW,TWp,v,ZP(2,2),ZZ(3,3),betaH

Complex(dp),Intent(in) :: pG,UM(2,2),UP(2,2),ZA(3,3),ZD(6,6),ZDL(3,3),ZDR(3,3),ZE(6,6),ZEL(3,3),ZER(3,3),       & 
& ZH(3,3),ZN(6,6),ZU(6,6),ZUL(3,3),ZUR(3,3),ZV(6,6),ZVL(3,3),ZVR(3,3),ZW(2,2)

Complex(dp) :: cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplcChaChahhL(2,2,3),cplcChaChahhR(2,2,3),  & 
& cplcChaChaVZL(2,2),cplcChaChaVZpL(2,2),cplcChaChaVZpR(2,2),cplcChaChaVZR(2,2),         & 
& cplcChaChiHpmL(2,6,2),cplcChaChiHpmR(2,6,2),cplcChaChiVWmL(2,6),cplcChaChiVWmR(2,6),   & 
& cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),       & 
& cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),cplcFdFdhhL(3,3,3),cplcFdFdhhR(3,3,3),           & 
& cplcFdFdVZL(3,3),cplcFdFdVZpL(3,3),cplcFdFdVZpR(3,3),cplcFdFdVZR(3,3),cplcFdFuHpmL(3,3,2),& 
& cplcFdFuHpmR(3,3,2),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFdGluSdL(3,6),             & 
& cplcFdGluSdR(3,6),cplcFeChaSvL(3,2,6),cplcFeChaSvR(3,2,6),cplcFeChiSeL(3,6,6),         & 
& cplcFeChiSeR(3,6,6),cplcFeFeAhL(3,3,3),cplcFeFeAhR(3,3,3),cplcFeFehhL(3,3,3),          & 
& cplcFeFehhR(3,3,3),cplcFeFeVZL(3,3),cplcFeFeVZpL(3,3),cplcFeFeVZpR(3,3),               & 
& cplcFeFeVZR(3,3),cplcFeFvHpmL(3,3,2),cplcFeFvHpmR(3,3,2),cplcFeFvVWmL(3,3),            & 
& cplcFeFvVWmR(3,3),cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFuFuAhL(3,3,3),          & 
& cplcFuFuAhR(3,3,3),cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFuFuVZL(3,3),             & 
& cplcFuFuVZpL(3,3),cplcFuFuVZpR(3,3),cplcFuFuVZR(3,3),cplcFuGluSuL(3,6),cplcFuGluSuR(3,6),& 
& cplcFvChiSvL(3,6,6),cplcFvChiSvR(3,6,6),cplcFvFvAhL(3,3,3),cplcFvFvAhR(3,3,3),         & 
& cplcFvFvhhL(3,3,3),cplcFvFvhhR(3,3,3),cplcFvFvVZL(3,3),cplcFvFvVZpL(3,3),              & 
& cplcFvFvVZpR(3,3),cplcFvFvVZR(3,3),cplChaFucSdL(2,3,6),cplChaFucSdR(2,3,6),            & 
& cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),   & 
& cplChiChacVWmL(6,2),cplChiChacVWmR(6,2),cplChiChiAhL(6,6,3),cplChiChiAhR(6,6,3),       & 
& cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiChiVZL(6,6),cplChiChiVZpL(6,6),          & 
& cplChiChiVZpR(6,6),cplChiChiVZR(6,6),cplChiFdcSdL(6,3,6),cplChiFdcSdR(6,3,6),          & 
& cplChiFecSeL(6,3,6),cplChiFecSeR(6,3,6),cplChiFucSuL(6,3,6),cplChiFucSuR(6,3,6),       & 
& cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6),cplGluFdcSdL(3,6),cplGluFdcSdR(3,6),           & 
& cplGluFucSuL(3,6),cplGluFucSuR(3,6)

Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2,vd,vu,vS

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Real(dp),Intent(inout) :: gChiChicChaCha(6,6,2,2),gChiChiChiChi(6,6,6,6),gChiChicFdFd(6,6,3,3),gChiChicFeFe(6,6,3,3),& 
& gChiChicFuFu(6,6,3,3),gChiChicFvFv(6,6,3,3),gChiChacFdFu(6,2,3,3),gChiChacFeFv(6,2,3,3),& 
& gChiFdcFdGlu(6,3,3,1),gChiFucFuGlu(6,3,3,1)

Real(dp),Intent(in) :: gTAh(3),gThh(3),gTHpm(2),gTSd(6),gTSe(6),gTSu(6),gTSv(6),gTVWm,gTVZ,gTVZp

Real(dp) :: gChiChicChaChai(6,2,2),gChiChiChiChii(6,6,6),gChiChicFdFdi(6,3,3),gChiChicFeFei(6,3,3),& 
& gChiChicFuFui(6,3,3),gChiChicFvFvi(6,3,3),gChiChacFdFui(2,3,3),gChiChacFeFvi(2,3,3),   & 
& gChiFdcFdGlui(3,3,1),gChiFucFuGlui(3,3,1)

Real(dp) :: gTAhtemp(3),gThhtemp(3),gTHpmtemp(2),gTSdtemp(6),gTSetemp(6),gTSutemp(6)              & 
& ,gTSvtemp(6),gTVWmtemp,gTVZtemp,gTVZptemp
Integer :: NVs,NVst,NSs,NVVst,NVVss,NVSss,NVSst,NSSss,NSSst
Complex(dp), Allocatable :: IntegralVVst(:,:),IntegralVSss(:,:),IntegralVSst(:,:),IntegralSSss(:,:)               & 
& ,IntegralSSst(:,:)
Real(dp), Allocatable :: IntegralVs(:,:),IntegralVst(:,:),IntegralSs(:,:),IntegralVVss(:,:)
Real(dp), Intent(inout), Optional :: BR(:,:), gPartial(:,:) 
Real(dp), Intent(inout) :: gT(:) 
Integer, Intent(in) :: n_in 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Intent(in) ::  CheckRealStates 
Integer :: i_start, i_end, i_run, n_out, n_length, gt1, gt2, gt3, i1 
Logical :: check 
Iname = Iname +1 
NameOfUnit(Iname) = 'ChiThreeBodyDecay' 
 
Allocate( IntegralVs(25000,9) ) 
Allocate( IntegralVst(25000,12) ) 
Allocate( IntegralSs(500000,10) ) 
Allocate( IntegralVVst(25000,12) ) 
Allocate( IntegralVVss(500000,12) ) 
Allocate( IntegralVSss(500000,12) ) 
Allocate( IntegralVSst(500000,16) ) 
Allocate( IntegralSSss(500000,12) ) 
Allocate( IntegralSSst(500000,16) ) 

 
If (CheckRealStates) Then 
gTAhtemp = 0._dp 
gThhtemp = 0._dp 
gTHpmtemp = 0._dp 
gTSdtemp = 0._dp 
gTSetemp = 0._dp 
gTSutemp = 0._dp 
gTSvtemp = 0._dp 
gTVWmtemp = 0._dp 
gTVZtemp = 0._dp 
gTVZptemp = 0._dp 
Else 
gTAhtemp = gTAh 
gThhtemp = gThh 
gTHpmtemp = gTHpm 
gTSdtemp = gTSd 
gTSetemp = gTSe 
gTSutemp = gTSu 
gTSvtemp = gTSv 
gTVWmtemp = gTVWm 
gTVZtemp = gTVZ 
gTVZptemp = gTVZp 
End If 
 
check=CheckRealStates 

 
If (n_in.Lt.0) Then 
 i_start = 1 
 i_end = 6 
 Else If ( (n_in.Ge.1).And.(n_in.Le. 6) ) Then 
 i_start = n_in 
 i_end = n_in 
Else 
 If (ErrorLevel.Ge.-1) Then 
   Write (ErrCan, *) 'Problem in subroutine'//NameOfUnit(Iname) 
   Write (ErrCan, *) 'Value of n_in out of range, (n_in,6) = ',n_in,6 
 End If 
 
 If (ErrorLevel.Gt.0) Call TerminateProgram 
 
 If (Present(BR)) BR = 0._dp 
 Iname = Iname - 1 
 Return 
End If 
 
Do i_run = i_start, i_end 
 
Call CouplingsFor_Chi_decays_3B(MChi(i_run),i_run,MAh,MAh2,MCha,MCha2,MChi,           & 
& MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,              & 
& MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,              & 
& TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZVR,ZW,ZZ,             & 
& betaH,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu,Td,TYe11,TYe22,              & 
& TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,               & 
& me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,Tep,Tmup,vd,vu,vS,              & 
& cplcChaChaAhL,cplcChaChaAhR,cplcChaChahhL,cplcChaChahhR,cplcChaChaVZL,cplcChaChaVZpL,  & 
& cplcChaChaVZpR,cplcChaChaVZR,cplcChaChiHpmL,cplcChaChiHpmR,cplcChaChiVWmL,             & 
& cplcChaChiVWmR,cplcFdChaSuL,cplcFdChaSuR,cplcFdChiSdL,cplcFdChiSdR,cplcFdFdAhL,        & 
& cplcFdFdAhR,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZpL,cplcFdFdVZpR,             & 
& cplcFdFdVZR,cplcFdFuHpmL,cplcFdFuHpmR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFdGluSdL,          & 
& cplcFdGluSdR,cplcFeChaSvL,cplcFeChaSvR,cplcFeChiSeL,cplcFeChiSeR,cplcFeFeAhL,          & 
& cplcFeFeAhR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZpL,cplcFeFeVZpR,             & 
& cplcFeFeVZR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuChiSuL,          & 
& cplcFuChiSuR,cplcFuFuAhL,cplcFuFuAhR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,              & 
& cplcFuFuVZpL,cplcFuFuVZpR,cplcFuFuVZR,cplcFuGluSuL,cplcFuGluSuR,cplcFvChiSvL,          & 
& cplcFvChiSvR,cplcFvFvAhL,cplcFvFvAhR,cplcFvFvhhL,cplcFvFvhhR,cplcFvFvVZL,              & 
& cplcFvFvVZpL,cplcFvFvVZpR,cplcFvFvVZR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,          & 
& cplChaFvcSeR,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,              & 
& cplChiChiAhL,cplChiChiAhR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZpL,        & 
& cplChiChiVZpR,cplChiChiVZR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,        & 
& cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplGluFdcSdL,cplGluFdcSdR,         & 
& cplGluFucSuL,cplGluFucSuR,deltaM)

IntegralVs = 0._dp 
NVs = 0  
IntegralVst = 0._dp 
NVst = 0  
IntegralSs = 0._dp 
NSs = 0  
IntegralVVst = 0._dp 
NVVst = 0  
IntegralVVss = 0._dp 
NVVss = 0  
IntegralVSss = 0._dp 
NVSss = 0  
IntegralVSst = 0._dp 
NVSst = 0  
IntegralSSss = 0._dp 
NSSss = 0  
IntegralSSst = 0._dp 
NSSst = 0  

 
gChiChicChaChai = 0._dp 
Call ChiToChicChaCha(i_run,MChi,MCha,MVZ,MVZp,MVWm,MHpm,MAh,Mhh,cplcChaChaAhL,        & 
& cplcChaChaAhR,cplcChaChahhL,cplcChaChahhR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,  & 
& cplcChaChaVZpR,cplcChaChiHpmL,cplcChaChiHpmR,cplcChaChiVWmL,cplcChaChiVWmR,            & 
& cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChiChiAhL,              & 
& cplChiChiAhR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        & 
& cplChiChiVZpR,IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,            & 
& IntegralVSst,IntegralVVss,IntegralVVst,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,          & 
& NVVst,gTVZtemp,gTVZptemp,gTVWmtemp,gTHpmtemp,gTAhtemp,gThhtemp,deltaM,epsI,            & 
& check,gChiChicChaChai)

gChiChicChaCha(i_run,:,:,:) = gChiChicChaChai 
gT(i_run) = gT(i_run) + Sum(gChiChicChaChai) 
 
gChiChiChiChii = 0._dp 
Call ChiToChiChiChi(i_run,MChi,MVZ,MVZp,MAh,Mhh,cplChiChiAhL,cplChiChiAhR,            & 
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       & 
& IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,IntegralVSst,             & 
& IntegralVVss,IntegralVVst,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,NVVst,gTVZtemp,        & 
& gTVZptemp,gTAhtemp,gThhtemp,deltaM,epsI,check,gChiChiChiChii)

gChiChiChiChi(i_run,:,:,:) = gChiChiChiChii 
gT(i_run) = gT(i_run) + Sum(gChiChiChiChii) 
 
gChiChicFdFdi = 0._dp 
Call ChiToChicFdFd(i_run,MChi,MFd,MVZ,MVZp,MSd,MAh,Mhh,cplcFdChiSdL,cplcFdChiSdR,     & 
& cplcFdFdAhL,cplcFdFdAhR,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFdFdVZpL,cplcFdFdVZpR,cplChiChiAhL,cplChiChiAhR,cplChiChihhL,cplChiChihhR,         & 
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,       & 
& IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,IntegralVSst,             & 
& IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,gTVZtemp,gTVZptemp,gTSdtemp,        & 
& gTAhtemp,gThhtemp,deltaM,epsI,check,gChiChicFdFdi)

gChiChicFdFd(i_run,:,:,:) = gChiChicFdFdi 
gT(i_run) = gT(i_run) + Sum(gChiChicFdFdi) 
 
gChiChicFeFei = 0._dp 
Call ChiToChicFeFe(i_run,MChi,MFe,MVZ,MVZp,MSe,MAh,Mhh,cplcFeChiSeL,cplcFeChiSeR,     & 
& cplcFeFeAhL,cplcFeFeAhR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,               & 
& cplcFeFeVZpL,cplcFeFeVZpR,cplChiChiAhL,cplChiChiAhR,cplChiChihhL,cplChiChihhR,         & 
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,       & 
& IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,IntegralVSst,             & 
& IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,gTVZtemp,gTVZptemp,gTSetemp,        & 
& gTAhtemp,gThhtemp,deltaM,epsI,check,gChiChicFeFei)

gChiChicFeFe(i_run,:,:,:) = gChiChicFeFei 
gT(i_run) = gT(i_run) + Sum(gChiChicFeFei) 
 
gChiChicFuFui = 0._dp 
Call ChiToChicFuFu(i_run,MChi,MFu,MVZ,MVZp,MSu,MAh,Mhh,cplcFuChiSuL,cplcFuChiSuR,     & 
& cplcFuFuAhL,cplcFuFuAhR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,               & 
& cplcFuFuVZpL,cplcFuFuVZpR,cplChiChiAhL,cplChiChiAhR,cplChiChihhL,cplChiChihhR,         & 
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFucSuL,cplChiFucSuR,       & 
& IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,IntegralVSst,             & 
& IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,gTVZtemp,gTVZptemp,gTSutemp,        & 
& gTAhtemp,gThhtemp,deltaM,epsI,check,gChiChicFuFui)

gChiChicFuFu(i_run,:,:,:) = gChiChicFuFui 
gT(i_run) = gT(i_run) + Sum(gChiChicFuFui) 
 
gChiChicFvFvi = 0._dp 
Call ChiToChicFvFv(i_run,MChi,MFv,MVZ,MVZp,MSv,MAh,Mhh,cplcFvChiSvL,cplcFvChiSvR,     & 
& cplcFvFvAhL,cplcFvFvAhR,cplcFvFvhhL,cplcFvFvhhR,cplcFvFvVZL,cplcFvFvVZR,               & 
& cplcFvFvVZpL,cplcFvFvVZpR,cplChiChiAhL,cplChiChiAhR,cplChiChihhL,cplChiChihhR,         & 
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFvcSvL,cplChiFvcSvR,       & 
& IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,IntegralVSst,             & 
& IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,gTVZtemp,gTVZptemp,gTSvtemp,        & 
& gTAhtemp,gThhtemp,deltaM,epsI,check,gChiChicFvFvi)

gChiChicFvFv(i_run,:,:,:) = gChiChicFvFvi 
gT(i_run) = gT(i_run) + Sum(gChiChicFvFvi) 
 
gChiChacFdFui = 0._dp 
Call ChiToChacFdFu(i_run,MCha,MFd,MFu,MVWm,MHpm,MSu,MSd,MChi,cplcFdChaSuL,            & 
& cplcFdChaSuR,cplcFdChiSdL,cplcFdChiSdR,cplcFdFuHpmL,cplcFdFuHpmR,cplcFdFuVWmL,         & 
& cplcFdFuVWmR,cplChaFucSdL,cplChaFucSdR,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,   & 
& cplChiChacVWmR,cplChiFucSuL,cplChiFucSuR,IntegralSs,IntegralSSss,IntegralSSst,         & 
& IntegralVs,IntegralVSss,IntegralVSst,IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,           & 
& NVSst,NVVss,gTVWmtemp,gTHpmtemp,gTSutemp,gTSdtemp,deltaM,epsI,check,gChiChacFdFui)

gChiChacFdFu(i_run,:,:,:) = gChiChacFdFui 
gT(i_run) = gT(i_run) + 2._dp*Sum(gChiChacFdFui) 
 
gChiChacFeFvi = 0._dp 
Call ChiToChacFeFv(i_run,MCha,MFe,MFv,MVWm,MHpm,MSv,MSe,MChi,cplcFeChaSvL,            & 
& cplcFeChaSvR,cplcFeChiSeL,cplcFeChiSeR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,         & 
& cplcFeFvVWmR,cplChaFvcSeL,cplChaFvcSeR,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,   & 
& cplChiChacVWmR,cplChiFvcSvL,cplChiFvcSvR,IntegralSs,IntegralSSss,IntegralSSst,         & 
& IntegralVs,IntegralVSss,IntegralVSst,IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,           & 
& NVSst,NVVss,gTVWmtemp,gTHpmtemp,gTSvtemp,gTSetemp,deltaM,epsI,check,gChiChacFeFvi)

gChiChacFeFv(i_run,:,:,:) = gChiChacFeFvi 
gT(i_run) = gT(i_run) + 2._dp*Sum(gChiChacFeFvi) 
 
gChiFdcFdGlui = 0._dp 
Call ChiToFdcFdGlu(i_run,MFd,MGlu,MSd,MChi,cplcFdChiSdL,cplcFdChiSdR,cplcFdGluSdL,    & 
& cplcFdGluSdR,cplChiFdcSdL,cplChiFdcSdR,cplGluFdcSdL,cplGluFdcSdR,IntegralSs,           & 
& IntegralSSss,IntegralSSst,NSs,NSSss,NSSst,gTSdtemp,deltaM,epsI,check,gChiFdcFdGlui)

gChiFdcFdGlu(i_run,:,:,:) = gChiFdcFdGlui 
gT(i_run) = gT(i_run) + Sum(gChiFdcFdGlui) 
 
gChiFucFuGlui = 0._dp 
Call ChiToFucFuGlu(i_run,MFu,MGlu,MSu,MChi,cplcFuChiSuL,cplcFuChiSuR,cplcFuGluSuL,    & 
& cplcFuGluSuR,cplChiFucSuL,cplChiFucSuR,cplGluFucSuL,cplGluFucSuR,IntegralSs,           & 
& IntegralSSss,IntegralSSst,NSs,NSSss,NSSst,gTSutemp,deltaM,epsI,check,gChiFucFuGlui)

gChiFucFuGlu(i_run,:,:,:) = gChiFucFuGlui 
gT(i_run) = gT(i_run) + Sum(gChiFucFuGlui) 
 
End Do 
 

If (Present(gPartial)) Then
Do i1 = i_start, i_end 
 
n_length=1
Do gt1=1,6
  Do gt2=1,2
    Do gt3=1,2
gPartial(i1,n_length)= gChiChicChaCha(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
Do gt1=1,6
  Do gt2=gt1,6
    Do gt3=gt2,6
gPartial(i1,n_length)= gChiChiChiChi(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
Do gt1=1,6
  Do gt2=1,3
    Do gt3=1,3
gPartial(i1,n_length)= gChiChicFdFd(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
Do gt1=1,6
  Do gt2=1,3
    Do gt3=1,3
gPartial(i1,n_length)= gChiChicFeFe(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
Do gt1=1,6
  Do gt2=1,3
    Do gt3=1,3
gPartial(i1,n_length)= gChiChicFuFu(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
Do gt1=1,6
  Do gt2=1,3
    Do gt3=1,3
gPartial(i1,n_length)= gChiChicFvFv(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
gPartial(i1,n_length)= 2._dp*gChiChacFdFu(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
gPartial(i1,n_length)= 2._dp*gChiChacFeFv(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,1
gPartial(i1,n_length)= gChiFdcFdGlu(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,1
gPartial(i1,n_length)= gChiFucFuGlu(i1,gt1,gt2,gt3)
n_length=n_length+1
     End Do 
  End Do 
End Do 
If (Present(BR).And.(gT(i1).Gt.0._dp)) Then 
BR(i1,:)=gPartial(i1,:)/gT(i1)
Else If (Present(BR)) Then
BR(i1,:)=0._dp
End If
 
End Do 
End if 
Deallocate( IntegralVs ) 
Deallocate( IntegralVst ) 
Deallocate( IntegralSs ) 
Deallocate( IntegralVVst ) 
Deallocate( IntegralVVss ) 
Deallocate( IntegralVSss ) 
Deallocate( IntegralVSst ) 
Deallocate( IntegralSSss ) 
Deallocate( IntegralSSst ) 
Iname = Iname - 1 
 
End Subroutine ChiThreeBodyDecay
 
 
Subroutine ChiToChicChaCha(iIN,MChi,MCha,MVZ,MVZp,MVWm,MHpm,MAh,Mhh,cplcChaChaAhL,    & 
& cplcChaChaAhR,cplcChaChahhL,cplcChaChahhR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,  & 
& cplcChaChaVZpR,cplcChaChiHpmL,cplcChaChiHpmR,cplcChaChiVWmL,cplcChaChiVWmR,            & 
& cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChiChiAhL,              & 
& cplChiChiAhR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        & 
& cplChiChiVZpR,IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,            & 
& IntegralVSst,IntegralVVss,IntegralVVst,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,          & 
& NVVst,gTVZ,gTVZp,gTVWm,gTHpm,gTAh,gThh,deltaM,epsI,check,g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MChi(6),MCha(2),MVZ,MVZp,MVWm,MHpm(2),MAh(3),Mhh(3)

Complex(dp),Intent(in) :: cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplcChaChahhL(2,2,3),cplcChaChahhR(2,2,3),  & 
& cplcChaChaVZL(2,2),cplcChaChaVZR(2,2),cplcChaChaVZpL(2,2),cplcChaChaVZpR(2,2),         & 
& cplcChaChiHpmL(2,6,2),cplcChaChiHpmR(2,6,2),cplcChaChiVWmL(2,6),cplcChaChiVWmR(2,6),   & 
& cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),cplChiChacVWmL(6,2),cplChiChacVWmR(6,2),   & 
& cplChiChiAhL(6,6,3),cplChiChiAhR(6,6,3),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),       & 
& cplChiChiVZL(6,6),cplChiChiVZR(6,6),cplChiChiVZpL(6,6),cplChiChiVZpR(6,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10),IntegralVs(25000,9),IntegralVVss(500000,12)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16),IntegralVSss(500000,12),              & 
& IntegralVSst(500000,16),IntegralVVst(25000,12)

Real(dp),Intent(inout) :: gTVZ,gTVZp,gTVWm,gTHpm(2),gTAh(3),gThh(3)

Integer, Intent(inout) :: NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,NVVst
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 196 
Allocate( gSum(6,2,2, Isum) ) 
Allocate( Contribution(6,2,2, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1, iIN-1
      Do gt2=1,2
        Do gt3=1,2
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MCha(gt3))+Abs(MCha(gt2))+Abs(MChi(gt1)))) Then 
!-------------- 
!  VZ 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZ 
Boson2(2) =gTVZ 
 
Boson4(1) = MVZ 
Boson4(2) =gTVZ 
Boson4(3) = MVZ 
Boson4(4) =gTVZ 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup(2) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZR(iIN,gt1)) 
coup(4) = Conjg(cplcChaChaVZL(gt2,gt3)) 
coup(3) = Conjg(cplcChaChaVZR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZ" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ'



!-------------- 
!  VZp 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZp 
Boson2(2) =gTVZp 
 
Boson4(1) = MVZp 
Boson4(2) =gTVZp 
Boson4(3) = MVZp 
Boson4(4) =gTVZp 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup(2) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZpR(iIN,gt1)) 
coup(4) = Conjg(cplcChaChaVZpL(gt2,gt3)) 
coup(3) = Conjg(cplcChaChaVZpR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp'



!-------------- 
!  conj[VWm] 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVWm 
Boson2(2) =gTVWm 
 
Boson4(1) = MVWm 
Boson4(2) =gTVWm 
Boson4(3) = MVWm 
Boson4(4) =gTVWm 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MCha(gt3) 
mass(3) = -MCha(gt2) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplChiChacVWmL(iIN,gt3)) 
coup(1) = Conjg(cplChiChacVWmR(iIN,gt3)) 
coup(4) = Conjg(cplcChaChiVWmL(gt2,gt1)) 
coup(3) = Conjg(cplcChaChiVWmR(gt2,gt1))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[VWm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm]'



!-------------- 
!  VWm 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVWm 
Boson2(2) =gTVWm 
 
Boson4(1) = MVWm 
Boson4(2) =gTVWm 
Boson4(3) = MVWm 
Boson4(4) =gTVWm 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MCha(gt2) 
mass(3) = -MChi(gt1) 
mass(4) = MCha(gt3) 
 
coup(2) = Conjg(cplcChaChiVWmL(gt2,iIN)) 
coup(1) = Conjg(cplcChaChiVWmR(gt2,iIN)) 
coup(4) = Conjg(cplChiChacVWmL(gt1,gt3)) 
coup(3) = Conjg(cplChiChacVWmR(gt1,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VWm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VWm'



!-------------- 
!  conj[Hpm] 
!-------------- 
Do i1=1,2
Isum = Isum + 1 
Boson2(1) = MHpm(i1) 
Boson2(2) =gTHpm(i1) 
 
Boson4(1) = MHpm(i1) 
Boson4(2) =gTHpm(i1) 
Boson4(3) = MHpm(i1) 
Boson4(4) =gTHpm(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MCha(gt3) 
mass(3) = -MCha(gt2) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplChiChacHpmL(iIN,gt3,i1)) 
coup(1) = Conjg(cplChiChacHpmR(iIN,gt3,i1)) 
coup(4) = Conjg(cplcChaChiHpmL(gt2,gt1,i1)) 
coup(3) = Conjg(cplcChaChiHpmR(gt2,gt1,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm]'
      End Do 



!-------------- 
!  Hpm 
!-------------- 
Do i1=1,2
Isum = Isum + 1 
Boson2(1) = MHpm(i1) 
Boson2(2) =gTHpm(i1) 
 
Boson4(1) = MHpm(i1) 
Boson4(2) =gTHpm(i1) 
Boson4(3) = MHpm(i1) 
Boson4(4) =gTHpm(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MCha(gt2) 
mass(3) = -MChi(gt1) 
mass(4) = MCha(gt3) 
 
coup(2) = Conjg(cplcChaChiHpmL(gt2,iIN,i1)) 
coup(1) = Conjg(cplcChaChiHpmR(gt2,iIN,i1)) 
coup(4) = Conjg(cplChiChacHpmL(gt1,gt3,i1)) 
coup(3) = Conjg(cplChiChacHpmR(gt1,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: Hpm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Hpm'
      End Do 



!-------------- 
!  Ah 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = MAh(i1) 
Boson2(2) =gTAh(i1) 
 
Boson4(1) = MAh(i1) 
Boson4(2) =gTAh(i1) 
Boson4(3) = MAh(i1) 
Boson4(4) =gTAh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup(2) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChiAhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcChaChaAhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcChaChaAhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah'
      End Do 



!-------------- 
!  hh 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = Mhh(i1) 
Boson2(2) =gThh(i1) 
 
Boson4(1) = Mhh(i1) 
Boson4(2) =gThh(i1) 
Boson4(3) = Mhh(i1) 
Boson4(4) =gThh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup(2) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChihhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcChaChahhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcChaChahhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='hh'
      End Do 



!-------------- 
!  VZ, VZp 
!-------------- 
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MVZp 
Boson4(4) = gTVZp 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplcChaChaVZL(gt2,gt3) 
coup2(6) = cplcChaChaVZR(gt2,gt3) 
coup2(7) = Conjg(cplcChaChaVZpL(gt3,gt2)) 
coup2(8) = Conjg(cplcChaChaVZpR(gt3,gt2)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = 2._dp*resR 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZ,VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,VZp'



!-------------- 
!  VZ, conj[VWm] 
!-------------- 
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MVWm 
Boson4(4) = gTVWm 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplChiChacVWmL(iIN,gt3) 
coup2(3) = cplChiChacVWmR(iIN,gt3)  
coup2(5) = cplcChaChaVZL(gt2,gt3) 
coup2(6) = cplcChaChaVZR(gt2,gt3) 
coup2(8) = cplcChaChiVWmL(gt2,gt1) 
coup2(7) = cplcChaChiVWmR(gt2,gt1) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZ,conj[VWm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,conj[VWm]'



!-------------- 
!  VZ, VWm 
!-------------- 
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MVWm 
Boson4(4) = gTVWm 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplcChaChiVWmL(gt2,iIN) 
coup2(3) = cplcChaChiVWmR(gt2,iIN)  
coup2(5) = cplcChaChaVZL(gt2,gt3) 
coup2(6) = cplcChaChaVZR(gt2,gt3) 
coup2(8) = cplChiChacVWmL(gt1,gt3) 
coup2(7) = cplChiChacVWmR(gt1,gt3) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZ,VWm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,VWm'



!-------------- 
!  VZ, conj[Hpm] 
!-------------- 
  Do i2=1,2
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplChiChacHpmL(iIN,gt3,i2) 
coup2(3) = cplChiChacHpmR(iIN,gt3,i2)  
coup2(5) = cplcChaChaVZL(gt2,gt3) 
coup2(6) = cplcChaChaVZR(gt2,gt3) 
coup2(8) = cplcChaChiHpmL(gt2,gt1,i2) 
coup2(7) = cplcChaChiHpmR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZ,conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,conj[Hpm]'
      End Do 



!-------------- 
!  VZ, Hpm 
!-------------- 
  Do i2=1,2
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplcChaChiHpmL(gt2,iIN,i2) 
coup2(3) = cplcChaChiHpmR(gt2,iIN,i2)  
coup2(5) = cplcChaChaVZL(gt2,gt3) 
coup2(6) = cplcChaChaVZR(gt2,gt3) 
coup2(8) = cplChiChacHpmL(gt1,gt3,i2) 
coup2(7) = cplChiChacHpmR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZ,Hpm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Hpm'
      End Do 



!-------------- 
!  VZ, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcChaChaVZL(gt2,gt3) 
coup2(6) = cplcChaChaVZR(gt2,gt3) 
coup2(8) = Conjg(cplcChaChaAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChaAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZ,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Ah'
      End Do 



!-------------- 
!  VZ, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcChaChaVZL(gt2,gt3) 
coup2(6) = cplcChaChaVZR(gt2,gt3) 
coup2(8) = Conjg(cplcChaChahhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChahhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZ,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,hh'
      End Do 



!-------------- 
!  VZp, conj[VWm] 
!-------------- 
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MVWm 
Boson4(4) = gTVWm 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplChiChacVWmL(iIN,gt3) 
coup2(3) = cplChiChacVWmR(iIN,gt3)  
coup2(5) = cplcChaChaVZpL(gt2,gt3) 
coup2(6) = cplcChaChaVZpR(gt2,gt3) 
coup2(8) = cplcChaChiVWmL(gt2,gt1) 
coup2(7) = cplcChaChiVWmR(gt2,gt1) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZp,conj[VWm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,conj[VWm]'



!-------------- 
!  VZp, VWm 
!-------------- 
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MVWm 
Boson4(4) = gTVWm 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplcChaChiVWmL(gt2,iIN) 
coup2(3) = cplcChaChiVWmR(gt2,iIN)  
coup2(5) = cplcChaChaVZpL(gt2,gt3) 
coup2(6) = cplcChaChaVZpR(gt2,gt3) 
coup2(8) = cplChiChacVWmL(gt1,gt3) 
coup2(7) = cplChiChacVWmR(gt1,gt3) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZp,VWm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,VWm'



!-------------- 
!  VZp, conj[Hpm] 
!-------------- 
  Do i2=1,2
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplChiChacHpmL(iIN,gt3,i2) 
coup2(3) = cplChiChacHpmR(iIN,gt3,i2)  
coup2(5) = cplcChaChaVZpL(gt2,gt3) 
coup2(6) = cplcChaChaVZpR(gt2,gt3) 
coup2(8) = cplcChaChiHpmL(gt2,gt1,i2) 
coup2(7) = cplcChaChiHpmR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZp,conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,conj[Hpm]'
      End Do 



!-------------- 
!  VZp, Hpm 
!-------------- 
  Do i2=1,2
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplcChaChiHpmL(gt2,iIN,i2) 
coup2(3) = cplcChaChiHpmR(gt2,iIN,i2)  
coup2(5) = cplcChaChaVZpL(gt2,gt3) 
coup2(6) = cplcChaChaVZpR(gt2,gt3) 
coup2(8) = cplChiChacHpmL(gt1,gt3,i2) 
coup2(7) = cplChiChacHpmR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZp,Hpm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Hpm'
      End Do 



!-------------- 
!  VZp, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcChaChaVZpL(gt2,gt3) 
coup2(6) = cplcChaChaVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcChaChaAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChaAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZp,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Ah'
      End Do 



!-------------- 
!  VZp, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcChaChaVZpL(gt2,gt3) 
coup2(6) = cplcChaChaVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcChaChahhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChahhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VZp,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,hh'
      End Do 



!-------------- 
!  conj[VWm], VWm 
!-------------- 
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MVWm 
Boson4(4) = gTVWm 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt2) 
mass(4) = MCha(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChacVWmL(iIN,gt3) 
coup2(2) = cplChiChacVWmR(iIN,gt3) 
coup2(4) = cplcChaChiVWmL(gt2,iIN) 
coup2(3) = cplcChaChiVWmR(gt2,iIN)  
coup2(5) = cplcChaChiVWmL(gt2,gt1) 
coup2(6) = cplcChaChiVWmR(gt2,gt1) 
coup2(8) = cplChiChacVWmL(gt1,gt3) 
coup2(7) = cplChiChacVWmR(gt1,gt3) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[VWm],VWm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],VWm'



!-------------- 
!  conj[VWm], conj[Hpm] 
!-------------- 
  Do i2=1,2
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt3) 
mass(3) = -MCha(gt2) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplChiChacVWmL(iIN,gt3) 
coup2(2) = cplChiChacVWmR(iIN,gt3) 
coup2(4) = cplChiChacHpmL(iIN,gt3,i2) 
coup2(3) = cplChiChacHpmR(iIN,gt3,i2)  
coup2(5) = cplcChaChiVWmL(gt2,gt1) 
coup2(6) = cplcChaChiVWmR(gt2,gt1) 
coup2(8) = cplcChaChiHpmL(gt2,gt1,i2) 
coup2(7) = cplcChaChiHpmR(gt2,gt1,i2) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[VWm],conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],conj[Hpm]'
      End Do 



!-------------- 
!  conj[VWm], Hpm 
!-------------- 
  Do i2=1,2
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt2) 
mass(4) = MCha(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChacVWmL(iIN,gt3) 
coup2(2) = cplChiChacVWmR(iIN,gt3) 
coup2(4) = cplcChaChiHpmL(gt2,iIN,i2) 
coup2(3) = cplcChaChiHpmR(gt2,iIN,i2)  
coup2(5) = cplcChaChiVWmL(gt2,gt1) 
coup2(6) = cplcChaChiVWmR(gt2,gt1) 
coup2(8) = cplChiChacHpmL(gt1,gt3,i2) 
coup2(7) = cplChiChacHpmR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[VWm],Hpm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],Hpm'
      End Do 



!-------------- 
!  conj[VWm], Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MCha(gt3) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChacVWmL(iIN,gt3) 
coup2(2) = cplChiChacVWmR(iIN,gt3) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcChaChiVWmL(gt2,gt1) 
coup2(6) = cplcChaChiVWmR(gt2,gt1) 
coup2(8) = Conjg(cplcChaChaAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChaAhR(gt3,gt2,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[VWm],Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],Ah'
      End Do 



!-------------- 
!  conj[VWm], hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MCha(gt3) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChacVWmL(iIN,gt3) 
coup2(2) = cplChiChacVWmR(iIN,gt3) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcChaChiVWmL(gt2,gt1) 
coup2(6) = cplcChaChiVWmR(gt2,gt1) 
coup2(8) = Conjg(cplcChaChahhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChahhR(gt3,gt2,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[VWm],hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],hh'
      End Do 



!-------------- 
!  VWm, conj[Hpm] 
!-------------- 
  Do i2=1,2
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt3) 
mass(4) = MCha(gt2) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplcChaChiVWmL(gt2,iIN) 
coup2(2) = cplcChaChiVWmR(gt2,iIN) 
coup2(4) = cplChiChacHpmL(iIN,gt3,i2) 
coup2(3) = cplChiChacHpmR(iIN,gt3,i2)  
coup2(5) = cplChiChacVWmL(gt1,gt3) 
coup2(6) = cplChiChacVWmR(gt1,gt3) 
coup2(8) = cplcChaChiHpmL(gt2,gt1,i2) 
coup2(7) = cplcChaChiHpmR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VWm,conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VWm,conj[Hpm]'
      End Do 



!-------------- 
!  VWm, Hpm 
!-------------- 
  Do i2=1,2
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt2) 
mass(3) = -MChi(gt1) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplcChaChiVWmL(gt2,iIN) 
coup2(2) = cplcChaChiVWmR(gt2,iIN) 
coup2(4) = cplcChaChiHpmL(gt2,iIN,i2) 
coup2(3) = cplcChaChiHpmR(gt2,iIN,i2)  
coup2(5) = cplChiChacVWmL(gt1,gt3) 
coup2(6) = cplChiChacVWmR(gt1,gt3) 
coup2(8) = cplChiChacHpmL(gt1,gt3,i2) 
coup2(7) = cplChiChacHpmR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VWm,Hpm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VWm,Hpm'
      End Do 



!-------------- 
!  VWm, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MCha(gt2) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplcChaChiVWmL(gt2,iIN) 
coup2(2) = cplcChaChiVWmR(gt2,iIN) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChacVWmL(gt1,gt3) 
coup2(6) = cplChiChacVWmR(gt1,gt3) 
coup2(8) = Conjg(cplcChaChaAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChaAhR(gt3,gt2,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VWm,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VWm,Ah'
      End Do 



!-------------- 
!  VWm, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MCha(gt2) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplcChaChiVWmL(gt2,iIN) 
coup2(2) = cplcChaChiVWmR(gt2,iIN) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChacVWmL(gt1,gt3) 
coup2(6) = cplChiChacVWmR(gt1,gt3) 
coup2(8) = Conjg(cplcChaChahhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChahhR(gt3,gt2,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: VWm,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VWm,hh'
      End Do 



!-------------- 
!  conj[Hpm], conj[Hpm] 
!-------------- 
Do i1=1,1
  Do i2=i1+1,2
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt3) 
mass(3) = -MCha(gt2) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplChiChacHpmL(iIN,gt3,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt3,i1) 
coup2(4) = cplChiChacHpmL(iIN,gt3,i2) 
coup2(3) = cplChiChacHpmR(iIN,gt3,i2)  
coup2(5) = cplcChaChiHpmL(gt2,gt1,i1) 
coup2(6) = cplcChaChiHpmR(gt2,gt1,i1) 
coup2(8) = cplcChaChiHpmL(gt2,gt1,i2) 
coup2(7) = cplcChaChiHpmR(gt2,gt1,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[Hpm],conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],conj[Hpm]'
        End Do 
      End Do 



!-------------- 
!  conj[Hpm], Hpm 
!-------------- 
Do i1=1,2
  Do i2=1,2
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt2) 
mass(4) = MCha(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChacHpmL(iIN,gt3,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt3,i1) 
coup2(4) = cplcChaChiHpmL(gt2,iIN,i2) 
coup2(3) = cplcChaChiHpmR(gt2,iIN,i2)  
coup2(5) = cplcChaChiHpmL(gt2,gt1,i1) 
coup2(6) = cplcChaChiHpmR(gt2,gt1,i1) 
coup2(8) = cplChiChacHpmL(gt1,gt3,i2) 
coup2(7) = cplChiChacHpmR(gt1,gt3,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[Hpm],Hpm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],Hpm'
        End Do 
      End Do 



!-------------- 
!  conj[Hpm], Ah 
!-------------- 
Do i1=1,2
  Do i2=1,3
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MCha(gt3) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChacHpmL(iIN,gt3,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcChaChiHpmL(gt2,gt1,i1) 
coup2(6) = cplcChaChiHpmR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcChaChaAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChaAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[Hpm],Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],Ah'
        End Do 
      End Do 



!-------------- 
!  conj[Hpm], hh 
!-------------- 
Do i1=1,2
  Do i2=1,3
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MCha(gt3) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplChiChacHpmL(iIN,gt3,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcChaChiHpmL(gt2,gt1,i1) 
coup2(6) = cplcChaChiHpmR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcChaChahhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChahhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: conj[Hpm],hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],hh'
        End Do 
      End Do 



!-------------- 
!  Hpm, Hpm 
!-------------- 
Do i1=1,1
  Do i2=i1+1,2
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt2) 
mass(3) = -MChi(gt1) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplcChaChiHpmL(gt2,iIN,i1) 
coup2(2) = cplcChaChiHpmR(gt2,iIN,i1) 
coup2(4) = cplcChaChiHpmL(gt2,iIN,i2) 
coup2(3) = cplcChaChiHpmR(gt2,iIN,i2)  
coup2(5) = cplChiChacHpmL(gt1,gt3,i1) 
coup2(6) = cplChiChacHpmR(gt1,gt3,i1) 
coup2(8) = cplChiChacHpmL(gt1,gt3,i2) 
coup2(7) = cplChiChacHpmR(gt1,gt3,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: Hpm,Hpm" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Hpm,Hpm'
        End Do 
      End Do 



!-------------- 
!  Hpm, Ah 
!-------------- 
Do i1=1,2
  Do i2=1,3
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MCha(gt2) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplcChaChiHpmL(gt2,iIN,i1) 
coup2(2) = cplcChaChiHpmR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChacHpmL(gt1,gt3,i1) 
coup2(6) = cplChiChacHpmR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcChaChaAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChaAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: Hpm,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Hpm,Ah'
        End Do 
      End Do 



!-------------- 
!  Hpm, hh 
!-------------- 
Do i1=1,2
  Do i2=1,3
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MCha(gt2) 
mass(3) = -MCha(gt2) 
 
coup2(1) = cplcChaChiHpmL(gt2,iIN,i1) 
coup2(2) = cplcChaChiHpmR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChacHpmL(gt1,gt3,i1) 
coup2(6) = cplChiChacHpmR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcChaChahhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChahhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: Hpm,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Hpm,hh'
        End Do 
      End Do 



!-------------- 
!  Ah, Ah 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcChaChaAhL(gt2,gt3,i1) 
coup2(6) = cplcChaChaAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcChaChaAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChaAhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: Ah,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,Ah'
        End Do 
      End Do 



!-------------- 
!  Ah, hh 
!-------------- 
Do i1=1,3
  Do i2=1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcChaChaAhL(gt2,gt3,i1) 
coup2(6) = cplcChaChaAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcChaChahhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChahhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: Ah,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,hh'
        End Do 
      End Do 



!-------------- 
!  hh, hh 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = Mhh(i1) 
Boson4(2) = gThh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MCha(gt2) 
mass(4) = MCha(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcChaChahhL(gt2,gt3,i1) 
coup2(6) = cplcChaChahhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcChaChahhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcChaChahhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cCha Cha Propagator: hh,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='hh,hh'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,gt3,:)= 0._dp  
End If 
       End Do 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1, iIN-1
      Do gt2=1,2
        Do gt3=1,2
g(gt1,gt2,gt3)=Sum(gSum(gt1,gt2,gt3,1:196))
If (g(gt1,gt2,gt3).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,gt3)=0._dp
End If
       End Do 
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToChicChaCha 
 
 
Subroutine ChiToChiChiChi(iIN,MChi,MVZ,MVZp,MAh,Mhh,cplChiChiAhL,cplChiChiAhR,        & 
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       & 
& IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,IntegralVSst,             & 
& IntegralVVss,IntegralVVst,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,NVVst,gTVZ,            & 
& gTVZp,gTAh,gThh,deltaM,epsI,check,g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MChi(6),MVZ,MVZp,MAh(3),Mhh(3)

Complex(dp),Intent(in) :: cplChiChiAhL(6,6,3),cplChiChiAhR(6,6,3),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),      & 
& cplChiChiVZL(6,6),cplChiChiVZR(6,6),cplChiChiVZpL(6,6),cplChiChiVZpR(6,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10),IntegralVs(25000,9),IntegralVVss(500000,12)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16),IntegralVSss(500000,12),              & 
& IntegralVSst(500000,16),IntegralVVst(25000,12)

Real(dp),Intent(inout) :: gTVZ,gTVZp,gTAh(3),gThh(3)

Integer, Intent(inout) :: NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,NVVst
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 64 
Allocate( gSum(6,6,6, Isum) ) 
Allocate( Contribution(6,6,6, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1, iIN-1
      Do gt2=gt1, iIN-1
        Do gt3=gt2, iIN-1
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MChi(gt3))+Abs(MChi(gt2))+Abs(MChi(gt1)))) Then 
!-------------- 
!  VZ 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZ 
Boson2(2) =gTVZ 
 
Boson4(1) = MVZ 
Boson4(2) =gTVZ 
Boson4(3) = MVZ 
Boson4(4) =gTVZ 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup(2) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZR(iIN,gt1)) 
coup(4) = Conjg(cplChiChiVZL(gt2,gt3)) 
coup(3) = Conjg(cplChiChiVZR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
If (gt1.Eq.gt2) Then 
resR=resR/2._dp 
End If
resR= 1*resR ! color factor 
resS = resS + resR 
 
 mass(2) = MChi(gt2) 
mass(3) = -MChi(gt1) 
mass(4) = MChi(gt3) 
 
coup(2) = Conjg(cplChiChiVZL(iIN,gt2)) 
coup(1) = Conjg(cplChiChiVZR(iIN,gt2)) 
coup(4) = Conjg(cplChiChiVZL(gt1,gt3)) 
coup(3) = Conjg(cplChiChiVZR(gt1,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
If (gt1.Eq.gt2) Then 
resR=resR/2._dp 
End If
resR= 1*resR ! color factor 
resS = resS + resR 
 
 mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZR(iIN,gt1))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(7) = Conjg(cplChiChiVZL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZR(gt2,gt3)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = -2._dp*resR 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZR(iIN,gt1))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(7) = Conjg(cplChiChiVZL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZR(gt2,gt3)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = -2._dp*resR 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt3) 
coup2(2) = cplChiChiVZR(iIN,gt3) 
coup2(3) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZR(iIN,gt1))  
coup2(5) = cplChiChiVZL(gt1,gt2) 
coup2(6) = cplChiChiVZR(gt1,gt2) 
coup2(7) = Conjg(cplChiChiVZL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt3) 
coup2(2) = cplChiChiVZR(iIN,gt3) 
coup2(3) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZR(iIN,gt1))  
coup2(5) = cplChiChiVZL(gt1,gt2) 
coup2(6) = cplChiChiVZR(gt1,gt2) 
coup2(7) = Conjg(cplChiChiVZL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt2) 
coup2(2) = cplChiChiVZR(iIN,gt2) 
coup2(3) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZR(iIN,gt1))  
coup2(5) = cplChiChiVZL(gt1,gt3) 
coup2(6) = cplChiChiVZR(gt1,gt3) 
coup2(7) = Conjg(cplChiChiVZL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt2) 
coup2(2) = cplChiChiVZR(iIN,gt2) 
coup2(3) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZR(iIN,gt1))  
coup2(5) = cplChiChiVZL(gt1,gt3) 
coup2(6) = cplChiChiVZR(gt1,gt3) 
coup2(7) = Conjg(cplChiChiVZL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: VZ" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ'



!-------------- 
!  VZp 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZp 
Boson2(2) =gTVZp 
 
Boson4(1) = MVZp 
Boson4(2) =gTVZp 
Boson4(3) = MVZp 
Boson4(4) =gTVZp 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup(2) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZpR(iIN,gt1)) 
coup(4) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup(3) = Conjg(cplChiChiVZpR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
If (gt1.Eq.gt2) Then 
resR=resR/2._dp 
End If
resR= 1*resR ! color factor 
resS = resS + resR 
 
 mass(2) = MChi(gt2) 
mass(3) = -MChi(gt1) 
mass(4) = MChi(gt3) 
 
coup(2) = Conjg(cplChiChiVZpL(iIN,gt2)) 
coup(1) = Conjg(cplChiChiVZpR(iIN,gt2)) 
coup(4) = Conjg(cplChiChiVZpL(gt1,gt3)) 
coup(3) = Conjg(cplChiChiVZpR(gt1,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
If (gt1.Eq.gt2) Then 
resR=resR/2._dp 
End If
resR= 1*resR ! color factor 
resS = resS + resR 
 
 mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt3)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = -2._dp*resR 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt3)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = -2._dp*resR 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt3) 
coup2(2) = cplChiChiVZpR(iIN,gt3) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplChiChiVZpL(gt1,gt2) 
coup2(6) = cplChiChiVZpR(gt1,gt2) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt3) 
coup2(2) = cplChiChiVZpR(iIN,gt3) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplChiChiVZpL(gt1,gt2) 
coup2(6) = cplChiChiVZpR(gt1,gt2) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt2) 
coup2(2) = cplChiChiVZpR(iIN,gt2) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplChiChiVZpL(gt1,gt3) 
coup2(6) = cplChiChiVZpR(gt1,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt2) 
coup2(2) = cplChiChiVZpR(iIN,gt2) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplChiChiVZpL(gt1,gt3) 
coup2(6) = cplChiChiVZpR(gt1,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp'



!-------------- 
!  Ah 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = MAh(i1) 
Boson2(2) =gTAh(i1) 
 
Boson4(1) = MAh(i1) 
Boson4(2) =gTAh(i1) 
Boson4(3) = MAh(i1) 
Boson4(4) =gTAh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup(2) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChiAhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplChiChiAhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplChiChiAhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
If (gt1.Eq.gt2) Then 
resR=resR/2._dp 
End If
resR= 1*resR ! color factor 
resS = resS + resR 
 
 mass(2) = MChi(gt2) 
mass(3) = -MChi(gt1) 
mass(4) = MChi(gt3) 
 
coup(2) = Conjg(cplChiChiAhL(iIN,gt2,i1)) 
coup(1) = Conjg(cplChiChiAhR(iIN,gt2,i1)) 
coup(4) = Conjg(cplChiChiAhL(gt1,gt3,i1)) 
coup(3) = Conjg(cplChiChiAhR(gt1,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
If (gt1.Eq.gt2) Then 
resR=resR/2._dp 
End If
resR= 1*resR ! color factor 
resS = resS + resR 
 
 mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i1))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i1)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i1))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i1)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiAhL(iIN,gt3,i1) 
coup2(2) = cplChiChiAhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i1))  
coup2(5) = cplChiChiAhL(gt1,gt2,i1) 
coup2(6) = cplChiChiAhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i1)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiAhL(iIN,gt3,i1) 
coup2(2) = cplChiChiAhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i1))  
coup2(5) = cplChiChiAhL(gt1,gt2,i1) 
coup2(6) = cplChiChiAhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i1)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt2,i1) 
coup2(2) = cplChiChiAhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i1))  
coup2(5) = cplChiChiAhL(gt1,gt3,i1) 
coup2(6) = cplChiChiAhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i1)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt2,i1) 
coup2(2) = cplChiChiAhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i1))  
coup2(5) = cplChiChiAhL(gt1,gt3,i1) 
coup2(6) = cplChiChiAhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i1)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah'
      End Do 



!-------------- 
!  hh 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = Mhh(i1) 
Boson2(2) =gThh(i1) 
 
Boson4(1) = Mhh(i1) 
Boson4(2) =gThh(i1) 
Boson4(3) = Mhh(i1) 
Boson4(4) =gThh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup(2) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChihhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplChiChihhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplChiChihhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
If (gt1.Eq.gt2) Then 
resR=resR/2._dp 
End If
resR= 1*resR ! color factor 
resS = resS + resR 
 
 mass(2) = MChi(gt2) 
mass(3) = -MChi(gt1) 
mass(4) = MChi(gt3) 
 
coup(2) = Conjg(cplChiChihhL(iIN,gt2,i1)) 
coup(1) = Conjg(cplChiChihhR(iIN,gt2,i1)) 
coup(4) = Conjg(cplChiChihhL(gt1,gt3,i1)) 
coup(3) = Conjg(cplChiChihhR(gt1,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
If (gt1.Eq.gt2) Then 
resR=resR/2._dp 
End If
resR= 1*resR ! color factor 
resS = resS + resR 
 
 mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i1))  
coup2(5) = cplChiChihhL(gt2,gt3,i1) 
coup2(6) = cplChiChihhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i1)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i1))  
coup2(5) = cplChiChihhL(gt2,gt3,i1) 
coup2(6) = cplChiChihhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i1)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChihhL(iIN,gt3,i1) 
coup2(2) = cplChiChihhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i1))  
coup2(5) = cplChiChihhL(gt1,gt2,i1) 
coup2(6) = cplChiChihhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i1)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChihhL(iIN,gt3,i1) 
coup2(2) = cplChiChihhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i1))  
coup2(5) = cplChiChihhL(gt1,gt2,i1) 
coup2(6) = cplChiChihhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i1)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt2,i1) 
coup2(2) = cplChiChihhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i1))  
coup2(5) = cplChiChihhL(gt1,gt3,i1) 
coup2(6) = cplChiChihhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i1)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt2,i1) 
coup2(2) = cplChiChihhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i1))  
coup2(5) = cplChiChihhL(gt1,gt3,i1) 
coup2(6) = cplChiChihhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i1)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i1)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='hh'
      End Do 



!-------------- 
!  VZ, VZp 
!-------------- 
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MVZp 
Boson4(4) = gTVZp 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt3)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = -2._dp*resR 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt2)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt1,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt1,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt3)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt3))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt1)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt1)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt3)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt3))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt1,gt2)) 
coup2(8) = Conjg(cplChiChiVZpR(gt1,gt2)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt2)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt1,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt1,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt3) 
coup2(2) = cplChiChiVZR(iIN,gt3) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplChiChiVZL(gt1,gt2) 
coup2(6) = cplChiChiVZR(gt1,gt2) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZL(iIN,gt3) 
coup2(2) = cplChiChiVZR(iIN,gt3) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt2)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt2))  
coup2(5) = cplChiChiVZL(gt1,gt2) 
coup2(6) = cplChiChiVZR(gt1,gt2) 
coup2(7) = Conjg(cplChiChiVZpL(gt1,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt1,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt2) 
coup2(2) = cplChiChiVZR(iIN,gt2) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplChiChiVZL(gt1,gt3) 
coup2(6) = cplChiChiVZR(gt1,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt2,gt3)) 
coup2(8) = Conjg(cplChiChiVZpR(gt2,gt3)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZL(iIN,gt2) 
coup2(2) = cplChiChiVZR(iIN,gt2) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt3)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt3))  
coup2(5) = cplChiChiVZL(gt1,gt3) 
coup2(6) = cplChiChiVZR(gt1,gt3) 
coup2(7) = Conjg(cplChiChiVZpL(gt1,gt2)) 
coup2(8) = Conjg(cplChiChiVZpR(gt1,gt2)) 
Call IntegrateGaugeST(Boson4, mass, coup2, deltaM, epsI,IntegralVVst,NVVst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: VZ,VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,VZp'



!-------------- 
!  VZ, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt1,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt1,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt2,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt3) 
coup2(2) = cplChiChiVZR(iIN,gt3) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZL(gt1,gt2) 
coup2(6) = cplChiChiVZR(gt1,gt2) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZL(iIN,gt3) 
coup2(2) = cplChiChiVZR(iIN,gt3) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZL(gt1,gt2) 
coup2(6) = cplChiChiVZR(gt1,gt2) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt2) 
coup2(2) = cplChiChiVZR(iIN,gt2) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZL(gt1,gt3) 
coup2(6) = cplChiChiVZR(gt1,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZL(iIN,gt2) 
coup2(2) = cplChiChiVZR(iIN,gt2) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZL(gt1,gt3) 
coup2(6) = cplChiChiVZR(gt1,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt2,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: VZ,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Ah'
      End Do 



!-------------- 
!  VZ, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt1,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt1,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt2,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZL(gt2,gt3) 
coup2(6) = cplChiChiVZR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt3) 
coup2(2) = cplChiChiVZR(iIN,gt3) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZL(gt1,gt2) 
coup2(6) = cplChiChiVZR(gt1,gt2) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZL(iIN,gt3) 
coup2(2) = cplChiChiVZR(iIN,gt3) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZL(gt1,gt2) 
coup2(6) = cplChiChiVZR(gt1,gt2) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt2) 
coup2(2) = cplChiChiVZR(iIN,gt2) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZL(gt1,gt3) 
coup2(6) = cplChiChiVZR(gt1,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZL(iIN,gt2) 
coup2(2) = cplChiChiVZR(iIN,gt2) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZL(gt1,gt3) 
coup2(6) = cplChiChiVZR(gt1,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt2,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: VZ,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,hh'
      End Do 



!-------------- 
!  VZp, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt1,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt1,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt2,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt3) 
coup2(2) = cplChiChiVZpR(iIN,gt3) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZpL(gt1,gt2) 
coup2(6) = cplChiChiVZpR(gt1,gt2) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZpL(iIN,gt3) 
coup2(2) = cplChiChiVZpR(iIN,gt3) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZpL(gt1,gt2) 
coup2(6) = cplChiChiVZpR(gt1,gt2) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt2) 
coup2(2) = cplChiChiVZpR(iIN,gt2) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZpL(gt1,gt3) 
coup2(6) = cplChiChiVZpR(gt1,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZpL(iIN,gt2) 
coup2(2) = cplChiChiVZpR(iIN,gt2) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZpL(gt1,gt3) 
coup2(6) = cplChiChiVZpR(gt1,gt3) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt2,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: VZp,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Ah'
      End Do 



!-------------- 
!  VZp, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt1,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt1,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt2,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZpL(gt2,gt3) 
coup2(6) = cplChiChiVZpR(gt2,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt3) 
coup2(2) = cplChiChiVZpR(iIN,gt3) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZpL(gt1,gt2) 
coup2(6) = cplChiChiVZpR(gt1,gt2) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZpL(iIN,gt3) 
coup2(2) = cplChiChiVZpR(iIN,gt3) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChiVZpL(gt1,gt2) 
coup2(6) = cplChiChiVZpR(gt1,gt2) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt2) 
coup2(2) = cplChiChiVZpR(iIN,gt2) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChiVZpL(gt1,gt3) 
coup2(6) = cplChiChiVZpR(gt1,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiVZpL(iIN,gt2) 
coup2(2) = cplChiChiVZpR(iIN,gt2) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChiVZpL(gt1,gt3) 
coup2(6) = cplChiChiVZpR(gt1,gt3) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt2,i2)) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: VZp,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,hh'
      End Do 



!-------------- 
!  Ah, Ah 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt2,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt3,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt1,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt1,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt3,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt2,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiAhL(iIN,gt3,i1) 
coup2(2) = cplChiChiAhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChiAhL(gt1,gt2,i1) 
coup2(6) = cplChiChiAhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiAhL(iIN,gt3,i1) 
coup2(2) = cplChiChiAhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt2,i2))  
coup2(5) = cplChiChiAhL(gt1,gt2,i1) 
coup2(6) = cplChiChiAhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt2,i1) 
coup2(2) = cplChiChiAhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiChiAhL(gt1,gt3,i1) 
coup2(6) = cplChiChiAhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt2,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiAhL(iIN,gt2,i1) 
coup2(2) = cplChiChiAhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt3,i2))  
coup2(5) = cplChiChiAhL(gt1,gt3,i1) 
coup2(6) = cplChiChiAhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChiAhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChiAhR(gt1,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: Ah,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,Ah'
        End Do 
      End Do 



!-------------- 
!  Ah, hh 
!-------------- 
Do i1=1,3
  Do i2=1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt1,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt1,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChiAhL(gt2,gt3,i1) 
coup2(6) = cplChiChiAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChiAhL(iIN,gt3,i1) 
coup2(2) = cplChiChiAhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChiAhL(gt1,gt2,i1) 
coup2(6) = cplChiChiAhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiAhL(iIN,gt3,i1) 
coup2(2) = cplChiChiAhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChiAhL(gt1,gt2,i1) 
coup2(6) = cplChiChiAhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt2,i1) 
coup2(2) = cplChiChiAhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChiAhL(gt1,gt3,i1) 
coup2(6) = cplChiChiAhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChiAhL(iIN,gt2,i1) 
coup2(2) = cplChiChiAhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChiAhL(gt1,gt3,i1) 
coup2(6) = cplChiChiAhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: Ah,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,hh'
        End Do 
      End Do 



!-------------- 
!  hh, hh 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = Mhh(i1) 
Boson4(2) = gThh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MChi(gt2) 
mass(4) = MChi(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChihhL(gt2,gt3,i1) 
coup2(6) = cplChiChihhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChihhL(gt2,gt3,i1) 
coup2(6) = cplChiChihhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChihhL(gt2,gt3,i1) 
coup2(6) = cplChiChihhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt1,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt1,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChihhL(gt2,gt3,i1) 
coup2(6) = cplChiChihhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChihhL(gt2,gt3,i1) 
coup2(6) = cplChiChihhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt2) 
 
coup2(1) = cplChiChihhL(iIN,gt3,i1) 
coup2(2) = cplChiChihhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChihhL(gt1,gt2,i1) 
coup2(6) = cplChiChihhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt2) 
mass(4) = MChi(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChihhL(iIN,gt3,i1) 
coup2(2) = cplChiChihhR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt2,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt2,i2))  
coup2(5) = cplChiChihhL(gt1,gt2,i1) 
coup2(6) = cplChiChihhR(gt1,gt2,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt1) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt2,i1) 
coup2(2) = cplChiChihhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiChihhL(gt1,gt3,i1) 
coup2(6) = cplChiChihhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt2,gt3,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt2,gt3,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
mass(2) = MChi(gt3) 
mass(4) = MChi(gt2) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiChihhL(iIN,gt2,i1) 
coup2(2) = cplChiChihhR(iIN,gt2,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt3,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt3,i2))  
coup2(5) = cplChiChihhL(gt1,gt3,i1) 
coup2(6) = cplChiChihhR(gt1,gt3,i1) 
coup2(8) = Conjg(cplChiChihhL(gt1,gt2,i2)) 
coup2(7) = Conjg(cplChiChihhR(gt1,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
If ((gt1.Eq.gt2).And.(gt2.Eq.gt3)) Then 
resC=resC/6._dp
Else If ((gt1.Eq.gt2).Or.(gt2.Eq.gt3).Or.(gt1.Eq.gt3)) Then
resC=resC/2._dp 
End If
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi Chi Chi Propagator: hh,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='hh,hh'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,gt3,:)= 0._dp  
End If 
       End Do 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1, iIN-1
      Do gt2=gt1, iIN-1
        Do gt3=gt2, iIN-1
g(gt1,gt2,gt3)=Sum(gSum(gt1,gt2,gt3,1:64))
If (g(gt1,gt2,gt3).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,gt3)=0._dp
End If
       End Do 
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToChiChiChi 
 
 
Subroutine ChiToChicFdFd(iIN,MChi,MFd,MVZ,MVZp,MSd,MAh,Mhh,cplcFdChiSdL,              & 
& cplcFdChiSdR,cplcFdFdAhL,cplcFdFdAhR,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,              & 
& cplcFdFdVZR,cplcFdFdVZpL,cplcFdFdVZpR,cplChiChiAhL,cplChiChiAhR,cplChiChihhL,          & 
& cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,       & 
& cplChiFdcSdR,IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,             & 
& IntegralVSst,IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,gTVZ,gTVZp,            & 
& gTSd,gTAh,gThh,deltaM,epsI,check,g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MChi(6),MFd(3),MVZ,MVZp,MSd(6),MAh(3),Mhh(3)

Complex(dp),Intent(in) :: cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),        & 
& cplcFdFdhhL(3,3,3),cplcFdFdhhR(3,3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),               & 
& cplcFdFdVZpL(3,3),cplcFdFdVZpR(3,3),cplChiChiAhL(6,6,3),cplChiChiAhR(6,6,3),           & 
& cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiChiVZL(6,6),cplChiChiVZR(6,6),           & 
& cplChiChiVZpL(6,6),cplChiChiVZpR(6,6),cplChiFdcSdL(6,3,6),cplChiFdcSdR(6,3,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10),IntegralVs(25000,9),IntegralVVss(500000,12)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16),IntegralVSss(500000,12),              & 
& IntegralVSst(500000,16)

Real(dp),Intent(inout) :: gTVZ,gTVZp,gTSd(6),gTAh(3),gThh(3)

Integer, Intent(inout) :: NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 400 
Allocate( gSum(6,3,3, Isum) ) 
Allocate( Contribution(6,3,3, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1, iIN-1
      Do gt2=1,3
        Do gt3=1,3
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MFd(gt3))+Abs(MFd(gt2))+Abs(MChi(gt1)))) Then 
!-------------- 
!  VZ 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZ 
Boson2(2) =gTVZ 
 
Boson4(1) = MVZ 
Boson4(2) =gTVZ 
Boson4(3) = MVZ 
Boson4(4) =gTVZ 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup(2) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZR(iIN,gt1)) 
coup(4) = Conjg(cplcFdFdVZL(gt2,gt3)) 
coup(3) = Conjg(cplcFdFdVZR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZ" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ'



!-------------- 
!  VZp 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZp 
Boson2(2) =gTVZp 
 
Boson4(1) = MVZp 
Boson4(2) =gTVZp 
Boson4(3) = MVZp 
Boson4(4) =gTVZp 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup(2) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZpR(iIN,gt1)) 
coup(4) = Conjg(cplcFdFdVZpL(gt2,gt3)) 
coup(3) = Conjg(cplcFdFdVZpR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp'



!-------------- 
!  conj[Sd] 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSd(i1) 
Boson2(2) =gTSd(i1) 
 
Boson4(1) = MSd(i1) 
Boson4(2) =gTSd(i1) 
Boson4(3) = MSd(i1) 
Boson4(4) =gTSd(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFd(gt3) 
mass(3) = -MFd(gt2) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplChiFdcSdL(iIN,gt3,i1)) 
coup(1) = Conjg(cplChiFdcSdR(iIN,gt3,i1)) 
coup(4) = Conjg(cplcFdChiSdL(gt2,gt1,i1)) 
coup(3) = Conjg(cplcFdChiSdR(gt2,gt1,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: conj[Sd]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sd]'
      End Do 



!-------------- 
!  Sd 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSd(i1) 
Boson2(2) =gTSd(i1) 
 
Boson4(1) = MSd(i1) 
Boson4(2) =gTSd(i1) 
Boson4(3) = MSd(i1) 
Boson4(4) =gTSd(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFd(gt2) 
mass(3) = -MFd(gt3) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplcFdChiSdL(gt2,iIN,i1)) 
coup(1) = Conjg(cplcFdChiSdR(gt2,iIN,i1)) 
coup(4) = Conjg(cplChiFdcSdL(gt1,gt3,i1)) 
coup(3) = Conjg(cplChiFdcSdR(gt1,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Sd'
      End Do 



!-------------- 
!  Ah 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = MAh(i1) 
Boson2(2) =gTAh(i1) 
 
Boson4(1) = MAh(i1) 
Boson4(2) =gTAh(i1) 
Boson4(3) = MAh(i1) 
Boson4(4) =gTAh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup(2) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChiAhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFdFdAhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFdFdAhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah'
      End Do 



!-------------- 
!  hh 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = Mhh(i1) 
Boson2(2) =gThh(i1) 
 
Boson4(1) = Mhh(i1) 
Boson4(2) =gThh(i1) 
Boson4(3) = Mhh(i1) 
Boson4(4) =gThh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup(2) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChihhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFdFdhhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFdFdhhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='hh'
      End Do 



!-------------- 
!  VZ, VZp 
!-------------- 
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MVZp 
Boson4(4) = gTVZp 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplcFdFdVZL(gt2,gt3) 
coup2(6) = cplcFdFdVZR(gt2,gt3) 
coup2(7) = Conjg(cplcFdFdVZpL(gt3,gt2)) 
coup2(8) = Conjg(cplcFdFdVZpR(gt3,gt2)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = 2._dp*resR 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZ,VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,VZp'



!-------------- 
!  VZ, conj[Sd] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplChiFdcSdL(iIN,gt3,i2) 
coup2(3) = cplChiFdcSdR(iIN,gt3,i2)  
coup2(5) = cplcFdFdVZL(gt2,gt3) 
coup2(6) = cplcFdFdVZR(gt2,gt3) 
coup2(8) = cplcFdChiSdL(gt2,gt1,i2) 
coup2(7) = cplcFdChiSdR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZ,conj[Sd]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,conj[Sd]'
      End Do 



!-------------- 
!  VZ, Sd 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplcFdFdVZL(gt2,gt3) 
coup2(6) = cplcFdFdVZR(gt2,gt3) 
coup2(8) = cplChiFdcSdL(gt1,gt3,i2) 
coup2(7) = cplChiFdcSdR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZ,Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Sd'
      End Do 



!-------------- 
!  VZ, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFdFdVZL(gt2,gt3) 
coup2(6) = cplcFdFdVZR(gt2,gt3) 
coup2(8) = Conjg(cplcFdFdAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZ,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Ah'
      End Do 



!-------------- 
!  VZ, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFdFdVZL(gt2,gt3) 
coup2(6) = cplcFdFdVZR(gt2,gt3) 
coup2(8) = Conjg(cplcFdFdhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdhhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZ,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,hh'
      End Do 



!-------------- 
!  VZp, conj[Sd] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplChiFdcSdL(iIN,gt3,i2) 
coup2(3) = cplChiFdcSdR(iIN,gt3,i2)  
coup2(5) = cplcFdFdVZpL(gt2,gt3) 
coup2(6) = cplcFdFdVZpR(gt2,gt3) 
coup2(8) = cplcFdChiSdL(gt2,gt1,i2) 
coup2(7) = cplcFdChiSdR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZp,conj[Sd]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,conj[Sd]'
      End Do 



!-------------- 
!  VZp, Sd 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplcFdFdVZpL(gt2,gt3) 
coup2(6) = cplcFdFdVZpR(gt2,gt3) 
coup2(8) = cplChiFdcSdL(gt1,gt3,i2) 
coup2(7) = cplChiFdcSdR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZp,Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Sd'
      End Do 



!-------------- 
!  VZp, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFdFdVZpL(gt2,gt3) 
coup2(6) = cplcFdFdVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcFdFdAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZp,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Ah'
      End Do 



!-------------- 
!  VZp, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFdFdVZpL(gt2,gt3) 
coup2(6) = cplcFdFdVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcFdFdhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdhhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: VZp,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,hh'
      End Do 



!-------------- 
!  conj[Sd], conj[Sd] 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt3) 
mass(3) = -MFd(gt2) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplChiFdcSdL(iIN,gt3,i1) 
coup2(2) = cplChiFdcSdR(iIN,gt3,i1) 
coup2(4) = cplChiFdcSdL(iIN,gt3,i2) 
coup2(3) = cplChiFdcSdR(iIN,gt3,i2)  
coup2(5) = cplcFdChiSdL(gt2,gt1,i1) 
coup2(6) = cplcFdChiSdR(gt2,gt1,i1) 
coup2(8) = cplcFdChiSdL(gt2,gt1,i2) 
coup2(7) = cplcFdChiSdR(gt2,gt1,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: conj[Sd],conj[Sd]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sd],conj[Sd]'
        End Do 
      End Do 



!-------------- 
!  conj[Sd], Sd 
!-------------- 
Do i1=1,6
  Do i2=1,6
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(4) = MFd(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiFdcSdL(iIN,gt3,i1) 
coup2(2) = cplChiFdcSdR(iIN,gt3,i1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplcFdChiSdL(gt2,gt1,i1) 
coup2(6) = cplcFdChiSdR(gt2,gt1,i1) 
coup2(8) = cplChiFdcSdL(gt1,gt3,i2) 
coup2(7) = cplChiFdcSdR(gt1,gt3,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: conj[Sd],Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sd],Sd'
        End Do 
      End Do 



!-------------- 
!  conj[Sd], Ah 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFd(gt3) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplChiFdcSdL(iIN,gt3,i1) 
coup2(2) = cplChiFdcSdR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFdChiSdL(gt2,gt1,i1) 
coup2(6) = cplcFdChiSdR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcFdFdAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: conj[Sd],Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sd],Ah'
        End Do 
      End Do 



!-------------- 
!  conj[Sd], hh 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFd(gt3) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplChiFdcSdL(iIN,gt3,i1) 
coup2(2) = cplChiFdcSdR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFdChiSdL(gt2,gt1,i1) 
coup2(6) = cplcFdChiSdR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcFdFdhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdhhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: conj[Sd],hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sd],hh'
        End Do 
      End Do 



!-------------- 
!  Sd, Sd 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(3) = -MFd(gt3) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplcFdChiSdL(gt2,iIN,i1) 
coup2(2) = cplcFdChiSdR(gt2,iIN,i1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplChiFdcSdL(gt1,gt3,i1) 
coup2(6) = cplChiFdcSdR(gt1,gt3,i1) 
coup2(8) = cplChiFdcSdL(gt1,gt3,i2) 
coup2(7) = cplChiFdcSdR(gt1,gt3,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: Sd,Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Sd,Sd'
        End Do 
      End Do 



!-------------- 
!  Sd, Ah 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFd(gt2) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplcFdChiSdL(gt2,iIN,i1) 
coup2(2) = cplcFdChiSdR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiFdcSdL(gt1,gt3,i1) 
coup2(6) = cplChiFdcSdR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcFdFdAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: Sd,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Sd,Ah'
        End Do 
      End Do 



!-------------- 
!  Sd, hh 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFd(gt2) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplcFdChiSdL(gt2,iIN,i1) 
coup2(2) = cplcFdChiSdR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiFdcSdL(gt1,gt3,i1) 
coup2(6) = cplChiFdcSdR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcFdFdhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdhhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: Sd,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Sd,hh'
        End Do 
      End Do 



!-------------- 
!  Ah, Ah 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFdFdAhL(gt2,gt3,i1) 
coup2(6) = cplcFdFdAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFdFdAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdAhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: Ah,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,Ah'
        End Do 
      End Do 



!-------------- 
!  Ah, hh 
!-------------- 
Do i1=1,3
  Do i2=1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFdFdAhL(gt2,gt3,i1) 
coup2(6) = cplcFdFdAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFdFdhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdhhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: Ah,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,hh'
        End Do 
      End Do 



!-------------- 
!  hh, hh 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = Mhh(i1) 
Boson4(2) = gThh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFd(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFdFdhhL(gt2,gt3,i1) 
coup2(6) = cplcFdFdhhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFdFdhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFdFdhhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFd Fd Propagator: hh,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='hh,hh'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,gt3,:)= 0._dp  
End If 
       End Do 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1, iIN-1
      Do gt2=1,3
        Do gt3=1,3
g(gt1,gt2,gt3)=Sum(gSum(gt1,gt2,gt3,1:400))
If (g(gt1,gt2,gt3).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,gt3)=0._dp
End If
       End Do 
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToChicFdFd 
 
 
Subroutine ChiToChicFeFe(iIN,MChi,MFe,MVZ,MVZp,MSe,MAh,Mhh,cplcFeChiSeL,              & 
& cplcFeChiSeR,cplcFeFeAhL,cplcFeFeAhR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,              & 
& cplcFeFeVZR,cplcFeFeVZpL,cplcFeFeVZpR,cplChiChiAhL,cplChiChiAhR,cplChiChihhL,          & 
& cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFecSeL,       & 
& cplChiFecSeR,IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,             & 
& IntegralVSst,IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,gTVZ,gTVZp,            & 
& gTSe,gTAh,gThh,deltaM,epsI,check,g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MChi(6),MFe(3),MVZ,MVZp,MSe(6),MAh(3),Mhh(3)

Complex(dp),Intent(in) :: cplcFeChiSeL(3,6,6),cplcFeChiSeR(3,6,6),cplcFeFeAhL(3,3,3),cplcFeFeAhR(3,3,3),        & 
& cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),               & 
& cplcFeFeVZpL(3,3),cplcFeFeVZpR(3,3),cplChiChiAhL(6,6,3),cplChiChiAhR(6,6,3),           & 
& cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiChiVZL(6,6),cplChiChiVZR(6,6),           & 
& cplChiChiVZpL(6,6),cplChiChiVZpR(6,6),cplChiFecSeL(6,3,6),cplChiFecSeR(6,3,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10),IntegralVs(25000,9),IntegralVVss(500000,12)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16),IntegralVSss(500000,12),              & 
& IntegralVSst(500000,16)

Real(dp),Intent(inout) :: gTVZ,gTVZp,gTSe(6),gTAh(3),gThh(3)

Integer, Intent(inout) :: NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 400 
Allocate( gSum(6,3,3, Isum) ) 
Allocate( Contribution(6,3,3, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1, iIN-1
      Do gt2=1,3
        Do gt3=1,3
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MFe(gt3))+Abs(MFe(gt2))+Abs(MChi(gt1)))) Then 
!-------------- 
!  VZ 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZ 
Boson2(2) =gTVZ 
 
Boson4(1) = MVZ 
Boson4(2) =gTVZ 
Boson4(3) = MVZ 
Boson4(4) =gTVZ 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup(2) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZR(iIN,gt1)) 
coup(4) = Conjg(cplcFeFeVZL(gt2,gt3)) 
coup(3) = Conjg(cplcFeFeVZR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZ" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ'



!-------------- 
!  VZp 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZp 
Boson2(2) =gTVZp 
 
Boson4(1) = MVZp 
Boson4(2) =gTVZp 
Boson4(3) = MVZp 
Boson4(4) =gTVZp 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup(2) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZpR(iIN,gt1)) 
coup(4) = Conjg(cplcFeFeVZpL(gt2,gt3)) 
coup(3) = Conjg(cplcFeFeVZpR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp'



!-------------- 
!  conj[Se] 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSe(i1) 
Boson2(2) =gTSe(i1) 
 
Boson4(1) = MSe(i1) 
Boson4(2) =gTSe(i1) 
Boson4(3) = MSe(i1) 
Boson4(4) =gTSe(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFe(gt3) 
mass(3) = -MFe(gt2) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplChiFecSeL(iIN,gt3,i1)) 
coup(1) = Conjg(cplChiFecSeR(iIN,gt3,i1)) 
coup(4) = Conjg(cplcFeChiSeL(gt2,gt1,i1)) 
coup(3) = Conjg(cplcFeChiSeR(gt2,gt1,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: conj[Se]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Se]'
      End Do 



!-------------- 
!  Se 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSe(i1) 
Boson2(2) =gTSe(i1) 
 
Boson4(1) = MSe(i1) 
Boson4(2) =gTSe(i1) 
Boson4(3) = MSe(i1) 
Boson4(4) =gTSe(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFe(gt2) 
mass(3) = -MFe(gt3) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplcFeChiSeL(gt2,iIN,i1)) 
coup(1) = Conjg(cplcFeChiSeR(gt2,iIN,i1)) 
coup(4) = Conjg(cplChiFecSeL(gt1,gt3,i1)) 
coup(3) = Conjg(cplChiFecSeR(gt1,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Se'
      End Do 



!-------------- 
!  Ah 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = MAh(i1) 
Boson2(2) =gTAh(i1) 
 
Boson4(1) = MAh(i1) 
Boson4(2) =gTAh(i1) 
Boson4(3) = MAh(i1) 
Boson4(4) =gTAh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup(2) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChiAhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFeFeAhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFeFeAhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah'
      End Do 



!-------------- 
!  hh 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = Mhh(i1) 
Boson2(2) =gThh(i1) 
 
Boson4(1) = Mhh(i1) 
Boson4(2) =gThh(i1) 
Boson4(3) = Mhh(i1) 
Boson4(4) =gThh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup(2) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChihhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFeFehhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFeFehhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='hh'
      End Do 



!-------------- 
!  VZ, VZp 
!-------------- 
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MVZp 
Boson4(4) = gTVZp 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplcFeFeVZL(gt2,gt3) 
coup2(6) = cplcFeFeVZR(gt2,gt3) 
coup2(7) = Conjg(cplcFeFeVZpL(gt3,gt2)) 
coup2(8) = Conjg(cplcFeFeVZpR(gt3,gt2)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = 2._dp*resR 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZ,VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,VZp'



!-------------- 
!  VZ, conj[Se] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplChiFecSeL(iIN,gt3,i2) 
coup2(3) = cplChiFecSeR(iIN,gt3,i2)  
coup2(5) = cplcFeFeVZL(gt2,gt3) 
coup2(6) = cplcFeFeVZR(gt2,gt3) 
coup2(8) = cplcFeChiSeL(gt2,gt1,i2) 
coup2(7) = cplcFeChiSeR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZ,conj[Se]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,conj[Se]'
      End Do 



!-------------- 
!  VZ, Se 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplcFeChiSeL(gt2,iIN,i2) 
coup2(3) = cplcFeChiSeR(gt2,iIN,i2)  
coup2(5) = cplcFeFeVZL(gt2,gt3) 
coup2(6) = cplcFeFeVZR(gt2,gt3) 
coup2(8) = cplChiFecSeL(gt1,gt3,i2) 
coup2(7) = cplChiFecSeR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZ,Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Se'
      End Do 



!-------------- 
!  VZ, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFeFeVZL(gt2,gt3) 
coup2(6) = cplcFeFeVZR(gt2,gt3) 
coup2(8) = Conjg(cplcFeFeAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFeAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZ,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Ah'
      End Do 



!-------------- 
!  VZ, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFeFeVZL(gt2,gt3) 
coup2(6) = cplcFeFeVZR(gt2,gt3) 
coup2(8) = Conjg(cplcFeFehhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFehhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZ,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,hh'
      End Do 



!-------------- 
!  VZp, conj[Se] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplChiFecSeL(iIN,gt3,i2) 
coup2(3) = cplChiFecSeR(iIN,gt3,i2)  
coup2(5) = cplcFeFeVZpL(gt2,gt3) 
coup2(6) = cplcFeFeVZpR(gt2,gt3) 
coup2(8) = cplcFeChiSeL(gt2,gt1,i2) 
coup2(7) = cplcFeChiSeR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZp,conj[Se]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,conj[Se]'
      End Do 



!-------------- 
!  VZp, Se 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplcFeChiSeL(gt2,iIN,i2) 
coup2(3) = cplcFeChiSeR(gt2,iIN,i2)  
coup2(5) = cplcFeFeVZpL(gt2,gt3) 
coup2(6) = cplcFeFeVZpR(gt2,gt3) 
coup2(8) = cplChiFecSeL(gt1,gt3,i2) 
coup2(7) = cplChiFecSeR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZp,Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Se'
      End Do 



!-------------- 
!  VZp, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFeFeVZpL(gt2,gt3) 
coup2(6) = cplcFeFeVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcFeFeAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFeAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZp,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Ah'
      End Do 



!-------------- 
!  VZp, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFeFeVZpL(gt2,gt3) 
coup2(6) = cplcFeFeVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcFeFehhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFehhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: VZp,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,hh'
      End Do 



!-------------- 
!  conj[Se], conj[Se] 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSe(i1) 
Boson4(2) = gTSe(i1) 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt3) 
mass(3) = -MFe(gt2) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplChiFecSeL(iIN,gt3,i1) 
coup2(2) = cplChiFecSeR(iIN,gt3,i1) 
coup2(4) = cplChiFecSeL(iIN,gt3,i2) 
coup2(3) = cplChiFecSeR(iIN,gt3,i2)  
coup2(5) = cplcFeChiSeL(gt2,gt1,i1) 
coup2(6) = cplcFeChiSeR(gt2,gt1,i1) 
coup2(8) = cplcFeChiSeL(gt2,gt1,i2) 
coup2(7) = cplcFeChiSeR(gt2,gt1,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: conj[Se],conj[Se]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Se],conj[Se]'
        End Do 
      End Do 



!-------------- 
!  conj[Se], Se 
!-------------- 
Do i1=1,6
  Do i2=1,6
Boson4(1) = MSe(i1) 
Boson4(2) = gTSe(i1) 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt2) 
mass(4) = MFe(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiFecSeL(iIN,gt3,i1) 
coup2(2) = cplChiFecSeR(iIN,gt3,i1) 
coup2(4) = cplcFeChiSeL(gt2,iIN,i2) 
coup2(3) = cplcFeChiSeR(gt2,iIN,i2)  
coup2(5) = cplcFeChiSeL(gt2,gt1,i1) 
coup2(6) = cplcFeChiSeR(gt2,gt1,i1) 
coup2(8) = cplChiFecSeL(gt1,gt3,i2) 
coup2(7) = cplChiFecSeR(gt1,gt3,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: conj[Se],Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Se],Se'
        End Do 
      End Do 



!-------------- 
!  conj[Se], Ah 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSe(i1) 
Boson4(2) = gTSe(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFe(gt3) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplChiFecSeL(iIN,gt3,i1) 
coup2(2) = cplChiFecSeR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFeChiSeL(gt2,gt1,i1) 
coup2(6) = cplcFeChiSeR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcFeFeAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFeAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: conj[Se],Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Se],Ah'
        End Do 
      End Do 



!-------------- 
!  conj[Se], hh 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSe(i1) 
Boson4(2) = gTSe(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFe(gt3) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplChiFecSeL(iIN,gt3,i1) 
coup2(2) = cplChiFecSeR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFeChiSeL(gt2,gt1,i1) 
coup2(6) = cplcFeChiSeR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcFeFehhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFehhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: conj[Se],hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Se],hh'
        End Do 
      End Do 



!-------------- 
!  Se, Se 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSe(i1) 
Boson4(2) = gTSe(i1) 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt2) 
mass(3) = -MFe(gt3) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplcFeChiSeL(gt2,iIN,i1) 
coup2(2) = cplcFeChiSeR(gt2,iIN,i1) 
coup2(4) = cplcFeChiSeL(gt2,iIN,i2) 
coup2(3) = cplcFeChiSeR(gt2,iIN,i2)  
coup2(5) = cplChiFecSeL(gt1,gt3,i1) 
coup2(6) = cplChiFecSeR(gt1,gt3,i1) 
coup2(8) = cplChiFecSeL(gt1,gt3,i2) 
coup2(7) = cplChiFecSeR(gt1,gt3,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: Se,Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Se,Se'
        End Do 
      End Do 



!-------------- 
!  Se, Ah 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSe(i1) 
Boson4(2) = gTSe(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFe(gt2) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplcFeChiSeL(gt2,iIN,i1) 
coup2(2) = cplcFeChiSeR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiFecSeL(gt1,gt3,i1) 
coup2(6) = cplChiFecSeR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcFeFeAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFeAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: Se,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Se,Ah'
        End Do 
      End Do 



!-------------- 
!  Se, hh 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSe(i1) 
Boson4(2) = gTSe(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFe(gt2) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplcFeChiSeL(gt2,iIN,i1) 
coup2(2) = cplcFeChiSeR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiFecSeL(gt1,gt3,i1) 
coup2(6) = cplChiFecSeR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcFeFehhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFehhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: Se,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Se,hh'
        End Do 
      End Do 



!-------------- 
!  Ah, Ah 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFeFeAhL(gt2,gt3,i1) 
coup2(6) = cplcFeFeAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFeFeAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFeAhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: Ah,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,Ah'
        End Do 
      End Do 



!-------------- 
!  Ah, hh 
!-------------- 
Do i1=1,3
  Do i2=1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFeFeAhL(gt2,gt3,i1) 
coup2(6) = cplcFeFeAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFeFehhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFehhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: Ah,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,hh'
        End Do 
      End Do 



!-------------- 
!  hh, hh 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = Mhh(i1) 
Boson4(2) = gThh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFe(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFeFehhL(gt2,gt3,i1) 
coup2(6) = cplcFeFehhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFeFehhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFeFehhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFe Fe Propagator: hh,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='hh,hh'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,gt3,:)= 0._dp  
End If 
       End Do 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1, iIN-1
      Do gt2=1,3
        Do gt3=1,3
g(gt1,gt2,gt3)=Sum(gSum(gt1,gt2,gt3,1:400))
If (g(gt1,gt2,gt3).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,gt3)=0._dp
End If
       End Do 
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToChicFeFe 
 
 
Subroutine ChiToChicFuFu(iIN,MChi,MFu,MVZ,MVZp,MSu,MAh,Mhh,cplcFuChiSuL,              & 
& cplcFuChiSuR,cplcFuFuAhL,cplcFuFuAhR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,              & 
& cplcFuFuVZR,cplcFuFuVZpL,cplcFuFuVZpR,cplChiChiAhL,cplChiChiAhR,cplChiChihhL,          & 
& cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFucSuL,       & 
& cplChiFucSuR,IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,             & 
& IntegralVSst,IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,gTVZ,gTVZp,            & 
& gTSu,gTAh,gThh,deltaM,epsI,check,g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MChi(6),MFu(3),MVZ,MVZp,MSu(6),MAh(3),Mhh(3)

Complex(dp),Intent(in) :: cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFuFuAhL(3,3,3),cplcFuFuAhR(3,3,3),        & 
& cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),               & 
& cplcFuFuVZpL(3,3),cplcFuFuVZpR(3,3),cplChiChiAhL(6,6,3),cplChiChiAhR(6,6,3),           & 
& cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiChiVZL(6,6),cplChiChiVZR(6,6),           & 
& cplChiChiVZpL(6,6),cplChiChiVZpR(6,6),cplChiFucSuL(6,3,6),cplChiFucSuR(6,3,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10),IntegralVs(25000,9),IntegralVVss(500000,12)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16),IntegralVSss(500000,12),              & 
& IntegralVSst(500000,16)

Real(dp),Intent(inout) :: gTVZ,gTVZp,gTSu(6),gTAh(3),gThh(3)

Integer, Intent(inout) :: NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 400 
Allocate( gSum(6,3,3, Isum) ) 
Allocate( Contribution(6,3,3, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1, iIN-1
      Do gt2=1,3
        Do gt3=1,3
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MFu(gt3))+Abs(MFu(gt2))+Abs(MChi(gt1)))) Then 
!-------------- 
!  VZ 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZ 
Boson2(2) =gTVZ 
 
Boson4(1) = MVZ 
Boson4(2) =gTVZ 
Boson4(3) = MVZ 
Boson4(4) =gTVZ 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup(2) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZR(iIN,gt1)) 
coup(4) = Conjg(cplcFuFuVZL(gt2,gt3)) 
coup(3) = Conjg(cplcFuFuVZR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZ" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ'



!-------------- 
!  VZp 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZp 
Boson2(2) =gTVZp 
 
Boson4(1) = MVZp 
Boson4(2) =gTVZp 
Boson4(3) = MVZp 
Boson4(4) =gTVZp 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup(2) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZpR(iIN,gt1)) 
coup(4) = Conjg(cplcFuFuVZpL(gt2,gt3)) 
coup(3) = Conjg(cplcFuFuVZpR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp'



!-------------- 
!  conj[Su] 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSu(i1) 
Boson2(2) =gTSu(i1) 
 
Boson4(1) = MSu(i1) 
Boson4(2) =gTSu(i1) 
Boson4(3) = MSu(i1) 
Boson4(4) =gTSu(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFu(gt3) 
mass(3) = -MFu(gt2) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplChiFucSuL(iIN,gt3,i1)) 
coup(1) = Conjg(cplChiFucSuR(iIN,gt3,i1)) 
coup(4) = Conjg(cplcFuChiSuL(gt2,gt1,i1)) 
coup(3) = Conjg(cplcFuChiSuR(gt2,gt1,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Su]'
      End Do 



!-------------- 
!  Su 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSu(i1) 
Boson2(2) =gTSu(i1) 
 
Boson4(1) = MSu(i1) 
Boson4(2) =gTSu(i1) 
Boson4(3) = MSu(i1) 
Boson4(4) =gTSu(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFu(gt2) 
mass(3) = -MFu(gt3) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplcFuChiSuL(gt2,iIN,i1)) 
coup(1) = Conjg(cplcFuChiSuR(gt2,iIN,i1)) 
coup(4) = Conjg(cplChiFucSuL(gt1,gt3,i1)) 
coup(3) = Conjg(cplChiFucSuR(gt1,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: Su" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Su'
      End Do 



!-------------- 
!  Ah 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = MAh(i1) 
Boson2(2) =gTAh(i1) 
 
Boson4(1) = MAh(i1) 
Boson4(2) =gTAh(i1) 
Boson4(3) = MAh(i1) 
Boson4(4) =gTAh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup(2) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChiAhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFuFuAhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFuFuAhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah'
      End Do 



!-------------- 
!  hh 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = Mhh(i1) 
Boson2(2) =gThh(i1) 
 
Boson4(1) = Mhh(i1) 
Boson4(2) =gThh(i1) 
Boson4(3) = Mhh(i1) 
Boson4(4) =gThh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup(2) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChihhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFuFuhhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFuFuhhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='hh'
      End Do 



!-------------- 
!  VZ, VZp 
!-------------- 
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MVZp 
Boson4(4) = gTVZp 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplcFuFuVZL(gt2,gt3) 
coup2(6) = cplcFuFuVZR(gt2,gt3) 
coup2(7) = Conjg(cplcFuFuVZpL(gt3,gt2)) 
coup2(8) = Conjg(cplcFuFuVZpR(gt3,gt2)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = 2._dp*resR 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZ,VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,VZp'



!-------------- 
!  VZ, conj[Su] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MFu(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplChiFucSuL(iIN,gt3,i2) 
coup2(3) = cplChiFucSuR(iIN,gt3,i2)  
coup2(5) = cplcFuFuVZL(gt2,gt3) 
coup2(6) = cplcFuFuVZR(gt2,gt3) 
coup2(8) = cplcFuChiSuL(gt2,gt1,i2) 
coup2(7) = cplcFuChiSuR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZ,conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,conj[Su]'
      End Do 



!-------------- 
!  VZ, Su 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MFu(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplcFuChiSuL(gt2,iIN,i2) 
coup2(3) = cplcFuChiSuR(gt2,iIN,i2)  
coup2(5) = cplcFuFuVZL(gt2,gt3) 
coup2(6) = cplcFuFuVZR(gt2,gt3) 
coup2(8) = cplChiFucSuL(gt1,gt3,i2) 
coup2(7) = cplChiFucSuR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZ,Su" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Su'
      End Do 



!-------------- 
!  VZ, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFuFuVZL(gt2,gt3) 
coup2(6) = cplcFuFuVZR(gt2,gt3) 
coup2(8) = Conjg(cplcFuFuAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZ,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Ah'
      End Do 



!-------------- 
!  VZ, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFuFuVZL(gt2,gt3) 
coup2(6) = cplcFuFuVZR(gt2,gt3) 
coup2(8) = Conjg(cplcFuFuhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuhhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZ,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,hh'
      End Do 



!-------------- 
!  VZp, conj[Su] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MFu(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplChiFucSuL(iIN,gt3,i2) 
coup2(3) = cplChiFucSuR(iIN,gt3,i2)  
coup2(5) = cplcFuFuVZpL(gt2,gt3) 
coup2(6) = cplcFuFuVZpR(gt2,gt3) 
coup2(8) = cplcFuChiSuL(gt2,gt1,i2) 
coup2(7) = cplcFuChiSuR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZp,conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,conj[Su]'
      End Do 



!-------------- 
!  VZp, Su 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MFu(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplcFuChiSuL(gt2,iIN,i2) 
coup2(3) = cplcFuChiSuR(gt2,iIN,i2)  
coup2(5) = cplcFuFuVZpL(gt2,gt3) 
coup2(6) = cplcFuFuVZpR(gt2,gt3) 
coup2(8) = cplChiFucSuL(gt1,gt3,i2) 
coup2(7) = cplChiFucSuR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZp,Su" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Su'
      End Do 



!-------------- 
!  VZp, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFuFuVZpL(gt2,gt3) 
coup2(6) = cplcFuFuVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcFuFuAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZp,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Ah'
      End Do 



!-------------- 
!  VZp, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFuFuVZpL(gt2,gt3) 
coup2(6) = cplcFuFuVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcFuFuhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuhhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: VZp,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,hh'
      End Do 



!-------------- 
!  conj[Su], conj[Su] 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt3) 
mass(3) = -MFu(gt2) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplChiFucSuL(iIN,gt3,i1) 
coup2(2) = cplChiFucSuR(iIN,gt3,i1) 
coup2(4) = cplChiFucSuL(iIN,gt3,i2) 
coup2(3) = cplChiFucSuR(iIN,gt3,i2)  
coup2(5) = cplcFuChiSuL(gt2,gt1,i1) 
coup2(6) = cplcFuChiSuR(gt2,gt1,i1) 
coup2(8) = cplcFuChiSuL(gt2,gt1,i2) 
coup2(7) = cplcFuChiSuR(gt2,gt1,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: conj[Su],conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Su],conj[Su]'
        End Do 
      End Do 



!-------------- 
!  conj[Su], Su 
!-------------- 
Do i1=1,6
  Do i2=1,6
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt2) 
mass(4) = MFu(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiFucSuL(iIN,gt3,i1) 
coup2(2) = cplChiFucSuR(iIN,gt3,i1) 
coup2(4) = cplcFuChiSuL(gt2,iIN,i2) 
coup2(3) = cplcFuChiSuR(gt2,iIN,i2)  
coup2(5) = cplcFuChiSuL(gt2,gt1,i1) 
coup2(6) = cplcFuChiSuR(gt2,gt1,i1) 
coup2(8) = cplChiFucSuL(gt1,gt3,i2) 
coup2(7) = cplChiFucSuR(gt1,gt3,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: conj[Su],Su" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Su],Su'
        End Do 
      End Do 



!-------------- 
!  conj[Su], Ah 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFu(gt3) 
mass(3) = -MFu(gt2) 
 
coup2(1) = cplChiFucSuL(iIN,gt3,i1) 
coup2(2) = cplChiFucSuR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFuChiSuL(gt2,gt1,i1) 
coup2(6) = cplcFuChiSuR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcFuFuAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: conj[Su],Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Su],Ah'
        End Do 
      End Do 



!-------------- 
!  conj[Su], hh 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFu(gt3) 
mass(3) = -MFu(gt2) 
 
coup2(1) = cplChiFucSuL(iIN,gt3,i1) 
coup2(2) = cplChiFucSuR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFuChiSuL(gt2,gt1,i1) 
coup2(6) = cplcFuChiSuR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcFuFuhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuhhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: conj[Su],hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Su],hh'
        End Do 
      End Do 



!-------------- 
!  Su, Su 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt2) 
mass(3) = -MFu(gt3) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplcFuChiSuL(gt2,iIN,i1) 
coup2(2) = cplcFuChiSuR(gt2,iIN,i1) 
coup2(4) = cplcFuChiSuL(gt2,iIN,i2) 
coup2(3) = cplcFuChiSuR(gt2,iIN,i2)  
coup2(5) = cplChiFucSuL(gt1,gt3,i1) 
coup2(6) = cplChiFucSuR(gt1,gt3,i1) 
coup2(8) = cplChiFucSuL(gt1,gt3,i2) 
coup2(7) = cplChiFucSuR(gt1,gt3,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: Su,Su" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Su,Su'
        End Do 
      End Do 



!-------------- 
!  Su, Ah 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFu(gt2) 
mass(3) = -MFu(gt2) 
 
coup2(1) = cplcFuChiSuL(gt2,iIN,i1) 
coup2(2) = cplcFuChiSuR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiFucSuL(gt1,gt3,i1) 
coup2(6) = cplChiFucSuR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcFuFuAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: Su,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Su,Ah'
        End Do 
      End Do 



!-------------- 
!  Su, hh 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFu(gt2) 
mass(3) = -MFu(gt2) 
 
coup2(1) = cplcFuChiSuL(gt2,iIN,i1) 
coup2(2) = cplcFuChiSuR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiFucSuL(gt1,gt3,i1) 
coup2(6) = cplChiFucSuR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcFuFuhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuhhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: Su,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Su,hh'
        End Do 
      End Do 



!-------------- 
!  Ah, Ah 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFuFuAhL(gt2,gt3,i1) 
coup2(6) = cplcFuFuAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFuFuAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuAhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: Ah,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,Ah'
        End Do 
      End Do 



!-------------- 
!  Ah, hh 
!-------------- 
Do i1=1,3
  Do i2=1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFuFuAhL(gt2,gt3,i1) 
coup2(6) = cplcFuFuAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFuFuhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuhhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: Ah,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,hh'
        End Do 
      End Do 



!-------------- 
!  hh, hh 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = Mhh(i1) 
Boson4(2) = gThh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFuFuhhL(gt2,gt3,i1) 
coup2(6) = cplcFuFuhhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFuFuhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFuFuhhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFu Fu Propagator: hh,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='hh,hh'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,gt3,:)= 0._dp  
End If 
       End Do 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1, iIN-1
      Do gt2=1,3
        Do gt3=1,3
g(gt1,gt2,gt3)=Sum(gSum(gt1,gt2,gt3,1:400))
If (g(gt1,gt2,gt3).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,gt3)=0._dp
End If
       End Do 
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToChicFuFu 
 
 
Subroutine ChiToChicFvFv(iIN,MChi,MFv,MVZ,MVZp,MSv,MAh,Mhh,cplcFvChiSvL,              & 
& cplcFvChiSvR,cplcFvFvAhL,cplcFvFvAhR,cplcFvFvhhL,cplcFvFvhhR,cplcFvFvVZL,              & 
& cplcFvFvVZR,cplcFvFvVZpL,cplcFvFvVZpR,cplChiChiAhL,cplChiChiAhR,cplChiChihhL,          & 
& cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFvcSvL,       & 
& cplChiFvcSvR,IntegralSs,IntegralSSss,IntegralSSst,IntegralVs,IntegralVSss,             & 
& IntegralVSst,IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss,gTVZ,gTVZp,            & 
& gTSv,gTAh,gThh,deltaM,epsI,check,g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MChi(6),MFv(3),MVZ,MVZp,MSv(6),MAh(3),Mhh(3)

Complex(dp),Intent(in) :: cplcFvChiSvL(3,6,6),cplcFvChiSvR(3,6,6),cplcFvFvAhL(3,3,3),cplcFvFvAhR(3,3,3),        & 
& cplcFvFvhhL(3,3,3),cplcFvFvhhR(3,3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),               & 
& cplcFvFvVZpL(3,3),cplcFvFvVZpR(3,3),cplChiChiAhL(6,6,3),cplChiChiAhR(6,6,3),           & 
& cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiChiVZL(6,6),cplChiChiVZR(6,6),           & 
& cplChiChiVZpL(6,6),cplChiChiVZpR(6,6),cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10),IntegralVs(25000,9),IntegralVVss(500000,12)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16),IntegralVSss(500000,12),              & 
& IntegralVSst(500000,16)

Real(dp),Intent(inout) :: gTVZ,gTVZp,gTSv(6),gTAh(3),gThh(3)

Integer, Intent(inout) :: NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 400 
Allocate( gSum(6,3,3, Isum) ) 
Allocate( Contribution(6,3,3, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1, iIN-1
      Do gt2=1,3
        Do gt3=1,3
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MFv(gt3))+Abs(MFv(gt2))+Abs(MChi(gt1)))) Then 
!-------------- 
!  VZ 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZ 
Boson2(2) =gTVZ 
 
Boson4(1) = MVZ 
Boson4(2) =gTVZ 
Boson4(3) = MVZ 
Boson4(4) =gTVZ 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup(2) = Conjg(cplChiChiVZL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZR(iIN,gt1)) 
coup(4) = Conjg(cplcFvFvVZL(gt2,gt3)) 
coup(3) = Conjg(cplcFvFvVZR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZ" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ'



!-------------- 
!  VZp 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVZp 
Boson2(2) =gTVZp 
 
Boson4(1) = MVZp 
Boson4(2) =gTVZp 
Boson4(3) = MVZp 
Boson4(4) =gTVZp 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup(2) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup(1) = Conjg(cplChiChiVZpR(iIN,gt1)) 
coup(4) = Conjg(cplcFvFvVZpL(gt2,gt3)) 
coup(3) = Conjg(cplcFvFvVZpR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp'



!-------------- 
!  conj[Sv] 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSv(i1) 
Boson2(2) =gTSv(i1) 
 
Boson4(1) = MSv(i1) 
Boson4(2) =gTSv(i1) 
Boson4(3) = MSv(i1) 
Boson4(4) =gTSv(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFv(gt3) 
mass(3) = -MFv(gt2) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplChiFvcSvL(iIN,gt3,i1)) 
coup(1) = Conjg(cplChiFvcSvR(iIN,gt3,i1)) 
coup(4) = Conjg(cplcFvChiSvL(gt2,gt1,i1)) 
coup(3) = Conjg(cplcFvChiSvR(gt2,gt1,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: conj[Sv]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sv]'
      End Do 



!-------------- 
!  Sv 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSv(i1) 
Boson2(2) =gTSv(i1) 
 
Boson4(1) = MSv(i1) 
Boson4(2) =gTSv(i1) 
Boson4(3) = MSv(i1) 
Boson4(4) =gTSv(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFv(gt2) 
mass(3) = -MFv(gt3) 
mass(4) = MChi(gt1) 
 
coup(2) = Conjg(cplcFvChiSvL(gt2,iIN,i1)) 
coup(1) = Conjg(cplcFvChiSvR(gt2,iIN,i1)) 
coup(4) = Conjg(cplChiFvcSvL(gt1,gt3,i1)) 
coup(3) = Conjg(cplChiFvcSvR(gt1,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: Sv" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Sv'
      End Do 



!-------------- 
!  Ah 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = MAh(i1) 
Boson2(2) =gTAh(i1) 
 
Boson4(1) = MAh(i1) 
Boson4(2) =gTAh(i1) 
Boson4(3) = MAh(i1) 
Boson4(4) =gTAh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup(2) = Conjg(cplChiChiAhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChiAhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFvFvAhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFvFvAhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah'
      End Do 



!-------------- 
!  hh 
!-------------- 
Do i1=1,3
Isum = Isum + 1 
Boson2(1) = Mhh(i1) 
Boson2(2) =gThh(i1) 
 
Boson4(1) = Mhh(i1) 
Boson4(2) =gThh(i1) 
Boson4(3) = Mhh(i1) 
Boson4(4) =gThh(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup(2) = Conjg(cplChiChihhL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChihhR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFvFvhhL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFvFvhhR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='hh'
      End Do 



!-------------- 
!  VZ, VZp 
!-------------- 
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MVZp 
Boson4(4) = gTVZp 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(3) = Conjg(cplChiChiVZpL(iIN,gt1)) 
coup2(4) = Conjg(cplChiChiVZpR(iIN,gt1))  
coup2(5) = cplcFvFvVZL(gt2,gt3) 
coup2(6) = cplcFvFvVZR(gt2,gt3) 
coup2(7) = Conjg(cplcFvFvVZpL(gt3,gt2)) 
coup2(8) = Conjg(cplcFvFvVZpR(gt3,gt2)) 
Call IntegrateGaugeSS(Boson4, mass, coup2, deltaM, epsI,IntegralVVss,NVVss, resR, check) 
If (resR.ne.resR) resR = 0._dp
resC = 2._dp*resR 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZ,VZp" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,VZp'



!-------------- 
!  VZ, conj[Sv] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MFv(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplChiFvcSvL(iIN,gt3,i2) 
coup2(3) = cplChiFvcSvR(iIN,gt3,i2)  
coup2(5) = cplcFvFvVZL(gt2,gt3) 
coup2(6) = cplcFvFvVZR(gt2,gt3) 
coup2(8) = cplcFvChiSvL(gt2,gt1,i2) 
coup2(7) = cplcFvChiSvR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZ,conj[Sv]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,conj[Sv]'
      End Do 



!-------------- 
!  VZ, Sv 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MFv(gt2) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = cplcFvChiSvL(gt2,iIN,i2) 
coup2(3) = cplcFvChiSvR(gt2,iIN,i2)  
coup2(5) = cplcFvFvVZL(gt2,gt3) 
coup2(6) = cplcFvFvVZR(gt2,gt3) 
coup2(8) = cplChiFvcSvL(gt1,gt3,i2) 
coup2(7) = cplChiFvcSvR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZ,Sv" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Sv'
      End Do 



!-------------- 
!  VZ, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFvFvVZL(gt2,gt3) 
coup2(6) = cplcFvFvVZR(gt2,gt3) 
coup2(8) = Conjg(cplcFvFvAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZ,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,Ah'
      End Do 



!-------------- 
!  VZ, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZ 
Boson4(2) = gTVZ 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChiVZL(iIN,gt1) 
coup2(2) = cplChiChiVZR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFvFvVZL(gt2,gt3) 
coup2(6) = cplcFvFvVZR(gt2,gt3) 
coup2(8) = Conjg(cplcFvFvhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvhhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZ,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZ,hh'
      End Do 



!-------------- 
!  VZp, conj[Sv] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt3) 
mass(4) = MChi(gt1) 
mass(3) = -MFv(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplChiFvcSvL(iIN,gt3,i2) 
coup2(3) = cplChiFvcSvR(iIN,gt3,i2)  
coup2(5) = cplcFvFvVZpL(gt2,gt3) 
coup2(6) = cplcFvFvVZpR(gt2,gt3) 
coup2(8) = cplcFvChiSvL(gt2,gt1,i2) 
coup2(7) = cplcFvChiSvR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZp,conj[Sv]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,conj[Sv]'
      End Do 



!-------------- 
!  VZp, Sv 
!-------------- 
  Do i2=1,6
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt2) 
mass(4) = MChi(gt1) 
mass(3) = -MFv(gt2) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = cplcFvChiSvL(gt2,iIN,i2) 
coup2(3) = cplcFvChiSvR(gt2,iIN,i2)  
coup2(5) = cplcFvFvVZpL(gt2,gt3) 
coup2(6) = cplcFvFvVZpR(gt2,gt3) 
coup2(8) = cplChiFvcSvL(gt1,gt3,i2) 
coup2(7) = cplChiFvcSvR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZp,Sv" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Sv'
      End Do 



!-------------- 
!  VZp, Ah 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFvFvVZpL(gt2,gt3) 
coup2(6) = cplcFvFvVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcFvFvAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvAhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZp,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,Ah'
      End Do 



!-------------- 
!  VZp, hh 
!-------------- 
  Do i2=1,3
Boson4(1) = MVZp 
Boson4(2) = gTVZp 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChiVZpL(iIN,gt1) 
coup2(2) = cplChiChiVZpR(iIN,gt1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFvFvVZpL(gt2,gt3) 
coup2(6) = cplcFvFvVZpR(gt2,gt3) 
coup2(8) = Conjg(cplcFvFvhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvhhR(gt3,gt2,i2)) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: VZp,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='VZp,hh'
      End Do 



!-------------- 
!  conj[Sv], conj[Sv] 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSv(i1) 
Boson4(2) = gTSv(i1) 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt3) 
mass(3) = -MFv(gt2) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplChiFvcSvL(iIN,gt3,i1) 
coup2(2) = cplChiFvcSvR(iIN,gt3,i1) 
coup2(4) = cplChiFvcSvL(iIN,gt3,i2) 
coup2(3) = cplChiFvcSvR(iIN,gt3,i2)  
coup2(5) = cplcFvChiSvL(gt2,gt1,i1) 
coup2(6) = cplcFvChiSvR(gt2,gt1,i1) 
coup2(8) = cplcFvChiSvL(gt2,gt1,i2) 
coup2(7) = cplcFvChiSvR(gt2,gt1,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: conj[Sv],conj[Sv]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sv],conj[Sv]'
        End Do 
      End Do 



!-------------- 
!  conj[Sv], Sv 
!-------------- 
Do i1=1,6
  Do i2=1,6
Boson4(1) = MSv(i1) 
Boson4(2) = gTSv(i1) 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt2) 
mass(4) = MFv(gt3) 
mass(3) = -MChi(gt1) 
 
coup2(1) = cplChiFvcSvL(iIN,gt3,i1) 
coup2(2) = cplChiFvcSvR(iIN,gt3,i1) 
coup2(4) = cplcFvChiSvL(gt2,iIN,i2) 
coup2(3) = cplcFvChiSvR(gt2,iIN,i2)  
coup2(5) = cplcFvChiSvL(gt2,gt1,i1) 
coup2(6) = cplcFvChiSvR(gt2,gt1,i1) 
coup2(8) = cplChiFvcSvL(gt1,gt3,i2) 
coup2(7) = cplChiFvcSvR(gt1,gt3,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: conj[Sv],Sv" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sv],Sv'
        End Do 
      End Do 



!-------------- 
!  conj[Sv], Ah 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSv(i1) 
Boson4(2) = gTSv(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFv(gt3) 
mass(3) = -MFv(gt2) 
 
coup2(1) = cplChiFvcSvL(iIN,gt3,i1) 
coup2(2) = cplChiFvcSvR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFvChiSvL(gt2,gt1,i1) 
coup2(6) = cplcFvChiSvR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcFvFvAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: conj[Sv],Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sv],Ah'
        End Do 
      End Do 



!-------------- 
!  conj[Sv], hh 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSv(i1) 
Boson4(2) = gTSv(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFv(gt3) 
mass(3) = -MFv(gt2) 
 
coup2(1) = cplChiFvcSvL(iIN,gt3,i1) 
coup2(2) = cplChiFvcSvR(iIN,gt3,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFvChiSvL(gt2,gt1,i1) 
coup2(6) = cplcFvChiSvR(gt2,gt1,i1) 
coup2(8) = Conjg(cplcFvFvhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvhhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: conj[Sv],hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sv],hh'
        End Do 
      End Do 



!-------------- 
!  Sv, Sv 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSv(i1) 
Boson4(2) = gTSv(i1) 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt2) 
mass(3) = -MFv(gt3) 
mass(4) = MChi(gt1) 
 
coup2(1) = cplcFvChiSvL(gt2,iIN,i1) 
coup2(2) = cplcFvChiSvR(gt2,iIN,i1) 
coup2(4) = cplcFvChiSvL(gt2,iIN,i2) 
coup2(3) = cplcFvChiSvR(gt2,iIN,i2)  
coup2(5) = cplChiFvcSvL(gt1,gt3,i1) 
coup2(6) = cplChiFvcSvR(gt1,gt3,i1) 
coup2(8) = cplChiFvcSvL(gt1,gt3,i2) 
coup2(7) = cplChiFvcSvR(gt1,gt3,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: Sv,Sv" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Sv,Sv'
        End Do 
      End Do 



!-------------- 
!  Sv, Ah 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSv(i1) 
Boson4(2) = gTSv(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFv(gt2) 
mass(3) = -MFv(gt2) 
 
coup2(1) = cplcFvChiSvL(gt2,iIN,i1) 
coup2(2) = cplcFvChiSvR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplChiFvcSvL(gt1,gt3,i1) 
coup2(6) = cplChiFvcSvR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcFvFvAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvAhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: Sv,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Sv,Ah'
        End Do 
      End Do 



!-------------- 
!  Sv, hh 
!-------------- 
Do i1=1,6
  Do i2=1,3
Boson4(1) = MSv(i1) 
Boson4(2) = gTSv(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(4) = MFv(gt2) 
mass(3) = -MFv(gt2) 
 
coup2(1) = cplcFvChiSvL(gt2,iIN,i1) 
coup2(2) = cplcFvChiSvR(gt2,iIN,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplChiFvcSvL(gt1,gt3,i1) 
coup2(6) = cplChiFvcSvR(gt1,gt3,i1) 
coup2(8) = Conjg(cplcFvFvhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvhhR(gt3,gt2,i2)) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: Sv,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Sv,hh'
        End Do 
      End Do 



!-------------- 
!  Ah, Ah 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = MAh(i2) 
Boson4(4) = gTAh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChiAhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChiAhR(iIN,gt1,i2))  
coup2(5) = cplcFvFvAhL(gt2,gt3,i1) 
coup2(6) = cplcFvFvAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFvFvAhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvAhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: Ah,Ah" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,Ah'
        End Do 
      End Do 



!-------------- 
!  Ah, hh 
!-------------- 
Do i1=1,3
  Do i2=1,3
Boson4(1) = MAh(i1) 
Boson4(2) = gTAh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChiAhL(iIN,gt1,i1) 
coup2(2) = cplChiChiAhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFvFvAhL(gt2,gt3,i1) 
coup2(6) = cplcFvFvAhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFvFvhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvhhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: Ah,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Ah,hh'
        End Do 
      End Do 



!-------------- 
!  hh, hh 
!-------------- 
Do i1=1,2
  Do i2=i1+1,3
Boson4(1) = Mhh(i1) 
Boson4(2) = gThh(i1) 
Boson4(3) = Mhh(i2) 
Boson4(4) = gThh(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MChi(gt1) 
mass(3) = -MFv(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChihhL(iIN,gt1,i1) 
coup2(2) = cplChiChihhR(iIN,gt1,i1) 
coup2(4) = Conjg(cplChiChihhL(iIN,gt1,i2)) 
coup2(3) = Conjg(cplChiChihhR(iIN,gt1,i2))  
coup2(5) = cplcFvFvhhL(gt2,gt3,i1) 
coup2(6) = cplcFvFvhhR(gt2,gt3,i1) 
coup2(8) = Conjg(cplcFvFvhhL(gt3,gt2,i2)) 
coup2(7) = Conjg(cplcFvFvhhR(gt3,gt2,i2)) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Chi cFv Fv Propagator: hh,hh" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='hh,hh'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,gt3,:)= 0._dp  
End If 
       End Do 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1, iIN-1
      Do gt2=1,3
        Do gt3=1,3
g(gt1,gt2,gt3)=Sum(gSum(gt1,gt2,gt3,1:400))
If (g(gt1,gt2,gt3).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,gt3)=0._dp
End If
       End Do 
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToChicFvFv 
 
 
Subroutine ChiToChacFdFu(iIN,MCha,MFd,MFu,MVWm,MHpm,MSu,MSd,MChi,cplcFdChaSuL,        & 
& cplcFdChaSuR,cplcFdChiSdL,cplcFdChiSdR,cplcFdFuHpmL,cplcFdFuHpmR,cplcFdFuVWmL,         & 
& cplcFdFuVWmR,cplChaFucSdL,cplChaFucSdR,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,   & 
& cplChiChacVWmR,cplChiFucSuL,cplChiFucSuR,IntegralSs,IntegralSSss,IntegralSSst,         & 
& IntegralVs,IntegralVSss,IntegralVSst,IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,           & 
& NVSst,NVVss,gTVWm,gTHpm,gTSu,gTSd,deltaM,epsI,check,g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MCha(2),MFd(3),MFu(3),MVWm,MHpm(2),MSu(6),MSd(6),MChi(6)

Complex(dp),Intent(in) :: cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),      & 
& cplcFdFuHpmL(3,3,2),cplcFdFuHpmR(3,3,2),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),           & 
& cplChaFucSdL(2,3,6),cplChaFucSdR(2,3,6),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),   & 
& cplChiChacVWmL(6,2),cplChiChacVWmR(6,2),cplChiFucSuL(6,3,6),cplChiFucSuR(6,3,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10),IntegralVs(25000,9),IntegralVVss(500000,12)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16),IntegralVSss(500000,12),              & 
& IntegralVSst(500000,16)

Real(dp),Intent(inout) :: gTVWm,gTHpm(2),gTSu(6),gTSd(6)

Integer, Intent(inout) :: NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 225 
Allocate( gSum(2,3,3, Isum) ) 
Allocate( Contribution(2,3,3, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1,2
      Do gt2=1,3
        Do gt3=1,3
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MFu(gt3))+Abs(MFd(gt2))+Abs(MCha(gt1)))) Then 
!-------------- 
!  conj[VWm] 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVWm 
Boson2(2) =gTVWm 
 
Boson4(1) = MVWm 
Boson4(2) =gTVWm 
Boson4(3) = MVWm 
Boson4(4) =gTVWm 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MCha(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFu(gt3) 
 
coup(2) = Conjg(cplChiChacVWmL(iIN,gt1)) 
coup(1) = Conjg(cplChiChacVWmR(iIN,gt1)) 
coup(4) = Conjg(cplcFdFuVWmL(gt2,gt3)) 
coup(3) = Conjg(cplcFdFuVWmR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[VWm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm]'



!-------------- 
!  conj[Hpm] 
!-------------- 
Do i1=1,2
Isum = Isum + 1 
Boson2(1) = MHpm(i1) 
Boson2(2) =gTHpm(i1) 
 
Boson4(1) = MHpm(i1) 
Boson4(2) =gTHpm(i1) 
Boson4(3) = MHpm(i1) 
Boson4(4) =gTHpm(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MCha(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFu(gt3) 
 
coup(2) = Conjg(cplChiChacHpmL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChacHpmR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFdFuHpmL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFdFuHpmR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm]'
      End Do 



!-------------- 
!  conj[Su] 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSu(i1) 
Boson2(2) =gTSu(i1) 
 
Boson4(1) = MSu(i1) 
Boson4(2) =gTSu(i1) 
Boson4(3) = MSu(i1) 
Boson4(4) =gTSu(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFu(gt3) 
mass(3) = -MFd(gt2) 
mass(4) = MCha(gt1) 
 
coup(2) = Conjg(cplChiFucSuL(iIN,gt3,i1)) 
coup(1) = Conjg(cplChiFucSuR(iIN,gt3,i1)) 
coup(4) = Conjg(cplcFdChaSuL(gt2,gt1,i1)) 
coup(3) = Conjg(cplcFdChaSuR(gt2,gt1,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Su]'
      End Do 



!-------------- 
!  Sd 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSd(i1) 
Boson2(2) =gTSd(i1) 
 
Boson4(1) = MSd(i1) 
Boson4(2) =gTSd(i1) 
Boson4(3) = MSd(i1) 
Boson4(4) =gTSd(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFd(gt2) 
mass(3) = -MFu(gt3) 
mass(4) = MCha(gt1) 
 
coup(2) = Conjg(cplcFdChiSdL(gt2,iIN,i1)) 
coup(1) = Conjg(cplcFdChiSdR(gt2,iIN,i1)) 
coup(4) = Conjg(cplChaFucSdL(gt1,gt3,i1)) 
coup(3) = Conjg(cplChaFucSdR(gt1,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 3*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Sd'
      End Do 



!-------------- 
!  conj[VWm], conj[Hpm] 
!-------------- 
  Do i2=1,2
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChacVWmL(iIN,gt1) 
coup2(2) = cplChiChacVWmR(iIN,gt1) 
coup2(4) = cplChiChacHpmL(iIN,gt1,i2) 
coup2(3) = cplChiChacHpmR(iIN,gt1,i2)  
coup2(5) = cplcFdFuVWmL(gt2,gt3) 
coup2(6) = cplcFdFuVWmR(gt2,gt3) 
coup2(8) = cplcFdFuHpmL(gt2,gt3,i2) 
coup2(7) = cplcFdFuHpmR(gt2,gt3,i2) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[VWm],conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],conj[Hpm]'
      End Do 



!-------------- 
!  conj[VWm], conj[Su] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt3) 
mass(4) = MCha(gt1) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplChiChacVWmL(iIN,gt1) 
coup2(2) = cplChiChacVWmR(iIN,gt1) 
coup2(4) = cplChiFucSuL(iIN,gt3,i2) 
coup2(3) = cplChiFucSuR(iIN,gt3,i2)  
coup2(5) = cplcFdFuVWmL(gt2,gt3) 
coup2(6) = cplcFdFuVWmR(gt2,gt3) 
coup2(8) = cplcFdChaSuL(gt2,gt1,i2) 
coup2(7) = cplcFdChaSuR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[VWm],conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],conj[Su]'
      End Do 



!-------------- 
!  conj[VWm], Sd 
!-------------- 
  Do i2=1,6
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(4) = MCha(gt1) 
mass(3) = -MFu(gt3) 
 
coup2(1) = cplChiChacVWmL(iIN,gt1) 
coup2(2) = cplChiChacVWmR(iIN,gt1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplcFdFuVWmL(gt2,gt3) 
coup2(6) = cplcFdFuVWmR(gt2,gt3) 
coup2(8) = cplChaFucSdL(gt1,gt3,i2) 
coup2(7) = cplChaFucSdR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[VWm],Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],Sd'
      End Do 



!-------------- 
!  conj[Hpm], conj[Hpm] 
!-------------- 
Do i1=1,1
  Do i2=i1+1,2
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MFu(gt3) 
 
coup2(1) = cplChiChacHpmL(iIN,gt1,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt1,i1) 
coup2(4) = cplChiChacHpmL(iIN,gt1,i2) 
coup2(3) = cplChiChacHpmR(iIN,gt1,i2)  
coup2(5) = cplcFdFuHpmL(gt2,gt3,i1) 
coup2(6) = cplcFdFuHpmR(gt2,gt3,i1) 
coup2(8) = cplcFdFuHpmL(gt2,gt3,i2) 
coup2(7) = cplcFdFuHpmR(gt2,gt3,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[Hpm],conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],conj[Hpm]'
        End Do 
      End Do 



!-------------- 
!  conj[Hpm], conj[Su] 
!-------------- 
Do i1=1,2
  Do i2=1,6
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt3) 
mass(4) = MCha(gt1) 
mass(3) = -MFd(gt2) 
 
coup2(1) = cplChiChacHpmL(iIN,gt1,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt1,i1) 
coup2(4) = cplChiFucSuL(iIN,gt3,i2) 
coup2(3) = cplChiFucSuR(iIN,gt3,i2)  
coup2(5) = cplcFdFuHpmL(gt2,gt3,i1) 
coup2(6) = cplcFdFuHpmR(gt2,gt3,i1) 
coup2(8) = cplcFdChaSuL(gt2,gt1,i2) 
coup2(7) = cplcFdChaSuR(gt2,gt1,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[Hpm],conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],conj[Su]'
        End Do 
      End Do 



!-------------- 
!  conj[Hpm], Sd 
!-------------- 
Do i1=1,2
  Do i2=1,6
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(4) = MCha(gt1) 
mass(3) = -MFu(gt3) 
 
coup2(1) = cplChiChacHpmL(iIN,gt1,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt1,i1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplcFdFuHpmL(gt2,gt3,i1) 
coup2(6) = cplcFdFuHpmR(gt2,gt3,i1) 
coup2(8) = cplChaFucSdL(gt1,gt3,i2) 
coup2(7) = cplChaFucSdR(gt1,gt3,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[Hpm],Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],Sd'
        End Do 
      End Do 



!-------------- 
!  conj[Su], conj[Su] 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt3) 
mass(3) = -MFd(gt2) 
mass(4) = MCha(gt1) 
 
coup2(1) = cplChiFucSuL(iIN,gt3,i1) 
coup2(2) = cplChiFucSuR(iIN,gt3,i1) 
coup2(4) = cplChiFucSuL(iIN,gt3,i2) 
coup2(3) = cplChiFucSuR(iIN,gt3,i2)  
coup2(5) = cplcFdChaSuL(gt2,gt1,i1) 
coup2(6) = cplcFdChaSuR(gt2,gt1,i1) 
coup2(8) = cplcFdChaSuL(gt2,gt1,i2) 
coup2(7) = cplcFdChaSuR(gt2,gt1,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[Su],conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Su],conj[Su]'
        End Do 
      End Do 



!-------------- 
!  conj[Su], Sd 
!-------------- 
Do i1=1,6
  Do i2=1,6
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(4) = MFu(gt3) 
mass(3) = -MCha(gt1) 
 
coup2(1) = cplChiFucSuL(iIN,gt3,i1) 
coup2(2) = cplChiFucSuR(iIN,gt3,i1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplcFdChaSuL(gt2,gt1,i1) 
coup2(6) = cplcFdChaSuR(gt2,gt1,i1) 
coup2(8) = cplChaFucSdL(gt1,gt3,i2) 
coup2(7) = cplChaFucSdR(gt1,gt3,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: conj[Su],Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Su],Sd'
        End Do 
      End Do 



!-------------- 
!  Sd, Sd 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(3) = -MFu(gt3) 
mass(4) = MCha(gt1) 
 
coup2(1) = cplcFdChiSdL(gt2,iIN,i1) 
coup2(2) = cplcFdChiSdR(gt2,iIN,i1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplChaFucSdL(gt1,gt3,i1) 
coup2(6) = cplChaFucSdR(gt1,gt3,i1) 
coup2(8) = cplChaFucSdL(gt1,gt3,i2) 
coup2(7) = cplChaFucSdR(gt1,gt3,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 3*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFd Fu Propagator: Sd,Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Sd,Sd'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,gt3,:)= 0._dp  
End If 
       End Do 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1,2
      Do gt2=1,3
        Do gt3=1,3
g(gt1,gt2,gt3)=Sum(gSum(gt1,gt2,gt3,1:225))
If (g(gt1,gt2,gt3).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,gt3)=0._dp
End If
       End Do 
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToChacFdFu 
 
 
Subroutine ChiToChacFeFv(iIN,MCha,MFe,MFv,MVWm,MHpm,MSv,MSe,MChi,cplcFeChaSvL,        & 
& cplcFeChaSvR,cplcFeChiSeL,cplcFeChiSeR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,         & 
& cplcFeFvVWmR,cplChaFvcSeL,cplChaFvcSeR,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,   & 
& cplChiChacVWmR,cplChiFvcSvL,cplChiFvcSvR,IntegralSs,IntegralSSss,IntegralSSst,         & 
& IntegralVs,IntegralVSss,IntegralVSst,IntegralVVss,NSs,NSSss,NSSst,NVs,NVSss,           & 
& NVSst,NVVss,gTVWm,gTHpm,gTSv,gTSe,deltaM,epsI,check,g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MCha(2),MFe(3),MFv(3),MVWm,MHpm(2),MSv(6),MSe(6),MChi(6)

Complex(dp),Intent(in) :: cplcFeChaSvL(3,2,6),cplcFeChaSvR(3,2,6),cplcFeChiSeL(3,6,6),cplcFeChiSeR(3,6,6),      & 
& cplcFeFvHpmL(3,3,2),cplcFeFvHpmR(3,3,2),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),           & 
& cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),   & 
& cplChiChacVWmL(6,2),cplChiChacVWmR(6,2),cplChiFvcSvL(6,3,6),cplChiFvcSvR(6,3,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10),IntegralVs(25000,9),IntegralVVss(500000,12)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16),IntegralVSss(500000,12),              & 
& IntegralVSst(500000,16)

Real(dp),Intent(inout) :: gTVWm,gTHpm(2),gTSv(6),gTSe(6)

Integer, Intent(inout) :: NSs,NSSss,NSSst,NVs,NVSss,NVSst,NVVss
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 225 
Allocate( gSum(2,3,3, Isum) ) 
Allocate( Contribution(2,3,3, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1,2
      Do gt2=1,3
        Do gt3=1,3
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MFv(gt3))+Abs(MFe(gt2))+Abs(MCha(gt1)))) Then 
!-------------- 
!  conj[VWm] 
!-------------- 
Isum = Isum + 1 
Boson2(1) = MVWm 
Boson2(2) =gTVWm 
 
Boson4(1) = MVWm 
Boson4(2) =gTVWm 
Boson4(3) = MVWm 
Boson4(4) =gTVWm 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MCha(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFv(gt3) 
 
coup(2) = Conjg(cplChiChacVWmL(iIN,gt1)) 
coup(1) = Conjg(cplChiChacVWmR(iIN,gt1)) 
coup(4) = Conjg(cplcFeFvVWmL(gt2,gt3)) 
coup(3) = Conjg(cplcFeFvVWmR(gt2,gt3))
Call IntegrateGaugeSS(Boson2,mass,coup,deltaM,epsI,IntegralVs,NVs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[VWm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm]'



!-------------- 
!  conj[Hpm] 
!-------------- 
Do i1=1,2
Isum = Isum + 1 
Boson2(1) = MHpm(i1) 
Boson2(2) =gTHpm(i1) 
 
Boson4(1) = MHpm(i1) 
Boson4(2) =gTHpm(i1) 
Boson4(3) = MHpm(i1) 
Boson4(4) =gTHpm(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MCha(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFv(gt3) 
 
coup(2) = Conjg(cplChiChacHpmL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiChacHpmR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFeFvHpmL(gt2,gt3,i1)) 
coup(3) = Conjg(cplcFeFvHpmR(gt2,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm]'
      End Do 



!-------------- 
!  conj[Sv] 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSv(i1) 
Boson2(2) =gTSv(i1) 
 
Boson4(1) = MSv(i1) 
Boson4(2) =gTSv(i1) 
Boson4(3) = MSv(i1) 
Boson4(4) =gTSv(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFv(gt3) 
mass(3) = -MFe(gt2) 
mass(4) = MCha(gt1) 
 
coup(2) = Conjg(cplChiFvcSvL(iIN,gt3,i1)) 
coup(1) = Conjg(cplChiFvcSvR(iIN,gt3,i1)) 
coup(4) = Conjg(cplcFeChaSvL(gt2,gt1,i1)) 
coup(3) = Conjg(cplcFeChaSvR(gt2,gt1,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[Sv]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sv]'
      End Do 



!-------------- 
!  Se 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSe(i1) 
Boson2(2) =gTSe(i1) 
 
Boson4(1) = MSe(i1) 
Boson4(2) =gTSe(i1) 
Boson4(3) = MSe(i1) 
Boson4(4) =gTSe(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFe(gt2) 
mass(3) = -MFv(gt3) 
mass(4) = MCha(gt1) 
 
coup(2) = Conjg(cplcFeChiSeL(gt2,iIN,i1)) 
coup(1) = Conjg(cplcFeChiSeR(gt2,iIN,i1)) 
coup(4) = Conjg(cplChaFvcSeL(gt1,gt3,i1)) 
coup(3) = Conjg(cplChaFvcSeR(gt1,gt3,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 1*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp
Else 
gSum(gt1,gt2,gt3,Isum)=resD
End If 
Contribution(gt1,gt2,gt3,Isum)='Se'
      End Do 



!-------------- 
!  conj[VWm], conj[Hpm] 
!-------------- 
  Do i2=1,2
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChacVWmL(iIN,gt1) 
coup2(2) = cplChiChacVWmR(iIN,gt1) 
coup2(4) = cplChiChacHpmL(iIN,gt1,i2) 
coup2(3) = cplChiChacHpmR(iIN,gt1,i2)  
coup2(5) = cplcFeFvVWmL(gt2,gt3) 
coup2(6) = cplcFeFvVWmR(gt2,gt3) 
coup2(8) = cplcFeFvHpmL(gt2,gt3,i2) 
coup2(7) = cplcFeFvHpmR(gt2,gt3,i2) 
Call IntegrateGaugeSscalarS(Boson4, mass, coup2, deltaM, epsI,IntegralVSss,NVSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[VWm],conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],conj[Hpm]'
      End Do 



!-------------- 
!  conj[VWm], conj[Sv] 
!-------------- 
  Do i2=1,6
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt3) 
mass(4) = MCha(gt1) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplChiChacVWmL(iIN,gt1) 
coup2(2) = cplChiChacVWmR(iIN,gt1) 
coup2(4) = cplChiFvcSvL(iIN,gt3,i2) 
coup2(3) = cplChiFvcSvR(iIN,gt3,i2)  
coup2(5) = cplcFeFvVWmL(gt2,gt3) 
coup2(6) = cplcFeFvVWmR(gt2,gt3) 
coup2(8) = cplcFeChaSvL(gt2,gt1,i2) 
coup2(7) = cplcFeChaSvR(gt2,gt1,i2) 
coupT = coup2(5) 
coup2(5) = coup2(6) 
coup2(6) = coupT 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[VWm],conj[Sv]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],conj[Sv]'
      End Do 



!-------------- 
!  conj[VWm], Se 
!-------------- 
  Do i2=1,6
Boson4(1) = MVWm 
Boson4(2) = gTVWm 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt2) 
mass(4) = MCha(gt1) 
mass(3) = -MFv(gt3) 
 
coup2(1) = cplChiChacVWmL(iIN,gt1) 
coup2(2) = cplChiChacVWmR(iIN,gt1) 
coup2(4) = cplcFeChiSeL(gt2,iIN,i2) 
coup2(3) = cplcFeChiSeR(gt2,iIN,i2)  
coup2(5) = cplcFeFvVWmL(gt2,gt3) 
coup2(6) = cplcFeFvVWmR(gt2,gt3) 
coup2(8) = cplChaFvcSeL(gt1,gt3,i2) 
coup2(7) = cplChaFvcSeR(gt1,gt3,i2) 
Call IntegrateGaugeSscalarT(Boson4, mass, coup2, deltaM, epsI,IntegralVSst,NVSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[VWm],Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[VWm],Se'
      End Do 



!-------------- 
!  conj[Hpm], conj[Hpm] 
!-------------- 
Do i1=1,1
  Do i2=i1+1,2
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MHpm(i2) 
Boson4(4) = gTHpm(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MCha(gt1) 
mass(3) = -MFe(gt2) 
mass(4) = MFv(gt3) 
 
coup2(1) = cplChiChacHpmL(iIN,gt1,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt1,i1) 
coup2(4) = cplChiChacHpmL(iIN,gt1,i2) 
coup2(3) = cplChiChacHpmR(iIN,gt1,i2)  
coup2(5) = cplcFeFvHpmL(gt2,gt3,i1) 
coup2(6) = cplcFeFvHpmR(gt2,gt3,i1) 
coup2(8) = cplcFeFvHpmL(gt2,gt3,i2) 
coup2(7) = cplcFeFvHpmR(gt2,gt3,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[Hpm],conj[Hpm]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],conj[Hpm]'
        End Do 
      End Do 



!-------------- 
!  conj[Hpm], conj[Sv] 
!-------------- 
Do i1=1,2
  Do i2=1,6
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt3) 
mass(4) = MCha(gt1) 
mass(3) = -MFe(gt2) 
 
coup2(1) = cplChiChacHpmL(iIN,gt1,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt1,i1) 
coup2(4) = cplChiFvcSvL(iIN,gt3,i2) 
coup2(3) = cplChiFvcSvR(iIN,gt3,i2)  
coup2(5) = cplcFeFvHpmL(gt2,gt3,i1) 
coup2(6) = cplcFeFvHpmR(gt2,gt3,i1) 
coup2(8) = cplcFeChaSvL(gt2,gt1,i2) 
coup2(7) = cplcFeChaSvR(gt2,gt1,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[Hpm],conj[Sv]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],conj[Sv]'
        End Do 
      End Do 



!-------------- 
!  conj[Hpm], Se 
!-------------- 
Do i1=1,2
  Do i2=1,6
Boson4(1) = MHpm(i1) 
Boson4(2) = gTHpm(i1) 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt2) 
mass(4) = MCha(gt1) 
mass(3) = -MFv(gt3) 
 
coup2(1) = cplChiChacHpmL(iIN,gt1,i1) 
coup2(2) = cplChiChacHpmR(iIN,gt1,i1) 
coup2(4) = cplcFeChiSeL(gt2,iIN,i2) 
coup2(3) = cplcFeChiSeR(gt2,iIN,i2)  
coup2(5) = cplcFeFvHpmL(gt2,gt3,i1) 
coup2(6) = cplcFeFvHpmR(gt2,gt3,i1) 
coup2(8) = cplChaFvcSeL(gt1,gt3,i2) 
coup2(7) = cplChaFvcSeR(gt1,gt3,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[Hpm],Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Hpm],Se'
        End Do 
      End Do 



!-------------- 
!  conj[Sv], conj[Sv] 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSv(i1) 
Boson4(2) = gTSv(i1) 
Boson4(3) = MSv(i2) 
Boson4(4) = gTSv(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFv(gt3) 
mass(3) = -MFe(gt2) 
mass(4) = MCha(gt1) 
 
coup2(1) = cplChiFvcSvL(iIN,gt3,i1) 
coup2(2) = cplChiFvcSvR(iIN,gt3,i1) 
coup2(4) = cplChiFvcSvL(iIN,gt3,i2) 
coup2(3) = cplChiFvcSvR(iIN,gt3,i2)  
coup2(5) = cplcFeChaSvL(gt2,gt1,i1) 
coup2(6) = cplcFeChaSvR(gt2,gt1,i1) 
coup2(8) = cplcFeChaSvL(gt2,gt1,i2) 
coup2(7) = cplcFeChaSvR(gt2,gt1,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[Sv],conj[Sv]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sv],conj[Sv]'
        End Do 
      End Do 



!-------------- 
!  conj[Sv], Se 
!-------------- 
Do i1=1,6
  Do i2=1,6
Boson4(1) = MSv(i1) 
Boson4(2) = gTSv(i1) 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt2) 
mass(4) = MFv(gt3) 
mass(3) = -MCha(gt1) 
 
coup2(1) = cplChiFvcSvL(iIN,gt3,i1) 
coup2(2) = cplChiFvcSvR(iIN,gt3,i1) 
coup2(4) = cplcFeChiSeL(gt2,iIN,i2) 
coup2(3) = cplcFeChiSeR(gt2,iIN,i2)  
coup2(5) = cplcFeChaSvL(gt2,gt1,i1) 
coup2(6) = cplcFeChaSvR(gt2,gt1,i1) 
coup2(8) = cplChaFvcSeL(gt1,gt3,i2) 
coup2(7) = cplChaFvcSeR(gt1,gt3,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: conj[Sv],Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='conj[Sv],Se'
        End Do 
      End Do 



!-------------- 
!  Se, Se 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSe(i1) 
Boson4(2) = gTSe(i1) 
Boson4(3) = MSe(i2) 
Boson4(4) = gTSe(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFe(gt2) 
mass(3) = -MFv(gt3) 
mass(4) = MCha(gt1) 
 
coup2(1) = cplcFeChiSeL(gt2,iIN,i1) 
coup2(2) = cplcFeChiSeR(gt2,iIN,i1) 
coup2(4) = cplcFeChiSeL(gt2,iIN,i2) 
coup2(3) = cplcFeChiSeR(gt2,iIN,i2)  
coup2(5) = cplChaFvcSeL(gt1,gt3,i1) 
coup2(6) = cplChaFvcSeR(gt1,gt3,i1) 
coup2(8) = cplChaFvcSeL(gt1,gt3,i2) 
coup2(7) = cplChaFvcSeR(gt1,gt3,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 1*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Cha cFe Fv Propagator: Se,Se" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,gt3,Isum)= 0._dp  
Else 
gSum(gt1,gt2,gt3,Isum)= resS  
End If 
Contribution(gt1,gt2,gt3,Isum)='Se,Se'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,gt3,:)= 0._dp  
End If 
       End Do 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1,2
      Do gt2=1,3
        Do gt3=1,3
g(gt1,gt2,gt3)=Sum(gSum(gt1,gt2,gt3,1:225))
If (g(gt1,gt2,gt3).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,gt3)=0._dp
End If
       End Do 
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToChacFeFv 
 
 
Subroutine ChiToFdcFdGlu(iIN,MFd,MGlu,MSd,MChi,cplcFdChiSdL,cplcFdChiSdR,             & 
& cplcFdGluSdL,cplcFdGluSdR,cplChiFdcSdL,cplChiFdcSdR,cplGluFdcSdL,cplGluFdcSdR,         & 
& IntegralSs,IntegralSSss,IntegralSSst,NSs,NSSss,NSSst,gTSd,deltaM,epsI,check,           & 
& g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MFd(3),MGlu,MSd(6),MChi(6)

Complex(dp),Intent(in) :: cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFdGluSdL(3,6),cplcFdGluSdR(3,6),          & 
& cplChiFdcSdL(6,3,6),cplChiFdcSdR(6,3,6),cplGluFdcSdL(3,6),cplGluFdcSdR(3,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16)

Real(dp),Intent(inout) :: gTSd(6)

Integer, Intent(inout) :: NSs,NSSss,NSSst
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 144 
Allocate( gSum(3,3,1, Isum) ) 
Allocate( Contribution(3,3,1, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1,3
      Do gt2=1,3
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MGlu)+Abs(MFd(gt2))+Abs(MFd(gt1)))) Then 
!-------------- 
!  conj[Sd] 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSd(i1) 
Boson2(2) =gTSd(i1) 
 
Boson4(1) = MSd(i1) 
Boson4(2) =gTSd(i1) 
Boson4(3) = MSd(i1) 
Boson4(4) =gTSd(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFd(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MGlu 
 
coup(2) = Conjg(cplChiFdcSdL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiFdcSdR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFdGluSdL(gt2,i1)) 
coup(3) = Conjg(cplcFdGluSdR(gt2,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 4*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fd cFd Glu Propagator: conj[Sd]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp
Else 
gSum(gt1,gt2,1,Isum)=resD
End If 
Contribution(gt1,gt2,1,Isum)='conj[Sd]'
      End Do 



!-------------- 
!  Sd 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSd(i1) 
Boson2(2) =gTSd(i1) 
 
Boson4(1) = MSd(i1) 
Boson4(2) =gTSd(i1) 
Boson4(3) = MSd(i1) 
Boson4(4) =gTSd(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFd(gt2) 
mass(3) = -MGlu 
mass(4) = MFd(gt1) 
 
coup(2) = Conjg(cplcFdChiSdL(gt2,iIN,i1)) 
coup(1) = Conjg(cplcFdChiSdR(gt2,iIN,i1)) 
coup(4) = Conjg(cplGluFdcSdL(gt1,i1)) 
coup(3) = Conjg(cplGluFdcSdR(gt1,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 4*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fd cFd Glu Propagator: Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp
Else 
gSum(gt1,gt2,1,Isum)=resD
End If 
Contribution(gt1,gt2,1,Isum)='Sd'
      End Do 



!-------------- 
!  conj[Sd], conj[Sd] 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt1) 
mass(3) = -MFd(gt2) 
mass(4) = MGlu 
 
coup2(1) = cplChiFdcSdL(iIN,gt1,i1) 
coup2(2) = cplChiFdcSdR(iIN,gt1,i1) 
coup2(4) = cplChiFdcSdL(iIN,gt1,i2) 
coup2(3) = cplChiFdcSdR(iIN,gt1,i2)  
coup2(5) = cplcFdGluSdL(gt2,i1) 
coup2(6) = cplcFdGluSdR(gt2,i1) 
coup2(8) = cplcFdGluSdL(gt2,i2) 
coup2(7) = cplcFdGluSdR(gt2,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 4*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fd cFd Glu Propagator: conj[Sd],conj[Sd]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp  
Else 
gSum(gt1,gt2,1,Isum)= resS  
End If 
Contribution(gt1,gt2,1,Isum)='conj[Sd],conj[Sd]'
        End Do 
      End Do 



!-------------- 
!  conj[Sd], Sd 
!-------------- 
Do i1=1,6
  Do i2=1,6
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(4) = MFd(gt1) 
mass(3) = -MGlu 
 
coup2(1) = cplChiFdcSdL(iIN,gt1,i1) 
coup2(2) = cplChiFdcSdR(iIN,gt1,i1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplcFdGluSdL(gt2,i1) 
coup2(6) = cplcFdGluSdR(gt2,i1) 
coup2(8) = cplGluFdcSdL(gt1,i2) 
coup2(7) = cplGluFdcSdR(gt1,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 4*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fd cFd Glu Propagator: conj[Sd],Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp  
Else 
gSum(gt1,gt2,1,Isum)= resS  
End If 
Contribution(gt1,gt2,1,Isum)='conj[Sd],Sd'
        End Do 
      End Do 



!-------------- 
!  Sd, Sd 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSd(i1) 
Boson4(2) = gTSd(i1) 
Boson4(3) = MSd(i2) 
Boson4(4) = gTSd(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFd(gt2) 
mass(3) = -MGlu 
mass(4) = MFd(gt1) 
 
coup2(1) = cplcFdChiSdL(gt2,iIN,i1) 
coup2(2) = cplcFdChiSdR(gt2,iIN,i1) 
coup2(4) = cplcFdChiSdL(gt2,iIN,i2) 
coup2(3) = cplcFdChiSdR(gt2,iIN,i2)  
coup2(5) = cplGluFdcSdL(gt1,i1) 
coup2(6) = cplGluFdcSdR(gt1,i1) 
coup2(8) = cplGluFdcSdL(gt1,i2) 
coup2(7) = cplGluFdcSdR(gt1,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 4*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fd cFd Glu Propagator: Sd,Sd" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp  
Else 
gSum(gt1,gt2,1,Isum)= resS  
End If 
Contribution(gt1,gt2,1,Isum)='Sd,Sd'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,1,:)= 0._dp  
End If 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1,3
      Do gt2=1,3
g(gt1,gt2,1)=Sum(gSum(gt1,gt2,1,1:144))
If (g(gt1,gt2,1).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,1)=0._dp
End If
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToFdcFdGlu 
 
 
Subroutine ChiToFucFuGlu(iIN,MFu,MGlu,MSu,MChi,cplcFuChiSuL,cplcFuChiSuR,             & 
& cplcFuGluSuL,cplcFuGluSuR,cplChiFucSuL,cplChiFucSuR,cplGluFucSuL,cplGluFucSuR,         & 
& IntegralSs,IntegralSSss,IntegralSSst,NSs,NSSss,NSSst,gTSu,deltaM,epsI,check,           & 
& g,WriteContributions)

Implicit None 
 
Real(dp),Intent(in) :: MFu(3),MGlu,MSu(6),MChi(6)

Complex(dp),Intent(in) :: cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFuGluSuL(3,6),cplcFuGluSuR(3,6),          & 
& cplChiFucSuL(6,3,6),cplChiFucSuR(6,3,6),cplGluFucSuL(3,6),cplGluFucSuR(3,6)

Real(dp),Intent(inout) :: IntegralSs(500000,10)

Complex(dp),Intent(inout) :: IntegralSSss(500000,12),IntegralSSst(500000,16)

Real(dp),Intent(inout) :: gTSu(6)

Integer, Intent(inout) :: NSs,NSSss,NSSst
Real(dp),Intent(inout)::g(:,:,:) 
Logical, Intent(in) :: check 
Integer, Intent(in) :: iIN 
Real(dp), Intent(in) :: epsI, deltaM 
Logical, Optional :: WriteContributions 
Integer :: i1,i2,gt1,gt2,gt3, Isum 
Real(dp) :: resR,  res1, res2, resD, m_in 
Complex(dp) :: resC, resS 
Real(dp), Allocatable :: gSum(:,:,:,:) 
Character(len=20), Allocatable :: Contribution(:,:,:,:) 
Real(dp) :: Boson2(2), mass(4),  Boson4(4) 
Complex(dp) :: coup(4), coup2(8),coupT 
mass(1) = MChi(iIN) 
 
Isum = 144 
Allocate( gSum(3,3,1, Isum) ) 
Allocate( Contribution(3,3,1, Isum) ) 
gSum = 0._dp  
Contribution = ' ' 
 
Isum = 0 
 
    Do gt1=1,3
      Do gt2=1,3
Isum = 0 
 
If(Abs(MChi(iIN)).gt.(Abs(MGlu)+Abs(MFu(gt2))+Abs(MFu(gt1)))) Then 
!-------------- 
!  conj[Su] 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSu(i1) 
Boson2(2) =gTSu(i1) 
 
Boson4(1) = MSu(i1) 
Boson4(2) =gTSu(i1) 
Boson4(3) = MSu(i1) 
Boson4(4) =gTSu(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFu(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MGlu 
 
coup(2) = Conjg(cplChiFucSuL(iIN,gt1,i1)) 
coup(1) = Conjg(cplChiFucSuR(iIN,gt1,i1)) 
coup(4) = Conjg(cplcFuGluSuL(gt2,i1)) 
coup(3) = Conjg(cplcFuGluSuR(gt2,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 4*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fu cFu Glu Propagator: conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp
Else 
gSum(gt1,gt2,1,Isum)=resD
End If 
Contribution(gt1,gt2,1,Isum)='conj[Su]'
      End Do 



!-------------- 
!  Su 
!-------------- 
Do i1=1,6
Isum = Isum + 1 
Boson2(1) = MSu(i1) 
Boson2(2) =gTSu(i1) 
 
Boson4(1) = MSu(i1) 
Boson4(2) =gTSu(i1) 
Boson4(3) = MSu(i1) 
Boson4(4) =gTSu(i1) 
 
resS=0._dp 
resD=0._dp 
 
mass(2) = MFu(gt2) 
mass(3) = -MGlu 
mass(4) = MFu(gt1) 
 
coup(2) = Conjg(cplcFuChiSuL(gt2,iIN,i1)) 
coup(1) = Conjg(cplcFuChiSuR(gt2,iIN,i1)) 
coup(4) = Conjg(cplGluFucSuL(gt1,i1)) 
coup(3) = Conjg(cplGluFucSuR(gt1,i1))
Call IntegrateScalarSS(Boson2,mass,coup,deltaM,epsI,IntegralSs,NSs,resR, check) 
resR= 4*resR ! color factor 
resS = resS + resR 
 
 resD = resD + resS 
If (resD.ne.resD) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fu cFu Glu Propagator: Su" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp
Else 
gSum(gt1,gt2,1,Isum)=resD
End If 
Contribution(gt1,gt2,1,Isum)='Su'
      End Do 



!-------------- 
!  conj[Su], conj[Su] 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt1) 
mass(3) = -MFu(gt2) 
mass(4) = MGlu 
 
coup2(1) = cplChiFucSuL(iIN,gt1,i1) 
coup2(2) = cplChiFucSuR(iIN,gt1,i1) 
coup2(4) = cplChiFucSuL(iIN,gt1,i2) 
coup2(3) = cplChiFucSuR(iIN,gt1,i2)  
coup2(5) = cplcFuGluSuL(gt2,i1) 
coup2(6) = cplcFuGluSuR(gt2,i1) 
coup2(8) = cplcFuGluSuL(gt2,i2) 
coup2(7) = cplcFuGluSuR(gt2,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 4*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fu cFu Glu Propagator: conj[Su],conj[Su]" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp  
Else 
gSum(gt1,gt2,1,Isum)= resS  
End If 
Contribution(gt1,gt2,1,Isum)='conj[Su],conj[Su]'
        End Do 
      End Do 



!-------------- 
!  conj[Su], Su 
!-------------- 
Do i1=1,6
  Do i2=1,6
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt2) 
mass(4) = MFu(gt1) 
mass(3) = -MGlu 
 
coup2(1) = cplChiFucSuL(iIN,gt1,i1) 
coup2(2) = cplChiFucSuR(iIN,gt1,i1) 
coup2(4) = cplcFuChiSuL(gt2,iIN,i2) 
coup2(3) = cplcFuChiSuR(gt2,iIN,i2)  
coup2(5) = cplcFuGluSuL(gt2,i1) 
coup2(6) = cplcFuGluSuR(gt2,i1) 
coup2(8) = cplGluFucSuL(gt1,i2) 
coup2(7) = cplGluFucSuR(gt1,i2) 
Call IntegrateScalarST(Boson4, mass, coup2, deltaM, epsI,IntegralSSst,NSSst, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = -2._dp*resC 
resC= 4*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fu cFu Glu Propagator: conj[Su],Su" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp  
Else 
gSum(gt1,gt2,1,Isum)= resS  
End If 
Contribution(gt1,gt2,1,Isum)='conj[Su],Su'
        End Do 
      End Do 



!-------------- 
!  Su, Su 
!-------------- 
Do i1=1,5
  Do i2=i1+1,6
Boson4(1) = MSu(i1) 
Boson4(2) = gTSu(i1) 
Boson4(3) = MSu(i2) 
Boson4(4) = gTSu(i2) 
Isum = Isum + 1 
 
resS = 0._dp 
mass(2) = MFu(gt2) 
mass(3) = -MGlu 
mass(4) = MFu(gt1) 
 
coup2(1) = cplcFuChiSuL(gt2,iIN,i1) 
coup2(2) = cplcFuChiSuR(gt2,iIN,i1) 
coup2(4) = cplcFuChiSuL(gt2,iIN,i2) 
coup2(3) = cplcFuChiSuR(gt2,iIN,i2)  
coup2(5) = cplGluFucSuL(gt1,i1) 
coup2(6) = cplGluFucSuR(gt1,i1) 
coup2(8) = cplGluFucSuL(gt1,i2) 
coup2(7) = cplGluFucSuR(gt1,i2) 
Call IntegrateScalarS1S2(Boson4, mass, coup2, deltaM, epsI,IntegralSSss,NSSss, resC, check) 
If (resC.ne.resC) resC = 0._dp
resC = 2._dp*resC 
resC= 4*resC ! color factor 
resS = resS + resC 
If (resS.ne.resS) Then 
Write(*,*) "NaN appearing in the following diagrams: " 
Write(*,*) "Chi->Fu cFu Glu Propagator: Su,Su" 
Write(*,*)  "M_in: ",m_in 
Write(*,*)  "mass: ",mass 
Write(*,*)  "coup: ",coup 
gSum(gt1,gt2,1,Isum)= 0._dp  
Else 
gSum(gt1,gt2,1,Isum)= resS  
End If 
Contribution(gt1,gt2,1,Isum)='Su,Su'
        End Do 
      End Do 



Else 
gSum(gt1,gt2,1,:)= 0._dp  
End If 
     End Do 
   End Do 
!---------- 
!Summing 
!---------- 
g=0._dp 
    Do gt1=1,3
      Do gt2=1,3
g(gt1,gt2,1)=Sum(gSum(gt1,gt2,1,1:144))
If (g(gt1,gt2,1).Lt.0._dp) Then
  Write (ErrCan,*)'Error in Subroutine'//NameOfUnit(Iname)
  g(gt1,gt2,1)=0._dp
End If
     End Do 
   End Do 
  g = oo512pi3 / Abs(MChi(iIN))**3*g
End Subroutine ChiToFucFuGlu 
 
 
End Module Chi3Decays_NonUMSSMv4 
 
