! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 4:00 on 15.11.2020   
! ----------------------------------------------------------------------  
 
 
Module RGEs_SplitUMSSM 
 
Use Control 
Use Settings 
Use Model_Data_SplitUMSSM 
Use Mathematics 
 
Logical,Private,Save::OnlyDiagonal

Real(dp),Parameter::id3R(3,3)=& 
   & Reshape(Source=(/& 
   & 1,0,0,& 
 &0,1,0,& 
 &0,0,1& 
 &/),shape=(/3,3/)) 
Contains 


Subroutine GToParameters207(g,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,            & 
& Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep)

Implicit None 
Real(dp), Intent(in) :: g(207) 
Real(dp),Intent(out) :: g1,g2,g3,gp,lam,Tlam,ml42,mHd2,mHu2,me42,ms2

Complex(dp),Intent(out) :: Yd(3,3),y1,y2(2,2),Yu(3,3),Td(3,3),Ty1,Ty2(2,2),Tu(3,3),mq2(3,3),ml92(2,2),           & 
& md2(3,3),mu2(3,3),me92(2,2),M1,M2,M3,M4,Tdp(3,3),Tep(2,2)

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters207' 
 
g1= g(1) 
g2= g(2) 
g3= g(3) 
gp= g(4) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yd(i1,i2) = Cmplx( g(SumI+5), g(SumI+6), dp) 
End Do 
 End Do 
 
y1= Cmplx(g(23),g(24),dp) 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
y2(i1,i2) = Cmplx( g(SumI+25), g(SumI+26), dp) 
End Do 
 End Do 
 
lam= g(33) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+34), g(SumI+35), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Td(i1,i2) = Cmplx( g(SumI+52), g(SumI+53), dp) 
End Do 
 End Do 
 
Ty1= Cmplx(g(70),g(71),dp) 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
Ty2(i1,i2) = Cmplx( g(SumI+72), g(SumI+73), dp) 
End Do 
 End Do 
 
Tlam= g(80) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Tu(i1,i2) = Cmplx( g(SumI+81), g(SumI+82), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
mq2(i1,i2) = Cmplx( g(SumI+99), g(SumI+100), dp) 
End Do 
 End Do 
 
ml42= g(117) 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
ml92(i1,i2) = Cmplx( g(SumI+118), g(SumI+119), dp) 
End Do 
 End Do 
 
mHd2= g(126) 
mHu2= g(127) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
md2(i1,i2) = Cmplx( g(SumI+128), g(SumI+129), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
mu2(i1,i2) = Cmplx( g(SumI+146), g(SumI+147), dp) 
End Do 
 End Do 
 
me42= g(164) 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
me92(i1,i2) = Cmplx( g(SumI+165), g(SumI+166), dp) 
End Do 
 End Do 
 
ms2= g(173) 
M1= Cmplx(g(174),g(175),dp) 
M2= Cmplx(g(176),g(177),dp) 
M3= Cmplx(g(178),g(179),dp) 
M4= Cmplx(g(180),g(181),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Tdp(i1,i2) = Cmplx( g(SumI+182), g(SumI+183), dp) 
End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
Tep(i1,i2) = Cmplx( g(SumI+200), g(SumI+201), dp) 
End Do 
 End Do 
 
Do i1=1,207 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters207

Subroutine ParametersToG207(g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,              & 
& Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,g)

Implicit None 
Real(dp), Intent(out) :: g(207) 
Real(dp), Intent(in) :: g1,g2,g3,gp,lam,Tlam,ml42,mHd2,mHu2,me42,ms2

Complex(dp), Intent(in) :: Yd(3,3),y1,y2(2,2),Yu(3,3),Td(3,3),Ty1,Ty2(2,2),Tu(3,3),mq2(3,3),ml92(2,2),           & 
& md2(3,3),mu2(3,3),me92(2,2),M1,M2,M3,M4,Tdp(3,3),Tep(2,2)

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG207' 
 
g(1) = g1  
g(2) = g2  
g(3) = g3  
g(4) = gp  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+5) = Real(Yd(i1,i2), dp) 
g(SumI+6) = Aimag(Yd(i1,i2)) 
End Do 
End Do 

g(23) = Real(y1,dp)  
g(24) = Aimag(y1)  
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+25) = Real(y2(i1,i2), dp) 
g(SumI+26) = Aimag(y2(i1,i2)) 
End Do 
End Do 

g(33) = lam  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+34) = Real(Yu(i1,i2), dp) 
g(SumI+35) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+52) = Real(Td(i1,i2), dp) 
g(SumI+53) = Aimag(Td(i1,i2)) 
End Do 
End Do 

g(70) = Real(Ty1,dp)  
g(71) = Aimag(Ty1)  
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+72) = Real(Ty2(i1,i2), dp) 
g(SumI+73) = Aimag(Ty2(i1,i2)) 
End Do 
End Do 

g(80) = Tlam  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+81) = Real(Tu(i1,i2), dp) 
g(SumI+82) = Aimag(Tu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+99) = Real(mq2(i1,i2), dp) 
g(SumI+100) = Aimag(mq2(i1,i2)) 
End Do 
End Do 

g(117) = ml42  
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+118) = Real(ml92(i1,i2), dp) 
g(SumI+119) = Aimag(ml92(i1,i2)) 
End Do 
End Do 

g(126) = mHd2  
g(127) = mHu2  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+128) = Real(md2(i1,i2), dp) 
g(SumI+129) = Aimag(md2(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+146) = Real(mu2(i1,i2), dp) 
g(SumI+147) = Aimag(mu2(i1,i2)) 
End Do 
End Do 

g(164) = me42  
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+165) = Real(me92(i1,i2), dp) 
g(SumI+166) = Aimag(me92(i1,i2)) 
End Do 
End Do 

g(173) = ms2  
g(174) = Real(M1,dp)  
g(175) = Aimag(M1)  
g(176) = Real(M2,dp)  
g(177) = Aimag(M2)  
g(178) = Real(M3,dp)  
g(179) = Aimag(M3)  
g(180) = Real(M4,dp)  
g(181) = Aimag(M4)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+182) = Real(Tdp(i1,i2), dp) 
g(SumI+183) = Aimag(Tdp(i1,i2)) 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+200) = Real(Tep(i1,i2), dp) 
g(SumI+201) = Aimag(Tep(i1,i2)) 
End Do 
End Do 

Iname = Iname - 1 
 
End Subroutine ParametersToG207

Subroutine rge207(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,         & 
& Dg3,gp,betagp1,betagp2,Dgp,lam,betalam1,betalam2,Dlam,Tlam,betaTlam1,betaTlam2,        & 
& DTlam,ml42,betaml421,betaml422,Dml42,mHd2,betamHd21,betamHd22,DmHd2,mHu2,              & 
& betamHu21,betamHu22,DmHu2,me42,betame421,betame422,Dme42,ms2,betams21,betams22,Dms2
Complex(dp) :: Yd(3,3),betaYd1(3,3),betaYd2(3,3),DYd(3,3),adjYd(3,3),y1,              & 
& betay11,betay12,Dy1,y2(2,2),betay21(2,2),betay22(2,2),Dy2(2,2),adjy2(2,2)              & 
& ,Yu(3,3),betaYu1(3,3),betaYu2(3,3),DYu(3,3),adjYu(3,3),Td(3,3),betaTd1(3,3)            & 
& ,betaTd2(3,3),DTd(3,3),adjTd(3,3),Ty1,betaTy11,betaTy12,DTy1,Ty2(2,2),betaTy21(2,2)    & 
& ,betaTy22(2,2),DTy2(2,2),adjTy2(2,2),Tu(3,3),betaTu1(3,3),betaTu2(3,3),DTu(3,3)        & 
& ,adjTu(3,3),mq2(3,3),betamq21(3,3),betamq22(3,3),Dmq2(3,3),ml92(2,2),betaml921(2,2)    & 
& ,betaml922(2,2),Dml92(2,2),md2(3,3),betamd21(3,3),betamd22(3,3),Dmd2(3,3)              & 
& ,mu2(3,3),betamu21(3,3),betamu22(3,3),Dmu2(3,3),me92(2,2),betame921(2,2)               & 
& ,betame922(2,2),Dme92(2,2),M1,betaM11,betaM12,DM1,M2,betaM21,betaM22,DM2,              & 
& M3,betaM31,betaM32,DM3,M4,betaM41,betaM42,DM4,Tdp(3,3),betaTdp1(3,3),betaTdp2(3,3)     & 
& ,DTdp(3,3),adjTdp(3,3),Tep(2,2),betaTep1(2,2),betaTep2(2,2),DTep(2,2),adjTep(2,2)
Real(dp) :: Tr1(4),Tr2(4),Tr3(4) 
Real(dp) :: Tr2U1(4,4) 
Real(dp) :: Absy1,AbsTy1,AbsM1,AbsM2,AbsM3,AbsM4
Complex(dp) :: md2Yd(3,3),me92y2(2,2),ml92adjy2(2,2),mq2adjYd(3,3),mq2adjYu(3,3),mu2Yu(3,3),         & 
& TdpadjTdp(3,3),TdpadjYd(3,3),TepadjTep(2,2),Tepadjy2(2,2),y2ml92(2,2),y2adjy2(2,2),    & 
& Ydmq2(3,3),YdadjYd(3,3),Yumq2(3,3),YuadjYu(3,3),adjy2me92(2,2),adjy2Tep(2,2),          & 
& adjy2y2(2,2),adjy2Ty2(2,2),adjYdmd2(3,3),adjYdTdp(3,3),adjYdYd(3,3),adjYdTd(3,3),      & 
& adjYumu2(3,3),adjYuYu(3,3),adjYuTu(3,3),adjTy2Ty2(2,2),adjTdTd(3,3),adjTuTu(3,3),      & 
& CTdpTpTdp(3,3),CTepTpTep(2,2),CTy2TpTy2(2,2),CTdTpTd(3,3),CTuTpTu(3,3),Ty2adjTy2(2,2), & 
& TdadjTd(3,3),TuadjTu(3,3),TpTdpCTdp(3,3),TpTepCTep(2,2),md2YdadjYd(3,3),               & 
& me92y2adjy2(2,2),ml92adjy2y2(2,2),mq2adjYdYd(3,3),mq2adjYuYu(3,3),mu2YuadjYu(3,3),     & 
& TdpadjYdYd(3,3),TdpadjYuYu(3,3),Tepadjy2y2(2,2),y2ml92adjy2(2,2),y2adjy2me92(2,2),     & 
& y2adjy2Tep(2,2),y2adjy2y2(2,2),y2adjy2Ty2(2,2),Ydmq2adjYd(3,3),YdadjYdmd2(3,3),        & 
& YdadjYdTdp(3,3),YdadjYdYd(3,3),YdadjYdTd(3,3),YdadjYuYu(3,3),YdadjYuTu(3,3),           & 
& Yumq2adjYu(3,3),YuadjYdYd(3,3),YuadjYdTd(3,3),YuadjYumu2(3,3),YuadjYuYu(3,3),          & 
& YuadjYuTu(3,3),adjy2me92y2(2,2),adjy2y2ml92(2,2),adjYdmd2Yd(3,3),adjYdYdmq2(3,3),      & 
& adjYumu2Yu(3,3),adjYuYumq2(3,3),Ty2adjy2y2(2,2),TdadjYdYd(3,3),TdadjYuYu(3,3),         & 
& TuadjYdYd(3,3),TuadjYuYu(3,3)

Complex(dp) :: y2adjTy2(2,2),YdadjYu(3,3),YdadjTd(3,3),YdadjTu(3,3),YuadjYd(3,3),YuadjTd(3,3),       & 
& YuadjTu(3,3),adjy2Cme92(2,2),adjYdCmd2(3,3),adjYuCmu2(3,3),adjTy2y2(2,2),              & 
& adjTdYd(3,3),adjTuYu(3,3),Cml92adjy2(2,2),Cmq2adjYd(3,3),Cmq2adjYu(3,3),               & 
& CTy2Tpy2(2,2),CTdTpYd(3,3),CTuTpYu(3,3),Ty2adjy2(2,2),TdadjYd(3,3),TdadjYu(3,3),       & 
& TdadjTu(3,3),TuadjYd(3,3),TuadjYu(3,3),TuadjTd(3,3),md2YdadjYu(3,3),mu2YuadjYd(3,3),   & 
& y2adjy2Cme92(2,2),y2adjTy2Ty2(2,2),y2Cml92adjy2(2,2),Ydmq2adjYu(3,3),YdadjYdCmd2(3,3), & 
& YdadjYumu2(3,3),YdadjTdTd(3,3),YdCmq2adjYd(3,3),Yumq2adjYd(3,3),YuadjYdmd2(3,3),       & 
& YuadjYuCmu2(3,3),YuadjTuTu(3,3),YuCmq2adjYu(3,3),adjy2y2adjy2(2,2),adjy2y2adjTy2(2,2), & 
& adjy2Ty2adjy2(2,2),adjy2Ty2adjTy2(2,2),adjYdYdadjYd(3,3),adjYdYdadjYu(3,3),            & 
& adjYdYdadjTd(3,3),adjYdYdadjTu(3,3),adjYdTdadjYd(3,3),adjYdTdadjYu(3,3),               & 
& adjYdTdadjTd(3,3),adjYdTdadjTu(3,3),adjYuYuadjYd(3,3),adjYuYuadjYu(3,3),               & 
& adjYuYuadjTd(3,3),adjYuYuadjTu(3,3),adjYuTuadjYd(3,3),adjYuTuadjYu(3,3),               & 
& adjYuTuadjTd(3,3),adjYuTuadjTu(3,3),adjTy2y2adjy2(2,2),adjTy2Ty2adjy2(2,2),            & 
& adjTdYdadjYd(3,3),adjTdYdadjYu(3,3),adjTdTdadjYd(3,3),adjTdTdadjYu(3,3),               & 
& adjTuYuadjYd(3,3),adjTuYuadjYu(3,3),adjTuTuadjYd(3,3),adjTuTuadjYu(3,3),               & 
& Ty2adjTy2y2(2,2),TdadjTdYd(3,3),TuadjTuYu(3,3),md2YdadjYdYd(3,3),me92y2adjy2y2(2,2),   & 
& ml92adjy2y2adjy2(2,2),mq2adjYdYdadjYd(3,3),mq2adjYdYdadjYu(3,3),mq2adjYuYuadjYd(3,3),  & 
& mq2adjYuYuadjYu(3,3),mu2YuadjYuYu(3,3),y2ml92adjy2y2(2,2),y2adjy2me92y2(2,2),          & 
& y2adjy2y2ml92(2,2),y2adjy2y2adjy2(2,2),y2adjy2Ty2adjy2(2,2),y2adjy2Ty2adjTy2(2,2),     & 
& y2adjTy2Ty2adjy2(2,2),Ydmq2adjYdYd(3,3),YdadjYdmd2Yd(3,3),YdadjYdYdmq2(3,3),           & 
& YdadjYdYdadjYd(3,3),YdadjYdTdadjYd(3,3),YdadjYdTdadjTd(3,3),YdadjYuYuadjYd(3,3),       & 
& YdadjYuTuadjYd(3,3),YdadjYuTuadjTd(3,3),YdadjTdTdadjYd(3,3),YdadjTuTuadjYd(3,3),       & 
& Yumq2adjYuYu(3,3),YuadjYdYdadjYu(3,3),YuadjYdTdadjYu(3,3),YuadjYdTdadjTu(3,3),         & 
& YuadjYumu2Yu(3,3),YuadjYuYumq2(3,3),YuadjYuYuadjYu(3,3),YuadjYuTuadjYu(3,3),           & 
& YuadjYuTuadjTu(3,3),YuadjTdTdadjYu(3,3),YuadjTuTuadjYu(3,3),adjy2me92y2adjy2(2,2),     & 
& adjy2y2ml92adjy2(2,2),adjy2y2adjy2me92(2,2),adjy2y2adjy2y2(2,2),adjy2y2adjy2Ty2(2,2),  & 
& adjy2y2adjTy2Ty2(2,2),adjy2Ty2adjy2y2(2,2),adjy2Ty2adjTy2y2(2,2),adjYdmd2YdadjYd(3,3), & 
& adjYdmd2YdadjYu(3,3),adjYdYdmq2adjYd(3,3),adjYdYdmq2adjYu(3,3),adjYdYdadjYdmd2(3,3),   & 
& adjYdYdadjYdYd(3,3),adjYdYdadjYdTd(3,3),adjYdYdadjYumu2(3,3),adjYdYdadjYuYu(3,3),      & 
& adjYdYdadjYuTu(3,3),adjYdYdadjTdTd(3,3),adjYdTdadjYdYd(3,3),adjYdTdadjYuYu(3,3),       & 
& adjYdTdadjTdYd(3,3),adjYumu2YuadjYd(3,3),adjYumu2YuadjYu(3,3),adjYuYumq2adjYd(3,3),    & 
& adjYuYumq2adjYu(3,3),adjYuYuadjYdmd2(3,3),adjYuYuadjYdYd(3,3),adjYuYuadjYdTd(3,3),     & 
& adjYuYuadjYumu2(3,3),adjYuYuadjYuYu(3,3),adjYuYuadjYuTu(3,3),adjYuYuadjTuTu(3,3),      & 
& adjYuTuadjYdYd(3,3),adjYuTuadjYuYu(3,3),adjYuTuadjTuYu(3,3),adjTy2y2adjy2Ty2(2,2),     & 
& adjTy2Ty2adjy2y2(2,2),adjTdYdadjYdTd(3,3),adjTdTdadjYdYd(3,3),adjTuYuadjYuTu(3,3),     & 
& adjTuTuadjYuYu(3,3),Ty2adjy2y2adjTy2(2,2),Ty2adjTy2y2adjy2(2,2),TdadjYdYdadjTd(3,3),   & 
& TdadjYuYuadjTd(3,3),TdadjTdYdadjYd(3,3),TdadjTuYuadjYd(3,3),TuadjYdYdadjTu(3,3)

Complex(dp) :: TuadjYuYuadjTu(3,3),TuadjTdYdadjYu(3,3),TuadjTuYuadjYu(3,3),md2YdadjYdYdadjYd(3,3),    & 
& md2YdadjYuYuadjYd(3,3),me92y2adjy2y2adjy2(2,2),ml92adjy2y2adjy2y2(2,2),mq2adjYdYdadjYdYd(3,3),& 
& mq2adjYdYdadjYuYu(3,3),mq2adjYuYuadjYdYd(3,3),mq2adjYuYuadjYuYu(3,3),mu2YuadjYdYdadjYu(3,3),& 
& mu2YuadjYuYuadjYu(3,3),y2ml92adjy2y2adjy2(2,2),y2adjy2me92y2adjy2(2,2),y2adjy2y2ml92adjy2(2,2),& 
& y2adjy2y2adjy2me92(2,2),y2adjy2y2adjy2y2(2,2),y2adjy2y2adjy2Ty2(2,2),y2adjy2Ty2adjy2y2(2,2),& 
& Ydmq2adjYdYdadjYd(3,3),Ydmq2adjYuYuadjYd(3,3),YdadjYdmd2YdadjYd(3,3),YdadjYdYdmq2adjYd(3,3),& 
& YdadjYdYdadjYdmd2(3,3),YdadjYdYdadjYdYd(3,3),YdadjYdYdadjYdTd(3,3),YdadjYdTdadjYdYd(3,3),& 
& YdadjYumu2YuadjYd(3,3),YdadjYuYumq2adjYd(3,3),YdadjYuYuadjYdmd2(3,3),YdadjYuYuadjYdYd(3,3),& 
& YdadjYuYuadjYdTd(3,3),YdadjYuYuadjYuYu(3,3),YdadjYuYuadjYuTu(3,3),YdadjYuTuadjYdYd(3,3),& 
& YdadjYuTuadjYuYu(3,3),Yumq2adjYdYdadjYu(3,3),Yumq2adjYuYuadjYu(3,3),YuadjYdmd2YdadjYu(3,3),& 
& YuadjYdYdmq2adjYu(3,3),YuadjYdYdadjYdYd(3,3),YuadjYdYdadjYdTd(3,3),YuadjYdYdadjYumu2(3,3),& 
& YuadjYdYdadjYuYu(3,3),YuadjYdYdadjYuTu(3,3),YuadjYdTdadjYdYd(3,3),YuadjYdTdadjYuYu(3,3),& 
& YuadjYumu2YuadjYu(3,3),YuadjYuYumq2adjYu(3,3),YuadjYuYuadjYumu2(3,3),YuadjYuYuadjYuYu(3,3),& 
& YuadjYuYuadjYuTu(3,3),YuadjYuTuadjYuYu(3,3),adjy2me92y2adjy2y2(2,2),adjy2y2ml92adjy2y2(2,2),& 
& adjy2y2adjy2me92y2(2,2),adjy2y2adjy2y2ml92(2,2),adjYdmd2YdadjYdYd(3,3),adjYdYdmq2adjYdYd(3,3),& 
& adjYdYdadjYdmd2Yd(3,3),adjYdYdadjYdYdmq2(3,3),adjYumu2YuadjYuYu(3,3),adjYuYumq2adjYuYu(3,3),& 
& adjYuYuadjYumu2Yu(3,3),adjYuYuadjYuYumq2(3,3),Ty2adjy2y2adjy2y2(2,2),TdadjYdYdadjYdYd(3,3),& 
& TdadjYuYuadjYdYd(3,3),TdadjYuYuadjYuYu(3,3),TuadjYdYdadjYdYd(3,3),TuadjYdYdadjYuYu(3,3),& 
& TuadjYuYuadjYuYu(3,3)

Complex(dp) :: Trmd2,Trme92,Trml92,Trmq2,Trmu2,TrTdpadjTdp,TrTdpadjYd,TrTepadjTep,TrTepadjy2,        & 
& Try2adjy2,TrYdadjYd,TrYuadjYu,Tradjy2Ty2,TradjYdTd,TradjYuTu,TrCTy2TpTy2,              & 
& TrCTdTpTd,TrCTuTpTu,Trmd2YdadjYd,Trme92y2adjy2,Trml92adjy2y2,Trmq2adjYdYd,             & 
& Trmq2adjYuYu,Trmu2YuadjYu

Complex(dp) :: TrCTy2Tpy2,TrCTdTpYd,TrCTuTpYu,Try2adjy2Cme92,Try2Cml92adjy2,TrYdadjYdCmd2,           & 
& TrYdCmq2adjYd,TrYuadjYuCmu2,TrYuCmq2adjYu,Try2adjy2y2adjy2,Try2adjy2Ty2adjy2,          & 
& Try2adjy2Ty2adjTy2,Try2adjTy2Ty2adjy2,TrYdadjYdYdadjYd,TrYdadjYdTdadjYd,               & 
& TrYdadjYdTdadjTd,TrYdadjYuYuadjYd,TrYdadjYuTuadjYd,TrYdadjYuTuadjTd,TrYdadjTdTdadjYd,  & 
& TrYdadjTuTuadjYd,TrYuadjYdTdadjYu,TrYuadjYdTdadjTu,TrYuadjYuYuadjYu,TrYuadjYuTuadjYu,  & 
& TrYuadjYuTuadjTu,TrYuadjTdTdadjYu,TrYuadjTuTuadjYu,Trmd2YdadjYdYdadjYd,Trmd2YdadjYuYuadjYd,& 
& Trme92y2adjy2y2adjy2,Trml92adjy2y2adjy2y2,Trmq2adjYdYdadjYdYd,Trmq2adjYdYdadjYuYu,     & 
& Trmq2adjYuYuadjYdYd,Trmq2adjYuYuadjYuYu,Trmu2YuadjYdYdadjYu,Trmu2YuadjYuYuadjYu

Real(dp) :: g1p2,g1p3,g2p2,g2p3,g3p2,g3p3,gpp2,gpp3,Qdp2,Qe4p2,Qe9p2,QHdp2,QHup2,Ql4p2,           & 
& Ql9p2,Qqp2,Qsp2,Qup2,lamp2,lamp3,Tlamp2

Complex(dp) :: sqrt3ov5,ooSqrt15,y1p2

Real(dp) :: g1p4,g2p4,g3p4,gpp4,Qdp4,Qe4p3,Qe4p4,Qe9p3,Qe9p4,QHdp3,QHdp4,QHup3,QHup4,             & 
& Ql4p3,Ql4p4,Ql9p3,Ql9p4,Qqp3,Qqp4,Qsp3,Qsp4,Qup3,Qup4,lamp4,lamp5

Complex(dp) :: sqrt15,Cy1p2

Iname = Iname +1 
NameOfUnit(Iname) = 'rge207' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters207(gy,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,              & 
& mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep)

Absy1 = Conjg(y1)*y1
AbsTy1 = Conjg(Ty1)*Ty1
AbsM1 = Conjg(M1)*M1
AbsM2 = Conjg(M2)*M2
AbsM3 = Conjg(M3)*M3
AbsM4 = Conjg(M4)*M4
Call Adjungate(Yd,adjYd)
Call Adjungate(y2,adjy2)
Call Adjungate(Yu,adjYu)
Call Adjungate(Td,adjTd)
Call Adjungate(Ty2,adjTy2)
Call Adjungate(Tu,adjTu)
Call Adjungate(Tdp,adjTdp)
Call Adjungate(Tep,adjTep)
 md2Yd = Matmul(md2,Yd) 
 me92y2 = Matmul(me92,y2) 
 ml92adjy2 = Matmul(ml92,adjy2) 
 mq2adjYd = Matmul(mq2,adjYd) 
 mq2adjYu = Matmul(mq2,adjYu) 
 mu2Yu = Matmul(mu2,Yu) 
 TdpadjTdp = Matmul(Tdp,adjTdp) 
Forall(i2=1:3)  TdpadjTdp(i2,i2) =  Real(TdpadjTdp(i2,i2),dp) 
 TdpadjYd = Matmul(Tdp,adjYd) 
 TepadjTep = Matmul(Tep,adjTep) 
Forall(i2=1:2)  TepadjTep(i2,i2) =  Real(TepadjTep(i2,i2),dp) 
 Tepadjy2 = Matmul(Tep,adjy2) 
 y2ml92 = Matmul(y2,ml92) 
 y2adjy2 = Matmul(y2,adjy2) 
Forall(i2=1:2)  y2adjy2(i2,i2) =  Real(y2adjy2(i2,i2),dp) 
 Ydmq2 = Matmul(Yd,mq2) 
 YdadjYd = Matmul(Yd,adjYd) 
Forall(i2=1:3)  YdadjYd(i2,i2) =  Real(YdadjYd(i2,i2),dp) 
 Yumq2 = Matmul(Yu,mq2) 
 YuadjYu = Matmul(Yu,adjYu) 
Forall(i2=1:3)  YuadjYu(i2,i2) =  Real(YuadjYu(i2,i2),dp) 
 adjy2me92 = Matmul(adjy2,me92) 
 adjy2Tep = Matmul(adjy2,Tep) 
 adjy2y2 = Matmul(adjy2,y2) 
Forall(i2=1:2)  adjy2y2(i2,i2) =  Real(adjy2y2(i2,i2),dp) 
 adjy2Ty2 = Matmul(adjy2,Ty2) 
 adjYdmd2 = Matmul(adjYd,md2) 
 adjYdTdp = Matmul(adjYd,Tdp) 
 adjYdYd = Matmul(adjYd,Yd) 
Forall(i2=1:3)  adjYdYd(i2,i2) =  Real(adjYdYd(i2,i2),dp) 
 adjYdTd = Matmul(adjYd,Td) 
 adjYumu2 = Matmul(adjYu,mu2) 
 adjYuYu = Matmul(adjYu,Yu) 
Forall(i2=1:3)  adjYuYu(i2,i2) =  Real(adjYuYu(i2,i2),dp) 
 adjYuTu = Matmul(adjYu,Tu) 
 adjTy2Ty2 = Matmul(adjTy2,Ty2) 
 adjTdTd = Matmul(adjTd,Td) 
 adjTuTu = Matmul(adjTu,Tu) 
 CTdpTpTdp = Matmul(Conjg(Tdp),Transpose(Tdp)) 
Forall(i2=1:3)  CTdpTpTdp(i2,i2) =  Real(CTdpTpTdp(i2,i2),dp) 
 CTepTpTep = Matmul(Conjg(Tep),Transpose(Tep)) 
Forall(i2=1:2)  CTepTpTep(i2,i2) =  Real(CTepTpTep(i2,i2),dp) 
 CTy2TpTy2 = Matmul(Conjg(Ty2),Transpose(Ty2)) 
Forall(i2=1:2)  CTy2TpTy2(i2,i2) =  Real(CTy2TpTy2(i2,i2),dp) 
 CTdTpTd = Matmul(Conjg(Td),Transpose(Td)) 
Forall(i2=1:3)  CTdTpTd(i2,i2) =  Real(CTdTpTd(i2,i2),dp) 
 CTuTpTu = Matmul(Conjg(Tu),Transpose(Tu)) 
Forall(i2=1:3)  CTuTpTu(i2,i2) =  Real(CTuTpTu(i2,i2),dp) 
 Ty2adjTy2 = Matmul(Ty2,adjTy2) 
 TdadjTd = Matmul(Td,adjTd) 
 TuadjTu = Matmul(Tu,adjTu) 
 TpTdpCTdp = Matmul(Transpose(Tdp),Conjg(Tdp)) 
Forall(i2=1:3)  TpTdpCTdp(i2,i2) =  Real(TpTdpCTdp(i2,i2),dp) 
 TpTepCTep = Matmul(Transpose(Tep),Conjg(Tep)) 
Forall(i2=1:2)  TpTepCTep(i2,i2) =  Real(TpTepCTep(i2,i2),dp) 
 md2YdadjYd = Matmul(md2,YdadjYd) 
 me92y2adjy2 = Matmul(me92,y2adjy2) 
 ml92adjy2y2 = Matmul(ml92,adjy2y2) 
 mq2adjYdYd = Matmul(mq2,adjYdYd) 
 mq2adjYuYu = Matmul(mq2,adjYuYu) 
 mu2YuadjYu = Matmul(mu2,YuadjYu) 
 TdpadjYdYd = Matmul(Tdp,adjYdYd) 
 TdpadjYuYu = Matmul(Tdp,adjYuYu) 
 Tepadjy2y2 = Matmul(Tep,adjy2y2) 
 y2ml92adjy2 = Matmul(y2,ml92adjy2) 
Forall(i2=1:2)  y2ml92adjy2(i2,i2) =  Real(y2ml92adjy2(i2,i2),dp) 
 y2adjy2me92 = Matmul(y2,adjy2me92) 
 y2adjy2Tep = Matmul(y2,adjy2Tep) 
 y2adjy2y2 = Matmul(y2,adjy2y2) 
 y2adjy2Ty2 = Matmul(y2,adjy2Ty2) 
 Ydmq2adjYd = Matmul(Yd,mq2adjYd) 
Forall(i2=1:3)  Ydmq2adjYd(i2,i2) =  Real(Ydmq2adjYd(i2,i2),dp) 
 YdadjYdmd2 = Matmul(Yd,adjYdmd2) 
 YdadjYdTdp = Matmul(Yd,adjYdTdp) 
 YdadjYdYd = Matmul(Yd,adjYdYd) 
 YdadjYdTd = Matmul(Yd,adjYdTd) 
 YdadjYuYu = Matmul(Yd,adjYuYu) 
 YdadjYuTu = Matmul(Yd,adjYuTu) 
 Yumq2adjYu = Matmul(Yu,mq2adjYu) 
Forall(i2=1:3)  Yumq2adjYu(i2,i2) =  Real(Yumq2adjYu(i2,i2),dp) 
 YuadjYdYd = Matmul(Yu,adjYdYd) 
 YuadjYdTd = Matmul(Yu,adjYdTd) 
 YuadjYumu2 = Matmul(Yu,adjYumu2) 
 YuadjYuYu = Matmul(Yu,adjYuYu) 
 YuadjYuTu = Matmul(Yu,adjYuTu) 
 adjy2me92y2 = Matmul(adjy2,me92y2) 
Forall(i2=1:2)  adjy2me92y2(i2,i2) =  Real(adjy2me92y2(i2,i2),dp) 
 adjy2y2ml92 = Matmul(adjy2,y2ml92) 
 adjYdmd2Yd = Matmul(adjYd,md2Yd) 
Forall(i2=1:3)  adjYdmd2Yd(i2,i2) =  Real(adjYdmd2Yd(i2,i2),dp) 
 adjYdYdmq2 = Matmul(adjYd,Ydmq2) 
 adjYumu2Yu = Matmul(adjYu,mu2Yu) 
Forall(i2=1:3)  adjYumu2Yu(i2,i2) =  Real(adjYumu2Yu(i2,i2),dp) 
 adjYuYumq2 = Matmul(adjYu,Yumq2) 
 Ty2adjy2y2 = Matmul(Ty2,adjy2y2) 
 TdadjYdYd = Matmul(Td,adjYdYd) 
 TdadjYuYu = Matmul(Td,adjYuYu) 
 TuadjYdYd = Matmul(Tu,adjYdYd) 
 TuadjYuYu = Matmul(Tu,adjYuYu) 
 Trmd2 = Real(cTrace(md2),dp) 
 Trme92 = Real(cTrace(me92),dp) 
 Trml92 = Real(cTrace(ml92),dp) 
 Trmq2 = Real(cTrace(mq2),dp) 
 Trmu2 = Real(cTrace(mu2),dp) 
 TrTdpadjTdp = Real(cTrace(TdpadjTdp),dp) 
 TrTdpadjYd = cTrace(TdpadjYd) 
 TrTepadjTep = Real(cTrace(TepadjTep),dp) 
 TrTepadjy2 = cTrace(Tepadjy2) 
 Try2adjy2 = Real(cTrace(y2adjy2),dp) 
 TrYdadjYd = Real(cTrace(YdadjYd),dp) 
 TrYuadjYu = Real(cTrace(YuadjYu),dp) 
 Tradjy2Ty2 = cTrace(adjy2Ty2) 
 TradjYdTd = cTrace(adjYdTd) 
 TradjYuTu = cTrace(adjYuTu) 
 TrCTy2TpTy2 = Real(cTrace(CTy2TpTy2),dp) 
 TrCTdTpTd = Real(cTrace(CTdTpTd),dp) 
 TrCTuTpTu = Real(cTrace(CTuTpTu),dp) 
 Trmd2YdadjYd = cTrace(md2YdadjYd) 
 Trme92y2adjy2 = cTrace(me92y2adjy2) 
 Trml92adjy2y2 = cTrace(ml92adjy2y2) 
 Trmq2adjYdYd = cTrace(mq2adjYdYd) 
 Trmq2adjYuYu = cTrace(mq2adjYuYu) 
 Trmu2YuadjYu = cTrace(mu2YuadjYu) 
 sqrt3ov5 =Sqrt(3._dp/5._dp) 
 ooSqrt15 =1._dp/sqrt(15._dp) 
 g1p2 =g1**2 
 g1p3 =g1**3 
 g2p2 =g2**2 
 g2p3 =g2**3 
 g3p2 =g3**2 
 g3p3 =g3**3 
 gpp2 =gp**2 
 gpp3 =gp**3 
 Qdp2 =Qd**2 
 Qe4p2 =Qe4**2 
 Qe9p2 =Qe9**2 
 QHdp2 =QHd**2 
 QHup2 =QHu**2 
 Ql4p2 =Ql4**2 
 Ql9p2 =Ql9**2 
 Qqp2 =Qq**2 
 Qsp2 =Qs**2 
 Qup2 =Qu**2 
 y1p2 =y1**2 
 lamp2 =lam**2 
 lamp3 =lam**3 
 Tlamp2 =Tlam**2 
 sqrt15 =sqrt(15._dp) 
 g1p4 =g1**4 
 g2p4 =g2**4 
 g3p4 =g3**4 
 gpp4 =gp**4 
 Qdp4 =Qd**4 
 Qe4p3 =Qe4**3 
 Qe4p4 =Qe4**4 
 Qe9p3 =Qe9**3 
 Qe9p4 =Qe9**4 
 QHdp3 =QHd**3 
 QHdp4 =QHd**4 
 QHup3 =QHu**3 
 QHup4 =QHu**4 
 Ql4p3 =Ql4**3 
 Ql4p4 =Ql4**4 
 Ql9p3 =Ql9**3 
 Ql9p4 =Ql9**4 
 Qqp3 =Qq**3 
 Qqp4 =Qq**4 
 Qsp3 =Qs**3 
 Qsp4 =Qs**4 
 Qup3 =Qu**3 
 Qup4 =Qu**4 
 lamp4 =lam**4 
 lamp5 =lam**5 
 Cy1p2 =Conjg(y1)**2 


If (TwoLoopRGE) Then 
 y2adjTy2 = Matmul(y2,adjTy2) 
 YdadjYu = Matmul(Yd,adjYu) 
 YdadjTd = Matmul(Yd,adjTd) 
 YdadjTu = Matmul(Yd,adjTu) 
 YuadjYd = Matmul(Yu,adjYd) 
 YuadjTd = Matmul(Yu,adjTd) 
 YuadjTu = Matmul(Yu,adjTu) 
 adjy2Cme92 = Matmul(adjy2,Conjg(me92)) 
 adjYdCmd2 = Matmul(adjYd,Conjg(md2)) 
 adjYuCmu2 = Matmul(adjYu,Conjg(mu2)) 
 adjTy2y2 = Matmul(adjTy2,y2) 
 adjTdYd = Matmul(adjTd,Yd) 
 adjTuYu = Matmul(adjTu,Yu) 
 Cml92adjy2 = Matmul(Conjg(ml92),adjy2) 
 Cmq2adjYd = Matmul(Conjg(mq2),adjYd) 
 Cmq2adjYu = Matmul(Conjg(mq2),adjYu) 
 CTy2Tpy2 = Matmul(Conjg(Ty2),Transpose(y2)) 
 CTdTpYd = Matmul(Conjg(Td),Transpose(Yd)) 
 CTuTpYu = Matmul(Conjg(Tu),Transpose(Yu)) 
 Ty2adjy2 = Matmul(Ty2,adjy2) 
 TdadjYd = Matmul(Td,adjYd) 
 TdadjYu = Matmul(Td,adjYu) 
 TdadjTu = Matmul(Td,adjTu) 
 TuadjYd = Matmul(Tu,adjYd) 
 TuadjYu = Matmul(Tu,adjYu) 
 TuadjTd = Matmul(Tu,adjTd) 
 md2YdadjYu = Matmul(md2,YdadjYu) 
 mu2YuadjYd = Matmul(mu2,YuadjYd) 
 y2adjy2Cme92 = Matmul(y2,adjy2Cme92) 
 y2adjTy2Ty2 = Matmul(y2,adjTy2Ty2) 
 y2Cml92adjy2 = Matmul(y2,Cml92adjy2) 
Forall(i2=1:2)  y2Cml92adjy2(i2,i2) =  Real(y2Cml92adjy2(i2,i2),dp) 
 Ydmq2adjYu = Matmul(Yd,mq2adjYu) 
 YdadjYdCmd2 = Matmul(Yd,adjYdCmd2) 
 YdadjYumu2 = Matmul(Yd,adjYumu2) 
 YdadjTdTd = Matmul(Yd,adjTdTd) 
 YdCmq2adjYd = Matmul(Yd,Cmq2adjYd) 
Forall(i2=1:3)  YdCmq2adjYd(i2,i2) =  Real(YdCmq2adjYd(i2,i2),dp) 
 Yumq2adjYd = Matmul(Yu,mq2adjYd) 
 YuadjYdmd2 = Matmul(Yu,adjYdmd2) 
 YuadjYuCmu2 = Matmul(Yu,adjYuCmu2) 
 YuadjTuTu = Matmul(Yu,adjTuTu) 
 YuCmq2adjYu = Matmul(Yu,Cmq2adjYu) 
Forall(i2=1:3)  YuCmq2adjYu(i2,i2) =  Real(YuCmq2adjYu(i2,i2),dp) 
 adjy2y2adjy2 = Matmul(adjy2,y2adjy2) 
 adjy2y2adjTy2 = Matmul(adjy2,y2adjTy2) 
 adjy2Ty2adjy2 = Matmul(adjy2,Ty2adjy2) 
 adjy2Ty2adjTy2 = Matmul(adjy2,Ty2adjTy2) 
 adjYdYdadjYd = Matmul(adjYd,YdadjYd) 
 adjYdYdadjYu = Matmul(adjYd,YdadjYu) 
 adjYdYdadjTd = Matmul(adjYd,YdadjTd) 
 adjYdYdadjTu = Matmul(adjYd,YdadjTu) 
 adjYdTdadjYd = Matmul(adjYd,TdadjYd) 
 adjYdTdadjYu = Matmul(adjYd,TdadjYu) 
 adjYdTdadjTd = Matmul(adjYd,TdadjTd) 
 adjYdTdadjTu = Matmul(adjYd,TdadjTu) 
 adjYuYuadjYd = Matmul(adjYu,YuadjYd) 
 adjYuYuadjYu = Matmul(adjYu,YuadjYu) 
 adjYuYuadjTd = Matmul(adjYu,YuadjTd) 
 adjYuYuadjTu = Matmul(adjYu,YuadjTu) 
 adjYuTuadjYd = Matmul(adjYu,TuadjYd) 
 adjYuTuadjYu = Matmul(adjYu,TuadjYu) 
 adjYuTuadjTd = Matmul(adjYu,TuadjTd) 
 adjYuTuadjTu = Matmul(adjYu,TuadjTu) 
 adjTy2y2adjy2 = Matmul(adjTy2,y2adjy2) 
 adjTy2Ty2adjy2 = Matmul(adjTy2,Ty2adjy2) 
 adjTdYdadjYd = Matmul(adjTd,YdadjYd) 
 adjTdYdadjYu = Matmul(adjTd,YdadjYu) 
 adjTdTdadjYd = Matmul(adjTd,TdadjYd) 
 adjTdTdadjYu = Matmul(adjTd,TdadjYu) 
 adjTuYuadjYd = Matmul(adjTu,YuadjYd) 
 adjTuYuadjYu = Matmul(adjTu,YuadjYu) 
 adjTuTuadjYd = Matmul(adjTu,TuadjYd) 
 adjTuTuadjYu = Matmul(adjTu,TuadjYu) 
 Ty2adjTy2y2 = Matmul(Ty2,adjTy2y2) 
 TdadjTdYd = Matmul(Td,adjTdYd) 
 TuadjTuYu = Matmul(Tu,adjTuYu) 
 md2YdadjYdYd = Matmul(md2,YdadjYdYd) 
 me92y2adjy2y2 = Matmul(me92,y2adjy2y2) 
 ml92adjy2y2adjy2 = Matmul(ml92,adjy2y2adjy2) 
 mq2adjYdYdadjYd = Matmul(mq2,adjYdYdadjYd) 
 mq2adjYdYdadjYu = Matmul(mq2,adjYdYdadjYu) 
 mq2adjYuYuadjYd = Matmul(mq2,adjYuYuadjYd) 
 mq2adjYuYuadjYu = Matmul(mq2,adjYuYuadjYu) 
 mu2YuadjYuYu = Matmul(mu2,YuadjYuYu) 
 y2ml92adjy2y2 = Matmul(y2,ml92adjy2y2) 
 y2adjy2me92y2 = Matmul(y2,adjy2me92y2) 
 y2adjy2y2ml92 = Matmul(y2,adjy2y2ml92) 
 y2adjy2y2adjy2 = Matmul(y2,adjy2y2adjy2) 
Forall(i2=1:2)  y2adjy2y2adjy2(i2,i2) =  Real(y2adjy2y2adjy2(i2,i2),dp) 
 y2adjy2Ty2adjy2 = Matmul(y2,adjy2Ty2adjy2) 
 y2adjy2Ty2adjTy2 = Matmul(y2,adjy2Ty2adjTy2) 
 y2adjTy2Ty2adjy2 = Matmul(y2,adjTy2Ty2adjy2) 
 Ydmq2adjYdYd = Matmul(Yd,mq2adjYdYd) 
 YdadjYdmd2Yd = Matmul(Yd,adjYdmd2Yd) 
 YdadjYdYdmq2 = Matmul(Yd,adjYdYdmq2) 
 YdadjYdYdadjYd = Matmul(Yd,adjYdYdadjYd) 
Forall(i2=1:3)  YdadjYdYdadjYd(i2,i2) =  Real(YdadjYdYdadjYd(i2,i2),dp) 
 YdadjYdTdadjYd = Matmul(Yd,adjYdTdadjYd) 
 YdadjYdTdadjTd = Matmul(Yd,adjYdTdadjTd) 
 YdadjYuYuadjYd = Matmul(Yd,adjYuYuadjYd) 
Forall(i2=1:3)  YdadjYuYuadjYd(i2,i2) =  Real(YdadjYuYuadjYd(i2,i2),dp) 
 YdadjYuTuadjYd = Matmul(Yd,adjYuTuadjYd) 
 YdadjYuTuadjTd = Matmul(Yd,adjYuTuadjTd) 
 YdadjTdTdadjYd = Matmul(Yd,adjTdTdadjYd) 
 YdadjTuTuadjYd = Matmul(Yd,adjTuTuadjYd) 
 Yumq2adjYuYu = Matmul(Yu,mq2adjYuYu) 
 YuadjYdYdadjYu = Matmul(Yu,adjYdYdadjYu) 
Forall(i2=1:3)  YuadjYdYdadjYu(i2,i2) =  Real(YuadjYdYdadjYu(i2,i2),dp) 
 YuadjYdTdadjYu = Matmul(Yu,adjYdTdadjYu) 
 YuadjYdTdadjTu = Matmul(Yu,adjYdTdadjTu) 
 YuadjYumu2Yu = Matmul(Yu,adjYumu2Yu) 
 YuadjYuYumq2 = Matmul(Yu,adjYuYumq2) 
 YuadjYuYuadjYu = Matmul(Yu,adjYuYuadjYu) 
Forall(i2=1:3)  YuadjYuYuadjYu(i2,i2) =  Real(YuadjYuYuadjYu(i2,i2),dp) 
 YuadjYuTuadjYu = Matmul(Yu,adjYuTuadjYu) 
 YuadjYuTuadjTu = Matmul(Yu,adjYuTuadjTu) 
 YuadjTdTdadjYu = Matmul(Yu,adjTdTdadjYu) 
 YuadjTuTuadjYu = Matmul(Yu,adjTuTuadjYu) 
 adjy2me92y2adjy2 = Matmul(adjy2,me92y2adjy2) 
 adjy2y2ml92adjy2 = Matmul(adjy2,y2ml92adjy2) 
 adjy2y2adjy2me92 = Matmul(adjy2,y2adjy2me92) 
 adjy2y2adjy2y2 = Matmul(adjy2,y2adjy2y2) 
Forall(i2=1:2)  adjy2y2adjy2y2(i2,i2) =  Real(adjy2y2adjy2y2(i2,i2),dp) 
 adjy2y2adjy2Ty2 = Matmul(adjy2,y2adjy2Ty2) 
 adjy2y2adjTy2Ty2 = Matmul(adjy2,y2adjTy2Ty2) 
 adjy2Ty2adjy2y2 = Matmul(adjy2,Ty2adjy2y2) 
 adjy2Ty2adjTy2y2 = Matmul(adjy2,Ty2adjTy2y2) 
 adjYdmd2YdadjYd = Matmul(adjYd,md2YdadjYd) 
 adjYdmd2YdadjYu = Matmul(adjYd,md2YdadjYu) 
 adjYdYdmq2adjYd = Matmul(adjYd,Ydmq2adjYd) 
 adjYdYdmq2adjYu = Matmul(adjYd,Ydmq2adjYu) 
 adjYdYdadjYdmd2 = Matmul(adjYd,YdadjYdmd2) 
 adjYdYdadjYdYd = Matmul(adjYd,YdadjYdYd) 
Forall(i2=1:3)  adjYdYdadjYdYd(i2,i2) =  Real(adjYdYdadjYdYd(i2,i2),dp) 
 adjYdYdadjYdTd = Matmul(adjYd,YdadjYdTd) 
 adjYdYdadjYumu2 = Matmul(adjYd,YdadjYumu2) 
 adjYdYdadjYuYu = Matmul(adjYd,YdadjYuYu) 
 adjYdYdadjYuTu = Matmul(adjYd,YdadjYuTu) 
 adjYdYdadjTdTd = Matmul(adjYd,YdadjTdTd) 
 adjYdTdadjYdYd = Matmul(adjYd,TdadjYdYd) 
 adjYdTdadjYuYu = Matmul(adjYd,TdadjYuYu) 
 adjYdTdadjTdYd = Matmul(adjYd,TdadjTdYd) 
 adjYumu2YuadjYd = Matmul(adjYu,mu2YuadjYd) 
 adjYumu2YuadjYu = Matmul(adjYu,mu2YuadjYu) 
 adjYuYumq2adjYd = Matmul(adjYu,Yumq2adjYd) 
 adjYuYumq2adjYu = Matmul(adjYu,Yumq2adjYu) 
 adjYuYuadjYdmd2 = Matmul(adjYu,YuadjYdmd2) 
 adjYuYuadjYdYd = Matmul(adjYu,YuadjYdYd) 
 adjYuYuadjYdTd = Matmul(adjYu,YuadjYdTd) 
 adjYuYuadjYumu2 = Matmul(adjYu,YuadjYumu2) 
 adjYuYuadjYuYu = Matmul(adjYu,YuadjYuYu) 
Forall(i2=1:3)  adjYuYuadjYuYu(i2,i2) =  Real(adjYuYuadjYuYu(i2,i2),dp) 
 adjYuYuadjYuTu = Matmul(adjYu,YuadjYuTu) 
 adjYuYuadjTuTu = Matmul(adjYu,YuadjTuTu) 
 adjYuTuadjYdYd = Matmul(adjYu,TuadjYdYd) 
 adjYuTuadjYuYu = Matmul(adjYu,TuadjYuYu) 
 adjYuTuadjTuYu = Matmul(adjYu,TuadjTuYu) 
 adjTy2y2adjy2Ty2 = Matmul(adjTy2,y2adjy2Ty2) 
 adjTy2Ty2adjy2y2 = Matmul(adjTy2,Ty2adjy2y2) 
 adjTdYdadjYdTd = Matmul(adjTd,YdadjYdTd) 
 adjTdTdadjYdYd = Matmul(adjTd,TdadjYdYd) 
 adjTuYuadjYuTu = Matmul(adjTu,YuadjYuTu) 
 adjTuTuadjYuYu = Matmul(adjTu,TuadjYuYu) 
 Ty2adjy2y2adjTy2 = Matmul(Ty2,adjy2y2adjTy2) 
 Ty2adjTy2y2adjy2 = Matmul(Ty2,adjTy2y2adjy2) 
 TdadjYdYdadjTd = Matmul(Td,adjYdYdadjTd) 
 TdadjYuYuadjTd = Matmul(Td,adjYuYuadjTd) 
 TdadjTdYdadjYd = Matmul(Td,adjTdYdadjYd) 
 TdadjTuYuadjYd = Matmul(Td,adjTuYuadjYd) 
 TuadjYdYdadjTu = Matmul(Tu,adjYdYdadjTu) 
 TuadjYuYuadjTu = Matmul(Tu,adjYuYuadjTu) 
 TuadjTdYdadjYu = Matmul(Tu,adjTdYdadjYu) 
 TuadjTuYuadjYu = Matmul(Tu,adjTuYuadjYu) 
 md2YdadjYdYdadjYd = Matmul(md2,YdadjYdYdadjYd) 
 md2YdadjYuYuadjYd = Matmul(md2,YdadjYuYuadjYd) 
 me92y2adjy2y2adjy2 = Matmul(me92,y2adjy2y2adjy2) 
 ml92adjy2y2adjy2y2 = Matmul(ml92,adjy2y2adjy2y2) 
 mq2adjYdYdadjYdYd = Matmul(mq2,adjYdYdadjYdYd) 
 mq2adjYdYdadjYuYu = Matmul(mq2,adjYdYdadjYuYu) 
 mq2adjYuYuadjYdYd = Matmul(mq2,adjYuYuadjYdYd) 
 mq2adjYuYuadjYuYu = Matmul(mq2,adjYuYuadjYuYu) 
 mu2YuadjYdYdadjYu = Matmul(mu2,YuadjYdYdadjYu) 
 mu2YuadjYuYuadjYu = Matmul(mu2,YuadjYuYuadjYu) 
 y2ml92adjy2y2adjy2 = Matmul(y2,ml92adjy2y2adjy2) 
 y2adjy2me92y2adjy2 = Matmul(y2,adjy2me92y2adjy2) 
Forall(i2=1:2)  y2adjy2me92y2adjy2(i2,i2) =  Real(y2adjy2me92y2adjy2(i2,i2),dp) 
 y2adjy2y2ml92adjy2 = Matmul(y2,adjy2y2ml92adjy2) 
 y2adjy2y2adjy2me92 = Matmul(y2,adjy2y2adjy2me92) 
 y2adjy2y2adjy2y2 = Matmul(y2,adjy2y2adjy2y2) 
 y2adjy2y2adjy2Ty2 = Matmul(y2,adjy2y2adjy2Ty2) 
 y2adjy2Ty2adjy2y2 = Matmul(y2,adjy2Ty2adjy2y2) 
 Ydmq2adjYdYdadjYd = Matmul(Yd,mq2adjYdYdadjYd) 
 Ydmq2adjYuYuadjYd = Matmul(Yd,mq2adjYuYuadjYd) 
 YdadjYdmd2YdadjYd = Matmul(Yd,adjYdmd2YdadjYd) 
Forall(i2=1:3)  YdadjYdmd2YdadjYd(i2,i2) =  Real(YdadjYdmd2YdadjYd(i2,i2),dp) 
 YdadjYdYdmq2adjYd = Matmul(Yd,adjYdYdmq2adjYd) 
 YdadjYdYdadjYdmd2 = Matmul(Yd,adjYdYdadjYdmd2) 
 YdadjYdYdadjYdYd = Matmul(Yd,adjYdYdadjYdYd) 
 YdadjYdYdadjYdTd = Matmul(Yd,adjYdYdadjYdTd) 
 YdadjYdTdadjYdYd = Matmul(Yd,adjYdTdadjYdYd) 
 YdadjYumu2YuadjYd = Matmul(Yd,adjYumu2YuadjYd) 
Forall(i2=1:3)  YdadjYumu2YuadjYd(i2,i2) =  Real(YdadjYumu2YuadjYd(i2,i2),dp) 
 YdadjYuYumq2adjYd = Matmul(Yd,adjYuYumq2adjYd) 
 YdadjYuYuadjYdmd2 = Matmul(Yd,adjYuYuadjYdmd2) 
 YdadjYuYuadjYdYd = Matmul(Yd,adjYuYuadjYdYd) 
 YdadjYuYuadjYdTd = Matmul(Yd,adjYuYuadjYdTd) 
 YdadjYuYuadjYuYu = Matmul(Yd,adjYuYuadjYuYu) 
 YdadjYuYuadjYuTu = Matmul(Yd,adjYuYuadjYuTu) 
 YdadjYuTuadjYdYd = Matmul(Yd,adjYuTuadjYdYd) 
 YdadjYuTuadjYuYu = Matmul(Yd,adjYuTuadjYuYu) 
 Yumq2adjYdYdadjYu = Matmul(Yu,mq2adjYdYdadjYu) 
 Yumq2adjYuYuadjYu = Matmul(Yu,mq2adjYuYuadjYu) 
 YuadjYdmd2YdadjYu = Matmul(Yu,adjYdmd2YdadjYu) 
Forall(i2=1:3)  YuadjYdmd2YdadjYu(i2,i2) =  Real(YuadjYdmd2YdadjYu(i2,i2),dp) 
 YuadjYdYdmq2adjYu = Matmul(Yu,adjYdYdmq2adjYu) 
 YuadjYdYdadjYdYd = Matmul(Yu,adjYdYdadjYdYd) 
 YuadjYdYdadjYdTd = Matmul(Yu,adjYdYdadjYdTd) 
 YuadjYdYdadjYumu2 = Matmul(Yu,adjYdYdadjYumu2) 
 YuadjYdYdadjYuYu = Matmul(Yu,adjYdYdadjYuYu) 
 YuadjYdYdadjYuTu = Matmul(Yu,adjYdYdadjYuTu) 
 YuadjYdTdadjYdYd = Matmul(Yu,adjYdTdadjYdYd) 
 YuadjYdTdadjYuYu = Matmul(Yu,adjYdTdadjYuYu) 
 YuadjYumu2YuadjYu = Matmul(Yu,adjYumu2YuadjYu) 
Forall(i2=1:3)  YuadjYumu2YuadjYu(i2,i2) =  Real(YuadjYumu2YuadjYu(i2,i2),dp) 
 YuadjYuYumq2adjYu = Matmul(Yu,adjYuYumq2adjYu) 
 YuadjYuYuadjYumu2 = Matmul(Yu,adjYuYuadjYumu2) 
 YuadjYuYuadjYuYu = Matmul(Yu,adjYuYuadjYuYu) 
 YuadjYuYuadjYuTu = Matmul(Yu,adjYuYuadjYuTu) 
 YuadjYuTuadjYuYu = Matmul(Yu,adjYuTuadjYuYu) 
 adjy2me92y2adjy2y2 = Matmul(adjy2,me92y2adjy2y2) 
 adjy2y2ml92adjy2y2 = Matmul(adjy2,y2ml92adjy2y2) 
Forall(i2=1:2)  adjy2y2ml92adjy2y2(i2,i2) =  Real(adjy2y2ml92adjy2y2(i2,i2),dp) 
 adjy2y2adjy2me92y2 = Matmul(adjy2,y2adjy2me92y2) 
 adjy2y2adjy2y2ml92 = Matmul(adjy2,y2adjy2y2ml92) 
 adjYdmd2YdadjYdYd = Matmul(adjYd,md2YdadjYdYd) 
 adjYdYdmq2adjYdYd = Matmul(adjYd,Ydmq2adjYdYd) 
Forall(i2=1:3)  adjYdYdmq2adjYdYd(i2,i2) =  Real(adjYdYdmq2adjYdYd(i2,i2),dp) 
 adjYdYdadjYdmd2Yd = Matmul(adjYd,YdadjYdmd2Yd) 
 adjYdYdadjYdYdmq2 = Matmul(adjYd,YdadjYdYdmq2) 
 adjYumu2YuadjYuYu = Matmul(adjYu,mu2YuadjYuYu) 
 adjYuYumq2adjYuYu = Matmul(adjYu,Yumq2adjYuYu) 
Forall(i2=1:3)  adjYuYumq2adjYuYu(i2,i2) =  Real(adjYuYumq2adjYuYu(i2,i2),dp) 
 adjYuYuadjYumu2Yu = Matmul(adjYu,YuadjYumu2Yu) 
 adjYuYuadjYuYumq2 = Matmul(adjYu,YuadjYuYumq2) 
 Ty2adjy2y2adjy2y2 = Matmul(Ty2,adjy2y2adjy2y2) 
 TdadjYdYdadjYdYd = Matmul(Td,adjYdYdadjYdYd) 
 TdadjYuYuadjYdYd = Matmul(Td,adjYuYuadjYdYd) 
 TdadjYuYuadjYuYu = Matmul(Td,adjYuYuadjYuYu) 
 TuadjYdYdadjYdYd = Matmul(Tu,adjYdYdadjYdYd) 
 TuadjYdYdadjYuYu = Matmul(Tu,adjYdYdadjYuYu) 
 TuadjYuYuadjYuYu = Matmul(Tu,adjYuYuadjYuYu) 
 TrCTy2Tpy2 = cTrace(CTy2Tpy2)
 TrCTdTpYd = cTrace(CTdTpYd)
 TrCTuTpYu = cTrace(CTuTpYu)
 Try2adjy2Cme92 = cTrace(y2adjy2Cme92)
 Try2Cml92adjy2 = Real(cTrace(y2Cml92adjy2),dp)  
 TrYdadjYdCmd2 = cTrace(YdadjYdCmd2)
 TrYdCmq2adjYd = Real(cTrace(YdCmq2adjYd),dp)  
 TrYuadjYuCmu2 = cTrace(YuadjYuCmu2)
 TrYuCmq2adjYu = Real(cTrace(YuCmq2adjYu),dp)  
 Try2adjy2y2adjy2 = Real(cTrace(y2adjy2y2adjy2),dp)  
 Try2adjy2Ty2adjy2 = cTrace(y2adjy2Ty2adjy2)
 Try2adjy2Ty2adjTy2 = cTrace(y2adjy2Ty2adjTy2)
 Try2adjTy2Ty2adjy2 = cTrace(y2adjTy2Ty2adjy2)
 TrYdadjYdYdadjYd = Real(cTrace(YdadjYdYdadjYd),dp)  
 TrYdadjYdTdadjYd = cTrace(YdadjYdTdadjYd)
 TrYdadjYdTdadjTd = cTrace(YdadjYdTdadjTd)
 TrYdadjYuYuadjYd = Real(cTrace(YdadjYuYuadjYd),dp)  
 TrYdadjYuTuadjYd = cTrace(YdadjYuTuadjYd)
 TrYdadjYuTuadjTd = cTrace(YdadjYuTuadjTd)
 TrYdadjTdTdadjYd = cTrace(YdadjTdTdadjYd)
 TrYdadjTuTuadjYd = cTrace(YdadjTuTuadjYd)
 TrYuadjYdTdadjYu = cTrace(YuadjYdTdadjYu)
 TrYuadjYdTdadjTu = cTrace(YuadjYdTdadjTu)
 TrYuadjYuYuadjYu = Real(cTrace(YuadjYuYuadjYu),dp)  
 TrYuadjYuTuadjYu = cTrace(YuadjYuTuadjYu)
 TrYuadjYuTuadjTu = cTrace(YuadjYuTuadjTu)
 TrYuadjTdTdadjYu = cTrace(YuadjTdTdadjYu)
 TrYuadjTuTuadjYu = cTrace(YuadjTuTuadjYu)
 Trmd2YdadjYdYdadjYd = cTrace(md2YdadjYdYdadjYd)
 Trmd2YdadjYuYuadjYd = cTrace(md2YdadjYuYuadjYd)
 Trme92y2adjy2y2adjy2 = cTrace(me92y2adjy2y2adjy2)
 Trml92adjy2y2adjy2y2 = cTrace(ml92adjy2y2adjy2y2)
 Trmq2adjYdYdadjYdYd = cTrace(mq2adjYdYdadjYdYd)
 Trmq2adjYdYdadjYuYu = cTrace(mq2adjYdYdadjYuYu)
 Trmq2adjYuYuadjYdYd = cTrace(mq2adjYuYuadjYdYd)
 Trmq2adjYuYuadjYuYu = cTrace(mq2adjYuYuadjYuYu)
 Trmu2YuadjYdYdadjYu = cTrace(mu2YuadjYdYdadjYu)
 Trmu2YuadjYuYuadjYu = cTrace(mu2YuadjYuYuadjYu)
 sqrt15 =sqrt(15._dp) 
 g1p4 =g1**4 
 g2p4 =g2**4 
 g3p4 =g3**4 
 gpp4 =gp**4 
 Qdp4 =Qd**4 
 Qe4p3 =Qe4**3 
 Qe4p4 =Qe4**4 
 Qe9p3 =Qe9**3 
 Qe9p4 =Qe9**4 
 QHdp3 =QHd**3 
 QHdp4 =QHd**4 
 QHup3 =QHu**3 
 QHup4 =QHu**4 
 Ql4p3 =Ql4**3 
 Ql4p4 =Ql4**4 
 Ql9p3 =Ql9**3 
 Ql9p4 =Ql9**4 
 Qqp3 =Qq**3 
 Qqp4 =Qq**4 
 Qsp3 =Qs**3 
 Qsp4 =Qs**4 
 Qup3 =Qu**3 
 Qup4 =Qu**4 
 lamp4 =lam**4 
 lamp5 =lam**5 
 Cy1p2 =Conjg(y1)**2 
End If 
 
 
Tr1(1) = g1*sqrt3ov5*(me42 - mHd2 + mHu2 - ml42 + Trmd2 + Trme92 - Trml92 +           & 
&  Trmq2 - 2._dp*(Trmu2))

Tr1(4) = gp*(me42*Qe4 + 2*mHd2*QHd + 2*mHu2*QHu + 2*ml42*Ql4 + ms2*Qs +               & 
&  3*Qd*Trmd2 + Qe9*Trme92 + 2*Ql9*Trml92 + 6*Qq*Trmq2 + 3*Qu*Trmu2)

If (TwoLoopRGE) Then 
Tr2U1(1, 1) = (g1p2*(6._dp*(me42) + 3._dp*(mHd2) + 3._dp*(mHu2) + 3._dp*(ml42)        & 
&  + 2._dp*(Trmd2) + 6._dp*(Trme92) + 3._dp*(Trml92) + Trmq2 + 8._dp*(Trmu2)))/10._dp

Tr2U1(1, 4) = g1*gp*sqrt3ov5*(me42*Qe4 - mHd2*QHd + mHu2*QHu - ml42*Ql4 +             & 
&  Qd*Trmd2 + Qe9*Trme92 - Ql9*Trml92 + Qq*Trmq2 - 2*Qu*Trmu2)

Tr3(1) = (g1*ooSqrt15*(36*g1p2*me42 - 9*g1p2*mHd2 - 45*g2p2*mHd2 + 30*lamp2*mHd2 +    & 
&  9*g1p2*mHu2 + 45*g2p2*mHu2 - 30*lamp2*mHu2 - 9*g1p2*ml42 - 45*g2p2*ml42 +             & 
&  30*Absy1*(-2._dp*(me42) + mHd2 + ml42) + 60*gpp2*me42*Qe4p2 - 60*gpp2*mHd2*QHdp2 +    & 
&  60*gpp2*mHu2*QHup2 - 60*gpp2*ml42*Ql4p2 + 4*(g1p2 + 20._dp*(g3p2) + 15*gpp2*Qdp2)     & 
& *Trmd2 + 36*g1p2*Trme92 + 60*gpp2*Qe9p2*Trme92 - 9*g1p2*Trml92 - 45*g2p2*Trml92 -      & 
&  60*gpp2*Ql9p2*Trml92 + g1p2*Trmq2 + 45*g2p2*Trmq2 + 80*g3p2*Trmq2 + 60*gpp2*Qqp2*Trmq2 -& 
&  32*g1p2*Trmu2 - 160*g3p2*Trmu2 - 120*gpp2*Qup2*Trmu2 + 30*mHd2*Try2adjy2 -            & 
&  60._dp*(Try2adjy2Cme92) + 30._dp*(Try2Cml92adjy2) + 90*mHd2*TrYdadjYd -               & 
&  60._dp*(TrYdadjYdCmd2) - 30._dp*(TrYdCmq2adjYd) - 90*mHu2*TrYuadjYu + 120._dp*(TrYuadjYuCmu2)& 
&  - 30._dp*(TrYuCmq2adjYu)))/20._dp

Tr2(2) = (mHd2 + mHu2 + ml42 + Trml92 + 3._dp*(Trmq2))/2._dp

Tr2(3) = (Trmd2 + 2._dp*(Trmq2) + Trmu2)/2._dp

Tr2U1(4, 1) = g1*gp*sqrt3ov5*(me42*Qe4 - mHd2*QHd + mHu2*QHu - ml42*Ql4 +             & 
&  Qd*Trmd2 + Qe9*Trme92 - Ql9*Trml92 + Qq*Trmq2 - 2*Qu*Trmu2)

Tr2U1(4, 4) = gpp2*(me42*Qe4p2 + 2*mHd2*QHdp2 + 2*mHu2*QHup2 + 2*ml42*Ql4p2 +         & 
&  ms2*Qsp2 + 3*Qdp2*Trmd2 + Qe9p2*Trme92 + 2*Ql9p2*Trml92 + 6*Qqp2*Trmq2 +              & 
&  3*Qup2*Trmu2)

Tr3(4) = (gp*(6*g1p2*me42*Qe4 + 10*gpp2*me42*Qe4p3 + 3*g1p2*mHd2*QHd + 15*g2p2*mHd2*QHd -& 
&  10*lamp2*mHd2*QHd + 20*gpp2*mHd2*QHdp3 + 3*g1p2*mHu2*QHu + 15*g2p2*mHu2*QHu -         & 
&  10*lamp2*mHu2*QHu + 20*gpp2*mHu2*QHup3 + 3*g1p2*ml42*Ql4 + 15*g2p2*ml42*Ql4 -         & 
&  10*Absy1*(me42*Qe4 + mHd2*QHd + ml42*Ql4) + 20*gpp2*ml42*Ql4p3 - 10*lamp2*ms2*Qs +    & 
&  10*gpp2*ms2*Qsp3 + 2*Qd*(g1p2 + 20._dp*(g3p2) + 15*gpp2*Qdp2)*Trmd2 + 6*g1p2*Qe9*Trme92 +& 
&  10*gpp2*Qe9p3*Trme92 + 3*g1p2*Ql9*Trml92 + 15*g2p2*Ql9*Trml92 + 20*gpp2*Ql9p3*Trml92 +& 
&  g1p2*Qq*Trmq2 + 45*g2p2*Qq*Trmq2 + 80*g3p2*Qq*Trmq2 + 60*gpp2*Qqp3*Trmq2 +            & 
&  8*g1p2*Qu*Trmu2 + 40*g3p2*Qu*Trmu2 + 30*gpp2*Qup3*Trmu2 - 10*mHd2*QHd*Try2adjy2 -     & 
&  10*Qe9*Try2adjy2Cme92 - 10*Ql9*Try2Cml92adjy2 - 30*mHd2*QHd*TrYdadjYd -               & 
&  30*Qd*TrYdadjYdCmd2 - 30*Qq*TrYdCmq2adjYd - 30*mHu2*QHu*TrYuadjYu - 30*Qu*TrYuadjYuCmu2 -& 
&  30*Qq*TrYuCmq2adjYu))/10._dp

End If 
 
 
!-------------------- 
! g1 
!-------------------- 
 
betag11  = 33._dp*(g1p3)/5._dp

 
 
If (TwoLoopRGE) Then 
betag12 = (g1p3*(-90._dp*(Absy1) + 199._dp*(g1p2) + 135._dp*(g2p2) + 440._dp*(g3p2) -           & 
&  30._dp*(lamp2) + 60*gpp2*Qdp2 + 60*gpp2*Qe4p2 + 120*gpp2*Qe9p2 + 30*gpp2*QHdp2 +      & 
&  30*gpp2*QHup2 + 30*gpp2*Ql4p2 + 60*gpp2*Ql9p2 + 30*gpp2*Qqp2 + 240*gpp2*Qup2 -        & 
&  90._dp*(Try2adjy2) - 70._dp*(TrYdadjYd) - 130._dp*(TrYuadjYu)))/25._dp

 
Dg1 = oo16pi2*( betag11 + oo16pi2 * betag12 ) 

 
Else 
Dg1 = oo16pi2* betag11 
End If 
 
 
!-------------------- 
! g2 
!-------------------- 
 
betag21  = g2p3

 
 
If (TwoLoopRGE) Then 
betag22 = (g2p3*(-10._dp*(Absy1) + 9._dp*(g1p2) + 125._dp*(g2p2) + 120._dp*(g3p2) -             & 
&  10._dp*(lamp2) + 10*gpp2*QHdp2 + 10*gpp2*QHup2 + 10*gpp2*Ql4p2 + 20*gpp2*Ql9p2 +      & 
&  90*gpp2*Qqp2 - 10._dp*(Try2adjy2) - 30._dp*(TrYdadjYd) - 30._dp*(TrYuadjYu)))/5._dp

 
Dg2 = oo16pi2*( betag21 + oo16pi2 * betag22 ) 

 
Else 
Dg2 = oo16pi2* betag21 
End If 
 
 
!-------------------- 
! g3 
!-------------------- 
 
betag31  = -3._dp*(g3p3)

 
 
If (TwoLoopRGE) Then 
betag32 = (g3p3*(11._dp*(g1p2) + 45._dp*(g2p2) + 70._dp*(g3p2) + 30*gpp2*Qdp2 + 60*gpp2*Qqp2 +  & 
&  30*gpp2*Qup2 - 20._dp*(TrYdadjYd) - 20._dp*(TrYuadjYu)))/5._dp

 
Dg3 = oo16pi2*( betag31 + oo16pi2 * betag32 ) 

 
Else 
Dg3 = oo16pi2* betag31 
End If 
 
 
!-------------------- 
! gp 
!-------------------- 
 
betagp1  = gpp3*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2) +               & 
&  2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2))

 
 
If (TwoLoopRGE) Then 
betagp2 = (2*gpp3*(6*g1p2*Qdp2 + 120*g3p2*Qdp2 + 90*gpp2*Qdp4 + 6*g1p2*Qe4p2 + 10*gpp2*Qe4p4 +  & 
&  12*g1p2*Qe9p2 + 20*gpp2*Qe9p4 + 3*g1p2*QHdp2 + 15*g2p2*QHdp2 - 10*lamp2*QHdp2 +       & 
&  20*gpp2*QHdp4 + 3*g1p2*QHup2 + 15*g2p2*QHup2 - 10*lamp2*QHup2 + 20*gpp2*QHup4 +       & 
&  3*g1p2*Ql4p2 + 15*g2p2*Ql4p2 - 10*Absy1*(Qe4p2 + QHdp2 + Ql4p2) + 20*gpp2*Ql4p4 +     & 
&  6*g1p2*Ql9p2 + 30*g2p2*Ql9p2 + 40*gpp2*Ql9p4 + 3*g1p2*Qqp2 + 135*g2p2*Qqp2 +          & 
&  240*g3p2*Qqp2 + 180*gpp2*Qqp4 - 10*lamp2*Qsp2 + 10*gpp2*Qsp4 + 24*g1p2*Qup2 +         & 
&  120*g3p2*Qup2 + 90*gpp2*Qup4 - 10*(Qe9p2 + QHdp2 + Ql9p2)*Try2adjy2 - 30*Qdp2*TrYdadjYd -& 
&  30*QHdp2*TrYdadjYd - 30*Qqp2*TrYdadjYd - 30*QHup2*TrYuadjYu - 30*Qqp2*TrYuadjYu -     & 
&  30*Qup2*TrYuadjYu))/5._dp

 
Dgp = oo16pi2*( betagp1 + oo16pi2 * betagp2 ) 

 
Else 
Dgp = oo16pi2* betagp1 
End If 
 
 
!-------------------- 
! Yd 
!-------------------- 
 
betaYd1  = (Absy1 - 7._dp*(g1p2)/15._dp - 3._dp*(g2p2) - 16._dp*(g3p2)/3._dp +        & 
&  lamp2 - 2*gpp2*Qdp2 - 2*gpp2*QHdp2 - 2*gpp2*Qqp2 + Try2adjy2 + 3._dp*(TrYdadjYd))     & 
& *Yd + 3._dp*(YdadjYdYd) + YdadjYuYu

 
 
If (TwoLoopRGE) Then 
betaYd2 = (287._dp*(g1p4)/90._dp + g1p2*g2p2 + 15._dp*(g2p4)/2._dp + (8*g1p2*g3p2)/9._dp +      & 
&  8*g2p2*g3p2 - 16._dp*(g3p4)/9._dp - 3._dp*(lamp4) + (44*g1p2*gpp2*Qdp2)/15._dp +      & 
&  (32*g3p2*gpp2*Qdp2)/3._dp + 22*gpp4*Qdp4 + (4*g1p2*gpp2*Qd*Qe4)/5._dp +               & 
&  2*gpp4*Qdp2*Qe4p2 + (8*g1p2*gpp2*Qd*Qe9)/5._dp + 4*gpp4*Qdp2*Qe9p2 - (22*g1p2*gpp2*Qd*QHd)/5._dp -& 
&  (6*g1p2*gpp2*Qe4*QHd)/5._dp - (12*g1p2*gpp2*Qe9*QHd)/5._dp + (12*g1p2*gpp2*QHdp2)/5._dp +& 
&  6*g2p2*gpp2*QHdp2 - 2*gpp2*lamp2*QHdp2 + 22*gpp4*Qdp2*QHdp2 + 2*gpp4*Qe4p2*QHdp2 +    & 
&  4*gpp4*Qe9p2*QHdp2 + 8*gpp4*QHdp4 + (4*g1p2*gpp2*Qd*QHu)/5._dp - (6*g1p2*gpp2*QHd*QHu)/5._dp +& 
&  2*gpp2*lamp2*QHup2 + 4*gpp4*Qdp2*QHup2 + 4*gpp4*QHdp2*QHup2 - (4*g1p2*gpp2*Qd*Ql4)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql4)/5._dp + 4*gpp4*Qdp2*Ql4p2 + 4*gpp4*QHdp2*Ql4p2 + (2*Absy1*(3._dp*(g1p2) +& 
&  5*gpp2*(Qe4p2 - QHdp2 + Ql4p2)))/5._dp - (8*g1p2*gpp2*Qd*Ql9)/5._dp + (12*g1p2*gpp2*QHd*Ql9)/5._dp +& 
&  8*gpp4*Qdp2*Ql9p2 + 8*gpp4*QHdp2*Ql9p2 + (18*g1p2*gpp2*Qd*Qq)/5._dp + (2*g1p2*gpp2*Qe4*Qq)/5._dp +& 
&  (4*g1p2*gpp2*Qe9*Qq)/5._dp - 4*g1p2*gpp2*QHd*Qq + (2*g1p2*gpp2*QHu*Qq)/5._dp -        & 
&  (2*g1p2*gpp2*Ql4*Qq)/5._dp - (4*g1p2*gpp2*Ql9*Qq)/5._dp + (4*g1p2*gpp2*Qqp2)/3._dp +  & 
&  6*g2p2*gpp2*Qqp2 + (32*g3p2*gpp2*Qqp2)/3._dp + 54*gpp4*Qdp2*Qqp2 + 2*gpp4*Qe4p2*Qqp2 +& 
&  4*gpp4*Qe9p2*Qqp2 + 40*gpp4*QHdp2*Qqp2 + 4*gpp4*QHup2*Qqp2 + 4*gpp4*Ql4p2*Qqp2 +      & 
&  8*gpp4*Ql9p2*Qqp2 + 40*gpp4*Qqp4 + 2*gpp2*lamp2*Qsp2 + 2*gpp4*Qdp2*Qsp2 +             & 
&  2*gpp4*QHdp2*Qsp2 + 2*gpp4*Qqp2*Qsp2 - (24*g1p2*gpp2*Qd*Qu)/5._dp + (36*g1p2*gpp2*QHd*Qu)/5._dp -& 
&  (12*g1p2*gpp2*Qq*Qu)/5._dp + 18*gpp4*Qdp2*Qup2 + 18*gpp4*QHdp2*Qup2 + 18*gpp4*Qqp2*Qup2 +& 
&  (2*(3._dp*(g1p2) + 5*gpp2*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2)/5._dp - 3._dp*(Try2adjy2y2adjy2) -& 
&  (2*g1p2*TrYdadjYd)/5._dp + 16*g3p2*TrYdadjYd + 6*gpp2*Qdp2*TrYdadjYd - 6*gpp2*QHdp2*TrYdadjYd +& 
&  6*gpp2*Qqp2*TrYdadjYd - 9._dp*(TrYdadjYdYdadjYd) - 3._dp*(TrYdadjYuYuadjYd) -         & 
&  3*lamp2*TrYuadjYu - 3*Cy1p2*y1p2)*Yd + (-3._dp*(Absy1) + 4._dp*(g1p2)/5._dp +         & 
&  6._dp*(g2p2) - 3._dp*(lamp2) - 2*gpp2*Qdp2 + 6*gpp2*QHdp2 + 2*gpp2*Qqp2 -             & 
&  3._dp*(Try2adjy2) - 9._dp*(TrYdadjYd))*YdadjYdYd - 4._dp*(YdadjYdYdadjYdYd)  
betaYd2 =  betaYd2+ (4*g1p2*YdadjYuYu)/5._dp - lamp2*YdadjYuYu + 2*gpp2*QHup2*YdadjYuYu - 2*gpp2*Qqp2*YdadjYuYu +& 
&  2*gpp2*Qup2*YdadjYuYu - 3*TrYuadjYu*YdadjYuYu - 2._dp*(YdadjYuYuadjYdYd) -            & 
&  2._dp*(YdadjYuYuadjYuYu)

 
DYd = oo16pi2*( betaYd1 + oo16pi2 * betaYd2 ) 

 
Else 
DYd = oo16pi2* betaYd1 
End If 
 
 
Call Chop(DYd) 

!-------------------- 
! y1 
!-------------------- 
 
betay11  = (-9*g1p2*y1)/5._dp - 3*g2p2*y1 + lamp2*y1 - 2*gpp2*Qe4p2*y1 -              & 
&  2*gpp2*QHdp2*y1 - 2*gpp2*Ql4p2*y1 + Try2adjy2*y1 + 3*TrYdadjYd*y1 + 4*y1p2*Conjg(y1)

 
 
If (TwoLoopRGE) Then 
betay12 = -(y1*(-135._dp*(g1p4) - 18*g1p2*g2p2 - 75._dp*(g2p4) + 30._dp*(lamp4) -               & 
&  72*g1p2*gpp2*Qd*Qe4 - 72*g1p2*gpp2*Qe4p2 - 180*gpp4*Qdp2*Qe4p2 - 60*gpp4*Qe4p4 -      & 
&  48*g1p2*gpp2*Qe4*Qe9 - 40*gpp4*Qe4p2*Qe9p2 + 36*g1p2*gpp2*Qd*QHd + 36*g1p2*gpp2*Qe4*QHd +& 
&  24*g1p2*gpp2*Qe9*QHd - 24*g1p2*gpp2*QHdp2 - 60*g2p2*gpp2*QHdp2 + 20*gpp2*lamp2*QHdp2 -& 
&  180*gpp4*Qdp2*QHdp2 - 60*gpp4*Qe4p2*QHdp2 - 40*gpp4*Qe9p2*QHdp2 - 80*gpp4*QHdp4 -     & 
&  24*g1p2*gpp2*Qe4*QHu + 12*g1p2*gpp2*QHd*QHu - 20*gpp2*lamp2*QHup2 - 40*gpp4*Qe4p2*QHup2 -& 
&  40*gpp4*QHdp2*QHup2 + 36*g1p2*gpp2*Qd*Ql4 + 36*g1p2*gpp2*Qe4*Ql4 + 24*g1p2*gpp2*Qe9*Ql4 -& 
&  24*g1p2*gpp2*QHd*Ql4 + 12*g1p2*gpp2*QHu*Ql4 - 24*g1p2*gpp2*Ql4p2 - 60*g2p2*gpp2*Ql4p2 -& 
&  180*gpp4*Qdp2*Ql4p2 - 60*gpp4*Qe4p2*Ql4p2 - 40*gpp4*Qe9p2*Ql4p2 - 80*gpp4*QHdp2*Ql4p2 -& 
&  40*gpp4*QHup2*Ql4p2 - 80*gpp4*Ql4p4 + 48*g1p2*gpp2*Qe4*Ql9 - 24*g1p2*gpp2*QHd*Ql9 -   & 
&  24*g1p2*gpp2*Ql4*Ql9 - 80*gpp4*Qe4p2*Ql9p2 - 80*gpp4*QHdp2*Ql9p2 - 80*gpp4*Ql4p2*Ql9p2 -& 
&  72*g1p2*gpp2*Qe4*Qq + 36*g1p2*gpp2*QHd*Qq + 36*g1p2*gpp2*Ql4*Qq - 360*gpp4*Qe4p2*Qqp2 -& 
&  360*gpp4*QHdp2*Qqp2 - 360*gpp4*Ql4p2*Qqp2 - 20*gpp2*lamp2*Qsp2 - 20*gpp4*Qe4p2*Qsp2 - & 
&  20*gpp4*QHdp2*Qsp2 - 20*gpp4*Ql4p2*Qsp2 + 144*g1p2*gpp2*Qe4*Qu - 72*g1p2*gpp2*QHd*Qu -& 
&  72*g1p2*gpp2*Ql4*Qu - 180*gpp4*Qe4p2*Qup2 - 180*gpp4*QHdp2*Qup2 - 180*gpp4*Ql4p2*Qup2 -& 
&  4*(3._dp*(g1p2) + 5*gpp2*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2 + 30._dp*(Try2adjy2y2adjy2) -& 
&  2*Absy1*(6._dp*(g1p2) + 30._dp*(g2p2) - 15._dp*(lamp2) + 20*gpp2*QHdp2 +              & 
&  20*gpp2*Ql4p2 - 15._dp*(Try2adjy2) - 45._dp*(TrYdadjYd)) + 4*g1p2*TrYdadjYd -         & 
&  160*g3p2*TrYdadjYd - 60*gpp2*Qdp2*TrYdadjYd + 60*gpp2*QHdp2*TrYdadjYd -               & 
&  60*gpp2*Qqp2*TrYdadjYd + 90._dp*(TrYdadjYdYdadjYd) + 30._dp*(TrYdadjYuYuadjYd) +      & 
&  30*lamp2*TrYuadjYu + 100*Cy1p2*y1p2))/10._dp

 
Dy1 = oo16pi2*( betay11 + oo16pi2 * betay12 ) 

 
Else 
Dy1 = oo16pi2* betay11 
End If 
 
 
Call Chop(Dy1) 

!-------------------- 
! y2 
!-------------------- 
 
betay21  = (Absy1 - 9._dp*(g1p2)/5._dp - 3._dp*(g2p2) + lamp2 - 2*gpp2*Qe9p2 -        & 
&  2*gpp2*QHdp2 - 2*gpp2*Ql9p2 + Try2adjy2 + 3._dp*(TrYdadjYd))*y2 + 3._dp*(y2adjy2y2)

 
 
If (TwoLoopRGE) Then 
betay22 = ((135._dp*(g1p4) + 18*g1p2*g2p2 + 75._dp*(g2p4) - 30._dp*(lamp4) + 72*g1p2*gpp2*Qd*Qe9 +& 
&  24*g1p2*gpp2*Qe4*Qe9 + 96*g1p2*gpp2*Qe9p2 + 180*gpp4*Qdp2*Qe9p2 + 20*gpp4*Qe4p2*Qe9p2 +& 
&  80*gpp4*Qe9p4 - 36*g1p2*gpp2*Qd*QHd - 12*g1p2*gpp2*Qe4*QHd - 48*g1p2*gpp2*Qe9*QHd +   & 
&  24*g1p2*gpp2*QHdp2 + 60*g2p2*gpp2*QHdp2 - 20*gpp2*lamp2*QHdp2 + 180*gpp4*Qdp2*QHdp2 + & 
&  20*gpp4*Qe4p2*QHdp2 + 80*gpp4*Qe9p2*QHdp2 + 80*gpp4*QHdp4 + 24*g1p2*gpp2*Qe9*QHu -    & 
&  12*g1p2*gpp2*QHd*QHu + 20*gpp2*lamp2*QHup2 + 40*gpp4*Qe9p2*QHup2 + 40*gpp4*QHdp2*QHup2 -& 
&  24*g1p2*gpp2*Qe9*Ql4 + 12*g1p2*gpp2*QHd*Ql4 + 40*gpp4*Qe9p2*Ql4p2 + 40*gpp4*QHdp2*Ql4p2 +& 
&  4*Absy1*(3._dp*(g1p2) + 5*gpp2*(Qe4p2 - QHdp2 + Ql4p2)) - 36*g1p2*gpp2*Qd*Ql9 -       & 
&  12*g1p2*gpp2*Qe4*Ql9 - 72*g1p2*gpp2*Qe9*Ql9 + 36*g1p2*gpp2*QHd*Ql9 - 12*g1p2*gpp2*QHu*Ql9 +& 
&  12*g1p2*gpp2*Ql4*Ql9 + 36*g1p2*gpp2*Ql9p2 + 60*g2p2*gpp2*Ql9p2 + 180*gpp4*Qdp2*Ql9p2 +& 
&  20*gpp4*Qe4p2*Ql9p2 + 120*gpp4*Qe9p2*Ql9p2 + 120*gpp4*QHdp2*Ql9p2 + 40*gpp4*QHup2*Ql9p2 +& 
&  40*gpp4*Ql4p2*Ql9p2 + 120*gpp4*Ql9p4 + 72*g1p2*gpp2*Qe9*Qq - 36*g1p2*gpp2*QHd*Qq -    & 
&  36*g1p2*gpp2*Ql9*Qq + 360*gpp4*Qe9p2*Qqp2 + 360*gpp4*QHdp2*Qqp2 + 360*gpp4*Ql9p2*Qqp2 +& 
&  20*gpp2*lamp2*Qsp2 + 20*gpp4*Qe9p2*Qsp2 + 20*gpp4*QHdp2*Qsp2 + 20*gpp4*Ql9p2*Qsp2 -   & 
&  144*g1p2*gpp2*Qe9*Qu + 72*g1p2*gpp2*QHd*Qu + 72*g1p2*gpp2*Ql9*Qu + 180*gpp4*Qe9p2*Qup2 +& 
&  180*gpp4*QHdp2*Qup2 + 180*gpp4*Ql9p2*Qup2 + 4*(3._dp*(g1p2) + 5*gpp2*(Qe9p2 -         & 
&  QHdp2 + Ql9p2))*Try2adjy2 - 30._dp*(Try2adjy2y2adjy2) - 4*g1p2*TrYdadjYd +            & 
&  160*g3p2*TrYdadjYd + 60*gpp2*Qdp2*TrYdadjYd - 60*gpp2*QHdp2*TrYdadjYd +               & 
&  60*gpp2*Qqp2*TrYdadjYd - 90._dp*(TrYdadjYdYdadjYd) - 30._dp*(TrYdadjYuYuadjYd) -      & 
&  30*lamp2*TrYuadjYu - 30*Cy1p2*y1p2)*y2)/10._dp + (-3._dp*(Absy1) + 6._dp*(g2p2) -     & 
&  3._dp*(lamp2) - 2*gpp2*Qe9p2 + 6*gpp2*QHdp2 + 2*gpp2*Ql9p2 - 3._dp*(Try2adjy2) -      & 
&  9._dp*(TrYdadjYd))*y2adjy2y2 - 4._dp*(y2adjy2y2adjy2y2)

 
Dy2 = oo16pi2*( betay21 + oo16pi2 * betay22 ) 

 
Else 
Dy2 = oo16pi2* betay21 
End If 
 
 
Call Chop(Dy2) 

!-------------------- 
! lam 
!-------------------- 
 
betalam1  = 4._dp*(lamp3) + Absy1*lam - (3*g1p2*lam)/5._dp - 3*g2p2*lam -             & 
&  2*gpp2*QHdp2*lam - 2*gpp2*QHup2*lam - 2*gpp2*Qsp2*lam + Try2adjy2*lam +               & 
&  3*TrYdadjYd*lam + 3*TrYuadjYu*lam

 
 
If (TwoLoopRGE) Then 
betalam2 = (6*g1p2*lamp3)/5._dp + 6*g2p2*lamp3 - 10._dp*(lamp5) + 4*gpp2*lamp3*QHdp2 +           & 
&  4*gpp2*lamp3*QHup2 - 9*lamp3*TrYdadjYd - 9*lamp3*TrYuadjYu + (207*g1p4*lam)/50._dp +  & 
&  (9*g1p2*g2p2*lam)/5._dp + (15*g2p4*lam)/2._dp - (18*g1p2*gpp2*Qd*QHd*lam)/5._dp -     & 
&  (6*g1p2*gpp2*Qe4*QHd*lam)/5._dp - (12*g1p2*gpp2*Qe9*QHd*lam)/5._dp + (12*g1p2*gpp2*QHdp2*lam)/5._dp +& 
&  6*g2p2*gpp2*QHdp2*lam + 18*gpp4*Qdp2*QHdp2*lam + 2*gpp4*Qe4p2*QHdp2*lam +             & 
&  4*gpp4*Qe9p2*QHdp2*lam + 8*gpp4*QHdp4*lam + (18*g1p2*gpp2*Qd*QHu*lam)/5._dp +         & 
&  (6*g1p2*gpp2*Qe4*QHu*lam)/5._dp + (12*g1p2*gpp2*Qe9*QHu*lam)/5._dp - (12*g1p2*gpp2*QHd*QHu*lam)/5._dp +& 
&  (12*g1p2*gpp2*QHup2*lam)/5._dp + 6*g2p2*gpp2*QHup2*lam + 18*gpp4*Qdp2*QHup2*lam +     & 
&  2*gpp4*Qe4p2*QHup2*lam + 4*gpp4*Qe9p2*QHup2*lam + 8*gpp4*QHdp2*QHup2*lam +            & 
&  8*gpp4*QHup4*lam + (6*g1p2*gpp2*QHd*Ql4*lam)/5._dp - (6*g1p2*gpp2*QHu*Ql4*lam)/5._dp +& 
&  4*gpp4*QHdp2*Ql4p2*lam + 4*gpp4*QHup2*Ql4p2*lam + (Absy1*(6._dp*(g1p2) -              & 
&  15._dp*(lamp2) + 10*gpp2*(Qe4p2 - QHdp2 + Ql4p2))*lam)/5._dp + (12*g1p2*gpp2*QHd*Ql9*lam)/5._dp -& 
&  (12*g1p2*gpp2*QHu*Ql9*lam)/5._dp + 8*gpp4*QHdp2*Ql9p2*lam + 8*gpp4*QHup2*Ql9p2*lam -  & 
&  (18*g1p2*gpp2*QHd*Qq*lam)/5._dp + (18*g1p2*gpp2*QHu*Qq*lam)/5._dp + 36*gpp4*QHdp2*Qqp2*lam +& 
&  36*gpp4*QHup2*Qqp2*lam + 18*gpp4*Qdp2*Qsp2*lam + 2*gpp4*Qe4p2*Qsp2*lam +              & 
&  4*gpp4*Qe9p2*Qsp2*lam + 6*gpp4*QHdp2*Qsp2*lam + 6*gpp4*QHup2*Qsp2*lam +               & 
&  4*gpp4*Ql4p2*Qsp2*lam + 8*gpp4*Ql9p2*Qsp2*lam + 36*gpp4*Qqp2*Qsp2*lam +               & 
&  6*gpp4*Qsp4*lam + (36*g1p2*gpp2*QHd*Qu*lam)/5._dp - (36*g1p2*gpp2*QHu*Qu*lam)/5._dp + & 
&  18*gpp4*QHdp2*Qup2*lam + 18*gpp4*QHup2*Qup2*lam + 18*gpp4*Qsp2*Qup2*lam +             & 
&  ((6._dp*(g1p2) - 15._dp*(lamp2) + 10*gpp2*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2*lam)/5._dp -& 
&  3*Try2adjy2y2adjy2*lam - (2*g1p2*TrYdadjYd*lam)/5._dp + 16*g3p2*TrYdadjYd*lam  
betalam2 =  betalam2+ 6*gpp2*Qdp2*TrYdadjYd*lam - 6*gpp2*QHdp2*TrYdadjYd*lam + 6*gpp2*Qqp2*TrYdadjYd*lam -  & 
&  9*TrYdadjYdYdadjYd*lam - 6*TrYdadjYuYuadjYd*lam + (4*g1p2*TrYuadjYu*lam)/5._dp +      & 
&  16*g3p2*TrYuadjYu*lam - 6*gpp2*QHup2*TrYuadjYu*lam + 6*gpp2*Qqp2*TrYuadjYu*lam +      & 
&  6*gpp2*Qup2*TrYuadjYu*lam - 9*TrYuadjYuYuadjYu*lam - 3*Cy1p2*y1p2*lam

 
Dlam = oo16pi2*( betalam1 + oo16pi2 * betalam2 ) 

 
Else 
Dlam = oo16pi2* betalam1 
End If 
 
 
!-------------------- 
! Yu 
!-------------------- 
 
betaYu1  = (-13._dp*(g1p2)/15._dp - 3._dp*(g2p2) - 16._dp*(g3p2)/3._dp +              & 
&  lamp2 - 2*gpp2*QHup2 - 2*gpp2*Qqp2 - 2*gpp2*Qup2 + 3._dp*(TrYuadjYu))*Yu +            & 
&  YuadjYdYd + 3._dp*(YuadjYuYu)

 
 
If (TwoLoopRGE) Then 
betaYu2 = (2743._dp*(g1p4)/450._dp + g1p2*g2p2 + 15._dp*(g2p4)/2._dp + (136*g1p2*g3p2)/45._dp + & 
&  8*g2p2*g3p2 - 16._dp*(g3p4)/9._dp - Absy1*lamp2 - 3._dp*(lamp4) + 2*gpp2*lamp2*QHdp2 +& 
&  (18*g1p2*gpp2*Qd*QHu)/5._dp + (6*g1p2*gpp2*Qe4*QHu)/5._dp + (12*g1p2*gpp2*Qe9*QHu)/5._dp -& 
&  (6*g1p2*gpp2*QHd*QHu)/5._dp + (12*g1p2*gpp2*QHup2)/5._dp + 6*g2p2*gpp2*QHup2 -        & 
&  2*gpp2*lamp2*QHup2 + 18*gpp4*Qdp2*QHup2 + 2*gpp4*Qe4p2*QHup2 + 4*gpp4*Qe9p2*QHup2 +   & 
&  4*gpp4*QHdp2*QHup2 + 8*gpp4*QHup4 - (6*g1p2*gpp2*QHu*Ql4)/5._dp + 4*gpp4*QHup2*Ql4p2 -& 
&  (12*g1p2*gpp2*QHu*Ql9)/5._dp + 8*gpp4*QHup2*Ql9p2 + (6*g1p2*gpp2*Qd*Qq)/5._dp +       & 
&  (2*g1p2*gpp2*Qe4*Qq)/5._dp + (4*g1p2*gpp2*Qe9*Qq)/5._dp - (2*g1p2*gpp2*QHd*Qq)/5._dp +& 
&  4*g1p2*gpp2*QHu*Qq - (2*g1p2*gpp2*Ql4*Qq)/5._dp - (4*g1p2*gpp2*Ql9*Qq)/5._dp +        & 
&  (4*g1p2*gpp2*Qqp2)/3._dp + 6*g2p2*gpp2*Qqp2 + (32*g3p2*gpp2*Qqp2)/3._dp +             & 
&  18*gpp4*Qdp2*Qqp2 + 2*gpp4*Qe4p2*Qqp2 + 4*gpp4*Qe9p2*Qqp2 + 4*gpp4*QHdp2*Qqp2 +       & 
&  40*gpp4*QHup2*Qqp2 + 4*gpp4*Ql4p2*Qqp2 + 8*gpp4*Ql9p2*Qqp2 + 40*gpp4*Qqp4 +           & 
&  2*gpp2*lamp2*Qsp2 + 2*gpp4*QHup2*Qsp2 + 2*gpp4*Qqp2*Qsp2 - (24*g1p2*gpp2*Qd*Qu)/5._dp -& 
&  (8*g1p2*gpp2*Qe4*Qu)/5._dp - (16*g1p2*gpp2*Qe9*Qu)/5._dp + (8*g1p2*gpp2*QHd*Qu)/5._dp -& 
&  (44*g1p2*gpp2*QHu*Qu)/5._dp + (8*g1p2*gpp2*Ql4*Qu)/5._dp + (16*g1p2*gpp2*Ql9*Qu)/5._dp -& 
&  (36*g1p2*gpp2*Qq*Qu)/5._dp + (176*g1p2*gpp2*Qup2)/15._dp + (32*g3p2*gpp2*Qup2)/3._dp +& 
&  18*gpp4*Qdp2*Qup2 + 2*gpp4*Qe4p2*Qup2 + 4*gpp4*Qe9p2*Qup2 + 4*gpp4*QHdp2*Qup2 +       & 
&  22*gpp4*QHup2*Qup2 + 4*gpp4*Ql4p2*Qup2 + 8*gpp4*Ql9p2*Qup2 + 54*gpp4*Qqp2*Qup2 +      & 
&  2*gpp4*Qsp2*Qup2 + 22*gpp4*Qup4 - lamp2*Try2adjy2 - 3*lamp2*TrYdadjYd -               & 
&  3._dp*(TrYdadjYuYuadjYd) + (4*g1p2*TrYuadjYu)/5._dp + 16*g3p2*TrYuadjYu -             & 
&  6*gpp2*QHup2*TrYuadjYu + 6*gpp2*Qqp2*TrYuadjYu + 6*gpp2*Qup2*TrYuadjYu -              & 
&  9._dp*(TrYuadjYuYuadjYu))*Yu + (-1._dp*(Absy1) + 2._dp*(g1p2)/5._dp - lamp2 +         & 
&  2*gpp2*Qdp2 + 2*gpp2*QHdp2 - 2*gpp2*Qqp2 - Try2adjy2 - 3._dp*(TrYdadjYd))*YuadjYdYd  
betaYu2 =  betaYu2- 2._dp*(YuadjYdYdadjYdYd) - 2._dp*(YuadjYdYdadjYuYu) + (2*g1p2*YuadjYuYu)/5._dp +      & 
&  6*g2p2*YuadjYuYu - 3*lamp2*YuadjYuYu + 6*gpp2*QHup2*YuadjYuYu + 2*gpp2*Qqp2*YuadjYuYu -& 
&  2*gpp2*Qup2*YuadjYuYu - 9*TrYuadjYu*YuadjYuYu - 4._dp*(YuadjYuYuadjYuYu)

 
DYu = oo16pi2*( betaYu1 + oo16pi2 * betaYu2 ) 

 
Else 
DYu = oo16pi2* betaYu1 
End If 
 
 
Call Chop(DYu) 

!-------------------- 
! Td 
!-------------------- 
 
betaTd1  = 5._dp*(TdadjYdYd) + TdadjYuYu + 4._dp*(YdadjYdTd) + 2._dp*(YdadjYuTu)      & 
&  + Absy1*Td - (7*g1p2*Td)/15._dp - 3*g2p2*Td - (16*g3p2*Td)/3._dp + lamp2*Td -         & 
&  2*gpp2*Qdp2*Td - 2*gpp2*QHdp2*Td - 2*gpp2*Qqp2*Td + Try2adjy2*Td + 3*TrYdadjYd*Td +   & 
&  Yd*((14*g1p2*M1)/15._dp + (32*g3p2*M3)/3._dp + 6*g2p2*M2 + 4*gpp2*M4*Qdp2 +           & 
&  4*gpp2*M4*QHdp2 + 4*gpp2*M4*Qqp2 + 2._dp*(Tradjy2Ty2) + 6._dp*(TradjYdTd)             & 
&  + 2*Conjg(y1)*Ty1 + 2*lam*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTd2 = -5*Absy1*TdadjYdYd + (6*g1p2*TdadjYdYd)/5._dp + 12*g2p2*TdadjYdYd - 5*lamp2*TdadjYdYd -& 
&  6*gpp2*Qdp2*TdadjYdYd + 10*gpp2*QHdp2*TdadjYdYd + 6*gpp2*Qqp2*TdadjYdYd -             & 
&  6._dp*(TdadjYdYdadjYdYd) + (4*g1p2*TdadjYuYu)/5._dp - lamp2*TdadjYuYu +               & 
&  2*gpp2*QHup2*TdadjYuYu - 2*gpp2*Qqp2*TdadjYuYu + 2*gpp2*Qup2*TdadjYuYu -              & 
&  4._dp*(TdadjYuYuadjYdYd) - 2._dp*(TdadjYuYuadjYuYu) - 5*TdadjYdYd*Try2adjy2 -         & 
&  15*TdadjYdYd*TrYdadjYd - 3*TdadjYuYu*TrYuadjYu - 4*Absy1*YdadjYdTd + (6*g1p2*YdadjYdTd)/5._dp +& 
&  6*g2p2*YdadjYdTd - 4*lamp2*YdadjYdTd + 8*gpp2*QHdp2*YdadjYdTd - 4*Try2adjy2*YdadjYdTd -& 
&  12*TrYdadjYd*YdadjYdTd - 8._dp*(YdadjYdTdadjYdYd) - 6._dp*(YdadjYdYdadjYdTd) +        & 
&  (8*g1p2*YdadjYuTu)/5._dp - 2*lamp2*YdadjYuTu + 4*gpp2*QHup2*YdadjYuTu -               & 
&  4*gpp2*Qqp2*YdadjYuTu + 4*gpp2*Qup2*YdadjYuTu - 6*TrYuadjYu*YdadjYuTu -               & 
&  4._dp*(YdadjYuTuadjYdYd) - 4._dp*(YdadjYuTuadjYuYu) - (8*g1p2*M1*YdadjYuYu)/5._dp -   & 
&  4*gpp2*M4*QHup2*YdadjYuYu + 4*gpp2*M4*Qqp2*YdadjYuYu - 4*gpp2*M4*Qup2*YdadjYuYu -     & 
&  6*TradjYuTu*YdadjYuYu - 2._dp*(YdadjYuYuadjYdTd) - 4._dp*(YdadjYuYuadjYuTu) +         & 
&  (6*Absy1*g1p2*Td)/5._dp + (287*g1p4*Td)/90._dp + g1p2*g2p2*Td + (15*g2p4*Td)/2._dp +  & 
&  (8*g1p2*g3p2*Td)/9._dp + 8*g2p2*g3p2*Td - (16*g3p4*Td)/9._dp - 3*lamp4*Td +           & 
&  (44*g1p2*gpp2*Qdp2*Td)/15._dp + (32*g3p2*gpp2*Qdp2*Td)/3._dp + 22*gpp4*Qdp4*Td +      & 
&  (4*g1p2*gpp2*Qd*Qe4*Td)/5._dp + 2*Absy1*gpp2*Qe4p2*Td + 2*gpp4*Qdp2*Qe4p2*Td +        & 
&  (8*g1p2*gpp2*Qd*Qe9*Td)/5._dp + 4*gpp4*Qdp2*Qe9p2*Td - (22*g1p2*gpp2*Qd*QHd*Td)/5._dp -& 
&  (6*g1p2*gpp2*Qe4*QHd*Td)/5._dp - (12*g1p2*gpp2*Qe9*QHd*Td)/5._dp - 2*Absy1*gpp2*QHdp2*Td +& 
&  (12*g1p2*gpp2*QHdp2*Td)/5._dp + 6*g2p2*gpp2*QHdp2*Td - 2*gpp2*lamp2*QHdp2*Td +        & 
&  22*gpp4*Qdp2*QHdp2*Td + 2*gpp4*Qe4p2*QHdp2*Td + 4*gpp4*Qe9p2*QHdp2*Td  
betaTd2 =  betaTd2+ 8*gpp4*QHdp4*Td + (4*g1p2*gpp2*Qd*QHu*Td)/5._dp - (6*g1p2*gpp2*QHd*QHu*Td)/5._dp +    & 
&  2*gpp2*lamp2*QHup2*Td + 4*gpp4*Qdp2*QHup2*Td + 4*gpp4*QHdp2*QHup2*Td - (4*g1p2*gpp2*Qd*Ql4*Td)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql4*Td)/5._dp + 2*Absy1*gpp2*Ql4p2*Td + 4*gpp4*Qdp2*Ql4p2*Td +       & 
&  4*gpp4*QHdp2*Ql4p2*Td - (8*g1p2*gpp2*Qd*Ql9*Td)/5._dp + (12*g1p2*gpp2*QHd*Ql9*Td)/5._dp +& 
&  8*gpp4*Qdp2*Ql9p2*Td + 8*gpp4*QHdp2*Ql9p2*Td + (18*g1p2*gpp2*Qd*Qq*Td)/5._dp +        & 
&  (2*g1p2*gpp2*Qe4*Qq*Td)/5._dp + (4*g1p2*gpp2*Qe9*Qq*Td)/5._dp - 4*g1p2*gpp2*QHd*Qq*Td +& 
&  (2*g1p2*gpp2*QHu*Qq*Td)/5._dp - (2*g1p2*gpp2*Ql4*Qq*Td)/5._dp - (4*g1p2*gpp2*Ql9*Qq*Td)/5._dp +& 
&  (4*g1p2*gpp2*Qqp2*Td)/3._dp + 6*g2p2*gpp2*Qqp2*Td + (32*g3p2*gpp2*Qqp2*Td)/3._dp +    & 
&  54*gpp4*Qdp2*Qqp2*Td + 2*gpp4*Qe4p2*Qqp2*Td + 4*gpp4*Qe9p2*Qqp2*Td + 40*gpp4*QHdp2*Qqp2*Td +& 
&  4*gpp4*QHup2*Qqp2*Td + 4*gpp4*Ql4p2*Qqp2*Td + 8*gpp4*Ql9p2*Qqp2*Td + 40*gpp4*Qqp4*Td +& 
&  2*gpp2*lamp2*Qsp2*Td + 2*gpp4*Qdp2*Qsp2*Td + 2*gpp4*QHdp2*Qsp2*Td + 2*gpp4*Qqp2*Qsp2*Td -& 
&  (24*g1p2*gpp2*Qd*Qu*Td)/5._dp + (36*g1p2*gpp2*QHd*Qu*Td)/5._dp - (12*g1p2*gpp2*Qq*Qu*Td)/5._dp +& 
&  18*gpp4*Qdp2*Qup2*Td + 18*gpp4*QHdp2*Qup2*Td + 18*gpp4*Qqp2*Qup2*Td + (6*g1p2*Try2adjy2*Td)/5._dp +& 
&  2*gpp2*Qe9p2*Try2adjy2*Td - 2*gpp2*QHdp2*Try2adjy2*Td + 2*gpp2*Ql9p2*Try2adjy2*Td -   & 
&  3*Try2adjy2y2adjy2*Td - (2*g1p2*TrYdadjYd*Td)/5._dp + 16*g3p2*TrYdadjYd*Td +          & 
&  6*gpp2*Qdp2*TrYdadjYd*Td - 6*gpp2*QHdp2*TrYdadjYd*Td + 6*gpp2*Qqp2*TrYdadjYd*Td -     & 
&  9*TrYdadjYdYdadjYd*Td - 3*TrYdadjYuYuadjYd*Td - 3*lamp2*TrYuadjYu*Td - 3*Cy1p2*y1p2*Td -& 
&  2*YdadjYuYu*lam*Tlam - (2*YdadjYdYd*(4*g1p2*M1 + 30*g2p2*M2 - 10*gpp2*M4*Qdp2 +       & 
&  30*gpp2*M4*QHdp2 + 10*gpp2*M4*Qqp2 + 15._dp*(Tradjy2Ty2) + 45._dp*(TradjYdTd) +       & 
&  15*Conjg(y1)*Ty1 + 15*lam*Tlam))/5._dp - (2*Yd*(287*g1p4*M1 + 45*g1p2*g2p2*M1 +       & 
&  40*g1p2*g3p2*M1 + 40*g1p2*g3p2*M3 + 360*g2p2*g3p2*M3 - 160*g3p4*M3 + 45*g1p2*g2p2*M2 +& 
&  675*g2p4*M2 + 360*g2p2*g3p2*M2 + 132*g1p2*gpp2*M1*Qdp2 + 480*g3p2*gpp2*M3*Qdp2 +      & 
&  132*g1p2*gpp2*M4*Qdp2 + 480*g3p2*gpp2*M4*Qdp2 + 1980*gpp4*M4*Qdp4 + 36*g1p2*gpp2*M1*Qd*Qe4 +& 
&  36*g1p2*gpp2*M4*Qd*Qe4 + 180*gpp4*M4*Qdp2*Qe4p2 + 72*g1p2*gpp2*M1*Qd*Qe9 +            & 
&  72*g1p2*gpp2*M4*Qd*Qe9 + 360*gpp4*M4*Qdp2*Qe9p2 - 198*g1p2*gpp2*M1*Qd*QHd -           & 
&  198*g1p2*gpp2*M4*Qd*QHd - 54*g1p2*gpp2*M1*Qe4*QHd - 54*g1p2*gpp2*M4*Qe4*QHd -         & 
&  108*g1p2*gpp2*M1*Qe9*QHd - 108*g1p2*gpp2*M4*Qe9*QHd + 108*g1p2*gpp2*M1*QHdp2 +        & 
&  108*g1p2*gpp2*M4*QHdp2 + 270*g2p2*gpp2*M4*QHdp2 - 90*gpp2*lamp2*M4*QHdp2 +            & 
&  270*g2p2*gpp2*M2*QHdp2 + 1980*gpp4*M4*Qdp2*QHdp2 + 180*gpp4*M4*Qe4p2*QHdp2 +          & 
&  360*gpp4*M4*Qe9p2*QHdp2 + 720*gpp4*M4*QHdp4 + 36*g1p2*gpp2*M1*Qd*QHu + 36*g1p2*gpp2*M4*Qd*QHu -& 
&  54*g1p2*gpp2*M1*QHd*QHu - 54*g1p2*gpp2*M4*QHd*QHu + 90*gpp2*lamp2*M4*QHup2 +          & 
&  360*gpp4*M4*Qdp2*QHup2 + 360*gpp4*M4*QHdp2*QHup2 - 36*g1p2*gpp2*M1*Qd*Ql4 -           & 
&  36*g1p2*gpp2*M4*Qd*Ql4 + 54*g1p2*gpp2*M1*QHd*Ql4 + 54*g1p2*gpp2*M4*QHd*Ql4 +          & 
&  360*gpp4*M4*Qdp2*Ql4p2 + 360*gpp4*M4*QHdp2*Ql4p2 - 72*g1p2*gpp2*M1*Qd*Ql9 -           & 
&  72*g1p2*gpp2*M4*Qd*Ql9 + 108*g1p2*gpp2*M1*QHd*Ql9 + 108*g1p2*gpp2*M4*QHd*Ql9 +        & 
&  720*gpp4*M4*Qdp2*Ql9p2 + 720*gpp4*M4*QHdp2*Ql9p2 + 162*g1p2*gpp2*M1*Qd*Qq +           & 
&  162*g1p2*gpp2*M4*Qd*Qq + 18*g1p2*gpp2*M1*Qe4*Qq + 18*g1p2*gpp2*M4*Qe4*Qq +            & 
&  36*g1p2*gpp2*M1*Qe9*Qq + 36*g1p2*gpp2*M4*Qe9*Qq - 180*g1p2*gpp2*M1*QHd*Qq -           & 
&  180*g1p2*gpp2*M4*QHd*Qq + 18*g1p2*gpp2*M1*QHu*Qq + 18*g1p2*gpp2*M4*QHu*Qq -           & 
&  18*g1p2*gpp2*M1*Ql4*Qq - 18*g1p2*gpp2*M4*Ql4*Qq - 36*g1p2*gpp2*M1*Ql9*Qq -            & 
&  36*g1p2*gpp2*M4*Ql9*Qq + 60*g1p2*gpp2*M1*Qqp2 + 480*g3p2*gpp2*M3*Qqp2 +               & 
&  60*g1p2*gpp2*M4*Qqp2 + 270*g2p2*gpp2*M4*Qqp2 + 480*g3p2*gpp2*M4*Qqp2 + 270*g2p2*gpp2*M2*Qqp2 +& 
&  4860*gpp4*M4*Qdp2*Qqp2 + 180*gpp4*M4*Qe4p2*Qqp2 + 360*gpp4*M4*Qe9p2*Qqp2 +            & 
&  3600*gpp4*M4*QHdp2*Qqp2 + 360*gpp4*M4*QHup2*Qqp2 + 360*gpp4*M4*Ql4p2*Qqp2 +           & 
&  720*gpp4*M4*Ql9p2*Qqp2 + 3600*gpp4*M4*Qqp4 + 90*gpp2*lamp2*M4*Qsp2 + 180*gpp4*M4*Qdp2*Qsp2 +& 
&  180*gpp4*M4*QHdp2*Qsp2 + 180*gpp4*M4*Qqp2*Qsp2 - 216*g1p2*gpp2*M1*Qd*Qu -             & 
&  216*g1p2*gpp2*M4*Qd*Qu + 324*g1p2*gpp2*M1*QHd*Qu + 324*g1p2*gpp2*M4*QHd*Qu -          & 
&  108*g1p2*gpp2*M1*Qq*Qu - 108*g1p2*gpp2*M4*Qq*Qu + 1620*gpp4*M4*Qdp2*Qup2 +            & 
&  1620*gpp4*M4*QHdp2*Qup2 + 1620*gpp4*M4*Qqp2*Qup2 - 54*g1p2*Tradjy2Ty2 -               & 
&  90*gpp2*Qe9p2*Tradjy2Ty2 + 90*gpp2*QHdp2*Tradjy2Ty2 - 90*gpp2*Ql9p2*Tradjy2Ty2 +      & 
&  18*g1p2*TradjYdTd - 720*g3p2*TradjYdTd - 270*gpp2*Qdp2*TradjYdTd + 270*gpp2*QHdp2*TradjYdTd -& 
&  270*gpp2*Qqp2*TradjYdTd + 135*lamp2*TradjYuTu + 54*g1p2*M1*Try2adjy2 + 90*gpp2*M4*Qe9p2*Try2adjy2 -& 
&  90*gpp2*M4*QHdp2*Try2adjy2 + 90*gpp2*M4*Ql9p2*Try2adjy2 + 270._dp*(Try2adjy2Ty2adjy2) -& 
&  18*g1p2*M1*TrYdadjYd + 720*g3p2*M3*TrYdadjYd + 270*gpp2*M4*Qdp2*TrYdadjYd -           & 
&  270*gpp2*M4*QHdp2*TrYdadjYd + 270*gpp2*M4*Qqp2*TrYdadjYd + 810._dp*(TrYdadjYdTdadjYd) +& 
&  135._dp*(TrYdadjYuTuadjYd) + 135._dp*(TrYuadjYdTdadjYu) + 270*Cy1p2*y1*Ty1 +          & 
&  18*Conjg(y1)*(3*g1p2*M1*y1 + 5*gpp2*M4*(Qe4p2 - QHdp2 + Ql4p2)*y1 - 3*g1p2*Ty1 -      & 
&  5*gpp2*(Qe4p2 - QHdp2 + Ql4p2)*Ty1) + 45*(6._dp*(lamp2) + 2*gpp2*(QHdp2 -             & 
&  QHup2 - Qsp2) + 3._dp*(TrYuadjYu))*lam*Tlam))/45._dp

 
DTd = oo16pi2*( betaTd1 + oo16pi2 * betaTd2 ) 

 
Else 
DTd = oo16pi2* betaTd1 
End If 
 
 
Call Chop(DTd) 

!-------------------- 
! Ty1 
!-------------------- 
 
betaTy11  = (12._dp*(Absy1) - 9._dp*(g1p2)/5._dp - 3._dp*(g2p2) + lamp2 -             & 
&  2*gpp2*Qe4p2 - 2*gpp2*QHdp2 - 2*gpp2*Ql4p2 + Try2adjy2 + 3._dp*(TrYdadjYd))           & 
& *Ty1 + (2*y1*(9*g1p2*M1 + 15*g2p2*M2 + 10*gpp2*M4*Qe4p2 + 10*gpp2*M4*QHdp2 +           & 
&  10*gpp2*M4*Ql4p2 + 5._dp*(Tradjy2Ty2) + 15._dp*(TradjYdTd) + 5*lam*Tlam))/5._dp

 
 
If (TwoLoopRGE) Then 
betaTy12 = ((135._dp*(g1p4) + 18*g1p2*g2p2 + 75._dp*(g2p4) - 30._dp*(lamp4) + 72*g1p2*gpp2*Qd*Qe4 +& 
&  72*g1p2*gpp2*Qe4p2 + 180*gpp4*Qdp2*Qe4p2 + 60*gpp4*Qe4p4 + 48*g1p2*gpp2*Qe4*Qe9 +     & 
&  40*gpp4*Qe4p2*Qe9p2 - 36*g1p2*gpp2*Qd*QHd - 36*g1p2*gpp2*Qe4*QHd - 24*g1p2*gpp2*Qe9*QHd +& 
&  24*g1p2*gpp2*QHdp2 + 60*g2p2*gpp2*QHdp2 - 20*gpp2*lamp2*QHdp2 + 180*gpp4*Qdp2*QHdp2 + & 
&  60*gpp4*Qe4p2*QHdp2 + 40*gpp4*Qe9p2*QHdp2 + 80*gpp4*QHdp4 + 24*g1p2*gpp2*Qe4*QHu -    & 
&  12*g1p2*gpp2*QHd*QHu + 20*gpp2*lamp2*QHup2 + 40*gpp4*Qe4p2*QHup2 + 40*gpp4*QHdp2*QHup2 -& 
&  36*g1p2*gpp2*Qd*Ql4 - 36*g1p2*gpp2*Qe4*Ql4 - 24*g1p2*gpp2*Qe9*Ql4 + 24*g1p2*gpp2*QHd*Ql4 -& 
&  12*g1p2*gpp2*QHu*Ql4 + 24*g1p2*gpp2*Ql4p2 + 60*g2p2*gpp2*Ql4p2 + 180*gpp4*Qdp2*Ql4p2 +& 
&  60*gpp4*Qe4p2*Ql4p2 + 40*gpp4*Qe9p2*Ql4p2 + 80*gpp4*QHdp2*Ql4p2 + 40*gpp4*QHup2*Ql4p2 +& 
&  80*gpp4*Ql4p4 - 48*g1p2*gpp2*Qe4*Ql9 + 24*g1p2*gpp2*QHd*Ql9 + 24*g1p2*gpp2*Ql4*Ql9 +  & 
&  80*gpp4*Qe4p2*Ql9p2 + 80*gpp4*QHdp2*Ql9p2 + 80*gpp4*Ql4p2*Ql9p2 + 72*g1p2*gpp2*Qe4*Qq -& 
&  36*g1p2*gpp2*QHd*Qq - 36*g1p2*gpp2*Ql4*Qq + 360*gpp4*Qe4p2*Qqp2 + 360*gpp4*QHdp2*Qqp2 +& 
&  360*gpp4*Ql4p2*Qqp2 + 20*gpp2*lamp2*Qsp2 + 20*gpp4*Qe4p2*Qsp2 + 20*gpp4*QHdp2*Qsp2 +  & 
&  20*gpp4*Ql4p2*Qsp2 - 144*g1p2*gpp2*Qe4*Qu + 72*g1p2*gpp2*QHd*Qu + 72*g1p2*gpp2*Ql4*Qu +& 
&  180*gpp4*Qe4p2*Qup2 + 180*gpp4*QHdp2*Qup2 + 180*gpp4*Ql4p2*Qup2 + 4*(3._dp*(g1p2) +   & 
&  5*gpp2*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2 - 30._dp*(Try2adjy2y2adjy2) -               & 
&  4*(g1p2 - 5*(8._dp*(g3p2) + 3*gpp2*(Qdp2 - QHdp2 + Qqp2)))*TrYdadjYd - 90._dp*(TrYdadjYdYdadjYd) -& 
&  30._dp*(TrYdadjYuYuadjYd) - 30*lamp2*TrYuadjYu)*Ty1 - 500*Cy1p2*y1p2*Ty1 -            & 
&  4*y1*(135*g1p4*M1 + 9*g1p2*g2p2*M1 + 9*g1p2*g2p2*M2 + 75*g2p4*M2 + 36*g1p2*gpp2*M1*Qd*Qe4 +& 
&  36*g1p2*gpp2*M4*Qd*Qe4 + 36*g1p2*gpp2*M1*Qe4p2 + 36*g1p2*gpp2*M4*Qe4p2 +              & 
&  180*gpp4*M4*Qdp2*Qe4p2 + 60*gpp4*M4*Qe4p4 + 24*g1p2*gpp2*M1*Qe4*Qe9 + 24*g1p2*gpp2*M4*Qe4*Qe9 +& 
&  40*gpp4*M4*Qe4p2*Qe9p2 - 18*g1p2*gpp2*M1*Qd*QHd - 18*g1p2*gpp2*M4*Qd*QHd -            & 
&  18*g1p2*gpp2*M1*Qe4*QHd - 18*g1p2*gpp2*M4*Qe4*QHd - 12*g1p2*gpp2*M1*Qe9*QHd -         & 
&  12*g1p2*gpp2*M4*Qe9*QHd + 12*g1p2*gpp2*M1*QHdp2 + 12*g1p2*gpp2*M4*QHdp2 +             & 
&  30*g2p2*gpp2*M4*QHdp2 - 10*gpp2*lamp2*M4*QHdp2 + 30*g2p2*gpp2*M2*QHdp2 +              & 
&  180*gpp4*M4*Qdp2*QHdp2 + 60*gpp4*M4*Qe4p2*QHdp2 + 40*gpp4*M4*Qe9p2*QHdp2 +            & 
&  80*gpp4*M4*QHdp4 + 12*g1p2*gpp2*M1*Qe4*QHu + 12*g1p2*gpp2*M4*Qe4*QHu - 6*g1p2*gpp2*M1*QHd*QHu -& 
&  6*g1p2*gpp2*M4*QHd*QHu + 10*gpp2*lamp2*M4*QHup2 + 40*gpp4*M4*Qe4p2*QHup2 +            & 
&  40*gpp4*M4*QHdp2*QHup2 - 18*g1p2*gpp2*M1*Qd*Ql4 - 18*g1p2*gpp2*M4*Qd*Ql4 -            & 
&  18*g1p2*gpp2*M1*Qe4*Ql4 - 18*g1p2*gpp2*M4*Qe4*Ql4 - 12*g1p2*gpp2*M1*Qe9*Ql4 -         & 
&  12*g1p2*gpp2*M4*Qe9*Ql4 + 12*g1p2*gpp2*M1*QHd*Ql4 + 12*g1p2*gpp2*M4*QHd*Ql4 -         & 
&  6*g1p2*gpp2*M1*QHu*Ql4 - 6*g1p2*gpp2*M4*QHu*Ql4 + 12*g1p2*gpp2*M1*Ql4p2 +             & 
&  12*g1p2*gpp2*M4*Ql4p2 + 30*g2p2*gpp2*M4*Ql4p2 + 30*g2p2*gpp2*M2*Ql4p2 +               & 
&  180*gpp4*M4*Qdp2*Ql4p2 + 60*gpp4*M4*Qe4p2*Ql4p2 + 40*gpp4*M4*Qe9p2*Ql4p2 +            & 
&  80*gpp4*M4*QHdp2*Ql4p2 + 40*gpp4*M4*QHup2*Ql4p2 + 80*gpp4*M4*Ql4p4 - 24*g1p2*gpp2*M1*Qe4*Ql9 -& 
&  24*g1p2*gpp2*M4*Qe4*Ql9 + 12*g1p2*gpp2*M1*QHd*Ql9 + 12*g1p2*gpp2*M4*QHd*Ql9 +         & 
&  12*g1p2*gpp2*M1*Ql4*Ql9 + 12*g1p2*gpp2*M4*Ql4*Ql9 + 80*gpp4*M4*Qe4p2*Ql9p2 +          & 
&  80*gpp4*M4*QHdp2*Ql9p2 + 80*gpp4*M4*Ql4p2*Ql9p2 + 36*g1p2*gpp2*M1*Qe4*Qq +            & 
&  36*g1p2*gpp2*M4*Qe4*Qq - 18*g1p2*gpp2*M1*QHd*Qq - 18*g1p2*gpp2*M4*QHd*Qq -            & 
&  18*g1p2*gpp2*M1*Ql4*Qq - 18*g1p2*gpp2*M4*Ql4*Qq + 360*gpp4*M4*Qe4p2*Qqp2 +            & 
&  360*gpp4*M4*QHdp2*Qqp2 + 360*gpp4*M4*Ql4p2*Qqp2 + 10*gpp2*lamp2*M4*Qsp2 +             & 
&  20*gpp4*M4*Qe4p2*Qsp2 + 20*gpp4*M4*QHdp2*Qsp2 + 20*gpp4*M4*Ql4p2*Qsp2 -               & 
&  72*g1p2*gpp2*M1*Qe4*Qu - 72*g1p2*gpp2*M4*Qe4*Qu + 36*g1p2*gpp2*M1*QHd*Qu +            & 
&  36*g1p2*gpp2*M4*QHd*Qu + 36*g1p2*gpp2*M1*Ql4*Qu + 36*g1p2*gpp2*M4*Ql4*Qu +            & 
&  180*gpp4*M4*Qe4p2*Qup2 + 180*gpp4*M4*QHdp2*Qup2 + 180*gpp4*M4*Ql4p2*Qup2 -            & 
&  6*g1p2*Tradjy2Ty2 - 10*gpp2*Qe9p2*Tradjy2Ty2 + 10*gpp2*QHdp2*Tradjy2Ty2 -             & 
&  10*gpp2*Ql9p2*Tradjy2Ty2 + 2*g1p2*TradjYdTd - 80*g3p2*TradjYdTd - 30*gpp2*Qdp2*TradjYdTd +& 
&  30*gpp2*QHdp2*TradjYdTd - 30*gpp2*Qqp2*TradjYdTd + 15*lamp2*TradjYuTu +               & 
&  2*(3*g1p2*M1 + 5*gpp2*M4*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2 + 30._dp*(Try2adjy2Ty2adjy2) -& 
&  2*g1p2*M1*TrYdadjYd + 80*g3p2*M3*TrYdadjYd + 30*gpp2*M4*Qdp2*TrYdadjYd -              & 
&  30*gpp2*M4*QHdp2*TrYdadjYd + 30*gpp2*M4*Qqp2*TrYdadjYd + 90._dp*(TrYdadjYdTdadjYd) +  & 
&  15._dp*(TrYdadjYuTuadjYd) + 15._dp*(TrYuadjYdTdadjYu) + 5*(6._dp*(lamp2) +            & 
&  2*gpp2*(QHdp2 - QHup2 - Qsp2) + 3._dp*(TrYuadjYu))*lam*Tlam) - 2*Absy1*(-             & 
& 3*(6._dp*(g1p2) + 30._dp*(g2p2) - 15._dp*(lamp2) + 20*gpp2*QHdp2 + 20*gpp2*Ql4p2 -     & 
&  15._dp*(Try2adjy2) - 45._dp*(TrYdadjYd))*Ty1 + 2*y1*(6*g1p2*M1 + 30*g2p2*M2 +         & 
&  20*gpp2*M4*QHdp2 + 20*gpp2*M4*Ql4p2 + 15._dp*(Tradjy2Ty2) + 45._dp*(TradjYdTd) +      & 
&  15*lam*Tlam)))/10._dp

 
DTy1 = oo16pi2*( betaTy11 + oo16pi2 * betaTy12 ) 

 
Else 
DTy1 = oo16pi2* betaTy11 
End If 
 
 
Call Chop(DTy1) 

!-------------------- 
! Ty2 
!-------------------- 
 
betaTy21  = 5._dp*(Ty2adjy2y2) + 4._dp*(y2adjy2Ty2) + Absy1*Ty2 - (9*g1p2*Ty2)        & 
& /5._dp - 3*g2p2*Ty2 + lamp2*Ty2 - 2*gpp2*Qe9p2*Ty2 - 2*gpp2*QHdp2*Ty2 - 2*gpp2*Ql9p2*Ty2 +& 
&  Try2adjy2*Ty2 + 3*TrYdadjYd*Ty2 + y2*((18*g1p2*M1)/5._dp + 6*g2p2*M2 + 4*gpp2*M4*Qe9p2 +& 
&  4*gpp2*M4*QHdp2 + 4*gpp2*M4*Ql9p2 + 2._dp*(Tradjy2Ty2) + 6._dp*(TradjYdTd)            & 
&  + 2*Conjg(y1)*Ty1 + 2*lam*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTy22 = -5*Absy1*Ty2adjy2y2 - (6*g1p2*Ty2adjy2y2)/5._dp + 12*g2p2*Ty2adjy2y2 - 5*lamp2*Ty2adjy2y2 -& 
&  6*gpp2*Qe9p2*Ty2adjy2y2 + 10*gpp2*QHdp2*Ty2adjy2y2 + 6*gpp2*Ql9p2*Ty2adjy2y2 -        & 
&  5*Try2adjy2*Ty2adjy2y2 - 15*TrYdadjYd*Ty2adjy2y2 - 6._dp*(Ty2adjy2y2adjy2y2) -        & 
&  4*Absy1*y2adjy2Ty2 + (6*g1p2*y2adjy2Ty2)/5._dp + 6*g2p2*y2adjy2Ty2 - 4*lamp2*y2adjy2Ty2 +& 
&  8*gpp2*QHdp2*y2adjy2Ty2 - 4*Try2adjy2*y2adjy2Ty2 - 12*TrYdadjYd*y2adjy2Ty2 -          & 
&  8._dp*(y2adjy2Ty2adjy2y2) - 6._dp*(y2adjy2y2adjy2Ty2) + (6*Absy1*g1p2*Ty2)/5._dp +    & 
&  (27*g1p4*Ty2)/2._dp + (9*g1p2*g2p2*Ty2)/5._dp + (15*g2p4*Ty2)/2._dp - 3*lamp4*Ty2 +   & 
&  2*Absy1*gpp2*Qe4p2*Ty2 + (36*g1p2*gpp2*Qd*Qe9*Ty2)/5._dp + (12*g1p2*gpp2*Qe4*Qe9*Ty2)/5._dp +& 
&  (48*g1p2*gpp2*Qe9p2*Ty2)/5._dp + 18*gpp4*Qdp2*Qe9p2*Ty2 + 2*gpp4*Qe4p2*Qe9p2*Ty2 +    & 
&  8*gpp4*Qe9p4*Ty2 - (18*g1p2*gpp2*Qd*QHd*Ty2)/5._dp - (6*g1p2*gpp2*Qe4*QHd*Ty2)/5._dp -& 
&  (24*g1p2*gpp2*Qe9*QHd*Ty2)/5._dp - 2*Absy1*gpp2*QHdp2*Ty2 + (12*g1p2*gpp2*QHdp2*Ty2)/5._dp +& 
&  6*g2p2*gpp2*QHdp2*Ty2 - 2*gpp2*lamp2*QHdp2*Ty2 + 18*gpp4*Qdp2*QHdp2*Ty2 +             & 
&  2*gpp4*Qe4p2*QHdp2*Ty2 + 8*gpp4*Qe9p2*QHdp2*Ty2 + 8*gpp4*QHdp4*Ty2 + (12*g1p2*gpp2*Qe9*QHu*Ty2)/5._dp -& 
&  (6*g1p2*gpp2*QHd*QHu*Ty2)/5._dp + 2*gpp2*lamp2*QHup2*Ty2 + 4*gpp4*Qe9p2*QHup2*Ty2 +   & 
&  4*gpp4*QHdp2*QHup2*Ty2 - (12*g1p2*gpp2*Qe9*Ql4*Ty2)/5._dp + (6*g1p2*gpp2*QHd*Ql4*Ty2)/5._dp +& 
&  2*Absy1*gpp2*Ql4p2*Ty2 + 4*gpp4*Qe9p2*Ql4p2*Ty2 + 4*gpp4*QHdp2*Ql4p2*Ty2 -            & 
&  (18*g1p2*gpp2*Qd*Ql9*Ty2)/5._dp - (6*g1p2*gpp2*Qe4*Ql9*Ty2)/5._dp - (36*g1p2*gpp2*Qe9*Ql9*Ty2)/5._dp +& 
&  (18*g1p2*gpp2*QHd*Ql9*Ty2)/5._dp - (6*g1p2*gpp2*QHu*Ql9*Ty2)/5._dp + (6*g1p2*gpp2*Ql4*Ql9*Ty2)/5._dp +& 
&  (18*g1p2*gpp2*Ql9p2*Ty2)/5._dp + 6*g2p2*gpp2*Ql9p2*Ty2 + 18*gpp4*Qdp2*Ql9p2*Ty2 +     & 
&  2*gpp4*Qe4p2*Ql9p2*Ty2 + 12*gpp4*Qe9p2*Ql9p2*Ty2 + 12*gpp4*QHdp2*Ql9p2*Ty2 +          & 
&  4*gpp4*QHup2*Ql9p2*Ty2 + 4*gpp4*Ql4p2*Ql9p2*Ty2 + 12*gpp4*Ql9p4*Ty2 + (36*g1p2*gpp2*Qe9*Qq*Ty2)/5._dp  
betaTy22 =  betaTy22- (18*g1p2*gpp2*QHd*Qq*Ty2)/5._dp - (18*g1p2*gpp2*Ql9*Qq*Ty2)/5._dp + 36*gpp4*Qe9p2*Qqp2*Ty2 +& 
&  36*gpp4*QHdp2*Qqp2*Ty2 + 36*gpp4*Ql9p2*Qqp2*Ty2 + 2*gpp2*lamp2*Qsp2*Ty2 +             & 
&  2*gpp4*Qe9p2*Qsp2*Ty2 + 2*gpp4*QHdp2*Qsp2*Ty2 + 2*gpp4*Ql9p2*Qsp2*Ty2 -               & 
&  (72*g1p2*gpp2*Qe9*Qu*Ty2)/5._dp + (36*g1p2*gpp2*QHd*Qu*Ty2)/5._dp + (36*g1p2*gpp2*Ql9*Qu*Ty2)/5._dp +& 
&  18*gpp4*Qe9p2*Qup2*Ty2 + 18*gpp4*QHdp2*Qup2*Ty2 + 18*gpp4*Ql9p2*Qup2*Ty2 +            & 
&  (6*g1p2*Try2adjy2*Ty2)/5._dp + 2*gpp2*Qe9p2*Try2adjy2*Ty2 - 2*gpp2*QHdp2*Try2adjy2*Ty2 +& 
&  2*gpp2*Ql9p2*Try2adjy2*Ty2 - 3*Try2adjy2y2adjy2*Ty2 - (2*g1p2*TrYdadjYd*Ty2)/5._dp +  & 
&  16*g3p2*TrYdadjYd*Ty2 + 6*gpp2*Qdp2*TrYdadjYd*Ty2 - 6*gpp2*QHdp2*TrYdadjYd*Ty2 +      & 
&  6*gpp2*Qqp2*TrYdadjYd*Ty2 - 9*TrYdadjYdYdadjYd*Ty2 - 3*TrYdadjYuYuadjYd*Ty2 -         & 
&  3*lamp2*TrYuadjYu*Ty2 - 3*Cy1p2*y1p2*Ty2 - 2*y2adjy2y2*(6*g2p2*M2 - 2*gpp2*M4*Qe9p2 + & 
&  6*gpp2*M4*QHdp2 + 2*gpp2*M4*Ql9p2 + 3._dp*(Tradjy2Ty2) + 9._dp*(TradjYdTd) +          & 
&  3*Conjg(y1)*Ty1 + 3*lam*Tlam) - (2*y2*(135*g1p4*M1 + 9*g1p2*g2p2*M1 + 9*g1p2*g2p2*M2 +& 
&  75*g2p4*M2 + 36*g1p2*gpp2*M1*Qd*Qe9 + 36*g1p2*gpp2*M4*Qd*Qe9 + 12*g1p2*gpp2*M1*Qe4*Qe9 +& 
&  12*g1p2*gpp2*M4*Qe4*Qe9 + 48*g1p2*gpp2*M1*Qe9p2 + 48*g1p2*gpp2*M4*Qe9p2 +             & 
&  180*gpp4*M4*Qdp2*Qe9p2 + 20*gpp4*M4*Qe4p2*Qe9p2 + 80*gpp4*M4*Qe9p4 - 18*g1p2*gpp2*M1*Qd*QHd -& 
&  18*g1p2*gpp2*M4*Qd*QHd - 6*g1p2*gpp2*M1*Qe4*QHd - 6*g1p2*gpp2*M4*Qe4*QHd -            & 
&  24*g1p2*gpp2*M1*Qe9*QHd - 24*g1p2*gpp2*M4*Qe9*QHd + 12*g1p2*gpp2*M1*QHdp2 +           & 
&  12*g1p2*gpp2*M4*QHdp2 + 30*g2p2*gpp2*M4*QHdp2 - 10*gpp2*lamp2*M4*QHdp2 +              & 
&  30*g2p2*gpp2*M2*QHdp2 + 180*gpp4*M4*Qdp2*QHdp2 + 20*gpp4*M4*Qe4p2*QHdp2 +             & 
&  80*gpp4*M4*Qe9p2*QHdp2 + 80*gpp4*M4*QHdp4 + 12*g1p2*gpp2*M1*Qe9*QHu + 12*g1p2*gpp2*M4*Qe9*QHu -& 
&  6*g1p2*gpp2*M1*QHd*QHu - 6*g1p2*gpp2*M4*QHd*QHu + 10*gpp2*lamp2*M4*QHup2 +            & 
&  40*gpp4*M4*Qe9p2*QHup2 + 40*gpp4*M4*QHdp2*QHup2 - 12*g1p2*gpp2*M1*Qe9*Ql4 -           & 
&  12*g1p2*gpp2*M4*Qe9*Ql4 + 6*g1p2*gpp2*M1*QHd*Ql4 + 6*g1p2*gpp2*M4*QHd*Ql4 +           & 
&  40*gpp4*M4*Qe9p2*Ql4p2 + 40*gpp4*M4*QHdp2*Ql4p2 - 18*g1p2*gpp2*M1*Qd*Ql9 -            & 
&  18*g1p2*gpp2*M4*Qd*Ql9 - 6*g1p2*gpp2*M1*Qe4*Ql9 - 6*g1p2*gpp2*M4*Qe4*Ql9 -            & 
&  36*g1p2*gpp2*M1*Qe9*Ql9 - 36*g1p2*gpp2*M4*Qe9*Ql9 + 18*g1p2*gpp2*M1*QHd*Ql9 +         & 
&  18*g1p2*gpp2*M4*QHd*Ql9 - 6*g1p2*gpp2*M1*QHu*Ql9 - 6*g1p2*gpp2*M4*QHu*Ql9 +           & 
&  6*g1p2*gpp2*M1*Ql4*Ql9 + 6*g1p2*gpp2*M4*Ql4*Ql9 + 18*g1p2*gpp2*M1*Ql9p2 +             & 
&  18*g1p2*gpp2*M4*Ql9p2 + 30*g2p2*gpp2*M4*Ql9p2 + 30*g2p2*gpp2*M2*Ql9p2 +               & 
&  180*gpp4*M4*Qdp2*Ql9p2 + 20*gpp4*M4*Qe4p2*Ql9p2 + 120*gpp4*M4*Qe9p2*Ql9p2 +           & 
&  120*gpp4*M4*QHdp2*Ql9p2 + 40*gpp4*M4*QHup2*Ql9p2 + 40*gpp4*M4*Ql4p2*Ql9p2 +           & 
&  120*gpp4*M4*Ql9p4 + 36*g1p2*gpp2*M1*Qe9*Qq + 36*g1p2*gpp2*M4*Qe9*Qq - 18*g1p2*gpp2*M1*QHd*Qq -& 
&  18*g1p2*gpp2*M4*QHd*Qq - 18*g1p2*gpp2*M1*Ql9*Qq - 18*g1p2*gpp2*M4*Ql9*Qq +            & 
&  360*gpp4*M4*Qe9p2*Qqp2 + 360*gpp4*M4*QHdp2*Qqp2 + 360*gpp4*M4*Ql9p2*Qqp2 +            & 
&  10*gpp2*lamp2*M4*Qsp2 + 20*gpp4*M4*Qe9p2*Qsp2 + 20*gpp4*M4*QHdp2*Qsp2 +               & 
&  20*gpp4*M4*Ql9p2*Qsp2 - 72*g1p2*gpp2*M1*Qe9*Qu - 72*g1p2*gpp2*M4*Qe9*Qu +             & 
&  36*g1p2*gpp2*M1*QHd*Qu + 36*g1p2*gpp2*M4*QHd*Qu + 36*g1p2*gpp2*M1*Ql9*Qu +            & 
&  36*g1p2*gpp2*M4*Ql9*Qu + 180*gpp4*M4*Qe9p2*Qup2 + 180*gpp4*M4*QHdp2*Qup2 +            & 
&  180*gpp4*M4*Ql9p2*Qup2 - 6*g1p2*Tradjy2Ty2 - 10*gpp2*Qe9p2*Tradjy2Ty2 +               & 
&  10*gpp2*QHdp2*Tradjy2Ty2 - 10*gpp2*Ql9p2*Tradjy2Ty2 + 2*g1p2*TradjYdTd -              & 
&  80*g3p2*TradjYdTd - 30*gpp2*Qdp2*TradjYdTd + 30*gpp2*QHdp2*TradjYdTd - 30*gpp2*Qqp2*TradjYdTd +& 
&  15*lamp2*TradjYuTu + 6*g1p2*M1*Try2adjy2 + 10*gpp2*M4*Qe9p2*Try2adjy2 -               & 
&  10*gpp2*M4*QHdp2*Try2adjy2 + 10*gpp2*M4*Ql9p2*Try2adjy2 + 30._dp*(Try2adjy2Ty2adjy2) -& 
&  2*g1p2*M1*TrYdadjYd + 80*g3p2*M3*TrYdadjYd + 30*gpp2*M4*Qdp2*TrYdadjYd -              & 
&  30*gpp2*M4*QHdp2*TrYdadjYd + 30*gpp2*M4*Qqp2*TrYdadjYd + 90._dp*(TrYdadjYdTdadjYd) +  & 
&  15._dp*(TrYdadjYuTuadjYd) + 15._dp*(TrYuadjYdTdadjYu) + 30*Cy1p2*y1*Ty1 +             & 
&  2*Conjg(y1)*(3*g1p2*M1*y1 + 5*gpp2*M4*(Qe4p2 - QHdp2 + Ql4p2)*y1 - 3*g1p2*Ty1 -       & 
&  5*gpp2*(Qe4p2 - QHdp2 + Ql4p2)*Ty1) + 5*(6._dp*(lamp2) + 2*gpp2*(QHdp2 -              & 
&  QHup2 - Qsp2) + 3._dp*(TrYuadjYu))*lam*Tlam))/5._dp

 
DTy2 = oo16pi2*( betaTy21 + oo16pi2 * betaTy22 ) 

 
Else 
DTy2 = oo16pi2* betaTy21 
End If 
 
 
Call Chop(DTy2) 

!-------------------- 
! Tlam 
!-------------------- 
 
betaTlam1  = (6*g1p2*M1*lam)/5._dp + 6*g2p2*M2*lam + 4*gpp2*M4*QHdp2*lam +            & 
&  4*gpp2*M4*QHup2*lam + 4*gpp2*M4*Qsp2*lam + 2*Tradjy2Ty2*lam + 6*TradjYdTd*lam +       & 
&  6*TradjYuTu*lam + (-3._dp*(g1p2)/5._dp - 3._dp*(g2p2) + 12._dp*(lamp2) -              & 
&  2*gpp2*QHdp2 - 2*gpp2*QHup2 - 2*gpp2*Qsp2 + Try2adjy2 + 3._dp*(TrYdadjYd)             & 
&  + 3._dp*(TrYuadjYu))*Tlam + Conjg(y1)*(2*lam*Ty1 + y1*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTlam2 = (-2*(207*g1p4*M1 + 45*g1p2*g2p2*M1 + 30*g1p2*lamp2*M1 + 45*g1p2*g2p2*M2 +             & 
&  375*g2p4*M2 + 150*g2p2*lamp2*M2 - 90*g1p2*gpp2*M1*Qd*QHd - 90*g1p2*gpp2*M4*Qd*QHd -   & 
&  30*g1p2*gpp2*M1*Qe4*QHd - 30*g1p2*gpp2*M4*Qe4*QHd - 60*g1p2*gpp2*M1*Qe9*QHd -         & 
&  60*g1p2*gpp2*M4*Qe9*QHd + 60*g1p2*gpp2*M1*QHdp2 + 60*g1p2*gpp2*M4*QHdp2 +             & 
&  150*g2p2*gpp2*M4*QHdp2 + 100*gpp2*lamp2*M4*QHdp2 + 150*g2p2*gpp2*M2*QHdp2 +           & 
&  900*gpp4*M4*Qdp2*QHdp2 + 100*gpp4*M4*Qe4p2*QHdp2 + 200*gpp4*M4*Qe9p2*QHdp2 +          & 
&  400*gpp4*M4*QHdp4 + 90*g1p2*gpp2*M1*Qd*QHu + 90*g1p2*gpp2*M4*Qd*QHu + 30*g1p2*gpp2*M1*Qe4*QHu +& 
&  30*g1p2*gpp2*M4*Qe4*QHu + 60*g1p2*gpp2*M1*Qe9*QHu + 60*g1p2*gpp2*M4*Qe9*QHu -         & 
&  60*g1p2*gpp2*M1*QHd*QHu - 60*g1p2*gpp2*M4*QHd*QHu + 60*g1p2*gpp2*M1*QHup2 +           & 
&  60*g1p2*gpp2*M4*QHup2 + 150*g2p2*gpp2*M4*QHup2 + 100*gpp2*lamp2*M4*QHup2 +            & 
&  150*g2p2*gpp2*M2*QHup2 + 900*gpp4*M4*Qdp2*QHup2 + 100*gpp4*M4*Qe4p2*QHup2 +           & 
&  200*gpp4*M4*Qe9p2*QHup2 + 400*gpp4*M4*QHdp2*QHup2 + 400*gpp4*M4*QHup4 +               & 
&  30*g1p2*gpp2*M1*QHd*Ql4 + 30*g1p2*gpp2*M4*QHd*Ql4 - 30*g1p2*gpp2*M1*QHu*Ql4 -         & 
&  30*g1p2*gpp2*M4*QHu*Ql4 + 200*gpp4*M4*QHdp2*Ql4p2 + 200*gpp4*M4*QHup2*Ql4p2 +         & 
&  60*g1p2*gpp2*M1*QHd*Ql9 + 60*g1p2*gpp2*M4*QHd*Ql9 - 60*g1p2*gpp2*M1*QHu*Ql9 -         & 
&  60*g1p2*gpp2*M4*QHu*Ql9 + 400*gpp4*M4*QHdp2*Ql9p2 + 400*gpp4*M4*QHup2*Ql9p2 -         & 
&  90*g1p2*gpp2*M1*QHd*Qq - 90*g1p2*gpp2*M4*QHd*Qq + 90*g1p2*gpp2*M1*QHu*Qq +            & 
&  90*g1p2*gpp2*M4*QHu*Qq + 1800*gpp4*M4*QHdp2*Qqp2 + 1800*gpp4*M4*QHup2*Qqp2 +          & 
&  900*gpp4*M4*Qdp2*Qsp2 + 100*gpp4*M4*Qe4p2*Qsp2 + 200*gpp4*M4*Qe9p2*Qsp2 +             & 
&  300*gpp4*M4*QHdp2*Qsp2 + 300*gpp4*M4*QHup2*Qsp2 + 200*gpp4*M4*Ql4p2*Qsp2 +            & 
&  400*gpp4*M4*Ql9p2*Qsp2 + 1800*gpp4*M4*Qqp2*Qsp2 + 300*gpp4*M4*Qsp4 + 180*g1p2*gpp2*M1*QHd*Qu +& 
&  180*g1p2*gpp2*M4*QHd*Qu - 180*g1p2*gpp2*M1*QHu*Qu - 180*g1p2*gpp2*M4*QHu*Qu +         & 
&  900*gpp4*M4*QHdp2*Qup2 + 900*gpp4*M4*QHup2*Qup2 + 900*gpp4*M4*Qsp2*Qup2 -             & 
&  30*g1p2*Tradjy2Ty2 + 75*lamp2*Tradjy2Ty2 - 50*gpp2*Qe9p2*Tradjy2Ty2 + 50*gpp2*QHdp2*Tradjy2Ty2 -& 
&  50*gpp2*Ql9p2*Tradjy2Ty2 + 10*g1p2*TradjYdTd - 400*g3p2*TradjYdTd + 225*lamp2*TradjYdTd -& 
&  150*gpp2*Qdp2*TradjYdTd + 150*gpp2*QHdp2*TradjYdTd - 150*gpp2*Qqp2*TradjYdTd -        & 
&  20*g1p2*TradjYuTu - 400*g3p2*TradjYuTu + 225*lamp2*TradjYuTu + 150*gpp2*QHup2*TradjYuTu -& 
&  150*gpp2*Qqp2*TradjYuTu - 150*gpp2*Qup2*TradjYuTu + 10*(3*g1p2*M1 + 5*gpp2*M4*(Qe9p2 -& 
&  QHdp2 + Ql9p2))*Try2adjy2 + 150._dp*(Try2adjy2Ty2adjy2) - 10*(g1p2*M1 -               & 
&  5*(8*g3p2*M3 + 3*gpp2*M4*(Qdp2 - QHdp2 + Qqp2)))*TrYdadjYd + 450._dp*(TrYdadjYdTdadjYd) +& 
&  150._dp*(TrYdadjYuTuadjYd) + 150._dp*(TrYuadjYdTdadjYu) + 20*g1p2*M1*TrYuadjYu +      & 
&  400*g3p2*M3*TrYuadjYu - 150*gpp2*M4*QHup2*TrYuadjYu + 150*gpp2*M4*Qqp2*TrYuadjYu +    & 
&  150*gpp2*M4*Qup2*TrYuadjYu + 450._dp*(TrYuadjYuTuadjYu))*lam)/25._dp + (207._dp*(g1p4)/50._dp +& 
&  (9*g1p2*g2p2)/5._dp + 15._dp*(g2p4)/2._dp + (18*g1p2*lamp2)/5._dp + 18*g2p2*lamp2 -   & 
&  50._dp*(lamp4) - (18*g1p2*gpp2*Qd*QHd)/5._dp - (6*g1p2*gpp2*Qe4*QHd)/5._dp -          & 
&  (12*g1p2*gpp2*Qe9*QHd)/5._dp + (12*g1p2*gpp2*QHdp2)/5._dp + 6*g2p2*gpp2*QHdp2 +       & 
&  12*gpp2*lamp2*QHdp2 + 18*gpp4*Qdp2*QHdp2 + 2*gpp4*Qe4p2*QHdp2 + 4*gpp4*Qe9p2*QHdp2 +  & 
&  8*gpp4*QHdp4 + (18*g1p2*gpp2*Qd*QHu)/5._dp + (6*g1p2*gpp2*Qe4*QHu)/5._dp +            & 
&  (12*g1p2*gpp2*Qe9*QHu)/5._dp - (12*g1p2*gpp2*QHd*QHu)/5._dp + (12*g1p2*gpp2*QHup2)/5._dp +& 
&  6*g2p2*gpp2*QHup2 + 12*gpp2*lamp2*QHup2 + 18*gpp4*Qdp2*QHup2 + 2*gpp4*Qe4p2*QHup2 +   & 
&  4*gpp4*Qe9p2*QHup2 + 8*gpp4*QHdp2*QHup2 + 8*gpp4*QHup4 + (6*g1p2*gpp2*QHd*Ql4)/5._dp -& 
&  (6*g1p2*gpp2*QHu*Ql4)/5._dp + 4*gpp4*QHdp2*Ql4p2 + 4*gpp4*QHup2*Ql4p2 +               & 
&  (12*g1p2*gpp2*QHd*Ql9)/5._dp - (12*g1p2*gpp2*QHu*Ql9)/5._dp + 8*gpp4*QHdp2*Ql9p2 +    & 
&  8*gpp4*QHup2*Ql9p2 - (18*g1p2*gpp2*QHd*Qq)/5._dp + (18*g1p2*gpp2*QHu*Qq)/5._dp +      & 
&  36*gpp4*QHdp2*Qqp2 + 36*gpp4*QHup2*Qqp2 + 18*gpp4*Qdp2*Qsp2 + 2*gpp4*Qe4p2*Qsp2 +     & 
&  4*gpp4*Qe9p2*Qsp2 + 6*gpp4*QHdp2*Qsp2 + 6*gpp4*QHup2*Qsp2 + 4*gpp4*Ql4p2*Qsp2 +       & 
&  8*gpp4*Ql9p2*Qsp2 + 36*gpp4*Qqp2*Qsp2 + 6*gpp4*Qsp4 + (36*g1p2*gpp2*QHd*Qu)/5._dp -   & 
&  (36*g1p2*gpp2*QHu*Qu)/5._dp + 18*gpp4*QHdp2*Qup2 + 18*gpp4*QHup2*Qup2 +               & 
&  18*gpp4*Qsp2*Qup2 + ((6._dp*(g1p2) - 45._dp*(lamp2) + 10*gpp2*(Qe9p2 - QHdp2 +        & 
&  Ql9p2))*Try2adjy2)/5._dp - 3._dp*(Try2adjy2y2adjy2) - ((2._dp*(g1p2) - 80._dp*(g3p2) +& 
&  135._dp*(lamp2) - 30*gpp2*(Qdp2 - QHdp2 + Qqp2))*TrYdadjYd)/5._dp - 9._dp*(TrYdadjYdYdadjYd) -& 
&  6._dp*(TrYdadjYuYuadjYd) + (4*g1p2*TrYuadjYu)/5._dp + 16*g3p2*TrYuadjYu -             & 
&  27*lamp2*TrYuadjYu - 6*gpp2*QHup2*TrYuadjYu + 6*gpp2*Qqp2*TrYuadjYu + 6*gpp2*Qup2*TrYuadjYu -& 
&  9._dp*(TrYuadjYuYuadjYu))*Tlam - 3*Cy1p2*y1*(4*lam*Ty1 + y1*Tlam) - (Conjg(y1)*(-     & 
& 2*(6._dp*(g1p2) - 15._dp*(lamp2) + 10*gpp2*(Qe4p2 - QHdp2 + Ql4p2))*lam*Ty1 +          & 
&  y1*(4*(3*g1p2*M1 + 5*gpp2*M4*(Qe4p2 - QHdp2 + Ql4p2))*lam + (-6._dp*(g1p2) +          & 
&  45._dp*(lamp2) - 10*gpp2*(Qe4p2 - QHdp2 + Ql4p2))*Tlam)))/5._dp

 
DTlam = oo16pi2*( betaTlam1 + oo16pi2 * betaTlam2 ) 

 
Else 
DTlam = oo16pi2* betaTlam1 
End If 
 
 
!-------------------- 
! Tu 
!-------------------- 
 
betaTu1  = TuadjYdYd + 5._dp*(TuadjYuYu) + 2._dp*(YuadjYdTd) + 4._dp*(YuadjYuTu)      & 
&  - (13*g1p2*Tu)/15._dp - 3*g2p2*Tu - (16*g3p2*Tu)/3._dp + lamp2*Tu - 2*gpp2*QHup2*Tu - & 
&  2*gpp2*Qqp2*Tu - 2*gpp2*Qup2*Tu + 3*TrYuadjYu*Tu + Yu*((26*g1p2*M1)/15._dp +          & 
&  (32*g3p2*M3)/3._dp + 6*g2p2*M2 + 4*gpp2*M4*QHup2 + 4*gpp2*M4*Qqp2 + 4*gpp2*M4*Qup2 +  & 
&  6._dp*(TradjYuTu) + 2*lam*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTu2 = -(Absy1*TuadjYdYd) + (2*g1p2*TuadjYdYd)/5._dp - lamp2*TuadjYdYd + 2*gpp2*Qdp2*TuadjYdYd +& 
&  2*gpp2*QHdp2*TuadjYdYd - 2*gpp2*Qqp2*TuadjYdYd - Try2adjy2*TuadjYdYd - 3*TrYdadjYd*TuadjYdYd -& 
&  2._dp*(TuadjYdYdadjYdYd) - 4._dp*(TuadjYdYdadjYuYu) + 12*g2p2*TuadjYuYu -             & 
&  5*lamp2*TuadjYuYu + 10*gpp2*QHup2*TuadjYuYu + 6*gpp2*Qqp2*TuadjYuYu - 6*gpp2*Qup2*TuadjYuYu -& 
&  15*TrYuadjYu*TuadjYuYu - 6._dp*(TuadjYuYuadjYuYu) - 2*Absy1*YuadjYdTd +               & 
&  (4*g1p2*YuadjYdTd)/5._dp - 2*lamp2*YuadjYdTd + 4*gpp2*Qdp2*YuadjYdTd + 4*gpp2*QHdp2*YuadjYdTd -& 
&  4*gpp2*Qqp2*YuadjYdTd - 2*Try2adjy2*YuadjYdTd - 6*TrYdadjYd*YuadjYdTd -               & 
&  4._dp*(YuadjYdTdadjYdYd) - 4._dp*(YuadjYdTdadjYuYu) - 4._dp*(YuadjYdYdadjYdTd) -      & 
&  2._dp*(YuadjYdYdadjYuTu) + (6*g1p2*YuadjYuTu)/5._dp + 6*g2p2*YuadjYuTu -              & 
&  4*lamp2*YuadjYuTu + 8*gpp2*QHup2*YuadjYuTu - 12*TrYuadjYu*YuadjYuTu - 8._dp*(YuadjYuTuadjYuYu) -& 
&  (4*g1p2*M1*YuadjYuYu)/5._dp - 12*g2p2*M2*YuadjYuYu - 12*gpp2*M4*QHup2*YuadjYuYu -     & 
&  4*gpp2*M4*Qqp2*YuadjYuYu + 4*gpp2*M4*Qup2*YuadjYuYu - 18*TradjYuTu*YuadjYuYu -        & 
&  6._dp*(YuadjYuYuadjYuTu) + (2743*g1p4*Tu)/450._dp + g1p2*g2p2*Tu + (15*g2p4*Tu)/2._dp +& 
&  (136*g1p2*g3p2*Tu)/45._dp + 8*g2p2*g3p2*Tu - (16*g3p4*Tu)/9._dp - Absy1*lamp2*Tu -    & 
&  3*lamp4*Tu + 2*gpp2*lamp2*QHdp2*Tu + (18*g1p2*gpp2*Qd*QHu*Tu)/5._dp + (6*g1p2*gpp2*Qe4*QHu*Tu)/5._dp +& 
&  (12*g1p2*gpp2*Qe9*QHu*Tu)/5._dp - (6*g1p2*gpp2*QHd*QHu*Tu)/5._dp + (12*g1p2*gpp2*QHup2*Tu)/5._dp +& 
&  6*g2p2*gpp2*QHup2*Tu - 2*gpp2*lamp2*QHup2*Tu + 18*gpp4*Qdp2*QHup2*Tu + 2*gpp4*Qe4p2*QHup2*Tu +& 
&  4*gpp4*Qe9p2*QHup2*Tu + 4*gpp4*QHdp2*QHup2*Tu + 8*gpp4*QHup4*Tu - (6*g1p2*gpp2*QHu*Ql4*Tu)/5._dp +& 
&  4*gpp4*QHup2*Ql4p2*Tu - (12*g1p2*gpp2*QHu*Ql9*Tu)/5._dp + 8*gpp4*QHup2*Ql9p2*Tu +     & 
&  (6*g1p2*gpp2*Qd*Qq*Tu)/5._dp + (2*g1p2*gpp2*Qe4*Qq*Tu)/5._dp + (4*g1p2*gpp2*Qe9*Qq*Tu)/5._dp -& 
&  (2*g1p2*gpp2*QHd*Qq*Tu)/5._dp + 4*g1p2*gpp2*QHu*Qq*Tu - (2*g1p2*gpp2*Ql4*Qq*Tu)/5._dp  
betaTu2 =  betaTu2- (4*g1p2*gpp2*Ql9*Qq*Tu)/5._dp + (4*g1p2*gpp2*Qqp2*Tu)/3._dp + 6*g2p2*gpp2*Qqp2*Tu +   & 
&  (32*g3p2*gpp2*Qqp2*Tu)/3._dp + 18*gpp4*Qdp2*Qqp2*Tu + 2*gpp4*Qe4p2*Qqp2*Tu +          & 
&  4*gpp4*Qe9p2*Qqp2*Tu + 4*gpp4*QHdp2*Qqp2*Tu + 40*gpp4*QHup2*Qqp2*Tu + 4*gpp4*Ql4p2*Qqp2*Tu +& 
&  8*gpp4*Ql9p2*Qqp2*Tu + 40*gpp4*Qqp4*Tu + 2*gpp2*lamp2*Qsp2*Tu + 2*gpp4*QHup2*Qsp2*Tu +& 
&  2*gpp4*Qqp2*Qsp2*Tu - (24*g1p2*gpp2*Qd*Qu*Tu)/5._dp - (8*g1p2*gpp2*Qe4*Qu*Tu)/5._dp - & 
&  (16*g1p2*gpp2*Qe9*Qu*Tu)/5._dp + (8*g1p2*gpp2*QHd*Qu*Tu)/5._dp - (44*g1p2*gpp2*QHu*Qu*Tu)/5._dp +& 
&  (8*g1p2*gpp2*Ql4*Qu*Tu)/5._dp + (16*g1p2*gpp2*Ql9*Qu*Tu)/5._dp - (36*g1p2*gpp2*Qq*Qu*Tu)/5._dp +& 
&  (176*g1p2*gpp2*Qup2*Tu)/15._dp + (32*g3p2*gpp2*Qup2*Tu)/3._dp + 18*gpp4*Qdp2*Qup2*Tu +& 
&  2*gpp4*Qe4p2*Qup2*Tu + 4*gpp4*Qe9p2*Qup2*Tu + 4*gpp4*QHdp2*Qup2*Tu + 22*gpp4*QHup2*Qup2*Tu +& 
&  4*gpp4*Ql4p2*Qup2*Tu + 8*gpp4*Ql9p2*Qup2*Tu + 54*gpp4*Qqp2*Qup2*Tu + 2*gpp4*Qsp2*Qup2*Tu +& 
&  22*gpp4*Qup4*Tu - lamp2*Try2adjy2*Tu - 3*lamp2*TrYdadjYd*Tu - 3*TrYdadjYuYuadjYd*Tu + & 
&  (4*g1p2*TrYuadjYu*Tu)/5._dp + 16*g3p2*TrYuadjYu*Tu - 6*gpp2*QHup2*TrYuadjYu*Tu +      & 
&  6*gpp2*Qqp2*TrYuadjYu*Tu + 6*gpp2*Qup2*TrYuadjYu*Tu - 9*TrYuadjYuYuadjYu*Tu -         & 
&  6*YuadjYuYu*lam*Tlam - (2*YuadjYdYd*(2*g1p2*M1 + 10*gpp2*M4*Qdp2 + 10*gpp2*M4*QHdp2 - & 
&  10*gpp2*M4*Qqp2 + 5._dp*(Tradjy2Ty2) + 15._dp*(TradjYdTd) + 5*Conjg(y1)*Ty1 +         & 
&  5*lam*Tlam))/5._dp + Yu*((-5486*g1p4*M1)/225._dp - 2*g1p2*g2p2*M1 - (272*g1p2*g3p2*M1)/45._dp -& 
&  (272*g1p2*g3p2*M3)/45._dp - 16*g2p2*g3p2*M3 + (64*g3p4*M3)/9._dp - 2*g1p2*g2p2*M2 -   & 
&  30*g2p4*M2 - 16*g2p2*g3p2*M2 - 4*gpp2*lamp2*M4*QHdp2 - (36*g1p2*gpp2*M1*Qd*QHu)/5._dp -& 
&  (36*g1p2*gpp2*M4*Qd*QHu)/5._dp - (12*g1p2*gpp2*M1*Qe4*QHu)/5._dp - (12*g1p2*gpp2*M4*Qe4*QHu)/5._dp -& 
&  (24*g1p2*gpp2*M1*Qe9*QHu)/5._dp - (24*g1p2*gpp2*M4*Qe9*QHu)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHd*QHu)/5._dp - (24*g1p2*gpp2*M1*QHup2)/5._dp - (24*g1p2*gpp2*M4*QHup2)/5._dp -& 
&  12*g2p2*gpp2*M4*QHup2 + 4*gpp2*lamp2*M4*QHup2 - 12*g2p2*gpp2*M2*QHup2 -               & 
&  72*gpp4*M4*Qdp2*QHup2 - 8*gpp4*M4*Qe4p2*QHup2 - 16*gpp4*M4*Qe9p2*QHup2 -              & 
&  16*gpp4*M4*QHdp2*QHup2 - 32*gpp4*M4*QHup4 + (12*g1p2*gpp2*M1*QHu*Ql4)/5._dp +         & 
&  (12*g1p2*gpp2*M4*QHu*Ql4)/5._dp - 16*gpp4*M4*QHup2*Ql4p2 + (24*g1p2*gpp2*M1*QHu*Ql9)/5._dp +& 
&  (24*g1p2*gpp2*M4*QHu*Ql9)/5._dp - 32*gpp4*M4*QHup2*Ql9p2 - (12*g1p2*gpp2*M1*Qd*Qq)/5._dp -& 
&  (12*g1p2*gpp2*M4*Qd*Qq)/5._dp - (4*g1p2*gpp2*M1*Qe4*Qq)/5._dp - (4*g1p2*gpp2*M4*Qe4*Qq)/5._dp -& 
&  (8*g1p2*gpp2*M1*Qe9*Qq)/5._dp - (8*g1p2*gpp2*M4*Qe9*Qq)/5._dp + (4*g1p2*gpp2*M1*QHd*Qq)/5._dp +& 
&  (4*g1p2*gpp2*M4*QHd*Qq)/5._dp - 8*g1p2*gpp2*M1*QHu*Qq - 8*g1p2*gpp2*M4*QHu*Qq +       & 
&  (4*g1p2*gpp2*M1*Ql4*Qq)/5._dp + (4*g1p2*gpp2*M4*Ql4*Qq)/5._dp + (8*g1p2*gpp2*M1*Ql9*Qq)/5._dp +& 
&  (8*g1p2*gpp2*M4*Ql9*Qq)/5._dp - (8*g1p2*gpp2*M1*Qqp2)/3._dp - (64*g3p2*gpp2*M3*Qqp2)/3._dp -& 
&  (8*g1p2*gpp2*M4*Qqp2)/3._dp - 12*g2p2*gpp2*M4*Qqp2 - (64*g3p2*gpp2*M4*Qqp2)/3._dp -   & 
&  12*g2p2*gpp2*M2*Qqp2 - 72*gpp4*M4*Qdp2*Qqp2 - 8*gpp4*M4*Qe4p2*Qqp2 - 16*gpp4*M4*Qe9p2*Qqp2 -& 
&  16*gpp4*M4*QHdp2*Qqp2 - 160*gpp4*M4*QHup2*Qqp2 - 16*gpp4*M4*Ql4p2*Qqp2 -              & 
&  32*gpp4*M4*Ql9p2*Qqp2 - 160*gpp4*M4*Qqp4 - 4*gpp2*lamp2*M4*Qsp2 - 8*gpp4*M4*QHup2*Qsp2 -& 
&  8*gpp4*M4*Qqp2*Qsp2 + (48*g1p2*gpp2*M1*Qd*Qu)/5._dp + (48*g1p2*gpp2*M4*Qd*Qu)/5._dp + & 
&  (16*g1p2*gpp2*M1*Qe4*Qu)/5._dp + (16*g1p2*gpp2*M4*Qe4*Qu)/5._dp + (32*g1p2*gpp2*M1*Qe9*Qu)/5._dp +& 
&  (32*g1p2*gpp2*M4*Qe9*Qu)/5._dp - (16*g1p2*gpp2*M1*QHd*Qu)/5._dp - (16*g1p2*gpp2*M4*QHd*Qu)/5._dp +& 
&  (88*g1p2*gpp2*M1*QHu*Qu)/5._dp + (88*g1p2*gpp2*M4*QHu*Qu)/5._dp - (16*g1p2*gpp2*M1*Ql4*Qu)/5._dp -& 
&  (16*g1p2*gpp2*M4*Ql4*Qu)/5._dp - (32*g1p2*gpp2*M1*Ql9*Qu)/5._dp - (32*g1p2*gpp2*M4*Ql9*Qu)/5._dp +& 
&  (72*g1p2*gpp2*M1*Qq*Qu)/5._dp + (72*g1p2*gpp2*M4*Qq*Qu)/5._dp - (352*g1p2*gpp2*M1*Qup2)/15._dp -& 
&  (64*g3p2*gpp2*M3*Qup2)/3._dp - (352*g1p2*gpp2*M4*Qup2)/15._dp - (64*g3p2*gpp2*M4*Qup2)/3._dp -& 
&  72*gpp4*M4*Qdp2*Qup2 - 8*gpp4*M4*Qe4p2*Qup2 - 16*gpp4*M4*Qe9p2*Qup2 - 16*gpp4*M4*QHdp2*Qup2 -& 
&  88*gpp4*M4*QHup2*Qup2 - 16*gpp4*M4*Ql4p2*Qup2 - 32*gpp4*M4*Ql9p2*Qup2 -               & 
&  216*gpp4*M4*Qqp2*Qup2 - 8*gpp4*M4*Qsp2*Qup2 - 88*gpp4*M4*Qup4 - 2*lamp2*Tradjy2Ty2 -  & 
&  6*lamp2*TradjYdTd + (8*g1p2*TradjYuTu)/5._dp + 32*g3p2*TradjYuTu - 12*gpp2*QHup2*TradjYuTu +& 
&  12*gpp2*Qqp2*TradjYuTu + 12*gpp2*Qup2*TradjYuTu - 6._dp*(TrYdadjYuTuadjYd) -          & 
&  6._dp*(TrYuadjYdTdadjYu) - (8*g1p2*M1*TrYuadjYu)/5._dp - 32*g3p2*M3*TrYuadjYu +       & 
&  12*gpp2*M4*QHup2*TrYuadjYu - 12*gpp2*M4*Qqp2*TrYuadjYu - 12*gpp2*M4*Qup2*TrYuadjYu -  & 
&  36._dp*(TrYuadjYuTuadjYu) - 2*(6._dp*(lamp2) - 2*gpp2*QHdp2 + 2*gpp2*QHup2 -          & 
&  2*gpp2*Qsp2 + Try2adjy2 + 3._dp*(TrYdadjYd))*lam*Tlam - 2*lam*Conjg(y1)*(lam*Ty1 +    & 
&  y1*Tlam))

 
DTu = oo16pi2*( betaTu1 + oo16pi2 * betaTu2 ) 

 
Else 
DTu = oo16pi2* betaTu1 
End If 
 
 
Call Chop(DTu) 

!-------------------- 
! mq2 
!-------------------- 
 
betamq21  = 2._dp*(adjTdTd) + 2._dp*(adjTuTu) + 2._dp*(adjYdmd2Yd) + adjYdYdmq2 +     & 
&  2._dp*(adjYumu2Yu) + adjYuYumq2 - (2*AbsM1*g1p2*id3R)/15._dp - 6*AbsM2*g2p2*id3R -    & 
&  (32*AbsM3*g3p2*id3R)/3._dp + 2*adjYdYd*mHd2 + 2*adjYuYu*mHu2 + mq2adjYdYd +           & 
&  mq2adjYuYu - 8*AbsM4*gpp2*id3R*Qqp2 + 2._dp*(TpTdpCTdp) + g1*id3R*ooSqrt15*Tr1(1)     & 
&  + 2*gp*id3R*Qq*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamq22 = -2*Absy1*adjTdTd - 4._dp*(adjTdTdadjYdYd) - 4._dp*(adjTdYdadjYdTd) - 4._dp*(adjTuTuadjYuYu) -& 
&  4._dp*(adjTuYuadjYuTu) - 2*Absy1*adjYdmd2Yd - 4._dp*(adjYdmd2YdadjYdYd) -             & 
&  4._dp*(adjYdTdadjTdYd) - 2*AbsTy1*adjYdYd - 4._dp*(adjYdYdadjTdTd) - 4._dp*(adjYdYdadjYdmd2Yd) -& 
&  2._dp*(adjYdYdadjYdYdmq2) - Absy1*adjYdYdmq2 - 4._dp*(adjYdYdmq2adjYdYd) -            & 
&  4._dp*(adjYumu2YuadjYuYu) - 4._dp*(adjYuTuadjTuYu) - 4._dp*(adjYuYuadjTuTu) -         & 
&  4._dp*(adjYuYuadjYumu2Yu) - 2._dp*(adjYuYuadjYuYumq2) - 4._dp*(adjYuYumq2adjYuYu) +   & 
&  (4*adjTdTd*g1p2)/5._dp + (8*adjTuTu*g1p2)/5._dp + (4*adjYdmd2Yd*g1p2)/5._dp +         & 
&  (2*adjYdYdmq2*g1p2)/5._dp + (8*adjYumu2Yu*g1p2)/5._dp + (4*adjYuYumq2*g1p2)/5._dp +   & 
&  (2*AbsM2*g1p2*g2p2*id3R)/5._dp + 33*AbsM2*g2p4*id3R + 32*AbsM2*g2p2*g3p2*id3R -       & 
&  2*adjTdTd*lamp2 - 2*adjTuTu*lamp2 - 2*adjYdmd2Yd*lamp2 - adjYdYdmq2*lamp2 -           & 
&  2*adjYumu2Yu*lamp2 - adjYuYumq2*lamp2 - (4*adjTdYd*g1p2*M1)/5._dp - (8*adjTuYu*g1p2*M1)/5._dp -& 
&  2*Absy1*adjYdYd*me42 - 4*Absy1*adjYdYd*mHd2 - 8*adjYdYdadjYdYd*mHd2 + (4*adjYdYd*g1p2*mHd2)/5._dp -& 
&  4*adjYdYd*lamp2*mHd2 - 2*adjYuYu*lamp2*mHd2 - 8*adjYuYuadjYuYu*mHu2 + (8*adjYuYu*g1p2*mHu2)/5._dp -& 
&  2*adjYdYd*lamp2*mHu2 - 4*adjYuYu*lamp2*mHu2 - 2*Absy1*adjYdYd*ml42 - Absy1*mq2adjYdYd +& 
&  (2*g1p2*mq2adjYdYd)/5._dp - lamp2*mq2adjYdYd - 2._dp*(mq2adjYdYdadjYdYd) +            & 
&  (4*g1p2*mq2adjYuYu)/5._dp - lamp2*mq2adjYuYu - 2._dp*(mq2adjYuYuadjYuYu) -            & 
&  2*adjYdYd*lamp2*ms2 - 2*adjYuYu*lamp2*ms2 + 4*adjTdTd*gpp2*Qdp2 + 4*adjYdmd2Yd*gpp2*Qdp2 +& 
&  8*AbsM4*adjYdYd*gpp2*Qdp2 + 2*adjYdYdmq2*gpp2*Qdp2 - 4*adjTdYd*gpp2*M4*Qdp2 +         & 
&  4*adjYdYd*gpp2*mHd2*Qdp2 + 2*gpp2*mq2adjYdYd*Qdp2 + 4*adjTdTd*gpp2*QHdp2 +            & 
&  4*adjYdmd2Yd*gpp2*QHdp2 + 8*AbsM4*adjYdYd*gpp2*QHdp2 + 2*adjYdYdmq2*gpp2*QHdp2 -      & 
&  4*adjTdYd*gpp2*M4*QHdp2 + 4*adjYdYd*gpp2*mHd2*QHdp2 + 2*gpp2*mq2adjYdYd*QHdp2  
betamq22 =  betamq22+ 4*adjTuTu*gpp2*QHup2 + 4*adjYumu2Yu*gpp2*QHup2 + 8*AbsM4*adjYuYu*gpp2*QHup2 +         & 
&  2*adjYuYumq2*gpp2*QHup2 - 4*adjTuYu*gpp2*M4*QHup2 + 4*adjYuYu*gpp2*mHu2*QHup2 +       & 
&  2*gpp2*mq2adjYuYu*QHup2 + (24*AbsM4*g1p2*gpp2*id3R*Qd*Qq)/5._dp + (8*AbsM4*g1p2*gpp2*id3R*Qe4*Qq)/5._dp +& 
&  (16*AbsM4*g1p2*gpp2*id3R*Qe9*Qq)/5._dp - (8*AbsM4*g1p2*gpp2*id3R*QHd*Qq)/5._dp +      & 
&  (8*AbsM4*g1p2*gpp2*id3R*QHu*Qq)/5._dp - (8*AbsM4*g1p2*gpp2*id3R*Ql4*Qq)/5._dp -       & 
&  (16*AbsM4*g1p2*gpp2*id3R*Ql9*Qq)/5._dp - 4*adjTdTd*gpp2*Qqp2 - 4*adjTuTu*gpp2*Qqp2 -  & 
&  4*adjYdmd2Yd*gpp2*Qqp2 - 8*AbsM4*adjYdYd*gpp2*Qqp2 - 2*adjYdYdmq2*gpp2*Qqp2 -         & 
&  4*adjYumu2Yu*gpp2*Qqp2 - 8*AbsM4*adjYuYu*gpp2*Qqp2 - 2*adjYuYumq2*gpp2*Qqp2 +         & 
&  (16*AbsM4*g1p2*gpp2*id3R*Qqp2)/3._dp + 24*AbsM2*g2p2*gpp2*id3R*Qqp2 + 24*AbsM4*g2p2*gpp2*id3R*Qqp2 +& 
&  (128*AbsM4*g3p2*gpp2*id3R*Qqp2)/3._dp + 4*adjTdYd*gpp2*M4*Qqp2 + 4*adjTuYu*gpp2*M4*Qqp2 -& 
&  4*adjYdYd*gpp2*mHd2*Qqp2 - 4*adjYuYu*gpp2*mHu2*Qqp2 - 2*gpp2*mq2adjYdYd*Qqp2 -        & 
&  2*gpp2*mq2adjYuYu*Qqp2 + 216*AbsM4*gpp4*id3R*Qdp2*Qqp2 + 24*AbsM4*gpp4*id3R*Qe4p2*Qqp2 +& 
&  48*AbsM4*gpp4*id3R*Qe9p2*Qqp2 + 48*AbsM4*gpp4*id3R*QHdp2*Qqp2 + 48*AbsM4*gpp4*id3R*QHup2*Qqp2 +& 
&  48*AbsM4*gpp4*id3R*Ql4p2*Qqp2 + 96*AbsM4*gpp4*id3R*Ql9p2*Qqp2 + 480*AbsM4*gpp4*id3R*Qqp4 +& 
&  24*AbsM4*gpp4*id3R*Qqp2*Qsp2 - (48*AbsM4*g1p2*gpp2*id3R*Qq*Qu)/5._dp + 4*adjTuTu*gpp2*Qup2 +& 
&  4*adjYumu2Yu*gpp2*Qup2 + 8*AbsM4*adjYuYu*gpp2*Qup2 + 2*adjYuYumq2*gpp2*Qup2 -         & 
&  4*adjTuYu*gpp2*M4*Qup2 + 4*adjYuYu*gpp2*mHu2*Qup2 + 2*gpp2*mq2adjYuYu*Qup2 +          & 
&  216*AbsM4*gpp4*id3R*Qqp2*Qup2 - 2*adjYdYd*Tlamp2 - 2*adjYuYu*Tlamp2 - 2*adjTdYd*Tradjy2Ty2 -& 
&  6*adjTdYd*TradjYdTd - 6*adjTuYu*TradjYuTu - 6*adjYdYd*TrCTdTpTd - 6*adjYdTd*TrCTdTpYd -& 
&  6*adjYuYu*TrCTuTpTu - 6*adjYuTu*TrCTuTpYu - 2*adjYdYd*TrCTy2TpTy2 - 2*adjYdTd*TrCTy2Tpy2 -& 
&  6*adjYdYd*Trmd2YdadjYd - 2*adjYdYd*Trme92y2adjy2 - 2*adjYdYd*Trml92adjy2y2  
betamq22 =  betamq22- 6*adjYdYd*Trmq2adjYdYd - 6*adjYuYu*Trmq2adjYuYu - 6*adjYuYu*Trmu2YuadjYu -            & 
&  2*adjTdTd*Try2adjy2 - 2*adjYdmd2Yd*Try2adjy2 - adjYdYdmq2*Try2adjy2 - 4*adjYdYd*mHd2*Try2adjy2 -& 
&  mq2adjYdYd*Try2adjy2 - 6*adjTdTd*TrYdadjYd - 6*adjYdmd2Yd*TrYdadjYd - 3*adjYdYdmq2*TrYdadjYd -& 
&  12*adjYdYd*mHd2*TrYdadjYd - 3*mq2adjYdYd*TrYdadjYd - 6*adjTuTu*TrYuadjYu -            & 
&  6*adjYumu2Yu*TrYuadjYu - 3*adjYuYumq2*TrYuadjYu - 12*adjYuYu*mHu2*TrYuadjYu -         & 
&  3*mq2adjYuYu*TrYuadjYu + (g1p2*(180*(-1._dp*(adjYdTd) - 2._dp*(adjYuTu) +             & 
&  2*adjYdYd*M1 + 4*adjYuYu*M1) + id3R*(597*g1p2*M1 + 80*g3p2*(2._dp*(M1) +              & 
&  M3) + 45*g2p2*(2._dp*(M1) + M2) + 60*gpp2*(2._dp*(M1) + M4)*Qq*(9._dp*(Qd) +          & 
&  3._dp*(Qe4) + 6._dp*(Qe9) - 3._dp*(QHd) + 3._dp*(QHu) - 3._dp*(Ql4) - 6._dp*(Ql9) +   & 
&  10._dp*(Qq) - 18._dp*(Qu))))*Conjg(M1))/225._dp - (16*g3p2*id3R*(-(g1p2*(M1 +         & 
&  2._dp*(M3))) - 15*(-8*g3p2*M3 + 3*g2p2*(2._dp*(M3) + M2) + 4*gpp2*(2._dp*(M3) +       & 
&  M4)*Qqp2))*Conjg(M3))/45._dp - 4*adjYdTd*gpp2*Qdp2*Conjg(M4) - 4*adjYdTd*gpp2*QHdp2*Conjg(M4) -& 
&  4*adjYuTu*gpp2*QHup2*Conjg(M4) + (12*g1p2*gpp2*id3R*M1*Qd*Qq*Conjg(M4))/5._dp +       & 
&  (4*g1p2*gpp2*id3R*M1*Qe4*Qq*Conjg(M4))/5._dp + (8*g1p2*gpp2*id3R*M1*Qe9*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*QHd*Qq*Conjg(M4))/5._dp + (4*g1p2*gpp2*id3R*M1*QHu*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*Ql4*Qq*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Ql9*Qq*Conjg(M4))/5._dp +& 
&  4*adjYdTd*gpp2*Qqp2*Conjg(M4) + 4*adjYuTu*gpp2*Qqp2*Conjg(M4) + (8*g1p2*gpp2*id3R*M1*Qqp2*Conjg(M4))/3._dp +& 
&  (64*g3p2*gpp2*id3R*M3*Qqp2*Conjg(M4))/3._dp + 12*g2p2*gpp2*id3R*M2*Qqp2*Conjg(M4) -   & 
&  (24*g1p2*gpp2*id3R*M1*Qq*Qu*Conjg(M4))/5._dp - 4*adjYuTu*gpp2*Qup2*Conjg(M4) +        & 
&  (g1p2*g2p2*id3R*M1*Conjg(M2))/5._dp + 16*g2p2*g3p2*id3R*M3*Conjg(M2) + 12*g2p2*gpp2*id3R*M4*Qqp2*Conjg(M2) -& 
&  2*adjYdTd*y1*Conjg(Ty1) - 2*adjTdYd*Conjg(y1)*Ty1 - 2*adjTdYd*lam*Tlam  
betamq22 =  betamq22- 2*adjTuYu*lam*Tlam - 2*adjYdTd*lam*Tlam - 2*adjYuTu*lam*Tlam + 6*g2p4*id3R*Tr2(2) +   & 
&  (32*g3p4*id3R*Tr2(3))/3._dp + (2*g1p2*id3R*Tr2U1(1,1))/15._dp + 4*g1*gp*id3R*ooSqrt15*Qq*Tr2U1(1,& 
& 4) + 4*g1*gp*id3R*ooSqrt15*Qq*Tr2U1(4,1) + 8*gpp2*id3R*Qqp2*Tr2U1(4,4) +               & 
&  4*g1*id3R*ooSqrt15*Tr3(1) + 8*gp*id3R*Qq*Tr3(4)

 
Dmq2 = oo16pi2*( betamq21 + oo16pi2 * betamq22 ) 

 
Else 
Dmq2 = oo16pi2* betamq21 
End If 
 
 
Call Chop(Dmq2) 

Forall(i1=1:3) Dmq2(i1,i1) =  Real(Dmq2(i1,i1),dp) 
Dmq2 = 0.5_dp*(Dmq2+ Conjg(Transpose(Dmq2)) ) 
!-------------------- 
! ml42 
!-------------------- 
 
betaml421  = 2._dp*(AbsTy1) - (6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 + 2*Absy1*me42 +    & 
&  2*Absy1*mHd2 + 2*Absy1*ml42 - 8*AbsM4*gpp2*Ql4p2 - g1*sqrt3ov5*Tr1(1) +               & 
&  2*gp*Ql4*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml422 = -24*AbsTy1*Absy1 + (12*AbsTy1*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +              & 
&  33*AbsM2*g2p4 - 2*AbsTy1*lamp2 + (12*Absy1*g1p2*me42)/5._dp - 2*Absy1*lamp2*me42 +    & 
&  (12*Absy1*g1p2*mHd2)/5._dp - 4*Absy1*lamp2*mHd2 - 2*Absy1*lamp2*mHu2 + (12*Absy1*g1p2*ml42)/5._dp -& 
&  2*Absy1*lamp2*ml42 - 2*Absy1*lamp2*ms2 + 4*AbsTy1*gpp2*Qe4p2 + 4*Absy1*gpp2*me42*Qe4p2 +& 
&  4*Absy1*gpp2*mHd2*Qe4p2 + 4*Absy1*gpp2*ml42*Qe4p2 + 4*AbsTy1*gpp2*QHdp2 +             & 
&  4*Absy1*gpp2*me42*QHdp2 + 4*Absy1*gpp2*mHd2*QHdp2 + 4*Absy1*gpp2*ml42*QHdp2 -         & 
&  4*AbsTy1*gpp2*Ql4p2 + 24*AbsM2*g2p2*gpp2*Ql4p2 - 4*Absy1*gpp2*me42*Ql4p2 -            & 
&  4*Absy1*gpp2*mHd2*Ql4p2 - 4*Absy1*gpp2*ml42*Ql4p2 - 2*Absy1*Tlamp2 - 6*Absy1*TrCTdTpTd -& 
&  2*Absy1*TrCTy2TpTy2 - 6*Absy1*Trmd2YdadjYd - 2*Absy1*Trme92y2adjy2 - 2*Absy1*Trml92adjy2y2 -& 
&  6*Absy1*Trmq2adjYdYd - 2*AbsTy1*Try2adjy2 - 2*Absy1*me42*Try2adjy2 - 4*Absy1*mHd2*Try2adjy2 -& 
&  2*Absy1*ml42*Try2adjy2 - 6*AbsTy1*TrYdadjYd - 6*Absy1*me42*TrYdadjYd - 12*Absy1*mHd2*TrYdadjYd -& 
&  6*Absy1*ml42*TrYdadjYd - 12*Cy1p2*me42*y1p2 - 12*Cy1p2*mHd2*y1p2 - 12*Cy1p2*ml42*y1p2 +& 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*Ql4p2*Conjg(M2) - (12*g1p2*M1*y1*Conjg(Ty1))/5._dp -& 
&  4*gpp2*M4*Qe4p2*y1*Conjg(Ty1) - 4*gpp2*M4*QHdp2*y1*Conjg(Ty1) + 4*gpp2*M4*Ql4p2*y1*Conjg(Ty1) -& 
&  2*Tradjy2Ty2*y1*Conjg(Ty1) - 6*TradjYdTd*y1*Conjg(Ty1) + (3*g1p2*Conjg(M1)*(207*g1p2*M1 +& 
&  15*g2p2*(2._dp*(M1) + M2) - 20*gpp2*(2._dp*(M1) + M4)*Ql4*(3._dp*(Qd) +               & 
&  Qe4 + 2._dp*(Qe9) - QHd + QHu - 2._dp*(Ql4) - 2._dp*(Ql9) + 3._dp*(Qq) -              & 
&  6._dp*(Qu)) + 20*Conjg(y1)*(2*M1*y1 - Ty1)))/25._dp + (4*gpp2*Conjg(M4)*(3*Ql4*(-     & 
& (g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe4 + 2._dp*(Qe9) - QHd + QHu - 2._dp*(Ql4) -    & 
&  2._dp*(Ql9) + 3._dp*(Qq) - 6._dp*(Qu))) + 5*Ql4*(g2p2*(2._dp*(M4) + M2) +             & 
&  2*gpp2*M4*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2) + 2._dp*(QHup2) +     & 
&  4._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2)))) +              & 
&  5*(Qe4p2 + QHdp2 - Ql4p2)*Conjg(y1)*(2*M4*y1 - Ty1)))/5._dp - 6*TrCTdTpYd*Conjg(y1)*Ty1  
betaml422 =  betaml422- 2*TrCTy2Tpy2*Conjg(y1)*Ty1 - 2*y1*lam*Conjg(Ty1)*Tlam - 2*lam*Conjg(y1)*Ty1*Tlam +    & 
&  6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp - 4*g1*gp*Ql4*sqrt3ov5*Tr2U1(1,             & 
& 4) - 4*g1*gp*Ql4*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*Ql4p2*Tr2U1(4,4) - 4*g1*sqrt3ov5*Tr3(1) +& 
&  8*gp*Ql4*Tr3(4)

 
Dml42 = oo16pi2*( betaml421 + oo16pi2 * betaml422 ) 

 
Else 
Dml42 = oo16pi2* betaml421 
End If 
 
 
!-------------------- 
! ml92 
!-------------------- 
 
betaml921  = 2._dp*(adjTy2Ty2) + 2._dp*(adjy2me92y2) + adjy2y2ml92 - (6*AbsM1*g1p2*id2R)& 
& /5._dp - 6*AbsM2*g2p2*id2R + 2*adjy2y2*mHd2 + ml92adjy2y2 - 8*AbsM4*gpp2*id2R*Ql9p2 +  & 
&  2._dp*(TpTepCTep) - g1*id2R*sqrt3ov5*Tr1(1) + 2*gp*id2R*Ql9*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml922 = -2*Absy1*adjTy2Ty2 - 4._dp*(adjTy2Ty2adjy2y2) - 4._dp*(adjTy2y2adjy2Ty2) -            & 
&  2*Absy1*adjy2me92y2 - 4._dp*(adjy2me92y2adjy2y2) - 4._dp*(adjy2Ty2adjTy2y2) -         & 
&  2*AbsTy1*adjy2y2 - 4._dp*(adjy2y2adjTy2Ty2) - 4._dp*(adjy2y2adjy2me92y2) -            & 
&  2._dp*(adjy2y2adjy2y2ml92) - Absy1*adjy2y2ml92 - 4._dp*(adjy2y2ml92adjy2y2) +         & 
&  (12*adjTy2Ty2*g1p2)/5._dp + (12*adjy2me92y2*g1p2)/5._dp + (6*adjy2y2ml92*g1p2)/5._dp +& 
&  (18*AbsM2*g1p2*g2p2*id2R)/5._dp + 33*AbsM2*g2p4*id2R - 2*adjTy2Ty2*lamp2 -            & 
&  2*adjy2me92y2*lamp2 - adjy2y2ml92*lamp2 - (12*adjTy2y2*g1p2*M1)/5._dp -               & 
&  2*Absy1*adjy2y2*me42 - 4*Absy1*adjy2y2*mHd2 - 8*adjy2y2adjy2y2*mHd2 + (12*adjy2y2*g1p2*mHd2)/5._dp -& 
&  4*adjy2y2*lamp2*mHd2 - 2*adjy2y2*lamp2*mHu2 - 2*Absy1*adjy2y2*ml42 - Absy1*ml92adjy2y2 +& 
&  (6*g1p2*ml92adjy2y2)/5._dp - lamp2*ml92adjy2y2 - 2._dp*(ml92adjy2y2adjy2y2) -         & 
&  2*adjy2y2*lamp2*ms2 + 4*adjTy2Ty2*gpp2*Qe9p2 + 4*adjy2me92y2*gpp2*Qe9p2 +             & 
&  2*adjy2y2ml92*gpp2*Qe9p2 - 4*adjTy2y2*gpp2*M4*Qe9p2 + 4*adjy2y2*gpp2*mHd2*Qe9p2 +     & 
&  2*gpp2*ml92adjy2y2*Qe9p2 + 4*adjTy2Ty2*gpp2*QHdp2 + 4*adjy2me92y2*gpp2*QHdp2 +        & 
&  2*adjy2y2ml92*gpp2*QHdp2 - 4*adjTy2y2*gpp2*M4*QHdp2 + 4*adjy2y2*gpp2*mHd2*QHdp2 +     & 
&  2*gpp2*ml92adjy2y2*QHdp2 - 4*adjTy2Ty2*gpp2*Ql9p2 - 4*adjy2me92y2*gpp2*Ql9p2 -        & 
&  2*adjy2y2ml92*gpp2*Ql9p2 + 24*AbsM2*g2p2*gpp2*id2R*Ql9p2 + 4*adjTy2y2*gpp2*M4*Ql9p2 - & 
&  4*adjy2y2*gpp2*mHd2*Ql9p2 - 2*gpp2*ml92adjy2y2*Ql9p2 - 2*adjy2y2*Tlamp2 -             & 
&  2*adjTy2y2*Tradjy2Ty2 - 6*adjTy2y2*TradjYdTd - 6*adjy2y2*TrCTdTpTd - 6*adjy2Ty2*TrCTdTpYd -& 
&  2*adjy2y2*TrCTy2TpTy2 - 2*adjy2Ty2*TrCTy2Tpy2 - 6*adjy2y2*Trmd2YdadjYd -              & 
&  2*adjy2y2*Trme92y2adjy2 - 2*adjy2y2*Trml92adjy2y2 - 6*adjy2y2*Trmq2adjYdYd -          & 
&  2*adjTy2Ty2*Try2adjy2 - 2*adjy2me92y2*Try2adjy2 - adjy2y2ml92*Try2adjy2  
betaml922 =  betaml922- 4*adjy2y2*mHd2*Try2adjy2 - ml92adjy2y2*Try2adjy2 - 6*adjTy2Ty2*TrYdadjYd -            & 
&  6*adjy2me92y2*TrYdadjYd - 3*adjy2y2ml92*TrYdadjYd - 12*adjy2y2*mHd2*TrYdadjYd -       & 
&  3*ml92adjy2y2*TrYdadjYd + (3*g1p2*(-20._dp*(adjy2Ty2) + 40*adjy2y2*M1 +               & 
&  id2R*(207*g1p2*M1 + 15*g2p2*(2._dp*(M1) + M2) + 20*gpp2*(2._dp*(M1) + M4)*Ql9*(-      & 
& 3._dp*(Qd) - Qe4 - 2._dp*(Qe9) + QHd - QHu + Ql4 + 3._dp*(Ql9) - 3._dp*(Qq) +          & 
&  6._dp*(Qu))))*Conjg(M1))/25._dp + (4*gpp2*(5*(-1._dp*(adjy2Ty2) + 2*adjy2y2*M4)*(Qe9p2 +& 
&  QHdp2 - Ql9p2) + 3*id2R*Ql9*(-(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe4 +             & 
&  2._dp*(Qe9) - QHd + QHu - Ql4 - 3._dp*(Ql9) + 3._dp*(Qq) - 6._dp*(Qu))) +             & 
&  5*Ql9*(g2p2*(2._dp*(M4) + M2) + 2*gpp2*M4*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) +     & 
&  2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql4p2) + 6._dp*(Ql9p2) + 18._dp*(Qqp2) +       & 
&  Qsp2 + 9._dp*(Qup2)))))*Conjg(M4))/5._dp + (9*g1p2*g2p2*id2R*M1*Conjg(M2))/5._dp +    & 
&  12*g2p2*gpp2*id2R*M4*Ql9p2*Conjg(M2) - 2*adjy2Ty2*y1*Conjg(Ty1) - 2*adjTy2y2*Conjg(y1)*Ty1 -& 
&  2*adjTy2y2*lam*Tlam - 2*adjy2Ty2*lam*Tlam + 6*g2p4*id2R*Tr2(2) + (6*g1p2*id2R*Tr2U1(1,& 
& 1))/5._dp - 4*g1*gp*id2R*Ql9*sqrt3ov5*Tr2U1(1,4) - 4*g1*gp*id2R*Ql9*sqrt3ov5*Tr2U1(4,  & 
& 1) + 8*gpp2*id2R*Ql9p2*Tr2U1(4,4) - 4*g1*id2R*sqrt3ov5*Tr3(1) + 8*gp*id2R*Ql9*Tr3(4)

 
Dml92 = oo16pi2*( betaml921 + oo16pi2 * betaml922 ) 

 
Else 
Dml92 = oo16pi2* betaml921 
End If 
 
 
Call Chop(Dml92) 

Forall(i1=1:2) Dml92(i1,i1) =  Real(Dml92(i1,i1),dp) 
Dml92 = 0.5_dp*(Dml92+ Conjg(Transpose(Dml92)) ) 
!-------------------- 
! mHd2 
!-------------------- 
 
betamHd21  = 2._dp*(AbsTy1) - (6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 + 2*Absy1*me42 +    & 
&  2*Absy1*mHd2 + 2*lamp2*mHd2 + 2*lamp2*mHu2 + 2*Absy1*ml42 + 2*lamp2*ms2 -             & 
&  8*AbsM4*gpp2*QHdp2 + 2._dp*(Tlamp2) + 6._dp*(TrCTdTpTd) + 2._dp*(TrCTy2TpTy2)         & 
&  + 6._dp*(Trmd2YdadjYd) + 2._dp*(Trme92y2adjy2) + 2._dp*(Trml92adjy2y2) +              & 
&  6._dp*(Trmq2adjYdYd) + 2*mHd2*Try2adjy2 + 6*mHd2*TrYdadjYd - g1*sqrt3ov5*Tr1(1)       & 
&  + 2*gp*QHd*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamHd22 = -24*AbsTy1*Absy1 + (12*AbsTy1*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +              & 
&  33*AbsM2*g2p4 + (12*Absy1*g1p2*me42)/5._dp + (12*Absy1*g1p2*mHd2)/5._dp -             & 
&  12*lamp4*mHd2 - 12*lamp4*mHu2 + (12*Absy1*g1p2*ml42)/5._dp - 12*lamp4*ms2 +           & 
&  4*AbsTy1*gpp2*Qe4p2 + 4*Absy1*gpp2*me42*Qe4p2 + 4*Absy1*gpp2*mHd2*Qe4p2 +             & 
&  4*Absy1*gpp2*ml42*Qe4p2 - 4*AbsTy1*gpp2*QHdp2 + 24*AbsM2*g2p2*gpp2*QHdp2 -            & 
&  4*Absy1*gpp2*me42*QHdp2 - 4*Absy1*gpp2*mHd2*QHdp2 - 4*gpp2*lamp2*mHd2*QHdp2 -         & 
&  4*gpp2*lamp2*mHu2*QHdp2 - 4*Absy1*gpp2*ml42*QHdp2 - 4*gpp2*lamp2*ms2*QHdp2 +          & 
&  4*gpp2*lamp2*mHd2*QHup2 + 4*gpp2*lamp2*mHu2*QHup2 + 4*gpp2*lamp2*ms2*QHup2 +          & 
&  4*AbsTy1*gpp2*Ql4p2 + 4*Absy1*gpp2*me42*Ql4p2 + 4*Absy1*gpp2*mHd2*Ql4p2 +             & 
&  4*Absy1*gpp2*ml42*Ql4p2 + 4*gpp2*lamp2*mHd2*Qsp2 + 4*gpp2*lamp2*mHu2*Qsp2 +           & 
&  4*gpp2*lamp2*ms2*Qsp2 - 24*lamp2*Tlamp2 - 4*gpp2*QHdp2*Tlamp2 + 4*gpp2*QHup2*Tlamp2 + & 
&  4*gpp2*Qsp2*Tlamp2 - (4*g1p2*TrCTdTpTd)/5._dp + 32*g3p2*TrCTdTpTd + 12*gpp2*Qdp2*TrCTdTpTd -& 
&  12*gpp2*QHdp2*TrCTdTpTd + 12*gpp2*Qqp2*TrCTdTpTd + (4*g1p2*M1*TrCTdTpYd)/5._dp -      & 
&  32*g3p2*M3*TrCTdTpYd - 12*gpp2*M4*Qdp2*TrCTdTpYd + 12*gpp2*M4*QHdp2*TrCTdTpYd -       & 
&  12*gpp2*M4*Qqp2*TrCTdTpYd - 6*lamp2*TrCTuTpTu + (12*g1p2*TrCTy2TpTy2)/5._dp +         & 
&  4*gpp2*Qe9p2*TrCTy2TpTy2 - 4*gpp2*QHdp2*TrCTy2TpTy2 + 4*gpp2*Ql9p2*TrCTy2TpTy2 -      & 
&  (12*g1p2*M1*TrCTy2Tpy2)/5._dp - 4*gpp2*M4*Qe9p2*TrCTy2Tpy2 + 4*gpp2*M4*QHdp2*TrCTy2Tpy2 -& 
&  4*gpp2*M4*Ql9p2*TrCTy2Tpy2 - (4*g1p2*Trmd2YdadjYd)/5._dp + 32*g3p2*Trmd2YdadjYd +     & 
&  12*gpp2*Qdp2*Trmd2YdadjYd - 12*gpp2*QHdp2*Trmd2YdadjYd + 12*gpp2*Qqp2*Trmd2YdadjYd -  & 
&  36._dp*(Trmd2YdadjYdYdadjYd) - 6._dp*(Trmd2YdadjYuYuadjYd) + (12*g1p2*Trme92y2adjy2)/5._dp +& 
&  4*gpp2*Qe9p2*Trme92y2adjy2 - 4*gpp2*QHdp2*Trme92y2adjy2 + 4*gpp2*Ql9p2*Trme92y2adjy2  
betamHd22 =  betamHd22- 12._dp*(Trme92y2adjy2y2adjy2) + (12*g1p2*Trml92adjy2y2)/5._dp + 4*gpp2*Qe9p2*Trml92adjy2y2 -& 
&  4*gpp2*QHdp2*Trml92adjy2y2 + 4*gpp2*Ql9p2*Trml92adjy2y2 - 12._dp*(Trml92adjy2y2adjy2y2) -& 
&  (4*g1p2*Trmq2adjYdYd)/5._dp + 32*g3p2*Trmq2adjYdYd + 12*gpp2*Qdp2*Trmq2adjYdYd -      & 
&  12*gpp2*QHdp2*Trmq2adjYdYd + 12*gpp2*Qqp2*Trmq2adjYdYd - 36._dp*(Trmq2adjYdYdadjYdYd) -& 
&  6._dp*(Trmq2adjYdYdadjYuYu) - 6*lamp2*Trmq2adjYuYu - 6._dp*(Trmq2adjYuYuadjYdYd) -    & 
&  6._dp*(Trmu2YuadjYdYdadjYu) - 6*lamp2*Trmu2YuadjYu - 12._dp*(Try2adjTy2Ty2adjy2) +    & 
&  (12*g1p2*mHd2*Try2adjy2)/5._dp + 4*gpp2*mHd2*Qe9p2*Try2adjy2 - 4*gpp2*mHd2*QHdp2*Try2adjy2 +& 
&  4*gpp2*mHd2*Ql9p2*Try2adjy2 - 12._dp*(Try2adjy2Ty2adjTy2) - 12*mHd2*Try2adjy2y2adjy2 -& 
&  36._dp*(TrYdadjTdTdadjYd) - 6._dp*(TrYdadjTuTuadjYd) + 64*AbsM3*g3p2*TrYdadjYd -      & 
&  (4*g1p2*mHd2*TrYdadjYd)/5._dp + 32*g3p2*mHd2*TrYdadjYd + 12*gpp2*mHd2*Qdp2*TrYdadjYd -& 
&  12*gpp2*mHd2*QHdp2*TrYdadjYd + 12*gpp2*mHd2*Qqp2*TrYdadjYd - 36._dp*(TrYdadjYdTdadjTd) -& 
&  36*mHd2*TrYdadjYdYdadjYd - 6._dp*(TrYdadjYuTuadjTd) - 6*mHd2*TrYdadjYuYuadjYd -       & 
&  6*mHu2*TrYdadjYuYuadjYd - 6._dp*(TrYuadjTdTdadjYu) - 6._dp*(TrYuadjYdTdadjTu) -       & 
&  6*lamp2*mHd2*TrYuadjYu - 12*lamp2*mHu2*TrYuadjYu - 6*lamp2*ms2*TrYuadjYu -            & 
&  6*Tlamp2*TrYuadjYu - 12*Cy1p2*me42*y1p2 - 12*Cy1p2*mHd2*y1p2 - 12*Cy1p2*ml42*y1p2 -   & 
&  32*g3p2*TradjYdTd*Conjg(M3) + (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*QHdp2*Conjg(M2) -& 
&  (12*g1p2*M1*y1*Conjg(Ty1))/5._dp - 4*gpp2*M4*Qe4p2*y1*Conjg(Ty1) + 4*gpp2*M4*QHdp2*y1*Conjg(Ty1) -& 
&  4*gpp2*M4*Ql4p2*y1*Conjg(Ty1) + (g1p2*Conjg(M1)*(621*g1p2*M1 + 90*g2p2*M1 +           & 
&  45*g2p2*M2 - 360*gpp2*M1*Qd*QHd - 180*gpp2*M4*Qd*QHd - 120*gpp2*M1*Qe4*QHd -          & 
&  60*gpp2*M4*Qe4*QHd - 240*gpp2*M1*Qe9*QHd - 120*gpp2*M4*Qe9*QHd + 240*gpp2*M1*QHdp2 +  & 
&  120*gpp2*M4*QHdp2 - 120*gpp2*M1*QHd*QHu - 60*gpp2*M4*QHd*QHu + 120*gpp2*M1*QHd*Ql4 +  & 
&  60*gpp2*M4*QHd*Ql4 + 240*gpp2*M1*QHd*Ql9 + 120*gpp2*M4*QHd*Ql9 - 360*gpp2*M1*QHd*Qq - & 
&  180*gpp2*M4*QHd*Qq + 720*gpp2*M1*QHd*Qu + 360*gpp2*M4*QHd*Qu - 60._dp*(Tradjy2Ty2) +  & 
&  20._dp*(TradjYdTd) + 120*M1*Try2adjy2 - 40*M1*TrYdadjYd + 60*Conjg(y1)*(2*M1*y1 -     & 
&  Ty1)))/25._dp + 4*gpp2*M4*QHdp2*lam*Tlam - 4*gpp2*M4*QHup2*lam*Tlam - 4*gpp2*M4*Qsp2*lam*Tlam  
betamHd22 =  betamHd22- 6*TradjYuTu*lam*Tlam - 6*TrCTuTpYu*lam*Tlam + (4*gpp2*Conjg(M4)*(-9*g1p2*M1*Qd*QHd -  & 
&  18*g1p2*M4*Qd*QHd - 3*g1p2*M1*Qe4*QHd - 6*g1p2*M4*Qe4*QHd - 6*g1p2*M1*Qe9*QHd -       & 
&  12*g1p2*M4*Qe9*QHd + 6*g1p2*M1*QHdp2 + 12*g1p2*M4*QHdp2 + 30*g2p2*M4*QHdp2 -          & 
&  10*lamp2*M4*QHdp2 + 15*g2p2*M2*QHdp2 + 270*gpp2*M4*Qdp2*QHdp2 + 30*gpp2*M4*Qe4p2*QHdp2 +& 
&  60*gpp2*M4*Qe9p2*QHdp2 + 120*gpp2*M4*QHdp4 - 3*g1p2*M1*QHd*QHu - 6*g1p2*M4*QHd*QHu +  & 
&  10*lamp2*M4*QHup2 + 60*gpp2*M4*QHdp2*QHup2 + 3*g1p2*M1*QHd*Ql4 + 6*g1p2*M4*QHd*Ql4 +  & 
&  60*gpp2*M4*QHdp2*Ql4p2 + 6*g1p2*M1*QHd*Ql9 + 12*g1p2*M4*QHd*Ql9 + 120*gpp2*M4*QHdp2*Ql9p2 -& 
&  9*g1p2*M1*QHd*Qq - 18*g1p2*M4*QHd*Qq + 540*gpp2*M4*QHdp2*Qqp2 + 10*lamp2*M4*Qsp2 +    & 
&  30*gpp2*M4*QHdp2*Qsp2 + 18*g1p2*M1*QHd*Qu + 36*g1p2*M4*QHd*Qu + 270*gpp2*M4*QHdp2*Qup2 -& 
&  5*Qe9p2*Tradjy2Ty2 + 5*QHdp2*Tradjy2Ty2 - 5*Ql9p2*Tradjy2Ty2 - 15*Qdp2*TradjYdTd +    & 
&  15*QHdp2*TradjYdTd - 15*Qqp2*TradjYdTd + 10*M4*Qe9p2*Try2adjy2 - 10*M4*QHdp2*Try2adjy2 +& 
&  10*M4*Ql9p2*Try2adjy2 + 30*M4*Qdp2*TrYdadjYd - 30*M4*QHdp2*TrYdadjYd + 30*M4*Qqp2*TrYdadjYd +& 
&  5*(Qe4p2 - QHdp2 + Ql4p2)*Conjg(y1)*(2*M4*y1 - Ty1) + 5*(QHdp2 - QHup2 -              & 
&  Qsp2)*lam*Tlam))/5._dp + 6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp - 4*g1*gp*QHd*sqrt3ov5*Tr2U1(1,& 
& 4) - 4*g1*gp*QHd*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*QHdp2*Tr2U1(4,4) - 4*g1*sqrt3ov5*Tr3(1) +& 
&  8*gp*QHd*Tr3(4)

 
DmHd2 = oo16pi2*( betamHd21 + oo16pi2 * betamHd22 ) 

 
Else 
DmHd2 = oo16pi2* betamHd21 
End If 
 
 
!-------------------- 
! mHu2 
!-------------------- 
 
betamHu21  = (-6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 + 2*lamp2*mHd2 + 2*lamp2*mHu2 +     & 
&  2*lamp2*ms2 - 8*AbsM4*gpp2*QHup2 + 2._dp*(Tlamp2) + 6._dp*(TrCTuTpTu) +               & 
&  6._dp*(Trmq2adjYuYu) + 6._dp*(Trmu2YuadjYu) + 6._dp*(TrTdpadjTdp) + 2._dp*(TrTepadjTep)& 
&  + 6*mHu2*TrYuadjYu + g1*sqrt3ov5*Tr1(1) + 2*gp*QHu*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamHu22 = (18*AbsM2*g1p2*g2p2)/5._dp + 33*AbsM2*g2p4 - 2*AbsTy1*lamp2 - 2*Absy1*lamp2*me42 -    & 
&  4*Absy1*lamp2*mHd2 - 12*lamp4*mHd2 - 2*Absy1*lamp2*mHu2 - 12*lamp4*mHu2 -             & 
&  2*Absy1*lamp2*ml42 - 2*Absy1*lamp2*ms2 - 12*lamp4*ms2 + 4*gpp2*lamp2*mHd2*QHdp2 +     & 
&  4*gpp2*lamp2*mHu2*QHdp2 + 4*gpp2*lamp2*ms2*QHdp2 + 24*AbsM2*g2p2*gpp2*QHup2 -         & 
&  4*gpp2*lamp2*mHd2*QHup2 - 4*gpp2*lamp2*mHu2*QHup2 - 4*gpp2*lamp2*ms2*QHup2 +          & 
&  4*gpp2*lamp2*mHd2*Qsp2 + 4*gpp2*lamp2*mHu2*Qsp2 + 4*gpp2*lamp2*ms2*Qsp2 -             & 
&  2*Absy1*Tlamp2 - 24*lamp2*Tlamp2 + 4*gpp2*QHdp2*Tlamp2 - 4*gpp2*QHup2*Tlamp2 +        & 
&  4*gpp2*Qsp2*Tlamp2 - 6*lamp2*TrCTdTpTd + (8*g1p2*TrCTuTpTu)/5._dp + 32*g3p2*TrCTuTpTu -& 
&  12*gpp2*QHup2*TrCTuTpTu + 12*gpp2*Qqp2*TrCTuTpTu + 12*gpp2*Qup2*TrCTuTpTu -           & 
&  (8*g1p2*M1*TrCTuTpYu)/5._dp - 32*g3p2*M3*TrCTuTpYu + 12*gpp2*M4*QHup2*TrCTuTpYu -     & 
&  12*gpp2*M4*Qqp2*TrCTuTpYu - 12*gpp2*M4*Qup2*TrCTuTpYu - 2*lamp2*TrCTy2TpTy2 -         & 
&  6*lamp2*Trmd2YdadjYd - 6._dp*(Trmd2YdadjYuYuadjYd) - 2*lamp2*Trme92y2adjy2 -          & 
&  2*lamp2*Trml92adjy2y2 - 6*lamp2*Trmq2adjYdYd - 6._dp*(Trmq2adjYdYdadjYuYu) +          & 
&  (8*g1p2*Trmq2adjYuYu)/5._dp + 32*g3p2*Trmq2adjYuYu - 12*gpp2*QHup2*Trmq2adjYuYu +     & 
&  12*gpp2*Qqp2*Trmq2adjYuYu + 12*gpp2*Qup2*Trmq2adjYuYu - 6._dp*(Trmq2adjYuYuadjYdYd) - & 
&  36._dp*(Trmq2adjYuYuadjYuYu) - 6._dp*(Trmu2YuadjYdYdadjYu) + (8*g1p2*Trmu2YuadjYu)/5._dp +& 
&  32*g3p2*Trmu2YuadjYu - 12*gpp2*QHup2*Trmu2YuadjYu + 12*gpp2*Qqp2*Trmu2YuadjYu +       & 
&  12*gpp2*Qup2*Trmu2YuadjYu - 36._dp*(Trmu2YuadjYuYuadjYu) - 4*lamp2*mHd2*Try2adjy2 -   & 
&  2*lamp2*mHu2*Try2adjy2 - 2*lamp2*ms2*Try2adjy2 - 2*Tlamp2*Try2adjy2 - 6._dp*(TrYdadjTuTuadjYd) -& 
&  12*lamp2*mHd2*TrYdadjYd - 6*lamp2*mHu2*TrYdadjYd - 6*lamp2*ms2*TrYdadjYd -            & 
&  6*Tlamp2*TrYdadjYd - 6._dp*(TrYdadjYuTuadjTd) - 6*mHd2*TrYdadjYuYuadjYd  
betamHu22 =  betamHu22- 6*mHu2*TrYdadjYuYuadjYd - 6._dp*(TrYuadjTdTdadjYu) - 36._dp*(TrYuadjTuTuadjYu) -      & 
&  6._dp*(TrYuadjYdTdadjTu) + 64*AbsM3*g3p2*TrYuadjYu + (8*g1p2*mHu2*TrYuadjYu)/5._dp +  & 
&  32*g3p2*mHu2*TrYuadjYu - 12*gpp2*mHu2*QHup2*TrYuadjYu + 12*gpp2*mHu2*Qqp2*TrYuadjYu + & 
&  12*gpp2*mHu2*Qup2*TrYuadjYu - 36._dp*(TrYuadjYuTuadjTu) - 36*mHu2*TrYuadjYuYuadjYu +  & 
&  (g1p2*(621*g1p2*M1 + 45*g2p2*(2._dp*(M1) + M2) + 60*gpp2*(2._dp*(M1) + M4)*QHu*(3._dp*(Qd) +& 
&  Qe4 + 2._dp*(Qe9) - QHd + 2._dp*(QHu) - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) -              & 
&  6._dp*(Qu)) - 40._dp*(TradjYuTu) + 80*M1*TrYuadjYu)*Conjg(M1))/25._dp -               & 
&  32*g3p2*TradjYuTu*Conjg(M3) + (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*QHup2*Conjg(M2) -& 
&  4*gpp2*M4*QHdp2*lam*Tlam + 4*gpp2*M4*QHup2*lam*Tlam - 4*gpp2*M4*Qsp2*lam*Tlam -       & 
&  2*Tradjy2Ty2*lam*Tlam - 6*TradjYdTd*lam*Tlam - 6*TrCTdTpYd*lam*Tlam - 2*TrCTy2Tpy2*lam*Tlam -& 
&  2*y1*lam*Conjg(Ty1)*Tlam - 2*lam*Conjg(y1)*Ty1*Tlam + (4*gpp2*Conjg(M4)*(10*lamp2*M4*QHdp2 +& 
&  9*g1p2*M1*Qd*QHu + 18*g1p2*M4*Qd*QHu + 3*g1p2*M1*Qe4*QHu + 6*g1p2*M4*Qe4*QHu +        & 
&  6*g1p2*M1*Qe9*QHu + 12*g1p2*M4*Qe9*QHu - 3*g1p2*M1*QHd*QHu - 6*g1p2*M4*QHd*QHu +      & 
&  6*g1p2*M1*QHup2 + 12*g1p2*M4*QHup2 + 30*g2p2*M4*QHup2 - 10*lamp2*M4*QHup2 +           & 
&  15*g2p2*M2*QHup2 + 270*gpp2*M4*Qdp2*QHup2 + 30*gpp2*M4*Qe4p2*QHup2 + 60*gpp2*M4*Qe9p2*QHup2 +& 
&  60*gpp2*M4*QHdp2*QHup2 + 120*gpp2*M4*QHup4 - 3*g1p2*M1*QHu*Ql4 - 6*g1p2*M4*QHu*Ql4 +  & 
&  60*gpp2*M4*QHup2*Ql4p2 - 6*g1p2*M1*QHu*Ql9 - 12*g1p2*M4*QHu*Ql9 + 120*gpp2*M4*QHup2*Ql9p2 +& 
&  9*g1p2*M1*QHu*Qq + 18*g1p2*M4*QHu*Qq + 540*gpp2*M4*QHup2*Qqp2 + 10*lamp2*M4*Qsp2 +    & 
&  30*gpp2*M4*QHup2*Qsp2 - 18*g1p2*M1*QHu*Qu - 36*g1p2*M4*QHu*Qu + 270*gpp2*M4*QHup2*Qup2 +& 
&  15*QHup2*TradjYuTu - 15*Qqp2*TradjYuTu - 15*Qup2*TradjYuTu - 30*M4*(QHup2 -           & 
&  Qqp2 - Qup2)*TrYuadjYu - 5*(QHdp2 - QHup2 + Qsp2)*lam*Tlam))/5._dp + 6*g2p4*Tr2(2)  
betamHu22 =  betamHu22+ (6*g1p2*Tr2U1(1,1))/5._dp + 4*g1*gp*QHu*sqrt3ov5*Tr2U1(1,4) + 4*g1*gp*QHu*sqrt3ov5*Tr2U1(4,& 
& 1) + 8*gpp2*QHup2*Tr2U1(4,4) + 4*g1*sqrt3ov5*Tr3(1) + 8*gp*QHu*Tr3(4)

 
DmHu2 = oo16pi2*( betamHu21 + oo16pi2 * betamHu22 ) 

 
Else 
DmHu2 = oo16pi2* betamHu21 
End If 
 
 
!-------------------- 
! md2 
!-------------------- 
 
betamd21  = 4._dp*(CTdpTpTdp) - (8*AbsM1*g1p2*id3R)/15._dp - (32*AbsM3*g3p2*id3R)     & 
& /3._dp + 2._dp*(md2YdadjYd) - 8*AbsM4*gpp2*id3R*Qdp2 + 4._dp*(TdadjTd) +               & 
&  4*mHd2*YdadjYd + 2._dp*(YdadjYdmd2) + 4._dp*(Ydmq2adjYd) + 2*g1*id3R*ooSqrt15*Tr1(1)  & 
&  + 2*gp*id3R*Qd*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamd22 = -2*Absy1*md2YdadjYd + (2*g1p2*md2YdadjYd)/5._dp + 6*g2p2*md2YdadjYd - 2*lamp2*md2YdadjYd -& 
&  2._dp*(md2YdadjYdYdadjYd) - 2._dp*(md2YdadjYuYuadjYd) + (176*AbsM4*g1p2*gpp2*id3R*Qdp2)/15._dp +& 
&  (128*AbsM4*g3p2*gpp2*id3R*Qdp2)/3._dp - 4*gpp2*md2YdadjYd*Qdp2 + 264*AbsM4*gpp4*id3R*Qdp4 +& 
&  (16*AbsM4*g1p2*gpp2*id3R*Qd*Qe4)/5._dp + 24*AbsM4*gpp4*id3R*Qdp2*Qe4p2 +              & 
&  (32*AbsM4*g1p2*gpp2*id3R*Qd*Qe9)/5._dp + 48*AbsM4*gpp4*id3R*Qdp2*Qe9p2 -              & 
&  (16*AbsM4*g1p2*gpp2*id3R*Qd*QHd)/5._dp + 4*gpp2*md2YdadjYd*QHdp2 + 48*AbsM4*gpp4*id3R*Qdp2*QHdp2 +& 
&  (16*AbsM4*g1p2*gpp2*id3R*Qd*QHu)/5._dp + 48*AbsM4*gpp4*id3R*Qdp2*QHup2 -              & 
&  (16*AbsM4*g1p2*gpp2*id3R*Qd*Ql4)/5._dp + 48*AbsM4*gpp4*id3R*Qdp2*Ql4p2 -              & 
&  (32*AbsM4*g1p2*gpp2*id3R*Qd*Ql9)/5._dp + 96*AbsM4*gpp4*id3R*Qdp2*Ql9p2 +              & 
&  (48*AbsM4*g1p2*gpp2*id3R*Qd*Qq)/5._dp + 4*gpp2*md2YdadjYd*Qqp2 + 432*AbsM4*gpp4*id3R*Qdp2*Qqp2 +& 
&  24*AbsM4*gpp4*id3R*Qdp2*Qsp2 - (96*AbsM4*g1p2*gpp2*id3R*Qd*Qu)/5._dp + 216*AbsM4*gpp4*id3R*Qdp2*Qup2 -& 
&  4*Absy1*TdadjTd + (4*g1p2*TdadjTd)/5._dp + 12*g2p2*TdadjTd - 4*lamp2*TdadjTd -        & 
&  8*gpp2*Qdp2*TdadjTd + 8*gpp2*QHdp2*TdadjTd + 8*gpp2*Qqp2*TdadjTd - 4._dp*(TdadjTdYdadjYd) -& 
&  4._dp*(TdadjTuYuadjYd) - 4._dp*(TdadjYdYdadjTd) - 4._dp*(TdadjYuYuadjTd) -            & 
&  12*TdadjYd*TrCTdTpYd - 4*TdadjYd*TrCTy2Tpy2 - 2*md2YdadjYd*Try2adjy2 - 4*TdadjTd*Try2adjy2 -& 
&  6*md2YdadjYd*TrYdadjYd - 12*TdadjTd*TrYdadjYd - (4*g1p2*M1*YdadjTd)/5._dp -           & 
&  12*g2p2*M2*YdadjTd + 8*gpp2*M4*Qdp2*YdadjTd - 8*gpp2*M4*QHdp2*YdadjTd -               & 
&  8*gpp2*M4*Qqp2*YdadjTd - 4*Tradjy2Ty2*YdadjTd - 12*TradjYdTd*YdadjTd - 4._dp*(YdadjTdTdadjYd) -& 
&  4._dp*(YdadjTuTuadjYd) - 4*AbsTy1*YdadjYd + 24*AbsM2*g2p2*YdadjYd - 4*Absy1*me42*YdadjYd -& 
&  8*Absy1*mHd2*YdadjYd + (4*g1p2*mHd2*YdadjYd)/5._dp + 12*g2p2*mHd2*YdadjYd -           & 
&  8*lamp2*mHd2*YdadjYd - 4*lamp2*mHu2*YdadjYd - 4*Absy1*ml42*YdadjYd - 4*lamp2*ms2*YdadjYd  
betamd22 =  betamd22- 16*AbsM4*gpp2*Qdp2*YdadjYd - 8*gpp2*mHd2*Qdp2*YdadjYd + 16*AbsM4*gpp2*QHdp2*YdadjYd + & 
&  8*gpp2*mHd2*QHdp2*YdadjYd + 16*AbsM4*gpp2*Qqp2*YdadjYd + 8*gpp2*mHd2*Qqp2*YdadjYd -   & 
&  4*Tlamp2*YdadjYd - 12*TrCTdTpTd*YdadjYd - 4*TrCTy2TpTy2*YdadjYd - 12*Trmd2YdadjYd*YdadjYd -& 
&  4*Trme92y2adjy2*YdadjYd - 4*Trml92adjy2y2*YdadjYd - 12*Trmq2adjYdYd*YdadjYd -         & 
&  8*mHd2*Try2adjy2*YdadjYd - 24*mHd2*TrYdadjYd*YdadjYd - 2*Absy1*YdadjYdmd2 +           & 
&  (2*g1p2*YdadjYdmd2)/5._dp + 6*g2p2*YdadjYdmd2 - 2*lamp2*YdadjYdmd2 - 4*gpp2*Qdp2*YdadjYdmd2 +& 
&  4*gpp2*QHdp2*YdadjYdmd2 + 4*gpp2*Qqp2*YdadjYdmd2 - 2*Try2adjy2*YdadjYdmd2 -           & 
&  6*TrYdadjYd*YdadjYdmd2 - 4._dp*(YdadjYdmd2YdadjYd) - 4._dp*(YdadjYdTdadjTd) -         & 
&  8*mHd2*YdadjYdYdadjYd - 2._dp*(YdadjYdYdadjYdmd2) - 4._dp*(YdadjYdYdmq2adjYd) -       & 
&  4._dp*(YdadjYumu2YuadjYd) - 4._dp*(YdadjYuTuadjTd) - 4*mHd2*YdadjYuYuadjYd -          & 
&  4*mHu2*YdadjYuYuadjYd - 2._dp*(YdadjYuYuadjYdmd2) - 4._dp*(YdadjYuYumq2adjYd) -       & 
&  4*Absy1*Ydmq2adjYd + (4*g1p2*Ydmq2adjYd)/5._dp + 12*g2p2*Ydmq2adjYd - 4*lamp2*Ydmq2adjYd -& 
&  8*gpp2*Qdp2*Ydmq2adjYd + 8*gpp2*QHdp2*Ydmq2adjYd + 8*gpp2*Qqp2*Ydmq2adjYd -           & 
&  4*Try2adjy2*Ydmq2adjYd - 12*TrYdadjYd*Ydmq2adjYd - 4._dp*(Ydmq2adjYdYdadjYd) -        & 
&  4._dp*(Ydmq2adjYuYuadjYd) + (4*g1p2*(2*id3R*(303*g1p2*M1 + 40*g3p2*(2._dp*(M1) +      & 
&  M3) + 15*gpp2*(2._dp*(M1) + M4)*Qd*(11._dp*(Qd) + 3*(Qe4 + 2._dp*(Qe9) -              & 
&  QHd + QHu - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) - 6._dp*(Qu)))) - 45._dp*(TdadjYd) +       & 
&  90*M1*YdadjYd)*Conjg(M1))/225._dp - (64*g3p2*id3R*(30*g3p2*M3 - g1p2*(M1 +            & 
&  2._dp*(M3)) - 15*gpp2*(2._dp*(M3) + M4)*Qdp2)*Conjg(M3))/45._dp + (88*g1p2*gpp2*id3R*M1*Qdp2*Conjg(M4))/15._dp +& 
&  (64*g3p2*gpp2*id3R*M3*Qdp2*Conjg(M4))/3._dp + (8*g1p2*gpp2*id3R*M1*Qd*Qe4*Conjg(M4))/5._dp +& 
&  (16*g1p2*gpp2*id3R*M1*Qd*Qe9*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*QHd*Conjg(M4))/5._dp  
betamd22 =  betamd22+ (8*g1p2*gpp2*id3R*M1*Qd*QHu*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*Ql4*Conjg(M4))/5._dp -& 
&  (16*g1p2*gpp2*id3R*M1*Qd*Ql9*Conjg(M4))/5._dp + (24*g1p2*gpp2*id3R*M1*Qd*Qq*Conjg(M4))/5._dp -& 
&  (48*g1p2*gpp2*id3R*M1*Qd*Qu*Conjg(M4))/5._dp + 8*gpp2*Qdp2*TdadjYd*Conjg(M4) -        & 
&  8*gpp2*QHdp2*TdadjYd*Conjg(M4) - 8*gpp2*Qqp2*TdadjYd*Conjg(M4) - 12*g2p2*TdadjYd*Conjg(M2) -& 
&  4*TdadjYd*y1*Conjg(Ty1) - 4*YdadjTd*Conjg(y1)*Ty1 - 4*TdadjYd*lam*Tlam -              & 
&  4*YdadjTd*lam*Tlam + (32*g3p4*id3R*Tr2(3))/3._dp + (8*g1p2*id3R*Tr2U1(1,              & 
& 1))/15._dp + 8*g1*gp*id3R*ooSqrt15*Qd*Tr2U1(1,4) + 8*g1*gp*id3R*ooSqrt15*Qd*Tr2U1(4,   & 
& 1) + 8*gpp2*id3R*Qdp2*Tr2U1(4,4) + 8*g1*id3R*ooSqrt15*Tr3(1) + 8*gp*id3R*Qd*Tr3(4)

 
Dmd2 = oo16pi2*( betamd21 + oo16pi2 * betamd22 ) 

 
Else 
Dmd2 = oo16pi2* betamd21 
End If 
 
 
Call Chop(Dmd2) 

Forall(i1=1:3) Dmd2(i1,i1) =  Real(Dmd2(i1,i1),dp) 
Dmd2 = 0.5_dp*(Dmd2+ Conjg(Transpose(Dmd2)) ) 
!-------------------- 
! mu2 
!-------------------- 
 
betamu21  = (-32*AbsM1*g1p2*id3R)/15._dp - (32*AbsM3*g3p2*id3R)/3._dp +               & 
&  2._dp*(mu2YuadjYu) - 8*AbsM4*gpp2*id3R*Qup2 + 4._dp*(TuadjTu) + 4*mHu2*YuadjYu +      & 
&  2._dp*(YuadjYumu2) + 4._dp*(Yumq2adjYu) - 4*g1*id3R*ooSqrt15*Tr1(1) + 2*gp*id3R*Qu*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamu22 = (4*g1p2*(4*id3R*(642*g1p2*M1 + 80*g3p2*(2._dp*(M1) + M3) - 15*gpp2*(2._dp*(M1) +      & 
&  M4)*(9._dp*(Qd) + 3._dp*(Qe4) + 6._dp*(Qe9) - 3._dp*(QHd) + 3._dp*(QHu) -             & 
&  3._dp*(Ql4) - 6._dp*(Ql9) + 9._dp*(Qq) - 22._dp*(Qu))*Qu) + 45*(TuadjYu -             & 
&  2*M1*YuadjYu))*Conjg(M1) + 10*(32*g3p2*id3R*(-30*g3p2*M3 + 4*g1p2*(M1 +               & 
&  2._dp*(M3)) + 15*gpp2*(2._dp*(M3) + M4)*Qup2)*Conjg(M3) + 12*gpp2*(id3R*Qu*(-         & 
& 2*g1p2*(M1 + 2._dp*(M4))*(9._dp*(Qd) + 3._dp*(Qe4) + 6._dp*(Qe9) - 3._dp*(QHd) +       & 
&  3._dp*(QHu) - 3._dp*(Ql4) - 6._dp*(Ql9) + 9._dp*(Qq) - 22._dp*(Qu)) + 5*Qu*(8*g3p2*(M3 +& 
&  2._dp*(M4)) + 9*gpp2*M4*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2) +       & 
&  2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 + 11._dp*(Qup2)))) +& 
&  15*(QHup2 + Qqp2 - Qup2)*(-1._dp*(TuadjYu) + 2*M4*YuadjYu))*Conjg(M4) -               & 
&  9*(5._dp*(mu2YuadjYdYdadjYu) + g1p2*mu2YuadjYu - 15*g2p2*mu2YuadjYu + 5*lamp2*mu2YuadjYu +& 
&  5._dp*(mu2YuadjYuYuadjYu) - 10*gpp2*mu2YuadjYu*QHup2 - 10*gpp2*mu2YuadjYu*Qqp2 +      & 
&  10*gpp2*mu2YuadjYu*Qup2 + 15*mu2YuadjYu*TrYuadjYu + 10._dp*(TuadjTdYdadjYu) +         & 
&  2*g1p2*TuadjTu - 30*g2p2*TuadjTu + 10*lamp2*TuadjTu - 20*gpp2*QHup2*TuadjTu -         & 
&  20*gpp2*Qqp2*TuadjTu + 20*gpp2*Qup2*TuadjTu + 30*TrYuadjYu*TuadjTu + 10._dp*(TuadjTuYuadjYu) +& 
&  10._dp*(TuadjYdYdadjTu) + 30*TrCTuTpYu*TuadjYu + 10._dp*(TuadjYuYuadjTu) +            & 
&  10._dp*(YuadjTdTdadjYu) + 10._dp*(YuadjTuTuadjYu) + 10._dp*(YuadjYdmd2YdadjYu) +      & 
&  10._dp*(YuadjYdTdadjTu) + 10*mHd2*YuadjYdYdadjYu + 10*mHu2*YuadjYdYdadjYu +           & 
&  5._dp*(YuadjYdYdadjYumu2) + 10._dp*(YuadjYdYdmq2adjYu) + 2*(-30*AbsM2*g2p2 +          & 
&  5*lamp2*mHd2 + g1p2*mHu2 - 15*g2p2*mHu2 + 10*lamp2*mHu2 + 5*lamp2*ms2 -               & 
&  10*gpp2*mHu2*QHup2 - 10*gpp2*mHu2*Qqp2 + 10*gpp2*mHu2*Qup2 + 5._dp*(Tlamp2) +         & 
&  15._dp*(TrCTuTpTu) + 15._dp*(Trmq2adjYuYu) + 15._dp*(Trmu2YuadjYu) + 30*mHu2*TrYuadjYu)*YuadjYu +& 
&  g1p2*YuadjYumu2 - 15*g2p2*YuadjYumu2 + 5*lamp2*YuadjYumu2 - 10*gpp2*QHup2*YuadjYumu2 -& 
&  10*gpp2*Qqp2*YuadjYumu2 + 10*gpp2*Qup2*YuadjYumu2 + 15*TrYuadjYu*YuadjYumu2 +         & 
&  10._dp*(YuadjYumu2YuadjYu) + 10._dp*(YuadjYuTuadjTu) + 20*mHu2*YuadjYuYuadjYu +       & 
&  5._dp*(YuadjYuYuadjYumu2) + 10._dp*(YuadjYuYumq2adjYu) + 10._dp*(Yumq2adjYdYdadjYu) + & 
&  2*g1p2*Yumq2adjYu - 30*g2p2*Yumq2adjYu + 10*lamp2*Yumq2adjYu - 20*gpp2*QHup2*Yumq2adjYu -& 
&  20*gpp2*Qqp2*Yumq2adjYu + 20*gpp2*Qup2*Yumq2adjYu + 30*TrYuadjYu*Yumq2adjYu +         & 
&  10._dp*(Yumq2adjYuYuadjYu) + 30*g2p2*TuadjYu*Conjg(M2) + 10*TuadjYu*lam*Tlam +        & 
&  YuadjTu*(-2*g1p2*M1 + 30*g2p2*M2 + 20*gpp2*M4*QHup2 + 20*gpp2*M4*Qqp2 -               & 
&  20*gpp2*M4*Qup2 + 30._dp*(TradjYuTu) + 10*lam*Tlam)) + 12*id3R*(20*g3p4*Tr2(3) +      & 
&  4*g1p2*Tr2U1(1,1) - 2*g1*sqrt15*(gp*Qu*(Tr2U1(1,4) + Tr2U1(4,1)) + Tr3(1)) +          & 
&  15*gp*Qu*(gp*Qu*Tr2U1(4,4) + Tr3(4)))))/225._dp

 
Dmu2 = oo16pi2*( betamu21 + oo16pi2 * betamu22 ) 

 
Else 
Dmu2 = oo16pi2* betamu21 
End If 
 
 
Call Chop(Dmu2) 

Forall(i1=1:3) Dmu2(i1,i1) =  Real(Dmu2(i1,i1),dp) 
Dmu2 = 0.5_dp*(Dmu2+ Conjg(Transpose(Dmu2)) ) 
!-------------------- 
! me42 
!-------------------- 
 
betame421  = 4._dp*(AbsTy1) - (24*AbsM1*g1p2)/5._dp + 4*Absy1*me42 + 4*Absy1*mHd2 +   & 
&  4*Absy1*ml42 - 8*AbsM4*gpp2*Qe4p2 + 2*g1*sqrt3ov5*Tr1(1) + 2*gp*Qe4*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame422 = (4*(3*g1p2*Conjg(M1)*(234*g1p2*M1 + 10*gpp2*(2._dp*(M1) + M4)*Qe4*(3._dp*(Qd) +       & 
&  3._dp*(Qe4) + 2._dp*(Qe9) - QHd + QHu - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) -              & 
&  6._dp*(Qu)) + 5*Conjg(y1)*(-2*M1*y1 + Ty1)) + 5*(-3*AbsTy1*g1p2 + 15*AbsTy1*g2p2 -    & 
&  5*AbsTy1*lamp2 - 10*AbsTy1*gpp2*Qe4p2 + 10*AbsTy1*gpp2*QHdp2 + 10*AbsTy1*gpp2*Ql4p2 - & 
&  5*AbsTy1*Try2adjy2 - 15*AbsTy1*TrYdadjYd - 20*Cy1p2*(me42 + mHd2 + ml42)*y1p2 +       & 
&  3*g1p2*M1*y1*Conjg(Ty1) - 15*g2p2*M2*y1*Conjg(Ty1) + 10*gpp2*M4*Qe4p2*y1*Conjg(Ty1) - & 
&  10*gpp2*M4*QHdp2*y1*Conjg(Ty1) - 10*gpp2*M4*Ql4p2*y1*Conjg(Ty1) - 5*Tradjy2Ty2*y1*Conjg(Ty1) -& 
&  15*TradjYdTd*y1*Conjg(Ty1) + 2*gpp2*Conjg(M4)*(3*Qe4*(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) +& 
&  3._dp*(Qe4) + 2._dp*(Qe9) - QHd + QHu - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) -              & 
&  6._dp*(Qu)) + 5*gpp2*M4*Qe4*(9._dp*(Qdp2) + 3._dp*(Qe4p2) + 2._dp*(Qe9p2) +           & 
&  2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) +       & 
&  Qsp2 + 9._dp*(Qup2))) - 5*(Qe4p2 - QHdp2 - Ql4p2)*Conjg(y1)*(2*M4*y1 - Ty1)) -        & 
&  5*y1*lam*Conjg(Ty1)*Tlam - Conjg(y1)*(40*AbsTy1*y1 + 3*g1p2*me42*y1 - 15*g2p2*me42*y1 +& 
&  5*lamp2*me42*y1 + 3*g1p2*mHd2*y1 - 15*g2p2*mHd2*y1 + 10*lamp2*mHd2*y1 +               & 
&  5*lamp2*mHu2*y1 + 3*g1p2*ml42*y1 - 15*g2p2*ml42*y1 + 5*lamp2*ml42*y1 + 5*lamp2*ms2*y1 +& 
&  10*gpp2*me42*Qe4p2*y1 + 10*gpp2*mHd2*Qe4p2*y1 + 10*gpp2*ml42*Qe4p2*y1 -               & 
&  10*gpp2*me42*QHdp2*y1 - 10*gpp2*mHd2*QHdp2*y1 - 10*gpp2*ml42*QHdp2*y1 -               & 
&  10*gpp2*me42*Ql4p2*y1 - 10*gpp2*mHd2*Ql4p2*y1 - 10*gpp2*ml42*Ql4p2*y1 +               & 
&  5*Tlamp2*y1 + 15*TrCTdTpTd*y1 + 5*TrCTy2TpTy2*y1 + 15*Trmd2YdadjYd*y1 +               & 
&  5*Trme92y2adjy2*y1 + 5*Trml92adjy2y2*y1 + 15*Trmq2adjYdYd*y1 + 5*me42*Try2adjy2*y1 +  & 
&  10*mHd2*Try2adjy2*y1 + 5*ml42*Try2adjy2*y1 + 15*me42*TrYdadjYd*y1 + 30*mHd2*TrYdadjYd*y1 +& 
&  15*ml42*TrYdadjYd*y1 + 15*TrCTdTpYd*Ty1 + 5*TrCTy2Tpy2*Ty1 + 15*g2p2*Conjg(M2)*(-     & 
& 2*M2*y1 + Ty1) + 5*lam*Ty1*Tlam) + 6*g1p2*Tr2U1(1,1) + 2*g1*gp*Qe4*sqrt15*Tr2U1(1,     & 
& 4) + 2*g1*gp*Qe4*sqrt15*Tr2U1(4,1) + 10*gpp2*Qe4p2*Tr2U1(4,4) + 2*g1*sqrt15*Tr3(1) +   & 
&  10*gp*Qe4*Tr3(4))))/25._dp

 
Dme42 = oo16pi2*( betame421 + oo16pi2 * betame422 ) 

 
Else 
Dme42 = oo16pi2* betame421 
End If 
 
 
!-------------------- 
! me92 
!-------------------- 
 
betame921  = 4._dp*(CTepTpTep) - (24*AbsM1*g1p2*id2R)/5._dp + 2._dp*(me92y2adjy2)     & 
&  - 8*AbsM4*gpp2*id2R*Qe9p2 + 4._dp*(Ty2adjTy2) + 4*mHd2*y2adjy2 + 2._dp*(y2adjy2me92)  & 
&  + 4._dp*(y2ml92adjy2) + 2*g1*id2R*sqrt3ov5*Tr1(1) + 2*gp*id2R*Qe9*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame922 = -2*Absy1*me92y2adjy2 - (6*g1p2*me92y2adjy2)/5._dp + 6*g2p2*me92y2adjy2 -              & 
&  2*lamp2*me92y2adjy2 - 2._dp*(me92y2adjy2y2adjy2) - 4*gpp2*me92y2adjy2*Qe9p2 +         & 
&  4*gpp2*me92y2adjy2*QHdp2 + 4*gpp2*me92y2adjy2*Ql9p2 - 2*me92y2adjy2*Try2adjy2 -       & 
&  6*me92y2adjy2*TrYdadjYd - 4*Absy1*Ty2adjTy2 - (12*g1p2*Ty2adjTy2)/5._dp +             & 
&  12*g2p2*Ty2adjTy2 - 4*lamp2*Ty2adjTy2 - 8*gpp2*Qe9p2*Ty2adjTy2 + 8*gpp2*QHdp2*Ty2adjTy2 +& 
&  8*gpp2*Ql9p2*Ty2adjTy2 - 4*Try2adjy2*Ty2adjTy2 - 12*TrYdadjYd*Ty2adjTy2 -             & 
&  4._dp*(Ty2adjTy2y2adjy2) - 12*TrCTdTpYd*Ty2adjy2 - 4*TrCTy2Tpy2*Ty2adjy2 -            & 
&  4._dp*(Ty2adjy2y2adjTy2) + (12*g1p2*M1*y2adjTy2)/5._dp - 12*g2p2*M2*y2adjTy2 +        & 
&  8*gpp2*M4*Qe9p2*y2adjTy2 - 8*gpp2*M4*QHdp2*y2adjTy2 - 8*gpp2*M4*Ql9p2*y2adjTy2 -      & 
&  4*Tradjy2Ty2*y2adjTy2 - 12*TradjYdTd*y2adjTy2 - 4._dp*(y2adjTy2Ty2adjy2) -            & 
&  4*AbsTy1*y2adjy2 + 24*AbsM2*g2p2*y2adjy2 - 4*Absy1*me42*y2adjy2 - 8*Absy1*mHd2*y2adjy2 -& 
&  (12*g1p2*mHd2*y2adjy2)/5._dp + 12*g2p2*mHd2*y2adjy2 - 8*lamp2*mHd2*y2adjy2 -          & 
&  4*lamp2*mHu2*y2adjy2 - 4*Absy1*ml42*y2adjy2 - 4*lamp2*ms2*y2adjy2 - 8*gpp2*mHd2*Qe9p2*y2adjy2 +& 
&  8*gpp2*mHd2*QHdp2*y2adjy2 + 8*gpp2*mHd2*Ql9p2*y2adjy2 - 4*Tlamp2*y2adjy2 -            & 
&  12*TrCTdTpTd*y2adjy2 - 4*TrCTy2TpTy2*y2adjy2 - 12*Trmd2YdadjYd*y2adjy2 -              & 
&  4*Trme92y2adjy2*y2adjy2 - 4*Trml92adjy2y2*y2adjy2 - 12*Trmq2adjYdYd*y2adjy2 -         & 
&  8*mHd2*Try2adjy2*y2adjy2 - 24*mHd2*TrYdadjYd*y2adjy2 - 2*Absy1*y2adjy2me92 -          & 
&  (6*g1p2*y2adjy2me92)/5._dp + 6*g2p2*y2adjy2me92 - 2*lamp2*y2adjy2me92 -               & 
&  4*gpp2*Qe9p2*y2adjy2me92 + 4*gpp2*QHdp2*y2adjy2me92 + 4*gpp2*Ql9p2*y2adjy2me92 -      & 
&  2*Try2adjy2*y2adjy2me92 - 6*TrYdadjYd*y2adjy2me92 - 4._dp*(y2adjy2me92y2adjy2) -      & 
&  4._dp*(y2adjy2Ty2adjTy2) - 8*mHd2*y2adjy2y2adjy2 - 2._dp*(y2adjy2y2adjy2me92)  
betame922 =  betame922- 4._dp*(y2adjy2y2ml92adjy2) - 4*Absy1*y2ml92adjy2 - (12*g1p2*y2ml92adjy2)/5._dp +      & 
&  12*g2p2*y2ml92adjy2 - 4*lamp2*y2ml92adjy2 - 8*gpp2*Qe9p2*y2ml92adjy2 + 8*gpp2*QHdp2*y2ml92adjy2 +& 
&  8*gpp2*Ql9p2*y2ml92adjy2 - 4*Try2adjy2*y2ml92adjy2 - 12*TrYdadjYd*y2ml92adjy2 -       & 
&  4._dp*(y2ml92adjy2y2adjy2) + (12*g1p2*(2*id2R*(117*g1p2*M1 + 5*gpp2*(2._dp*(M1) +     & 
&  M4)*Qe9*(3._dp*(Qd) + Qe4 + 4._dp*(Qe9) - QHd + QHu - Ql4 - 2._dp*(Ql9) +             & 
&  3._dp*(Qq) - 6._dp*(Qu))) + 5*(Ty2adjy2 - 2*M1*y2adjy2))*Conjg(M1))/25._dp +          & 
&  (8*gpp2*(3*id2R*Qe9*(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe4 + 4._dp*(Qe9) -         & 
&  QHd + QHu - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) - 6._dp*(Qu)) + 5*gpp2*M4*Qe9*(9._dp*(Qdp2) +& 
&  Qe4p2 + 4._dp*(Qe9p2) + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql4p2) +               & 
&  4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2))) - 5*(Qe9p2 - QHdp2 -            & 
&  Ql9p2)*(-1._dp*(Ty2adjy2) + 2*M4*y2adjy2))*Conjg(M4))/5._dp - 12*g2p2*Ty2adjy2*Conjg(M2) -& 
&  4*Ty2adjy2*y1*Conjg(Ty1) - 4*y2adjTy2*Conjg(y1)*Ty1 - 4*Ty2adjy2*lam*Tlam -           & 
&  4*y2adjTy2*lam*Tlam + (24*g1p2*id2R*Tr2U1(1,1))/5._dp + 8*g1*gp*id2R*Qe9*sqrt3ov5*Tr2U1(1,& 
& 4) + 8*g1*gp*id2R*Qe9*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*id2R*Qe9p2*Tr2U1(4,4) +             & 
&  8*g1*id2R*sqrt3ov5*Tr3(1) + 8*gp*id2R*Qe9*Tr3(4)

 
Dme92 = oo16pi2*( betame921 + oo16pi2 * betame922 ) 

 
Else 
Dme92 = oo16pi2* betame921 
End If 
 
 
Call Chop(Dme92) 

Forall(i1=1:2) Dme92(i1,i1) =  Real(Dme92(i1,i1),dp) 
Dme92 = 0.5_dp*(Dme92+ Conjg(Transpose(Dme92)) ) 
!-------------------- 
! ms2 
!-------------------- 
 
betams21  = 4*lamp2*mHd2 + 4*lamp2*mHu2 + 4*lamp2*ms2 - 8*AbsM4*gpp2*Qsp2 +           & 
&  4._dp*(Tlamp2) + 2*gp*Qs*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betams22 = -4*AbsTy1*lamp2 + 24*AbsM2*g2p2*lamp2 - 4*Absy1*lamp2*me42 - 8*Absy1*lamp2*mHd2 +     & 
&  (12*g1p2*lamp2*mHd2)/5._dp + 12*g2p2*lamp2*mHd2 - 16*lamp4*mHd2 - 4*Absy1*lamp2*mHu2 +& 
&  (12*g1p2*lamp2*mHu2)/5._dp + 12*g2p2*lamp2*mHu2 - 16*lamp4*mHu2 - 4*Absy1*lamp2*ml42 -& 
&  4*Absy1*lamp2*ms2 + (12*g1p2*lamp2*ms2)/5._dp + 12*g2p2*lamp2*ms2 - 16*lamp4*ms2 +    & 
&  8*gpp2*lamp2*mHd2*QHdp2 + 8*gpp2*lamp2*mHu2*QHdp2 + 8*gpp2*lamp2*ms2*QHdp2 +          & 
&  8*gpp2*lamp2*mHd2*QHup2 + 8*gpp2*lamp2*mHu2*QHup2 + 8*gpp2*lamp2*ms2*QHup2 -          & 
&  8*gpp2*lamp2*mHd2*Qsp2 - 8*gpp2*lamp2*mHu2*Qsp2 - 8*gpp2*lamp2*ms2*Qsp2 -             & 
&  4*Absy1*Tlamp2 + (12*g1p2*Tlamp2)/5._dp + 12*g2p2*Tlamp2 - 32*lamp2*Tlamp2 +          & 
&  8*gpp2*QHdp2*Tlamp2 + 8*gpp2*QHup2*Tlamp2 - 8*gpp2*Qsp2*Tlamp2 - 12*lamp2*TrCTdTpTd - & 
&  12*lamp2*TrCTuTpTu - 4*lamp2*TrCTy2TpTy2 - 12*lamp2*Trmd2YdadjYd - 4*lamp2*Trme92y2adjy2 -& 
&  4*lamp2*Trml92adjy2y2 - 12*lamp2*Trmq2adjYdYd - 12*lamp2*Trmq2adjYuYu -               & 
&  12*lamp2*Trmu2YuadjYu - 8*lamp2*mHd2*Try2adjy2 - 4*lamp2*mHu2*Try2adjy2 -             & 
&  4*lamp2*ms2*Try2adjy2 - 4*Tlamp2*Try2adjy2 - 24*lamp2*mHd2*TrYdadjYd - 12*lamp2*mHu2*TrYdadjYd -& 
&  12*lamp2*ms2*TrYdadjYd - 12*Tlamp2*TrYdadjYd - 12*lamp2*mHd2*TrYuadjYu -              & 
&  24*lamp2*mHu2*TrYuadjYu - 12*lamp2*ms2*TrYuadjYu - 12*Tlamp2*TrYuadjYu +              & 
&  (12*g1p2*lam*Conjg(M1)*(2*M1*lam - Tlam))/5._dp - (12*g1p2*M1*lam*Tlam)/5._dp -       & 
&  12*g2p2*M2*lam*Tlam - 8*gpp2*M4*QHdp2*lam*Tlam - 8*gpp2*M4*QHup2*lam*Tlam +           & 
&  8*gpp2*M4*Qsp2*lam*Tlam - 4*Tradjy2Ty2*lam*Tlam - 12*TradjYdTd*lam*Tlam -             & 
&  12*TradjYuTu*lam*Tlam - 12*TrCTdTpYd*lam*Tlam - 12*TrCTuTpYu*lam*Tlam -               & 
&  4*TrCTy2Tpy2*lam*Tlam - 12*g2p2*lam*Conjg(M2)*Tlam - 4*y1*lam*Conjg(Ty1)*Tlam -       & 
&  4*lam*Conjg(y1)*Ty1*Tlam + 8*gpp2*Conjg(M4)*(2*lamp2*M4*(QHdp2 + QHup2 -              & 
&  Qsp2) + 3*gpp2*M4*Qsp2*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2) +        & 
&  2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + 3._dp*(Qsp2) +        & 
&  9._dp*(Qup2)) - (QHdp2 + QHup2 - Qsp2)*lam*Tlam) + 8*gpp2*Qsp2*Tr2U1(4,               & 
& 4) + 8*gp*Qs*Tr3(4)

 
Dms2 = oo16pi2*( betams21 + oo16pi2 * betams22 ) 

 
Else 
Dms2 = oo16pi2* betams21 
End If 
 
 
!-------------------- 
! M1 
!-------------------- 
 
betaM11  = (66*g1p2*M1)/5._dp

 
 
If (TwoLoopRGE) Then 
betaM12 = (2*g1p2*(398*g1p2*M1 + 135*g2p2*M1 + 440*g3p2*M1 - 30*lamp2*M1 + 440*g3p2*M3 +        & 
&  135*g2p2*M2 + 60*gpp2*M1*Qdp2 + 60*gpp2*M4*Qdp2 + 60*gpp2*M1*Qe4p2 + 60*gpp2*M4*Qe4p2 +& 
&  120*gpp2*M1*Qe9p2 + 120*gpp2*M4*Qe9p2 + 30*gpp2*M1*QHdp2 + 30*gpp2*M4*QHdp2 +         & 
&  30*gpp2*M1*QHup2 + 30*gpp2*M4*QHup2 + 30*gpp2*M1*Ql4p2 + 30*gpp2*M4*Ql4p2 +           & 
&  60*gpp2*M1*Ql9p2 + 60*gpp2*M4*Ql9p2 + 30*gpp2*M1*Qqp2 + 30*gpp2*M4*Qqp2 +             & 
&  240*gpp2*M1*Qup2 + 240*gpp2*M4*Qup2 + 90._dp*(Tradjy2Ty2) + 70._dp*(TradjYdTd) +      & 
&  130._dp*(TradjYuTu) - 90*M1*Try2adjy2 - 70*M1*TrYdadjYd - 130*M1*TrYuadjYu -          & 
&  90*Conjg(y1)*(M1*y1 - Ty1) + 30*lam*Tlam))/25._dp

 
DM1 = oo16pi2*( betaM11 + oo16pi2 * betaM12 ) 

 
Else 
DM1 = oo16pi2* betaM11 
End If 
 
 
Call Chop(DM1) 

!-------------------- 
! M2 
!-------------------- 
 
betaM21  = 2*g2p2*M2

 
 
If (TwoLoopRGE) Then 
betaM22 = (2*g2p2*(9*g1p2*M1 + 120*g3p2*M3 + 9*g1p2*M2 + 250*g2p2*M2 + 120*g3p2*M2 -            & 
&  10*lamp2*M2 + 10*gpp2*M4*QHdp2 + 10*gpp2*M2*QHdp2 + 10*gpp2*M4*QHup2 + 10*gpp2*M2*QHup2 +& 
&  10*gpp2*M4*Ql4p2 + 10*gpp2*M2*Ql4p2 + 20*gpp2*M4*Ql9p2 + 20*gpp2*M2*Ql9p2 +           & 
&  90*gpp2*M4*Qqp2 + 90*gpp2*M2*Qqp2 + 10._dp*(Tradjy2Ty2) + 30._dp*(TradjYdTd) +        & 
&  30._dp*(TradjYuTu) - 10*M2*Try2adjy2 - 30*M2*TrYdadjYd - 30*M2*TrYuadjYu -            & 
&  10*Conjg(y1)*(M2*y1 - Ty1) + 10*lam*Tlam))/5._dp

 
DM2 = oo16pi2*( betaM21 + oo16pi2 * betaM22 ) 

 
Else 
DM2 = oo16pi2* betaM21 
End If 
 
 
Call Chop(DM2) 

!-------------------- 
! M3 
!-------------------- 
 
betaM31  = -6*g3p2*M3

 
 
If (TwoLoopRGE) Then 
betaM32 = (2*g3p2*(11*g1p2*M1 + 11*g1p2*M3 + 45*g2p2*M3 + 140*g3p2*M3 + 45*g2p2*M2 +            & 
&  30*gpp2*M3*Qdp2 + 30*gpp2*M4*Qdp2 + 60*gpp2*M3*Qqp2 + 60*gpp2*M4*Qqp2 +               & 
&  30*gpp2*M3*Qup2 + 30*gpp2*M4*Qup2 + 20._dp*(TradjYdTd) + 20._dp*(TradjYuTu) -         & 
&  20*M3*TrYdadjYd - 20*M3*TrYuadjYu))/5._dp

 
DM3 = oo16pi2*( betaM31 + oo16pi2 * betaM32 ) 

 
Else 
DM3 = oo16pi2* betaM31 
End If 
 
 
Call Chop(DM3) 

!-------------------- 
! M4 
!-------------------- 
 
betaM41  = 2*gpp2*M4*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2)            & 
&  + 2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 +              & 
&  9._dp*(Qup2))

 
 
If (TwoLoopRGE) Then 
betaM42 = (4*gpp2*(6*g1p2*M1*Qdp2 + 120*g3p2*M3*Qdp2 + 6*g1p2*M4*Qdp2 + 120*g3p2*M4*Qdp2 +      & 
&  180*gpp2*M4*Qdp4 + 6*g1p2*M1*Qe4p2 + 6*g1p2*M4*Qe4p2 + 20*gpp2*M4*Qe4p4 +             & 
&  12*g1p2*M1*Qe9p2 + 12*g1p2*M4*Qe9p2 + 40*gpp2*M4*Qe9p4 + 3*g1p2*M1*QHdp2 +            & 
&  3*g1p2*M4*QHdp2 + 15*g2p2*M4*QHdp2 - 10*lamp2*M4*QHdp2 + 15*g2p2*M2*QHdp2 +           & 
&  40*gpp2*M4*QHdp4 + 3*g1p2*M1*QHup2 + 3*g1p2*M4*QHup2 + 15*g2p2*M4*QHup2 -             & 
&  10*lamp2*M4*QHup2 + 15*g2p2*M2*QHup2 + 40*gpp2*M4*QHup4 + 3*g1p2*M1*Ql4p2 +           & 
&  3*g1p2*M4*Ql4p2 + 15*g2p2*M4*Ql4p2 + 15*g2p2*M2*Ql4p2 + 40*gpp2*M4*Ql4p4 +            & 
&  6*g1p2*M1*Ql9p2 + 6*g1p2*M4*Ql9p2 + 30*g2p2*M4*Ql9p2 + 30*g2p2*M2*Ql9p2 +             & 
&  80*gpp2*M4*Ql9p4 + 3*g1p2*M1*Qqp2 + 240*g3p2*M3*Qqp2 + 3*g1p2*M4*Qqp2 +               & 
&  135*g2p2*M4*Qqp2 + 240*g3p2*M4*Qqp2 + 135*g2p2*M2*Qqp2 + 360*gpp2*M4*Qqp4 -           & 
&  10*lamp2*M4*Qsp2 + 20*gpp2*M4*Qsp4 + 24*g1p2*M1*Qup2 + 120*g3p2*M3*Qup2 +             & 
&  24*g1p2*M4*Qup2 + 120*g3p2*M4*Qup2 + 180*gpp2*M4*Qup4 + 10*Qe9p2*Tradjy2Ty2 +         & 
&  10*QHdp2*Tradjy2Ty2 + 10*Ql9p2*Tradjy2Ty2 + 30*Qdp2*TradjYdTd + 30*QHdp2*TradjYdTd +  & 
&  30*Qqp2*TradjYdTd + 30*QHup2*TradjYuTu + 30*Qqp2*TradjYuTu + 30*Qup2*TradjYuTu -      & 
&  10*M4*Qe9p2*Try2adjy2 - 10*M4*QHdp2*Try2adjy2 - 10*M4*Ql9p2*Try2adjy2 -               & 
&  30*M4*Qdp2*TrYdadjYd - 30*M4*QHdp2*TrYdadjYd - 30*M4*Qqp2*TrYdadjYd - 30*M4*QHup2*TrYuadjYu -& 
&  30*M4*Qqp2*TrYuadjYu - 30*M4*Qup2*TrYuadjYu - 10*(Qe4p2 + QHdp2 + Ql4p2)*Conjg(y1)*(M4*y1 -& 
&  Ty1) + 10*(QHdp2 + QHup2 + Qsp2)*lam*Tlam))/5._dp

 
DM4 = oo16pi2*( betaM41 + oo16pi2 * betaM42 ) 

 
Else 
DM4 = oo16pi2* betaM41 
End If 
 
 
Call Chop(DM4) 

!-------------------- 
! Tdp 
!-------------------- 
 
betaTdp1  = TdpadjYdYd + 3._dp*(TdpadjYuYu) + (Tdp*(2._dp*(g1p2) - 80._dp*(g3p2)      & 
&  + 15._dp*(lamp2) - 30*gpp2*(Qdp2 - QHup2 + Qqp2) + 45._dp*(TrYuadjYu)))               & 
& /15._dp + 6*TrTdpadjYd*Yd + 2*TrTepadjy2*Yd + 2._dp*(YdadjYdTdp)

 
 
If (TwoLoopRGE) Then 
betaTdp2 = 0

 
DTdp = oo16pi2*( betaTdp1 + oo16pi2 * betaTdp2 ) 

 
Else 
DTdp = oo16pi2* betaTdp1 
End If 
 
 
Call Chop(DTdp) 

!-------------------- 
! Tep 
!-------------------- 
 
betaTep1  = Tepadjy2y2 + Tep*(-6._dp*(g1p2)/5._dp + lamp2 - 2*gpp2*Qe9p2 +            & 
&  2*gpp2*QHup2 - 2*gpp2*Ql9p2 + 3._dp*(TrYuadjYu)) + 6*TrTdpadjYd*y2 + 2*TrTepadjy2*y2 +& 
&  2._dp*(y2adjy2Tep)

 
 
If (TwoLoopRGE) Then 
betaTep2 = 0

 
DTep = oo16pi2*( betaTep1 + oo16pi2 * betaTep2 ) 

 
Else 
DTep = oo16pi2* betaTep1 
End If 
 
 
Call Chop(DTep) 

Call ParametersToG207(Dg1,Dg2,Dg3,Dgp,DYd,Dy1,Dy2,Dlam,DYu,DTd,DTy1,DTy2,             & 
& DTlam,DTu,Dmq2,Dml42,Dml92,DmHd2,DmHu2,Dmd2,Dmu2,Dme42,Dme92,Dms2,DM1,DM2,             & 
& DM3,DM4,DTdp,DTep,f)

Iname = Iname - 1 
 
End Subroutine rge207  

Subroutine GToParameters210(g,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,            & 
& Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS)

Implicit None 
Real(dp), Intent(in) :: g(210) 
Real(dp),Intent(out) :: g1,g2,g3,gp,lam,Tlam,ml42,mHd2,mHu2,me42,ms2,vd,vu,vS

Complex(dp),Intent(out) :: Yd(3,3),y1,y2(2,2),Yu(3,3),Td(3,3),Ty1,Ty2(2,2),Tu(3,3),mq2(3,3),ml92(2,2),           & 
& md2(3,3),mu2(3,3),me92(2,2),M1,M2,M3,M4,Tdp(3,3),Tep(2,2)

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters210' 
 
g1= g(1) 
g2= g(2) 
g3= g(3) 
gp= g(4) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yd(i1,i2) = Cmplx( g(SumI+5), g(SumI+6), dp) 
End Do 
 End Do 
 
y1= Cmplx(g(23),g(24),dp) 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
y2(i1,i2) = Cmplx( g(SumI+25), g(SumI+26), dp) 
End Do 
 End Do 
 
lam= g(33) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+34), g(SumI+35), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Td(i1,i2) = Cmplx( g(SumI+52), g(SumI+53), dp) 
End Do 
 End Do 
 
Ty1= Cmplx(g(70),g(71),dp) 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
Ty2(i1,i2) = Cmplx( g(SumI+72), g(SumI+73), dp) 
End Do 
 End Do 
 
Tlam= g(80) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Tu(i1,i2) = Cmplx( g(SumI+81), g(SumI+82), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
mq2(i1,i2) = Cmplx( g(SumI+99), g(SumI+100), dp) 
End Do 
 End Do 
 
ml42= g(117) 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
ml92(i1,i2) = Cmplx( g(SumI+118), g(SumI+119), dp) 
End Do 
 End Do 
 
mHd2= g(126) 
mHu2= g(127) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
md2(i1,i2) = Cmplx( g(SumI+128), g(SumI+129), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
mu2(i1,i2) = Cmplx( g(SumI+146), g(SumI+147), dp) 
End Do 
 End Do 
 
me42= g(164) 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
me92(i1,i2) = Cmplx( g(SumI+165), g(SumI+166), dp) 
End Do 
 End Do 
 
ms2= g(173) 
M1= Cmplx(g(174),g(175),dp) 
M2= Cmplx(g(176),g(177),dp) 
M3= Cmplx(g(178),g(179),dp) 
M4= Cmplx(g(180),g(181),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Tdp(i1,i2) = Cmplx( g(SumI+182), g(SumI+183), dp) 
End Do 
 End Do 
 
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
Tep(i1,i2) = Cmplx( g(SumI+200), g(SumI+201), dp) 
End Do 
 End Do 
 
vd= g(208) 
vu= g(209) 
vS= g(210) 
Do i1=1,210 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters210

Subroutine ParametersToG210(g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,              & 
& Tu,mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS,g)

Implicit None 
Real(dp), Intent(out) :: g(210) 
Real(dp), Intent(in) :: g1,g2,g3,gp,lam,Tlam,ml42,mHd2,mHu2,me42,ms2,vd,vu,vS

Complex(dp), Intent(in) :: Yd(3,3),y1,y2(2,2),Yu(3,3),Td(3,3),Ty1,Ty2(2,2),Tu(3,3),mq2(3,3),ml92(2,2),           & 
& md2(3,3),mu2(3,3),me92(2,2),M1,M2,M3,M4,Tdp(3,3),Tep(2,2)

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG210' 
 
g(1) = g1  
g(2) = g2  
g(3) = g3  
g(4) = gp  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+5) = Real(Yd(i1,i2), dp) 
g(SumI+6) = Aimag(Yd(i1,i2)) 
End Do 
End Do 

g(23) = Real(y1,dp)  
g(24) = Aimag(y1)  
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+25) = Real(y2(i1,i2), dp) 
g(SumI+26) = Aimag(y2(i1,i2)) 
End Do 
End Do 

g(33) = lam  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+34) = Real(Yu(i1,i2), dp) 
g(SumI+35) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+52) = Real(Td(i1,i2), dp) 
g(SumI+53) = Aimag(Td(i1,i2)) 
End Do 
End Do 

g(70) = Real(Ty1,dp)  
g(71) = Aimag(Ty1)  
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+72) = Real(Ty2(i1,i2), dp) 
g(SumI+73) = Aimag(Ty2(i1,i2)) 
End Do 
End Do 

g(80) = Tlam  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+81) = Real(Tu(i1,i2), dp) 
g(SumI+82) = Aimag(Tu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+99) = Real(mq2(i1,i2), dp) 
g(SumI+100) = Aimag(mq2(i1,i2)) 
End Do 
End Do 

g(117) = ml42  
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+118) = Real(ml92(i1,i2), dp) 
g(SumI+119) = Aimag(ml92(i1,i2)) 
End Do 
End Do 

g(126) = mHd2  
g(127) = mHu2  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+128) = Real(md2(i1,i2), dp) 
g(SumI+129) = Aimag(md2(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+146) = Real(mu2(i1,i2), dp) 
g(SumI+147) = Aimag(mu2(i1,i2)) 
End Do 
End Do 

g(164) = me42  
Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+165) = Real(me92(i1,i2), dp) 
g(SumI+166) = Aimag(me92(i1,i2)) 
End Do 
End Do 

g(173) = ms2  
g(174) = Real(M1,dp)  
g(175) = Aimag(M1)  
g(176) = Real(M2,dp)  
g(177) = Aimag(M2)  
g(178) = Real(M3,dp)  
g(179) = Aimag(M3)  
g(180) = Real(M4,dp)  
g(181) = Aimag(M4)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+182) = Real(Tdp(i1,i2), dp) 
g(SumI+183) = Aimag(Tdp(i1,i2)) 
End Do 
End Do 

Do i1 = 1,2
Do i2 = 1,2
SumI = (i2-1) + (i1-1)*2
SumI = SumI*2 
g(SumI+200) = Real(Tep(i1,i2), dp) 
g(SumI+201) = Aimag(Tep(i1,i2)) 
End Do 
End Do 

g(208) = vd  
g(209) = vu  
g(210) = vS  
Iname = Iname - 1 
 
End Subroutine ParametersToG210

Subroutine rge210(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,         & 
& Dg3,gp,betagp1,betagp2,Dgp,lam,betalam1,betalam2,Dlam,Tlam,betaTlam1,betaTlam2,        & 
& DTlam,ml42,betaml421,betaml422,Dml42,mHd2,betamHd21,betamHd22,DmHd2,mHu2,              & 
& betamHu21,betamHu22,DmHu2,me42,betame421,betame422,Dme42,ms2,betams21,betams22,        & 
& Dms2,vd,betavd1,betavd2,Dvd,vu,betavu1,betavu2,Dvu,vS,betavS1,betavS2,DvS
Complex(dp) :: Yd(3,3),betaYd1(3,3),betaYd2(3,3),DYd(3,3),adjYd(3,3),y1,              & 
& betay11,betay12,Dy1,y2(2,2),betay21(2,2),betay22(2,2),Dy2(2,2),adjy2(2,2)              & 
& ,Yu(3,3),betaYu1(3,3),betaYu2(3,3),DYu(3,3),adjYu(3,3),Td(3,3),betaTd1(3,3)            & 
& ,betaTd2(3,3),DTd(3,3),adjTd(3,3),Ty1,betaTy11,betaTy12,DTy1,Ty2(2,2),betaTy21(2,2)    & 
& ,betaTy22(2,2),DTy2(2,2),adjTy2(2,2),Tu(3,3),betaTu1(3,3),betaTu2(3,3),DTu(3,3)        & 
& ,adjTu(3,3),mq2(3,3),betamq21(3,3),betamq22(3,3),Dmq2(3,3),ml92(2,2),betaml921(2,2)    & 
& ,betaml922(2,2),Dml92(2,2),md2(3,3),betamd21(3,3),betamd22(3,3),Dmd2(3,3)              & 
& ,mu2(3,3),betamu21(3,3),betamu22(3,3),Dmu2(3,3),me92(2,2),betame921(2,2)               & 
& ,betame922(2,2),Dme92(2,2),M1,betaM11,betaM12,DM1,M2,betaM21,betaM22,DM2,              & 
& M3,betaM31,betaM32,DM3,M4,betaM41,betaM42,DM4,Tdp(3,3),betaTdp1(3,3),betaTdp2(3,3)     & 
& ,DTdp(3,3),adjTdp(3,3),Tep(2,2),betaTep1(2,2),betaTep2(2,2),DTep(2,2),adjTep(2,2)
Real(dp) :: Tr1(4),Tr2(4),Tr3(4) 
Real(dp) :: Tr2U1(4,4) 
Real(dp) :: Absy1,AbsTy1,AbsM1,AbsM2,AbsM3,AbsM4
Complex(dp) :: md2Yd(3,3),me92y2(2,2),ml92adjy2(2,2),mq2adjYd(3,3),mq2adjYu(3,3),mu2Yu(3,3),         & 
& TdpadjTdp(3,3),TdpadjYd(3,3),TepadjTep(2,2),Tepadjy2(2,2),y2ml92(2,2),y2adjy2(2,2),    & 
& Ydmq2(3,3),YdadjYd(3,3),Yumq2(3,3),YuadjYu(3,3),adjy2me92(2,2),adjy2Tep(2,2),          & 
& adjy2y2(2,2),adjy2Ty2(2,2),adjYdmd2(3,3),adjYdTdp(3,3),adjYdYd(3,3),adjYdTd(3,3),      & 
& adjYumu2(3,3),adjYuYu(3,3),adjYuTu(3,3),adjTy2Ty2(2,2),adjTdTd(3,3),adjTuTu(3,3),      & 
& CTdpTpTdp(3,3),CTepTpTep(2,2),CTy2TpTy2(2,2),CTdTpTd(3,3),CTuTpTu(3,3),Ty2adjTy2(2,2), & 
& TdadjTd(3,3),TuadjTu(3,3),TpTdpCTdp(3,3),TpTepCTep(2,2),md2YdadjYd(3,3),               & 
& me92y2adjy2(2,2),ml92adjy2y2(2,2),mq2adjYdYd(3,3),mq2adjYuYu(3,3),mu2YuadjYu(3,3),     & 
& TdpadjYdYd(3,3),TdpadjYuYu(3,3),Tepadjy2y2(2,2),y2ml92adjy2(2,2),y2adjy2me92(2,2),     & 
& y2adjy2Tep(2,2),y2adjy2y2(2,2),y2adjy2Ty2(2,2),Ydmq2adjYd(3,3),YdadjYdmd2(3,3),        & 
& YdadjYdTdp(3,3),YdadjYdYd(3,3),YdadjYdTd(3,3),YdadjYuYu(3,3),YdadjYuTu(3,3),           & 
& Yumq2adjYu(3,3),YuadjYdYd(3,3),YuadjYdTd(3,3),YuadjYumu2(3,3),YuadjYuYu(3,3),          & 
& YuadjYuTu(3,3),adjy2me92y2(2,2),adjy2y2ml92(2,2),adjYdmd2Yd(3,3),adjYdYdmq2(3,3),      & 
& adjYumu2Yu(3,3),adjYuYumq2(3,3),Ty2adjy2y2(2,2),TdadjYdYd(3,3),TdadjYuYu(3,3),         & 
& TuadjYdYd(3,3),TuadjYuYu(3,3)

Complex(dp) :: y2adjTy2(2,2),YdadjYu(3,3),YdadjTd(3,3),YdadjTu(3,3),YuadjYd(3,3),YuadjTd(3,3),       & 
& YuadjTu(3,3),adjy2Cme92(2,2),adjYdCmd2(3,3),adjYuCmu2(3,3),adjTy2y2(2,2),              & 
& adjTdYd(3,3),adjTuYu(3,3),Cml92adjy2(2,2),Cmq2adjYd(3,3),Cmq2adjYu(3,3),               & 
& CTy2Tpy2(2,2),CTdTpYd(3,3),CTuTpYu(3,3),Ty2adjy2(2,2),TdadjYd(3,3),TdadjYu(3,3),       & 
& TdadjTu(3,3),TuadjYd(3,3),TuadjYu(3,3),TuadjTd(3,3),md2YdadjYu(3,3),mu2YuadjYd(3,3),   & 
& y2adjy2Cme92(2,2),y2adjTy2Ty2(2,2),y2Cml92adjy2(2,2),Ydmq2adjYu(3,3),YdadjYdCmd2(3,3), & 
& YdadjYumu2(3,3),YdadjTdTd(3,3),YdCmq2adjYd(3,3),Yumq2adjYd(3,3),YuadjYdmd2(3,3),       & 
& YuadjYuCmu2(3,3),YuadjTuTu(3,3),YuCmq2adjYu(3,3),adjy2y2adjy2(2,2),adjy2y2adjTy2(2,2), & 
& adjy2Ty2adjy2(2,2),adjy2Ty2adjTy2(2,2),adjYdYdadjYd(3,3),adjYdYdadjYu(3,3),            & 
& adjYdYdadjTd(3,3),adjYdYdadjTu(3,3),adjYdTdadjYd(3,3),adjYdTdadjYu(3,3),               & 
& adjYdTdadjTd(3,3),adjYdTdadjTu(3,3),adjYuYuadjYd(3,3),adjYuYuadjYu(3,3),               & 
& adjYuYuadjTd(3,3),adjYuYuadjTu(3,3),adjYuTuadjYd(3,3),adjYuTuadjYu(3,3),               & 
& adjYuTuadjTd(3,3),adjYuTuadjTu(3,3),adjTy2y2adjy2(2,2),adjTy2Ty2adjy2(2,2),            & 
& adjTdYdadjYd(3,3),adjTdYdadjYu(3,3),adjTdTdadjYd(3,3),adjTdTdadjYu(3,3),               & 
& adjTuYuadjYd(3,3),adjTuYuadjYu(3,3),adjTuTuadjYd(3,3),adjTuTuadjYu(3,3),               & 
& Ty2adjTy2y2(2,2),TdadjTdYd(3,3),TuadjTuYu(3,3),md2YdadjYdYd(3,3),me92y2adjy2y2(2,2),   & 
& ml92adjy2y2adjy2(2,2),mq2adjYdYdadjYd(3,3),mq2adjYdYdadjYu(3,3),mq2adjYuYuadjYd(3,3),  & 
& mq2adjYuYuadjYu(3,3),mu2YuadjYuYu(3,3),y2ml92adjy2y2(2,2),y2adjy2me92y2(2,2),          & 
& y2adjy2y2ml92(2,2),y2adjy2y2adjy2(2,2),y2adjy2Ty2adjy2(2,2),y2adjy2Ty2adjTy2(2,2),     & 
& y2adjTy2Ty2adjy2(2,2),Ydmq2adjYdYd(3,3),YdadjYdmd2Yd(3,3),YdadjYdYdmq2(3,3),           & 
& YdadjYdYdadjYd(3,3),YdadjYdTdadjYd(3,3),YdadjYdTdadjTd(3,3),YdadjYuYuadjYd(3,3),       & 
& YdadjYuTuadjYd(3,3),YdadjYuTuadjTd(3,3),YdadjTdTdadjYd(3,3),YdadjTuTuadjYd(3,3),       & 
& Yumq2adjYuYu(3,3),YuadjYdYdadjYu(3,3),YuadjYdTdadjYu(3,3),YuadjYdTdadjTu(3,3),         & 
& YuadjYumu2Yu(3,3),YuadjYuYumq2(3,3),YuadjYuYuadjYu(3,3),YuadjYuTuadjYu(3,3),           & 
& YuadjYuTuadjTu(3,3),YuadjTdTdadjYu(3,3),YuadjTuTuadjYu(3,3),adjy2me92y2adjy2(2,2),     & 
& adjy2y2ml92adjy2(2,2),adjy2y2adjy2me92(2,2),adjy2y2adjy2y2(2,2),adjy2y2adjy2Ty2(2,2),  & 
& adjy2y2adjTy2Ty2(2,2),adjy2Ty2adjy2y2(2,2),adjy2Ty2adjTy2y2(2,2),adjYdmd2YdadjYd(3,3), & 
& adjYdmd2YdadjYu(3,3),adjYdYdmq2adjYd(3,3),adjYdYdmq2adjYu(3,3),adjYdYdadjYdmd2(3,3),   & 
& adjYdYdadjYdYd(3,3),adjYdYdadjYdTd(3,3),adjYdYdadjYumu2(3,3),adjYdYdadjYuYu(3,3),      & 
& adjYdYdadjYuTu(3,3),adjYdYdadjTdTd(3,3),adjYdTdadjYdYd(3,3),adjYdTdadjYuYu(3,3),       & 
& adjYdTdadjTdYd(3,3),adjYumu2YuadjYd(3,3),adjYumu2YuadjYu(3,3),adjYuYumq2adjYd(3,3),    & 
& adjYuYumq2adjYu(3,3),adjYuYuadjYdmd2(3,3),adjYuYuadjYdYd(3,3),adjYuYuadjYdTd(3,3),     & 
& adjYuYuadjYumu2(3,3),adjYuYuadjYuYu(3,3),adjYuYuadjYuTu(3,3),adjYuYuadjTuTu(3,3),      & 
& adjYuTuadjYdYd(3,3),adjYuTuadjYuYu(3,3),adjYuTuadjTuYu(3,3),adjTy2y2adjy2Ty2(2,2),     & 
& adjTy2Ty2adjy2y2(2,2),adjTdYdadjYdTd(3,3),adjTdTdadjYdYd(3,3),adjTuYuadjYuTu(3,3),     & 
& adjTuTuadjYuYu(3,3),Ty2adjy2y2adjTy2(2,2),Ty2adjTy2y2adjy2(2,2),TdadjYdYdadjTd(3,3),   & 
& TdadjYuYuadjTd(3,3),TdadjTdYdadjYd(3,3),TdadjTuYuadjYd(3,3),TuadjYdYdadjTu(3,3)

Complex(dp) :: TuadjYuYuadjTu(3,3),TuadjTdYdadjYu(3,3),TuadjTuYuadjYu(3,3),md2YdadjYdYdadjYd(3,3),    & 
& md2YdadjYuYuadjYd(3,3),me92y2adjy2y2adjy2(2,2),ml92adjy2y2adjy2y2(2,2),mq2adjYdYdadjYdYd(3,3),& 
& mq2adjYdYdadjYuYu(3,3),mq2adjYuYuadjYdYd(3,3),mq2adjYuYuadjYuYu(3,3),mu2YuadjYdYdadjYu(3,3),& 
& mu2YuadjYuYuadjYu(3,3),y2ml92adjy2y2adjy2(2,2),y2adjy2me92y2adjy2(2,2),y2adjy2y2ml92adjy2(2,2),& 
& y2adjy2y2adjy2me92(2,2),y2adjy2y2adjy2y2(2,2),y2adjy2y2adjy2Ty2(2,2),y2adjy2Ty2adjy2y2(2,2),& 
& Ydmq2adjYdYdadjYd(3,3),Ydmq2adjYuYuadjYd(3,3),YdadjYdmd2YdadjYd(3,3),YdadjYdYdmq2adjYd(3,3),& 
& YdadjYdYdadjYdmd2(3,3),YdadjYdYdadjYdYd(3,3),YdadjYdYdadjYdTd(3,3),YdadjYdTdadjYdYd(3,3),& 
& YdadjYumu2YuadjYd(3,3),YdadjYuYumq2adjYd(3,3),YdadjYuYuadjYdmd2(3,3),YdadjYuYuadjYdYd(3,3),& 
& YdadjYuYuadjYdTd(3,3),YdadjYuYuadjYuYu(3,3),YdadjYuYuadjYuTu(3,3),YdadjYuTuadjYdYd(3,3),& 
& YdadjYuTuadjYuYu(3,3),Yumq2adjYdYdadjYu(3,3),Yumq2adjYuYuadjYu(3,3),YuadjYdmd2YdadjYu(3,3),& 
& YuadjYdYdmq2adjYu(3,3),YuadjYdYdadjYdYd(3,3),YuadjYdYdadjYdTd(3,3),YuadjYdYdadjYumu2(3,3),& 
& YuadjYdYdadjYuYu(3,3),YuadjYdYdadjYuTu(3,3),YuadjYdTdadjYdYd(3,3),YuadjYdTdadjYuYu(3,3),& 
& YuadjYumu2YuadjYu(3,3),YuadjYuYumq2adjYu(3,3),YuadjYuYuadjYumu2(3,3),YuadjYuYuadjYuYu(3,3),& 
& YuadjYuYuadjYuTu(3,3),YuadjYuTuadjYuYu(3,3),adjy2me92y2adjy2y2(2,2),adjy2y2ml92adjy2y2(2,2),& 
& adjy2y2adjy2me92y2(2,2),adjy2y2adjy2y2ml92(2,2),adjYdmd2YdadjYdYd(3,3),adjYdYdmq2adjYdYd(3,3),& 
& adjYdYdadjYdmd2Yd(3,3),adjYdYdadjYdYdmq2(3,3),adjYumu2YuadjYuYu(3,3),adjYuYumq2adjYuYu(3,3),& 
& adjYuYuadjYumu2Yu(3,3),adjYuYuadjYuYumq2(3,3),Ty2adjy2y2adjy2y2(2,2),TdadjYdYdadjYdYd(3,3),& 
& TdadjYuYuadjYdYd(3,3),TdadjYuYuadjYuYu(3,3),TuadjYdYdadjYdYd(3,3),TuadjYdYdadjYuYu(3,3),& 
& TuadjYuYuadjYuYu(3,3)

Complex(dp) :: Trmd2,Trme92,Trml92,Trmq2,Trmu2,TrTdpadjTdp,TrTdpadjYd,TrTepadjTep,TrTepadjy2,        & 
& Try2adjy2,TrYdadjYd,TrYuadjYu,Tradjy2Ty2,TradjYdTd,TradjYuTu,TrCTy2TpTy2,              & 
& TrCTdTpTd,TrCTuTpTu,Trmd2YdadjYd,Trme92y2adjy2,Trml92adjy2y2,Trmq2adjYdYd,             & 
& Trmq2adjYuYu,Trmu2YuadjYu

Complex(dp) :: TrCTy2Tpy2,TrCTdTpYd,TrCTuTpYu,Try2adjy2Cme92,Try2Cml92adjy2,TrYdadjYdCmd2,           & 
& TrYdCmq2adjYd,TrYuadjYuCmu2,TrYuCmq2adjYu,Try2adjy2y2adjy2,Try2adjy2Ty2adjy2,          & 
& Try2adjy2Ty2adjTy2,Try2adjTy2Ty2adjy2,TrYdadjYdYdadjYd,TrYdadjYdTdadjYd,               & 
& TrYdadjYdTdadjTd,TrYdadjYuYuadjYd,TrYdadjYuTuadjYd,TrYdadjYuTuadjTd,TrYdadjTdTdadjYd,  & 
& TrYdadjTuTuadjYd,TrYuadjYdTdadjYu,TrYuadjYdTdadjTu,TrYuadjYuYuadjYu,TrYuadjYuTuadjYu,  & 
& TrYuadjYuTuadjTu,TrYuadjTdTdadjYu,TrYuadjTuTuadjYu,Trmd2YdadjYdYdadjYd,Trmd2YdadjYuYuadjYd,& 
& Trme92y2adjy2y2adjy2,Trml92adjy2y2adjy2y2,Trmq2adjYdYdadjYdYd,Trmq2adjYdYdadjYuYu,     & 
& Trmq2adjYuYuadjYdYd,Trmq2adjYuYuadjYuYu,Trmu2YuadjYdYdadjYu,Trmu2YuadjYuYuadjYu

Real(dp) :: g1p2,g1p3,g2p2,g2p3,g3p2,g3p3,gpp2,gpp3,Qdp2,Qe4p2,Qe9p2,QHdp2,QHup2,Ql4p2,           & 
& Ql9p2,Qqp2,Qsp2,Qup2,lamp2,lamp3,Tlamp2

Complex(dp) :: sqrt3ov5,ooSqrt15,y1p2

Real(dp) :: g1p4,g2p4,g3p4,gpp4,Qdp4,Qe4p3,Qe4p4,Qe9p3,Qe9p4,QHdp3,QHdp4,QHup3,QHup4,             & 
& Ql4p3,Ql4p4,Ql9p3,Ql9p4,Qqp3,Qqp4,Qsp3,Qsp4,Qup3,Qup4,lamp4,lamp5

Complex(dp) :: sqrt15,Xip2,Cy1p2

Iname = Iname +1 
NameOfUnit(Iname) = 'rge210' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters210(gy,g1,g2,g3,gp,Yd,y1,y2,lam,Yu,Td,Ty1,Ty2,Tlam,Tu,              & 
& mq2,ml42,ml92,mHd2,mHu2,md2,mu2,me42,me92,ms2,M1,M2,M3,M4,Tdp,Tep,vd,vu,vS)

Absy1 = Conjg(y1)*y1
AbsTy1 = Conjg(Ty1)*Ty1
AbsM1 = Conjg(M1)*M1
AbsM2 = Conjg(M2)*M2
AbsM3 = Conjg(M3)*M3
AbsM4 = Conjg(M4)*M4
Call Adjungate(Yd,adjYd)
Call Adjungate(y2,adjy2)
Call Adjungate(Yu,adjYu)
Call Adjungate(Td,adjTd)
Call Adjungate(Ty2,adjTy2)
Call Adjungate(Tu,adjTu)
Call Adjungate(Tdp,adjTdp)
Call Adjungate(Tep,adjTep)
 md2Yd = Matmul(md2,Yd) 
 me92y2 = Matmul(me92,y2) 
 ml92adjy2 = Matmul(ml92,adjy2) 
 mq2adjYd = Matmul(mq2,adjYd) 
 mq2adjYu = Matmul(mq2,adjYu) 
 mu2Yu = Matmul(mu2,Yu) 
 TdpadjTdp = Matmul(Tdp,adjTdp) 
Forall(i2=1:3)  TdpadjTdp(i2,i2) =  Real(TdpadjTdp(i2,i2),dp) 
 TdpadjYd = Matmul(Tdp,adjYd) 
 TepadjTep = Matmul(Tep,adjTep) 
Forall(i2=1:2)  TepadjTep(i2,i2) =  Real(TepadjTep(i2,i2),dp) 
 Tepadjy2 = Matmul(Tep,adjy2) 
 y2ml92 = Matmul(y2,ml92) 
 y2adjy2 = Matmul(y2,adjy2) 
Forall(i2=1:2)  y2adjy2(i2,i2) =  Real(y2adjy2(i2,i2),dp) 
 Ydmq2 = Matmul(Yd,mq2) 
 YdadjYd = Matmul(Yd,adjYd) 
Forall(i2=1:3)  YdadjYd(i2,i2) =  Real(YdadjYd(i2,i2),dp) 
 Yumq2 = Matmul(Yu,mq2) 
 YuadjYu = Matmul(Yu,adjYu) 
Forall(i2=1:3)  YuadjYu(i2,i2) =  Real(YuadjYu(i2,i2),dp) 
 adjy2me92 = Matmul(adjy2,me92) 
 adjy2Tep = Matmul(adjy2,Tep) 
 adjy2y2 = Matmul(adjy2,y2) 
Forall(i2=1:2)  adjy2y2(i2,i2) =  Real(adjy2y2(i2,i2),dp) 
 adjy2Ty2 = Matmul(adjy2,Ty2) 
 adjYdmd2 = Matmul(adjYd,md2) 
 adjYdTdp = Matmul(adjYd,Tdp) 
 adjYdYd = Matmul(adjYd,Yd) 
Forall(i2=1:3)  adjYdYd(i2,i2) =  Real(adjYdYd(i2,i2),dp) 
 adjYdTd = Matmul(adjYd,Td) 
 adjYumu2 = Matmul(adjYu,mu2) 
 adjYuYu = Matmul(adjYu,Yu) 
Forall(i2=1:3)  adjYuYu(i2,i2) =  Real(adjYuYu(i2,i2),dp) 
 adjYuTu = Matmul(adjYu,Tu) 
 adjTy2Ty2 = Matmul(adjTy2,Ty2) 
 adjTdTd = Matmul(adjTd,Td) 
 adjTuTu = Matmul(adjTu,Tu) 
 CTdpTpTdp = Matmul(Conjg(Tdp),Transpose(Tdp)) 
Forall(i2=1:3)  CTdpTpTdp(i2,i2) =  Real(CTdpTpTdp(i2,i2),dp) 
 CTepTpTep = Matmul(Conjg(Tep),Transpose(Tep)) 
Forall(i2=1:2)  CTepTpTep(i2,i2) =  Real(CTepTpTep(i2,i2),dp) 
 CTy2TpTy2 = Matmul(Conjg(Ty2),Transpose(Ty2)) 
Forall(i2=1:2)  CTy2TpTy2(i2,i2) =  Real(CTy2TpTy2(i2,i2),dp) 
 CTdTpTd = Matmul(Conjg(Td),Transpose(Td)) 
Forall(i2=1:3)  CTdTpTd(i2,i2) =  Real(CTdTpTd(i2,i2),dp) 
 CTuTpTu = Matmul(Conjg(Tu),Transpose(Tu)) 
Forall(i2=1:3)  CTuTpTu(i2,i2) =  Real(CTuTpTu(i2,i2),dp) 
 Ty2adjTy2 = Matmul(Ty2,adjTy2) 
 TdadjTd = Matmul(Td,adjTd) 
 TuadjTu = Matmul(Tu,adjTu) 
 TpTdpCTdp = Matmul(Transpose(Tdp),Conjg(Tdp)) 
Forall(i2=1:3)  TpTdpCTdp(i2,i2) =  Real(TpTdpCTdp(i2,i2),dp) 
 TpTepCTep = Matmul(Transpose(Tep),Conjg(Tep)) 
Forall(i2=1:2)  TpTepCTep(i2,i2) =  Real(TpTepCTep(i2,i2),dp) 
 md2YdadjYd = Matmul(md2,YdadjYd) 
 me92y2adjy2 = Matmul(me92,y2adjy2) 
 ml92adjy2y2 = Matmul(ml92,adjy2y2) 
 mq2adjYdYd = Matmul(mq2,adjYdYd) 
 mq2adjYuYu = Matmul(mq2,adjYuYu) 
 mu2YuadjYu = Matmul(mu2,YuadjYu) 
 TdpadjYdYd = Matmul(Tdp,adjYdYd) 
 TdpadjYuYu = Matmul(Tdp,adjYuYu) 
 Tepadjy2y2 = Matmul(Tep,adjy2y2) 
 y2ml92adjy2 = Matmul(y2,ml92adjy2) 
Forall(i2=1:2)  y2ml92adjy2(i2,i2) =  Real(y2ml92adjy2(i2,i2),dp) 
 y2adjy2me92 = Matmul(y2,adjy2me92) 
 y2adjy2Tep = Matmul(y2,adjy2Tep) 
 y2adjy2y2 = Matmul(y2,adjy2y2) 
 y2adjy2Ty2 = Matmul(y2,adjy2Ty2) 
 Ydmq2adjYd = Matmul(Yd,mq2adjYd) 
Forall(i2=1:3)  Ydmq2adjYd(i2,i2) =  Real(Ydmq2adjYd(i2,i2),dp) 
 YdadjYdmd2 = Matmul(Yd,adjYdmd2) 
 YdadjYdTdp = Matmul(Yd,adjYdTdp) 
 YdadjYdYd = Matmul(Yd,adjYdYd) 
 YdadjYdTd = Matmul(Yd,adjYdTd) 
 YdadjYuYu = Matmul(Yd,adjYuYu) 
 YdadjYuTu = Matmul(Yd,adjYuTu) 
 Yumq2adjYu = Matmul(Yu,mq2adjYu) 
Forall(i2=1:3)  Yumq2adjYu(i2,i2) =  Real(Yumq2adjYu(i2,i2),dp) 
 YuadjYdYd = Matmul(Yu,adjYdYd) 
 YuadjYdTd = Matmul(Yu,adjYdTd) 
 YuadjYumu2 = Matmul(Yu,adjYumu2) 
 YuadjYuYu = Matmul(Yu,adjYuYu) 
 YuadjYuTu = Matmul(Yu,adjYuTu) 
 adjy2me92y2 = Matmul(adjy2,me92y2) 
Forall(i2=1:2)  adjy2me92y2(i2,i2) =  Real(adjy2me92y2(i2,i2),dp) 
 adjy2y2ml92 = Matmul(adjy2,y2ml92) 
 adjYdmd2Yd = Matmul(adjYd,md2Yd) 
Forall(i2=1:3)  adjYdmd2Yd(i2,i2) =  Real(adjYdmd2Yd(i2,i2),dp) 
 adjYdYdmq2 = Matmul(adjYd,Ydmq2) 
 adjYumu2Yu = Matmul(adjYu,mu2Yu) 
Forall(i2=1:3)  adjYumu2Yu(i2,i2) =  Real(adjYumu2Yu(i2,i2),dp) 
 adjYuYumq2 = Matmul(adjYu,Yumq2) 
 Ty2adjy2y2 = Matmul(Ty2,adjy2y2) 
 TdadjYdYd = Matmul(Td,adjYdYd) 
 TdadjYuYu = Matmul(Td,adjYuYu) 
 TuadjYdYd = Matmul(Tu,adjYdYd) 
 TuadjYuYu = Matmul(Tu,adjYuYu) 
 Trmd2 = Real(cTrace(md2),dp) 
 Trme92 = Real(cTrace(me92),dp) 
 Trml92 = Real(cTrace(ml92),dp) 
 Trmq2 = Real(cTrace(mq2),dp) 
 Trmu2 = Real(cTrace(mu2),dp) 
 TrTdpadjTdp = Real(cTrace(TdpadjTdp),dp) 
 TrTdpadjYd = cTrace(TdpadjYd) 
 TrTepadjTep = Real(cTrace(TepadjTep),dp) 
 TrTepadjy2 = cTrace(Tepadjy2) 
 Try2adjy2 = Real(cTrace(y2adjy2),dp) 
 TrYdadjYd = Real(cTrace(YdadjYd),dp) 
 TrYuadjYu = Real(cTrace(YuadjYu),dp) 
 Tradjy2Ty2 = cTrace(adjy2Ty2) 
 TradjYdTd = cTrace(adjYdTd) 
 TradjYuTu = cTrace(adjYuTu) 
 TrCTy2TpTy2 = Real(cTrace(CTy2TpTy2),dp) 
 TrCTdTpTd = Real(cTrace(CTdTpTd),dp) 
 TrCTuTpTu = Real(cTrace(CTuTpTu),dp) 
 Trmd2YdadjYd = cTrace(md2YdadjYd) 
 Trme92y2adjy2 = cTrace(me92y2adjy2) 
 Trml92adjy2y2 = cTrace(ml92adjy2y2) 
 Trmq2adjYdYd = cTrace(mq2adjYdYd) 
 Trmq2adjYuYu = cTrace(mq2adjYuYu) 
 Trmu2YuadjYu = cTrace(mu2YuadjYu) 
 sqrt3ov5 =Sqrt(3._dp/5._dp) 
 ooSqrt15 =1._dp/sqrt(15._dp) 
 g1p2 =g1**2 
 g1p3 =g1**3 
 g2p2 =g2**2 
 g2p3 =g2**3 
 g3p2 =g3**2 
 g3p3 =g3**3 
 gpp2 =gp**2 
 gpp3 =gp**3 
 Qdp2 =Qd**2 
 Qe4p2 =Qe4**2 
 Qe9p2 =Qe9**2 
 QHdp2 =QHd**2 
 QHup2 =QHu**2 
 Ql4p2 =Ql4**2 
 Ql9p2 =Ql9**2 
 Qqp2 =Qq**2 
 Qsp2 =Qs**2 
 Qup2 =Qu**2 
 y1p2 =y1**2 
 lamp2 =lam**2 
 lamp3 =lam**3 
 Tlamp2 =Tlam**2 
 sqrt15 =sqrt(15._dp) 
 g1p4 =g1**4 
 g2p4 =g2**4 
 g3p4 =g3**4 
 gpp4 =gp**4 
 Qdp4 =Qd**4 
 Qe4p3 =Qe4**3 
 Qe4p4 =Qe4**4 
 Qe9p3 =Qe9**3 
 Qe9p4 =Qe9**4 
 QHdp3 =QHd**3 
 QHdp4 =QHd**4 
 QHup3 =QHu**3 
 QHup4 =QHu**4 
 Ql4p3 =Ql4**3 
 Ql4p4 =Ql4**4 
 Ql9p3 =Ql9**3 
 Ql9p4 =Ql9**4 
 Qqp3 =Qq**3 
 Qqp4 =Qq**4 
 Qsp3 =Qs**3 
 Qsp4 =Qs**4 
 Qup3 =Qu**3 
 Qup4 =Qu**4 
 Xip2 =Xi**2 
 lamp4 =lam**4 
 lamp5 =lam**5 
 Cy1p2 =Conjg(y1)**2 


If (TwoLoopRGE) Then 
 y2adjTy2 = Matmul(y2,adjTy2) 
 YdadjYu = Matmul(Yd,adjYu) 
 YdadjTd = Matmul(Yd,adjTd) 
 YdadjTu = Matmul(Yd,adjTu) 
 YuadjYd = Matmul(Yu,adjYd) 
 YuadjTd = Matmul(Yu,adjTd) 
 YuadjTu = Matmul(Yu,adjTu) 
 adjy2Cme92 = Matmul(adjy2,Conjg(me92)) 
 adjYdCmd2 = Matmul(adjYd,Conjg(md2)) 
 adjYuCmu2 = Matmul(adjYu,Conjg(mu2)) 
 adjTy2y2 = Matmul(adjTy2,y2) 
 adjTdYd = Matmul(adjTd,Yd) 
 adjTuYu = Matmul(adjTu,Yu) 
 Cml92adjy2 = Matmul(Conjg(ml92),adjy2) 
 Cmq2adjYd = Matmul(Conjg(mq2),adjYd) 
 Cmq2adjYu = Matmul(Conjg(mq2),adjYu) 
 CTy2Tpy2 = Matmul(Conjg(Ty2),Transpose(y2)) 
 CTdTpYd = Matmul(Conjg(Td),Transpose(Yd)) 
 CTuTpYu = Matmul(Conjg(Tu),Transpose(Yu)) 
 Ty2adjy2 = Matmul(Ty2,adjy2) 
 TdadjYd = Matmul(Td,adjYd) 
 TdadjYu = Matmul(Td,adjYu) 
 TdadjTu = Matmul(Td,adjTu) 
 TuadjYd = Matmul(Tu,adjYd) 
 TuadjYu = Matmul(Tu,adjYu) 
 TuadjTd = Matmul(Tu,adjTd) 
 md2YdadjYu = Matmul(md2,YdadjYu) 
 mu2YuadjYd = Matmul(mu2,YuadjYd) 
 y2adjy2Cme92 = Matmul(y2,adjy2Cme92) 
 y2adjTy2Ty2 = Matmul(y2,adjTy2Ty2) 
 y2Cml92adjy2 = Matmul(y2,Cml92adjy2) 
Forall(i2=1:2)  y2Cml92adjy2(i2,i2) =  Real(y2Cml92adjy2(i2,i2),dp) 
 Ydmq2adjYu = Matmul(Yd,mq2adjYu) 
 YdadjYdCmd2 = Matmul(Yd,adjYdCmd2) 
 YdadjYumu2 = Matmul(Yd,adjYumu2) 
 YdadjTdTd = Matmul(Yd,adjTdTd) 
 YdCmq2adjYd = Matmul(Yd,Cmq2adjYd) 
Forall(i2=1:3)  YdCmq2adjYd(i2,i2) =  Real(YdCmq2adjYd(i2,i2),dp) 
 Yumq2adjYd = Matmul(Yu,mq2adjYd) 
 YuadjYdmd2 = Matmul(Yu,adjYdmd2) 
 YuadjYuCmu2 = Matmul(Yu,adjYuCmu2) 
 YuadjTuTu = Matmul(Yu,adjTuTu) 
 YuCmq2adjYu = Matmul(Yu,Cmq2adjYu) 
Forall(i2=1:3)  YuCmq2adjYu(i2,i2) =  Real(YuCmq2adjYu(i2,i2),dp) 
 adjy2y2adjy2 = Matmul(adjy2,y2adjy2) 
 adjy2y2adjTy2 = Matmul(adjy2,y2adjTy2) 
 adjy2Ty2adjy2 = Matmul(adjy2,Ty2adjy2) 
 adjy2Ty2adjTy2 = Matmul(adjy2,Ty2adjTy2) 
 adjYdYdadjYd = Matmul(adjYd,YdadjYd) 
 adjYdYdadjYu = Matmul(adjYd,YdadjYu) 
 adjYdYdadjTd = Matmul(adjYd,YdadjTd) 
 adjYdYdadjTu = Matmul(adjYd,YdadjTu) 
 adjYdTdadjYd = Matmul(adjYd,TdadjYd) 
 adjYdTdadjYu = Matmul(adjYd,TdadjYu) 
 adjYdTdadjTd = Matmul(adjYd,TdadjTd) 
 adjYdTdadjTu = Matmul(adjYd,TdadjTu) 
 adjYuYuadjYd = Matmul(adjYu,YuadjYd) 
 adjYuYuadjYu = Matmul(adjYu,YuadjYu) 
 adjYuYuadjTd = Matmul(adjYu,YuadjTd) 
 adjYuYuadjTu = Matmul(adjYu,YuadjTu) 
 adjYuTuadjYd = Matmul(adjYu,TuadjYd) 
 adjYuTuadjYu = Matmul(adjYu,TuadjYu) 
 adjYuTuadjTd = Matmul(adjYu,TuadjTd) 
 adjYuTuadjTu = Matmul(adjYu,TuadjTu) 
 adjTy2y2adjy2 = Matmul(adjTy2,y2adjy2) 
 adjTy2Ty2adjy2 = Matmul(adjTy2,Ty2adjy2) 
 adjTdYdadjYd = Matmul(adjTd,YdadjYd) 
 adjTdYdadjYu = Matmul(adjTd,YdadjYu) 
 adjTdTdadjYd = Matmul(adjTd,TdadjYd) 
 adjTdTdadjYu = Matmul(adjTd,TdadjYu) 
 adjTuYuadjYd = Matmul(adjTu,YuadjYd) 
 adjTuYuadjYu = Matmul(adjTu,YuadjYu) 
 adjTuTuadjYd = Matmul(adjTu,TuadjYd) 
 adjTuTuadjYu = Matmul(adjTu,TuadjYu) 
 Ty2adjTy2y2 = Matmul(Ty2,adjTy2y2) 
 TdadjTdYd = Matmul(Td,adjTdYd) 
 TuadjTuYu = Matmul(Tu,adjTuYu) 
 md2YdadjYdYd = Matmul(md2,YdadjYdYd) 
 me92y2adjy2y2 = Matmul(me92,y2adjy2y2) 
 ml92adjy2y2adjy2 = Matmul(ml92,adjy2y2adjy2) 
 mq2adjYdYdadjYd = Matmul(mq2,adjYdYdadjYd) 
 mq2adjYdYdadjYu = Matmul(mq2,adjYdYdadjYu) 
 mq2adjYuYuadjYd = Matmul(mq2,adjYuYuadjYd) 
 mq2adjYuYuadjYu = Matmul(mq2,adjYuYuadjYu) 
 mu2YuadjYuYu = Matmul(mu2,YuadjYuYu) 
 y2ml92adjy2y2 = Matmul(y2,ml92adjy2y2) 
 y2adjy2me92y2 = Matmul(y2,adjy2me92y2) 
 y2adjy2y2ml92 = Matmul(y2,adjy2y2ml92) 
 y2adjy2y2adjy2 = Matmul(y2,adjy2y2adjy2) 
Forall(i2=1:2)  y2adjy2y2adjy2(i2,i2) =  Real(y2adjy2y2adjy2(i2,i2),dp) 
 y2adjy2Ty2adjy2 = Matmul(y2,adjy2Ty2adjy2) 
 y2adjy2Ty2adjTy2 = Matmul(y2,adjy2Ty2adjTy2) 
 y2adjTy2Ty2adjy2 = Matmul(y2,adjTy2Ty2adjy2) 
 Ydmq2adjYdYd = Matmul(Yd,mq2adjYdYd) 
 YdadjYdmd2Yd = Matmul(Yd,adjYdmd2Yd) 
 YdadjYdYdmq2 = Matmul(Yd,adjYdYdmq2) 
 YdadjYdYdadjYd = Matmul(Yd,adjYdYdadjYd) 
Forall(i2=1:3)  YdadjYdYdadjYd(i2,i2) =  Real(YdadjYdYdadjYd(i2,i2),dp) 
 YdadjYdTdadjYd = Matmul(Yd,adjYdTdadjYd) 
 YdadjYdTdadjTd = Matmul(Yd,adjYdTdadjTd) 
 YdadjYuYuadjYd = Matmul(Yd,adjYuYuadjYd) 
Forall(i2=1:3)  YdadjYuYuadjYd(i2,i2) =  Real(YdadjYuYuadjYd(i2,i2),dp) 
 YdadjYuTuadjYd = Matmul(Yd,adjYuTuadjYd) 
 YdadjYuTuadjTd = Matmul(Yd,adjYuTuadjTd) 
 YdadjTdTdadjYd = Matmul(Yd,adjTdTdadjYd) 
 YdadjTuTuadjYd = Matmul(Yd,adjTuTuadjYd) 
 Yumq2adjYuYu = Matmul(Yu,mq2adjYuYu) 
 YuadjYdYdadjYu = Matmul(Yu,adjYdYdadjYu) 
Forall(i2=1:3)  YuadjYdYdadjYu(i2,i2) =  Real(YuadjYdYdadjYu(i2,i2),dp) 
 YuadjYdTdadjYu = Matmul(Yu,adjYdTdadjYu) 
 YuadjYdTdadjTu = Matmul(Yu,adjYdTdadjTu) 
 YuadjYumu2Yu = Matmul(Yu,adjYumu2Yu) 
 YuadjYuYumq2 = Matmul(Yu,adjYuYumq2) 
 YuadjYuYuadjYu = Matmul(Yu,adjYuYuadjYu) 
Forall(i2=1:3)  YuadjYuYuadjYu(i2,i2) =  Real(YuadjYuYuadjYu(i2,i2),dp) 
 YuadjYuTuadjYu = Matmul(Yu,adjYuTuadjYu) 
 YuadjYuTuadjTu = Matmul(Yu,adjYuTuadjTu) 
 YuadjTdTdadjYu = Matmul(Yu,adjTdTdadjYu) 
 YuadjTuTuadjYu = Matmul(Yu,adjTuTuadjYu) 
 adjy2me92y2adjy2 = Matmul(adjy2,me92y2adjy2) 
 adjy2y2ml92adjy2 = Matmul(adjy2,y2ml92adjy2) 
 adjy2y2adjy2me92 = Matmul(adjy2,y2adjy2me92) 
 adjy2y2adjy2y2 = Matmul(adjy2,y2adjy2y2) 
Forall(i2=1:2)  adjy2y2adjy2y2(i2,i2) =  Real(adjy2y2adjy2y2(i2,i2),dp) 
 adjy2y2adjy2Ty2 = Matmul(adjy2,y2adjy2Ty2) 
 adjy2y2adjTy2Ty2 = Matmul(adjy2,y2adjTy2Ty2) 
 adjy2Ty2adjy2y2 = Matmul(adjy2,Ty2adjy2y2) 
 adjy2Ty2adjTy2y2 = Matmul(adjy2,Ty2adjTy2y2) 
 adjYdmd2YdadjYd = Matmul(adjYd,md2YdadjYd) 
 adjYdmd2YdadjYu = Matmul(adjYd,md2YdadjYu) 
 adjYdYdmq2adjYd = Matmul(adjYd,Ydmq2adjYd) 
 adjYdYdmq2adjYu = Matmul(adjYd,Ydmq2adjYu) 
 adjYdYdadjYdmd2 = Matmul(adjYd,YdadjYdmd2) 
 adjYdYdadjYdYd = Matmul(adjYd,YdadjYdYd) 
Forall(i2=1:3)  adjYdYdadjYdYd(i2,i2) =  Real(adjYdYdadjYdYd(i2,i2),dp) 
 adjYdYdadjYdTd = Matmul(adjYd,YdadjYdTd) 
 adjYdYdadjYumu2 = Matmul(adjYd,YdadjYumu2) 
 adjYdYdadjYuYu = Matmul(adjYd,YdadjYuYu) 
 adjYdYdadjYuTu = Matmul(adjYd,YdadjYuTu) 
 adjYdYdadjTdTd = Matmul(adjYd,YdadjTdTd) 
 adjYdTdadjYdYd = Matmul(adjYd,TdadjYdYd) 
 adjYdTdadjYuYu = Matmul(adjYd,TdadjYuYu) 
 adjYdTdadjTdYd = Matmul(adjYd,TdadjTdYd) 
 adjYumu2YuadjYd = Matmul(adjYu,mu2YuadjYd) 
 adjYumu2YuadjYu = Matmul(adjYu,mu2YuadjYu) 
 adjYuYumq2adjYd = Matmul(adjYu,Yumq2adjYd) 
 adjYuYumq2adjYu = Matmul(adjYu,Yumq2adjYu) 
 adjYuYuadjYdmd2 = Matmul(adjYu,YuadjYdmd2) 
 adjYuYuadjYdYd = Matmul(adjYu,YuadjYdYd) 
 adjYuYuadjYdTd = Matmul(adjYu,YuadjYdTd) 
 adjYuYuadjYumu2 = Matmul(adjYu,YuadjYumu2) 
 adjYuYuadjYuYu = Matmul(adjYu,YuadjYuYu) 
Forall(i2=1:3)  adjYuYuadjYuYu(i2,i2) =  Real(adjYuYuadjYuYu(i2,i2),dp) 
 adjYuYuadjYuTu = Matmul(adjYu,YuadjYuTu) 
 adjYuYuadjTuTu = Matmul(adjYu,YuadjTuTu) 
 adjYuTuadjYdYd = Matmul(adjYu,TuadjYdYd) 
 adjYuTuadjYuYu = Matmul(adjYu,TuadjYuYu) 
 adjYuTuadjTuYu = Matmul(adjYu,TuadjTuYu) 
 adjTy2y2adjy2Ty2 = Matmul(adjTy2,y2adjy2Ty2) 
 adjTy2Ty2adjy2y2 = Matmul(adjTy2,Ty2adjy2y2) 
 adjTdYdadjYdTd = Matmul(adjTd,YdadjYdTd) 
 adjTdTdadjYdYd = Matmul(adjTd,TdadjYdYd) 
 adjTuYuadjYuTu = Matmul(adjTu,YuadjYuTu) 
 adjTuTuadjYuYu = Matmul(adjTu,TuadjYuYu) 
 Ty2adjy2y2adjTy2 = Matmul(Ty2,adjy2y2adjTy2) 
 Ty2adjTy2y2adjy2 = Matmul(Ty2,adjTy2y2adjy2) 
 TdadjYdYdadjTd = Matmul(Td,adjYdYdadjTd) 
 TdadjYuYuadjTd = Matmul(Td,adjYuYuadjTd) 
 TdadjTdYdadjYd = Matmul(Td,adjTdYdadjYd) 
 TdadjTuYuadjYd = Matmul(Td,adjTuYuadjYd) 
 TuadjYdYdadjTu = Matmul(Tu,adjYdYdadjTu) 
 TuadjYuYuadjTu = Matmul(Tu,adjYuYuadjTu) 
 TuadjTdYdadjYu = Matmul(Tu,adjTdYdadjYu) 
 TuadjTuYuadjYu = Matmul(Tu,adjTuYuadjYu) 
 md2YdadjYdYdadjYd = Matmul(md2,YdadjYdYdadjYd) 
 md2YdadjYuYuadjYd = Matmul(md2,YdadjYuYuadjYd) 
 me92y2adjy2y2adjy2 = Matmul(me92,y2adjy2y2adjy2) 
 ml92adjy2y2adjy2y2 = Matmul(ml92,adjy2y2adjy2y2) 
 mq2adjYdYdadjYdYd = Matmul(mq2,adjYdYdadjYdYd) 
 mq2adjYdYdadjYuYu = Matmul(mq2,adjYdYdadjYuYu) 
 mq2adjYuYuadjYdYd = Matmul(mq2,adjYuYuadjYdYd) 
 mq2adjYuYuadjYuYu = Matmul(mq2,adjYuYuadjYuYu) 
 mu2YuadjYdYdadjYu = Matmul(mu2,YuadjYdYdadjYu) 
 mu2YuadjYuYuadjYu = Matmul(mu2,YuadjYuYuadjYu) 
 y2ml92adjy2y2adjy2 = Matmul(y2,ml92adjy2y2adjy2) 
 y2adjy2me92y2adjy2 = Matmul(y2,adjy2me92y2adjy2) 
Forall(i2=1:2)  y2adjy2me92y2adjy2(i2,i2) =  Real(y2adjy2me92y2adjy2(i2,i2),dp) 
 y2adjy2y2ml92adjy2 = Matmul(y2,adjy2y2ml92adjy2) 
 y2adjy2y2adjy2me92 = Matmul(y2,adjy2y2adjy2me92) 
 y2adjy2y2adjy2y2 = Matmul(y2,adjy2y2adjy2y2) 
 y2adjy2y2adjy2Ty2 = Matmul(y2,adjy2y2adjy2Ty2) 
 y2adjy2Ty2adjy2y2 = Matmul(y2,adjy2Ty2adjy2y2) 
 Ydmq2adjYdYdadjYd = Matmul(Yd,mq2adjYdYdadjYd) 
 Ydmq2adjYuYuadjYd = Matmul(Yd,mq2adjYuYuadjYd) 
 YdadjYdmd2YdadjYd = Matmul(Yd,adjYdmd2YdadjYd) 
Forall(i2=1:3)  YdadjYdmd2YdadjYd(i2,i2) =  Real(YdadjYdmd2YdadjYd(i2,i2),dp) 
 YdadjYdYdmq2adjYd = Matmul(Yd,adjYdYdmq2adjYd) 
 YdadjYdYdadjYdmd2 = Matmul(Yd,adjYdYdadjYdmd2) 
 YdadjYdYdadjYdYd = Matmul(Yd,adjYdYdadjYdYd) 
 YdadjYdYdadjYdTd = Matmul(Yd,adjYdYdadjYdTd) 
 YdadjYdTdadjYdYd = Matmul(Yd,adjYdTdadjYdYd) 
 YdadjYumu2YuadjYd = Matmul(Yd,adjYumu2YuadjYd) 
Forall(i2=1:3)  YdadjYumu2YuadjYd(i2,i2) =  Real(YdadjYumu2YuadjYd(i2,i2),dp) 
 YdadjYuYumq2adjYd = Matmul(Yd,adjYuYumq2adjYd) 
 YdadjYuYuadjYdmd2 = Matmul(Yd,adjYuYuadjYdmd2) 
 YdadjYuYuadjYdYd = Matmul(Yd,adjYuYuadjYdYd) 
 YdadjYuYuadjYdTd = Matmul(Yd,adjYuYuadjYdTd) 
 YdadjYuYuadjYuYu = Matmul(Yd,adjYuYuadjYuYu) 
 YdadjYuYuadjYuTu = Matmul(Yd,adjYuYuadjYuTu) 
 YdadjYuTuadjYdYd = Matmul(Yd,adjYuTuadjYdYd) 
 YdadjYuTuadjYuYu = Matmul(Yd,adjYuTuadjYuYu) 
 Yumq2adjYdYdadjYu = Matmul(Yu,mq2adjYdYdadjYu) 
 Yumq2adjYuYuadjYu = Matmul(Yu,mq2adjYuYuadjYu) 
 YuadjYdmd2YdadjYu = Matmul(Yu,adjYdmd2YdadjYu) 
Forall(i2=1:3)  YuadjYdmd2YdadjYu(i2,i2) =  Real(YuadjYdmd2YdadjYu(i2,i2),dp) 
 YuadjYdYdmq2adjYu = Matmul(Yu,adjYdYdmq2adjYu) 
 YuadjYdYdadjYdYd = Matmul(Yu,adjYdYdadjYdYd) 
 YuadjYdYdadjYdTd = Matmul(Yu,adjYdYdadjYdTd) 
 YuadjYdYdadjYumu2 = Matmul(Yu,adjYdYdadjYumu2) 
 YuadjYdYdadjYuYu = Matmul(Yu,adjYdYdadjYuYu) 
 YuadjYdYdadjYuTu = Matmul(Yu,adjYdYdadjYuTu) 
 YuadjYdTdadjYdYd = Matmul(Yu,adjYdTdadjYdYd) 
 YuadjYdTdadjYuYu = Matmul(Yu,adjYdTdadjYuYu) 
 YuadjYumu2YuadjYu = Matmul(Yu,adjYumu2YuadjYu) 
Forall(i2=1:3)  YuadjYumu2YuadjYu(i2,i2) =  Real(YuadjYumu2YuadjYu(i2,i2),dp) 
 YuadjYuYumq2adjYu = Matmul(Yu,adjYuYumq2adjYu) 
 YuadjYuYuadjYumu2 = Matmul(Yu,adjYuYuadjYumu2) 
 YuadjYuYuadjYuYu = Matmul(Yu,adjYuYuadjYuYu) 
 YuadjYuYuadjYuTu = Matmul(Yu,adjYuYuadjYuTu) 
 YuadjYuTuadjYuYu = Matmul(Yu,adjYuTuadjYuYu) 
 adjy2me92y2adjy2y2 = Matmul(adjy2,me92y2adjy2y2) 
 adjy2y2ml92adjy2y2 = Matmul(adjy2,y2ml92adjy2y2) 
Forall(i2=1:2)  adjy2y2ml92adjy2y2(i2,i2) =  Real(adjy2y2ml92adjy2y2(i2,i2),dp) 
 adjy2y2adjy2me92y2 = Matmul(adjy2,y2adjy2me92y2) 
 adjy2y2adjy2y2ml92 = Matmul(adjy2,y2adjy2y2ml92) 
 adjYdmd2YdadjYdYd = Matmul(adjYd,md2YdadjYdYd) 
 adjYdYdmq2adjYdYd = Matmul(adjYd,Ydmq2adjYdYd) 
Forall(i2=1:3)  adjYdYdmq2adjYdYd(i2,i2) =  Real(adjYdYdmq2adjYdYd(i2,i2),dp) 
 adjYdYdadjYdmd2Yd = Matmul(adjYd,YdadjYdmd2Yd) 
 adjYdYdadjYdYdmq2 = Matmul(adjYd,YdadjYdYdmq2) 
 adjYumu2YuadjYuYu = Matmul(adjYu,mu2YuadjYuYu) 
 adjYuYumq2adjYuYu = Matmul(adjYu,Yumq2adjYuYu) 
Forall(i2=1:3)  adjYuYumq2adjYuYu(i2,i2) =  Real(adjYuYumq2adjYuYu(i2,i2),dp) 
 adjYuYuadjYumu2Yu = Matmul(adjYu,YuadjYumu2Yu) 
 adjYuYuadjYuYumq2 = Matmul(adjYu,YuadjYuYumq2) 
 Ty2adjy2y2adjy2y2 = Matmul(Ty2,adjy2y2adjy2y2) 
 TdadjYdYdadjYdYd = Matmul(Td,adjYdYdadjYdYd) 
 TdadjYuYuadjYdYd = Matmul(Td,adjYuYuadjYdYd) 
 TdadjYuYuadjYuYu = Matmul(Td,adjYuYuadjYuYu) 
 TuadjYdYdadjYdYd = Matmul(Tu,adjYdYdadjYdYd) 
 TuadjYdYdadjYuYu = Matmul(Tu,adjYdYdadjYuYu) 
 TuadjYuYuadjYuYu = Matmul(Tu,adjYuYuadjYuYu) 
 TrCTy2Tpy2 = cTrace(CTy2Tpy2)
 TrCTdTpYd = cTrace(CTdTpYd)
 TrCTuTpYu = cTrace(CTuTpYu)
 Try2adjy2Cme92 = cTrace(y2adjy2Cme92)
 Try2Cml92adjy2 = Real(cTrace(y2Cml92adjy2),dp)  
 TrYdadjYdCmd2 = cTrace(YdadjYdCmd2)
 TrYdCmq2adjYd = Real(cTrace(YdCmq2adjYd),dp)  
 TrYuadjYuCmu2 = cTrace(YuadjYuCmu2)
 TrYuCmq2adjYu = Real(cTrace(YuCmq2adjYu),dp)  
 Try2adjy2y2adjy2 = Real(cTrace(y2adjy2y2adjy2),dp)  
 Try2adjy2Ty2adjy2 = cTrace(y2adjy2Ty2adjy2)
 Try2adjy2Ty2adjTy2 = cTrace(y2adjy2Ty2adjTy2)
 Try2adjTy2Ty2adjy2 = cTrace(y2adjTy2Ty2adjy2)
 TrYdadjYdYdadjYd = Real(cTrace(YdadjYdYdadjYd),dp)  
 TrYdadjYdTdadjYd = cTrace(YdadjYdTdadjYd)
 TrYdadjYdTdadjTd = cTrace(YdadjYdTdadjTd)
 TrYdadjYuYuadjYd = Real(cTrace(YdadjYuYuadjYd),dp)  
 TrYdadjYuTuadjYd = cTrace(YdadjYuTuadjYd)
 TrYdadjYuTuadjTd = cTrace(YdadjYuTuadjTd)
 TrYdadjTdTdadjYd = cTrace(YdadjTdTdadjYd)
 TrYdadjTuTuadjYd = cTrace(YdadjTuTuadjYd)
 TrYuadjYdTdadjYu = cTrace(YuadjYdTdadjYu)
 TrYuadjYdTdadjTu = cTrace(YuadjYdTdadjTu)
 TrYuadjYuYuadjYu = Real(cTrace(YuadjYuYuadjYu),dp)  
 TrYuadjYuTuadjYu = cTrace(YuadjYuTuadjYu)
 TrYuadjYuTuadjTu = cTrace(YuadjYuTuadjTu)
 TrYuadjTdTdadjYu = cTrace(YuadjTdTdadjYu)
 TrYuadjTuTuadjYu = cTrace(YuadjTuTuadjYu)
 Trmd2YdadjYdYdadjYd = cTrace(md2YdadjYdYdadjYd)
 Trmd2YdadjYuYuadjYd = cTrace(md2YdadjYuYuadjYd)
 Trme92y2adjy2y2adjy2 = cTrace(me92y2adjy2y2adjy2)
 Trml92adjy2y2adjy2y2 = cTrace(ml92adjy2y2adjy2y2)
 Trmq2adjYdYdadjYdYd = cTrace(mq2adjYdYdadjYdYd)
 Trmq2adjYdYdadjYuYu = cTrace(mq2adjYdYdadjYuYu)
 Trmq2adjYuYuadjYdYd = cTrace(mq2adjYuYuadjYdYd)
 Trmq2adjYuYuadjYuYu = cTrace(mq2adjYuYuadjYuYu)
 Trmu2YuadjYdYdadjYu = cTrace(mu2YuadjYdYdadjYu)
 Trmu2YuadjYuYuadjYu = cTrace(mu2YuadjYuYuadjYu)
 sqrt15 =sqrt(15._dp) 
 g1p4 =g1**4 
 g2p4 =g2**4 
 g3p4 =g3**4 
 gpp4 =gp**4 
 Qdp4 =Qd**4 
 Qe4p3 =Qe4**3 
 Qe4p4 =Qe4**4 
 Qe9p3 =Qe9**3 
 Qe9p4 =Qe9**4 
 QHdp3 =QHd**3 
 QHdp4 =QHd**4 
 QHup3 =QHu**3 
 QHup4 =QHu**4 
 Ql4p3 =Ql4**3 
 Ql4p4 =Ql4**4 
 Ql9p3 =Ql9**3 
 Ql9p4 =Ql9**4 
 Qqp3 =Qq**3 
 Qqp4 =Qq**4 
 Qsp3 =Qs**3 
 Qsp4 =Qs**4 
 Qup3 =Qu**3 
 Qup4 =Qu**4 
 Xip2 =Xi**2 
 lamp4 =lam**4 
 lamp5 =lam**5 
 Cy1p2 =Conjg(y1)**2 
End If 
 
 
Tr1(1) = g1*sqrt3ov5*(me42 - mHd2 + mHu2 - ml42 + Trmd2 + Trme92 - Trml92 +           & 
&  Trmq2 - 2._dp*(Trmu2))

Tr1(4) = gp*(me42*Qe4 + 2*mHd2*QHd + 2*mHu2*QHu + 2*ml42*Ql4 + ms2*Qs +               & 
&  3*Qd*Trmd2 + Qe9*Trme92 + 2*Ql9*Trml92 + 6*Qq*Trmq2 + 3*Qu*Trmu2)

If (TwoLoopRGE) Then 
Tr2U1(1, 1) = (g1p2*(6._dp*(me42) + 3._dp*(mHd2) + 3._dp*(mHu2) + 3._dp*(ml42)        & 
&  + 2._dp*(Trmd2) + 6._dp*(Trme92) + 3._dp*(Trml92) + Trmq2 + 8._dp*(Trmu2)))/10._dp

Tr2U1(1, 4) = g1*gp*sqrt3ov5*(me42*Qe4 - mHd2*QHd + mHu2*QHu - ml42*Ql4 +             & 
&  Qd*Trmd2 + Qe9*Trme92 - Ql9*Trml92 + Qq*Trmq2 - 2*Qu*Trmu2)

Tr3(1) = (g1*ooSqrt15*(36*g1p2*me42 - 9*g1p2*mHd2 - 45*g2p2*mHd2 + 30*lamp2*mHd2 +    & 
&  9*g1p2*mHu2 + 45*g2p2*mHu2 - 30*lamp2*mHu2 - 9*g1p2*ml42 - 45*g2p2*ml42 +             & 
&  30*Absy1*(-2._dp*(me42) + mHd2 + ml42) + 60*gpp2*me42*Qe4p2 - 60*gpp2*mHd2*QHdp2 +    & 
&  60*gpp2*mHu2*QHup2 - 60*gpp2*ml42*Ql4p2 + 4*(g1p2 + 20._dp*(g3p2) + 15*gpp2*Qdp2)     & 
& *Trmd2 + 36*g1p2*Trme92 + 60*gpp2*Qe9p2*Trme92 - 9*g1p2*Trml92 - 45*g2p2*Trml92 -      & 
&  60*gpp2*Ql9p2*Trml92 + g1p2*Trmq2 + 45*g2p2*Trmq2 + 80*g3p2*Trmq2 + 60*gpp2*Qqp2*Trmq2 -& 
&  32*g1p2*Trmu2 - 160*g3p2*Trmu2 - 120*gpp2*Qup2*Trmu2 + 30*mHd2*Try2adjy2 -            & 
&  60._dp*(Try2adjy2Cme92) + 30._dp*(Try2Cml92adjy2) + 90*mHd2*TrYdadjYd -               & 
&  60._dp*(TrYdadjYdCmd2) - 30._dp*(TrYdCmq2adjYd) - 90*mHu2*TrYuadjYu + 120._dp*(TrYuadjYuCmu2)& 
&  - 30._dp*(TrYuCmq2adjYu)))/20._dp

Tr2(2) = (mHd2 + mHu2 + ml42 + Trml92 + 3._dp*(Trmq2))/2._dp

Tr2(3) = (Trmd2 + 2._dp*(Trmq2) + Trmu2)/2._dp

Tr2U1(4, 1) = g1*gp*sqrt3ov5*(me42*Qe4 - mHd2*QHd + mHu2*QHu - ml42*Ql4 +             & 
&  Qd*Trmd2 + Qe9*Trme92 - Ql9*Trml92 + Qq*Trmq2 - 2*Qu*Trmu2)

Tr2U1(4, 4) = gpp2*(me42*Qe4p2 + 2*mHd2*QHdp2 + 2*mHu2*QHup2 + 2*ml42*Ql4p2 +         & 
&  ms2*Qsp2 + 3*Qdp2*Trmd2 + Qe9p2*Trme92 + 2*Ql9p2*Trml92 + 6*Qqp2*Trmq2 +              & 
&  3*Qup2*Trmu2)

Tr3(4) = (gp*(6*g1p2*me42*Qe4 + 10*gpp2*me42*Qe4p3 + 3*g1p2*mHd2*QHd + 15*g2p2*mHd2*QHd -& 
&  10*lamp2*mHd2*QHd + 20*gpp2*mHd2*QHdp3 + 3*g1p2*mHu2*QHu + 15*g2p2*mHu2*QHu -         & 
&  10*lamp2*mHu2*QHu + 20*gpp2*mHu2*QHup3 + 3*g1p2*ml42*Ql4 + 15*g2p2*ml42*Ql4 -         & 
&  10*Absy1*(me42*Qe4 + mHd2*QHd + ml42*Ql4) + 20*gpp2*ml42*Ql4p3 - 10*lamp2*ms2*Qs +    & 
&  10*gpp2*ms2*Qsp3 + 2*Qd*(g1p2 + 20._dp*(g3p2) + 15*gpp2*Qdp2)*Trmd2 + 6*g1p2*Qe9*Trme92 +& 
&  10*gpp2*Qe9p3*Trme92 + 3*g1p2*Ql9*Trml92 + 15*g2p2*Ql9*Trml92 + 20*gpp2*Ql9p3*Trml92 +& 
&  g1p2*Qq*Trmq2 + 45*g2p2*Qq*Trmq2 + 80*g3p2*Qq*Trmq2 + 60*gpp2*Qqp3*Trmq2 +            & 
&  8*g1p2*Qu*Trmu2 + 40*g3p2*Qu*Trmu2 + 30*gpp2*Qup3*Trmu2 - 10*mHd2*QHd*Try2adjy2 -     & 
&  10*Qe9*Try2adjy2Cme92 - 10*Ql9*Try2Cml92adjy2 - 30*mHd2*QHd*TrYdadjYd -               & 
&  30*Qd*TrYdadjYdCmd2 - 30*Qq*TrYdCmq2adjYd - 30*mHu2*QHu*TrYuadjYu - 30*Qu*TrYuadjYuCmu2 -& 
&  30*Qq*TrYuCmq2adjYu))/10._dp

End If 
 
 
!-------------------- 
! g1 
!-------------------- 
 
betag11  = 33._dp*(g1p3)/5._dp

 
 
If (TwoLoopRGE) Then 
betag12 = (g1p3*(-90._dp*(Absy1) + 199._dp*(g1p2) + 135._dp*(g2p2) + 440._dp*(g3p2) -           & 
&  30._dp*(lamp2) + 60*gpp2*Qdp2 + 60*gpp2*Qe4p2 + 120*gpp2*Qe9p2 + 30*gpp2*QHdp2 +      & 
&  30*gpp2*QHup2 + 30*gpp2*Ql4p2 + 60*gpp2*Ql9p2 + 30*gpp2*Qqp2 + 240*gpp2*Qup2 -        & 
&  90._dp*(Try2adjy2) - 70._dp*(TrYdadjYd) - 130._dp*(TrYuadjYu)))/25._dp

 
Dg1 = oo16pi2*( betag11 + oo16pi2 * betag12 ) 

 
Else 
Dg1 = oo16pi2* betag11 
End If 
 
 
!-------------------- 
! g2 
!-------------------- 
 
betag21  = g2p3

 
 
If (TwoLoopRGE) Then 
betag22 = (g2p3*(-10._dp*(Absy1) + 9._dp*(g1p2) + 125._dp*(g2p2) + 120._dp*(g3p2) -             & 
&  10._dp*(lamp2) + 10*gpp2*QHdp2 + 10*gpp2*QHup2 + 10*gpp2*Ql4p2 + 20*gpp2*Ql9p2 +      & 
&  90*gpp2*Qqp2 - 10._dp*(Try2adjy2) - 30._dp*(TrYdadjYd) - 30._dp*(TrYuadjYu)))/5._dp

 
Dg2 = oo16pi2*( betag21 + oo16pi2 * betag22 ) 

 
Else 
Dg2 = oo16pi2* betag21 
End If 
 
 
!-------------------- 
! g3 
!-------------------- 
 
betag31  = -3._dp*(g3p3)

 
 
If (TwoLoopRGE) Then 
betag32 = (g3p3*(11._dp*(g1p2) + 45._dp*(g2p2) + 70._dp*(g3p2) + 30*gpp2*Qdp2 + 60*gpp2*Qqp2 +  & 
&  30*gpp2*Qup2 - 20._dp*(TrYdadjYd) - 20._dp*(TrYuadjYu)))/5._dp

 
Dg3 = oo16pi2*( betag31 + oo16pi2 * betag32 ) 

 
Else 
Dg3 = oo16pi2* betag31 
End If 
 
 
!-------------------- 
! gp 
!-------------------- 
 
betagp1  = gpp3*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2) +               & 
&  2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2))

 
 
If (TwoLoopRGE) Then 
betagp2 = (2*gpp3*(6*g1p2*Qdp2 + 120*g3p2*Qdp2 + 90*gpp2*Qdp4 + 6*g1p2*Qe4p2 + 10*gpp2*Qe4p4 +  & 
&  12*g1p2*Qe9p2 + 20*gpp2*Qe9p4 + 3*g1p2*QHdp2 + 15*g2p2*QHdp2 - 10*lamp2*QHdp2 +       & 
&  20*gpp2*QHdp4 + 3*g1p2*QHup2 + 15*g2p2*QHup2 - 10*lamp2*QHup2 + 20*gpp2*QHup4 +       & 
&  3*g1p2*Ql4p2 + 15*g2p2*Ql4p2 - 10*Absy1*(Qe4p2 + QHdp2 + Ql4p2) + 20*gpp2*Ql4p4 +     & 
&  6*g1p2*Ql9p2 + 30*g2p2*Ql9p2 + 40*gpp2*Ql9p4 + 3*g1p2*Qqp2 + 135*g2p2*Qqp2 +          & 
&  240*g3p2*Qqp2 + 180*gpp2*Qqp4 - 10*lamp2*Qsp2 + 10*gpp2*Qsp4 + 24*g1p2*Qup2 +         & 
&  120*g3p2*Qup2 + 90*gpp2*Qup4 - 10*(Qe9p2 + QHdp2 + Ql9p2)*Try2adjy2 - 30*Qdp2*TrYdadjYd -& 
&  30*QHdp2*TrYdadjYd - 30*Qqp2*TrYdadjYd - 30*QHup2*TrYuadjYu - 30*Qqp2*TrYuadjYu -     & 
&  30*Qup2*TrYuadjYu))/5._dp

 
Dgp = oo16pi2*( betagp1 + oo16pi2 * betagp2 ) 

 
Else 
Dgp = oo16pi2* betagp1 
End If 
 
 
!-------------------- 
! Yd 
!-------------------- 
 
betaYd1  = (Absy1 - 7._dp*(g1p2)/15._dp - 3._dp*(g2p2) - 16._dp*(g3p2)/3._dp +        & 
&  lamp2 - 2*gpp2*Qdp2 - 2*gpp2*QHdp2 - 2*gpp2*Qqp2 + Try2adjy2 + 3._dp*(TrYdadjYd))     & 
& *Yd + 3._dp*(YdadjYdYd) + YdadjYuYu

 
 
If (TwoLoopRGE) Then 
betaYd2 = (287._dp*(g1p4)/90._dp + g1p2*g2p2 + 15._dp*(g2p4)/2._dp + (8*g1p2*g3p2)/9._dp +      & 
&  8*g2p2*g3p2 - 16._dp*(g3p4)/9._dp - 3._dp*(lamp4) + (44*g1p2*gpp2*Qdp2)/15._dp +      & 
&  (32*g3p2*gpp2*Qdp2)/3._dp + 22*gpp4*Qdp4 + (4*g1p2*gpp2*Qd*Qe4)/5._dp +               & 
&  2*gpp4*Qdp2*Qe4p2 + (8*g1p2*gpp2*Qd*Qe9)/5._dp + 4*gpp4*Qdp2*Qe9p2 - (22*g1p2*gpp2*Qd*QHd)/5._dp -& 
&  (6*g1p2*gpp2*Qe4*QHd)/5._dp - (12*g1p2*gpp2*Qe9*QHd)/5._dp + (12*g1p2*gpp2*QHdp2)/5._dp +& 
&  6*g2p2*gpp2*QHdp2 - 2*gpp2*lamp2*QHdp2 + 22*gpp4*Qdp2*QHdp2 + 2*gpp4*Qe4p2*QHdp2 +    & 
&  4*gpp4*Qe9p2*QHdp2 + 8*gpp4*QHdp4 + (4*g1p2*gpp2*Qd*QHu)/5._dp - (6*g1p2*gpp2*QHd*QHu)/5._dp +& 
&  2*gpp2*lamp2*QHup2 + 4*gpp4*Qdp2*QHup2 + 4*gpp4*QHdp2*QHup2 - (4*g1p2*gpp2*Qd*Ql4)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql4)/5._dp + 4*gpp4*Qdp2*Ql4p2 + 4*gpp4*QHdp2*Ql4p2 + (2*Absy1*(3._dp*(g1p2) +& 
&  5*gpp2*(Qe4p2 - QHdp2 + Ql4p2)))/5._dp - (8*g1p2*gpp2*Qd*Ql9)/5._dp + (12*g1p2*gpp2*QHd*Ql9)/5._dp +& 
&  8*gpp4*Qdp2*Ql9p2 + 8*gpp4*QHdp2*Ql9p2 + (18*g1p2*gpp2*Qd*Qq)/5._dp + (2*g1p2*gpp2*Qe4*Qq)/5._dp +& 
&  (4*g1p2*gpp2*Qe9*Qq)/5._dp - 4*g1p2*gpp2*QHd*Qq + (2*g1p2*gpp2*QHu*Qq)/5._dp -        & 
&  (2*g1p2*gpp2*Ql4*Qq)/5._dp - (4*g1p2*gpp2*Ql9*Qq)/5._dp + (4*g1p2*gpp2*Qqp2)/3._dp +  & 
&  6*g2p2*gpp2*Qqp2 + (32*g3p2*gpp2*Qqp2)/3._dp + 54*gpp4*Qdp2*Qqp2 + 2*gpp4*Qe4p2*Qqp2 +& 
&  4*gpp4*Qe9p2*Qqp2 + 40*gpp4*QHdp2*Qqp2 + 4*gpp4*QHup2*Qqp2 + 4*gpp4*Ql4p2*Qqp2 +      & 
&  8*gpp4*Ql9p2*Qqp2 + 40*gpp4*Qqp4 + 2*gpp2*lamp2*Qsp2 + 2*gpp4*Qdp2*Qsp2 +             & 
&  2*gpp4*QHdp2*Qsp2 + 2*gpp4*Qqp2*Qsp2 - (24*g1p2*gpp2*Qd*Qu)/5._dp + (36*g1p2*gpp2*QHd*Qu)/5._dp -& 
&  (12*g1p2*gpp2*Qq*Qu)/5._dp + 18*gpp4*Qdp2*Qup2 + 18*gpp4*QHdp2*Qup2 + 18*gpp4*Qqp2*Qup2 +& 
&  (2*(3._dp*(g1p2) + 5*gpp2*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2)/5._dp - 3._dp*(Try2adjy2y2adjy2) -& 
&  (2*g1p2*TrYdadjYd)/5._dp + 16*g3p2*TrYdadjYd + 6*gpp2*Qdp2*TrYdadjYd - 6*gpp2*QHdp2*TrYdadjYd +& 
&  6*gpp2*Qqp2*TrYdadjYd - 9._dp*(TrYdadjYdYdadjYd) - 3._dp*(TrYdadjYuYuadjYd) -         & 
&  3*lamp2*TrYuadjYu - 3*Cy1p2*y1p2)*Yd + (-3._dp*(Absy1) + 4._dp*(g1p2)/5._dp +         & 
&  6._dp*(g2p2) - 3._dp*(lamp2) - 2*gpp2*Qdp2 + 6*gpp2*QHdp2 + 2*gpp2*Qqp2 -             & 
&  3._dp*(Try2adjy2) - 9._dp*(TrYdadjYd))*YdadjYdYd - 4._dp*(YdadjYdYdadjYdYd)  
betaYd2 =  betaYd2+ (4*g1p2*YdadjYuYu)/5._dp - lamp2*YdadjYuYu + 2*gpp2*QHup2*YdadjYuYu - 2*gpp2*Qqp2*YdadjYuYu +& 
&  2*gpp2*Qup2*YdadjYuYu - 3*TrYuadjYu*YdadjYuYu - 2._dp*(YdadjYuYuadjYdYd) -            & 
&  2._dp*(YdadjYuYuadjYuYu)

 
DYd = oo16pi2*( betaYd1 + oo16pi2 * betaYd2 ) 

 
Else 
DYd = oo16pi2* betaYd1 
End If 
 
 
Call Chop(DYd) 

!-------------------- 
! y1 
!-------------------- 
 
betay11  = (-9*g1p2*y1)/5._dp - 3*g2p2*y1 + lamp2*y1 - 2*gpp2*Qe4p2*y1 -              & 
&  2*gpp2*QHdp2*y1 - 2*gpp2*Ql4p2*y1 + Try2adjy2*y1 + 3*TrYdadjYd*y1 + 4*y1p2*Conjg(y1)

 
 
If (TwoLoopRGE) Then 
betay12 = -(y1*(-135._dp*(g1p4) - 18*g1p2*g2p2 - 75._dp*(g2p4) + 30._dp*(lamp4) -               & 
&  72*g1p2*gpp2*Qd*Qe4 - 72*g1p2*gpp2*Qe4p2 - 180*gpp4*Qdp2*Qe4p2 - 60*gpp4*Qe4p4 -      & 
&  48*g1p2*gpp2*Qe4*Qe9 - 40*gpp4*Qe4p2*Qe9p2 + 36*g1p2*gpp2*Qd*QHd + 36*g1p2*gpp2*Qe4*QHd +& 
&  24*g1p2*gpp2*Qe9*QHd - 24*g1p2*gpp2*QHdp2 - 60*g2p2*gpp2*QHdp2 + 20*gpp2*lamp2*QHdp2 -& 
&  180*gpp4*Qdp2*QHdp2 - 60*gpp4*Qe4p2*QHdp2 - 40*gpp4*Qe9p2*QHdp2 - 80*gpp4*QHdp4 -     & 
&  24*g1p2*gpp2*Qe4*QHu + 12*g1p2*gpp2*QHd*QHu - 20*gpp2*lamp2*QHup2 - 40*gpp4*Qe4p2*QHup2 -& 
&  40*gpp4*QHdp2*QHup2 + 36*g1p2*gpp2*Qd*Ql4 + 36*g1p2*gpp2*Qe4*Ql4 + 24*g1p2*gpp2*Qe9*Ql4 -& 
&  24*g1p2*gpp2*QHd*Ql4 + 12*g1p2*gpp2*QHu*Ql4 - 24*g1p2*gpp2*Ql4p2 - 60*g2p2*gpp2*Ql4p2 -& 
&  180*gpp4*Qdp2*Ql4p2 - 60*gpp4*Qe4p2*Ql4p2 - 40*gpp4*Qe9p2*Ql4p2 - 80*gpp4*QHdp2*Ql4p2 -& 
&  40*gpp4*QHup2*Ql4p2 - 80*gpp4*Ql4p4 + 48*g1p2*gpp2*Qe4*Ql9 - 24*g1p2*gpp2*QHd*Ql9 -   & 
&  24*g1p2*gpp2*Ql4*Ql9 - 80*gpp4*Qe4p2*Ql9p2 - 80*gpp4*QHdp2*Ql9p2 - 80*gpp4*Ql4p2*Ql9p2 -& 
&  72*g1p2*gpp2*Qe4*Qq + 36*g1p2*gpp2*QHd*Qq + 36*g1p2*gpp2*Ql4*Qq - 360*gpp4*Qe4p2*Qqp2 -& 
&  360*gpp4*QHdp2*Qqp2 - 360*gpp4*Ql4p2*Qqp2 - 20*gpp2*lamp2*Qsp2 - 20*gpp4*Qe4p2*Qsp2 - & 
&  20*gpp4*QHdp2*Qsp2 - 20*gpp4*Ql4p2*Qsp2 + 144*g1p2*gpp2*Qe4*Qu - 72*g1p2*gpp2*QHd*Qu -& 
&  72*g1p2*gpp2*Ql4*Qu - 180*gpp4*Qe4p2*Qup2 - 180*gpp4*QHdp2*Qup2 - 180*gpp4*Ql4p2*Qup2 -& 
&  4*(3._dp*(g1p2) + 5*gpp2*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2 + 30._dp*(Try2adjy2y2adjy2) -& 
&  2*Absy1*(6._dp*(g1p2) + 30._dp*(g2p2) - 15._dp*(lamp2) + 20*gpp2*QHdp2 +              & 
&  20*gpp2*Ql4p2 - 15._dp*(Try2adjy2) - 45._dp*(TrYdadjYd)) + 4*g1p2*TrYdadjYd -         & 
&  160*g3p2*TrYdadjYd - 60*gpp2*Qdp2*TrYdadjYd + 60*gpp2*QHdp2*TrYdadjYd -               & 
&  60*gpp2*Qqp2*TrYdadjYd + 90._dp*(TrYdadjYdYdadjYd) + 30._dp*(TrYdadjYuYuadjYd) +      & 
&  30*lamp2*TrYuadjYu + 100*Cy1p2*y1p2))/10._dp

 
Dy1 = oo16pi2*( betay11 + oo16pi2 * betay12 ) 

 
Else 
Dy1 = oo16pi2* betay11 
End If 
 
 
Call Chop(Dy1) 

!-------------------- 
! y2 
!-------------------- 
 
betay21  = (Absy1 - 9._dp*(g1p2)/5._dp - 3._dp*(g2p2) + lamp2 - 2*gpp2*Qe9p2 -        & 
&  2*gpp2*QHdp2 - 2*gpp2*Ql9p2 + Try2adjy2 + 3._dp*(TrYdadjYd))*y2 + 3._dp*(y2adjy2y2)

 
 
If (TwoLoopRGE) Then 
betay22 = ((135._dp*(g1p4) + 18*g1p2*g2p2 + 75._dp*(g2p4) - 30._dp*(lamp4) + 72*g1p2*gpp2*Qd*Qe9 +& 
&  24*g1p2*gpp2*Qe4*Qe9 + 96*g1p2*gpp2*Qe9p2 + 180*gpp4*Qdp2*Qe9p2 + 20*gpp4*Qe4p2*Qe9p2 +& 
&  80*gpp4*Qe9p4 - 36*g1p2*gpp2*Qd*QHd - 12*g1p2*gpp2*Qe4*QHd - 48*g1p2*gpp2*Qe9*QHd +   & 
&  24*g1p2*gpp2*QHdp2 + 60*g2p2*gpp2*QHdp2 - 20*gpp2*lamp2*QHdp2 + 180*gpp4*Qdp2*QHdp2 + & 
&  20*gpp4*Qe4p2*QHdp2 + 80*gpp4*Qe9p2*QHdp2 + 80*gpp4*QHdp4 + 24*g1p2*gpp2*Qe9*QHu -    & 
&  12*g1p2*gpp2*QHd*QHu + 20*gpp2*lamp2*QHup2 + 40*gpp4*Qe9p2*QHup2 + 40*gpp4*QHdp2*QHup2 -& 
&  24*g1p2*gpp2*Qe9*Ql4 + 12*g1p2*gpp2*QHd*Ql4 + 40*gpp4*Qe9p2*Ql4p2 + 40*gpp4*QHdp2*Ql4p2 +& 
&  4*Absy1*(3._dp*(g1p2) + 5*gpp2*(Qe4p2 - QHdp2 + Ql4p2)) - 36*g1p2*gpp2*Qd*Ql9 -       & 
&  12*g1p2*gpp2*Qe4*Ql9 - 72*g1p2*gpp2*Qe9*Ql9 + 36*g1p2*gpp2*QHd*Ql9 - 12*g1p2*gpp2*QHu*Ql9 +& 
&  12*g1p2*gpp2*Ql4*Ql9 + 36*g1p2*gpp2*Ql9p2 + 60*g2p2*gpp2*Ql9p2 + 180*gpp4*Qdp2*Ql9p2 +& 
&  20*gpp4*Qe4p2*Ql9p2 + 120*gpp4*Qe9p2*Ql9p2 + 120*gpp4*QHdp2*Ql9p2 + 40*gpp4*QHup2*Ql9p2 +& 
&  40*gpp4*Ql4p2*Ql9p2 + 120*gpp4*Ql9p4 + 72*g1p2*gpp2*Qe9*Qq - 36*g1p2*gpp2*QHd*Qq -    & 
&  36*g1p2*gpp2*Ql9*Qq + 360*gpp4*Qe9p2*Qqp2 + 360*gpp4*QHdp2*Qqp2 + 360*gpp4*Ql9p2*Qqp2 +& 
&  20*gpp2*lamp2*Qsp2 + 20*gpp4*Qe9p2*Qsp2 + 20*gpp4*QHdp2*Qsp2 + 20*gpp4*Ql9p2*Qsp2 -   & 
&  144*g1p2*gpp2*Qe9*Qu + 72*g1p2*gpp2*QHd*Qu + 72*g1p2*gpp2*Ql9*Qu + 180*gpp4*Qe9p2*Qup2 +& 
&  180*gpp4*QHdp2*Qup2 + 180*gpp4*Ql9p2*Qup2 + 4*(3._dp*(g1p2) + 5*gpp2*(Qe9p2 -         & 
&  QHdp2 + Ql9p2))*Try2adjy2 - 30._dp*(Try2adjy2y2adjy2) - 4*g1p2*TrYdadjYd +            & 
&  160*g3p2*TrYdadjYd + 60*gpp2*Qdp2*TrYdadjYd - 60*gpp2*QHdp2*TrYdadjYd +               & 
&  60*gpp2*Qqp2*TrYdadjYd - 90._dp*(TrYdadjYdYdadjYd) - 30._dp*(TrYdadjYuYuadjYd) -      & 
&  30*lamp2*TrYuadjYu - 30*Cy1p2*y1p2)*y2)/10._dp + (-3._dp*(Absy1) + 6._dp*(g2p2) -     & 
&  3._dp*(lamp2) - 2*gpp2*Qe9p2 + 6*gpp2*QHdp2 + 2*gpp2*Ql9p2 - 3._dp*(Try2adjy2) -      & 
&  9._dp*(TrYdadjYd))*y2adjy2y2 - 4._dp*(y2adjy2y2adjy2y2)

 
Dy2 = oo16pi2*( betay21 + oo16pi2 * betay22 ) 

 
Else 
Dy2 = oo16pi2* betay21 
End If 
 
 
Call Chop(Dy2) 

!-------------------- 
! lam 
!-------------------- 
 
betalam1  = 4._dp*(lamp3) + Absy1*lam - (3*g1p2*lam)/5._dp - 3*g2p2*lam -             & 
&  2*gpp2*QHdp2*lam - 2*gpp2*QHup2*lam - 2*gpp2*Qsp2*lam + Try2adjy2*lam +               & 
&  3*TrYdadjYd*lam + 3*TrYuadjYu*lam

 
 
If (TwoLoopRGE) Then 
betalam2 = (6*g1p2*lamp3)/5._dp + 6*g2p2*lamp3 - 10._dp*(lamp5) + 4*gpp2*lamp3*QHdp2 +           & 
&  4*gpp2*lamp3*QHup2 - 9*lamp3*TrYdadjYd - 9*lamp3*TrYuadjYu + (207*g1p4*lam)/50._dp +  & 
&  (9*g1p2*g2p2*lam)/5._dp + (15*g2p4*lam)/2._dp - (18*g1p2*gpp2*Qd*QHd*lam)/5._dp -     & 
&  (6*g1p2*gpp2*Qe4*QHd*lam)/5._dp - (12*g1p2*gpp2*Qe9*QHd*lam)/5._dp + (12*g1p2*gpp2*QHdp2*lam)/5._dp +& 
&  6*g2p2*gpp2*QHdp2*lam + 18*gpp4*Qdp2*QHdp2*lam + 2*gpp4*Qe4p2*QHdp2*lam +             & 
&  4*gpp4*Qe9p2*QHdp2*lam + 8*gpp4*QHdp4*lam + (18*g1p2*gpp2*Qd*QHu*lam)/5._dp +         & 
&  (6*g1p2*gpp2*Qe4*QHu*lam)/5._dp + (12*g1p2*gpp2*Qe9*QHu*lam)/5._dp - (12*g1p2*gpp2*QHd*QHu*lam)/5._dp +& 
&  (12*g1p2*gpp2*QHup2*lam)/5._dp + 6*g2p2*gpp2*QHup2*lam + 18*gpp4*Qdp2*QHup2*lam +     & 
&  2*gpp4*Qe4p2*QHup2*lam + 4*gpp4*Qe9p2*QHup2*lam + 8*gpp4*QHdp2*QHup2*lam +            & 
&  8*gpp4*QHup4*lam + (6*g1p2*gpp2*QHd*Ql4*lam)/5._dp - (6*g1p2*gpp2*QHu*Ql4*lam)/5._dp +& 
&  4*gpp4*QHdp2*Ql4p2*lam + 4*gpp4*QHup2*Ql4p2*lam + (Absy1*(6._dp*(g1p2) -              & 
&  15._dp*(lamp2) + 10*gpp2*(Qe4p2 - QHdp2 + Ql4p2))*lam)/5._dp + (12*g1p2*gpp2*QHd*Ql9*lam)/5._dp -& 
&  (12*g1p2*gpp2*QHu*Ql9*lam)/5._dp + 8*gpp4*QHdp2*Ql9p2*lam + 8*gpp4*QHup2*Ql9p2*lam -  & 
&  (18*g1p2*gpp2*QHd*Qq*lam)/5._dp + (18*g1p2*gpp2*QHu*Qq*lam)/5._dp + 36*gpp4*QHdp2*Qqp2*lam +& 
&  36*gpp4*QHup2*Qqp2*lam + 18*gpp4*Qdp2*Qsp2*lam + 2*gpp4*Qe4p2*Qsp2*lam +              & 
&  4*gpp4*Qe9p2*Qsp2*lam + 6*gpp4*QHdp2*Qsp2*lam + 6*gpp4*QHup2*Qsp2*lam +               & 
&  4*gpp4*Ql4p2*Qsp2*lam + 8*gpp4*Ql9p2*Qsp2*lam + 36*gpp4*Qqp2*Qsp2*lam +               & 
&  6*gpp4*Qsp4*lam + (36*g1p2*gpp2*QHd*Qu*lam)/5._dp - (36*g1p2*gpp2*QHu*Qu*lam)/5._dp + & 
&  18*gpp4*QHdp2*Qup2*lam + 18*gpp4*QHup2*Qup2*lam + 18*gpp4*Qsp2*Qup2*lam +             & 
&  ((6._dp*(g1p2) - 15._dp*(lamp2) + 10*gpp2*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2*lam)/5._dp -& 
&  3*Try2adjy2y2adjy2*lam - (2*g1p2*TrYdadjYd*lam)/5._dp + 16*g3p2*TrYdadjYd*lam  
betalam2 =  betalam2+ 6*gpp2*Qdp2*TrYdadjYd*lam - 6*gpp2*QHdp2*TrYdadjYd*lam + 6*gpp2*Qqp2*TrYdadjYd*lam -  & 
&  9*TrYdadjYdYdadjYd*lam - 6*TrYdadjYuYuadjYd*lam + (4*g1p2*TrYuadjYu*lam)/5._dp +      & 
&  16*g3p2*TrYuadjYu*lam - 6*gpp2*QHup2*TrYuadjYu*lam + 6*gpp2*Qqp2*TrYuadjYu*lam +      & 
&  6*gpp2*Qup2*TrYuadjYu*lam - 9*TrYuadjYuYuadjYu*lam - 3*Cy1p2*y1p2*lam

 
Dlam = oo16pi2*( betalam1 + oo16pi2 * betalam2 ) 

 
Else 
Dlam = oo16pi2* betalam1 
End If 
 
 
!-------------------- 
! Yu 
!-------------------- 
 
betaYu1  = (-13._dp*(g1p2)/15._dp - 3._dp*(g2p2) - 16._dp*(g3p2)/3._dp +              & 
&  lamp2 - 2*gpp2*QHup2 - 2*gpp2*Qqp2 - 2*gpp2*Qup2 + 3._dp*(TrYuadjYu))*Yu +            & 
&  YuadjYdYd + 3._dp*(YuadjYuYu)

 
 
If (TwoLoopRGE) Then 
betaYu2 = (2743._dp*(g1p4)/450._dp + g1p2*g2p2 + 15._dp*(g2p4)/2._dp + (136*g1p2*g3p2)/45._dp + & 
&  8*g2p2*g3p2 - 16._dp*(g3p4)/9._dp - Absy1*lamp2 - 3._dp*(lamp4) + 2*gpp2*lamp2*QHdp2 +& 
&  (18*g1p2*gpp2*Qd*QHu)/5._dp + (6*g1p2*gpp2*Qe4*QHu)/5._dp + (12*g1p2*gpp2*Qe9*QHu)/5._dp -& 
&  (6*g1p2*gpp2*QHd*QHu)/5._dp + (12*g1p2*gpp2*QHup2)/5._dp + 6*g2p2*gpp2*QHup2 -        & 
&  2*gpp2*lamp2*QHup2 + 18*gpp4*Qdp2*QHup2 + 2*gpp4*Qe4p2*QHup2 + 4*gpp4*Qe9p2*QHup2 +   & 
&  4*gpp4*QHdp2*QHup2 + 8*gpp4*QHup4 - (6*g1p2*gpp2*QHu*Ql4)/5._dp + 4*gpp4*QHup2*Ql4p2 -& 
&  (12*g1p2*gpp2*QHu*Ql9)/5._dp + 8*gpp4*QHup2*Ql9p2 + (6*g1p2*gpp2*Qd*Qq)/5._dp +       & 
&  (2*g1p2*gpp2*Qe4*Qq)/5._dp + (4*g1p2*gpp2*Qe9*Qq)/5._dp - (2*g1p2*gpp2*QHd*Qq)/5._dp +& 
&  4*g1p2*gpp2*QHu*Qq - (2*g1p2*gpp2*Ql4*Qq)/5._dp - (4*g1p2*gpp2*Ql9*Qq)/5._dp +        & 
&  (4*g1p2*gpp2*Qqp2)/3._dp + 6*g2p2*gpp2*Qqp2 + (32*g3p2*gpp2*Qqp2)/3._dp +             & 
&  18*gpp4*Qdp2*Qqp2 + 2*gpp4*Qe4p2*Qqp2 + 4*gpp4*Qe9p2*Qqp2 + 4*gpp4*QHdp2*Qqp2 +       & 
&  40*gpp4*QHup2*Qqp2 + 4*gpp4*Ql4p2*Qqp2 + 8*gpp4*Ql9p2*Qqp2 + 40*gpp4*Qqp4 +           & 
&  2*gpp2*lamp2*Qsp2 + 2*gpp4*QHup2*Qsp2 + 2*gpp4*Qqp2*Qsp2 - (24*g1p2*gpp2*Qd*Qu)/5._dp -& 
&  (8*g1p2*gpp2*Qe4*Qu)/5._dp - (16*g1p2*gpp2*Qe9*Qu)/5._dp + (8*g1p2*gpp2*QHd*Qu)/5._dp -& 
&  (44*g1p2*gpp2*QHu*Qu)/5._dp + (8*g1p2*gpp2*Ql4*Qu)/5._dp + (16*g1p2*gpp2*Ql9*Qu)/5._dp -& 
&  (36*g1p2*gpp2*Qq*Qu)/5._dp + (176*g1p2*gpp2*Qup2)/15._dp + (32*g3p2*gpp2*Qup2)/3._dp +& 
&  18*gpp4*Qdp2*Qup2 + 2*gpp4*Qe4p2*Qup2 + 4*gpp4*Qe9p2*Qup2 + 4*gpp4*QHdp2*Qup2 +       & 
&  22*gpp4*QHup2*Qup2 + 4*gpp4*Ql4p2*Qup2 + 8*gpp4*Ql9p2*Qup2 + 54*gpp4*Qqp2*Qup2 +      & 
&  2*gpp4*Qsp2*Qup2 + 22*gpp4*Qup4 - lamp2*Try2adjy2 - 3*lamp2*TrYdadjYd -               & 
&  3._dp*(TrYdadjYuYuadjYd) + (4*g1p2*TrYuadjYu)/5._dp + 16*g3p2*TrYuadjYu -             & 
&  6*gpp2*QHup2*TrYuadjYu + 6*gpp2*Qqp2*TrYuadjYu + 6*gpp2*Qup2*TrYuadjYu -              & 
&  9._dp*(TrYuadjYuYuadjYu))*Yu + (-1._dp*(Absy1) + 2._dp*(g1p2)/5._dp - lamp2 +         & 
&  2*gpp2*Qdp2 + 2*gpp2*QHdp2 - 2*gpp2*Qqp2 - Try2adjy2 - 3._dp*(TrYdadjYd))*YuadjYdYd  
betaYu2 =  betaYu2- 2._dp*(YuadjYdYdadjYdYd) - 2._dp*(YuadjYdYdadjYuYu) + (2*g1p2*YuadjYuYu)/5._dp +      & 
&  6*g2p2*YuadjYuYu - 3*lamp2*YuadjYuYu + 6*gpp2*QHup2*YuadjYuYu + 2*gpp2*Qqp2*YuadjYuYu -& 
&  2*gpp2*Qup2*YuadjYuYu - 9*TrYuadjYu*YuadjYuYu - 4._dp*(YuadjYuYuadjYuYu)

 
DYu = oo16pi2*( betaYu1 + oo16pi2 * betaYu2 ) 

 
Else 
DYu = oo16pi2* betaYu1 
End If 
 
 
Call Chop(DYu) 

!-------------------- 
! Td 
!-------------------- 
 
betaTd1  = 5._dp*(TdadjYdYd) + TdadjYuYu + 4._dp*(YdadjYdTd) + 2._dp*(YdadjYuTu)      & 
&  + Absy1*Td - (7*g1p2*Td)/15._dp - 3*g2p2*Td - (16*g3p2*Td)/3._dp + lamp2*Td -         & 
&  2*gpp2*Qdp2*Td - 2*gpp2*QHdp2*Td - 2*gpp2*Qqp2*Td + Try2adjy2*Td + 3*TrYdadjYd*Td +   & 
&  Yd*((14*g1p2*M1)/15._dp + (32*g3p2*M3)/3._dp + 6*g2p2*M2 + 4*gpp2*M4*Qdp2 +           & 
&  4*gpp2*M4*QHdp2 + 4*gpp2*M4*Qqp2 + 2._dp*(Tradjy2Ty2) + 6._dp*(TradjYdTd)             & 
&  + 2*Conjg(y1)*Ty1 + 2*lam*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTd2 = -5*Absy1*TdadjYdYd + (6*g1p2*TdadjYdYd)/5._dp + 12*g2p2*TdadjYdYd - 5*lamp2*TdadjYdYd -& 
&  6*gpp2*Qdp2*TdadjYdYd + 10*gpp2*QHdp2*TdadjYdYd + 6*gpp2*Qqp2*TdadjYdYd -             & 
&  6._dp*(TdadjYdYdadjYdYd) + (4*g1p2*TdadjYuYu)/5._dp - lamp2*TdadjYuYu +               & 
&  2*gpp2*QHup2*TdadjYuYu - 2*gpp2*Qqp2*TdadjYuYu + 2*gpp2*Qup2*TdadjYuYu -              & 
&  4._dp*(TdadjYuYuadjYdYd) - 2._dp*(TdadjYuYuadjYuYu) - 5*TdadjYdYd*Try2adjy2 -         & 
&  15*TdadjYdYd*TrYdadjYd - 3*TdadjYuYu*TrYuadjYu - 4*Absy1*YdadjYdTd + (6*g1p2*YdadjYdTd)/5._dp +& 
&  6*g2p2*YdadjYdTd - 4*lamp2*YdadjYdTd + 8*gpp2*QHdp2*YdadjYdTd - 4*Try2adjy2*YdadjYdTd -& 
&  12*TrYdadjYd*YdadjYdTd - 8._dp*(YdadjYdTdadjYdYd) - 6._dp*(YdadjYdYdadjYdTd) +        & 
&  (8*g1p2*YdadjYuTu)/5._dp - 2*lamp2*YdadjYuTu + 4*gpp2*QHup2*YdadjYuTu -               & 
&  4*gpp2*Qqp2*YdadjYuTu + 4*gpp2*Qup2*YdadjYuTu - 6*TrYuadjYu*YdadjYuTu -               & 
&  4._dp*(YdadjYuTuadjYdYd) - 4._dp*(YdadjYuTuadjYuYu) - (8*g1p2*M1*YdadjYuYu)/5._dp -   & 
&  4*gpp2*M4*QHup2*YdadjYuYu + 4*gpp2*M4*Qqp2*YdadjYuYu - 4*gpp2*M4*Qup2*YdadjYuYu -     & 
&  6*TradjYuTu*YdadjYuYu - 2._dp*(YdadjYuYuadjYdTd) - 4._dp*(YdadjYuYuadjYuTu) +         & 
&  (6*Absy1*g1p2*Td)/5._dp + (287*g1p4*Td)/90._dp + g1p2*g2p2*Td + (15*g2p4*Td)/2._dp +  & 
&  (8*g1p2*g3p2*Td)/9._dp + 8*g2p2*g3p2*Td - (16*g3p4*Td)/9._dp - 3*lamp4*Td +           & 
&  (44*g1p2*gpp2*Qdp2*Td)/15._dp + (32*g3p2*gpp2*Qdp2*Td)/3._dp + 22*gpp4*Qdp4*Td +      & 
&  (4*g1p2*gpp2*Qd*Qe4*Td)/5._dp + 2*Absy1*gpp2*Qe4p2*Td + 2*gpp4*Qdp2*Qe4p2*Td +        & 
&  (8*g1p2*gpp2*Qd*Qe9*Td)/5._dp + 4*gpp4*Qdp2*Qe9p2*Td - (22*g1p2*gpp2*Qd*QHd*Td)/5._dp -& 
&  (6*g1p2*gpp2*Qe4*QHd*Td)/5._dp - (12*g1p2*gpp2*Qe9*QHd*Td)/5._dp - 2*Absy1*gpp2*QHdp2*Td +& 
&  (12*g1p2*gpp2*QHdp2*Td)/5._dp + 6*g2p2*gpp2*QHdp2*Td - 2*gpp2*lamp2*QHdp2*Td +        & 
&  22*gpp4*Qdp2*QHdp2*Td + 2*gpp4*Qe4p2*QHdp2*Td + 4*gpp4*Qe9p2*QHdp2*Td  
betaTd2 =  betaTd2+ 8*gpp4*QHdp4*Td + (4*g1p2*gpp2*Qd*QHu*Td)/5._dp - (6*g1p2*gpp2*QHd*QHu*Td)/5._dp +    & 
&  2*gpp2*lamp2*QHup2*Td + 4*gpp4*Qdp2*QHup2*Td + 4*gpp4*QHdp2*QHup2*Td - (4*g1p2*gpp2*Qd*Ql4*Td)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql4*Td)/5._dp + 2*Absy1*gpp2*Ql4p2*Td + 4*gpp4*Qdp2*Ql4p2*Td +       & 
&  4*gpp4*QHdp2*Ql4p2*Td - (8*g1p2*gpp2*Qd*Ql9*Td)/5._dp + (12*g1p2*gpp2*QHd*Ql9*Td)/5._dp +& 
&  8*gpp4*Qdp2*Ql9p2*Td + 8*gpp4*QHdp2*Ql9p2*Td + (18*g1p2*gpp2*Qd*Qq*Td)/5._dp +        & 
&  (2*g1p2*gpp2*Qe4*Qq*Td)/5._dp + (4*g1p2*gpp2*Qe9*Qq*Td)/5._dp - 4*g1p2*gpp2*QHd*Qq*Td +& 
&  (2*g1p2*gpp2*QHu*Qq*Td)/5._dp - (2*g1p2*gpp2*Ql4*Qq*Td)/5._dp - (4*g1p2*gpp2*Ql9*Qq*Td)/5._dp +& 
&  (4*g1p2*gpp2*Qqp2*Td)/3._dp + 6*g2p2*gpp2*Qqp2*Td + (32*g3p2*gpp2*Qqp2*Td)/3._dp +    & 
&  54*gpp4*Qdp2*Qqp2*Td + 2*gpp4*Qe4p2*Qqp2*Td + 4*gpp4*Qe9p2*Qqp2*Td + 40*gpp4*QHdp2*Qqp2*Td +& 
&  4*gpp4*QHup2*Qqp2*Td + 4*gpp4*Ql4p2*Qqp2*Td + 8*gpp4*Ql9p2*Qqp2*Td + 40*gpp4*Qqp4*Td +& 
&  2*gpp2*lamp2*Qsp2*Td + 2*gpp4*Qdp2*Qsp2*Td + 2*gpp4*QHdp2*Qsp2*Td + 2*gpp4*Qqp2*Qsp2*Td -& 
&  (24*g1p2*gpp2*Qd*Qu*Td)/5._dp + (36*g1p2*gpp2*QHd*Qu*Td)/5._dp - (12*g1p2*gpp2*Qq*Qu*Td)/5._dp +& 
&  18*gpp4*Qdp2*Qup2*Td + 18*gpp4*QHdp2*Qup2*Td + 18*gpp4*Qqp2*Qup2*Td + (6*g1p2*Try2adjy2*Td)/5._dp +& 
&  2*gpp2*Qe9p2*Try2adjy2*Td - 2*gpp2*QHdp2*Try2adjy2*Td + 2*gpp2*Ql9p2*Try2adjy2*Td -   & 
&  3*Try2adjy2y2adjy2*Td - (2*g1p2*TrYdadjYd*Td)/5._dp + 16*g3p2*TrYdadjYd*Td +          & 
&  6*gpp2*Qdp2*TrYdadjYd*Td - 6*gpp2*QHdp2*TrYdadjYd*Td + 6*gpp2*Qqp2*TrYdadjYd*Td -     & 
&  9*TrYdadjYdYdadjYd*Td - 3*TrYdadjYuYuadjYd*Td - 3*lamp2*TrYuadjYu*Td - 3*Cy1p2*y1p2*Td -& 
&  2*YdadjYuYu*lam*Tlam - (2*YdadjYdYd*(4*g1p2*M1 + 30*g2p2*M2 - 10*gpp2*M4*Qdp2 +       & 
&  30*gpp2*M4*QHdp2 + 10*gpp2*M4*Qqp2 + 15._dp*(Tradjy2Ty2) + 45._dp*(TradjYdTd) +       & 
&  15*Conjg(y1)*Ty1 + 15*lam*Tlam))/5._dp - (2*Yd*(287*g1p4*M1 + 45*g1p2*g2p2*M1 +       & 
&  40*g1p2*g3p2*M1 + 40*g1p2*g3p2*M3 + 360*g2p2*g3p2*M3 - 160*g3p4*M3 + 45*g1p2*g2p2*M2 +& 
&  675*g2p4*M2 + 360*g2p2*g3p2*M2 + 132*g1p2*gpp2*M1*Qdp2 + 480*g3p2*gpp2*M3*Qdp2 +      & 
&  132*g1p2*gpp2*M4*Qdp2 + 480*g3p2*gpp2*M4*Qdp2 + 1980*gpp4*M4*Qdp4 + 36*g1p2*gpp2*M1*Qd*Qe4 +& 
&  36*g1p2*gpp2*M4*Qd*Qe4 + 180*gpp4*M4*Qdp2*Qe4p2 + 72*g1p2*gpp2*M1*Qd*Qe9 +            & 
&  72*g1p2*gpp2*M4*Qd*Qe9 + 360*gpp4*M4*Qdp2*Qe9p2 - 198*g1p2*gpp2*M1*Qd*QHd -           & 
&  198*g1p2*gpp2*M4*Qd*QHd - 54*g1p2*gpp2*M1*Qe4*QHd - 54*g1p2*gpp2*M4*Qe4*QHd -         & 
&  108*g1p2*gpp2*M1*Qe9*QHd - 108*g1p2*gpp2*M4*Qe9*QHd + 108*g1p2*gpp2*M1*QHdp2 +        & 
&  108*g1p2*gpp2*M4*QHdp2 + 270*g2p2*gpp2*M4*QHdp2 - 90*gpp2*lamp2*M4*QHdp2 +            & 
&  270*g2p2*gpp2*M2*QHdp2 + 1980*gpp4*M4*Qdp2*QHdp2 + 180*gpp4*M4*Qe4p2*QHdp2 +          & 
&  360*gpp4*M4*Qe9p2*QHdp2 + 720*gpp4*M4*QHdp4 + 36*g1p2*gpp2*M1*Qd*QHu + 36*g1p2*gpp2*M4*Qd*QHu -& 
&  54*g1p2*gpp2*M1*QHd*QHu - 54*g1p2*gpp2*M4*QHd*QHu + 90*gpp2*lamp2*M4*QHup2 +          & 
&  360*gpp4*M4*Qdp2*QHup2 + 360*gpp4*M4*QHdp2*QHup2 - 36*g1p2*gpp2*M1*Qd*Ql4 -           & 
&  36*g1p2*gpp2*M4*Qd*Ql4 + 54*g1p2*gpp2*M1*QHd*Ql4 + 54*g1p2*gpp2*M4*QHd*Ql4 +          & 
&  360*gpp4*M4*Qdp2*Ql4p2 + 360*gpp4*M4*QHdp2*Ql4p2 - 72*g1p2*gpp2*M1*Qd*Ql9 -           & 
&  72*g1p2*gpp2*M4*Qd*Ql9 + 108*g1p2*gpp2*M1*QHd*Ql9 + 108*g1p2*gpp2*M4*QHd*Ql9 +        & 
&  720*gpp4*M4*Qdp2*Ql9p2 + 720*gpp4*M4*QHdp2*Ql9p2 + 162*g1p2*gpp2*M1*Qd*Qq +           & 
&  162*g1p2*gpp2*M4*Qd*Qq + 18*g1p2*gpp2*M1*Qe4*Qq + 18*g1p2*gpp2*M4*Qe4*Qq +            & 
&  36*g1p2*gpp2*M1*Qe9*Qq + 36*g1p2*gpp2*M4*Qe9*Qq - 180*g1p2*gpp2*M1*QHd*Qq -           & 
&  180*g1p2*gpp2*M4*QHd*Qq + 18*g1p2*gpp2*M1*QHu*Qq + 18*g1p2*gpp2*M4*QHu*Qq -           & 
&  18*g1p2*gpp2*M1*Ql4*Qq - 18*g1p2*gpp2*M4*Ql4*Qq - 36*g1p2*gpp2*M1*Ql9*Qq -            & 
&  36*g1p2*gpp2*M4*Ql9*Qq + 60*g1p2*gpp2*M1*Qqp2 + 480*g3p2*gpp2*M3*Qqp2 +               & 
&  60*g1p2*gpp2*M4*Qqp2 + 270*g2p2*gpp2*M4*Qqp2 + 480*g3p2*gpp2*M4*Qqp2 + 270*g2p2*gpp2*M2*Qqp2 +& 
&  4860*gpp4*M4*Qdp2*Qqp2 + 180*gpp4*M4*Qe4p2*Qqp2 + 360*gpp4*M4*Qe9p2*Qqp2 +            & 
&  3600*gpp4*M4*QHdp2*Qqp2 + 360*gpp4*M4*QHup2*Qqp2 + 360*gpp4*M4*Ql4p2*Qqp2 +           & 
&  720*gpp4*M4*Ql9p2*Qqp2 + 3600*gpp4*M4*Qqp4 + 90*gpp2*lamp2*M4*Qsp2 + 180*gpp4*M4*Qdp2*Qsp2 +& 
&  180*gpp4*M4*QHdp2*Qsp2 + 180*gpp4*M4*Qqp2*Qsp2 - 216*g1p2*gpp2*M1*Qd*Qu -             & 
&  216*g1p2*gpp2*M4*Qd*Qu + 324*g1p2*gpp2*M1*QHd*Qu + 324*g1p2*gpp2*M4*QHd*Qu -          & 
&  108*g1p2*gpp2*M1*Qq*Qu - 108*g1p2*gpp2*M4*Qq*Qu + 1620*gpp4*M4*Qdp2*Qup2 +            & 
&  1620*gpp4*M4*QHdp2*Qup2 + 1620*gpp4*M4*Qqp2*Qup2 - 54*g1p2*Tradjy2Ty2 -               & 
&  90*gpp2*Qe9p2*Tradjy2Ty2 + 90*gpp2*QHdp2*Tradjy2Ty2 - 90*gpp2*Ql9p2*Tradjy2Ty2 +      & 
&  18*g1p2*TradjYdTd - 720*g3p2*TradjYdTd - 270*gpp2*Qdp2*TradjYdTd + 270*gpp2*QHdp2*TradjYdTd -& 
&  270*gpp2*Qqp2*TradjYdTd + 135*lamp2*TradjYuTu + 54*g1p2*M1*Try2adjy2 + 90*gpp2*M4*Qe9p2*Try2adjy2 -& 
&  90*gpp2*M4*QHdp2*Try2adjy2 + 90*gpp2*M4*Ql9p2*Try2adjy2 + 270._dp*(Try2adjy2Ty2adjy2) -& 
&  18*g1p2*M1*TrYdadjYd + 720*g3p2*M3*TrYdadjYd + 270*gpp2*M4*Qdp2*TrYdadjYd -           & 
&  270*gpp2*M4*QHdp2*TrYdadjYd + 270*gpp2*M4*Qqp2*TrYdadjYd + 810._dp*(TrYdadjYdTdadjYd) +& 
&  135._dp*(TrYdadjYuTuadjYd) + 135._dp*(TrYuadjYdTdadjYu) + 270*Cy1p2*y1*Ty1 +          & 
&  18*Conjg(y1)*(3*g1p2*M1*y1 + 5*gpp2*M4*(Qe4p2 - QHdp2 + Ql4p2)*y1 - 3*g1p2*Ty1 -      & 
&  5*gpp2*(Qe4p2 - QHdp2 + Ql4p2)*Ty1) + 45*(6._dp*(lamp2) + 2*gpp2*(QHdp2 -             & 
&  QHup2 - Qsp2) + 3._dp*(TrYuadjYu))*lam*Tlam))/45._dp

 
DTd = oo16pi2*( betaTd1 + oo16pi2 * betaTd2 ) 

 
Else 
DTd = oo16pi2* betaTd1 
End If 
 
 
Call Chop(DTd) 

!-------------------- 
! Ty1 
!-------------------- 
 
betaTy11  = (12._dp*(Absy1) - 9._dp*(g1p2)/5._dp - 3._dp*(g2p2) + lamp2 -             & 
&  2*gpp2*Qe4p2 - 2*gpp2*QHdp2 - 2*gpp2*Ql4p2 + Try2adjy2 + 3._dp*(TrYdadjYd))           & 
& *Ty1 + (2*y1*(9*g1p2*M1 + 15*g2p2*M2 + 10*gpp2*M4*Qe4p2 + 10*gpp2*M4*QHdp2 +           & 
&  10*gpp2*M4*Ql4p2 + 5._dp*(Tradjy2Ty2) + 15._dp*(TradjYdTd) + 5*lam*Tlam))/5._dp

 
 
If (TwoLoopRGE) Then 
betaTy12 = ((135._dp*(g1p4) + 18*g1p2*g2p2 + 75._dp*(g2p4) - 30._dp*(lamp4) + 72*g1p2*gpp2*Qd*Qe4 +& 
&  72*g1p2*gpp2*Qe4p2 + 180*gpp4*Qdp2*Qe4p2 + 60*gpp4*Qe4p4 + 48*g1p2*gpp2*Qe4*Qe9 +     & 
&  40*gpp4*Qe4p2*Qe9p2 - 36*g1p2*gpp2*Qd*QHd - 36*g1p2*gpp2*Qe4*QHd - 24*g1p2*gpp2*Qe9*QHd +& 
&  24*g1p2*gpp2*QHdp2 + 60*g2p2*gpp2*QHdp2 - 20*gpp2*lamp2*QHdp2 + 180*gpp4*Qdp2*QHdp2 + & 
&  60*gpp4*Qe4p2*QHdp2 + 40*gpp4*Qe9p2*QHdp2 + 80*gpp4*QHdp4 + 24*g1p2*gpp2*Qe4*QHu -    & 
&  12*g1p2*gpp2*QHd*QHu + 20*gpp2*lamp2*QHup2 + 40*gpp4*Qe4p2*QHup2 + 40*gpp4*QHdp2*QHup2 -& 
&  36*g1p2*gpp2*Qd*Ql4 - 36*g1p2*gpp2*Qe4*Ql4 - 24*g1p2*gpp2*Qe9*Ql4 + 24*g1p2*gpp2*QHd*Ql4 -& 
&  12*g1p2*gpp2*QHu*Ql4 + 24*g1p2*gpp2*Ql4p2 + 60*g2p2*gpp2*Ql4p2 + 180*gpp4*Qdp2*Ql4p2 +& 
&  60*gpp4*Qe4p2*Ql4p2 + 40*gpp4*Qe9p2*Ql4p2 + 80*gpp4*QHdp2*Ql4p2 + 40*gpp4*QHup2*Ql4p2 +& 
&  80*gpp4*Ql4p4 - 48*g1p2*gpp2*Qe4*Ql9 + 24*g1p2*gpp2*QHd*Ql9 + 24*g1p2*gpp2*Ql4*Ql9 +  & 
&  80*gpp4*Qe4p2*Ql9p2 + 80*gpp4*QHdp2*Ql9p2 + 80*gpp4*Ql4p2*Ql9p2 + 72*g1p2*gpp2*Qe4*Qq -& 
&  36*g1p2*gpp2*QHd*Qq - 36*g1p2*gpp2*Ql4*Qq + 360*gpp4*Qe4p2*Qqp2 + 360*gpp4*QHdp2*Qqp2 +& 
&  360*gpp4*Ql4p2*Qqp2 + 20*gpp2*lamp2*Qsp2 + 20*gpp4*Qe4p2*Qsp2 + 20*gpp4*QHdp2*Qsp2 +  & 
&  20*gpp4*Ql4p2*Qsp2 - 144*g1p2*gpp2*Qe4*Qu + 72*g1p2*gpp2*QHd*Qu + 72*g1p2*gpp2*Ql4*Qu +& 
&  180*gpp4*Qe4p2*Qup2 + 180*gpp4*QHdp2*Qup2 + 180*gpp4*Ql4p2*Qup2 + 4*(3._dp*(g1p2) +   & 
&  5*gpp2*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2 - 30._dp*(Try2adjy2y2adjy2) -               & 
&  4*(g1p2 - 5*(8._dp*(g3p2) + 3*gpp2*(Qdp2 - QHdp2 + Qqp2)))*TrYdadjYd - 90._dp*(TrYdadjYdYdadjYd) -& 
&  30._dp*(TrYdadjYuYuadjYd) - 30*lamp2*TrYuadjYu)*Ty1 - 500*Cy1p2*y1p2*Ty1 -            & 
&  4*y1*(135*g1p4*M1 + 9*g1p2*g2p2*M1 + 9*g1p2*g2p2*M2 + 75*g2p4*M2 + 36*g1p2*gpp2*M1*Qd*Qe4 +& 
&  36*g1p2*gpp2*M4*Qd*Qe4 + 36*g1p2*gpp2*M1*Qe4p2 + 36*g1p2*gpp2*M4*Qe4p2 +              & 
&  180*gpp4*M4*Qdp2*Qe4p2 + 60*gpp4*M4*Qe4p4 + 24*g1p2*gpp2*M1*Qe4*Qe9 + 24*g1p2*gpp2*M4*Qe4*Qe9 +& 
&  40*gpp4*M4*Qe4p2*Qe9p2 - 18*g1p2*gpp2*M1*Qd*QHd - 18*g1p2*gpp2*M4*Qd*QHd -            & 
&  18*g1p2*gpp2*M1*Qe4*QHd - 18*g1p2*gpp2*M4*Qe4*QHd - 12*g1p2*gpp2*M1*Qe9*QHd -         & 
&  12*g1p2*gpp2*M4*Qe9*QHd + 12*g1p2*gpp2*M1*QHdp2 + 12*g1p2*gpp2*M4*QHdp2 +             & 
&  30*g2p2*gpp2*M4*QHdp2 - 10*gpp2*lamp2*M4*QHdp2 + 30*g2p2*gpp2*M2*QHdp2 +              & 
&  180*gpp4*M4*Qdp2*QHdp2 + 60*gpp4*M4*Qe4p2*QHdp2 + 40*gpp4*M4*Qe9p2*QHdp2 +            & 
&  80*gpp4*M4*QHdp4 + 12*g1p2*gpp2*M1*Qe4*QHu + 12*g1p2*gpp2*M4*Qe4*QHu - 6*g1p2*gpp2*M1*QHd*QHu -& 
&  6*g1p2*gpp2*M4*QHd*QHu + 10*gpp2*lamp2*M4*QHup2 + 40*gpp4*M4*Qe4p2*QHup2 +            & 
&  40*gpp4*M4*QHdp2*QHup2 - 18*g1p2*gpp2*M1*Qd*Ql4 - 18*g1p2*gpp2*M4*Qd*Ql4 -            & 
&  18*g1p2*gpp2*M1*Qe4*Ql4 - 18*g1p2*gpp2*M4*Qe4*Ql4 - 12*g1p2*gpp2*M1*Qe9*Ql4 -         & 
&  12*g1p2*gpp2*M4*Qe9*Ql4 + 12*g1p2*gpp2*M1*QHd*Ql4 + 12*g1p2*gpp2*M4*QHd*Ql4 -         & 
&  6*g1p2*gpp2*M1*QHu*Ql4 - 6*g1p2*gpp2*M4*QHu*Ql4 + 12*g1p2*gpp2*M1*Ql4p2 +             & 
&  12*g1p2*gpp2*M4*Ql4p2 + 30*g2p2*gpp2*M4*Ql4p2 + 30*g2p2*gpp2*M2*Ql4p2 +               & 
&  180*gpp4*M4*Qdp2*Ql4p2 + 60*gpp4*M4*Qe4p2*Ql4p2 + 40*gpp4*M4*Qe9p2*Ql4p2 +            & 
&  80*gpp4*M4*QHdp2*Ql4p2 + 40*gpp4*M4*QHup2*Ql4p2 + 80*gpp4*M4*Ql4p4 - 24*g1p2*gpp2*M1*Qe4*Ql9 -& 
&  24*g1p2*gpp2*M4*Qe4*Ql9 + 12*g1p2*gpp2*M1*QHd*Ql9 + 12*g1p2*gpp2*M4*QHd*Ql9 +         & 
&  12*g1p2*gpp2*M1*Ql4*Ql9 + 12*g1p2*gpp2*M4*Ql4*Ql9 + 80*gpp4*M4*Qe4p2*Ql9p2 +          & 
&  80*gpp4*M4*QHdp2*Ql9p2 + 80*gpp4*M4*Ql4p2*Ql9p2 + 36*g1p2*gpp2*M1*Qe4*Qq +            & 
&  36*g1p2*gpp2*M4*Qe4*Qq - 18*g1p2*gpp2*M1*QHd*Qq - 18*g1p2*gpp2*M4*QHd*Qq -            & 
&  18*g1p2*gpp2*M1*Ql4*Qq - 18*g1p2*gpp2*M4*Ql4*Qq + 360*gpp4*M4*Qe4p2*Qqp2 +            & 
&  360*gpp4*M4*QHdp2*Qqp2 + 360*gpp4*M4*Ql4p2*Qqp2 + 10*gpp2*lamp2*M4*Qsp2 +             & 
&  20*gpp4*M4*Qe4p2*Qsp2 + 20*gpp4*M4*QHdp2*Qsp2 + 20*gpp4*M4*Ql4p2*Qsp2 -               & 
&  72*g1p2*gpp2*M1*Qe4*Qu - 72*g1p2*gpp2*M4*Qe4*Qu + 36*g1p2*gpp2*M1*QHd*Qu +            & 
&  36*g1p2*gpp2*M4*QHd*Qu + 36*g1p2*gpp2*M1*Ql4*Qu + 36*g1p2*gpp2*M4*Ql4*Qu +            & 
&  180*gpp4*M4*Qe4p2*Qup2 + 180*gpp4*M4*QHdp2*Qup2 + 180*gpp4*M4*Ql4p2*Qup2 -            & 
&  6*g1p2*Tradjy2Ty2 - 10*gpp2*Qe9p2*Tradjy2Ty2 + 10*gpp2*QHdp2*Tradjy2Ty2 -             & 
&  10*gpp2*Ql9p2*Tradjy2Ty2 + 2*g1p2*TradjYdTd - 80*g3p2*TradjYdTd - 30*gpp2*Qdp2*TradjYdTd +& 
&  30*gpp2*QHdp2*TradjYdTd - 30*gpp2*Qqp2*TradjYdTd + 15*lamp2*TradjYuTu +               & 
&  2*(3*g1p2*M1 + 5*gpp2*M4*(Qe9p2 - QHdp2 + Ql9p2))*Try2adjy2 + 30._dp*(Try2adjy2Ty2adjy2) -& 
&  2*g1p2*M1*TrYdadjYd + 80*g3p2*M3*TrYdadjYd + 30*gpp2*M4*Qdp2*TrYdadjYd -              & 
&  30*gpp2*M4*QHdp2*TrYdadjYd + 30*gpp2*M4*Qqp2*TrYdadjYd + 90._dp*(TrYdadjYdTdadjYd) +  & 
&  15._dp*(TrYdadjYuTuadjYd) + 15._dp*(TrYuadjYdTdadjYu) + 5*(6._dp*(lamp2) +            & 
&  2*gpp2*(QHdp2 - QHup2 - Qsp2) + 3._dp*(TrYuadjYu))*lam*Tlam) - 2*Absy1*(-             & 
& 3*(6._dp*(g1p2) + 30._dp*(g2p2) - 15._dp*(lamp2) + 20*gpp2*QHdp2 + 20*gpp2*Ql4p2 -     & 
&  15._dp*(Try2adjy2) - 45._dp*(TrYdadjYd))*Ty1 + 2*y1*(6*g1p2*M1 + 30*g2p2*M2 +         & 
&  20*gpp2*M4*QHdp2 + 20*gpp2*M4*Ql4p2 + 15._dp*(Tradjy2Ty2) + 45._dp*(TradjYdTd) +      & 
&  15*lam*Tlam)))/10._dp

 
DTy1 = oo16pi2*( betaTy11 + oo16pi2 * betaTy12 ) 

 
Else 
DTy1 = oo16pi2* betaTy11 
End If 
 
 
Call Chop(DTy1) 

!-------------------- 
! Ty2 
!-------------------- 
 
betaTy21  = 5._dp*(Ty2adjy2y2) + 4._dp*(y2adjy2Ty2) + Absy1*Ty2 - (9*g1p2*Ty2)        & 
& /5._dp - 3*g2p2*Ty2 + lamp2*Ty2 - 2*gpp2*Qe9p2*Ty2 - 2*gpp2*QHdp2*Ty2 - 2*gpp2*Ql9p2*Ty2 +& 
&  Try2adjy2*Ty2 + 3*TrYdadjYd*Ty2 + y2*((18*g1p2*M1)/5._dp + 6*g2p2*M2 + 4*gpp2*M4*Qe9p2 +& 
&  4*gpp2*M4*QHdp2 + 4*gpp2*M4*Ql9p2 + 2._dp*(Tradjy2Ty2) + 6._dp*(TradjYdTd)            & 
&  + 2*Conjg(y1)*Ty1 + 2*lam*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTy22 = -5*Absy1*Ty2adjy2y2 - (6*g1p2*Ty2adjy2y2)/5._dp + 12*g2p2*Ty2adjy2y2 - 5*lamp2*Ty2adjy2y2 -& 
&  6*gpp2*Qe9p2*Ty2adjy2y2 + 10*gpp2*QHdp2*Ty2adjy2y2 + 6*gpp2*Ql9p2*Ty2adjy2y2 -        & 
&  5*Try2adjy2*Ty2adjy2y2 - 15*TrYdadjYd*Ty2adjy2y2 - 6._dp*(Ty2adjy2y2adjy2y2) -        & 
&  4*Absy1*y2adjy2Ty2 + (6*g1p2*y2adjy2Ty2)/5._dp + 6*g2p2*y2adjy2Ty2 - 4*lamp2*y2adjy2Ty2 +& 
&  8*gpp2*QHdp2*y2adjy2Ty2 - 4*Try2adjy2*y2adjy2Ty2 - 12*TrYdadjYd*y2adjy2Ty2 -          & 
&  8._dp*(y2adjy2Ty2adjy2y2) - 6._dp*(y2adjy2y2adjy2Ty2) + (6*Absy1*g1p2*Ty2)/5._dp +    & 
&  (27*g1p4*Ty2)/2._dp + (9*g1p2*g2p2*Ty2)/5._dp + (15*g2p4*Ty2)/2._dp - 3*lamp4*Ty2 +   & 
&  2*Absy1*gpp2*Qe4p2*Ty2 + (36*g1p2*gpp2*Qd*Qe9*Ty2)/5._dp + (12*g1p2*gpp2*Qe4*Qe9*Ty2)/5._dp +& 
&  (48*g1p2*gpp2*Qe9p2*Ty2)/5._dp + 18*gpp4*Qdp2*Qe9p2*Ty2 + 2*gpp4*Qe4p2*Qe9p2*Ty2 +    & 
&  8*gpp4*Qe9p4*Ty2 - (18*g1p2*gpp2*Qd*QHd*Ty2)/5._dp - (6*g1p2*gpp2*Qe4*QHd*Ty2)/5._dp -& 
&  (24*g1p2*gpp2*Qe9*QHd*Ty2)/5._dp - 2*Absy1*gpp2*QHdp2*Ty2 + (12*g1p2*gpp2*QHdp2*Ty2)/5._dp +& 
&  6*g2p2*gpp2*QHdp2*Ty2 - 2*gpp2*lamp2*QHdp2*Ty2 + 18*gpp4*Qdp2*QHdp2*Ty2 +             & 
&  2*gpp4*Qe4p2*QHdp2*Ty2 + 8*gpp4*Qe9p2*QHdp2*Ty2 + 8*gpp4*QHdp4*Ty2 + (12*g1p2*gpp2*Qe9*QHu*Ty2)/5._dp -& 
&  (6*g1p2*gpp2*QHd*QHu*Ty2)/5._dp + 2*gpp2*lamp2*QHup2*Ty2 + 4*gpp4*Qe9p2*QHup2*Ty2 +   & 
&  4*gpp4*QHdp2*QHup2*Ty2 - (12*g1p2*gpp2*Qe9*Ql4*Ty2)/5._dp + (6*g1p2*gpp2*QHd*Ql4*Ty2)/5._dp +& 
&  2*Absy1*gpp2*Ql4p2*Ty2 + 4*gpp4*Qe9p2*Ql4p2*Ty2 + 4*gpp4*QHdp2*Ql4p2*Ty2 -            & 
&  (18*g1p2*gpp2*Qd*Ql9*Ty2)/5._dp - (6*g1p2*gpp2*Qe4*Ql9*Ty2)/5._dp - (36*g1p2*gpp2*Qe9*Ql9*Ty2)/5._dp +& 
&  (18*g1p2*gpp2*QHd*Ql9*Ty2)/5._dp - (6*g1p2*gpp2*QHu*Ql9*Ty2)/5._dp + (6*g1p2*gpp2*Ql4*Ql9*Ty2)/5._dp +& 
&  (18*g1p2*gpp2*Ql9p2*Ty2)/5._dp + 6*g2p2*gpp2*Ql9p2*Ty2 + 18*gpp4*Qdp2*Ql9p2*Ty2 +     & 
&  2*gpp4*Qe4p2*Ql9p2*Ty2 + 12*gpp4*Qe9p2*Ql9p2*Ty2 + 12*gpp4*QHdp2*Ql9p2*Ty2 +          & 
&  4*gpp4*QHup2*Ql9p2*Ty2 + 4*gpp4*Ql4p2*Ql9p2*Ty2 + 12*gpp4*Ql9p4*Ty2 + (36*g1p2*gpp2*Qe9*Qq*Ty2)/5._dp  
betaTy22 =  betaTy22- (18*g1p2*gpp2*QHd*Qq*Ty2)/5._dp - (18*g1p2*gpp2*Ql9*Qq*Ty2)/5._dp + 36*gpp4*Qe9p2*Qqp2*Ty2 +& 
&  36*gpp4*QHdp2*Qqp2*Ty2 + 36*gpp4*Ql9p2*Qqp2*Ty2 + 2*gpp2*lamp2*Qsp2*Ty2 +             & 
&  2*gpp4*Qe9p2*Qsp2*Ty2 + 2*gpp4*QHdp2*Qsp2*Ty2 + 2*gpp4*Ql9p2*Qsp2*Ty2 -               & 
&  (72*g1p2*gpp2*Qe9*Qu*Ty2)/5._dp + (36*g1p2*gpp2*QHd*Qu*Ty2)/5._dp + (36*g1p2*gpp2*Ql9*Qu*Ty2)/5._dp +& 
&  18*gpp4*Qe9p2*Qup2*Ty2 + 18*gpp4*QHdp2*Qup2*Ty2 + 18*gpp4*Ql9p2*Qup2*Ty2 +            & 
&  (6*g1p2*Try2adjy2*Ty2)/5._dp + 2*gpp2*Qe9p2*Try2adjy2*Ty2 - 2*gpp2*QHdp2*Try2adjy2*Ty2 +& 
&  2*gpp2*Ql9p2*Try2adjy2*Ty2 - 3*Try2adjy2y2adjy2*Ty2 - (2*g1p2*TrYdadjYd*Ty2)/5._dp +  & 
&  16*g3p2*TrYdadjYd*Ty2 + 6*gpp2*Qdp2*TrYdadjYd*Ty2 - 6*gpp2*QHdp2*TrYdadjYd*Ty2 +      & 
&  6*gpp2*Qqp2*TrYdadjYd*Ty2 - 9*TrYdadjYdYdadjYd*Ty2 - 3*TrYdadjYuYuadjYd*Ty2 -         & 
&  3*lamp2*TrYuadjYu*Ty2 - 3*Cy1p2*y1p2*Ty2 - 2*y2adjy2y2*(6*g2p2*M2 - 2*gpp2*M4*Qe9p2 + & 
&  6*gpp2*M4*QHdp2 + 2*gpp2*M4*Ql9p2 + 3._dp*(Tradjy2Ty2) + 9._dp*(TradjYdTd) +          & 
&  3*Conjg(y1)*Ty1 + 3*lam*Tlam) - (2*y2*(135*g1p4*M1 + 9*g1p2*g2p2*M1 + 9*g1p2*g2p2*M2 +& 
&  75*g2p4*M2 + 36*g1p2*gpp2*M1*Qd*Qe9 + 36*g1p2*gpp2*M4*Qd*Qe9 + 12*g1p2*gpp2*M1*Qe4*Qe9 +& 
&  12*g1p2*gpp2*M4*Qe4*Qe9 + 48*g1p2*gpp2*M1*Qe9p2 + 48*g1p2*gpp2*M4*Qe9p2 +             & 
&  180*gpp4*M4*Qdp2*Qe9p2 + 20*gpp4*M4*Qe4p2*Qe9p2 + 80*gpp4*M4*Qe9p4 - 18*g1p2*gpp2*M1*Qd*QHd -& 
&  18*g1p2*gpp2*M4*Qd*QHd - 6*g1p2*gpp2*M1*Qe4*QHd - 6*g1p2*gpp2*M4*Qe4*QHd -            & 
&  24*g1p2*gpp2*M1*Qe9*QHd - 24*g1p2*gpp2*M4*Qe9*QHd + 12*g1p2*gpp2*M1*QHdp2 +           & 
&  12*g1p2*gpp2*M4*QHdp2 + 30*g2p2*gpp2*M4*QHdp2 - 10*gpp2*lamp2*M4*QHdp2 +              & 
&  30*g2p2*gpp2*M2*QHdp2 + 180*gpp4*M4*Qdp2*QHdp2 + 20*gpp4*M4*Qe4p2*QHdp2 +             & 
&  80*gpp4*M4*Qe9p2*QHdp2 + 80*gpp4*M4*QHdp4 + 12*g1p2*gpp2*M1*Qe9*QHu + 12*g1p2*gpp2*M4*Qe9*QHu -& 
&  6*g1p2*gpp2*M1*QHd*QHu - 6*g1p2*gpp2*M4*QHd*QHu + 10*gpp2*lamp2*M4*QHup2 +            & 
&  40*gpp4*M4*Qe9p2*QHup2 + 40*gpp4*M4*QHdp2*QHup2 - 12*g1p2*gpp2*M1*Qe9*Ql4 -           & 
&  12*g1p2*gpp2*M4*Qe9*Ql4 + 6*g1p2*gpp2*M1*QHd*Ql4 + 6*g1p2*gpp2*M4*QHd*Ql4 +           & 
&  40*gpp4*M4*Qe9p2*Ql4p2 + 40*gpp4*M4*QHdp2*Ql4p2 - 18*g1p2*gpp2*M1*Qd*Ql9 -            & 
&  18*g1p2*gpp2*M4*Qd*Ql9 - 6*g1p2*gpp2*M1*Qe4*Ql9 - 6*g1p2*gpp2*M4*Qe4*Ql9 -            & 
&  36*g1p2*gpp2*M1*Qe9*Ql9 - 36*g1p2*gpp2*M4*Qe9*Ql9 + 18*g1p2*gpp2*M1*QHd*Ql9 +         & 
&  18*g1p2*gpp2*M4*QHd*Ql9 - 6*g1p2*gpp2*M1*QHu*Ql9 - 6*g1p2*gpp2*M4*QHu*Ql9 +           & 
&  6*g1p2*gpp2*M1*Ql4*Ql9 + 6*g1p2*gpp2*M4*Ql4*Ql9 + 18*g1p2*gpp2*M1*Ql9p2 +             & 
&  18*g1p2*gpp2*M4*Ql9p2 + 30*g2p2*gpp2*M4*Ql9p2 + 30*g2p2*gpp2*M2*Ql9p2 +               & 
&  180*gpp4*M4*Qdp2*Ql9p2 + 20*gpp4*M4*Qe4p2*Ql9p2 + 120*gpp4*M4*Qe9p2*Ql9p2 +           & 
&  120*gpp4*M4*QHdp2*Ql9p2 + 40*gpp4*M4*QHup2*Ql9p2 + 40*gpp4*M4*Ql4p2*Ql9p2 +           & 
&  120*gpp4*M4*Ql9p4 + 36*g1p2*gpp2*M1*Qe9*Qq + 36*g1p2*gpp2*M4*Qe9*Qq - 18*g1p2*gpp2*M1*QHd*Qq -& 
&  18*g1p2*gpp2*M4*QHd*Qq - 18*g1p2*gpp2*M1*Ql9*Qq - 18*g1p2*gpp2*M4*Ql9*Qq +            & 
&  360*gpp4*M4*Qe9p2*Qqp2 + 360*gpp4*M4*QHdp2*Qqp2 + 360*gpp4*M4*Ql9p2*Qqp2 +            & 
&  10*gpp2*lamp2*M4*Qsp2 + 20*gpp4*M4*Qe9p2*Qsp2 + 20*gpp4*M4*QHdp2*Qsp2 +               & 
&  20*gpp4*M4*Ql9p2*Qsp2 - 72*g1p2*gpp2*M1*Qe9*Qu - 72*g1p2*gpp2*M4*Qe9*Qu +             & 
&  36*g1p2*gpp2*M1*QHd*Qu + 36*g1p2*gpp2*M4*QHd*Qu + 36*g1p2*gpp2*M1*Ql9*Qu +            & 
&  36*g1p2*gpp2*M4*Ql9*Qu + 180*gpp4*M4*Qe9p2*Qup2 + 180*gpp4*M4*QHdp2*Qup2 +            & 
&  180*gpp4*M4*Ql9p2*Qup2 - 6*g1p2*Tradjy2Ty2 - 10*gpp2*Qe9p2*Tradjy2Ty2 +               & 
&  10*gpp2*QHdp2*Tradjy2Ty2 - 10*gpp2*Ql9p2*Tradjy2Ty2 + 2*g1p2*TradjYdTd -              & 
&  80*g3p2*TradjYdTd - 30*gpp2*Qdp2*TradjYdTd + 30*gpp2*QHdp2*TradjYdTd - 30*gpp2*Qqp2*TradjYdTd +& 
&  15*lamp2*TradjYuTu + 6*g1p2*M1*Try2adjy2 + 10*gpp2*M4*Qe9p2*Try2adjy2 -               & 
&  10*gpp2*M4*QHdp2*Try2adjy2 + 10*gpp2*M4*Ql9p2*Try2adjy2 + 30._dp*(Try2adjy2Ty2adjy2) -& 
&  2*g1p2*M1*TrYdadjYd + 80*g3p2*M3*TrYdadjYd + 30*gpp2*M4*Qdp2*TrYdadjYd -              & 
&  30*gpp2*M4*QHdp2*TrYdadjYd + 30*gpp2*M4*Qqp2*TrYdadjYd + 90._dp*(TrYdadjYdTdadjYd) +  & 
&  15._dp*(TrYdadjYuTuadjYd) + 15._dp*(TrYuadjYdTdadjYu) + 30*Cy1p2*y1*Ty1 +             & 
&  2*Conjg(y1)*(3*g1p2*M1*y1 + 5*gpp2*M4*(Qe4p2 - QHdp2 + Ql4p2)*y1 - 3*g1p2*Ty1 -       & 
&  5*gpp2*(Qe4p2 - QHdp2 + Ql4p2)*Ty1) + 5*(6._dp*(lamp2) + 2*gpp2*(QHdp2 -              & 
&  QHup2 - Qsp2) + 3._dp*(TrYuadjYu))*lam*Tlam))/5._dp

 
DTy2 = oo16pi2*( betaTy21 + oo16pi2 * betaTy22 ) 

 
Else 
DTy2 = oo16pi2* betaTy21 
End If 
 
 
Call Chop(DTy2) 

!-------------------- 
! Tlam 
!-------------------- 
 
betaTlam1  = (6*g1p2*M1*lam)/5._dp + 6*g2p2*M2*lam + 4*gpp2*M4*QHdp2*lam +            & 
&  4*gpp2*M4*QHup2*lam + 4*gpp2*M4*Qsp2*lam + 2*Tradjy2Ty2*lam + 6*TradjYdTd*lam +       & 
&  6*TradjYuTu*lam + (-3._dp*(g1p2)/5._dp - 3._dp*(g2p2) + 12._dp*(lamp2) -              & 
&  2*gpp2*QHdp2 - 2*gpp2*QHup2 - 2*gpp2*Qsp2 + Try2adjy2 + 3._dp*(TrYdadjYd)             & 
&  + 3._dp*(TrYuadjYu))*Tlam + Conjg(y1)*(2*lam*Ty1 + y1*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTlam2 = (-2*(207*g1p4*M1 + 45*g1p2*g2p2*M1 + 30*g1p2*lamp2*M1 + 45*g1p2*g2p2*M2 +             & 
&  375*g2p4*M2 + 150*g2p2*lamp2*M2 - 90*g1p2*gpp2*M1*Qd*QHd - 90*g1p2*gpp2*M4*Qd*QHd -   & 
&  30*g1p2*gpp2*M1*Qe4*QHd - 30*g1p2*gpp2*M4*Qe4*QHd - 60*g1p2*gpp2*M1*Qe9*QHd -         & 
&  60*g1p2*gpp2*M4*Qe9*QHd + 60*g1p2*gpp2*M1*QHdp2 + 60*g1p2*gpp2*M4*QHdp2 +             & 
&  150*g2p2*gpp2*M4*QHdp2 + 100*gpp2*lamp2*M4*QHdp2 + 150*g2p2*gpp2*M2*QHdp2 +           & 
&  900*gpp4*M4*Qdp2*QHdp2 + 100*gpp4*M4*Qe4p2*QHdp2 + 200*gpp4*M4*Qe9p2*QHdp2 +          & 
&  400*gpp4*M4*QHdp4 + 90*g1p2*gpp2*M1*Qd*QHu + 90*g1p2*gpp2*M4*Qd*QHu + 30*g1p2*gpp2*M1*Qe4*QHu +& 
&  30*g1p2*gpp2*M4*Qe4*QHu + 60*g1p2*gpp2*M1*Qe9*QHu + 60*g1p2*gpp2*M4*Qe9*QHu -         & 
&  60*g1p2*gpp2*M1*QHd*QHu - 60*g1p2*gpp2*M4*QHd*QHu + 60*g1p2*gpp2*M1*QHup2 +           & 
&  60*g1p2*gpp2*M4*QHup2 + 150*g2p2*gpp2*M4*QHup2 + 100*gpp2*lamp2*M4*QHup2 +            & 
&  150*g2p2*gpp2*M2*QHup2 + 900*gpp4*M4*Qdp2*QHup2 + 100*gpp4*M4*Qe4p2*QHup2 +           & 
&  200*gpp4*M4*Qe9p2*QHup2 + 400*gpp4*M4*QHdp2*QHup2 + 400*gpp4*M4*QHup4 +               & 
&  30*g1p2*gpp2*M1*QHd*Ql4 + 30*g1p2*gpp2*M4*QHd*Ql4 - 30*g1p2*gpp2*M1*QHu*Ql4 -         & 
&  30*g1p2*gpp2*M4*QHu*Ql4 + 200*gpp4*M4*QHdp2*Ql4p2 + 200*gpp4*M4*QHup2*Ql4p2 +         & 
&  60*g1p2*gpp2*M1*QHd*Ql9 + 60*g1p2*gpp2*M4*QHd*Ql9 - 60*g1p2*gpp2*M1*QHu*Ql9 -         & 
&  60*g1p2*gpp2*M4*QHu*Ql9 + 400*gpp4*M4*QHdp2*Ql9p2 + 400*gpp4*M4*QHup2*Ql9p2 -         & 
&  90*g1p2*gpp2*M1*QHd*Qq - 90*g1p2*gpp2*M4*QHd*Qq + 90*g1p2*gpp2*M1*QHu*Qq +            & 
&  90*g1p2*gpp2*M4*QHu*Qq + 1800*gpp4*M4*QHdp2*Qqp2 + 1800*gpp4*M4*QHup2*Qqp2 +          & 
&  900*gpp4*M4*Qdp2*Qsp2 + 100*gpp4*M4*Qe4p2*Qsp2 + 200*gpp4*M4*Qe9p2*Qsp2 +             & 
&  300*gpp4*M4*QHdp2*Qsp2 + 300*gpp4*M4*QHup2*Qsp2 + 200*gpp4*M4*Ql4p2*Qsp2 +            & 
&  400*gpp4*M4*Ql9p2*Qsp2 + 1800*gpp4*M4*Qqp2*Qsp2 + 300*gpp4*M4*Qsp4 + 180*g1p2*gpp2*M1*QHd*Qu +& 
&  180*g1p2*gpp2*M4*QHd*Qu - 180*g1p2*gpp2*M1*QHu*Qu - 180*g1p2*gpp2*M4*QHu*Qu +         & 
&  900*gpp4*M4*QHdp2*Qup2 + 900*gpp4*M4*QHup2*Qup2 + 900*gpp4*M4*Qsp2*Qup2 -             & 
&  30*g1p2*Tradjy2Ty2 + 75*lamp2*Tradjy2Ty2 - 50*gpp2*Qe9p2*Tradjy2Ty2 + 50*gpp2*QHdp2*Tradjy2Ty2 -& 
&  50*gpp2*Ql9p2*Tradjy2Ty2 + 10*g1p2*TradjYdTd - 400*g3p2*TradjYdTd + 225*lamp2*TradjYdTd -& 
&  150*gpp2*Qdp2*TradjYdTd + 150*gpp2*QHdp2*TradjYdTd - 150*gpp2*Qqp2*TradjYdTd -        & 
&  20*g1p2*TradjYuTu - 400*g3p2*TradjYuTu + 225*lamp2*TradjYuTu + 150*gpp2*QHup2*TradjYuTu -& 
&  150*gpp2*Qqp2*TradjYuTu - 150*gpp2*Qup2*TradjYuTu + 10*(3*g1p2*M1 + 5*gpp2*M4*(Qe9p2 -& 
&  QHdp2 + Ql9p2))*Try2adjy2 + 150._dp*(Try2adjy2Ty2adjy2) - 10*(g1p2*M1 -               & 
&  5*(8*g3p2*M3 + 3*gpp2*M4*(Qdp2 - QHdp2 + Qqp2)))*TrYdadjYd + 450._dp*(TrYdadjYdTdadjYd) +& 
&  150._dp*(TrYdadjYuTuadjYd) + 150._dp*(TrYuadjYdTdadjYu) + 20*g1p2*M1*TrYuadjYu +      & 
&  400*g3p2*M3*TrYuadjYu - 150*gpp2*M4*QHup2*TrYuadjYu + 150*gpp2*M4*Qqp2*TrYuadjYu +    & 
&  150*gpp2*M4*Qup2*TrYuadjYu + 450._dp*(TrYuadjYuTuadjYu))*lam)/25._dp + (207._dp*(g1p4)/50._dp +& 
&  (9*g1p2*g2p2)/5._dp + 15._dp*(g2p4)/2._dp + (18*g1p2*lamp2)/5._dp + 18*g2p2*lamp2 -   & 
&  50._dp*(lamp4) - (18*g1p2*gpp2*Qd*QHd)/5._dp - (6*g1p2*gpp2*Qe4*QHd)/5._dp -          & 
&  (12*g1p2*gpp2*Qe9*QHd)/5._dp + (12*g1p2*gpp2*QHdp2)/5._dp + 6*g2p2*gpp2*QHdp2 +       & 
&  12*gpp2*lamp2*QHdp2 + 18*gpp4*Qdp2*QHdp2 + 2*gpp4*Qe4p2*QHdp2 + 4*gpp4*Qe9p2*QHdp2 +  & 
&  8*gpp4*QHdp4 + (18*g1p2*gpp2*Qd*QHu)/5._dp + (6*g1p2*gpp2*Qe4*QHu)/5._dp +            & 
&  (12*g1p2*gpp2*Qe9*QHu)/5._dp - (12*g1p2*gpp2*QHd*QHu)/5._dp + (12*g1p2*gpp2*QHup2)/5._dp +& 
&  6*g2p2*gpp2*QHup2 + 12*gpp2*lamp2*QHup2 + 18*gpp4*Qdp2*QHup2 + 2*gpp4*Qe4p2*QHup2 +   & 
&  4*gpp4*Qe9p2*QHup2 + 8*gpp4*QHdp2*QHup2 + 8*gpp4*QHup4 + (6*g1p2*gpp2*QHd*Ql4)/5._dp -& 
&  (6*g1p2*gpp2*QHu*Ql4)/5._dp + 4*gpp4*QHdp2*Ql4p2 + 4*gpp4*QHup2*Ql4p2 +               & 
&  (12*g1p2*gpp2*QHd*Ql9)/5._dp - (12*g1p2*gpp2*QHu*Ql9)/5._dp + 8*gpp4*QHdp2*Ql9p2 +    & 
&  8*gpp4*QHup2*Ql9p2 - (18*g1p2*gpp2*QHd*Qq)/5._dp + (18*g1p2*gpp2*QHu*Qq)/5._dp +      & 
&  36*gpp4*QHdp2*Qqp2 + 36*gpp4*QHup2*Qqp2 + 18*gpp4*Qdp2*Qsp2 + 2*gpp4*Qe4p2*Qsp2 +     & 
&  4*gpp4*Qe9p2*Qsp2 + 6*gpp4*QHdp2*Qsp2 + 6*gpp4*QHup2*Qsp2 + 4*gpp4*Ql4p2*Qsp2 +       & 
&  8*gpp4*Ql9p2*Qsp2 + 36*gpp4*Qqp2*Qsp2 + 6*gpp4*Qsp4 + (36*g1p2*gpp2*QHd*Qu)/5._dp -   & 
&  (36*g1p2*gpp2*QHu*Qu)/5._dp + 18*gpp4*QHdp2*Qup2 + 18*gpp4*QHup2*Qup2 +               & 
&  18*gpp4*Qsp2*Qup2 + ((6._dp*(g1p2) - 45._dp*(lamp2) + 10*gpp2*(Qe9p2 - QHdp2 +        & 
&  Ql9p2))*Try2adjy2)/5._dp - 3._dp*(Try2adjy2y2adjy2) - ((2._dp*(g1p2) - 80._dp*(g3p2) +& 
&  135._dp*(lamp2) - 30*gpp2*(Qdp2 - QHdp2 + Qqp2))*TrYdadjYd)/5._dp - 9._dp*(TrYdadjYdYdadjYd) -& 
&  6._dp*(TrYdadjYuYuadjYd) + (4*g1p2*TrYuadjYu)/5._dp + 16*g3p2*TrYuadjYu -             & 
&  27*lamp2*TrYuadjYu - 6*gpp2*QHup2*TrYuadjYu + 6*gpp2*Qqp2*TrYuadjYu + 6*gpp2*Qup2*TrYuadjYu -& 
&  9._dp*(TrYuadjYuYuadjYu))*Tlam - 3*Cy1p2*y1*(4*lam*Ty1 + y1*Tlam) - (Conjg(y1)*(-     & 
& 2*(6._dp*(g1p2) - 15._dp*(lamp2) + 10*gpp2*(Qe4p2 - QHdp2 + Ql4p2))*lam*Ty1 +          & 
&  y1*(4*(3*g1p2*M1 + 5*gpp2*M4*(Qe4p2 - QHdp2 + Ql4p2))*lam + (-6._dp*(g1p2) +          & 
&  45._dp*(lamp2) - 10*gpp2*(Qe4p2 - QHdp2 + Ql4p2))*Tlam)))/5._dp

 
DTlam = oo16pi2*( betaTlam1 + oo16pi2 * betaTlam2 ) 

 
Else 
DTlam = oo16pi2* betaTlam1 
End If 
 
 
!-------------------- 
! Tu 
!-------------------- 
 
betaTu1  = TuadjYdYd + 5._dp*(TuadjYuYu) + 2._dp*(YuadjYdTd) + 4._dp*(YuadjYuTu)      & 
&  - (13*g1p2*Tu)/15._dp - 3*g2p2*Tu - (16*g3p2*Tu)/3._dp + lamp2*Tu - 2*gpp2*QHup2*Tu - & 
&  2*gpp2*Qqp2*Tu - 2*gpp2*Qup2*Tu + 3*TrYuadjYu*Tu + Yu*((26*g1p2*M1)/15._dp +          & 
&  (32*g3p2*M3)/3._dp + 6*g2p2*M2 + 4*gpp2*M4*QHup2 + 4*gpp2*M4*Qqp2 + 4*gpp2*M4*Qup2 +  & 
&  6._dp*(TradjYuTu) + 2*lam*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTu2 = -(Absy1*TuadjYdYd) + (2*g1p2*TuadjYdYd)/5._dp - lamp2*TuadjYdYd + 2*gpp2*Qdp2*TuadjYdYd +& 
&  2*gpp2*QHdp2*TuadjYdYd - 2*gpp2*Qqp2*TuadjYdYd - Try2adjy2*TuadjYdYd - 3*TrYdadjYd*TuadjYdYd -& 
&  2._dp*(TuadjYdYdadjYdYd) - 4._dp*(TuadjYdYdadjYuYu) + 12*g2p2*TuadjYuYu -             & 
&  5*lamp2*TuadjYuYu + 10*gpp2*QHup2*TuadjYuYu + 6*gpp2*Qqp2*TuadjYuYu - 6*gpp2*Qup2*TuadjYuYu -& 
&  15*TrYuadjYu*TuadjYuYu - 6._dp*(TuadjYuYuadjYuYu) - 2*Absy1*YuadjYdTd +               & 
&  (4*g1p2*YuadjYdTd)/5._dp - 2*lamp2*YuadjYdTd + 4*gpp2*Qdp2*YuadjYdTd + 4*gpp2*QHdp2*YuadjYdTd -& 
&  4*gpp2*Qqp2*YuadjYdTd - 2*Try2adjy2*YuadjYdTd - 6*TrYdadjYd*YuadjYdTd -               & 
&  4._dp*(YuadjYdTdadjYdYd) - 4._dp*(YuadjYdTdadjYuYu) - 4._dp*(YuadjYdYdadjYdTd) -      & 
&  2._dp*(YuadjYdYdadjYuTu) + (6*g1p2*YuadjYuTu)/5._dp + 6*g2p2*YuadjYuTu -              & 
&  4*lamp2*YuadjYuTu + 8*gpp2*QHup2*YuadjYuTu - 12*TrYuadjYu*YuadjYuTu - 8._dp*(YuadjYuTuadjYuYu) -& 
&  (4*g1p2*M1*YuadjYuYu)/5._dp - 12*g2p2*M2*YuadjYuYu - 12*gpp2*M4*QHup2*YuadjYuYu -     & 
&  4*gpp2*M4*Qqp2*YuadjYuYu + 4*gpp2*M4*Qup2*YuadjYuYu - 18*TradjYuTu*YuadjYuYu -        & 
&  6._dp*(YuadjYuYuadjYuTu) + (2743*g1p4*Tu)/450._dp + g1p2*g2p2*Tu + (15*g2p4*Tu)/2._dp +& 
&  (136*g1p2*g3p2*Tu)/45._dp + 8*g2p2*g3p2*Tu - (16*g3p4*Tu)/9._dp - Absy1*lamp2*Tu -    & 
&  3*lamp4*Tu + 2*gpp2*lamp2*QHdp2*Tu + (18*g1p2*gpp2*Qd*QHu*Tu)/5._dp + (6*g1p2*gpp2*Qe4*QHu*Tu)/5._dp +& 
&  (12*g1p2*gpp2*Qe9*QHu*Tu)/5._dp - (6*g1p2*gpp2*QHd*QHu*Tu)/5._dp + (12*g1p2*gpp2*QHup2*Tu)/5._dp +& 
&  6*g2p2*gpp2*QHup2*Tu - 2*gpp2*lamp2*QHup2*Tu + 18*gpp4*Qdp2*QHup2*Tu + 2*gpp4*Qe4p2*QHup2*Tu +& 
&  4*gpp4*Qe9p2*QHup2*Tu + 4*gpp4*QHdp2*QHup2*Tu + 8*gpp4*QHup4*Tu - (6*g1p2*gpp2*QHu*Ql4*Tu)/5._dp +& 
&  4*gpp4*QHup2*Ql4p2*Tu - (12*g1p2*gpp2*QHu*Ql9*Tu)/5._dp + 8*gpp4*QHup2*Ql9p2*Tu +     & 
&  (6*g1p2*gpp2*Qd*Qq*Tu)/5._dp + (2*g1p2*gpp2*Qe4*Qq*Tu)/5._dp + (4*g1p2*gpp2*Qe9*Qq*Tu)/5._dp -& 
&  (2*g1p2*gpp2*QHd*Qq*Tu)/5._dp + 4*g1p2*gpp2*QHu*Qq*Tu - (2*g1p2*gpp2*Ql4*Qq*Tu)/5._dp  
betaTu2 =  betaTu2- (4*g1p2*gpp2*Ql9*Qq*Tu)/5._dp + (4*g1p2*gpp2*Qqp2*Tu)/3._dp + 6*g2p2*gpp2*Qqp2*Tu +   & 
&  (32*g3p2*gpp2*Qqp2*Tu)/3._dp + 18*gpp4*Qdp2*Qqp2*Tu + 2*gpp4*Qe4p2*Qqp2*Tu +          & 
&  4*gpp4*Qe9p2*Qqp2*Tu + 4*gpp4*QHdp2*Qqp2*Tu + 40*gpp4*QHup2*Qqp2*Tu + 4*gpp4*Ql4p2*Qqp2*Tu +& 
&  8*gpp4*Ql9p2*Qqp2*Tu + 40*gpp4*Qqp4*Tu + 2*gpp2*lamp2*Qsp2*Tu + 2*gpp4*QHup2*Qsp2*Tu +& 
&  2*gpp4*Qqp2*Qsp2*Tu - (24*g1p2*gpp2*Qd*Qu*Tu)/5._dp - (8*g1p2*gpp2*Qe4*Qu*Tu)/5._dp - & 
&  (16*g1p2*gpp2*Qe9*Qu*Tu)/5._dp + (8*g1p2*gpp2*QHd*Qu*Tu)/5._dp - (44*g1p2*gpp2*QHu*Qu*Tu)/5._dp +& 
&  (8*g1p2*gpp2*Ql4*Qu*Tu)/5._dp + (16*g1p2*gpp2*Ql9*Qu*Tu)/5._dp - (36*g1p2*gpp2*Qq*Qu*Tu)/5._dp +& 
&  (176*g1p2*gpp2*Qup2*Tu)/15._dp + (32*g3p2*gpp2*Qup2*Tu)/3._dp + 18*gpp4*Qdp2*Qup2*Tu +& 
&  2*gpp4*Qe4p2*Qup2*Tu + 4*gpp4*Qe9p2*Qup2*Tu + 4*gpp4*QHdp2*Qup2*Tu + 22*gpp4*QHup2*Qup2*Tu +& 
&  4*gpp4*Ql4p2*Qup2*Tu + 8*gpp4*Ql9p2*Qup2*Tu + 54*gpp4*Qqp2*Qup2*Tu + 2*gpp4*Qsp2*Qup2*Tu +& 
&  22*gpp4*Qup4*Tu - lamp2*Try2adjy2*Tu - 3*lamp2*TrYdadjYd*Tu - 3*TrYdadjYuYuadjYd*Tu + & 
&  (4*g1p2*TrYuadjYu*Tu)/5._dp + 16*g3p2*TrYuadjYu*Tu - 6*gpp2*QHup2*TrYuadjYu*Tu +      & 
&  6*gpp2*Qqp2*TrYuadjYu*Tu + 6*gpp2*Qup2*TrYuadjYu*Tu - 9*TrYuadjYuYuadjYu*Tu -         & 
&  6*YuadjYuYu*lam*Tlam - (2*YuadjYdYd*(2*g1p2*M1 + 10*gpp2*M4*Qdp2 + 10*gpp2*M4*QHdp2 - & 
&  10*gpp2*M4*Qqp2 + 5._dp*(Tradjy2Ty2) + 15._dp*(TradjYdTd) + 5*Conjg(y1)*Ty1 +         & 
&  5*lam*Tlam))/5._dp + Yu*((-5486*g1p4*M1)/225._dp - 2*g1p2*g2p2*M1 - (272*g1p2*g3p2*M1)/45._dp -& 
&  (272*g1p2*g3p2*M3)/45._dp - 16*g2p2*g3p2*M3 + (64*g3p4*M3)/9._dp - 2*g1p2*g2p2*M2 -   & 
&  30*g2p4*M2 - 16*g2p2*g3p2*M2 - 4*gpp2*lamp2*M4*QHdp2 - (36*g1p2*gpp2*M1*Qd*QHu)/5._dp -& 
&  (36*g1p2*gpp2*M4*Qd*QHu)/5._dp - (12*g1p2*gpp2*M1*Qe4*QHu)/5._dp - (12*g1p2*gpp2*M4*Qe4*QHu)/5._dp -& 
&  (24*g1p2*gpp2*M1*Qe9*QHu)/5._dp - (24*g1p2*gpp2*M4*Qe9*QHu)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHd*QHu)/5._dp - (24*g1p2*gpp2*M1*QHup2)/5._dp - (24*g1p2*gpp2*M4*QHup2)/5._dp -& 
&  12*g2p2*gpp2*M4*QHup2 + 4*gpp2*lamp2*M4*QHup2 - 12*g2p2*gpp2*M2*QHup2 -               & 
&  72*gpp4*M4*Qdp2*QHup2 - 8*gpp4*M4*Qe4p2*QHup2 - 16*gpp4*M4*Qe9p2*QHup2 -              & 
&  16*gpp4*M4*QHdp2*QHup2 - 32*gpp4*M4*QHup4 + (12*g1p2*gpp2*M1*QHu*Ql4)/5._dp +         & 
&  (12*g1p2*gpp2*M4*QHu*Ql4)/5._dp - 16*gpp4*M4*QHup2*Ql4p2 + (24*g1p2*gpp2*M1*QHu*Ql9)/5._dp +& 
&  (24*g1p2*gpp2*M4*QHu*Ql9)/5._dp - 32*gpp4*M4*QHup2*Ql9p2 - (12*g1p2*gpp2*M1*Qd*Qq)/5._dp -& 
&  (12*g1p2*gpp2*M4*Qd*Qq)/5._dp - (4*g1p2*gpp2*M1*Qe4*Qq)/5._dp - (4*g1p2*gpp2*M4*Qe4*Qq)/5._dp -& 
&  (8*g1p2*gpp2*M1*Qe9*Qq)/5._dp - (8*g1p2*gpp2*M4*Qe9*Qq)/5._dp + (4*g1p2*gpp2*M1*QHd*Qq)/5._dp +& 
&  (4*g1p2*gpp2*M4*QHd*Qq)/5._dp - 8*g1p2*gpp2*M1*QHu*Qq - 8*g1p2*gpp2*M4*QHu*Qq +       & 
&  (4*g1p2*gpp2*M1*Ql4*Qq)/5._dp + (4*g1p2*gpp2*M4*Ql4*Qq)/5._dp + (8*g1p2*gpp2*M1*Ql9*Qq)/5._dp +& 
&  (8*g1p2*gpp2*M4*Ql9*Qq)/5._dp - (8*g1p2*gpp2*M1*Qqp2)/3._dp - (64*g3p2*gpp2*M3*Qqp2)/3._dp -& 
&  (8*g1p2*gpp2*M4*Qqp2)/3._dp - 12*g2p2*gpp2*M4*Qqp2 - (64*g3p2*gpp2*M4*Qqp2)/3._dp -   & 
&  12*g2p2*gpp2*M2*Qqp2 - 72*gpp4*M4*Qdp2*Qqp2 - 8*gpp4*M4*Qe4p2*Qqp2 - 16*gpp4*M4*Qe9p2*Qqp2 -& 
&  16*gpp4*M4*QHdp2*Qqp2 - 160*gpp4*M4*QHup2*Qqp2 - 16*gpp4*M4*Ql4p2*Qqp2 -              & 
&  32*gpp4*M4*Ql9p2*Qqp2 - 160*gpp4*M4*Qqp4 - 4*gpp2*lamp2*M4*Qsp2 - 8*gpp4*M4*QHup2*Qsp2 -& 
&  8*gpp4*M4*Qqp2*Qsp2 + (48*g1p2*gpp2*M1*Qd*Qu)/5._dp + (48*g1p2*gpp2*M4*Qd*Qu)/5._dp + & 
&  (16*g1p2*gpp2*M1*Qe4*Qu)/5._dp + (16*g1p2*gpp2*M4*Qe4*Qu)/5._dp + (32*g1p2*gpp2*M1*Qe9*Qu)/5._dp +& 
&  (32*g1p2*gpp2*M4*Qe9*Qu)/5._dp - (16*g1p2*gpp2*M1*QHd*Qu)/5._dp - (16*g1p2*gpp2*M4*QHd*Qu)/5._dp +& 
&  (88*g1p2*gpp2*M1*QHu*Qu)/5._dp + (88*g1p2*gpp2*M4*QHu*Qu)/5._dp - (16*g1p2*gpp2*M1*Ql4*Qu)/5._dp -& 
&  (16*g1p2*gpp2*M4*Ql4*Qu)/5._dp - (32*g1p2*gpp2*M1*Ql9*Qu)/5._dp - (32*g1p2*gpp2*M4*Ql9*Qu)/5._dp +& 
&  (72*g1p2*gpp2*M1*Qq*Qu)/5._dp + (72*g1p2*gpp2*M4*Qq*Qu)/5._dp - (352*g1p2*gpp2*M1*Qup2)/15._dp -& 
&  (64*g3p2*gpp2*M3*Qup2)/3._dp - (352*g1p2*gpp2*M4*Qup2)/15._dp - (64*g3p2*gpp2*M4*Qup2)/3._dp -& 
&  72*gpp4*M4*Qdp2*Qup2 - 8*gpp4*M4*Qe4p2*Qup2 - 16*gpp4*M4*Qe9p2*Qup2 - 16*gpp4*M4*QHdp2*Qup2 -& 
&  88*gpp4*M4*QHup2*Qup2 - 16*gpp4*M4*Ql4p2*Qup2 - 32*gpp4*M4*Ql9p2*Qup2 -               & 
&  216*gpp4*M4*Qqp2*Qup2 - 8*gpp4*M4*Qsp2*Qup2 - 88*gpp4*M4*Qup4 - 2*lamp2*Tradjy2Ty2 -  & 
&  6*lamp2*TradjYdTd + (8*g1p2*TradjYuTu)/5._dp + 32*g3p2*TradjYuTu - 12*gpp2*QHup2*TradjYuTu +& 
&  12*gpp2*Qqp2*TradjYuTu + 12*gpp2*Qup2*TradjYuTu - 6._dp*(TrYdadjYuTuadjYd) -          & 
&  6._dp*(TrYuadjYdTdadjYu) - (8*g1p2*M1*TrYuadjYu)/5._dp - 32*g3p2*M3*TrYuadjYu +       & 
&  12*gpp2*M4*QHup2*TrYuadjYu - 12*gpp2*M4*Qqp2*TrYuadjYu - 12*gpp2*M4*Qup2*TrYuadjYu -  & 
&  36._dp*(TrYuadjYuTuadjYu) - 2*(6._dp*(lamp2) - 2*gpp2*QHdp2 + 2*gpp2*QHup2 -          & 
&  2*gpp2*Qsp2 + Try2adjy2 + 3._dp*(TrYdadjYd))*lam*Tlam - 2*lam*Conjg(y1)*(lam*Ty1 +    & 
&  y1*Tlam))

 
DTu = oo16pi2*( betaTu1 + oo16pi2 * betaTu2 ) 

 
Else 
DTu = oo16pi2* betaTu1 
End If 
 
 
Call Chop(DTu) 

!-------------------- 
! mq2 
!-------------------- 
 
betamq21  = 2._dp*(adjTdTd) + 2._dp*(adjTuTu) + 2._dp*(adjYdmd2Yd) + adjYdYdmq2 +     & 
&  2._dp*(adjYumu2Yu) + adjYuYumq2 - (2*AbsM1*g1p2*id3R)/15._dp - 6*AbsM2*g2p2*id3R -    & 
&  (32*AbsM3*g3p2*id3R)/3._dp + 2*adjYdYd*mHd2 + 2*adjYuYu*mHu2 + mq2adjYdYd +           & 
&  mq2adjYuYu - 8*AbsM4*gpp2*id3R*Qqp2 + 2._dp*(TpTdpCTdp) + g1*id3R*ooSqrt15*Tr1(1)     & 
&  + 2*gp*id3R*Qq*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamq22 = -2*Absy1*adjTdTd - 4._dp*(adjTdTdadjYdYd) - 4._dp*(adjTdYdadjYdTd) - 4._dp*(adjTuTuadjYuYu) -& 
&  4._dp*(adjTuYuadjYuTu) - 2*Absy1*adjYdmd2Yd - 4._dp*(adjYdmd2YdadjYdYd) -             & 
&  4._dp*(adjYdTdadjTdYd) - 2*AbsTy1*adjYdYd - 4._dp*(adjYdYdadjTdTd) - 4._dp*(adjYdYdadjYdmd2Yd) -& 
&  2._dp*(adjYdYdadjYdYdmq2) - Absy1*adjYdYdmq2 - 4._dp*(adjYdYdmq2adjYdYd) -            & 
&  4._dp*(adjYumu2YuadjYuYu) - 4._dp*(adjYuTuadjTuYu) - 4._dp*(adjYuYuadjTuTu) -         & 
&  4._dp*(adjYuYuadjYumu2Yu) - 2._dp*(adjYuYuadjYuYumq2) - 4._dp*(adjYuYumq2adjYuYu) +   & 
&  (4*adjTdTd*g1p2)/5._dp + (8*adjTuTu*g1p2)/5._dp + (4*adjYdmd2Yd*g1p2)/5._dp +         & 
&  (2*adjYdYdmq2*g1p2)/5._dp + (8*adjYumu2Yu*g1p2)/5._dp + (4*adjYuYumq2*g1p2)/5._dp +   & 
&  (2*AbsM2*g1p2*g2p2*id3R)/5._dp + 33*AbsM2*g2p4*id3R + 32*AbsM2*g2p2*g3p2*id3R -       & 
&  2*adjTdTd*lamp2 - 2*adjTuTu*lamp2 - 2*adjYdmd2Yd*lamp2 - adjYdYdmq2*lamp2 -           & 
&  2*adjYumu2Yu*lamp2 - adjYuYumq2*lamp2 - (4*adjTdYd*g1p2*M1)/5._dp - (8*adjTuYu*g1p2*M1)/5._dp -& 
&  2*Absy1*adjYdYd*me42 - 4*Absy1*adjYdYd*mHd2 - 8*adjYdYdadjYdYd*mHd2 + (4*adjYdYd*g1p2*mHd2)/5._dp -& 
&  4*adjYdYd*lamp2*mHd2 - 2*adjYuYu*lamp2*mHd2 - 8*adjYuYuadjYuYu*mHu2 + (8*adjYuYu*g1p2*mHu2)/5._dp -& 
&  2*adjYdYd*lamp2*mHu2 - 4*adjYuYu*lamp2*mHu2 - 2*Absy1*adjYdYd*ml42 - Absy1*mq2adjYdYd +& 
&  (2*g1p2*mq2adjYdYd)/5._dp - lamp2*mq2adjYdYd - 2._dp*(mq2adjYdYdadjYdYd) +            & 
&  (4*g1p2*mq2adjYuYu)/5._dp - lamp2*mq2adjYuYu - 2._dp*(mq2adjYuYuadjYuYu) -            & 
&  2*adjYdYd*lamp2*ms2 - 2*adjYuYu*lamp2*ms2 + 4*adjTdTd*gpp2*Qdp2 + 4*adjYdmd2Yd*gpp2*Qdp2 +& 
&  8*AbsM4*adjYdYd*gpp2*Qdp2 + 2*adjYdYdmq2*gpp2*Qdp2 - 4*adjTdYd*gpp2*M4*Qdp2 +         & 
&  4*adjYdYd*gpp2*mHd2*Qdp2 + 2*gpp2*mq2adjYdYd*Qdp2 + 4*adjTdTd*gpp2*QHdp2 +            & 
&  4*adjYdmd2Yd*gpp2*QHdp2 + 8*AbsM4*adjYdYd*gpp2*QHdp2 + 2*adjYdYdmq2*gpp2*QHdp2 -      & 
&  4*adjTdYd*gpp2*M4*QHdp2 + 4*adjYdYd*gpp2*mHd2*QHdp2 + 2*gpp2*mq2adjYdYd*QHdp2  
betamq22 =  betamq22+ 4*adjTuTu*gpp2*QHup2 + 4*adjYumu2Yu*gpp2*QHup2 + 8*AbsM4*adjYuYu*gpp2*QHup2 +         & 
&  2*adjYuYumq2*gpp2*QHup2 - 4*adjTuYu*gpp2*M4*QHup2 + 4*adjYuYu*gpp2*mHu2*QHup2 +       & 
&  2*gpp2*mq2adjYuYu*QHup2 + (24*AbsM4*g1p2*gpp2*id3R*Qd*Qq)/5._dp + (8*AbsM4*g1p2*gpp2*id3R*Qe4*Qq)/5._dp +& 
&  (16*AbsM4*g1p2*gpp2*id3R*Qe9*Qq)/5._dp - (8*AbsM4*g1p2*gpp2*id3R*QHd*Qq)/5._dp +      & 
&  (8*AbsM4*g1p2*gpp2*id3R*QHu*Qq)/5._dp - (8*AbsM4*g1p2*gpp2*id3R*Ql4*Qq)/5._dp -       & 
&  (16*AbsM4*g1p2*gpp2*id3R*Ql9*Qq)/5._dp - 4*adjTdTd*gpp2*Qqp2 - 4*adjTuTu*gpp2*Qqp2 -  & 
&  4*adjYdmd2Yd*gpp2*Qqp2 - 8*AbsM4*adjYdYd*gpp2*Qqp2 - 2*adjYdYdmq2*gpp2*Qqp2 -         & 
&  4*adjYumu2Yu*gpp2*Qqp2 - 8*AbsM4*adjYuYu*gpp2*Qqp2 - 2*adjYuYumq2*gpp2*Qqp2 +         & 
&  (16*AbsM4*g1p2*gpp2*id3R*Qqp2)/3._dp + 24*AbsM2*g2p2*gpp2*id3R*Qqp2 + 24*AbsM4*g2p2*gpp2*id3R*Qqp2 +& 
&  (128*AbsM4*g3p2*gpp2*id3R*Qqp2)/3._dp + 4*adjTdYd*gpp2*M4*Qqp2 + 4*adjTuYu*gpp2*M4*Qqp2 -& 
&  4*adjYdYd*gpp2*mHd2*Qqp2 - 4*adjYuYu*gpp2*mHu2*Qqp2 - 2*gpp2*mq2adjYdYd*Qqp2 -        & 
&  2*gpp2*mq2adjYuYu*Qqp2 + 216*AbsM4*gpp4*id3R*Qdp2*Qqp2 + 24*AbsM4*gpp4*id3R*Qe4p2*Qqp2 +& 
&  48*AbsM4*gpp4*id3R*Qe9p2*Qqp2 + 48*AbsM4*gpp4*id3R*QHdp2*Qqp2 + 48*AbsM4*gpp4*id3R*QHup2*Qqp2 +& 
&  48*AbsM4*gpp4*id3R*Ql4p2*Qqp2 + 96*AbsM4*gpp4*id3R*Ql9p2*Qqp2 + 480*AbsM4*gpp4*id3R*Qqp4 +& 
&  24*AbsM4*gpp4*id3R*Qqp2*Qsp2 - (48*AbsM4*g1p2*gpp2*id3R*Qq*Qu)/5._dp + 4*adjTuTu*gpp2*Qup2 +& 
&  4*adjYumu2Yu*gpp2*Qup2 + 8*AbsM4*adjYuYu*gpp2*Qup2 + 2*adjYuYumq2*gpp2*Qup2 -         & 
&  4*adjTuYu*gpp2*M4*Qup2 + 4*adjYuYu*gpp2*mHu2*Qup2 + 2*gpp2*mq2adjYuYu*Qup2 +          & 
&  216*AbsM4*gpp4*id3R*Qqp2*Qup2 - 2*adjYdYd*Tlamp2 - 2*adjYuYu*Tlamp2 - 2*adjTdYd*Tradjy2Ty2 -& 
&  6*adjTdYd*TradjYdTd - 6*adjTuYu*TradjYuTu - 6*adjYdYd*TrCTdTpTd - 6*adjYdTd*TrCTdTpYd -& 
&  6*adjYuYu*TrCTuTpTu - 6*adjYuTu*TrCTuTpYu - 2*adjYdYd*TrCTy2TpTy2 - 2*adjYdTd*TrCTy2Tpy2 -& 
&  6*adjYdYd*Trmd2YdadjYd - 2*adjYdYd*Trme92y2adjy2 - 2*adjYdYd*Trml92adjy2y2  
betamq22 =  betamq22- 6*adjYdYd*Trmq2adjYdYd - 6*adjYuYu*Trmq2adjYuYu - 6*adjYuYu*Trmu2YuadjYu -            & 
&  2*adjTdTd*Try2adjy2 - 2*adjYdmd2Yd*Try2adjy2 - adjYdYdmq2*Try2adjy2 - 4*adjYdYd*mHd2*Try2adjy2 -& 
&  mq2adjYdYd*Try2adjy2 - 6*adjTdTd*TrYdadjYd - 6*adjYdmd2Yd*TrYdadjYd - 3*adjYdYdmq2*TrYdadjYd -& 
&  12*adjYdYd*mHd2*TrYdadjYd - 3*mq2adjYdYd*TrYdadjYd - 6*adjTuTu*TrYuadjYu -            & 
&  6*adjYumu2Yu*TrYuadjYu - 3*adjYuYumq2*TrYuadjYu - 12*adjYuYu*mHu2*TrYuadjYu -         & 
&  3*mq2adjYuYu*TrYuadjYu + (g1p2*(180*(-1._dp*(adjYdTd) - 2._dp*(adjYuTu) +             & 
&  2*adjYdYd*M1 + 4*adjYuYu*M1) + id3R*(597*g1p2*M1 + 80*g3p2*(2._dp*(M1) +              & 
&  M3) + 45*g2p2*(2._dp*(M1) + M2) + 60*gpp2*(2._dp*(M1) + M4)*Qq*(9._dp*(Qd) +          & 
&  3._dp*(Qe4) + 6._dp*(Qe9) - 3._dp*(QHd) + 3._dp*(QHu) - 3._dp*(Ql4) - 6._dp*(Ql9) +   & 
&  10._dp*(Qq) - 18._dp*(Qu))))*Conjg(M1))/225._dp - (16*g3p2*id3R*(-(g1p2*(M1 +         & 
&  2._dp*(M3))) - 15*(-8*g3p2*M3 + 3*g2p2*(2._dp*(M3) + M2) + 4*gpp2*(2._dp*(M3) +       & 
&  M4)*Qqp2))*Conjg(M3))/45._dp - 4*adjYdTd*gpp2*Qdp2*Conjg(M4) - 4*adjYdTd*gpp2*QHdp2*Conjg(M4) -& 
&  4*adjYuTu*gpp2*QHup2*Conjg(M4) + (12*g1p2*gpp2*id3R*M1*Qd*Qq*Conjg(M4))/5._dp +       & 
&  (4*g1p2*gpp2*id3R*M1*Qe4*Qq*Conjg(M4))/5._dp + (8*g1p2*gpp2*id3R*M1*Qe9*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*QHd*Qq*Conjg(M4))/5._dp + (4*g1p2*gpp2*id3R*M1*QHu*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*Ql4*Qq*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Ql9*Qq*Conjg(M4))/5._dp +& 
&  4*adjYdTd*gpp2*Qqp2*Conjg(M4) + 4*adjYuTu*gpp2*Qqp2*Conjg(M4) + (8*g1p2*gpp2*id3R*M1*Qqp2*Conjg(M4))/3._dp +& 
&  (64*g3p2*gpp2*id3R*M3*Qqp2*Conjg(M4))/3._dp + 12*g2p2*gpp2*id3R*M2*Qqp2*Conjg(M4) -   & 
&  (24*g1p2*gpp2*id3R*M1*Qq*Qu*Conjg(M4))/5._dp - 4*adjYuTu*gpp2*Qup2*Conjg(M4) +        & 
&  (g1p2*g2p2*id3R*M1*Conjg(M2))/5._dp + 16*g2p2*g3p2*id3R*M3*Conjg(M2) + 12*g2p2*gpp2*id3R*M4*Qqp2*Conjg(M2) -& 
&  2*adjYdTd*y1*Conjg(Ty1) - 2*adjTdYd*Conjg(y1)*Ty1 - 2*adjTdYd*lam*Tlam  
betamq22 =  betamq22- 2*adjTuYu*lam*Tlam - 2*adjYdTd*lam*Tlam - 2*adjYuTu*lam*Tlam + 6*g2p4*id3R*Tr2(2) +   & 
&  (32*g3p4*id3R*Tr2(3))/3._dp + (2*g1p2*id3R*Tr2U1(1,1))/15._dp + 4*g1*gp*id3R*ooSqrt15*Qq*Tr2U1(1,& 
& 4) + 4*g1*gp*id3R*ooSqrt15*Qq*Tr2U1(4,1) + 8*gpp2*id3R*Qqp2*Tr2U1(4,4) +               & 
&  4*g1*id3R*ooSqrt15*Tr3(1) + 8*gp*id3R*Qq*Tr3(4)

 
Dmq2 = oo16pi2*( betamq21 + oo16pi2 * betamq22 ) 

 
Else 
Dmq2 = oo16pi2* betamq21 
End If 
 
 
Call Chop(Dmq2) 

Forall(i1=1:3) Dmq2(i1,i1) =  Real(Dmq2(i1,i1),dp) 
Dmq2 = 0.5_dp*(Dmq2+ Conjg(Transpose(Dmq2)) ) 
!-------------------- 
! ml42 
!-------------------- 
 
betaml421  = 2._dp*(AbsTy1) - (6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 + 2*Absy1*me42 +    & 
&  2*Absy1*mHd2 + 2*Absy1*ml42 - 8*AbsM4*gpp2*Ql4p2 - g1*sqrt3ov5*Tr1(1) +               & 
&  2*gp*Ql4*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml422 = -24*AbsTy1*Absy1 + (12*AbsTy1*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +              & 
&  33*AbsM2*g2p4 - 2*AbsTy1*lamp2 + (12*Absy1*g1p2*me42)/5._dp - 2*Absy1*lamp2*me42 +    & 
&  (12*Absy1*g1p2*mHd2)/5._dp - 4*Absy1*lamp2*mHd2 - 2*Absy1*lamp2*mHu2 + (12*Absy1*g1p2*ml42)/5._dp -& 
&  2*Absy1*lamp2*ml42 - 2*Absy1*lamp2*ms2 + 4*AbsTy1*gpp2*Qe4p2 + 4*Absy1*gpp2*me42*Qe4p2 +& 
&  4*Absy1*gpp2*mHd2*Qe4p2 + 4*Absy1*gpp2*ml42*Qe4p2 + 4*AbsTy1*gpp2*QHdp2 +             & 
&  4*Absy1*gpp2*me42*QHdp2 + 4*Absy1*gpp2*mHd2*QHdp2 + 4*Absy1*gpp2*ml42*QHdp2 -         & 
&  4*AbsTy1*gpp2*Ql4p2 + 24*AbsM2*g2p2*gpp2*Ql4p2 - 4*Absy1*gpp2*me42*Ql4p2 -            & 
&  4*Absy1*gpp2*mHd2*Ql4p2 - 4*Absy1*gpp2*ml42*Ql4p2 - 2*Absy1*Tlamp2 - 6*Absy1*TrCTdTpTd -& 
&  2*Absy1*TrCTy2TpTy2 - 6*Absy1*Trmd2YdadjYd - 2*Absy1*Trme92y2adjy2 - 2*Absy1*Trml92adjy2y2 -& 
&  6*Absy1*Trmq2adjYdYd - 2*AbsTy1*Try2adjy2 - 2*Absy1*me42*Try2adjy2 - 4*Absy1*mHd2*Try2adjy2 -& 
&  2*Absy1*ml42*Try2adjy2 - 6*AbsTy1*TrYdadjYd - 6*Absy1*me42*TrYdadjYd - 12*Absy1*mHd2*TrYdadjYd -& 
&  6*Absy1*ml42*TrYdadjYd - 12*Cy1p2*me42*y1p2 - 12*Cy1p2*mHd2*y1p2 - 12*Cy1p2*ml42*y1p2 +& 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*Ql4p2*Conjg(M2) - (12*g1p2*M1*y1*Conjg(Ty1))/5._dp -& 
&  4*gpp2*M4*Qe4p2*y1*Conjg(Ty1) - 4*gpp2*M4*QHdp2*y1*Conjg(Ty1) + 4*gpp2*M4*Ql4p2*y1*Conjg(Ty1) -& 
&  2*Tradjy2Ty2*y1*Conjg(Ty1) - 6*TradjYdTd*y1*Conjg(Ty1) + (3*g1p2*Conjg(M1)*(207*g1p2*M1 +& 
&  15*g2p2*(2._dp*(M1) + M2) - 20*gpp2*(2._dp*(M1) + M4)*Ql4*(3._dp*(Qd) +               & 
&  Qe4 + 2._dp*(Qe9) - QHd + QHu - 2._dp*(Ql4) - 2._dp*(Ql9) + 3._dp*(Qq) -              & 
&  6._dp*(Qu)) + 20*Conjg(y1)*(2*M1*y1 - Ty1)))/25._dp + (4*gpp2*Conjg(M4)*(3*Ql4*(-     & 
& (g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe4 + 2._dp*(Qe9) - QHd + QHu - 2._dp*(Ql4) -    & 
&  2._dp*(Ql9) + 3._dp*(Qq) - 6._dp*(Qu))) + 5*Ql4*(g2p2*(2._dp*(M4) + M2) +             & 
&  2*gpp2*M4*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2) + 2._dp*(QHup2) +     & 
&  4._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2)))) +              & 
&  5*(Qe4p2 + QHdp2 - Ql4p2)*Conjg(y1)*(2*M4*y1 - Ty1)))/5._dp - 6*TrCTdTpYd*Conjg(y1)*Ty1  
betaml422 =  betaml422- 2*TrCTy2Tpy2*Conjg(y1)*Ty1 - 2*y1*lam*Conjg(Ty1)*Tlam - 2*lam*Conjg(y1)*Ty1*Tlam +    & 
&  6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp - 4*g1*gp*Ql4*sqrt3ov5*Tr2U1(1,             & 
& 4) - 4*g1*gp*Ql4*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*Ql4p2*Tr2U1(4,4) - 4*g1*sqrt3ov5*Tr3(1) +& 
&  8*gp*Ql4*Tr3(4)

 
Dml42 = oo16pi2*( betaml421 + oo16pi2 * betaml422 ) 

 
Else 
Dml42 = oo16pi2* betaml421 
End If 
 
 
!-------------------- 
! ml92 
!-------------------- 
 
betaml921  = 2._dp*(adjTy2Ty2) + 2._dp*(adjy2me92y2) + adjy2y2ml92 - (6*AbsM1*g1p2*id2R)& 
& /5._dp - 6*AbsM2*g2p2*id2R + 2*adjy2y2*mHd2 + ml92adjy2y2 - 8*AbsM4*gpp2*id2R*Ql9p2 +  & 
&  2._dp*(TpTepCTep) - g1*id2R*sqrt3ov5*Tr1(1) + 2*gp*id2R*Ql9*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml922 = -2*Absy1*adjTy2Ty2 - 4._dp*(adjTy2Ty2adjy2y2) - 4._dp*(adjTy2y2adjy2Ty2) -            & 
&  2*Absy1*adjy2me92y2 - 4._dp*(adjy2me92y2adjy2y2) - 4._dp*(adjy2Ty2adjTy2y2) -         & 
&  2*AbsTy1*adjy2y2 - 4._dp*(adjy2y2adjTy2Ty2) - 4._dp*(adjy2y2adjy2me92y2) -            & 
&  2._dp*(adjy2y2adjy2y2ml92) - Absy1*adjy2y2ml92 - 4._dp*(adjy2y2ml92adjy2y2) +         & 
&  (12*adjTy2Ty2*g1p2)/5._dp + (12*adjy2me92y2*g1p2)/5._dp + (6*adjy2y2ml92*g1p2)/5._dp +& 
&  (18*AbsM2*g1p2*g2p2*id2R)/5._dp + 33*AbsM2*g2p4*id2R - 2*adjTy2Ty2*lamp2 -            & 
&  2*adjy2me92y2*lamp2 - adjy2y2ml92*lamp2 - (12*adjTy2y2*g1p2*M1)/5._dp -               & 
&  2*Absy1*adjy2y2*me42 - 4*Absy1*adjy2y2*mHd2 - 8*adjy2y2adjy2y2*mHd2 + (12*adjy2y2*g1p2*mHd2)/5._dp -& 
&  4*adjy2y2*lamp2*mHd2 - 2*adjy2y2*lamp2*mHu2 - 2*Absy1*adjy2y2*ml42 - Absy1*ml92adjy2y2 +& 
&  (6*g1p2*ml92adjy2y2)/5._dp - lamp2*ml92adjy2y2 - 2._dp*(ml92adjy2y2adjy2y2) -         & 
&  2*adjy2y2*lamp2*ms2 + 4*adjTy2Ty2*gpp2*Qe9p2 + 4*adjy2me92y2*gpp2*Qe9p2 +             & 
&  2*adjy2y2ml92*gpp2*Qe9p2 - 4*adjTy2y2*gpp2*M4*Qe9p2 + 4*adjy2y2*gpp2*mHd2*Qe9p2 +     & 
&  2*gpp2*ml92adjy2y2*Qe9p2 + 4*adjTy2Ty2*gpp2*QHdp2 + 4*adjy2me92y2*gpp2*QHdp2 +        & 
&  2*adjy2y2ml92*gpp2*QHdp2 - 4*adjTy2y2*gpp2*M4*QHdp2 + 4*adjy2y2*gpp2*mHd2*QHdp2 +     & 
&  2*gpp2*ml92adjy2y2*QHdp2 - 4*adjTy2Ty2*gpp2*Ql9p2 - 4*adjy2me92y2*gpp2*Ql9p2 -        & 
&  2*adjy2y2ml92*gpp2*Ql9p2 + 24*AbsM2*g2p2*gpp2*id2R*Ql9p2 + 4*adjTy2y2*gpp2*M4*Ql9p2 - & 
&  4*adjy2y2*gpp2*mHd2*Ql9p2 - 2*gpp2*ml92adjy2y2*Ql9p2 - 2*adjy2y2*Tlamp2 -             & 
&  2*adjTy2y2*Tradjy2Ty2 - 6*adjTy2y2*TradjYdTd - 6*adjy2y2*TrCTdTpTd - 6*adjy2Ty2*TrCTdTpYd -& 
&  2*adjy2y2*TrCTy2TpTy2 - 2*adjy2Ty2*TrCTy2Tpy2 - 6*adjy2y2*Trmd2YdadjYd -              & 
&  2*adjy2y2*Trme92y2adjy2 - 2*adjy2y2*Trml92adjy2y2 - 6*adjy2y2*Trmq2adjYdYd -          & 
&  2*adjTy2Ty2*Try2adjy2 - 2*adjy2me92y2*Try2adjy2 - adjy2y2ml92*Try2adjy2  
betaml922 =  betaml922- 4*adjy2y2*mHd2*Try2adjy2 - ml92adjy2y2*Try2adjy2 - 6*adjTy2Ty2*TrYdadjYd -            & 
&  6*adjy2me92y2*TrYdadjYd - 3*adjy2y2ml92*TrYdadjYd - 12*adjy2y2*mHd2*TrYdadjYd -       & 
&  3*ml92adjy2y2*TrYdadjYd + (3*g1p2*(-20._dp*(adjy2Ty2) + 40*adjy2y2*M1 +               & 
&  id2R*(207*g1p2*M1 + 15*g2p2*(2._dp*(M1) + M2) + 20*gpp2*(2._dp*(M1) + M4)*Ql9*(-      & 
& 3._dp*(Qd) - Qe4 - 2._dp*(Qe9) + QHd - QHu + Ql4 + 3._dp*(Ql9) - 3._dp*(Qq) +          & 
&  6._dp*(Qu))))*Conjg(M1))/25._dp + (4*gpp2*(5*(-1._dp*(adjy2Ty2) + 2*adjy2y2*M4)*(Qe9p2 +& 
&  QHdp2 - Ql9p2) + 3*id2R*Ql9*(-(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe4 +             & 
&  2._dp*(Qe9) - QHd + QHu - Ql4 - 3._dp*(Ql9) + 3._dp*(Qq) - 6._dp*(Qu))) +             & 
&  5*Ql9*(g2p2*(2._dp*(M4) + M2) + 2*gpp2*M4*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) +     & 
&  2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql4p2) + 6._dp*(Ql9p2) + 18._dp*(Qqp2) +       & 
&  Qsp2 + 9._dp*(Qup2)))))*Conjg(M4))/5._dp + (9*g1p2*g2p2*id2R*M1*Conjg(M2))/5._dp +    & 
&  12*g2p2*gpp2*id2R*M4*Ql9p2*Conjg(M2) - 2*adjy2Ty2*y1*Conjg(Ty1) - 2*adjTy2y2*Conjg(y1)*Ty1 -& 
&  2*adjTy2y2*lam*Tlam - 2*adjy2Ty2*lam*Tlam + 6*g2p4*id2R*Tr2(2) + (6*g1p2*id2R*Tr2U1(1,& 
& 1))/5._dp - 4*g1*gp*id2R*Ql9*sqrt3ov5*Tr2U1(1,4) - 4*g1*gp*id2R*Ql9*sqrt3ov5*Tr2U1(4,  & 
& 1) + 8*gpp2*id2R*Ql9p2*Tr2U1(4,4) - 4*g1*id2R*sqrt3ov5*Tr3(1) + 8*gp*id2R*Ql9*Tr3(4)

 
Dml92 = oo16pi2*( betaml921 + oo16pi2 * betaml922 ) 

 
Else 
Dml92 = oo16pi2* betaml921 
End If 
 
 
Call Chop(Dml92) 

Forall(i1=1:2) Dml92(i1,i1) =  Real(Dml92(i1,i1),dp) 
Dml92 = 0.5_dp*(Dml92+ Conjg(Transpose(Dml92)) ) 
!-------------------- 
! mHd2 
!-------------------- 
 
betamHd21  = 2._dp*(AbsTy1) - (6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 + 2*Absy1*me42 +    & 
&  2*Absy1*mHd2 + 2*lamp2*mHd2 + 2*lamp2*mHu2 + 2*Absy1*ml42 + 2*lamp2*ms2 -             & 
&  8*AbsM4*gpp2*QHdp2 + 2._dp*(Tlamp2) + 6._dp*(TrCTdTpTd) + 2._dp*(TrCTy2TpTy2)         & 
&  + 6._dp*(Trmd2YdadjYd) + 2._dp*(Trme92y2adjy2) + 2._dp*(Trml92adjy2y2) +              & 
&  6._dp*(Trmq2adjYdYd) + 2*mHd2*Try2adjy2 + 6*mHd2*TrYdadjYd - g1*sqrt3ov5*Tr1(1)       & 
&  + 2*gp*QHd*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamHd22 = -24*AbsTy1*Absy1 + (12*AbsTy1*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +              & 
&  33*AbsM2*g2p4 + (12*Absy1*g1p2*me42)/5._dp + (12*Absy1*g1p2*mHd2)/5._dp -             & 
&  12*lamp4*mHd2 - 12*lamp4*mHu2 + (12*Absy1*g1p2*ml42)/5._dp - 12*lamp4*ms2 +           & 
&  4*AbsTy1*gpp2*Qe4p2 + 4*Absy1*gpp2*me42*Qe4p2 + 4*Absy1*gpp2*mHd2*Qe4p2 +             & 
&  4*Absy1*gpp2*ml42*Qe4p2 - 4*AbsTy1*gpp2*QHdp2 + 24*AbsM2*g2p2*gpp2*QHdp2 -            & 
&  4*Absy1*gpp2*me42*QHdp2 - 4*Absy1*gpp2*mHd2*QHdp2 - 4*gpp2*lamp2*mHd2*QHdp2 -         & 
&  4*gpp2*lamp2*mHu2*QHdp2 - 4*Absy1*gpp2*ml42*QHdp2 - 4*gpp2*lamp2*ms2*QHdp2 +          & 
&  4*gpp2*lamp2*mHd2*QHup2 + 4*gpp2*lamp2*mHu2*QHup2 + 4*gpp2*lamp2*ms2*QHup2 +          & 
&  4*AbsTy1*gpp2*Ql4p2 + 4*Absy1*gpp2*me42*Ql4p2 + 4*Absy1*gpp2*mHd2*Ql4p2 +             & 
&  4*Absy1*gpp2*ml42*Ql4p2 + 4*gpp2*lamp2*mHd2*Qsp2 + 4*gpp2*lamp2*mHu2*Qsp2 +           & 
&  4*gpp2*lamp2*ms2*Qsp2 - 24*lamp2*Tlamp2 - 4*gpp2*QHdp2*Tlamp2 + 4*gpp2*QHup2*Tlamp2 + & 
&  4*gpp2*Qsp2*Tlamp2 - (4*g1p2*TrCTdTpTd)/5._dp + 32*g3p2*TrCTdTpTd + 12*gpp2*Qdp2*TrCTdTpTd -& 
&  12*gpp2*QHdp2*TrCTdTpTd + 12*gpp2*Qqp2*TrCTdTpTd + (4*g1p2*M1*TrCTdTpYd)/5._dp -      & 
&  32*g3p2*M3*TrCTdTpYd - 12*gpp2*M4*Qdp2*TrCTdTpYd + 12*gpp2*M4*QHdp2*TrCTdTpYd -       & 
&  12*gpp2*M4*Qqp2*TrCTdTpYd - 6*lamp2*TrCTuTpTu + (12*g1p2*TrCTy2TpTy2)/5._dp +         & 
&  4*gpp2*Qe9p2*TrCTy2TpTy2 - 4*gpp2*QHdp2*TrCTy2TpTy2 + 4*gpp2*Ql9p2*TrCTy2TpTy2 -      & 
&  (12*g1p2*M1*TrCTy2Tpy2)/5._dp - 4*gpp2*M4*Qe9p2*TrCTy2Tpy2 + 4*gpp2*M4*QHdp2*TrCTy2Tpy2 -& 
&  4*gpp2*M4*Ql9p2*TrCTy2Tpy2 - (4*g1p2*Trmd2YdadjYd)/5._dp + 32*g3p2*Trmd2YdadjYd +     & 
&  12*gpp2*Qdp2*Trmd2YdadjYd - 12*gpp2*QHdp2*Trmd2YdadjYd + 12*gpp2*Qqp2*Trmd2YdadjYd -  & 
&  36._dp*(Trmd2YdadjYdYdadjYd) - 6._dp*(Trmd2YdadjYuYuadjYd) + (12*g1p2*Trme92y2adjy2)/5._dp +& 
&  4*gpp2*Qe9p2*Trme92y2adjy2 - 4*gpp2*QHdp2*Trme92y2adjy2 + 4*gpp2*Ql9p2*Trme92y2adjy2  
betamHd22 =  betamHd22- 12._dp*(Trme92y2adjy2y2adjy2) + (12*g1p2*Trml92adjy2y2)/5._dp + 4*gpp2*Qe9p2*Trml92adjy2y2 -& 
&  4*gpp2*QHdp2*Trml92adjy2y2 + 4*gpp2*Ql9p2*Trml92adjy2y2 - 12._dp*(Trml92adjy2y2adjy2y2) -& 
&  (4*g1p2*Trmq2adjYdYd)/5._dp + 32*g3p2*Trmq2adjYdYd + 12*gpp2*Qdp2*Trmq2adjYdYd -      & 
&  12*gpp2*QHdp2*Trmq2adjYdYd + 12*gpp2*Qqp2*Trmq2adjYdYd - 36._dp*(Trmq2adjYdYdadjYdYd) -& 
&  6._dp*(Trmq2adjYdYdadjYuYu) - 6*lamp2*Trmq2adjYuYu - 6._dp*(Trmq2adjYuYuadjYdYd) -    & 
&  6._dp*(Trmu2YuadjYdYdadjYu) - 6*lamp2*Trmu2YuadjYu - 12._dp*(Try2adjTy2Ty2adjy2) +    & 
&  (12*g1p2*mHd2*Try2adjy2)/5._dp + 4*gpp2*mHd2*Qe9p2*Try2adjy2 - 4*gpp2*mHd2*QHdp2*Try2adjy2 +& 
&  4*gpp2*mHd2*Ql9p2*Try2adjy2 - 12._dp*(Try2adjy2Ty2adjTy2) - 12*mHd2*Try2adjy2y2adjy2 -& 
&  36._dp*(TrYdadjTdTdadjYd) - 6._dp*(TrYdadjTuTuadjYd) + 64*AbsM3*g3p2*TrYdadjYd -      & 
&  (4*g1p2*mHd2*TrYdadjYd)/5._dp + 32*g3p2*mHd2*TrYdadjYd + 12*gpp2*mHd2*Qdp2*TrYdadjYd -& 
&  12*gpp2*mHd2*QHdp2*TrYdadjYd + 12*gpp2*mHd2*Qqp2*TrYdadjYd - 36._dp*(TrYdadjYdTdadjTd) -& 
&  36*mHd2*TrYdadjYdYdadjYd - 6._dp*(TrYdadjYuTuadjTd) - 6*mHd2*TrYdadjYuYuadjYd -       & 
&  6*mHu2*TrYdadjYuYuadjYd - 6._dp*(TrYuadjTdTdadjYu) - 6._dp*(TrYuadjYdTdadjTu) -       & 
&  6*lamp2*mHd2*TrYuadjYu - 12*lamp2*mHu2*TrYuadjYu - 6*lamp2*ms2*TrYuadjYu -            & 
&  6*Tlamp2*TrYuadjYu - 12*Cy1p2*me42*y1p2 - 12*Cy1p2*mHd2*y1p2 - 12*Cy1p2*ml42*y1p2 -   & 
&  32*g3p2*TradjYdTd*Conjg(M3) + (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*QHdp2*Conjg(M2) -& 
&  (12*g1p2*M1*y1*Conjg(Ty1))/5._dp - 4*gpp2*M4*Qe4p2*y1*Conjg(Ty1) + 4*gpp2*M4*QHdp2*y1*Conjg(Ty1) -& 
&  4*gpp2*M4*Ql4p2*y1*Conjg(Ty1) + (g1p2*Conjg(M1)*(621*g1p2*M1 + 90*g2p2*M1 +           & 
&  45*g2p2*M2 - 360*gpp2*M1*Qd*QHd - 180*gpp2*M4*Qd*QHd - 120*gpp2*M1*Qe4*QHd -          & 
&  60*gpp2*M4*Qe4*QHd - 240*gpp2*M1*Qe9*QHd - 120*gpp2*M4*Qe9*QHd + 240*gpp2*M1*QHdp2 +  & 
&  120*gpp2*M4*QHdp2 - 120*gpp2*M1*QHd*QHu - 60*gpp2*M4*QHd*QHu + 120*gpp2*M1*QHd*Ql4 +  & 
&  60*gpp2*M4*QHd*Ql4 + 240*gpp2*M1*QHd*Ql9 + 120*gpp2*M4*QHd*Ql9 - 360*gpp2*M1*QHd*Qq - & 
&  180*gpp2*M4*QHd*Qq + 720*gpp2*M1*QHd*Qu + 360*gpp2*M4*QHd*Qu - 60._dp*(Tradjy2Ty2) +  & 
&  20._dp*(TradjYdTd) + 120*M1*Try2adjy2 - 40*M1*TrYdadjYd + 60*Conjg(y1)*(2*M1*y1 -     & 
&  Ty1)))/25._dp + 4*gpp2*M4*QHdp2*lam*Tlam - 4*gpp2*M4*QHup2*lam*Tlam - 4*gpp2*M4*Qsp2*lam*Tlam  
betamHd22 =  betamHd22- 6*TradjYuTu*lam*Tlam - 6*TrCTuTpYu*lam*Tlam + (4*gpp2*Conjg(M4)*(-9*g1p2*M1*Qd*QHd -  & 
&  18*g1p2*M4*Qd*QHd - 3*g1p2*M1*Qe4*QHd - 6*g1p2*M4*Qe4*QHd - 6*g1p2*M1*Qe9*QHd -       & 
&  12*g1p2*M4*Qe9*QHd + 6*g1p2*M1*QHdp2 + 12*g1p2*M4*QHdp2 + 30*g2p2*M4*QHdp2 -          & 
&  10*lamp2*M4*QHdp2 + 15*g2p2*M2*QHdp2 + 270*gpp2*M4*Qdp2*QHdp2 + 30*gpp2*M4*Qe4p2*QHdp2 +& 
&  60*gpp2*M4*Qe9p2*QHdp2 + 120*gpp2*M4*QHdp4 - 3*g1p2*M1*QHd*QHu - 6*g1p2*M4*QHd*QHu +  & 
&  10*lamp2*M4*QHup2 + 60*gpp2*M4*QHdp2*QHup2 + 3*g1p2*M1*QHd*Ql4 + 6*g1p2*M4*QHd*Ql4 +  & 
&  60*gpp2*M4*QHdp2*Ql4p2 + 6*g1p2*M1*QHd*Ql9 + 12*g1p2*M4*QHd*Ql9 + 120*gpp2*M4*QHdp2*Ql9p2 -& 
&  9*g1p2*M1*QHd*Qq - 18*g1p2*M4*QHd*Qq + 540*gpp2*M4*QHdp2*Qqp2 + 10*lamp2*M4*Qsp2 +    & 
&  30*gpp2*M4*QHdp2*Qsp2 + 18*g1p2*M1*QHd*Qu + 36*g1p2*M4*QHd*Qu + 270*gpp2*M4*QHdp2*Qup2 -& 
&  5*Qe9p2*Tradjy2Ty2 + 5*QHdp2*Tradjy2Ty2 - 5*Ql9p2*Tradjy2Ty2 - 15*Qdp2*TradjYdTd +    & 
&  15*QHdp2*TradjYdTd - 15*Qqp2*TradjYdTd + 10*M4*Qe9p2*Try2adjy2 - 10*M4*QHdp2*Try2adjy2 +& 
&  10*M4*Ql9p2*Try2adjy2 + 30*M4*Qdp2*TrYdadjYd - 30*M4*QHdp2*TrYdadjYd + 30*M4*Qqp2*TrYdadjYd +& 
&  5*(Qe4p2 - QHdp2 + Ql4p2)*Conjg(y1)*(2*M4*y1 - Ty1) + 5*(QHdp2 - QHup2 -              & 
&  Qsp2)*lam*Tlam))/5._dp + 6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp - 4*g1*gp*QHd*sqrt3ov5*Tr2U1(1,& 
& 4) - 4*g1*gp*QHd*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*QHdp2*Tr2U1(4,4) - 4*g1*sqrt3ov5*Tr3(1) +& 
&  8*gp*QHd*Tr3(4)

 
DmHd2 = oo16pi2*( betamHd21 + oo16pi2 * betamHd22 ) 

 
Else 
DmHd2 = oo16pi2* betamHd21 
End If 
 
 
!-------------------- 
! mHu2 
!-------------------- 
 
betamHu21  = (-6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 + 2*lamp2*mHd2 + 2*lamp2*mHu2 +     & 
&  2*lamp2*ms2 - 8*AbsM4*gpp2*QHup2 + 2._dp*(Tlamp2) + 6._dp*(TrCTuTpTu) +               & 
&  6._dp*(Trmq2adjYuYu) + 6._dp*(Trmu2YuadjYu) + 6._dp*(TrTdpadjTdp) + 2._dp*(TrTepadjTep)& 
&  + 6*mHu2*TrYuadjYu + g1*sqrt3ov5*Tr1(1) + 2*gp*QHu*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamHu22 = (18*AbsM2*g1p2*g2p2)/5._dp + 33*AbsM2*g2p4 - 2*AbsTy1*lamp2 - 2*Absy1*lamp2*me42 -    & 
&  4*Absy1*lamp2*mHd2 - 12*lamp4*mHd2 - 2*Absy1*lamp2*mHu2 - 12*lamp4*mHu2 -             & 
&  2*Absy1*lamp2*ml42 - 2*Absy1*lamp2*ms2 - 12*lamp4*ms2 + 4*gpp2*lamp2*mHd2*QHdp2 +     & 
&  4*gpp2*lamp2*mHu2*QHdp2 + 4*gpp2*lamp2*ms2*QHdp2 + 24*AbsM2*g2p2*gpp2*QHup2 -         & 
&  4*gpp2*lamp2*mHd2*QHup2 - 4*gpp2*lamp2*mHu2*QHup2 - 4*gpp2*lamp2*ms2*QHup2 +          & 
&  4*gpp2*lamp2*mHd2*Qsp2 + 4*gpp2*lamp2*mHu2*Qsp2 + 4*gpp2*lamp2*ms2*Qsp2 -             & 
&  2*Absy1*Tlamp2 - 24*lamp2*Tlamp2 + 4*gpp2*QHdp2*Tlamp2 - 4*gpp2*QHup2*Tlamp2 +        & 
&  4*gpp2*Qsp2*Tlamp2 - 6*lamp2*TrCTdTpTd + (8*g1p2*TrCTuTpTu)/5._dp + 32*g3p2*TrCTuTpTu -& 
&  12*gpp2*QHup2*TrCTuTpTu + 12*gpp2*Qqp2*TrCTuTpTu + 12*gpp2*Qup2*TrCTuTpTu -           & 
&  (8*g1p2*M1*TrCTuTpYu)/5._dp - 32*g3p2*M3*TrCTuTpYu + 12*gpp2*M4*QHup2*TrCTuTpYu -     & 
&  12*gpp2*M4*Qqp2*TrCTuTpYu - 12*gpp2*M4*Qup2*TrCTuTpYu - 2*lamp2*TrCTy2TpTy2 -         & 
&  6*lamp2*Trmd2YdadjYd - 6._dp*(Trmd2YdadjYuYuadjYd) - 2*lamp2*Trme92y2adjy2 -          & 
&  2*lamp2*Trml92adjy2y2 - 6*lamp2*Trmq2adjYdYd - 6._dp*(Trmq2adjYdYdadjYuYu) +          & 
&  (8*g1p2*Trmq2adjYuYu)/5._dp + 32*g3p2*Trmq2adjYuYu - 12*gpp2*QHup2*Trmq2adjYuYu +     & 
&  12*gpp2*Qqp2*Trmq2adjYuYu + 12*gpp2*Qup2*Trmq2adjYuYu - 6._dp*(Trmq2adjYuYuadjYdYd) - & 
&  36._dp*(Trmq2adjYuYuadjYuYu) - 6._dp*(Trmu2YuadjYdYdadjYu) + (8*g1p2*Trmu2YuadjYu)/5._dp +& 
&  32*g3p2*Trmu2YuadjYu - 12*gpp2*QHup2*Trmu2YuadjYu + 12*gpp2*Qqp2*Trmu2YuadjYu +       & 
&  12*gpp2*Qup2*Trmu2YuadjYu - 36._dp*(Trmu2YuadjYuYuadjYu) - 4*lamp2*mHd2*Try2adjy2 -   & 
&  2*lamp2*mHu2*Try2adjy2 - 2*lamp2*ms2*Try2adjy2 - 2*Tlamp2*Try2adjy2 - 6._dp*(TrYdadjTuTuadjYd) -& 
&  12*lamp2*mHd2*TrYdadjYd - 6*lamp2*mHu2*TrYdadjYd - 6*lamp2*ms2*TrYdadjYd -            & 
&  6*Tlamp2*TrYdadjYd - 6._dp*(TrYdadjYuTuadjTd) - 6*mHd2*TrYdadjYuYuadjYd  
betamHu22 =  betamHu22- 6*mHu2*TrYdadjYuYuadjYd - 6._dp*(TrYuadjTdTdadjYu) - 36._dp*(TrYuadjTuTuadjYu) -      & 
&  6._dp*(TrYuadjYdTdadjTu) + 64*AbsM3*g3p2*TrYuadjYu + (8*g1p2*mHu2*TrYuadjYu)/5._dp +  & 
&  32*g3p2*mHu2*TrYuadjYu - 12*gpp2*mHu2*QHup2*TrYuadjYu + 12*gpp2*mHu2*Qqp2*TrYuadjYu + & 
&  12*gpp2*mHu2*Qup2*TrYuadjYu - 36._dp*(TrYuadjYuTuadjTu) - 36*mHu2*TrYuadjYuYuadjYu +  & 
&  (g1p2*(621*g1p2*M1 + 45*g2p2*(2._dp*(M1) + M2) + 60*gpp2*(2._dp*(M1) + M4)*QHu*(3._dp*(Qd) +& 
&  Qe4 + 2._dp*(Qe9) - QHd + 2._dp*(QHu) - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) -              & 
&  6._dp*(Qu)) - 40._dp*(TradjYuTu) + 80*M1*TrYuadjYu)*Conjg(M1))/25._dp -               & 
&  32*g3p2*TradjYuTu*Conjg(M3) + (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*QHup2*Conjg(M2) -& 
&  4*gpp2*M4*QHdp2*lam*Tlam + 4*gpp2*M4*QHup2*lam*Tlam - 4*gpp2*M4*Qsp2*lam*Tlam -       & 
&  2*Tradjy2Ty2*lam*Tlam - 6*TradjYdTd*lam*Tlam - 6*TrCTdTpYd*lam*Tlam - 2*TrCTy2Tpy2*lam*Tlam -& 
&  2*y1*lam*Conjg(Ty1)*Tlam - 2*lam*Conjg(y1)*Ty1*Tlam + (4*gpp2*Conjg(M4)*(10*lamp2*M4*QHdp2 +& 
&  9*g1p2*M1*Qd*QHu + 18*g1p2*M4*Qd*QHu + 3*g1p2*M1*Qe4*QHu + 6*g1p2*M4*Qe4*QHu +        & 
&  6*g1p2*M1*Qe9*QHu + 12*g1p2*M4*Qe9*QHu - 3*g1p2*M1*QHd*QHu - 6*g1p2*M4*QHd*QHu +      & 
&  6*g1p2*M1*QHup2 + 12*g1p2*M4*QHup2 + 30*g2p2*M4*QHup2 - 10*lamp2*M4*QHup2 +           & 
&  15*g2p2*M2*QHup2 + 270*gpp2*M4*Qdp2*QHup2 + 30*gpp2*M4*Qe4p2*QHup2 + 60*gpp2*M4*Qe9p2*QHup2 +& 
&  60*gpp2*M4*QHdp2*QHup2 + 120*gpp2*M4*QHup4 - 3*g1p2*M1*QHu*Ql4 - 6*g1p2*M4*QHu*Ql4 +  & 
&  60*gpp2*M4*QHup2*Ql4p2 - 6*g1p2*M1*QHu*Ql9 - 12*g1p2*M4*QHu*Ql9 + 120*gpp2*M4*QHup2*Ql9p2 +& 
&  9*g1p2*M1*QHu*Qq + 18*g1p2*M4*QHu*Qq + 540*gpp2*M4*QHup2*Qqp2 + 10*lamp2*M4*Qsp2 +    & 
&  30*gpp2*M4*QHup2*Qsp2 - 18*g1p2*M1*QHu*Qu - 36*g1p2*M4*QHu*Qu + 270*gpp2*M4*QHup2*Qup2 +& 
&  15*QHup2*TradjYuTu - 15*Qqp2*TradjYuTu - 15*Qup2*TradjYuTu - 30*M4*(QHup2 -           & 
&  Qqp2 - Qup2)*TrYuadjYu - 5*(QHdp2 - QHup2 + Qsp2)*lam*Tlam))/5._dp + 6*g2p4*Tr2(2)  
betamHu22 =  betamHu22+ (6*g1p2*Tr2U1(1,1))/5._dp + 4*g1*gp*QHu*sqrt3ov5*Tr2U1(1,4) + 4*g1*gp*QHu*sqrt3ov5*Tr2U1(4,& 
& 1) + 8*gpp2*QHup2*Tr2U1(4,4) + 4*g1*sqrt3ov5*Tr3(1) + 8*gp*QHu*Tr3(4)

 
DmHu2 = oo16pi2*( betamHu21 + oo16pi2 * betamHu22 ) 

 
Else 
DmHu2 = oo16pi2* betamHu21 
End If 
 
 
!-------------------- 
! md2 
!-------------------- 
 
betamd21  = 4._dp*(CTdpTpTdp) - (8*AbsM1*g1p2*id3R)/15._dp - (32*AbsM3*g3p2*id3R)     & 
& /3._dp + 2._dp*(md2YdadjYd) - 8*AbsM4*gpp2*id3R*Qdp2 + 4._dp*(TdadjTd) +               & 
&  4*mHd2*YdadjYd + 2._dp*(YdadjYdmd2) + 4._dp*(Ydmq2adjYd) + 2*g1*id3R*ooSqrt15*Tr1(1)  & 
&  + 2*gp*id3R*Qd*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamd22 = -2*Absy1*md2YdadjYd + (2*g1p2*md2YdadjYd)/5._dp + 6*g2p2*md2YdadjYd - 2*lamp2*md2YdadjYd -& 
&  2._dp*(md2YdadjYdYdadjYd) - 2._dp*(md2YdadjYuYuadjYd) + (176*AbsM4*g1p2*gpp2*id3R*Qdp2)/15._dp +& 
&  (128*AbsM4*g3p2*gpp2*id3R*Qdp2)/3._dp - 4*gpp2*md2YdadjYd*Qdp2 + 264*AbsM4*gpp4*id3R*Qdp4 +& 
&  (16*AbsM4*g1p2*gpp2*id3R*Qd*Qe4)/5._dp + 24*AbsM4*gpp4*id3R*Qdp2*Qe4p2 +              & 
&  (32*AbsM4*g1p2*gpp2*id3R*Qd*Qe9)/5._dp + 48*AbsM4*gpp4*id3R*Qdp2*Qe9p2 -              & 
&  (16*AbsM4*g1p2*gpp2*id3R*Qd*QHd)/5._dp + 4*gpp2*md2YdadjYd*QHdp2 + 48*AbsM4*gpp4*id3R*Qdp2*QHdp2 +& 
&  (16*AbsM4*g1p2*gpp2*id3R*Qd*QHu)/5._dp + 48*AbsM4*gpp4*id3R*Qdp2*QHup2 -              & 
&  (16*AbsM4*g1p2*gpp2*id3R*Qd*Ql4)/5._dp + 48*AbsM4*gpp4*id3R*Qdp2*Ql4p2 -              & 
&  (32*AbsM4*g1p2*gpp2*id3R*Qd*Ql9)/5._dp + 96*AbsM4*gpp4*id3R*Qdp2*Ql9p2 +              & 
&  (48*AbsM4*g1p2*gpp2*id3R*Qd*Qq)/5._dp + 4*gpp2*md2YdadjYd*Qqp2 + 432*AbsM4*gpp4*id3R*Qdp2*Qqp2 +& 
&  24*AbsM4*gpp4*id3R*Qdp2*Qsp2 - (96*AbsM4*g1p2*gpp2*id3R*Qd*Qu)/5._dp + 216*AbsM4*gpp4*id3R*Qdp2*Qup2 -& 
&  4*Absy1*TdadjTd + (4*g1p2*TdadjTd)/5._dp + 12*g2p2*TdadjTd - 4*lamp2*TdadjTd -        & 
&  8*gpp2*Qdp2*TdadjTd + 8*gpp2*QHdp2*TdadjTd + 8*gpp2*Qqp2*TdadjTd - 4._dp*(TdadjTdYdadjYd) -& 
&  4._dp*(TdadjTuYuadjYd) - 4._dp*(TdadjYdYdadjTd) - 4._dp*(TdadjYuYuadjTd) -            & 
&  12*TdadjYd*TrCTdTpYd - 4*TdadjYd*TrCTy2Tpy2 - 2*md2YdadjYd*Try2adjy2 - 4*TdadjTd*Try2adjy2 -& 
&  6*md2YdadjYd*TrYdadjYd - 12*TdadjTd*TrYdadjYd - (4*g1p2*M1*YdadjTd)/5._dp -           & 
&  12*g2p2*M2*YdadjTd + 8*gpp2*M4*Qdp2*YdadjTd - 8*gpp2*M4*QHdp2*YdadjTd -               & 
&  8*gpp2*M4*Qqp2*YdadjTd - 4*Tradjy2Ty2*YdadjTd - 12*TradjYdTd*YdadjTd - 4._dp*(YdadjTdTdadjYd) -& 
&  4._dp*(YdadjTuTuadjYd) - 4*AbsTy1*YdadjYd + 24*AbsM2*g2p2*YdadjYd - 4*Absy1*me42*YdadjYd -& 
&  8*Absy1*mHd2*YdadjYd + (4*g1p2*mHd2*YdadjYd)/5._dp + 12*g2p2*mHd2*YdadjYd -           & 
&  8*lamp2*mHd2*YdadjYd - 4*lamp2*mHu2*YdadjYd - 4*Absy1*ml42*YdadjYd - 4*lamp2*ms2*YdadjYd  
betamd22 =  betamd22- 16*AbsM4*gpp2*Qdp2*YdadjYd - 8*gpp2*mHd2*Qdp2*YdadjYd + 16*AbsM4*gpp2*QHdp2*YdadjYd + & 
&  8*gpp2*mHd2*QHdp2*YdadjYd + 16*AbsM4*gpp2*Qqp2*YdadjYd + 8*gpp2*mHd2*Qqp2*YdadjYd -   & 
&  4*Tlamp2*YdadjYd - 12*TrCTdTpTd*YdadjYd - 4*TrCTy2TpTy2*YdadjYd - 12*Trmd2YdadjYd*YdadjYd -& 
&  4*Trme92y2adjy2*YdadjYd - 4*Trml92adjy2y2*YdadjYd - 12*Trmq2adjYdYd*YdadjYd -         & 
&  8*mHd2*Try2adjy2*YdadjYd - 24*mHd2*TrYdadjYd*YdadjYd - 2*Absy1*YdadjYdmd2 +           & 
&  (2*g1p2*YdadjYdmd2)/5._dp + 6*g2p2*YdadjYdmd2 - 2*lamp2*YdadjYdmd2 - 4*gpp2*Qdp2*YdadjYdmd2 +& 
&  4*gpp2*QHdp2*YdadjYdmd2 + 4*gpp2*Qqp2*YdadjYdmd2 - 2*Try2adjy2*YdadjYdmd2 -           & 
&  6*TrYdadjYd*YdadjYdmd2 - 4._dp*(YdadjYdmd2YdadjYd) - 4._dp*(YdadjYdTdadjTd) -         & 
&  8*mHd2*YdadjYdYdadjYd - 2._dp*(YdadjYdYdadjYdmd2) - 4._dp*(YdadjYdYdmq2adjYd) -       & 
&  4._dp*(YdadjYumu2YuadjYd) - 4._dp*(YdadjYuTuadjTd) - 4*mHd2*YdadjYuYuadjYd -          & 
&  4*mHu2*YdadjYuYuadjYd - 2._dp*(YdadjYuYuadjYdmd2) - 4._dp*(YdadjYuYumq2adjYd) -       & 
&  4*Absy1*Ydmq2adjYd + (4*g1p2*Ydmq2adjYd)/5._dp + 12*g2p2*Ydmq2adjYd - 4*lamp2*Ydmq2adjYd -& 
&  8*gpp2*Qdp2*Ydmq2adjYd + 8*gpp2*QHdp2*Ydmq2adjYd + 8*gpp2*Qqp2*Ydmq2adjYd -           & 
&  4*Try2adjy2*Ydmq2adjYd - 12*TrYdadjYd*Ydmq2adjYd - 4._dp*(Ydmq2adjYdYdadjYd) -        & 
&  4._dp*(Ydmq2adjYuYuadjYd) + (4*g1p2*(2*id3R*(303*g1p2*M1 + 40*g3p2*(2._dp*(M1) +      & 
&  M3) + 15*gpp2*(2._dp*(M1) + M4)*Qd*(11._dp*(Qd) + 3*(Qe4 + 2._dp*(Qe9) -              & 
&  QHd + QHu - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) - 6._dp*(Qu)))) - 45._dp*(TdadjYd) +       & 
&  90*M1*YdadjYd)*Conjg(M1))/225._dp - (64*g3p2*id3R*(30*g3p2*M3 - g1p2*(M1 +            & 
&  2._dp*(M3)) - 15*gpp2*(2._dp*(M3) + M4)*Qdp2)*Conjg(M3))/45._dp + (88*g1p2*gpp2*id3R*M1*Qdp2*Conjg(M4))/15._dp +& 
&  (64*g3p2*gpp2*id3R*M3*Qdp2*Conjg(M4))/3._dp + (8*g1p2*gpp2*id3R*M1*Qd*Qe4*Conjg(M4))/5._dp +& 
&  (16*g1p2*gpp2*id3R*M1*Qd*Qe9*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*QHd*Conjg(M4))/5._dp  
betamd22 =  betamd22+ (8*g1p2*gpp2*id3R*M1*Qd*QHu*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*Ql4*Conjg(M4))/5._dp -& 
&  (16*g1p2*gpp2*id3R*M1*Qd*Ql9*Conjg(M4))/5._dp + (24*g1p2*gpp2*id3R*M1*Qd*Qq*Conjg(M4))/5._dp -& 
&  (48*g1p2*gpp2*id3R*M1*Qd*Qu*Conjg(M4))/5._dp + 8*gpp2*Qdp2*TdadjYd*Conjg(M4) -        & 
&  8*gpp2*QHdp2*TdadjYd*Conjg(M4) - 8*gpp2*Qqp2*TdadjYd*Conjg(M4) - 12*g2p2*TdadjYd*Conjg(M2) -& 
&  4*TdadjYd*y1*Conjg(Ty1) - 4*YdadjTd*Conjg(y1)*Ty1 - 4*TdadjYd*lam*Tlam -              & 
&  4*YdadjTd*lam*Tlam + (32*g3p4*id3R*Tr2(3))/3._dp + (8*g1p2*id3R*Tr2U1(1,              & 
& 1))/15._dp + 8*g1*gp*id3R*ooSqrt15*Qd*Tr2U1(1,4) + 8*g1*gp*id3R*ooSqrt15*Qd*Tr2U1(4,   & 
& 1) + 8*gpp2*id3R*Qdp2*Tr2U1(4,4) + 8*g1*id3R*ooSqrt15*Tr3(1) + 8*gp*id3R*Qd*Tr3(4)

 
Dmd2 = oo16pi2*( betamd21 + oo16pi2 * betamd22 ) 

 
Else 
Dmd2 = oo16pi2* betamd21 
End If 
 
 
Call Chop(Dmd2) 

Forall(i1=1:3) Dmd2(i1,i1) =  Real(Dmd2(i1,i1),dp) 
Dmd2 = 0.5_dp*(Dmd2+ Conjg(Transpose(Dmd2)) ) 
!-------------------- 
! mu2 
!-------------------- 
 
betamu21  = (-32*AbsM1*g1p2*id3R)/15._dp - (32*AbsM3*g3p2*id3R)/3._dp +               & 
&  2._dp*(mu2YuadjYu) - 8*AbsM4*gpp2*id3R*Qup2 + 4._dp*(TuadjTu) + 4*mHu2*YuadjYu +      & 
&  2._dp*(YuadjYumu2) + 4._dp*(Yumq2adjYu) - 4*g1*id3R*ooSqrt15*Tr1(1) + 2*gp*id3R*Qu*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamu22 = (4*g1p2*(4*id3R*(642*g1p2*M1 + 80*g3p2*(2._dp*(M1) + M3) - 15*gpp2*(2._dp*(M1) +      & 
&  M4)*(9._dp*(Qd) + 3._dp*(Qe4) + 6._dp*(Qe9) - 3._dp*(QHd) + 3._dp*(QHu) -             & 
&  3._dp*(Ql4) - 6._dp*(Ql9) + 9._dp*(Qq) - 22._dp*(Qu))*Qu) + 45*(TuadjYu -             & 
&  2*M1*YuadjYu))*Conjg(M1) + 10*(32*g3p2*id3R*(-30*g3p2*M3 + 4*g1p2*(M1 +               & 
&  2._dp*(M3)) + 15*gpp2*(2._dp*(M3) + M4)*Qup2)*Conjg(M3) + 12*gpp2*(id3R*Qu*(-         & 
& 2*g1p2*(M1 + 2._dp*(M4))*(9._dp*(Qd) + 3._dp*(Qe4) + 6._dp*(Qe9) - 3._dp*(QHd) +       & 
&  3._dp*(QHu) - 3._dp*(Ql4) - 6._dp*(Ql9) + 9._dp*(Qq) - 22._dp*(Qu)) + 5*Qu*(8*g3p2*(M3 +& 
&  2._dp*(M4)) + 9*gpp2*M4*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2) +       & 
&  2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 + 11._dp*(Qup2)))) +& 
&  15*(QHup2 + Qqp2 - Qup2)*(-1._dp*(TuadjYu) + 2*M4*YuadjYu))*Conjg(M4) -               & 
&  9*(5._dp*(mu2YuadjYdYdadjYu) + g1p2*mu2YuadjYu - 15*g2p2*mu2YuadjYu + 5*lamp2*mu2YuadjYu +& 
&  5._dp*(mu2YuadjYuYuadjYu) - 10*gpp2*mu2YuadjYu*QHup2 - 10*gpp2*mu2YuadjYu*Qqp2 +      & 
&  10*gpp2*mu2YuadjYu*Qup2 + 15*mu2YuadjYu*TrYuadjYu + 10._dp*(TuadjTdYdadjYu) +         & 
&  2*g1p2*TuadjTu - 30*g2p2*TuadjTu + 10*lamp2*TuadjTu - 20*gpp2*QHup2*TuadjTu -         & 
&  20*gpp2*Qqp2*TuadjTu + 20*gpp2*Qup2*TuadjTu + 30*TrYuadjYu*TuadjTu + 10._dp*(TuadjTuYuadjYu) +& 
&  10._dp*(TuadjYdYdadjTu) + 30*TrCTuTpYu*TuadjYu + 10._dp*(TuadjYuYuadjTu) +            & 
&  10._dp*(YuadjTdTdadjYu) + 10._dp*(YuadjTuTuadjYu) + 10._dp*(YuadjYdmd2YdadjYu) +      & 
&  10._dp*(YuadjYdTdadjTu) + 10*mHd2*YuadjYdYdadjYu + 10*mHu2*YuadjYdYdadjYu +           & 
&  5._dp*(YuadjYdYdadjYumu2) + 10._dp*(YuadjYdYdmq2adjYu) + 2*(-30*AbsM2*g2p2 +          & 
&  5*lamp2*mHd2 + g1p2*mHu2 - 15*g2p2*mHu2 + 10*lamp2*mHu2 + 5*lamp2*ms2 -               & 
&  10*gpp2*mHu2*QHup2 - 10*gpp2*mHu2*Qqp2 + 10*gpp2*mHu2*Qup2 + 5._dp*(Tlamp2) +         & 
&  15._dp*(TrCTuTpTu) + 15._dp*(Trmq2adjYuYu) + 15._dp*(Trmu2YuadjYu) + 30*mHu2*TrYuadjYu)*YuadjYu +& 
&  g1p2*YuadjYumu2 - 15*g2p2*YuadjYumu2 + 5*lamp2*YuadjYumu2 - 10*gpp2*QHup2*YuadjYumu2 -& 
&  10*gpp2*Qqp2*YuadjYumu2 + 10*gpp2*Qup2*YuadjYumu2 + 15*TrYuadjYu*YuadjYumu2 +         & 
&  10._dp*(YuadjYumu2YuadjYu) + 10._dp*(YuadjYuTuadjTu) + 20*mHu2*YuadjYuYuadjYu +       & 
&  5._dp*(YuadjYuYuadjYumu2) + 10._dp*(YuadjYuYumq2adjYu) + 10._dp*(Yumq2adjYdYdadjYu) + & 
&  2*g1p2*Yumq2adjYu - 30*g2p2*Yumq2adjYu + 10*lamp2*Yumq2adjYu - 20*gpp2*QHup2*Yumq2adjYu -& 
&  20*gpp2*Qqp2*Yumq2adjYu + 20*gpp2*Qup2*Yumq2adjYu + 30*TrYuadjYu*Yumq2adjYu +         & 
&  10._dp*(Yumq2adjYuYuadjYu) + 30*g2p2*TuadjYu*Conjg(M2) + 10*TuadjYu*lam*Tlam +        & 
&  YuadjTu*(-2*g1p2*M1 + 30*g2p2*M2 + 20*gpp2*M4*QHup2 + 20*gpp2*M4*Qqp2 -               & 
&  20*gpp2*M4*Qup2 + 30._dp*(TradjYuTu) + 10*lam*Tlam)) + 12*id3R*(20*g3p4*Tr2(3) +      & 
&  4*g1p2*Tr2U1(1,1) - 2*g1*sqrt15*(gp*Qu*(Tr2U1(1,4) + Tr2U1(4,1)) + Tr3(1)) +          & 
&  15*gp*Qu*(gp*Qu*Tr2U1(4,4) + Tr3(4)))))/225._dp

 
Dmu2 = oo16pi2*( betamu21 + oo16pi2 * betamu22 ) 

 
Else 
Dmu2 = oo16pi2* betamu21 
End If 
 
 
Call Chop(Dmu2) 

Forall(i1=1:3) Dmu2(i1,i1) =  Real(Dmu2(i1,i1),dp) 
Dmu2 = 0.5_dp*(Dmu2+ Conjg(Transpose(Dmu2)) ) 
!-------------------- 
! me42 
!-------------------- 
 
betame421  = 4._dp*(AbsTy1) - (24*AbsM1*g1p2)/5._dp + 4*Absy1*me42 + 4*Absy1*mHd2 +   & 
&  4*Absy1*ml42 - 8*AbsM4*gpp2*Qe4p2 + 2*g1*sqrt3ov5*Tr1(1) + 2*gp*Qe4*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame422 = (4*(3*g1p2*Conjg(M1)*(234*g1p2*M1 + 10*gpp2*(2._dp*(M1) + M4)*Qe4*(3._dp*(Qd) +       & 
&  3._dp*(Qe4) + 2._dp*(Qe9) - QHd + QHu - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) -              & 
&  6._dp*(Qu)) + 5*Conjg(y1)*(-2*M1*y1 + Ty1)) + 5*(-3*AbsTy1*g1p2 + 15*AbsTy1*g2p2 -    & 
&  5*AbsTy1*lamp2 - 10*AbsTy1*gpp2*Qe4p2 + 10*AbsTy1*gpp2*QHdp2 + 10*AbsTy1*gpp2*Ql4p2 - & 
&  5*AbsTy1*Try2adjy2 - 15*AbsTy1*TrYdadjYd - 20*Cy1p2*(me42 + mHd2 + ml42)*y1p2 +       & 
&  3*g1p2*M1*y1*Conjg(Ty1) - 15*g2p2*M2*y1*Conjg(Ty1) + 10*gpp2*M4*Qe4p2*y1*Conjg(Ty1) - & 
&  10*gpp2*M4*QHdp2*y1*Conjg(Ty1) - 10*gpp2*M4*Ql4p2*y1*Conjg(Ty1) - 5*Tradjy2Ty2*y1*Conjg(Ty1) -& 
&  15*TradjYdTd*y1*Conjg(Ty1) + 2*gpp2*Conjg(M4)*(3*Qe4*(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) +& 
&  3._dp*(Qe4) + 2._dp*(Qe9) - QHd + QHu - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) -              & 
&  6._dp*(Qu)) + 5*gpp2*M4*Qe4*(9._dp*(Qdp2) + 3._dp*(Qe4p2) + 2._dp*(Qe9p2) +           & 
&  2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) +       & 
&  Qsp2 + 9._dp*(Qup2))) - 5*(Qe4p2 - QHdp2 - Ql4p2)*Conjg(y1)*(2*M4*y1 - Ty1)) -        & 
&  5*y1*lam*Conjg(Ty1)*Tlam - Conjg(y1)*(40*AbsTy1*y1 + 3*g1p2*me42*y1 - 15*g2p2*me42*y1 +& 
&  5*lamp2*me42*y1 + 3*g1p2*mHd2*y1 - 15*g2p2*mHd2*y1 + 10*lamp2*mHd2*y1 +               & 
&  5*lamp2*mHu2*y1 + 3*g1p2*ml42*y1 - 15*g2p2*ml42*y1 + 5*lamp2*ml42*y1 + 5*lamp2*ms2*y1 +& 
&  10*gpp2*me42*Qe4p2*y1 + 10*gpp2*mHd2*Qe4p2*y1 + 10*gpp2*ml42*Qe4p2*y1 -               & 
&  10*gpp2*me42*QHdp2*y1 - 10*gpp2*mHd2*QHdp2*y1 - 10*gpp2*ml42*QHdp2*y1 -               & 
&  10*gpp2*me42*Ql4p2*y1 - 10*gpp2*mHd2*Ql4p2*y1 - 10*gpp2*ml42*Ql4p2*y1 +               & 
&  5*Tlamp2*y1 + 15*TrCTdTpTd*y1 + 5*TrCTy2TpTy2*y1 + 15*Trmd2YdadjYd*y1 +               & 
&  5*Trme92y2adjy2*y1 + 5*Trml92adjy2y2*y1 + 15*Trmq2adjYdYd*y1 + 5*me42*Try2adjy2*y1 +  & 
&  10*mHd2*Try2adjy2*y1 + 5*ml42*Try2adjy2*y1 + 15*me42*TrYdadjYd*y1 + 30*mHd2*TrYdadjYd*y1 +& 
&  15*ml42*TrYdadjYd*y1 + 15*TrCTdTpYd*Ty1 + 5*TrCTy2Tpy2*Ty1 + 15*g2p2*Conjg(M2)*(-     & 
& 2*M2*y1 + Ty1) + 5*lam*Ty1*Tlam) + 6*g1p2*Tr2U1(1,1) + 2*g1*gp*Qe4*sqrt15*Tr2U1(1,     & 
& 4) + 2*g1*gp*Qe4*sqrt15*Tr2U1(4,1) + 10*gpp2*Qe4p2*Tr2U1(4,4) + 2*g1*sqrt15*Tr3(1) +   & 
&  10*gp*Qe4*Tr3(4))))/25._dp

 
Dme42 = oo16pi2*( betame421 + oo16pi2 * betame422 ) 

 
Else 
Dme42 = oo16pi2* betame421 
End If 
 
 
!-------------------- 
! me92 
!-------------------- 
 
betame921  = 4._dp*(CTepTpTep) - (24*AbsM1*g1p2*id2R)/5._dp + 2._dp*(me92y2adjy2)     & 
&  - 8*AbsM4*gpp2*id2R*Qe9p2 + 4._dp*(Ty2adjTy2) + 4*mHd2*y2adjy2 + 2._dp*(y2adjy2me92)  & 
&  + 4._dp*(y2ml92adjy2) + 2*g1*id2R*sqrt3ov5*Tr1(1) + 2*gp*id2R*Qe9*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame922 = -2*Absy1*me92y2adjy2 - (6*g1p2*me92y2adjy2)/5._dp + 6*g2p2*me92y2adjy2 -              & 
&  2*lamp2*me92y2adjy2 - 2._dp*(me92y2adjy2y2adjy2) - 4*gpp2*me92y2adjy2*Qe9p2 +         & 
&  4*gpp2*me92y2adjy2*QHdp2 + 4*gpp2*me92y2adjy2*Ql9p2 - 2*me92y2adjy2*Try2adjy2 -       & 
&  6*me92y2adjy2*TrYdadjYd - 4*Absy1*Ty2adjTy2 - (12*g1p2*Ty2adjTy2)/5._dp +             & 
&  12*g2p2*Ty2adjTy2 - 4*lamp2*Ty2adjTy2 - 8*gpp2*Qe9p2*Ty2adjTy2 + 8*gpp2*QHdp2*Ty2adjTy2 +& 
&  8*gpp2*Ql9p2*Ty2adjTy2 - 4*Try2adjy2*Ty2adjTy2 - 12*TrYdadjYd*Ty2adjTy2 -             & 
&  4._dp*(Ty2adjTy2y2adjy2) - 12*TrCTdTpYd*Ty2adjy2 - 4*TrCTy2Tpy2*Ty2adjy2 -            & 
&  4._dp*(Ty2adjy2y2adjTy2) + (12*g1p2*M1*y2adjTy2)/5._dp - 12*g2p2*M2*y2adjTy2 +        & 
&  8*gpp2*M4*Qe9p2*y2adjTy2 - 8*gpp2*M4*QHdp2*y2adjTy2 - 8*gpp2*M4*Ql9p2*y2adjTy2 -      & 
&  4*Tradjy2Ty2*y2adjTy2 - 12*TradjYdTd*y2adjTy2 - 4._dp*(y2adjTy2Ty2adjy2) -            & 
&  4*AbsTy1*y2adjy2 + 24*AbsM2*g2p2*y2adjy2 - 4*Absy1*me42*y2adjy2 - 8*Absy1*mHd2*y2adjy2 -& 
&  (12*g1p2*mHd2*y2adjy2)/5._dp + 12*g2p2*mHd2*y2adjy2 - 8*lamp2*mHd2*y2adjy2 -          & 
&  4*lamp2*mHu2*y2adjy2 - 4*Absy1*ml42*y2adjy2 - 4*lamp2*ms2*y2adjy2 - 8*gpp2*mHd2*Qe9p2*y2adjy2 +& 
&  8*gpp2*mHd2*QHdp2*y2adjy2 + 8*gpp2*mHd2*Ql9p2*y2adjy2 - 4*Tlamp2*y2adjy2 -            & 
&  12*TrCTdTpTd*y2adjy2 - 4*TrCTy2TpTy2*y2adjy2 - 12*Trmd2YdadjYd*y2adjy2 -              & 
&  4*Trme92y2adjy2*y2adjy2 - 4*Trml92adjy2y2*y2adjy2 - 12*Trmq2adjYdYd*y2adjy2 -         & 
&  8*mHd2*Try2adjy2*y2adjy2 - 24*mHd2*TrYdadjYd*y2adjy2 - 2*Absy1*y2adjy2me92 -          & 
&  (6*g1p2*y2adjy2me92)/5._dp + 6*g2p2*y2adjy2me92 - 2*lamp2*y2adjy2me92 -               & 
&  4*gpp2*Qe9p2*y2adjy2me92 + 4*gpp2*QHdp2*y2adjy2me92 + 4*gpp2*Ql9p2*y2adjy2me92 -      & 
&  2*Try2adjy2*y2adjy2me92 - 6*TrYdadjYd*y2adjy2me92 - 4._dp*(y2adjy2me92y2adjy2) -      & 
&  4._dp*(y2adjy2Ty2adjTy2) - 8*mHd2*y2adjy2y2adjy2 - 2._dp*(y2adjy2y2adjy2me92)  
betame922 =  betame922- 4._dp*(y2adjy2y2ml92adjy2) - 4*Absy1*y2ml92adjy2 - (12*g1p2*y2ml92adjy2)/5._dp +      & 
&  12*g2p2*y2ml92adjy2 - 4*lamp2*y2ml92adjy2 - 8*gpp2*Qe9p2*y2ml92adjy2 + 8*gpp2*QHdp2*y2ml92adjy2 +& 
&  8*gpp2*Ql9p2*y2ml92adjy2 - 4*Try2adjy2*y2ml92adjy2 - 12*TrYdadjYd*y2ml92adjy2 -       & 
&  4._dp*(y2ml92adjy2y2adjy2) + (12*g1p2*(2*id2R*(117*g1p2*M1 + 5*gpp2*(2._dp*(M1) +     & 
&  M4)*Qe9*(3._dp*(Qd) + Qe4 + 4._dp*(Qe9) - QHd + QHu - Ql4 - 2._dp*(Ql9) +             & 
&  3._dp*(Qq) - 6._dp*(Qu))) + 5*(Ty2adjy2 - 2*M1*y2adjy2))*Conjg(M1))/25._dp +          & 
&  (8*gpp2*(3*id2R*Qe9*(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe4 + 4._dp*(Qe9) -         & 
&  QHd + QHu - Ql4 - 2._dp*(Ql9) + 3._dp*(Qq) - 6._dp*(Qu)) + 5*gpp2*M4*Qe9*(9._dp*(Qdp2) +& 
&  Qe4p2 + 4._dp*(Qe9p2) + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql4p2) +               & 
&  4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2))) - 5*(Qe9p2 - QHdp2 -            & 
&  Ql9p2)*(-1._dp*(Ty2adjy2) + 2*M4*y2adjy2))*Conjg(M4))/5._dp - 12*g2p2*Ty2adjy2*Conjg(M2) -& 
&  4*Ty2adjy2*y1*Conjg(Ty1) - 4*y2adjTy2*Conjg(y1)*Ty1 - 4*Ty2adjy2*lam*Tlam -           & 
&  4*y2adjTy2*lam*Tlam + (24*g1p2*id2R*Tr2U1(1,1))/5._dp + 8*g1*gp*id2R*Qe9*sqrt3ov5*Tr2U1(1,& 
& 4) + 8*g1*gp*id2R*Qe9*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*id2R*Qe9p2*Tr2U1(4,4) +             & 
&  8*g1*id2R*sqrt3ov5*Tr3(1) + 8*gp*id2R*Qe9*Tr3(4)

 
Dme92 = oo16pi2*( betame921 + oo16pi2 * betame922 ) 

 
Else 
Dme92 = oo16pi2* betame921 
End If 
 
 
Call Chop(Dme92) 

Forall(i1=1:2) Dme92(i1,i1) =  Real(Dme92(i1,i1),dp) 
Dme92 = 0.5_dp*(Dme92+ Conjg(Transpose(Dme92)) ) 
!-------------------- 
! ms2 
!-------------------- 
 
betams21  = 4*lamp2*mHd2 + 4*lamp2*mHu2 + 4*lamp2*ms2 - 8*AbsM4*gpp2*Qsp2 +           & 
&  4._dp*(Tlamp2) + 2*gp*Qs*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betams22 = -4*AbsTy1*lamp2 + 24*AbsM2*g2p2*lamp2 - 4*Absy1*lamp2*me42 - 8*Absy1*lamp2*mHd2 +     & 
&  (12*g1p2*lamp2*mHd2)/5._dp + 12*g2p2*lamp2*mHd2 - 16*lamp4*mHd2 - 4*Absy1*lamp2*mHu2 +& 
&  (12*g1p2*lamp2*mHu2)/5._dp + 12*g2p2*lamp2*mHu2 - 16*lamp4*mHu2 - 4*Absy1*lamp2*ml42 -& 
&  4*Absy1*lamp2*ms2 + (12*g1p2*lamp2*ms2)/5._dp + 12*g2p2*lamp2*ms2 - 16*lamp4*ms2 +    & 
&  8*gpp2*lamp2*mHd2*QHdp2 + 8*gpp2*lamp2*mHu2*QHdp2 + 8*gpp2*lamp2*ms2*QHdp2 +          & 
&  8*gpp2*lamp2*mHd2*QHup2 + 8*gpp2*lamp2*mHu2*QHup2 + 8*gpp2*lamp2*ms2*QHup2 -          & 
&  8*gpp2*lamp2*mHd2*Qsp2 - 8*gpp2*lamp2*mHu2*Qsp2 - 8*gpp2*lamp2*ms2*Qsp2 -             & 
&  4*Absy1*Tlamp2 + (12*g1p2*Tlamp2)/5._dp + 12*g2p2*Tlamp2 - 32*lamp2*Tlamp2 +          & 
&  8*gpp2*QHdp2*Tlamp2 + 8*gpp2*QHup2*Tlamp2 - 8*gpp2*Qsp2*Tlamp2 - 12*lamp2*TrCTdTpTd - & 
&  12*lamp2*TrCTuTpTu - 4*lamp2*TrCTy2TpTy2 - 12*lamp2*Trmd2YdadjYd - 4*lamp2*Trme92y2adjy2 -& 
&  4*lamp2*Trml92adjy2y2 - 12*lamp2*Trmq2adjYdYd - 12*lamp2*Trmq2adjYuYu -               & 
&  12*lamp2*Trmu2YuadjYu - 8*lamp2*mHd2*Try2adjy2 - 4*lamp2*mHu2*Try2adjy2 -             & 
&  4*lamp2*ms2*Try2adjy2 - 4*Tlamp2*Try2adjy2 - 24*lamp2*mHd2*TrYdadjYd - 12*lamp2*mHu2*TrYdadjYd -& 
&  12*lamp2*ms2*TrYdadjYd - 12*Tlamp2*TrYdadjYd - 12*lamp2*mHd2*TrYuadjYu -              & 
&  24*lamp2*mHu2*TrYuadjYu - 12*lamp2*ms2*TrYuadjYu - 12*Tlamp2*TrYuadjYu +              & 
&  (12*g1p2*lam*Conjg(M1)*(2*M1*lam - Tlam))/5._dp - (12*g1p2*M1*lam*Tlam)/5._dp -       & 
&  12*g2p2*M2*lam*Tlam - 8*gpp2*M4*QHdp2*lam*Tlam - 8*gpp2*M4*QHup2*lam*Tlam +           & 
&  8*gpp2*M4*Qsp2*lam*Tlam - 4*Tradjy2Ty2*lam*Tlam - 12*TradjYdTd*lam*Tlam -             & 
&  12*TradjYuTu*lam*Tlam - 12*TrCTdTpYd*lam*Tlam - 12*TrCTuTpYu*lam*Tlam -               & 
&  4*TrCTy2Tpy2*lam*Tlam - 12*g2p2*lam*Conjg(M2)*Tlam - 4*y1*lam*Conjg(Ty1)*Tlam -       & 
&  4*lam*Conjg(y1)*Ty1*Tlam + 8*gpp2*Conjg(M4)*(2*lamp2*M4*(QHdp2 + QHup2 -              & 
&  Qsp2) + 3*gpp2*M4*Qsp2*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2) +        & 
&  2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + 3._dp*(Qsp2) +        & 
&  9._dp*(Qup2)) - (QHdp2 + QHup2 - Qsp2)*lam*Tlam) + 8*gpp2*Qsp2*Tr2U1(4,               & 
& 4) + 8*gp*Qs*Tr3(4)

 
Dms2 = oo16pi2*( betams21 + oo16pi2 * betams22 ) 

 
Else 
Dms2 = oo16pi2* betams21 
End If 
 
 
!-------------------- 
! M1 
!-------------------- 
 
betaM11  = (66*g1p2*M1)/5._dp

 
 
If (TwoLoopRGE) Then 
betaM12 = (2*g1p2*(398*g1p2*M1 + 135*g2p2*M1 + 440*g3p2*M1 - 30*lamp2*M1 + 440*g3p2*M3 +        & 
&  135*g2p2*M2 + 60*gpp2*M1*Qdp2 + 60*gpp2*M4*Qdp2 + 60*gpp2*M1*Qe4p2 + 60*gpp2*M4*Qe4p2 +& 
&  120*gpp2*M1*Qe9p2 + 120*gpp2*M4*Qe9p2 + 30*gpp2*M1*QHdp2 + 30*gpp2*M4*QHdp2 +         & 
&  30*gpp2*M1*QHup2 + 30*gpp2*M4*QHup2 + 30*gpp2*M1*Ql4p2 + 30*gpp2*M4*Ql4p2 +           & 
&  60*gpp2*M1*Ql9p2 + 60*gpp2*M4*Ql9p2 + 30*gpp2*M1*Qqp2 + 30*gpp2*M4*Qqp2 +             & 
&  240*gpp2*M1*Qup2 + 240*gpp2*M4*Qup2 + 90._dp*(Tradjy2Ty2) + 70._dp*(TradjYdTd) +      & 
&  130._dp*(TradjYuTu) - 90*M1*Try2adjy2 - 70*M1*TrYdadjYd - 130*M1*TrYuadjYu -          & 
&  90*Conjg(y1)*(M1*y1 - Ty1) + 30*lam*Tlam))/25._dp

 
DM1 = oo16pi2*( betaM11 + oo16pi2 * betaM12 ) 

 
Else 
DM1 = oo16pi2* betaM11 
End If 
 
 
Call Chop(DM1) 

!-------------------- 
! M2 
!-------------------- 
 
betaM21  = 2*g2p2*M2

 
 
If (TwoLoopRGE) Then 
betaM22 = (2*g2p2*(9*g1p2*M1 + 120*g3p2*M3 + 9*g1p2*M2 + 250*g2p2*M2 + 120*g3p2*M2 -            & 
&  10*lamp2*M2 + 10*gpp2*M4*QHdp2 + 10*gpp2*M2*QHdp2 + 10*gpp2*M4*QHup2 + 10*gpp2*M2*QHup2 +& 
&  10*gpp2*M4*Ql4p2 + 10*gpp2*M2*Ql4p2 + 20*gpp2*M4*Ql9p2 + 20*gpp2*M2*Ql9p2 +           & 
&  90*gpp2*M4*Qqp2 + 90*gpp2*M2*Qqp2 + 10._dp*(Tradjy2Ty2) + 30._dp*(TradjYdTd) +        & 
&  30._dp*(TradjYuTu) - 10*M2*Try2adjy2 - 30*M2*TrYdadjYd - 30*M2*TrYuadjYu -            & 
&  10*Conjg(y1)*(M2*y1 - Ty1) + 10*lam*Tlam))/5._dp

 
DM2 = oo16pi2*( betaM21 + oo16pi2 * betaM22 ) 

 
Else 
DM2 = oo16pi2* betaM21 
End If 
 
 
Call Chop(DM2) 

!-------------------- 
! M3 
!-------------------- 
 
betaM31  = -6*g3p2*M3

 
 
If (TwoLoopRGE) Then 
betaM32 = (2*g3p2*(11*g1p2*M1 + 11*g1p2*M3 + 45*g2p2*M3 + 140*g3p2*M3 + 45*g2p2*M2 +            & 
&  30*gpp2*M3*Qdp2 + 30*gpp2*M4*Qdp2 + 60*gpp2*M3*Qqp2 + 60*gpp2*M4*Qqp2 +               & 
&  30*gpp2*M3*Qup2 + 30*gpp2*M4*Qup2 + 20._dp*(TradjYdTd) + 20._dp*(TradjYuTu) -         & 
&  20*M3*TrYdadjYd - 20*M3*TrYuadjYu))/5._dp

 
DM3 = oo16pi2*( betaM31 + oo16pi2 * betaM32 ) 

 
Else 
DM3 = oo16pi2* betaM31 
End If 
 
 
Call Chop(DM3) 

!-------------------- 
! M4 
!-------------------- 
 
betaM41  = 2*gpp2*M4*(9._dp*(Qdp2) + Qe4p2 + 2._dp*(Qe9p2) + 2._dp*(QHdp2)            & 
&  + 2._dp*(QHup2) + 2._dp*(Ql4p2) + 4._dp*(Ql9p2) + 18._dp*(Qqp2) + Qsp2 +              & 
&  9._dp*(Qup2))

 
 
If (TwoLoopRGE) Then 
betaM42 = (4*gpp2*(6*g1p2*M1*Qdp2 + 120*g3p2*M3*Qdp2 + 6*g1p2*M4*Qdp2 + 120*g3p2*M4*Qdp2 +      & 
&  180*gpp2*M4*Qdp4 + 6*g1p2*M1*Qe4p2 + 6*g1p2*M4*Qe4p2 + 20*gpp2*M4*Qe4p4 +             & 
&  12*g1p2*M1*Qe9p2 + 12*g1p2*M4*Qe9p2 + 40*gpp2*M4*Qe9p4 + 3*g1p2*M1*QHdp2 +            & 
&  3*g1p2*M4*QHdp2 + 15*g2p2*M4*QHdp2 - 10*lamp2*M4*QHdp2 + 15*g2p2*M2*QHdp2 +           & 
&  40*gpp2*M4*QHdp4 + 3*g1p2*M1*QHup2 + 3*g1p2*M4*QHup2 + 15*g2p2*M4*QHup2 -             & 
&  10*lamp2*M4*QHup2 + 15*g2p2*M2*QHup2 + 40*gpp2*M4*QHup4 + 3*g1p2*M1*Ql4p2 +           & 
&  3*g1p2*M4*Ql4p2 + 15*g2p2*M4*Ql4p2 + 15*g2p2*M2*Ql4p2 + 40*gpp2*M4*Ql4p4 +            & 
&  6*g1p2*M1*Ql9p2 + 6*g1p2*M4*Ql9p2 + 30*g2p2*M4*Ql9p2 + 30*g2p2*M2*Ql9p2 +             & 
&  80*gpp2*M4*Ql9p4 + 3*g1p2*M1*Qqp2 + 240*g3p2*M3*Qqp2 + 3*g1p2*M4*Qqp2 +               & 
&  135*g2p2*M4*Qqp2 + 240*g3p2*M4*Qqp2 + 135*g2p2*M2*Qqp2 + 360*gpp2*M4*Qqp4 -           & 
&  10*lamp2*M4*Qsp2 + 20*gpp2*M4*Qsp4 + 24*g1p2*M1*Qup2 + 120*g3p2*M3*Qup2 +             & 
&  24*g1p2*M4*Qup2 + 120*g3p2*M4*Qup2 + 180*gpp2*M4*Qup4 + 10*Qe9p2*Tradjy2Ty2 +         & 
&  10*QHdp2*Tradjy2Ty2 + 10*Ql9p2*Tradjy2Ty2 + 30*Qdp2*TradjYdTd + 30*QHdp2*TradjYdTd +  & 
&  30*Qqp2*TradjYdTd + 30*QHup2*TradjYuTu + 30*Qqp2*TradjYuTu + 30*Qup2*TradjYuTu -      & 
&  10*M4*Qe9p2*Try2adjy2 - 10*M4*QHdp2*Try2adjy2 - 10*M4*Ql9p2*Try2adjy2 -               & 
&  30*M4*Qdp2*TrYdadjYd - 30*M4*QHdp2*TrYdadjYd - 30*M4*Qqp2*TrYdadjYd - 30*M4*QHup2*TrYuadjYu -& 
&  30*M4*Qqp2*TrYuadjYu - 30*M4*Qup2*TrYuadjYu - 10*(Qe4p2 + QHdp2 + Ql4p2)*Conjg(y1)*(M4*y1 -& 
&  Ty1) + 10*(QHdp2 + QHup2 + Qsp2)*lam*Tlam))/5._dp

 
DM4 = oo16pi2*( betaM41 + oo16pi2 * betaM42 ) 

 
Else 
DM4 = oo16pi2* betaM41 
End If 
 
 
Call Chop(DM4) 

!-------------------- 
! Tdp 
!-------------------- 
 
betaTdp1  = TdpadjYdYd + 3._dp*(TdpadjYuYu) + (Tdp*(2._dp*(g1p2) - 80._dp*(g3p2)      & 
&  + 15._dp*(lamp2) - 30*gpp2*(Qdp2 - QHup2 + Qqp2) + 45._dp*(TrYuadjYu)))               & 
& /15._dp + 6*TrTdpadjYd*Yd + 2*TrTepadjy2*Yd + 2._dp*(YdadjYdTdp)

 
 
If (TwoLoopRGE) Then 
betaTdp2 = 0

 
DTdp = oo16pi2*( betaTdp1 + oo16pi2 * betaTdp2 ) 

 
Else 
DTdp = oo16pi2* betaTdp1 
End If 
 
 
Call Chop(DTdp) 

!-------------------- 
! Tep 
!-------------------- 
 
betaTep1  = Tepadjy2y2 + Tep*(-6._dp*(g1p2)/5._dp + lamp2 - 2*gpp2*Qe9p2 +            & 
&  2*gpp2*QHup2 - 2*gpp2*Ql9p2 + 3._dp*(TrYuadjYu)) + 6*TrTdpadjYd*y2 + 2*TrTepadjy2*y2 +& 
&  2._dp*(y2adjy2Tep)

 
 
If (TwoLoopRGE) Then 
betaTep2 = 0

 
DTep = oo16pi2*( betaTep1 + oo16pi2 * betaTep2 ) 

 
Else 
DTep = oo16pi2* betaTep1 
End If 
 
 
Call Chop(DTep) 

!-------------------- 
! vd 
!-------------------- 
 
betavd1  = (vd*(-20._dp*(Absy1) + 3._dp*(g1p2) + 15._dp*(g2p2) - 20._dp*(lamp2)       & 
&  + 20*gpp2*QHdp2 - 20._dp*(Try2adjy2) - 60._dp*(TrYdadjYd) + 3*g1p2*Xi +               & 
&  15*g2p2*Xi + 20*gpp2*QHdp2*Xi))/20._dp

 
 
If (TwoLoopRGE) Then 
betavd2 = (vd*(-207._dp*(g1p4) - 90*g1p2*g2p2 - 600._dp*(g2p4) + 600._dp*(lamp4) +              & 
&  360*g1p2*gpp2*Qd*QHd + 120*g1p2*gpp2*Qe4*QHd + 240*g1p2*gpp2*Qe9*QHd - 240*g1p2*gpp2*QHdp2 -& 
&  600*g2p2*gpp2*QHdp2 + 400*gpp2*lamp2*QHdp2 - 1800*gpp4*Qdp2*QHdp2 - 200*gpp4*Qe4p2*QHdp2 -& 
&  400*gpp4*Qe9p2*QHdp2 - 800*gpp4*QHdp4 + 120*g1p2*gpp2*QHd*QHu - 400*gpp2*lamp2*QHup2 -& 
&  400*gpp4*QHdp2*QHup2 - 120*g1p2*gpp2*QHd*Ql4 - 400*gpp4*QHdp2*Ql4p2 - 240*g1p2*gpp2*QHd*Ql9 -& 
&  800*gpp4*QHdp2*Ql9p2 + 360*g1p2*gpp2*QHd*Qq - 3600*gpp4*QHdp2*Qqp2 - 400*gpp2*lamp2*Qsp2 -& 
&  200*gpp4*QHdp2*Qsp2 - 720*g1p2*gpp2*QHd*Qu - 1800*gpp4*QHdp2*Qup2 + 600._dp*(Try2adjy2y2adjy2) +& 
&  80*g1p2*TrYdadjYd - 3200*g3p2*TrYdadjYd - 1200*gpp2*Qdp2*TrYdadjYd + 1200*gpp2*QHdp2*TrYdadjYd -& 
&  1200*gpp2*Qqp2*TrYdadjYd + 1800._dp*(TrYdadjYdYdadjYd) + 600._dp*(TrYdadjYuYuadjYd) + & 
&  600*lamp2*TrYuadjYu - 9*g1p4*Xi - 90*g1p2*g2p2*Xi + 325*g2p4*Xi - 60*g1p2*lamp2*Xi -  & 
&  300*g2p2*lamp2*Xi - 120*g1p2*gpp2*QHdp2*Xi - 600*g2p2*gpp2*QHdp2*Xi - 400*gpp2*lamp2*QHdp2*Xi -& 
&  400*gpp4*QHdp4*Xi - 180*g1p2*TrYdadjYd*Xi - 900*g2p2*TrYdadjYd*Xi - 1200*gpp2*QHdp2*TrYdadjYd*Xi -& 
&  20*Absy1*(20*gpp2*(Qe4p2 + Ql4p2 + QHdp2*(-1 + Xi)) + 15*g2p2*Xi + 3*g1p2*(4 +        & 
&  Xi)) - 20*Try2adjy2*(20*gpp2*(Qe9p2 + Ql9p2 + QHdp2*(-1 + Xi)) + 15*g2p2*Xi +         & 
&  3*g1p2*(4 + Xi)) + 9*g1p4*Xip2 + 90*g1p2*g2p2*Xip2 + 120*g1p2*gpp2*QHdp2*Xip2 +       & 
&  600*g2p2*gpp2*QHdp2*Xip2 + 400*gpp4*QHdp4*Xip2 + 600*Cy1p2*y1p2))/200._dp

 
Dvd = oo16pi2*( betavd1 + oo16pi2 * betavd2 ) 

 
Else 
Dvd = oo16pi2* betavd1 
End If 
 
 
!-------------------- 
! vu 
!-------------------- 
 
betavu1  = (vu*(-60._dp*(TrYuadjYu) + 3*g1p2*(1 + Xi) + 5*(-4._dp*(lamp2)             & 
&  + 3*g2p2*(1 + Xi) + 4*gpp2*QHup2*(1 + Xi))))/20._dp

 
 
If (TwoLoopRGE) Then 
betavu2 = Absy1*lamp2*vu + (vu*(-207._dp*(g1p4) - 90*g1p2*g2p2 - 600._dp*(g2p4) +               & 
&  600._dp*(lamp4) - 400*gpp2*lamp2*QHdp2 - 360*g1p2*gpp2*Qd*QHu - 120*g1p2*gpp2*Qe4*QHu -& 
&  240*g1p2*gpp2*Qe9*QHu + 120*g1p2*gpp2*QHd*QHu - 240*g1p2*gpp2*QHup2 - 600*g2p2*gpp2*QHup2 +& 
&  400*gpp2*lamp2*QHup2 - 1800*gpp4*Qdp2*QHup2 - 200*gpp4*Qe4p2*QHup2 - 400*gpp4*Qe9p2*QHup2 -& 
&  400*gpp4*QHdp2*QHup2 - 800*gpp4*QHup4 + 120*g1p2*gpp2*QHu*Ql4 - 400*gpp4*QHup2*Ql4p2 +& 
&  240*g1p2*gpp2*QHu*Ql9 - 800*gpp4*QHup2*Ql9p2 - 360*g1p2*gpp2*QHu*Qq - 3600*gpp4*QHup2*Qqp2 -& 
&  400*gpp2*lamp2*Qsp2 - 200*gpp4*QHup2*Qsp2 + 720*g1p2*gpp2*QHu*Qu - 1800*gpp4*QHup2*Qup2 +& 
&  200*lamp2*Try2adjy2 + 600*lamp2*TrYdadjYd + 600._dp*(TrYdadjYuYuadjYd) -              & 
&  160*g1p2*TrYuadjYu - 3200*g3p2*TrYuadjYu + 1200*gpp2*QHup2*TrYuadjYu - 1200*gpp2*Qqp2*TrYuadjYu -& 
&  1200*gpp2*Qup2*TrYuadjYu + 1800._dp*(TrYuadjYuYuadjYu) - 9*g1p4*Xi - 90*g1p2*g2p2*Xi +& 
&  325*g2p4*Xi - 60*g1p2*lamp2*Xi - 300*g2p2*lamp2*Xi - 120*g1p2*gpp2*QHup2*Xi -         & 
&  600*g2p2*gpp2*QHup2*Xi - 400*gpp2*lamp2*QHup2*Xi - 400*gpp4*QHup4*Xi - 180*g1p2*TrYuadjYu*Xi -& 
&  900*g2p2*TrYuadjYu*Xi - 1200*gpp2*QHup2*TrYuadjYu*Xi + 9*g1p4*Xip2 + 90*g1p2*g2p2*Xip2 +& 
&  120*g1p2*gpp2*QHup2*Xip2 + 600*g2p2*gpp2*QHup2*Xip2 + 400*gpp4*QHup4*Xip2))/200._dp

 
Dvu = oo16pi2*( betavu1 + oo16pi2 * betavu2 ) 

 
Else 
Dvu = oo16pi2* betavu1 
End If 
 
 
!-------------------- 
! vS 
!-------------------- 
 
betavS1  = vS*(-2._dp*(lamp2) + gpp2*Qsp2*(1 + Xi))

 
 
If (TwoLoopRGE) Then 
betavS2 = -(vS*(-10*Absy1*lamp2 + 6*g1p2*lamp2 + 30*g2p2*lamp2 - 20._dp*(lamp4) +               & 
&  20*gpp2*lamp2*QHdp2 + 20*gpp2*lamp2*QHup2 - 20*gpp2*lamp2*Qsp2 + 45*gpp4*Qdp2*Qsp2 +  & 
&  5*gpp4*Qe4p2*Qsp2 + 10*gpp4*Qe9p2*Qsp2 + 10*gpp4*QHdp2*Qsp2 + 10*gpp4*QHup2*Qsp2 +    & 
&  10*gpp4*Ql4p2*Qsp2 + 20*gpp4*Ql9p2*Qsp2 + 90*gpp4*Qqp2*Qsp2 + 15*gpp4*Qsp4 +          & 
&  45*gpp4*Qsp2*Qup2 - 10*lamp2*Try2adjy2 - 30*lamp2*TrYdadjYd - 30*lamp2*TrYuadjYu +    & 
&  20*gpp2*lamp2*Qsp2*Xi + 10*gpp4*Qsp4*Xi - 10*gpp4*Qsp4*Xip2))/5._dp

 
DvS = oo16pi2*( betavS1 + oo16pi2 * betavS2 ) 

 
Else 
DvS = oo16pi2* betavS1 
End If 
 
 
Call ParametersToG210(Dg1,Dg2,Dg3,Dgp,DYd,Dy1,Dy2,Dlam,DYu,DTd,DTy1,DTy2,             & 
& DTlam,DTu,Dmq2,Dml42,Dml92,DmHd2,DmHu2,Dmd2,Dmu2,Dme42,Dme92,Dms2,DM1,DM2,             & 
& DM3,DM4,DTdp,DTep,Dvd,Dvu,DvS,f)

Iname = Iname - 1 
 
End Subroutine rge210  

End Module RGEs_SplitUMSSM 
 
