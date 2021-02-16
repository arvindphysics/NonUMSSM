! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 7:31 on 15.11.2020   
! ----------------------------------------------------------------------  
 
 
Program SPhenoSplitUMSSM 
 
Use Control
Use InputOutput_SplitUMSSM
Use LoopFunctions
Use Settings
Use LowEnergy_SplitUMSSM
Use Mathematics
Use Model_Data_SplitUMSSM
Use Tadpoles_SplitUMSSM 
 Use RGEs_SplitUMSSM
!Use StandardModel
Use Boundaries_SplitUMSSM
 Use HiggsCS_SplitUMSSM
Use TreeLevelMasses_SplitUMSSM
Use LoopMasses_SplitUMSSM
 
Use BranchingRatios_SplitUMSSM
 
Implicit None
 
Real(dp) :: epsI=0.00001_dp, deltaM = 0.000001_dp 
Real(dp) :: mGut = -1._dp, ratioWoM = 0._dp
Integer :: kont, n_tot 
 
Integer,Parameter :: p_max=100
Real(dp) :: Ecms(p_max),Pm(p_max),Pp(p_max), dt, tz, Qin, gSM(11) 
Real(dp) :: vev, sinw2
Complex(dp) :: YdSM(3,3), YuSM(3,3), YeSM(3,3)
Real(dp) :: vSM, g1SM, g2SM, g3SM
Integer :: i1 
Complex(dp) :: Yd_ckm(3,3), Yu_ckm(3,3), Tu_ckm(3,3), Td_ckm(3,3), mq2_ckm(3,3), mu2_ckm(3,3), md2_ckm(3,3) 
Complex(dp) :: Yd_out(3,3), Yu_out(3,3), Tu_out(3,3), Td_out(3,3), mq2_out(3,3), mu2_out(3,3), md2_out(3,3) 
Logical :: ISR(p_max)=.False.
Logical :: CalcTBD
Real(dp) :: Tpar,Spar,Upar,ae,amu,atau,EDMe,EDMmu,EDMtau,dRho,BrBsGamma,ratioBsGamma,             & 
& BrDmunu,ratioDmunu,BrDsmunu,ratioDsmunu,BrDstaunu,ratioDstaunu,BrBmunu,ratioBmunu,     & 
& BrBtaunu,ratioBtaunu,BrKmunu,ratioKmunu,RK,RKSM,muEgamma,tauEgamma,tauMuGamma,         & 
& CRmuEAl,CRmuETi,CRmuESr,CRmuESb,CRmuEAu,CRmuEPb,BRmuTo3e,BRtauTo3e,BRtauTo3mu,         & 
& BRtauToemumu,BRtauTomuee,BRtauToemumu2,BRtauTomuee2,BrZtoMuE,BrZtoTauE,BrZtoTauMu,     & 
& BrhtoMuE,BrhtoTauE,BrhtoTauMu,DeltaMBs,ratioDeltaMBs,DeltaMBq,ratioDeltaMBq,           & 
& BrTautoEPi,BrTautoEEta,BrTautoEEtap,BrTautoMuPi,BrTautoMuEta,BrTautoMuEtap,            & 
& BrB0dEE,ratioB0dEE,BrB0sEE,ratioB0sEE,BrB0dMuMu,ratioB0dMuMu,BrB0sMuMu,ratioB0sMuMu,   & 
& BrB0dTauTau,ratioB0dTauTau,BrB0sTauTau,ratioB0sTauTau,BrBtoSEE,ratioBtoSEE,            & 
& BrBtoSMuMu,ratioBtoSMuMu,BrBtoKee,ratioBtoKee,BrBtoKmumu,ratioBtoKmumu,BrBtoSnunu,     & 
& ratioBtoSnunu,BrBtoDnunu,ratioBtoDnunu,BrKptoPipnunu,ratioKptoPipnunu,BrKltoPinunu,    & 
& ratioKltoPinunu,BrK0eMu,ratioK0eMu,DelMK,ratioDelMK,epsK,ratioepsK

Tpar = 0._dp 
Spar = 0._dp 
Upar = 0._dp 
ae = 0._dp 
amu = 0._dp 
atau = 0._dp 
EDMe = 0._dp 
EDMmu = 0._dp 
EDMtau = 0._dp 
dRho = 0._dp 
BrBsGamma = 0._dp 
ratioBsGamma = 0._dp 
BrDmunu = 0._dp 
ratioDmunu = 0._dp 
BrDsmunu = 0._dp 
ratioDsmunu = 0._dp 
BrDstaunu = 0._dp 
ratioDstaunu = 0._dp 
BrBmunu = 0._dp 
ratioBmunu = 0._dp 
BrBtaunu = 0._dp 
ratioBtaunu = 0._dp 
BrKmunu = 0._dp 
ratioKmunu = 0._dp 
RK = 0._dp 
RKSM = 0._dp 
muEgamma = 0._dp 
tauEgamma = 0._dp 
tauMuGamma = 0._dp 
CRmuEAl = 0._dp 
CRmuETi = 0._dp 
CRmuESr = 0._dp 
CRmuESb = 0._dp 
CRmuEAu = 0._dp 
CRmuEPb = 0._dp 
BRmuTo3e = 0._dp 
BRtauTo3e = 0._dp 
BRtauTo3mu = 0._dp 
BRtauToemumu = 0._dp 
BRtauTomuee = 0._dp 
BRtauToemumu2 = 0._dp 
BRtauTomuee2 = 0._dp 
BrZtoMuE = 0._dp 
BrZtoTauE = 0._dp 
BrZtoTauMu = 0._dp 
BrhtoMuE = 0._dp 
BrhtoTauE = 0._dp 
BrhtoTauMu = 0._dp 
DeltaMBs = 0._dp 
ratioDeltaMBs = 0._dp 
DeltaMBq = 0._dp 
ratioDeltaMBq = 0._dp 
BrTautoEPi = 0._dp 
BrTautoEEta = 0._dp 
BrTautoEEtap = 0._dp 
BrTautoMuPi = 0._dp 
BrTautoMuEta = 0._dp 
BrTautoMuEtap = 0._dp 
BrB0dEE = 0._dp 
ratioB0dEE = 0._dp 
BrB0sEE = 0._dp 
ratioB0sEE = 0._dp 
BrB0dMuMu = 0._dp 
ratioB0dMuMu = 0._dp 
BrB0sMuMu = 0._dp 
ratioB0sMuMu = 0._dp 
BrB0dTauTau = 0._dp 
ratioB0dTauTau = 0._dp 
BrB0sTauTau = 0._dp 
ratioB0sTauTau = 0._dp 
BrBtoSEE = 0._dp 
ratioBtoSEE = 0._dp 
BrBtoSMuMu = 0._dp 
ratioBtoSMuMu = 0._dp 
BrBtoKee = 0._dp 
ratioBtoKee = 0._dp 
BrBtoKmumu = 0._dp 
ratioBtoKmumu = 0._dp 
BrBtoSnunu = 0._dp 
ratioBtoSnunu = 0._dp 
BrBtoDnunu = 0._dp 
ratioBtoDnunu = 0._dp 
BrKptoPipnunu = 0._dp 
ratioKptoPipnunu = 0._dp 
BrKltoPinunu = 0._dp 
ratioKltoPinunu = 0._dp 
BrK0eMu = 0._dp 
ratioK0eMu = 0._dp 
DelMK = 0._dp 
ratioDelMK = 0._dp 
epsK = 0._dp 
ratioepsK = 0._dp 
Call get_command_argument(1,inputFileName)
If (len_trim(inputFileName)==0) Then
  inputFileName="LesHouches.in.SplitUMSSM"
Else
  inputFileName=trim(inputFileName)
End if
Call get_command_argument(2,outputFileName)
If (len_trim(outputFileName)==0) Then
  outputFileName="SPheno.spc.SplitUMSSM"
Else
  outputFileName=trim(outputFileName)
End if 
g1SM = 0._dp 
g2SM = 0._dp 
g3SM = 0._dp 
vSM = 0._dp 
YdSM = 0._dp 
YeSM = 0._dp 
YuSM = 0._dp 
Call Set_All_Parameters_0() 
 
Qin = SetRenormalizationScale(1.0E3_dp**2)  
kont = 0 
delta_Mass = 0.0001_dp 
CalcTBD = .false. 
Call ReadingData(kont) 
 
If ((MatchingOrder.lt.-1).or.(MatchingOrder.gt.2)) Then 
  If (HighScaleModel.Eq."LOW") Then 
    If (.not.CalculateOneLoopMasses) Then 
       MatchingOrder = -1 
    Else 
       MatchingOrder =  2 
    End if 
   Else 
       MatchingOrder =  2 
   End If 
End If 
Select Case(MatchingOrder) 
 Case(0) 
   OneLoopMatching = .false. 
   TwoLoopMatching = .false. 
   GuessTwoLoopMatchingBSM = .false. 
 Case(1) 
   OneLoopMatching = .true. 
   TwoLoopMatching = .false. 
   GuessTwoLoopMatchingBSM = .false. 
 Case(2) 
   OneLoopMatching = .true. 
   TwoLoopMatching = .true. 
   GuessTwoLoopMatchingBSM = .true. 
End Select 
If (MatchingOrder.eq.-1) Then 
 ! Setting values 
 vd = vdIN 
 vu = vuIN 
 vS = vSIN 
 g1 = g1IN 
 g2 = g2IN 
 g3 = g3IN 
 gp = gpIN 
 Yd = YdIN 
 y1 = y1IN 
 y2 = y2IN 
 lam = lamIN 
 Yu = YuIN 
 Td = TdIN 
 Ty1 = Ty1IN 
 Ty2 = Ty2IN 
 Tlam = TlamIN 
 Tu = TuIN 
 mq2 = mq2IN 
 ml42 = ml42IN 
 ml92 = ml92IN 
 mHd2 = mHd2IN 
 mHu2 = mHu2IN 
 md2 = md2IN 
 mu2 = mu2IN 
 me42 = me42IN 
 me92 = me92IN 
 ms2 = ms2IN 
 M1 = M1IN 
 M2 = M2IN 
 M3 = M3IN 
 M4 = M4IN 
 Tdp = TdpIN 
 Tep = TepIN 
 tanbetaMZ = tanbeta 

 
 ! Setting VEVs used for low energy constraints 
 vdMZ = vd 
 vuMZ = vu 
 vSMZ = vS 
    sinW2=1._dp-mW2/mZ2 
   vSM=1/Sqrt((G_F*Sqrt(2._dp)))
   g1SM=sqrt(4*Pi*Alpha_MZ/(1-sinW2)) 
   g2SM=sqrt(4*Pi*Alpha_MZ/Sinw2 ) 
   g3SM=sqrt(AlphaS_MZ*4*Pi) 
   Do i1=1,3 
      YuSM(i1,i1)=sqrt(2._dp)*mf_u(i1)/vSM 
      YeSM(i1,i1)=sqrt(2._dp)*mf_l(i1)/vSM 
      YdSM(i1,i1)=sqrt(2._dp)*mf_d(i1)/vSM 
    End Do 
    If (GenerationMixing) YuSM = Matmul(Transpose(CKM),YuSM) 


! Transpose Yukawas to fit SPheno conventions 
YuSM= Transpose(YuSM) 
YdSM= Transpose(YdSM)
YeSM= Transpose(YeSM)

 ! Setting Boundary conditions 
 Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,               & 
& mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,.False.)




! Translate input form SCKM to electroweak basis 
If (SwitchToSCKM) Then
Yd_ckm = Yd(1:3,1:3) 
Yu_ckm = Yu(1:3,1:3) 
Td_ckm = Td(1:3,1:3) 
Tu_ckm = Tu(1:3,1:3) 
mq2_ckm = mq2(1:3,1:3) 
md2_ckm = md2(1:3,1:3) 
mu2_ckm = mu2(1:3,1:3) 
Call Switch_from_superCKM(Yd_ckm, Yu_ckm, Td_ckm, Tu_ckm, md2_ckm, mq2_ckm, mu2_ckm& 
&, Td_out, Tu_out, md2_out, mq2_out, mu2_out,.True.) 
If (InputValueforTd) Td = Td_out 
If (InputValueforTu) Tu = Tu_out 
If (InputValueformq2) mq2 = mq2_out 
If (InputValueformd2) md2 = md2_out 
If (InputValueformu2) mu2 = mu2_out 
End If 



Call SolveTadpoleEquations(g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,               & 
& Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,vd,               & 
& vu,vS,(/ ZeroC, ZeroC, ZeroC /))

Call OneLoopMasses(MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,              & 
& MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,               & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,gp,Yd,             & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,kont)


 If (SignOfMassChanged) Then  
 If (.Not.IgnoreNegativeMasses) Then 
  Write(*,*) " Stopping calculation because of negative mass squared." 
  Call TerminateProgram 
 Else 
  SignOfMassChanged= .False. 
  kont=0  
 End If 
End If 
If (SignOfMuChanged) Then 
 If (.Not.IgnoreMuSignFlip) Then 
  Write(*,*) " Stopping calculation because of negative mass squared in tadpoles." 
  Call TerminateProgram 
 Else 
  SignOfMuChanged= .False. 
  kont=0 
 End If 
End If 

Else 
   If (GetMassUncertainty) Then 
   ! Uncertainty from Y_top 
 If ((CalculateOneLoopMasses).and.(CalculateTwoLoopHiggsMasses)) Then 
OneLoopMatching = .true. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .True. 
Elseif ((CalculateOneLoopMasses).and.(.not.CalculateTwoLoopHiggsMasses)) Then  
OneLoopMatching = .true. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .false. 
Else  
OneLoopMatching = .true. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .false. 
End if 
Call CalculateSpectrum(n_run,delta_mass,WriteOut,kont,MAh,MAh2,MCha,MCha2,            & 
& MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,               & 
& MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,              & 
& pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,              & 
& ZZ,betaH,vd,vu,vS,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,             & 
& ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,mGUT)

n_tot =1
mass_uncertainty_Yt(n_tot:n_tot+5) = MSd! difference will be taken later 
n_tot = n_tot + 6 
mass_uncertainty_Yt(n_tot:n_tot+2) = MSv! difference will be taken later 
n_tot = n_tot + 3 
mass_uncertainty_Yt(n_tot:n_tot+5) = MSu! difference will be taken later 
n_tot = n_tot + 6 
mass_uncertainty_Yt(n_tot:n_tot+5) = MSe! difference will be taken later 
n_tot = n_tot + 6 
mass_uncertainty_Yt(n_tot:n_tot+2) = Mhh! difference will be taken later 
n_tot = n_tot + 3 
mass_uncertainty_Yt(n_tot:n_tot+2) = MAh! difference will be taken later 
n_tot = n_tot + 3 
mass_uncertainty_Yt(n_tot:n_tot+1) = MHpm! difference will be taken later 
n_tot = n_tot + 2 
mass_uncertainty_Yt(n_tot:n_tot+5) = MChi! difference will be taken later 
n_tot = n_tot + 6 
mass_uncertainty_Yt(n_tot:n_tot+1) = MCha! difference will be taken later 
n_tot = n_tot + 2 
mass_uncertainty_Yt(n_tot:n_tot+0) = MGlu! difference will be taken later 
If ((CalculateOneLoopMasses).and.(CalculateTwoLoopHiggsMasses)) Then 
OneLoopMatching = .true. 
TwoLoopMatching = .true. 
GuessTwoLoopMatchingBSM = .false. 
Elseif ((CalculateOneLoopMasses).and.(.not.CalculateTwoLoopHiggsMasses)) Then  
OneLoopMatching = .false. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .false. 
Else  
OneLoopMatching = .false. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .false. 
End if 
  End if 
 Call CalculateSpectrum(n_run,delta_mass,WriteOut,kont,MAh,MAh2,MCha,MCha2,            & 
& MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,               & 
& MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,              & 
& pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,              & 
& ZZ,betaH,vd,vu,vS,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,             & 
& ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,mGUT)

  If (GetMassUncertainty) Then 
 Call GetScaleUncertainty(delta_mass,WriteOut,kont,MAh,MAh2,MCha,MCha2,MChi,           & 
& MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,              & 
& MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,              & 
& TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,           & 
& vd,vu,vS,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,            & 
& mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,mass_uncertainty_Q)

  End if 
 End If 
 ! Save correct Higgs masses for calculation of L -> 3 L' 
MhhL = Mhh
Mhh2L = MhhL**2 
MAhL = MAh
MAh2L = MAhL**2 
 
v = Sqrt(vd**2 + vu**2)
betaH = ASin(Abs(ZP(1,2)))
TW = ACos(Abs(ZZ(1,1)))
TWp = ACos(Abs(ZZ(3,3)))
If ((L_BR).And.(kont.Eq.0)) Then 
 sinW2=1._dp-mW2/mZ2 
vev=Sqrt(mZ2*(1._dp-sinW2)*SinW2/(pi*alpha_mZ))
vdMZ=vev/Sqrt(1._dp+tanbetaMZ**2)
vuMZ=tanbetaMZ*vdMZ 
Call CalculateBR(CalcTBD,ratioWoM,epsI,deltaM,kont,MAh,MAh2,MCha,MCha2,               & 
& MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,               & 
& MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,              & 
& pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,              & 
& ZZ,betaH,vd,vu,vS,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,             & 
& ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,gPSd,gTSd,BRSd,               & 
& gPSu,gTSu,BRSu,gPSe,gTSe,BRSe,gPSv,gTSv,BRSv,gPhh,gThh,BRhh,gPAh,gTAh,BRAh,            & 
& gPHpm,gTHpm,BRHpm,gPVZp,gTVZp,BRVZp,gPGlu,gTGlu,BRGlu,gPChi,gTChi,BRChi,               & 
& gPCha,gTCha,BRCha,gPFu,gTFu,BRFu)

Call HiggsCrossSections(Mhh,ratioGG,ratioPP,rHB_S_VWm,rHB_S_VZ,rHB_S_S_Fu(:,3)        & 
& ,CS_Higgs_LHC,kont)

Call HiggsCrossSections(MAh,ratioPGG,ratioPPP,0._dp*rHB_S_VWm,0._dp*rHB_S_VZ,         & 
& rHB_P_S_Fu(:,3),CS_PHiggs_LHC,kont)

End If 
 
 If (CalculateLowEnergy) then 
Call CalculateLowEnergyConstraints(g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,            & 
& Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,             & 
& vd,vu,vS,Tpar,Spar,Upar,ae,amu,atau,EDMe,EDMmu,EDMtau,dRho,BrBsGamma,ratioBsGamma,     & 
& BrDmunu,ratioDmunu,BrDsmunu,ratioDsmunu,BrDstaunu,ratioDstaunu,BrBmunu,ratioBmunu,     & 
& BrBtaunu,ratioBtaunu,BrKmunu,ratioKmunu,RK,RKSM,muEgamma,tauEgamma,tauMuGamma,         & 
& CRmuEAl,CRmuETi,CRmuESr,CRmuESb,CRmuEAu,CRmuEPb,BRmuTo3e,BRtauTo3e,BRtauTo3mu,         & 
& BRtauToemumu,BRtauTomuee,BRtauToemumu2,BRtauTomuee2,BrZtoMuE,BrZtoTauE,BrZtoTauMu,     & 
& BrhtoMuE,BrhtoTauE,BrhtoTauMu,DeltaMBs,ratioDeltaMBs,DeltaMBq,ratioDeltaMBq,           & 
& BrTautoEPi,BrTautoEEta,BrTautoEEtap,BrTautoMuPi,BrTautoMuEta,BrTautoMuEtap,            & 
& BrB0dEE,ratioB0dEE,BrB0sEE,ratioB0sEE,BrB0dMuMu,ratioB0dMuMu,BrB0sMuMu,ratioB0sMuMu,   & 
& BrB0dTauTau,ratioB0dTauTau,BrB0sTauTau,ratioB0sTauTau,BrBtoSEE,ratioBtoSEE,            & 
& BrBtoSMuMu,ratioBtoSMuMu,BrBtoKee,ratioBtoKee,BrBtoKmumu,ratioBtoKmumu,BrBtoSnunu,     & 
& ratioBtoSnunu,BrBtoDnunu,ratioBtoDnunu,BrKptoPipnunu,ratioKptoPipnunu,BrKltoPinunu,    & 
& ratioKltoPinunu,BrK0eMu,ratioK0eMu,DelMK,ratioDelMK,epsK,ratioepsK)

MVZ = mz 
MVZ2 = mz2 
MVWm = mW 
MVWm2 = mW2 
If (WriteParametersAtQ) Then 
Call TreeMasses(MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,            & 
& MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,           & 
& MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,             & 
& ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,gp,Yd,y1,y2,lam,              & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,GenerationMixing,kont)

End If 
 
MFv = nuMasses  
End if 
 
If ((FoundIterativeSolution).or.(WriteOutputForNonConvergence)) Then 
If (OutputForMO) Then 
Call RunningFermionMasses(MFe,MFe2,MFd,MFd2,MFu,MFu2,vd,vu,vS,g1,g2,g3,               & 
& gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,            & 
& me92,ms2,M1,M2,M3,M4,Tdp,Tep,kont)

End if 
Write(*,*) "Writing output files" 
Call LesHouches_Out(67,11,kont,MGUT,Tpar,Spar,Upar,ae,amu,atau,EDMe,EDMmu,            & 
& EDMtau,dRho,BrBsGamma,ratioBsGamma,BrDmunu,ratioDmunu,BrDsmunu,ratioDsmunu,            & 
& BrDstaunu,ratioDstaunu,BrBmunu,ratioBmunu,BrBtaunu,ratioBtaunu,BrKmunu,ratioKmunu,     & 
& RK,RKSM,muEgamma,tauEgamma,tauMuGamma,CRmuEAl,CRmuETi,CRmuESr,CRmuESb,CRmuEAu,         & 
& CRmuEPb,BRmuTo3e,BRtauTo3e,BRtauTo3mu,BRtauToemumu,BRtauTomuee,BRtauToemumu2,          & 
& BRtauTomuee2,BrZtoMuE,BrZtoTauE,BrZtoTauMu,BrhtoMuE,BrhtoTauE,BrhtoTauMu,              & 
& DeltaMBs,ratioDeltaMBs,DeltaMBq,ratioDeltaMBq,BrTautoEPi,BrTautoEEta,BrTautoEEtap,     & 
& BrTautoMuPi,BrTautoMuEta,BrTautoMuEtap,BrB0dEE,ratioB0dEE,BrB0sEE,ratioB0sEE,          & 
& BrB0dMuMu,ratioB0dMuMu,BrB0sMuMu,ratioB0sMuMu,BrB0dTauTau,ratioB0dTauTau,              & 
& BrB0sTauTau,ratioB0sTauTau,BrBtoSEE,ratioBtoSEE,BrBtoSMuMu,ratioBtoSMuMu,              & 
& BrBtoKee,ratioBtoKee,BrBtoKmumu,ratioBtoKmumu,BrBtoSnunu,ratioBtoSnunu,BrBtoDnunu,     & 
& ratioBtoDnunu,BrKptoPipnunu,ratioKptoPipnunu,BrKltoPinunu,ratioKltoPinunu,             & 
& BrK0eMu,ratioK0eMu,DelMK,ratioDelMK,epsK,ratioepsK,GenerationMixing)

End if 
Write(*,*) "Finished!" 
Contains 
 
Subroutine Switch_from_superCKM(Y_d, Y_u, Ad_in, Au_in, MD_in, MQ_in, MU_in &
                      &, Ad_out, Au_out, MD_out, MQ_out, MU_out, tr        &
                      &, RSd_in, RSu_in, RSd_out, RSu_out, CKM_out, Yd, Yu )
 !---------------------------------------------------------------------------
 ! shifts the parameter from the  super CKM basis to the electroweak basis
 ! written by werner Porod, 12.03.08
 !---------------------------------------------------------------------------
 Implicit None
  Complex(dp), Intent(in), Dimension(3,3) :: Y_d, Y_u, Au_in, Ad_in, MD_in &
        & , MQ_in, MU_in
  Complex(dp), Optional, Intent(in), Dimension(6,6) :: RSu_in, RSd_in
  Logical, Intent(in) :: tr  ! if true, then the matrices are transposed 
                             ! compared to low energy definition
  Complex(dp), Intent(out), Dimension(3,3) :: Au_out, Ad_out, MD_out, MQ_out &
        & , MU_out
  Complex(dp), Optional, Intent(out), Dimension(6,6) :: RSu_out, RSd_out
  Complex(dp), Optional, Intent(out) :: CKM_out(3,3)
  Complex(dp), Optional, Intent(out) :: Yd(3), Yu(3)

  Complex(dp), Dimension(3,3) :: uU_L, uU_R, uD_L, uD_R, CKM_Q
  Complex(dp) :: rot(6,6), Ephi

  Real(dp) :: mf(3), s12, s23, aR, aI, s13, c13
  Integer :: ierr

  !------------------------------------------
  ! diagonalizing d- and u-Yukawa couplings
  ! I am only interested in the mixing matrices
  !------------------------------------------
  If (tr) Then
   Call FermionMass(Transpose(Y_u), 1._dp, mf, uU_L, uU_R, ierr)
   If (Present(Yu)) Yu = sqrt2 * mf
   Call FermionMass(Transpose(Y_d), 1._dp, mf, uD_L, uD_R, ierr)
   If (Present(Yd)) Yd = sqrt2 * mf
  Else
   Call FermionMass(Y_u, 1._dp, mf, uU_L, uU_R, ierr)
   If (Present(Yu)) Yu = sqrt2 * mf
   Call FermionMass(Y_d, 1._dp, mf, uD_L, uD_R, ierr)
   If (Present(Yd)) Yd = sqrt2 * mf
  End If
  !---------------------------------------------------------
  ! CKM matrix at Q, shifting phases according to PDG form
  !---------------------------------------------------------
  CKM_Q =  Matmul(uU_R, Transpose(Conjg(ud_R)) )
  uD_L(1,:) = uD_L(1,:) / Conjg(CKM_Q(1,1)) * Abs(CKM_Q(1,1))
  uD_L(2,:) = uD_L(2,:) / Conjg(CKM_Q(1,2)) * Abs(CKM_Q(1,2))
  uU_L(2,:) = uU_L(2,:) / CKM_Q(2,3) * Abs(CKM_Q(2,3))
  uU_L(3,:) = uU_L(3,:) / CKM_Q(3,3) * Abs(CKM_Q(3,3))
  !-------------------------------------------------------------------
  ! also the right quark must be multiplied with the conjugate phase
  ! as otherwise the masses get complex
  !-------------------------------------------------------------------
  uD_R(1,:) = uD_R(1,:) / CKM_Q(1,1) * Abs(CKM_Q(1,1))
  uD_R(2,:) = uD_R(2,:) / CKM_Q(1,2) * Abs(CKM_Q(1,2))
  uU_R(2,:) = uU_R(2,:) / Conjg(CKM_Q(2,3)) * Abs(CKM_Q(2,3))
  uU_R(3,:) = uU_R(3,:) / Conjg(CKM_Q(3,3)) * Abs(CKM_Q(3,3))
  CKM_Q =  Matmul(uU_L, Transpose(Conjg(ud_L)) )

  !--------------------------------------------------------------
  ! one more freedom left
  !--------------------------------------------------------------
  s13 = Abs(CKM_Q(1,3))
  c13 = sqrt(1._dp - s13**2)
  s23 = Abs(CKM_Q(2,3))/c13
  s12 = Abs(CKM_Q(1,2))/c13

  aR = Real(CKM_Q(2,2),dp) + s12 * s23 * Real(CKM_Q(1,3),dp)
  aI =  s12 * s23 * Aimag(CKM_Q(1,3)) - Aimag(CKM_Q(2,2))
  Ephi = Cmplx(aR/Sqrt(aR**2+aI**2),aI/Sqrt(aR**2+aI**2),dp)

  uU_L(2:3,:) = Ephi * uU_L(2:3,:)
  uD_L(3,:) = Ephi * uD_L(3,:)
  Ephi = Conjg(Ephi)
  uU_R(2:3,:) = Ephi * uU_R(2:3,:)
  uD_R(3,:) = Ephi * uD_R(3,:)

  CKM_Q =  Matmul(uU_L, Transpose(Conjg(ud_L)) )

  If (Present(CKM_out)) CKM_out = CKM_Q
  !-------------------------------------------------------------------
  ! shifting the parameters from the super CKM basis
  !-------------------------------------------------------------------
  If (tr) Then
   Au_out = Matmul( Matmul(Transpose(uU_R), Au_in), uU_L)
   Ad_out = Matmul( Matmul(Transpose(uD_R), Ad_in), uD_L)

   MD_out = Matmul( Matmul( Transpose(Conjg(uD_R)), MD_in), uD_R)
   MU_out = Matmul( Matmul( Transpose(Conjg(uU_R)), MU_in), uU_R)
   MQ_out = Matmul( Matmul( Transpose(uD_L), MQ_in), Conjg(uD_L) )

  Else
   Au_out = Matmul( Matmul(Transpose(uU_L), Au_in), uU_R)
   Ad_out = Matmul( Matmul(Transpose(uD_L), Ad_in), uD_R)

   MD_out = Matmul( Matmul( Transpose(uD_R), MD_in), Conjg(uD_R))
   MU_out = Matmul( Matmul( Transpose(uU_R), MU_in), Conjg(uU_R))
   MQ_out = Matmul( Matmul( Transpose(Conjg(uD_L)), MQ_in), uD_L )

  End If
  !------------------------------------------------------------------
  ! to avoid numerical problems ensure that matrices are hermitian
  !-----------------------------------------------------------------
  MD_out = 0.5_dp * ( MD_out + Conjg(Transpose(MD_out)) )
  MU_out = 0.5_dp * ( MU_out + Conjg(Transpose(MU_out)) )
  MQ_out = 0.5_dp * ( MQ_out + Conjg(Transpose(MQ_out)) )

   If (Present(RSu_in).And.Present(RSu_out)) Then
    rot = 0._dp
    rot(1:3,1:3) = Conjg(uU_L)
    rot(4:6,4:6) = uU_R
    RSu_out = Matmul(RSu_in, rot)
   End If
   If (Present(RSd_in).And.Present(RSd_out)) Then
    rot = 0._dp
    rot(1:3,1:3) = Conjg(uD_L)
    rot(4:6,4:6) = uD_R
    RSd_out = Matmul(RSd_in, rot)
   End If

 End Subroutine Switch_from_superCKM
Subroutine CalculateSpectrum(n_run,delta,WriteOut,kont,MAh,MAh2,MCha,MCha2,           & 
& MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,               & 
& MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,              & 
& pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,              & 
& ZZ,betaH,vd,vu,vS,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,             & 
& ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,mGUT)

Implicit None 
Integer, Intent(in) :: n_run 
Integer, Intent(inout) :: kont 
Logical, Intent(in) :: WriteOut 
Real(dp), Intent(in) :: delta 
Real(dp), Intent(inout) :: mGUT 
Real(dp),Intent(inout) :: g1,g2,g3,gp,lam,Tlam,ml42,mHd2,mHu2,me42,ms2

Complex(dp),Intent(inout) :: Yd(3,3),y1,y2(2,2),Yu(3,3),Td(3,3),Ty1,Ty2(2,2),Tu(3,3),mq2(3,3),ml92(2,2),           & 
& md2(3,3),mu2(3,3),me92(2,2),M1,M2,M3,M4,Tdp(3,3),Tep(2,2)

Real(dp),Intent(inout) :: MAh(3),MAh2(3),MCha(2),MCha2(2),MChi(6),MChi2(6),MFd(3),MFd2(3),MFe(3),               & 
& MFe2(3),MFu(3),MFu2(3),MFv(3),MFv2(3),MGlu,MGlu2,Mhh(3),Mhh2(3),MHpm(2),               & 
& MHpm2(2),MSd(6),MSd2(6),MSe(6),MSe2(6),MSu(6),MSu2(6),MSv(3),MSv2(3),MVWm,             & 
& MVWm2,MVZ,MVZ2,MVZp,MVZp2,TW,TWp,v,ZP(2,2),ZZ(3,3),betaH

Complex(dp),Intent(inout) :: pG,UM(2,2),UP(2,2),ZA(3,3),ZD(6,6),ZDL(3,3),ZDR(3,3),ZE(6,6),ZEL(3,3),ZER(3,3),       & 
& ZH(3,3),ZN(6,6),ZU(6,6),ZUL(3,3),ZUR(3,3),ZV(3,3),ZVL(3,3),ZW(2,2)

Real(dp),Intent(inout) :: vd,vu,vS

kont = 0 
Call FirstGuess(MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,            & 
& MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,           & 
& MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,             & 
& ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,gp,Yd,y1,y2,lam,              & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,kont)

!If (kont.ne.0) Call TerminateProgram 
 
If (SPA_Convention) Call SetRGEScale(1.e3_dp**2) 
 
If (.not.DecoupleAtRenScale) Then 
Call Sugra(delta,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,           & 
& MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,           & 
& MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,             & 
& ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,             & 
& Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,             & 
& Tep,mGut,kont,WriteOut,n_run)

Else 
Call Match_and_Run(delta,MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,            & 
& MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,           & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,g1,g2,g3,gp,Yd,y1,y2,lam,            & 
& Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,             & 
& M3,M4,Tdp,Tep,mGut,kont,WriteOut,n_run)

End If 
 
If (kont.ne.0) Then 
 Write(*,*) "Error appeared in calculation of masses "
 
 Call TerminateProgram 
End If 
 
End Subroutine CalculateSpectrum 
 

 
Subroutine ReadingData(kont)
Implicit None
Integer,Intent(out)::kont
Logical::file_exists
kont=-123456
Inquire(file=inputFileName,exist=file_exists)
If (file_exists) Then
kont=1
Call LesHouches_Input(kont,Ecms,Pm,Pp,ISR,F_GMSB)
LesHouches_Format= .True.
Else
Write(*,*)&
& "File ",inputFileName," does not exist"
Call TerminateProgram
End If
End Subroutine ReadingData

 
Subroutine GetScaleUncertainty(delta,WriteOut,kont,MAhinput,MAh2input,MChainput,      & 
& MCha2input,MChiinput,MChi2input,MFdinput,MFd2input,MFeinput,MFe2input,MFuinput,        & 
& MFu2input,MFvinput,MFv2input,MGluinput,MGlu2input,Mhhinput,Mhh2input,MHpminput,        & 
& MHpm2input,MSdinput,MSd2input,MSeinput,MSe2input,MSuinput,MSu2input,MSvinput,          & 
& MSv2input,MVWminput,MVWm2input,MVZinput,MVZ2input,MVZpinput,MVZp2input,pGinput,        & 
& TWinput,TWpinput,UMinput,UPinput,vinput,ZAinput,ZDinput,ZDLinput,ZDRinput,             & 
& ZEinput,ZELinput,ZERinput,ZHinput,ZNinput,ZPinput,ZUinput,ZULinput,ZURinput,           & 
& ZVinput,ZVLinput,ZWinput,ZZinput,betaHinput,vdinput,vuinput,vSinput,g1input,           & 
& g2input,g3input,gpinput,Ydinput,y1input,y2input,laminput,Yuinput,Tdinput,              & 
& Ty1input,Ty2input,Tlaminput,Tuinput,mq2input,ml42input,ml92input,mHd2input,            & 
& mHu2input,md2input,mu2input,me42input,me92input,ms2input,M1input,M2input,              & 
& M3input,M4input,Tdpinput,Tepinput,mass_Qerror)

Implicit None 
Integer, Intent(inout) :: kont 
Logical, Intent(in) :: WriteOut 
Real(dp), Intent(in) :: delta 
Real(dp) :: mass_in(50), mass_new(50) 
Real(dp), Intent(out) :: mass_Qerror(50) 
Real(dp) :: gD(210), Q, Qsave, Qstep, Qt, g_SM(62), mh_SM 
Integer :: i1, i2, iupdown, ntot 
Real(dp),Intent(in) :: g1input,g2input,g3input,gpinput,laminput,Tlaminput,ml42input,mHd2input,               & 
& mHu2input,me42input,ms2input

Complex(dp),Intent(in) :: Ydinput(3,3),y1input,y2input(2,2),Yuinput(3,3),Tdinput(3,3),Ty1input,Ty2input(2,2),   & 
& Tuinput(3,3),mq2input(3,3),ml92input(2,2),md2input(3,3),mu2input(3,3),me92input(2,2),  & 
& M1input,M2input,M3input,M4input,Tdpinput(3,3),Tepinput(2,2)

Real(dp),Intent(in) :: MAhinput(3),MAh2input(3),MChainput(2),MCha2input(2),MChiinput(6),MChi2input(6),       & 
& MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),            & 
& MFvinput(3),MFv2input(3),MGluinput,MGlu2input,Mhhinput(3),Mhh2input(3),MHpminput(2),   & 
& MHpm2input(2),MSdinput(6),MSd2input(6),MSeinput(6),MSe2input(6),MSuinput(6),           & 
& MSu2input(6),MSvinput(3),MSv2input(3),MVWminput,MVWm2input,MVZinput,MVZ2input,         & 
& MVZpinput,MVZp2input,TWinput,TWpinput,vinput,ZPinput(2,2),ZZinput(3,3),betaHinput

Complex(dp),Intent(in) :: pGinput,UMinput(2,2),UPinput(2,2),ZAinput(3,3),ZDinput(6,6),ZDLinput(3,3),            & 
& ZDRinput(3,3),ZEinput(6,6),ZELinput(3,3),ZERinput(3,3),ZHinput(3,3),ZNinput(6,6),      & 
& ZUinput(6,6),ZULinput(3,3),ZURinput(3,3),ZVinput(3,3),ZVLinput(3,3),ZWinput(2,2)

Real(dp),Intent(in) :: vdinput,vuinput,vSinput

Real(dp) :: g1,g2,g3,gp,lam,Tlam,ml42,mHd2,mHu2,me42,ms2

Complex(dp) :: Yd(3,3),y1,y2(2,2),Yu(3,3),Td(3,3),Ty1,Ty2(2,2),Tu(3,3),mq2(3,3),ml92(2,2),           & 
& md2(3,3),mu2(3,3),me92(2,2),M1,M2,M3,M4,Tdp(3,3),Tep(2,2)

Real(dp) :: MAh(3),MAh2(3),MCha(2),MCha2(2),MChi(6),MChi2(6),MFd(3),MFd2(3),MFe(3),               & 
& MFe2(3),MFu(3),MFu2(3),MFv(3),MFv2(3),MGlu,MGlu2,Mhh(3),Mhh2(3),MHpm(2),               & 
& MHpm2(2),MSd(6),MSd2(6),MSe(6),MSe2(6),MSu(6),MSu2(6),MSv(3),MSv2(3),MVWm,             & 
& MVWm2,MVZ,MVZ2,MVZp,MVZp2,TW,TWp,v,ZP(2,2),ZZ(3,3),betaH

Complex(dp) :: pG,UM(2,2),UP(2,2),ZA(3,3),ZD(6,6),ZDL(3,3),ZDR(3,3),ZE(6,6),ZEL(3,3),ZER(3,3),       & 
& ZH(3,3),ZN(6,6),ZU(6,6),ZUL(3,3),ZUR(3,3),ZV(3,3),ZVL(3,3),ZW(2,2)

Real(dp) :: vd,vu,vS

kont = 0 
Write(*,*) "Check scale uncertainty" 
n_tot =1
mass_in(n_tot:n_tot+5) = MSdinput
n_tot = n_tot + 6 
mass_in(n_tot:n_tot+2) = MSvinput
n_tot = n_tot + 3 
mass_in(n_tot:n_tot+5) = MSuinput
n_tot = n_tot + 6 
mass_in(n_tot:n_tot+5) = MSeinput
n_tot = n_tot + 6 
mass_in(n_tot:n_tot+2) = Mhhinput
n_tot = n_tot + 3 
mass_in(n_tot:n_tot+2) = MAhinput
n_tot = n_tot + 3 
mass_in(n_tot:n_tot+1) = MHpminput
n_tot = n_tot + 2 
mass_in(n_tot:n_tot+5) = MChiinput
n_tot = n_tot + 6 
mass_in(n_tot:n_tot+1) = MChainput
n_tot = n_tot + 2 
mass_in(n_tot:n_tot+0) = MGluinput
mass_Qerror = 0._dp 
Qsave=sqrt(getRenormalizationScale()) 
Do iupdown=1,2 
If (iupdown.eq.1) Then 
  Qstep=Qsave/7._dp 
Else 
  Qstep=-0.5_dp*Qsave/7._dp 
End if 
Do i1=1,7 
Q=Qsave+i1*Qstep 
Qt = SetRenormalizationScale(Q**2) 
g1 = g1input
g2 = g2input
g3 = g3input
gp = gpinput
Yd = Ydinput
y1 = y1input
y2 = y2input
lam = laminput
Yu = Yuinput
Td = Tdinput
Ty1 = Ty1input
Ty2 = Ty2input
Tlam = Tlaminput
Tu = Tuinput
mq2 = mq2input
ml42 = ml42input
ml92 = ml92input
mHd2 = mHd2input
mHu2 = mHu2input
md2 = md2input
mu2 = mu2input
me42 = me42input
me92 = me92input
ms2 = ms2input
M1 = M1input
M2 = M2input
M3 = M3input
M4 = M4input
Tdp = Tdpinput
Tep = Tepinput
vd = vdinput
vu = vuinput
vS = vSinput

 
 ! --- GUT normalize gauge couplings --- 
g1 = Sqrt(5._dp/3._dp)*g1 
gp = 1*gp 
! ----------------------- 
 
Call ParametersToG210(g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,             & 
& ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,gD)

If (iupdown.eq.1) Then 
 tz=Log(Q/Qsave)
 dt=-tz/50._dp
 Call odeint(gD,210,0._dp,tz,0.1_dp*delta,dt,0._dp,rge210,kont)
Else 
 tz=-Log(Q/Qsave)
 dt=tz/50._dp
 Call odeint(gD,210,tz,0._dp,0.1_dp*delta,dt,0._dp,rge210,kont)
End if 
Call GToParameters210(gD,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,              & 
& mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS)


 
 ! --- Remove GUT-normalization of gauge couplings --- 
g1 = Sqrt(3._dp/5._dp)*g1 
gp = 1*gp 
! ----------------------- 
 
Call SolveTadpoleEquations(g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,               & 
& Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,vd,               & 
& vu,vS,(/ ZeroC, ZeroC, ZeroC /))

Call OneLoopMasses(MAh,MAh2,MCha,MCha2,MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,              & 
& MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,               & 
& MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,               & 
& ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,gp,Yd,             & 
& y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,             & 
& ms2,M1,M2,M3,M4,Tdp,Tep,kont)

If (((Calculate_mh_within_SM).and.(Mhh(2).gt.300._dp)).OR.(Force_mh_within_SM))Then
g_SM=g_SM_save 
tz=0.5_dp*Log(mZ2/Q**2)
dt=tz/100._dp
g_SM(1)=Sqrt(5._dp/3._dp)*g_SM(1) 
Call odeint(g_SM,62,tz,0._dp,delta,dt,0._dp,rge62_SM,kont) 
g_SM(1)=Sqrt(3._dp/5._dp)*g_SM(1) 
Call Get_mh_pole_SM(g_SM,Q**2,delta,Mhh2(1),mh_SM)
Mhh2(1) = mh_SM**2 
Mhh(1) = mh_SM 
End if
n_tot =1
mass_new(n_tot:n_tot+5) = MSd
n_tot = n_tot + 6 
mass_new(n_tot:n_tot+2) = MSv
n_tot = n_tot + 3 
mass_new(n_tot:n_tot+5) = MSu
n_tot = n_tot + 6 
mass_new(n_tot:n_tot+5) = MSe
n_tot = n_tot + 6 
mass_new(n_tot:n_tot+2) = Mhh
n_tot = n_tot + 3 
mass_new(n_tot:n_tot+2) = MAh
n_tot = n_tot + 3 
mass_new(n_tot:n_tot+1) = MHpm
n_tot = n_tot + 2 
mass_new(n_tot:n_tot+5) = MChi
n_tot = n_tot + 6 
mass_new(n_tot:n_tot+1) = MCha
n_tot = n_tot + 2 
mass_new(n_tot:n_tot+0) = MGlu
  Do i2=1,50 
    If (Abs(mass_new(i2)-mass_in(i2)).gt.mass_Qerror(i2)) mass_Qerror(i2) = Abs(mass_new(i2)-mass_in(i2)) 
  End Do 
End Do 
End Do 
  Do i2=1,50  
    mass_uncertainty_Yt(i2) = Abs(mass_uncertainty_Yt(i2)-mass_in(i2)) 
  End Do 
If (kont.ne.0) Then 
 Write(*,*) "Error appeared in check of scale uncertainty "
 
 Call TerminateProgram 
End If 
 
Qt = SetRenormalizationScale(Qsave**2) 
End Subroutine GetScaleUncertainty 
 

 
End Program SPhenoSplitUMSSM 
