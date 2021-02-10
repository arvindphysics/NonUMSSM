! -----------------------------------------------------------------------------
! This file was automatically created by SARAH version 4.14.3
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223
! (c) Florian Staub, 2013
! ------------------------------------------------------------------------------
! File created at 0:34 on 10.2.2021
! ----------------------------------------------------------------------


Module Wrapper_OneLoopDecay_Sv_NonUMSSM
Use Model_Data_NonUMSSM
Use Kinematics
Use OneLoopDecay_Sv_NonUMSSM
Use Control
Use Settings


Contains


Subroutine OneLoopDecay_Sv(MSdOS,MSd2OS,MSvOS,MSv2OS,MFvOS,MFv2OS,MSuOS,              &
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
& ZfFUR,ZfVPVZ,ZfVZVP,ZfVPVZp,ZfVZpVP,ZfVZVZp,ZfVZpVZ,cplAhAhhh,cplAhAhSvcSv1,           &
& cplAhcHpmVWm,cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhHpmSvcSe1,            &
& cplAhSdcSd,cplAhSecHpmcSv1,cplAhSecSe,cplAhSucSu,cplcChacFvSeL,cplcChacFvSeR,          &
& cplcChaChaAhL,cplcChaChaAhR,cplcChaChahhL,cplcChaChahhR,cplcChaChaVPL,cplcChaChaVPR,   &
& cplcChaChaVZL,cplcChaChaVZpL,cplcChaChaVZpR,cplcChaChaVZR,cplcChaChiHpmL,              &
& cplcChaChiHpmR,cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,              &
& cplcFeChaSvL,cplcFeChaSvR,cplcFeChiSeL,cplcFeChiSeR,cplcFeFeAhL,cplcFeFeAhR,           &
& cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZpL,              &
& cplcFeFeVZpR,cplcFeFeVZR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,cplcFeFvVWmR,          &
& cplcFvChiSvL,cplcFvChiSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplcFvFecVWmL,cplcFvFecVWmR,     &
& cplcFvFvVZL,cplcFvFvVZpL,cplcFvFvVZpR,cplcFvFvVZR,cplChaFvcSeL,cplChaFvcSeR,           &
& cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChiChiAhL,              &
& cplChiChiAhR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZpL,cplChiChiVZpR,       &
& cplChiChiVZR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcHpmVPVWm,         &
& cplcHpmVWmVZ,cplcHpmVWmVZp,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,cplhhcHpmVWm,       &
& cplhhcVWmVWm,cplhhhhhh,cplhhhhSvcSv1,cplhhHpmcHpm,cplhhHpmcVWm,cplhhHpmSvcSe1,         &
& cplhhSdcSd,cplhhSecHpmcSv1,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhVZpVZp,               &
& cplhhVZVZ,cplhhVZVZp,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,cplHpmcVWmVP,             &
& cplHpmcVWmVZ,cplHpmcVWmVZp,cplHpmSecHpmcSe1,cplHpmSvcHpmcSv1,cplHpmSvcSe,              &
& cplSdcHpmcSu,cplSdSvcSdcSvaa,cplSecHpmcSv,cplSecSecVWmVWm1,cplSecSeVP,cplSecSeVZ,      &
& cplSecSeVZp,cplSecSvcVWm,cplSecSvcVWmVP1,cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,             &
& cplSeSucSdcSvaa,cplSeSvcSecSv1,cplSuSvcSucSvaa,cplSvcSeVPVWm1,cplSvcSeVWm,             &
& cplSvcSeVWmVZ1,cplSvcSeVWmVZp1,cplSvcSvcVWmVWm1,cplSvcSvVZ,cplSvcSvVZp,cplSvcSvVZpVZp1,&
& cplSvcSvVZVZ1,cplSvcSvVZVZp1,cplSvSvcSvcSv1,ctcplcChaFecSvL,ctcplcChaFecSvR,           &
& ctcplChiFvcSvL,ctcplChiFvcSvR,ctcplhhSvcSv,ctcplSecHpmcSv,ctcplSecSvcVWm,              &
& ctcplSvcSvVZ,ctcplSvcSvVZp,GcplcHpmVPVWm,GcplHpmcVWmVP,GcplSecHpmcSv,GosZcplcHpmVPVWm, &
& GosZcplHpmcVWmVP,GosZcplSecHpmcSv,GZcplcHpmVPVWm,GZcplHpmcVWmVP,GZcplSecHpmcSv,        &
& ZcplcChaFecSvL,ZcplcChaFecSvR,ZcplChiFvcSvL,ZcplChiFvcSvR,ZcplhhSvcSv,ZcplSecHpmcSv,   &
& ZcplSecSvcVWm,ZcplSvcSvVZ,ZcplSvcSvVZp,ZRUZD,ZRUZV,ZRUZVL,ZRUZU,ZRUZE,ZRUZH,           &
& ZRUZA,ZRUZP,ZRUZN,ZRUUM,ZRUUP,ZRUZEL,ZRUZER,ZRUZDL,ZRUZDR,ZRUZUL,ZRUZUR,               &
& MLambda,em,gs,deltaM,kont,gP1LSv)

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

Complex(dp),Intent(in) :: cplAhAhhh(3,3,3),cplAhAhSvcSv1(3,3,3,3),cplAhcHpmVWm(3,2),cplAhhhVZ(3,3),             &
& cplAhhhVZp(3,3),cplAhHpmcHpm(3,2,2),cplAhHpmcVWm(3,2),cplAhHpmSvcSe1(3,2,3,6),         &
& cplAhSdcSd(3,6,6),cplAhSecHpmcSv1(3,6,2,3),cplAhSecSe(3,6,6),cplAhSucSu(3,6,6),        &
& cplcChacFvSeL(2,3,6),cplcChacFvSeR(2,3,6),cplcChaChaAhL(2,2,3),cplcChaChaAhR(2,2,3),   &
& cplcChaChahhL(2,2,3),cplcChaChahhR(2,2,3),cplcChaChaVPL(2,2),cplcChaChaVPR(2,2),       &
& cplcChaChaVZL(2,2),cplcChaChaVZpL(2,2),cplcChaChaVZpR(2,2),cplcChaChaVZR(2,2),         &
& cplcChaChiHpmL(2,6,2),cplcChaChiHpmR(2,6,2),cplcChaChiVWmL(2,6),cplcChaChiVWmR(2,6),   &
& cplcChaFecSvL(2,3,3),cplcChaFecSvR(2,3,3),cplcFeChaSvL(3,2,3),cplcFeChaSvR(3,2,3),     &
& cplcFeChiSeL(3,6,6),cplcFeChiSeR(3,6,6),cplcFeFeAhL(3,3,3),cplcFeFeAhR(3,3,3),         &
& cplcFeFehhL(3,3,3),cplcFeFehhR(3,3,3),cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),               &
& cplcFeFeVZL(3,3),cplcFeFeVZpL(3,3),cplcFeFeVZpR(3,3),cplcFeFeVZR(3,3),cplcFeFvHpmL(3,3,2),&
& cplcFeFvHpmR(3,3,2),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),cplcFvChiSvL(3,6,3),           &
& cplcFvChiSvR(3,6,3),cplcFvFecHpmL(3,3,2),cplcFvFecHpmR(3,3,2),cplcFvFecVWmL(3,3),      &
& cplcFvFecVWmR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZpL(3,3),cplcFvFvVZpR(3,3),               &
& cplcFvFvVZR(3,3),cplChaFvcSeL(2,3,6),cplChaFvcSeR(2,3,6),cplChiChacHpmL(6,2,2),        &
& cplChiChacHpmR(6,2,2),cplChiChacVWmL(6,2),cplChiChacVWmR(6,2),cplChiChiAhL(6,6,3),     &
& cplChiChiAhR(6,6,3),cplChiChihhL(6,6,3),cplChiChihhR(6,6,3),cplChiChiVZL(6,6),         &
& cplChiChiVZpL(6,6),cplChiChiVZpR(6,6),cplChiChiVZR(6,6),cplChiFecSeL(6,3,6),           &
& cplChiFecSeR(6,3,6),cplChiFvcSvL(6,3,3),cplChiFvcSvR(6,3,3),cplcHpmVPVWm(2),           &
& cplcHpmVWmVZ(2),cplcHpmVWmVZp(2),cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,              &
& cplhhcHpmVWm(3,2),cplhhcVWmVWm(3),cplhhhhhh(3,3,3),cplhhhhSvcSv1(3,3,3,3),             &
& cplhhHpmcHpm(3,2,2),cplhhHpmcVWm(3,2),cplhhHpmSvcSe1(3,2,3,6),cplhhSdcSd(3,6,6),       &
& cplhhSecHpmcSv1(3,6,2,3),cplhhSecSe(3,6,6),cplhhSucSu(3,6,6),cplhhSvcSv(3,3,3),        &
& cplhhVZpVZp(3),cplhhVZVZ(3),cplhhVZVZp(3),cplHpmcHpmVP(2,2),cplHpmcHpmVZ(2,2),         &
& cplHpmcHpmVZp(2,2),cplHpmcVWmVP(2),cplHpmcVWmVZ(2),cplHpmcVWmVZp(2),cplHpmSecHpmcSe1(2,6,2,6),&
& cplHpmSvcHpmcSv1(2,3,2,3),cplHpmSvcSe(2,3,6),cplSdcHpmcSu(6,2,6),cplSdSvcSdcSvaa(6,3,6,3),&
& cplSecHpmcSv(6,2,3),cplSecSecVWmVWm1(6,6),cplSecSeVP(6,6),cplSecSeVZ(6,6),             &
& cplSecSeVZp(6,6),cplSecSvcVWm(6,3),cplSecSvcVWmVP1(6,3),cplSecSvcVWmVZ1(6,3),          &
& cplSecSvcVWmVZp1(6,3),cplSeSucSdcSvaa(6,6,6,3),cplSeSvcSecSv1(6,3,6,3),cplSuSvcSucSvaa(6,3,6,3),&
& cplSvcSeVPVWm1(3,6),cplSvcSeVWm(3,6),cplSvcSeVWmVZ1(3,6),cplSvcSeVWmVZp1(3,6),         &
& cplSvcSvcVWmVWm1(3,3),cplSvcSvVZ(3,3),cplSvcSvVZp(3,3),cplSvcSvVZpVZp1(3,3),           &
& cplSvcSvVZVZ1(3,3),cplSvcSvVZVZp1(3,3),cplSvSvcSvcSv1(3,3,3,3),ctcplcChaFecSvL(2,3,3), &
& ctcplcChaFecSvR(2,3,3),ctcplChiFvcSvL(6,3,3),ctcplChiFvcSvR(6,3,3),ctcplhhSvcSv(3,3,3),&
& ctcplSecHpmcSv(6,2,3),ctcplSecSvcVWm(6,3),ctcplSvcSvVZ(3,3),ctcplSvcSvVZp(3,3),        &
& GcplcHpmVPVWm(2),GcplHpmcVWmVP(2),GcplSecHpmcSv(6,2,3),GosZcplcHpmVPVWm(2),            &
& GosZcplHpmcVWmVP(2),GosZcplSecHpmcSv(6,2,3),GZcplcHpmVPVWm(2),GZcplHpmcVWmVP(2),       &
& GZcplSecHpmcSv(6,2,3),ZcplcChaFecSvL(2,3,3),ZcplcChaFecSvR(2,3,3),ZcplChiFvcSvL(6,3,3)

Complex(dp),Intent(in) :: ZcplChiFvcSvR(6,3,3),ZcplhhSvcSv(3,3,3),ZcplSecHpmcSv(6,2,3),ZcplSecSvcVWm(6,3),       &
& ZcplSvcSvVZ(3,3),ZcplSvcSvVZp(3,3)

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
Real(dp), Intent(out) :: gP1LSv(3,57)
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
Real(dp) :: MRPSvToFvChi(3,3,6),MRGSvToFvChi(3,3,6), MRPZSvToFvChi(3,3,6),MRGZSvToFvChi(3,3,6)
Real(dp) :: MVPSvToFvChi(3,3,6)
Real(dp) :: RMsqTreeSvToFvChi(3,3,6),RMsqWaveSvToFvChi(3,3,6),RMsqVertexSvToFvChi(3,3,6)
Complex(dp) :: AmpTreeSvToFvChi(2,3,3,6),AmpWaveSvToFvChi(2,3,3,6)=(0._dp,0._dp),AmpVertexSvToFvChi(2,3,3,6)&
 & ,AmpVertexIRosSvToFvChi(2,3,3,6),AmpVertexIRdrSvToFvChi(2,3,3,6), AmpSumSvToFvChi(2,3,3,6), AmpSum2SvToFvChi(2,3,3,6)
Complex(dp) :: AmpTreeZSvToFvChi(2,3,3,6),AmpWaveZSvToFvChi(2,3,3,6),AmpVertexZSvToFvChi(2,3,3,6)
Real(dp) :: AmpSqSvToFvChi(3,3,6),  AmpSqTreeSvToFvChi(3,3,6)
Real(dp) :: MRPSvTocChaFe(3,2,3),MRGSvTocChaFe(3,2,3), MRPZSvTocChaFe(3,2,3),MRGZSvTocChaFe(3,2,3)
Real(dp) :: MVPSvTocChaFe(3,2,3)
Real(dp) :: RMsqTreeSvTocChaFe(3,2,3),RMsqWaveSvTocChaFe(3,2,3),RMsqVertexSvTocChaFe(3,2,3)
Complex(dp) :: AmpTreeSvTocChaFe(2,3,2,3),AmpWaveSvTocChaFe(2,3,2,3)=(0._dp,0._dp),AmpVertexSvTocChaFe(2,3,2,3)&
 & ,AmpVertexIRosSvTocChaFe(2,3,2,3),AmpVertexIRdrSvTocChaFe(2,3,2,3), AmpSumSvTocChaFe(2,3,2,3), AmpSum2SvTocChaFe(2,3,2,3)
Complex(dp) :: AmpTreeZSvTocChaFe(2,3,2,3),AmpWaveZSvTocChaFe(2,3,2,3),AmpVertexZSvTocChaFe(2,3,2,3)
Real(dp) :: AmpSqSvTocChaFe(3,2,3),  AmpSqTreeSvTocChaFe(3,2,3)
Real(dp) :: MRPSvToSvhh(3,3,3),MRGSvToSvhh(3,3,3), MRPZSvToSvhh(3,3,3),MRGZSvToSvhh(3,3,3)
Real(dp) :: MVPSvToSvhh(3,3,3)
Real(dp) :: RMsqTreeSvToSvhh(3,3,3),RMsqWaveSvToSvhh(3,3,3),RMsqVertexSvToSvhh(3,3,3)
Complex(dp) :: AmpTreeSvToSvhh(3,3,3),AmpWaveSvToSvhh(3,3,3)=(0._dp,0._dp),AmpVertexSvToSvhh(3,3,3)&
 & ,AmpVertexIRosSvToSvhh(3,3,3),AmpVertexIRdrSvToSvhh(3,3,3), AmpSumSvToSvhh(3,3,3), AmpSum2SvToSvhh(3,3,3)
Complex(dp) :: AmpTreeZSvToSvhh(3,3,3),AmpWaveZSvToSvhh(3,3,3),AmpVertexZSvToSvhh(3,3,3)
Real(dp) :: AmpSqSvToSvhh(3,3,3),  AmpSqTreeSvToSvhh(3,3,3)
Real(dp) :: MRPSvTocHpmSe(3,2,6),MRGSvTocHpmSe(3,2,6), MRPZSvTocHpmSe(3,2,6),MRGZSvTocHpmSe(3,2,6)
Real(dp) :: MVPSvTocHpmSe(3,2,6)
Real(dp) :: RMsqTreeSvTocHpmSe(3,2,6),RMsqWaveSvTocHpmSe(3,2,6),RMsqVertexSvTocHpmSe(3,2,6)
Complex(dp) :: AmpTreeSvTocHpmSe(3,2,6),AmpWaveSvTocHpmSe(3,2,6)=(0._dp,0._dp),AmpVertexSvTocHpmSe(3,2,6)&
 & ,AmpVertexIRosSvTocHpmSe(3,2,6),AmpVertexIRdrSvTocHpmSe(3,2,6), AmpSumSvTocHpmSe(3,2,6), AmpSum2SvTocHpmSe(3,2,6)
Complex(dp) :: AmpTreeZSvTocHpmSe(3,2,6),AmpWaveZSvTocHpmSe(3,2,6),AmpVertexZSvTocHpmSe(3,2,6)
Real(dp) :: AmpSqSvTocHpmSe(3,2,6),  AmpSqTreeSvTocHpmSe(3,2,6)
Real(dp) :: MRPSvToSecVWm(3,6),MRGSvToSecVWm(3,6), MRPZSvToSecVWm(3,6),MRGZSvToSecVWm(3,6)
Real(dp) :: MVPSvToSecVWm(3,6)
Real(dp) :: RMsqTreeSvToSecVWm(3,6),RMsqWaveSvToSecVWm(3,6),RMsqVertexSvToSecVWm(3,6)
Complex(dp) :: AmpTreeSvToSecVWm(2,3,6),AmpWaveSvToSecVWm(2,3,6)=(0._dp,0._dp),AmpVertexSvToSecVWm(2,3,6)&
 & ,AmpVertexIRosSvToSecVWm(2,3,6),AmpVertexIRdrSvToSecVWm(2,3,6), AmpSumSvToSecVWm(2,3,6), AmpSum2SvToSecVWm(2,3,6)
Complex(dp) :: AmpTreeZSvToSecVWm(2,3,6),AmpWaveZSvToSecVWm(2,3,6),AmpVertexZSvToSecVWm(2,3,6)
Real(dp) :: AmpSqSvToSecVWm(3,6),  AmpSqTreeSvToSecVWm(3,6)
Real(dp) :: MRPSvToSvVZ(3,3),MRGSvToSvVZ(3,3), MRPZSvToSvVZ(3,3),MRGZSvToSvVZ(3,3)
Real(dp) :: MVPSvToSvVZ(3,3)
Real(dp) :: RMsqTreeSvToSvVZ(3,3),RMsqWaveSvToSvVZ(3,3),RMsqVertexSvToSvVZ(3,3)
Complex(dp) :: AmpTreeSvToSvVZ(2,3,3),AmpWaveSvToSvVZ(2,3,3)=(0._dp,0._dp),AmpVertexSvToSvVZ(2,3,3)&
 & ,AmpVertexIRosSvToSvVZ(2,3,3),AmpVertexIRdrSvToSvVZ(2,3,3), AmpSumSvToSvVZ(2,3,3), AmpSum2SvToSvVZ(2,3,3)
Complex(dp) :: AmpTreeZSvToSvVZ(2,3,3),AmpWaveZSvToSvVZ(2,3,3),AmpVertexZSvToSvVZ(2,3,3)
Real(dp) :: AmpSqSvToSvVZ(3,3),  AmpSqTreeSvToSvVZ(3,3)
Real(dp) :: MRPSvToSvVZp(3,3),MRGSvToSvVZp(3,3), MRPZSvToSvVZp(3,3),MRGZSvToSvVZp(3,3)
Real(dp) :: MVPSvToSvVZp(3,3)
Real(dp) :: RMsqTreeSvToSvVZp(3,3),RMsqWaveSvToSvVZp(3,3),RMsqVertexSvToSvVZp(3,3)
Complex(dp) :: AmpTreeSvToSvVZp(2,3,3),AmpWaveSvToSvVZp(2,3,3)=(0._dp,0._dp),AmpVertexSvToSvVZp(2,3,3)&
 & ,AmpVertexIRosSvToSvVZp(2,3,3),AmpVertexIRdrSvToSvVZp(2,3,3), AmpSumSvToSvVZp(2,3,3), AmpSum2SvToSvVZp(2,3,3)
Complex(dp) :: AmpTreeZSvToSvVZp(2,3,3),AmpWaveZSvToSvVZp(2,3,3),AmpVertexZSvToSvVZp(2,3,3)
Real(dp) :: AmpSqSvToSvVZp(3,3),  AmpSqTreeSvToSvVZp(3,3)
Real(dp) :: MRPSvToAhSv(3,3,3),MRGSvToAhSv(3,3,3), MRPZSvToAhSv(3,3,3),MRGZSvToAhSv(3,3,3)
Real(dp) :: MVPSvToAhSv(3,3,3)
Real(dp) :: RMsqTreeSvToAhSv(3,3,3),RMsqWaveSvToAhSv(3,3,3),RMsqVertexSvToAhSv(3,3,3)
Complex(dp) :: AmpTreeSvToAhSv(3,3,3),AmpWaveSvToAhSv(3,3,3)=(0._dp,0._dp),AmpVertexSvToAhSv(3,3,3)&
 & ,AmpVertexIRosSvToAhSv(3,3,3),AmpVertexIRdrSvToAhSv(3,3,3), AmpSumSvToAhSv(3,3,3), AmpSum2SvToAhSv(3,3,3)
Complex(dp) :: AmpTreeZSvToAhSv(3,3,3),AmpWaveZSvToAhSv(3,3,3),AmpVertexZSvToAhSv(3,3,3)
Real(dp) :: AmpSqSvToAhSv(3,3,3),  AmpSqTreeSvToAhSv(3,3,3)
Real(dp) :: MRPSvToSvVP(3,3),MRGSvToSvVP(3,3), MRPZSvToSvVP(3,3),MRGZSvToSvVP(3,3)
Real(dp) :: MVPSvToSvVP(3,3)
Real(dp) :: RMsqTreeSvToSvVP(3,3),RMsqWaveSvToSvVP(3,3),RMsqVertexSvToSvVP(3,3)
Complex(dp) :: AmpTreeSvToSvVP(2,3,3),AmpWaveSvToSvVP(2,3,3)=(0._dp,0._dp),AmpVertexSvToSvVP(2,3,3)&
 & ,AmpVertexIRosSvToSvVP(2,3,3),AmpVertexIRdrSvToSvVP(2,3,3), AmpSumSvToSvVP(2,3,3), AmpSum2SvToSvVP(2,3,3)
Complex(dp) :: AmpTreeZSvToSvVP(2,3,3),AmpWaveZSvToSvVP(2,3,3),AmpVertexZSvToSvVP(2,3,3)
Real(dp) :: AmpSqSvToSvVP(3,3),  AmpSqTreeSvToSvVP(3,3)
Write(*,*) "Calculating one-loop decays of Sv "
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
! Fv Chi
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_SvToFvChi(cplChiFvcSvL,cplChiFvcSvR,MChi,MFv,            &
& MSv,MChi2,MFv2,MSv2,AmpTreeSvToFvChi)

  Else
Call Amplitude_Tree_NonUMSSM_SvToFvChi(ZcplChiFvcSvL,ZcplChiFvcSvR,MChi,              &
& MFv,MSv,MChi2,MFv2,MSv2,AmpTreeSvToFvChi)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_SvToFvChi(MLambda,em,gs,cplChiFvcSvL,cplChiFvcSvR,           &
& MChiOS,MFvOS,MSvOS,MRPSvToFvChi,MRGSvToFvChi)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_SvToFvChi(MLambda,em,gs,ZcplChiFvcSvL,ZcplChiFvcSvR,         &
& MChiOS,MFvOS,MSvOS,MRPSvToFvChi,MRGSvToFvChi)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_SvToFvChi(MLambda,em,gs,cplChiFvcSvL,cplChiFvcSvR,           &
& MChi,MFv,MSv,MRPSvToFvChi,MRGSvToFvChi)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_SvToFvChi(MLambda,em,gs,ZcplChiFvcSvL,ZcplChiFvcSvR,         &
& MChi,MFv,MSv,MRPSvToFvChi,MRGSvToFvChi)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_SvToFvChi(cplChiFvcSvL,cplChiFvcSvR,ctcplChiFvcSvL,      &
& ctcplChiFvcSvR,MChi,MChi2,MFv,MFv2,MSv,MSv2,ZfFvL,ZfL0,ZfSv,AmpWaveSvToFvChi)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_SvToFvChi(MCha,MChi,MFe,MFv,Mhh,MHpm,MSe,              &
& MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,               &
& MVZp2,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,        &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,     &
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,             &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexSvToFvChi)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_SvToFvChi(MCha,MChi,MFe,MFv,Mhh,MHpm,               &
& MSe,MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,           &
& MVZp2,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,        &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,     &
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,             &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRdrSvToFvChi)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToFvChi(MChaOS,MChiOS,MFeOS,MFvOS,MhhOS,          &
& MHpmOS,MSeOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MCha2OS,MChi2OS,MFe2OS,MFv2OS,Mhh2OS,           &
& MHpm2OS,MSe2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChacHpmL,cplChiChacHpmR,            &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,cplChaFvcSeR,cplChiChihhL,cplChiChihhR,     &
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,       &
& ZcplChiFvcSvL,ZcplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,   &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,   &
& cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,           &
& cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,             &
& cplSvcSvVZp,AmpVertexIRosSvToFvChi)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToFvChi(MCha,MChi,MFe,MFv,Mhh,MHpm,               &
& MSe,MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,           &
& MVZp2,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,        &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,ZcplChiFvcSvL,ZcplChiFvcSvR,cplcChaChiHpmL,    &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,     &
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,             &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRosSvToFvChi)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToFvChi(MChaOS,MChiOS,MFeOS,MFvOS,MhhOS,          &
& MHpmOS,MSeOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MCha2OS,MChi2OS,MFe2OS,MFv2OS,Mhh2OS,           &
& MHpm2OS,MSe2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplChiChacHpmL,cplChiChacHpmR,            &
& cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,cplChaFvcSeR,cplChiChihhL,cplChiChihhR,     &
& cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,       &
& cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,   &
& cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,           &
& cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,             &
& cplSvcSvVZp,AmpVertexIRosSvToFvChi)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToFvChi(MCha,MChi,MFe,MFv,Mhh,MHpm,               &
& MSe,MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,           &
& MVZp2,cplChiChacHpmL,cplChiChacHpmR,cplChiChacVWmL,cplChiChacVWmR,cplChaFvcSeL,        &
& cplChaFvcSeR,cplChiChihhL,cplChiChihhR,cplChiChiVZL,cplChiChiVZR,cplChiChiVZpL,        &
& cplChiChiVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,      &
& cplcChaChiHpmR,cplcFeChiSeL,cplcFeChiSeR,cplcFvChiSvL,cplcFvChiSvR,cplcChaChiVWmL,     &
& cplcChaChiVWmR,cplcChaFecSvL,cplcChaFecSvR,cplcFeFvHpmL,cplcFeFvHpmR,cplcFeFvVWmL,     &
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,             &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRosSvToFvChi)

 End if
 End if
AmpVertexSvToFvChi = AmpVertexSvToFvChi -  AmpVertexIRdrSvToFvChi! +  AmpVertexIRosSvToFvChi ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZSvToFvChi=0._dp
AmpVertexZSvToFvChi=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToFvChi(:,gt2,:,:) = AmpWaveZSvToFvChi(:,gt2,:,:)+ZRUZVc(gt2,gt1)*AmpWaveSvToFvChi(:,gt1,:,:)
AmpVertexZSvToFvChi(:,gt2,:,:)= AmpVertexZSvToFvChi(:,gt2,:,:) + ZRUZVc(gt2,gt1)*AmpVertexSvToFvChi(:,gt1,:,:)
 End Do
End Do
AmpWaveSvToFvChi=AmpWaveZSvToFvChi
AmpVertexSvToFvChi= AmpVertexZSvToFvChi
! Final State 1
AmpWaveZSvToFvChi=0._dp
AmpVertexZSvToFvChi=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToFvChi(1,:,gt2,:) = AmpWaveZSvToFvChi(1,:,gt2,:)+ZRUZVL(gt2,gt1)*AmpWaveSvToFvChi(1,:,gt1,:)
AmpVertexZSvToFvChi(1,:,gt2,:)= AmpVertexZSvToFvChi(1,:,gt2,:)+ZRUZVL(gt2,gt1)*AmpVertexSvToFvChi(1,:,gt1,:)
AmpWaveZSvToFvChi(2,:,gt2,:) = AmpWaveZSvToFvChi(2,:,gt2,:)
AmpVertexZSvToFvChi(2,:,gt2,:)= AmpVertexZSvToFvChi(2,:,gt2,:)
 End Do
End Do
AmpWaveSvToFvChi=AmpWaveZSvToFvChi
AmpVertexSvToFvChi= AmpVertexZSvToFvChi
! Final State 2
AmpWaveZSvToFvChi=0._dp
AmpVertexZSvToFvChi=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZSvToFvChi(1,:,:,gt2) = AmpWaveZSvToFvChi(1,:,:,gt2)+ZRUZN(gt2,gt1)*AmpWaveSvToFvChi(1,:,:,gt1)
AmpVertexZSvToFvChi(1,:,:,gt2)= AmpVertexZSvToFvChi(1,:,:,gt2)+ZRUZN(gt2,gt1)*AmpVertexSvToFvChi(1,:,:,gt1)
AmpWaveZSvToFvChi(2,:,:,gt2) = AmpWaveZSvToFvChi(2,:,:,gt2)+ZRUZN(gt2,gt1)*AmpWaveSvToFvChi(2,:,:,gt1)
AmpVertexZSvToFvChi(2,:,:,gt2)= AmpVertexZSvToFvChi(2,:,:,gt2)+ZRUZN(gt2,gt1)*AmpVertexSvToFvChi(2,:,:,gt1)
 End Do
End Do
AmpWaveSvToFvChi=AmpWaveZSvToFvChi
AmpVertexSvToFvChi= AmpVertexZSvToFvChi
End if
If (ShiftIRdiv) Then
AmpVertexSvToFvChi = AmpVertexSvToFvChi  +  AmpVertexIRosSvToFvChi
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Sv->Fv Chi -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumSvToFvChi = AmpTreeSvToFvChi
 AmpSum2SvToFvChi = AmpTreeSvToFvChi + 2._dp*AmpWaveSvToFvChi + 2._dp*AmpVertexSvToFvChi
Else
 AmpSumSvToFvChi = AmpTreeSvToFvChi + AmpWaveSvToFvChi + AmpVertexSvToFvChi
 AmpSum2SvToFvChi = AmpTreeSvToFvChi + AmpWaveSvToFvChi + AmpVertexSvToFvChi
End If
If (OnlyTreeLevelContributions) Then
 AmpSumSvToFvChi = AmpTreeSvToFvChi
 AmpSum2SvToFvChi = AmpTreeSvToFvChi
End if
Do gt1=1,3
i4 = isave
  Do gt2=1,3
    Do gt3=1,6
If (((OSkinematics).and.(Abs(MSvOS(gt1)).gt.(Abs(MFvOS(gt2))+Abs(MChiOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MSv(gt1)).gt.(Abs(MFv(gt2))+Abs(MChi(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2SvToFvChi = AmpTreeSvToFvChi
If (OSkinematics) Then
  Call SquareAmp_StoFF(MSvOS(gt1),MFvOS(gt2),MChiOS(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
Else
  Call SquareAmp_StoFF(MSv(gt1),MFv(gt2),MChi(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqSvToFvChi(gt1, gt2, gt3)
  AmpSum2SvToFvChi = 2._dp*AmpWaveSvToFvChi
If (OSkinematics) Then
  Call SquareAmp_StoFF(MSvOS(gt1),MFvOS(gt2),MChiOS(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
Else
  Call SquareAmp_StoFF(MSv(gt1),MFv(gt2),MChi(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqSvToFvChi(gt1, gt2, gt3)
  AmpSum2SvToFvChi = 2._dp*AmpVertexSvToFvChi
If (OSkinematics) Then
  Call SquareAmp_StoFF(MSvOS(gt1),MFvOS(gt2),MChiOS(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
Else
  Call SquareAmp_StoFF(MSv(gt1),MFv(gt2),MChi(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqSvToFvChi(gt1, gt2, gt3)
  AmpSum2SvToFvChi = AmpTreeSvToFvChi + 2._dp*AmpWaveSvToFvChi + 2._dp*AmpVertexSvToFvChi
If (OSkinematics) Then
  Call SquareAmp_StoFF(MSvOS(gt1),MFvOS(gt2),MChiOS(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
Else
  Call SquareAmp_StoFF(MSv(gt1),MFv(gt2),MChi(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqSvToFvChi(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2SvToFvChi = AmpTreeSvToFvChi
  Call SquareAmp_StoFF(MSvOS(gt1),MFvOS(gt2),MChiOS(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
  AmpSqTreeSvToFvChi(gt1, gt2, gt3) = AmpSqSvToFvChi(gt1, gt2, gt3)
  AmpSum2SvToFvChi = + 2._dp*AmpWaveSvToFvChi + 2._dp*AmpVertexSvToFvChi
  Call SquareAmp_StoFF(MSvOS(gt1),MFvOS(gt2),MChiOS(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
  AmpSqSvToFvChi(gt1, gt2, gt3) = AmpSqSvToFvChi(gt1, gt2, gt3) + AmpSqTreeSvToFvChi(gt1, gt2, gt3)
Else
  AmpSum2SvToFvChi = AmpTreeSvToFvChi
  Call SquareAmp_StoFF(MSv(gt1),MFv(gt2),MChi(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
  AmpSqTreeSvToFvChi(gt1, gt2, gt3) = AmpSqSvToFvChi(gt1, gt2, gt3)
  AmpSum2SvToFvChi = + 2._dp*AmpWaveSvToFvChi + 2._dp*AmpVertexSvToFvChi
  Call SquareAmp_StoFF(MSv(gt1),MFv(gt2),MChi(gt3),AmpSumSvToFvChi(:,gt1, gt2, gt3),AmpSum2SvToFvChi(:,gt1, gt2, gt3),AmpSqSvToFvChi(gt1, gt2, gt3))
  AmpSqSvToFvChi(gt1, gt2, gt3) = AmpSqSvToFvChi(gt1, gt2, gt3) + AmpSqTreeSvToFvChi(gt1, gt2, gt3)
End if
Else
  AmpSqSvToFvChi(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 4._dp
If (AmpSqSvToFvChi(gt1, gt2, gt3).eq.0._dp) Then
  gP1LSv(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSvOS(gt1),MFvOS(gt2),MChiOS(gt3),helfactor*AmpSqSvToFvChi(gt1, gt2, gt3))
Else
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSv(gt1),MFv(gt2),MChi(gt3),helfactor*AmpSqSvToFvChi(gt1, gt2, gt3))
End if
If ((Abs(MRPSvToFvChi(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGSvToFvChi(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LSv(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPSvToFvChi(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGSvToFvChi(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPSvToFvChi(gt1, gt2, gt3) + MRGSvToFvChi(gt1, gt2, gt3))
  gP1LSv(gt1,i4) = gP1LSv(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPSvToFvChi(gt1, gt2, gt3) + MRGSvToFvChi(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LSv(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.3) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! bar(Cha) Fe
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_SvTocChaFe(cplcChaFecSvL,cplcChaFecSvR,MCha,             &
& MFe,MSv,MCha2,MFe2,MSv2,AmpTreeSvTocChaFe)

  Else
Call Amplitude_Tree_NonUMSSM_SvTocChaFe(ZcplcChaFecSvL,ZcplcChaFecSvR,MCha,           &
& MFe,MSv,MCha2,MFe2,MSv2,AmpTreeSvTocChaFe)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_SvTocChaFe(MLambda,em,gs,cplcChaFecSvL,cplcChaFecSvR,        &
& MChaOS,MFeOS,MSvOS,MRPSvTocChaFe,MRGSvTocChaFe)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_SvTocChaFe(MLambda,em,gs,ZcplcChaFecSvL,ZcplcChaFecSvR,      &
& MChaOS,MFeOS,MSvOS,MRPSvTocChaFe,MRGSvTocChaFe)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_SvTocChaFe(MLambda,em,gs,cplcChaFecSvL,cplcChaFecSvR,        &
& MCha,MFe,MSv,MRPSvTocChaFe,MRGSvTocChaFe)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_SvTocChaFe(MLambda,em,gs,ZcplcChaFecSvL,ZcplcChaFecSvR,      &
& MCha,MFe,MSv,MRPSvTocChaFe,MRGSvTocChaFe)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_SvTocChaFe(cplcChaFecSvL,cplcChaFecSvR,ctcplcChaFecSvL,  &
& ctcplcChaFecSvR,MCha,MCha2,MFe,MFe2,MSv,MSv2,ZfFEL,ZfFER,ZfLm,ZfLp,ZfSv,               &
& AmpWaveSvTocChaFe)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_SvTocChaFe(MAh,MCha,MChi,MFe,MFv,Mhh,MHpm,             &
& MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,             &
& MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,cplcChaChaAhR,cplcFeFeAhL,cplcFeFeAhR,             &
& cplcChaChahhL,cplcChaChahhR,cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,   &
& cplcChaChaVZpL,cplcChaChaVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,     &
& cplcChaChiHpmL,cplcChaChiHpmR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFeFehhL,               &
& cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFeFeVZpL,              &
& cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplcFvFecVWmL,    &
& cplcFvFecVWmR,cplhhSvcSv,cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,        &
& cplSvcSvVZ,cplSvcSvVZp,AmpVertexSvTocChaFe)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocChaFe(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,             &
& MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,cplcChaChaAhR,cplcFeFeAhL,cplcFeFeAhR,        &
& cplcChaChahhL,cplcChaChahhR,cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,   &
& cplcChaChaVZpL,cplcChaChaVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,     &
& cplcChaChiHpmL,cplcChaChiHpmR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFeFehhL,               &
& cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFeFeVZpL,              &
& cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplcFvFecVWmL,    &
& cplcFvFecVWmR,cplhhSvcSv,cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,        &
& cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRdrSvTocChaFe)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocChaFe(MAhOS,MChaOS,MChiOS,MFeOS,               &
& MFvOS,MhhOS,MHpmOS,MSeOS,MSvOS,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,MChi2OS,         &
& MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSe2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplcChaChaAhL,  &
& cplcChaChaAhR,cplcFeFeAhL,cplcFeFeAhR,cplcChaChahhL,cplcChaChahhR,cplcChaChaVPL,       &
& cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR,               &
& cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,     &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,         &
& cplcFeFeVZL,cplcFeFeVZR,cplcFeFeVZpL,cplcFeFeVZpR,ZcplcChaFecSvL,ZcplcChaFecSvR,       &
& cplcFvFecHpmL,cplcFvFecHpmR,cplcFvFecVWmL,cplcFvFecVWmR,cplhhSvcSv,cplcChacFvSeL,      &
& cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRosSvTocChaFe)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocChaFe(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,             &
& MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,cplcChaChaAhR,cplcFeFeAhL,cplcFeFeAhR,        &
& cplcChaChahhL,cplcChaChahhR,cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,   &
& cplcChaChaVZpL,cplcChaChaVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,     &
& cplcChaChiHpmL,cplcChaChiHpmR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFeFehhL,               &
& cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFeFeVZpL,              &
& cplcFeFeVZpR,ZcplcChaFecSvL,ZcplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplcFvFecVWmL,  &
& cplcFvFecVWmR,cplhhSvcSv,cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,        &
& cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRosSvTocChaFe)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocChaFe(MAhOS,MChaOS,MChiOS,MFeOS,               &
& MFvOS,MhhOS,MHpmOS,MSeOS,MSvOS,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,MChi2OS,         &
& MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSe2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplcChaChaAhL,  &
& cplcChaChaAhR,cplcFeFeAhL,cplcFeFeAhR,cplcChaChahhL,cplcChaChahhR,cplcChaChaVPL,       &
& cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,cplcChaChaVZpL,cplcChaChaVZpR,               &
& cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,cplcChaChiHpmL,cplcChaChiHpmR,     &
& cplcChaChiVWmL,cplcChaChiVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,         &
& cplcFeFeVZL,cplcFeFeVZR,cplcFeFeVZpL,cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,         &
& cplcFvFecHpmL,cplcFvFecHpmR,cplcFvFecVWmL,cplcFvFecVWmR,cplhhSvcSv,cplcChacFvSeL,      &
& cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRosSvTocChaFe)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocChaFe(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,             &
& MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,cplcChaChaAhR,cplcFeFeAhL,cplcFeFeAhR,        &
& cplcChaChahhL,cplcChaChahhR,cplcChaChaVPL,cplcChaChaVPR,cplcChaChaVZL,cplcChaChaVZR,   &
& cplcChaChaVZpL,cplcChaChaVZpR,cplChiFecSeL,cplChiFecSeR,cplChiFvcSvL,cplChiFvcSvR,     &
& cplcChaChiHpmL,cplcChaChiHpmR,cplcChaChiVWmL,cplcChaChiVWmR,cplcFeFehhL,               &
& cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFeFeVZpL,              &
& cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplcFvFecVWmL,    &
& cplcFvFecVWmR,cplhhSvcSv,cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,        &
& cplSvcSvVZ,cplSvcSvVZp,AmpVertexIRosSvTocChaFe)

 End if
 End if
AmpVertexSvTocChaFe = AmpVertexSvTocChaFe -  AmpVertexIRdrSvTocChaFe! +  AmpVertexIRosSvTocChaFe ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZSvTocChaFe=0._dp
AmpVertexZSvTocChaFe=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvTocChaFe(:,gt2,:,:) = AmpWaveZSvTocChaFe(:,gt2,:,:)+ZRUZVc(gt2,gt1)*AmpWaveSvTocChaFe(:,gt1,:,:)
AmpVertexZSvTocChaFe(:,gt2,:,:)= AmpVertexZSvTocChaFe(:,gt2,:,:) + ZRUZVc(gt2,gt1)*AmpVertexSvTocChaFe(:,gt1,:,:)
 End Do
End Do
AmpWaveSvTocChaFe=AmpWaveZSvTocChaFe
AmpVertexSvTocChaFe= AmpVertexZSvTocChaFe
! Final State 1
AmpWaveZSvTocChaFe=0._dp
AmpVertexZSvTocChaFe=0._dp
Do gt1=1,2
  Do gt2=1,2
AmpWaveZSvTocChaFe(1,:,gt2,:) = AmpWaveZSvTocChaFe(1,:,gt2,:)+ZRUUP(gt2,gt1)*AmpWaveSvTocChaFe(1,:,gt1,:)
AmpVertexZSvTocChaFe(1,:,gt2,:)= AmpVertexZSvTocChaFe(1,:,gt2,:)+ZRUUP(gt2,gt1)*AmpVertexSvTocChaFe(1,:,gt1,:)
AmpWaveZSvTocChaFe(2,:,gt2,:) = AmpWaveZSvTocChaFe(2,:,gt2,:)+ZRUUMc(gt2,gt1)*AmpWaveSvTocChaFe(2,:,gt1,:)
AmpVertexZSvTocChaFe(2,:,gt2,:)= AmpVertexZSvTocChaFe(2,:,gt2,:)+ZRUUMc(gt2,gt1)*AmpVertexSvTocChaFe(2,:,gt1,:)
 End Do
End Do
AmpWaveSvTocChaFe=AmpWaveZSvTocChaFe
AmpVertexSvTocChaFe= AmpVertexZSvTocChaFe
! Final State 2
AmpWaveZSvTocChaFe=0._dp
AmpVertexZSvTocChaFe=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvTocChaFe(1,:,:,gt2) = AmpWaveZSvTocChaFe(1,:,:,gt2)+ZRUZEL(gt2,gt1)*AmpWaveSvTocChaFe(1,:,:,gt1)
AmpVertexZSvTocChaFe(1,:,:,gt2)= AmpVertexZSvTocChaFe(1,:,:,gt2)+ZRUZEL(gt2,gt1)*AmpVertexSvTocChaFe(1,:,:,gt1)
AmpWaveZSvTocChaFe(2,:,:,gt2) = AmpWaveZSvTocChaFe(2,:,:,gt2)+ZRUZER(gt2,gt1)*AmpWaveSvTocChaFe(2,:,:,gt1)
AmpVertexZSvTocChaFe(2,:,:,gt2)= AmpVertexZSvTocChaFe(2,:,:,gt2)+ZRUZER(gt2,gt1)*AmpVertexSvTocChaFe(2,:,:,gt1)
 End Do
End Do
AmpWaveSvTocChaFe=AmpWaveZSvTocChaFe
AmpVertexSvTocChaFe= AmpVertexZSvTocChaFe
End if
If (ShiftIRdiv) Then
AmpVertexSvTocChaFe = AmpVertexSvTocChaFe  +  AmpVertexIRosSvTocChaFe
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Sv->bar[Cha] Fe -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumSvTocChaFe = AmpTreeSvTocChaFe
 AmpSum2SvTocChaFe = AmpTreeSvTocChaFe + 2._dp*AmpWaveSvTocChaFe + 2._dp*AmpVertexSvTocChaFe
Else
 AmpSumSvTocChaFe = AmpTreeSvTocChaFe + AmpWaveSvTocChaFe + AmpVertexSvTocChaFe
 AmpSum2SvTocChaFe = AmpTreeSvTocChaFe + AmpWaveSvTocChaFe + AmpVertexSvTocChaFe
End If
If (OnlyTreeLevelContributions) Then
 AmpSumSvTocChaFe = AmpTreeSvTocChaFe
 AmpSum2SvTocChaFe = AmpTreeSvTocChaFe
End if
Do gt1=1,3
i4 = isave
  Do gt2=1,2
    Do gt3=1,3
If (((OSkinematics).and.(Abs(MSvOS(gt1)).gt.(Abs(MChaOS(gt2))+Abs(MFeOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MSv(gt1)).gt.(Abs(MCha(gt2))+Abs(MFe(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2SvTocChaFe = AmpTreeSvTocChaFe
If (OSkinematics) Then
  Call SquareAmp_StoFF(MSvOS(gt1),MChaOS(gt2),MFeOS(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
Else
  Call SquareAmp_StoFF(MSv(gt1),MCha(gt2),MFe(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqSvTocChaFe(gt1, gt2, gt3)
  AmpSum2SvTocChaFe = 2._dp*AmpWaveSvTocChaFe
If (OSkinematics) Then
  Call SquareAmp_StoFF(MSvOS(gt1),MChaOS(gt2),MFeOS(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
Else
  Call SquareAmp_StoFF(MSv(gt1),MCha(gt2),MFe(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqSvTocChaFe(gt1, gt2, gt3)
  AmpSum2SvTocChaFe = 2._dp*AmpVertexSvTocChaFe
If (OSkinematics) Then
  Call SquareAmp_StoFF(MSvOS(gt1),MChaOS(gt2),MFeOS(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
Else
  Call SquareAmp_StoFF(MSv(gt1),MCha(gt2),MFe(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqSvTocChaFe(gt1, gt2, gt3)
  AmpSum2SvTocChaFe = AmpTreeSvTocChaFe + 2._dp*AmpWaveSvTocChaFe + 2._dp*AmpVertexSvTocChaFe
If (OSkinematics) Then
  Call SquareAmp_StoFF(MSvOS(gt1),MChaOS(gt2),MFeOS(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
Else
  Call SquareAmp_StoFF(MSv(gt1),MCha(gt2),MFe(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqSvTocChaFe(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2SvTocChaFe = AmpTreeSvTocChaFe
  Call SquareAmp_StoFF(MSvOS(gt1),MChaOS(gt2),MFeOS(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
  AmpSqTreeSvTocChaFe(gt1, gt2, gt3) = AmpSqSvTocChaFe(gt1, gt2, gt3)
  AmpSum2SvTocChaFe = + 2._dp*AmpWaveSvTocChaFe + 2._dp*AmpVertexSvTocChaFe
  Call SquareAmp_StoFF(MSvOS(gt1),MChaOS(gt2),MFeOS(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
  AmpSqSvTocChaFe(gt1, gt2, gt3) = AmpSqSvTocChaFe(gt1, gt2, gt3) + AmpSqTreeSvTocChaFe(gt1, gt2, gt3)
Else
  AmpSum2SvTocChaFe = AmpTreeSvTocChaFe
  Call SquareAmp_StoFF(MSv(gt1),MCha(gt2),MFe(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
  AmpSqTreeSvTocChaFe(gt1, gt2, gt3) = AmpSqSvTocChaFe(gt1, gt2, gt3)
  AmpSum2SvTocChaFe = + 2._dp*AmpWaveSvTocChaFe + 2._dp*AmpVertexSvTocChaFe
  Call SquareAmp_StoFF(MSv(gt1),MCha(gt2),MFe(gt3),AmpSumSvTocChaFe(:,gt1, gt2, gt3),AmpSum2SvTocChaFe(:,gt1, gt2, gt3),AmpSqSvTocChaFe(gt1, gt2, gt3))
  AmpSqSvTocChaFe(gt1, gt2, gt3) = AmpSqSvTocChaFe(gt1, gt2, gt3) + AmpSqTreeSvTocChaFe(gt1, gt2, gt3)
End if
Else
  AmpSqSvTocChaFe(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 4._dp
If (AmpSqSvTocChaFe(gt1, gt2, gt3).eq.0._dp) Then
  gP1LSv(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSvOS(gt1),MChaOS(gt2),MFeOS(gt3),helfactor*AmpSqSvTocChaFe(gt1, gt2, gt3))
Else
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSv(gt1),MCha(gt2),MFe(gt3),helfactor*AmpSqSvTocChaFe(gt1, gt2, gt3))
End if
If ((Abs(MRPSvTocChaFe(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGSvTocChaFe(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LSv(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPSvTocChaFe(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGSvTocChaFe(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPSvTocChaFe(gt1, gt2, gt3) + MRGSvTocChaFe(gt1, gt2, gt3))
  gP1LSv(gt1,i4) = gP1LSv(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPSvTocChaFe(gt1, gt2, gt3) + MRGSvTocChaFe(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LSv(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.3) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Sv hh
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_SvToSvhh(cplhhSvcSv,Mhh,MSv,Mhh2,MSv2,AmpTreeSvToSvhh)

  Else
Call Amplitude_Tree_NonUMSSM_SvToSvhh(ZcplhhSvcSv,Mhh,MSv,Mhh2,MSv2,AmpTreeSvToSvhh)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_SvToSvhh(MLambda,em,gs,cplhhSvcSv,MhhOS,MSvOS,               &
& MRPSvToSvhh,MRGSvToSvhh)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_SvToSvhh(MLambda,em,gs,ZcplhhSvcSv,MhhOS,MSvOS,              &
& MRPSvToSvhh,MRGSvToSvhh)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_SvToSvhh(MLambda,em,gs,cplhhSvcSv,Mhh,MSv,MRPSvToSvhh,       &
& MRGSvToSvhh)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_SvToSvhh(MLambda,em,gs,ZcplhhSvcSv,Mhh,MSv,MRPSvToSvhh,      &
& MRGSvToSvhh)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_SvToSvhh(cplhhSvcSv,ctcplhhSvcSv,Mhh,Mhh2,               &
& MSv,MSv2,Zfhh,ZfSv,AmpWaveSvToSvhh)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_SvToSvhh(MAh,MCha,MChi,MFe,MFv,Mhh,MHpm,               &
& MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSd2,              &
& MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplcChaChahhL,cplcChaChahhR,cplcFeChaSvL,    &
& cplcFeChaSvR,cplChiChihhL,cplChiChihhR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,cplhhhhhh,            &
& cplhhHpmcHpm,cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,    &
& cplhhcVWmVWm,cplhhVZVZ,cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplSecHpmcSv,cplSecSvcVWm,   &
& cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplAhAhSvcSv1,cplhhhhSvcSv1,cplhhHpmSvcSe1,         &
& cplhhSecHpmcSv1,cplHpmSvcHpmcSv1,cplSdSvcSdcSvaa,cplSeSvcSecSv1,cplSuSvcSucSvaa,       &
& cplSvSvcSvcSv1,cplSvcSvcVWmVWm1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,          &
& AmpVertexSvToSvhh)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvhh(MAh,MCha,MChi,MFe,MFv,Mhh,MHpm,            &
& MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSd2,              &
& MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplcChaChahhL,cplcChaChahhR,cplcFeChaSvL,    &
& cplcFeChaSvR,cplChiChihhL,cplChiChihhR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,cplhhhhhh,            &
& cplhhHpmcHpm,cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,    &
& cplhhcVWmVWm,cplhhVZVZ,cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplSecHpmcSv,cplSecSvcVWm,   &
& cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplAhAhSvcSv1,cplhhhhSvcSv1,cplhhHpmSvcSe1,         &
& cplhhSecHpmcSv1,cplHpmSvcHpmcSv1,cplSdSvcSdcSvaa,cplSeSvcSecSv1,cplSuSvcSucSvaa,       &
& cplSvSvcSvcSv1,cplSvcSvcVWmVWm1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,          &
& AmpVertexIRdrSvToSvhh)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvhh(MAhOS,MChaOS,MChiOS,MFeOS,MFvOS,           &
& MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,               &
& MChi2OS,MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MSv2OS,MVWm2OS,              &
& MVZ2OS,MVZp2OS,cplAhAhhh,cplcChaChahhL,cplcChaChahhR,cplcFeChaSvL,cplcFeChaSvR,        &
& cplChiChihhL,cplChiChihhR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,cplhhhhhh,cplhhHpmcHpm,            &
& cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,ZcplhhSvcSv,cplhhcHpmVWm,cplhhcVWmVWm,   &
& cplhhVZVZ,cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,    &
& cplSvcSvVZ,cplSvcSvVZp,cplAhAhSvcSv1,cplhhhhSvcSv1,cplhhHpmSvcSe1,cplhhSecHpmcSv1,     &
& cplHpmSvcHpmcSv1,cplSdSvcSdcSvaa,cplSeSvcSecSv1,cplSuSvcSucSvaa,cplSvSvcSvcSv1,        &
& cplSvcSvcVWmVWm1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,AmpVertexIRosSvToSvhh)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvhh(MAh,MCha,MChi,MFe,MFv,Mhh,MHpm,            &
& MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSd2,              &
& MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplcChaChahhL,cplcChaChahhR,cplcFeChaSvL,    &
& cplcFeChaSvR,cplChiChihhL,cplChiChihhR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,cplhhhhhh,            &
& cplhhHpmcHpm,cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,ZcplhhSvcSv,cplhhcHpmVWm,   &
& cplhhcVWmVWm,cplhhVZVZ,cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplSecHpmcSv,cplSecSvcVWm,   &
& cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplAhAhSvcSv1,cplhhhhSvcSv1,cplhhHpmSvcSe1,         &
& cplhhSecHpmcSv1,cplHpmSvcHpmcSv1,cplSdSvcSdcSvaa,cplSeSvcSecSv1,cplSuSvcSucSvaa,       &
& cplSvSvcSvcSv1,cplSvcSvcVWmVWm1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,          &
& AmpVertexIRosSvToSvhh)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvhh(MAhOS,MChaOS,MChiOS,MFeOS,MFvOS,           &
& MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,               &
& MChi2OS,MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MSv2OS,MVWm2OS,              &
& MVZ2OS,MVZp2OS,cplAhAhhh,cplcChaChahhL,cplcChaChahhR,cplcFeChaSvL,cplcFeChaSvR,        &
& cplChiChihhL,cplChiChihhR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,         &
& cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,cplhhhhhh,cplhhHpmcHpm,            &
& cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,cplhhcVWmVWm,    &
& cplhhVZVZ,cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,    &
& cplSvcSvVZ,cplSvcSvVZp,cplAhAhSvcSv1,cplhhhhSvcSv1,cplhhHpmSvcSe1,cplhhSecHpmcSv1,     &
& cplHpmSvcHpmcSv1,cplSdSvcSdcSvaa,cplSeSvcSecSv1,cplSuSvcSucSvaa,cplSvSvcSvcSv1,        &
& cplSvcSvcVWmVWm1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,AmpVertexIRosSvToSvhh)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvhh(MAh,MCha,MChi,MFe,MFv,Mhh,MHpm,            &
& MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSd2,              &
& MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplAhAhhh,cplcChaChahhL,cplcChaChahhR,cplcFeChaSvL,    &
& cplcFeChaSvR,cplChiChihhL,cplChiChihhR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,         &
& cplcFvChiSvR,cplcFeFehhL,cplcFeFehhR,cplcChaFecSvL,cplcChaFecSvR,cplhhhhhh,            &
& cplhhHpmcHpm,cplhhHpmcVWm,cplhhSdcSd,cplhhSecSe,cplhhSucSu,cplhhSvcSv,cplhhcHpmVWm,    &
& cplhhcVWmVWm,cplhhVZVZ,cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplSecHpmcSv,cplSecSvcVWm,   &
& cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplAhAhSvcSv1,cplhhhhSvcSv1,cplhhHpmSvcSe1,         &
& cplhhSecHpmcSv1,cplHpmSvcHpmcSv1,cplSdSvcSdcSvaa,cplSeSvcSecSv1,cplSuSvcSucSvaa,       &
& cplSvSvcSvcSv1,cplSvcSvcVWmVWm1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,          &
& AmpVertexIRosSvToSvhh)

 End if
 End if
AmpVertexSvToSvhh = AmpVertexSvToSvhh -  AmpVertexIRdrSvToSvhh! +  AmpVertexIRosSvToSvhh ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZSvToSvhh=0._dp
AmpVertexZSvToSvhh=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToSvhh(gt2,:,:) = AmpWaveZSvToSvhh(gt2,:,:)+ZRUZVc(gt2,gt1)*AmpWaveSvToSvhh(gt1,:,:)
AmpVertexZSvToSvhh(gt2,:,:)= AmpVertexZSvToSvhh(gt2,:,:) + ZRUZVc(gt2,gt1)*AmpVertexSvToSvhh(gt1,:,:)
 End Do
End Do
AmpWaveSvToSvhh=AmpWaveZSvToSvhh
AmpVertexSvToSvhh= AmpVertexZSvToSvhh
! Final State 1
AmpWaveZSvToSvhh=0._dp
AmpVertexZSvToSvhh=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToSvhh(:,gt2,:) = AmpWaveZSvToSvhh(:,gt2,:)+ZRUZV(gt2,gt1)*AmpWaveSvToSvhh(:,gt1,:)
AmpVertexZSvToSvhh(:,gt2,:)= AmpVertexZSvToSvhh(:,gt2,:)+ZRUZV(gt2,gt1)*AmpVertexSvToSvhh(:,gt1,:)
 End Do
End Do
AmpWaveSvToSvhh=AmpWaveZSvToSvhh
AmpVertexSvToSvhh= AmpVertexZSvToSvhh
! Final State 2
AmpWaveZSvToSvhh=0._dp
AmpVertexZSvToSvhh=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToSvhh(:,:,gt2) = AmpWaveZSvToSvhh(:,:,gt2)+ZRUZH(gt2,gt1)*AmpWaveSvToSvhh(:,:,gt1)
AmpVertexZSvToSvhh(:,:,gt2)= AmpVertexZSvToSvhh(:,:,gt2)+ZRUZH(gt2,gt1)*AmpVertexSvToSvhh(:,:,gt1)
 End Do
End Do
AmpWaveSvToSvhh=AmpWaveZSvToSvhh
AmpVertexSvToSvhh= AmpVertexZSvToSvhh
End if
If (ShiftIRdiv) Then
AmpVertexSvToSvhh = AmpVertexSvToSvhh  +  AmpVertexIRosSvToSvhh
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Sv->Sv hh -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumSvToSvhh = AmpTreeSvToSvhh
 AmpSum2SvToSvhh = AmpTreeSvToSvhh + 2._dp*AmpWaveSvToSvhh + 2._dp*AmpVertexSvToSvhh
Else
 AmpSumSvToSvhh = AmpTreeSvToSvhh + AmpWaveSvToSvhh + AmpVertexSvToSvhh
 AmpSum2SvToSvhh = AmpTreeSvToSvhh + AmpWaveSvToSvhh + AmpVertexSvToSvhh
End If
If (OnlyTreeLevelContributions) Then
 AmpSumSvToSvhh = AmpTreeSvToSvhh
 AmpSum2SvToSvhh = AmpTreeSvToSvhh
End if
Do gt1=1,3
i4 = isave
  Do gt2=1,3
    Do gt3=1,3
If (((OSkinematics).and.(Abs(MSvOS(gt1)).gt.(Abs(MSvOS(gt2))+Abs(MhhOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MSv(gt1)).gt.(Abs(MSv(gt2))+Abs(Mhh(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2SvToSvhh = AmpTreeSvToSvhh
If (OSkinematics) Then
  Call SquareAmp_StoSS(MSvOS(gt1),MSvOS(gt2),MhhOS(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
Else
  Call SquareAmp_StoSS(MSv(gt1),MSv(gt2),Mhh(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqSvToSvhh(gt1, gt2, gt3)
  AmpSum2SvToSvhh = 2._dp*AmpWaveSvToSvhh
If (OSkinematics) Then
  Call SquareAmp_StoSS(MSvOS(gt1),MSvOS(gt2),MhhOS(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
Else
  Call SquareAmp_StoSS(MSv(gt1),MSv(gt2),Mhh(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqSvToSvhh(gt1, gt2, gt3)
  AmpSum2SvToSvhh = 2._dp*AmpVertexSvToSvhh
If (OSkinematics) Then
  Call SquareAmp_StoSS(MSvOS(gt1),MSvOS(gt2),MhhOS(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
Else
  Call SquareAmp_StoSS(MSv(gt1),MSv(gt2),Mhh(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqSvToSvhh(gt1, gt2, gt3)
  AmpSum2SvToSvhh = AmpTreeSvToSvhh + 2._dp*AmpWaveSvToSvhh + 2._dp*AmpVertexSvToSvhh
If (OSkinematics) Then
  Call SquareAmp_StoSS(MSvOS(gt1),MSvOS(gt2),MhhOS(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
Else
  Call SquareAmp_StoSS(MSv(gt1),MSv(gt2),Mhh(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqSvToSvhh(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2SvToSvhh = AmpTreeSvToSvhh
  Call SquareAmp_StoSS(MSvOS(gt1),MSvOS(gt2),MhhOS(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
  AmpSqTreeSvToSvhh(gt1, gt2, gt3) = AmpSqSvToSvhh(gt1, gt2, gt3)
  AmpSum2SvToSvhh = + 2._dp*AmpWaveSvToSvhh + 2._dp*AmpVertexSvToSvhh
  Call SquareAmp_StoSS(MSvOS(gt1),MSvOS(gt2),MhhOS(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
  AmpSqSvToSvhh(gt1, gt2, gt3) = AmpSqSvToSvhh(gt1, gt2, gt3) + AmpSqTreeSvToSvhh(gt1, gt2, gt3)
Else
  AmpSum2SvToSvhh = AmpTreeSvToSvhh
  Call SquareAmp_StoSS(MSv(gt1),MSv(gt2),Mhh(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
  AmpSqTreeSvToSvhh(gt1, gt2, gt3) = AmpSqSvToSvhh(gt1, gt2, gt3)
  AmpSum2SvToSvhh = + 2._dp*AmpWaveSvToSvhh + 2._dp*AmpVertexSvToSvhh
  Call SquareAmp_StoSS(MSv(gt1),MSv(gt2),Mhh(gt3),AmpSumSvToSvhh(gt1, gt2, gt3),AmpSum2SvToSvhh(gt1, gt2, gt3),AmpSqSvToSvhh(gt1, gt2, gt3))
  AmpSqSvToSvhh(gt1, gt2, gt3) = AmpSqSvToSvhh(gt1, gt2, gt3) + AmpSqTreeSvToSvhh(gt1, gt2, gt3)
End if
Else
  AmpSqSvToSvhh(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 1._dp
If (AmpSqSvToSvhh(gt1, gt2, gt3).eq.0._dp) Then
  gP1LSv(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSvOS(gt1),MSvOS(gt2),MhhOS(gt3),helfactor*AmpSqSvToSvhh(gt1, gt2, gt3))
Else
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSv(gt1),MSv(gt2),Mhh(gt3),helfactor*AmpSqSvToSvhh(gt1, gt2, gt3))
End if
If ((Abs(MRPSvToSvhh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGSvToSvhh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LSv(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPSvToSvhh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGSvToSvhh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPSvToSvhh(gt1, gt2, gt3) + MRGSvToSvhh(gt1, gt2, gt3))
  gP1LSv(gt1,i4) = gP1LSv(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPSvToSvhh(gt1, gt2, gt3) + MRGSvToSvhh(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LSv(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.3) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Conjg(Hpm) Se
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_SvTocHpmSe(cplSecHpmcSv,MHpm,MSe,MSv,MHpm2,              &
& MSe2,MSv2,AmpTreeSvTocHpmSe)

  Else
Call Amplitude_Tree_NonUMSSM_SvTocHpmSe(ZcplSecHpmcSv,MHpm,MSe,MSv,MHpm2,             &
& MSe2,MSv2,AmpTreeSvTocHpmSe)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_SvTocHpmSe(MLambda,em,gs,cplSecHpmcSv,MHpmOS,MSeOS,          &
& MSvOS,MRPSvTocHpmSe,MRGSvTocHpmSe)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_SvTocHpmSe(MLambda,em,gs,ZcplSecHpmcSv,MHpmOS,               &
& MSeOS,MSvOS,MRPSvTocHpmSe,MRGSvTocHpmSe)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_SvTocHpmSe(MLambda,em,gs,cplSecHpmcSv,MHpm,MSe,              &
& MSv,MRPSvTocHpmSe,MRGSvTocHpmSe)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_SvTocHpmSe(MLambda,em,gs,ZcplSecHpmcSv,MHpm,MSe,             &
& MSv,MRPSvTocHpmSe,MRGSvTocHpmSe)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_SvTocHpmSe(cplSecHpmcSv,ctcplSecHpmcSv,MHpm,             &
& MHpm2,MSe,MSe2,MSv,MSv2,ZfHpm,ZfSe,ZfSv,AmpWaveSvTocHpmSe)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_SvTocHpmSe(MAh,MCha,MChi,MFe,MFv,Mhh,MHpm,             &
& MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,               &
& MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplAhHpmcHpm,cplAhSecSe,cplAhcHpmVWm,        &
& cplChiChacHpmL,cplChiChacHpmR,cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplhhHpmcHpm,cplhhSecSe,       &
& cplhhSvcSv,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,cplSdcHpmcSu,          &
& cplSecSeVP,cplSecSeVZ,cplSecSeVZp,cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,            &
& cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,           &
& cplAhSecHpmcSv1,cplhhSecHpmcSv1,cplHpmSecHpmcSe1,cplHpmSvcHpmcSv1,cplSeSucSdcSvaa,     &
& cplSeSvcSecSv1,cplSecSvcVWmVP1,cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,AmpVertexSvTocHpmSe)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocHpmSe(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,          &
& MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplAhHpmcHpm,cplAhSecSe,cplAhcHpmVWm,        &
& cplChiChacHpmL,cplChiChacHpmR,cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplhhHpmcHpm,cplhhSecSe,       &
& cplhhSvcSv,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,cplSdcHpmcSu,          &
& cplSecSeVP,cplSecSeVZ,cplSecSeVZp,cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,            &
& cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,           &
& cplAhSecHpmcSv1,cplhhSecHpmcSv1,cplHpmSecHpmcSe1,cplHpmSvcHpmcSv1,cplSeSucSdcSvaa,     &
& cplSeSvcSecSv1,cplSecSvcVWmVP1,cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,AmpVertexIRdrSvTocHpmSe)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocHpmSe(MAhOS,MChaOS,MChiOS,MFeOS,               &
& MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,             &
& MCha2OS,MChi2OS,MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MSv2OS,              &
& MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplAhHpmcHpm,cplAhSecSe,cplAhcHpmVWm,cplChiChacHpmL,       &
& cplChiChacHpmR,cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,cplcChaFecSvL,      &
& cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplhhHpmcHpm,cplhhSecSe,cplhhSvcSv,          &
& cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,cplSdcHpmcSu,cplSecSeVP,          &
& cplSecSeVZ,cplSecSeVZp,cplcChacFvSeL,cplcChacFvSeR,ZcplSecHpmcSv,cplSecSvcVWm,         &
& cplSvcSvVZ,cplSvcSvVZp,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,cplAhSecHpmcSv1,        &
& cplhhSecHpmcSv1,cplHpmSecHpmcSe1,cplHpmSvcHpmcSv1,cplSeSucSdcSvaa,cplSeSvcSecSv1,      &
& cplSecSvcVWmVP1,cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,AmpVertexIRosSvTocHpmSe)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocHpmSe(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,          &
& MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplAhHpmcHpm,cplAhSecSe,cplAhcHpmVWm,        &
& cplChiChacHpmL,cplChiChacHpmR,cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplhhHpmcHpm,cplhhSecSe,       &
& cplhhSvcSv,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,cplSdcHpmcSu,          &
& cplSecSeVP,cplSecSeVZ,cplSecSeVZp,cplcChacFvSeL,cplcChacFvSeR,ZcplSecHpmcSv,           &
& cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,           &
& cplAhSecHpmcSv1,cplhhSecHpmcSv1,cplHpmSecHpmcSe1,cplHpmSvcHpmcSv1,cplSeSucSdcSvaa,     &
& cplSeSvcSecSv1,cplSecSvcVWmVP1,cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,AmpVertexIRosSvTocHpmSe)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocHpmSe(MAhOS,MChaOS,MChiOS,MFeOS,               &
& MFvOS,MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,             &
& MCha2OS,MChi2OS,MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MSv2OS,              &
& MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplAhHpmcHpm,cplAhSecSe,cplAhcHpmVWm,cplChiChacHpmL,       &
& cplChiChacHpmR,cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,cplcChaFecSvL,      &
& cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplhhHpmcHpm,cplhhSecSe,cplhhSvcSv,          &
& cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,cplSdcHpmcSu,cplSecSeVP,          &
& cplSecSeVZ,cplSecSeVZp,cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,          &
& cplSvcSvVZ,cplSvcSvVZp,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,cplAhSecHpmcSv1,        &
& cplhhSecHpmcSv1,cplHpmSecHpmcSe1,cplHpmSvcHpmcSv1,cplSeSucSdcSvaa,cplSeSvcSecSv1,      &
& cplSecSvcVWmVP1,cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,AmpVertexIRosSvTocHpmSe)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvTocHpmSe(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSd,MSe,MSu,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,          &
& MSd2,MSe2,MSu2,MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplAhHpmcHpm,cplAhSecSe,cplAhcHpmVWm,        &
& cplChiChacHpmL,cplChiChacHpmR,cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,     &
& cplcChaFecSvL,cplcChaFecSvR,cplcFvFecHpmL,cplcFvFecHpmR,cplhhHpmcHpm,cplhhSecSe,       &
& cplhhSvcSv,cplhhcHpmVWm,cplHpmcHpmVP,cplHpmcHpmVZ,cplHpmcHpmVZp,cplSdcHpmcSu,          &
& cplSecSeVP,cplSecSeVZ,cplSecSeVZp,cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,            &
& cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVPVWm,cplcHpmVWmVZ,cplcHpmVWmVZp,           &
& cplAhSecHpmcSv1,cplhhSecHpmcSv1,cplHpmSecHpmcSe1,cplHpmSvcHpmcSv1,cplSeSucSdcSvaa,     &
& cplSeSvcSecSv1,cplSecSvcVWmVP1,cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,AmpVertexIRosSvTocHpmSe)

 End if
 End if
AmpVertexSvTocHpmSe = AmpVertexSvTocHpmSe -  AmpVertexIRdrSvTocHpmSe! +  AmpVertexIRosSvTocHpmSe ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZSvTocHpmSe=0._dp
AmpVertexZSvTocHpmSe=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvTocHpmSe(gt2,:,:) = AmpWaveZSvTocHpmSe(gt2,:,:)+ZRUZVc(gt2,gt1)*AmpWaveSvTocHpmSe(gt1,:,:)
AmpVertexZSvTocHpmSe(gt2,:,:)= AmpVertexZSvTocHpmSe(gt2,:,:) + ZRUZVc(gt2,gt1)*AmpVertexSvTocHpmSe(gt1,:,:)
 End Do
End Do
AmpWaveSvTocHpmSe=AmpWaveZSvTocHpmSe
AmpVertexSvTocHpmSe= AmpVertexZSvTocHpmSe
! Final State 1
AmpWaveZSvTocHpmSe=0._dp
AmpVertexZSvTocHpmSe=0._dp
Do gt1=1,2
  Do gt2=1,2
AmpWaveZSvTocHpmSe(:,gt2,:) = AmpWaveZSvTocHpmSe(:,gt2,:)+ZRUZP(gt2,gt1)*AmpWaveSvTocHpmSe(:,gt1,:)
AmpVertexZSvTocHpmSe(:,gt2,:)= AmpVertexZSvTocHpmSe(:,gt2,:)+ZRUZP(gt2,gt1)*AmpVertexSvTocHpmSe(:,gt1,:)
 End Do
End Do
AmpWaveSvTocHpmSe=AmpWaveZSvTocHpmSe
AmpVertexSvTocHpmSe= AmpVertexZSvTocHpmSe
! Final State 2
AmpWaveZSvTocHpmSe=0._dp
AmpVertexZSvTocHpmSe=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZSvTocHpmSe(:,:,gt2) = AmpWaveZSvTocHpmSe(:,:,gt2)+ZRUZE(gt2,gt1)*AmpWaveSvTocHpmSe(:,:,gt1)
AmpVertexZSvTocHpmSe(:,:,gt2)= AmpVertexZSvTocHpmSe(:,:,gt2)+ZRUZE(gt2,gt1)*AmpVertexSvTocHpmSe(:,:,gt1)
 End Do
End Do
AmpWaveSvTocHpmSe=AmpWaveZSvTocHpmSe
AmpVertexSvTocHpmSe= AmpVertexZSvTocHpmSe
End if
If (ShiftIRdiv) Then
AmpVertexSvTocHpmSe = AmpVertexSvTocHpmSe  +  AmpVertexIRosSvTocHpmSe
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Sv->conj[Hpm] Se -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumSvTocHpmSe = AmpTreeSvTocHpmSe
 AmpSum2SvTocHpmSe = AmpTreeSvTocHpmSe + 2._dp*AmpWaveSvTocHpmSe + 2._dp*AmpVertexSvTocHpmSe
Else
 AmpSumSvTocHpmSe = AmpTreeSvTocHpmSe + AmpWaveSvTocHpmSe + AmpVertexSvTocHpmSe
 AmpSum2SvTocHpmSe = AmpTreeSvTocHpmSe + AmpWaveSvTocHpmSe + AmpVertexSvTocHpmSe
End If
If (OnlyTreeLevelContributions) Then
 AmpSumSvTocHpmSe = AmpTreeSvTocHpmSe
 AmpSum2SvTocHpmSe = AmpTreeSvTocHpmSe
End if
Do gt1=1,3
i4 = isave
  Do gt2=2,2
    Do gt3=1,6
If (((OSkinematics).and.(Abs(MSvOS(gt1)).gt.(Abs(MHpmOS(gt2))+Abs(MSeOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MSv(gt1)).gt.(Abs(MHpm(gt2))+Abs(MSe(gt3)))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2, gt3
  AmpSum2SvTocHpmSe = AmpTreeSvTocHpmSe
If (OSkinematics) Then
  Call SquareAmp_StoSS(MSvOS(gt1),MHpmOS(gt2),MSeOS(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
Else
  Call SquareAmp_StoSS(MSv(gt1),MHpm(gt2),MSe(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x TREE: ",AmpSqSvTocHpmSe(gt1, gt2, gt3)
  AmpSum2SvTocHpmSe = 2._dp*AmpWaveSvTocHpmSe
If (OSkinematics) Then
  Call SquareAmp_StoSS(MSvOS(gt1),MHpmOS(gt2),MSeOS(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
Else
  Call SquareAmp_StoSS(MSv(gt1),MHpm(gt2),MSe(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqSvTocHpmSe(gt1, gt2, gt3)
  AmpSum2SvTocHpmSe = 2._dp*AmpVertexSvTocHpmSe
If (OSkinematics) Then
  Call SquareAmp_StoSS(MSvOS(gt1),MHpmOS(gt2),MSeOS(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
Else
  Call SquareAmp_StoSS(MSv(gt1),MHpm(gt2),MSe(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqSvTocHpmSe(gt1, gt2, gt3)
  AmpSum2SvTocHpmSe = AmpTreeSvTocHpmSe + 2._dp*AmpWaveSvTocHpmSe + 2._dp*AmpVertexSvTocHpmSe
If (OSkinematics) Then
  Call SquareAmp_StoSS(MSvOS(gt1),MHpmOS(gt2),MSeOS(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
Else
  Call SquareAmp_StoSS(MSv(gt1),MHpm(gt2),MSe(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqSvTocHpmSe(gt1, gt2, gt3)
 End if
If (OSkinematics) Then
  AmpSum2SvTocHpmSe = AmpTreeSvTocHpmSe
  Call SquareAmp_StoSS(MSvOS(gt1),MHpmOS(gt2),MSeOS(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
  AmpSqTreeSvTocHpmSe(gt1, gt2, gt3) = AmpSqSvTocHpmSe(gt1, gt2, gt3)
  AmpSum2SvTocHpmSe = + 2._dp*AmpWaveSvTocHpmSe + 2._dp*AmpVertexSvTocHpmSe
  Call SquareAmp_StoSS(MSvOS(gt1),MHpmOS(gt2),MSeOS(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
  AmpSqSvTocHpmSe(gt1, gt2, gt3) = AmpSqSvTocHpmSe(gt1, gt2, gt3) + AmpSqTreeSvTocHpmSe(gt1, gt2, gt3)
Else
  AmpSum2SvTocHpmSe = AmpTreeSvTocHpmSe
  Call SquareAmp_StoSS(MSv(gt1),MHpm(gt2),MSe(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
  AmpSqTreeSvTocHpmSe(gt1, gt2, gt3) = AmpSqSvTocHpmSe(gt1, gt2, gt3)
  AmpSum2SvTocHpmSe = + 2._dp*AmpWaveSvTocHpmSe + 2._dp*AmpVertexSvTocHpmSe
  Call SquareAmp_StoSS(MSv(gt1),MHpm(gt2),MSe(gt3),AmpSumSvTocHpmSe(gt1, gt2, gt3),AmpSum2SvTocHpmSe(gt1, gt2, gt3),AmpSqSvTocHpmSe(gt1, gt2, gt3))
  AmpSqSvTocHpmSe(gt1, gt2, gt3) = AmpSqSvTocHpmSe(gt1, gt2, gt3) + AmpSqTreeSvTocHpmSe(gt1, gt2, gt3)
End if
Else
  AmpSqSvTocHpmSe(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 1._dp
If (AmpSqSvTocHpmSe(gt1, gt2, gt3).eq.0._dp) Then
  gP1LSv(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSvOS(gt1),MHpmOS(gt2),MSeOS(gt3),helfactor*AmpSqSvTocHpmSe(gt1, gt2, gt3))
Else
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSv(gt1),MHpm(gt2),MSe(gt3),helfactor*AmpSqSvTocHpmSe(gt1, gt2, gt3))
End if
If ((Abs(MRPSvTocHpmSe(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGSvTocHpmSe(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LSv(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPSvTocHpmSe(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGSvTocHpmSe(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPSvTocHpmSe(gt1, gt2, gt3) + MRGSvTocHpmSe(gt1, gt2, gt3))
  gP1LSv(gt1,i4) = gP1LSv(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPSvTocHpmSe(gt1, gt2, gt3) + MRGSvTocHpmSe(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LSv(gt1,i4)
  End if
End if
End if
i4=i4+1

    End do
  End do
If (gt1.eq.3) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Se Conjg(VWm)
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_SvToSecVWm(cplSecSvcVWm,MSe,MSv,MVWm,MSe2,               &
& MSv2,MVWm2,AmpTreeSvToSecVWm)

  Else
Call Amplitude_Tree_NonUMSSM_SvToSecVWm(ZcplSecSvcVWm,MSe,MSv,MVWm,MSe2,              &
& MSv2,MVWm2,AmpTreeSvToSecVWm)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_SvToSecVWm(MLambda,em,gs,cplSecSvcVWm,MSeOS,MSvOS,           &
& MVWmOS,MRPSvToSecVWm,MRGSvToSecVWm)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_SvToSecVWm(MLambda,em,gs,ZcplSecSvcVWm,MSeOS,MSvOS,          &
& MVWmOS,MRPSvToSecVWm,MRGSvToSecVWm)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_SvToSecVWm(MLambda,em,gs,cplSecSvcVWm,MSe,MSv,               &
& MVWm,MRPSvToSecVWm,MRGSvToSecVWm)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_SvToSecVWm(MLambda,em,gs,ZcplSecSvcVWm,MSe,MSv,              &
& MVWm,MRPSvToSecVWm,MRGSvToSecVWm)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_SvToSecVWm(cplSecSvcVWm,ctcplSecSvcVWm,MSe,              &
& MSe2,MSv,MSv2,MVWm,MVWm2,ZfSe,ZfSv,ZfVWm,AmpWaveSvToSecVWm)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_SvToSecVWm(MAh,MCha,MChi,MFe,MFv,Mhh,MHpm,             &
& MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,             &
& MVP2,MVWm2,MVZ2,MVZp2,cplAhHpmcVWm,cplAhSecSe,cplChiChacVWmL,cplChiChacVWmR,           &
& cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,cplcChaFecSvL,cplcChaFecSvR,       &
& cplcFvFecVWmL,cplcFvFecVWmR,cplhhHpmcVWm,cplhhSecSe,cplhhSvcSv,cplhhcVWmVWm,           &
& cplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,cplSecSeVP,cplSecSeVZ,cplSecSeVZp,             &
& cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,          &
& cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,cplSecSvcVWmVP1,cplSecSecVWmVWm1,              &
& cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,cplSvcSvcVWmVWm1,AmpVertexSvToSecVWm)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSecVWm(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,             &
& MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplAhHpmcVWm,cplAhSecSe,cplChiChacVWmL,cplChiChacVWmR,      &
& cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,cplcChaFecSvL,cplcChaFecSvR,       &
& cplcFvFecVWmL,cplcFvFecVWmR,cplhhHpmcVWm,cplhhSecSe,cplhhSvcSv,cplhhcVWmVWm,           &
& cplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,cplSecSeVP,cplSecSeVZ,cplSecSeVZp,             &
& cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,          &
& cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,cplSecSvcVWmVP1,cplSecSecVWmVWm1,              &
& cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,cplSvcSvcVWmVWm1,AmpVertexIRdrSvToSecVWm)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSecVWm(MAhOS,MChaOS,MChiOS,MFeOS,               &
& MFvOS,MhhOS,MHpmOS,MSeOS,MSvOS,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,MChi2OS,         &
& MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSe2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplAhHpmcVWm,   &
& cplAhSecSe,cplChiChacVWmL,cplChiChacVWmR,cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,       &
& cplcFeChiSeR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecVWmL,cplcFvFecVWmR,cplhhHpmcVWm,     &
& cplhhSecSe,cplhhSvcSv,cplhhcVWmVWm,GosZcplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,        &
& cplSecSeVP,cplSecSeVZ,cplSecSeVZp,cplcChacFvSeL,cplcChacFvSeR,GosZcplSecHpmcSv,        &
& ZcplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,          &
& cplSecSvcVWmVP1,cplSecSecVWmVWm1,cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,cplSvcSvcVWmVWm1,    &
& AmpVertexIRosSvToSecVWm)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSecVWm(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,             &
& MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplAhHpmcVWm,cplAhSecSe,cplChiChacVWmL,cplChiChacVWmR,      &
& cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,cplcChaFecSvL,cplcChaFecSvR,       &
& cplcFvFecVWmL,cplcFvFecVWmR,cplhhHpmcVWm,cplhhSecSe,cplhhSvcSv,cplhhcVWmVWm,           &
& GZcplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,cplSecSeVP,cplSecSeVZ,cplSecSeVZp,           &
& cplcChacFvSeL,cplcChacFvSeR,GZcplSecHpmcSv,ZcplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,       &
& cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,cplSecSvcVWmVP1,cplSecSecVWmVWm1,              &
& cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,cplSvcSvcVWmVWm1,AmpVertexIRosSvToSecVWm)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSecVWm(MAhOS,MChaOS,MChiOS,MFeOS,               &
& MFvOS,MhhOS,MHpmOS,MSeOS,MSvOS,MVP,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,MChi2OS,         &
& MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSe2OS,MSv2OS,MVP2,MVWm2OS,MVZ2OS,MVZp2OS,cplAhHpmcVWm,   &
& cplAhSecSe,cplChiChacVWmL,cplChiChacVWmR,cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,       &
& cplcFeChiSeR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFecVWmL,cplcFvFecVWmR,cplhhHpmcVWm,     &
& cplhhSecSe,cplhhSvcSv,cplhhcVWmVWm,GcplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,           &
& cplSecSeVP,cplSecSeVZ,cplSecSeVZp,cplcChacFvSeL,cplcChacFvSeR,GcplSecHpmcSv,           &
& cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,           &
& cplSecSvcVWmVP1,cplSecSecVWmVWm1,cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,cplSvcSvcVWmVWm1,    &
& AmpVertexIRosSvToSecVWm)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSecVWm(MAh,MCha,MChi,MFe,MFv,Mhh,               &
& MHpm,MSe,MSv,MVP,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,             &
& MSv2,MVP2,MVWm2,MVZ2,MVZp2,cplAhHpmcVWm,cplAhSecSe,cplChiChacVWmL,cplChiChacVWmR,      &
& cplChiFvcSvL,cplChiFvcSvR,cplcFeChiSeL,cplcFeChiSeR,cplcChaFecSvL,cplcChaFecSvR,       &
& cplcFvFecVWmL,cplcFvFecVWmR,cplhhHpmcVWm,cplhhSecSe,cplhhSvcSv,cplhhcVWmVWm,           &
& cplHpmcVWmVP,cplHpmcVWmVZ,cplHpmcVWmVZp,cplSecSeVP,cplSecSeVZ,cplSecSeVZp,             &
& cplcChacFvSeL,cplcChacFvSeR,cplSecHpmcSv,cplSecSvcVWm,cplSvcSvVZ,cplSvcSvVZp,          &
& cplcVWmVPVWm,cplcVWmVWmVZ,cplcVWmVWmVZp,cplSecSvcVWmVP1,cplSecSecVWmVWm1,              &
& cplSecSvcVWmVZ1,cplSecSvcVWmVZp1,cplSvcSvcVWmVWm1,AmpVertexIRosSvToSecVWm)

 End if
 End if
AmpVertexSvToSecVWm = AmpVertexSvToSecVWm -  AmpVertexIRdrSvToSecVWm! +  AmpVertexIRosSvToSecVWm ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZSvToSecVWm=0._dp
AmpVertexZSvToSecVWm=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToSecVWm(:,gt2,:) = AmpWaveZSvToSecVWm(:,gt2,:)+ZRUZVc(gt2,gt1)*AmpWaveSvToSecVWm(:,gt1,:)
AmpVertexZSvToSecVWm(:,gt2,:)= AmpVertexZSvToSecVWm(:,gt2,:) + ZRUZVc(gt2,gt1)*AmpVertexSvToSecVWm(:,gt1,:)
 End Do
End Do
AmpWaveSvToSecVWm=AmpWaveZSvToSecVWm
AmpVertexSvToSecVWm= AmpVertexZSvToSecVWm
! Final State 1
AmpWaveZSvToSecVWm=0._dp
AmpVertexZSvToSecVWm=0._dp
Do gt1=1,6
  Do gt2=1,6
AmpWaveZSvToSecVWm(:,:,gt2) = AmpWaveZSvToSecVWm(:,:,gt2)+ZRUZE(gt2,gt1)*AmpWaveSvToSecVWm(:,:,gt1)
AmpVertexZSvToSecVWm(:,:,gt2)= AmpVertexZSvToSecVWm(:,:,gt2)+ZRUZE(gt2,gt1)*AmpVertexSvToSecVWm(:,:,gt1)
 End Do
End Do
AmpWaveSvToSecVWm=AmpWaveZSvToSecVWm
AmpVertexSvToSecVWm= AmpVertexZSvToSecVWm
End if
If (ShiftIRdiv) Then
AmpVertexSvToSecVWm = AmpVertexSvToSecVWm  +  AmpVertexIRosSvToSecVWm
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Sv->Se conj[VWm] -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumSvToSecVWm = AmpTreeSvToSecVWm
 AmpSum2SvToSecVWm = AmpTreeSvToSecVWm + 2._dp*AmpWaveSvToSecVWm + 2._dp*AmpVertexSvToSecVWm
Else
 AmpSumSvToSecVWm = AmpTreeSvToSecVWm + AmpWaveSvToSecVWm + AmpVertexSvToSecVWm
 AmpSum2SvToSecVWm = AmpTreeSvToSecVWm + AmpWaveSvToSecVWm + AmpVertexSvToSecVWm
End If
If (OnlyTreeLevelContributions) Then
 AmpSumSvToSecVWm = AmpTreeSvToSecVWm
 AmpSum2SvToSecVWm = AmpTreeSvToSecVWm
End if
Do gt1=1,3
i4 = isave
  Do gt2=1,6
If (((OSkinematics).and.(Abs(MSvOS(gt1)).gt.(Abs(MSeOS(gt2))+Abs(MVWmOS)))).or.((.not.OSkinematics).and.(Abs(MSv(gt1)).gt.(Abs(MSe(gt2))+Abs(MVWm))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2
  AmpSum2SvToSecVWm = AmpTreeSvToSecVWm
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSeOS(gt2),MVWmOS,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSe(gt2),MVWm,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
End if
  Write(*,*) "TREE x TREE: ",AmpSqSvToSecVWm(gt1, gt2)
  AmpSum2SvToSecVWm = 2._dp*AmpWaveSvToSecVWm
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSeOS(gt2),MVWmOS,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSe(gt2),MVWm,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqSvToSecVWm(gt1, gt2)
  AmpSum2SvToSecVWm = 2._dp*AmpVertexSvToSecVWm
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSeOS(gt2),MVWmOS,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSe(gt2),MVWm,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqSvToSecVWm(gt1, gt2)
  AmpSum2SvToSecVWm = AmpTreeSvToSecVWm + 2._dp*AmpWaveSvToSecVWm + 2._dp*AmpVertexSvToSecVWm
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSeOS(gt2),MVWmOS,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSe(gt2),MVWm,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqSvToSecVWm(gt1, gt2)
 End if
If (OSkinematics) Then
  AmpSum2SvToSecVWm = AmpTreeSvToSecVWm
  Call SquareAmp_StoSV(MSvOS(gt1),MSeOS(gt2),MVWmOS,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
  AmpSqTreeSvToSecVWm(gt1, gt2) = AmpSqSvToSecVWm(gt1, gt2)
  AmpSum2SvToSecVWm = + 2._dp*AmpWaveSvToSecVWm + 2._dp*AmpVertexSvToSecVWm
  Call SquareAmp_StoSV(MSvOS(gt1),MSeOS(gt2),MVWmOS,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
  AmpSqSvToSecVWm(gt1, gt2) = AmpSqSvToSecVWm(gt1, gt2) + AmpSqTreeSvToSecVWm(gt1, gt2)
Else
  AmpSum2SvToSecVWm = AmpTreeSvToSecVWm
  Call SquareAmp_StoSV(MSv(gt1),MSe(gt2),MVWm,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
  AmpSqTreeSvToSecVWm(gt1, gt2) = AmpSqSvToSecVWm(gt1, gt2)
  AmpSum2SvToSecVWm = + 2._dp*AmpWaveSvToSecVWm + 2._dp*AmpVertexSvToSecVWm
  Call SquareAmp_StoSV(MSv(gt1),MSe(gt2),MVWm,AmpSumSvToSecVWm(:,gt1, gt2),AmpSum2SvToSecVWm(:,gt1, gt2),AmpSqSvToSecVWm(gt1, gt2))
  AmpSqSvToSecVWm(gt1, gt2) = AmpSqSvToSecVWm(gt1, gt2) + AmpSqTreeSvToSecVWm(gt1, gt2)
End if
Else
  AmpSqSvToSecVWm(gt1, gt2) = 0._dp
End if

! Calculate Partial widths
helfactor = 1._dp
If (AmpSqSvToSecVWm(gt1, gt2).eq.0._dp) Then
  gP1LSv(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSvOS(gt1),MSeOS(gt2),MVWmOS,helfactor*AmpSqSvToSecVWm(gt1, gt2))
Else
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSv(gt1),MSe(gt2),MVWm,helfactor*AmpSqSvToSecVWm(gt1, gt2))
End if
If ((Abs(MRPSvToSecVWm(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGSvToSecVWm(gt1, gt2)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LSv(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPSvToSecVWm(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGSvToSecVWm(gt1, gt2)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPSvToSecVWm(gt1, gt2) + MRGSvToSecVWm(gt1, gt2))
  gP1LSv(gt1,i4) = gP1LSv(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPSvToSecVWm(gt1, gt2) + MRGSvToSecVWm(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LSv(gt1,i4)
  End if
End if
End if
i4=i4+1

  End do
If (gt1.eq.3) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Sv VZ
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_SvToSvVZ(cplSvcSvVZ,MSv,MVZ,MSv2,MVZ2,AmpTreeSvToSvVZ)

  Else
Call Amplitude_Tree_NonUMSSM_SvToSvVZ(ZcplSvcSvVZ,MSv,MVZ,MSv2,MVZ2,AmpTreeSvToSvVZ)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_SvToSvVZ(MLambda,em,gs,cplSvcSvVZ,MSvOS,MVZOS,               &
& MRPSvToSvVZ,MRGSvToSvVZ)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_SvToSvVZ(MLambda,em,gs,ZcplSvcSvVZ,MSvOS,MVZOS,              &
& MRPSvToSvVZ,MRGSvToSvVZ)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_SvToSvVZ(MLambda,em,gs,cplSvcSvVZ,MSv,MVZ,MRPSvToSvVZ,       &
& MRGSvToSvVZ)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_SvToSvVZ(MLambda,em,gs,ZcplSvcSvVZ,MSv,MVZ,MRPSvToSvVZ,      &
& MRGSvToSvVZ)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_SvToSvVZ(cplSvcSvVZ,cplSvcSvVZp,ctcplSvcSvVZ,            &
& ctcplSvcSvVZp,MSv,MSv2,MVZ,MVZ2,ZfSv,ZfVZ,ZfVZpVZ,AmpWaveSvToSvVZ)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_SvToSvVZ(MCha,MChi,MFe,MFv,Mhh,MHpm,MSe,               &
& MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,               &
& MVZp2,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZL,cplcChaChaVZR,cplChiChiVZL,              &
& cplChiChiVZR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,cplcFeFeVZL,          &
& cplcFeFeVZR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZL,cplcFvFvVZR,cplhhSvcSv,            &
& cplhhVZVZ,cplhhVZVZp,cplHpmSvcSe,cplHpmcHpmVZ,cplHpmcVWmVZ,cplSecSeVZ,cplSecHpmcSv,    &
& cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVWmVZ,cplcVWmVWmVZ,             &
& cplSecSvcVWmVZ1,cplSvcSeVWmVZ1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,AmpVertexSvToSvVZ)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZ(MCha,MChi,MFe,MFv,Mhh,MHpm,MSe,            &
& MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,               &
& MVZp2,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZL,cplcChaChaVZR,cplChiChiVZL,              &
& cplChiChiVZR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,cplcFeFeVZL,          &
& cplcFeFeVZR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZL,cplcFvFvVZR,cplhhSvcSv,            &
& cplhhVZVZ,cplhhVZVZp,cplHpmSvcSe,cplHpmcHpmVZ,cplHpmcVWmVZ,cplSecSeVZ,cplSecHpmcSv,    &
& cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVWmVZ,cplcVWmVWmVZ,             &
& cplSecSvcVWmVZ1,cplSvcSeVWmVZ1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,AmpVertexIRdrSvToSvVZ)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZ(MChaOS,MChiOS,MFeOS,MFvOS,MhhOS,           &
& MHpmOS,MSeOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MCha2OS,MChi2OS,MFe2OS,MFv2OS,Mhh2OS,           &
& MHpm2OS,MSe2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZL,  &
& cplcChaChaVZR,cplChiChiVZL,cplChiChiVZR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,        &
& cplcFvChiSvR,cplcFeFeVZL,cplcFeFeVZR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZL,          &
& cplcFvFvVZR,cplhhSvcSv,cplhhVZVZ,cplhhVZVZp,cplHpmSvcSe,cplHpmcHpmVZ,cplHpmcVWmVZ,     &
& cplSecSeVZ,cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,ZcplSvcSvVZ,cplSvcSvVZp,              &
& cplcHpmVWmVZ,cplcVWmVWmVZ,cplSecSvcVWmVZ1,cplSvcSeVWmVZ1,cplSvcSvVZVZ1,cplSvcSvVZVZp1, &
& AmpVertexIRosSvToSvVZ)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZ(MCha,MChi,MFe,MFv,Mhh,MHpm,MSe,            &
& MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,               &
& MVZp2,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZL,cplcChaChaVZR,cplChiChiVZL,              &
& cplChiChiVZR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,cplcFeFeVZL,          &
& cplcFeFeVZR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZL,cplcFvFvVZR,cplhhSvcSv,            &
& cplhhVZVZ,cplhhVZVZp,cplHpmSvcSe,cplHpmcHpmVZ,cplHpmcVWmVZ,cplSecSeVZ,cplSecHpmcSv,    &
& cplSecSvcVWm,cplSvcSeVWm,ZcplSvcSvVZ,cplSvcSvVZp,cplcHpmVWmVZ,cplcVWmVWmVZ,            &
& cplSecSvcVWmVZ1,cplSvcSeVWmVZ1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,AmpVertexIRosSvToSvVZ)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZ(MChaOS,MChiOS,MFeOS,MFvOS,MhhOS,           &
& MHpmOS,MSeOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MCha2OS,MChi2OS,MFe2OS,MFv2OS,Mhh2OS,           &
& MHpm2OS,MSe2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZL,  &
& cplcChaChaVZR,cplChiChiVZL,cplChiChiVZR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,        &
& cplcFvChiSvR,cplcFeFeVZL,cplcFeFeVZR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZL,          &
& cplcFvFvVZR,cplhhSvcSv,cplhhVZVZ,cplhhVZVZp,cplHpmSvcSe,cplHpmcHpmVZ,cplHpmcVWmVZ,     &
& cplSecSeVZ,cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,               &
& cplcHpmVWmVZ,cplcVWmVWmVZ,cplSecSvcVWmVZ1,cplSvcSeVWmVZ1,cplSvcSvVZVZ1,cplSvcSvVZVZp1, &
& AmpVertexIRosSvToSvVZ)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZ(MCha,MChi,MFe,MFv,Mhh,MHpm,MSe,            &
& MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,               &
& MVZp2,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZL,cplcChaChaVZR,cplChiChiVZL,              &
& cplChiChiVZR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,cplcFeFeVZL,          &
& cplcFeFeVZR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZL,cplcFvFvVZR,cplhhSvcSv,            &
& cplhhVZVZ,cplhhVZVZp,cplHpmSvcSe,cplHpmcHpmVZ,cplHpmcVWmVZ,cplSecSeVZ,cplSecHpmcSv,    &
& cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVWmVZ,cplcVWmVWmVZ,             &
& cplSecSvcVWmVZ1,cplSvcSeVWmVZ1,cplSvcSvVZVZ1,cplSvcSvVZVZp1,AmpVertexIRosSvToSvVZ)

 End if
 End if
AmpVertexSvToSvVZ = AmpVertexSvToSvVZ -  AmpVertexIRdrSvToSvVZ! +  AmpVertexIRosSvToSvVZ ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZSvToSvVZ=0._dp
AmpVertexZSvToSvVZ=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToSvVZ(:,gt2,:) = AmpWaveZSvToSvVZ(:,gt2,:)+ZRUZVc(gt2,gt1)*AmpWaveSvToSvVZ(:,gt1,:)
AmpVertexZSvToSvVZ(:,gt2,:)= AmpVertexZSvToSvVZ(:,gt2,:) + ZRUZVc(gt2,gt1)*AmpVertexSvToSvVZ(:,gt1,:)
 End Do
End Do
AmpWaveSvToSvVZ=AmpWaveZSvToSvVZ
AmpVertexSvToSvVZ= AmpVertexZSvToSvVZ
! Final State 1
AmpWaveZSvToSvVZ=0._dp
AmpVertexZSvToSvVZ=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToSvVZ(:,:,gt2) = AmpWaveZSvToSvVZ(:,:,gt2)+ZRUZV(gt2,gt1)*AmpWaveSvToSvVZ(:,:,gt1)
AmpVertexZSvToSvVZ(:,:,gt2)= AmpVertexZSvToSvVZ(:,:,gt2)+ZRUZV(gt2,gt1)*AmpVertexSvToSvVZ(:,:,gt1)
 End Do
End Do
AmpWaveSvToSvVZ=AmpWaveZSvToSvVZ
AmpVertexSvToSvVZ= AmpVertexZSvToSvVZ
End if
If (ShiftIRdiv) Then
AmpVertexSvToSvVZ = AmpVertexSvToSvVZ  +  AmpVertexIRosSvToSvVZ
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Sv->Sv VZ -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumSvToSvVZ = AmpTreeSvToSvVZ
 AmpSum2SvToSvVZ = AmpTreeSvToSvVZ + 2._dp*AmpWaveSvToSvVZ + 2._dp*AmpVertexSvToSvVZ
Else
 AmpSumSvToSvVZ = AmpTreeSvToSvVZ + AmpWaveSvToSvVZ + AmpVertexSvToSvVZ
 AmpSum2SvToSvVZ = AmpTreeSvToSvVZ + AmpWaveSvToSvVZ + AmpVertexSvToSvVZ
End If
If (OnlyTreeLevelContributions) Then
 AmpSumSvToSvVZ = AmpTreeSvToSvVZ
 AmpSum2SvToSvVZ = AmpTreeSvToSvVZ
End if
Do gt1=1,3
i4 = isave
  Do gt2=1,3
If (((OSkinematics).and.(Abs(MSvOS(gt1)).gt.(Abs(MSvOS(gt2))+Abs(MVZOS)))).or.((.not.OSkinematics).and.(Abs(MSv(gt1)).gt.(Abs(MSv(gt2))+Abs(MVZ))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2
  AmpSum2SvToSvVZ = AmpTreeSvToSvVZ
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZOS,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZ,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
End if
  Write(*,*) "TREE x TREE: ",AmpSqSvToSvVZ(gt1, gt2)
  AmpSum2SvToSvVZ = 2._dp*AmpWaveSvToSvVZ
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZOS,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZ,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqSvToSvVZ(gt1, gt2)
  AmpSum2SvToSvVZ = 2._dp*AmpVertexSvToSvVZ
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZOS,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZ,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqSvToSvVZ(gt1, gt2)
  AmpSum2SvToSvVZ = AmpTreeSvToSvVZ + 2._dp*AmpWaveSvToSvVZ + 2._dp*AmpVertexSvToSvVZ
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZOS,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZ,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqSvToSvVZ(gt1, gt2)
 End if
If (OSkinematics) Then
  AmpSum2SvToSvVZ = AmpTreeSvToSvVZ
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZOS,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
  AmpSqTreeSvToSvVZ(gt1, gt2) = AmpSqSvToSvVZ(gt1, gt2)
  AmpSum2SvToSvVZ = + 2._dp*AmpWaveSvToSvVZ + 2._dp*AmpVertexSvToSvVZ
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZOS,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
  AmpSqSvToSvVZ(gt1, gt2) = AmpSqSvToSvVZ(gt1, gt2) + AmpSqTreeSvToSvVZ(gt1, gt2)
Else
  AmpSum2SvToSvVZ = AmpTreeSvToSvVZ
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZ,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
  AmpSqTreeSvToSvVZ(gt1, gt2) = AmpSqSvToSvVZ(gt1, gt2)
  AmpSum2SvToSvVZ = + 2._dp*AmpWaveSvToSvVZ + 2._dp*AmpVertexSvToSvVZ
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZ,AmpSumSvToSvVZ(:,gt1, gt2),AmpSum2SvToSvVZ(:,gt1, gt2),AmpSqSvToSvVZ(gt1, gt2))
  AmpSqSvToSvVZ(gt1, gt2) = AmpSqSvToSvVZ(gt1, gt2) + AmpSqTreeSvToSvVZ(gt1, gt2)
End if
Else
  AmpSqSvToSvVZ(gt1, gt2) = 0._dp
End if

! Calculate Partial widths
helfactor = 1._dp
If (AmpSqSvToSvVZ(gt1, gt2).eq.0._dp) Then
  gP1LSv(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSvOS(gt1),MSvOS(gt2),MVZOS,helfactor*AmpSqSvToSvVZ(gt1, gt2))
Else
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSv(gt1),MSv(gt2),MVZ,helfactor*AmpSqSvToSvVZ(gt1, gt2))
End if
If ((Abs(MRPSvToSvVZ(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGSvToSvVZ(gt1, gt2)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LSv(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPSvToSvVZ(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGSvToSvVZ(gt1, gt2)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPSvToSvVZ(gt1, gt2) + MRGSvToSvVZ(gt1, gt2))
  gP1LSv(gt1,i4) = gP1LSv(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPSvToSvVZ(gt1, gt2) + MRGSvToSvVZ(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LSv(gt1,i4)
  End if
End if
End if
i4=i4+1

  End do
If (gt1.eq.3) isave = i4
End do
End If
If (.not.CalcLoopDecay_LoopInducedOnly) Then
!----------------
! Sv VZp
!----------------

!Tree Level
  If (.not.ExternalZfactors) Then
Call Amplitude_Tree_NonUMSSM_SvToSvVZp(cplSvcSvVZp,MSv,MVZp,MSv2,MVZp2,               &
& AmpTreeSvToSvVZp)

  Else
Call Amplitude_Tree_NonUMSSM_SvToSvVZp(ZcplSvcSvVZp,MSv,MVZp,MSv2,MVZp2,              &
& AmpTreeSvToSvVZp)

  End if


!Real Corrections
If (OSkinematics) Then
  If (.not.ExternalZfactors) Then
 ! OS and no Z-factors
Call Gamma_Real_NonUMSSM_SvToSvVZp(MLambda,em,gs,cplSvcSvVZp,MSvOS,MVZpOS,            &
& MRPSvToSvVZp,MRGSvToSvVZp)

  Else
 ! OS and Z-factors
Call Gamma_Real_NonUMSSM_SvToSvVZp(MLambda,em,gs,ZcplSvcSvVZp,MSvOS,MVZpOS,           &
& MRPSvToSvVZp,MRGSvToSvVZp)

  End if
Else
 ! DR and no Z-factors
  If (.not.ExternalZfactors) Then
Call Gamma_Real_NonUMSSM_SvToSvVZp(MLambda,em,gs,cplSvcSvVZp,MSv,MVZp,MRPSvToSvVZp,   &
& MRGSvToSvVZp)

  Else
 ! DR and Z-factors
Call Gamma_Real_NonUMSSM_SvToSvVZp(MLambda,em,gs,ZcplSvcSvVZp,MSv,MVZp,               &
& MRPSvToSvVZp,MRGSvToSvVZp)

  End if
End if


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_SvToSvVZp(cplSvcSvVZ,cplSvcSvVZp,ctcplSvcSvVZ,           &
& ctcplSvcSvVZp,MSv,MSv2,MVZ,MVZ2,MVZp,MVZp2,ZfSv,ZfVZp,ZfVZVZp,AmpWaveSvToSvVZp)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_SvToSvVZp(MCha,MChi,MFe,MFv,Mhh,MHpm,MSe,              &
& MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,               &
& MVZp2,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZpL,cplcChaChaVZpR,cplChiChiVZpL,           &
& cplChiChiVZpR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,cplcFeFeVZpL,        &
& cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,         &
& cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSecSeVZp,            &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVWmVZp,            &
& cplcVWmVWmVZp,cplSecSvcVWmVZp1,cplSvcSeVWmVZp1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,         &
& AmpVertexSvToSvVZp)

If (ShiftIRdiv) Then
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZp(MCha,MChi,MFe,MFv,Mhh,MHpm,               &
& MSe,MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,           &
& MVZp2,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZpL,cplcChaChaVZpR,cplChiChiVZpL,           &
& cplChiChiVZpR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,cplcFeFeVZpL,        &
& cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,         &
& cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSecSeVZp,            &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVWmVZp,            &
& cplcVWmVWmVZp,cplSecSvcVWmVZp1,cplSvcSeVWmVZp1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,         &
& AmpVertexIRdrSvToSvVZp)

 If (ExternalZfactors) Then
  If (OSkinematics) Then
 ! OS and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZp(MChaOS,MChiOS,MFeOS,MFvOS,MhhOS,          &
& MHpmOS,MSeOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MCha2OS,MChi2OS,MFe2OS,MFv2OS,Mhh2OS,           &
& MHpm2OS,MSe2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZpL, &
& cplcChaChaVZpR,cplChiChiVZpL,cplChiChiVZpR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,     &
& cplcFvChiSvR,cplcFeFeVZpL,cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZpL,       &
& cplcFvFvVZpR,cplhhSvcSv,cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplHpmcHpmVZp,              &
& cplHpmcVWmVZp,cplSecSeVZp,cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,            &
& ZcplSvcSvVZp,cplcHpmVWmVZp,cplcVWmVWmVZp,cplSecSvcVWmVZp1,cplSvcSeVWmVZp1,             &
& cplSvcSvVZVZp1,cplSvcSvVZpVZp1,AmpVertexIRosSvToSvVZp)

   Else
 ! DR and Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZp(MCha,MChi,MFe,MFv,Mhh,MHpm,               &
& MSe,MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,           &
& MVZp2,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZpL,cplcChaChaVZpR,cplChiChiVZpL,           &
& cplChiChiVZpR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,cplcFeFeVZpL,        &
& cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,         &
& cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSecSeVZp,            &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,ZcplSvcSvVZp,cplcHpmVWmVZp,           &
& cplcVWmVWmVZp,cplSecSvcVWmVZp1,cplSvcSeVWmVZp1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,         &
& AmpVertexIRosSvToSvVZp)

 End if
 Else
  If (OSkinematics) Then
 ! OS and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZp(MChaOS,MChiOS,MFeOS,MFvOS,MhhOS,          &
& MHpmOS,MSeOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MCha2OS,MChi2OS,MFe2OS,MFv2OS,Mhh2OS,           &
& MHpm2OS,MSe2OS,MSv2OS,MVWm2OS,MVZ2OS,MVZp2OS,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZpL, &
& cplcChaChaVZpR,cplChiChiVZpL,cplChiChiVZpR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,     &
& cplcFvChiSvR,cplcFeFeVZpL,cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZpL,       &
& cplcFvFvVZpR,cplhhSvcSv,cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplHpmcHpmVZp,              &
& cplHpmcVWmVZp,cplSecSeVZp,cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,            &
& cplSvcSvVZp,cplcHpmVWmVZp,cplcVWmVWmVZp,cplSecSvcVWmVZp1,cplSvcSeVWmVZp1,              &
& cplSvcSvVZVZp1,cplSvcSvVZpVZp1,AmpVertexIRosSvToSvVZp)

   Else
 ! DR and no Z-factors
Call Amplitude_IR_VERTEX_NonUMSSM_SvToSvVZp(MCha,MChi,MFe,MFv,Mhh,MHpm,               &
& MSe,MSv,MVWm,MVZ,MVZp,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSe2,MSv2,MVWm2,MVZ2,           &
& MVZp2,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVZpL,cplcChaChaVZpR,cplChiChiVZpL,           &
& cplChiChiVZpR,cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,cplcFeFeVZpL,        &
& cplcFeFeVZpR,cplcChaFecSvL,cplcChaFecSvR,cplcFvFvVZpL,cplcFvFvVZpR,cplhhSvcSv,         &
& cplhhVZVZp,cplhhVZpVZp,cplHpmSvcSe,cplHpmcHpmVZp,cplHpmcVWmVZp,cplSecSeVZp,            &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplcHpmVWmVZp,            &
& cplcVWmVWmVZp,cplSecSvcVWmVZp1,cplSvcSeVWmVZp1,cplSvcSvVZVZp1,cplSvcSvVZpVZp1,         &
& AmpVertexIRosSvToSvVZp)

 End if
 End if
AmpVertexSvToSvVZp = AmpVertexSvToSvVZp -  AmpVertexIRdrSvToSvVZp! +  AmpVertexIRosSvToSvVZp ! Shift added later
End if


 ! Add Z-factors to have external fields on-shell
 If (ExternalZfactors) Then
! Decaying particle
AmpWaveZSvToSvVZp=0._dp
AmpVertexZSvToSvVZp=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToSvVZp(:,gt2,:) = AmpWaveZSvToSvVZp(:,gt2,:)+ZRUZVc(gt2,gt1)*AmpWaveSvToSvVZp(:,gt1,:)
AmpVertexZSvToSvVZp(:,gt2,:)= AmpVertexZSvToSvVZp(:,gt2,:) + ZRUZVc(gt2,gt1)*AmpVertexSvToSvVZp(:,gt1,:)
 End Do
End Do
AmpWaveSvToSvVZp=AmpWaveZSvToSvVZp
AmpVertexSvToSvVZp= AmpVertexZSvToSvVZp
! Final State 1
AmpWaveZSvToSvVZp=0._dp
AmpVertexZSvToSvVZp=0._dp
Do gt1=1,3
  Do gt2=1,3
AmpWaveZSvToSvVZp(:,:,gt2) = AmpWaveZSvToSvVZp(:,:,gt2)+ZRUZV(gt2,gt1)*AmpWaveSvToSvVZp(:,:,gt1)
AmpVertexZSvToSvVZp(:,:,gt2)= AmpVertexZSvToSvVZp(:,:,gt2)+ZRUZV(gt2,gt1)*AmpVertexSvToSvVZp(:,:,gt1)
 End Do
End Do
AmpWaveSvToSvVZp=AmpWaveZSvToSvVZp
AmpVertexSvToSvVZp= AmpVertexZSvToSvVZp
End if
If (ShiftIRdiv) Then
AmpVertexSvToSvVZp = AmpVertexSvToSvVZp  +  AmpVertexIRosSvToSvVZp
End if



 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Sv->Sv VZp -----------------------"
End if
If (.not.SquareFullAmplitudeDecays) Then
 AmpSumSvToSvVZp = AmpTreeSvToSvVZp
 AmpSum2SvToSvVZp = AmpTreeSvToSvVZp + 2._dp*AmpWaveSvToSvVZp + 2._dp*AmpVertexSvToSvVZp
Else
 AmpSumSvToSvVZp = AmpTreeSvToSvVZp + AmpWaveSvToSvVZp + AmpVertexSvToSvVZp
 AmpSum2SvToSvVZp = AmpTreeSvToSvVZp + AmpWaveSvToSvVZp + AmpVertexSvToSvVZp
End If
If (OnlyTreeLevelContributions) Then
 AmpSumSvToSvVZp = AmpTreeSvToSvVZp
 AmpSum2SvToSvVZp = AmpTreeSvToSvVZp
End if
Do gt1=1,3
i4 = isave
  Do gt2=1,3
If (((OSkinematics).and.(Abs(MSvOS(gt1)).gt.(Abs(MSvOS(gt2))+Abs(MVZpOS)))).or.((.not.OSkinematics).and.(Abs(MSv(gt1)).gt.(Abs(MSv(gt2))+Abs(MVZp))))) Then
 If (DebugLoopDecays) Then
  Write(*,*) gt1, gt2
  AmpSum2SvToSvVZp = AmpTreeSvToSvVZp
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZpOS,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZp,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
End if
  Write(*,*) "TREE x TREE: ",AmpSqSvToSvVZp(gt1, gt2)
  AmpSum2SvToSvVZp = 2._dp*AmpWaveSvToSvVZp
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZpOS,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZp,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
End if
  Write(*,*) "TREE x WAVE: ",AmpSqSvToSvVZp(gt1, gt2)
  AmpSum2SvToSvVZp = 2._dp*AmpVertexSvToSvVZp
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZpOS,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZp,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
End if
  Write(*,*) "TREE x VERTEX: ",AmpSqSvToSvVZp(gt1, gt2)
  AmpSum2SvToSvVZp = AmpTreeSvToSvVZp + 2._dp*AmpWaveSvToSvVZp + 2._dp*AmpVertexSvToSvVZp
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZpOS,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZp,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
End if
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqSvToSvVZp(gt1, gt2)
 End if
If (OSkinematics) Then
  AmpSum2SvToSvVZp = AmpTreeSvToSvVZp
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZpOS,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
  AmpSqTreeSvToSvVZp(gt1, gt2) = AmpSqSvToSvVZp(gt1, gt2)
  AmpSum2SvToSvVZp = + 2._dp*AmpWaveSvToSvVZp + 2._dp*AmpVertexSvToSvVZp
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),MVZpOS,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
  AmpSqSvToSvVZp(gt1, gt2) = AmpSqSvToSvVZp(gt1, gt2) + AmpSqTreeSvToSvVZp(gt1, gt2)
Else
  AmpSum2SvToSvVZp = AmpTreeSvToSvVZp
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZp,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
  AmpSqTreeSvToSvVZp(gt1, gt2) = AmpSqSvToSvVZp(gt1, gt2)
  AmpSum2SvToSvVZp = + 2._dp*AmpWaveSvToSvVZp + 2._dp*AmpVertexSvToSvVZp
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVZp,AmpSumSvToSvVZp(:,gt1, gt2),AmpSum2SvToSvVZp(:,gt1, gt2),AmpSqSvToSvVZp(gt1, gt2))
  AmpSqSvToSvVZp(gt1, gt2) = AmpSqSvToSvVZp(gt1, gt2) + AmpSqTreeSvToSvVZp(gt1, gt2)
End if
Else
  AmpSqSvToSvVZp(gt1, gt2) = 0._dp
End if

! Calculate Partial widths
helfactor = 1._dp
If (AmpSqSvToSvVZp(gt1, gt2).eq.0._dp) Then
  gP1LSv(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSvOS(gt1),MSvOS(gt2),MVZpOS,helfactor*AmpSqSvToSvVZp(gt1, gt2))
Else
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSv(gt1),MSv(gt2),MVZp,helfactor*AmpSqSvToSvVZp(gt1, gt2))
End if
If ((Abs(MRPSvToSvVZp(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGSvToSvVZp(gt1, gt2)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LSv(gt1,i4)
 ! Adding real corrections
If ((Abs(MRPSvToSvVZp(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGSvToSvVZp(gt1, gt2)).gt.1.0E-20_dp)) Then
 If (.not.OnlyTreeLevelContributions) Then
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPSvToSvVZp(gt1, gt2) + MRGSvToSvVZp(gt1, gt2))
  gP1LSv(gt1,i4) = gP1LSv(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPSvToSvVZp(gt1, gt2) + MRGSvToSvVZp(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LSv(gt1,i4)
  End if
End if
End if
i4=i4+1

  End do
If (gt1.eq.3) isave = i4
End do
End If
!----------------
! Ah Sv
!----------------

If (LoopInducedDecaysOS) Then


!Self-energy Corrections


!Vertex Corrections
 If (ExternalZfactors) Then
Call Amplitude_VERTEX_NonUMSSM_SvToAhSv(MAhOS,MChaOS,MChiOS,MFeOS,MFvOS,              &
& MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,               &
& MChi2OS,MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MSv2OS,MVWm2OS,              &
& MVZ2OS,MVZp2OS,cplcChaChaAhL,cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplcFeFeAhL,      &
& cplcFeFeAhR,cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhSdcSd,cplAhSecSe,      &
& cplAhSucSu,cplAhcHpmVWm,cplcFeChaSvL,cplcFeChaSvR,cplChiFvcSvL,cplChiFvcSvR,           &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaFecSvL,cplcChaFecSvR,cplhhSvcSv,cplHpmSvcSe,          &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplAhHpmSvcSe1,           &
& cplAhSecHpmcSv1,cplHpmSvcHpmcSv1,cplSdSvcSdcSvaa,cplSeSvcSecSv1,cplSuSvcSucSvaa,       &
& AmpVertexSvToAhSv)

 Else
Call Amplitude_VERTEX_NonUMSSM_SvToAhSv(MAhOS,MChaOS,MChiOS,MFeOS,MFvOS,              &
& MhhOS,MHpmOS,MSdOS,MSeOS,MSuOS,MSvOS,MVWmOS,MVZOS,MVZpOS,MAh2OS,MCha2OS,               &
& MChi2OS,MFe2OS,MFv2OS,Mhh2OS,MHpm2OS,MSd2OS,MSe2OS,MSu2OS,MSv2OS,MVWm2OS,              &
& MVZ2OS,MVZp2OS,cplcChaChaAhL,cplcChaChaAhR,cplChiChiAhL,cplChiChiAhR,cplcFeFeAhL,      &
& cplcFeFeAhR,cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,cplAhSdcSd,cplAhSecSe,      &
& cplAhSucSu,cplAhcHpmVWm,cplcFeChaSvL,cplcFeChaSvR,cplChiFvcSvL,cplChiFvcSvR,           &
& cplcFvChiSvL,cplcFvChiSvR,cplcChaFecSvL,cplcChaFecSvR,cplhhSvcSv,cplHpmSvcSe,          &
& cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,cplSvcSvVZp,cplAhHpmSvcSe1,           &
& cplAhSecHpmcSv1,cplHpmSvcHpmcSv1,cplSdSvcSdcSvaa,cplSeSvcSecSv1,cplSuSvcSucSvaa,       &
& AmpVertexSvToAhSv)

 End if
Else


!Self-energy Corrections


!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_SvToAhSv(MAh,MCha,MChi,MFe,MFv,Mhh,MHpm,               &
& MSd,MSe,MSu,MSv,MVWm,MVZ,MVZp,MAh2,MCha2,MChi2,MFe2,MFv2,Mhh2,MHpm2,MSd2,              &
& MSe2,MSu2,MSv2,MVWm2,MVZ2,MVZp2,cplcChaChaAhL,cplcChaChaAhR,cplChiChiAhL,              &
& cplChiChiAhR,cplcFeFeAhL,cplcFeFeAhR,cplAhhhVZ,cplAhhhVZp,cplAhHpmcHpm,cplAhHpmcVWm,   &
& cplAhSdcSd,cplAhSecSe,cplAhSucSu,cplAhcHpmVWm,cplcFeChaSvL,cplcFeChaSvR,               &
& cplChiFvcSvL,cplChiFvcSvR,cplcFvChiSvL,cplcFvChiSvR,cplcChaFecSvL,cplcChaFecSvR,       &
& cplhhSvcSv,cplHpmSvcSe,cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,cplSvcSvVZ,               &
& cplSvcSvVZp,cplAhHpmSvcSe1,cplAhSecHpmcSv1,cplHpmSvcHpmcSv1,cplSdSvcSdcSvaa,           &
& cplSeSvcSecSv1,cplSuSvcSucSvaa,AmpVertexSvToAhSv)

End if


 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Sv->Ah Sv -----------------------"
End if
If (OnlyTreeLevelContributions) Then
 AmpSumSvToAhSv = 0._dp
 AmpSum2SvToAhSv = 0._dp
Else
 AmpSumSvToAhSv = AmpVertexSvToAhSv + AmpWaveSvToAhSv
 AmpSum2SvToAhSv = AmpVertexSvToAhSv + AmpWaveSvToAhSv
End If
Do gt1=1,3
i4 = isave
  Do gt2=3,3
    Do gt3=1,3
If (((OSkinematics).and.(Abs(MSvOS(gt1)).gt.(Abs(MAhOS(gt2))+Abs(MSvOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MSv(gt1)).gt.(Abs(MAh(gt2))+Abs(MSv(gt3)))))) Then
If (OSkinematics) Then
  Call SquareAmp_StoSS(MSvOS(gt1),MAhOS(gt2),MSvOS(gt3),AmpSumSvToAhSv(gt1, gt2, gt3),AmpSum2SvToAhSv(gt1, gt2, gt3),AmpSqSvToAhSv(gt1, gt2, gt3))
Else
  Call SquareAmp_StoSS(MSv(gt1),MAh(gt2),MSv(gt3),AmpSumSvToAhSv(gt1, gt2, gt3),AmpSum2SvToAhSv(gt1, gt2, gt3),AmpSqSvToAhSv(gt1, gt2, gt3))
End if
Else
  AmpSqSvToAhSv(gt1, gt2, gt3) = 0._dp
End if

! Calculate Partial widths
helfactor = 1._dp
If (AmpSqSvToAhSv(gt1, gt2, gt3).eq.0._dp) Then
  gP1LSv(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSvOS(gt1),MAhOS(gt2),MSvOS(gt3),helfactor*AmpSqSvToAhSv(gt1, gt2, gt3))
Else
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSv(gt1),MAh(gt2),MSv(gt3),helfactor*AmpSqSvToAhSv(gt1, gt2, gt3))
End if
If ((Abs(MRPSvToAhSv(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGSvToAhSv(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LSv(gt1,i4)
End if
i4=i4+1

    End do
  End do
If (gt1.eq.3) isave = i4
End do
!----------------
! Sv VP
!----------------

If (LoopInducedDecaysOS) Then


!Self-energy Corrections
 If (ExternalZfactors) Then
Call Amplitude_WAVE_NonUMSSM_SvToSvVP(cplSvcSvVZ,cplSvcSvVZp,ctcplSvcSvVZ,            &
& ctcplSvcSvVZp,MSvOS,MSv2OS,MVP,MVP2,MVZOS,MVZ2OS,ZfSv,ZfVP,ZfVZpVP,ZfVZVP,             &
& AmpWaveSvToSvVP)

 Else
Call Amplitude_WAVE_NonUMSSM_SvToSvVP(cplSvcSvVZ,cplSvcSvVZp,ctcplSvcSvVZ,            &
& ctcplSvcSvVZp,MSvOS,MSv2OS,MVP,MVP2,MVZOS,MVZ2OS,ZfSv,ZfVP,ZfVZpVP,ZfVZVP,             &
& AmpWaveSvToSvVP)

 End if


!Vertex Corrections
 If (ExternalZfactors) Then
Call Amplitude_VERTEX_NonUMSSM_SvToSvVP(MChaOS,MFeOS,MHpmOS,MSeOS,MSvOS,              &
& MVP,MVWmOS,MCha2OS,MFe2OS,MHpm2OS,MSe2OS,MSv2OS,MVP2,MVWm2OS,cplcFeChaSvL,             &
& cplcFeChaSvR,cplcChaChaVPL,cplcChaChaVPR,cplcFeFeVPL,cplcFeFeVPR,cplcChaFecSvL,        &
& cplcChaFecSvR,cplHpmSvcSe,cplHpmcHpmVP,cplHpmcVWmVP,cplSecSeVP,cplSecHpmcSv,           &
& cplSecSvcVWm,cplSvcSeVWm,cplcHpmVPVWm,cplcVWmVPVWm,cplSecSvcVWmVP1,cplSvcSeVPVWm1,     &
& AmpVertexSvToSvVP)

 Else
Call Amplitude_VERTEX_NonUMSSM_SvToSvVP(MChaOS,MFeOS,MHpmOS,MSeOS,MSvOS,              &
& MVP,MVWmOS,MCha2OS,MFe2OS,MHpm2OS,MSe2OS,MSv2OS,MVP2,MVWm2OS,cplcFeChaSvL,             &
& cplcFeChaSvR,cplcChaChaVPL,cplcChaChaVPR,cplcFeFeVPL,cplcFeFeVPR,cplcChaFecSvL,        &
& cplcChaFecSvR,cplHpmSvcSe,cplHpmcHpmVP,cplHpmcVWmVP,cplSecSeVP,cplSecHpmcSv,           &
& cplSecSvcVWm,cplSvcSeVWm,cplcHpmVPVWm,cplcVWmVPVWm,cplSecSvcVWmVP1,cplSvcSeVPVWm1,     &
& AmpVertexSvToSvVP)

 End if
Else


!Self-energy Corrections
Call Amplitude_WAVE_NonUMSSM_SvToSvVP(cplSvcSvVZ,cplSvcSvVZp,ctcplSvcSvVZ,            &
& ctcplSvcSvVZp,MSv,MSv2,MVP,MVP2,MVZ,MVZ2,ZfSv,ZfVP,ZfVZpVP,ZfVZVP,AmpWaveSvToSvVP)



!Vertex Corrections
Call Amplitude_VERTEX_NonUMSSM_SvToSvVP(MCha,MFe,MHpm,MSe,MSv,MVP,MVWm,               &
& MCha2,MFe2,MHpm2,MSe2,MSv2,MVP2,MVWm2,cplcFeChaSvL,cplcFeChaSvR,cplcChaChaVPL,         &
& cplcChaChaVPR,cplcFeFeVPL,cplcFeFeVPR,cplcChaFecSvL,cplcChaFecSvR,cplHpmSvcSe,         &
& cplHpmcHpmVP,cplHpmcVWmVP,cplSecSeVP,cplSecHpmcSv,cplSecSvcVWm,cplSvcSeVWm,            &
& cplcHpmVPVWm,cplcVWmVPVWm,cplSecSvcVWmVP1,cplSvcSeVPVWm1,AmpVertexSvToSvVP)

End if


 !Square the amplitude
If (DebugLoopDecays) Then
Write(*,*) "------------------ Sv->Sv VP -----------------------"
End if
If (OnlyTreeLevelContributions) Then
 AmpSumSvToSvVP = 0._dp
 AmpSum2SvToSvVP = 0._dp
Else
 AmpSumSvToSvVP = AmpVertexSvToSvVP + AmpWaveSvToSvVP
 AmpSum2SvToSvVP = AmpVertexSvToSvVP + AmpWaveSvToSvVP
End If
Do gt1=1,3
i4 = isave
  Do gt2=1,3
If (((OSkinematics).and.(Abs(MSvOS(gt1)).gt.(Abs(MSvOS(gt2))+Abs(0.)))).or.((.not.OSkinematics).and.(Abs(MSv(gt1)).gt.(Abs(MSv(gt2))+Abs(MVP))))) Then
If (OSkinematics) Then
  Call SquareAmp_StoSV(MSvOS(gt1),MSvOS(gt2),0._dp,AmpSumSvToSvVP(:,gt1, gt2),AmpSum2SvToSvVP(:,gt1, gt2),AmpSqSvToSvVP(gt1, gt2))
Else
  Call SquareAmp_StoSV(MSv(gt1),MSv(gt2),MVP,AmpSumSvToSvVP(:,gt1, gt2),AmpSum2SvToSvVP(:,gt1, gt2),AmpSqSvToSvVP(gt1, gt2))
End if
Else
  AmpSqSvToSvVP(gt1, gt2) = 0._dp
End if

! Calculate Partial widths
helfactor = 1._dp
If (AmpSqSvToSvVP(gt1, gt2).eq.0._dp) Then
  gP1LSv(gt1,i4) = 0._dp
Else
If (OSkinematics) Then
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSvOS(gt1),MSvOS(gt2),0._dp,helfactor*AmpSqSvToSvVP(gt1, gt2))
Else
  gP1LSv(gt1,i4) = 1._dp*GammaTPS(MSv(gt1),MSv(gt2),MVP,helfactor*AmpSqSvToSvVP(gt1, gt2))
End if
If ((Abs(MRPSvToSvVP(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGSvToSvVP(gt1, gt2)).gt.1.0E-20_dp)) Then
  phasespacefactor = 1._dp
End if
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LSv(gt1,i4)
End if
i4=i4+1

  End do
If (gt1.eq.3) isave = i4
End do
End Subroutine OneLoopDecay_Sv

End Module Wrapper_OneLoopDecay_Sv_NonUMSSM
