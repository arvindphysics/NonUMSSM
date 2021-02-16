! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 5:14 on 15.11.2020   
! ----------------------------------------------------------------------  
 
 
Module BranchingRatios_SplitUMSSM 
 
Use Control 
Use Settings 
Use Couplings_SplitUMSSM 
Use Model_Data_SplitUMSSM 
Use LoopCouplings_SplitUMSSM 
Use Glu3Decays_SplitUMSSM 
Use Chi3Decays_SplitUMSSM 
Use Cha3Decays_SplitUMSSM 
Use Sd3Decays_SplitUMSSM 
Use Su3Decays_SplitUMSSM 
Use Se3Decays_SplitUMSSM 
Use Sv3Decays_SplitUMSSM 
Use TreeLevelDecays_SplitUMSSM 


 Contains 
 
Subroutine CalculateBR(CTBD,fac3,epsI,deltaM,kont,MAh,MAh2,MCha,MCha2,MChi,           & 
& MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,              & 
& MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,              & 
& TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,           & 
& vd,vu,vS,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,            & 
& mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,gPSd,gTSd,BRSd,gPSu,gTSu,               & 
& BRSu,gPSe,gTSe,BRSe,gPSv,gTSv,BRSv,gPhh,gThh,BRhh,gPAh,gTAh,BRAh,gPHpm,gTHpm,          & 
& BRHpm,gPVZp,gTVZp,BRVZp,gPGlu,gTGlu,BRGlu,gPChi,gTChi,BRChi,gPCha,gTCha,               & 
& BRCha,gPFu,gTFu,BRFu)

Real(dp), Intent(in) :: epsI, deltaM, fac3 
Integer, Intent(inout) :: kont 
Logical, Intent(in) :: CTBD 
Real(dp),Intent(inout) :: g1,g2,g3,gp,lam,Tlam,ml42,mHd2,mHu2,me42,ms2

Complex(dp),Intent(inout) :: Yd(3,3),y1,y2(2,2),Yu(3,3),Td(3,3),Ty1,Ty2(2,2),Tu(3,3),mq2(3,3),ml92(2,2),           & 
& md2(3,3),mu2(3,3),me92(2,2),M1,M2,M3,M4,Tdp(3,3),Tep(2,2)

Real(dp),Intent(in) :: MAh(3),MAh2(3),MCha(2),MCha2(2),MChi(6),MChi2(6),MFd(3),MFd2(3),MFe(3),               & 
& MFe2(3),MFu(3),MFu2(3),MFv(3),MFv2(3),MGlu,MGlu2,Mhh(3),Mhh2(3),MHpm(2),               & 
& MHpm2(2),MSd(6),MSd2(6),MSe(6),MSe2(6),MSu(6),MSu2(6),MSv(3),MSv2(3),MVWm,             & 
& MVWm2,MVZ,MVZ2,MVZp,MVZp2,TW,TWp,v,ZP(2,2),ZZ(3,3),betaH

Complex(dp),Intent(in) :: pG,UM(2,2),UP(2,2),ZA(3,3),ZD(6,6),ZDL(3,3),ZDR(3,3),ZE(6,6),ZEL(3,3),ZER(3,3),       & 
& ZH(3,3),ZN(6,6),ZU(6,6),ZUL(3,3),ZUR(3,3),ZV(3,3),ZVL(3,3),ZW(2,2)

Real(dp),Intent(inout) :: vd,vu,vS

Real(dp),Intent(inout) :: gPSd(6,1344),gTSd(6),BRSd(6,1344),gPSu(6,1344),gTSu(6),BRSu(6,1344),gPSe(6,1221),     & 
& gTSe(6),BRSe(6,1221),gPSv(3,1068),gTSv(3),BRSv(3,1068),gPhh(3,188),gThh(3),            & 
& BRhh(3,188),gPAh(3,173),gTAh(3),BRAh(3,173),gPHpm(2,96),gTHpm(2),BRHpm(2,96),          & 
& gPVZp(1,190),gTVZp,BRVZp(1,190),gPGlu(1,162),gTGlu,BRGlu(1,162),gPChi(6,613),          & 
& gTChi(6),BRChi(6,613),gPCha(2,356),gTCha(2),BRCha(2,356),gPFu(3,78),gTFu(3),           & 
& BRFu(3,78)

Complex(dp) :: cplHiggsPP(3),cplHiggsGG(3),cplPseudoHiggsPP(3),cplPseudoHiggsGG(3),cplHiggsZZvirt(3),& 
& cplHiggsWWvirt(3)

Real(dp) :: gGluFdcFdChi(1,3,3,6),gGluFdcFucCha(1,3,3,2),gGluFucFuChi(1,3,3,6),gChiChicChaCha(6,6,2,2),& 
& gChiChiChiChi(6,6,6,6),gChiChicFdFd(6,6,3,3),gChiChicFeFe(6,6,3,3),gChiChicFuFu(6,6,3,3),& 
& gChiChacFdFu(6,2,3,3),gChiChacFeFv(6,2,3,3),gChiChicFvFv(6,6,3,3),gChiFdcFdGlu(6,3,3,1),& 
& gChiFucFuGlu(6,3,3,1),gChaChacChaCha(2,2,2,2),gChaChaChiChi(2,2,6,6),gChaChacFdFd(2,2,3,3),& 
& gChaChacFeFe(2,2,3,3),gChaChacFuFu(2,2,3,3),gChaChacFvFv(2,2,3,3),gChaChicFuFd(2,6,3,3),& 
& gChaChicFvFe(2,6,3,3),gChaFdcFuGlu(2,3,3,1),gSdAhChaFu(6,3,2,3),gSdAhChiFd(6,3,6,3),   & 
& gSdAhFdGlu(6,3,3,1),gSdSuChaChi(6,6,2,6),gSdChaFdcHpm(6,2,3,2),gSdhhChaFu(6,3,2,3),    & 
& gSdChaGluSu(6,2,1,6),gSdSdChacCha(6,6,2,2),gSdSdChiChi(6,6,6,6),gSdhhChiFd(6,3,6,3),   & 
& gSdHpmChiFu(6,2,6,3),gSdChiGluSd(6,6,1,6),gSdFdFdcSd(6,3,3,6),gSdFdFecSe(6,3,3,6),     & 
& gSdFuFdcSu(6,3,3,6),gSdFdFvcSv(6,3,3,3),gSdHpmFdcCha(6,2,3,2),gSdSdFdcFd(6,6,3,3),     & 
& gSdFdSecFe(6,3,6,3),gSdSuFdcFu(6,6,3,3),gSdFdSvcFv(6,3,3,3),gSdFuFecSv(6,3,3,3),       & 
& gSdSdFucFu(6,6,3,3),gSdFuSecFv(6,3,6,3),gSdhhFdGlu(6,3,3,1),gSdHpmFuGlu(6,2,3,1),      & 
& gSdGluGluSd(6,1,1,6),gSdSdFecFe(6,6,3,3),gSdSdFvcFv(6,6,3,3),gSdSuFecFv(6,6,3,3),      & 
& gSuAhChiFu(6,3,6,3),gSuAhFdcCha(6,3,3,2),gSuAhFuGlu(6,3,3,1),gSuSuChiChi(6,6,6,6),     & 
& gSucHpmChiFd(6,2,6,3),gSuhhChiFu(6,3,6,3),gSuChiGluSu(6,6,1,6),gSuSdChicCha(6,6,6,2),  & 
& gSuFdFucSd(6,3,3,6),gSuFdFvcSe(6,3,3,6),gSuhhFdcCha(6,3,3,2),gSuSuFdcFd(6,6,3,3),      & 
& gSuFdSvcFe(6,3,3,3),gSucHpmChaFu(6,2,2,3),gSuFuFecSe(6,3,3,6),gSuFuFucSu(6,3,3,6),     & 
& gSuFuFvcSv(6,3,3,3),gSucChaFuHpm(6,2,3,2),gSuSdFucFd(6,6,3,3),gSuFuSecFe(6,3,6,3),     & 
& gSuSuFucFu(6,6,3,3),gSuFuSvcFv(6,3,3,3),gSucHpmFdGlu(6,2,3,1),gSuhhFuGlu(6,3,3,1),     & 
& gSuGluGluSu(6,1,1,6),gSuGluSdcCha(6,1,6,2),gSuSdFvcFe(6,6,3,3),gSuSuChacCha(6,6,2,2),  & 
& gSuSuFecFe(6,6,3,3),gSuSuFvcFv(6,6,3,3),gSeAhChaFv(6,3,2,3),gSeAhChiFe(6,3,6,3),       & 
& gSeSvChaChi(6,3,2,6),gSeChaFecHpm(6,2,3,2),gSeSeChacCha(6,6,2,2),gSeSeChiChi(6,6,6,6), & 
& gSehhChiFe(6,3,6,3),gSeHpmChiFv(6,2,6,3),gSeFeFdcSd(6,3,3,6),gSeFeFecSe(6,3,3,6),      & 
& gSeFeFucSu(6,3,3,6),gSeFvFecSv(6,3,3,3),gSeHpmFecCha(6,2,3,2),gSeFeSdcFd(6,3,6,3),     & 
& gSeSeFecFe(6,6,3,3),gSeFeSucFu(6,3,6,3),gSeSvFecFv(6,3,3,3),gSehhChaFv(6,3,2,3),       & 
& gSeFvFdcSu(6,3,3,6),gSeFvSdcFu(6,3,6,3),gSeSeFvcFv(6,6,3,3),gSeSeFdcFd(6,6,3,3),       & 
& gSeSeFucFu(6,6,3,3),gSeSvFdcFu(6,3,3,3),gSvSvChiChi(3,3,6,6),gSvcHpmChiFe(3,2,6,3),    & 
& gSvSeChicCha(3,6,6,2),gSvFeAhcCha(3,3,3,2),gSvFeFucSd(3,3,3,6),gSvFeFvcSe(3,3,3,6),    & 
& gSvhhFecCha(3,3,3,2),gSvFeSucFd(3,3,6,3),gSvSvFecFe(3,3,3,3),gSvFvAhChi(3,3,3,6),      & 
& gSvcHpmChaFv(3,2,2,3),gSvhhChiFv(3,3,6,3),gSvFvFdcSd(3,3,3,6),gSvFvFucSu(3,3,3,6),     & 
& gSvFvFvcSv(3,3,3,3),gSvcChaFvHpm(3,2,3,2),gSvFvSdcFd(3,3,6,3),gSvSeFvcFe(3,6,3,3),     & 
& gSvFvSucFu(3,3,6,3),gSvSvFvcFv(3,3,3,3),gSvSeFucFd(3,6,3,3),gSvSvChacCha(3,3,2,2),     & 
& gSvSvFdcFd(3,3,3,3),gSvSvFucFu(3,3,3,3)

Complex(dp) :: coup 
Real(dp) :: vev 
Real(dp) :: gTVZ,gTVWm

Iname = Iname + 1 
NameOfUnit(Iname) = 'CalculateBR'
 
Write(*,*) "Calculating branching ratios and decay widths" 
gTVWm = gamW 
gTVZ = gamZ 
gPSd = 0._dp 
gTSd = 0._dp 
BRSd = 0._dp 
Call SdTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,            & 
& MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,               & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPSd(:,1:75),gTSd,BRSd(:,1:75))

Do i1=1,6
gTSd(i1) =Sum(gPSd(i1,:)) 
If (gTSd(i1).Gt.0._dp) BRSd(i1,: ) =gPSd(i1,:)/gTSd(i1) 
End Do 
 

gPSu = 0._dp 
gTSu = 0._dp 
BRSu = 0._dp 
Call SuTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,            & 
& MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,               & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPSu(:,1:75),gTSu,BRSu(:,1:75))

Do i1=1,6
gTSu(i1) =Sum(gPSu(i1,:)) 
If (gTSu(i1).Gt.0._dp) BRSu(i1,: ) =gPSu(i1,:)/gTSu(i1) 
End Do 
 

gPSe = 0._dp 
gTSe = 0._dp 
BRSe = 0._dp 
Call SeTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,            & 
& MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,               & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPSe(:,1:66),gTSe,BRSe(:,1:66))

Do i1=1,6
gTSe(i1) =Sum(gPSe(i1,:)) 
If (gTSe(i1).Gt.0._dp) BRSe(i1,: ) =gPSe(i1,:)/gTSe(i1) 
End Do 
 

gPSv = 0._dp 
gTSv = 0._dp 
BRSv = 0._dp 
Call SvTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,            & 
& MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,               & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPSv(:,1:51),gTSv,BRSv(:,1:51))

Do i1=1,3
gTSv(i1) =Sum(gPSv(i1,:)) 
If (gTSv(i1).Gt.0._dp) BRSv(i1,: ) =gPSv(i1,:)/gTSv(i1) 
End Do 
 

gPhh = 0._dp 
gThh = 0._dp 
BRhh = 0._dp 
Call hhTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,            & 
& MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,               & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPhh,gThh,BRhh)

Do i1=1,3
gThh(i1) =Sum(gPhh(i1,:)) 
If (gThh(i1).Gt.0._dp) BRhh(i1,: ) =gPhh(i1,:)/gThh(i1) 
End Do 
 

gPAh = 0._dp 
gTAh = 0._dp 
BRAh = 0._dp 
Call AhTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,            & 
& MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,               & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPAh,gTAh,BRAh)

Do i1=1,3
gTAh(i1) =Sum(gPAh(i1,:)) 
If (gTAh(i1).Gt.0._dp) BRAh(i1,: ) =gPAh(i1,:)/gTAh(i1) 
End Do 
 

! Set Goldstone Widhts 
gTAh(1)=gTVZ
gTAh(2)=gTVZp


gPHpm = 0._dp 
gTHpm = 0._dp 
BRHpm = 0._dp 
Call HpmTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,               & 
& MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,           & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPHpm,gTHpm,BRHpm)

Do i1=1,2
gTHpm(i1) =Sum(gPHpm(i1,:)) 
If (gTHpm(i1).Gt.0._dp) BRHpm(i1,: ) =gPHpm(i1,:)/gTHpm(i1) 
End Do 
 

! Set Goldstone Widhts 
gTHpm(1)=gTVWm


gPVZp = 0._dp 
gTVZp = 0._dp 
BRVZp = 0._dp 
Call VZpTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,               & 
& MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,           & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPVZp,gTVZp,BRVZp)

Do i1=1,1
gTVZp =Sum(gPVZp(i1,:)) 
If (gTVZp.Gt.0._dp) BRVZp(i1,: ) =gPVZp(i1,:)/gTVZp 
End Do 
 

! Set Goldstone Widhts 
gTAh(2)=gTVZp


gPGlu = 0._dp 
gTGlu = 0._dp 
BRGlu = 0._dp 
Call GluTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,               & 
& MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,           & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPGlu(:,1:36),gTGlu,BRGlu(:,1:36))

Do i1=1,1
gTGlu =Sum(gPGlu(i1,:)) 
If (gTGlu.Gt.0._dp) BRGlu(i1,: ) =gPGlu(i1,:)/gTGlu 
End Do 
 

gPChi = 0._dp 
gTChi = 0._dp 
BRChi = 0._dp 
Call ChiTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,               & 
& MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,           & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPChi(:,1:103),gTChi,BRChi(:,1:103))

Do i1=1,6
gTChi(i1) =Sum(gPChi(i1,:)) 
If (gTChi(i1).Gt.0._dp) BRChi(i1,: ) =gPChi(i1,:)/gTChi(i1) 
End Do 
 

gPCha = 0._dp 
gTCha = 0._dp 
BRCha = 0._dp 
Call ChaTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,               & 
& MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,           & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPCha(:,1:87),gTCha,BRCha(:,1:87))

Do i1=1,2
gTCha(i1) =Sum(gPCha(i1,:)) 
If (gTCha(i1).Gt.0._dp) BRCha(i1,: ) =gPCha(i1,:)/gTCha(i1) 
End Do 
 

gPFu = 0._dp 
gTFu = 0._dp 
BRFu = 0._dp 
Call FuTwoBodyDecay(-1,DeltaM,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,            & 
& MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,               & 
& MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,              & 
& ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,              & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gPFu,gTFu,BRFu)

Do i1=1,3
gTFu(i1) =Sum(gPFu(i1,:)) 
If (gTFu(i1).Gt.0._dp) BRFu(i1,: ) =gPFu(i1,:)/gTFu(i1) 
End Do 
 

If (.Not.CTBD) Then 
If ((Enable3BDecaysS).and.(Calc3BodyDecay_Sd)) Then 
If (MaxVal(gTSd).Lt.MaxVal(fac3*Abs(MSd))) Then 
Call SdThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSdAhChaFu,gSdAhChiFd,gSdAhFdGlu,gSdSuChaChi,gSdChaFdcHpm,      & 
& gSdhhChaFu,gSdChaGluSu,gSdSdChacCha,gSdSdChiChi,gSdhhChiFd,gSdHpmChiFu,gSdChiGluSd,    & 
& gSdFdFdcSd,gSdFdFecSe,gSdFuFdcSu,gSdFdFvcSv,gSdHpmFdcCha,gSdSdFdcFd,gSdFdSecFe,        & 
& gSdSuFdcFu,gSdFdSvcFv,gSdFuFecSv,gSdSdFucFu,gSdFuSecFv,gSdhhFdGlu,gSdHpmFuGlu,         & 
& gSdGluGluSd,gSdSdFecFe,gSdSdFvcFv,gSdSuFecFv,epsI,deltaM,.False.,gTSd,gPSd(:,76:1344)  & 
& ,BRSd(:,76:1344))

Else 
Call SdThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSdAhChaFu,gSdAhChiFd,gSdAhFdGlu,gSdSuChaChi,gSdChaFdcHpm,      & 
& gSdhhChaFu,gSdChaGluSu,gSdSdChacCha,gSdSdChiChi,gSdhhChiFd,gSdHpmChiFu,gSdChiGluSd,    & 
& gSdFdFdcSd,gSdFdFecSe,gSdFuFdcSu,gSdFdFvcSv,gSdHpmFdcCha,gSdSdFdcFd,gSdFdSecFe,        & 
& gSdSuFdcFu,gSdFdSvcFv,gSdFuFecSv,gSdSdFucFu,gSdFuSecFv,gSdhhFdGlu,gSdHpmFuGlu,         & 
& gSdGluGluSd,gSdSdFecFe,gSdSdFvcFv,gSdSuFecFv,epsI,deltaM,.True.,gTSd,gPSd(:,76:1344)   & 
& ,BRSd(:,76:1344))

End If 
 
End If 
Else 
Call SdThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSdAhChaFu,gSdAhChiFd,gSdAhFdGlu,gSdSuChaChi,gSdChaFdcHpm,      & 
& gSdhhChaFu,gSdChaGluSu,gSdSdChacCha,gSdSdChiChi,gSdhhChiFd,gSdHpmChiFu,gSdChiGluSd,    & 
& gSdFdFdcSd,gSdFdFecSe,gSdFuFdcSu,gSdFdFvcSv,gSdHpmFdcCha,gSdSdFdcFd,gSdFdSecFe,        & 
& gSdSuFdcFu,gSdFdSvcFv,gSdFuFecSv,gSdSdFucFu,gSdFuSecFv,gSdhhFdGlu,gSdHpmFuGlu,         & 
& gSdGluGluSd,gSdSdFecFe,gSdSdFvcFv,gSdSuFecFv,epsI,deltaM,.False.,gTSd,gPSd(:,76:1344)  & 
& ,BRSd(:,76:1344))

End If 
Do i1=1,6
gTSd(i1) =Sum(gPSd(i1,:)) 
If (gTSd(i1).Gt.0._dp) BRSd(i1,: ) =gPSd(i1,:)/gTSd(i1) 
End Do 
 

If (.Not.CTBD) Then 
If ((Enable3BDecaysS).and.(Calc3BodyDecay_Su)) Then 
If (MaxVal(gTSu).Lt.MaxVal(fac3*Abs(MSu))) Then 
Call SuThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSuAhChiFu,gSuAhFdcCha,gSuAhFuGlu,gSuSuChiChi,gSucHpmChiFd,     & 
& gSuhhChiFu,gSuChiGluSu,gSuSdChicCha,gSuFdFucSd,gSuFdFvcSe,gSuhhFdcCha,gSuSuFdcFd,      & 
& gSuFdSvcFe,gSucHpmChaFu,gSuFuFecSe,gSuFuFucSu,gSuFuFvcSv,gSucChaFuHpm,gSuSdFucFd,      & 
& gSuFuSecFe,gSuSuFucFu,gSuFuSvcFv,gSucHpmFdGlu,gSuhhFuGlu,gSuGluGluSu,gSuGluSdcCha,     & 
& gSuSdFvcFe,gSuSuChacCha,gSuSuFecFe,gSuSuFvcFv,epsI,deltaM,.False.,gTSu,gPSu(:,76:1344) & 
& ,BRSu(:,76:1344))

Else 
Call SuThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSuAhChiFu,gSuAhFdcCha,gSuAhFuGlu,gSuSuChiChi,gSucHpmChiFd,     & 
& gSuhhChiFu,gSuChiGluSu,gSuSdChicCha,gSuFdFucSd,gSuFdFvcSe,gSuhhFdcCha,gSuSuFdcFd,      & 
& gSuFdSvcFe,gSucHpmChaFu,gSuFuFecSe,gSuFuFucSu,gSuFuFvcSv,gSucChaFuHpm,gSuSdFucFd,      & 
& gSuFuSecFe,gSuSuFucFu,gSuFuSvcFv,gSucHpmFdGlu,gSuhhFuGlu,gSuGluGluSu,gSuGluSdcCha,     & 
& gSuSdFvcFe,gSuSuChacCha,gSuSuFecFe,gSuSuFvcFv,epsI,deltaM,.True.,gTSu,gPSu(:,76:1344)  & 
& ,BRSu(:,76:1344))

End If 
 
End If 
Else 
Call SuThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSuAhChiFu,gSuAhFdcCha,gSuAhFuGlu,gSuSuChiChi,gSucHpmChiFd,     & 
& gSuhhChiFu,gSuChiGluSu,gSuSdChicCha,gSuFdFucSd,gSuFdFvcSe,gSuhhFdcCha,gSuSuFdcFd,      & 
& gSuFdSvcFe,gSucHpmChaFu,gSuFuFecSe,gSuFuFucSu,gSuFuFvcSv,gSucChaFuHpm,gSuSdFucFd,      & 
& gSuFuSecFe,gSuSuFucFu,gSuFuSvcFv,gSucHpmFdGlu,gSuhhFuGlu,gSuGluGluSu,gSuGluSdcCha,     & 
& gSuSdFvcFe,gSuSuChacCha,gSuSuFecFe,gSuSuFvcFv,epsI,deltaM,.False.,gTSu,gPSu(:,76:1344) & 
& ,BRSu(:,76:1344))

End If 
Do i1=1,6
gTSu(i1) =Sum(gPSu(i1,:)) 
If (gTSu(i1).Gt.0._dp) BRSu(i1,: ) =gPSu(i1,:)/gTSu(i1) 
End Do 
 

If (.Not.CTBD) Then 
If ((Enable3BDecaysS).and.(Calc3BodyDecay_Se)) Then 
If (MaxVal(gTSe).Lt.MaxVal(fac3*Abs(MSe))) Then 
Call SeThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSeAhChaFv,gSeAhChiFe,gSeSvChaChi,gSeChaFecHpm,gSeSeChacCha,    & 
& gSeSeChiChi,gSehhChiFe,gSeHpmChiFv,gSeFeFdcSd,gSeFeFecSe,gSeFeFucSu,gSeFvFecSv,        & 
& gSeHpmFecCha,gSeFeSdcFd,gSeSeFecFe,gSeFeSucFu,gSeSvFecFv,gSehhChaFv,gSeFvFdcSu,        & 
& gSeFvSdcFu,gSeSeFvcFv,gSeSeFdcFd,gSeSeFucFu,gSeSvFdcFu,epsI,deltaM,.False.,            & 
& gTSe,gPSe(:,67:1221),BRSe(:,67:1221))

Else 
Call SeThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSeAhChaFv,gSeAhChiFe,gSeSvChaChi,gSeChaFecHpm,gSeSeChacCha,    & 
& gSeSeChiChi,gSehhChiFe,gSeHpmChiFv,gSeFeFdcSd,gSeFeFecSe,gSeFeFucSu,gSeFvFecSv,        & 
& gSeHpmFecCha,gSeFeSdcFd,gSeSeFecFe,gSeFeSucFu,gSeSvFecFv,gSehhChaFv,gSeFvFdcSu,        & 
& gSeFvSdcFu,gSeSeFvcFv,gSeSeFdcFd,gSeSeFucFu,gSeSvFdcFu,epsI,deltaM,.True.,             & 
& gTSe,gPSe(:,67:1221),BRSe(:,67:1221))

End If 
 
End If 
Else 
Call SeThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSeAhChaFv,gSeAhChiFe,gSeSvChaChi,gSeChaFecHpm,gSeSeChacCha,    & 
& gSeSeChiChi,gSehhChiFe,gSeHpmChiFv,gSeFeFdcSd,gSeFeFecSe,gSeFeFucSu,gSeFvFecSv,        & 
& gSeHpmFecCha,gSeFeSdcFd,gSeSeFecFe,gSeFeSucFu,gSeSvFecFv,gSehhChaFv,gSeFvFdcSu,        & 
& gSeFvSdcFu,gSeSeFvcFv,gSeSeFdcFd,gSeSeFucFu,gSeSvFdcFu,epsI,deltaM,.False.,            & 
& gTSe,gPSe(:,67:1221),BRSe(:,67:1221))

End If 
Do i1=1,6
gTSe(i1) =Sum(gPSe(i1,:)) 
If (gTSe(i1).Gt.0._dp) BRSe(i1,: ) =gPSe(i1,:)/gTSe(i1) 
End Do 
 

If (.Not.CTBD) Then 
If ((Enable3BDecaysS).and.(Calc3BodyDecay_Sv)) Then 
If (MaxVal(gTSv).Lt.MaxVal(fac3*Abs(MSv))) Then 
Call SvThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSvSvChiChi,gSvcHpmChiFe,gSvSeChicCha,gSvFeAhcCha,              & 
& gSvFeFucSd,gSvFeFvcSe,gSvhhFecCha,gSvFeSucFd,gSvSvFecFe,gSvFvAhChi,gSvcHpmChaFv,       & 
& gSvhhChiFv,gSvFvFdcSd,gSvFvFucSu,gSvFvFvcSv,gSvcChaFvHpm,gSvFvSdcFd,gSvSeFvcFe,        & 
& gSvFvSucFu,gSvSvFvcFv,gSvSeFucFd,gSvSvChacCha,gSvSvFdcFd,gSvSvFucFu,epsI,              & 
& deltaM,.False.,gTSv,gPSv(:,52:1068),BRSv(:,52:1068))

Else 
Call SvThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSvSvChiChi,gSvcHpmChiFe,gSvSeChicCha,gSvFeAhcCha,              & 
& gSvFeFucSd,gSvFeFvcSe,gSvhhFecCha,gSvFeSucFd,gSvSvFecFe,gSvFvAhChi,gSvcHpmChaFv,       & 
& gSvhhChiFv,gSvFvFdcSd,gSvFvFucSu,gSvFvFvcSv,gSvcChaFvHpm,gSvFvSdcFd,gSvSeFvcFe,        & 
& gSvFvSucFu,gSvSvFvcFv,gSvSeFucFd,gSvSvChacCha,gSvSvFdcFd,gSvSvFucFu,epsI,              & 
& deltaM,.True.,gTSv,gPSv(:,52:1068),BRSv(:,52:1068))

End If 
 
End If 
Else 
Call SvThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gSvSvChiChi,gSvcHpmChiFe,gSvSeChicCha,gSvFeAhcCha,              & 
& gSvFeFucSd,gSvFeFvcSe,gSvhhFecCha,gSvFeSucFd,gSvSvFecFe,gSvFvAhChi,gSvcHpmChaFv,       & 
& gSvhhChiFv,gSvFvFdcSd,gSvFvFucSu,gSvFvFvcSv,gSvcChaFvHpm,gSvFvSdcFd,gSvSeFvcFe,        & 
& gSvFvSucFu,gSvSvFvcFv,gSvSeFucFd,gSvSvChacCha,gSvSvFdcFd,gSvSvFucFu,epsI,              & 
& deltaM,.False.,gTSv,gPSv(:,52:1068),BRSv(:,52:1068))

End If 
Do i1=1,3
gTSv(i1) =Sum(gPSv(i1,:)) 
If (gTSv(i1).Gt.0._dp) BRSv(i1,: ) =gPSv(i1,:)/gTSv(i1) 
End Do 
 

! No 3-body decays for hh  
! No 3-body decays for Ah  
! No 3-body decays for Hpm  
! No 3-body decays for VZp  
If (.Not.CTBD) Then 
If ((Enable3BDecaysF).and.(Calc3BodyDecay_Glu)) Then 
If (gTGlu.Lt.fac3*Abs(MGlu)) Then 
Call GluThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,           & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gTSd,gTSu,gGluFdcFdChi,gGluFdcFucCha,gGluFucFuChi,              & 
& epsI,deltaM,.False.,gTGlu,gPGlu(:,37:162),BRGlu(:,37:162))

Else 
Call GluThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,           & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gTSd,gTSu,gGluFdcFdChi,gGluFdcFucCha,gGluFucFuChi,              & 
& epsI,deltaM,.True.,gTGlu,gPGlu(:,37:162),BRGlu(:,37:162))

End If 
 
End If 
Else 
Call GluThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,           & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gTSd,gTSu,gGluFdcFdChi,gGluFdcFucCha,gGluFucFuChi,              & 
& epsI,deltaM,.False.,gTGlu,gPGlu(:,37:162),BRGlu(:,37:162))

End If 
Do i1=1,1
gTGlu =Sum(gPGlu(i1,:)) 
If (gTGlu.Gt.0._dp) BRGlu(i1,: ) =gPGlu(i1,:)/gTGlu 
End Do 
 

If (.Not.CTBD) Then 
If ((Enable3BDecaysF).and.(Calc3BodyDecay_Chi)) Then 
If (MaxVal(gTChi).Lt.MaxVal(fac3*Abs(MChi))) Then 
Call ChiThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,           & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gTAh,gThh,gTHpm,gTSd,gTSe,gTSu,gTSv,gTVWm,gTVZ,gTVZp,           & 
& gChiChicChaCha,gChiChiChiChi,gChiChicFdFd,gChiChicFeFe,gChiChicFuFu,gChiChacFdFu,      & 
& gChiChacFeFv,gChiChicFvFv,gChiFdcFdGlu,gChiFucFuGlu,epsI,deltaM,.False.,               & 
& gTChi,gPChi(:,104:613),BRChi(:,104:613))

Else 
Call ChiThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,           & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gTAh,gThh,gTHpm,gTSd,gTSe,gTSu,gTSv,gTVWm,gTVZ,gTVZp,           & 
& gChiChicChaCha,gChiChiChiChi,gChiChicFdFd,gChiChicFeFe,gChiChicFuFu,gChiChacFdFu,      & 
& gChiChacFeFv,gChiChicFvFv,gChiFdcFdGlu,gChiFucFuGlu,epsI,deltaM,.True.,gTChi,          & 
& gPChi(:,104:613),BRChi(:,104:613))

End If 
 
End If 
Else 
Call ChiThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,           & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gTAh,gThh,gTHpm,gTSd,gTSe,gTSu,gTSv,gTVWm,gTVZ,gTVZp,           & 
& gChiChicChaCha,gChiChiChiChi,gChiChicFdFd,gChiChicFeFe,gChiChicFuFu,gChiChacFdFu,      & 
& gChiChacFeFv,gChiChicFvFv,gChiFdcFdGlu,gChiFucFuGlu,epsI,deltaM,.False.,               & 
& gTChi,gPChi(:,104:613),BRChi(:,104:613))

End If 
Do i1=1,6
gTChi(i1) =Sum(gPChi(i1,:)) 
If (gTChi(i1).Gt.0._dp) BRChi(i1,: ) =gPChi(i1,:)/gTChi(i1) 
End Do 
 

If (.Not.CTBD) Then 
If ((Enable3BDecaysF).and.(Calc3BodyDecay_Cha)) Then 
If (MaxVal(gTCha).Lt.MaxVal(fac3*Abs(MCha))) Then 
Call ChaThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,           & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gTAh,gThh,gTHpm,gTSd,gTSe,gTSu,gTSv,gTVWm,gTVZ,gTVZp,           & 
& gChaChacChaCha,gChaChaChiChi,gChaChacFdFd,gChaChacFeFe,gChaChacFuFu,gChaChacFvFv,      & 
& gChaChicFuFd,gChaChicFvFe,gChaFdcFuGlu,epsI,deltaM,.False.,gTCha,gPCha(:,88:356)       & 
& ,BRCha(:,88:356))

Else 
Call ChaThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,           & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gTAh,gThh,gTHpm,gTSd,gTSe,gTSu,gTSv,gTVWm,gTVZ,gTVZp,           & 
& gChaChacChaCha,gChaChaChiChi,gChaChacFdFd,gChaChacFeFe,gChaChacFuFu,gChaChacFvFv,      & 
& gChaChicFuFd,gChaChicFvFe,gChaFdcFuGlu,epsI,deltaM,.True.,gTCha,gPCha(:,88:356)        & 
& ,BRCha(:,88:356))

End If 
 
End If 
Else 
Call ChaThreeBodyDecay(-1,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,           & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,vd,vu,vS,gTAh,gThh,gTHpm,gTSd,gTSe,gTSu,gTSv,gTVWm,gTVZ,gTVZp,           & 
& gChaChacChaCha,gChaChaChiChi,gChaChacFdFd,gChaChacFeFe,gChaChacFuFu,gChaChacFvFv,      & 
& gChaChicFuFd,gChaChicFvFe,gChaFdcFuGlu,epsI,deltaM,.False.,gTCha,gPCha(:,88:356)       & 
& ,BRCha(:,88:356))

End If 
Do i1=1,2
gTCha(i1) =Sum(gPCha(i1,:)) 
If (gTCha(i1).Gt.0._dp) BRCha(i1,: ) =gPCha(i1,:)/gTCha(i1) 
End Do 
 

! No 3-body decays for Fu  
Iname = Iname - 1 
 
End Subroutine CalculateBR 
End Module BranchingRatios_SplitUMSSM 
 