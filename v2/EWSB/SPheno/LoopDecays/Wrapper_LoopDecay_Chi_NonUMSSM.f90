! -----------------------------------------------------------------------------
! This file was automatically created by SARAH version 4.14.3
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223
! (c) Florian Staub, 2013
! ------------------------------------------------------------------------------
! File created at 0:34 on 10.2.2021
! ----------------------------------------------------------------------


Module Wrapper_OneLoopDecay_Chi_NonUMSSM
Use Model_Data_NonUMSSM
Use Kinematics
Use OneLoopDecay_Chi_NonUMSSM
Use Control
Use Settings


Contains


Subroutine OneLoopDecay_Chi(MSdOS,MSd2OS,MSvOS,MSv2OS,MFvOS,MFv2OS,MSuOS,             &
& MSu2OS,MSeOS,MSe2OS,MhhOS,Mhh2OS,MAhOS,MAh2OS,MHpmOS,MHpm2OS,MChiOS,MChi2OS,           &
& MChaOS,MCha2OS,MFeOS,MFe2OS,MFdOS,MFd2OS,MFuOS,MFu2OS,MGluOS,MGlu2OS,MVZOS,            &
& MVZpOS,MVZ2OS,MVZp2OS,MVWmOS,MVWm2OS,ZDOS,ZVOS,ZVLOS,ZUOS,ZEOS,ZHOS,ZAOS,              &
& ZPOS,ZNOS,UMOS,UPOS,ZELOS,ZEROS,ZDLOS,ZDROS,ZULOS,ZUROS,MAh,MAh2,MCha,MCha2,           &
& MChi,MChi2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MFv,MFv2,MGlu,MGlu2,Mhh,Mhh2,MHpm,               &
& MHpm2,MSd,MSd2,MSe,MSe2,MSu,MSu2,MSv,MSv2,MVWm,MVWm2,MVZ,MVZ2,MVZp,MVZp2,              &
& pG,TW,TWp,UM,UP,v,ZA,ZD,ZDL,ZDR,ZE,ZEL,ZER,ZH,ZN,ZP,ZU,ZUL,ZUR,ZV,ZVL,ZW,              &
& ZZ,betaH,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yu,Td,TYe11,TYe22,TYe33,Tlam,               &
& Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,ms2,M1,M2,M3,             &
& M4,Tdp,Tep,Tmup,vd,vu,vS,dg1,dg2,dg3,dgp,dSinQq,dCosQq,dTanQq,dSinQl1,dCosQl1,         &
& dTanQl1,dSinQl2,dCosQl2,dTanQl2,dSinQl3,dCosQl3,dTanQl3,dSinQHd,dCosQHd,               &
& dTanQHd,dSinQHu,dCosQHu,dTanQHu,dSinQd,dCosQd,dTanQd,dSinQu,dCosQu,dTanQu,             &
& dSinQe1,dCosQe1,dTanQe1,dSinQe2,dCosQe2,dTanQe2,dSinQe3,dCosQe3,dTanQe3,               &
& dSinQs,dCosQs,dTanQs,dYd,dTd,dYe11,dTYe11,dYe22,dTYe22,dYe33,dTYe33,dlam,              &
& dTlam,dYu,dTu,dmq2,dml012,dml022,dml032,dmHd2,dmHu2,dmd2,dmu2,dme012,dme022,           &
& dme032,dms2,dM1,dM2,dM3,dM4,dTdp,dTep,dTmup,dvd,dvu,dvS,dpG,dZD,dZV,dZVL,              &
& dZU,dZE,dZH,dZA,dZP,dZN,dUM,dUP,dZEL,dZER,dZDL,dZDR,dZUL,dZUR,dSinTW,dCosTW,           &
& dTanTW,dSinTWp,dCosTWp,dTanTWp,ZfVG,ZffG,ZfVP,ZfVZ,ZfVZp,ZfVWm,ZfSd,ZfSv,              &
& ZfFvL,ZfSu,ZfSe,Zfhh,ZfAh,ZfHpm,ZfL0,ZfLm,ZfLp,ZfFEL,ZfFER,ZfFDL,ZfFDR,ZfFUL,          &
& ZfFUR,ZfVPVZ,ZfVZVP,ZfVPVZp,ZfVZpVP,ZfVZVZp,ZfVZpVZ,cplAhAhhh,cplAhcHpmVWm,            &
& cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,       &
& cplcChaChaAhL,cplcChaChaAhR,cplcChaChahhL,cplcChaChahhR,cplcChaChaVPL,cplcChaChaVPR,   &
& cplcChaChaVZL,cplcChaChaVZpL,cplcChaChaVZpR,cplcChaChaVZR,cplcChaChiHpmL,              &
& cplcChaChiHpmR,cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFdcSuL,cplcChaFdcSuR,              &
& cplcChaFecSvL,cplcChaFecSvR,cplcFdChaSuL,cplcFdChaSuR,cplcFdChiSdL,cplcFdChiSdR,       &
& cplcFdFdAhL,cplcFdFdAhR,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,               &
& cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZpL,cplcFdFdVZpR,cplcFdFdVZR,             &
& cplcFdFuHpmL,cplcFdFuHpmR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFdGluSdL,cplcFdGluSdR,         &
& cplcFeChaSvL,cplcFeChaSvR,cplcFeChiSeL,cplcFeChiSeR,cplcFeFeAhL,cplcFeFeAhR,           &
& cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZpL,              &
& cplcFeFeVZpR,cplcFeFeVZR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,cplcFeFvVWmR,          &
& cplcFuChiSuL,cplcFuChiSuR,cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFuFdcVWmL,cplcFuFdcVWmR,     &
& cplcFuFuAhL,cplcFuFuAhR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVGL,cplcFuFuVGR,               &
& cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZpL,cplcFuFuVZpR,cplcFuFuVZR,             &
& cplcFuGluSuL,cplcFuGluSuR,cplcFvChiSvL,cplcFvChiSvR,cplcFvFecHpmL,cplcFvFecHpmR,       &
& cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,cplcFvFvVZpL,cplcFvFvVZpR,cplcFvFvVZR,         &
& cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplChiChacHpmL,cplChiChacHpmR,     &
& cplChiChacVWmL,cplChiChacVWmR,cplChiChiAhL,cplChiChiAhR,cplChiChihhL,cplChiChihhR,     &
& cplChiChiVZL,cplChiChiVZpL,cplChiChiVZpR,cplChiChiVZR,cplChiFdcSdL,cplChiFdcSdR,       &
& cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,         &
& cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,       &
& cplGluFdcSdL,cplGluFdcSdR,cplGluFucSuL,cplGluFucSuR,cplhhcHpmVWm,cplhhcVWmVWm,         &
& cplhhhhhh,cplhhHpmcHpm,cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,       &
& cplhhVZpVZp,cplhhVZVZ,cplhhVZVZp,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,              &
& cplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,cplHpmSucSd,cplHpmSvcSe,cplSdcHpmcSu,          &
& cplSdcSdVG,cplSdcSdVP,cplSdcSdVZ,cplSdcSdVZp,cplSdcSucVWm,cplSecHpmcSv,cplSecSeVP,     &
& cplSecSeVZ,cplSecSeVZp,cplSecSvcVWm,cplSucSdVWm,cplSucSuVG,cplSucSuVP,cplSucSuVZ,      &
& cplSucSuVZp,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,ctcplChiChacHpmL,ctcplChiChacHpmR,      &
& ctcplChiChacVWmL,ctcplChiChacVWmR,ctcplChiChiAhL,ctcplChiChiAhR,ctcplChiChihhL,        &
& ctcplChiChihhR,ctcplChiChiVZL,ctcplChiChiVZpL,ctcplChiChiVZpR,ctcplChiChiVZR,          &
& ctcplChiFdcSdL,ctcplChiFdcSdR,ctcplChiFecSeL,ctcplChiFecSeR,ctcplChiFucSuL,            &
& ctcplChiFucSuR,ctcplChiFvcSvL,ctcplChiFvcSvR,GcplChiChacHpmL,GcplChiChacHpmR,          &
& GcplcHpmVPVWm,GcplHpmcVWmVP,GosZcplChiChacHpmL,GosZcplChiChacHpmR,GosZcplcHpmVPVWm,    &
& GosZcplHpmcVWmVP,GZcplChiChacHpmL,GZcplChiChacHpmR,GZcplcHpmVPVWm,GZcplHpmcVWmVP,      &
& ZcplcChaChaVPL,ZcplcChaChaVPR,ZcplcChaChiHpmL,ZcplcChaChiHpmR,ZcplcChaChiVWmL,         &
& ZcplcChaChiVWmR,ZcplcFdChiSdL,ZcplcFdChiSdR,ZcplcFdFdVGL,ZcplcFdFdVGR,ZcplcFdFdVPL,    &
& ZcplcFdFdVPR,ZcplcFdGluSdL,ZcplcFdGluSdR,ZcplcFeChiSeL,ZcplcFeChiSeR,ZcplcFeFeVPL,     &
& ZcplcFeFeVPR,ZcplcFuChiSuL,ZcplcFuChiSuR,ZcplcFuFuVGL,ZcplcFuFuVGR,ZcplcFuFuVPL,       &
& ZcplcFuFuVPR,ZcplcFuGluSuL,ZcplcFuGluSuR,ZcplChiChacHpmL,ZcplChiChacHpmR,              &
& ZcplChiChacVWmL,ZcplChiChacVWmR,ZcplChiChiAhL,ZcplChiChiAhR,ZcplChiChihhL,             &
& ZcplChiChihhR,ZcplChiChiVZL,ZcplChiChiVZpL,ZcplChiChiVZpR,ZcplChiChiVZR,               &
& ZcplChiFdcSdL,ZcplChiFdcSdR,ZcplChiFecSeL,ZcplChiFecSeR,ZcplChiFucSuL,ZcplChiFucSuR,   &
& ZcplChiFvcSvL,ZcplChiFvcSvR,ZcplcHpmVPVWm,ZcplcVWmVPVWm,ZcplGluFdcSdL,ZcplGluFdcSdR,   &
& ZcplGluFucSuL,ZcplGluFucSuR,ZcplHpmcHpmVP,ZcplHpmcVWmVP,ZcplSdcSdVG,ZcplSdcSdVP,       &
& ZcplSecSeVP,ZcplSucSuVG,ZcplSucSuVP,ZRUZD,ZRUZV,ZRUZVL,ZRUZU,ZRUZE,ZRUZH,              &
& ZRUZA,ZRUZP,ZRUZN,ZRUUM,ZRUUP,ZRUZEL,ZRUZER,ZRUZDL,ZRUZDR,ZRUZUL,ZRUZUR,               &
& MLambda,em,gs,deltaM,kont,gP1LChi)

Implicit None
Real(dp),Intent(in) :: g1,g2,g3,gp,lam,Tlam,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,ms2

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,Tu(3,3),mq2(3,3),            &
& md2(3,3),mu2(3,3),M1,M2,M3,M4,Tdp(3,3),Tep,Tmup

Real(dp),Intent(in) :: vd,vu,vS

Real(dp),Intent(in) :: MAh(3),MAh2(3),MCha(2),MCha2(2),MChi(6),MChi2(6),MFd(3),MFd2(3),MFe(3),               &
& MFe2(3),MFu(3),MFu2(3),MFv(3),MFv2(3),MGlu,MGlu2,Mhh(3),Mhh2(3),MHpm(2),               &
& MHpm2(2),MSd(6),MSd2(6),MSe(6),MSe2(6),MSu(6),MSu2(6),MSv(3),MSv2(3),MVWm,             &
& MVWm2,MVZ,MVZ2,MVZp,MVZp2,TW,TWp,v,ZP(2,2),ZZ(3,3),betaH

Complex(dp),Intent(in) :: pG,UM(2,2),UP(2,2),ZA(3,3),ZD(6,6),ZDL(3,3),ZDR(3,3),ZE(6,6),ZEL(3,3),ZER(3,3),       &
& ZH(3,3),ZN(6,6),ZU(6,6),ZUL(3,3),ZUR(3,3),ZV(3,3),ZVL(3,3),ZW(2,2)

Real(dp),Intent(in) :: dg1,dg2,dg3,dgp,dSinQq,dCosQq,dTanQq,dSinQl1,dCosQl1,dTanQl1,dSinQl2,dCosQl2,         &
& dTanQl2,dSinQl3,dCosQl3,dTanQl3,dSinQHd,dCosQHd,dTanQHd,dSinQHu,dCosQHu,               &
& dTanQHu,dSinQd,dCosQd,dTanQd,dSinQu,dCosQu,dTanQu,dSinQe1,dCosQe1,dTanQe1,             &
& dSinQe2,dCosQe2,dTanQe2,dSinQe3,dCosQe3,dTanQe3,dSinQs,dCosQs,dTanQs,dlam,             &
& dTlam,dml012,dml022,dml032,dmHd2,dmHu2,dme012,dme022,dme032,dms2,dvd,dvu,              &
& dvS,dZP(2,2),dSinTW,dCosTW,dTanTW,dSinTWp,dCosTWp,dTanTWp

Complex(dp),Intent(in) :: dYd(3,3),dTd(3,3),dYe11,dTYe11,dYe22,dTYe22,dYe33,dTYe33,dYu(3,3),dTu(3,3),           &
& dmq2(3,3),dmd2(3,3),dmu2(3,3),dM1,dM2,dM3,dM4,dTdp(3,3),dTep,dTmup,dpG,dZD(6,6),       &
& dZV(3,3),dZVL(3,3),dZU(6,6),dZE(6,6),dZH(3,3),dZA(3,3),dZN(6,6),dUM(2,2),              &
& dUP(2,2),dZEL(3,3),dZER(3,3),dZDL(3,3),dZDR(3,3),dZUL(3,3),dZUR(3,3)

Complex(dp),Intent(in) :: cplAhAhhh(3,3,3),cplAhcHpmVWm(3,2),cplAhhhVZ(3,3),cplAhhhVZp(3,3),cplAhHpmcHpm(3,2,2),&
& cplAhHpmcVWm(3,2),cplAhSdcSd(3,6,6),cplAhSecSe(3,6,6),cplAhSucSu(3,6,6),               &
& cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),cplcChaChahhL(2,2,3),cplcChaChahhR(2,2,3),   &
& cplcChaChaVPL(2,2),cplcChaChaVPR(2,2),cplcChaChaVZL(2,2),cplcChaChaVZpL(2,2),          &
& cplcChaChaVZpR(2,2),cplcChaChaVZR(2,2),cplcChaChiHpmL(2,6,2),cplcChaChiHpmR(2,6,2),    &
& cplcChaChiVWmL(2,6),cplcChaChiVWmR(2,6),cplcChaFdcSuL(2,3,6),cplcChaFdcSuR(2,3,6),     &
& cplcChaFecSvL(2,3,3),cplcChaFecSvR(2,3,3),cplcFdChaSuL(3,2,6),cplcFdChaSuR(3,2,6),     &
& cplcFdChiSdL(3,6,6),cplcFdChiSdR(3,6,6),cplcFdFdAhL(3,3,3),cplcFdFdAhR(3,3,3),         &
& cplcFdFdhhL(3,3,3),cplcFdFdhhR(3,3,3),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),               &
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZpL(3,3),cplcFdFdVZpR(3,3),&
& cplcFdFdVZR(3,3),cplcFdFuHpmL(3,3,2),cplcFdFuHpmR(3,3,2),cplcFdFuVWmL(3,3),            &
& cplcFdFuVWmR(3,3),cplcFdGluSdL(3,6),cplcFdGluSdR(3,6),cplcFeChaSvL(3,2,3),             &
& cplcFeChaSvR(3,2,3),cplcFeChiSeL(3,6,6),cplcFeChiSeR(3,6,6),cplcFeFeAhL(3,3,3),        &
& cplcFeFeAhR(3,3,3),cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcFeFeVPL(3,3),             &
& cplcFeFeVPR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZpL(3,3),cplcFeFeVZpR(3,3),cplcFeFeVZR(3,3),&
& cplcFeFvHpmL(3,3,2),cplcFeFvHpmR(3,3,2),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),           &
& cplcFuChiSuL(3,6,6),cplcFuChiSuR(3,6,6),cplcFuFdcHpmL(3,3,2),cplcFuFdcHpmR(3,3,2),     &
& cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFuFuAhL(3,3,3),cplcFuFuAhR(3,3,3),           &
& cplcFuFuhhL(3,3,3),cplcFuFuhhR(3,3,3),cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),               &
& cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFuFuVZL(3,3),cplcFuFuVZpL(3,3),cplcFuFuVZpR(3,3),&
& cplcFuFuVZR(3,3),cplcFuGluSuL(3,6),cplcFuGluSuR(3,6),cplcFvChiSvL(3,6,3),              &
& cplcFvChiSvR(3,6,3),cplcFvFecHpmL(3,3,2),cplcFvFecHpmR(3,3,2),cplcFvFecVWmL(3,3),      &
& cplcFvFecVWmR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZpL(3,3),cplcFvFvVZpR(3,3),               &
& cplcFvFvVZR(3,3),cplChaFucSdL(2,3,6),cplChaFucSdR(2,3,6),cplChaFvcSeL(2,3,6),          &
& cplChaFvcSeR(2,3,6),cplChiChacHpmL(6,2,2),cplChiChacHpmR(6,2,2),cplChiChacVWmL(6,2),   &
& cplChiChacVWmR(6,2),cplChiChiAhL(6,6,3),cplChiChiAhR(6,6,3),cplChiChihhL(6,6,3),       &
& cplChiChihhR(6,6,3),cplChiChiVZL(6,6),cplChiChiVZpL(6,6),cplChiChiVZpR(6,6),           &
& cplChiChiVZR(6,6),cplChiFdcSdL(6,3,6),cplChiFdcSdR(6,3,6),cplChiFecSeL(6,3,6),         &
& cplChiFecSeR(6,3,6),cplChiFucSuL(6,3,6),cplChiFucSuR(6,3,6),cplChiFvcSvL(6,3,3),       &
& cplChiFvcSvR(6,3,3),cplcHpmVPVWm(2),cplcHpmVWmVZ(2),cplcHpmVWmVZp(2),cplcVWmVPVWm,     &
& cplcVWmVWmVZ,cplcVWmVWmVZp,cplGluFdcSdL(3,6),cplGluFdcSdR(3,6),cplGluFucSuL(3,6),      &
& cplGluFucSuR(3,6),cplhhcHpmVWm(3,2),cplhhcVWmVWm(3),cplhhhhhh(3,3,3),cplhhHpmcHpm(3,2,2),&
& cplhhHpmcVWm(3,2),cplhhSdcSd(3,6,6),cplhhSecSe(3,6,6),cplhhSucSu(3,6,6),               &
& cplhhSvcSv(3,3,3),cplhhVZpVZp(3),cplhhVZVZ(3),cplhhVZVZp(3),cplHpmcHpmVP(2,2),         &
& cplHpmcHpmVZ(2,2),cplHpmcHpmVZp(2,2),cplHpmcVWmVP(2),cplHpmcVWmVZ(2),cplHpmcVWmVZp(2), &
& cplHpmSucSd(2,6,6),cplHpmSvcSe(2,3,6),cplSdcHpmcSu(6,2,6),cplSdcSdVG(6,6),             &
& cplSdcSdVP(6,6),cplSdcSdVZ(6,6),cplSdcSdVZp(6,6),cplSdcSucVWm(6,6),cplSecHpmcSv(6,2,3)

Complex(dp),Intent(in) :: cplSecSeVP(6,6),cplSecSeVZ(6,6),cplSecSeVZp(6,6),cplSecSvcVWm(6,3),cplSucSdVWm(6,6),   &
& cplSucSuVG(6,6),cplSucSuVP(6,6),cplSucSuVZ(6,6),cplSucSuVZp(6,6),cplSvcSeVWm(3,6),     &
& cplSvcSvVZ(3,3),cplSvcSvVZp(3,3),ctcplChiChacHpmL(6,2,2),ctcplChiChacHpmR(6,2,2),      &
& ctcplChiChacVWmL(6,2),ctcplChiChacVWmR(6,2),ctcplChiChiAhL(6,6,3),ctcplChiChiAhR(6,6,3),&
& ctcplChiChihhL(6,6,3),ctcplChiChihhR(6,6,3),ctcplChiChiVZL(6,6),ctcplChiChiVZpL(6,6),  &
& ctcplChiChiVZpR(6,6),ctcplChiChiVZR(6,6),ctcplChiFdcSdL(6,3,6),ctcplChiFdcSdR(6,3,6),  &
& ctcplChiFecSeL(6,3,6),ctcplChiFecSeR(6,3,6),ctcplChiFucSuL(6,3,6),ctcplChiFucSuR(6,3,6),&
& ctcplChiFvcSvL(6,3,3),ctcplChiFvcSvR(6,3,3),GcplChiChacHpmL(6,2,2),GcplChiChacHpmR(6,2,2),&
& GcplcHpmVPVWm(2),GcplHpmcVWmVP(2),GosZcplChiChacHpmL(6,2,2),GosZcplChiChacHpmR(6,2,2), &
& GosZcplcHpmVPVWm(2),GosZcplHpmcVWmVP(2),GZcplChiChacHpmL(6,2,2),GZcplChiChacHpmR(6,2,2),&
& GZcplcHpmVPVWm(2),GZcplHpmcVWmVP(2),ZcplcChaChaVPL(2,2),ZcplcChaChaVPR(2,2),           &
& ZcplcChaChiHpmL(2,6,2),ZcplcChaChiHpmR(2,6,2),ZcplcChaChiVWmL(2,6),ZcplcChaChiVWmR(2,6),&
& ZcplcFdChiSdL(3,6,6),ZcplcFdChiSdR(3,6,6),ZcplcFdFdVGL(3,3),ZcplcFdFdVGR(3,3),         &
& ZcplcFdFdVPL(3,3),ZcplcFdFdVPR(3,3),ZcplcFdGluSdL(3,6),ZcplcFdGluSdR(3,6),             &
& ZcplcFeChiSeL(3,6,6),ZcplcFeChiSeR(3,6,6),ZcplcFeFeVPL(3,3),ZcplcFeFeVPR(3,3),         &
& ZcplcFuChiSuL(3,6,6),ZcplcFuChiSuR(3,6,6),ZcplcFuFuVGL(3,3),ZcplcFuFuVGR(3,3),         &
& ZcplcFuFuVPL(3,3),ZcplcFuFuVPR(3,3),ZcplcFuGluSuL(3,6),ZcplcFuGluSuR(3,6),             &
& ZcplChiChacHpmL(6,2,2),ZcplChiChacHpmR(6,2,2),ZcplChiChacVWmL(6,2),ZcplChiChacVWmR(6,2),&
& ZcplChiChiAhL(6,6,3),ZcplChiChiAhR(6,6,3),ZcplChiChihhL(6,6,3),ZcplChiChihhR(6,6,3),   &
& ZcplChiChiVZL(6,6),ZcplChiChiVZpL(6,6),ZcplChiChiVZpR(6,6),ZcplChiChiVZR(6,6),         &
& ZcplChiFdcSdL(6,3,6),ZcplChiFdcSdR(6,3,6),ZcplChiFecSeL(6,3,6),ZcplChiFecSeR(6,3,6),   &
& ZcplChiFucSuL(6,3,6),ZcplChiFucSuR(6,3,6),ZcplChiFvcSvL(6,3,3),ZcplChiFvcSvR(6,3,3),   &
& ZcplcHpmVPVWm(2),ZcplcVWmVPVWm,ZcplGluFdcSdL(3,6),ZcplGluFdcSdR(3,6),ZcplGluFucSuL(3,6),&
& ZcplGluFucSuR(3,6),ZcplHpmcHpmVP(2,2),ZcplHpmcVWmVP(2),ZcplSdcSdVG(6,6),               &
& ZcplSdcSdVP(6,6),ZcplSecSeVP(6,6),ZcplSucSuVG(6,6),ZcplSucSuVP(6,6)

Real(dp), Intent(in) :: em, gs
Complex(dp),Intent(in) :: ZfVG,ZffG,ZfVP,ZfVZ,ZfVZp,ZfVWm,ZfSd(6,6),ZfSv(3,3),ZfFvL(3,3),ZfSu(6,6),             &
& ZfSe(6,6),Zfhh(3,3),ZfAh(3,3),ZfHpm(2,2),ZfL0(6,6),ZfLm(2,2),ZfLp(2,2),ZfFEL(3,3),     &
& ZfFER(3,3),ZfFDL(3,3),ZfFDR(3,3),ZfFUL(3,3),ZfFUR(3,3),ZfVPVZ,ZfVZVP,ZfVPVZp,          &
& ZfVZpVP,ZfVZVZp,ZfVZpVZ

Real(dp),Intent(in) :: MSdOS(6),MSd2OS(6),MSvOS(3),MSv2OS(3),MFvOS(3),MFv2OS(3),MSuOS(6),MSu2OS(6),          &
& MSeOS(6),MSe2OS(6),MhhOS(3),Mhh2OS(3),MAhOS(3),MAh2OS(3),MHpmOS(2),MHpm2OS(2),         &
& MChiOS(6),MChi2OS(6),MChaOS(2),MCha2OS(2),MFeOS(3),MFe2OS(3),MFdOS(3),MFd2OS(3),       &
& MFuOS(3),MFu2OS(3),MGluOS,MGlu2OS,MVZOS,MVZpOS,MVZ2OS,MVZp2OS,MVWmOS,MVWm2OS,ZPOS(2,2)

Complex(dp),Intent(in) :: ZDOS(6,6),ZVOS(3,3),ZVLOS(3,3),ZUOS(6,6),ZEOS(6,6),ZHOS(3,3),ZAOS(3,3),               &
& ZNOS(6,6),UMOS(2,2),UPOS(2,2),ZELOS(3,3),ZEROS(3,3),ZDLOS(3,3),ZDROS(3,3),             &
& ZULOS(3,3),ZUROS(3,3)

Complex(dp),Intent(in) :: ZRUZD(6,6),ZRUZV(3,3),ZRUZVL(3,3),ZRUZU(6,6),ZRUZE(6,6),ZRUZH(3,3),ZRUZA(3,3),        &
& ZRUZP(2,2),ZRUZN(6,6),ZRUUM(2,2),ZRUUP(2,2),ZRUZEL(3,3),ZRUZER(3,3),ZRUZDL(3,3),       &
& ZRUZDR(3,3),ZRUZUL(3,3),ZRUZUR(3,3)

Real(dp), Intent(in) :: MLambda, deltaM
Real(dp), Intent(out) :: gP1LChi(6,110)
Integer, Intent(out) :: kont
Real(dp) :: MVG,MVP,MVG2,MVP2, helfactor, phasespacefactor
Integer :: i1,i2,i3,i4, isave, gt1, gt2, gt3

Complex(dp) :: ZRUZDc(6, 6)
Complex(dp) :: ZRUZVc(3, 3)
Complex(dp) :: ZRUZVLc(3, 3)
Complex(dp) :: ZRUZUc(6, 6)
Complex(dp) :: ZRUZEc(6, 6)
Complex(dp) :: ZRUZHc(3, 3)
Complex(dp) :: ZRUZAc(3, 3)
Complex(dp) :: ZRUZPc(2, 2)
Complex(dp) :: ZRUZNc(6, 6)
Complex(dp) :: ZRUUMc(2, 2)
Complex(dp) :: ZRUUPc(2, 2)
Complex(dp) :: ZRUZELc(3, 3)
Complex(dp) :: ZRUZERc(3, 3)
Complex(dp) :: ZRUZDLc(3, 3)
Complex(dp) :: ZRUZDRc(3, 3)
Complex(dp) :: ZRUZULc(3, 3)
Complex(dp) :: ZRUZURc(3, 3)
Real(dp) :: MRPChiToChiAh(6,6,3),MRGChiToChiAh(6,6,3), MRPZChiToChiAh(6,6,3),MRGZChiToChiAh(6,6,3)
Real(dp) :: MVPChiToChiAh(6,6,3)
Real(dp) :: RMsqTreeChiToChiAh(6,6,3),RMsqWaveChiToChiAh(6,6,3),RMsqVertexChiToChiAh(6,6,3)
Complex(dp) :: AmpTreeChiToChiAh(2,6,6,3),AmpWaveChiToChiAh(2,6,6,3)=(0._dp,0._dp),AmpVertexChiToChiAh(2,6,6,3)&
 & ,AmpVertexIRosChiToChiAh(2,6,6,3),AmpVertexIRdrChiToChiAh(2,6,6,3), AmpSumChiToChiAh(2,6,6,3), AmpSum2ChiToChiAh(2,6,6,3)
Complex(dp) :: AmpTreeZChiToChiAh(2,6,6,3),AmpWaveZChiToChiAh(2,6,6,3),AmpVertexZChiToChiAh(2,6,6,3)
Real(dp) :: AmpSqChiToChiAh(6,6,3),  AmpSqTreeChiToChiAh(6,6,3)
Real(dp) :: MRPChiToChacHpm(6,2,2),MRGChiToChacHpm(6,2,2), MRPZChiToChacHpm(6,2,2),MRGZChiToChacHpm(6,2,2)
Real(dp) :: MVPChiToChacHpm(6,2,2)
Real(dp) :: RMsqTreeChiToChacHpm(6,2,2),RMsqWaveChiToChacHpm(6,2,2),RMsqVertexChiToChacHpm(6,2,2)
Complex(dp) :: AmpTreeChiToChacHpm(2,6,2,2),AmpWaveChiToChacHpm(2,6,2,2)=(0._dp,0._dp),AmpVertexChiToChacHpm(2,6,2,2)&
 & ,AmpVertexIRosChiToChacHpm(2,6,2,2),AmpVertexIRdrChiToChacHpm(2,6,2,2), AmpSumChiToChacHpm(2,6,2,2), AmpSum2ChiToChacHpm(2,6,2,2)
Complex(dp) :: AmpTreeZChiToChacHpm(2,6,2,2),AmpWaveZChiToChacHpm(2,6,2,2),AmpVertexZChiToChacHpm(2,6,2,2)
Real(dp) :: AmpSqChiToChacHpm(6,2,2),  AmpSqTreeChiToChacHpm(6,2,2)
Real(dp) :: MRPChiToChacVWm(6,2),MRGChiToChacVWm(6,2), MRPZChiToChacVWm(6,2),MRGZChiToChacVWm(6,2)
Real(dp) :: MVPChiToChacVWm(6,2)
Real(dp) :: RMsqTreeChiToChacVWm(6,2),RMsqWaveChiToChacVWm(6,2),RMsqVertexChiToChacVWm(6,2)
Complex(dp) :: AmpTreeChiToChacVWm(4,6,2),AmpWaveChiToChacVWm(4,6,2)=(0._dp,0._dp),AmpVertexChiToChacVWm(4,6,2)&
 & ,AmpVertexIRosChiToChacVWm(4,6,2),AmpVertexIRdrChiToChacVWm(4,6,2), AmpSumChiToChacVWm(4,6,2), AmpSum2ChiToChacVWm(4,6,2)
Complex(dp) :: AmpTreeZChiToChacVWm(4,6,2),AmpWaveZChiToChacVWm(4,6,2),AmpVertexZChiToChacVWm(4,6,2)
Real(dp) :: AmpSqChiToChacVWm(6,2),  AmpSqTreeChiToChacVWm(6,2)
Real(dp) :: MRPChiToChihh(6,6,3),MRGChiToChihh(6,6,3), MRPZChiToChihh(6,6,3),MRGZChiToChihh(6,6,3)
Real(dp) :: MVPChiToChihh(6,6,3)
Real(dp) :: RMsqTreeChiToChihh(6,6,3),RMsqWaveChiToChihh(6,6,3),RMsqVertexChiToChihh(6,6,3)
Complex(dp) :: AmpTreeChiToChihh(2,6,6,3),AmpWaveChiToChihh(2,6,6,3)=(0._dp,0._dp),AmpVertexChiToChihh(2,6,6,3)&
 & ,AmpVertexIRosChiToChihh(2,6,6,3),AmpVertexIRdrChiToChihh(2,6,6,3), AmpSumChiToChihh(2,6,6,3), AmpSum2ChiToChihh(2,6,6,3)
Complex(dp) :: AmpTreeZChiToChihh(2,6,6,3),AmpWaveZChiToChihh(2,6,6,3),AmpVertexZChiToChihh(2,6,6,3)
Real(dp) :: AmpSqChiToChihh(6,6,3),  AmpSqTreeChiToChihh(6,6,3)
Real(dp) :: MRPChiToChiVZ(6,6),MRGChiToChiVZ(6,6), MRPZChiToChiVZ(6,6),MRGZChiToChiVZ(6,6)
Real(dp) :: MVPChiToChiVZ(6,6)
Real(dp) :: RMsqTreeChiToChiVZ(6,6),RMsqWaveChiToChiVZ(6,6),RMsqVertexChiToChiVZ(6,6)
Complex(dp) :: AmpTreeChiToChiVZ(4,6,6),AmpWaveChiToChiVZ(4,6,6)=(0._dp,0._dp),AmpVertexChiToChiVZ(4,6,6)&
 & ,AmpVertexIRosChiToChiVZ(4,6,6),AmpVertexIRdrChiToChiVZ(4,6,6), AmpSumChiToChiVZ(4,6,6), AmpSum2ChiToChiVZ(4,6,6)
Complex(dp) :: AmpTreeZChiToChiVZ(4,6,6),AmpWaveZChiToChiVZ(4,6,6),AmpVertexZChiToChiVZ(4,6,6)
Real(dp) :: AmpSqChiToChiVZ(6,6),  AmpSqTreeChiToChiVZ(6,6)
Real(dp) :: MRPChiToChiVZp(6,6),MRGChiToChiVZp(6,6), MRPZChiToChiVZp(6,6),MRGZChiToChiVZp(6,6)
Real(dp) :: MVPChiToChiVZp(6,6)
Real(dp) :: RMsqTreeChiToChiVZp(6,6),RMsqWaveChiToChiVZp(6,6),RMsqVertexChiToChiVZp(6,6)
Complex(dp) :: AmpTreeChiToChiVZp(4,6,6),AmpWaveChiToChiVZp(4,6,6)=(0._dp,0._dp),AmpVertexChiToChiVZp(4,6,6)&
 & ,AmpVertexIRosChiToChiVZp(4,6,6),AmpVertexIRdrChiToChiVZp(4,6,6), AmpSumChiToChiVZp(4,6,6), AmpSum2ChiToChiVZp(4,6,6)
Complex(dp) :: AmpTreeZChiToChiVZp(4,6,6),AmpWaveZChiToChiVZp(4,6,6),AmpVertexZChiToChiVZp(4,6,6)
Real(dp) :: AmpSqChiToChiVZp(6,6),  AmpSqTreeChiToChiVZp(6,6)
Real(dp) :: MRPChiToFdcSd(6,3,6),MRGChiToFdcSd(6,3,6), MRPZChiToFdcSd(6,3,6),MRGZChiToFdcSd(6,3,6)
Real(dp) :: MVPChiToFdcSd(6,3,6)
Real(dp) :: RMsqTreeChiToFdcSd(6,3,6),RMsqWaveChiToFdcSd(6,3,6),RMsqVertexChiToFdcSd(6,3,6)
Complex(dp) :: AmpTreeChiToFdcSd(2,6,3,6),AmpWaveChiToFdcSd(2,6,3,6)=(0._dp,0._dp),AmpVertexChiToFdcSd(2,6,3,6)&
 & ,AmpVertexIRosChiToFdcSd(2,6,3,6),AmpVertexIRdrChiToFdcSd(2,6,3,6), AmpSumChiToFdcSd(2,6,3,6), AmpSum2ChiToFdcSd(2,6,3,6)
Complex(dp) :: AmpTreeZChiToFdcSd(2,6,3,6),AmpWaveZChiToFdcSd(2,6,3,6),AmpVertexZChiToFdcSd(2,6,3,6)
Real(dp) :: AmpSqChiToFdcSd(6,3,6),  AmpSqTreeChiToFdcSd(6,3,6)
Real(dp) :: MRPChiToFecSe(6,3,6),MRGChiToFecSe(6,3,6), MRPZChiToFecSe(6,3,6),MRGZChiToFecSe(6,3,6)
Real(dp) :: MVPChiToFecSe(6,3,6)
Real(dp) :: RMsqTreeChiToFecSe(6,3,6),RMsqWaveChiToFecSe(6,3,6),RMsqVertexChiToFecSe(6,3,6)
Complex(dp) :: AmpTreeChiToFecSe(2,6,3,6),AmpWaveChiToFecSe(2,6,3,6)=(0._dp,0._dp),AmpVertexChiToFecSe(2,6,3,6)&
 & ,AmpVertexIRosChiToFecSe(2,6,3,6),AmpVertexIRdrChiToFecSe(2,6,3,6), AmpSumChiToFecSe(2,6,3,6), AmpSum2ChiToFecSe(2,6,3,6)
Complex(dp) :: AmpTreeZChiToFecSe(2,6,3,6),AmpWaveZChiToFecSe(2,6,3,6),AmpVertexZChiToFecSe(2,6,3,6)
Real(dp) :: AmpSqChiToFecSe(6,3,6),  AmpSqTreeChiToFecSe(6,3,6)
Real(dp) :: MRPChiToFucSu(6,3,6),MRGChiToFucSu(6,3,6), MRPZChiToFucSu(6,3,6),MRGZChiToFucSu(6,3,6)
Real(dp) :: MVPChiToFucSu(6,3,6)
Real(dp) :: RMsqTreeChiToFucSu(6,3,6),RMsqWaveChiToFucSu(6,3,6),RMsqVertexChiToFucSu(6,3,6)
Complex(dp) :: AmpTreeChiToFucSu(2,6,3,6),AmpWaveChiToFucSu(2,6,3,6)=(0._dp,0._dp),AmpVertexChiToFucSu(2,6,3,6)&
 & ,AmpVertexIRosChiToFucSu(2,6,3,6),AmpVertexIRdrChiToFucSu(2,6,3,6), AmpSumChiToFucSu(2,6,3,6), AmpSum2ChiToFucSu(2,6,3,6)
Complex(dp) :: AmpTreeZChiToFucSu(2,6,3,6),AmpWaveZChiToFucSu(2,6,3,6),AmpVertexZChiToFucSu(2,6,3,6)
Real(dp) :: AmpSqChiToFucSu(6,3,6),  AmpSqTreeChiToFucSu(6,3,6)
Real(dp) :: MRPChiToFvcSv(6,3,3),MRGChiToFvcSv(6,3,3), MRPZChiToFvcSv(6,3,3),MRGZChiToFvcSv(6,3,3)
Real(dp) :: MVPChiToFvcSv(6,3,3)
Real(dp) :: RMsqTreeChiToFvcSv(6,3,3),RMsqWaveChiToFvcSv(6,3,3),RMsqVertexChiToFvcSv(6,3,3)
Complex(dp) :: AmpTreeChiToFvcSv(2,6,3,3),AmpWaveChiToFvcSv(2,6,3,3)=(0._dp,0._dp),AmpVertexChiToFvcSv(2,6,3,3)&
 & ,AmpVertexIRosChiToFvcSv(2,6,3,3),AmpVertexIRdrChiToFvcSv(2,6,3,3), AmpSumChiToFvcSv(2,6,3,3), AmpSum2ChiToFvcSv(2,6,3,3)
Complex(dp) :: AmpTreeZChiToFvcSv(2,6,3,3),AmpWaveZChiToFvcSv(2,6,3,3),AmpVertexZChiToFvcSv(2,6,3,3)
Real(dp) :: AmpSqChiToFvcSv(6,3,3),  AmpSqTreeChiToFvcSv(6,3,3)
Real(dp) :: MRPChiToChiVP(6,6),MRGChiToChiVP(6,6), MRPZChiToChiVP(6,6),MRGZChiToChiVP(6,6)
Real(dp) :: MVPChiToChiVP(6,6)
Real(dp) :: RMsqTreeChiToChiVP(6,6),RMsqWaveChiToChiVP(6,6),RMsqVertexChiToChiVP(6,6)
Complex(dp) :: AmpTreeChiToChiVP(4,6,6),AmpWaveChiToChiVP(4,6,6)=(0._dp,0._dp),AmpVertexChiToChiVP(4,6,6)&
 & ,AmpVertexIRosChiToChiVP(4,6,6),AmpVertexIRdrChiToChiVP(4,6,6), AmpSumChiToChiVP(4,6,6), AmpSum2ChiToChiVP(4,6,6)
Complex(dp) :: AmpTreeZChiToChiVP(4,6,6),AmpWaveZChiToChiVP(4,6,6),AmpVertexZChiToChiVP(4,6,6)
Real(dp) :: AmpSqChiToChiVP(6,6),  AmpSqTreeChiToChiVP(6,6)
Real(dp) :: MRPChiToGluVG(6),MRGChiToGluVG(6), MRPZChiToGluVG(6),MRGZChiToGluVG(6)
Real(dp) :: MVPChiToGluVG(6)
Real(dp) :: RMsqTreeChiToGluVG(6),RMsqWaveChiToGluVG(6),RMsqVertexChiToGluVG(6)
Complex(dp) :: AmpTreeChiToGluVG(4,6),AmpWaveChiToGluVG(4,6)=(0._dp,0._dp),AmpVertexChiToGluVG(4,6)&
 & ,AmpVertexIRosChiToGluVG(4,6),AmpVertexIRdrChiToGluVG(4,6), AmpSumChiToGluVG(4,6), AmpSum2ChiToGluVG(4,6)
Complex(dp) :: AmpTreeZChiToGluVG(4,6),AmpWaveZChiToGluVG(4,6),AmpVertexZChiToGluVG(4,6)
Real(dp) :: AmpSqChiToGluVG(6),  AmpSqTreeChiToGluVG(6)
Write(*,*) "Calculating one-loop decays of Chi "
kont = 0
MVG = MLambda
MVP = MLambda
MVG2 = MLambda**2
MVP2 = MLambda**2

ZRUZDc = Conjg(ZRUZD)
ZRUZVc = Conjg(ZRUZV)
ZRUZVLc = Conjg(ZRUZVL)
ZRUZUc = Conjg(ZRUZU)
ZRUZEc = Conjg(ZRUZE)
ZRUZHc = Conjg(ZRUZH)
ZRUZAc = Conjg(ZRUZA)
ZRUZPc = Conjg(ZRUZP)
ZRUZNc = Conjg(ZRUZN)
ZRUUMc = Conjg(ZRUUM)
ZRUUPc = Conjg(ZRUUP)
ZRUZELc = Conjg(ZRUZEL)
ZRUZERc = Conjg(ZRUZER)
ZRUZDLc = Conjg(ZRUZDL)
ZRUZDRc = Conjg(ZRUZDR)
ZRUZULc = Conjg(ZRUZUL)
ZRUZURc = Conjg(ZRUZUR)

 ! Counter
isave = 1

If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Chi Ah
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToChiAh(cplChiChiAhL,cplChiChiAhR,MAh,MChi,           &
& MAh2,MChi2,AmpTreeChiToChiAh)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToChiAh(ZcplChiChiAhL,ZcplChiChiAhR,MAh,              &
& MChi,MAh2,MChi2,AmpTreeChiToChiAh)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToChiAh(MLambda,em,gs,cplChiChiAhL,cplChiChiAhR,          &
& MAhOS,MChiOS,MRPChiToChiAh,MRGChiToChiAh)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChiAh(MLambda,em,gs,ZcplChiChiAhL,ZcplChiChiAhR,        &
& MAhOS,MChiOS,MRPChiToChiAh,MRGChiToChiAh)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToChiAh(MLambda,em,gs,cplChiChiAhL,cplChiChiAhR,          &
& MAh,MChi,MRPChiToChiAh,MRGChiToChiAh)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChiAh(MLambda,em,gs,ZcplChiChiAhL,ZcplChiChiAhR,        &
& MAh,MChi,MRPChiToChiAh,MRGChiToChiAh)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToChiAh(cplChiChiAhL,cplChiChiAhR,ctcplChiChiAhL,     &
& ctcplChiChiAhR,MAh,MAh2,MChi,MChi2,ZfAh,ZfL0,AmpWaveChiToChiAh)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToChiAh(MAh,MCha,MChi,MFd,MFe,MFu,Mhh,              &
& MHpm,MSd,MSe,MSu,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,Mhh2,MHpm2,             &
& MSd2,MSe2,MSu2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplcChaChaAhL,cplcChaChaAhR,cplChiChiAhL,    &
& cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,cplcFuFuAhL,              &
& cplcFuFuAhR,cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhSdcSd,cplAhSecSe,      &
& cplAhSucSu,cplAhcHpmVWm,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,   &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,AmpVertexChiToChiAh)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiAh(MAh,MCha,MChi,MFd,MFe,MFu,               &
& Mhh,MHpm,MSd,MSe,MSu,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,Mhh2,               &
& MHpm2,MSd2,MSe2,MSu2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplcChaChaAhL,cplcChaChaAhR,           &
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             &
& cplcFuFuAhL,cplcFuFuAhR,cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhSdcSd,     &
& cplAhSecSe,cplAhSucSu,cplAhcHpmVWm,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,       &
& cplChiChacVWmR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,     &
& cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,AmpVertexIRdrChiToChiAh)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiAh(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFeOS,MFuOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,         &
& MChi2OS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MVWm2OS,              &
& MVZ2OS,MVZp2OS,cplAhAhhh,cplcChaChaAhL,cplcChaChaAhR,ZcplChiChiAhL,ZcplChiChiAhR,      &
& cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,cplcFuFuAhL,cplcFuFuAhR,               &
& cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,       &
& cplAhcHpmVWm,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,              &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,AmpVertexIRosChiToChiAh)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiAh(MAh,MCha,MChi,MFd,MFe,MFu,               &
& Mhh,MHpm,MSd,MSe,MSu,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,Mhh2,               &
& MHpm2,MSd2,MSe2,MSu2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplcChaChaAhL,cplcChaChaAhR,           &
& ZcplChiChiAhL,ZcplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,           &
& cplcFuFuAhL,cplcFuFuAhR,cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhSdcSd,     &
& cplAhSecSe,cplAhSucSu,cplAhcHpmVWm,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,       &
& cplChiChacVWmR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,     &
& cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,AmpVertexIRosChiToChiAh)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiAh(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFeOS,MFuOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,         &
& MChi2OS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MVWm2OS,              &
& MVZ2OS,MVZp2OS,cplAhAhhh,cplcChaChaAhL,cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,        &
& cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,cplcFuFuAhL,cplcFuFuAhR,               &
& cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhSdcSd,cplAhSecSe,cplAhSucSu,       &
& cplAhcHpmVWm,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,              &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,AmpVertexIRosChiToChiAh)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiAh(MAh,MCha,MChi,MFd,MFe,MFu,               &
& Mhh,MHpm,MSd,MSe,MSu,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,Mhh2,               &
& MHpm2,MSd2,MSe2,MSu2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplcChaChaAhL,cplcChaChaAhR,           &
& cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,cplcFeFeAhL,cplcFeFeAhR,             &
& cplcFuFuAhL,cplcFuFuAhR,cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhSdcSd,     &
& cplAhSecSe,cplAhSucSu,cplAhcHpmVWm,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,       &
& cplChiChacVWmR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,     &
& cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,AmpVertexIRosChiToChiAh)

 End if
 End if
AmpVertexChiToChiAh = AmpVertexChiToChiAh -  AmpVertexIRdrChiToChiAh! +  AmpVertexIRosChiToChiAh ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToChiAh=0._dp
AmpVertexZChiToChiAh=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChiAh(1,gt2,:,:) = AmpWaveZChiToChiAh(1,gt2,:,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChiAh(1,gt1,:,:)
AmpVertexZChiToChiAh(1,gt2,:,:)= AmpVertexZChiToChiAh(1,gt2,:,:) + ZRUZN(gt2,gt1)*AmpVertexChiToChiAh(1,gt1,:,:)
AmpWaveZChiToChiAh(2,gt2,:,:) = AmpWaveZChiToChiAh(2,gt2,:,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiAh(2,gt1,:,:)
AmpVertexZChiToChiAh(2,gt2,:,:)= AmpVertexZChiToChiAh(2,gt2,:,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToChiAh(2,gt1,:,:)
 End Do
End Do
AmpWaveChiToChiAh=AmpWaveZChiToChiAh
AmpVertexChiToChiAh= AmpVertexZChiToChiAh
! Final State 1
AmpWaveZChiToChiAh=0._dp
AmpVertexZChiToChiAh=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChiAh(1,:,gt2,:) = AmpWaveZChiToChiAh(1,:,gt2,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChiAh(1,:,gt1,:)
AmpVertexZChiToChiAh(1,:,gt2,:)= AmpVertexZChiToChiAh(1,:,gt2,:)+ZRUZN(gt2,gt1)*AmpVertexChiToChiAh(1,:,gt1,:)
AmpWaveZChiToChiAh(2,:,gt2,:) = AmpWaveZChiToChiAh(2,:,gt2,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiAh(2,:,gt1,:)
AmpVertexZChiToChiAh(2,:,gt2,:)= AmpVertexZChiToChiAh(2,:,gt2,:)+ZRUZNc(gt2,gt1)*AmpVertexChiToChiAh(2,:,gt1,:)
 End Do
End Do
AmpWaveChiToChiAh=AmpWaveZChiToChiAh
AmpVertexChiToChiAh= AmpVertexZChiToChiAh
! Final State 2
AmpWaveZChiToChiAh=0._dp
AmpVertexZChiToChiAh=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZChiToChiAh(:,:,:,gt2) = AmpWaveZChiToChiAh(:,:,:,gt2)+ZRUZA(gt2,gt1)*AmpWaveChiToChiAh(:,:,:,gt1)
AmpVertexZChiToChiAh(:,:,:,gt2)= AmpVertexZChiToChiAh(:,:,:,gt2)+ZRUZA(gt2,gt1)*AmpVertexChiToChiAh(:,:,:,gt1)
 End Do
End Do
AmpWaveChiToChiAh=AmpWaveZChiToChiAh
AmpVertexChiToChiAh= AmpVertexZChiToChiAh
End if
If (ShiftIRdiv) Then
AmpVertexChiToChiAh = AmpVertexChiToChiAh  +  AmpVertexIRosChiToChiAh
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Chi Ah -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToChiAh = AmpTreeChiToChiAh
 AmpSum2ChiToChiAh = AmpTreeChiToChiAh + 2._dp*AmpWaveChiToChiAh + 2._dp*AmpVertexChiToChiAh
Else
 AmpSumChiToChiAh = AmpTreeChiToChiAh + AmpWaveChiToChiAh + AmpVertexChiToChiAh
 AmpSum2ChiToChiAh = AmpTreeChiToChiAh + AmpWaveChiToChiAh + AmpVertexChiToChiAh
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToChiAh = AmpTreeChiToChiAh
 AmpSum2ChiToChiAh = AmpTreeChiToChiAh
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,6
    Do gt3=3,3
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MChiOS(gt2))+Abs(MAhOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MChi(gt2))+Abs(MAh(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2ChiToChiAh = AmpTreeChiToChiAh
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MAhOS(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),MAh(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToChiAh(gt1, gt2, gt3)
  AmpSum2ChiToChiAh = 2._dp*AmpWaveChiToChiAh
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MAhOS(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),MAh(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToChiAh(gt1, gt2, gt3)
  AmpSum2ChiToChiAh = 2._dp*AmpVertexChiToChiAh
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MAhOS(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),MAh(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToChiAh(gt1, gt2, gt3)
  AmpSum2ChiToChiAh = AmpTreeChiToChiAh + 2._dp*AmpWaveChiToChiAh + 2._dp*AmpVertexChiToChiAh
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MAhOS(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),MAh(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToChiAh(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2ChiToChiAh = AmpTreeChiToChiAh
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MAhOS(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
  AmpSqTreeChiToChiAh(gt1, gt2, gt3) = AmpSqChiToChiAh(gt1, gt2, gt3)
  AmpSum2ChiToChiAh = + 2._dp*AmpWaveChiToChiAh + 2._dp*AmpVertexChiToChiAh
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MAhOS(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
  AmpSqChiToChiAh(gt1, gt2, gt3) = AmpSqChiToChiAh(gt1, gt2, gt3) + AmpSqTreeChiToChiAh(gt1, gt2, gt3)
Else
  AmpSum2ChiToChiAh = AmpTreeChiToChiAh
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),MAh(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
  AmpSqTreeChiToChiAh(gt1, gt2, gt3) = AmpSqChiToChiAh(gt1, gt2, gt3)
  AmpSum2ChiToChiAh = + 2._dp*AmpWaveChiToChiAh + 2._dp*AmpVertexChiToChiAh
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),MAh(gt3),AmpSumChiToChiAh(:,gt1, gt2, gt3),AmpSum2ChiToChiAh(:,gt1, gt2, gt3),AmpSqChiToChiAh(gt1, gt2, gt3))
  AmpSqChiToChiAh(gt1, gt2, gt3) = AmpSqChiToChiAh(gt1, gt2, gt3) + AmpSqTreeChiToChiAh(gt1, gt2, gt3)
End if
Else
  AmpSqChiToChiAh(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToChiAh(gt1, gt2, gt3).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChiOS(gt1),MChiOS(gt2),MAhOS(gt3),helfactor*AmpSqChiToChiAh(gt1, gt2, gt3))
Else
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChi(gt1),MChi(gt2),MAh(gt3),helfactor*AmpSqChiToChiAh(gt1, gt2, gt3))
End if
If ((Abs(MRPChiToChiAh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToChiAh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToChiAh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToChiAh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToChiAh(gt1, gt2, gt3) + MRGChiToChiAh(gt1, gt2, gt3))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToChiAh(gt1, gt2, gt3) + MRGChiToChiAh(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Cha Conjg(Hpm)
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToChacHpm(cplChiChacHpmL,cplChiChacHpmR,              &
& MCha,MChi,MHpm,MCha2,MChi2,MHpm2,AmpTreeChiToChacHpm)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToChacHpm(ZcplChiChacHpmL,ZcplChiChacHpmR,            &
& MCha,MChi,MHpm,MCha2,MChi2,MHpm2,AmpTreeChiToChacHpm)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToChacHpm(MLambda,em,gs,cplChiChacHpmL,cplChiChacHpmR,    &
& MChaOS,MChiOS,MHpmOS,MRPChiToChacHpm,MRGChiToChacHpm)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChacHpm(MLambda,em,gs,ZcplChiChacHpmL,ZcplChiChacHpmR,  &
& MChaOS,MChiOS,MHpmOS,MRPChiToChacHpm,MRGChiToChacHpm)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToChacHpm(MLambda,em,gs,cplChiChacHpmL,cplChiChacHpmR,    &
& MCha,MChi,MHpm,MRPChiToChacHpm,MRGChiToChacHpm)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChacHpm(MLambda,em,gs,ZcplChiChacHpmL,ZcplChiChacHpmR,  &
& MCha,MChi,MHpm,MRPChiToChacHpm,MRGChiToChacHpm)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToChacHpm(cplChiChacHpmL,cplChiChacHpmR,              &
& ctcplChiChacHpmL,ctcplChiChacHpmR,MCha,MCha2,MChi,MChi2,MHpm,MHpm2,ZfHpm,              &
& ZfL0,ZfLm,ZfLp,AmpWaveChiToChacHpm)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToChacHpm(MAh,MCha,MChi,MFd,MFe,MFu,MFv,            &
& Mhh,MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,               &
& cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplAhHpmcHpm,cplAhcHpmVWm,cplChiChacHpmL,      &
& cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,   &
& cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,       &
& cplcFeChaSvR,cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,   &
& cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFvFecHpmL,  &
& cplcFvFecHpmR,cplhhHpmcHpm,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,       &
& cplSdcHpmcSu,cplSecHpmcSv,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,AmpVertexChiToChacHpm)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacHpm(MAh,MCha,MChi,MFd,MFe,MFu,             &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,             &
& MFu2,MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,          &
& cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplAhHpmcHpm,cplAhcHpmVWm,cplChiChacHpmL,      &
& cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,   &
& cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,       &
& cplcFeChaSvR,cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,   &
& cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFvFecHpmL,  &
& cplcFvFecHpmR,cplhhHpmcHpm,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,       &
& cplSdcHpmcSu,cplSecHpmcSv,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,AmpVertexIRdrChiToChacHpm)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacHpm(MAhOS,MChaOS,MChiOS,MFdOS,             &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVP,MVWmOS,MVZOS,               &
& MVZpOS,MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,              &
& MSd2OS,MSe2OS,MSu2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplcChaChaAhL,cplcChaChaAhR,   &
& cplChiChiAhL,cplChiChiAhR,cplAhHpmcHpm,cplAhcHpmVWm,ZcplChiChacHpmL,ZcplChiChacHpmR,   &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,     &
& cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,       &
& cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR, &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     &
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFvFecHpmL,               &
& cplcFvFecHpmR,cplhhHpmcHpm,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,       &
& cplSdcHpmcSu,cplSecHpmcSv,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,AmpVertexIRosChiToChacHpm)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacHpm(MAh,MCha,MChi,MFd,MFe,MFu,             &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,             &
& MFu2,MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,          &
& cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplAhHpmcHpm,cplAhcHpmVWm,ZcplChiChacHpmL,     &
& ZcplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,               &
& cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,       &
& cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,     &
& cplcChaChaVZpL,cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,     &
& cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,       &
& cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,     &
& cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,         &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcHpmL,cplcFuFdcHpmR,   &
& cplcFvFecHpmL,cplcFvFecHpmR,cplhhHpmcHpm,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,       &
& cplHpmcHpmVZp,cplSdcHpmcSu,cplSecHpmcSv,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,       &
& AmpVertexIRosChiToChacHpm)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacHpm(MAhOS,MChaOS,MChiOS,MFdOS,             &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVP,MVWmOS,MVZOS,               &
& MVZpOS,MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,              &
& MSd2OS,MSe2OS,MSu2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplcChaChaAhL,cplcChaChaAhR,   &
& cplChiChiAhL,cplChiChiAhR,cplAhHpmcHpm,cplAhcHpmVWm,cplChiChacHpmL,cplChiChacHpmR,     &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,     &
& cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,       &
& cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR, &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     &
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFvFecHpmL,               &
& cplcFvFecHpmR,cplhhHpmcHpm,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,       &
& cplSdcHpmcSu,cplSecHpmcSv,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,AmpVertexIRosChiToChacHpm)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacHpm(MAh,MCha,MChi,MFd,MFe,MFu,             &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,             &
& MFu2,MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,          &
& cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplAhHpmcHpm,cplAhcHpmVWm,cplChiChacHpmL,      &
& cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,   &
& cplChaFvcSeR,cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,       &
& cplcFeChaSvR,cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,   &
& cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFvFecHpmL,  &
& cplcFvFecHpmR,cplhhHpmcHpm,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,       &
& cplSdcHpmcSu,cplSecHpmcSv,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,AmpVertexIRosChiToChacHpm)

 End if
 End if
AmpVertexChiToChacHpm = AmpVertexChiToChacHpm -  AmpVertexIRdrChiToChacHpm! +  AmpVertexIRosChiToChacHpm ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToChacHpm=0._dp
AmpVertexZChiToChacHpm=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChacHpm(1,gt2,:,:) = AmpWaveZChiToChacHpm(1,gt2,:,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChacHpm(1,gt1,:,:)
AmpVertexZChiToChacHpm(1,gt2,:,:)= AmpVertexZChiToChacHpm(1,gt2,:,:) + ZRUZN(gt2,gt1)*AmpVertexChiToChacHpm(1,gt1,:,:)
AmpWaveZChiToChacHpm(2,gt2,:,:) = AmpWaveZChiToChacHpm(2,gt2,:,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChacHpm(2,gt1,:,:)
AmpVertexZChiToChacHpm(2,gt2,:,:)= AmpVertexZChiToChacHpm(2,gt2,:,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToChacHpm(2,gt1,:,:)
 End Do
End Do
AmpWaveChiToChacHpm=AmpWaveZChiToChacHpm
AmpVertexChiToChacHpm= AmpVertexZChiToChacHpm
! Final State 1
AmpWaveZChiToChacHpm=0._dp
AmpVertexZChiToChacHpm=0._dp
Do gt1=1,2
  Do gt2=1,2
AmpWaveZChiToChacHpm(1,:,gt2,:) = AmpWaveZChiToChacHpm(1,:,gt2,:)+ZRUUM(gt2,gt1)*AmpWaveChiToChacHpm(1,:,gt1,:)
AmpVertexZChiToChacHpm(1,:,gt2,:)= AmpVertexZChiToChacHpm(1,:,gt2,:)+ZRUUM(gt2,gt1)*AmpVertexChiToChacHpm(1,:,gt1,:)
AmpWaveZChiToChacHpm(2,:,gt2,:) = AmpWaveZChiToChacHpm(2,:,gt2,:)+ZRUUPc(gt2,gt1)*AmpWaveChiToChacHpm(2,:,gt1,:)
AmpVertexZChiToChacHpm(2,:,gt2,:)= AmpVertexZChiToChacHpm(2,:,gt2,:)+ZRUUPc(gt2,gt1)*AmpVertexChiToChacHpm(2,:,gt1,:)
 End Do
End Do
AmpWaveChiToChacHpm=AmpWaveZChiToChacHpm
AmpVertexChiToChacHpm= AmpVertexZChiToChacHpm
! Final State 2
AmpWaveZChiToChacHpm=0._dp
AmpVertexZChiToChacHpm=0._dp
Do gt1=1,2
  Do gt2=1,2
AmpWaveZChiToChacHpm(:,:,:,gt2) = AmpWaveZChiToChacHpm(:,:,:,gt2)+ZRUZP(gt2,gt1)*AmpWaveChiToChacHpm(:,:,:,gt1)
AmpVertexZChiToChacHpm(:,:,:,gt2)= AmpVertexZChiToChacHpm(:,:,:,gt2)+ZRUZP(gt2,gt1)*AmpVertexChiToChacHpm(:,:,:,gt1)
 End Do
End Do
AmpWaveChiToChacHpm=AmpWaveZChiToChacHpm
AmpVertexChiToChacHpm= AmpVertexZChiToChacHpm
End if
If (ShiftIRdiv) Then
AmpVertexChiToChacHpm = AmpVertexChiToChacHpm  +  AmpVertexIRosChiToChacHpm
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Cha conj[Hpm] -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToChacHpm = AmpTreeChiToChacHpm
 AmpSum2ChiToChacHpm = AmpTreeChiToChacHpm + 2._dp*AmpWaveChiToChacHpm + 2._dp*AmpVertexChiToChacHpm
Else
 AmpSumChiToChacHpm = AmpTreeChiToChacHpm + AmpWaveChiToChacHpm + AmpVertexChiToChacHpm
 AmpSum2ChiToChacHpm = AmpTreeChiToChacHpm + AmpWaveChiToChacHpm + AmpVertexChiToChacHpm
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToChacHpm = AmpTreeChiToChacHpm
 AmpSum2ChiToChacHpm = AmpTreeChiToChacHpm
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,2
    Do gt3=2,2
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MChaOS(gt2))+Abs(MHpmOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MCha(gt2))+Abs(MHpm(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2ChiToChacHpm = AmpTreeChiToChacHpm
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChaOS(gt2),MHpmOS(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MCha(gt2),MHpm(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToChacHpm(gt1, gt2, gt3)
  AmpSum2ChiToChacHpm = 2._dp*AmpWaveChiToChacHpm
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChaOS(gt2),MHpmOS(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MCha(gt2),MHpm(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToChacHpm(gt1, gt2, gt3)
  AmpSum2ChiToChacHpm = 2._dp*AmpVertexChiToChacHpm
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChaOS(gt2),MHpmOS(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MCha(gt2),MHpm(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToChacHpm(gt1, gt2, gt3)
  AmpSum2ChiToChacHpm = AmpTreeChiToChacHpm + 2._dp*AmpWaveChiToChacHpm + 2._dp*AmpVertexChiToChacHpm
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChaOS(gt2),MHpmOS(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MCha(gt2),MHpm(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToChacHpm(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2ChiToChacHpm = AmpTreeChiToChacHpm
  Call SquareAmp_FtoFS(MChiOS(gt1),MChaOS(gt2),MHpmOS(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
  AmpSqTreeChiToChacHpm(gt1, gt2, gt3) = AmpSqChiToChacHpm(gt1, gt2, gt3)
  AmpSum2ChiToChacHpm = + 2._dp*AmpWaveChiToChacHpm + 2._dp*AmpVertexChiToChacHpm
  Call SquareAmp_FtoFS(MChiOS(gt1),MChaOS(gt2),MHpmOS(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
  AmpSqChiToChacHpm(gt1, gt2, gt3) = AmpSqChiToChacHpm(gt1, gt2, gt3) + AmpSqTreeChiToChacHpm(gt1, gt2, gt3)
Else
  AmpSum2ChiToChacHpm = AmpTreeChiToChacHpm
  Call SquareAmp_FtoFS(MChi(gt1),MCha(gt2),MHpm(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
  AmpSqTreeChiToChacHpm(gt1, gt2, gt3) = AmpSqChiToChacHpm(gt1, gt2, gt3)
  AmpSum2ChiToChacHpm = + 2._dp*AmpWaveChiToChacHpm + 2._dp*AmpVertexChiToChacHpm
  Call SquareAmp_FtoFS(MChi(gt1),MCha(gt2),MHpm(gt3),AmpSumChiToChacHpm(:,gt1, gt2, gt3),AmpSum2ChiToChacHpm(:,gt1, gt2, gt3),AmpSqChiToChacHpm(gt1, gt2, gt3))
  AmpSqChiToChacHpm(gt1, gt2, gt3) = AmpSqChiToChacHpm(gt1, gt2, gt3) + AmpSqTreeChiToChacHpm(gt1, gt2, gt3)
End if
Else
  AmpSqChiToChacHpm(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToChacHpm(gt1, gt2, gt3).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChiOS(gt1),MChaOS(gt2),MHpmOS(gt3),helfactor*AmpSqChiToChacHpm(gt1, gt2, gt3))
Else
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChi(gt1),MCha(gt2),MHpm(gt3),helfactor*AmpSqChiToChacHpm(gt1, gt2, gt3))
End if
If ((Abs(MRPChiToChacHpm(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToChacHpm(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToChacHpm(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToChacHpm(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToChacHpm(gt1, gt2, gt3) + MRGChiToChacHpm(gt1, gt2, gt3))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToChacHpm(gt1, gt2, gt3) + MRGChiToChacHpm(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Cha Conjg(VWm)
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToChacVWm(cplChiChacVWmL,cplChiChacVWmR,              &
& MCha,MChi,MVWm,MCha2,MChi2,MVWm2,AmpTreeChiToChacVWm)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToChacVWm(ZcplChiChacVWmL,ZcplChiChacVWmR,            &
& MCha,MChi,MVWm,MCha2,MChi2,MVWm2,AmpTreeChiToChacVWm)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToChacVWm(MLambda,em,gs,cplChiChacVWmL,cplChiChacVWmR,    &
& MChaOS,MChiOS,MVWmOS,MRPChiToChacVWm,MRGChiToChacVWm)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChacVWm(MLambda,em,gs,ZcplChiChacVWmL,ZcplChiChacVWmR,  &
& MChaOS,MChiOS,MVWmOS,MRPChiToChacVWm,MRGChiToChacVWm)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToChacVWm(MLambda,em,gs,cplChiChacVWmL,cplChiChacVWmR,    &
& MCha,MChi,MVWm,MRPChiToChacVWm,MRGChiToChacVWm)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChacVWm(MLambda,em,gs,ZcplChiChacVWmL,ZcplChiChacVWmR,  &
& MCha,MChi,MVWm,MRPChiToChacVWm,MRGChiToChacVWm)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToChacVWm(cplChiChacVWmL,cplChiChacVWmR,              &
& ctcplChiChacVWmL,ctcplChiChacVWmR,MCha,MCha2,MChi,MChi2,MVWm,MVWm2,ZfL0,               &
& ZfLm,ZfLp,ZfVWm,AmpWaveChiToChacVWm)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToChacVWm(MAh,MCha,MChi,MFd,MFe,MFu,MFv,            &
& Mhh,MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,               &
& cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplAhHpmcVWm,cplChiChacHpmL,cplChiChacHpmR,    &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,     &
& cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,       &
& cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR, &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     &
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,               &
& cplcFvFecVWmR,cplhhHpmcVWm,cplhhcVWmVWm,cplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,       &
& cplSdcSucVWm,cplSecSvcVWm,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,AmpVertexChiToChacVWm)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacVWm(MAh,MCha,MChi,MFd,MFe,MFu,             &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,             &
& MFu2,MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,          &
& cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplAhHpmcVWm,cplChiChacHpmL,cplChiChacHpmR,    &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,     &
& cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,       &
& cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR, &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     &
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,               &
& cplcFvFecVWmR,cplhhHpmcVWm,cplhhcVWmVWm,cplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,       &
& cplSdcSucVWm,cplSecSvcVWm,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,AmpVertexIRdrChiToChacVWm)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacVWm(MAhOS,MChaOS,MChiOS,MFdOS,             &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVP,MVWmOS,MVZOS,               &
& MVZpOS,MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,              &
& MSd2OS,MSe2OS,MSu2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplcChaChaAhL,cplcChaChaAhR,   &
& cplChiChiAhL,cplChiChiAhR,cplAhHpmcVWm,GosZcplChiChacHpmL,GosZcplChiChacHpmR,          &
& ZcplChiChacVWmL,ZcplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,   &
& cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,       &
& cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR, &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     &
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,               &
& cplcFvFecVWmR,cplhhHpmcVWm,cplhhcVWmVWm,GosZcplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,   &
& cplSdcSucVWm,cplSecSvcVWm,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,AmpVertexIRosChiToChacVWm)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacVWm(MAh,MCha,MChi,MFd,MFe,MFu,             &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,             &
& MFu2,MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,          &
& cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplAhHpmcVWm,GZcplChiChacHpmL,GZcplChiChacHpmR,&
& ZcplChiChacVWmL,ZcplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,   &
& cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,       &
& cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR, &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     &
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,               &
& cplcFvFecVWmR,cplhhHpmcVWm,cplhhcVWmVWm,GZcplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,     &
& cplSdcSucVWm,cplSecSvcVWm,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,AmpVertexIRosChiToChacVWm)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacVWm(MAhOS,MChaOS,MChiOS,MFdOS,             &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVP,MVWmOS,MVZOS,               &
& MVZpOS,MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,              &
& MSd2OS,MSe2OS,MSu2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplcChaChaAhL,cplcChaChaAhR,   &
& cplChiChiAhL,cplChiChiAhR,cplAhHpmcVWm,GcplChiChacHpmL,GcplChiChacHpmR,cplChiChacVWmL, &
& cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,cplcChaChahhL,      &
& cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVPL,       &
& cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR,               &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     &
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,               &
& cplcFvFecVWmR,cplhhHpmcVWm,cplhhcVWmVWm,GcplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,      &
& cplSdcSucVWm,cplSecSvcVWm,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,AmpVertexIRosChiToChacVWm)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChacVWm(MAh,MCha,MChi,MFd,MFe,MFu,             &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,             &
& MFu2,MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,          &
& cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplAhHpmcVWm,cplChiChacHpmL,cplChiChacHpmR,    &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChaFvcSeL,cplChaFvcSeR,     &
& cplcChaChahhL,cplcChaChahhR,cplcFdChaSuL,cplcFdChaSuR,cplcFeChaSvL,cplcFeChaSvR,       &
& cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR, &
& cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,         &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,     &
& cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,               &
& cplcFvFecVWmR,cplhhHpmcVWm,cplhhcVWmVWm,cplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,       &
& cplSdcSucVWm,cplSecSvcVWm,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,AmpVertexIRosChiToChacVWm)

 End if
 End if
AmpVertexChiToChacVWm = AmpVertexChiToChacVWm -  AmpVertexIRdrChiToChacVWm! +  AmpVertexIRosChiToChacVWm ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToChacVWm=0._dp
AmpVertexZChiToChacVWm=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChacVWm(1,gt2,:) = AmpWaveZChiToChacVWm(1,gt2,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChacVWm(1,gt1,:)
AmpVertexZChiToChacVWm(1,gt2,:)= AmpVertexZChiToChacVWm(1,gt2,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToChacVWm(1,gt1,:)
AmpWaveZChiToChacVWm(2,gt2,:) = AmpWaveZChiToChacVWm(2,gt2,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChacVWm(2,gt1,:)
AmpVertexZChiToChacVWm(2,gt2,:)= AmpVertexZChiToChacVWm(2,gt2,:) + ZRUZN(gt2,gt1)*AmpVertexChiToChacVWm(2,gt1,:)
AmpWaveZChiToChacVWm(3,gt2,:) = AmpWaveZChiToChacVWm(3,gt2,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChacVWm(3,gt1,:)
AmpVertexZChiToChacVWm(3,gt2,:)= AmpVertexZChiToChacVWm(3,gt2,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToChacVWm(3,gt1,:)
AmpWaveZChiToChacVWm(4,gt2,:) = AmpWaveZChiToChacVWm(4,gt2,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChacVWm(4,gt1,:)
AmpVertexZChiToChacVWm(4,gt2,:)= AmpVertexZChiToChacVWm(4,gt2,:) + ZRUZN(gt2,gt1)*AmpVertexChiToChacVWm(4,gt1,:)
 End Do
End Do
AmpWaveChiToChacVWm=AmpWaveZChiToChacVWm
AmpVertexChiToChacVWm= AmpVertexZChiToChacVWm
! Final State 1
AmpWaveZChiToChacVWm=0._dp
AmpVertexZChiToChacVWm=0._dp
Do gt1=1,2
  Do gt2=1,2
AmpWaveZChiToChacVWm(1,:,gt2) = AmpWaveZChiToChacVWm(1,:,gt2)+ZRUUM(gt2,gt1)*AmpWaveChiToChacVWm(1,:,gt1)
AmpVertexZChiToChacVWm(1,:,gt2)= AmpVertexZChiToChacVWm(1,:,gt2)+ZRUUM(gt2,gt1)*AmpVertexChiToChacVWm(1,:,gt1)
AmpWaveZChiToChacVWm(2,:,gt2) = AmpWaveZChiToChacVWm(2,:,gt2)+ZRUUPc(gt2,gt1)*AmpWaveChiToChacVWm(2,:,gt1)
AmpVertexZChiToChacVWm(2,:,gt2)= AmpVertexZChiToChacVWm(2,:,gt2)+ZRUUPc(gt2,gt1)*AmpVertexChiToChacVWm(2,:,gt1)
AmpWaveZChiToChacVWm(3,:,gt2) = AmpWaveZChiToChacVWm(3,:,gt2)+ZRUUM(gt2,gt1)*AmpWaveChiToChacVWm(3,:,gt1)
AmpVertexZChiToChacVWm(3,:,gt2)= AmpVertexZChiToChacVWm(3,:,gt2)+ZRUUM(gt2,gt1)*AmpVertexChiToChacVWm(3,:,gt1)
AmpWaveZChiToChacVWm(4,:,gt2) = AmpWaveZChiToChacVWm(4,:,gt2)+ZRUUPc(gt2,gt1)*AmpWaveChiToChacVWm(4,:,gt1)
AmpVertexZChiToChacVWm(4,:,gt2)= AmpVertexZChiToChacVWm(4,:,gt2)+ZRUUPc(gt2,gt1)*AmpVertexChiToChacVWm(4,:,gt1)
 End Do
End Do
AmpWaveChiToChacVWm=AmpWaveZChiToChacVWm
AmpVertexChiToChacVWm= AmpVertexZChiToChacVWm
End if
If (ShiftIRdiv) Then
AmpVertexChiToChacVWm = AmpVertexChiToChacVWm  +  AmpVertexIRosChiToChacVWm
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Cha conj[VWm] -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToChacVWm = AmpTreeChiToChacVWm
 AmpSum2ChiToChacVWm = AmpTreeChiToChacVWm + 2._dp*AmpWaveChiToChacVWm + 2._dp*AmpVertexChiToChacVWm
Else
 AmpSumChiToChacVWm = AmpTreeChiToChacVWm + AmpWaveChiToChacVWm + AmpVertexChiToChacVWm
 AmpSum2ChiToChacVWm = AmpTreeChiToChacVWm + AmpWaveChiToChacVWm + AmpVertexChiToChacVWm
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToChacVWm = AmpTreeChiToChacVWm
 AmpSum2ChiToChacVWm = AmpTreeChiToChacVWm
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,2
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MChaOS(gt2))+Abs(MVWmOS)))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MCha(gt2))+Abs(MVWm))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2
  AmpSum2ChiToChacVWm = AmpTreeChiToChacVWm
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChaOS(gt2),MVWmOS,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MCha(gt2),MVWm,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToChacVWm(gt1, gt2)
  AmpSum2ChiToChacVWm = 2._dp*AmpWaveChiToChacVWm
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChaOS(gt2),MVWmOS,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MCha(gt2),MVWm,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToChacVWm(gt1, gt2)
  AmpSum2ChiToChacVWm = 2._dp*AmpVertexChiToChacVWm
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChaOS(gt2),MVWmOS,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MCha(gt2),MVWm,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToChacVWm(gt1, gt2)
  AmpSum2ChiToChacVWm = AmpTreeChiToChacVWm + 2._dp*AmpWaveChiToChacVWm + 2._dp*AmpVertexChiToChacVWm
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChaOS(gt2),MVWmOS,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MCha(gt2),MVWm,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToChacVWm(gt1, gt2)
 End if
If (OSkinematics) Then
  AmpSum2ChiToChacVWm = AmpTreeChiToChacVWm
  Call SquareAmp_FtoFV(MChiOS(gt1),MChaOS(gt2),MVWmOS,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
  AmpSqTreeChiToChacVWm(gt1, gt2) = AmpSqChiToChacVWm(gt1, gt2)
  AmpSum2ChiToChacVWm = + 2._dp*AmpWaveChiToChacVWm + 2._dp*AmpVertexChiToChacVWm
  Call SquareAmp_FtoFV(MChiOS(gt1),MChaOS(gt2),MVWmOS,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
  AmpSqChiToChacVWm(gt1, gt2) = AmpSqChiToChacVWm(gt1, gt2) + AmpSqTreeChiToChacVWm(gt1, gt2)
Else
  AmpSum2ChiToChacVWm = AmpTreeChiToChacVWm
  Call SquareAmp_FtoFV(MChi(gt1),MCha(gt2),MVWm,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
  AmpSqTreeChiToChacVWm(gt1, gt2) = AmpSqChiToChacVWm(gt1, gt2)
  AmpSum2ChiToChacVWm = + 2._dp*AmpWaveChiToChacVWm + 2._dp*AmpVertexChiToChacVWm
  Call SquareAmp_FtoFV(MChi(gt1),MCha(gt2),MVWm,AmpSumChiToChacVWm(:,gt1, gt2),AmpSum2ChiToChacVWm(:,gt1, gt2),AmpSqChiToChacVWm(gt1, gt2))
  AmpSqChiToChacVWm(gt1, gt2) = AmpSqChiToChacVWm(gt1, gt2) + AmpSqTreeChiToChacVWm(gt1, gt2)
End if
Else
  AmpSqChiToChacVWm(gt1, gt2) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToChacVWm(gt1, gt2).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChiOS(gt1),MChaOS(gt2),MVWmOS,helfactor*AmpSqChiToChacVWm(gt1, gt2))
Else
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChi(gt1),MCha(gt2),MVWm,helfactor*AmpSqChiToChacVWm(gt1, gt2))
End if
If ((Abs(MRPChiToChacVWm(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGChiToChacVWm(gt1, gt2)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToChacVWm(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGChiToChacVWm(gt1, gt2)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToChacVWm(gt1, gt2) + MRGChiToChacVWm(gt1, gt2))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToChacVWm(gt1, gt2) + MRGChiToChacVWm(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

  End do
If (gt1.eq.6) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Chi hh
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToChihh(cplChiChihhL,cplChiChihhR,MChi,               &
& Mhh,MChi2,Mhh2,AmpTreeChiToChihh)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToChihh(ZcplChiChihhL,ZcplChiChihhR,MChi,             &
& Mhh,MChi2,Mhh2,AmpTreeChiToChihh)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToChihh(MLambda,em,gs,cplChiChihhL,cplChiChihhR,          &
& MChiOS,MhhOS,MRPChiToChihh,MRGChiToChihh)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChihh(MLambda,em,gs,ZcplChiChihhL,ZcplChiChihhR,        &
& MChiOS,MhhOS,MRPChiToChihh,MRGChiToChihh)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToChihh(MLambda,em,gs,cplChiChihhL,cplChiChihhR,          &
& MChi,Mhh,MRPChiToChihh,MRGChiToChihh)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChihh(MLambda,em,gs,ZcplChiChihhL,ZcplChiChihhR,        &
& MChi,Mhh,MRPChiToChihh,MRGChiToChihh)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToChihh(cplChiChihhL,cplChiChihhR,ctcplChiChihhL,     &
& ctcplChiChihhR,MChi,MChi2,Mhh,Mhh2,Zfhh,ZfL0,AmpWaveChiToChihh)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToChihh(MAh,MCha,MChi,MFd,MFe,MFu,MFv,              &
& Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,MFv2,           &
& Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplChiChiAhL,cplChiChiAhR,   &
& cplAhhhVZ,cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,      &
& cplcChaChahhL,cplcChaChahhR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,       &
& cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,       &
& cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,     &
& cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,         &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdhhL,cplcFdFdhhR,       &
& cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplhhhhhh,cplhhHpmcHpm,cplhhHpmcVWm,   &
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,cplhhcVWmVWm,cplhhVZVZ,       &
& cplhhVZVZp,cplhhVZpVZp,AmpVertexChiToChihh)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChihh(MAh,MCha,MChi,MFd,MFe,MFu,               &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplChiChiAhL,           &
& cplChiChiAhR,cplAhhhVZ,cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,        &
& cplChiChacVWmR,cplcChaChahhL,cplcChaChahhR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,     &
& cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,       &
& cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,       &
& cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,       &
& cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdhhL,      &
& cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplhhhhhh,cplhhHpmcHpm,    &
& cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,cplhhcVWmVWm,    &
& cplhhVZVZ,cplhhVZVZp,cplhhVZpVZp,AmpVertexIRdrChiToChihh)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChihh(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,            &
& MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,              &
& MSe2OS,MSu2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplAhAhhh,cplChiChiAhL,cplChiChiAhR,       &
& cplAhhhVZ,cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,      &
& cplcChaChahhL,cplcChaChahhR,ZcplChiChihhL,ZcplChiChihhR,cplChiChiVZL,cplChiChiVZR,     &
& cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,       &
& cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,     &
& cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,         &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdhhL,cplcFdFdhhR,       &
& cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplhhhhhh,cplhhHpmcHpm,cplhhHpmcVWm,   &
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,cplhhcVWmVWm,cplhhVZVZ,       &
& cplhhVZVZp,cplhhVZpVZp,AmpVertexIRosChiToChihh)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChihh(MAh,MCha,MChi,MFd,MFe,MFu,               &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplChiChiAhL,           &
& cplChiChiAhR,cplAhhhVZ,cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,        &
& cplChiChacVWmR,cplcChaChahhL,cplcChaChahhR,ZcplChiChihhL,ZcplChiChihhR,cplChiChiVZL,   &
& cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,       &
& cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,       &
& cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,       &
& cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdhhL,      &
& cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplhhhhhh,cplhhHpmcHpm,    &
& cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,cplhhcVWmVWm,    &
& cplhhVZVZ,cplhhVZVZp,cplhhVZpVZp,AmpVertexIRosChiToChihh)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChihh(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,            &
& MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,              &
& MSe2OS,MSu2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplAhAhhh,cplChiChiAhL,cplChiChiAhR,       &
& cplAhhhVZ,cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,      &
& cplcChaChahhL,cplcChaChahhR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,       &
& cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,       &
& cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,     &
& cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,         &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdhhL,cplcFdFdhhR,       &
& cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplhhhhhh,cplhhHpmcHpm,cplhhHpmcVWm,   &
& cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,cplhhcVWmVWm,cplhhVZVZ,       &
& cplhhVZVZp,cplhhVZpVZp,AmpVertexIRosChiToChihh)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChihh(MAh,MCha,MChi,MFd,MFe,MFu,               &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplChiChiAhL,           &
& cplChiChiAhR,cplAhhhVZ,cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,        &
& cplChiChacVWmR,cplcChaChahhL,cplcChaChahhR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,     &
& cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,       &
& cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,       &
& cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,       &
& cplcFuChiSuR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdhhL,      &
& cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplhhhhhh,cplhhHpmcHpm,    &
& cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,cplhhcVWmVWm,    &
& cplhhVZVZ,cplhhVZVZp,cplhhVZpVZp,AmpVertexIRosChiToChihh)

 End if
 End if
AmpVertexChiToChihh = AmpVertexChiToChihh -  AmpVertexIRdrChiToChihh! +  AmpVertexIRosChiToChihh ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToChihh=0._dp
AmpVertexZChiToChihh=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChihh(1,gt2,:,:) = AmpWaveZChiToChihh(1,gt2,:,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChihh(1,gt1,:,:)
AmpVertexZChiToChihh(1,gt2,:,:)= AmpVertexZChiToChihh(1,gt2,:,:) + ZRUZN(gt2,gt1)*AmpVertexChiToChihh(1,gt1,:,:)
AmpWaveZChiToChihh(2,gt2,:,:) = AmpWaveZChiToChihh(2,gt2,:,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChihh(2,gt1,:,:)
AmpVertexZChiToChihh(2,gt2,:,:)= AmpVertexZChiToChihh(2,gt2,:,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToChihh(2,gt1,:,:)
 End Do
End Do
AmpWaveChiToChihh=AmpWaveZChiToChihh
AmpVertexChiToChihh= AmpVertexZChiToChihh
! Final State 1
AmpWaveZChiToChihh=0._dp
AmpVertexZChiToChihh=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChihh(1,:,gt2,:) = AmpWaveZChiToChihh(1,:,gt2,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChihh(1,:,gt1,:)
AmpVertexZChiToChihh(1,:,gt2,:)= AmpVertexZChiToChihh(1,:,gt2,:)+ZRUZN(gt2,gt1)*AmpVertexChiToChihh(1,:,gt1,:)
AmpWaveZChiToChihh(2,:,gt2,:) = AmpWaveZChiToChihh(2,:,gt2,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChihh(2,:,gt1,:)
AmpVertexZChiToChihh(2,:,gt2,:)= AmpVertexZChiToChihh(2,:,gt2,:)+ZRUZNc(gt2,gt1)*AmpVertexChiToChihh(2,:,gt1,:)
 End Do
End Do
AmpWaveChiToChihh=AmpWaveZChiToChihh
AmpVertexChiToChihh= AmpVertexZChiToChihh
! Final State 2
AmpWaveZChiToChihh=0._dp
AmpVertexZChiToChihh=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZChiToChihh(:,:,:,gt2) = AmpWaveZChiToChihh(:,:,:,gt2)+ZRUZH(gt2,gt1)*AmpWaveChiToChihh(:,:,:,gt1)
AmpVertexZChiToChihh(:,:,:,gt2)= AmpVertexZChiToChihh(:,:,:,gt2)+ZRUZH(gt2,gt1)*AmpVertexChiToChihh(:,:,:,gt1)
 End Do
End Do
AmpWaveChiToChihh=AmpWaveZChiToChihh
AmpVertexChiToChihh= AmpVertexZChiToChihh
End if
If (ShiftIRdiv) Then
AmpVertexChiToChihh = AmpVertexChiToChihh  +  AmpVertexIRosChiToChihh
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Chi hh -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToChihh = AmpTreeChiToChihh
 AmpSum2ChiToChihh = AmpTreeChiToChihh + 2._dp*AmpWaveChiToChihh + 2._dp*AmpVertexChiToChihh
Else
 AmpSumChiToChihh = AmpTreeChiToChihh + AmpWaveChiToChihh + AmpVertexChiToChihh
 AmpSum2ChiToChihh = AmpTreeChiToChihh + AmpWaveChiToChihh + AmpVertexChiToChihh
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToChihh = AmpTreeChiToChihh
 AmpSum2ChiToChihh = AmpTreeChiToChihh
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,6
    Do gt3=1,3
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MChiOS(gt2))+Abs(MhhOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MChi(gt2))+Abs(Mhh(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2ChiToChihh = AmpTreeChiToChihh
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MhhOS(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),Mhh(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToChihh(gt1, gt2, gt3)
  AmpSum2ChiToChihh = 2._dp*AmpWaveChiToChihh
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MhhOS(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),Mhh(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToChihh(gt1, gt2, gt3)
  AmpSum2ChiToChihh = 2._dp*AmpVertexChiToChihh
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MhhOS(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),Mhh(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToChihh(gt1, gt2, gt3)
  AmpSum2ChiToChihh = AmpTreeChiToChihh + 2._dp*AmpWaveChiToChihh + 2._dp*AmpVertexChiToChihh
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MhhOS(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),Mhh(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToChihh(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2ChiToChihh = AmpTreeChiToChihh
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MhhOS(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
  AmpSqTreeChiToChihh(gt1, gt2, gt3) = AmpSqChiToChihh(gt1, gt2, gt3)
  AmpSum2ChiToChihh = + 2._dp*AmpWaveChiToChihh + 2._dp*AmpVertexChiToChihh
  Call SquareAmp_FtoFS(MChiOS(gt1),MChiOS(gt2),MhhOS(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
  AmpSqChiToChihh(gt1, gt2, gt3) = AmpSqChiToChihh(gt1, gt2, gt3) + AmpSqTreeChiToChihh(gt1, gt2, gt3)
Else
  AmpSum2ChiToChihh = AmpTreeChiToChihh
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),Mhh(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
  AmpSqTreeChiToChihh(gt1, gt2, gt3) = AmpSqChiToChihh(gt1, gt2, gt3)
  AmpSum2ChiToChihh = + 2._dp*AmpWaveChiToChihh + 2._dp*AmpVertexChiToChihh
  Call SquareAmp_FtoFS(MChi(gt1),MChi(gt2),Mhh(gt3),AmpSumChiToChihh(:,gt1, gt2, gt3),AmpSum2ChiToChihh(:,gt1, gt2, gt3),AmpSqChiToChihh(gt1, gt2, gt3))
  AmpSqChiToChihh(gt1, gt2, gt3) = AmpSqChiToChihh(gt1, gt2, gt3) + AmpSqTreeChiToChihh(gt1, gt2, gt3)
End if
Else
  AmpSqChiToChihh(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToChihh(gt1, gt2, gt3).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChiOS(gt1),MChiOS(gt2),MhhOS(gt3),helfactor*AmpSqChiToChihh(gt1, gt2, gt3))
Else
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChi(gt1),MChi(gt2),Mhh(gt3),helfactor*AmpSqChiToChihh(gt1, gt2, gt3))
End if
If ((Abs(MRPChiToChihh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToChihh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToChihh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToChihh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToChihh(gt1, gt2, gt3) + MRGChiToChihh(gt1, gt2, gt3))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToChihh(gt1, gt2, gt3) + MRGChiToChihh(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Chi VZ
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToChiVZ(cplChiChiVZL,cplChiChiVZR,MChi,               &
& MVZ,MChi2,MVZ2,AmpTreeChiToChiVZ)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToChiVZ(ZcplChiChiVZL,ZcplChiChiVZR,MChi,             &
& MVZ,MChi2,MVZ2,AmpTreeChiToChiVZ)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToChiVZ(MLambda,em,gs,cplChiChiVZL,cplChiChiVZR,          &
& MChiOS,MVZOS,MRPChiToChiVZ,MRGChiToChiVZ)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChiVZ(MLambda,em,gs,ZcplChiChiVZL,ZcplChiChiVZR,        &
& MChiOS,MVZOS,MRPChiToChiVZ,MRGChiToChiVZ)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToChiVZ(MLambda,em,gs,cplChiChiVZL,cplChiChiVZR,          &
& MChi,MVZ,MRPChiToChiVZ,MRGChiToChiVZ)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChiVZ(MLambda,em,gs,ZcplChiChiVZL,ZcplChiChiVZR,        &
& MChi,MVZ,MRPChiToChiVZ,MRGChiToChiVZ)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToChiVZ(cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,ctcplChiChiVZL,ctcplChiChiVZR,ctcplChiChiVZpL,ctcplChiChiVZpR,           &
& MChi,MChi2,MVZ,MVZ2,ZfL0,ZfVZ,ZfVZpVZ,AmpWaveChiToChiVZ)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToChiVZ(MAh,MCha,MChi,MFd,MFe,MFu,MFv,              &
& Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,MFv2,           &
& Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,             &
& cplAhhhVZ,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZL,   &
& cplcChaChaVZR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,       &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,        &
& cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplhhVZVZ,cplhhVZVZp,      &
& cplHpmcHpmVZ,cplHpmcVWmVZ,cplSdcSdVZ,cplSecSeVZ,cplSucSuVZ,cplSvcSvVZ,cplcHpmVWmVZ,    &
& cplcVWmVWmVZ,AmpVertexChiToChiVZ)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZ(MAh,MCha,MChi,MFd,MFe,MFu,               &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,        &
& cplAhhhVZ,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZL,   &
& cplcChaChaVZR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,       &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,        &
& cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplhhVZVZ,cplhhVZVZp,      &
& cplHpmcHpmVZ,cplHpmcVWmVZ,cplSdcSdVZ,cplSecSeVZ,cplSucSuVZ,cplSvcSvVZ,cplcHpmVWmVZ,    &
& cplcVWmVWmVZ,AmpVertexIRdrChiToChiVZ)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZ(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,            &
& MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,              &
& MSe2OS,MSu2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,cplChiChiAhR,cplAhhhVZ,       &
& cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZL,             &
& cplcChaChaVZR,cplChiChihhL,cplChiChihhR,ZcplChiChiVZL,ZcplChiChiVZR,cplChiChiVZpL,     &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,        &
& cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplhhVZVZ,cplhhVZVZp,      &
& cplHpmcHpmVZ,cplHpmcVWmVZ,cplSdcSdVZ,cplSecSeVZ,cplSucSuVZ,cplSvcSvVZ,cplcHpmVWmVZ,    &
& cplcVWmVWmVZ,AmpVertexIRosChiToChiVZ)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZ(MAh,MCha,MChi,MFd,MFe,MFu,               &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,        &
& cplAhhhVZ,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZL,   &
& cplcChaChaVZR,cplChiChihhL,cplChiChihhR,ZcplChiChiVZL,ZcplChiChiVZR,cplChiChiVZpL,     &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,        &
& cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplhhVZVZ,cplhhVZVZp,      &
& cplHpmcHpmVZ,cplHpmcVWmVZ,cplSdcSdVZ,cplSecSeVZ,cplSucSuVZ,cplSvcSvVZ,cplcHpmVWmVZ,    &
& cplcVWmVWmVZ,AmpVertexIRosChiToChiVZ)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZ(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,            &
& MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,              &
& MSe2OS,MSu2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,cplChiChiAhR,cplAhhhVZ,       &
& cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZL,             &
& cplcChaChaVZR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,       &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,        &
& cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplhhVZVZ,cplhhVZVZp,      &
& cplHpmcHpmVZ,cplHpmcVWmVZ,cplSdcSdVZ,cplSecSeVZ,cplSucSuVZ,cplSvcSvVZ,cplcHpmVWmVZ,    &
& cplcVWmVWmVZ,AmpVertexIRosChiToChiVZ)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZ(MAh,MCha,MChi,MFd,MFe,MFu,               &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,        &
& cplAhhhVZ,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZL,   &
& cplcChaChaVZR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,       &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,        &
& cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplhhVZVZ,cplhhVZVZp,      &
& cplHpmcHpmVZ,cplHpmcVWmVZ,cplSdcSdVZ,cplSecSeVZ,cplSucSuVZ,cplSvcSvVZ,cplcHpmVWmVZ,    &
& cplcVWmVWmVZ,AmpVertexIRosChiToChiVZ)

 End if
 End if
AmpVertexChiToChiVZ = AmpVertexChiToChiVZ -  AmpVertexIRdrChiToChiVZ! +  AmpVertexIRosChiToChiVZ ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToChiVZ=0._dp
AmpVertexZChiToChiVZ=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChiVZ(1,gt2,:) = AmpWaveZChiToChiVZ(1,gt2,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiVZ(1,gt1,:)
AmpVertexZChiToChiVZ(1,gt2,:)= AmpVertexZChiToChiVZ(1,gt2,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToChiVZ(1,gt1,:)
AmpWaveZChiToChiVZ(2,gt2,:) = AmpWaveZChiToChiVZ(2,gt2,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChiVZ(2,gt1,:)
AmpVertexZChiToChiVZ(2,gt2,:)= AmpVertexZChiToChiVZ(2,gt2,:) + ZRUZN(gt2,gt1)*AmpVertexChiToChiVZ(2,gt1,:)
AmpWaveZChiToChiVZ(3,gt2,:) = AmpWaveZChiToChiVZ(3,gt2,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiVZ(3,gt1,:)
AmpVertexZChiToChiVZ(3,gt2,:)= AmpVertexZChiToChiVZ(3,gt2,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToChiVZ(3,gt1,:)
AmpWaveZChiToChiVZ(4,gt2,:) = AmpWaveZChiToChiVZ(4,gt2,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChiVZ(4,gt1,:)
AmpVertexZChiToChiVZ(4,gt2,:)= AmpVertexZChiToChiVZ(4,gt2,:) + ZRUZN(gt2,gt1)*AmpVertexChiToChiVZ(4,gt1,:)
 End Do
End Do
AmpWaveChiToChiVZ=AmpWaveZChiToChiVZ
AmpVertexChiToChiVZ= AmpVertexZChiToChiVZ
! Final State 1
AmpWaveZChiToChiVZ=0._dp
AmpVertexZChiToChiVZ=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChiVZ(1,:,gt2) = AmpWaveZChiToChiVZ(1,:,gt2)+ZRUZN(gt2,gt1)*AmpWaveChiToChiVZ(1,:,gt1)
AmpVertexZChiToChiVZ(1,:,gt2)= AmpVertexZChiToChiVZ(1,:,gt2)+ZRUZN(gt2,gt1)*AmpVertexChiToChiVZ(1,:,gt1)
AmpWaveZChiToChiVZ(2,:,gt2) = AmpWaveZChiToChiVZ(2,:,gt2)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiVZ(2,:,gt1)
AmpVertexZChiToChiVZ(2,:,gt2)= AmpVertexZChiToChiVZ(2,:,gt2)+ZRUZNc(gt2,gt1)*AmpVertexChiToChiVZ(2,:,gt1)
AmpWaveZChiToChiVZ(3,:,gt2) = AmpWaveZChiToChiVZ(3,:,gt2)+ZRUZN(gt2,gt1)*AmpWaveChiToChiVZ(3,:,gt1)
AmpVertexZChiToChiVZ(3,:,gt2)= AmpVertexZChiToChiVZ(3,:,gt2)+ZRUZN(gt2,gt1)*AmpVertexChiToChiVZ(3,:,gt1)
AmpWaveZChiToChiVZ(4,:,gt2) = AmpWaveZChiToChiVZ(4,:,gt2)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiVZ(4,:,gt1)
AmpVertexZChiToChiVZ(4,:,gt2)= AmpVertexZChiToChiVZ(4,:,gt2)+ZRUZNc(gt2,gt1)*AmpVertexChiToChiVZ(4,:,gt1)
 End Do
End Do
AmpWaveChiToChiVZ=AmpWaveZChiToChiVZ
AmpVertexChiToChiVZ= AmpVertexZChiToChiVZ
End if
If (ShiftIRdiv) Then
AmpVertexChiToChiVZ = AmpVertexChiToChiVZ  +  AmpVertexIRosChiToChiVZ
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Chi VZ -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToChiVZ = AmpTreeChiToChiVZ
 AmpSum2ChiToChiVZ = AmpTreeChiToChiVZ + 2._dp*AmpWaveChiToChiVZ + 2._dp*AmpVertexChiToChiVZ
Else
 AmpSumChiToChiVZ = AmpTreeChiToChiVZ + AmpWaveChiToChiVZ + AmpVertexChiToChiVZ
 AmpSum2ChiToChiVZ = AmpTreeChiToChiVZ + AmpWaveChiToChiVZ + AmpVertexChiToChiVZ
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToChiVZ = AmpTreeChiToChiVZ
 AmpSum2ChiToChiVZ = AmpTreeChiToChiVZ
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,6
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MChiOS(gt2))+Abs(MVZOS)))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MChi(gt2))+Abs(MVZ))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2
  AmpSum2ChiToChiVZ = AmpTreeChiToChiVZ
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZOS,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZ,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToChiVZ(gt1, gt2)
  AmpSum2ChiToChiVZ = 2._dp*AmpWaveChiToChiVZ
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZOS,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZ,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToChiVZ(gt1, gt2)
  AmpSum2ChiToChiVZ = 2._dp*AmpVertexChiToChiVZ
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZOS,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZ,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToChiVZ(gt1, gt2)
  AmpSum2ChiToChiVZ = AmpTreeChiToChiVZ + 2._dp*AmpWaveChiToChiVZ + 2._dp*AmpVertexChiToChiVZ
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZOS,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZ,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToChiVZ(gt1, gt2)
 End if
If (OSkinematics) Then
  AmpSum2ChiToChiVZ = AmpTreeChiToChiVZ
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZOS,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
  AmpSqTreeChiToChiVZ(gt1, gt2) = AmpSqChiToChiVZ(gt1, gt2)
  AmpSum2ChiToChiVZ = + 2._dp*AmpWaveChiToChiVZ + 2._dp*AmpVertexChiToChiVZ
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZOS,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
  AmpSqChiToChiVZ(gt1, gt2) = AmpSqChiToChiVZ(gt1, gt2) + AmpSqTreeChiToChiVZ(gt1, gt2)
Else
  AmpSum2ChiToChiVZ = AmpTreeChiToChiVZ
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZ,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
  AmpSqTreeChiToChiVZ(gt1, gt2) = AmpSqChiToChiVZ(gt1, gt2)
  AmpSum2ChiToChiVZ = + 2._dp*AmpWaveChiToChiVZ + 2._dp*AmpVertexChiToChiVZ
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZ,AmpSumChiToChiVZ(:,gt1, gt2),AmpSum2ChiToChiVZ(:,gt1, gt2),AmpSqChiToChiVZ(gt1, gt2))
  AmpSqChiToChiVZ(gt1, gt2) = AmpSqChiToChiVZ(gt1, gt2) + AmpSqTreeChiToChiVZ(gt1, gt2)
End if
Else
  AmpSqChiToChiVZ(gt1, gt2) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToChiVZ(gt1, gt2).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChiOS(gt1),MChiOS(gt2),MVZOS,helfactor*AmpSqChiToChiVZ(gt1, gt2))
Else
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChi(gt1),MChi(gt2),MVZ,helfactor*AmpSqChiToChiVZ(gt1, gt2))
End if
If ((Abs(MRPChiToChiVZ(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGChiToChiVZ(gt1, gt2)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToChiVZ(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGChiToChiVZ(gt1, gt2)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToChiVZ(gt1, gt2) + MRGChiToChiVZ(gt1, gt2))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToChiVZ(gt1, gt2) + MRGChiToChiVZ(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

  End do
If (gt1.eq.6) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Chi VZp
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToChiVZp(cplChiChiVZpL,cplChiChiVZpR,MChi,            &
& MVZp,MChi2,MVZp2,AmpTreeChiToChiVZp)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToChiVZp(ZcplChiChiVZpL,ZcplChiChiVZpR,               &
& MChi,MVZp,MChi2,MVZp2,AmpTreeChiToChiVZp)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToChiVZp(MLambda,em,gs,cplChiChiVZpL,cplChiChiVZpR,       &
& MChiOS,MVZpOS,MRPChiToChiVZp,MRGChiToChiVZp)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChiVZp(MLambda,em,gs,ZcplChiChiVZpL,ZcplChiChiVZpR,     &
& MChiOS,MVZpOS,MRPChiToChiVZp,MRGChiToChiVZp)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToChiVZp(MLambda,em,gs,cplChiChiVZpL,cplChiChiVZpR,       &
& MChi,MVZp,MRPChiToChiVZp,MRGChiToChiVZp)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToChiVZp(MLambda,em,gs,ZcplChiChiVZpL,ZcplChiChiVZpR,     &
& MChi,MVZp,MRPChiToChiVZp,MRGChiToChiVZp)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToChiVZp(cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,     &
& cplChiChiVZpR,ctcplChiChiVZL,ctcplChiChiVZR,ctcplChiChiVZpL,ctcplChiChiVZpR,           &
& MChi,MChi2,MVZ,MVZ2,MVZp,MVZp2,ZfL0,ZfVZp,ZfVZVZp,AmpWaveChiToChiVZp)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToChiVZp(MAh,MCha,MChi,MFd,MFe,MFu,MFv,             &
& Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,MFv2,           &
& Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,             &
& cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZpL, &
& cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZpL,cplcFdFdVZpR,cplcFeFeVZpL,     &
& cplcFeFeVZpR,cplcFuFuVZpL,cplcFuFuVZpR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhVZVZp,           &
& cplhhVZpVZp,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSdcSdVZp,cplSecSeVZp,cplSucSuVZp,           &
& cplSvcSvVZp,cplcHpmVWmVZp,cplcVWmVWmVZp,AmpVertexChiToChiVZp)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZp(MAh,MCha,MChi,MFd,MFe,MFu,              &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,        &
& cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZpL, &
& cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZpL,cplcFdFdVZpR,cplcFeFeVZpL,     &
& cplcFeFeVZpR,cplcFuFuVZpL,cplcFuFuVZpR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhVZVZp,           &
& cplhhVZpVZp,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSdcSdVZp,cplSecSeVZp,cplSucSuVZp,           &
& cplSvcSvVZp,cplcHpmVWmVZp,cplcVWmVWmVZp,AmpVertexIRdrChiToChiVZp)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZp(MAhOS,MChaOS,MChiOS,MFdOS,              &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,            &
& MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,              &
& MSe2OS,MSu2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,cplChiChiAhR,cplAhhhVZp,      &
& cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZpL,            &
& cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,ZcplChiChiVZpL,     &
& ZcplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,       &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZpL,cplcFdFdVZpR,cplcFeFeVZpL,     &
& cplcFeFeVZpR,cplcFuFuVZpL,cplcFuFuVZpR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhVZVZp,           &
& cplhhVZpVZp,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSdcSdVZp,cplSecSeVZp,cplSucSuVZp,           &
& cplSvcSvVZp,cplcHpmVWmVZp,cplcVWmVWmVZp,AmpVertexIRosChiToChiVZp)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZp(MAh,MCha,MChi,MFd,MFe,MFu,              &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,        &
& cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZpL, &
& cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,ZcplChiChiVZpL,     &
& ZcplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,       &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZpL,cplcFdFdVZpR,cplcFeFeVZpL,     &
& cplcFeFeVZpR,cplcFuFuVZpL,cplcFuFuVZpR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhVZVZp,           &
& cplhhVZpVZp,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSdcSdVZp,cplSecSeVZp,cplSucSuVZp,           &
& cplSvcSvVZp,cplcHpmVWmVZp,cplcVWmVWmVZp,AmpVertexIRosChiToChiVZp)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZp(MAhOS,MChaOS,MChiOS,MFdOS,              &
& MFeOS,MFuOS,MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,            &
& MAh2OS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,              &
& MSe2OS,MSu2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,cplChiChiAhR,cplAhhhVZp,      &
& cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZpL,            &
& cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZpL,cplcFdFdVZpR,cplcFeFeVZpL,     &
& cplcFeFeVZpR,cplcFuFuVZpL,cplcFuFuVZpR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhVZVZp,           &
& cplhhVZpVZp,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSdcSdVZp,cplSecSeVZp,cplSucSuVZp,           &
& cplSvcSvVZp,cplcHpmVWmVZp,cplcVWmVWmVZp,AmpVertexIRosChiToChiVZp)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToChiVZp(MAh,MCha,MChi,MFd,MFe,MFu,              &
& MFv,Mhh,MHpm,MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFe2,MFu2,            &
& MFv2,Mhh2,MHpm2,MSd2,MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,        &
& cplAhhhVZp,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVZpL, &
& cplcChaChaVZpR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,     &
& cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVZpL,cplcFdFdVZpR,cplcFeFeVZpL,     &
& cplcFeFeVZpR,cplcFuFuVZpL,cplcFuFuVZpR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhVZVZp,           &
& cplhhVZpVZp,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSdcSdVZp,cplSecSeVZp,cplSucSuVZp,           &
& cplSvcSvVZp,cplcHpmVWmVZp,cplcVWmVWmVZp,AmpVertexIRosChiToChiVZp)

 End if
 End if
AmpVertexChiToChiVZp = AmpVertexChiToChiVZp -  AmpVertexIRdrChiToChiVZp! +  AmpVertexIRosChiToChiVZp ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToChiVZp=0._dp
AmpVertexZChiToChiVZp=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChiVZp(1,gt2,:) = AmpWaveZChiToChiVZp(1,gt2,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiVZp(1,gt1,:)
AmpVertexZChiToChiVZp(1,gt2,:)= AmpVertexZChiToChiVZp(1,gt2,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToChiVZp(1,gt1,:)
AmpWaveZChiToChiVZp(2,gt2,:) = AmpWaveZChiToChiVZp(2,gt2,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChiVZp(2,gt1,:)
AmpVertexZChiToChiVZp(2,gt2,:)= AmpVertexZChiToChiVZp(2,gt2,:) + ZRUZN(gt2,gt1)*AmpVertexChiToChiVZp(2,gt1,:)
AmpWaveZChiToChiVZp(3,gt2,:) = AmpWaveZChiToChiVZp(3,gt2,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiVZp(3,gt1,:)
AmpVertexZChiToChiVZp(3,gt2,:)= AmpVertexZChiToChiVZp(3,gt2,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToChiVZp(3,gt1,:)
AmpWaveZChiToChiVZp(4,gt2,:) = AmpWaveZChiToChiVZp(4,gt2,:)+ZRUZN(gt2,gt1)*AmpWaveChiToChiVZp(4,gt1,:)
AmpVertexZChiToChiVZp(4,gt2,:)= AmpVertexZChiToChiVZp(4,gt2,:) + ZRUZN(gt2,gt1)*AmpVertexChiToChiVZp(4,gt1,:)
 End Do
End Do
AmpWaveChiToChiVZp=AmpWaveZChiToChiVZp
AmpVertexChiToChiVZp= AmpVertexZChiToChiVZp
! Final State 1
AmpWaveZChiToChiVZp=0._dp
AmpVertexZChiToChiVZp=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToChiVZp(1,:,gt2) = AmpWaveZChiToChiVZp(1,:,gt2)+ZRUZN(gt2,gt1)*AmpWaveChiToChiVZp(1,:,gt1)
AmpVertexZChiToChiVZp(1,:,gt2)= AmpVertexZChiToChiVZp(1,:,gt2)+ZRUZN(gt2,gt1)*AmpVertexChiToChiVZp(1,:,gt1)
AmpWaveZChiToChiVZp(2,:,gt2) = AmpWaveZChiToChiVZp(2,:,gt2)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiVZp(2,:,gt1)
AmpVertexZChiToChiVZp(2,:,gt2)= AmpVertexZChiToChiVZp(2,:,gt2)+ZRUZNc(gt2,gt1)*AmpVertexChiToChiVZp(2,:,gt1)
AmpWaveZChiToChiVZp(3,:,gt2) = AmpWaveZChiToChiVZp(3,:,gt2)+ZRUZN(gt2,gt1)*AmpWaveChiToChiVZp(3,:,gt1)
AmpVertexZChiToChiVZp(3,:,gt2)= AmpVertexZChiToChiVZp(3,:,gt2)+ZRUZN(gt2,gt1)*AmpVertexChiToChiVZp(3,:,gt1)
AmpWaveZChiToChiVZp(4,:,gt2) = AmpWaveZChiToChiVZp(4,:,gt2)+ZRUZNc(gt2,gt1)*AmpWaveChiToChiVZp(4,:,gt1)
AmpVertexZChiToChiVZp(4,:,gt2)= AmpVertexZChiToChiVZp(4,:,gt2)+ZRUZNc(gt2,gt1)*AmpVertexChiToChiVZp(4,:,gt1)
 End Do
End Do
AmpWaveChiToChiVZp=AmpWaveZChiToChiVZp
AmpVertexChiToChiVZp= AmpVertexZChiToChiVZp
End if
If (ShiftIRdiv) Then
AmpVertexChiToChiVZp = AmpVertexChiToChiVZp  +  AmpVertexIRosChiToChiVZp
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Chi VZp -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToChiVZp = AmpTreeChiToChiVZp
 AmpSum2ChiToChiVZp = AmpTreeChiToChiVZp + 2._dp*AmpWaveChiToChiVZp + 2._dp*AmpVertexChiToChiVZp
Else
 AmpSumChiToChiVZp = AmpTreeChiToChiVZp + AmpWaveChiToChiVZp + AmpVertexChiToChiVZp
 AmpSum2ChiToChiVZp = AmpTreeChiToChiVZp + AmpWaveChiToChiVZp + AmpVertexChiToChiVZp
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToChiVZp = AmpTreeChiToChiVZp
 AmpSum2ChiToChiVZp = AmpTreeChiToChiVZp
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,6
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MChiOS(gt2))+Abs(MVZpOS)))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MChi(gt2))+Abs(MVZp))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2
  AmpSum2ChiToChiVZp = AmpTreeChiToChiVZp
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZpOS,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZp,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToChiVZp(gt1, gt2)
  AmpSum2ChiToChiVZp = 2._dp*AmpWaveChiToChiVZp
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZpOS,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZp,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToChiVZp(gt1, gt2)
  AmpSum2ChiToChiVZp = 2._dp*AmpVertexChiToChiVZp
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZpOS,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZp,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToChiVZp(gt1, gt2)
  AmpSum2ChiToChiVZp = AmpTreeChiToChiVZp + 2._dp*AmpWaveChiToChiVZp + 2._dp*AmpVertexChiToChiVZp
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZpOS,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZp,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToChiVZp(gt1, gt2)
 End if
If (OSkinematics) Then
  AmpSum2ChiToChiVZp = AmpTreeChiToChiVZp
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZpOS,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
  AmpSqTreeChiToChiVZp(gt1, gt2) = AmpSqChiToChiVZp(gt1, gt2)
  AmpSum2ChiToChiVZp = + 2._dp*AmpWaveChiToChiVZp + 2._dp*AmpVertexChiToChiVZp
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),MVZpOS,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
  AmpSqChiToChiVZp(gt1, gt2) = AmpSqChiToChiVZp(gt1, gt2) + AmpSqTreeChiToChiVZp(gt1, gt2)
Else
  AmpSum2ChiToChiVZp = AmpTreeChiToChiVZp
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZp,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
  AmpSqTreeChiToChiVZp(gt1, gt2) = AmpSqChiToChiVZp(gt1, gt2)
  AmpSum2ChiToChiVZp = + 2._dp*AmpWaveChiToChiVZp + 2._dp*AmpVertexChiToChiVZp
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVZp,AmpSumChiToChiVZp(:,gt1, gt2),AmpSum2ChiToChiVZp(:,gt1, gt2),AmpSqChiToChiVZp(gt1, gt2))
  AmpSqChiToChiVZp(gt1, gt2) = AmpSqChiToChiVZp(gt1, gt2) + AmpSqTreeChiToChiVZp(gt1, gt2)
End if
Else
  AmpSqChiToChiVZp(gt1, gt2) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToChiVZp(gt1, gt2).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChiOS(gt1),MChiOS(gt2),MVZpOS,helfactor*AmpSqChiToChiVZp(gt1, gt2))
Else
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChi(gt1),MChi(gt2),MVZp,helfactor*AmpSqChiToChiVZp(gt1, gt2))
End if
If ((Abs(MRPChiToChiVZp(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGChiToChiVZp(gt1, gt2)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToChiVZp(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGChiToChiVZp(gt1, gt2)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToChiVZp(gt1, gt2) + MRGChiToChiVZp(gt1, gt2))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToChiVZp(gt1, gt2) + MRGChiToChiVZp(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

  End do
If (gt1.eq.6) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Fd Conjg(Sd)
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToFdcSd(cplChiFdcSdL,cplChiFdcSdR,MChi,               &
& MFd,MSd,MChi2,MFd2,MSd2,AmpTreeChiToFdcSd)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToFdcSd(ZcplChiFdcSdL,ZcplChiFdcSdR,MChi,             &
& MFd,MSd,MChi2,MFd2,MSd2,AmpTreeChiToFdcSd)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToFdcSd(MLambda,em,gs,cplChiFdcSdL,cplChiFdcSdR,          &
& MChiOS,MFdOS,MSdOS,MRPChiToFdcSd,MRGChiToFdcSd)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToFdcSd(MLambda,em,gs,ZcplChiFdcSdL,ZcplChiFdcSdR,        &
& MChiOS,MFdOS,MSdOS,MRPChiToFdcSd,MRGChiToFdcSd)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToFdcSd(MLambda,em,gs,cplChiFdcSdL,cplChiFdcSdR,          &
& MChi,MFd,MSd,MRPChiToFdcSd,MRGChiToFdcSd)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToFdcSd(MLambda,em,gs,ZcplChiFdcSdL,ZcplChiFdcSdR,        &
& MChi,MFd,MSd,MRPChiToFdcSd,MRGChiToFdcSd)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToFdcSd(cplChiFdcSdL,cplChiFdcSdR,ctcplChiFdcSdL,     &
& ctcplChiFdcSdR,MChi,MChi2,MFd,MFd2,MSd,MSd2,ZfFDL,ZfFDR,ZfL0,ZfSd,AmpWaveChiToFdcSd)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToFdcSd(MAh,MCha,MChi,MFd,MFu,MGlu,Mhh,             &
& MHpm,MSd,MSu,MVG,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFu2,MGlu2,Mhh2,              &
& MHpm2,MSd2,MSu2,MVG2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,      &
& cplcFdFdAhR,cplAhSdcSd,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,    &
& cplChaFucSdL,cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,         &
& cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFucSuL,cplChiFucSuR,       &
& cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,cplcFuChiSuR,     &
& cplcChaChiVWmL,cplcChaChiVWmR,cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,       &
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               &
& cplcFdFdVZpL,cplcFdFdVZpR,cplcChaFdcSuL,cplcChaFdcSuR,cplcFuFdcHpmL,cplcFuFdcHpmR,     &
& cplcFuFdcVWmL,cplcFuFdcVWmR,cplhhSdcSd,cplHpmSucSd,cplSdcSdVG,cplSdcSdVP,              &
& cplSdcSdVZ,cplSdcSdVZp,cplSucSdVWm,AmpVertexChiToFdcSd)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFdcSd(MAh,MCha,MChi,MFd,MFu,MGlu,              &
& Mhh,MHpm,MSd,MSu,MVG,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFu2,MGlu2,               &
& Mhh2,MHpm2,MSd2,MSu2,MVG2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,             &
& cplcFdFdAhL,cplcFdFdAhR,cplAhSdcSd,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,       &
& cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,       &
& cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFucSuL,       &
& cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,     &
& cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,      &
& cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,               &
& cplcFdFdVZR,cplcFdFdVZpL,cplcFdFdVZpR,cplcChaFdcSuL,cplcChaFdcSuR,cplcFuFdcHpmL,       &
& cplcFuFdcHpmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplhhSdcSd,cplHpmSucSd,cplSdcSdVG,           &
& cplSdcSdVP,cplSdcSdVZ,cplSdcSdVZp,cplSucSdVWm,AmpVertexIRdrChiToFdcSd)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFdcSd(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFuOS,MGluOS,MhhOS,MHpmOS,MSdOS,MSuOS,MVG,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,              &
& MCha2OS,MChi2OS,MFd2OS,MFu2OS,MGlu2OS,Mhh2OS,MHpm2OS,MSd2OS,MSu2OS,MVG2,               &
& MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,         &
& cplAhSdcSd,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,   &
& cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,ZcplChiFdcSdL,ZcplChiFdcSdR,cplChiFucSuL,cplChiFucSuR,cplcChaChiHpmL,    &
& cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,          &
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFdVZpL,              &
& cplcFdFdVZpR,cplcChaFdcSuL,cplcChaFdcSuR,cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFuFdcVWmL,    &
& cplcFuFdcVWmR,cplhhSdcSd,cplHpmSucSd,cplSdcSdVG,cplSdcSdVP,cplSdcSdVZ,cplSdcSdVZp,     &
& cplSucSdVWm,AmpVertexIRosChiToFdcSd)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFdcSd(MAh,MCha,MChi,MFd,MFu,MGlu,              &
& Mhh,MHpm,MSd,MSu,MVG,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFu2,MGlu2,               &
& Mhh2,MHpm2,MSd2,MSu2,MVG2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,             &
& cplcFdFdAhL,cplcFdFdAhR,cplAhSdcSd,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,       &
& cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,       &
& cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,ZcplChiFdcSdL,ZcplChiFdcSdR,cplChiFucSuL,     &
& cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,     &
& cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,      &
& cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,               &
& cplcFdFdVZR,cplcFdFdVZpL,cplcFdFdVZpR,cplcChaFdcSuL,cplcChaFdcSuR,cplcFuFdcHpmL,       &
& cplcFuFdcHpmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplhhSdcSd,cplHpmSucSd,cplSdcSdVG,           &
& cplSdcSdVP,cplSdcSdVZ,cplSdcSdVZp,cplSucSdVWm,AmpVertexIRosChiToFdcSd)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFdcSd(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFuOS,MGluOS,MhhOS,MHpmOS,MSdOS,MSuOS,MVG,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,              &
& MCha2OS,MChi2OS,MFd2OS,MFu2OS,MGlu2OS,Mhh2OS,MHpm2OS,MSd2OS,MSu2OS,MVG2,               &
& MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,cplChiChiAhR,cplcFdFdAhL,cplcFdFdAhR,         &
& cplAhSdcSd,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,   &
& cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFucSuL,cplChiFucSuR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,          &
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFdVZpL,              &
& cplcFdFdVZpR,cplcChaFdcSuL,cplcChaFdcSuR,cplcFuFdcHpmL,cplcFuFdcHpmR,cplcFuFdcVWmL,    &
& cplcFuFdcVWmR,cplhhSdcSd,cplHpmSucSd,cplSdcSdVG,cplSdcSdVP,cplSdcSdVZ,cplSdcSdVZp,     &
& cplSucSdVWm,AmpVertexIRosChiToFdcSd)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFdcSd(MAh,MCha,MChi,MFd,MFu,MGlu,              &
& Mhh,MHpm,MSd,MSu,MVG,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFu2,MGlu2,               &
& Mhh2,MHpm2,MSd2,MSu2,MVG2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,             &
& cplcFdFdAhL,cplcFdFdAhR,cplAhSdcSd,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,       &
& cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,       &
& cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFucSuL,       &
& cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,     &
& cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,cplGluFdcSdL,cplGluFdcSdR,cplcFdFdhhL,      &
& cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,               &
& cplcFdFdVZR,cplcFdFdVZpL,cplcFdFdVZpR,cplcChaFdcSuL,cplcChaFdcSuR,cplcFuFdcHpmL,       &
& cplcFuFdcHpmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplhhSdcSd,cplHpmSucSd,cplSdcSdVG,           &
& cplSdcSdVP,cplSdcSdVZ,cplSdcSdVZp,cplSucSdVWm,AmpVertexIRosChiToFdcSd)

 End if
 End if
AmpVertexChiToFdcSd = AmpVertexChiToFdcSd -  AmpVertexIRdrChiToFdcSd! +  AmpVertexIRosChiToFdcSd ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToFdcSd=0._dp
AmpVertexZChiToFdcSd=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToFdcSd(1,gt2,:,:) = AmpWaveZChiToFdcSd(1,gt2,:,:)+ZRUZN(gt2,gt1)*AmpWaveChiToFdcSd(1,gt1,:,:)
AmpVertexZChiToFdcSd(1,gt2,:,:)= AmpVertexZChiToFdcSd(1,gt2,:,:) + ZRUZN(gt2,gt1)*AmpVertexChiToFdcSd(1,gt1,:,:)
AmpWaveZChiToFdcSd(2,gt2,:,:) = AmpWaveZChiToFdcSd(2,gt2,:,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToFdcSd(2,gt1,:,:)
AmpVertexZChiToFdcSd(2,gt2,:,:)= AmpVertexZChiToFdcSd(2,gt2,:,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToFdcSd(2,gt1,:,:)
 End Do
End Do
AmpWaveChiToFdcSd=AmpWaveZChiToFdcSd
AmpVertexChiToFdcSd= AmpVertexZChiToFdcSd
! Final State 1
AmpWaveZChiToFdcSd=0._dp
AmpVertexZChiToFdcSd=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZChiToFdcSd(1,:,gt2,:) = AmpWaveZChiToFdcSd(1,:,gt2,:)+ZRUZDL(gt2,gt1)*AmpWaveChiToFdcSd(1,:,gt1,:)
AmpVertexZChiToFdcSd(1,:,gt2,:)= AmpVertexZChiToFdcSd(1,:,gt2,:)+ZRUZDL(gt2,gt1)*AmpVertexChiToFdcSd(1,:,gt1,:)
AmpWaveZChiToFdcSd(2,:,gt2,:) = AmpWaveZChiToFdcSd(2,:,gt2,:)+ZRUZDRc(gt2,gt1)*AmpWaveChiToFdcSd(2,:,gt1,:)
AmpVertexZChiToFdcSd(2,:,gt2,:)= AmpVertexZChiToFdcSd(2,:,gt2,:)+ZRUZDRc(gt2,gt1)*AmpVertexChiToFdcSd(2,:,gt1,:)
 End Do
End Do
AmpWaveChiToFdcSd=AmpWaveZChiToFdcSd
AmpVertexChiToFdcSd= AmpVertexZChiToFdcSd
! Final State 2
AmpWaveZChiToFdcSd=0._dp
AmpVertexZChiToFdcSd=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToFdcSd(:,:,:,gt2) = AmpWaveZChiToFdcSd(:,:,:,gt2)+ZRUZDc(gt2,gt1)*AmpWaveChiToFdcSd(:,:,:,gt1)
AmpVertexZChiToFdcSd(:,:,:,gt2)= AmpVertexZChiToFdcSd(:,:,:,gt2)+ZRUZDc(gt2,gt1)*AmpVertexChiToFdcSd(:,:,:,gt1)
 End Do
End Do
AmpWaveChiToFdcSd=AmpWaveZChiToFdcSd
AmpVertexChiToFdcSd= AmpVertexZChiToFdcSd
End if
If (ShiftIRdiv) Then
AmpVertexChiToFdcSd = AmpVertexChiToFdcSd  +  AmpVertexIRosChiToFdcSd
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Fd conj[Sd] -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToFdcSd = AmpTreeChiToFdcSd
 AmpSum2ChiToFdcSd = AmpTreeChiToFdcSd + 2._dp*AmpWaveChiToFdcSd + 2._dp*AmpVertexChiToFdcSd
Else
 AmpSumChiToFdcSd = AmpTreeChiToFdcSd + AmpWaveChiToFdcSd + AmpVertexChiToFdcSd
 AmpSum2ChiToFdcSd = AmpTreeChiToFdcSd + AmpWaveChiToFdcSd + AmpVertexChiToFdcSd
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToFdcSd = AmpTreeChiToFdcSd
 AmpSum2ChiToFdcSd = AmpTreeChiToFdcSd
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,3
    Do gt3=1,6
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MFdOS(gt2))+Abs(MSdOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MFd(gt2))+Abs(MSd(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2ChiToFdcSd = AmpTreeChiToFdcSd
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFdOS(gt2),MSdOS(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFd(gt2),MSd(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToFdcSd(gt1, gt2, gt3)
  AmpSum2ChiToFdcSd = 2._dp*AmpWaveChiToFdcSd
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFdOS(gt2),MSdOS(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFd(gt2),MSd(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToFdcSd(gt1, gt2, gt3)
  AmpSum2ChiToFdcSd = 2._dp*AmpVertexChiToFdcSd
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFdOS(gt2),MSdOS(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFd(gt2),MSd(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToFdcSd(gt1, gt2, gt3)
  AmpSum2ChiToFdcSd = AmpTreeChiToFdcSd + 2._dp*AmpWaveChiToFdcSd + 2._dp*AmpVertexChiToFdcSd
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFdOS(gt2),MSdOS(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFd(gt2),MSd(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToFdcSd(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2ChiToFdcSd = AmpTreeChiToFdcSd
  Call SquareAmp_FtoFS(MChiOS(gt1),MFdOS(gt2),MSdOS(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
  AmpSqTreeChiToFdcSd(gt1, gt2, gt3) = AmpSqChiToFdcSd(gt1, gt2, gt3)
  AmpSum2ChiToFdcSd = + 2._dp*AmpWaveChiToFdcSd + 2._dp*AmpVertexChiToFdcSd
  Call SquareAmp_FtoFS(MChiOS(gt1),MFdOS(gt2),MSdOS(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
  AmpSqChiToFdcSd(gt1, gt2, gt3) = AmpSqChiToFdcSd(gt1, gt2, gt3) + AmpSqTreeChiToFdcSd(gt1, gt2, gt3)
Else
  AmpSum2ChiToFdcSd = AmpTreeChiToFdcSd
  Call SquareAmp_FtoFS(MChi(gt1),MFd(gt2),MSd(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
  AmpSqTreeChiToFdcSd(gt1, gt2, gt3) = AmpSqChiToFdcSd(gt1, gt2, gt3)
  AmpSum2ChiToFdcSd = + 2._dp*AmpWaveChiToFdcSd + 2._dp*AmpVertexChiToFdcSd
  Call SquareAmp_FtoFS(MChi(gt1),MFd(gt2),MSd(gt3),AmpSumChiToFdcSd(:,gt1, gt2, gt3),AmpSum2ChiToFdcSd(:,gt1, gt2, gt3),AmpSqChiToFdcSd(gt1, gt2, gt3))
  AmpSqChiToFdcSd(gt1, gt2, gt3) = AmpSqChiToFdcSd(gt1, gt2, gt3) + AmpSqTreeChiToFdcSd(gt1, gt2, gt3)
End if
Else
  AmpSqChiToFdcSd(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToFdcSd(gt1, gt2, gt3).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 6._dp*GammaTPS(MChiOS(gt1),MFdOS(gt2),MSdOS(gt3),helfactor*AmpSqChiToFdcSd(gt1, gt2, gt3))
Else
  gP1LChi(gt1,i4) = 6._dp*GammaTPS(MChi(gt1),MFd(gt2),MSd(gt3),helfactor*AmpSqChiToFdcSd(gt1, gt2, gt3))
End if
If ((Abs(MRPChiToFdcSd(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToFdcSd(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToFdcSd(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToFdcSd(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToFdcSd(gt1, gt2, gt3) + MRGChiToFdcSd(gt1, gt2, gt3))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToFdcSd(gt1, gt2, gt3) + MRGChiToFdcSd(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Fe Conjg(Se)
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToFecSe(cplChiFecSeL,cplChiFecSeR,MChi,               &
& MFe,MSe,MChi2,MFe2,MSe2,AmpTreeChiToFecSe)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToFecSe(ZcplChiFecSeL,ZcplChiFecSeR,MChi,             &
& MFe,MSe,MChi2,MFe2,MSe2,AmpTreeChiToFecSe)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToFecSe(MLambda,em,gs,cplChiFecSeL,cplChiFecSeR,          &
& MChiOS,MFeOS,MSeOS,MRPChiToFecSe,MRGChiToFecSe)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToFecSe(MLambda,em,gs,ZcplChiFecSeL,ZcplChiFecSeR,        &
& MChiOS,MFeOS,MSeOS,MRPChiToFecSe,MRGChiToFecSe)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToFecSe(MLambda,em,gs,cplChiFecSeL,cplChiFecSeR,          &
& MChi,MFe,MSe,MRPChiToFecSe,MRGChiToFecSe)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToFecSe(MLambda,em,gs,ZcplChiFecSeL,ZcplChiFecSeR,        &
& MChi,MFe,MSe,MRPChiToFecSe,MRGChiToFecSe)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToFecSe(cplChiFecSeL,cplChiFecSeR,ctcplChiFecSeL,     &
& ctcplChiFecSeR,MChi,MChi2,MFe,MFe2,MSe,MSe2,ZfFEL,ZfFER,ZfL0,ZfSe,AmpWaveChiToFecSe)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToFecSe(MAh,MCha,MChi,MFe,MFv,Mhh,MHpm,             &
& MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,             &
& MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,cplcFeFeAhL,cplcFeFeAhR,               &
& cplAhSecSe,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,   &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,            &
& cplcFeFeVZR,cplcFeFeVZpL,cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,       &
& cplcFvFecHpmR,cplcFvFecVWmL,cplcFvFecVWmR,cplhhSecSe,cplHpmSvcSe,cplSecSeVP,           &
& cplSecSeVZ,cplSecSeVZp,cplSvcSeVWm,AmpVertexChiToFecSe)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFecSe(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,             &
& MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,cplcFeFeAhL,cplcFeFeAhR,          &
& cplAhSecSe,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,   &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,            &
& cplcFeFeVZR,cplcFeFeVZpL,cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,       &
& cplcFvFecHpmR,cplcFvFecVWmL,cplcFvFecVWmR,cplhhSecSe,cplHpmSvcSe,cplSecSeVP,           &
& cplSecSeVZ,cplSecSeVZp,cplSvcSeVWm,AmpVertexIRdrChiToFecSe)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFecSe(MAhOS,MChaOS,MChiOS,MFeOS,               &
& MFvOS,MhhOS,MHpmOS,MSeOS,MSvOS,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,MChi2OS,         &
& MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSe2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,   &
& cplChiChiAhR,cplcFeFeAhL,cplcFeFeAhR,cplAhSecSe,cplChiChacHpmL,cplChiChacHpmR,         &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,cplChaFvcSeR,cplChiChihhL,cplChiChihhR,     &
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,ZcplChiFecSeL,ZcplChiFecSeR,     &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFeFehhL,cplcFeFehhR,       &
& cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFeFeVZpL,cplcFeFeVZpR,             &
& cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplcFvFecVWmL,cplcFvFecVWmR,   &
& cplhhSecSe,cplHpmSvcSe,cplSecSeVP,cplSecSeVZ,cplSecSeVZp,cplSvcSeVWm,AmpVertexIRosChiToFecSe)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFecSe(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,             &
& MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,cplcFeFeAhL,cplcFeFeAhR,          &
& cplAhSecSe,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,   &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,ZcplChiFecSeL,ZcplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,    &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,            &
& cplcFeFeVZR,cplcFeFeVZpL,cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,       &
& cplcFvFecHpmR,cplcFvFecVWmL,cplcFvFecVWmR,cplhhSecSe,cplHpmSvcSe,cplSecSeVP,           &
& cplSecSeVZ,cplSecSeVZp,cplSvcSeVWm,AmpVertexIRosChiToFecSe)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFecSe(MAhOS,MChaOS,MChiOS,MFeOS,               &
& MFvOS,MhhOS,MHpmOS,MSeOS,MSvOS,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,MChi2OS,         &
& MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSe2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,   &
& cplChiChiAhR,cplcFeFeAhL,cplcFeFeAhR,cplAhSecSe,cplChiChacHpmL,cplChiChacHpmR,         &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,cplChaFvcSeR,cplChiChihhL,cplChiChihhR,     &
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,       &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFeFehhL,cplcFeFehhR,       &
& cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFeFeVZpL,cplcFeFeVZpR,             &
& cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplcFvFecVWmL,cplcFvFecVWmR,   &
& cplhhSecSe,cplHpmSvcSe,cplSecSeVP,cplSecSeVZ,cplSecSeVZp,cplSvcSeVWm,AmpVertexIRosChiToFecSe)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFecSe(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,             &
& MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,cplcFeFeAhL,cplcFeFeAhR,          &
& cplAhSecSe,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,   &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,            &
& cplcFeFeVZR,cplcFeFeVZpL,cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,       &
& cplcFvFecHpmR,cplcFvFecVWmL,cplcFvFecVWmR,cplhhSecSe,cplHpmSvcSe,cplSecSeVP,           &
& cplSecSeVZ,cplSecSeVZp,cplSvcSeVWm,AmpVertexIRosChiToFecSe)

 End if
 End if
AmpVertexChiToFecSe = AmpVertexChiToFecSe -  AmpVertexIRdrChiToFecSe! +  AmpVertexIRosChiToFecSe ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToFecSe=0._dp
AmpVertexZChiToFecSe=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToFecSe(1,gt2,:,:) = AmpWaveZChiToFecSe(1,gt2,:,:)+ZRUZN(gt2,gt1)*AmpWaveChiToFecSe(1,gt1,:,:)
AmpVertexZChiToFecSe(1,gt2,:,:)= AmpVertexZChiToFecSe(1,gt2,:,:) + ZRUZN(gt2,gt1)*AmpVertexChiToFecSe(1,gt1,:,:)
AmpWaveZChiToFecSe(2,gt2,:,:) = AmpWaveZChiToFecSe(2,gt2,:,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToFecSe(2,gt1,:,:)
AmpVertexZChiToFecSe(2,gt2,:,:)= AmpVertexZChiToFecSe(2,gt2,:,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToFecSe(2,gt1,:,:)
 End Do
End Do
AmpWaveChiToFecSe=AmpWaveZChiToFecSe
AmpVertexChiToFecSe= AmpVertexZChiToFecSe
! Final State 1
AmpWaveZChiToFecSe=0._dp
AmpVertexZChiToFecSe=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZChiToFecSe(1,:,gt2,:) = AmpWaveZChiToFecSe(1,:,gt2,:)+ZRUZEL(gt2,gt1)*AmpWaveChiToFecSe(1,:,gt1,:)
AmpVertexZChiToFecSe(1,:,gt2,:)= AmpVertexZChiToFecSe(1,:,gt2,:)+ZRUZEL(gt2,gt1)*AmpVertexChiToFecSe(1,:,gt1,:)
AmpWaveZChiToFecSe(2,:,gt2,:) = AmpWaveZChiToFecSe(2,:,gt2,:)+ZRUZERc(gt2,gt1)*AmpWaveChiToFecSe(2,:,gt1,:)
AmpVertexZChiToFecSe(2,:,gt2,:)= AmpVertexZChiToFecSe(2,:,gt2,:)+ZRUZERc(gt2,gt1)*AmpVertexChiToFecSe(2,:,gt1,:)
 End Do
End Do
AmpWaveChiToFecSe=AmpWaveZChiToFecSe
AmpVertexChiToFecSe= AmpVertexZChiToFecSe
! Final State 2
AmpWaveZChiToFecSe=0._dp
AmpVertexZChiToFecSe=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToFecSe(:,:,:,gt2) = AmpWaveZChiToFecSe(:,:,:,gt2)+ZRUZEc(gt2,gt1)*AmpWaveChiToFecSe(:,:,:,gt1)
AmpVertexZChiToFecSe(:,:,:,gt2)= AmpVertexZChiToFecSe(:,:,:,gt2)+ZRUZEc(gt2,gt1)*AmpVertexChiToFecSe(:,:,:,gt1)
 End Do
End Do
AmpWaveChiToFecSe=AmpWaveZChiToFecSe
AmpVertexChiToFecSe= AmpVertexZChiToFecSe
End if
If (ShiftIRdiv) Then
AmpVertexChiToFecSe = AmpVertexChiToFecSe  +  AmpVertexIRosChiToFecSe
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Fe conj[Se] -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToFecSe = AmpTreeChiToFecSe
 AmpSum2ChiToFecSe = AmpTreeChiToFecSe + 2._dp*AmpWaveChiToFecSe + 2._dp*AmpVertexChiToFecSe
Else
 AmpSumChiToFecSe = AmpTreeChiToFecSe + AmpWaveChiToFecSe + AmpVertexChiToFecSe
 AmpSum2ChiToFecSe = AmpTreeChiToFecSe + AmpWaveChiToFecSe + AmpVertexChiToFecSe
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToFecSe = AmpTreeChiToFecSe
 AmpSum2ChiToFecSe = AmpTreeChiToFecSe
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,3
    Do gt3=1,6
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MFeOS(gt2))+Abs(MSeOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MFe(gt2))+Abs(MSe(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2ChiToFecSe = AmpTreeChiToFecSe
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFeOS(gt2),MSeOS(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFe(gt2),MSe(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToFecSe(gt1, gt2, gt3)
  AmpSum2ChiToFecSe = 2._dp*AmpWaveChiToFecSe
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFeOS(gt2),MSeOS(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFe(gt2),MSe(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToFecSe(gt1, gt2, gt3)
  AmpSum2ChiToFecSe = 2._dp*AmpVertexChiToFecSe
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFeOS(gt2),MSeOS(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFe(gt2),MSe(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToFecSe(gt1, gt2, gt3)
  AmpSum2ChiToFecSe = AmpTreeChiToFecSe + 2._dp*AmpWaveChiToFecSe + 2._dp*AmpVertexChiToFecSe
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFeOS(gt2),MSeOS(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFe(gt2),MSe(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToFecSe(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2ChiToFecSe = AmpTreeChiToFecSe
  Call SquareAmp_FtoFS(MChiOS(gt1),MFeOS(gt2),MSeOS(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
  AmpSqTreeChiToFecSe(gt1, gt2, gt3) = AmpSqChiToFecSe(gt1, gt2, gt3)
  AmpSum2ChiToFecSe = + 2._dp*AmpWaveChiToFecSe + 2._dp*AmpVertexChiToFecSe
  Call SquareAmp_FtoFS(MChiOS(gt1),MFeOS(gt2),MSeOS(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
  AmpSqChiToFecSe(gt1, gt2, gt3) = AmpSqChiToFecSe(gt1, gt2, gt3) + AmpSqTreeChiToFecSe(gt1, gt2, gt3)
Else
  AmpSum2ChiToFecSe = AmpTreeChiToFecSe
  Call SquareAmp_FtoFS(MChi(gt1),MFe(gt2),MSe(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
  AmpSqTreeChiToFecSe(gt1, gt2, gt3) = AmpSqChiToFecSe(gt1, gt2, gt3)
  AmpSum2ChiToFecSe = + 2._dp*AmpWaveChiToFecSe + 2._dp*AmpVertexChiToFecSe
  Call SquareAmp_FtoFS(MChi(gt1),MFe(gt2),MSe(gt3),AmpSumChiToFecSe(:,gt1, gt2, gt3),AmpSum2ChiToFecSe(:,gt1, gt2, gt3),AmpSqChiToFecSe(gt1, gt2, gt3))
  AmpSqChiToFecSe(gt1, gt2, gt3) = AmpSqChiToFecSe(gt1, gt2, gt3) + AmpSqTreeChiToFecSe(gt1, gt2, gt3)
End if
Else
  AmpSqChiToFecSe(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToFecSe(gt1, gt2, gt3).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChiOS(gt1),MFeOS(gt2),MSeOS(gt3),helfactor*AmpSqChiToFecSe(gt1, gt2, gt3))
Else
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChi(gt1),MFe(gt2),MSe(gt3),helfactor*AmpSqChiToFecSe(gt1, gt2, gt3))
End if
If ((Abs(MRPChiToFecSe(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToFecSe(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToFecSe(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToFecSe(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToFecSe(gt1, gt2, gt3) + MRGChiToFecSe(gt1, gt2, gt3))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToFecSe(gt1, gt2, gt3) + MRGChiToFecSe(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Fu Conjg(Su)
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToFucSu(cplChiFucSuL,cplChiFucSuR,MChi,               &
& MFu,MSu,MChi2,MFu2,MSu2,AmpTreeChiToFucSu)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToFucSu(ZcplChiFucSuL,ZcplChiFucSuR,MChi,             &
& MFu,MSu,MChi2,MFu2,MSu2,AmpTreeChiToFucSu)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToFucSu(MLambda,em,gs,cplChiFucSuL,cplChiFucSuR,          &
& MChiOS,MFuOS,MSuOS,MRPChiToFucSu,MRGChiToFucSu)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToFucSu(MLambda,em,gs,ZcplChiFucSuL,ZcplChiFucSuR,        &
& MChiOS,MFuOS,MSuOS,MRPChiToFucSu,MRGChiToFucSu)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToFucSu(MLambda,em,gs,cplChiFucSuL,cplChiFucSuR,          &
& MChi,MFu,MSu,MRPChiToFucSu,MRGChiToFucSu)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToFucSu(MLambda,em,gs,ZcplChiFucSuL,ZcplChiFucSuR,        &
& MChi,MFu,MSu,MRPChiToFucSu,MRGChiToFucSu)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToFucSu(cplChiFucSuL,cplChiFucSuR,ctcplChiFucSuL,     &
& ctcplChiFucSuR,MChi,MChi2,MFu,MFu2,MSu,MSu2,ZfFUL,ZfFUR,ZfL0,ZfSu,AmpWaveChiToFucSu)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToFucSu(MAh,MCha,MChi,MFd,MFu,MGlu,Mhh,             &
& MHpm,MSd,MSu,MVG,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFu2,MGlu2,Mhh2,              &
& MHpm2,MSd2,MSu2,MVG2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,cplcFuFuAhL,      &
& cplcFuFuAhR,cplAhSucSu,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,    &
& cplChaFucSdL,cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,         &
& cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFucSuL,cplChiFucSuR,       &
& cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,cplcFuChiSuR,     &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFdcSuL,cplcChaFdcSuR,cplGluFucSuL,cplGluFucSuR,   &
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHpmL,cplcFdFuHpmR,cplcFuFuVGL,cplcFuFuVGR,             &
& cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,             &
& cplcFuFuVZpL,cplcFuFuVZpR,cplhhSucSu,cplSdcHpmcSu,cplSdcSucVWm,cplSucSuVG,             &
& cplSucSuVP,cplSucSuVZ,cplSucSuVZp,AmpVertexChiToFucSu)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFucSu(MAh,MCha,MChi,MFd,MFu,MGlu,              &
& Mhh,MHpm,MSd,MSu,MVG,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFu2,MGlu2,               &
& Mhh2,MHpm2,MSd2,MSu2,MVG2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,             &
& cplcFuFuAhL,cplcFuFuAhR,cplAhSucSu,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,       &
& cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,       &
& cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFucSuL,       &
& cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,     &
& cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFdcSuL,cplcChaFdcSuR,cplGluFucSuL,   &
& cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHpmL,cplcFdFuHpmR,cplcFuFuVGL,            &
& cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,             &
& cplcFuFuVZR,cplcFuFuVZpL,cplcFuFuVZpR,cplhhSucSu,cplSdcHpmcSu,cplSdcSucVWm,            &
& cplSucSuVG,cplSucSuVP,cplSucSuVZ,cplSucSuVZp,AmpVertexIRdrChiToFucSu)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFucSu(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFuOS,MGluOS,MhhOS,MHpmOS,MSdOS,MSuOS,MVG,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,              &
& MCha2OS,MChi2OS,MFd2OS,MFu2OS,MGlu2OS,Mhh2OS,MHpm2OS,MSd2OS,MSu2OS,MVG2,               &
& MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,cplChiChiAhR,cplcFuFuAhL,cplcFuFuAhR,         &
& cplAhSucSu,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,   &
& cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,ZcplChiFucSuL,ZcplChiFucSuR,cplcChaChiHpmL,    &
& cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFdcSuL,cplcChaFdcSuR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,      &
& cplcFuFuhhR,cplcFdFuHpmL,cplcFdFuHpmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,             &
& cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplcFuFuVZpL,            &
& cplcFuFuVZpR,cplhhSucSu,cplSdcHpmcSu,cplSdcSucVWm,cplSucSuVG,cplSucSuVP,               &
& cplSucSuVZ,cplSucSuVZp,AmpVertexIRosChiToFucSu)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFucSu(MAh,MCha,MChi,MFd,MFu,MGlu,              &
& Mhh,MHpm,MSd,MSu,MVG,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFu2,MGlu2,               &
& Mhh2,MHpm2,MSd2,MSu2,MVG2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,             &
& cplcFuFuAhL,cplcFuFuAhR,cplAhSucSu,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,       &
& cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,       &
& cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,ZcplChiFucSuL,      &
& ZcplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,    &
& cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFdcSuL,cplcChaFdcSuR,cplGluFucSuL,   &
& cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHpmL,cplcFdFuHpmR,cplcFuFuVGL,            &
& cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,             &
& cplcFuFuVZR,cplcFuFuVZpL,cplcFuFuVZpR,cplhhSucSu,cplSdcHpmcSu,cplSdcSucVWm,            &
& cplSucSuVG,cplSucSuVP,cplSucSuVZ,cplSucSuVZp,AmpVertexIRosChiToFucSu)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFucSu(MAhOS,MChaOS,MChiOS,MFdOS,               &
& MFuOS,MGluOS,MhhOS,MHpmOS,MSdOS,MSuOS,MVG,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,              &
& MCha2OS,MChi2OS,MFd2OS,MFu2OS,MGlu2OS,Mhh2OS,MHpm2OS,MSd2OS,MSu2OS,MVG2,               &
& MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChiAhL,cplChiChiAhR,cplcFuFuAhL,cplcFuFuAhR,         &
& cplAhSucSu,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFucSdL,   &
& cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFucSuL,cplChiFucSuR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFdcSuL,cplcChaFdcSuR,cplGluFucSuL,cplGluFucSuR,cplcFuFuhhL,      &
& cplcFuFuhhR,cplcFdFuHpmL,cplcFdFuHpmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,             &
& cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplcFuFuVZpL,            &
& cplcFuFuVZpR,cplhhSucSu,cplSdcHpmcSu,cplSdcSucVWm,cplSucSuVG,cplSucSuVP,               &
& cplSucSuVZ,cplSucSuVZp,AmpVertexIRosChiToFucSu)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFucSu(MAh,MCha,MChi,MFd,MFu,MGlu,              &
& Mhh,MHpm,MSd,MSu,MVG,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFd2,MFu2,MGlu2,               &
& Mhh2,MHpm2,MSd2,MSu2,MVG2,MVP2,MVWm2,MVZ2,MVZp2,cplChiChiAhL,cplChiChiAhR,             &
& cplcFuFuAhL,cplcFuFuAhR,cplAhSucSu,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,       &
& cplChiChacVWmR,cplChaFucSdL,cplChaFucSdR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,       &
& cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFdcSdL,cplChiFdcSdR,cplChiFucSuL,       &
& cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,     &
& cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFdcSuL,cplcChaFdcSuR,cplGluFucSuL,   &
& cplGluFucSuR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHpmL,cplcFdFuHpmR,cplcFuFuVGL,            &
& cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,             &
& cplcFuFuVZR,cplcFuFuVZpL,cplcFuFuVZpR,cplhhSucSu,cplSdcHpmcSu,cplSdcSucVWm,            &
& cplSucSuVG,cplSucSuVP,cplSucSuVZ,cplSucSuVZp,AmpVertexIRosChiToFucSu)

 End if
 End if
AmpVertexChiToFucSu = AmpVertexChiToFucSu -  AmpVertexIRdrChiToFucSu! +  AmpVertexIRosChiToFucSu ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToFucSu=0._dp
AmpVertexZChiToFucSu=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToFucSu(1,gt2,:,:) = AmpWaveZChiToFucSu(1,gt2,:,:)+ZRUZN(gt2,gt1)*AmpWaveChiToFucSu(1,gt1,:,:)
AmpVertexZChiToFucSu(1,gt2,:,:)= AmpVertexZChiToFucSu(1,gt2,:,:) + ZRUZN(gt2,gt1)*AmpVertexChiToFucSu(1,gt1,:,:)
AmpWaveZChiToFucSu(2,gt2,:,:) = AmpWaveZChiToFucSu(2,gt2,:,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToFucSu(2,gt1,:,:)
AmpVertexZChiToFucSu(2,gt2,:,:)= AmpVertexZChiToFucSu(2,gt2,:,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToFucSu(2,gt1,:,:)
 End Do
End Do
AmpWaveChiToFucSu=AmpWaveZChiToFucSu
AmpVertexChiToFucSu= AmpVertexZChiToFucSu
! Final State 1
AmpWaveZChiToFucSu=0._dp
AmpVertexZChiToFucSu=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZChiToFucSu(1,:,gt2,:) = AmpWaveZChiToFucSu(1,:,gt2,:)+ZRUZUL(gt2,gt1)*AmpWaveChiToFucSu(1,:,gt1,:)
AmpVertexZChiToFucSu(1,:,gt2,:)= AmpVertexZChiToFucSu(1,:,gt2,:)+ZRUZUL(gt2,gt1)*AmpVertexChiToFucSu(1,:,gt1,:)
AmpWaveZChiToFucSu(2,:,gt2,:) = AmpWaveZChiToFucSu(2,:,gt2,:)+ZRUZURc(gt2,gt1)*AmpWaveChiToFucSu(2,:,gt1,:)
AmpVertexZChiToFucSu(2,:,gt2,:)= AmpVertexZChiToFucSu(2,:,gt2,:)+ZRUZURc(gt2,gt1)*AmpVertexChiToFucSu(2,:,gt1,:)
 End Do
End Do
AmpWaveChiToFucSu=AmpWaveZChiToFucSu
AmpVertexChiToFucSu= AmpVertexZChiToFucSu
! Final State 2
AmpWaveZChiToFucSu=0._dp
AmpVertexZChiToFucSu=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToFucSu(:,:,:,gt2) = AmpWaveZChiToFucSu(:,:,:,gt2)+ZRUZUc(gt2,gt1)*AmpWaveChiToFucSu(:,:,:,gt1)
AmpVertexZChiToFucSu(:,:,:,gt2)= AmpVertexZChiToFucSu(:,:,:,gt2)+ZRUZUc(gt2,gt1)*AmpVertexChiToFucSu(:,:,:,gt1)
 End Do
End Do
AmpWaveChiToFucSu=AmpWaveZChiToFucSu
AmpVertexChiToFucSu= AmpVertexZChiToFucSu
End if
If (ShiftIRdiv) Then
AmpVertexChiToFucSu = AmpVertexChiToFucSu  +  AmpVertexIRosChiToFucSu
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Fu conj[Su] -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToFucSu = AmpTreeChiToFucSu
 AmpSum2ChiToFucSu = AmpTreeChiToFucSu + 2._dp*AmpWaveChiToFucSu + 2._dp*AmpVertexChiToFucSu
Else
 AmpSumChiToFucSu = AmpTreeChiToFucSu + AmpWaveChiToFucSu + AmpVertexChiToFucSu
 AmpSum2ChiToFucSu = AmpTreeChiToFucSu + AmpWaveChiToFucSu + AmpVertexChiToFucSu
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToFucSu = AmpTreeChiToFucSu
 AmpSum2ChiToFucSu = AmpTreeChiToFucSu
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,3
    Do gt3=1,6
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MFuOS(gt2))+Abs(MSuOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MFu(gt2))+Abs(MSu(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2ChiToFucSu = AmpTreeChiToFucSu
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFuOS(gt2),MSuOS(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFu(gt2),MSu(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToFucSu(gt1, gt2, gt3)
  AmpSum2ChiToFucSu = 2._dp*AmpWaveChiToFucSu
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFuOS(gt2),MSuOS(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFu(gt2),MSu(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToFucSu(gt1, gt2, gt3)
  AmpSum2ChiToFucSu = 2._dp*AmpVertexChiToFucSu
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFuOS(gt2),MSuOS(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFu(gt2),MSu(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToFucSu(gt1, gt2, gt3)
  AmpSum2ChiToFucSu = AmpTreeChiToFucSu + 2._dp*AmpWaveChiToFucSu + 2._dp*AmpVertexChiToFucSu
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFuOS(gt2),MSuOS(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFu(gt2),MSu(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToFucSu(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2ChiToFucSu = AmpTreeChiToFucSu
  Call SquareAmp_FtoFS(MChiOS(gt1),MFuOS(gt2),MSuOS(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
  AmpSqTreeChiToFucSu(gt1, gt2, gt3) = AmpSqChiToFucSu(gt1, gt2, gt3)
  AmpSum2ChiToFucSu = + 2._dp*AmpWaveChiToFucSu + 2._dp*AmpVertexChiToFucSu
  Call SquareAmp_FtoFS(MChiOS(gt1),MFuOS(gt2),MSuOS(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
  AmpSqChiToFucSu(gt1, gt2, gt3) = AmpSqChiToFucSu(gt1, gt2, gt3) + AmpSqTreeChiToFucSu(gt1, gt2, gt3)
Else
  AmpSum2ChiToFucSu = AmpTreeChiToFucSu
  Call SquareAmp_FtoFS(MChi(gt1),MFu(gt2),MSu(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
  AmpSqTreeChiToFucSu(gt1, gt2, gt3) = AmpSqChiToFucSu(gt1, gt2, gt3)
  AmpSum2ChiToFucSu = + 2._dp*AmpWaveChiToFucSu + 2._dp*AmpVertexChiToFucSu
  Call SquareAmp_FtoFS(MChi(gt1),MFu(gt2),MSu(gt3),AmpSumChiToFucSu(:,gt1, gt2, gt3),AmpSum2ChiToFucSu(:,gt1, gt2, gt3),AmpSqChiToFucSu(gt1, gt2, gt3))
  AmpSqChiToFucSu(gt1, gt2, gt3) = AmpSqChiToFucSu(gt1, gt2, gt3) + AmpSqTreeChiToFucSu(gt1, gt2, gt3)
End if
Else
  AmpSqChiToFucSu(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToFucSu(gt1, gt2, gt3).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 6._dp*GammaTPS(MChiOS(gt1),MFuOS(gt2),MSuOS(gt3),helfactor*AmpSqChiToFucSu(gt1, gt2, gt3))
Else
  gP1LChi(gt1,i4) = 6._dp*GammaTPS(MChi(gt1),MFu(gt2),MSu(gt3),helfactor*AmpSqChiToFucSu(gt1, gt2, gt3))
End if
If ((Abs(MRPChiToFucSu(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToFucSu(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToFucSu(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToFucSu(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToFucSu(gt1, gt2, gt3) + MRGChiToFucSu(gt1, gt2, gt3))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToFucSu(gt1, gt2, gt3) + MRGChiToFucSu(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Fv Conjg(Sv)
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_ChiToFvcSv(cplChiFvcSvL,cplChiFvcSvR,MChi,               &
& MFv,MSv,MChi2,MFv2,MSv2,AmpTreeChiToFvcSv)

  Else
Call Amplitude_Tree_NonUMSSM_ChiToFvcSv(ZcplChiFvcSvL,ZcplChiFvcSvR,MChi,             &
& MFv,MSv,MChi2,MFv2,MSv2,AmpTreeChiToFvcSv)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_ChiToFvcSv(MLambda,em,gs,cplChiFvcSvL,cplChiFvcSvR,          &
& MChiOS,MFvOS,MSvOS,MRPChiToFvcSv,MRGChiToFvcSv)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_ChiToFvcSv(MLambda,em,gs,ZcplChiFvcSvL,ZcplChiFvcSvR,        &
& MChiOS,MFvOS,MSvOS,MRPChiToFvcSv,MRGChiToFvcSv)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_ChiToFvcSv(MLambda,em,gs,cplChiFvcSvL,cplChiFvcSvR,          &
& MChi,MFv,MSv,MRPChiToFvcSv,MRGChiToFvcSv)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_ChiToFvcSv(MLambda,em,gs,ZcplChiFvcSvL,ZcplChiFvcSvR,        &
& MChi,MFv,MSv,MRPChiToFvcSv,MRGChiToFvcSv)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToFvcSv(cplChiFvcSvL,cplChiFvcSvR,ctcplChiFvcSvL,     &
& ctcplChiFvcSvR,MChi,MChi2,MFv,MFv2,MSv,MSv2,ZfFvL,ZfL0,ZfSv,AmpWaveChiToFvcSv)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToFvcSv(MCha,MChi,MFe,MFv,Mhh,MHpm,MSe,             &
& MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,               &
& MVZp2,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,        &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,     &
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,             &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexChiToFvcSv)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFvcSv(MCha,MChi,MFe,MFv,Mhh,MHpm,              &
& MSe,MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,           &
& MVZp2,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,        &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,     &
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,             &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRdrChiToFvcSv)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFvcSv(MChaOS,MChiOS,MFeOS,MFvOS,               &
& MhhOS,MHpmOS,MSeOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MCha2OS,MChi2OS,MFe2OS,MFv2OS,            &
& Mhh2OS,MHpm2OS,MSe2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChacHpmL,cplChiChacHpmR,     &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,cplChaFvcSeR,cplChiChihhL,cplChiChihhR,     &
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,       &
& ZcplChiFvcSvL,ZcplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,   &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,   &
& cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,           &
& cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,             &
& cplSvcSvVZp,AmpVertexIRosChiToFvcSv)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFvcSv(MCha,MChi,MFe,MFv,Mhh,MHpm,              &
& MSe,MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,           &
& MVZp2,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,        &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,ZcplChiFvcSvL,ZcplChiFvcSvR,cplcChaChiHpmL,    &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,     &
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,             &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRosChiToFvcSv)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFvcSv(MChaOS,MChiOS,MFeOS,MFvOS,               &
& MhhOS,MHpmOS,MSeOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MCha2OS,MChi2OS,MFe2OS,MFv2OS,            &
& Mhh2OS,MHpm2OS,MSe2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChacHpmL,cplChiChacHpmR,     &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,cplChaFvcSeR,cplChiChihhL,cplChiChihhR,     &
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,       &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,   &
& cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,           &
& cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,             &
& cplSvcSvVZp,AmpVertexIRosChiToFvcSv)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_ChiToFvcSv(MCha,MChi,MFe,MFv,Mhh,MHpm,              &
& MSe,MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,           &
& MVZp2,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,        &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,     &
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,             &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRosChiToFvcSv)

 End if
 End if
AmpVertexChiToFvcSv = AmpVertexChiToFvcSv -  AmpVertexIRdrChiToFvcSv! +  AmpVertexIRosChiToFvcSv ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZChiToFvcSv=0._dp
AmpVertexZChiToFvcSv=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZChiToFvcSv(1,gt2,:,:) = AmpWaveZChiToFvcSv(1,gt2,:,:)+ZRUZN(gt2,gt1)*AmpWaveChiToFvcSv(1,gt1,:,:)
AmpVertexZChiToFvcSv(1,gt2,:,:)= AmpVertexZChiToFvcSv(1,gt2,:,:) + ZRUZN(gt2,gt1)*AmpVertexChiToFvcSv(1,gt1,:,:)
AmpWaveZChiToFvcSv(2,gt2,:,:) = AmpWaveZChiToFvcSv(2,gt2,:,:)+ZRUZNc(gt2,gt1)*AmpWaveChiToFvcSv(2,gt1,:,:)
AmpVertexZChiToFvcSv(2,gt2,:,:)= AmpVertexZChiToFvcSv(2,gt2,:,:) + ZRUZNc(gt2,gt1)*AmpVertexChiToFvcSv(2,gt1,:,:)
 End Do
End Do
AmpWaveChiToFvcSv=AmpWaveZChiToFvcSv
AmpVertexChiToFvcSv= AmpVertexZChiToFvcSv
! Final State 1
AmpWaveZChiToFvcSv=0._dp
AmpVertexZChiToFvcSv=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZChiToFvcSv(1,:,gt2,:) = AmpWaveZChiToFvcSv(1,:,gt2,:)+ZRUZVL(gt2,gt1)*AmpWaveChiToFvcSv(1,:,gt1,:)
AmpVertexZChiToFvcSv(1,:,gt2,:)= AmpVertexZChiToFvcSv(1,:,gt2,:)+ZRUZVL(gt2,gt1)*AmpVertexChiToFvcSv(1,:,gt1,:)
AmpWaveZChiToFvcSv(2,:,gt2,:) = AmpWaveZChiToFvcSv(2,:,gt2,:)
AmpVertexZChiToFvcSv(2,:,gt2,:)= AmpVertexZChiToFvcSv(2,:,gt2,:) 
 End Do
End Do
AmpWaveChiToFvcSv=AmpWaveZChiToFvcSv
AmpVertexChiToFvcSv= AmpVertexZChiToFvcSv
! Final State 2
AmpWaveZChiToFvcSv=0._dp
AmpVertexZChiToFvcSv=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZChiToFvcSv(:,:,:,gt2) = AmpWaveZChiToFvcSv(:,:,:,gt2)+ZRUZVc(gt2,gt1)*AmpWaveChiToFvcSv(:,:,:,gt1)
AmpVertexZChiToFvcSv(:,:,:,gt2)= AmpVertexZChiToFvcSv(:,:,:,gt2)+ZRUZVc(gt2,gt1)*AmpVertexChiToFvcSv(:,:,:,gt1)
 End Do
End Do
AmpWaveChiToFvcSv=AmpWaveZChiToFvcSv
AmpVertexChiToFvcSv= AmpVertexZChiToFvcSv
End if
If (ShiftIRdiv) Then
AmpVertexChiToFvcSv = AmpVertexChiToFvcSv  +  AmpVertexIRosChiToFvcSv
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Fv conj[Sv] -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumChiToFvcSv = AmpTreeChiToFvcSv
 AmpSum2ChiToFvcSv = AmpTreeChiToFvcSv + 2._dp*AmpWaveChiToFvcSv + 2._dp*AmpVertexChiToFvcSv
Else
 AmpSumChiToFvcSv = AmpTreeChiToFvcSv + AmpWaveChiToFvcSv + AmpVertexChiToFvcSv
 AmpSum2ChiToFvcSv = AmpTreeChiToFvcSv + AmpWaveChiToFvcSv + AmpVertexChiToFvcSv
End If
If (OnlyTreeLevelContributions) Then
 AmpSumChiToFvcSv = AmpTreeChiToFvcSv
 AmpSum2ChiToFvcSv = AmpTreeChiToFvcSv
End if
Do gt1=1,6
i4 = isave
  Do gt2=1,3
    Do gt3=1,3
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MFvOS(gt2))+Abs(MSvOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MFv(gt2))+Abs(MSv(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2ChiToFvcSv = AmpTreeChiToFvcSv
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFvOS(gt2),MSvOS(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFv(gt2),MSv(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqChiToFvcSv(gt1, gt2, gt3)
  AmpSum2ChiToFvcSv = 2._dp*AmpWaveChiToFvcSv
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFvOS(gt2),MSvOS(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFv(gt2),MSv(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqChiToFvcSv(gt1, gt2, gt3)
  AmpSum2ChiToFvcSv = 2._dp*AmpVertexChiToFvcSv
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFvOS(gt2),MSvOS(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFv(gt2),MSv(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqChiToFvcSv(gt1, gt2, gt3)
  AmpSum2ChiToFvcSv = AmpTreeChiToFvcSv + 2._dp*AmpWaveChiToFvcSv + 2._dp*AmpVertexChiToFvcSv
If (OSkinematics) Then
  Call SquareAmp_FtoFS(MChiOS(gt1),MFvOS(gt2),MSvOS(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
Else
  Call SquareAmp_FtoFS(MChi(gt1),MFv(gt2),MSv(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqChiToFvcSv(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2ChiToFvcSv = AmpTreeChiToFvcSv
  Call SquareAmp_FtoFS(MChiOS(gt1),MFvOS(gt2),MSvOS(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
  AmpSqTreeChiToFvcSv(gt1, gt2, gt3) = AmpSqChiToFvcSv(gt1, gt2, gt3)
  AmpSum2ChiToFvcSv = + 2._dp*AmpWaveChiToFvcSv + 2._dp*AmpVertexChiToFvcSv
  Call SquareAmp_FtoFS(MChiOS(gt1),MFvOS(gt2),MSvOS(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
  AmpSqChiToFvcSv(gt1, gt2, gt3) = AmpSqChiToFvcSv(gt1, gt2, gt3) + AmpSqTreeChiToFvcSv(gt1, gt2, gt3)
Else
  AmpSum2ChiToFvcSv = AmpTreeChiToFvcSv
  Call SquareAmp_FtoFS(MChi(gt1),MFv(gt2),MSv(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
  AmpSqTreeChiToFvcSv(gt1, gt2, gt3) = AmpSqChiToFvcSv(gt1, gt2, gt3)
  AmpSum2ChiToFvcSv = + 2._dp*AmpWaveChiToFvcSv + 2._dp*AmpVertexChiToFvcSv
  Call SquareAmp_FtoFS(MChi(gt1),MFv(gt2),MSv(gt3),AmpSumChiToFvcSv(:,gt1, gt2, gt3),AmpSum2ChiToFvcSv(:,gt1, gt2, gt3),AmpSqChiToFvcSv(gt1, gt2, gt3))
  AmpSqChiToFvcSv(gt1, gt2, gt3) = AmpSqChiToFvcSv(gt1, gt2, gt3) + AmpSqTreeChiToFvcSv(gt1, gt2, gt3)
End if
Else
  AmpSqChiToFvcSv(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToFvcSv(gt1, gt2, gt3).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChiOS(gt1),MFvOS(gt2),MSvOS(gt3),helfactor*AmpSqChiToFvcSv(gt1, gt2, gt3))
Else
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChi(gt1),MFv(gt2),MSv(gt3),helfactor*AmpSqChiToFvcSv(gt1, gt2, gt3))
End if
If ((Abs(MRPChiToFvcSv(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToFvcSv(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPChiToFvcSv(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGChiToFvcSv(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPChiToFvcSv(gt1, gt2, gt3) + MRGChiToFvcSv(gt1, gt2, gt3))
  gP1LChi(gt1,i4) = gP1LChi(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPChiToFvcSv(gt1, gt2, gt3) + MRGChiToFvcSv(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LChi(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4
End do
End If
!----------------
! Chi VP
!----------------

If (LoopInducedDecaysOS) Then


!Self-energy Corrections
 If (ExternalZfactors) Then
Call Amplitude_WAVE_NonUMSSM_ChiToChiVP(ZcplChiChiVZL,ZcplChiChiVZR,ZcplChiChiVZpL,   &
& ZcplChiChiVZpR,ctcplChiChiVZL,ctcplChiChiVZR,ctcplChiChiVZpL,ctcplChiChiVZpR,          &
& MChiOS,MChi2OS,MVP,MVP2,MVZOS,MVZ2OS,ZfL0,ZfVP,ZfVZpVP,ZfVZVP,AmpWaveChiToChiVP)

 Else
Call Amplitude_WAVE_NonUMSSM_ChiToChiVP(cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,ctcplChiChiVZL,ctcplChiChiVZR,ctcplChiChiVZpL,ctcplChiChiVZpR,           &
& MChiOS,MChi2OS,MVP,MVP2,MVZOS,MVZ2OS,ZfL0,ZfVP,ZfVZpVP,ZfVZVP,AmpWaveChiToChiVP)

 End if


!Vertex Corrections
 If (ExternalZfactors) Then
Call Amplitude_VERTEX_NonUMSSM_ChiToChiVP(MChaOS,MChiOS,MFdOS,MFeOS,MFuOS,            &
& MHpmOS,MSdOS,MSeOS,MSuOS,MVP,MVWmOS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,              &
& MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MVP2,MVWm2OS,ZcplChiChacHpmL,ZcplChiChacHpmR,             &
& ZcplChiChacVWmL,ZcplChiChacVWmR,ZcplcChaChaVPL,ZcplcChaChaVPR,ZcplChiFdcSdL,           &
& ZcplChiFdcSdR,ZcplChiFecSeL,ZcplChiFecSeR,ZcplChiFucSuL,ZcplChiFucSuR,ZcplcChaChiHpmL, &
& ZcplcChaChiHpmR,ZcplcFdChiSdL,ZcplcFdChiSdR,ZcplcFeChiSeL,ZcplcFeChiSeR,               &
& ZcplcFuChiSuL,ZcplcFuChiSuR,ZcplcChaChiVWmL,ZcplcChaChiVWmR,ZcplcFdFdVPL,              &
& ZcplcFdFdVPR,ZcplcFeFeVPL,ZcplcFeFeVPR,ZcplcFuFuVPL,ZcplcFuFuVPR,ZcplHpmcHpmVP,        &
& ZcplHpmcVWmVP,ZcplSdcSdVP,ZcplSecSeVP,ZcplSucSuVP,ZcplcHpmVPVWm,ZcplcVWmVPVWm,         &
& AmpVertexChiToChiVP)

 Else
Call Amplitude_VERTEX_NonUMSSM_ChiToChiVP(MChaOS,MChiOS,MFdOS,MFeOS,MFuOS,            &
& MHpmOS,MSdOS,MSeOS,MSuOS,MVP,MVWmOS,MCha2OS,MChi2OS,MFd2OS,MFe2OS,MFu2OS,              &
& MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MVP2,MVWm2OS,cplChiChacHpmL,cplChiChacHpmR,               &
& cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVPL,cplcChaChaVPR,cplChiFdcSdL,cplChiFdcSdR,   &
& cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,     &
& cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,         &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVPL,cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,         &
& cplcFuFuVPL,cplcFuFuVPR,cplHpmcHpmVP,cplHpmcVWmVP,cplSdcSdVP,cplSecSeVP,               &
& cplSucSuVP,cplcHpmVPVWm,cplcVWmVPVWm,AmpVertexChiToChiVP)

 End if
Else


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_ChiToChiVP(cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,      &
& cplChiChiVZpR,ctcplChiChiVZL,ctcplChiChiVZR,ctcplChiChiVZpL,ctcplChiChiVZpR,           &
& MChi,MChi2,MVP,MVP2,MVZ,MVZ2,ZfL0,ZfVP,ZfVZpVP,ZfVZVP,AmpWaveChiToChiVP)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToChiVP(MCha,MChi,MFd,MFe,MFu,MHpm,MSd,             &
& MSe,MSu,MVP,MVWm,MCha2,MChi2,MFd2,MFe2,MFu2,MHpm2,MSd2,MSe2,MSu2,MVP2,MVWm2,           &
& cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplcChaChaVPL,             &
& cplcChaChaVPR,cplChiFdcSdL,cplChiFdcSdR,cplChiFecSeL,cplChiFecSeR,cplChiFucSuL,        &
& cplChiFucSuR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFdChiSdL,cplcFdChiSdR,cplcFeChiSeL,     &
& cplcFeChiSeR,cplcFuChiSuL,cplcFuChiSuR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFdFdVPL,      &
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplHpmcHpmVP,              &
& cplHpmcVWmVP,cplSdcSdVP,cplSecSeVP,cplSucSuVP,cplcHpmVPVWm,cplcVWmVPVWm,               &
& AmpVertexChiToChiVP)

End if


 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Chi VP -----------------------"
End if
If (OnlyTreeLevelContributions) Then
 AmpSumChiToChiVP = 0._dp
 AmpSum2ChiToChiVP = 0._dp
Else
 AmpSumChiToChiVP = AmpVertexChiToChiVP + AmpWaveChiToChiVP
 AmpSum2ChiToChiVP = AmpVertexChiToChiVP + AmpWaveChiToChiVP
End If
Do gt1=1,6
i4 = isave
  Do gt2=1,6
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MChiOS(gt2))+Abs(0.)))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MChi(gt2))+Abs(MVP))))) Then
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MChiOS(gt2),0._dp,AmpSumChiToChiVP(:,gt1, gt2),AmpSum2ChiToChiVP(:,gt1, gt2),AmpSqChiToChiVP(gt1, gt2))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MChi(gt2),MVP,AmpSumChiToChiVP(:,gt1, gt2),AmpSum2ChiToChiVP(:,gt1, gt2),AmpSqChiToChiVP(gt1, gt2))
End if
Else
  AmpSqChiToChiVP(gt1, gt2) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToChiVP(gt1, gt2).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChiOS(gt1),MChiOS(gt2),0._dp,helfactor*AmpSqChiToChiVP(gt1, gt2))
Else
  gP1LChi(gt1,i4) = 2._dp*GammaTPS(MChi(gt1),MChi(gt2),MVP,helfactor*AmpSqChiToChiVP(gt1, gt2))
End if
If ((Abs(MRPChiToChiVP(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGChiToChiVP(gt1, gt2)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
End if
i4=i4+1

  End do
If (gt1.eq.6) isave = i4
End do
!----------------
! Glu VG
!----------------

If (LoopInducedDecaysOS) Then


!Self-energy Corrections


!Vertex Corrections
 If (ExternalZfactors) Then
Call Amplitude_VERTEX_NonUMSSM_ChiToGluVG(MChiOS,MFdOS,MFuOS,MGluOS,MSdOS,            &
& MSuOS,MVG,MChi2OS,MFd2OS,MFu2OS,MGlu2OS,MSd2OS,MSu2OS,MVG2,ZcplChiFdcSdL,              &
& ZcplChiFdcSdR,ZcplChiFucSuL,ZcplChiFucSuR,ZcplcFdChiSdL,ZcplcFdChiSdR,ZcplcFuChiSuL,   &
& ZcplcFuChiSuR,ZcplGluFdcSdL,ZcplGluFdcSdR,ZcplcFdFdVGL,ZcplcFdFdVGR,ZcplGluFucSuL,     &
& ZcplGluFucSuR,ZcplcFuFuVGL,ZcplcFuFuVGR,ZcplcFdGluSdL,ZcplcFdGluSdR,ZcplcFuGluSuL,     &
& ZcplcFuGluSuR,ZcplSdcSdVG,ZcplSucSuVG,AmpVertexChiToGluVG)

 Else
Call Amplitude_VERTEX_NonUMSSM_ChiToGluVG(MChiOS,MFdOS,MFuOS,MGluOS,MSdOS,            &
& MSuOS,MVG,MChi2OS,MFd2OS,MFu2OS,MGlu2OS,MSd2OS,MSu2OS,MVG2,cplChiFdcSdL,               &
& cplChiFdcSdR,cplChiFucSuL,cplChiFucSuR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,         &
& cplcFuChiSuR,cplGluFdcSdL,cplGluFdcSdR,cplcFdFdVGL,cplcFdFdVGR,cplGluFucSuL,           &
& cplGluFucSuR,cplcFuFuVGL,cplcFuFuVGR,cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,           &
& cplcFuGluSuR,cplSdcSdVG,cplSucSuVG,AmpVertexChiToGluVG)

 End if
Else


!Self-energy Corrections


!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_ChiToGluVG(MChi,MFd,MFu,MGlu,MSd,MSu,MVG,              &
& MChi2,MFd2,MFu2,MGlu2,MSd2,MSu2,MVG2,cplChiFdcSdL,cplChiFdcSdR,cplChiFucSuL,           &
& cplChiFucSuR,cplcFdChiSdL,cplcFdChiSdR,cplcFuChiSuL,cplcFuChiSuR,cplGluFdcSdL,         &
& cplGluFdcSdR,cplcFdFdVGL,cplcFdFdVGR,cplGluFucSuL,cplGluFucSuR,cplcFuFuVGL,            &
& cplcFuFuVGR,cplcFdGluSdL,cplcFdGluSdR,cplcFuGluSuL,cplcFuGluSuR,cplSdcSdVG,            &
& cplSucSuVG,AmpVertexChiToGluVG)

End if


 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Chi->Glu VG -----------------------"
End if
If (OnlyTreeLevelContributions) Then
 AmpSumChiToGluVG = 0._dp
 AmpSum2ChiToGluVG = 0._dp
Else
 AmpSumChiToGluVG = AmpVertexChiToGluVG + AmpWaveChiToGluVG
 AmpSum2ChiToGluVG = AmpVertexChiToGluVG + AmpWaveChiToGluVG
End If
Do gt1=1,6
i4 = isave
If (((OSkinematics).and.(Abs(MChiOS(gt1)).gt.(Abs(MGluOS)+Abs(0.)))).or.((.not.OSkinematics).and.(Abs(MChi(gt1)).gt.(Abs(MGlu)+Abs(MVG))))) Then
If (OSkinematics) Then
  Call SquareAmp_FtoFV(MChiOS(gt1),MGluOS,0._dp,AmpSumChiToGluVG(:,gt1),AmpSum2ChiToGluVG(:,gt1),AmpSqChiToGluVG(gt1))
Else
  Call SquareAmp_FtoFV(MChi(gt1),MGlu,MVG,AmpSumChiToGluVG(:,gt1),AmpSum2ChiToGluVG(:,gt1),AmpSqChiToGluVG(gt1))
End if
Else
  AmpSqChiToGluVG(gt1) = 0._dp
End if

! Calculate Partial widths
helfactor = 2._dp
If (AmpSqChiToGluVG(gt1).eq.0._dp) Then
  gP1LChi(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LChi(gt1,i4) = 16._dp*GammaTPS(MChiOS(gt1),MGluOS,0._dp,helfactor*AmpSqChiToGluVG(gt1))
Else
  gP1LChi(gt1,i4) = 16._dp*GammaTPS(MChi(gt1),MGlu,MVG,helfactor*AmpSqChiToGluVG(gt1))
End if
If ((Abs(MRPChiToGluVG(gt1)).gt.1.0E-20_dp).or.(Abs(MRGChiToGluVG(gt1)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LChi(gt1,i4)
End if
i4=i4+1

If (gt1.eq.6) isave = i4
End do
End Subroutine OneLoopDecay_Chi

End Module Wrapper_OneLoopDecay_Chi_NonUMSSM
