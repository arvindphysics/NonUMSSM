! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 15:54 on 21.3.2021   
! ----------------------------------------------------------------------  
 
 
Module RGEs_NonUMSSMv4 
 
Use Control 
Use Settings 
Use Model_Data_NonUMSSMv4 
Use Mathematics 
 
Logical,Private,Save::OnlyDiagonal

Real(dp),Parameter::id3R(3,3)=& 
   & Reshape(Source=(/& 
   & 1,0,0,& 
 &0,1,0,& 
 &0,0,1& 
 &/),shape=(/3,3/)) 
Contains 


Subroutine GToParameters182(g,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,            & 
& Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,          & 
& mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,Tep,Tmup)

Implicit None 
Real(dp), Intent(in) :: g(182) 
Real(dp),Intent(out) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp),Intent(out) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters182' 
 
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
 
Ye11= Cmplx(g(23),g(24),dp) 
Ye22= Cmplx(g(25),g(26),dp) 
Ye33= Cmplx(g(27),g(28),dp) 
lam= Cmplx(g(29),g(30),dp) 
Yv11= Cmplx(g(31),g(32),dp) 
Yv22= Cmplx(g(33),g(34),dp) 
Yv33= Cmplx(g(35),g(36),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+37), g(SumI+38), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Td(i1,i2) = Cmplx( g(SumI+55), g(SumI+56), dp) 
End Do 
 End Do 
 
TYe11= Cmplx(g(73),g(74),dp) 
TYe22= Cmplx(g(75),g(76),dp) 
TYe33= Cmplx(g(77),g(78),dp) 
Tlam= Cmplx(g(79),g(80),dp) 
TYv11= Cmplx(g(81),g(82),dp) 
TYv22= Cmplx(g(83),g(84),dp) 
TYv33= Cmplx(g(85),g(86),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Tu(i1,i2) = Cmplx( g(SumI+87), g(SumI+88), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
mq2(i1,i2) = Cmplx( g(SumI+105), g(SumI+106), dp) 
End Do 
 End Do 
 
ml012= g(123) 
ml022= g(124) 
ml032= g(125) 
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
 
me012= g(164) 
me022= g(165) 
me032= g(166) 
mvR012= g(167) 
mvR022= g(168) 
mvR032= g(169) 
ms2= g(170) 
M1= Cmplx(g(171),g(172),dp) 
M2= Cmplx(g(173),g(174),dp) 
M3= Cmplx(g(175),g(176),dp) 
M4= Cmplx(g(177),g(178),dp) 
Tep= Cmplx(g(179),g(180),dp) 
Tmup= Cmplx(g(181),g(182),dp) 
Do i1=1,182 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters182

Subroutine ParametersToG182(g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,              & 
& Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,          & 
& mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,              & 
& Tep,Tmup,g)

Implicit None 
Real(dp), Intent(out) :: g(182) 
Real(dp), Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2

Complex(dp), Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG182' 
 
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

g(23) = Real(Ye11,dp)  
g(24) = Aimag(Ye11)  
g(25) = Real(Ye22,dp)  
g(26) = Aimag(Ye22)  
g(27) = Real(Ye33,dp)  
g(28) = Aimag(Ye33)  
g(29) = Real(lam,dp)  
g(30) = Aimag(lam)  
g(31) = Real(Yv11,dp)  
g(32) = Aimag(Yv11)  
g(33) = Real(Yv22,dp)  
g(34) = Aimag(Yv22)  
g(35) = Real(Yv33,dp)  
g(36) = Aimag(Yv33)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+37) = Real(Yu(i1,i2), dp) 
g(SumI+38) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+55) = Real(Td(i1,i2), dp) 
g(SumI+56) = Aimag(Td(i1,i2)) 
End Do 
End Do 

g(73) = Real(TYe11,dp)  
g(74) = Aimag(TYe11)  
g(75) = Real(TYe22,dp)  
g(76) = Aimag(TYe22)  
g(77) = Real(TYe33,dp)  
g(78) = Aimag(TYe33)  
g(79) = Real(Tlam,dp)  
g(80) = Aimag(Tlam)  
g(81) = Real(TYv11,dp)  
g(82) = Aimag(TYv11)  
g(83) = Real(TYv22,dp)  
g(84) = Aimag(TYv22)  
g(85) = Real(TYv33,dp)  
g(86) = Aimag(TYv33)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+87) = Real(Tu(i1,i2), dp) 
g(SumI+88) = Aimag(Tu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+105) = Real(mq2(i1,i2), dp) 
g(SumI+106) = Aimag(mq2(i1,i2)) 
End Do 
End Do 

g(123) = ml012  
g(124) = ml022  
g(125) = ml032  
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

g(164) = me012  
g(165) = me022  
g(166) = me032  
g(167) = mvR012  
g(168) = mvR022  
g(169) = mvR032  
g(170) = ms2  
g(171) = Real(M1,dp)  
g(172) = Aimag(M1)  
g(173) = Real(M2,dp)  
g(174) = Aimag(M2)  
g(175) = Real(M3,dp)  
g(176) = Aimag(M3)  
g(177) = Real(M4,dp)  
g(178) = Aimag(M4)  
g(179) = Real(Tep,dp)  
g(180) = Aimag(Tep)  
g(181) = Real(Tmup,dp)  
g(182) = Aimag(Tmup)  
Iname = Iname - 1 
 
End Subroutine ParametersToG182

Subroutine rge182(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,         & 
& Dg3,gp,betagp1,betagp2,Dgp,ml012,betaml0121,betaml0122,Dml012,ml022,betaml0221,        & 
& betaml0222,Dml022,ml032,betaml0321,betaml0322,Dml032,mHd2,betamHd21,betamHd22,         & 
& DmHd2,mHu2,betamHu21,betamHu22,DmHu2,me012,betame0121,betame0122,Dme012,               & 
& me022,betame0221,betame0222,Dme022,me032,betame0321,betame0322,Dme032,mvR012,          & 
& betamvR0121,betamvR0122,DmvR012,mvR022,betamvR0221,betamvR0222,DmvR022,mvR032,         & 
& betamvR0321,betamvR0322,DmvR032,ms2,betams21,betams22,Dms2
Complex(dp) :: Yd(3,3),betaYd1(3,3),betaYd2(3,3),DYd(3,3),adjYd(3,3),Ye11,            & 
& betaYe111,betaYe112,DYe11,Ye22,betaYe221,betaYe222,DYe22,Ye33,betaYe331,               & 
& betaYe332,DYe33,lam,betalam1,betalam2,Dlam,Yv11,betaYv111,betaYv112,DYv11,             & 
& Yv22,betaYv221,betaYv222,DYv22,Yv33,betaYv331,betaYv332,DYv33,Yu(3,3),betaYu1(3,3)     & 
& ,betaYu2(3,3),DYu(3,3),adjYu(3,3),Td(3,3),betaTd1(3,3),betaTd2(3,3),DTd(3,3)           & 
& ,adjTd(3,3),TYe11,betaTYe111,betaTYe112,DTYe11,TYe22,betaTYe221,betaTYe222,            & 
& DTYe22,TYe33,betaTYe331,betaTYe332,DTYe33,Tlam,betaTlam1,betaTlam2,DTlam,              & 
& TYv11,betaTYv111,betaTYv112,DTYv11,TYv22,betaTYv221,betaTYv222,DTYv22,TYv33,           & 
& betaTYv331,betaTYv332,DTYv33,Tu(3,3),betaTu1(3,3),betaTu2(3,3),DTu(3,3),               & 
& adjTu(3,3),mq2(3,3),betamq21(3,3),betamq22(3,3),Dmq2(3,3),md2(3,3),betamd21(3,3)       & 
& ,betamd22(3,3),Dmd2(3,3),mu2(3,3),betamu21(3,3),betamu22(3,3),Dmu2(3,3),               & 
& M1,betaM11,betaM12,DM1,M2,betaM21,betaM22,DM2,M3,betaM31,betaM32,DM3,M4,               & 
& betaM41,betaM42,DM4,Tep,betaTep1,betaTep2,DTep,Tmup,betaTmup1,betaTmup2,DTmup
Real(dp) :: Tr1(4),Tr2(4),Tr3(4) 
Real(dp) :: Tr2U1(4,4) 
Real(dp) :: AbsYe11,AbsYe22,AbsYe33,Abslam,AbsYv11,AbsYv22,AbsYv33,AbsTYe11,          & 
& AbsTYe22,AbsTYe33,AbsTlam,AbsTYv11,AbsTYv22,AbsTYv33,AbsM1,AbsM2,AbsM3,AbsM4,          & 
& AbsTep,AbsTmup
Complex(dp) :: md2Yd(3,3),mq2adjYd(3,3),mq2adjYu(3,3),mu2Yu(3,3),Ydmq2(3,3),YdadjYd(3,3),            & 
& Yumq2(3,3),YuadjYu(3,3),adjYdmd2(3,3),adjYdYd(3,3),adjYdTd(3,3),adjYumu2(3,3),         & 
& adjYuYu(3,3),adjYuTu(3,3),adjTdTd(3,3),adjTuTu(3,3),CTdTpTd(3,3),CTuTpTu(3,3),         & 
& TdadjTd(3,3),TuadjTu(3,3),md2YdadjYd(3,3),mq2adjYdYd(3,3),mq2adjYuYu(3,3),             & 
& mu2YuadjYu(3,3),Ydmq2adjYd(3,3),YdadjYdmd2(3,3),YdadjYdYd(3,3),YdadjYdTd(3,3),         & 
& YdadjYuYu(3,3),YdadjYuTu(3,3),Yumq2adjYu(3,3),YuadjYdYd(3,3),YuadjYdTd(3,3),           & 
& YuadjYumu2(3,3),YuadjYuYu(3,3),YuadjYuTu(3,3),adjYdmd2Yd(3,3),adjYdYdmq2(3,3),         & 
& adjYumu2Yu(3,3),adjYuYumq2(3,3),TdadjYdYd(3,3),TdadjYuYu(3,3),TuadjYdYd(3,3),          & 
& TuadjYuYu(3,3)

Complex(dp) :: YdadjYu(3,3),YdadjTd(3,3),YdadjTu(3,3),YuadjYd(3,3),YuadjTd(3,3),YuadjTu(3,3),        & 
& adjYdCmd2(3,3),adjYuCmu2(3,3),adjTdYd(3,3),adjTuYu(3,3),Cmq2adjYd(3,3),Cmq2adjYu(3,3), & 
& CTdTpYd(3,3),CTuTpYu(3,3),TdadjYd(3,3),TdadjYu(3,3),TdadjTu(3,3),TuadjYd(3,3),         & 
& TuadjYu(3,3),TuadjTd(3,3),md2YdadjYu(3,3),mu2YuadjYd(3,3),Ydmq2adjYu(3,3),             & 
& YdadjYdCmd2(3,3),YdadjYumu2(3,3),YdadjTdTd(3,3),YdCmq2adjYd(3,3),Yumq2adjYd(3,3),      & 
& YuadjYdmd2(3,3),YuadjYuCmu2(3,3),YuadjTuTu(3,3),YuCmq2adjYu(3,3),adjYdYdadjYd(3,3),    & 
& adjYdYdadjYu(3,3),adjYdYdadjTd(3,3),adjYdYdadjTu(3,3),adjYdTdadjYd(3,3),               & 
& adjYdTdadjYu(3,3),adjYdTdadjTd(3,3),adjYdTdadjTu(3,3),adjYuYuadjYd(3,3),               & 
& adjYuYuadjYu(3,3),adjYuYuadjTd(3,3),adjYuYuadjTu(3,3),adjYuTuadjYd(3,3),               & 
& adjYuTuadjYu(3,3),adjYuTuadjTd(3,3),adjYuTuadjTu(3,3),adjTdYdadjYd(3,3),               & 
& adjTdYdadjYu(3,3),adjTdTdadjYd(3,3),adjTdTdadjYu(3,3),adjTuYuadjYd(3,3),               & 
& adjTuYuadjYu(3,3),adjTuTuadjYd(3,3),adjTuTuadjYu(3,3),TdadjTdYd(3,3),TuadjTuYu(3,3),   & 
& md2YdadjYdYd(3,3),mq2adjYdYdadjYd(3,3),mq2adjYdYdadjYu(3,3),mq2adjYuYuadjYd(3,3),      & 
& mq2adjYuYuadjYu(3,3),mu2YuadjYuYu(3,3),Ydmq2adjYdYd(3,3),YdadjYdmd2Yd(3,3),            & 
& YdadjYdYdmq2(3,3),YdadjYdYdadjYd(3,3),YdadjYdTdadjYd(3,3),YdadjYdTdadjTd(3,3),         & 
& YdadjYuYuadjYd(3,3),YdadjYuTuadjYd(3,3),YdadjYuTuadjTd(3,3),YdadjTdTdadjYd(3,3),       & 
& YdadjTuTuadjYd(3,3),Yumq2adjYuYu(3,3),YuadjYdYdadjYu(3,3),YuadjYdTdadjYu(3,3),         & 
& YuadjYdTdadjTu(3,3),YuadjYumu2Yu(3,3),YuadjYuYumq2(3,3),YuadjYuYuadjYu(3,3),           & 
& YuadjYuTuadjYu(3,3),YuadjYuTuadjTu(3,3),YuadjTdTdadjYu(3,3),YuadjTuTuadjYu(3,3),       & 
& adjYdmd2YdadjYd(3,3),adjYdmd2YdadjYu(3,3),adjYdYdmq2adjYd(3,3),adjYdYdmq2adjYu(3,3),   & 
& adjYdYdadjYdmd2(3,3),adjYdYdadjYdYd(3,3),adjYdYdadjYdTd(3,3),adjYdYdadjYumu2(3,3),     & 
& adjYdYdadjYuYu(3,3),adjYdYdadjYuTu(3,3),adjYdYdadjTdTd(3,3),adjYdTdadjYdYd(3,3),       & 
& adjYdTdadjYuYu(3,3),adjYdTdadjTdYd(3,3),adjYumu2YuadjYd(3,3),adjYumu2YuadjYu(3,3),     & 
& adjYuYumq2adjYd(3,3),adjYuYumq2adjYu(3,3),adjYuYuadjYdmd2(3,3),adjYuYuadjYdYd(3,3),    & 
& adjYuYuadjYdTd(3,3),adjYuYuadjYumu2(3,3),adjYuYuadjYuYu(3,3),adjYuYuadjYuTu(3,3),      & 
& adjYuYuadjTuTu(3,3),adjYuTuadjYdYd(3,3),adjYuTuadjYuYu(3,3),adjYuTuadjTuYu(3,3),       & 
& adjTdYdadjYdTd(3,3),adjTdTdadjYdYd(3,3),adjTuYuadjYuTu(3,3),adjTuTuadjYuYu(3,3),       & 
& TdadjYdYdadjTd(3,3),TdadjYuYuadjTd(3,3),TdadjTdYdadjYd(3,3),TdadjTuYuadjYd(3,3),       & 
& TuadjYdYdadjTu(3,3),TuadjYuYuadjTu(3,3),TuadjTdYdadjYu(3,3),TuadjTuYuadjYu(3,3),       & 
& md2YdadjYdYdadjYd(3,3),md2YdadjYuYuadjYd(3,3),mq2adjYdYdadjYdYd(3,3),mq2adjYdYdadjYuYu(3,3),& 
& mq2adjYuYuadjYdYd(3,3),mq2adjYuYuadjYuYu(3,3),mu2YuadjYdYdadjYu(3,3),mu2YuadjYuYuadjYu(3,3),& 
& Ydmq2adjYdYdadjYd(3,3),Ydmq2adjYuYuadjYd(3,3),YdadjYdmd2YdadjYd(3,3),YdadjYdYdmq2adjYd(3,3),& 
& YdadjYdYdadjYdmd2(3,3),YdadjYdYdadjYdYd(3,3),YdadjYdYdadjYdTd(3,3),YdadjYdTdadjYdYd(3,3),& 
& YdadjYumu2YuadjYd(3,3),YdadjYuYumq2adjYd(3,3),YdadjYuYuadjYdmd2(3,3),YdadjYuYuadjYdYd(3,3),& 
& YdadjYuYuadjYdTd(3,3),YdadjYuYuadjYuYu(3,3),YdadjYuYuadjYuTu(3,3),YdadjYuTuadjYdYd(3,3),& 
& YdadjYuTuadjYuYu(3,3),Yumq2adjYdYdadjYu(3,3),Yumq2adjYuYuadjYu(3,3),YuadjYdmd2YdadjYu(3,3),& 
& YuadjYdYdmq2adjYu(3,3),YuadjYdYdadjYdYd(3,3),YuadjYdYdadjYdTd(3,3),YuadjYdYdadjYumu2(3,3)

Complex(dp) :: YuadjYdYdadjYuYu(3,3),YuadjYdYdadjYuTu(3,3),YuadjYdTdadjYdYd(3,3),YuadjYdTdadjYuYu(3,3),& 
& YuadjYumu2YuadjYu(3,3),YuadjYuYumq2adjYu(3,3),YuadjYuYuadjYumu2(3,3),YuadjYuYuadjYuYu(3,3),& 
& YuadjYuYuadjYuTu(3,3),YuadjYuTuadjYuYu(3,3),adjYdmd2YdadjYdYd(3,3),adjYdYdmq2adjYdYd(3,3),& 
& adjYdYdadjYdmd2Yd(3,3),adjYdYdadjYdYdmq2(3,3),adjYumu2YuadjYuYu(3,3),adjYuYumq2adjYuYu(3,3),& 
& adjYuYuadjYumu2Yu(3,3),adjYuYuadjYuYumq2(3,3),TdadjYdYdadjYdYd(3,3),TdadjYuYuadjYdYd(3,3),& 
& TdadjYuYuadjYuYu(3,3),TuadjYdYdadjYdYd(3,3),TuadjYdYdadjYuYu(3,3),TuadjYuYuadjYuYu(3,3)

Complex(dp) :: Trmd2,Trmq2,Trmu2,TrYdadjYd,TrYuadjYu,TradjYdTd,TradjYuTu,TrCTdTpTd,TrCTuTpTu,        & 
& Trmd2YdadjYd,Trmq2adjYdYd,Trmq2adjYuYu,Trmu2YuadjYu

Complex(dp) :: TrCTdTpYd,TrCTuTpYu,TrYdadjYdCmd2,TrYdCmq2adjYd,TrYuadjYuCmu2,TrYuCmq2adjYu,          & 
& TrYdadjYdYdadjYd,TrYdadjYdTdadjYd,TrYdadjYdTdadjTd,TrYdadjYuYuadjYd,TrYdadjYuTuadjYd,  & 
& TrYdadjYuTuadjTd,TrYdadjTdTdadjYd,TrYdadjTuTuadjYd,TrYuadjYdTdadjYu,TrYuadjYdTdadjTu,  & 
& TrYuadjYuYuadjYu,TrYuadjYuTuadjYu,TrYuadjYuTuadjTu,TrYuadjTdTdadjYu,TrYuadjTuTuadjYu,  & 
& Trmd2YdadjYdYdadjYd,Trmd2YdadjYuYuadjYd,Trmq2adjYdYdadjYdYd,Trmq2adjYdYdadjYuYu,       & 
& Trmq2adjYuYuadjYdYd,Trmq2adjYuYuadjYuYu,Trmu2YuadjYdYdadjYu,Trmu2YuadjYuYuadjYu

Real(dp) :: g1p2,g1p3,g2p2,g2p3,g3p2,g3p3,gpp2,gpp3,Qdp2,Qe1p2,Qe2p2,Qe3p2,QHdp2,QHup2,           & 
& Ql1p2,Ql2p2,Ql3p2,Qqp2,Qsp2,Qup2,Qv1p2,Qv2p2,Qv3p2

Complex(dp) :: sqrt3ov5,ooSqrt15,Ye11p2,Ye22p2,Ye33p2,Yv11p2,Yv22p2,Yv33p2,lamp2

Real(dp) :: g1p4,g2p4,g3p4,gpp4,Qdp3,Qdp4,Qe1p3,Qe1p4,Qe2p3,Qe2p4,Qe3p3,Qe3p4,QHdp3,              & 
& QHdp4,QHup3,QHup4,Ql1p3,Ql1p4,Ql2p3,Ql2p4,Ql3p3,Ql3p4,Qqp3,Qqp4,Qsp3,Qsp4,             & 
& Qup3,Qup4,Qv1p3,Qv1p4,Qv2p3,Qv2p4,Qv3p3,Qv3p4

Complex(dp) :: sqrt15,Yv11p3,Yv22p3,Yv33p3,lamp3,CYe11p2,CYe22p2,CYe33p2,CYv11p2,CYv22p2,            & 
& CYv33p2,Clamp2

Iname = Iname +1 
NameOfUnit(Iname) = 'rge182' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters182(gy,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,            & 
& Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,               & 
& mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,Tep,Tmup)

AbsYe11 = Conjg(Ye11)*Ye11
AbsYe22 = Conjg(Ye22)*Ye22
AbsYe33 = Conjg(Ye33)*Ye33
Abslam = Conjg(lam)*lam
AbsYv11 = Conjg(Yv11)*Yv11
AbsYv22 = Conjg(Yv22)*Yv22
AbsYv33 = Conjg(Yv33)*Yv33
AbsTYe11 = Conjg(TYe11)*TYe11
AbsTYe22 = Conjg(TYe22)*TYe22
AbsTYe33 = Conjg(TYe33)*TYe33
AbsTlam = Conjg(Tlam)*Tlam
AbsTYv11 = Conjg(TYv11)*TYv11
AbsTYv22 = Conjg(TYv22)*TYv22
AbsTYv33 = Conjg(TYv33)*TYv33
AbsM1 = Conjg(M1)*M1
AbsM2 = Conjg(M2)*M2
AbsM3 = Conjg(M3)*M3
AbsM4 = Conjg(M4)*M4
AbsTep = Conjg(Tep)*Tep
AbsTmup = Conjg(Tmup)*Tmup
Call Adjungate(Yd,adjYd)
Call Adjungate(Yu,adjYu)
Call Adjungate(Td,adjTd)
Call Adjungate(Tu,adjTu)
 md2Yd = Matmul2(md2,Yd,OnlyDiagonal) 
 mq2adjYd = Matmul2(mq2,adjYd,OnlyDiagonal) 
 mq2adjYu = Matmul2(mq2,adjYu,OnlyDiagonal) 
 mu2Yu = Matmul2(mu2,Yu,OnlyDiagonal) 
 Ydmq2 = Matmul2(Yd,mq2,OnlyDiagonal) 
 YdadjYd = Matmul2(Yd,adjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYd(i2,i2) =  Real(YdadjYd(i2,i2),dp) 
 Yumq2 = Matmul2(Yu,mq2,OnlyDiagonal) 
 YuadjYu = Matmul2(Yu,adjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYu(i2,i2) =  Real(YuadjYu(i2,i2),dp) 
 adjYdmd2 = Matmul2(adjYd,md2,OnlyDiagonal) 
 adjYdYd = Matmul2(adjYd,Yd,OnlyDiagonal) 
Forall(i2=1:3)  adjYdYd(i2,i2) =  Real(adjYdYd(i2,i2),dp) 
 adjYdTd = Matmul2(adjYd,Td,OnlyDiagonal) 
 adjYumu2 = Matmul2(adjYu,mu2,OnlyDiagonal) 
 adjYuYu = Matmul2(adjYu,Yu,OnlyDiagonal) 
Forall(i2=1:3)  adjYuYu(i2,i2) =  Real(adjYuYu(i2,i2),dp) 
 adjYuTu = Matmul2(adjYu,Tu,OnlyDiagonal) 
 adjTdTd = Matmul2(adjTd,Td,OnlyDiagonal) 
 adjTuTu = Matmul2(adjTu,Tu,OnlyDiagonal) 
 CTdTpTd = Matmul2(Conjg(Td),Transpose(Td),OnlyDiagonal) 
Forall(i2=1:3)  CTdTpTd(i2,i2) =  Real(CTdTpTd(i2,i2),dp) 
 CTuTpTu = Matmul2(Conjg(Tu),Transpose(Tu),OnlyDiagonal) 
Forall(i2=1:3)  CTuTpTu(i2,i2) =  Real(CTuTpTu(i2,i2),dp) 
 TdadjTd = Matmul2(Td,adjTd,OnlyDiagonal) 
 TuadjTu = Matmul2(Tu,adjTu,OnlyDiagonal) 
 md2YdadjYd = Matmul2(md2,YdadjYd,OnlyDiagonal) 
 mq2adjYdYd = Matmul2(mq2,adjYdYd,OnlyDiagonal) 
 mq2adjYuYu = Matmul2(mq2,adjYuYu,OnlyDiagonal) 
 mu2YuadjYu = Matmul2(mu2,YuadjYu,OnlyDiagonal) 
 Ydmq2adjYd = Matmul2(Yd,mq2adjYd,OnlyDiagonal) 
Forall(i2=1:3)  Ydmq2adjYd(i2,i2) =  Real(Ydmq2adjYd(i2,i2),dp) 
 YdadjYdmd2 = Matmul2(Yd,adjYdmd2,OnlyDiagonal) 
 YdadjYdYd = Matmul2(Yd,adjYdYd,OnlyDiagonal) 
 YdadjYdTd = Matmul2(Yd,adjYdTd,OnlyDiagonal) 
 YdadjYuYu = Matmul2(Yd,adjYuYu,OnlyDiagonal) 
 YdadjYuTu = Matmul2(Yd,adjYuTu,OnlyDiagonal) 
 Yumq2adjYu = Matmul2(Yu,mq2adjYu,OnlyDiagonal) 
Forall(i2=1:3)  Yumq2adjYu(i2,i2) =  Real(Yumq2adjYu(i2,i2),dp) 
 YuadjYdYd = Matmul2(Yu,adjYdYd,OnlyDiagonal) 
 YuadjYdTd = Matmul2(Yu,adjYdTd,OnlyDiagonal) 
 YuadjYumu2 = Matmul2(Yu,adjYumu2,OnlyDiagonal) 
 YuadjYuYu = Matmul2(Yu,adjYuYu,OnlyDiagonal) 
 YuadjYuTu = Matmul2(Yu,adjYuTu,OnlyDiagonal) 
 adjYdmd2Yd = Matmul2(adjYd,md2Yd,OnlyDiagonal) 
Forall(i2=1:3)  adjYdmd2Yd(i2,i2) =  Real(adjYdmd2Yd(i2,i2),dp) 
 adjYdYdmq2 = Matmul2(adjYd,Ydmq2,OnlyDiagonal) 
 adjYumu2Yu = Matmul2(adjYu,mu2Yu,OnlyDiagonal) 
Forall(i2=1:3)  adjYumu2Yu(i2,i2) =  Real(adjYumu2Yu(i2,i2),dp) 
 adjYuYumq2 = Matmul2(adjYu,Yumq2,OnlyDiagonal) 
 TdadjYdYd = Matmul2(Td,adjYdYd,OnlyDiagonal) 
 TdadjYuYu = Matmul2(Td,adjYuYu,OnlyDiagonal) 
 TuadjYdYd = Matmul2(Tu,adjYdYd,OnlyDiagonal) 
 TuadjYuYu = Matmul2(Tu,adjYuYu,OnlyDiagonal) 
 Trmd2 = Real(cTrace(md2),dp) 
 Trmq2 = Real(cTrace(mq2),dp) 
 Trmu2 = Real(cTrace(mu2),dp) 
 TrYdadjYd = Real(cTrace(YdadjYd),dp) 
 TrYuadjYu = Real(cTrace(YuadjYu),dp) 
 TradjYdTd = cTrace(adjYdTd) 
 TradjYuTu = cTrace(adjYuTu) 
 TrCTdTpTd = Real(cTrace(CTdTpTd),dp) 
 TrCTuTpTu = Real(cTrace(CTuTpTu),dp) 
 Trmd2YdadjYd = cTrace(md2YdadjYd) 
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
 Qe1p2 =Qe1**2 
 Qe2p2 =Qe2**2 
 Qe3p2 =Qe3**2 
 QHdp2 =QHd**2 
 QHup2 =QHu**2 
 Ql1p2 =Ql1**2 
 Ql2p2 =Ql2**2 
 Ql3p2 =Ql3**2 
 Qqp2 =Qq**2 
 Qsp2 =Qs**2 
 Qup2 =Qu**2 
 Qv1p2 =Qv1**2 
 Qv2p2 =Qv2**2 
 Qv3p2 =Qv3**2 
 Ye11p2 =Ye11**2 
 Ye22p2 =Ye22**2 
 Ye33p2 =Ye33**2 
 Yv11p2 =Yv11**2 
 Yv22p2 =Yv22**2 
 Yv33p2 =Yv33**2 
 lamp2 =lam**2 
 sqrt15 =sqrt(15._dp) 
 g1p4 =g1**4 
 g2p4 =g2**4 
 g3p4 =g3**4 
 gpp4 =gp**4 
 Qdp3 =Qd**3 
 Qdp4 =Qd**4 
 Qe1p3 =Qe1**3 
 Qe1p4 =Qe1**4 
 Qe2p3 =Qe2**3 
 Qe2p4 =Qe2**4 
 Qe3p3 =Qe3**3 
 Qe3p4 =Qe3**4 
 QHdp3 =QHd**3 
 QHdp4 =QHd**4 
 QHup3 =QHu**3 
 QHup4 =QHu**4 
 Ql1p3 =Ql1**3 
 Ql1p4 =Ql1**4 
 Ql2p3 =Ql2**3 
 Ql2p4 =Ql2**4 
 Ql3p3 =Ql3**3 
 Ql3p4 =Ql3**4 
 Qqp3 =Qq**3 
 Qqp4 =Qq**4 
 Qsp3 =Qs**3 
 Qsp4 =Qs**4 
 Qup3 =Qu**3 
 Qup4 =Qu**4 
 Qv1p3 =Qv1**3 
 Qv1p4 =Qv1**4 
 Qv2p3 =Qv2**3 
 Qv2p4 =Qv2**4 
 Qv3p3 =Qv3**3 
 Qv3p4 =Qv3**4 
 Yv11p3 =Yv11**3 
 Yv22p3 =Yv22**3 
 Yv33p3 =Yv33**3 
 lamp3 =lam**3 
 CYe11p2 =Conjg(Ye11)**2 
 CYe22p2 =Conjg(Ye22)**2 
 CYe33p2 =Conjg(Ye33)**2 
 CYv11p2 =Conjg(Yv11)**2 
 CYv22p2 =Conjg(Yv22)**2 
 CYv33p2 =Conjg(Yv33)**2 
 Clamp2 =Conjg(lam)**2 


If (TwoLoopRGE) Then 
 YdadjYu = Matmul2(Yd,adjYu,OnlyDiagonal) 
 YdadjTd = Matmul2(Yd,adjTd,OnlyDiagonal) 
 YdadjTu = Matmul2(Yd,adjTu,OnlyDiagonal) 
 YuadjYd = Matmul2(Yu,adjYd,OnlyDiagonal) 
 YuadjTd = Matmul2(Yu,adjTd,OnlyDiagonal) 
 YuadjTu = Matmul2(Yu,adjTu,OnlyDiagonal) 
 adjYdCmd2 = Matmul2(adjYd,Conjg(md2),OnlyDiagonal) 
 adjYuCmu2 = Matmul2(adjYu,Conjg(mu2),OnlyDiagonal) 
 adjTdYd = Matmul2(adjTd,Yd,OnlyDiagonal) 
 adjTuYu = Matmul2(adjTu,Yu,OnlyDiagonal) 
 Cmq2adjYd = Matmul2(Conjg(mq2),adjYd,OnlyDiagonal) 
 Cmq2adjYu = Matmul2(Conjg(mq2),adjYu,OnlyDiagonal) 
 CTdTpYd = Matmul2(Conjg(Td),Transpose(Yd),OnlyDiagonal) 
 CTuTpYu = Matmul2(Conjg(Tu),Transpose(Yu),OnlyDiagonal) 
 TdadjYd = Matmul2(Td,adjYd,OnlyDiagonal) 
 TdadjYu = Matmul2(Td,adjYu,OnlyDiagonal) 
 TdadjTu = Matmul2(Td,adjTu,OnlyDiagonal) 
 TuadjYd = Matmul2(Tu,adjYd,OnlyDiagonal) 
 TuadjYu = Matmul2(Tu,adjYu,OnlyDiagonal) 
 TuadjTd = Matmul2(Tu,adjTd,OnlyDiagonal) 
 md2YdadjYu = Matmul2(md2,YdadjYu,OnlyDiagonal) 
 mu2YuadjYd = Matmul2(mu2,YuadjYd,OnlyDiagonal) 
 Ydmq2adjYu = Matmul2(Yd,mq2adjYu,OnlyDiagonal) 
 YdadjYdCmd2 = Matmul2(Yd,adjYdCmd2,OnlyDiagonal) 
 YdadjYumu2 = Matmul2(Yd,adjYumu2,OnlyDiagonal) 
 YdadjTdTd = Matmul2(Yd,adjTdTd,OnlyDiagonal) 
 YdCmq2adjYd = Matmul2(Yd,Cmq2adjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdCmq2adjYd(i2,i2) =  Real(YdCmq2adjYd(i2,i2),dp) 
 Yumq2adjYd = Matmul2(Yu,mq2adjYd,OnlyDiagonal) 
 YuadjYdmd2 = Matmul2(Yu,adjYdmd2,OnlyDiagonal) 
 YuadjYuCmu2 = Matmul2(Yu,adjYuCmu2,OnlyDiagonal) 
 YuadjTuTu = Matmul2(Yu,adjTuTu,OnlyDiagonal) 
 YuCmq2adjYu = Matmul2(Yu,Cmq2adjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuCmq2adjYu(i2,i2) =  Real(YuCmq2adjYu(i2,i2),dp) 
 adjYdYdadjYd = Matmul2(adjYd,YdadjYd,OnlyDiagonal) 
 adjYdYdadjYu = Matmul2(adjYd,YdadjYu,OnlyDiagonal) 
 adjYdYdadjTd = Matmul2(adjYd,YdadjTd,OnlyDiagonal) 
 adjYdYdadjTu = Matmul2(adjYd,YdadjTu,OnlyDiagonal) 
 adjYdTdadjYd = Matmul2(adjYd,TdadjYd,OnlyDiagonal) 
 adjYdTdadjYu = Matmul2(adjYd,TdadjYu,OnlyDiagonal) 
 adjYdTdadjTd = Matmul2(adjYd,TdadjTd,OnlyDiagonal) 
 adjYdTdadjTu = Matmul2(adjYd,TdadjTu,OnlyDiagonal) 
 adjYuYuadjYd = Matmul2(adjYu,YuadjYd,OnlyDiagonal) 
 adjYuYuadjYu = Matmul2(adjYu,YuadjYu,OnlyDiagonal) 
 adjYuYuadjTd = Matmul2(adjYu,YuadjTd,OnlyDiagonal) 
 adjYuYuadjTu = Matmul2(adjYu,YuadjTu,OnlyDiagonal) 
 adjYuTuadjYd = Matmul2(adjYu,TuadjYd,OnlyDiagonal) 
 adjYuTuadjYu = Matmul2(adjYu,TuadjYu,OnlyDiagonal) 
 adjYuTuadjTd = Matmul2(adjYu,TuadjTd,OnlyDiagonal) 
 adjYuTuadjTu = Matmul2(adjYu,TuadjTu,OnlyDiagonal) 
 adjTdYdadjYd = Matmul2(adjTd,YdadjYd,OnlyDiagonal) 
 adjTdYdadjYu = Matmul2(adjTd,YdadjYu,OnlyDiagonal) 
 adjTdTdadjYd = Matmul2(adjTd,TdadjYd,OnlyDiagonal) 
 adjTdTdadjYu = Matmul2(adjTd,TdadjYu,OnlyDiagonal) 
 adjTuYuadjYd = Matmul2(adjTu,YuadjYd,OnlyDiagonal) 
 adjTuYuadjYu = Matmul2(adjTu,YuadjYu,OnlyDiagonal) 
 adjTuTuadjYd = Matmul2(adjTu,TuadjYd,OnlyDiagonal) 
 adjTuTuadjYu = Matmul2(adjTu,TuadjYu,OnlyDiagonal) 
 TdadjTdYd = Matmul2(Td,adjTdYd,OnlyDiagonal) 
 TuadjTuYu = Matmul2(Tu,adjTuYu,OnlyDiagonal) 
 md2YdadjYdYd = Matmul2(md2,YdadjYdYd,OnlyDiagonal) 
 mq2adjYdYdadjYd = Matmul2(mq2,adjYdYdadjYd,OnlyDiagonal) 
 mq2adjYdYdadjYu = Matmul2(mq2,adjYdYdadjYu,OnlyDiagonal) 
 mq2adjYuYuadjYd = Matmul2(mq2,adjYuYuadjYd,OnlyDiagonal) 
 mq2adjYuYuadjYu = Matmul2(mq2,adjYuYuadjYu,OnlyDiagonal) 
 mu2YuadjYuYu = Matmul2(mu2,YuadjYuYu,OnlyDiagonal) 
 Ydmq2adjYdYd = Matmul2(Yd,mq2adjYdYd,OnlyDiagonal) 
 YdadjYdmd2Yd = Matmul2(Yd,adjYdmd2Yd,OnlyDiagonal) 
 YdadjYdYdmq2 = Matmul2(Yd,adjYdYdmq2,OnlyDiagonal) 
 YdadjYdYdadjYd = Matmul2(Yd,adjYdYdadjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYdYdadjYd(i2,i2) =  Real(YdadjYdYdadjYd(i2,i2),dp) 
 YdadjYdTdadjYd = Matmul2(Yd,adjYdTdadjYd,OnlyDiagonal) 
 YdadjYdTdadjTd = Matmul2(Yd,adjYdTdadjTd,OnlyDiagonal) 
 YdadjYuYuadjYd = Matmul2(Yd,adjYuYuadjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYuYuadjYd(i2,i2) =  Real(YdadjYuYuadjYd(i2,i2),dp) 
 YdadjYuTuadjYd = Matmul2(Yd,adjYuTuadjYd,OnlyDiagonal) 
 YdadjYuTuadjTd = Matmul2(Yd,adjYuTuadjTd,OnlyDiagonal) 
 YdadjTdTdadjYd = Matmul2(Yd,adjTdTdadjYd,OnlyDiagonal) 
 YdadjTuTuadjYd = Matmul2(Yd,adjTuTuadjYd,OnlyDiagonal) 
 Yumq2adjYuYu = Matmul2(Yu,mq2adjYuYu,OnlyDiagonal) 
 YuadjYdYdadjYu = Matmul2(Yu,adjYdYdadjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYdYdadjYu(i2,i2) =  Real(YuadjYdYdadjYu(i2,i2),dp) 
 YuadjYdTdadjYu = Matmul2(Yu,adjYdTdadjYu,OnlyDiagonal) 
 YuadjYdTdadjTu = Matmul2(Yu,adjYdTdadjTu,OnlyDiagonal) 
 YuadjYumu2Yu = Matmul2(Yu,adjYumu2Yu,OnlyDiagonal) 
 YuadjYuYumq2 = Matmul2(Yu,adjYuYumq2,OnlyDiagonal) 
 YuadjYuYuadjYu = Matmul2(Yu,adjYuYuadjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYuYuadjYu(i2,i2) =  Real(YuadjYuYuadjYu(i2,i2),dp) 
 YuadjYuTuadjYu = Matmul2(Yu,adjYuTuadjYu,OnlyDiagonal) 
 YuadjYuTuadjTu = Matmul2(Yu,adjYuTuadjTu,OnlyDiagonal) 
 YuadjTdTdadjYu = Matmul2(Yu,adjTdTdadjYu,OnlyDiagonal) 
 YuadjTuTuadjYu = Matmul2(Yu,adjTuTuadjYu,OnlyDiagonal) 
 adjYdmd2YdadjYd = Matmul2(adjYd,md2YdadjYd,OnlyDiagonal) 
 adjYdmd2YdadjYu = Matmul2(adjYd,md2YdadjYu,OnlyDiagonal) 
 adjYdYdmq2adjYd = Matmul2(adjYd,Ydmq2adjYd,OnlyDiagonal) 
 adjYdYdmq2adjYu = Matmul2(adjYd,Ydmq2adjYu,OnlyDiagonal) 
 adjYdYdadjYdmd2 = Matmul2(adjYd,YdadjYdmd2,OnlyDiagonal) 
 adjYdYdadjYdYd = Matmul2(adjYd,YdadjYdYd,OnlyDiagonal) 
Forall(i2=1:3)  adjYdYdadjYdYd(i2,i2) =  Real(adjYdYdadjYdYd(i2,i2),dp) 
 adjYdYdadjYdTd = Matmul2(adjYd,YdadjYdTd,OnlyDiagonal) 
 adjYdYdadjYumu2 = Matmul2(adjYd,YdadjYumu2,OnlyDiagonal) 
 adjYdYdadjYuYu = Matmul2(adjYd,YdadjYuYu,OnlyDiagonal) 
 adjYdYdadjYuTu = Matmul2(adjYd,YdadjYuTu,OnlyDiagonal) 
 adjYdYdadjTdTd = Matmul2(adjYd,YdadjTdTd,OnlyDiagonal) 
 adjYdTdadjYdYd = Matmul2(adjYd,TdadjYdYd,OnlyDiagonal) 
 adjYdTdadjYuYu = Matmul2(adjYd,TdadjYuYu,OnlyDiagonal) 
 adjYdTdadjTdYd = Matmul2(adjYd,TdadjTdYd,OnlyDiagonal) 
 adjYumu2YuadjYd = Matmul2(adjYu,mu2YuadjYd,OnlyDiagonal) 
 adjYumu2YuadjYu = Matmul2(adjYu,mu2YuadjYu,OnlyDiagonal) 
 adjYuYumq2adjYd = Matmul2(adjYu,Yumq2adjYd,OnlyDiagonal) 
 adjYuYumq2adjYu = Matmul2(adjYu,Yumq2adjYu,OnlyDiagonal) 
 adjYuYuadjYdmd2 = Matmul2(adjYu,YuadjYdmd2,OnlyDiagonal) 
 adjYuYuadjYdYd = Matmul2(adjYu,YuadjYdYd,OnlyDiagonal) 
 adjYuYuadjYdTd = Matmul2(adjYu,YuadjYdTd,OnlyDiagonal) 
 adjYuYuadjYumu2 = Matmul2(adjYu,YuadjYumu2,OnlyDiagonal) 
 adjYuYuadjYuYu = Matmul2(adjYu,YuadjYuYu,OnlyDiagonal) 
Forall(i2=1:3)  adjYuYuadjYuYu(i2,i2) =  Real(adjYuYuadjYuYu(i2,i2),dp) 
 adjYuYuadjYuTu = Matmul2(adjYu,YuadjYuTu,OnlyDiagonal) 
 adjYuYuadjTuTu = Matmul2(adjYu,YuadjTuTu,OnlyDiagonal) 
 adjYuTuadjYdYd = Matmul2(adjYu,TuadjYdYd,OnlyDiagonal) 
 adjYuTuadjYuYu = Matmul2(adjYu,TuadjYuYu,OnlyDiagonal) 
 adjYuTuadjTuYu = Matmul2(adjYu,TuadjTuYu,OnlyDiagonal) 
 adjTdYdadjYdTd = Matmul2(adjTd,YdadjYdTd,OnlyDiagonal) 
 adjTdTdadjYdYd = Matmul2(adjTd,TdadjYdYd,OnlyDiagonal) 
 adjTuYuadjYuTu = Matmul2(adjTu,YuadjYuTu,OnlyDiagonal) 
 adjTuTuadjYuYu = Matmul2(adjTu,TuadjYuYu,OnlyDiagonal) 
 TdadjYdYdadjTd = Matmul2(Td,adjYdYdadjTd,OnlyDiagonal) 
 TdadjYuYuadjTd = Matmul2(Td,adjYuYuadjTd,OnlyDiagonal) 
 TdadjTdYdadjYd = Matmul2(Td,adjTdYdadjYd,OnlyDiagonal) 
 TdadjTuYuadjYd = Matmul2(Td,adjTuYuadjYd,OnlyDiagonal) 
 TuadjYdYdadjTu = Matmul2(Tu,adjYdYdadjTu,OnlyDiagonal) 
 TuadjYuYuadjTu = Matmul2(Tu,adjYuYuadjTu,OnlyDiagonal) 
 TuadjTdYdadjYu = Matmul2(Tu,adjTdYdadjYu,OnlyDiagonal) 
 TuadjTuYuadjYu = Matmul2(Tu,adjTuYuadjYu,OnlyDiagonal) 
 md2YdadjYdYdadjYd = Matmul2(md2,YdadjYdYdadjYd,OnlyDiagonal) 
 md2YdadjYuYuadjYd = Matmul2(md2,YdadjYuYuadjYd,OnlyDiagonal) 
 mq2adjYdYdadjYdYd = Matmul2(mq2,adjYdYdadjYdYd,OnlyDiagonal) 
 mq2adjYdYdadjYuYu = Matmul2(mq2,adjYdYdadjYuYu,OnlyDiagonal) 
 mq2adjYuYuadjYdYd = Matmul2(mq2,adjYuYuadjYdYd,OnlyDiagonal) 
 mq2adjYuYuadjYuYu = Matmul2(mq2,adjYuYuadjYuYu,OnlyDiagonal) 
 mu2YuadjYdYdadjYu = Matmul2(mu2,YuadjYdYdadjYu,OnlyDiagonal) 
 mu2YuadjYuYuadjYu = Matmul2(mu2,YuadjYuYuadjYu,OnlyDiagonal) 
 Ydmq2adjYdYdadjYd = Matmul2(Yd,mq2adjYdYdadjYd,OnlyDiagonal) 
 Ydmq2adjYuYuadjYd = Matmul2(Yd,mq2adjYuYuadjYd,OnlyDiagonal) 
 YdadjYdmd2YdadjYd = Matmul2(Yd,adjYdmd2YdadjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYdmd2YdadjYd(i2,i2) =  Real(YdadjYdmd2YdadjYd(i2,i2),dp) 
 YdadjYdYdmq2adjYd = Matmul2(Yd,adjYdYdmq2adjYd,OnlyDiagonal) 
 YdadjYdYdadjYdmd2 = Matmul2(Yd,adjYdYdadjYdmd2,OnlyDiagonal) 
 YdadjYdYdadjYdYd = Matmul2(Yd,adjYdYdadjYdYd,OnlyDiagonal) 
 YdadjYdYdadjYdTd = Matmul2(Yd,adjYdYdadjYdTd,OnlyDiagonal) 
 YdadjYdTdadjYdYd = Matmul2(Yd,adjYdTdadjYdYd,OnlyDiagonal) 
 YdadjYumu2YuadjYd = Matmul2(Yd,adjYumu2YuadjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYumu2YuadjYd(i2,i2) =  Real(YdadjYumu2YuadjYd(i2,i2),dp) 
 YdadjYuYumq2adjYd = Matmul2(Yd,adjYuYumq2adjYd,OnlyDiagonal) 
 YdadjYuYuadjYdmd2 = Matmul2(Yd,adjYuYuadjYdmd2,OnlyDiagonal) 
 YdadjYuYuadjYdYd = Matmul2(Yd,adjYuYuadjYdYd,OnlyDiagonal) 
 YdadjYuYuadjYdTd = Matmul2(Yd,adjYuYuadjYdTd,OnlyDiagonal) 
 YdadjYuYuadjYuYu = Matmul2(Yd,adjYuYuadjYuYu,OnlyDiagonal) 
 YdadjYuYuadjYuTu = Matmul2(Yd,adjYuYuadjYuTu,OnlyDiagonal) 
 YdadjYuTuadjYdYd = Matmul2(Yd,adjYuTuadjYdYd,OnlyDiagonal) 
 YdadjYuTuadjYuYu = Matmul2(Yd,adjYuTuadjYuYu,OnlyDiagonal) 
 Yumq2adjYdYdadjYu = Matmul2(Yu,mq2adjYdYdadjYu,OnlyDiagonal) 
 Yumq2adjYuYuadjYu = Matmul2(Yu,mq2adjYuYuadjYu,OnlyDiagonal) 
 YuadjYdmd2YdadjYu = Matmul2(Yu,adjYdmd2YdadjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYdmd2YdadjYu(i2,i2) =  Real(YuadjYdmd2YdadjYu(i2,i2),dp) 
 YuadjYdYdmq2adjYu = Matmul2(Yu,adjYdYdmq2adjYu,OnlyDiagonal) 
 YuadjYdYdadjYdYd = Matmul2(Yu,adjYdYdadjYdYd,OnlyDiagonal) 
 YuadjYdYdadjYdTd = Matmul2(Yu,adjYdYdadjYdTd,OnlyDiagonal) 
 YuadjYdYdadjYumu2 = Matmul2(Yu,adjYdYdadjYumu2,OnlyDiagonal) 
 YuadjYdYdadjYuYu = Matmul2(Yu,adjYdYdadjYuYu,OnlyDiagonal) 
 YuadjYdYdadjYuTu = Matmul2(Yu,adjYdYdadjYuTu,OnlyDiagonal) 
 YuadjYdTdadjYdYd = Matmul2(Yu,adjYdTdadjYdYd,OnlyDiagonal) 
 YuadjYdTdadjYuYu = Matmul2(Yu,adjYdTdadjYuYu,OnlyDiagonal) 
 YuadjYumu2YuadjYu = Matmul2(Yu,adjYumu2YuadjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYumu2YuadjYu(i2,i2) =  Real(YuadjYumu2YuadjYu(i2,i2),dp) 
 YuadjYuYumq2adjYu = Matmul2(Yu,adjYuYumq2adjYu,OnlyDiagonal) 
 YuadjYuYuadjYumu2 = Matmul2(Yu,adjYuYuadjYumu2,OnlyDiagonal) 
 YuadjYuYuadjYuYu = Matmul2(Yu,adjYuYuadjYuYu,OnlyDiagonal) 
 YuadjYuYuadjYuTu = Matmul2(Yu,adjYuYuadjYuTu,OnlyDiagonal) 
 YuadjYuTuadjYuYu = Matmul2(Yu,adjYuTuadjYuYu,OnlyDiagonal) 
 adjYdmd2YdadjYdYd = Matmul2(adjYd,md2YdadjYdYd,OnlyDiagonal) 
 adjYdYdmq2adjYdYd = Matmul2(adjYd,Ydmq2adjYdYd,OnlyDiagonal) 
Forall(i2=1:3)  adjYdYdmq2adjYdYd(i2,i2) =  Real(adjYdYdmq2adjYdYd(i2,i2),dp) 
 adjYdYdadjYdmd2Yd = Matmul2(adjYd,YdadjYdmd2Yd,OnlyDiagonal) 
 adjYdYdadjYdYdmq2 = Matmul2(adjYd,YdadjYdYdmq2,OnlyDiagonal) 
 adjYumu2YuadjYuYu = Matmul2(adjYu,mu2YuadjYuYu,OnlyDiagonal) 
 adjYuYumq2adjYuYu = Matmul2(adjYu,Yumq2adjYuYu,OnlyDiagonal) 
Forall(i2=1:3)  adjYuYumq2adjYuYu(i2,i2) =  Real(adjYuYumq2adjYuYu(i2,i2),dp) 
 adjYuYuadjYumu2Yu = Matmul2(adjYu,YuadjYumu2Yu,OnlyDiagonal) 
 adjYuYuadjYuYumq2 = Matmul2(adjYu,YuadjYuYumq2,OnlyDiagonal) 
 TdadjYdYdadjYdYd = Matmul2(Td,adjYdYdadjYdYd,OnlyDiagonal) 
 TdadjYuYuadjYdYd = Matmul2(Td,adjYuYuadjYdYd,OnlyDiagonal) 
 TdadjYuYuadjYuYu = Matmul2(Td,adjYuYuadjYuYu,OnlyDiagonal) 
 TuadjYdYdadjYdYd = Matmul2(Tu,adjYdYdadjYdYd,OnlyDiagonal) 
 TuadjYdYdadjYuYu = Matmul2(Tu,adjYdYdadjYuYu,OnlyDiagonal) 
 TuadjYuYuadjYuYu = Matmul2(Tu,adjYuYuadjYuYu,OnlyDiagonal) 
 TrCTdTpYd = cTrace(CTdTpYd)
 TrCTuTpYu = cTrace(CTuTpYu)
 TrYdadjYdCmd2 = cTrace(YdadjYdCmd2)
 TrYdCmq2adjYd = Real(cTrace(YdCmq2adjYd),dp)  
 TrYuadjYuCmu2 = cTrace(YuadjYuCmu2)
 TrYuCmq2adjYu = Real(cTrace(YuCmq2adjYu),dp)  
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
 Qdp3 =Qd**3 
 Qdp4 =Qd**4 
 Qe1p3 =Qe1**3 
 Qe1p4 =Qe1**4 
 Qe2p3 =Qe2**3 
 Qe2p4 =Qe2**4 
 Qe3p3 =Qe3**3 
 Qe3p4 =Qe3**4 
 QHdp3 =QHd**3 
 QHdp4 =QHd**4 
 QHup3 =QHu**3 
 QHup4 =QHu**4 
 Ql1p3 =Ql1**3 
 Ql1p4 =Ql1**4 
 Ql2p3 =Ql2**3 
 Ql2p4 =Ql2**4 
 Ql3p3 =Ql3**3 
 Ql3p4 =Ql3**4 
 Qqp3 =Qq**3 
 Qqp4 =Qq**4 
 Qsp3 =Qs**3 
 Qsp4 =Qs**4 
 Qup3 =Qu**3 
 Qup4 =Qu**4 
 Qv1p3 =Qv1**3 
 Qv1p4 =Qv1**4 
 Qv2p3 =Qv2**3 
 Qv2p4 =Qv2**4 
 Qv3p3 =Qv3**3 
 Qv3p4 =Qv3**4 
 Yv11p3 =Yv11**3 
 Yv22p3 =Yv22**3 
 Yv33p3 =Yv33**3 
 lamp3 =lam**3 
 CYe11p2 =Conjg(Ye11)**2 
 CYe22p2 =Conjg(Ye22)**2 
 CYe33p2 =Conjg(Ye33)**2 
 CYv11p2 =Conjg(Yv11)**2 
 CYv22p2 =Conjg(Yv22)**2 
 CYv33p2 =Conjg(Yv33)**2 
 Clamp2 =Conjg(lam)**2 
End If 
 
 
Tr1(1) = g1*sqrt3ov5*(me012 + me022 + me032 - mHd2 + mHu2 - ml012 - ml022 -           & 
&  ml032 + Trmd2 + Trmq2 - 2._dp*(Trmu2))

Tr1(4) = gp*(me012*Qe1 + me022*Qe2 + me032*Qe3 + 2*mHd2*QHd + 2*mHu2*QHu +            & 
&  2*ml012*Ql1 + 2*ml022*Ql2 + 2*ml032*Ql3 + ms2*Qs + mvR012*Qv1 + mvR022*Qv2 +          & 
&  mvR032*Qv3 + 3*Qd*Trmd2 + 6*Qq*Trmq2 + 3*Qu*Trmu2)

If (TwoLoopRGE) Then 
Tr2U1(1, 1) = (g1p2*(6._dp*(me012) + 6._dp*(me022) + 6._dp*(me032) + 3._dp*(mHd2)     & 
&  + 3._dp*(mHu2) + 3._dp*(ml012) + 3._dp*(ml022) + 3._dp*(ml032) + 2._dp*(Trmd2)        & 
&  + Trmq2 + 8._dp*(Trmu2)))/10._dp

Tr2U1(1, 4) = g1*gp*sqrt3ov5*(me012*Qe1 + me022*Qe2 + me032*Qe3 - mHd2*QHd +          & 
&  mHu2*QHu - ml012*Ql1 - ml022*Ql2 - ml032*Ql3 + Qd*Trmd2 + Qq*Trmq2 - 2*Qu*Trmu2)

Tr3(1) = (g1*ooSqrt15*(36*g1p2*me012 + 36*g1p2*me022 - 60*AbsYe33*me032 +             & 
&  36*g1p2*me032 + 30*Abslam*mHd2 + 30*AbsYe33*mHd2 - 9*g1p2*mHd2 - 45*g2p2*mHd2 -       & 
&  30*Abslam*mHu2 - 30*AbsYv11*mHu2 - 30*AbsYv22*mHu2 - 30*AbsYv33*mHu2 + 9*g1p2*mHu2 +  & 
&  45*g2p2*mHu2 + 30*AbsYv11*ml012 - 9*g1p2*ml012 - 45*g2p2*ml012 + 30*AbsYe11*(-        & 
& 2._dp*(me012) + mHd2 + ml012) + 30*AbsYv22*ml022 - 9*g1p2*ml022 - 45*g2p2*ml022 +      & 
&  30*AbsYe22*(-2._dp*(me022) + mHd2 + ml022) + 30*AbsYe33*ml032 + 30*AbsYv33*ml032 -    & 
&  9*g1p2*ml032 - 45*g2p2*ml032 + 60*gpp2*me012*Qe1p2 + 60*gpp2*me022*Qe2p2 +            & 
&  60*gpp2*me032*Qe3p2 - 60*gpp2*mHd2*QHdp2 + 60*gpp2*mHu2*QHup2 - 60*gpp2*ml012*Ql1p2 - & 
&  60*gpp2*ml022*Ql2p2 - 60*gpp2*ml032*Ql3p2 + 4*g1p2*Trmd2 + 80*g3p2*Trmd2 +            & 
&  60*gpp2*Qdp2*Trmd2 + g1p2*Trmq2 + 45*g2p2*Trmq2 + 80*g3p2*Trmq2 + 60*gpp2*Qqp2*Trmq2 -& 
&  32*g1p2*Trmu2 - 160*g3p2*Trmu2 - 120*gpp2*Qup2*Trmu2 + 90*mHd2*TrYdadjYd -            & 
&  60._dp*(TrYdadjYdCmd2) - 30._dp*(TrYdCmq2adjYd) - 90*mHu2*TrYuadjYu + 120._dp*(TrYuadjYuCmu2)& 
&  - 30._dp*(TrYuCmq2adjYu)))/20._dp

Tr2(2) = (mHd2 + mHu2 + ml012 + ml022 + ml032 + 3._dp*(Trmq2))/2._dp

Tr2(3) = (Trmd2 + 2._dp*(Trmq2) + Trmu2)/2._dp

Tr2U1(4, 1) = g1*gp*sqrt3ov5*(me012*Qe1 + me022*Qe2 + me032*Qe3 - mHd2*QHd +          & 
&  mHu2*QHu - ml012*Ql1 - ml022*Ql2 - ml032*Ql3 + Qd*Trmd2 + Qq*Trmq2 - 2*Qu*Trmu2)

Tr2U1(4, 4) = gpp2*(me012*Qe1p2 + me022*Qe2p2 + me032*Qe3p2 + 2*mHd2*QHdp2 +          & 
&  2*mHu2*QHup2 + 2*ml012*Ql1p2 + 2*ml022*Ql2p2 + 2*ml032*Ql3p2 + ms2*Qsp2 +             & 
&  mvR012*Qv1p2 + mvR022*Qv2p2 + mvR032*Qv3p2 + 3*Qdp2*Trmd2 + 6*Qqp2*Trmq2 +            & 
&  3*Qup2*Trmu2)

Tr3(4) = (gp*(6*g1p2*me012*Qe1 + 10*gpp2*me012*Qe1p3 + 6*g1p2*me022*Qe2 +             & 
&  10*gpp2*me022*Qe2p3 - 10*AbsYe33*me032*Qe3 + 6*g1p2*me032*Qe3 + 10*gpp2*me032*Qe3p3 - & 
&  10*Abslam*mHd2*QHd - 10*AbsYe33*mHd2*QHd + 3*g1p2*mHd2*QHd + 15*g2p2*mHd2*QHd +       & 
&  20*gpp2*mHd2*QHdp3 - 10*Abslam*mHu2*QHu - 10*AbsYv11*mHu2*QHu - 10*AbsYv22*mHu2*QHu - & 
&  10*AbsYv33*mHu2*QHu + 3*g1p2*mHu2*QHu + 15*g2p2*mHu2*QHu + 20*gpp2*mHu2*QHup3 -       & 
&  10*AbsYv11*ml012*Ql1 + 3*g1p2*ml012*Ql1 + 15*g2p2*ml012*Ql1 - 10*AbsYe11*(me012*Qe1 + & 
&  mHd2*QHd + ml012*Ql1) + 20*gpp2*ml012*Ql1p3 - 10*AbsYv22*ml022*Ql2 + 3*g1p2*ml022*Ql2 +& 
&  15*g2p2*ml022*Ql2 - 10*AbsYe22*(me022*Qe2 + mHd2*QHd + ml022*Ql2) + 20*gpp2*ml022*Ql2p3 -& 
&  10*AbsYe33*ml032*Ql3 - 10*AbsYv33*ml032*Ql3 + 3*g1p2*ml032*Ql3 + 15*g2p2*ml032*Ql3 +  & 
&  20*gpp2*ml032*Ql3p3 - 10*Abslam*ms2*Qs + 10*gpp2*ms2*Qsp3 - 10*AbsYv11*mvR012*Qv1 +   & 
&  10*gpp2*mvR012*Qv1p3 - 10*AbsYv22*mvR022*Qv2 + 10*gpp2*mvR022*Qv2p3 - 10*AbsYv33*mvR032*Qv3 +& 
&  10*gpp2*mvR032*Qv3p3 + 2*g1p2*Qd*Trmd2 + 40*g3p2*Qd*Trmd2 + 30*gpp2*Qdp3*Trmd2 +      & 
&  g1p2*Qq*Trmq2 + 45*g2p2*Qq*Trmq2 + 80*g3p2*Qq*Trmq2 + 60*gpp2*Qqp3*Trmq2 +            & 
&  8*g1p2*Qu*Trmu2 + 40*g3p2*Qu*Trmu2 + 30*gpp2*Qup3*Trmu2 - 30*mHd2*QHd*TrYdadjYd -     & 
&  30*Qd*TrYdadjYdCmd2 - 30*Qq*TrYdCmq2adjYd - 30*mHu2*QHu*TrYuadjYu - 30*Qu*TrYuadjYuCmu2 -& 
&  30*Qq*TrYuCmq2adjYu))/10._dp

End If 
 
 
!-------------------- 
! g1 
!-------------------- 
 
betag11  = 33._dp*(g1p3)/5._dp

 
 
If (TwoLoopRGE) Then 
betag12 = (g1p3*(-30._dp*(Abslam) - 90._dp*(AbsYe11) - 90._dp*(AbsYe22) - 90._dp*(AbsYe33) -    & 
&  30._dp*(AbsYv11) - 30._dp*(AbsYv22) - 30._dp*(AbsYv33) + 199._dp*(g1p2) +             & 
&  135._dp*(g2p2) + 440._dp*(g3p2) + 60*gpp2*Qdp2 + 60*gpp2*Qe1p2 + 60*gpp2*Qe2p2 +      & 
&  60*gpp2*Qe3p2 + 30*gpp2*QHdp2 + 30*gpp2*QHup2 + 30*gpp2*Ql1p2 + 30*gpp2*Ql2p2 +       & 
&  30*gpp2*Ql3p2 + 30*gpp2*Qqp2 + 240*gpp2*Qup2 - 70._dp*(TrYdadjYd) - 130._dp*(TrYuadjYu)))/25._dp

 
Dg1 = oo16pi2*( betag11 + oo16pi2 * betag12 ) 

 
Else 
Dg1 = oo16pi2* betag11 
End If 
 
 
!-------------------- 
! g2 
!-------------------- 
 
betag21  = g2p3

 
 
If (TwoLoopRGE) Then 
betag22 = (g2p3*(-10._dp*(Abslam) - 10._dp*(AbsYe11) - 10._dp*(AbsYe22) - 10._dp*(AbsYe33) -    & 
&  10._dp*(AbsYv11) - 10._dp*(AbsYv22) - 10._dp*(AbsYv33) + 9._dp*(g1p2) +               & 
&  125._dp*(g2p2) + 120._dp*(g3p2) + 10*gpp2*QHdp2 + 10*gpp2*QHup2 + 10*gpp2*Ql1p2 +     & 
&  10*gpp2*Ql2p2 + 10*gpp2*Ql3p2 + 90*gpp2*Qqp2 - 30._dp*(TrYdadjYd) - 30._dp*(TrYuadjYu)))/5._dp

 
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
 
betagp1  = gpp3*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) +               & 
&  2._dp*(QHup2) + 2._dp*(Ql1p2) + 2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2)         & 
&  + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2)

 
 
If (TwoLoopRGE) Then 
betagp2 = (2*gpp3*(6*g1p2*Qdp2 + 120*g3p2*Qdp2 + 90*gpp2*Qdp4 + 6*g1p2*Qe1p2 + 10*gpp2*Qe1p4 +  & 
&  6*g1p2*Qe2p2 + 10*gpp2*Qe2p4 - 10*AbsYe33*Qe3p2 + 6*g1p2*Qe3p2 + 10*gpp2*Qe3p4 -      & 
&  10*Abslam*QHdp2 - 10*AbsYe33*QHdp2 + 3*g1p2*QHdp2 + 15*g2p2*QHdp2 + 20*gpp2*QHdp4 -   & 
&  10*Abslam*QHup2 - 10*AbsYv11*QHup2 - 10*AbsYv22*QHup2 - 10*AbsYv33*QHup2 +            & 
&  3*g1p2*QHup2 + 15*g2p2*QHup2 + 20*gpp2*QHup4 - 10*AbsYv11*Ql1p2 + 3*g1p2*Ql1p2 +      & 
&  15*g2p2*Ql1p2 - 10*AbsYe11*(Qe1p2 + QHdp2 + Ql1p2) + 20*gpp2*Ql1p4 - 10*AbsYv22*Ql2p2 +& 
&  3*g1p2*Ql2p2 + 15*g2p2*Ql2p2 - 10*AbsYe22*(Qe2p2 + QHdp2 + Ql2p2) + 20*gpp2*Ql2p4 -   & 
&  10*AbsYe33*Ql3p2 - 10*AbsYv33*Ql3p2 + 3*g1p2*Ql3p2 + 15*g2p2*Ql3p2 + 20*gpp2*Ql3p4 +  & 
&  3*g1p2*Qqp2 + 135*g2p2*Qqp2 + 240*g3p2*Qqp2 + 180*gpp2*Qqp4 - 10*Abslam*Qsp2 +        & 
&  10*gpp2*Qsp4 + 24*g1p2*Qup2 + 120*g3p2*Qup2 + 90*gpp2*Qup4 - 10*AbsYv11*Qv1p2 +       & 
&  10*gpp2*Qv1p4 - 10*AbsYv22*Qv2p2 + 10*gpp2*Qv2p4 - 10*AbsYv33*Qv3p2 + 10*gpp2*Qv3p4 - & 
&  30*Qdp2*TrYdadjYd - 30*QHdp2*TrYdadjYd - 30*Qqp2*TrYdadjYd - 30*QHup2*TrYuadjYu -     & 
&  30*Qqp2*TrYuadjYu - 30*Qup2*TrYuadjYu))/5._dp

 
Dgp = oo16pi2*( betagp1 + oo16pi2 * betagp2 ) 

 
Else 
Dgp = oo16pi2* betagp1 
End If 
 
 
!-------------------- 
! Yd 
!-------------------- 
 
betaYd1  = (Abslam + AbsYe11 + AbsYe22 + AbsYe33 - 7._dp*(g1p2)/15._dp -              & 
&  3._dp*(g2p2) - 16._dp*(g3p2)/3._dp - 2*gpp2*Qdp2 - 2*gpp2*QHdp2 - 2*gpp2*Qqp2 +       & 
&  3._dp*(TrYdadjYd))*Yd + 3._dp*(YdadjYdYd) + YdadjYuYu

 
 
If (TwoLoopRGE) Then 
betaYd2 = (-3._dp*(Abslam) - 3._dp*(AbsYe11) - 3._dp*(AbsYe22) - 3._dp*(AbsYe33) +              & 
&  4._dp*(g1p2)/5._dp + 6._dp*(g2p2) - 2*gpp2*Qdp2 + 6*gpp2*QHdp2 + 2*gpp2*Qqp2 -        & 
&  9._dp*(TrYdadjYd))*YdadjYdYd - 4._dp*(YdadjYdYdadjYdYd) - Abslam*YdadjYuYu -          & 
&  AbsYv11*YdadjYuYu - AbsYv22*YdadjYuYu - AbsYv33*YdadjYuYu + (4*g1p2*YdadjYuYu)/5._dp +& 
&  2*gpp2*QHup2*YdadjYuYu - 2*gpp2*Qqp2*YdadjYuYu + 2*gpp2*Qup2*YdadjYuYu -              & 
&  3*TrYuadjYu*YdadjYuYu - 2._dp*(YdadjYuYuadjYdYd) - 2._dp*(YdadjYuYuadjYuYu) +         & 
&  Yd*(-(Abslam*AbsYv11) - Abslam*AbsYv22 - Abslam*AbsYv33 - AbsYe33*AbsYv33 +           & 
&  (6*AbsYe33*g1p2)/5._dp + 287._dp*(g1p4)/90._dp + g1p2*g2p2 + 15._dp*(g2p4)/2._dp +    & 
&  (8*g1p2*g3p2)/9._dp + 8*g2p2*g3p2 - 16._dp*(g3p4)/9._dp - 3*Clamp2*lamp2 +            & 
&  (44*g1p2*gpp2*Qdp2)/15._dp + (32*g3p2*gpp2*Qdp2)/3._dp + 22*gpp4*Qdp4 +               & 
&  (4*g1p2*gpp2*Qd*Qe1)/5._dp + 2*gpp4*Qdp2*Qe1p2 + (4*g1p2*gpp2*Qd*Qe2)/5._dp +         & 
&  2*gpp4*Qdp2*Qe2p2 + (4*g1p2*gpp2*Qd*Qe3)/5._dp + 2*AbsYe33*gpp2*Qe3p2 +               & 
&  2*gpp4*Qdp2*Qe3p2 - (22*g1p2*gpp2*Qd*QHd)/5._dp - (6*g1p2*gpp2*Qe1*QHd)/5._dp -       & 
&  (6*g1p2*gpp2*Qe2*QHd)/5._dp - (6*g1p2*gpp2*Qe3*QHd)/5._dp - 2*Abslam*gpp2*QHdp2 -     & 
&  2*AbsYe33*gpp2*QHdp2 + (12*g1p2*gpp2*QHdp2)/5._dp + 6*g2p2*gpp2*QHdp2 +               & 
&  22*gpp4*Qdp2*QHdp2 + 2*gpp4*Qe1p2*QHdp2 + 2*gpp4*Qe2p2*QHdp2 + 2*gpp4*Qe3p2*QHdp2 +   & 
&  8*gpp4*QHdp4 + (4*g1p2*gpp2*Qd*QHu)/5._dp - (6*g1p2*gpp2*QHd*QHu)/5._dp +             & 
&  2*Abslam*gpp2*QHup2 + 4*gpp4*Qdp2*QHup2 + 4*gpp4*QHdp2*QHup2 - (4*g1p2*gpp2*Qd*Ql1)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql1)/5._dp + 4*gpp4*Qdp2*Ql1p2 + 4*gpp4*QHdp2*Ql1p2 - (4*g1p2*gpp2*Qd*Ql2)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql2)/5._dp + 4*gpp4*Qdp2*Ql2p2 + 4*gpp4*QHdp2*Ql2p2 - (4*g1p2*gpp2*Qd*Ql3)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql3)/5._dp + 2*AbsYe33*gpp2*Ql3p2 + 4*gpp4*Qdp2*Ql3p2 +              & 
&  4*gpp4*QHdp2*Ql3p2 + (18*g1p2*gpp2*Qd*Qq)/5._dp + (2*g1p2*gpp2*Qe1*Qq)/5._dp +        & 
&  (2*g1p2*gpp2*Qe2*Qq)/5._dp + (2*g1p2*gpp2*Qe3*Qq)/5._dp - 4*g1p2*gpp2*QHd*Qq +        & 
&  (2*g1p2*gpp2*QHu*Qq)/5._dp - (2*g1p2*gpp2*Ql1*Qq)/5._dp - (2*g1p2*gpp2*Ql2*Qq)/5._dp -& 
&  (2*g1p2*gpp2*Ql3*Qq)/5._dp + (4*g1p2*gpp2*Qqp2)/3._dp + 6*g2p2*gpp2*Qqp2 +            & 
&  (32*g3p2*gpp2*Qqp2)/3._dp + 54*gpp4*Qdp2*Qqp2 + 2*gpp4*Qe1p2*Qqp2 + 2*gpp4*Qe2p2*Qqp2 +& 
&  2*gpp4*Qe3p2*Qqp2 + 40*gpp4*QHdp2*Qqp2 + 4*gpp4*QHup2*Qqp2 + 4*gpp4*Ql1p2*Qqp2 +      & 
&  4*gpp4*Ql2p2*Qqp2 + 4*gpp4*Ql3p2*Qqp2 + 40*gpp4*Qqp4 + 2*Abslam*gpp2*Qsp2 +           & 
&  2*gpp4*Qdp2*Qsp2 + 2*gpp4*QHdp2*Qsp2 + 2*gpp4*Qqp2*Qsp2 - (24*g1p2*gpp2*Qd*Qu)/5._dp +& 
&  (36*g1p2*gpp2*QHd*Qu)/5._dp - (12*g1p2*gpp2*Qq*Qu)/5._dp + 18*gpp4*Qdp2*Qup2 +        & 
&  18*gpp4*QHdp2*Qup2 + 18*gpp4*Qqp2*Qup2 + 2*gpp4*Qdp2*Qv1p2 + 2*gpp4*QHdp2*Qv1p2 +     & 
&  2*gpp4*Qqp2*Qv1p2 + 2*gpp4*Qdp2*Qv2p2 + 2*gpp4*QHdp2*Qv2p2 + 2*gpp4*Qqp2*Qv2p2 +      & 
&  2*gpp4*Qdp2*Qv3p2 + 2*gpp4*QHdp2*Qv3p2 + 2*gpp4*Qqp2*Qv3p2 - (2*g1p2*TrYdadjYd)/5._dp +& 
&  16*g3p2*TrYdadjYd + 6*gpp2*Qdp2*TrYdadjYd - 6*gpp2*QHdp2*TrYdadjYd + 6*gpp2*Qqp2*TrYdadjYd -& 
&  9._dp*(TrYdadjYdYdadjYd) - 3._dp*(TrYdadjYuYuadjYd) - 3*Abslam*TrYuadjYu -            & 
&  3*CYe11p2*Ye11p2 - 3*CYe22p2*Ye22p2 - 3*CYe33p2*Ye33p2 + (-(AbsYv11*Ye11) +           & 
&  (6*g1p2*Ye11)/5._dp + 2*gpp2*(Qe1p2 - QHdp2 + Ql1p2)*Ye11)*Conjg(Ye11) +              & 
&  (-(AbsYv22*Ye22) + (6*g1p2*Ye22)/5._dp + 2*gpp2*(Qe2p2 - QHdp2 + Ql2p2)*Ye22)*Conjg(Ye22))

 
DYd = oo16pi2*( betaYd1 + oo16pi2 * betaYd2 ) 

 
Else 
DYd = oo16pi2* betaYd1 
End If 
 
 
Call Chop(DYd) 

!-------------------- 
! Ye11 
!-------------------- 
 
betaYe111  = Abslam*Ye11 + AbsYe22*Ye11 + AbsYe33*Ye11 + AbsYv11*Ye11 -               & 
&  (9*g1p2*Ye11)/5._dp - 3*g2p2*Ye11 - 2*gpp2*Qe1p2*Ye11 - 2*gpp2*QHdp2*Ye11 -           & 
&  2*gpp2*Ql1p2*Ye11 + 3*TrYdadjYd*Ye11 + 4*Ye11p2*Conjg(Ye11)

 
 
If (TwoLoopRGE) Then 
betaYe112 = -(Ye11*(20*Abslam*AbsYv11 + 10*Abslam*AbsYv22 + 10*AbsYv11*AbsYv22 + 10*Abslam*AbsYv33 +& 
&  10*AbsYe33*AbsYv33 + 10*AbsYv11*AbsYv33 - 12*AbsYe33*g1p2 - 135._dp*(g1p4) -          & 
&  18*g1p2*g2p2 - 75._dp*(g2p4) + 30*Clamp2*lamp2 - 72*g1p2*gpp2*Qd*Qe1 - 72*g1p2*gpp2*Qe1p2 -& 
&  180*gpp4*Qdp2*Qe1p2 - 60*gpp4*Qe1p4 - 24*g1p2*gpp2*Qe1*Qe2 - 20*gpp4*Qe1p2*Qe2p2 -    & 
&  24*g1p2*gpp2*Qe1*Qe3 - 20*AbsYe33*gpp2*Qe3p2 - 20*gpp4*Qe1p2*Qe3p2 + 36*g1p2*gpp2*Qd*QHd +& 
&  36*g1p2*gpp2*Qe1*QHd + 12*g1p2*gpp2*Qe2*QHd + 12*g1p2*gpp2*Qe3*QHd + 20*Abslam*gpp2*QHdp2 +& 
&  20*AbsYe33*gpp2*QHdp2 - 24*g1p2*gpp2*QHdp2 - 60*g2p2*gpp2*QHdp2 - 180*gpp4*Qdp2*QHdp2 -& 
&  60*gpp4*Qe1p2*QHdp2 - 20*gpp4*Qe2p2*QHdp2 - 20*gpp4*Qe3p2*QHdp2 - 80*gpp4*QHdp4 -     & 
&  24*g1p2*gpp2*Qe1*QHu + 12*g1p2*gpp2*QHd*QHu - 20*Abslam*gpp2*QHup2 - 20*AbsYv11*gpp2*QHup2 -& 
&  40*gpp4*Qe1p2*QHup2 - 40*gpp4*QHdp2*QHup2 + 36*g1p2*gpp2*Qd*Ql1 + 36*g1p2*gpp2*Qe1*Ql1 +& 
&  12*g1p2*gpp2*Qe2*Ql1 + 12*g1p2*gpp2*Qe3*Ql1 - 24*g1p2*gpp2*QHd*Ql1 + 12*g1p2*gpp2*QHu*Ql1 +& 
&  20*AbsYv11*gpp2*Ql1p2 - 24*g1p2*gpp2*Ql1p2 - 60*g2p2*gpp2*Ql1p2 - 180*gpp4*Qdp2*Ql1p2 -& 
&  60*gpp4*Qe1p2*Ql1p2 - 20*gpp4*Qe2p2*Ql1p2 - 20*gpp4*Qe3p2*Ql1p2 - 80*gpp4*QHdp2*Ql1p2 -& 
&  40*gpp4*QHup2*Ql1p2 - 80*gpp4*Ql1p4 + 24*g1p2*gpp2*Qe1*Ql2 - 12*g1p2*gpp2*QHd*Ql2 -   & 
&  12*g1p2*gpp2*Ql1*Ql2 - 40*gpp4*Qe1p2*Ql2p2 - 40*gpp4*QHdp2*Ql2p2 - 40*gpp4*Ql1p2*Ql2p2 -& 
&  2*AbsYe22*(-5._dp*(AbsYv22) + 6._dp*(g1p2) + 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2)) +       & 
&  24*g1p2*gpp2*Qe1*Ql3 - 12*g1p2*gpp2*QHd*Ql3 - 12*g1p2*gpp2*Ql1*Ql3 - 20*AbsYe33*gpp2*Ql3p2 -& 
&  40*gpp4*Qe1p2*Ql3p2 - 40*gpp4*QHdp2*Ql3p2 - 40*gpp4*Ql1p2*Ql3p2 - 72*g1p2*gpp2*Qe1*Qq +& 
&  36*g1p2*gpp2*QHd*Qq + 36*g1p2*gpp2*Ql1*Qq - 360*gpp4*Qe1p2*Qqp2 - 360*gpp4*QHdp2*Qqp2 -& 
&  360*gpp4*Ql1p2*Qqp2 - 20*Abslam*gpp2*Qsp2 - 20*gpp4*Qe1p2*Qsp2 - 20*gpp4*QHdp2*Qsp2 - & 
&  20*gpp4*Ql1p2*Qsp2 + 144*g1p2*gpp2*Qe1*Qu - 72*g1p2*gpp2*QHd*Qu - 72*g1p2*gpp2*Ql1*Qu -& 
&  180*gpp4*Qe1p2*Qup2 - 180*gpp4*QHdp2*Qup2 - 180*gpp4*Ql1p2*Qup2 - 20*AbsYv11*gpp2*Qv1p2 -& 
&  20*gpp4*Qe1p2*Qv1p2 - 20*gpp4*QHdp2*Qv1p2 - 20*gpp4*Ql1p2*Qv1p2 - 20*gpp4*Qe1p2*Qv2p2 -& 
&  20*gpp4*QHdp2*Qv2p2 - 20*gpp4*Ql1p2*Qv2p2 - 20*gpp4*Qe1p2*Qv3p2 - 20*gpp4*QHdp2*Qv3p2 -& 
&  20*gpp4*Ql1p2*Qv3p2 + 4*g1p2*TrYdadjYd - 160*g3p2*TrYdadjYd - 60*gpp2*Qdp2*TrYdadjYd +& 
&  60*gpp2*QHdp2*TrYdadjYd - 60*gpp2*Qqp2*TrYdadjYd + 2*AbsYe11*(15._dp*(Abslam) +       & 
&  15._dp*(AbsYe22) + 15._dp*(AbsYe33) + 15._dp*(AbsYv11) - 6._dp*(g1p2) -               & 
&  30._dp*(g2p2) - 20*gpp2*QHdp2 - 20*gpp2*Ql1p2 + 45._dp*(TrYdadjYd)) + 90._dp*(TrYdadjYdYdadjYd) +& 
&  30._dp*(TrYdadjYuYuadjYd) + 30*Abslam*TrYuadjYu + 30*AbsYv11*TrYuadjYu +              & 
&  100*CYe11p2*Ye11p2 + 30*CYe22p2*Ye22p2 + 30*CYe33p2*Ye33p2 + 30*CYv11p2*Yv11p2))/10._dp

 
DYe11 = oo16pi2*( betaYe111 + oo16pi2 * betaYe112 ) 

 
Else 
DYe11 = oo16pi2* betaYe111 
End If 
 
 
Call Chop(DYe11) 

!-------------------- 
! Ye22 
!-------------------- 
 
betaYe221  = Abslam*Ye22 + AbsYe11*Ye22 + AbsYe33*Ye22 + AbsYv22*Ye22 -               & 
&  (9*g1p2*Ye22)/5._dp - 3*g2p2*Ye22 - 2*gpp2*Qe2p2*Ye22 - 2*gpp2*QHdp2*Ye22 -           & 
&  2*gpp2*Ql2p2*Ye22 + 3*TrYdadjYd*Ye22 + 4*Ye22p2*Conjg(Ye22)

 
 
If (TwoLoopRGE) Then 
betaYe222 = (Ye22*(-10*Abslam*AbsYv11 - 20*Abslam*AbsYv22 - 10*AbsYv11*AbsYv22 - 10*Abslam*AbsYv33 -& 
&  10*AbsYe33*AbsYv33 - 10*AbsYv22*AbsYv33 + 12*AbsYe33*g1p2 + 135._dp*(g1p4) +          & 
&  18*g1p2*g2p2 + 75._dp*(g2p4) - 30*Clamp2*lamp2 + 72*g1p2*gpp2*Qd*Qe2 + 24*g1p2*gpp2*Qe1*Qe2 +& 
&  72*g1p2*gpp2*Qe2p2 + 180*gpp4*Qdp2*Qe2p2 + 20*gpp4*Qe1p2*Qe2p2 + 60*gpp4*Qe2p4 +      & 
&  24*g1p2*gpp2*Qe2*Qe3 + 20*AbsYe33*gpp2*Qe3p2 + 20*gpp4*Qe2p2*Qe3p2 - 36*g1p2*gpp2*Qd*QHd -& 
&  12*g1p2*gpp2*Qe1*QHd - 36*g1p2*gpp2*Qe2*QHd - 12*g1p2*gpp2*Qe3*QHd - 20*Abslam*gpp2*QHdp2 -& 
&  20*AbsYe33*gpp2*QHdp2 + 24*g1p2*gpp2*QHdp2 + 60*g2p2*gpp2*QHdp2 + 180*gpp4*Qdp2*QHdp2 +& 
&  20*gpp4*Qe1p2*QHdp2 + 60*gpp4*Qe2p2*QHdp2 + 20*gpp4*Qe3p2*QHdp2 + 80*gpp4*QHdp4 +     & 
&  24*g1p2*gpp2*Qe2*QHu - 12*g1p2*gpp2*QHd*QHu + 20*Abslam*gpp2*QHup2 + 20*AbsYv22*gpp2*QHup2 +& 
&  40*gpp4*Qe2p2*QHup2 + 40*gpp4*QHdp2*QHup2 - 24*g1p2*gpp2*Qe2*Ql1 + 12*g1p2*gpp2*QHd*Ql1 +& 
&  40*gpp4*Qe2p2*Ql1p2 + 40*gpp4*QHdp2*Ql1p2 + 2*AbsYe11*(-15._dp*(AbsYe22) -            & 
&  5._dp*(AbsYv11) + 6._dp*(g1p2) + 10*gpp2*Qe1p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql1p2) -     & 
&  36*g1p2*gpp2*Qd*Ql2 - 12*g1p2*gpp2*Qe1*Ql2 - 36*g1p2*gpp2*Qe2*Ql2 - 12*g1p2*gpp2*Qe3*Ql2 +& 
&  24*g1p2*gpp2*QHd*Ql2 - 12*g1p2*gpp2*QHu*Ql2 + 12*g1p2*gpp2*Ql1*Ql2 - 20*AbsYv22*gpp2*Ql2p2 +& 
&  24*g1p2*gpp2*Ql2p2 + 60*g2p2*gpp2*Ql2p2 + 180*gpp4*Qdp2*Ql2p2 + 20*gpp4*Qe1p2*Ql2p2 + & 
&  60*gpp4*Qe2p2*Ql2p2 + 20*gpp4*Qe3p2*Ql2p2 + 80*gpp4*QHdp2*Ql2p2 + 40*gpp4*QHup2*Ql2p2 +& 
&  40*gpp4*Ql1p2*Ql2p2 + 80*gpp4*Ql2p4 - 24*g1p2*gpp2*Qe2*Ql3 + 12*g1p2*gpp2*QHd*Ql3 +   & 
&  12*g1p2*gpp2*Ql2*Ql3 + 20*AbsYe33*gpp2*Ql3p2 + 40*gpp4*Qe2p2*Ql3p2 + 40*gpp4*QHdp2*Ql3p2 +& 
&  40*gpp4*Ql2p2*Ql3p2 + 72*g1p2*gpp2*Qe2*Qq - 36*g1p2*gpp2*QHd*Qq - 36*g1p2*gpp2*Ql2*Qq +& 
&  360*gpp4*Qe2p2*Qqp2 + 360*gpp4*QHdp2*Qqp2 + 360*gpp4*Ql2p2*Qqp2 + 20*Abslam*gpp2*Qsp2 +& 
&  20*gpp4*Qe2p2*Qsp2 + 20*gpp4*QHdp2*Qsp2 + 20*gpp4*Ql2p2*Qsp2 - 144*g1p2*gpp2*Qe2*Qu + & 
&  72*g1p2*gpp2*QHd*Qu + 72*g1p2*gpp2*Ql2*Qu + 180*gpp4*Qe2p2*Qup2 + 180*gpp4*QHdp2*Qup2 +& 
&  180*gpp4*Ql2p2*Qup2 + 20*gpp4*Qe2p2*Qv1p2 + 20*gpp4*QHdp2*Qv1p2 + 20*gpp4*Ql2p2*Qv1p2 +& 
&  20*AbsYv22*gpp2*Qv2p2 + 20*gpp4*Qe2p2*Qv2p2 + 20*gpp4*QHdp2*Qv2p2 + 20*gpp4*Ql2p2*Qv2p2 +& 
&  20*gpp4*Qe2p2*Qv3p2 + 20*gpp4*QHdp2*Qv3p2 + 20*gpp4*Ql2p2*Qv3p2 + 2*AbsYe22*(-        & 
& 15._dp*(Abslam) - 15._dp*(AbsYe33) - 15._dp*(AbsYv22) + 6._dp*(g1p2) + 30._dp*(g2p2) + & 
&  20*gpp2*QHdp2 + 20*gpp2*Ql2p2 - 45._dp*(TrYdadjYd)) - 4*g1p2*TrYdadjYd +              & 
&  160*g3p2*TrYdadjYd + 60*gpp2*Qdp2*TrYdadjYd - 60*gpp2*QHdp2*TrYdadjYd +               & 
&  60*gpp2*Qqp2*TrYdadjYd - 90._dp*(TrYdadjYdYdadjYd) - 30._dp*(TrYdadjYuYuadjYd) -      & 
&  30*Abslam*TrYuadjYu - 30*AbsYv22*TrYuadjYu - 30*CYe11p2*Ye11p2 - 100*CYe22p2*Ye22p2 - & 
&  30*CYe33p2*Ye33p2 - 30*CYv22p2*Yv22p2))/10._dp

 
DYe22 = oo16pi2*( betaYe221 + oo16pi2 * betaYe222 ) 

 
Else 
DYe22 = oo16pi2* betaYe221 
End If 
 
 
Call Chop(DYe22) 

!-------------------- 
! Ye33 
!-------------------- 
 
betaYe331  = Abslam*Ye33 + AbsYe11*Ye33 + AbsYe22*Ye33 + AbsYv33*Ye33 -               & 
&  (9*g1p2*Ye33)/5._dp - 3*g2p2*Ye33 - 2*gpp2*Qe3p2*Ye33 - 2*gpp2*QHdp2*Ye33 -           & 
&  2*gpp2*Ql3p2*Ye33 + 3*TrYdadjYd*Ye33 + 4*Ye33p2*Conjg(Ye33)

 
 
If (TwoLoopRGE) Then 
betaYe332 = (Ye33*(-30*Abslam*AbsYe33 - 10*Abslam*AbsYv11 - 10*Abslam*AbsYv22 - 20*Abslam*AbsYv33 -& 
&  30*AbsYe33*AbsYv33 - 10*AbsYv11*AbsYv33 - 10*AbsYv22*AbsYv33 + 12*AbsYe33*g1p2 +      & 
&  135._dp*(g1p4) + 60*AbsYe33*g2p2 + 18*g1p2*g2p2 + 75._dp*(g2p4) - 30*Clamp2*lamp2 +   & 
&  72*g1p2*gpp2*Qd*Qe3 + 24*g1p2*gpp2*Qe1*Qe3 + 24*g1p2*gpp2*Qe2*Qe3 + 72*g1p2*gpp2*Qe3p2 +& 
&  180*gpp4*Qdp2*Qe3p2 + 20*gpp4*Qe1p2*Qe3p2 + 20*gpp4*Qe2p2*Qe3p2 + 60*gpp4*Qe3p4 -     & 
&  36*g1p2*gpp2*Qd*QHd - 12*g1p2*gpp2*Qe1*QHd - 12*g1p2*gpp2*Qe2*QHd - 36*g1p2*gpp2*Qe3*QHd -& 
&  20*Abslam*gpp2*QHdp2 + 40*AbsYe33*gpp2*QHdp2 + 24*g1p2*gpp2*QHdp2 + 60*g2p2*gpp2*QHdp2 +& 
&  180*gpp4*Qdp2*QHdp2 + 20*gpp4*Qe1p2*QHdp2 + 20*gpp4*Qe2p2*QHdp2 + 60*gpp4*Qe3p2*QHdp2 +& 
&  80*gpp4*QHdp4 + 24*g1p2*gpp2*Qe3*QHu - 12*g1p2*gpp2*QHd*QHu + 20*Abslam*gpp2*QHup2 +  & 
&  20*AbsYv33*gpp2*QHup2 + 40*gpp4*Qe3p2*QHup2 + 40*gpp4*QHdp2*QHup2 - 24*g1p2*gpp2*Qe3*Ql1 +& 
&  12*g1p2*gpp2*QHd*Ql1 + 40*gpp4*Qe3p2*Ql1p2 + 40*gpp4*QHdp2*Ql1p2 + 2*AbsYe11*(-       & 
& 15._dp*(AbsYe33) - 5._dp*(AbsYv11) + 6._dp*(g1p2) + 10*gpp2*Qe1p2 - 10*gpp2*QHdp2 +    & 
&  10*gpp2*Ql1p2) - 24*g1p2*gpp2*Qe3*Ql2 + 12*g1p2*gpp2*QHd*Ql2 + 40*gpp4*Qe3p2*Ql2p2 +  & 
&  40*gpp4*QHdp2*Ql2p2 + 2*AbsYe22*(-15._dp*(AbsYe33) - 5._dp*(AbsYv22) + 6._dp*(g1p2) + & 
&  10*gpp2*Qe2p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql2p2) - 36*g1p2*gpp2*Qd*Ql3 - 12*g1p2*gpp2*Qe1*Ql3 -& 
&  12*g1p2*gpp2*Qe2*Ql3 - 36*g1p2*gpp2*Qe3*Ql3 + 24*g1p2*gpp2*QHd*Ql3 - 12*g1p2*gpp2*QHu*Ql3 +& 
&  12*g1p2*gpp2*Ql1*Ql3 + 12*g1p2*gpp2*Ql2*Ql3 + 40*AbsYe33*gpp2*Ql3p2 - 20*AbsYv33*gpp2*Ql3p2 +& 
&  24*g1p2*gpp2*Ql3p2 + 60*g2p2*gpp2*Ql3p2 + 180*gpp4*Qdp2*Ql3p2 + 20*gpp4*Qe1p2*Ql3p2 + & 
&  20*gpp4*Qe2p2*Ql3p2 + 60*gpp4*Qe3p2*Ql3p2 + 80*gpp4*QHdp2*Ql3p2 + 40*gpp4*QHup2*Ql3p2 +& 
&  40*gpp4*Ql1p2*Ql3p2 + 40*gpp4*Ql2p2*Ql3p2 + 80*gpp4*Ql3p4 + 72*g1p2*gpp2*Qe3*Qq -     & 
&  36*g1p2*gpp2*QHd*Qq - 36*g1p2*gpp2*Ql3*Qq + 360*gpp4*Qe3p2*Qqp2 + 360*gpp4*QHdp2*Qqp2 +& 
&  360*gpp4*Ql3p2*Qqp2 + 20*Abslam*gpp2*Qsp2 + 20*gpp4*Qe3p2*Qsp2 + 20*gpp4*QHdp2*Qsp2 + & 
&  20*gpp4*Ql3p2*Qsp2 - 144*g1p2*gpp2*Qe3*Qu + 72*g1p2*gpp2*QHd*Qu + 72*g1p2*gpp2*Ql3*Qu +& 
&  180*gpp4*Qe3p2*Qup2 + 180*gpp4*QHdp2*Qup2 + 180*gpp4*Ql3p2*Qup2 + 20*gpp4*Qe3p2*Qv1p2 +& 
&  20*gpp4*QHdp2*Qv1p2 + 20*gpp4*Ql3p2*Qv1p2 + 20*gpp4*Qe3p2*Qv2p2 + 20*gpp4*QHdp2*Qv2p2 +& 
&  20*gpp4*Ql3p2*Qv2p2 + 20*AbsYv33*gpp2*Qv3p2 + 20*gpp4*Qe3p2*Qv3p2 + 20*gpp4*QHdp2*Qv3p2 +& 
&  20*gpp4*Ql3p2*Qv3p2 - 90*AbsYe33*TrYdadjYd - 4*g1p2*TrYdadjYd + 160*g3p2*TrYdadjYd +  & 
&  60*gpp2*Qdp2*TrYdadjYd - 60*gpp2*QHdp2*TrYdadjYd + 60*gpp2*Qqp2*TrYdadjYd -           & 
&  90._dp*(TrYdadjYdYdadjYd) - 30._dp*(TrYdadjYuYuadjYd) - 30*Abslam*TrYuadjYu -         & 
&  30*AbsYv33*TrYuadjYu - 30*CYe11p2*Ye11p2 - 30*CYe22p2*Ye22p2 - 100*CYe33p2*Ye33p2 -   & 
&  30*CYv33p2*Yv33p2))/10._dp

 
DYe33 = oo16pi2*( betaYe331 + oo16pi2 * betaYe332 ) 

 
Else 
DYe33 = oo16pi2* betaYe331 
End If 
 
 
Call Chop(DYe33) 

!-------------------- 
! lam 
!-------------------- 
 
betalam1  = AbsYe11*lam + AbsYe22*lam + AbsYe33*lam + AbsYv11*lam + AbsYv22*lam +     & 
&  AbsYv33*lam - (3*g1p2*lam)/5._dp - 3*g2p2*lam - 2*gpp2*QHdp2*lam - 2*gpp2*QHup2*lam - & 
&  2*gpp2*Qsp2*lam + 3*TrYdadjYd*lam + 3*TrYuadjYu*lam + 4*lamp2*Conjg(lam)

 
 
If (TwoLoopRGE) Then 
betalam2 = -10*Clamp2*lamp3 - 2*AbsYe33*AbsYv33*lam + (6*AbsYe33*g1p2*lam)/5._dp +               & 
&  (207*g1p4*lam)/50._dp + (9*g1p2*g2p2*lam)/5._dp + (15*g2p4*lam)/2._dp +               & 
&  2*AbsYe33*gpp2*Qe3p2*lam - (18*g1p2*gpp2*Qd*QHd*lam)/5._dp - (6*g1p2*gpp2*Qe1*QHd*lam)/5._dp -& 
&  (6*g1p2*gpp2*Qe2*QHd*lam)/5._dp - (6*g1p2*gpp2*Qe3*QHd*lam)/5._dp - 2*AbsYe33*gpp2*QHdp2*lam +& 
&  (12*g1p2*gpp2*QHdp2*lam)/5._dp + 6*g2p2*gpp2*QHdp2*lam + 18*gpp4*Qdp2*QHdp2*lam +     & 
&  2*gpp4*Qe1p2*QHdp2*lam + 2*gpp4*Qe2p2*QHdp2*lam + 2*gpp4*Qe3p2*QHdp2*lam +            & 
&  8*gpp4*QHdp4*lam + (18*g1p2*gpp2*Qd*QHu*lam)/5._dp + (6*g1p2*gpp2*Qe1*QHu*lam)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*lam)/5._dp + (6*g1p2*gpp2*Qe3*QHu*lam)/5._dp - (12*g1p2*gpp2*QHd*QHu*lam)/5._dp -& 
&  2*AbsYv11*gpp2*QHup2*lam - 2*AbsYv22*gpp2*QHup2*lam - 2*AbsYv33*gpp2*QHup2*lam +      & 
&  (12*g1p2*gpp2*QHup2*lam)/5._dp + 6*g2p2*gpp2*QHup2*lam + 18*gpp4*Qdp2*QHup2*lam +     & 
&  2*gpp4*Qe1p2*QHup2*lam + 2*gpp4*Qe2p2*QHup2*lam + 2*gpp4*Qe3p2*QHup2*lam +            & 
&  8*gpp4*QHdp2*QHup2*lam + 8*gpp4*QHup4*lam + (6*g1p2*gpp2*QHd*Ql1*lam)/5._dp -         & 
&  (6*g1p2*gpp2*QHu*Ql1*lam)/5._dp + 2*AbsYv11*gpp2*Ql1p2*lam + 4*gpp4*QHdp2*Ql1p2*lam + & 
&  4*gpp4*QHup2*Ql1p2*lam - (AbsYe11*(15._dp*(Abslam) + 10._dp*(AbsYv11) -               & 
&  6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*lam)/5._dp + (6*g1p2*gpp2*QHd*Ql2*lam)/5._dp -& 
&  (6*g1p2*gpp2*QHu*Ql2*lam)/5._dp + 2*AbsYv22*gpp2*Ql2p2*lam + 4*gpp4*QHdp2*Ql2p2*lam + & 
&  4*gpp4*QHup2*Ql2p2*lam - (AbsYe22*(15._dp*(Abslam) + 10._dp*(AbsYv22) -               & 
&  6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*lam)/5._dp + (6*g1p2*gpp2*QHd*Ql3*lam)/5._dp -& 
&  (6*g1p2*gpp2*QHu*Ql3*lam)/5._dp + 2*AbsYe33*gpp2*Ql3p2*lam + 2*AbsYv33*gpp2*Ql3p2*lam +& 
&  4*gpp4*QHdp2*Ql3p2*lam + 4*gpp4*QHup2*Ql3p2*lam - (18*g1p2*gpp2*QHd*Qq*lam)/5._dp +   & 
&  (18*g1p2*gpp2*QHu*Qq*lam)/5._dp + 36*gpp4*QHdp2*Qqp2*lam + 36*gpp4*QHup2*Qqp2*lam  
betalam2 =  betalam2+ 18*gpp4*Qdp2*Qsp2*lam + 2*gpp4*Qe1p2*Qsp2*lam + 2*gpp4*Qe2p2*Qsp2*lam +               & 
&  2*gpp4*Qe3p2*Qsp2*lam + 6*gpp4*QHdp2*Qsp2*lam + 6*gpp4*QHup2*Qsp2*lam +               & 
&  4*gpp4*Ql1p2*Qsp2*lam + 4*gpp4*Ql2p2*Qsp2*lam + 4*gpp4*Ql3p2*Qsp2*lam +               & 
&  36*gpp4*Qqp2*Qsp2*lam + 6*gpp4*Qsp4*lam + (36*g1p2*gpp2*QHd*Qu*lam)/5._dp -           & 
&  (36*g1p2*gpp2*QHu*Qu*lam)/5._dp + 18*gpp4*QHdp2*Qup2*lam + 18*gpp4*QHup2*Qup2*lam +   & 
&  18*gpp4*Qsp2*Qup2*lam + 2*AbsYv11*gpp2*Qv1p2*lam + 2*gpp4*QHdp2*Qv1p2*lam +           & 
&  2*gpp4*QHup2*Qv1p2*lam + 2*gpp4*Qsp2*Qv1p2*lam + 2*AbsYv22*gpp2*Qv2p2*lam +           & 
&  2*gpp4*QHdp2*Qv2p2*lam + 2*gpp4*QHup2*Qv2p2*lam + 2*gpp4*Qsp2*Qv2p2*lam +             & 
&  2*AbsYv33*gpp2*Qv3p2*lam + 2*gpp4*QHdp2*Qv3p2*lam + 2*gpp4*QHup2*Qv3p2*lam +          & 
&  2*gpp4*Qsp2*Qv3p2*lam - (2*g1p2*TrYdadjYd*lam)/5._dp + 16*g3p2*TrYdadjYd*lam +        & 
&  6*gpp2*Qdp2*TrYdadjYd*lam - 6*gpp2*QHdp2*TrYdadjYd*lam + 6*gpp2*Qqp2*TrYdadjYd*lam -  & 
&  9*TrYdadjYdYdadjYd*lam - 6*TrYdadjYuYuadjYd*lam + (4*g1p2*TrYuadjYu*lam)/5._dp +      & 
&  16*g3p2*TrYuadjYu*lam - 6*gpp2*QHup2*TrYuadjYu*lam + 6*gpp2*Qqp2*TrYuadjYu*lam +      & 
&  6*gpp2*Qup2*TrYuadjYu*lam - 9*TrYuadjYuYuadjYu*lam - 3*CYe11p2*Ye11p2*lam -           & 
&  3*CYe22p2*Ye22p2*lam - 3*CYe33p2*Ye33p2*lam - 3*CYv11p2*Yv11p2*lam - 3*CYv22p2*Yv22p2*lam -& 
&  3*CYv33p2*Yv33p2*lam - 3*AbsYe33*lamp2*Conjg(lam) - 3*AbsYv11*lamp2*Conjg(lam) -      & 
&  3*AbsYv22*lamp2*Conjg(lam) - 3*AbsYv33*lamp2*Conjg(lam) + (6*g1p2*lamp2*Conjg(lam))/5._dp +& 
&  6*g2p2*lamp2*Conjg(lam) + 4*gpp2*lamp2*QHdp2*Conjg(lam) + 4*gpp2*lamp2*QHup2*Conjg(lam) -& 
&  9*lamp2*TrYdadjYd*Conjg(lam) - 9*lamp2*TrYuadjYu*Conjg(lam)

 
Dlam = oo16pi2*( betalam1 + oo16pi2 * betalam2 ) 

 
Else 
Dlam = oo16pi2* betalam1 
End If 
 
 
Call Chop(Dlam) 

!-------------------- 
! Yv11 
!-------------------- 
 
betaYv111  = Abslam*Yv11 + AbsYe11*Yv11 + AbsYv22*Yv11 + AbsYv33*Yv11 -               & 
&  (3*g1p2*Yv11)/5._dp - 3*g2p2*Yv11 - 2*gpp2*QHup2*Yv11 - 2*gpp2*Ql1p2*Yv11 -           & 
&  2*gpp2*Qv1p2*Yv11 + 3*TrYuadjYu*Yv11 + 4*Yv11p2*Conjg(Yv11)

 
 
If (TwoLoopRGE) Then 
betaYv112 = -(Abslam*AbsYe22*Yv11) - Abslam*AbsYe33*Yv11 - AbsYe22*AbsYv22*Yv11 - AbsYe33*AbsYv33*Yv11 +& 
&  (207*g1p4*Yv11)/50._dp + (9*g1p2*g2p2*Yv11)/5._dp + (15*g2p4*Yv11)/2._dp -            & 
&  3*Clamp2*lamp2*Yv11 + 2*Abslam*gpp2*QHdp2*Yv11 + (18*g1p2*gpp2*Qd*QHu*Yv11)/5._dp +   & 
&  (6*g1p2*gpp2*Qe1*QHu*Yv11)/5._dp + (6*g1p2*gpp2*Qe2*QHu*Yv11)/5._dp + (6*g1p2*gpp2*Qe3*QHu*Yv11)/5._dp -& 
&  (6*g1p2*gpp2*QHd*QHu*Yv11)/5._dp - 2*Abslam*gpp2*QHup2*Yv11 - 2*AbsYv22*gpp2*QHup2*Yv11 -& 
&  2*AbsYv33*gpp2*QHup2*Yv11 + (12*g1p2*gpp2*QHup2*Yv11)/5._dp + 6*g2p2*gpp2*QHup2*Yv11 +& 
&  18*gpp4*Qdp2*QHup2*Yv11 + 2*gpp4*Qe1p2*QHup2*Yv11 + 2*gpp4*Qe2p2*QHup2*Yv11 +         & 
&  2*gpp4*Qe3p2*QHup2*Yv11 + 4*gpp4*QHdp2*QHup2*Yv11 + 8*gpp4*QHup4*Yv11 -               & 
&  (18*g1p2*gpp2*Qd*Ql1*Yv11)/5._dp - (6*g1p2*gpp2*Qe1*Ql1*Yv11)/5._dp - (6*g1p2*gpp2*Qe2*Ql1*Yv11)/5._dp -& 
&  (6*g1p2*gpp2*Qe3*Ql1*Yv11)/5._dp + (6*g1p2*gpp2*QHd*Ql1*Yv11)/5._dp - (12*g1p2*gpp2*QHu*Ql1*Yv11)/5._dp +& 
&  (12*g1p2*gpp2*Ql1p2*Yv11)/5._dp + 6*g2p2*gpp2*Ql1p2*Yv11 + 18*gpp4*Qdp2*Ql1p2*Yv11 +  & 
&  2*gpp4*Qe1p2*Ql1p2*Yv11 + 2*gpp4*Qe2p2*Ql1p2*Yv11 + 2*gpp4*Qe3p2*Ql1p2*Yv11 +         & 
&  4*gpp4*QHdp2*Ql1p2*Yv11 + 8*gpp4*QHup2*Ql1p2*Yv11 + 8*gpp4*Ql1p4*Yv11 -               & 
&  (6*g1p2*gpp2*QHu*Ql2*Yv11)/5._dp + (6*g1p2*gpp2*Ql1*Ql2*Yv11)/5._dp + 2*AbsYv22*gpp2*Ql2p2*Yv11 +& 
&  4*gpp4*QHup2*Ql2p2*Yv11 + 4*gpp4*Ql1p2*Ql2p2*Yv11 - (6*g1p2*gpp2*QHu*Ql3*Yv11)/5._dp +& 
&  (6*g1p2*gpp2*Ql1*Ql3*Yv11)/5._dp + 2*AbsYv33*gpp2*Ql3p2*Yv11 + 4*gpp4*QHup2*Ql3p2*Yv11 +& 
&  4*gpp4*Ql1p2*Ql3p2*Yv11 + (18*g1p2*gpp2*QHu*Qq*Yv11)/5._dp - (18*g1p2*gpp2*Ql1*Qq*Yv11)/5._dp +& 
&  36*gpp4*QHup2*Qqp2*Yv11 + 36*gpp4*Ql1p2*Qqp2*Yv11 + 2*Abslam*gpp2*Qsp2*Yv11 +         & 
&  2*gpp4*QHup2*Qsp2*Yv11 + 2*gpp4*Ql1p2*Qsp2*Yv11 - (36*g1p2*gpp2*QHu*Qu*Yv11)/5._dp +  & 
&  (36*g1p2*gpp2*Ql1*Qu*Yv11)/5._dp + 18*gpp4*QHup2*Qup2*Yv11 + 18*gpp4*Ql1p2*Qup2*Yv11 +& 
&  18*gpp4*Qdp2*Qv1p2*Yv11 + 2*gpp4*Qe1p2*Qv1p2*Yv11 + 2*gpp4*Qe2p2*Qv1p2*Yv11  
betaYv112 =  betaYv112+ 2*gpp4*Qe3p2*Qv1p2*Yv11 + 4*gpp4*QHdp2*Qv1p2*Yv11 + 6*gpp4*QHup2*Qv1p2*Yv11 +         & 
&  6*gpp4*Ql1p2*Qv1p2*Yv11 + 4*gpp4*Ql2p2*Qv1p2*Yv11 + 4*gpp4*Ql3p2*Qv1p2*Yv11 +         & 
&  36*gpp4*Qqp2*Qv1p2*Yv11 + 2*gpp4*Qsp2*Qv1p2*Yv11 + 18*gpp4*Qup2*Qv1p2*Yv11 +          & 
&  6*gpp4*Qv1p4*Yv11 + 2*AbsYv22*gpp2*Qv2p2*Yv11 + 2*gpp4*QHup2*Qv2p2*Yv11 +             & 
&  2*gpp4*Ql1p2*Qv2p2*Yv11 + 2*gpp4*Qv1p2*Qv2p2*Yv11 + 2*AbsYv33*gpp2*Qv3p2*Yv11 +       & 
&  2*gpp4*QHup2*Qv3p2*Yv11 + 2*gpp4*Ql1p2*Qv3p2*Yv11 + 2*gpp4*Qv1p2*Qv3p2*Yv11 -         & 
&  3*Abslam*TrYdadjYd*Yv11 - (AbsYe11*(10._dp*(Abslam) + 5._dp*(AbsYe22) +               & 
&  5._dp*(AbsYe33) + 15._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*Qe1p2 - 10*gpp2*QHdp2 +   & 
&  10*gpp2*Ql1p2 + 15._dp*(TrYdadjYd))*Yv11)/5._dp - 3*TrYdadjYuYuadjYd*Yv11 +           & 
&  (4*g1p2*TrYuadjYu*Yv11)/5._dp + 16*g3p2*TrYuadjYu*Yv11 - 6*gpp2*QHup2*TrYuadjYu*Yv11 +& 
&  6*gpp2*Qqp2*TrYuadjYu*Yv11 + 6*gpp2*Qup2*TrYuadjYu*Yv11 - 9*TrYuadjYuYuadjYu*Yv11 -   & 
&  3*CYe11p2*Ye11p2*Yv11 - 10*CYv11p2*Yv11p3 - 3*CYv22p2*Yv11*Yv22p2 - 3*CYv33p2*Yv11*Yv33p2 +& 
&  ((-15._dp*(Abslam) - 15._dp*(AbsYv22) - 15._dp*(AbsYv33) + 6._dp*(g1p2) +             & 
&  30._dp*(g2p2) + 20*gpp2*QHup2 + 20*gpp2*Ql1p2 - 45._dp*(TrYuadjYu))*Yv11p2*Conjg(Yv11))/5._dp

 
DYv11 = oo16pi2*( betaYv111 + oo16pi2 * betaYv112 ) 

 
Else 
DYv11 = oo16pi2* betaYv111 
End If 
 
 
Call Chop(DYv11) 

!-------------------- 
! Yv22 
!-------------------- 
 
betaYv221  = Abslam*Yv22 + AbsYe22*Yv22 + AbsYv11*Yv22 + AbsYv33*Yv22 -               & 
&  (3*g1p2*Yv22)/5._dp - 3*g2p2*Yv22 - 2*gpp2*QHup2*Yv22 - 2*gpp2*Ql2p2*Yv22 -           & 
&  2*gpp2*Qv2p2*Yv22 + 3*TrYuadjYu*Yv22 + 4*Yv22p2*Conjg(Yv22)

 
 
If (TwoLoopRGE) Then 
betaYv222 = -(Abslam*AbsYe11*Yv22) - Abslam*AbsYe33*Yv22 - AbsYe33*AbsYv33*Yv22 + (207*g1p4*Yv22)/50._dp +& 
&  (9*g1p2*g2p2*Yv22)/5._dp + (15*g2p4*Yv22)/2._dp - 3*Clamp2*lamp2*Yv22 +               & 
&  2*Abslam*gpp2*QHdp2*Yv22 + (18*g1p2*gpp2*Qd*QHu*Yv22)/5._dp + (6*g1p2*gpp2*Qe1*QHu*Yv22)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*Yv22)/5._dp + (6*g1p2*gpp2*Qe3*QHu*Yv22)/5._dp - (6*g1p2*gpp2*QHd*QHu*Yv22)/5._dp -& 
&  2*Abslam*gpp2*QHup2*Yv22 - 2*AbsYv33*gpp2*QHup2*Yv22 + (12*g1p2*gpp2*QHup2*Yv22)/5._dp +& 
&  6*g2p2*gpp2*QHup2*Yv22 + 18*gpp4*Qdp2*QHup2*Yv22 + 2*gpp4*Qe1p2*QHup2*Yv22 +          & 
&  2*gpp4*Qe2p2*QHup2*Yv22 + 2*gpp4*Qe3p2*QHup2*Yv22 + 4*gpp4*QHdp2*QHup2*Yv22 +         & 
&  8*gpp4*QHup4*Yv22 - (6*g1p2*gpp2*QHu*Ql1*Yv22)/5._dp + 4*gpp4*QHup2*Ql1p2*Yv22 -      & 
&  (18*g1p2*gpp2*Qd*Ql2*Yv22)/5._dp - (6*g1p2*gpp2*Qe1*Ql2*Yv22)/5._dp - (6*g1p2*gpp2*Qe2*Ql2*Yv22)/5._dp -& 
&  (6*g1p2*gpp2*Qe3*Ql2*Yv22)/5._dp + (6*g1p2*gpp2*QHd*Ql2*Yv22)/5._dp - (12*g1p2*gpp2*QHu*Ql2*Yv22)/5._dp +& 
&  (6*g1p2*gpp2*Ql1*Ql2*Yv22)/5._dp + (12*g1p2*gpp2*Ql2p2*Yv22)/5._dp + 6*g2p2*gpp2*Ql2p2*Yv22 +& 
&  18*gpp4*Qdp2*Ql2p2*Yv22 + 2*gpp4*Qe1p2*Ql2p2*Yv22 + 2*gpp4*Qe2p2*Ql2p2*Yv22 +         & 
&  2*gpp4*Qe3p2*Ql2p2*Yv22 + 4*gpp4*QHdp2*Ql2p2*Yv22 + 8*gpp4*QHup2*Ql2p2*Yv22 +         & 
&  4*gpp4*Ql1p2*Ql2p2*Yv22 + 8*gpp4*Ql2p4*Yv22 - (6*g1p2*gpp2*QHu*Ql3*Yv22)/5._dp +      & 
&  (6*g1p2*gpp2*Ql2*Ql3*Yv22)/5._dp + 2*AbsYv33*gpp2*Ql3p2*Yv22 + 4*gpp4*QHup2*Ql3p2*Yv22 +& 
&  4*gpp4*Ql2p2*Ql3p2*Yv22 + (18*g1p2*gpp2*QHu*Qq*Yv22)/5._dp - (18*g1p2*gpp2*Ql2*Qq*Yv22)/5._dp +& 
&  36*gpp4*QHup2*Qqp2*Yv22 + 36*gpp4*Ql2p2*Qqp2*Yv22 + 2*Abslam*gpp2*Qsp2*Yv22 +         & 
&  2*gpp4*QHup2*Qsp2*Yv22 + 2*gpp4*Ql2p2*Qsp2*Yv22 - (36*g1p2*gpp2*QHu*Qu*Yv22)/5._dp +  & 
&  (36*g1p2*gpp2*Ql2*Qu*Yv22)/5._dp + 18*gpp4*QHup2*Qup2*Yv22 + 18*gpp4*Ql2p2*Qup2*Yv22 -& 
&  AbsYv11*(AbsYe11 + 3._dp*(AbsYv22) + 2*gpp2*(QHup2 - Ql1p2 - Qv1p2))*Yv22 +           & 
&  2*gpp4*QHup2*Qv1p2*Yv22 + 2*gpp4*Ql2p2*Qv1p2*Yv22 + 18*gpp4*Qdp2*Qv2p2*Yv22  
betaYv222 =  betaYv222+ 2*gpp4*Qe1p2*Qv2p2*Yv22 + 2*gpp4*Qe2p2*Qv2p2*Yv22 + 2*gpp4*Qe3p2*Qv2p2*Yv22 +         & 
&  4*gpp4*QHdp2*Qv2p2*Yv22 + 6*gpp4*QHup2*Qv2p2*Yv22 + 4*gpp4*Ql1p2*Qv2p2*Yv22 +         & 
&  6*gpp4*Ql2p2*Qv2p2*Yv22 + 4*gpp4*Ql3p2*Qv2p2*Yv22 + 36*gpp4*Qqp2*Qv2p2*Yv22 +         & 
&  2*gpp4*Qsp2*Qv2p2*Yv22 + 18*gpp4*Qup2*Qv2p2*Yv22 + 2*gpp4*Qv1p2*Qv2p2*Yv22 +          & 
&  6*gpp4*Qv2p4*Yv22 + 2*AbsYv33*gpp2*Qv3p2*Yv22 + 2*gpp4*QHup2*Qv3p2*Yv22 +             & 
&  2*gpp4*Ql2p2*Qv3p2*Yv22 + 2*gpp4*Qv2p2*Qv3p2*Yv22 - 3*Abslam*TrYdadjYd*Yv22 -         & 
&  (AbsYe22*(10._dp*(Abslam) + 5._dp*(AbsYe11) + 5._dp*(AbsYe33) + 15._dp*(AbsYv22) -    & 
&  6._dp*(g1p2) - 10*gpp2*Qe2p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql2p2 + 15._dp*(TrYdadjYd))*Yv22)/5._dp -& 
&  3*TrYdadjYuYuadjYd*Yv22 + (4*g1p2*TrYuadjYu*Yv22)/5._dp + 16*g3p2*TrYuadjYu*Yv22 -    & 
&  6*gpp2*QHup2*TrYuadjYu*Yv22 + 6*gpp2*Qqp2*TrYuadjYu*Yv22 + 6*gpp2*Qup2*TrYuadjYu*Yv22 -& 
&  9*TrYuadjYuYuadjYu*Yv22 - 3*CYe22p2*Ye22p2*Yv22 - 3*CYv11p2*Yv11p2*Yv22 -             & 
&  10*CYv22p2*Yv22p3 - 3*CYv33p2*Yv22*Yv33p2 - 3*Abslam*Yv22p2*Conjg(Yv22) -             & 
&  3*AbsYv33*Yv22p2*Conjg(Yv22) + (6*g1p2*Yv22p2*Conjg(Yv22))/5._dp + 6*g2p2*Yv22p2*Conjg(Yv22) +& 
&  4*gpp2*QHup2*Yv22p2*Conjg(Yv22) + 4*gpp2*Ql2p2*Yv22p2*Conjg(Yv22) - 9*TrYuadjYu*Yv22p2*Conjg(Yv22)

 
DYv22 = oo16pi2*( betaYv221 + oo16pi2 * betaYv222 ) 

 
Else 
DYv22 = oo16pi2* betaYv221 
End If 
 
 
Call Chop(DYv22) 

!-------------------- 
! Yv33 
!-------------------- 
 
betaYv331  = Abslam*Yv33 + AbsYe33*Yv33 + AbsYv11*Yv33 + AbsYv22*Yv33 -               & 
&  (3*g1p2*Yv33)/5._dp - 3*g2p2*Yv33 - 2*gpp2*QHup2*Yv33 - 2*gpp2*Ql3p2*Yv33 -           & 
&  2*gpp2*Qv3p2*Yv33 + 3*TrYuadjYu*Yv33 + 4*Yv33p2*Conjg(Yv33)

 
 
If (TwoLoopRGE) Then 
betaYv332 = -(Abslam*AbsYe11*Yv33) - Abslam*AbsYe22*Yv33 - AbsYe22*AbsYv22*Yv33 + (207*g1p4*Yv33)/50._dp +& 
&  (9*g1p2*g2p2*Yv33)/5._dp + (15*g2p4*Yv33)/2._dp - 3*Clamp2*lamp2*Yv33 +               & 
&  2*Abslam*gpp2*QHdp2*Yv33 + (18*g1p2*gpp2*Qd*QHu*Yv33)/5._dp + (6*g1p2*gpp2*Qe1*QHu*Yv33)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*Yv33)/5._dp + (6*g1p2*gpp2*Qe3*QHu*Yv33)/5._dp - (6*g1p2*gpp2*QHd*QHu*Yv33)/5._dp -& 
&  2*Abslam*gpp2*QHup2*Yv33 - 2*AbsYv22*gpp2*QHup2*Yv33 + (12*g1p2*gpp2*QHup2*Yv33)/5._dp +& 
&  6*g2p2*gpp2*QHup2*Yv33 + 18*gpp4*Qdp2*QHup2*Yv33 + 2*gpp4*Qe1p2*QHup2*Yv33 +          & 
&  2*gpp4*Qe2p2*QHup2*Yv33 + 2*gpp4*Qe3p2*QHup2*Yv33 + 4*gpp4*QHdp2*QHup2*Yv33 +         & 
&  8*gpp4*QHup4*Yv33 - (6*g1p2*gpp2*QHu*Ql1*Yv33)/5._dp + 4*gpp4*QHup2*Ql1p2*Yv33 -      & 
&  (6*g1p2*gpp2*QHu*Ql2*Yv33)/5._dp + 2*AbsYv22*gpp2*Ql2p2*Yv33 + 4*gpp4*QHup2*Ql2p2*Yv33 -& 
&  (18*g1p2*gpp2*Qd*Ql3*Yv33)/5._dp - (6*g1p2*gpp2*Qe1*Ql3*Yv33)/5._dp - (6*g1p2*gpp2*Qe2*Ql3*Yv33)/5._dp -& 
&  (6*g1p2*gpp2*Qe3*Ql3*Yv33)/5._dp + (6*g1p2*gpp2*QHd*Ql3*Yv33)/5._dp - (12*g1p2*gpp2*QHu*Ql3*Yv33)/5._dp +& 
&  (6*g1p2*gpp2*Ql1*Ql3*Yv33)/5._dp + (6*g1p2*gpp2*Ql2*Ql3*Yv33)/5._dp + (12*g1p2*gpp2*Ql3p2*Yv33)/5._dp +& 
&  6*g2p2*gpp2*Ql3p2*Yv33 + 18*gpp4*Qdp2*Ql3p2*Yv33 + 2*gpp4*Qe1p2*Ql3p2*Yv33 +          & 
&  2*gpp4*Qe2p2*Ql3p2*Yv33 + 2*gpp4*Qe3p2*Ql3p2*Yv33 + 4*gpp4*QHdp2*Ql3p2*Yv33 +         & 
&  8*gpp4*QHup2*Ql3p2*Yv33 + 4*gpp4*Ql1p2*Ql3p2*Yv33 + 4*gpp4*Ql2p2*Ql3p2*Yv33 +         & 
&  8*gpp4*Ql3p4*Yv33 + (18*g1p2*gpp2*QHu*Qq*Yv33)/5._dp - (18*g1p2*gpp2*Ql3*Qq*Yv33)/5._dp +& 
&  36*gpp4*QHup2*Qqp2*Yv33 + 36*gpp4*Ql3p2*Qqp2*Yv33 + 2*Abslam*gpp2*Qsp2*Yv33 +         & 
&  2*gpp4*QHup2*Qsp2*Yv33 + 2*gpp4*Ql3p2*Qsp2*Yv33 - (36*g1p2*gpp2*QHu*Qu*Yv33)/5._dp +  & 
&  (36*g1p2*gpp2*Ql3*Qu*Yv33)/5._dp + 18*gpp4*QHup2*Qup2*Yv33 + 18*gpp4*Ql3p2*Qup2*Yv33 -& 
&  AbsYv11*(AbsYe11 + 3._dp*(AbsYv33) + 2*gpp2*(QHup2 - Ql1p2 - Qv1p2))*Yv33 +           & 
&  2*gpp4*QHup2*Qv1p2*Yv33 + 2*gpp4*Ql3p2*Qv1p2*Yv33 + 2*AbsYv22*gpp2*Qv2p2*Yv33  
betaYv332 =  betaYv332+ 2*gpp4*QHup2*Qv2p2*Yv33 + 2*gpp4*Ql3p2*Qv2p2*Yv33 + 18*gpp4*Qdp2*Qv3p2*Yv33 +         & 
&  2*gpp4*Qe1p2*Qv3p2*Yv33 + 2*gpp4*Qe2p2*Qv3p2*Yv33 + 2*gpp4*Qe3p2*Qv3p2*Yv33 +         & 
&  4*gpp4*QHdp2*Qv3p2*Yv33 + 6*gpp4*QHup2*Qv3p2*Yv33 + 4*gpp4*Ql1p2*Qv3p2*Yv33 +         & 
&  4*gpp4*Ql2p2*Qv3p2*Yv33 + 6*gpp4*Ql3p2*Qv3p2*Yv33 + 36*gpp4*Qqp2*Qv3p2*Yv33 +         & 
&  2*gpp4*Qsp2*Qv3p2*Yv33 + 18*gpp4*Qup2*Qv3p2*Yv33 + 2*gpp4*Qv1p2*Qv3p2*Yv33 +          & 
&  2*gpp4*Qv2p2*Qv3p2*Yv33 + 6*gpp4*Qv3p4*Yv33 - 3*Abslam*TrYdadjYd*Yv33 -               & 
&  (AbsYe33*(10._dp*(Abslam) + 5._dp*(AbsYe11) + 5._dp*(AbsYe22) + 15._dp*(AbsYv33) -    & 
&  6._dp*(g1p2) - 10*gpp2*Qe3p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql3p2 + 15._dp*(TrYdadjYd))*Yv33)/5._dp -& 
&  3*TrYdadjYuYuadjYd*Yv33 + (4*g1p2*TrYuadjYu*Yv33)/5._dp + 16*g3p2*TrYuadjYu*Yv33 -    & 
&  6*gpp2*QHup2*TrYuadjYu*Yv33 + 6*gpp2*Qqp2*TrYuadjYu*Yv33 + 6*gpp2*Qup2*TrYuadjYu*Yv33 -& 
&  9*TrYuadjYuYuadjYu*Yv33 - 3*CYe33p2*Ye33p2*Yv33 - 3*CYv11p2*Yv11p2*Yv33 -             & 
&  3*CYv22p2*Yv22p2*Yv33 - 10*CYv33p2*Yv33p3 - 3*Abslam*Yv33p2*Conjg(Yv33) -             & 
&  3*AbsYv22*Yv33p2*Conjg(Yv33) + (6*g1p2*Yv33p2*Conjg(Yv33))/5._dp + 6*g2p2*Yv33p2*Conjg(Yv33) +& 
&  4*gpp2*QHup2*Yv33p2*Conjg(Yv33) + 4*gpp2*Ql3p2*Yv33p2*Conjg(Yv33) - 9*TrYuadjYu*Yv33p2*Conjg(Yv33)

 
DYv33 = oo16pi2*( betaYv331 + oo16pi2 * betaYv332 ) 

 
Else 
DYv33 = oo16pi2* betaYv331 
End If 
 
 
Call Chop(DYv33) 

!-------------------- 
! Yu 
!-------------------- 
 
betaYu1  = (Abslam + AbsYv11 + AbsYv22 + AbsYv33 - 13._dp*(g1p2)/15._dp -             & 
&  3._dp*(g2p2) - 16._dp*(g3p2)/3._dp - 2*gpp2*QHup2 - 2*gpp2*Qqp2 - 2*gpp2*Qup2 +       & 
&  3._dp*(TrYuadjYu))*Yu + YuadjYdYd + 3._dp*(YuadjYuYu)

 
 
If (TwoLoopRGE) Then 
betaYu2 = (-1._dp*(Abslam) - AbsYe11 - AbsYe22 - AbsYe33 + 2._dp*(g1p2)/5._dp + 2*gpp2*Qdp2 +   & 
&  2*gpp2*QHdp2 - 2*gpp2*Qqp2 - 3._dp*(TrYdadjYd))*YuadjYdYd - 2._dp*(YuadjYdYdadjYdYd) -& 
&  2._dp*(YuadjYdYdadjYuYu) - 3*Abslam*YuadjYuYu - 3*AbsYv11*YuadjYuYu - 3*AbsYv22*YuadjYuYu -& 
&  3*AbsYv33*YuadjYuYu + (2*g1p2*YuadjYuYu)/5._dp + 6*g2p2*YuadjYuYu + 6*gpp2*QHup2*YuadjYuYu +& 
&  2*gpp2*Qqp2*YuadjYuYu - 2*gpp2*Qup2*YuadjYuYu - 9*TrYuadjYu*YuadjYuYu -               & 
&  4._dp*(YuadjYuYuadjYuYu) + Yu*(-(Abslam*AbsYe11) - Abslam*AbsYe22 - Abslam*AbsYe33 -  & 
&  AbsYe33*AbsYv33 + 2743._dp*(g1p4)/450._dp + g1p2*g2p2 + 15._dp*(g2p4)/2._dp +         & 
&  (136*g1p2*g3p2)/45._dp + 8*g2p2*g3p2 - 16._dp*(g3p4)/9._dp - 3*Clamp2*lamp2 +         & 
&  2*Abslam*gpp2*QHdp2 + (18*g1p2*gpp2*Qd*QHu)/5._dp + (6*g1p2*gpp2*Qe1*QHu)/5._dp +     & 
&  (6*g1p2*gpp2*Qe2*QHu)/5._dp + (6*g1p2*gpp2*Qe3*QHu)/5._dp - (6*g1p2*gpp2*QHd*QHu)/5._dp -& 
&  2*Abslam*gpp2*QHup2 - 2*AbsYv33*gpp2*QHup2 + (12*g1p2*gpp2*QHup2)/5._dp +             & 
&  6*g2p2*gpp2*QHup2 + 18*gpp4*Qdp2*QHup2 + 2*gpp4*Qe1p2*QHup2 + 2*gpp4*Qe2p2*QHup2 +    & 
&  2*gpp4*Qe3p2*QHup2 + 4*gpp4*QHdp2*QHup2 + 8*gpp4*QHup4 - (6*g1p2*gpp2*QHu*Ql1)/5._dp +& 
&  4*gpp4*QHup2*Ql1p2 - (6*g1p2*gpp2*QHu*Ql2)/5._dp + 4*gpp4*QHup2*Ql2p2 -               & 
&  (6*g1p2*gpp2*QHu*Ql3)/5._dp + 2*AbsYv33*gpp2*Ql3p2 + 4*gpp4*QHup2*Ql3p2 +             & 
&  (6*g1p2*gpp2*Qd*Qq)/5._dp + (2*g1p2*gpp2*Qe1*Qq)/5._dp + (2*g1p2*gpp2*Qe2*Qq)/5._dp + & 
&  (2*g1p2*gpp2*Qe3*Qq)/5._dp - (2*g1p2*gpp2*QHd*Qq)/5._dp + 4*g1p2*gpp2*QHu*Qq -        & 
&  (2*g1p2*gpp2*Ql1*Qq)/5._dp - (2*g1p2*gpp2*Ql2*Qq)/5._dp - (2*g1p2*gpp2*Ql3*Qq)/5._dp +& 
&  (4*g1p2*gpp2*Qqp2)/3._dp + 6*g2p2*gpp2*Qqp2 + (32*g3p2*gpp2*Qqp2)/3._dp +             & 
&  18*gpp4*Qdp2*Qqp2 + 2*gpp4*Qe1p2*Qqp2 + 2*gpp4*Qe2p2*Qqp2 + 2*gpp4*Qe3p2*Qqp2 +       & 
&  4*gpp4*QHdp2*Qqp2 + 40*gpp4*QHup2*Qqp2 + 4*gpp4*Ql1p2*Qqp2 + 4*gpp4*Ql2p2*Qqp2 +      & 
&  4*gpp4*Ql3p2*Qqp2 + 40*gpp4*Qqp4 + 2*Abslam*gpp2*Qsp2 + 2*gpp4*QHup2*Qsp2 +           & 
&  2*gpp4*Qqp2*Qsp2 - (24*g1p2*gpp2*Qd*Qu)/5._dp - (8*g1p2*gpp2*Qe1*Qu)/5._dp -          & 
&  (8*g1p2*gpp2*Qe2*Qu)/5._dp - (8*g1p2*gpp2*Qe3*Qu)/5._dp + (8*g1p2*gpp2*QHd*Qu)/5._dp -& 
&  (44*g1p2*gpp2*QHu*Qu)/5._dp + (8*g1p2*gpp2*Ql1*Qu)/5._dp + (8*g1p2*gpp2*Ql2*Qu)/5._dp +& 
&  (8*g1p2*gpp2*Ql3*Qu)/5._dp - (36*g1p2*gpp2*Qq*Qu)/5._dp + (176*g1p2*gpp2*Qup2)/15._dp +& 
&  (32*g3p2*gpp2*Qup2)/3._dp + 18*gpp4*Qdp2*Qup2 + 2*gpp4*Qe1p2*Qup2 + 2*gpp4*Qe2p2*Qup2 +& 
&  2*gpp4*Qe3p2*Qup2 + 4*gpp4*QHdp2*Qup2 + 22*gpp4*QHup2*Qup2 + 4*gpp4*Ql1p2*Qup2 +      & 
&  4*gpp4*Ql2p2*Qup2 + 4*gpp4*Ql3p2*Qup2 + 54*gpp4*Qqp2*Qup2 + 2*gpp4*Qsp2*Qup2 +        & 
&  22*gpp4*Qup4 + 2*gpp4*QHup2*Qv1p2 + 2*gpp4*Qqp2*Qv1p2 + 2*gpp4*Qup2*Qv1p2 +           & 
&  AbsYv11*(-1._dp*(AbsYe11) + 2*gpp2*(-1._dp*(QHup2) + Ql1p2 + Qv1p2)) + 2*gpp4*QHup2*Qv2p2 +& 
&  2*gpp4*Qqp2*Qv2p2 + 2*gpp4*Qup2*Qv2p2 + AbsYv22*(-1._dp*(AbsYe22) + 2*gpp2*(-         & 
& 1._dp*(QHup2) + Ql2p2 + Qv2p2)) + 2*AbsYv33*gpp2*Qv3p2 + 2*gpp4*QHup2*Qv3p2 +          & 
&  2*gpp4*Qqp2*Qv3p2 + 2*gpp4*Qup2*Qv3p2 - 3*Abslam*TrYdadjYd - 3._dp*(TrYdadjYuYuadjYd) +& 
&  (4*g1p2*TrYuadjYu)/5._dp + 16*g3p2*TrYuadjYu - 6*gpp2*QHup2*TrYuadjYu +               & 
&  6*gpp2*Qqp2*TrYuadjYu + 6*gpp2*Qup2*TrYuadjYu - 9._dp*(TrYuadjYuYuadjYu) -            & 
&  3*CYv11p2*Yv11p2 - 3*CYv22p2*Yv22p2 - 3*CYv33p2*Yv33p2)

 
DYu = oo16pi2*( betaYu1 + oo16pi2 * betaYu2 ) 

 
Else 
DYu = oo16pi2* betaYu1 
End If 
 
 
Call Chop(DYu) 

!-------------------- 
! Td 
!-------------------- 
 
betaTd1  = 5._dp*(TdadjYdYd) + TdadjYuYu + 4._dp*(YdadjYdTd) + 2._dp*(YdadjYuTu)      & 
&  + Abslam*Td + AbsYe11*Td + AbsYe22*Td + AbsYe33*Td - (7*g1p2*Td)/15._dp -             & 
&  3*g2p2*Td - (16*g3p2*Td)/3._dp - 2*gpp2*Qdp2*Td - 2*gpp2*QHdp2*Td - 2*gpp2*Qqp2*Td +  & 
&  3*TrYdadjYd*Td + Yd*((14*g1p2*M1)/15._dp + (32*g3p2*M3)/3._dp + 6*g2p2*M2 +           & 
&  4*gpp2*M4*Qdp2 + 4*gpp2*M4*QHdp2 + 4*gpp2*M4*Qqp2 + 6._dp*(TradjYdTd) +               & 
&  2*Conjg(Ye11)*TYe11 + 2*Conjg(Ye22)*TYe22 + 2*Conjg(Ye33)*TYe33 + 2*Conjg(lam)*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTd2 = -5*Abslam*TdadjYdYd - 5*AbsYe11*TdadjYdYd - 5*AbsYe22*TdadjYdYd - 5*AbsYe33*TdadjYdYd +& 
&  (6*g1p2*TdadjYdYd)/5._dp + 12*g2p2*TdadjYdYd - 6*gpp2*Qdp2*TdadjYdYd + 10*gpp2*QHdp2*TdadjYdYd +& 
&  6*gpp2*Qqp2*TdadjYdYd - 6._dp*(TdadjYdYdadjYdYd) - Abslam*TdadjYuYu - AbsYv11*TdadjYuYu -& 
&  AbsYv22*TdadjYuYu - AbsYv33*TdadjYuYu + (4*g1p2*TdadjYuYu)/5._dp + 2*gpp2*QHup2*TdadjYuYu -& 
&  2*gpp2*Qqp2*TdadjYuYu + 2*gpp2*Qup2*TdadjYuYu - 4._dp*(TdadjYuYuadjYdYd) -            & 
&  2._dp*(TdadjYuYuadjYuYu) - 15*TdadjYdYd*TrYdadjYd - 3*TdadjYuYu*TrYuadjYu -           & 
&  4*Abslam*YdadjYdTd - 4*AbsYe11*YdadjYdTd - 4*AbsYe22*YdadjYdTd - 4*AbsYe33*YdadjYdTd +& 
&  (6*g1p2*YdadjYdTd)/5._dp + 6*g2p2*YdadjYdTd + 8*gpp2*QHdp2*YdadjYdTd - 12*TrYdadjYd*YdadjYdTd -& 
&  8._dp*(YdadjYdTdadjYdYd) - 6._dp*(YdadjYdYdadjYdTd) - 2*Abslam*YdadjYuTu -            & 
&  2*AbsYv11*YdadjYuTu - 2*AbsYv22*YdadjYuTu - 2*AbsYv33*YdadjYuTu + (8*g1p2*YdadjYuTu)/5._dp +& 
&  4*gpp2*QHup2*YdadjYuTu - 4*gpp2*Qqp2*YdadjYuTu + 4*gpp2*Qup2*YdadjYuTu -              & 
&  6*TrYuadjYu*YdadjYuTu - 4._dp*(YdadjYuTuadjYdYd) - 4._dp*(YdadjYuTuadjYuYu) -         & 
&  (8*g1p2*M1*YdadjYuYu)/5._dp - 4*gpp2*M4*QHup2*YdadjYuYu + 4*gpp2*M4*Qqp2*YdadjYuYu -  & 
&  4*gpp2*M4*Qup2*YdadjYuYu - 6*TradjYuTu*YdadjYuYu - 2._dp*(YdadjYuYuadjYdTd) -         & 
&  4._dp*(YdadjYuYuadjYuTu) - Abslam*AbsYv11*Td - AbsYe11*AbsYv11*Td - Abslam*AbsYv22*Td -& 
&  AbsYe22*AbsYv22*Td - Abslam*AbsYv33*Td - AbsYe33*AbsYv33*Td + (6*AbsYe11*g1p2*Td)/5._dp +& 
&  (6*AbsYe22*g1p2*Td)/5._dp + (6*AbsYe33*g1p2*Td)/5._dp + (287*g1p4*Td)/90._dp +        & 
&  g1p2*g2p2*Td + (15*g2p4*Td)/2._dp + (8*g1p2*g3p2*Td)/9._dp + 8*g2p2*g3p2*Td -         & 
&  (16*g3p4*Td)/9._dp - 3*Clamp2*lamp2*Td + (44*g1p2*gpp2*Qdp2*Td)/15._dp +              & 
&  (32*g3p2*gpp2*Qdp2*Td)/3._dp + 22*gpp4*Qdp4*Td + (4*g1p2*gpp2*Qd*Qe1*Td)/5._dp +      & 
&  2*AbsYe11*gpp2*Qe1p2*Td + 2*gpp4*Qdp2*Qe1p2*Td + (4*g1p2*gpp2*Qd*Qe2*Td)/5._dp  
betaTd2 =  betaTd2+ 2*AbsYe22*gpp2*Qe2p2*Td + 2*gpp4*Qdp2*Qe2p2*Td + (4*g1p2*gpp2*Qd*Qe3*Td)/5._dp +      & 
&  2*AbsYe33*gpp2*Qe3p2*Td + 2*gpp4*Qdp2*Qe3p2*Td - (22*g1p2*gpp2*Qd*QHd*Td)/5._dp -     & 
&  (6*g1p2*gpp2*Qe1*QHd*Td)/5._dp - (6*g1p2*gpp2*Qe2*QHd*Td)/5._dp - (6*g1p2*gpp2*Qe3*QHd*Td)/5._dp -& 
&  2*Abslam*gpp2*QHdp2*Td - 2*AbsYe11*gpp2*QHdp2*Td - 2*AbsYe22*gpp2*QHdp2*Td -          & 
&  2*AbsYe33*gpp2*QHdp2*Td + (12*g1p2*gpp2*QHdp2*Td)/5._dp + 6*g2p2*gpp2*QHdp2*Td +      & 
&  22*gpp4*Qdp2*QHdp2*Td + 2*gpp4*Qe1p2*QHdp2*Td + 2*gpp4*Qe2p2*QHdp2*Td +               & 
&  2*gpp4*Qe3p2*QHdp2*Td + 8*gpp4*QHdp4*Td + (4*g1p2*gpp2*Qd*QHu*Td)/5._dp -             & 
&  (6*g1p2*gpp2*QHd*QHu*Td)/5._dp + 2*Abslam*gpp2*QHup2*Td + 4*gpp4*Qdp2*QHup2*Td +      & 
&  4*gpp4*QHdp2*QHup2*Td - (4*g1p2*gpp2*Qd*Ql1*Td)/5._dp + (6*g1p2*gpp2*QHd*Ql1*Td)/5._dp +& 
&  2*AbsYe11*gpp2*Ql1p2*Td + 4*gpp4*Qdp2*Ql1p2*Td + 4*gpp4*QHdp2*Ql1p2*Td -              & 
&  (4*g1p2*gpp2*Qd*Ql2*Td)/5._dp + (6*g1p2*gpp2*QHd*Ql2*Td)/5._dp + 2*AbsYe22*gpp2*Ql2p2*Td +& 
&  4*gpp4*Qdp2*Ql2p2*Td + 4*gpp4*QHdp2*Ql2p2*Td - (4*g1p2*gpp2*Qd*Ql3*Td)/5._dp +        & 
&  (6*g1p2*gpp2*QHd*Ql3*Td)/5._dp + 2*AbsYe33*gpp2*Ql3p2*Td + 4*gpp4*Qdp2*Ql3p2*Td +     & 
&  4*gpp4*QHdp2*Ql3p2*Td + (18*g1p2*gpp2*Qd*Qq*Td)/5._dp + (2*g1p2*gpp2*Qe1*Qq*Td)/5._dp +& 
&  (2*g1p2*gpp2*Qe2*Qq*Td)/5._dp + (2*g1p2*gpp2*Qe3*Qq*Td)/5._dp - 4*g1p2*gpp2*QHd*Qq*Td +& 
&  (2*g1p2*gpp2*QHu*Qq*Td)/5._dp - (2*g1p2*gpp2*Ql1*Qq*Td)/5._dp - (2*g1p2*gpp2*Ql2*Qq*Td)/5._dp -& 
&  (2*g1p2*gpp2*Ql3*Qq*Td)/5._dp + (4*g1p2*gpp2*Qqp2*Td)/3._dp + 6*g2p2*gpp2*Qqp2*Td +   & 
&  (32*g3p2*gpp2*Qqp2*Td)/3._dp + 54*gpp4*Qdp2*Qqp2*Td + 2*gpp4*Qe1p2*Qqp2*Td +          & 
&  2*gpp4*Qe2p2*Qqp2*Td + 2*gpp4*Qe3p2*Qqp2*Td + 40*gpp4*QHdp2*Qqp2*Td + 4*gpp4*QHup2*Qqp2*Td +& 
&  4*gpp4*Ql1p2*Qqp2*Td + 4*gpp4*Ql2p2*Qqp2*Td + 4*gpp4*Ql3p2*Qqp2*Td + 40*gpp4*Qqp4*Td +& 
&  2*Abslam*gpp2*Qsp2*Td + 2*gpp4*Qdp2*Qsp2*Td + 2*gpp4*QHdp2*Qsp2*Td + 2*gpp4*Qqp2*Qsp2*Td  
betaTd2 =  betaTd2- (24*g1p2*gpp2*Qd*Qu*Td)/5._dp + (36*g1p2*gpp2*QHd*Qu*Td)/5._dp - (12*g1p2*gpp2*Qq*Qu*Td)/5._dp +& 
&  18*gpp4*Qdp2*Qup2*Td + 18*gpp4*QHdp2*Qup2*Td + 18*gpp4*Qqp2*Qup2*Td + 2*gpp4*Qdp2*Qv1p2*Td +& 
&  2*gpp4*QHdp2*Qv1p2*Td + 2*gpp4*Qqp2*Qv1p2*Td + 2*gpp4*Qdp2*Qv2p2*Td + 2*gpp4*QHdp2*Qv2p2*Td +& 
&  2*gpp4*Qqp2*Qv2p2*Td + 2*gpp4*Qdp2*Qv3p2*Td + 2*gpp4*QHdp2*Qv3p2*Td + 2*gpp4*Qqp2*Qv3p2*Td -& 
&  (2*g1p2*TrYdadjYd*Td)/5._dp + 16*g3p2*TrYdadjYd*Td + 6*gpp2*Qdp2*TrYdadjYd*Td -       & 
&  6*gpp2*QHdp2*TrYdadjYd*Td + 6*gpp2*Qqp2*TrYdadjYd*Td - 9*TrYdadjYdYdadjYd*Td -        & 
&  3*TrYdadjYuYuadjYd*Td - 3*Abslam*TrYuadjYu*Td - 3*CYe11p2*Ye11p2*Td - 3*CYe22p2*Ye22p2*Td -& 
&  3*CYe33p2*Ye33p2*Td - 2*YdadjYuYu*Conjg(Yv11)*TYv11 - 2*YdadjYuYu*Conjg(Yv22)*TYv22 - & 
&  2*YdadjYuYu*Conjg(Yv33)*TYv33 - 2*YdadjYuYu*Conjg(lam)*Tlam - (2*YdadjYdYd*(4*g1p2*M1 +& 
&  30*g2p2*M2 - 10*gpp2*M4*Qdp2 + 30*gpp2*M4*QHdp2 + 10*gpp2*M4*Qqp2 + 45._dp*(TradjYdTd) +& 
&  15*Conjg(Ye11)*TYe11 + 15*Conjg(Ye22)*TYe22 + 15*Conjg(Ye33)*TYe33 + 15*Conjg(lam)*Tlam))/5._dp -& 
&  (2*Yd*(54*AbsYe33*g1p2*M1 + 287*g1p4*M1 + 45*g1p2*g2p2*M1 + 40*g1p2*g3p2*M1 +         & 
&  40*g1p2*g3p2*M3 + 360*g2p2*g3p2*M3 - 160*g3p4*M3 + 45*g1p2*g2p2*M2 + 675*g2p4*M2 +    & 
&  360*g2p2*g3p2*M2 + 132*g1p2*gpp2*M1*Qdp2 + 480*g3p2*gpp2*M3*Qdp2 + 132*g1p2*gpp2*M4*Qdp2 +& 
&  480*g3p2*gpp2*M4*Qdp2 + 1980*gpp4*M4*Qdp4 + 36*g1p2*gpp2*M1*Qd*Qe1 + 36*g1p2*gpp2*M4*Qd*Qe1 +& 
&  180*gpp4*M4*Qdp2*Qe1p2 + 36*g1p2*gpp2*M1*Qd*Qe2 + 36*g1p2*gpp2*M4*Qd*Qe2 +            & 
&  180*gpp4*M4*Qdp2*Qe2p2 + 36*g1p2*gpp2*M1*Qd*Qe3 + 36*g1p2*gpp2*M4*Qd*Qe3 +            & 
&  90*AbsYe33*gpp2*M4*Qe3p2 + 180*gpp4*M4*Qdp2*Qe3p2 - 198*g1p2*gpp2*M1*Qd*QHd -         & 
&  198*g1p2*gpp2*M4*Qd*QHd - 54*g1p2*gpp2*M1*Qe1*QHd - 54*g1p2*gpp2*M4*Qe1*QHd -         & 
&  54*g1p2*gpp2*M1*Qe2*QHd - 54*g1p2*gpp2*M4*Qe2*QHd - 54*g1p2*gpp2*M1*Qe3*QHd -         & 
&  54*g1p2*gpp2*M4*Qe3*QHd + 108*g1p2*gpp2*M1*QHdp2 - 90*Abslam*gpp2*M4*QHdp2 -          & 
&  90*AbsYe33*gpp2*M4*QHdp2 + 108*g1p2*gpp2*M4*QHdp2 + 270*g2p2*gpp2*M4*QHdp2 +          & 
&  270*g2p2*gpp2*M2*QHdp2 + 1980*gpp4*M4*Qdp2*QHdp2 + 180*gpp4*M4*Qe1p2*QHdp2 +          & 
&  180*gpp4*M4*Qe2p2*QHdp2 + 180*gpp4*M4*Qe3p2*QHdp2 + 720*gpp4*M4*QHdp4 +               & 
&  36*g1p2*gpp2*M1*Qd*QHu + 36*g1p2*gpp2*M4*Qd*QHu - 54*g1p2*gpp2*M1*QHd*QHu -           & 
&  54*g1p2*gpp2*M4*QHd*QHu + 90*Abslam*gpp2*M4*QHup2 + 360*gpp4*M4*Qdp2*QHup2 +          & 
&  360*gpp4*M4*QHdp2*QHup2 - 36*g1p2*gpp2*M1*Qd*Ql1 - 36*g1p2*gpp2*M4*Qd*Ql1 +           & 
&  54*g1p2*gpp2*M1*QHd*Ql1 + 54*g1p2*gpp2*M4*QHd*Ql1 + 360*gpp4*M4*Qdp2*Ql1p2 +          & 
&  360*gpp4*M4*QHdp2*Ql1p2 - 36*g1p2*gpp2*M1*Qd*Ql2 - 36*g1p2*gpp2*M4*Qd*Ql2 +           & 
&  54*g1p2*gpp2*M1*QHd*Ql2 + 54*g1p2*gpp2*M4*QHd*Ql2 + 360*gpp4*M4*Qdp2*Ql2p2 +          & 
&  360*gpp4*M4*QHdp2*Ql2p2 - 36*g1p2*gpp2*M1*Qd*Ql3 - 36*g1p2*gpp2*M4*Qd*Ql3 +           & 
&  54*g1p2*gpp2*M1*QHd*Ql3 + 54*g1p2*gpp2*M4*QHd*Ql3 + 90*AbsYe33*gpp2*M4*Ql3p2 +        & 
&  360*gpp4*M4*Qdp2*Ql3p2 + 360*gpp4*M4*QHdp2*Ql3p2 + 162*g1p2*gpp2*M1*Qd*Qq +           & 
&  162*g1p2*gpp2*M4*Qd*Qq + 18*g1p2*gpp2*M1*Qe1*Qq + 18*g1p2*gpp2*M4*Qe1*Qq +            & 
&  18*g1p2*gpp2*M1*Qe2*Qq + 18*g1p2*gpp2*M4*Qe2*Qq + 18*g1p2*gpp2*M1*Qe3*Qq +            & 
&  18*g1p2*gpp2*M4*Qe3*Qq - 180*g1p2*gpp2*M1*QHd*Qq - 180*g1p2*gpp2*M4*QHd*Qq +          & 
&  18*g1p2*gpp2*M1*QHu*Qq + 18*g1p2*gpp2*M4*QHu*Qq - 18*g1p2*gpp2*M1*Ql1*Qq -            & 
&  18*g1p2*gpp2*M4*Ql1*Qq - 18*g1p2*gpp2*M1*Ql2*Qq - 18*g1p2*gpp2*M4*Ql2*Qq -            & 
&  18*g1p2*gpp2*M1*Ql3*Qq - 18*g1p2*gpp2*M4*Ql3*Qq + 60*g1p2*gpp2*M1*Qqp2 +              & 
&  480*g3p2*gpp2*M3*Qqp2 + 60*g1p2*gpp2*M4*Qqp2 + 270*g2p2*gpp2*M4*Qqp2 + 480*g3p2*gpp2*M4*Qqp2 +& 
&  270*g2p2*gpp2*M2*Qqp2 + 4860*gpp4*M4*Qdp2*Qqp2 + 180*gpp4*M4*Qe1p2*Qqp2 +             & 
&  180*gpp4*M4*Qe2p2*Qqp2 + 180*gpp4*M4*Qe3p2*Qqp2 + 3600*gpp4*M4*QHdp2*Qqp2 +           & 
&  360*gpp4*M4*QHup2*Qqp2 + 360*gpp4*M4*Ql1p2*Qqp2 + 360*gpp4*M4*Ql2p2*Qqp2 +            & 
&  360*gpp4*M4*Ql3p2*Qqp2 + 3600*gpp4*M4*Qqp4 + 90*Abslam*gpp2*M4*Qsp2 + 180*gpp4*M4*Qdp2*Qsp2 +& 
&  180*gpp4*M4*QHdp2*Qsp2 + 180*gpp4*M4*Qqp2*Qsp2 - 216*g1p2*gpp2*M1*Qd*Qu -             & 
&  216*g1p2*gpp2*M4*Qd*Qu + 324*g1p2*gpp2*M1*QHd*Qu + 324*g1p2*gpp2*M4*QHd*Qu -          & 
&  108*g1p2*gpp2*M1*Qq*Qu - 108*g1p2*gpp2*M4*Qq*Qu + 1620*gpp4*M4*Qdp2*Qup2 +            & 
&  1620*gpp4*M4*QHdp2*Qup2 + 1620*gpp4*M4*Qqp2*Qup2 + 180*gpp4*M4*Qdp2*Qv1p2 +           & 
&  180*gpp4*M4*QHdp2*Qv1p2 + 180*gpp4*M4*Qqp2*Qv1p2 + 180*gpp4*M4*Qdp2*Qv2p2 +           & 
&  180*gpp4*M4*QHdp2*Qv2p2 + 180*gpp4*M4*Qqp2*Qv2p2 + 180*gpp4*M4*Qdp2*Qv3p2 +           & 
&  180*gpp4*M4*QHdp2*Qv3p2 + 180*gpp4*M4*Qqp2*Qv3p2 + 18*g1p2*TradjYdTd - 720*g3p2*TradjYdTd -& 
&  270*gpp2*Qdp2*TradjYdTd + 270*gpp2*QHdp2*TradjYdTd - 270*gpp2*Qqp2*TradjYdTd +        & 
&  135*Abslam*TradjYuTu - 18*g1p2*M1*TrYdadjYd + 720*g3p2*M3*TrYdadjYd + 270*gpp2*M4*Qdp2*TrYdadjYd -& 
&  270*gpp2*M4*QHdp2*TrYdadjYd + 270*gpp2*M4*Qqp2*TrYdadjYd + 810._dp*(TrYdadjYdTdadjYd) +& 
&  135._dp*(TrYdadjYuTuadjYd) + 135._dp*(TrYuadjYdTdadjYu) + 270*CYe11p2*Ye11*TYe11 +    & 
&  270*CYe22p2*Ye22*TYe22 + 270*CYe33p2*Ye33*TYe33 + 45*AbsYv33*Conjg(Ye33)*TYe33 -      & 
&  54*g1p2*Conjg(Ye33)*TYe33 - 90*gpp2*Qe3p2*Conjg(Ye33)*TYe33 + 90*gpp2*QHdp2*Conjg(Ye33)*TYe33 -& 
&  90*gpp2*Ql3p2*Conjg(Ye33)*TYe33 + 45*Abslam*Conjg(Yv11)*TYv11 + 9*Conjg(Ye11)*((5._dp*(AbsYv11) -& 
&  6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*TYe11 + Ye11*(6*g1p2*M1 +             & 
&  10*gpp2*M4*(Qe1p2 - QHdp2 + Ql1p2) + 5*Conjg(Yv11)*TYv11)) + 45*Abslam*Conjg(Yv22)*TYv22 +& 
&  9*Conjg(Ye22)*((5._dp*(AbsYv22) - 6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 +             & 
&  Ql2p2))*TYe22 + Ye22*(6*g1p2*M1 + 10*gpp2*M4*(Qe2p2 - QHdp2 + Ql2p2) + 5*Conjg(Yv22)*TYv22)) +& 
&  45*Abslam*Conjg(Yv33)*TYv33 + 45*AbsYe33*Conjg(Yv33)*TYv33 + 270*Clamp2*lam*Tlam +    & 
&  45*AbsYv11*Conjg(lam)*Tlam + 45*AbsYv22*Conjg(lam)*Tlam + 45*AbsYv33*Conjg(lam)*Tlam +& 
&  90*gpp2*QHdp2*Conjg(lam)*Tlam - 90*gpp2*QHup2*Conjg(lam)*Tlam - 90*gpp2*Qsp2*Conjg(lam)*Tlam +& 
&  135*TrYuadjYu*Conjg(lam)*Tlam))/45._dp

 
DTd = oo16pi2*( betaTd1 + oo16pi2 * betaTd2 ) 

 
Else 
DTd = oo16pi2* betaTd1 
End If 
 
 
Call Chop(DTd) 

!-------------------- 
! TYe11 
!-------------------- 
 
betaTYe111  = (Abslam + 12._dp*(AbsYe11) + AbsYe22 + AbsYe33 + AbsYv11 -              & 
&  9._dp*(g1p2)/5._dp - 3._dp*(g2p2) - 2*gpp2*Qe1p2 - 2*gpp2*QHdp2 - 2*gpp2*Ql1p2 +      & 
&  3._dp*(TrYdadjYd))*TYe11 + (2*Ye11*(9*g1p2*M1 + 15*g2p2*M2 + 10*gpp2*M4*Qe1p2 +       & 
&  10*gpp2*M4*QHdp2 + 10*gpp2*M4*Ql1p2 + 15._dp*(TradjYdTd) + 5*Conjg(Ye22)              & 
& *TYe22 + 5*Conjg(Ye33)*TYe33 + 5*Conjg(Yv11)*TYv11 + 5*Conjg(lam)*Tlam))/5._dp

 
 
If (TwoLoopRGE) Then 
betaTYe112 = (-540*g1p4*M1*Ye11 - 36*g1p2*g2p2*M1*Ye11 - 36*g1p2*g2p2*M2*Ye11 - 300*g2p4*M2*Ye11 - & 
&  144*g1p2*gpp2*M1*Qd*Qe1*Ye11 - 144*g1p2*gpp2*M4*Qd*Qe1*Ye11 - 144*g1p2*gpp2*M1*Qe1p2*Ye11 -& 
&  144*g1p2*gpp2*M4*Qe1p2*Ye11 - 720*gpp4*M4*Qdp2*Qe1p2*Ye11 - 240*gpp4*M4*Qe1p4*Ye11 -  & 
&  48*g1p2*gpp2*M1*Qe1*Qe2*Ye11 - 48*g1p2*gpp2*M4*Qe1*Qe2*Ye11 - 80*gpp4*M4*Qe1p2*Qe2p2*Ye11 -& 
&  48*g1p2*gpp2*M1*Qe1*Qe3*Ye11 - 48*g1p2*gpp2*M4*Qe1*Qe3*Ye11 - 80*gpp4*M4*Qe1p2*Qe3p2*Ye11 +& 
&  72*g1p2*gpp2*M1*Qd*QHd*Ye11 + 72*g1p2*gpp2*M4*Qd*QHd*Ye11 + 72*g1p2*gpp2*M1*Qe1*QHd*Ye11 +& 
&  72*g1p2*gpp2*M4*Qe1*QHd*Ye11 + 24*g1p2*gpp2*M1*Qe2*QHd*Ye11 + 24*g1p2*gpp2*M4*Qe2*QHd*Ye11 +& 
&  24*g1p2*gpp2*M1*Qe3*QHd*Ye11 + 24*g1p2*gpp2*M4*Qe3*QHd*Ye11 - 48*g1p2*gpp2*M1*QHdp2*Ye11 +& 
&  40*Abslam*gpp2*M4*QHdp2*Ye11 - 48*g1p2*gpp2*M4*QHdp2*Ye11 - 120*g2p2*gpp2*M4*QHdp2*Ye11 -& 
&  120*g2p2*gpp2*M2*QHdp2*Ye11 - 720*gpp4*M4*Qdp2*QHdp2*Ye11 - 240*gpp4*M4*Qe1p2*QHdp2*Ye11 -& 
&  80*gpp4*M4*Qe2p2*QHdp2*Ye11 - 80*gpp4*M4*Qe3p2*QHdp2*Ye11 - 320*gpp4*M4*QHdp4*Ye11 -  & 
&  48*g1p2*gpp2*M1*Qe1*QHu*Ye11 - 48*g1p2*gpp2*M4*Qe1*QHu*Ye11 + 24*g1p2*gpp2*M1*QHd*QHu*Ye11 +& 
&  24*g1p2*gpp2*M4*QHd*QHu*Ye11 - 40*Abslam*gpp2*M4*QHup2*Ye11 - 40*AbsYv11*gpp2*M4*QHup2*Ye11 -& 
&  160*gpp4*M4*Qe1p2*QHup2*Ye11 - 160*gpp4*M4*QHdp2*QHup2*Ye11 + 72*g1p2*gpp2*M1*Qd*Ql1*Ye11 +& 
&  72*g1p2*gpp2*M4*Qd*Ql1*Ye11 + 72*g1p2*gpp2*M1*Qe1*Ql1*Ye11 + 72*g1p2*gpp2*M4*Qe1*Ql1*Ye11 +& 
&  24*g1p2*gpp2*M1*Qe2*Ql1*Ye11 + 24*g1p2*gpp2*M4*Qe2*Ql1*Ye11 + 24*g1p2*gpp2*M1*Qe3*Ql1*Ye11 +& 
&  24*g1p2*gpp2*M4*Qe3*Ql1*Ye11 - 48*g1p2*gpp2*M1*QHd*Ql1*Ye11 - 48*g1p2*gpp2*M4*QHd*Ql1*Ye11 +& 
&  24*g1p2*gpp2*M1*QHu*Ql1*Ye11 + 24*g1p2*gpp2*M4*QHu*Ql1*Ye11 - 48*g1p2*gpp2*M1*Ql1p2*Ye11 +& 
&  40*AbsYv11*gpp2*M4*Ql1p2*Ye11 - 48*g1p2*gpp2*M4*Ql1p2*Ye11 - 120*g2p2*gpp2*M4*Ql1p2*Ye11 -& 
&  120*g2p2*gpp2*M2*Ql1p2*Ye11 - 720*gpp4*M4*Qdp2*Ql1p2*Ye11 - 240*gpp4*M4*Qe1p2*Ql1p2*Ye11 -& 
&  80*gpp4*M4*Qe2p2*Ql1p2*Ye11 - 80*gpp4*M4*Qe3p2*Ql1p2*Ye11 - 320*gpp4*M4*QHdp2*Ql1p2*Ye11 -& 
&  160*gpp4*M4*QHup2*Ql1p2*Ye11 - 320*gpp4*M4*Ql1p4*Ye11 + 48*g1p2*gpp2*M1*Qe1*Ql2*Ye11 +& 
&  48*g1p2*gpp2*M4*Qe1*Ql2*Ye11 - 24*g1p2*gpp2*M1*QHd*Ql2*Ye11 - 24*g1p2*gpp2*M4*QHd*Ql2*Ye11 -& 
&  24*g1p2*gpp2*M1*Ql1*Ql2*Ye11 - 24*g1p2*gpp2*M4*Ql1*Ql2*Ye11 - 160*gpp4*M4*Qe1p2*Ql2p2*Ye11 -& 
&  160*gpp4*M4*QHdp2*Ql2p2*Ye11 - 160*gpp4*M4*Ql1p2*Ql2p2*Ye11 + 48*g1p2*gpp2*M1*Qe1*Ql3*Ye11 +& 
&  48*g1p2*gpp2*M4*Qe1*Ql3*Ye11 - 24*g1p2*gpp2*M1*QHd*Ql3*Ye11 - 24*g1p2*gpp2*M4*QHd*Ql3*Ye11 -& 
&  24*g1p2*gpp2*M1*Ql1*Ql3*Ye11 - 24*g1p2*gpp2*M4*Ql1*Ql3*Ye11 - 160*gpp4*M4*Qe1p2*Ql3p2*Ye11 -& 
&  160*gpp4*M4*QHdp2*Ql3p2*Ye11 - 160*gpp4*M4*Ql1p2*Ql3p2*Ye11 - 144*g1p2*gpp2*M1*Qe1*Qq*Ye11 -& 
&  144*g1p2*gpp2*M4*Qe1*Qq*Ye11 + 72*g1p2*gpp2*M1*QHd*Qq*Ye11 + 72*g1p2*gpp2*M4*QHd*Qq*Ye11 +& 
&  72*g1p2*gpp2*M1*Ql1*Qq*Ye11 + 72*g1p2*gpp2*M4*Ql1*Qq*Ye11 - 1440*gpp4*M4*Qe1p2*Qqp2*Ye11 -& 
&  1440*gpp4*M4*QHdp2*Qqp2*Ye11 - 1440*gpp4*M4*Ql1p2*Qqp2*Ye11 - 40*Abslam*gpp2*M4*Qsp2*Ye11 -& 
&  80*gpp4*M4*Qe1p2*Qsp2*Ye11 - 80*gpp4*M4*QHdp2*Qsp2*Ye11 - 80*gpp4*M4*Ql1p2*Qsp2*Ye11 +& 
&  288*g1p2*gpp2*M1*Qe1*Qu*Ye11 + 288*g1p2*gpp2*M4*Qe1*Qu*Ye11 - 144*g1p2*gpp2*M1*QHd*Qu*Ye11 -& 
&  144*g1p2*gpp2*M4*QHd*Qu*Ye11 - 144*g1p2*gpp2*M1*Ql1*Qu*Ye11 - 144*g1p2*gpp2*M4*Ql1*Qu*Ye11 -& 
&  720*gpp4*M4*Qe1p2*Qup2*Ye11 - 720*gpp4*M4*QHdp2*Qup2*Ye11 - 720*gpp4*M4*Ql1p2*Qup2*Ye11 -& 
&  40*AbsYv11*gpp2*M4*Qv1p2*Ye11 - 80*gpp4*M4*Qe1p2*Qv1p2*Ye11 - 80*gpp4*M4*QHdp2*Qv1p2*Ye11 -& 
&  80*gpp4*M4*Ql1p2*Qv1p2*Ye11 - 80*gpp4*M4*Qe1p2*Qv2p2*Ye11 - 80*gpp4*M4*QHdp2*Qv2p2*Ye11 -& 
&  80*gpp4*M4*Ql1p2*Qv2p2*Ye11 - 80*gpp4*M4*Qe1p2*Qv3p2*Ye11 - 80*gpp4*M4*QHdp2*Qv3p2*Ye11 -& 
&  80*gpp4*M4*Ql1p2*Qv3p2*Ye11 - 8*g1p2*TradjYdTd*Ye11 + 320*g3p2*TradjYdTd*Ye11 +       & 
&  120*gpp2*Qdp2*TradjYdTd*Ye11 - 120*gpp2*QHdp2*TradjYdTd*Ye11 + 120*gpp2*Qqp2*TradjYdTd*Ye11 -& 
&  60*Abslam*TradjYuTu*Ye11 - 60*AbsYv11*TradjYuTu*Ye11 + 8*g1p2*M1*TrYdadjYd*Ye11 -     & 
&  320*g3p2*M3*TrYdadjYd*Ye11 - 120*gpp2*M4*Qdp2*TrYdadjYd*Ye11 + 120*gpp2*M4*QHdp2*TrYdadjYd*Ye11 -& 
&  120*gpp2*M4*Qqp2*TrYdadjYd*Ye11 - 360*TrYdadjYdTdadjYd*Ye11 - 60*TrYdadjYuTuadjYd*Ye11 -& 
&  60*TrYuadjYdTdadjYu*Ye11 - 20*Abslam*AbsYv11*TYe11 - 10*Abslam*AbsYv22*TYe11 -        & 
&  10*AbsYv11*AbsYv22*TYe11 - 10*Abslam*AbsYv33*TYe11 - 10*AbsYv11*AbsYv33*TYe11 +       & 
&  135*g1p4*TYe11 + 18*g1p2*g2p2*TYe11 + 75*g2p4*TYe11 - 30*Clamp2*lamp2*TYe11 +         & 
&  72*g1p2*gpp2*Qd*Qe1*TYe11 + 72*g1p2*gpp2*Qe1p2*TYe11 + 180*gpp4*Qdp2*Qe1p2*TYe11 +    & 
&  60*gpp4*Qe1p4*TYe11 + 24*g1p2*gpp2*Qe1*Qe2*TYe11 + 20*gpp4*Qe1p2*Qe2p2*TYe11 +        & 
&  24*g1p2*gpp2*Qe1*Qe3*TYe11 + 20*gpp4*Qe1p2*Qe3p2*TYe11 - 36*g1p2*gpp2*Qd*QHd*TYe11 -  & 
&  36*g1p2*gpp2*Qe1*QHd*TYe11 - 12*g1p2*gpp2*Qe2*QHd*TYe11 - 12*g1p2*gpp2*Qe3*QHd*TYe11 -& 
&  20*Abslam*gpp2*QHdp2*TYe11 + 24*g1p2*gpp2*QHdp2*TYe11 + 60*g2p2*gpp2*QHdp2*TYe11 +    & 
&  180*gpp4*Qdp2*QHdp2*TYe11 + 60*gpp4*Qe1p2*QHdp2*TYe11 + 20*gpp4*Qe2p2*QHdp2*TYe11 +   & 
&  20*gpp4*Qe3p2*QHdp2*TYe11 + 80*gpp4*QHdp4*TYe11 + 24*g1p2*gpp2*Qe1*QHu*TYe11 -        & 
&  12*g1p2*gpp2*QHd*QHu*TYe11 + 20*Abslam*gpp2*QHup2*TYe11 + 20*AbsYv11*gpp2*QHup2*TYe11 +& 
&  40*gpp4*Qe1p2*QHup2*TYe11 + 40*gpp4*QHdp2*QHup2*TYe11 - 36*g1p2*gpp2*Qd*Ql1*TYe11 -   & 
&  36*g1p2*gpp2*Qe1*Ql1*TYe11 - 12*g1p2*gpp2*Qe2*Ql1*TYe11 - 12*g1p2*gpp2*Qe3*Ql1*TYe11 +& 
&  24*g1p2*gpp2*QHd*Ql1*TYe11 - 12*g1p2*gpp2*QHu*Ql1*TYe11 - 20*AbsYv11*gpp2*Ql1p2*TYe11 +& 
&  24*g1p2*gpp2*Ql1p2*TYe11 + 60*g2p2*gpp2*Ql1p2*TYe11 + 180*gpp4*Qdp2*Ql1p2*TYe11 +     & 
&  60*gpp4*Qe1p2*Ql1p2*TYe11 + 20*gpp4*Qe2p2*Ql1p2*TYe11 + 20*gpp4*Qe3p2*Ql1p2*TYe11 +   & 
&  80*gpp4*QHdp2*Ql1p2*TYe11 + 40*gpp4*QHup2*Ql1p2*TYe11 + 80*gpp4*Ql1p4*TYe11 -         & 
&  24*g1p2*gpp2*Qe1*Ql2*TYe11 + 12*g1p2*gpp2*QHd*Ql2*TYe11 + 12*g1p2*gpp2*Ql1*Ql2*TYe11 +& 
&  40*gpp4*Qe1p2*Ql2p2*TYe11 + 40*gpp4*QHdp2*Ql2p2*TYe11 + 40*gpp4*Ql1p2*Ql2p2*TYe11 -   & 
&  24*g1p2*gpp2*Qe1*Ql3*TYe11 + 12*g1p2*gpp2*QHd*Ql3*TYe11 + 12*g1p2*gpp2*Ql1*Ql3*TYe11 +& 
&  40*gpp4*Qe1p2*Ql3p2*TYe11 + 40*gpp4*QHdp2*Ql3p2*TYe11 + 40*gpp4*Ql1p2*Ql3p2*TYe11 +   & 
&  72*g1p2*gpp2*Qe1*Qq*TYe11 - 36*g1p2*gpp2*QHd*Qq*TYe11 - 36*g1p2*gpp2*Ql1*Qq*TYe11 +   & 
&  360*gpp4*Qe1p2*Qqp2*TYe11 + 360*gpp4*QHdp2*Qqp2*TYe11 + 360*gpp4*Ql1p2*Qqp2*TYe11 +   & 
&  20*Abslam*gpp2*Qsp2*TYe11 + 20*gpp4*Qe1p2*Qsp2*TYe11 + 20*gpp4*QHdp2*Qsp2*TYe11 +     & 
&  20*gpp4*Ql1p2*Qsp2*TYe11 - 144*g1p2*gpp2*Qe1*Qu*TYe11 + 72*g1p2*gpp2*QHd*Qu*TYe11 +   & 
&  72*g1p2*gpp2*Ql1*Qu*TYe11 + 180*gpp4*Qe1p2*Qup2*TYe11 + 180*gpp4*QHdp2*Qup2*TYe11 +   & 
&  180*gpp4*Ql1p2*Qup2*TYe11 + 20*AbsYv11*gpp2*Qv1p2*TYe11 + 20*gpp4*Qe1p2*Qv1p2*TYe11 + & 
&  20*gpp4*QHdp2*Qv1p2*TYe11 + 20*gpp4*Ql1p2*Qv1p2*TYe11 + 20*gpp4*Qe1p2*Qv2p2*TYe11 +   & 
&  20*gpp4*QHdp2*Qv2p2*TYe11 + 20*gpp4*Ql1p2*Qv2p2*TYe11 + 20*gpp4*Qe1p2*Qv3p2*TYe11 +   & 
&  20*gpp4*QHdp2*Qv3p2*TYe11 + 20*gpp4*Ql1p2*Qv3p2*TYe11 - 4*g1p2*TrYdadjYd*TYe11 +      & 
&  160*g3p2*TrYdadjYd*TYe11 + 60*gpp2*Qdp2*TrYdadjYd*TYe11 - 60*gpp2*QHdp2*TrYdadjYd*TYe11 +& 
&  60*gpp2*Qqp2*TrYdadjYd*TYe11 - 90*TrYdadjYdYdadjYd*TYe11 - 30*TrYdadjYuYuadjYd*TYe11 -& 
&  30*Abslam*TrYuadjYu*TYe11 - 30*AbsYv11*TrYuadjYu*TYe11 - 500*CYe11p2*Ye11p2*TYe11 -   & 
&  30*CYv11p2*Yv11p2*TYe11 - 30*CYe22p2*Ye22*(Ye22*TYe11 + 4*Ye11*TYe22) -               & 
&  30*CYe33p2*Ye33*(Ye33*TYe11 + 4*Ye11*TYe33) - 120*CYv11p2*Ye11*Yv11*TYv11 -           & 
&  40*Abslam*Ye11*Conjg(Yv11)*TYv11 - 20*AbsYv22*Ye11*Conjg(Yv11)*TYv11 - 20*AbsYv33*Ye11*Conjg(Yv11)*TYv11 +& 
&  40*gpp2*QHup2*Ye11*Conjg(Yv11)*TYv11 - 40*gpp2*Ql1p2*Ye11*Conjg(Yv11)*TYv11 +         & 
&  40*gpp2*Qv1p2*Ye11*Conjg(Yv11)*TYv11 - 60*TrYuadjYu*Ye11*Conjg(Yv11)*TYv11 -          & 
&  20*Abslam*Ye11*Conjg(Yv22)*TYv22 - 20*AbsYv11*Ye11*Conjg(Yv22)*TYv22 - 2*Conjg(Ye22)*((5._dp*(AbsYv22) -& 
&  6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*Ye22*TYe11 + 2*Ye11*((5._dp*(AbsYv22) -& 
&  6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*TYe22 + Ye22*(6*g1p2*M1 +             & 
&  10*gpp2*M4*(Qe2p2 - QHdp2 + Ql2p2) + 5*Conjg(Yv22)*TYv22))) - 20*Abslam*Ye11*Conjg(Yv33)*TYv33 -& 
&  20*AbsYv11*Ye11*Conjg(Yv33)*TYv33 - 2*Conjg(Ye33)*((5._dp*(AbsYv33) - 6._dp*(g1p2) -  & 
&  10*gpp2*(Qe3p2 - QHdp2 + Ql3p2))*Ye33*TYe11 + 2*Ye11*((5._dp*(AbsYv33) -              & 
&  6._dp*(g1p2) - 10*gpp2*(Qe3p2 - QHdp2 + Ql3p2))*TYe33 + Ye33*(6*g1p2*M1 +             & 
&  10*gpp2*M4*(Qe3p2 - QHdp2 + Ql3p2) + 5*Conjg(Yv33)*TYv33))) - 120*Clamp2*Ye11*lam*Tlam -& 
&  40*AbsYv11*Ye11*Conjg(lam)*Tlam - 20*AbsYv22*Ye11*Conjg(lam)*Tlam - 20*AbsYv33*Ye11*Conjg(lam)*Tlam -& 
&  40*gpp2*QHdp2*Ye11*Conjg(lam)*Tlam + 40*gpp2*QHup2*Ye11*Conjg(lam)*Tlam +             & 
&  40*gpp2*Qsp2*Ye11*Conjg(lam)*Tlam - 60*TrYuadjYu*Ye11*Conjg(lam)*Tlam -               & 
&  2*AbsYe11*((45._dp*(Abslam) + 45._dp*(AbsYe22) + 45._dp*(AbsYe33) + 45._dp*(AbsYv11) -& 
&  18._dp*(g1p2) - 90._dp*(g2p2) - 60*gpp2*QHdp2 - 60*gpp2*Ql1p2 + 135._dp*(TrYdadjYd))*TYe11 +& 
&  2*Ye11*(6*g1p2*M1 + 30*g2p2*M2 + 20*gpp2*M4*QHdp2 + 20*gpp2*M4*Ql1p2 + 45._dp*(TradjYdTd) +& 
&  15*Conjg(Ye22)*TYe22 + 15*Conjg(Ye33)*TYe33 + 15*Conjg(Yv11)*TYv11 + 15*Conjg(lam)*Tlam)))/10._dp

 
DTYe11 = oo16pi2*( betaTYe111 + oo16pi2 * betaTYe112 ) 

 
Else 
DTYe11 = oo16pi2* betaTYe111 
End If 
 
 
Call Chop(DTYe11) 

!-------------------- 
! TYe22 
!-------------------- 
 
betaTYe221  = (Abslam + 12._dp*(AbsYe22) + AbsYe33 + AbsYv22 - 9._dp*(g1p2)           & 
& /5._dp - 3._dp*(g2p2) - 2*gpp2*Qe2p2 - 2*gpp2*QHdp2 - 2*gpp2*Ql2p2 + 3._dp*(TrYdadjYd))& 
& *TYe22 + Conjg(Ye11)*(2*Ye22*TYe11 + Ye11*TYe22) + (2*Ye22*(9*g1p2*M1 + 15*g2p2*M2 +   & 
&  10*gpp2*M4*Qe2p2 + 10*gpp2*M4*QHdp2 + 10*gpp2*M4*Ql2p2 + 15._dp*(TradjYdTd)           & 
&  + 5*Conjg(Ye33)*TYe33 + 5*Conjg(Yv22)*TYv22 + 5*Conjg(lam)*Tlam))/5._dp

 
 
If (TwoLoopRGE) Then 
betaTYe222 = (-24*AbsYe33*g1p2*M1*Ye22 - 540*g1p4*M1*Ye22 - 36*g1p2*g2p2*M1*Ye22 - 36*g1p2*g2p2*M2*Ye22 -& 
&  300*g2p4*M2*Ye22 - 144*g1p2*gpp2*M1*Qd*Qe2*Ye22 - 144*g1p2*gpp2*M4*Qd*Qe2*Ye22 -      & 
&  48*g1p2*gpp2*M1*Qe1*Qe2*Ye22 - 48*g1p2*gpp2*M4*Qe1*Qe2*Ye22 - 144*g1p2*gpp2*M1*Qe2p2*Ye22 -& 
&  144*g1p2*gpp2*M4*Qe2p2*Ye22 - 720*gpp4*M4*Qdp2*Qe2p2*Ye22 - 80*gpp4*M4*Qe1p2*Qe2p2*Ye22 -& 
&  240*gpp4*M4*Qe2p4*Ye22 - 48*g1p2*gpp2*M1*Qe2*Qe3*Ye22 - 48*g1p2*gpp2*M4*Qe2*Qe3*Ye22 -& 
&  40*AbsYe33*gpp2*M4*Qe3p2*Ye22 - 80*gpp4*M4*Qe2p2*Qe3p2*Ye22 + 72*g1p2*gpp2*M1*Qd*QHd*Ye22 +& 
&  72*g1p2*gpp2*M4*Qd*QHd*Ye22 + 24*g1p2*gpp2*M1*Qe1*QHd*Ye22 + 24*g1p2*gpp2*M4*Qe1*QHd*Ye22 +& 
&  72*g1p2*gpp2*M1*Qe2*QHd*Ye22 + 72*g1p2*gpp2*M4*Qe2*QHd*Ye22 + 24*g1p2*gpp2*M1*Qe3*QHd*Ye22 +& 
&  24*g1p2*gpp2*M4*Qe3*QHd*Ye22 - 48*g1p2*gpp2*M1*QHdp2*Ye22 + 40*Abslam*gpp2*M4*QHdp2*Ye22 +& 
&  40*AbsYe33*gpp2*M4*QHdp2*Ye22 - 48*g1p2*gpp2*M4*QHdp2*Ye22 - 120*g2p2*gpp2*M4*QHdp2*Ye22 -& 
&  120*g2p2*gpp2*M2*QHdp2*Ye22 - 720*gpp4*M4*Qdp2*QHdp2*Ye22 - 80*gpp4*M4*Qe1p2*QHdp2*Ye22 -& 
&  240*gpp4*M4*Qe2p2*QHdp2*Ye22 - 80*gpp4*M4*Qe3p2*QHdp2*Ye22 - 320*gpp4*M4*QHdp4*Ye22 - & 
&  48*g1p2*gpp2*M1*Qe2*QHu*Ye22 - 48*g1p2*gpp2*M4*Qe2*QHu*Ye22 + 24*g1p2*gpp2*M1*QHd*QHu*Ye22 +& 
&  24*g1p2*gpp2*M4*QHd*QHu*Ye22 - 40*Abslam*gpp2*M4*QHup2*Ye22 - 40*AbsYv22*gpp2*M4*QHup2*Ye22 -& 
&  160*gpp4*M4*Qe2p2*QHup2*Ye22 - 160*gpp4*M4*QHdp2*QHup2*Ye22 + 48*g1p2*gpp2*M1*Qe2*Ql1*Ye22 +& 
&  48*g1p2*gpp2*M4*Qe2*Ql1*Ye22 - 24*g1p2*gpp2*M1*QHd*Ql1*Ye22 - 24*g1p2*gpp2*M4*QHd*Ql1*Ye22 -& 
&  160*gpp4*M4*Qe2p2*Ql1p2*Ye22 - 160*gpp4*M4*QHdp2*Ql1p2*Ye22 + 72*g1p2*gpp2*M1*Qd*Ql2*Ye22 +& 
&  72*g1p2*gpp2*M4*Qd*Ql2*Ye22 + 24*g1p2*gpp2*M1*Qe1*Ql2*Ye22 + 24*g1p2*gpp2*M4*Qe1*Ql2*Ye22 +& 
&  72*g1p2*gpp2*M1*Qe2*Ql2*Ye22 + 72*g1p2*gpp2*M4*Qe2*Ql2*Ye22 + 24*g1p2*gpp2*M1*Qe3*Ql2*Ye22 +& 
&  24*g1p2*gpp2*M4*Qe3*Ql2*Ye22 - 48*g1p2*gpp2*M1*QHd*Ql2*Ye22 - 48*g1p2*gpp2*M4*QHd*Ql2*Ye22 +& 
&  24*g1p2*gpp2*M1*QHu*Ql2*Ye22 + 24*g1p2*gpp2*M4*QHu*Ql2*Ye22 - 24*g1p2*gpp2*M1*Ql1*Ql2*Ye22 -& 
&  24*g1p2*gpp2*M4*Ql1*Ql2*Ye22 - 48*g1p2*gpp2*M1*Ql2p2*Ye22 + 40*AbsYv22*gpp2*M4*Ql2p2*Ye22 -& 
&  48*g1p2*gpp2*M4*Ql2p2*Ye22 - 120*g2p2*gpp2*M4*Ql2p2*Ye22 - 120*g2p2*gpp2*M2*Ql2p2*Ye22 -& 
&  720*gpp4*M4*Qdp2*Ql2p2*Ye22 - 80*gpp4*M4*Qe1p2*Ql2p2*Ye22 - 240*gpp4*M4*Qe2p2*Ql2p2*Ye22 -& 
&  80*gpp4*M4*Qe3p2*Ql2p2*Ye22 - 320*gpp4*M4*QHdp2*Ql2p2*Ye22 - 160*gpp4*M4*QHup2*Ql2p2*Ye22 -& 
&  160*gpp4*M4*Ql1p2*Ql2p2*Ye22 - 320*gpp4*M4*Ql2p4*Ye22 + 48*g1p2*gpp2*M1*Qe2*Ql3*Ye22 +& 
&  48*g1p2*gpp2*M4*Qe2*Ql3*Ye22 - 24*g1p2*gpp2*M1*QHd*Ql3*Ye22 - 24*g1p2*gpp2*M4*QHd*Ql3*Ye22 -& 
&  24*g1p2*gpp2*M1*Ql2*Ql3*Ye22 - 24*g1p2*gpp2*M4*Ql2*Ql3*Ye22 - 40*AbsYe33*gpp2*M4*Ql3p2*Ye22 -& 
&  160*gpp4*M4*Qe2p2*Ql3p2*Ye22 - 160*gpp4*M4*QHdp2*Ql3p2*Ye22 - 160*gpp4*M4*Ql2p2*Ql3p2*Ye22 -& 
&  144*g1p2*gpp2*M1*Qe2*Qq*Ye22 - 144*g1p2*gpp2*M4*Qe2*Qq*Ye22 + 72*g1p2*gpp2*M1*QHd*Qq*Ye22 +& 
&  72*g1p2*gpp2*M4*QHd*Qq*Ye22 + 72*g1p2*gpp2*M1*Ql2*Qq*Ye22 + 72*g1p2*gpp2*M4*Ql2*Qq*Ye22 -& 
&  1440*gpp4*M4*Qe2p2*Qqp2*Ye22 - 1440*gpp4*M4*QHdp2*Qqp2*Ye22 - 1440*gpp4*M4*Ql2p2*Qqp2*Ye22 -& 
&  40*Abslam*gpp2*M4*Qsp2*Ye22 - 80*gpp4*M4*Qe2p2*Qsp2*Ye22 - 80*gpp4*M4*QHdp2*Qsp2*Ye22 -& 
&  80*gpp4*M4*Ql2p2*Qsp2*Ye22 + 288*g1p2*gpp2*M1*Qe2*Qu*Ye22 + 288*g1p2*gpp2*M4*Qe2*Qu*Ye22 -& 
&  144*g1p2*gpp2*M1*QHd*Qu*Ye22 - 144*g1p2*gpp2*M4*QHd*Qu*Ye22 - 144*g1p2*gpp2*M1*Ql2*Qu*Ye22 -& 
&  144*g1p2*gpp2*M4*Ql2*Qu*Ye22 - 720*gpp4*M4*Qe2p2*Qup2*Ye22 - 720*gpp4*M4*QHdp2*Qup2*Ye22 -& 
&  720*gpp4*M4*Ql2p2*Qup2*Ye22 - 80*gpp4*M4*Qe2p2*Qv1p2*Ye22 - 80*gpp4*M4*QHdp2*Qv1p2*Ye22 -& 
&  80*gpp4*M4*Ql2p2*Qv1p2*Ye22 - 40*AbsYv22*gpp2*M4*Qv2p2*Ye22 - 80*gpp4*M4*Qe2p2*Qv2p2*Ye22 -& 
&  80*gpp4*M4*QHdp2*Qv2p2*Ye22 - 80*gpp4*M4*Ql2p2*Qv2p2*Ye22 - 80*gpp4*M4*Qe2p2*Qv3p2*Ye22 -& 
&  80*gpp4*M4*QHdp2*Qv3p2*Ye22 - 80*gpp4*M4*Ql2p2*Qv3p2*Ye22 - 8*g1p2*TradjYdTd*Ye22 +   & 
&  320*g3p2*TradjYdTd*Ye22 + 120*gpp2*Qdp2*TradjYdTd*Ye22 - 120*gpp2*QHdp2*TradjYdTd*Ye22 +& 
&  120*gpp2*Qqp2*TradjYdTd*Ye22 - 60*Abslam*TradjYuTu*Ye22 - 60*AbsYv22*TradjYuTu*Ye22 + & 
&  8*g1p2*M1*TrYdadjYd*Ye22 - 320*g3p2*M3*TrYdadjYd*Ye22 - 120*gpp2*M4*Qdp2*TrYdadjYd*Ye22 +& 
&  120*gpp2*M4*QHdp2*TrYdadjYd*Ye22 - 120*gpp2*M4*Qqp2*TrYdadjYd*Ye22 - 360*TrYdadjYdTdadjYd*Ye22 -& 
&  60*TrYdadjYuTuadjYd*Ye22 - 60*TrYuadjYdTdadjYu*Ye22 - 10*Abslam*AbsYv11*TYe22 -       & 
&  20*Abslam*AbsYv22*TYe22 - 10*AbsYv11*AbsYv22*TYe22 - 10*Abslam*AbsYv33*TYe22 -        & 
&  10*AbsYe33*AbsYv33*TYe22 - 10*AbsYv22*AbsYv33*TYe22 + 12*AbsYe33*g1p2*TYe22 +         & 
&  135*g1p4*TYe22 + 18*g1p2*g2p2*TYe22 + 75*g2p4*TYe22 - 30*Clamp2*lamp2*TYe22 +         & 
&  72*g1p2*gpp2*Qd*Qe2*TYe22 + 24*g1p2*gpp2*Qe1*Qe2*TYe22 + 72*g1p2*gpp2*Qe2p2*TYe22 +   & 
&  180*gpp4*Qdp2*Qe2p2*TYe22 + 20*gpp4*Qe1p2*Qe2p2*TYe22 + 60*gpp4*Qe2p4*TYe22 +         & 
&  24*g1p2*gpp2*Qe2*Qe3*TYe22 + 20*AbsYe33*gpp2*Qe3p2*TYe22 + 20*gpp4*Qe2p2*Qe3p2*TYe22 -& 
&  36*g1p2*gpp2*Qd*QHd*TYe22 - 12*g1p2*gpp2*Qe1*QHd*TYe22 - 36*g1p2*gpp2*Qe2*QHd*TYe22 - & 
&  12*g1p2*gpp2*Qe3*QHd*TYe22 - 20*Abslam*gpp2*QHdp2*TYe22 - 20*AbsYe33*gpp2*QHdp2*TYe22 +& 
&  24*g1p2*gpp2*QHdp2*TYe22 + 60*g2p2*gpp2*QHdp2*TYe22 + 180*gpp4*Qdp2*QHdp2*TYe22 +     & 
&  20*gpp4*Qe1p2*QHdp2*TYe22 + 60*gpp4*Qe2p2*QHdp2*TYe22 + 20*gpp4*Qe3p2*QHdp2*TYe22 +   & 
&  80*gpp4*QHdp4*TYe22 + 24*g1p2*gpp2*Qe2*QHu*TYe22 - 12*g1p2*gpp2*QHd*QHu*TYe22 +       & 
&  20*Abslam*gpp2*QHup2*TYe22 + 20*AbsYv22*gpp2*QHup2*TYe22 + 40*gpp4*Qe2p2*QHup2*TYe22 +& 
&  40*gpp4*QHdp2*QHup2*TYe22 - 24*g1p2*gpp2*Qe2*Ql1*TYe22 + 12*g1p2*gpp2*QHd*Ql1*TYe22 + & 
&  40*gpp4*Qe2p2*Ql1p2*TYe22 + 40*gpp4*QHdp2*Ql1p2*TYe22 - 36*g1p2*gpp2*Qd*Ql2*TYe22 -   & 
&  12*g1p2*gpp2*Qe1*Ql2*TYe22 - 36*g1p2*gpp2*Qe2*Ql2*TYe22 - 12*g1p2*gpp2*Qe3*Ql2*TYe22 +& 
&  24*g1p2*gpp2*QHd*Ql2*TYe22 - 12*g1p2*gpp2*QHu*Ql2*TYe22 + 12*g1p2*gpp2*Ql1*Ql2*TYe22 -& 
&  20*AbsYv22*gpp2*Ql2p2*TYe22 + 24*g1p2*gpp2*Ql2p2*TYe22 + 60*g2p2*gpp2*Ql2p2*TYe22 +   & 
&  180*gpp4*Qdp2*Ql2p2*TYe22 + 20*gpp4*Qe1p2*Ql2p2*TYe22 + 60*gpp4*Qe2p2*Ql2p2*TYe22 +   & 
&  20*gpp4*Qe3p2*Ql2p2*TYe22 + 80*gpp4*QHdp2*Ql2p2*TYe22 + 40*gpp4*QHup2*Ql2p2*TYe22 +   & 
&  40*gpp4*Ql1p2*Ql2p2*TYe22 + 80*gpp4*Ql2p4*TYe22 - 24*g1p2*gpp2*Qe2*Ql3*TYe22 +        & 
&  12*g1p2*gpp2*QHd*Ql3*TYe22 + 12*g1p2*gpp2*Ql2*Ql3*TYe22 + 20*AbsYe33*gpp2*Ql3p2*TYe22 +& 
&  40*gpp4*Qe2p2*Ql3p2*TYe22 + 40*gpp4*QHdp2*Ql3p2*TYe22 + 40*gpp4*Ql2p2*Ql3p2*TYe22 +   & 
&  72*g1p2*gpp2*Qe2*Qq*TYe22 - 36*g1p2*gpp2*QHd*Qq*TYe22 - 36*g1p2*gpp2*Ql2*Qq*TYe22 +   & 
&  360*gpp4*Qe2p2*Qqp2*TYe22 + 360*gpp4*QHdp2*Qqp2*TYe22 + 360*gpp4*Ql2p2*Qqp2*TYe22 +   & 
&  20*Abslam*gpp2*Qsp2*TYe22 + 20*gpp4*Qe2p2*Qsp2*TYe22 + 20*gpp4*QHdp2*Qsp2*TYe22 +     & 
&  20*gpp4*Ql2p2*Qsp2*TYe22 - 144*g1p2*gpp2*Qe2*Qu*TYe22 + 72*g1p2*gpp2*QHd*Qu*TYe22 +   & 
&  72*g1p2*gpp2*Ql2*Qu*TYe22 + 180*gpp4*Qe2p2*Qup2*TYe22 + 180*gpp4*QHdp2*Qup2*TYe22 +   & 
&  180*gpp4*Ql2p2*Qup2*TYe22 + 20*gpp4*Qe2p2*Qv1p2*TYe22 + 20*gpp4*QHdp2*Qv1p2*TYe22 +   & 
&  20*gpp4*Ql2p2*Qv1p2*TYe22 + 20*AbsYv22*gpp2*Qv2p2*TYe22 + 20*gpp4*Qe2p2*Qv2p2*TYe22 + & 
&  20*gpp4*QHdp2*Qv2p2*TYe22 + 20*gpp4*Ql2p2*Qv2p2*TYe22 + 20*gpp4*Qe2p2*Qv3p2*TYe22 +   & 
&  20*gpp4*QHdp2*Qv3p2*TYe22 + 20*gpp4*Ql2p2*Qv3p2*TYe22 - 4*g1p2*TrYdadjYd*TYe22 +      & 
&  160*g3p2*TrYdadjYd*TYe22 + 60*gpp2*Qdp2*TrYdadjYd*TYe22 - 60*gpp2*QHdp2*TrYdadjYd*TYe22 +& 
&  60*gpp2*Qqp2*TrYdadjYd*TYe22 - 90*TrYdadjYdYdadjYd*TYe22 - 30*TrYdadjYuYuadjYd*TYe22 -& 
&  30*Abslam*TrYuadjYu*TYe22 - 30*AbsYv22*TrYuadjYu*TYe22 - 500*CYe22p2*Ye22p2*TYe22 -   & 
&  30*CYe33p2*Ye33p2*TYe22 - 30*CYv22p2*Yv22p2*TYe22 - 30*CYe11p2*Ye11*(4*Ye22*TYe11 +   & 
&  Ye11*TYe22) - 120*CYe33p2*Ye22*Ye33*TYe33 - 20*AbsYv33*Ye22*Conjg(Ye33)*TYe33 +       & 
&  24*g1p2*Ye22*Conjg(Ye33)*TYe33 + 40*gpp2*Qe3p2*Ye22*Conjg(Ye33)*TYe33 -               & 
&  40*gpp2*QHdp2*Ye22*Conjg(Ye33)*TYe33 + 40*gpp2*Ql3p2*Ye22*Conjg(Ye33)*TYe33 -         & 
&  20*Abslam*Ye22*Conjg(Yv11)*TYv11 - 20*AbsYv22*Ye22*Conjg(Yv11)*TYv11 - 2*Conjg(Ye11)*(2*(15._dp*(AbsYe22) +& 
&  5._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*Ye22*TYe11 +        & 
&  (45._dp*(AbsYe22) + 5._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 +         & 
&  Ql1p2))*Ye11*TYe22 + 2*Ye11*Ye22*(6*g1p2*M1 + 10*gpp2*M4*(Qe1p2 - QHdp2 +             & 
&  Ql1p2) + 5*Conjg(Yv11)*TYv11)) - 120*CYv22p2*Ye22*Yv22*TYv22 - 40*Abslam*Ye22*Conjg(Yv22)*TYv22 -& 
&  20*AbsYv11*Ye22*Conjg(Yv22)*TYv22 - 20*AbsYv33*Ye22*Conjg(Yv22)*TYv22 +               & 
&  40*gpp2*QHup2*Ye22*Conjg(Yv22)*TYv22 - 40*gpp2*Ql2p2*Ye22*Conjg(Yv22)*TYv22 +         & 
&  40*gpp2*Qv2p2*Ye22*Conjg(Yv22)*TYv22 - 60*TrYuadjYu*Ye22*Conjg(Yv22)*TYv22 -          & 
&  20*Abslam*Ye22*Conjg(Yv33)*TYv33 - 20*AbsYe33*Ye22*Conjg(Yv33)*TYv33 - 20*AbsYv22*Ye22*Conjg(Yv33)*TYv33 -& 
&  120*Clamp2*Ye22*lam*Tlam - 20*AbsYv11*Ye22*Conjg(lam)*Tlam - 40*AbsYv22*Ye22*Conjg(lam)*Tlam -& 
&  20*AbsYv33*Ye22*Conjg(lam)*Tlam - 40*gpp2*QHdp2*Ye22*Conjg(lam)*Tlam + 40*gpp2*QHup2*Ye22*Conjg(lam)*Tlam +& 
&  40*gpp2*Qsp2*Ye22*Conjg(lam)*Tlam - 60*TrYuadjYu*Ye22*Conjg(lam)*Tlam -               & 
&  2*AbsYe22*(-3*(-15._dp*(Abslam) - 15._dp*(AbsYe33) - 15._dp*(AbsYv22) +               & 
&  6._dp*(g1p2) + 30._dp*(g2p2) + 20*gpp2*QHdp2 + 20*gpp2*Ql2p2 - 45._dp*(TrYdadjYd))*TYe22 +& 
&  2*Ye22*(6*g1p2*M1 + 30*g2p2*M2 + 20*gpp2*M4*QHdp2 + 20*gpp2*M4*Ql2p2 + 45._dp*(TradjYdTd) +& 
&  15*Conjg(Ye33)*TYe33 + 15*Conjg(Yv22)*TYv22 + 15*Conjg(lam)*Tlam)))/10._dp

 
DTYe22 = oo16pi2*( betaTYe221 + oo16pi2 * betaTYe222 ) 

 
Else 
DTYe22 = oo16pi2* betaTYe221 
End If 
 
 
Call Chop(DTYe22) 

!-------------------- 
! TYe33 
!-------------------- 
 
betaTYe331  = (18*g1p2*M1*Ye33)/5._dp + 6*g2p2*M2*Ye33 + 4*gpp2*M4*Qe3p2*Ye33 +       & 
&  4*gpp2*M4*QHdp2*Ye33 + 4*gpp2*M4*Ql3p2*Ye33 + 6*TradjYdTd*Ye33 + Abslam*TYe33 +       & 
&  12*AbsYe33*TYe33 + AbsYv33*TYe33 - (9*g1p2*TYe33)/5._dp - 3*g2p2*TYe33 -              & 
&  2*gpp2*Qe3p2*TYe33 - 2*gpp2*QHdp2*TYe33 - 2*gpp2*Ql3p2*TYe33 + 3*TrYdadjYd*TYe33 +    & 
&  Conjg(Ye11)*(2*Ye33*TYe11 + Ye11*TYe33) + Conjg(Ye22)*(2*Ye33*TYe22 + Ye22*TYe33)     & 
&  + 2*Ye33*Conjg(Yv33)*TYv33 + 2*Ye33*Conjg(lam)*Tlam

 
 
If (TwoLoopRGE) Then 
betaTYe332 = (-540*g1p4*M1*Ye33 - 36*g1p2*g2p2*M1*Ye33 - 36*g1p2*g2p2*M2*Ye33 - 300*g2p4*M2*Ye33 - & 
&  144*g1p2*gpp2*M1*Qd*Qe3*Ye33 - 144*g1p2*gpp2*M4*Qd*Qe3*Ye33 - 48*g1p2*gpp2*M1*Qe1*Qe3*Ye33 -& 
&  48*g1p2*gpp2*M4*Qe1*Qe3*Ye33 - 48*g1p2*gpp2*M1*Qe2*Qe3*Ye33 - 48*g1p2*gpp2*M4*Qe2*Qe3*Ye33 -& 
&  144*g1p2*gpp2*M1*Qe3p2*Ye33 - 144*g1p2*gpp2*M4*Qe3p2*Ye33 - 720*gpp4*M4*Qdp2*Qe3p2*Ye33 -& 
&  80*gpp4*M4*Qe1p2*Qe3p2*Ye33 - 80*gpp4*M4*Qe2p2*Qe3p2*Ye33 - 240*gpp4*M4*Qe3p4*Ye33 +  & 
&  72*g1p2*gpp2*M1*Qd*QHd*Ye33 + 72*g1p2*gpp2*M4*Qd*QHd*Ye33 + 24*g1p2*gpp2*M1*Qe1*QHd*Ye33 +& 
&  24*g1p2*gpp2*M4*Qe1*QHd*Ye33 + 24*g1p2*gpp2*M1*Qe2*QHd*Ye33 + 24*g1p2*gpp2*M4*Qe2*QHd*Ye33 +& 
&  72*g1p2*gpp2*M1*Qe3*QHd*Ye33 + 72*g1p2*gpp2*M4*Qe3*QHd*Ye33 - 48*g1p2*gpp2*M1*QHdp2*Ye33 +& 
&  40*Abslam*gpp2*M4*QHdp2*Ye33 - 48*g1p2*gpp2*M4*QHdp2*Ye33 - 120*g2p2*gpp2*M4*QHdp2*Ye33 -& 
&  120*g2p2*gpp2*M2*QHdp2*Ye33 - 720*gpp4*M4*Qdp2*QHdp2*Ye33 - 80*gpp4*M4*Qe1p2*QHdp2*Ye33 -& 
&  80*gpp4*M4*Qe2p2*QHdp2*Ye33 - 240*gpp4*M4*Qe3p2*QHdp2*Ye33 - 320*gpp4*M4*QHdp4*Ye33 - & 
&  48*g1p2*gpp2*M1*Qe3*QHu*Ye33 - 48*g1p2*gpp2*M4*Qe3*QHu*Ye33 + 24*g1p2*gpp2*M1*QHd*QHu*Ye33 +& 
&  24*g1p2*gpp2*M4*QHd*QHu*Ye33 - 40*Abslam*gpp2*M4*QHup2*Ye33 - 40*AbsYv33*gpp2*M4*QHup2*Ye33 -& 
&  160*gpp4*M4*Qe3p2*QHup2*Ye33 - 160*gpp4*M4*QHdp2*QHup2*Ye33 + 48*g1p2*gpp2*M1*Qe3*Ql1*Ye33 +& 
&  48*g1p2*gpp2*M4*Qe3*Ql1*Ye33 - 24*g1p2*gpp2*M1*QHd*Ql1*Ye33 - 24*g1p2*gpp2*M4*QHd*Ql1*Ye33 -& 
&  160*gpp4*M4*Qe3p2*Ql1p2*Ye33 - 160*gpp4*M4*QHdp2*Ql1p2*Ye33 + 48*g1p2*gpp2*M1*Qe3*Ql2*Ye33 +& 
&  48*g1p2*gpp2*M4*Qe3*Ql2*Ye33 - 24*g1p2*gpp2*M1*QHd*Ql2*Ye33 - 24*g1p2*gpp2*M4*QHd*Ql2*Ye33 -& 
&  160*gpp4*M4*Qe3p2*Ql2p2*Ye33 - 160*gpp4*M4*QHdp2*Ql2p2*Ye33 + 72*g1p2*gpp2*M1*Qd*Ql3*Ye33 +& 
&  72*g1p2*gpp2*M4*Qd*Ql3*Ye33 + 24*g1p2*gpp2*M1*Qe1*Ql3*Ye33 + 24*g1p2*gpp2*M4*Qe1*Ql3*Ye33 +& 
&  24*g1p2*gpp2*M1*Qe2*Ql3*Ye33 + 24*g1p2*gpp2*M4*Qe2*Ql3*Ye33 + 72*g1p2*gpp2*M1*Qe3*Ql3*Ye33 +& 
&  72*g1p2*gpp2*M4*Qe3*Ql3*Ye33 - 48*g1p2*gpp2*M1*QHd*Ql3*Ye33 - 48*g1p2*gpp2*M4*QHd*Ql3*Ye33 +& 
&  24*g1p2*gpp2*M1*QHu*Ql3*Ye33 + 24*g1p2*gpp2*M4*QHu*Ql3*Ye33 - 24*g1p2*gpp2*M1*Ql1*Ql3*Ye33 -& 
&  24*g1p2*gpp2*M4*Ql1*Ql3*Ye33 - 24*g1p2*gpp2*M1*Ql2*Ql3*Ye33 - 24*g1p2*gpp2*M4*Ql2*Ql3*Ye33 -& 
&  48*g1p2*gpp2*M1*Ql3p2*Ye33 + 40*AbsYv33*gpp2*M4*Ql3p2*Ye33 - 48*g1p2*gpp2*M4*Ql3p2*Ye33 -& 
&  120*g2p2*gpp2*M4*Ql3p2*Ye33 - 120*g2p2*gpp2*M2*Ql3p2*Ye33 - 720*gpp4*M4*Qdp2*Ql3p2*Ye33 -& 
&  80*gpp4*M4*Qe1p2*Ql3p2*Ye33 - 80*gpp4*M4*Qe2p2*Ql3p2*Ye33 - 240*gpp4*M4*Qe3p2*Ql3p2*Ye33 -& 
&  320*gpp4*M4*QHdp2*Ql3p2*Ye33 - 160*gpp4*M4*QHup2*Ql3p2*Ye33 - 160*gpp4*M4*Ql1p2*Ql3p2*Ye33 -& 
&  160*gpp4*M4*Ql2p2*Ql3p2*Ye33 - 320*gpp4*M4*Ql3p4*Ye33 - 144*g1p2*gpp2*M1*Qe3*Qq*Ye33 -& 
&  144*g1p2*gpp2*M4*Qe3*Qq*Ye33 + 72*g1p2*gpp2*M1*QHd*Qq*Ye33 + 72*g1p2*gpp2*M4*QHd*Qq*Ye33 +& 
&  72*g1p2*gpp2*M1*Ql3*Qq*Ye33 + 72*g1p2*gpp2*M4*Ql3*Qq*Ye33 - 1440*gpp4*M4*Qe3p2*Qqp2*Ye33 -& 
&  1440*gpp4*M4*QHdp2*Qqp2*Ye33 - 1440*gpp4*M4*Ql3p2*Qqp2*Ye33 - 40*Abslam*gpp2*M4*Qsp2*Ye33 -& 
&  80*gpp4*M4*Qe3p2*Qsp2*Ye33 - 80*gpp4*M4*QHdp2*Qsp2*Ye33 - 80*gpp4*M4*Ql3p2*Qsp2*Ye33 +& 
&  288*g1p2*gpp2*M1*Qe3*Qu*Ye33 + 288*g1p2*gpp2*M4*Qe3*Qu*Ye33 - 144*g1p2*gpp2*M1*QHd*Qu*Ye33 -& 
&  144*g1p2*gpp2*M4*QHd*Qu*Ye33 - 144*g1p2*gpp2*M1*Ql3*Qu*Ye33 - 144*g1p2*gpp2*M4*Ql3*Qu*Ye33 -& 
&  720*gpp4*M4*Qe3p2*Qup2*Ye33 - 720*gpp4*M4*QHdp2*Qup2*Ye33 - 720*gpp4*M4*Ql3p2*Qup2*Ye33 -& 
&  80*gpp4*M4*Qe3p2*Qv1p2*Ye33 - 80*gpp4*M4*QHdp2*Qv1p2*Ye33 - 80*gpp4*M4*Ql3p2*Qv1p2*Ye33 -& 
&  80*gpp4*M4*Qe3p2*Qv2p2*Ye33 - 80*gpp4*M4*QHdp2*Qv2p2*Ye33 - 80*gpp4*M4*Ql3p2*Qv2p2*Ye33 -& 
&  40*AbsYv33*gpp2*M4*Qv3p2*Ye33 - 80*gpp4*M4*Qe3p2*Qv3p2*Ye33 - 80*gpp4*M4*QHdp2*Qv3p2*Ye33 -& 
&  80*gpp4*M4*Ql3p2*Qv3p2*Ye33 - 8*g1p2*TradjYdTd*Ye33 + 320*g3p2*TradjYdTd*Ye33 +       & 
&  120*gpp2*Qdp2*TradjYdTd*Ye33 - 120*gpp2*QHdp2*TradjYdTd*Ye33 + 120*gpp2*Qqp2*TradjYdTd*Ye33 -& 
&  60*Abslam*TradjYuTu*Ye33 - 60*AbsYv33*TradjYuTu*Ye33 + 8*g1p2*M1*TrYdadjYd*Ye33 -     & 
&  320*g3p2*M3*TrYdadjYd*Ye33 - 120*gpp2*M4*Qdp2*TrYdadjYd*Ye33 + 120*gpp2*M4*QHdp2*TrYdadjYd*Ye33 -& 
&  120*gpp2*M4*Qqp2*TrYdadjYd*Ye33 - 360*TrYdadjYdTdadjYd*Ye33 - 60*TrYdadjYuTuadjYd*Ye33 -& 
&  60*TrYuadjYdTdadjYu*Ye33 - 10*Abslam*AbsYv11*TYe33 - 10*Abslam*AbsYv22*TYe33 -        & 
&  20*Abslam*AbsYv33*TYe33 - 10*AbsYv11*AbsYv33*TYe33 - 10*AbsYv22*AbsYv33*TYe33 +       & 
&  135*g1p4*TYe33 + 18*g1p2*g2p2*TYe33 + 75*g2p4*TYe33 - 30*Clamp2*lamp2*TYe33 +         & 
&  72*g1p2*gpp2*Qd*Qe3*TYe33 + 24*g1p2*gpp2*Qe1*Qe3*TYe33 + 24*g1p2*gpp2*Qe2*Qe3*TYe33 + & 
&  72*g1p2*gpp2*Qe3p2*TYe33 + 180*gpp4*Qdp2*Qe3p2*TYe33 + 20*gpp4*Qe1p2*Qe3p2*TYe33 +    & 
&  20*gpp4*Qe2p2*Qe3p2*TYe33 + 60*gpp4*Qe3p4*TYe33 - 36*g1p2*gpp2*Qd*QHd*TYe33 -         & 
&  12*g1p2*gpp2*Qe1*QHd*TYe33 - 12*g1p2*gpp2*Qe2*QHd*TYe33 - 36*g1p2*gpp2*Qe3*QHd*TYe33 -& 
&  20*Abslam*gpp2*QHdp2*TYe33 + 24*g1p2*gpp2*QHdp2*TYe33 + 60*g2p2*gpp2*QHdp2*TYe33 +    & 
&  180*gpp4*Qdp2*QHdp2*TYe33 + 20*gpp4*Qe1p2*QHdp2*TYe33 + 20*gpp4*Qe2p2*QHdp2*TYe33 +   & 
&  60*gpp4*Qe3p2*QHdp2*TYe33 + 80*gpp4*QHdp4*TYe33 + 24*g1p2*gpp2*Qe3*QHu*TYe33 -        & 
&  12*g1p2*gpp2*QHd*QHu*TYe33 + 20*Abslam*gpp2*QHup2*TYe33 + 20*AbsYv33*gpp2*QHup2*TYe33 +& 
&  40*gpp4*Qe3p2*QHup2*TYe33 + 40*gpp4*QHdp2*QHup2*TYe33 - 24*g1p2*gpp2*Qe3*Ql1*TYe33 +  & 
&  12*g1p2*gpp2*QHd*Ql1*TYe33 + 40*gpp4*Qe3p2*Ql1p2*TYe33 + 40*gpp4*QHdp2*Ql1p2*TYe33 -  & 
&  24*g1p2*gpp2*Qe3*Ql2*TYe33 + 12*g1p2*gpp2*QHd*Ql2*TYe33 + 40*gpp4*Qe3p2*Ql2p2*TYe33 + & 
&  40*gpp4*QHdp2*Ql2p2*TYe33 - 36*g1p2*gpp2*Qd*Ql3*TYe33 - 12*g1p2*gpp2*Qe1*Ql3*TYe33 -  & 
&  12*g1p2*gpp2*Qe2*Ql3*TYe33 - 36*g1p2*gpp2*Qe3*Ql3*TYe33 + 24*g1p2*gpp2*QHd*Ql3*TYe33 -& 
&  12*g1p2*gpp2*QHu*Ql3*TYe33 + 12*g1p2*gpp2*Ql1*Ql3*TYe33 + 12*g1p2*gpp2*Ql2*Ql3*TYe33 -& 
&  20*AbsYv33*gpp2*Ql3p2*TYe33 + 24*g1p2*gpp2*Ql3p2*TYe33 + 60*g2p2*gpp2*Ql3p2*TYe33 +   & 
&  180*gpp4*Qdp2*Ql3p2*TYe33 + 20*gpp4*Qe1p2*Ql3p2*TYe33 + 20*gpp4*Qe2p2*Ql3p2*TYe33 +   & 
&  60*gpp4*Qe3p2*Ql3p2*TYe33 + 80*gpp4*QHdp2*Ql3p2*TYe33 + 40*gpp4*QHup2*Ql3p2*TYe33 +   & 
&  40*gpp4*Ql1p2*Ql3p2*TYe33 + 40*gpp4*Ql2p2*Ql3p2*TYe33 + 80*gpp4*Ql3p4*TYe33 +         & 
&  72*g1p2*gpp2*Qe3*Qq*TYe33 - 36*g1p2*gpp2*QHd*Qq*TYe33 - 36*g1p2*gpp2*Ql3*Qq*TYe33 +   & 
&  360*gpp4*Qe3p2*Qqp2*TYe33 + 360*gpp4*QHdp2*Qqp2*TYe33 + 360*gpp4*Ql3p2*Qqp2*TYe33 +   & 
&  20*Abslam*gpp2*Qsp2*TYe33 + 20*gpp4*Qe3p2*Qsp2*TYe33 + 20*gpp4*QHdp2*Qsp2*TYe33 +     & 
&  20*gpp4*Ql3p2*Qsp2*TYe33 - 144*g1p2*gpp2*Qe3*Qu*TYe33 + 72*g1p2*gpp2*QHd*Qu*TYe33 +   & 
&  72*g1p2*gpp2*Ql3*Qu*TYe33 + 180*gpp4*Qe3p2*Qup2*TYe33 + 180*gpp4*QHdp2*Qup2*TYe33 +   & 
&  180*gpp4*Ql3p2*Qup2*TYe33 + 20*gpp4*Qe3p2*Qv1p2*TYe33 + 20*gpp4*QHdp2*Qv1p2*TYe33 +   & 
&  20*gpp4*Ql3p2*Qv1p2*TYe33 + 20*gpp4*Qe3p2*Qv2p2*TYe33 + 20*gpp4*QHdp2*Qv2p2*TYe33 +   & 
&  20*gpp4*Ql3p2*Qv2p2*TYe33 + 20*AbsYv33*gpp2*Qv3p2*TYe33 + 20*gpp4*Qe3p2*Qv3p2*TYe33 + & 
&  20*gpp4*QHdp2*Qv3p2*TYe33 + 20*gpp4*Ql3p2*Qv3p2*TYe33 - 4*g1p2*TrYdadjYd*TYe33 +      & 
&  160*g3p2*TrYdadjYd*TYe33 + 60*gpp2*Qdp2*TrYdadjYd*TYe33 - 60*gpp2*QHdp2*TrYdadjYd*TYe33 +& 
&  60*gpp2*Qqp2*TrYdadjYd*TYe33 - 90*TrYdadjYdYdadjYd*TYe33 - 30*TrYdadjYuYuadjYd*TYe33 -& 
&  30*Abslam*TrYuadjYu*TYe33 - 30*AbsYv33*TrYuadjYu*TYe33 - 500*CYe33p2*Ye33p2*TYe33 -   & 
&  30*CYv33p2*Yv33p2*TYe33 - 30*CYe11p2*Ye11*(4*Ye33*TYe11 + Ye11*TYe33) -               & 
&  30*CYe22p2*Ye22*(4*Ye33*TYe22 + Ye22*TYe33) - 20*Abslam*Ye33*Conjg(Yv11)*TYv11 -      & 
&  20*AbsYv33*Ye33*Conjg(Yv11)*TYv11 - 2*Conjg(Ye11)*(2*(15._dp*(AbsYe33) +              & 
&  5._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*Ye33*TYe11 +        & 
&  (45._dp*(AbsYe33) + 5._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 +         & 
&  Ql1p2))*Ye11*TYe33 + 2*Ye11*Ye33*(6*g1p2*M1 + 10*gpp2*M4*(Qe1p2 - QHdp2 +             & 
&  Ql1p2) + 5*Conjg(Yv11)*TYv11)) - 20*Abslam*Ye33*Conjg(Yv22)*TYv22 - 20*AbsYv33*Ye33*Conjg(Yv22)*TYv22 -& 
&  2*Conjg(Ye22)*(2*(15._dp*(AbsYe33) + 5._dp*(AbsYv22) - 6._dp*(g1p2) - 10*gpp2*(Qe2p2 -& 
&  QHdp2 + Ql2p2))*Ye33*TYe22 + (45._dp*(AbsYe33) + 5._dp*(AbsYv22) - 6._dp*(g1p2) -     & 
&  10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*Ye22*TYe33 + 2*Ye22*Ye33*(6*g1p2*M1 + 10*gpp2*M4*(Qe2p2 -& 
&  QHdp2 + Ql2p2) + 5*Conjg(Yv22)*TYv22)) - 120*CYv33p2*Ye33*Yv33*TYv33 - 40*Abslam*Ye33*Conjg(Yv33)*TYv33 -& 
&  20*AbsYv11*Ye33*Conjg(Yv33)*TYv33 - 20*AbsYv22*Ye33*Conjg(Yv33)*TYv33 +               & 
&  40*gpp2*QHup2*Ye33*Conjg(Yv33)*TYv33 - 40*gpp2*Ql3p2*Ye33*Conjg(Yv33)*TYv33 +         & 
&  40*gpp2*Qv3p2*Ye33*Conjg(Yv33)*TYv33 - 60*TrYuadjYu*Ye33*Conjg(Yv33)*TYv33 -          & 
&  120*Clamp2*Ye33*lam*Tlam - 20*AbsYv11*Ye33*Conjg(lam)*Tlam - 20*AbsYv22*Ye33*Conjg(lam)*Tlam -& 
&  40*AbsYv33*Ye33*Conjg(lam)*Tlam - 40*gpp2*QHdp2*Ye33*Conjg(lam)*Tlam + 40*gpp2*QHup2*Ye33*Conjg(lam)*Tlam +& 
&  40*gpp2*Qsp2*Ye33*Conjg(lam)*Tlam - 60*TrYuadjYu*Ye33*Conjg(lam)*Tlam -               & 
&  2*AbsYe33*(-3*(-15._dp*(Abslam) - 15._dp*(AbsYv33) + 6._dp*(g1p2) + 30._dp*(g2p2) +   & 
&  20*gpp2*QHdp2 + 20*gpp2*Ql3p2 - 45._dp*(TrYdadjYd))*TYe33 + 2*Ye33*(6*g1p2*M1 +       & 
&  30*g2p2*M2 + 20*gpp2*M4*QHdp2 + 20*gpp2*M4*Ql3p2 + 45._dp*(TradjYdTd) +               & 
&  15*Conjg(Yv33)*TYv33 + 15*Conjg(lam)*Tlam)))/10._dp

 
DTYe33 = oo16pi2*( betaTYe331 + oo16pi2 * betaTYe332 ) 

 
Else 
DTYe33 = oo16pi2* betaTYe331 
End If 
 
 
Call Chop(DTYe33) 

!-------------------- 
! Tlam 
!-------------------- 
 
betaTlam1  = (6*g1p2*M1*lam)/5._dp + 6*g2p2*M2*lam + 4*gpp2*M4*QHdp2*lam +            & 
&  4*gpp2*M4*QHup2*lam + 4*gpp2*M4*Qsp2*lam + 6*TradjYdTd*lam + 6*TradjYuTu*lam +        & 
&  2*lam*Conjg(Ye33)*TYe33 + 2*lam*Conjg(Yv11)*TYv11 + 2*lam*Conjg(Yv22)*TYv22 +         & 
&  2*lam*Conjg(Yv33)*TYv33 + 12*Abslam*Tlam + AbsYe33*Tlam + AbsYv11*Tlam +              & 
&  AbsYv22*Tlam + AbsYv33*Tlam - (3*g1p2*Tlam)/5._dp - 3*g2p2*Tlam - 2*gpp2*QHdp2*Tlam - & 
&  2*gpp2*QHup2*Tlam - 2*gpp2*Qsp2*Tlam + 3*TrYdadjYd*Tlam + 3*TrYuadjYu*Tlam +          & 
&  Conjg(Ye11)*(2*lam*TYe11 + Ye11*Tlam) + Conjg(Ye22)*(2*lam*TYe22 + Ye22*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTlam2 = (-12*AbsYe33*g1p2*M1*lam)/5._dp - (414*g1p4*M1*lam)/25._dp - (18*g1p2*g2p2*M1*lam)/5._dp -& 
&  (18*g1p2*g2p2*M2*lam)/5._dp - 30*g2p4*M2*lam - 4*AbsYe33*gpp2*M4*Qe3p2*lam +          & 
&  (36*g1p2*gpp2*M1*Qd*QHd*lam)/5._dp + (36*g1p2*gpp2*M4*Qd*QHd*lam)/5._dp +             & 
&  (12*g1p2*gpp2*M1*Qe1*QHd*lam)/5._dp + (12*g1p2*gpp2*M4*Qe1*QHd*lam)/5._dp +           & 
&  (12*g1p2*gpp2*M1*Qe2*QHd*lam)/5._dp + (12*g1p2*gpp2*M4*Qe2*QHd*lam)/5._dp +           & 
&  (12*g1p2*gpp2*M1*Qe3*QHd*lam)/5._dp + (12*g1p2*gpp2*M4*Qe3*QHd*lam)/5._dp -           & 
&  (24*g1p2*gpp2*M1*QHdp2*lam)/5._dp + 4*AbsYe33*gpp2*M4*QHdp2*lam - (24*g1p2*gpp2*M4*QHdp2*lam)/5._dp -& 
&  12*g2p2*gpp2*M4*QHdp2*lam - 12*g2p2*gpp2*M2*QHdp2*lam - 72*gpp4*M4*Qdp2*QHdp2*lam -   & 
&  8*gpp4*M4*Qe1p2*QHdp2*lam - 8*gpp4*M4*Qe2p2*QHdp2*lam - 8*gpp4*M4*Qe3p2*QHdp2*lam -   & 
&  32*gpp4*M4*QHdp4*lam - (36*g1p2*gpp2*M1*Qd*QHu*lam)/5._dp - (36*g1p2*gpp2*M4*Qd*QHu*lam)/5._dp -& 
&  (12*g1p2*gpp2*M1*Qe1*QHu*lam)/5._dp - (12*g1p2*gpp2*M4*Qe1*QHu*lam)/5._dp -           & 
&  (12*g1p2*gpp2*M1*Qe2*QHu*lam)/5._dp - (12*g1p2*gpp2*M4*Qe2*QHu*lam)/5._dp -           & 
&  (12*g1p2*gpp2*M1*Qe3*QHu*lam)/5._dp - (12*g1p2*gpp2*M4*Qe3*QHu*lam)/5._dp +           & 
&  (24*g1p2*gpp2*M1*QHd*QHu*lam)/5._dp + (24*g1p2*gpp2*M4*QHd*QHu*lam)/5._dp -           & 
&  (24*g1p2*gpp2*M1*QHup2*lam)/5._dp + 4*AbsYv11*gpp2*M4*QHup2*lam + 4*AbsYv22*gpp2*M4*QHup2*lam +& 
&  4*AbsYv33*gpp2*M4*QHup2*lam - (24*g1p2*gpp2*M4*QHup2*lam)/5._dp - 12*g2p2*gpp2*M4*QHup2*lam -& 
&  12*g2p2*gpp2*M2*QHup2*lam - 72*gpp4*M4*Qdp2*QHup2*lam - 8*gpp4*M4*Qe1p2*QHup2*lam -   & 
&  8*gpp4*M4*Qe2p2*QHup2*lam - 8*gpp4*M4*Qe3p2*QHup2*lam - 32*gpp4*M4*QHdp2*QHup2*lam -  & 
&  32*gpp4*M4*QHup4*lam - (12*g1p2*gpp2*M1*QHd*Ql1*lam)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql1*lam)/5._dp +& 
&  (12*g1p2*gpp2*M1*QHu*Ql1*lam)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql1*lam)/5._dp -           & 
&  4*AbsYv11*gpp2*M4*Ql1p2*lam - 16*gpp4*M4*QHdp2*Ql1p2*lam - 16*gpp4*M4*QHup2*Ql1p2*lam  
betaTlam2 =  betaTlam2- (12*g1p2*gpp2*M1*QHd*Ql2*lam)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql2*lam)/5._dp +           & 
&  (12*g1p2*gpp2*M1*QHu*Ql2*lam)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql2*lam)/5._dp -           & 
&  4*AbsYv22*gpp2*M4*Ql2p2*lam - 16*gpp4*M4*QHdp2*Ql2p2*lam - 16*gpp4*M4*QHup2*Ql2p2*lam -& 
&  (12*g1p2*gpp2*M1*QHd*Ql3*lam)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql3*lam)/5._dp +           & 
&  (12*g1p2*gpp2*M1*QHu*Ql3*lam)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql3*lam)/5._dp -           & 
&  4*AbsYe33*gpp2*M4*Ql3p2*lam - 4*AbsYv33*gpp2*M4*Ql3p2*lam - 16*gpp4*M4*QHdp2*Ql3p2*lam -& 
&  16*gpp4*M4*QHup2*Ql3p2*lam + (36*g1p2*gpp2*M1*QHd*Qq*lam)/5._dp + (36*g1p2*gpp2*M4*QHd*Qq*lam)/5._dp -& 
&  (36*g1p2*gpp2*M1*QHu*Qq*lam)/5._dp - (36*g1p2*gpp2*M4*QHu*Qq*lam)/5._dp -             & 
&  144*gpp4*M4*QHdp2*Qqp2*lam - 144*gpp4*M4*QHup2*Qqp2*lam - 72*gpp4*M4*Qdp2*Qsp2*lam -  & 
&  8*gpp4*M4*Qe1p2*Qsp2*lam - 8*gpp4*M4*Qe2p2*Qsp2*lam - 8*gpp4*M4*Qe3p2*Qsp2*lam -      & 
&  24*gpp4*M4*QHdp2*Qsp2*lam - 24*gpp4*M4*QHup2*Qsp2*lam - 16*gpp4*M4*Ql1p2*Qsp2*lam -   & 
&  16*gpp4*M4*Ql2p2*Qsp2*lam - 16*gpp4*M4*Ql3p2*Qsp2*lam - 144*gpp4*M4*Qqp2*Qsp2*lam -   & 
&  24*gpp4*M4*Qsp4*lam - (72*g1p2*gpp2*M1*QHd*Qu*lam)/5._dp - (72*g1p2*gpp2*M4*QHd*Qu*lam)/5._dp +& 
&  (72*g1p2*gpp2*M1*QHu*Qu*lam)/5._dp + (72*g1p2*gpp2*M4*QHu*Qu*lam)/5._dp -             & 
&  72*gpp4*M4*QHdp2*Qup2*lam - 72*gpp4*M4*QHup2*Qup2*lam - 72*gpp4*M4*Qsp2*Qup2*lam -    & 
&  4*AbsYv11*gpp2*M4*Qv1p2*lam - 8*gpp4*M4*QHdp2*Qv1p2*lam - 8*gpp4*M4*QHup2*Qv1p2*lam - & 
&  8*gpp4*M4*Qsp2*Qv1p2*lam - 4*AbsYv22*gpp2*M4*Qv2p2*lam - 8*gpp4*M4*QHdp2*Qv2p2*lam -  & 
&  8*gpp4*M4*QHup2*Qv2p2*lam - 8*gpp4*M4*Qsp2*Qv2p2*lam - 4*AbsYv33*gpp2*M4*Qv3p2*lam -  & 
&  8*gpp4*M4*QHdp2*Qv3p2*lam - 8*gpp4*M4*QHup2*Qv3p2*lam - 8*gpp4*M4*Qsp2*Qv3p2*lam -    & 
&  (4*g1p2*TradjYdTd*lam)/5._dp + 32*g3p2*TradjYdTd*lam + 12*gpp2*Qdp2*TradjYdTd*lam -   & 
&  12*gpp2*QHdp2*TradjYdTd*lam + 12*gpp2*Qqp2*TradjYdTd*lam + (8*g1p2*TradjYuTu*lam)/5._dp  
betaTlam2 =  betaTlam2+ 32*g3p2*TradjYuTu*lam - 12*gpp2*QHup2*TradjYuTu*lam + 12*gpp2*Qqp2*TradjYuTu*lam +    & 
&  12*gpp2*Qup2*TradjYuTu*lam + (4*g1p2*M1*TrYdadjYd*lam)/5._dp - 32*g3p2*M3*TrYdadjYd*lam -& 
&  12*gpp2*M4*Qdp2*TrYdadjYd*lam + 12*gpp2*M4*QHdp2*TrYdadjYd*lam - 12*gpp2*M4*Qqp2*TrYdadjYd*lam -& 
&  36*TrYdadjYdTdadjYd*lam - 12*TrYdadjYuTuadjYd*lam - 12*TrYuadjYdTdadjYu*lam -         & 
&  (8*g1p2*M1*TrYuadjYu*lam)/5._dp - 32*g3p2*M3*TrYuadjYu*lam + 12*gpp2*M4*QHup2*TrYuadjYu*lam -& 
&  12*gpp2*M4*Qqp2*TrYuadjYu*lam - 12*gpp2*M4*Qup2*TrYuadjYu*lam - 36*TrYuadjYuTuadjYu*lam -& 
&  (12*g1p2*lamp2*M1*Conjg(lam))/5._dp - 12*g2p2*lamp2*M2*Conjg(lam) - 8*gpp2*lamp2*M4*QHdp2*Conjg(lam) -& 
&  8*gpp2*lamp2*M4*QHup2*Conjg(lam) - 18*lamp2*TradjYdTd*Conjg(lam) - 18*lamp2*TradjYuTu*Conjg(lam) -& 
&  12*CYe33p2*Ye33*lam*TYe33 - 4*AbsYv33*lam*Conjg(Ye33)*TYe33 + (12*g1p2*lam*Conjg(Ye33)*TYe33)/5._dp +& 
&  4*gpp2*Qe3p2*lam*Conjg(Ye33)*TYe33 - 4*gpp2*QHdp2*lam*Conjg(Ye33)*TYe33 +             & 
&  4*gpp2*Ql3p2*lam*Conjg(Ye33)*TYe33 - 6*lamp2*Conjg(Ye33)*Conjg(lam)*TYe33 -           & 
&  12*CYv11p2*Yv11*lam*TYv11 - 4*gpp2*QHup2*lam*Conjg(Yv11)*TYv11 + 4*gpp2*Ql1p2*lam*Conjg(Yv11)*TYv11 +& 
&  4*gpp2*Qv1p2*lam*Conjg(Yv11)*TYv11 - 6*lamp2*Conjg(Yv11)*Conjg(lam)*TYv11 -           & 
&  12*CYv22p2*Yv22*lam*TYv22 - 4*gpp2*QHup2*lam*Conjg(Yv22)*TYv22 + 4*gpp2*Ql2p2*lam*Conjg(Yv22)*TYv22 +& 
&  4*gpp2*Qv2p2*lam*Conjg(Yv22)*TYv22 - 6*lamp2*Conjg(Yv22)*Conjg(lam)*TYv22 -           & 
&  12*CYv33p2*Yv33*lam*TYv33 - 4*AbsYe33*lam*Conjg(Yv33)*TYv33 - 4*gpp2*QHup2*lam*Conjg(Yv33)*TYv33 +& 
&  4*gpp2*Ql3p2*lam*Conjg(Yv33)*TYv33 + 4*gpp2*Qv3p2*lam*Conjg(Yv33)*TYv33 -             & 
&  6*lamp2*Conjg(Yv33)*Conjg(lam)*TYv33 - 9*Abslam*AbsYe33*Tlam - 9*Abslam*AbsYv11*Tlam -& 
&  9*Abslam*AbsYv22*Tlam - 9*Abslam*AbsYv33*Tlam - 2*AbsYe33*AbsYv33*Tlam +              & 
&  (18*Abslam*g1p2*Tlam)/5._dp + (6*AbsYe33*g1p2*Tlam)/5._dp + (207*g1p4*Tlam)/50._dp +  & 
&  18*Abslam*g2p2*Tlam + (9*g1p2*g2p2*Tlam)/5._dp + (15*g2p4*Tlam)/2._dp  
betaTlam2 =  betaTlam2- 50*Clamp2*lamp2*Tlam + 2*AbsYe33*gpp2*Qe3p2*Tlam - (18*g1p2*gpp2*Qd*QHd*Tlam)/5._dp - & 
&  (6*g1p2*gpp2*Qe1*QHd*Tlam)/5._dp - (6*g1p2*gpp2*Qe2*QHd*Tlam)/5._dp - (6*g1p2*gpp2*Qe3*QHd*Tlam)/5._dp +& 
&  12*Abslam*gpp2*QHdp2*Tlam - 2*AbsYe33*gpp2*QHdp2*Tlam + (12*g1p2*gpp2*QHdp2*Tlam)/5._dp +& 
&  6*g2p2*gpp2*QHdp2*Tlam + 18*gpp4*Qdp2*QHdp2*Tlam + 2*gpp4*Qe1p2*QHdp2*Tlam +          & 
&  2*gpp4*Qe2p2*QHdp2*Tlam + 2*gpp4*Qe3p2*QHdp2*Tlam + 8*gpp4*QHdp4*Tlam +               & 
&  (18*g1p2*gpp2*Qd*QHu*Tlam)/5._dp + (6*g1p2*gpp2*Qe1*QHu*Tlam)/5._dp + (6*g1p2*gpp2*Qe2*QHu*Tlam)/5._dp +& 
&  (6*g1p2*gpp2*Qe3*QHu*Tlam)/5._dp - (12*g1p2*gpp2*QHd*QHu*Tlam)/5._dp + 12*Abslam*gpp2*QHup2*Tlam -& 
&  2*AbsYv11*gpp2*QHup2*Tlam - 2*AbsYv22*gpp2*QHup2*Tlam - 2*AbsYv33*gpp2*QHup2*Tlam +   & 
&  (12*g1p2*gpp2*QHup2*Tlam)/5._dp + 6*g2p2*gpp2*QHup2*Tlam + 18*gpp4*Qdp2*QHup2*Tlam +  & 
&  2*gpp4*Qe1p2*QHup2*Tlam + 2*gpp4*Qe2p2*QHup2*Tlam + 2*gpp4*Qe3p2*QHup2*Tlam +         & 
&  8*gpp4*QHdp2*QHup2*Tlam + 8*gpp4*QHup4*Tlam + (6*g1p2*gpp2*QHd*Ql1*Tlam)/5._dp -      & 
&  (6*g1p2*gpp2*QHu*Ql1*Tlam)/5._dp + 2*AbsYv11*gpp2*Ql1p2*Tlam + 4*gpp4*QHdp2*Ql1p2*Tlam +& 
&  4*gpp4*QHup2*Ql1p2*Tlam + (6*g1p2*gpp2*QHd*Ql2*Tlam)/5._dp - (6*g1p2*gpp2*QHu*Ql2*Tlam)/5._dp +& 
&  2*AbsYv22*gpp2*Ql2p2*Tlam + 4*gpp4*QHdp2*Ql2p2*Tlam + 4*gpp4*QHup2*Ql2p2*Tlam +       & 
&  (6*g1p2*gpp2*QHd*Ql3*Tlam)/5._dp - (6*g1p2*gpp2*QHu*Ql3*Tlam)/5._dp + 2*AbsYe33*gpp2*Ql3p2*Tlam +& 
&  2*AbsYv33*gpp2*Ql3p2*Tlam + 4*gpp4*QHdp2*Ql3p2*Tlam + 4*gpp4*QHup2*Ql3p2*Tlam -       & 
&  (18*g1p2*gpp2*QHd*Qq*Tlam)/5._dp + (18*g1p2*gpp2*QHu*Qq*Tlam)/5._dp + 36*gpp4*QHdp2*Qqp2*Tlam +& 
&  36*gpp4*QHup2*Qqp2*Tlam + 18*gpp4*Qdp2*Qsp2*Tlam + 2*gpp4*Qe1p2*Qsp2*Tlam +           & 
&  2*gpp4*Qe2p2*Qsp2*Tlam + 2*gpp4*Qe3p2*Qsp2*Tlam + 6*gpp4*QHdp2*Qsp2*Tlam +            & 
&  6*gpp4*QHup2*Qsp2*Tlam + 4*gpp4*Ql1p2*Qsp2*Tlam + 4*gpp4*Ql2p2*Qsp2*Tlam +            & 
&  4*gpp4*Ql3p2*Qsp2*Tlam + 36*gpp4*Qqp2*Qsp2*Tlam + 6*gpp4*Qsp4*Tlam + (36*g1p2*gpp2*QHd*Qu*Tlam)/5._dp  
betaTlam2 =  betaTlam2- (36*g1p2*gpp2*QHu*Qu*Tlam)/5._dp + 18*gpp4*QHdp2*Qup2*Tlam + 18*gpp4*QHup2*Qup2*Tlam +& 
&  18*gpp4*Qsp2*Qup2*Tlam + 2*AbsYv11*gpp2*Qv1p2*Tlam + 2*gpp4*QHdp2*Qv1p2*Tlam +        & 
&  2*gpp4*QHup2*Qv1p2*Tlam + 2*gpp4*Qsp2*Qv1p2*Tlam + 2*AbsYv22*gpp2*Qv2p2*Tlam +        & 
&  2*gpp4*QHdp2*Qv2p2*Tlam + 2*gpp4*QHup2*Qv2p2*Tlam + 2*gpp4*Qsp2*Qv2p2*Tlam +          & 
&  2*AbsYv33*gpp2*Qv3p2*Tlam + 2*gpp4*QHdp2*Qv3p2*Tlam + 2*gpp4*QHup2*Qv3p2*Tlam +       & 
&  2*gpp4*Qsp2*Qv3p2*Tlam - 27*Abslam*TrYdadjYd*Tlam - (2*g1p2*TrYdadjYd*Tlam)/5._dp +   & 
&  16*g3p2*TrYdadjYd*Tlam + 6*gpp2*Qdp2*TrYdadjYd*Tlam - 6*gpp2*QHdp2*TrYdadjYd*Tlam +   & 
&  6*gpp2*Qqp2*TrYdadjYd*Tlam - 9*TrYdadjYdYdadjYd*Tlam - 6*TrYdadjYuYuadjYd*Tlam -      & 
&  27*Abslam*TrYuadjYu*Tlam + (4*g1p2*TrYuadjYu*Tlam)/5._dp + 16*g3p2*TrYuadjYu*Tlam -   & 
&  6*gpp2*QHup2*TrYuadjYu*Tlam + 6*gpp2*Qqp2*TrYuadjYu*Tlam + 6*gpp2*Qup2*TrYuadjYu*Tlam -& 
&  9*TrYuadjYuYuadjYu*Tlam - 3*CYe33p2*Ye33p2*Tlam - 3*CYv11p2*Yv11p2*Tlam -             & 
&  3*CYv22p2*Yv22p2*Tlam - 3*CYv33p2*Yv33p2*Tlam - 3*CYe11p2*Ye11*(4*lam*TYe11 +         & 
&  Ye11*Tlam) - 3*CYe22p2*Ye22*(4*lam*TYe22 + Ye22*Tlam) - (Conjg(Ye11)*(2*(15._dp*(Abslam) +& 
&  10._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*lam*TYe11 +        & 
&  Ye11*(4*(3*g1p2*M1 + 5*gpp2*M4*(Qe1p2 - QHdp2 + Ql1p2))*lam + (45._dp*(Abslam) -      & 
&  6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*Tlam + 10*Conjg(Yv11)*(2*lam*TYv11 +  & 
&  Yv11*Tlam))))/5._dp - (Conjg(Ye22)*(2*(15._dp*(Abslam) + 10._dp*(AbsYv22) -           & 
&  6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*lam*TYe22 + Ye22*(4*(3*g1p2*M1 +      & 
&  5*gpp2*M4*(Qe2p2 - QHdp2 + Ql2p2))*lam + (45._dp*(Abslam) - 6._dp*(g1p2) -            & 
&  10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*Tlam + 10*Conjg(Yv22)*(2*lam*TYv22 + Yv22*Tlam))))/5._dp

 
DTlam = oo16pi2*( betaTlam1 + oo16pi2 * betaTlam2 ) 

 
Else 
DTlam = oo16pi2* betaTlam1 
End If 
 
 
Call Chop(DTlam) 

!-------------------- 
! TYv11 
!-------------------- 
 
betaTYv111  = (Abslam + 12._dp*(AbsYv11) + AbsYv22 + AbsYv33 - 3._dp*(g1p2)           & 
& /5._dp - 3._dp*(g2p2) - 2*gpp2*QHup2 - 2*gpp2*Ql1p2 - 2*gpp2*Qv1p2 + 3._dp*(TrYuadjYu))& 
& *TYv11 + Conjg(Ye11)*(2*Yv11*TYe11 + Ye11*TYv11) + (2*Yv11*(3*g1p2*M1 + 15*g2p2*M2 +   & 
&  10*gpp2*M4*QHup2 + 10*gpp2*M4*Ql1p2 + 10*gpp2*M4*Qv1p2 + 15._dp*(TradjYuTu)           & 
&  + 5*Conjg(Yv22)*TYv22 + 5*Conjg(Yv33)*TYv33 + 5*Conjg(lam)*Tlam))/5._dp

 
 
If (TwoLoopRGE) Then 
betaTYv112 = (-414*g1p4*M1*Yv11)/25._dp - (18*g1p2*g2p2*M1*Yv11)/5._dp - (18*g1p2*g2p2*M2*Yv11)/5._dp -& 
&  30*g2p4*M2*Yv11 - 4*Abslam*gpp2*M4*QHdp2*Yv11 - (36*g1p2*gpp2*M1*Qd*QHu*Yv11)/5._dp - & 
&  (36*g1p2*gpp2*M4*Qd*QHu*Yv11)/5._dp - (12*g1p2*gpp2*M1*Qe1*QHu*Yv11)/5._dp -          & 
&  (12*g1p2*gpp2*M4*Qe1*QHu*Yv11)/5._dp - (12*g1p2*gpp2*M1*Qe2*QHu*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe2*QHu*Yv11)/5._dp - (12*g1p2*gpp2*M1*Qe3*QHu*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe3*QHu*Yv11)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu*Yv11)/5._dp +         & 
&  (12*g1p2*gpp2*M4*QHd*QHu*Yv11)/5._dp - (24*g1p2*gpp2*M1*QHup2*Yv11)/5._dp +           & 
&  4*Abslam*gpp2*M4*QHup2*Yv11 + 4*AbsYv22*gpp2*M4*QHup2*Yv11 + 4*AbsYv33*gpp2*M4*QHup2*Yv11 -& 
&  (24*g1p2*gpp2*M4*QHup2*Yv11)/5._dp - 12*g2p2*gpp2*M4*QHup2*Yv11 - 12*g2p2*gpp2*M2*QHup2*Yv11 -& 
&  72*gpp4*M4*Qdp2*QHup2*Yv11 - 8*gpp4*M4*Qe1p2*QHup2*Yv11 - 8*gpp4*M4*Qe2p2*QHup2*Yv11 -& 
&  8*gpp4*M4*Qe3p2*QHup2*Yv11 - 16*gpp4*M4*QHdp2*QHup2*Yv11 - 32*gpp4*M4*QHup4*Yv11 +    & 
&  (36*g1p2*gpp2*M1*Qd*Ql1*Yv11)/5._dp + (36*g1p2*gpp2*M4*Qd*Ql1*Yv11)/5._dp +           & 
&  (12*g1p2*gpp2*M1*Qe1*Ql1*Yv11)/5._dp + (12*g1p2*gpp2*M4*Qe1*Ql1*Yv11)/5._dp +         & 
&  (12*g1p2*gpp2*M1*Qe2*Ql1*Yv11)/5._dp + (12*g1p2*gpp2*M4*Qe2*Ql1*Yv11)/5._dp +         & 
&  (12*g1p2*gpp2*M1*Qe3*Ql1*Yv11)/5._dp + (12*g1p2*gpp2*M4*Qe3*Ql1*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M1*QHd*Ql1*Yv11)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql1*Yv11)/5._dp +         & 
&  (24*g1p2*gpp2*M1*QHu*Ql1*Yv11)/5._dp + (24*g1p2*gpp2*M4*QHu*Ql1*Yv11)/5._dp -         & 
&  (24*g1p2*gpp2*M1*Ql1p2*Yv11)/5._dp - (24*g1p2*gpp2*M4*Ql1p2*Yv11)/5._dp -             & 
&  12*g2p2*gpp2*M4*Ql1p2*Yv11 - 12*g2p2*gpp2*M2*Ql1p2*Yv11 - 72*gpp4*M4*Qdp2*Ql1p2*Yv11 -& 
&  8*gpp4*M4*Qe1p2*Ql1p2*Yv11 - 8*gpp4*M4*Qe2p2*Ql1p2*Yv11 - 8*gpp4*M4*Qe3p2*Ql1p2*Yv11 -& 
&  16*gpp4*M4*QHdp2*Ql1p2*Yv11 - 32*gpp4*M4*QHup2*Ql1p2*Yv11 - 32*gpp4*M4*Ql1p4*Yv11  
betaTYv112 =  betaTYv112+ (12*g1p2*gpp2*M1*QHu*Ql2*Yv11)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql2*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M1*Ql1*Ql2*Yv11)/5._dp - (12*g1p2*gpp2*M4*Ql1*Ql2*Yv11)/5._dp -         & 
&  4*AbsYv22*gpp2*M4*Ql2p2*Yv11 - 16*gpp4*M4*QHup2*Ql2p2*Yv11 - 16*gpp4*M4*Ql1p2*Ql2p2*Yv11 +& 
&  (12*g1p2*gpp2*M1*QHu*Ql3*Yv11)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql3*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M1*Ql1*Ql3*Yv11)/5._dp - (12*g1p2*gpp2*M4*Ql1*Ql3*Yv11)/5._dp -         & 
&  4*AbsYv33*gpp2*M4*Ql3p2*Yv11 - 16*gpp4*M4*QHup2*Ql3p2*Yv11 - 16*gpp4*M4*Ql1p2*Ql3p2*Yv11 -& 
&  (36*g1p2*gpp2*M1*QHu*Qq*Yv11)/5._dp - (36*g1p2*gpp2*M4*QHu*Qq*Yv11)/5._dp +           & 
&  (36*g1p2*gpp2*M1*Ql1*Qq*Yv11)/5._dp + (36*g1p2*gpp2*M4*Ql1*Qq*Yv11)/5._dp -           & 
&  144*gpp4*M4*QHup2*Qqp2*Yv11 - 144*gpp4*M4*Ql1p2*Qqp2*Yv11 - 4*Abslam*gpp2*M4*Qsp2*Yv11 -& 
&  8*gpp4*M4*QHup2*Qsp2*Yv11 - 8*gpp4*M4*Ql1p2*Qsp2*Yv11 + (72*g1p2*gpp2*M1*QHu*Qu*Yv11)/5._dp +& 
&  (72*g1p2*gpp2*M4*QHu*Qu*Yv11)/5._dp - (72*g1p2*gpp2*M1*Ql1*Qu*Yv11)/5._dp -           & 
&  (72*g1p2*gpp2*M4*Ql1*Qu*Yv11)/5._dp - 72*gpp4*M4*QHup2*Qup2*Yv11 - 72*gpp4*M4*Ql1p2*Qup2*Yv11 -& 
&  72*gpp4*M4*Qdp2*Qv1p2*Yv11 - 8*gpp4*M4*Qe1p2*Qv1p2*Yv11 - 8*gpp4*M4*Qe2p2*Qv1p2*Yv11 -& 
&  8*gpp4*M4*Qe3p2*Qv1p2*Yv11 - 16*gpp4*M4*QHdp2*Qv1p2*Yv11 - 24*gpp4*M4*QHup2*Qv1p2*Yv11 -& 
&  24*gpp4*M4*Ql1p2*Qv1p2*Yv11 - 16*gpp4*M4*Ql2p2*Qv1p2*Yv11 - 16*gpp4*M4*Ql3p2*Qv1p2*Yv11 -& 
&  144*gpp4*M4*Qqp2*Qv1p2*Yv11 - 8*gpp4*M4*Qsp2*Qv1p2*Yv11 - 72*gpp4*M4*Qup2*Qv1p2*Yv11 -& 
&  24*gpp4*M4*Qv1p4*Yv11 - 4*AbsYv22*gpp2*M4*Qv2p2*Yv11 - 8*gpp4*M4*QHup2*Qv2p2*Yv11 -   & 
&  8*gpp4*M4*Ql1p2*Qv2p2*Yv11 - 8*gpp4*M4*Qv1p2*Qv2p2*Yv11 - 4*AbsYv33*gpp2*M4*Qv3p2*Yv11 -& 
&  8*gpp4*M4*QHup2*Qv3p2*Yv11 - 8*gpp4*M4*Ql1p2*Qv3p2*Yv11 - 8*gpp4*M4*Qv1p2*Qv3p2*Yv11 -& 
&  6*Abslam*TradjYdTd*Yv11 + (8*g1p2*TradjYuTu*Yv11)/5._dp + 32*g3p2*TradjYuTu*Yv11 -    & 
&  12*gpp2*QHup2*TradjYuTu*Yv11 + 12*gpp2*Qqp2*TradjYuTu*Yv11 + 12*gpp2*Qup2*TradjYuTu*Yv11  
betaTYv112 =  betaTYv112- 6*TrYdadjYuTuadjYd*Yv11 - 6*TrYuadjYdTdadjYu*Yv11 - (8*g1p2*M1*TrYuadjYu*Yv11)/5._dp -& 
&  32*g3p2*M3*TrYuadjYu*Yv11 + 12*gpp2*M4*QHup2*TrYuadjYu*Yv11 - 12*gpp2*M4*Qqp2*TrYuadjYu*Yv11 -& 
&  12*gpp2*M4*Qup2*TrYuadjYu*Yv11 - 36*TrYuadjYuTuadjYu*Yv11 - 2*Abslam*Yv11*Conjg(Ye22)*TYe22 -& 
&  2*AbsYv22*Yv11*Conjg(Ye22)*TYe22 - 2*Abslam*Yv11*Conjg(Ye33)*TYe33 - 2*AbsYv33*Yv11*Conjg(Ye33)*TYe33 -& 
&  Abslam*AbsYe22*TYv11 - Abslam*AbsYe33*TYv11 - AbsYe22*AbsYv22*TYv11 - AbsYe33*AbsYv33*TYv11 +& 
&  (207*g1p4*TYv11)/50._dp + (9*g1p2*g2p2*TYv11)/5._dp + (15*g2p4*TYv11)/2._dp -         & 
&  3*Clamp2*lamp2*TYv11 + 2*Abslam*gpp2*QHdp2*TYv11 + (18*g1p2*gpp2*Qd*QHu*TYv11)/5._dp +& 
&  (6*g1p2*gpp2*Qe1*QHu*TYv11)/5._dp + (6*g1p2*gpp2*Qe2*QHu*TYv11)/5._dp +               & 
&  (6*g1p2*gpp2*Qe3*QHu*TYv11)/5._dp - (6*g1p2*gpp2*QHd*QHu*TYv11)/5._dp -               & 
&  2*Abslam*gpp2*QHup2*TYv11 - 2*AbsYv22*gpp2*QHup2*TYv11 - 2*AbsYv33*gpp2*QHup2*TYv11 + & 
&  (12*g1p2*gpp2*QHup2*TYv11)/5._dp + 6*g2p2*gpp2*QHup2*TYv11 + 18*gpp4*Qdp2*QHup2*TYv11 +& 
&  2*gpp4*Qe1p2*QHup2*TYv11 + 2*gpp4*Qe2p2*QHup2*TYv11 + 2*gpp4*Qe3p2*QHup2*TYv11 +      & 
&  4*gpp4*QHdp2*QHup2*TYv11 + 8*gpp4*QHup4*TYv11 - (18*g1p2*gpp2*Qd*Ql1*TYv11)/5._dp -   & 
&  (6*g1p2*gpp2*Qe1*Ql1*TYv11)/5._dp - (6*g1p2*gpp2*Qe2*Ql1*TYv11)/5._dp -               & 
&  (6*g1p2*gpp2*Qe3*Ql1*TYv11)/5._dp + (6*g1p2*gpp2*QHd*Ql1*TYv11)/5._dp -               & 
&  (12*g1p2*gpp2*QHu*Ql1*TYv11)/5._dp + (12*g1p2*gpp2*Ql1p2*TYv11)/5._dp +               & 
&  6*g2p2*gpp2*Ql1p2*TYv11 + 18*gpp4*Qdp2*Ql1p2*TYv11 + 2*gpp4*Qe1p2*Ql1p2*TYv11 +       & 
&  2*gpp4*Qe2p2*Ql1p2*TYv11 + 2*gpp4*Qe3p2*Ql1p2*TYv11 + 4*gpp4*QHdp2*Ql1p2*TYv11 +      & 
&  8*gpp4*QHup2*Ql1p2*TYv11 + 8*gpp4*Ql1p4*TYv11 - (6*g1p2*gpp2*QHu*Ql2*TYv11)/5._dp +   & 
&  (6*g1p2*gpp2*Ql1*Ql2*TYv11)/5._dp + 2*AbsYv22*gpp2*Ql2p2*TYv11 + 4*gpp4*QHup2*Ql2p2*TYv11 +& 
&  4*gpp4*Ql1p2*Ql2p2*TYv11 - (6*g1p2*gpp2*QHu*Ql3*TYv11)/5._dp + (6*g1p2*gpp2*Ql1*Ql3*TYv11)/5._dp  
betaTYv112 =  betaTYv112+ 2*AbsYv33*gpp2*Ql3p2*TYv11 + 4*gpp4*QHup2*Ql3p2*TYv11 + 4*gpp4*Ql1p2*Ql3p2*TYv11 +    & 
&  (18*g1p2*gpp2*QHu*Qq*TYv11)/5._dp - (18*g1p2*gpp2*Ql1*Qq*TYv11)/5._dp +               & 
&  36*gpp4*QHup2*Qqp2*TYv11 + 36*gpp4*Ql1p2*Qqp2*TYv11 + 2*Abslam*gpp2*Qsp2*TYv11 +      & 
&  2*gpp4*QHup2*Qsp2*TYv11 + 2*gpp4*Ql1p2*Qsp2*TYv11 - (36*g1p2*gpp2*QHu*Qu*TYv11)/5._dp +& 
&  (36*g1p2*gpp2*Ql1*Qu*TYv11)/5._dp + 18*gpp4*QHup2*Qup2*TYv11 + 18*gpp4*Ql1p2*Qup2*TYv11 +& 
&  18*gpp4*Qdp2*Qv1p2*TYv11 + 2*gpp4*Qe1p2*Qv1p2*TYv11 + 2*gpp4*Qe2p2*Qv1p2*TYv11 +      & 
&  2*gpp4*Qe3p2*Qv1p2*TYv11 + 4*gpp4*QHdp2*Qv1p2*TYv11 + 6*gpp4*QHup2*Qv1p2*TYv11 +      & 
&  6*gpp4*Ql1p2*Qv1p2*TYv11 + 4*gpp4*Ql2p2*Qv1p2*TYv11 + 4*gpp4*Ql3p2*Qv1p2*TYv11 +      & 
&  36*gpp4*Qqp2*Qv1p2*TYv11 + 2*gpp4*Qsp2*Qv1p2*TYv11 + 18*gpp4*Qup2*Qv1p2*TYv11 +       & 
&  6*gpp4*Qv1p4*TYv11 + 2*AbsYv22*gpp2*Qv2p2*TYv11 + 2*gpp4*QHup2*Qv2p2*TYv11 +          & 
&  2*gpp4*Ql1p2*Qv2p2*TYv11 + 2*gpp4*Qv1p2*Qv2p2*TYv11 + 2*AbsYv33*gpp2*Qv3p2*TYv11 +    & 
&  2*gpp4*QHup2*Qv3p2*TYv11 + 2*gpp4*Ql1p2*Qv3p2*TYv11 + 2*gpp4*Qv1p2*Qv3p2*TYv11 -      & 
&  3*Abslam*TrYdadjYd*TYv11 - 3*TrYdadjYuYuadjYd*TYv11 + (4*g1p2*TrYuadjYu*TYv11)/5._dp +& 
&  16*g3p2*TrYuadjYu*TYv11 - 6*gpp2*QHup2*TrYuadjYu*TYv11 + 6*gpp2*Qqp2*TrYuadjYu*TYv11 +& 
&  6*gpp2*Qup2*TrYuadjYu*TYv11 - 9*TrYuadjYuYuadjYu*TYv11 - 50*CYv11p2*Yv11p2*TYv11 -    & 
&  3*CYv22p2*Yv22p2*TYv11 - 3*CYv33p2*Yv33p2*TYv11 - 3*CYe11p2*Ye11*(4*Yv11*TYe11 +      & 
&  Ye11*TYv11) - 12*CYv22p2*Yv11*Yv22*TYv22 - 2*AbsYe22*Yv11*Conjg(Yv22)*TYv22 -         & 
&  4*gpp2*QHup2*Yv11*Conjg(Yv22)*TYv22 + 4*gpp2*Ql2p2*Yv11*Conjg(Yv22)*TYv22 +           & 
&  4*gpp2*Qv2p2*Yv11*Conjg(Yv22)*TYv22 - 12*CYv33p2*Yv11*Yv33*TYv33 - 2*AbsYe33*Yv11*Conjg(Yv33)*TYv33 -& 
&  4*gpp2*QHup2*Yv11*Conjg(Yv33)*TYv33 + 4*gpp2*Ql3p2*Yv11*Conjg(Yv33)*TYv33 +           & 
&  4*gpp2*Qv3p2*Yv11*Conjg(Yv33)*TYv33 - 12*Clamp2*Yv11*lam*Tlam - 2*AbsYe22*Yv11*Conjg(lam)*Tlam  
betaTYv112 =  betaTYv112- 2*AbsYe33*Yv11*Conjg(lam)*Tlam + 4*gpp2*QHdp2*Yv11*Conjg(lam)*Tlam - 4*gpp2*QHup2*Yv11*Conjg(lam)*Tlam +& 
&  4*gpp2*Qsp2*Yv11*Conjg(lam)*Tlam - 6*TrYdadjYd*Yv11*Conjg(lam)*Tlam - (AbsYv11*(-     & 
& 3*(-15._dp*(Abslam) - 15._dp*(AbsYv22) - 15._dp*(AbsYv33) + 6._dp*(g1p2) +             & 
&  30._dp*(g2p2) + 20*gpp2*QHup2 + 20*gpp2*Ql1p2 - 45._dp*(TrYuadjYu))*TYv11 +           & 
&  2*Yv11*(6*g1p2*M1 + 30*g2p2*M2 + 20*gpp2*M4*QHup2 + 20*gpp2*M4*Ql1p2 + 45._dp*(TradjYuTu) +& 
&  15*Conjg(Yv22)*TYv22 + 15*Conjg(Yv33)*TYv33 + 15*Conjg(lam)*Tlam)))/5._dp -           & 
&  (Conjg(Ye11)*(2*(10._dp*(Abslam) + 5._dp*(AbsYe22) + 5._dp*(AbsYe33) + 15._dp*(AbsYv11) -& 
&  6._dp*(g1p2) - 10*gpp2*Qe1p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql1p2 + 15._dp*(TrYdadjYd))*Yv11*TYe11 +& 
&  Ye11*(12*g1p2*M1*Yv11 + 20*gpp2*M4*Qe1p2*Yv11 + 20*gpp2*M4*QHdp2*Yv11 -               & 
&  20*gpp2*M4*Ql1p2*Yv11 + 30*TradjYdTd*Yv11 + 10*Abslam*TYv11 + 45*AbsYv11*TYv11 -      & 
&  6*g1p2*TYv11 - 10*gpp2*Qe1p2*TYv11 - 10*gpp2*QHdp2*TYv11 + 10*gpp2*Ql1p2*TYv11 +      & 
&  15*TrYdadjYd*TYv11 + 5*Conjg(Ye22)*(2*Yv11*TYe22 + Ye22*TYv11) + 5*Conjg(Ye33)*(2*Yv11*TYe33 +& 
&  Ye33*TYv11) + 20*Yv11*Conjg(lam)*Tlam)))/5._dp

 
DTYv11 = oo16pi2*( betaTYv111 + oo16pi2 * betaTYv112 ) 

 
Else 
DTYv11 = oo16pi2* betaTYv111 
End If 
 
 
Call Chop(DTYv11) 

!-------------------- 
! TYv22 
!-------------------- 
 
betaTYv221  = (6*g1p2*M1*Yv22)/5._dp + 6*g2p2*M2*Yv22 + 4*gpp2*M4*QHup2*Yv22 +        & 
&  4*gpp2*M4*Ql2p2*Yv22 + 4*gpp2*M4*Qv2p2*Yv22 + 6*TradjYuTu*Yv22 + Abslam*TYv22 +       & 
&  12*AbsYv22*TYv22 + AbsYv33*TYv22 - (3*g1p2*TYv22)/5._dp - 3*g2p2*TYv22 -              & 
&  2*gpp2*QHup2*TYv22 - 2*gpp2*Ql2p2*TYv22 - 2*gpp2*Qv2p2*TYv22 + 3*TrYuadjYu*TYv22 +    & 
&  Conjg(Ye22)*(2*Yv22*TYe22 + Ye22*TYv22) + Conjg(Yv11)*(2*Yv22*TYv11 + Yv11*TYv22)     & 
&  + 2*Yv22*Conjg(Yv33)*TYv33 + 2*Yv22*Conjg(lam)*Tlam

 
 
If (TwoLoopRGE) Then 
betaTYv222 = (-414*g1p4*M1*Yv22)/25._dp - (18*g1p2*g2p2*M1*Yv22)/5._dp - (18*g1p2*g2p2*M2*Yv22)/5._dp -& 
&  30*g2p4*M2*Yv22 - 4*Abslam*gpp2*M4*QHdp2*Yv22 - (36*g1p2*gpp2*M1*Qd*QHu*Yv22)/5._dp - & 
&  (36*g1p2*gpp2*M4*Qd*QHu*Yv22)/5._dp - (12*g1p2*gpp2*M1*Qe1*QHu*Yv22)/5._dp -          & 
&  (12*g1p2*gpp2*M4*Qe1*QHu*Yv22)/5._dp - (12*g1p2*gpp2*M1*Qe2*QHu*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe2*QHu*Yv22)/5._dp - (12*g1p2*gpp2*M1*Qe3*QHu*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe3*QHu*Yv22)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu*Yv22)/5._dp +         & 
&  (12*g1p2*gpp2*M4*QHd*QHu*Yv22)/5._dp - (24*g1p2*gpp2*M1*QHup2*Yv22)/5._dp +           & 
&  4*Abslam*gpp2*M4*QHup2*Yv22 + 4*AbsYv33*gpp2*M4*QHup2*Yv22 - (24*g1p2*gpp2*M4*QHup2*Yv22)/5._dp -& 
&  12*g2p2*gpp2*M4*QHup2*Yv22 - 12*g2p2*gpp2*M2*QHup2*Yv22 - 72*gpp4*M4*Qdp2*QHup2*Yv22 -& 
&  8*gpp4*M4*Qe1p2*QHup2*Yv22 - 8*gpp4*M4*Qe2p2*QHup2*Yv22 - 8*gpp4*M4*Qe3p2*QHup2*Yv22 -& 
&  16*gpp4*M4*QHdp2*QHup2*Yv22 - 32*gpp4*M4*QHup4*Yv22 + (12*g1p2*gpp2*M1*QHu*Ql1*Yv22)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql1*Yv22)/5._dp - 16*gpp4*M4*QHup2*Ql1p2*Yv22 + (36*g1p2*gpp2*M1*Qd*Ql2*Yv22)/5._dp +& 
&  (36*g1p2*gpp2*M4*Qd*Ql2*Yv22)/5._dp + (12*g1p2*gpp2*M1*Qe1*Ql2*Yv22)/5._dp +          & 
&  (12*g1p2*gpp2*M4*Qe1*Ql2*Yv22)/5._dp + (12*g1p2*gpp2*M1*Qe2*Ql2*Yv22)/5._dp +         & 
&  (12*g1p2*gpp2*M4*Qe2*Ql2*Yv22)/5._dp + (12*g1p2*gpp2*M1*Qe3*Ql2*Yv22)/5._dp +         & 
&  (12*g1p2*gpp2*M4*Qe3*Ql2*Yv22)/5._dp - (12*g1p2*gpp2*M1*QHd*Ql2*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*QHd*Ql2*Yv22)/5._dp + (24*g1p2*gpp2*M1*QHu*Ql2*Yv22)/5._dp +         & 
&  (24*g1p2*gpp2*M4*QHu*Ql2*Yv22)/5._dp - (12*g1p2*gpp2*M1*Ql1*Ql2*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Ql1*Ql2*Yv22)/5._dp - (24*g1p2*gpp2*M1*Ql2p2*Yv22)/5._dp -           & 
&  (24*g1p2*gpp2*M4*Ql2p2*Yv22)/5._dp - 12*g2p2*gpp2*M4*Ql2p2*Yv22 - 12*g2p2*gpp2*M2*Ql2p2*Yv22 -& 
&  72*gpp4*M4*Qdp2*Ql2p2*Yv22 - 8*gpp4*M4*Qe1p2*Ql2p2*Yv22 - 8*gpp4*M4*Qe2p2*Ql2p2*Yv22  
betaTYv222 =  betaTYv222- 8*gpp4*M4*Qe3p2*Ql2p2*Yv22 - 16*gpp4*M4*QHdp2*Ql2p2*Yv22 - 32*gpp4*M4*QHup2*Ql2p2*Yv22 -& 
&  16*gpp4*M4*Ql1p2*Ql2p2*Yv22 - 32*gpp4*M4*Ql2p4*Yv22 + (12*g1p2*gpp2*M1*QHu*Ql3*Yv22)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql3*Yv22)/5._dp - (12*g1p2*gpp2*M1*Ql2*Ql3*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Ql2*Ql3*Yv22)/5._dp - 4*AbsYv33*gpp2*M4*Ql3p2*Yv22 - 16*gpp4*M4*QHup2*Ql3p2*Yv22 -& 
&  16*gpp4*M4*Ql2p2*Ql3p2*Yv22 - (36*g1p2*gpp2*M1*QHu*Qq*Yv22)/5._dp - (36*g1p2*gpp2*M4*QHu*Qq*Yv22)/5._dp +& 
&  (36*g1p2*gpp2*M1*Ql2*Qq*Yv22)/5._dp + (36*g1p2*gpp2*M4*Ql2*Qq*Yv22)/5._dp -           & 
&  144*gpp4*M4*QHup2*Qqp2*Yv22 - 144*gpp4*M4*Ql2p2*Qqp2*Yv22 - 4*Abslam*gpp2*M4*Qsp2*Yv22 -& 
&  8*gpp4*M4*QHup2*Qsp2*Yv22 - 8*gpp4*M4*Ql2p2*Qsp2*Yv22 + (72*g1p2*gpp2*M1*QHu*Qu*Yv22)/5._dp +& 
&  (72*g1p2*gpp2*M4*QHu*Qu*Yv22)/5._dp - (72*g1p2*gpp2*M1*Ql2*Qu*Yv22)/5._dp -           & 
&  (72*g1p2*gpp2*M4*Ql2*Qu*Yv22)/5._dp - 72*gpp4*M4*QHup2*Qup2*Yv22 - 72*gpp4*M4*Ql2p2*Qup2*Yv22 -& 
&  8*gpp4*M4*QHup2*Qv1p2*Yv22 - 8*gpp4*M4*Ql2p2*Qv1p2*Yv22 - 72*gpp4*M4*Qdp2*Qv2p2*Yv22 -& 
&  8*gpp4*M4*Qe1p2*Qv2p2*Yv22 - 8*gpp4*M4*Qe2p2*Qv2p2*Yv22 - 8*gpp4*M4*Qe3p2*Qv2p2*Yv22 -& 
&  16*gpp4*M4*QHdp2*Qv2p2*Yv22 - 24*gpp4*M4*QHup2*Qv2p2*Yv22 - 16*gpp4*M4*Ql1p2*Qv2p2*Yv22 -& 
&  24*gpp4*M4*Ql2p2*Qv2p2*Yv22 - 16*gpp4*M4*Ql3p2*Qv2p2*Yv22 - 144*gpp4*M4*Qqp2*Qv2p2*Yv22 -& 
&  8*gpp4*M4*Qsp2*Qv2p2*Yv22 - 72*gpp4*M4*Qup2*Qv2p2*Yv22 - 8*gpp4*M4*Qv1p2*Qv2p2*Yv22 - & 
&  24*gpp4*M4*Qv2p4*Yv22 - 4*AbsYv33*gpp2*M4*Qv3p2*Yv22 - 8*gpp4*M4*QHup2*Qv3p2*Yv22 -   & 
&  8*gpp4*M4*Ql2p2*Qv3p2*Yv22 - 8*gpp4*M4*Qv2p2*Qv3p2*Yv22 - 6*Abslam*TradjYdTd*Yv22 +   & 
&  (8*g1p2*TradjYuTu*Yv22)/5._dp + 32*g3p2*TradjYuTu*Yv22 - 12*gpp2*QHup2*TradjYuTu*Yv22 +& 
&  12*gpp2*Qqp2*TradjYuTu*Yv22 + 12*gpp2*Qup2*TradjYuTu*Yv22 - 6*TrYdadjYuTuadjYd*Yv22 - & 
&  6*TrYuadjYdTdadjYu*Yv22 - (8*g1p2*M1*TrYuadjYu*Yv22)/5._dp - 32*g3p2*M3*TrYuadjYu*Yv22 +& 
&  12*gpp2*M4*QHup2*TrYuadjYu*Yv22 - 12*gpp2*M4*Qqp2*TrYuadjYu*Yv22 - 12*gpp2*M4*Qup2*TrYuadjYu*Yv22  
betaTYv222 =  betaTYv222- 36*TrYuadjYuTuadjYu*Yv22 - (12*g1p2*M1*Yv22p2*Conjg(Yv22))/5._dp - 12*g2p2*M2*Yv22p2*Conjg(Yv22) -& 
&  8*gpp2*M4*QHup2*Yv22p2*Conjg(Yv22) - 8*gpp2*M4*Ql2p2*Yv22p2*Conjg(Yv22) -             & 
&  18*TradjYuTu*Yv22p2*Conjg(Yv22) - 2*Abslam*Yv22*Conjg(Ye11)*TYe11 - 2*Abslam*Yv22*Conjg(Ye33)*TYe33 -& 
&  2*AbsYv33*Yv22*Conjg(Ye33)*TYe33 - Abslam*AbsYe11*TYv22 - Abslam*AbsYe33*TYv22 -      & 
&  9*Abslam*AbsYv22*TYv22 - AbsYe33*AbsYv33*TYv22 - 9*AbsYv22*AbsYv33*TYv22 +            & 
&  (18*AbsYv22*g1p2*TYv22)/5._dp + (207*g1p4*TYv22)/50._dp + 18*AbsYv22*g2p2*TYv22 +     & 
&  (9*g1p2*g2p2*TYv22)/5._dp + (15*g2p4*TYv22)/2._dp - 3*Clamp2*lamp2*TYv22 +            & 
&  2*Abslam*gpp2*QHdp2*TYv22 + (18*g1p2*gpp2*Qd*QHu*TYv22)/5._dp + (6*g1p2*gpp2*Qe1*QHu*TYv22)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*TYv22)/5._dp + (6*g1p2*gpp2*Qe3*QHu*TYv22)/5._dp -               & 
&  (6*g1p2*gpp2*QHd*QHu*TYv22)/5._dp - 2*Abslam*gpp2*QHup2*TYv22 + 12*AbsYv22*gpp2*QHup2*TYv22 -& 
&  2*AbsYv33*gpp2*QHup2*TYv22 + (12*g1p2*gpp2*QHup2*TYv22)/5._dp + 6*g2p2*gpp2*QHup2*TYv22 +& 
&  18*gpp4*Qdp2*QHup2*TYv22 + 2*gpp4*Qe1p2*QHup2*TYv22 + 2*gpp4*Qe2p2*QHup2*TYv22 +      & 
&  2*gpp4*Qe3p2*QHup2*TYv22 + 4*gpp4*QHdp2*QHup2*TYv22 + 8*gpp4*QHup4*TYv22 -            & 
&  (6*g1p2*gpp2*QHu*Ql1*TYv22)/5._dp + 4*gpp4*QHup2*Ql1p2*TYv22 - (18*g1p2*gpp2*Qd*Ql2*TYv22)/5._dp -& 
&  (6*g1p2*gpp2*Qe1*Ql2*TYv22)/5._dp - (6*g1p2*gpp2*Qe2*Ql2*TYv22)/5._dp -               & 
&  (6*g1p2*gpp2*Qe3*Ql2*TYv22)/5._dp + (6*g1p2*gpp2*QHd*Ql2*TYv22)/5._dp -               & 
&  (12*g1p2*gpp2*QHu*Ql2*TYv22)/5._dp + (6*g1p2*gpp2*Ql1*Ql2*TYv22)/5._dp +              & 
&  12*AbsYv22*gpp2*Ql2p2*TYv22 + (12*g1p2*gpp2*Ql2p2*TYv22)/5._dp + 6*g2p2*gpp2*Ql2p2*TYv22 +& 
&  18*gpp4*Qdp2*Ql2p2*TYv22 + 2*gpp4*Qe1p2*Ql2p2*TYv22 + 2*gpp4*Qe2p2*Ql2p2*TYv22 +      & 
&  2*gpp4*Qe3p2*Ql2p2*TYv22 + 4*gpp4*QHdp2*Ql2p2*TYv22 + 8*gpp4*QHup2*Ql2p2*TYv22 +      & 
&  4*gpp4*Ql1p2*Ql2p2*TYv22 + 8*gpp4*Ql2p4*TYv22 - (6*g1p2*gpp2*QHu*Ql3*TYv22)/5._dp  
betaTYv222 =  betaTYv222+ (6*g1p2*gpp2*Ql2*Ql3*TYv22)/5._dp + 2*AbsYv33*gpp2*Ql3p2*TYv22 + 4*gpp4*QHup2*Ql3p2*TYv22 +& 
&  4*gpp4*Ql2p2*Ql3p2*TYv22 + (18*g1p2*gpp2*QHu*Qq*TYv22)/5._dp - (18*g1p2*gpp2*Ql2*Qq*TYv22)/5._dp +& 
&  36*gpp4*QHup2*Qqp2*TYv22 + 36*gpp4*Ql2p2*Qqp2*TYv22 + 2*Abslam*gpp2*Qsp2*TYv22 +      & 
&  2*gpp4*QHup2*Qsp2*TYv22 + 2*gpp4*Ql2p2*Qsp2*TYv22 - (36*g1p2*gpp2*QHu*Qu*TYv22)/5._dp +& 
&  (36*g1p2*gpp2*Ql2*Qu*TYv22)/5._dp + 18*gpp4*QHup2*Qup2*TYv22 + 18*gpp4*Ql2p2*Qup2*TYv22 +& 
&  2*gpp4*QHup2*Qv1p2*TYv22 + 2*gpp4*Ql2p2*Qv1p2*TYv22 + 18*gpp4*Qdp2*Qv2p2*TYv22 +      & 
&  2*gpp4*Qe1p2*Qv2p2*TYv22 + 2*gpp4*Qe2p2*Qv2p2*TYv22 + 2*gpp4*Qe3p2*Qv2p2*TYv22 +      & 
&  4*gpp4*QHdp2*Qv2p2*TYv22 + 6*gpp4*QHup2*Qv2p2*TYv22 + 4*gpp4*Ql1p2*Qv2p2*TYv22 +      & 
&  6*gpp4*Ql2p2*Qv2p2*TYv22 + 4*gpp4*Ql3p2*Qv2p2*TYv22 + 36*gpp4*Qqp2*Qv2p2*TYv22 +      & 
&  2*gpp4*Qsp2*Qv2p2*TYv22 + 18*gpp4*Qup2*Qv2p2*TYv22 + 2*gpp4*Qv1p2*Qv2p2*TYv22 +       & 
&  6*gpp4*Qv2p4*TYv22 + 2*AbsYv33*gpp2*Qv3p2*TYv22 + 2*gpp4*QHup2*Qv3p2*TYv22 +          & 
&  2*gpp4*Ql2p2*Qv3p2*TYv22 + 2*gpp4*Qv2p2*Qv3p2*TYv22 - 3*Abslam*TrYdadjYd*TYv22 -      & 
&  3*TrYdadjYuYuadjYd*TYv22 - 27*AbsYv22*TrYuadjYu*TYv22 + (4*g1p2*TrYuadjYu*TYv22)/5._dp +& 
&  16*g3p2*TrYuadjYu*TYv22 - 6*gpp2*QHup2*TrYuadjYu*TYv22 + 6*gpp2*Qqp2*TrYuadjYu*TYv22 +& 
&  6*gpp2*Qup2*TrYuadjYu*TYv22 - 9*TrYuadjYuYuadjYu*TYv22 - 50*CYv22p2*Yv22p2*TYv22 -    & 
&  3*CYv33p2*Yv33p2*TYv22 - 3*CYe22p2*Ye22*(4*Yv22*TYe22 + Ye22*TYv22) - 3*CYv11p2*Yv11*(4*Yv22*TYv11 +& 
&  Yv11*TYv22) + Conjg(Yv11)*(2*(-3._dp*(AbsYv22) + 2*gpp2*(-1._dp*(QHup2) +             & 
&  Ql1p2 + Qv1p2))*Yv22*TYv11 + Yv11*(4*gpp2*M4*(QHup2 - Ql1p2 - Qv1p2)*Yv22 +           & 
&  (-9._dp*(AbsYv22) + 2*gpp2*(-1._dp*(QHup2) + Ql1p2 + Qv1p2))*TYv22) - Conjg(Ye11)*(2*Yv11*Yv22*TYe11 +& 
&  2*Ye11*Yv22*TYv11 + Ye11*Yv11*TYv22)) - 12*CYv33p2*Yv22*Yv33*TYv33 - 2*AbsYe33*Yv22*Conjg(Yv33)*TYv33 -& 
&  4*gpp2*QHup2*Yv22*Conjg(Yv33)*TYv33 + 4*gpp2*Ql3p2*Yv22*Conjg(Yv33)*TYv33  
betaTYv222 =  betaTYv222+ 4*gpp2*Qv3p2*Yv22*Conjg(Yv33)*TYv33 - 6*Yv22p2*Conjg(Yv22)*Conjg(Yv33)*TYv33 -        & 
&  12*Clamp2*Yv22*lam*Tlam - 2*AbsYe11*Yv22*Conjg(lam)*Tlam - 2*AbsYe33*Yv22*Conjg(lam)*Tlam +& 
&  4*gpp2*QHdp2*Yv22*Conjg(lam)*Tlam - 4*gpp2*QHup2*Yv22*Conjg(lam)*Tlam +               & 
&  4*gpp2*Qsp2*Yv22*Conjg(lam)*Tlam - 6*TrYdadjYd*Yv22*Conjg(lam)*Tlam - 6*Yv22p2*Conjg(Yv22)*Conjg(lam)*Tlam -& 
&  (Conjg(Ye22)*(2*(10._dp*(Abslam) + 5._dp*(AbsYe33) + 15._dp*(AbsYv22) -               & 
&  6._dp*(g1p2) - 10*gpp2*Qe2p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql2p2 + 15._dp*(TrYdadjYd))*Yv22*TYe22 +& 
&  5*Conjg(Ye11)*(2*Ye22*Yv22*TYe11 + 2*Ye11*Yv22*TYe22 + Ye11*Ye22*TYv22) +             & 
&  Ye22*((10._dp*(Abslam) + 45._dp*(AbsYv22) - 6._dp*(g1p2) - 10*gpp2*Qe2p2 -            & 
&  10*gpp2*QHdp2 + 10*gpp2*Ql2p2 + 15._dp*(TrYdadjYd))*TYv22 + 5*Conjg(Ye33)*(2*Yv22*TYe33 +& 
&  Ye33*TYv22) + 2*Yv22*(6*g1p2*M1 + 10*gpp2*M4*Qe2p2 + 10*gpp2*M4*QHdp2 -               & 
&  10*gpp2*M4*Ql2p2 + 15._dp*(TradjYdTd) + 10*Conjg(lam)*Tlam))))/5._dp

 
DTYv22 = oo16pi2*( betaTYv221 + oo16pi2 * betaTYv222 ) 

 
Else 
DTYv22 = oo16pi2* betaTYv221 
End If 
 
 
Call Chop(DTYv22) 

!-------------------- 
! TYv33 
!-------------------- 
 
betaTYv331  = (6*g1p2*M1*Yv33)/5._dp + 6*g2p2*M2*Yv33 + 4*gpp2*M4*QHup2*Yv33 +        & 
&  4*gpp2*M4*Ql3p2*Yv33 + 4*gpp2*M4*Qv3p2*Yv33 + 6*TradjYuTu*Yv33 + 2*Yv33*Conjg(Yv22)   & 
& *TYv22 + Abslam*TYv33 + AbsYv22*TYv33 + 12*AbsYv33*TYv33 - (3*g1p2*TYv33)              & 
& /5._dp - 3*g2p2*TYv33 - 2*gpp2*QHup2*TYv33 - 2*gpp2*Ql3p2*TYv33 - 2*gpp2*Qv3p2*TYv33 + & 
&  3*TrYuadjYu*TYv33 + Conjg(Ye33)*(2*Yv33*TYe33 + Ye33*TYv33) + Conjg(Yv11)             & 
& *(2*Yv33*TYv11 + Yv11*TYv33) + 2*Yv33*Conjg(lam)*Tlam

 
 
If (TwoLoopRGE) Then 
betaTYv332 = (-414*g1p4*M1*Yv33)/25._dp - (18*g1p2*g2p2*M1*Yv33)/5._dp - (18*g1p2*g2p2*M2*Yv33)/5._dp -& 
&  30*g2p4*M2*Yv33 - 4*Abslam*gpp2*M4*QHdp2*Yv33 - (36*g1p2*gpp2*M1*Qd*QHu*Yv33)/5._dp - & 
&  (36*g1p2*gpp2*M4*Qd*QHu*Yv33)/5._dp - (12*g1p2*gpp2*M1*Qe1*QHu*Yv33)/5._dp -          & 
&  (12*g1p2*gpp2*M4*Qe1*QHu*Yv33)/5._dp - (12*g1p2*gpp2*M1*Qe2*QHu*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe2*QHu*Yv33)/5._dp - (12*g1p2*gpp2*M1*Qe3*QHu*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe3*QHu*Yv33)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu*Yv33)/5._dp +         & 
&  (12*g1p2*gpp2*M4*QHd*QHu*Yv33)/5._dp - (24*g1p2*gpp2*M1*QHup2*Yv33)/5._dp +           & 
&  4*Abslam*gpp2*M4*QHup2*Yv33 + 4*AbsYv22*gpp2*M4*QHup2*Yv33 - (24*g1p2*gpp2*M4*QHup2*Yv33)/5._dp -& 
&  12*g2p2*gpp2*M4*QHup2*Yv33 - 12*g2p2*gpp2*M2*QHup2*Yv33 - 72*gpp4*M4*Qdp2*QHup2*Yv33 -& 
&  8*gpp4*M4*Qe1p2*QHup2*Yv33 - 8*gpp4*M4*Qe2p2*QHup2*Yv33 - 8*gpp4*M4*Qe3p2*QHup2*Yv33 -& 
&  16*gpp4*M4*QHdp2*QHup2*Yv33 - 32*gpp4*M4*QHup4*Yv33 + (12*g1p2*gpp2*M1*QHu*Ql1*Yv33)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql1*Yv33)/5._dp - 16*gpp4*M4*QHup2*Ql1p2*Yv33 + (12*g1p2*gpp2*M1*QHu*Ql2*Yv33)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql2*Yv33)/5._dp - 4*AbsYv22*gpp2*M4*Ql2p2*Yv33 - 16*gpp4*M4*QHup2*Ql2p2*Yv33 +& 
&  (36*g1p2*gpp2*M1*Qd*Ql3*Yv33)/5._dp + (36*g1p2*gpp2*M4*Qd*Ql3*Yv33)/5._dp +           & 
&  (12*g1p2*gpp2*M1*Qe1*Ql3*Yv33)/5._dp + (12*g1p2*gpp2*M4*Qe1*Ql3*Yv33)/5._dp +         & 
&  (12*g1p2*gpp2*M1*Qe2*Ql3*Yv33)/5._dp + (12*g1p2*gpp2*M4*Qe2*Ql3*Yv33)/5._dp +         & 
&  (12*g1p2*gpp2*M1*Qe3*Ql3*Yv33)/5._dp + (12*g1p2*gpp2*M4*Qe3*Ql3*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M1*QHd*Ql3*Yv33)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql3*Yv33)/5._dp +         & 
&  (24*g1p2*gpp2*M1*QHu*Ql3*Yv33)/5._dp + (24*g1p2*gpp2*M4*QHu*Ql3*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M1*Ql1*Ql3*Yv33)/5._dp - (12*g1p2*gpp2*M4*Ql1*Ql3*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M1*Ql2*Ql3*Yv33)/5._dp - (12*g1p2*gpp2*M4*Ql2*Ql3*Yv33)/5._dp  
betaTYv332 =  betaTYv332- (24*g1p2*gpp2*M1*Ql3p2*Yv33)/5._dp - (24*g1p2*gpp2*M4*Ql3p2*Yv33)/5._dp -             & 
&  12*g2p2*gpp2*M4*Ql3p2*Yv33 - 12*g2p2*gpp2*M2*Ql3p2*Yv33 - 72*gpp4*M4*Qdp2*Ql3p2*Yv33 -& 
&  8*gpp4*M4*Qe1p2*Ql3p2*Yv33 - 8*gpp4*M4*Qe2p2*Ql3p2*Yv33 - 8*gpp4*M4*Qe3p2*Ql3p2*Yv33 -& 
&  16*gpp4*M4*QHdp2*Ql3p2*Yv33 - 32*gpp4*M4*QHup2*Ql3p2*Yv33 - 16*gpp4*M4*Ql1p2*Ql3p2*Yv33 -& 
&  16*gpp4*M4*Ql2p2*Ql3p2*Yv33 - 32*gpp4*M4*Ql3p4*Yv33 - (36*g1p2*gpp2*M1*QHu*Qq*Yv33)/5._dp -& 
&  (36*g1p2*gpp2*M4*QHu*Qq*Yv33)/5._dp + (36*g1p2*gpp2*M1*Ql3*Qq*Yv33)/5._dp +           & 
&  (36*g1p2*gpp2*M4*Ql3*Qq*Yv33)/5._dp - 144*gpp4*M4*QHup2*Qqp2*Yv33 - 144*gpp4*M4*Ql3p2*Qqp2*Yv33 -& 
&  4*Abslam*gpp2*M4*Qsp2*Yv33 - 8*gpp4*M4*QHup2*Qsp2*Yv33 - 8*gpp4*M4*Ql3p2*Qsp2*Yv33 +  & 
&  (72*g1p2*gpp2*M1*QHu*Qu*Yv33)/5._dp + (72*g1p2*gpp2*M4*QHu*Qu*Yv33)/5._dp -           & 
&  (72*g1p2*gpp2*M1*Ql3*Qu*Yv33)/5._dp - (72*g1p2*gpp2*M4*Ql3*Qu*Yv33)/5._dp -           & 
&  72*gpp4*M4*QHup2*Qup2*Yv33 - 72*gpp4*M4*Ql3p2*Qup2*Yv33 - 8*gpp4*M4*QHup2*Qv1p2*Yv33 -& 
&  8*gpp4*M4*Ql3p2*Qv1p2*Yv33 - 4*AbsYv22*gpp2*M4*Qv2p2*Yv33 - 8*gpp4*M4*QHup2*Qv2p2*Yv33 -& 
&  8*gpp4*M4*Ql3p2*Qv2p2*Yv33 - 72*gpp4*M4*Qdp2*Qv3p2*Yv33 - 8*gpp4*M4*Qe1p2*Qv3p2*Yv33 -& 
&  8*gpp4*M4*Qe2p2*Qv3p2*Yv33 - 8*gpp4*M4*Qe3p2*Qv3p2*Yv33 - 16*gpp4*M4*QHdp2*Qv3p2*Yv33 -& 
&  24*gpp4*M4*QHup2*Qv3p2*Yv33 - 16*gpp4*M4*Ql1p2*Qv3p2*Yv33 - 16*gpp4*M4*Ql2p2*Qv3p2*Yv33 -& 
&  24*gpp4*M4*Ql3p2*Qv3p2*Yv33 - 144*gpp4*M4*Qqp2*Qv3p2*Yv33 - 8*gpp4*M4*Qsp2*Qv3p2*Yv33 -& 
&  72*gpp4*M4*Qup2*Qv3p2*Yv33 - 8*gpp4*M4*Qv1p2*Qv3p2*Yv33 - 8*gpp4*M4*Qv2p2*Qv3p2*Yv33 -& 
&  24*gpp4*M4*Qv3p4*Yv33 - 6*Abslam*TradjYdTd*Yv33 + (8*g1p2*TradjYuTu*Yv33)/5._dp +     & 
&  32*g3p2*TradjYuTu*Yv33 - 12*gpp2*QHup2*TradjYuTu*Yv33 + 12*gpp2*Qqp2*TradjYuTu*Yv33 + & 
&  12*gpp2*Qup2*TradjYuTu*Yv33 - 6*TrYdadjYuTuadjYd*Yv33 - 6*TrYuadjYdTdadjYu*Yv33 -     & 
&  (8*g1p2*M1*TrYuadjYu*Yv33)/5._dp - 32*g3p2*M3*TrYuadjYu*Yv33 + 12*gpp2*M4*QHup2*TrYuadjYu*Yv33  
betaTYv332 =  betaTYv332- 12*gpp2*M4*Qqp2*TrYuadjYu*Yv33 - 12*gpp2*M4*Qup2*TrYuadjYu*Yv33 - 36*TrYuadjYuTuadjYu*Yv33 -& 
&  (12*g1p2*M1*Yv33p2*Conjg(Yv33))/5._dp - 12*g2p2*M2*Yv33p2*Conjg(Yv33) -               & 
&  8*gpp2*M4*QHup2*Yv33p2*Conjg(Yv33) - 8*gpp2*M4*Ql3p2*Yv33p2*Conjg(Yv33) -             & 
&  18*TradjYuTu*Yv33p2*Conjg(Yv33) - 2*Abslam*Yv33*Conjg(Ye11)*TYe11 - 2*Abslam*Yv33*Conjg(Ye22)*TYe22 -& 
&  2*AbsYv22*Yv33*Conjg(Ye22)*TYe22 - 12*CYv22p2*Yv22*Yv33*TYv22 - 2*AbsYe22*Yv33*Conjg(Yv22)*TYv22 -& 
&  4*gpp2*QHup2*Yv33*Conjg(Yv22)*TYv22 + 4*gpp2*Ql2p2*Yv33*Conjg(Yv22)*TYv22 +           & 
&  4*gpp2*Qv2p2*Yv33*Conjg(Yv22)*TYv22 - 6*Yv33p2*Conjg(Yv22)*Conjg(Yv33)*TYv22 -        & 
&  Abslam*AbsYe11*TYv33 - Abslam*AbsYe22*TYv33 - AbsYe22*AbsYv22*TYv33 - 9*Abslam*AbsYv33*TYv33 -& 
&  9*AbsYv22*AbsYv33*TYv33 + (18*AbsYv33*g1p2*TYv33)/5._dp + (207*g1p4*TYv33)/50._dp +   & 
&  18*AbsYv33*g2p2*TYv33 + (9*g1p2*g2p2*TYv33)/5._dp + (15*g2p4*TYv33)/2._dp -           & 
&  3*Clamp2*lamp2*TYv33 + 2*Abslam*gpp2*QHdp2*TYv33 + (18*g1p2*gpp2*Qd*QHu*TYv33)/5._dp +& 
&  (6*g1p2*gpp2*Qe1*QHu*TYv33)/5._dp + (6*g1p2*gpp2*Qe2*QHu*TYv33)/5._dp +               & 
&  (6*g1p2*gpp2*Qe3*QHu*TYv33)/5._dp - (6*g1p2*gpp2*QHd*QHu*TYv33)/5._dp -               & 
&  2*Abslam*gpp2*QHup2*TYv33 - 2*AbsYv22*gpp2*QHup2*TYv33 + 12*AbsYv33*gpp2*QHup2*TYv33 +& 
&  (12*g1p2*gpp2*QHup2*TYv33)/5._dp + 6*g2p2*gpp2*QHup2*TYv33 + 18*gpp4*Qdp2*QHup2*TYv33 +& 
&  2*gpp4*Qe1p2*QHup2*TYv33 + 2*gpp4*Qe2p2*QHup2*TYv33 + 2*gpp4*Qe3p2*QHup2*TYv33 +      & 
&  4*gpp4*QHdp2*QHup2*TYv33 + 8*gpp4*QHup4*TYv33 - (6*g1p2*gpp2*QHu*Ql1*TYv33)/5._dp +   & 
&  4*gpp4*QHup2*Ql1p2*TYv33 - (6*g1p2*gpp2*QHu*Ql2*TYv33)/5._dp + 2*AbsYv22*gpp2*Ql2p2*TYv33 +& 
&  4*gpp4*QHup2*Ql2p2*TYv33 - (18*g1p2*gpp2*Qd*Ql3*TYv33)/5._dp - (6*g1p2*gpp2*Qe1*Ql3*TYv33)/5._dp -& 
&  (6*g1p2*gpp2*Qe2*Ql3*TYv33)/5._dp - (6*g1p2*gpp2*Qe3*Ql3*TYv33)/5._dp +               & 
&  (6*g1p2*gpp2*QHd*Ql3*TYv33)/5._dp - (12*g1p2*gpp2*QHu*Ql3*TYv33)/5._dp  
betaTYv332 =  betaTYv332+ (6*g1p2*gpp2*Ql1*Ql3*TYv33)/5._dp + (6*g1p2*gpp2*Ql2*Ql3*TYv33)/5._dp +               & 
&  12*AbsYv33*gpp2*Ql3p2*TYv33 + (12*g1p2*gpp2*Ql3p2*TYv33)/5._dp + 6*g2p2*gpp2*Ql3p2*TYv33 +& 
&  18*gpp4*Qdp2*Ql3p2*TYv33 + 2*gpp4*Qe1p2*Ql3p2*TYv33 + 2*gpp4*Qe2p2*Ql3p2*TYv33 +      & 
&  2*gpp4*Qe3p2*Ql3p2*TYv33 + 4*gpp4*QHdp2*Ql3p2*TYv33 + 8*gpp4*QHup2*Ql3p2*TYv33 +      & 
&  4*gpp4*Ql1p2*Ql3p2*TYv33 + 4*gpp4*Ql2p2*Ql3p2*TYv33 + 8*gpp4*Ql3p4*TYv33 +            & 
&  (18*g1p2*gpp2*QHu*Qq*TYv33)/5._dp - (18*g1p2*gpp2*Ql3*Qq*TYv33)/5._dp +               & 
&  36*gpp4*QHup2*Qqp2*TYv33 + 36*gpp4*Ql3p2*Qqp2*TYv33 + 2*Abslam*gpp2*Qsp2*TYv33 +      & 
&  2*gpp4*QHup2*Qsp2*TYv33 + 2*gpp4*Ql3p2*Qsp2*TYv33 - (36*g1p2*gpp2*QHu*Qu*TYv33)/5._dp +& 
&  (36*g1p2*gpp2*Ql3*Qu*TYv33)/5._dp + 18*gpp4*QHup2*Qup2*TYv33 + 18*gpp4*Ql3p2*Qup2*TYv33 +& 
&  2*gpp4*QHup2*Qv1p2*TYv33 + 2*gpp4*Ql3p2*Qv1p2*TYv33 + 2*AbsYv22*gpp2*Qv2p2*TYv33 +    & 
&  2*gpp4*QHup2*Qv2p2*TYv33 + 2*gpp4*Ql3p2*Qv2p2*TYv33 + 18*gpp4*Qdp2*Qv3p2*TYv33 +      & 
&  2*gpp4*Qe1p2*Qv3p2*TYv33 + 2*gpp4*Qe2p2*Qv3p2*TYv33 + 2*gpp4*Qe3p2*Qv3p2*TYv33 +      & 
&  4*gpp4*QHdp2*Qv3p2*TYv33 + 6*gpp4*QHup2*Qv3p2*TYv33 + 4*gpp4*Ql1p2*Qv3p2*TYv33 +      & 
&  4*gpp4*Ql2p2*Qv3p2*TYv33 + 6*gpp4*Ql3p2*Qv3p2*TYv33 + 36*gpp4*Qqp2*Qv3p2*TYv33 +      & 
&  2*gpp4*Qsp2*Qv3p2*TYv33 + 18*gpp4*Qup2*Qv3p2*TYv33 + 2*gpp4*Qv1p2*Qv3p2*TYv33 +       & 
&  2*gpp4*Qv2p2*Qv3p2*TYv33 + 6*gpp4*Qv3p4*TYv33 - 3*Abslam*TrYdadjYd*TYv33 -            & 
&  3*TrYdadjYuYuadjYd*TYv33 - 27*AbsYv33*TrYuadjYu*TYv33 + (4*g1p2*TrYuadjYu*TYv33)/5._dp +& 
&  16*g3p2*TrYuadjYu*TYv33 - 6*gpp2*QHup2*TrYuadjYu*TYv33 + 6*gpp2*Qqp2*TrYuadjYu*TYv33 +& 
&  6*gpp2*Qup2*TrYuadjYu*TYv33 - 9*TrYuadjYuYuadjYu*TYv33 - 3*CYv22p2*Yv22p2*TYv33 -     & 
&  50*CYv33p2*Yv33p2*TYv33 - 3*CYe33p2*Ye33*(4*Yv33*TYe33 + Ye33*TYv33) - 3*CYv11p2*Yv11*(4*Yv33*TYv11 +& 
&  Yv11*TYv33) + Conjg(Yv11)*(2*(-3._dp*(AbsYv33) + 2*gpp2*(-1._dp*(QHup2) +             & 
&  Ql1p2 + Qv1p2))*Yv33*TYv11 + Yv11*(4*gpp2*M4*(QHup2 - Ql1p2 - Qv1p2)*Yv33 +           & 
&  (-9._dp*(AbsYv33) + 2*gpp2*(-1._dp*(QHup2) + Ql1p2 + Qv1p2))*TYv33) - Conjg(Ye11)*(2*Yv11*Yv33*TYe11 +& 
&  2*Ye11*Yv33*TYv11 + Ye11*Yv11*TYv33)) - 12*Clamp2*Yv33*lam*Tlam - 2*AbsYe11*Yv33*Conjg(lam)*Tlam  
betaTYv332 =  betaTYv332- 2*AbsYe22*Yv33*Conjg(lam)*Tlam + 4*gpp2*QHdp2*Yv33*Conjg(lam)*Tlam - 4*gpp2*QHup2*Yv33*Conjg(lam)*Tlam +& 
&  4*gpp2*Qsp2*Yv33*Conjg(lam)*Tlam - 6*TrYdadjYd*Yv33*Conjg(lam)*Tlam - 6*Yv33p2*Conjg(Yv33)*Conjg(lam)*Tlam +& 
&  Conjg(Ye33)*((-12*g1p2*M1*Ye33*Yv33)/5._dp - 4*gpp2*M4*Qe3p2*Ye33*Yv33 -              & 
&  4*gpp2*M4*QHdp2*Ye33*Yv33 + 4*gpp2*M4*Ql3p2*Ye33*Yv33 - 6*TradjYdTd*Ye33*Yv33 -       & 
&  4*Abslam*Yv33*TYe33 + (12*g1p2*Yv33*TYe33)/5._dp + 4*gpp2*Qe3p2*Yv33*TYe33 +          & 
&  4*gpp2*QHdp2*Yv33*TYe33 - 4*gpp2*Ql3p2*Yv33*TYe33 - 6*TrYdadjYd*Yv33*TYe33 -          & 
&  6*Yv33p2*Conjg(Yv33)*TYe33 - 2*Abslam*Ye33*TYv33 - 9*AbsYv33*Ye33*TYv33 +             & 
&  (6*g1p2*Ye33*TYv33)/5._dp + 2*gpp2*Qe3p2*Ye33*TYv33 + 2*gpp2*QHdp2*Ye33*TYv33 -       & 
&  2*gpp2*Ql3p2*Ye33*TYv33 - 3*TrYdadjYd*Ye33*TYv33 - Conjg(Ye11)*(2*Ye33*Yv33*TYe11 +   & 
&  2*Ye11*Yv33*TYe33 + Ye11*Ye33*TYv33) - Conjg(Ye22)*(2*Ye33*Yv33*TYe22 +               & 
&  2*Ye22*Yv33*TYe33 + Ye22*Ye33*TYv33) - 4*Ye33*Yv33*Conjg(lam)*Tlam)

 
DTYv33 = oo16pi2*( betaTYv331 + oo16pi2 * betaTYv332 ) 

 
Else 
DTYv33 = oo16pi2* betaTYv331 
End If 
 
 
Call Chop(DTYv33) 

!-------------------- 
! Tu 
!-------------------- 
 
betaTu1  = TuadjYdYd + 5._dp*(TuadjYuYu) + 2._dp*(YuadjYdTd) + 4._dp*(YuadjYuTu)      & 
&  + Abslam*Tu + AbsYv11*Tu + AbsYv22*Tu + AbsYv33*Tu - (13*g1p2*Tu)/15._dp -            & 
&  3*g2p2*Tu - (16*g3p2*Tu)/3._dp - 2*gpp2*QHup2*Tu - 2*gpp2*Qqp2*Tu - 2*gpp2*Qup2*Tu +  & 
&  3*TrYuadjYu*Tu + Yu*((26*g1p2*M1)/15._dp + (32*g3p2*M3)/3._dp + 6*g2p2*M2 +           & 
&  4*gpp2*M4*QHup2 + 4*gpp2*M4*Qqp2 + 4*gpp2*M4*Qup2 + 6._dp*(TradjYuTu) +               & 
&  2*Conjg(Yv11)*TYv11 + 2*Conjg(Yv22)*TYv22 + 2*Conjg(Yv33)*TYv33 + 2*Conjg(lam)*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTu2 = -(Abslam*TuadjYdYd) - AbsYe11*TuadjYdYd - AbsYe22*TuadjYdYd - AbsYe33*TuadjYdYd +     & 
&  (2*g1p2*TuadjYdYd)/5._dp + 2*gpp2*Qdp2*TuadjYdYd + 2*gpp2*QHdp2*TuadjYdYd -           & 
&  2*gpp2*Qqp2*TuadjYdYd - 3*TrYdadjYd*TuadjYdYd - 2._dp*(TuadjYdYdadjYdYd) -            & 
&  4._dp*(TuadjYdYdadjYuYu) - 5*Abslam*TuadjYuYu - 5*AbsYv11*TuadjYuYu - 5*AbsYv22*TuadjYuYu -& 
&  5*AbsYv33*TuadjYuYu + 12*g2p2*TuadjYuYu + 10*gpp2*QHup2*TuadjYuYu + 6*gpp2*Qqp2*TuadjYuYu -& 
&  6*gpp2*Qup2*TuadjYuYu - 15*TrYuadjYu*TuadjYuYu - 6._dp*(TuadjYuYuadjYuYu) -           & 
&  2*Abslam*YuadjYdTd - 2*AbsYe11*YuadjYdTd - 2*AbsYe22*YuadjYdTd - 2*AbsYe33*YuadjYdTd +& 
&  (4*g1p2*YuadjYdTd)/5._dp + 4*gpp2*Qdp2*YuadjYdTd + 4*gpp2*QHdp2*YuadjYdTd -           & 
&  4*gpp2*Qqp2*YuadjYdTd - 6*TrYdadjYd*YuadjYdTd - 4._dp*(YuadjYdTdadjYdYd) -            & 
&  4._dp*(YuadjYdTdadjYuYu) - 4._dp*(YuadjYdYdadjYdTd) - 2._dp*(YuadjYdYdadjYuTu) -      & 
&  4*Abslam*YuadjYuTu - 4*AbsYv11*YuadjYuTu - 4*AbsYv22*YuadjYuTu - 4*AbsYv33*YuadjYuTu +& 
&  (6*g1p2*YuadjYuTu)/5._dp + 6*g2p2*YuadjYuTu + 8*gpp2*QHup2*YuadjYuTu - 12*TrYuadjYu*YuadjYuTu -& 
&  8._dp*(YuadjYuTuadjYuYu) - (4*g1p2*M1*YuadjYuYu)/5._dp - 12*g2p2*M2*YuadjYuYu -       & 
&  12*gpp2*M4*QHup2*YuadjYuYu - 4*gpp2*M4*Qqp2*YuadjYuYu + 4*gpp2*M4*Qup2*YuadjYuYu -    & 
&  18*TradjYuTu*YuadjYuYu - 6._dp*(YuadjYuYuadjYuTu) - Abslam*AbsYe11*Tu -               & 
&  Abslam*AbsYe22*Tu - Abslam*AbsYe33*Tu - AbsYe11*AbsYv11*Tu - AbsYe22*AbsYv22*Tu -     & 
&  AbsYe33*AbsYv33*Tu + (2743*g1p4*Tu)/450._dp + g1p2*g2p2*Tu + (15*g2p4*Tu)/2._dp +     & 
&  (136*g1p2*g3p2*Tu)/45._dp + 8*g2p2*g3p2*Tu - (16*g3p4*Tu)/9._dp - 3*Clamp2*lamp2*Tu + & 
&  2*Abslam*gpp2*QHdp2*Tu + (18*g1p2*gpp2*Qd*QHu*Tu)/5._dp + (6*g1p2*gpp2*Qe1*QHu*Tu)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*Tu)/5._dp + (6*g1p2*gpp2*Qe3*QHu*Tu)/5._dp - (6*g1p2*gpp2*QHd*QHu*Tu)/5._dp -& 
&  2*Abslam*gpp2*QHup2*Tu - 2*AbsYv11*gpp2*QHup2*Tu - 2*AbsYv22*gpp2*QHup2*Tu  
betaTu2 =  betaTu2- 2*AbsYv33*gpp2*QHup2*Tu + (12*g1p2*gpp2*QHup2*Tu)/5._dp + 6*g2p2*gpp2*QHup2*Tu +      & 
&  18*gpp4*Qdp2*QHup2*Tu + 2*gpp4*Qe1p2*QHup2*Tu + 2*gpp4*Qe2p2*QHup2*Tu +               & 
&  2*gpp4*Qe3p2*QHup2*Tu + 4*gpp4*QHdp2*QHup2*Tu + 8*gpp4*QHup4*Tu - (6*g1p2*gpp2*QHu*Ql1*Tu)/5._dp +& 
&  2*AbsYv11*gpp2*Ql1p2*Tu + 4*gpp4*QHup2*Ql1p2*Tu - (6*g1p2*gpp2*QHu*Ql2*Tu)/5._dp +    & 
&  2*AbsYv22*gpp2*Ql2p2*Tu + 4*gpp4*QHup2*Ql2p2*Tu - (6*g1p2*gpp2*QHu*Ql3*Tu)/5._dp +    & 
&  2*AbsYv33*gpp2*Ql3p2*Tu + 4*gpp4*QHup2*Ql3p2*Tu + (6*g1p2*gpp2*Qd*Qq*Tu)/5._dp +      & 
&  (2*g1p2*gpp2*Qe1*Qq*Tu)/5._dp + (2*g1p2*gpp2*Qe2*Qq*Tu)/5._dp + (2*g1p2*gpp2*Qe3*Qq*Tu)/5._dp -& 
&  (2*g1p2*gpp2*QHd*Qq*Tu)/5._dp + 4*g1p2*gpp2*QHu*Qq*Tu - (2*g1p2*gpp2*Ql1*Qq*Tu)/5._dp -& 
&  (2*g1p2*gpp2*Ql2*Qq*Tu)/5._dp - (2*g1p2*gpp2*Ql3*Qq*Tu)/5._dp + (4*g1p2*gpp2*Qqp2*Tu)/3._dp +& 
&  6*g2p2*gpp2*Qqp2*Tu + (32*g3p2*gpp2*Qqp2*Tu)/3._dp + 18*gpp4*Qdp2*Qqp2*Tu +           & 
&  2*gpp4*Qe1p2*Qqp2*Tu + 2*gpp4*Qe2p2*Qqp2*Tu + 2*gpp4*Qe3p2*Qqp2*Tu + 4*gpp4*QHdp2*Qqp2*Tu +& 
&  40*gpp4*QHup2*Qqp2*Tu + 4*gpp4*Ql1p2*Qqp2*Tu + 4*gpp4*Ql2p2*Qqp2*Tu + 4*gpp4*Ql3p2*Qqp2*Tu +& 
&  40*gpp4*Qqp4*Tu + 2*Abslam*gpp2*Qsp2*Tu + 2*gpp4*QHup2*Qsp2*Tu + 2*gpp4*Qqp2*Qsp2*Tu -& 
&  (24*g1p2*gpp2*Qd*Qu*Tu)/5._dp - (8*g1p2*gpp2*Qe1*Qu*Tu)/5._dp - (8*g1p2*gpp2*Qe2*Qu*Tu)/5._dp -& 
&  (8*g1p2*gpp2*Qe3*Qu*Tu)/5._dp + (8*g1p2*gpp2*QHd*Qu*Tu)/5._dp - (44*g1p2*gpp2*QHu*Qu*Tu)/5._dp +& 
&  (8*g1p2*gpp2*Ql1*Qu*Tu)/5._dp + (8*g1p2*gpp2*Ql2*Qu*Tu)/5._dp + (8*g1p2*gpp2*Ql3*Qu*Tu)/5._dp -& 
&  (36*g1p2*gpp2*Qq*Qu*Tu)/5._dp + (176*g1p2*gpp2*Qup2*Tu)/15._dp + (32*g3p2*gpp2*Qup2*Tu)/3._dp +& 
&  18*gpp4*Qdp2*Qup2*Tu + 2*gpp4*Qe1p2*Qup2*Tu + 2*gpp4*Qe2p2*Qup2*Tu + 2*gpp4*Qe3p2*Qup2*Tu +& 
&  4*gpp4*QHdp2*Qup2*Tu + 22*gpp4*QHup2*Qup2*Tu + 4*gpp4*Ql1p2*Qup2*Tu + 4*gpp4*Ql2p2*Qup2*Tu +& 
&  4*gpp4*Ql3p2*Qup2*Tu + 54*gpp4*Qqp2*Qup2*Tu + 2*gpp4*Qsp2*Qup2*Tu + 22*gpp4*Qup4*Tu + & 
&  2*AbsYv11*gpp2*Qv1p2*Tu + 2*gpp4*QHup2*Qv1p2*Tu + 2*gpp4*Qqp2*Qv1p2*Tu  
betaTu2 =  betaTu2+ 2*gpp4*Qup2*Qv1p2*Tu + 2*AbsYv22*gpp2*Qv2p2*Tu + 2*gpp4*QHup2*Qv2p2*Tu +              & 
&  2*gpp4*Qqp2*Qv2p2*Tu + 2*gpp4*Qup2*Qv2p2*Tu + 2*AbsYv33*gpp2*Qv3p2*Tu +               & 
&  2*gpp4*QHup2*Qv3p2*Tu + 2*gpp4*Qqp2*Qv3p2*Tu + 2*gpp4*Qup2*Qv3p2*Tu - 3*Abslam*TrYdadjYd*Tu -& 
&  3*TrYdadjYuYuadjYd*Tu + (4*g1p2*TrYuadjYu*Tu)/5._dp + 16*g3p2*TrYuadjYu*Tu -          & 
&  6*gpp2*QHup2*TrYuadjYu*Tu + 6*gpp2*Qqp2*TrYuadjYu*Tu + 6*gpp2*Qup2*TrYuadjYu*Tu -     & 
&  9*TrYuadjYuYuadjYu*Tu - 3*CYv11p2*Yv11p2*Tu - 3*CYv22p2*Yv22p2*Tu - 3*CYv33p2*Yv33p2*Tu -& 
&  6*YuadjYuYu*Conjg(Yv11)*TYv11 - 6*YuadjYuYu*Conjg(Yv22)*TYv22 - 6*YuadjYuYu*Conjg(Yv33)*TYv33 -& 
&  6*YuadjYuYu*Conjg(lam)*Tlam - (2*YuadjYdYd*(2*g1p2*M1 + 10*gpp2*M4*Qdp2 +             & 
&  10*gpp2*M4*QHdp2 - 10*gpp2*M4*Qqp2 + 15._dp*(TradjYdTd) + 5*Conjg(Ye11)*TYe11 +       & 
&  5*Conjg(Ye22)*TYe22 + 5*Conjg(Ye33)*TYe33 + 5*Conjg(lam)*Tlam))/5._dp +               & 
&  Yu*((-5486*g1p4*M1)/225._dp - 2*g1p2*g2p2*M1 - (272*g1p2*g3p2*M1)/45._dp -            & 
&  (272*g1p2*g3p2*M3)/45._dp - 16*g2p2*g3p2*M3 + (64*g3p4*M3)/9._dp - 2*g1p2*g2p2*M2 -   & 
&  30*g2p4*M2 - 16*g2p2*g3p2*M2 - 4*Abslam*gpp2*M4*QHdp2 - (36*g1p2*gpp2*M1*Qd*QHu)/5._dp -& 
&  (36*g1p2*gpp2*M4*Qd*QHu)/5._dp - (12*g1p2*gpp2*M1*Qe1*QHu)/5._dp - (12*g1p2*gpp2*M4*Qe1*QHu)/5._dp -& 
&  (12*g1p2*gpp2*M1*Qe2*QHu)/5._dp - (12*g1p2*gpp2*M4*Qe2*QHu)/5._dp - (12*g1p2*gpp2*M1*Qe3*QHu)/5._dp -& 
&  (12*g1p2*gpp2*M4*Qe3*QHu)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu)/5._dp + (12*g1p2*gpp2*M4*QHd*QHu)/5._dp -& 
&  (24*g1p2*gpp2*M1*QHup2)/5._dp + 4*Abslam*gpp2*M4*QHup2 + 4*AbsYv33*gpp2*M4*QHup2 -    & 
&  (24*g1p2*gpp2*M4*QHup2)/5._dp - 12*g2p2*gpp2*M4*QHup2 - 12*g2p2*gpp2*M2*QHup2 -       & 
&  72*gpp4*M4*Qdp2*QHup2 - 8*gpp4*M4*Qe1p2*QHup2 - 8*gpp4*M4*Qe2p2*QHup2 -               & 
&  8*gpp4*M4*Qe3p2*QHup2 - 16*gpp4*M4*QHdp2*QHup2 - 32*gpp4*M4*QHup4 + (12*g1p2*gpp2*M1*QHu*Ql1)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql1)/5._dp - 16*gpp4*M4*QHup2*Ql1p2 + (12*g1p2*gpp2*M1*QHu*Ql2)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql2)/5._dp - 16*gpp4*M4*QHup2*Ql2p2 + (12*g1p2*gpp2*M1*QHu*Ql3)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql3)/5._dp - 4*AbsYv33*gpp2*M4*Ql3p2 - 16*gpp4*M4*QHup2*Ql3p2 -  & 
&  (12*g1p2*gpp2*M1*Qd*Qq)/5._dp - (12*g1p2*gpp2*M4*Qd*Qq)/5._dp - (4*g1p2*gpp2*M1*Qe1*Qq)/5._dp -& 
&  (4*g1p2*gpp2*M4*Qe1*Qq)/5._dp - (4*g1p2*gpp2*M1*Qe2*Qq)/5._dp - (4*g1p2*gpp2*M4*Qe2*Qq)/5._dp -& 
&  (4*g1p2*gpp2*M1*Qe3*Qq)/5._dp - (4*g1p2*gpp2*M4*Qe3*Qq)/5._dp + (4*g1p2*gpp2*M1*QHd*Qq)/5._dp +& 
&  (4*g1p2*gpp2*M4*QHd*Qq)/5._dp - 8*g1p2*gpp2*M1*QHu*Qq - 8*g1p2*gpp2*M4*QHu*Qq +       & 
&  (4*g1p2*gpp2*M1*Ql1*Qq)/5._dp + (4*g1p2*gpp2*M4*Ql1*Qq)/5._dp + (4*g1p2*gpp2*M1*Ql2*Qq)/5._dp +& 
&  (4*g1p2*gpp2*M4*Ql2*Qq)/5._dp + (4*g1p2*gpp2*M1*Ql3*Qq)/5._dp + (4*g1p2*gpp2*M4*Ql3*Qq)/5._dp -& 
&  (8*g1p2*gpp2*M1*Qqp2)/3._dp - (64*g3p2*gpp2*M3*Qqp2)/3._dp - (8*g1p2*gpp2*M4*Qqp2)/3._dp -& 
&  12*g2p2*gpp2*M4*Qqp2 - (64*g3p2*gpp2*M4*Qqp2)/3._dp - 12*g2p2*gpp2*M2*Qqp2 -          & 
&  72*gpp4*M4*Qdp2*Qqp2 - 8*gpp4*M4*Qe1p2*Qqp2 - 8*gpp4*M4*Qe2p2*Qqp2 - 8*gpp4*M4*Qe3p2*Qqp2 -& 
&  16*gpp4*M4*QHdp2*Qqp2 - 160*gpp4*M4*QHup2*Qqp2 - 16*gpp4*M4*Ql1p2*Qqp2 -              & 
&  16*gpp4*M4*Ql2p2*Qqp2 - 16*gpp4*M4*Ql3p2*Qqp2 - 160*gpp4*M4*Qqp4 - 4*Abslam*gpp2*M4*Qsp2 -& 
&  8*gpp4*M4*QHup2*Qsp2 - 8*gpp4*M4*Qqp2*Qsp2 + (48*g1p2*gpp2*M1*Qd*Qu)/5._dp +          & 
&  (48*g1p2*gpp2*M4*Qd*Qu)/5._dp + (16*g1p2*gpp2*M1*Qe1*Qu)/5._dp + (16*g1p2*gpp2*M4*Qe1*Qu)/5._dp +& 
&  (16*g1p2*gpp2*M1*Qe2*Qu)/5._dp + (16*g1p2*gpp2*M4*Qe2*Qu)/5._dp + (16*g1p2*gpp2*M1*Qe3*Qu)/5._dp +& 
&  (16*g1p2*gpp2*M4*Qe3*Qu)/5._dp - (16*g1p2*gpp2*M1*QHd*Qu)/5._dp - (16*g1p2*gpp2*M4*QHd*Qu)/5._dp +& 
&  (88*g1p2*gpp2*M1*QHu*Qu)/5._dp + (88*g1p2*gpp2*M4*QHu*Qu)/5._dp - (16*g1p2*gpp2*M1*Ql1*Qu)/5._dp -& 
&  (16*g1p2*gpp2*M4*Ql1*Qu)/5._dp - (16*g1p2*gpp2*M1*Ql2*Qu)/5._dp - (16*g1p2*gpp2*M4*Ql2*Qu)/5._dp -& 
&  (16*g1p2*gpp2*M1*Ql3*Qu)/5._dp - (16*g1p2*gpp2*M4*Ql3*Qu)/5._dp + (72*g1p2*gpp2*M1*Qq*Qu)/5._dp +& 
&  (72*g1p2*gpp2*M4*Qq*Qu)/5._dp - (352*g1p2*gpp2*M1*Qup2)/15._dp - (64*g3p2*gpp2*M3*Qup2)/3._dp -& 
&  (352*g1p2*gpp2*M4*Qup2)/15._dp - (64*g3p2*gpp2*M4*Qup2)/3._dp - 72*gpp4*M4*Qdp2*Qup2 -& 
&  8*gpp4*M4*Qe1p2*Qup2 - 8*gpp4*M4*Qe2p2*Qup2 - 8*gpp4*M4*Qe3p2*Qup2 - 16*gpp4*M4*QHdp2*Qup2 -& 
&  88*gpp4*M4*QHup2*Qup2 - 16*gpp4*M4*Ql1p2*Qup2 - 16*gpp4*M4*Ql2p2*Qup2 -               & 
&  16*gpp4*M4*Ql3p2*Qup2 - 216*gpp4*M4*Qqp2*Qup2 - 8*gpp4*M4*Qsp2*Qup2 - 88*gpp4*M4*Qup4 -& 
&  8*gpp4*M4*QHup2*Qv1p2 - 8*gpp4*M4*Qqp2*Qv1p2 - 8*gpp4*M4*Qup2*Qv1p2 - 8*gpp4*M4*QHup2*Qv2p2 -& 
&  8*gpp4*M4*Qqp2*Qv2p2 - 8*gpp4*M4*Qup2*Qv2p2 - 4*AbsYv33*gpp2*M4*Qv3p2 -               & 
&  8*gpp4*M4*QHup2*Qv3p2 - 8*gpp4*M4*Qqp2*Qv3p2 - 8*gpp4*M4*Qup2*Qv3p2 - 6*Abslam*TradjYdTd +& 
&  (8*g1p2*TradjYuTu)/5._dp + 32*g3p2*TradjYuTu - 12*gpp2*QHup2*TradjYuTu +              & 
&  12*gpp2*Qqp2*TradjYuTu + 12*gpp2*Qup2*TradjYuTu - 6._dp*(TrYdadjYuTuadjYd) -          & 
&  6._dp*(TrYuadjYdTdadjYu) - (8*g1p2*M1*TrYuadjYu)/5._dp - 32*g3p2*M3*TrYuadjYu +       & 
&  12*gpp2*M4*QHup2*TrYuadjYu - 12*gpp2*M4*Qqp2*TrYuadjYu - 12*gpp2*M4*Qup2*TrYuadjYu -  & 
&  36._dp*(TrYuadjYuTuadjYu) - 2*Abslam*Conjg(Ye11)*TYe11 - 2*Abslam*Conjg(Ye22)*TYe22 - & 
&  2*Abslam*Conjg(Ye33)*TYe33 - 2*AbsYv33*Conjg(Ye33)*TYe33 - 12*CYv11p2*Yv11*TYv11 +    & 
&  Conjg(Yv11)*(4*gpp2*(QHup2 - Ql1p2 - Qv1p2)*(M4*Yv11 - TYv11) - 2*Conjg(Ye11)*(Yv11*TYe11 +& 
&  Ye11*TYv11)) - 12*CYv22p2*Yv22*TYv22 + Conjg(Yv22)*(4*gpp2*(QHup2 - Ql2p2 -           & 
&  Qv2p2)*(M4*Yv22 - TYv22) - 2*Conjg(Ye22)*(Yv22*TYe22 + Ye22*TYv22)) - 12*CYv33p2*Yv33*TYv33 -& 
&  2*AbsYe33*Conjg(Yv33)*TYv33 - 4*gpp2*QHup2*Conjg(Yv33)*TYv33 + 4*gpp2*Ql3p2*Conjg(Yv33)*TYv33 +& 
&  4*gpp2*Qv3p2*Conjg(Yv33)*TYv33 - 12*Clamp2*lam*Tlam - 2*AbsYe11*Conjg(lam)*Tlam -     & 
&  2*AbsYe22*Conjg(lam)*Tlam - 2*AbsYe33*Conjg(lam)*Tlam + 4*gpp2*QHdp2*Conjg(lam)*Tlam -& 
&  4*gpp2*QHup2*Conjg(lam)*Tlam + 4*gpp2*Qsp2*Conjg(lam)*Tlam - 6*TrYdadjYd*Conjg(lam)*Tlam)

 
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
&  mq2adjYuYu - 8*AbsM4*gpp2*id3R*Qqp2 + g1*id3R*ooSqrt15*Tr1(1) + 2*gp*id3R*Qq*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamq22 = -2*Abslam*adjTdTd - 2*AbsYe11*adjTdTd - 2*AbsYe22*adjTdTd - 2*AbsYe33*adjTdTd -       & 
&  4._dp*(adjTdTdadjYdYd) - 4._dp*(adjTdYdadjYdTd) - 2*Abslam*adjTuTu - 2*AbsYv11*adjTuTu -& 
&  2*AbsYv22*adjTuTu - 2*AbsYv33*adjTuTu - 4._dp*(adjTuTuadjYuYu) - 4._dp*(adjTuYuadjYuTu) -& 
&  2*Abslam*adjYdmd2Yd - 2*AbsYe11*adjYdmd2Yd - 2*AbsYe22*adjYdmd2Yd - 2*AbsYe33*adjYdmd2Yd -& 
&  4._dp*(adjYdmd2YdadjYdYd) - 4._dp*(adjYdTdadjTdYd) - 2*AbsTlam*adjYdYd -              & 
&  2*AbsTYe11*adjYdYd - 2*AbsTYe22*adjYdYd - 2*AbsTYe33*adjYdYd - 4._dp*(adjYdYdadjTdTd) -& 
&  4._dp*(adjYdYdadjYdmd2Yd) - 2._dp*(adjYdYdadjYdYdmq2) - Abslam*adjYdYdmq2 -           & 
&  AbsYe11*adjYdYdmq2 - AbsYe22*adjYdYdmq2 - AbsYe33*adjYdYdmq2 - 4._dp*(adjYdYdmq2adjYdYd) -& 
&  2*Abslam*adjYumu2Yu - 2*AbsYv11*adjYumu2Yu - 2*AbsYv22*adjYumu2Yu - 2*AbsYv33*adjYumu2Yu -& 
&  4._dp*(adjYumu2YuadjYuYu) - 4._dp*(adjYuTuadjTuYu) - 2*AbsTlam*adjYuYu -              & 
&  2*AbsTYv11*adjYuYu - 2*AbsTYv22*adjYuYu - 2*AbsTYv33*adjYuYu - 4._dp*(adjYuYuadjTuTu) -& 
&  4._dp*(adjYuYuadjYumu2Yu) - 2._dp*(adjYuYuadjYuYumq2) - Abslam*adjYuYumq2 -           & 
&  AbsYv11*adjYuYumq2 - AbsYv22*adjYuYumq2 - AbsYv33*adjYuYumq2 - 4._dp*(adjYuYumq2adjYuYu) +& 
&  (4*adjTdTd*g1p2)/5._dp + (8*adjTuTu*g1p2)/5._dp + (4*adjYdmd2Yd*g1p2)/5._dp +         & 
&  (2*adjYdYdmq2*g1p2)/5._dp + (8*adjYumu2Yu*g1p2)/5._dp + (4*adjYuYumq2*g1p2)/5._dp +   & 
&  (2*AbsM2*g1p2*g2p2*id3R)/5._dp + 33*AbsM2*g2p4*id3R + 32*AbsM2*g2p2*g3p2*id3R -       & 
&  (4*adjTdYd*g1p2*M1)/5._dp - (8*adjTuYu*g1p2*M1)/5._dp - 2*AbsYe11*adjYdYd*me012 -     & 
&  2*AbsYe22*adjYdYd*me022 - 2*AbsYe33*adjYdYd*me032 - 4*Abslam*adjYdYd*mHd2 -           & 
&  4*AbsYe11*adjYdYd*mHd2 - 4*AbsYe22*adjYdYd*mHd2 - 4*AbsYe33*adjYdYd*mHd2 -            & 
&  8*adjYdYdadjYdYd*mHd2 - 2*Abslam*adjYuYu*mHd2 + (4*adjYdYd*g1p2*mHd2)/5._dp -         & 
&  2*Abslam*adjYdYd*mHu2 - 4*Abslam*adjYuYu*mHu2 - 4*AbsYv11*adjYuYu*mHu2  
betamq22 =  betamq22- 4*AbsYv22*adjYuYu*mHu2 - 4*AbsYv33*adjYuYu*mHu2 - 8*adjYuYuadjYuYu*mHu2 +             & 
&  (8*adjYuYu*g1p2*mHu2)/5._dp - 2*AbsYe11*adjYdYd*ml012 - 2*AbsYv11*adjYuYu*ml012 -     & 
&  2*AbsYe22*adjYdYd*ml022 - 2*AbsYv22*adjYuYu*ml022 - 2*AbsYe33*adjYdYd*ml032 -         & 
&  2*AbsYv33*adjYuYu*ml032 - Abslam*mq2adjYdYd - AbsYe11*mq2adjYdYd - AbsYe22*mq2adjYdYd -& 
&  AbsYe33*mq2adjYdYd + (2*g1p2*mq2adjYdYd)/5._dp - 2._dp*(mq2adjYdYdadjYdYd) -          & 
&  Abslam*mq2adjYuYu - AbsYv11*mq2adjYuYu - AbsYv22*mq2adjYuYu - AbsYv33*mq2adjYuYu +    & 
&  (4*g1p2*mq2adjYuYu)/5._dp - 2._dp*(mq2adjYuYuadjYuYu) - 2*Abslam*adjYdYd*ms2 -        & 
&  2*Abslam*adjYuYu*ms2 - 2*AbsYv11*adjYuYu*mvR012 - 2*AbsYv22*adjYuYu*mvR022 -          & 
&  2*AbsYv33*adjYuYu*mvR032 + 4*adjTdTd*gpp2*Qdp2 + 4*adjYdmd2Yd*gpp2*Qdp2 +             & 
&  8*AbsM4*adjYdYd*gpp2*Qdp2 + 2*adjYdYdmq2*gpp2*Qdp2 - 4*adjTdYd*gpp2*M4*Qdp2 +         & 
&  4*adjYdYd*gpp2*mHd2*Qdp2 + 2*gpp2*mq2adjYdYd*Qdp2 + 4*adjTdTd*gpp2*QHdp2 +            & 
&  4*adjYdmd2Yd*gpp2*QHdp2 + 8*AbsM4*adjYdYd*gpp2*QHdp2 + 2*adjYdYdmq2*gpp2*QHdp2 -      & 
&  4*adjTdYd*gpp2*M4*QHdp2 + 4*adjYdYd*gpp2*mHd2*QHdp2 + 2*gpp2*mq2adjYdYd*QHdp2 +       & 
&  4*adjTuTu*gpp2*QHup2 + 4*adjYumu2Yu*gpp2*QHup2 + 8*AbsM4*adjYuYu*gpp2*QHup2 +         & 
&  2*adjYuYumq2*gpp2*QHup2 - 4*adjTuYu*gpp2*M4*QHup2 + 4*adjYuYu*gpp2*mHu2*QHup2 +       & 
&  2*gpp2*mq2adjYuYu*QHup2 + (24*AbsM4*g1p2*gpp2*id3R*Qd*Qq)/5._dp + (8*AbsM4*g1p2*gpp2*id3R*Qe1*Qq)/5._dp +& 
&  (8*AbsM4*g1p2*gpp2*id3R*Qe2*Qq)/5._dp + (8*AbsM4*g1p2*gpp2*id3R*Qe3*Qq)/5._dp -       & 
&  (8*AbsM4*g1p2*gpp2*id3R*QHd*Qq)/5._dp + (8*AbsM4*g1p2*gpp2*id3R*QHu*Qq)/5._dp -       & 
&  (8*AbsM4*g1p2*gpp2*id3R*Ql1*Qq)/5._dp - (8*AbsM4*g1p2*gpp2*id3R*Ql2*Qq)/5._dp -       & 
&  (8*AbsM4*g1p2*gpp2*id3R*Ql3*Qq)/5._dp - 4*adjTdTd*gpp2*Qqp2 - 4*adjTuTu*gpp2*Qqp2 -   & 
&  4*adjYdmd2Yd*gpp2*Qqp2 - 8*AbsM4*adjYdYd*gpp2*Qqp2 - 2*adjYdYdmq2*gpp2*Qqp2  
betamq22 =  betamq22- 4*adjYumu2Yu*gpp2*Qqp2 - 8*AbsM4*adjYuYu*gpp2*Qqp2 - 2*adjYuYumq2*gpp2*Qqp2 +         & 
&  (16*AbsM4*g1p2*gpp2*id3R*Qqp2)/3._dp + 24*AbsM2*g2p2*gpp2*id3R*Qqp2 + 24*AbsM4*g2p2*gpp2*id3R*Qqp2 +& 
&  (128*AbsM4*g3p2*gpp2*id3R*Qqp2)/3._dp + 4*adjTdYd*gpp2*M4*Qqp2 + 4*adjTuYu*gpp2*M4*Qqp2 -& 
&  4*adjYdYd*gpp2*mHd2*Qqp2 - 4*adjYuYu*gpp2*mHu2*Qqp2 - 2*gpp2*mq2adjYdYd*Qqp2 -        & 
&  2*gpp2*mq2adjYuYu*Qqp2 + 216*AbsM4*gpp4*id3R*Qdp2*Qqp2 + 24*AbsM4*gpp4*id3R*Qe1p2*Qqp2 +& 
&  24*AbsM4*gpp4*id3R*Qe2p2*Qqp2 + 24*AbsM4*gpp4*id3R*Qe3p2*Qqp2 + 48*AbsM4*gpp4*id3R*QHdp2*Qqp2 +& 
&  48*AbsM4*gpp4*id3R*QHup2*Qqp2 + 48*AbsM4*gpp4*id3R*Ql1p2*Qqp2 + 48*AbsM4*gpp4*id3R*Ql2p2*Qqp2 +& 
&  48*AbsM4*gpp4*id3R*Ql3p2*Qqp2 + 480*AbsM4*gpp4*id3R*Qqp4 + 24*AbsM4*gpp4*id3R*Qqp2*Qsp2 -& 
&  (48*AbsM4*g1p2*gpp2*id3R*Qq*Qu)/5._dp + 4*adjTuTu*gpp2*Qup2 + 4*adjYumu2Yu*gpp2*Qup2 +& 
&  8*AbsM4*adjYuYu*gpp2*Qup2 + 2*adjYuYumq2*gpp2*Qup2 - 4*adjTuYu*gpp2*M4*Qup2 +         & 
&  4*adjYuYu*gpp2*mHu2*Qup2 + 2*gpp2*mq2adjYuYu*Qup2 + 216*AbsM4*gpp4*id3R*Qqp2*Qup2 +   & 
&  24*AbsM4*gpp4*id3R*Qqp2*Qv1p2 + 24*AbsM4*gpp4*id3R*Qqp2*Qv2p2 + 24*AbsM4*gpp4*id3R*Qqp2*Qv3p2 -& 
&  6*adjTdYd*TradjYdTd - 6*adjTuYu*TradjYuTu - 6*adjYdYd*TrCTdTpTd - 6*adjYdTd*TrCTdTpYd -& 
&  6*adjYuYu*TrCTuTpTu - 6*adjYuTu*TrCTuTpYu - 6*adjYdYd*Trmd2YdadjYd - 6*adjYdYd*Trmq2adjYdYd -& 
&  6*adjYuYu*Trmq2adjYuYu - 6*adjYuYu*Trmu2YuadjYu - 6*adjTdTd*TrYdadjYd -               & 
&  6*adjYdmd2Yd*TrYdadjYd - 3*adjYdYdmq2*TrYdadjYd - 12*adjYdYd*mHd2*TrYdadjYd -         & 
&  3*mq2adjYdYd*TrYdadjYd - 6*adjTuTu*TrYuadjYu - 6*adjYumu2Yu*TrYuadjYu -               & 
&  3*adjYuYumq2*TrYuadjYu - 12*adjYuYu*mHu2*TrYuadjYu - 3*mq2adjYuYu*TrYuadjYu +         & 
&  (g1p2*(180*(-1._dp*(adjYdTd) - 2._dp*(adjYuTu) + 2*adjYdYd*M1 + 4*adjYuYu*M1) +       & 
&  id3R*(597*g1p2*M1 + 80*g3p2*(2._dp*(M1) + M3) + 45*g2p2*(2._dp*(M1) + M2) +           & 
&  60*gpp2*(2._dp*(M1) + M4)*Qq*(9._dp*(Qd) + 3._dp*(Qe1) + 3._dp*(Qe2) + 3._dp*(Qe3) -  & 
&  3._dp*(QHd) + 3._dp*(QHu) - 3._dp*(Ql1) - 3._dp*(Ql2) - 3._dp*(Ql3) + 10._dp*(Qq) -   & 
&  18._dp*(Qu))))*Conjg(M1))/225._dp - (16*g3p2*id3R*(-(g1p2*(M1 + 2._dp*(M3))) -        & 
&  15*(-8*g3p2*M3 + 3*g2p2*(2._dp*(M3) + M2) + 4*gpp2*(2._dp*(M3) + M4)*Qqp2))*Conjg(M3))/45._dp  
betamq22 =  betamq22- 4*adjYdTd*gpp2*Qdp2*Conjg(M4) - 4*adjYdTd*gpp2*QHdp2*Conjg(M4) - 4*adjYuTu*gpp2*QHup2*Conjg(M4) +& 
&  (12*g1p2*gpp2*id3R*M1*Qd*Qq*Conjg(M4))/5._dp + (4*g1p2*gpp2*id3R*M1*Qe1*Qq*Conjg(M4))/5._dp +& 
&  (4*g1p2*gpp2*id3R*M1*Qe2*Qq*Conjg(M4))/5._dp + (4*g1p2*gpp2*id3R*M1*Qe3*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*QHd*Qq*Conjg(M4))/5._dp + (4*g1p2*gpp2*id3R*M1*QHu*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*Ql1*Qq*Conjg(M4))/5._dp - (4*g1p2*gpp2*id3R*M1*Ql2*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*Ql3*Qq*Conjg(M4))/5._dp + 4*adjYdTd*gpp2*Qqp2*Conjg(M4) +        & 
&  4*adjYuTu*gpp2*Qqp2*Conjg(M4) + (8*g1p2*gpp2*id3R*M1*Qqp2*Conjg(M4))/3._dp +          & 
&  (64*g3p2*gpp2*id3R*M3*Qqp2*Conjg(M4))/3._dp + 12*g2p2*gpp2*id3R*M2*Qqp2*Conjg(M4) -   & 
&  (24*g1p2*gpp2*id3R*M1*Qq*Qu*Conjg(M4))/5._dp - 4*adjYuTu*gpp2*Qup2*Conjg(M4) +        & 
&  (g1p2*g2p2*id3R*M1*Conjg(M2))/5._dp + 16*g2p2*g3p2*id3R*M3*Conjg(M2) + 12*g2p2*gpp2*id3R*M4*Qqp2*Conjg(M2) -& 
&  2*adjYdTd*Ye11*Conjg(TYe11) - 2*adjYdTd*Ye22*Conjg(TYe22) - 2*adjYdTd*Ye33*Conjg(TYe33) -& 
&  2*adjYuTu*Yv11*Conjg(TYv11) - 2*adjYuTu*Yv22*Conjg(TYv22) - 2*adjYuTu*Yv33*Conjg(TYv33) -& 
&  2*adjYdTd*lam*Conjg(Tlam) - 2*adjYuTu*lam*Conjg(Tlam) - 2*adjTdYd*Conjg(Ye11)*TYe11 - & 
&  2*adjTdYd*Conjg(Ye22)*TYe22 - 2*adjTdYd*Conjg(Ye33)*TYe33 - 2*adjTuYu*Conjg(Yv11)*TYv11 -& 
&  2*adjTuYu*Conjg(Yv22)*TYv22 - 2*adjTuYu*Conjg(Yv33)*TYv33 - 2*adjTdYd*Conjg(lam)*Tlam -& 
&  2*adjTuYu*Conjg(lam)*Tlam + 6*g2p4*id3R*Tr2(2) + (32*g3p4*id3R*Tr2(3))/3._dp +        & 
&  (2*g1p2*id3R*Tr2U1(1,1))/15._dp + 4*g1*gp*id3R*ooSqrt15*Qq*Tr2U1(1,4) +               & 
&  4*g1*gp*id3R*ooSqrt15*Qq*Tr2U1(4,1) + 8*gpp2*id3R*Qqp2*Tr2U1(4,4) + 4*g1*id3R*ooSqrt15*Tr3(1) +& 
&  8*gp*id3R*Qq*Tr3(4)

 
Dmq2 = oo16pi2*( betamq21 + oo16pi2 * betamq22 ) 

 
Else 
Dmq2 = oo16pi2* betamq21 
End If 
 
 
Call Chop(Dmq2) 

Forall(i1=1:3) Dmq2(i1,i1) =  Real(Dmq2(i1,i1),dp) 
Dmq2 = 0.5_dp*(Dmq2+ Conjg(Transpose(Dmq2)) ) 
!-------------------- 
! ml012 
!-------------------- 
 
betaml0121  = 2._dp*(AbsTep) + 2._dp*(AbsTYe11) + 2._dp*(AbsTYv11) - (6*AbsM1*g1p2)   & 
& /5._dp - 6*AbsM2*g2p2 + 2*AbsYe11*me012 + 2*AbsYe11*mHd2 + 2*AbsYv11*mHu2 +            & 
&  2*AbsYe11*ml012 + 2*AbsYv11*ml012 + 2*AbsYv11*mvR012 - 8*AbsM4*gpp2*Ql1p2 -           & 
&  g1*sqrt3ov5*Tr1(1) + 2*gp*Ql1*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml0122 = -2*Abslam*AbsTYe11 - 2*Abslam*AbsTYv11 - 2*AbsTlam*AbsYe11 - 24*AbsTYe11*AbsYe11 -    & 
&  2*AbsTYe22*AbsYe11 - 2*AbsTYe33*AbsYe11 - 2*AbsTYe11*AbsYe22 - 2*AbsTYe11*AbsYe33 -   & 
&  2*AbsTlam*AbsYv11 - 24*AbsTYv11*AbsYv11 - 2*AbsTYv22*AbsYv11 - 2*AbsTYv33*AbsYv11 -   & 
&  2*AbsTYv11*AbsYv22 - 2*AbsTYv11*AbsYv33 + (12*AbsTYe11*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +& 
&  33*AbsM2*g2p4 - 2*Abslam*AbsYe11*me012 - 2*AbsYe11*AbsYe22*me012 - 2*AbsYe11*AbsYe33*me012 +& 
&  (12*AbsYe11*g1p2*me012)/5._dp - 2*AbsYe11*AbsYe22*me022 - 2*AbsYe11*AbsYe33*me032 -   & 
&  4*Abslam*AbsYe11*mHd2 - 4*AbsYe11*AbsYe22*mHd2 - 4*AbsYe11*AbsYe33*mHd2 -             & 
&  2*Abslam*AbsYv11*mHd2 + (12*AbsYe11*g1p2*mHd2)/5._dp - 2*Abslam*AbsYe11*mHu2 -        & 
&  4*Abslam*AbsYv11*mHu2 - 4*AbsYv11*AbsYv22*mHu2 - 4*AbsYv11*AbsYv33*mHu2 -             & 
&  2*Abslam*AbsYe11*ml012 - 2*AbsYe11*AbsYe22*ml012 - 2*AbsYe11*AbsYe33*ml012 -          & 
&  2*Abslam*AbsYv11*ml012 - 2*AbsYv11*AbsYv22*ml012 - 2*AbsYv11*AbsYv33*ml012 +          & 
&  (12*AbsYe11*g1p2*ml012)/5._dp - 2*AbsYe11*AbsYe22*ml022 - 2*AbsYv11*AbsYv22*ml022 -   & 
&  2*AbsYe11*AbsYe33*ml032 - 2*AbsYv11*AbsYv33*ml032 - 2*Abslam*AbsYe11*ms2 -            & 
&  2*Abslam*AbsYv11*ms2 - 2*Abslam*AbsYv11*mvR012 - 2*AbsYv11*AbsYv22*mvR012 -           & 
&  2*AbsYv11*AbsYv33*mvR012 - 2*AbsYv11*AbsYv22*mvR022 - 2*AbsYv11*AbsYv33*mvR032 +      & 
&  4*AbsTYe11*gpp2*Qe1p2 + 4*AbsYe11*gpp2*me012*Qe1p2 + 4*AbsYe11*gpp2*mHd2*Qe1p2 +      & 
&  4*AbsYe11*gpp2*ml012*Qe1p2 + 4*AbsTYe11*gpp2*QHdp2 + 4*AbsYe11*gpp2*me012*QHdp2 +     & 
&  4*AbsYe11*gpp2*mHd2*QHdp2 + 4*AbsYe11*gpp2*ml012*QHdp2 + 4*AbsTYv11*gpp2*QHup2 +      & 
&  4*AbsYv11*gpp2*mHu2*QHup2 + 4*AbsYv11*gpp2*ml012*QHup2 + 4*AbsYv11*gpp2*mvR012*QHup2 -& 
&  4*AbsTYe11*gpp2*Ql1p2 - 4*AbsTYv11*gpp2*Ql1p2 + 24*AbsM2*g2p2*gpp2*Ql1p2 -            & 
&  4*AbsYe11*gpp2*me012*Ql1p2 - 4*AbsYe11*gpp2*mHd2*Ql1p2 - 4*AbsYv11*gpp2*mHu2*Ql1p2  
betaml0122 =  betaml0122- 4*AbsYe11*gpp2*ml012*Ql1p2 - 4*AbsYv11*gpp2*ml012*Ql1p2 - 4*AbsYv11*gpp2*mvR012*Ql1p2 +& 
&  4*AbsTYv11*gpp2*Qv1p2 + 4*AbsYv11*gpp2*mHu2*Qv1p2 + 4*AbsYv11*gpp2*ml012*Qv1p2 +      & 
&  4*AbsYv11*gpp2*mvR012*Qv1p2 - 6*AbsYe11*TrCTdTpTd - 6*AbsYv11*TrCTuTpTu -             & 
&  6*AbsYe11*Trmd2YdadjYd - 6*AbsYe11*Trmq2adjYdYd - 6*AbsYv11*Trmq2adjYuYu -            & 
&  6*AbsYv11*Trmu2YuadjYu - 6*AbsTYe11*TrYdadjYd - 6*AbsYe11*me012*TrYdadjYd -           & 
&  12*AbsYe11*mHd2*TrYdadjYd - 6*AbsYe11*ml012*TrYdadjYd - 6*AbsTYv11*TrYuadjYu -        & 
&  12*AbsYv11*mHu2*TrYuadjYu - 6*AbsYv11*ml012*TrYuadjYu - 6*AbsYv11*mvR012*TrYuadjYu -  & 
&  12*CYe11p2*me012*Ye11p2 - 12*CYe11p2*mHd2*Ye11p2 - 12*CYe11p2*ml012*Ye11p2 -          & 
&  12*CYv11p2*mHu2*Yv11p2 - 12*CYv11p2*ml012*Yv11p2 - 12*CYv11p2*mvR012*Yv11p2 +         & 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*Ql1p2*Conjg(M2) - (12*g1p2*M1*Ye11*Conjg(TYe11))/5._dp -& 
&  4*gpp2*M4*Qe1p2*Ye11*Conjg(TYe11) - 4*gpp2*M4*QHdp2*Ye11*Conjg(TYe11) +               & 
&  4*gpp2*M4*Ql1p2*Ye11*Conjg(TYe11) - 6*TradjYdTd*Ye11*Conjg(TYe11) - 4*gpp2*M4*QHup2*Yv11*Conjg(TYv11) +& 
&  4*gpp2*M4*Ql1p2*Yv11*Conjg(TYv11) - 4*gpp2*M4*Qv1p2*Yv11*Conjg(TYv11) -               & 
&  6*TradjYuTu*Yv11*Conjg(TYv11) + (3*g1p2*Conjg(M1)*(207*g1p2*M1 + 15*g2p2*(2._dp*(M1) +& 
&  M2) - 20*gpp2*(2._dp*(M1) + M4)*Ql1*(3._dp*(Qd) + Qe1 + Qe2 + Qe3 - QHd +             & 
&  QHu - 2._dp*(Ql1) - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 20*Conjg(Ye11)*(2*M1*Ye11 -& 
&  TYe11)))/25._dp - 6*TrCTdTpYd*Conjg(Ye11)*TYe11 - 2*Ye22*Conjg(Ye11)*Conjg(TYe22)*TYe11 -& 
&  2*Ye33*Conjg(Ye11)*Conjg(TYe33)*TYe11 - 2*lam*Conjg(Ye11)*Conjg(Tlam)*TYe11 -         & 
&  2*Ye11*Conjg(Ye22)*Conjg(TYe11)*TYe22 - 2*Ye11*Conjg(Ye33)*Conjg(TYe11)*TYe33 +       & 
&  (4*gpp2*Conjg(M4)*(3*Ql1*(-(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe1 + Qe2 +          & 
&  Qe3 - QHd + QHu - 2._dp*(Ql1) - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu))) +               & 
&  5*Ql1*(g2p2*(2._dp*(M4) + M2) + 2*gpp2*M4*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 +             & 
&  Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 4._dp*(Ql1p2) + 2._dp*(Ql2p2) +               & 
&  2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2))) +      & 
&  5*(Qe1p2 + QHdp2 - Ql1p2)*Conjg(Ye11)*(2*M4*Ye11 - TYe11) + 5*(QHup2 - Ql1p2 +        & 
&  Qv1p2)*Conjg(Yv11)*(2*M4*Yv11 - TYv11)))/5._dp - 6*TrCTuTpYu*Conjg(Yv11)*TYv11  
betaml0122 =  betaml0122- 2*Yv22*Conjg(Yv11)*Conjg(TYv22)*TYv11 - 2*Yv33*Conjg(Yv11)*Conjg(TYv33)*TYv11 -       & 
&  2*lam*Conjg(Yv11)*Conjg(Tlam)*TYv11 - 2*Yv11*Conjg(Yv22)*Conjg(TYv11)*TYv22 -         & 
&  2*Yv11*Conjg(Yv33)*Conjg(TYv11)*TYv33 - 2*Ye11*Conjg(lam)*Conjg(TYe11)*Tlam -         & 
&  2*Yv11*Conjg(lam)*Conjg(TYv11)*Tlam + 6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp -     & 
&  4*g1*gp*Ql1*sqrt3ov5*Tr2U1(1,4) - 4*g1*gp*Ql1*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*Ql1p2*Tr2U1(4,& 
& 4) - 4*g1*sqrt3ov5*Tr3(1) + 8*gp*Ql1*Tr3(4)

 
Dml012 = oo16pi2*( betaml0121 + oo16pi2 * betaml0122 ) 

 
Else 
Dml012 = oo16pi2* betaml0121 
End If 
 
 
!-------------------- 
! ml022 
!-------------------- 
 
betaml0221  = 2._dp*(AbsTmup) + 2._dp*(AbsTYe22) + 2._dp*(AbsTYv22) - (6*AbsM1*g1p2)  & 
& /5._dp - 6*AbsM2*g2p2 + 2*AbsYe22*me022 + 2*AbsYe22*mHd2 + 2*AbsYv22*mHu2 +            & 
&  2*AbsYe22*ml022 + 2*AbsYv22*ml022 + 2*AbsYv22*mvR022 - 8*AbsM4*gpp2*Ql2p2 -           & 
&  g1*sqrt3ov5*Tr1(1) + 2*gp*Ql2*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml0222 = -2*Abslam*AbsTYe22 - 2*Abslam*AbsTYv22 - 2*AbsTYe22*AbsYe11 - 2*AbsTlam*AbsYe22 -     & 
&  2*AbsTYe11*AbsYe22 - 24*AbsTYe22*AbsYe22 - 2*AbsTYe33*AbsYe22 - 2*AbsTYe22*AbsYe33 -  & 
&  2*AbsTYv22*AbsYv11 - 2*AbsTlam*AbsYv22 - 2*AbsTYv11*AbsYv22 - 24*AbsTYv22*AbsYv22 -   & 
&  2*AbsTYv33*AbsYv22 - 2*AbsTYv22*AbsYv33 + (12*AbsTYe22*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +& 
&  33*AbsM2*g2p4 - 2*AbsYe11*AbsYe22*me012 - 2*Abslam*AbsYe22*me022 - 2*AbsYe11*AbsYe22*me022 -& 
&  2*AbsYe22*AbsYe33*me022 + (12*AbsYe22*g1p2*me022)/5._dp - 2*AbsYe22*AbsYe33*me032 -   & 
&  4*Abslam*AbsYe22*mHd2 - 4*AbsYe11*AbsYe22*mHd2 - 4*AbsYe22*AbsYe33*mHd2 -             & 
&  2*Abslam*AbsYv22*mHd2 + (12*AbsYe22*g1p2*mHd2)/5._dp - 2*Abslam*AbsYe22*mHu2 -        & 
&  4*Abslam*AbsYv22*mHu2 - 4*AbsYv11*AbsYv22*mHu2 - 4*AbsYv22*AbsYv33*mHu2 -             & 
&  2*AbsYe11*AbsYe22*ml012 - 2*AbsYv11*AbsYv22*ml012 - 2*Abslam*AbsYe22*ml022 -          & 
&  2*AbsYe11*AbsYe22*ml022 - 2*AbsYe22*AbsYe33*ml022 - 2*Abslam*AbsYv22*ml022 -          & 
&  2*AbsYv11*AbsYv22*ml022 - 2*AbsYv22*AbsYv33*ml022 + (12*AbsYe22*g1p2*ml022)/5._dp -   & 
&  2*AbsYe22*AbsYe33*ml032 - 2*AbsYv22*AbsYv33*ml032 - 2*Abslam*AbsYe22*ms2 -            & 
&  2*Abslam*AbsYv22*ms2 - 2*AbsYv11*AbsYv22*mvR012 - 2*Abslam*AbsYv22*mvR022 -           & 
&  2*AbsYv11*AbsYv22*mvR022 - 2*AbsYv22*AbsYv33*mvR022 - 2*AbsYv22*AbsYv33*mvR032 +      & 
&  4*AbsTYe22*gpp2*Qe2p2 + 4*AbsYe22*gpp2*me022*Qe2p2 + 4*AbsYe22*gpp2*mHd2*Qe2p2 +      & 
&  4*AbsYe22*gpp2*ml022*Qe2p2 + 4*AbsTYe22*gpp2*QHdp2 + 4*AbsYe22*gpp2*me022*QHdp2 +     & 
&  4*AbsYe22*gpp2*mHd2*QHdp2 + 4*AbsYe22*gpp2*ml022*QHdp2 + 4*AbsTYv22*gpp2*QHup2 +      & 
&  4*AbsYv22*gpp2*mHu2*QHup2 + 4*AbsYv22*gpp2*ml022*QHup2 + 4*AbsYv22*gpp2*mvR022*QHup2 -& 
&  4*AbsTYe22*gpp2*Ql2p2 - 4*AbsTYv22*gpp2*Ql2p2 + 24*AbsM2*g2p2*gpp2*Ql2p2 -            & 
&  4*AbsYe22*gpp2*me022*Ql2p2 - 4*AbsYe22*gpp2*mHd2*Ql2p2 - 4*AbsYv22*gpp2*mHu2*Ql2p2  
betaml0222 =  betaml0222- 4*AbsYe22*gpp2*ml022*Ql2p2 - 4*AbsYv22*gpp2*ml022*Ql2p2 - 4*AbsYv22*gpp2*mvR022*Ql2p2 +& 
&  4*AbsTYv22*gpp2*Qv2p2 + 4*AbsYv22*gpp2*mHu2*Qv2p2 + 4*AbsYv22*gpp2*ml022*Qv2p2 +      & 
&  4*AbsYv22*gpp2*mvR022*Qv2p2 - 6*AbsYe22*TrCTdTpTd - 6*AbsYv22*TrCTuTpTu -             & 
&  6*AbsYe22*Trmd2YdadjYd - 6*AbsYe22*Trmq2adjYdYd - 6*AbsYv22*Trmq2adjYuYu -            & 
&  6*AbsYv22*Trmu2YuadjYu - 6*AbsTYe22*TrYdadjYd - 6*AbsYe22*me022*TrYdadjYd -           & 
&  12*AbsYe22*mHd2*TrYdadjYd - 6*AbsYe22*ml022*TrYdadjYd - 6*AbsTYv22*TrYuadjYu -        & 
&  12*AbsYv22*mHu2*TrYuadjYu - 6*AbsYv22*ml022*TrYuadjYu - 6*AbsYv22*mvR022*TrYuadjYu -  & 
&  12*CYe22p2*me022*Ye22p2 - 12*CYe22p2*mHd2*Ye22p2 - 12*CYe22p2*ml022*Ye22p2 -          & 
&  12*CYv22p2*mHu2*Yv22p2 - 12*CYv22p2*ml022*Yv22p2 - 12*CYv22p2*mvR022*Yv22p2 +         & 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*Ql2p2*Conjg(M2) - (12*g1p2*M1*Ye22*Conjg(TYe22))/5._dp -& 
&  4*gpp2*M4*Qe2p2*Ye22*Conjg(TYe22) - 4*gpp2*M4*QHdp2*Ye22*Conjg(TYe22) +               & 
&  4*gpp2*M4*Ql2p2*Ye22*Conjg(TYe22) - 6*TradjYdTd*Ye22*Conjg(TYe22) - 4*gpp2*M4*QHup2*Yv22*Conjg(TYv22) +& 
&  4*gpp2*M4*Ql2p2*Yv22*Conjg(TYv22) - 4*gpp2*M4*Qv2p2*Yv22*Conjg(TYv22) -               & 
&  6*TradjYuTu*Yv22*Conjg(TYv22) - 2*Ye22*Conjg(Ye11)*Conjg(TYe22)*TYe11 +               & 
&  (3*g1p2*Conjg(M1)*(207*g1p2*M1 + 15*g2p2*(2._dp*(M1) + M2) - 20*gpp2*(2._dp*(M1) +    & 
&  M4)*Ql2*(3._dp*(Qd) + Qe1 + Qe2 + Qe3 - QHd + QHu - Ql1 - 2._dp*(Ql2) -               & 
&  Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 20*Conjg(Ye22)*(2*M1*Ye22 - TYe22)))/25._dp -        & 
&  6*TrCTdTpYd*Conjg(Ye22)*TYe22 - 2*Ye11*Conjg(Ye22)*Conjg(TYe11)*TYe22 -               & 
&  2*Ye33*Conjg(Ye22)*Conjg(TYe33)*TYe22 - 2*lam*Conjg(Ye22)*Conjg(Tlam)*TYe22 -         & 
&  2*Ye22*Conjg(Ye33)*Conjg(TYe22)*TYe33 - 2*Yv22*Conjg(Yv11)*Conjg(TYv22)*TYv11 +       & 
&  (4*gpp2*Conjg(M4)*(3*Ql2*(-(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe1 + Qe2 +          & 
&  Qe3 - QHd + QHu - Ql1 - 2._dp*(Ql2) - Ql3 + 3._dp*(Qq) - 6._dp*(Qu))) +               & 
&  5*Ql2*(g2p2*(2._dp*(M4) + M2) + 2*gpp2*M4*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 +             & 
&  Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) + 4._dp*(Ql2p2) +               & 
&  2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2))) +      & 
&  5*(Qe2p2 + QHdp2 - Ql2p2)*Conjg(Ye22)*(2*M4*Ye22 - TYe22) + 5*(QHup2 - Ql2p2 +        & 
&  Qv2p2)*Conjg(Yv22)*(2*M4*Yv22 - TYv22)))/5._dp - 6*TrCTuTpYu*Conjg(Yv22)*TYv22  
betaml0222 =  betaml0222- 2*Yv11*Conjg(Yv22)*Conjg(TYv11)*TYv22 - 2*Yv33*Conjg(Yv22)*Conjg(TYv33)*TYv22 -       & 
&  2*lam*Conjg(Yv22)*Conjg(Tlam)*TYv22 - 2*Yv22*Conjg(Yv33)*Conjg(TYv22)*TYv33 -         & 
&  2*Ye22*Conjg(lam)*Conjg(TYe22)*Tlam - 2*Yv22*Conjg(lam)*Conjg(TYv22)*Tlam +           & 
&  6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp - 4*g1*gp*Ql2*sqrt3ov5*Tr2U1(1,             & 
& 4) - 4*g1*gp*Ql2*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*Ql2p2*Tr2U1(4,4) - 4*g1*sqrt3ov5*Tr3(1) +& 
&  8*gp*Ql2*Tr3(4)

 
Dml022 = oo16pi2*( betaml0221 + oo16pi2 * betaml0222 ) 

 
Else 
Dml022 = oo16pi2* betaml0221 
End If 
 
 
!-------------------- 
! ml032 
!-------------------- 
 
betaml0321  = 2._dp*(AbsTYe33) + 2._dp*(AbsTYv33) - (6*AbsM1*g1p2)/5._dp -            & 
&  6*AbsM2*g2p2 + 2*AbsYe33*me032 + 2*AbsYe33*mHd2 + 2*AbsYv33*mHu2 + 2*AbsYe33*ml032 +  & 
&  2*AbsYv33*ml032 + 2*AbsYv33*mvR032 - 8*AbsM4*gpp2*Ql3p2 - g1*sqrt3ov5*Tr1(1)          & 
&  + 2*gp*Ql3*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml0322 = -2*Abslam*AbsTYe33 - 2*Abslam*AbsTYv33 - 2*AbsTYe33*AbsYe11 - 2*AbsTYe33*AbsYe22 -    & 
&  2*AbsTlam*AbsYe33 - 2*AbsTYe11*AbsYe33 - 2*AbsTYe22*AbsYe33 - 24*AbsTYe33*AbsYe33 -   & 
&  2*AbsTYv33*AbsYv11 - 2*AbsTYv33*AbsYv22 - 2*AbsTlam*AbsYv33 - 2*AbsTYv11*AbsYv33 -    & 
&  2*AbsTYv22*AbsYv33 - 24*AbsTYv33*AbsYv33 + (12*AbsTYe33*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +& 
&  33*AbsM2*g2p4 - 2*AbsYe11*AbsYe33*me012 - 2*AbsYe22*AbsYe33*me022 - 2*Abslam*AbsYe33*me032 -& 
&  2*AbsYe11*AbsYe33*me032 - 2*AbsYe22*AbsYe33*me032 + (12*AbsYe33*g1p2*me032)/5._dp -   & 
&  4*Abslam*AbsYe33*mHd2 - 4*AbsYe11*AbsYe33*mHd2 - 4*AbsYe22*AbsYe33*mHd2 -             & 
&  2*Abslam*AbsYv33*mHd2 + (12*AbsYe33*g1p2*mHd2)/5._dp - 2*Abslam*AbsYe33*mHu2 -        & 
&  4*Abslam*AbsYv33*mHu2 - 4*AbsYv11*AbsYv33*mHu2 - 4*AbsYv22*AbsYv33*mHu2 -             & 
&  2*AbsYe11*AbsYe33*ml012 - 2*AbsYv11*AbsYv33*ml012 - 2*AbsYe22*AbsYe33*ml022 -         & 
&  2*AbsYv22*AbsYv33*ml022 - 2*Abslam*AbsYe33*ml032 - 2*AbsYe11*AbsYe33*ml032 -          & 
&  2*AbsYe22*AbsYe33*ml032 - 2*Abslam*AbsYv33*ml032 - 2*AbsYv11*AbsYv33*ml032 -          & 
&  2*AbsYv22*AbsYv33*ml032 + (12*AbsYe33*g1p2*ml032)/5._dp - 2*Abslam*AbsYe33*ms2 -      & 
&  2*Abslam*AbsYv33*ms2 - 2*AbsYv11*AbsYv33*mvR012 - 2*AbsYv22*AbsYv33*mvR022 -          & 
&  2*Abslam*AbsYv33*mvR032 - 2*AbsYv11*AbsYv33*mvR032 - 2*AbsYv22*AbsYv33*mvR032 +       & 
&  4*AbsTYe33*gpp2*Qe3p2 + 4*AbsYe33*gpp2*me032*Qe3p2 + 4*AbsYe33*gpp2*mHd2*Qe3p2 +      & 
&  4*AbsYe33*gpp2*ml032*Qe3p2 + 4*AbsTYe33*gpp2*QHdp2 + 4*AbsYe33*gpp2*me032*QHdp2 +     & 
&  4*AbsYe33*gpp2*mHd2*QHdp2 + 4*AbsYe33*gpp2*ml032*QHdp2 + 4*AbsTYv33*gpp2*QHup2 +      & 
&  4*AbsYv33*gpp2*mHu2*QHup2 + 4*AbsYv33*gpp2*ml032*QHup2 + 4*AbsYv33*gpp2*mvR032*QHup2 -& 
&  4*AbsTYe33*gpp2*Ql3p2 - 4*AbsTYv33*gpp2*Ql3p2 + 24*AbsM2*g2p2*gpp2*Ql3p2 -            & 
&  4*AbsYe33*gpp2*me032*Ql3p2 - 4*AbsYe33*gpp2*mHd2*Ql3p2 - 4*AbsYv33*gpp2*mHu2*Ql3p2  
betaml0322 =  betaml0322- 4*AbsYe33*gpp2*ml032*Ql3p2 - 4*AbsYv33*gpp2*ml032*Ql3p2 - 4*AbsYv33*gpp2*mvR032*Ql3p2 +& 
&  4*AbsTYv33*gpp2*Qv3p2 + 4*AbsYv33*gpp2*mHu2*Qv3p2 + 4*AbsYv33*gpp2*ml032*Qv3p2 +      & 
&  4*AbsYv33*gpp2*mvR032*Qv3p2 - 6*AbsYe33*TrCTdTpTd - 6*AbsYv33*TrCTuTpTu -             & 
&  6*AbsYe33*Trmd2YdadjYd - 6*AbsYe33*Trmq2adjYdYd - 6*AbsYv33*Trmq2adjYuYu -            & 
&  6*AbsYv33*Trmu2YuadjYu - 6*AbsTYe33*TrYdadjYd - 6*AbsYe33*me032*TrYdadjYd -           & 
&  12*AbsYe33*mHd2*TrYdadjYd - 6*AbsYe33*ml032*TrYdadjYd - 6*AbsTYv33*TrYuadjYu -        & 
&  12*AbsYv33*mHu2*TrYuadjYu - 6*AbsYv33*ml032*TrYuadjYu - 6*AbsYv33*mvR032*TrYuadjYu -  & 
&  12*CYe33p2*me032*Ye33p2 - 12*CYe33p2*mHd2*Ye33p2 - 12*CYe33p2*ml032*Ye33p2 -          & 
&  12*CYv33p2*mHu2*Yv33p2 - 12*CYv33p2*ml032*Yv33p2 - 12*CYv33p2*mvR032*Yv33p2 +         & 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*Ql3p2*Conjg(M2) - (12*g1p2*M1*Ye33*Conjg(TYe33))/5._dp -& 
&  4*gpp2*M4*Qe3p2*Ye33*Conjg(TYe33) - 4*gpp2*M4*QHdp2*Ye33*Conjg(TYe33) +               & 
&  4*gpp2*M4*Ql3p2*Ye33*Conjg(TYe33) - 6*TradjYdTd*Ye33*Conjg(TYe33) - 4*gpp2*M4*QHup2*Yv33*Conjg(TYv33) +& 
&  4*gpp2*M4*Ql3p2*Yv33*Conjg(TYv33) - 4*gpp2*M4*Qv3p2*Yv33*Conjg(TYv33) -               & 
&  6*TradjYuTu*Yv33*Conjg(TYv33) - 2*Ye33*Conjg(Ye11)*Conjg(TYe33)*TYe11 -               & 
&  2*Ye33*Conjg(Ye22)*Conjg(TYe33)*TYe22 + (3*g1p2*Conjg(M1)*(207*g1p2*M1 +              & 
&  15*g2p2*(2._dp*(M1) + M2) - 20*gpp2*(2._dp*(M1) + M4)*Ql3*(3._dp*(Qd) +               & 
&  Qe1 + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 - 2._dp*(Ql3) + 3._dp*(Qq) - 6._dp*(Qu)) +    & 
&  20*Conjg(Ye33)*(2*M1*Ye33 - TYe33)))/25._dp - 6*TrCTdTpYd*Conjg(Ye33)*TYe33 -         & 
&  2*Ye11*Conjg(Ye33)*Conjg(TYe11)*TYe33 - 2*Ye22*Conjg(Ye33)*Conjg(TYe22)*TYe33 -       & 
&  2*lam*Conjg(Ye33)*Conjg(Tlam)*TYe33 - 2*Yv33*Conjg(Yv11)*Conjg(TYv33)*TYv11 -         & 
&  2*Yv33*Conjg(Yv22)*Conjg(TYv33)*TYv22 + (4*gpp2*Conjg(M4)*(3*Ql3*(-(g1p2*(M1 +        & 
&  2._dp*(M4))*(3._dp*(Qd) + Qe1 + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 - 2._dp*(Ql3) +     & 
&  3._dp*(Qq) - 6._dp*(Qu))) + 5*Ql3*(g2p2*(2._dp*(M4) + M2) + 2*gpp2*M4*(9._dp*(Qdp2) + & 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 4._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 +         & 
&  Qv2p2 + Qv3p2))) + 5*(Qe3p2 + QHdp2 - Ql3p2)*Conjg(Ye33)*(2*M4*Ye33 - TYe33) +        & 
&  5*(QHup2 - Ql3p2 + Qv3p2)*Conjg(Yv33)*(2*M4*Yv33 - TYv33)))/5._dp - 6*TrCTuTpYu*Conjg(Yv33)*TYv33  
betaml0322 =  betaml0322- 2*Yv11*Conjg(Yv33)*Conjg(TYv11)*TYv33 - 2*Yv22*Conjg(Yv33)*Conjg(TYv22)*TYv33 -       & 
&  2*lam*Conjg(Yv33)*Conjg(Tlam)*TYv33 - 2*Ye33*Conjg(lam)*Conjg(TYe33)*Tlam -           & 
&  2*Yv33*Conjg(lam)*Conjg(TYv33)*Tlam + 6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp -     & 
&  4*g1*gp*Ql3*sqrt3ov5*Tr2U1(1,4) - 4*g1*gp*Ql3*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*Ql3p2*Tr2U1(4,& 
& 4) - 4*g1*sqrt3ov5*Tr3(1) + 8*gp*Ql3*Tr3(4)

 
Dml032 = oo16pi2*( betaml0321 + oo16pi2 * betaml0322 ) 

 
Else 
Dml032 = oo16pi2* betaml0321 
End If 
 
 
!-------------------- 
! mHd2 
!-------------------- 
 
betamHd21  = 2._dp*(AbsTlam) + 2._dp*(AbsTYe11) + 2._dp*(AbsTYe22) + 2._dp*(AbsTYe33) & 
&  - (6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 + 2*AbsYe11*me012 + 2*AbsYe22*me022 +           & 
&  2*AbsYe33*me032 + 2*Abslam*mHd2 + 2*AbsYe11*mHd2 + 2*AbsYe22*mHd2 + 2*AbsYe33*mHd2 +  & 
&  2*Abslam*mHu2 + 2*AbsYe11*ml012 + 2*AbsYe22*ml022 + 2*AbsYe33*ml032 + 2*Abslam*ms2 -  & 
&  8*AbsM4*gpp2*QHdp2 + 6._dp*(TrCTdTpTd) + 6._dp*(Trmd2YdadjYd) + 6._dp*(Trmq2adjYdYd)  & 
&  + 6*mHd2*TrYdadjYd - g1*sqrt3ov5*Tr1(1) + 2*gp*QHd*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamHd22 = -24*Abslam*AbsTlam - 2*Abslam*AbsTYv11 - 2*Abslam*AbsTYv22 - 2*Abslam*AbsTYv33 -      & 
&  24*AbsTYe11*AbsYe11 - 2*AbsTYv11*AbsYe11 - 24*AbsTYe22*AbsYe22 - 2*AbsTYv22*AbsYe22 - & 
&  24*AbsTYe33*AbsYe33 - 2*AbsTYv33*AbsYe33 - 2*AbsTlam*AbsYv11 - 2*AbsTYe11*AbsYv11 -   & 
&  2*AbsTlam*AbsYv22 - 2*AbsTYe22*AbsYv22 - 2*AbsTlam*AbsYv33 - 2*AbsTYe33*AbsYv33 +     & 
&  (12*AbsTYe11*g1p2)/5._dp + (12*AbsTYe22*g1p2)/5._dp + (12*AbsTYe33*g1p2)/5._dp +      & 
&  (18*AbsM2*g1p2*g2p2)/5._dp + 33*AbsM2*g2p4 - 2*AbsYe11*AbsYv11*me012 + (12*AbsYe11*g1p2*me012)/5._dp -& 
&  2*AbsYe22*AbsYv22*me022 + (12*AbsYe22*g1p2*me022)/5._dp - 2*AbsYe33*AbsYv33*me032 +   & 
&  (12*AbsYe33*g1p2*me032)/5._dp - 2*Abslam*AbsYv11*mHd2 - 2*AbsYe11*AbsYv11*mHd2 -      & 
&  2*Abslam*AbsYv22*mHd2 - 2*AbsYe22*AbsYv22*mHd2 - 2*Abslam*AbsYv33*mHd2 -              & 
&  2*AbsYe33*AbsYv33*mHd2 + (12*AbsYe11*g1p2*mHd2)/5._dp + (12*AbsYe22*g1p2*mHd2)/5._dp +& 
&  (12*AbsYe33*g1p2*mHd2)/5._dp - 12*Clamp2*lamp2*mHd2 - 4*Abslam*AbsYv11*mHu2 -         & 
&  2*AbsYe11*AbsYv11*mHu2 - 4*Abslam*AbsYv22*mHu2 - 2*AbsYe22*AbsYv22*mHu2 -             & 
&  4*Abslam*AbsYv33*mHu2 - 2*AbsYe33*AbsYv33*mHu2 - 12*Clamp2*lamp2*mHu2 -               & 
&  2*Abslam*AbsYv11*ml012 - 4*AbsYe11*AbsYv11*ml012 + (12*AbsYe11*g1p2*ml012)/5._dp -    & 
&  2*Abslam*AbsYv22*ml022 - 4*AbsYe22*AbsYv22*ml022 + (12*AbsYe22*g1p2*ml022)/5._dp -    & 
&  2*Abslam*AbsYv33*ml032 - 4*AbsYe33*AbsYv33*ml032 + (12*AbsYe33*g1p2*ml032)/5._dp -    & 
&  2*Abslam*AbsYv11*ms2 - 2*Abslam*AbsYv22*ms2 - 2*Abslam*AbsYv33*ms2 - 12*Clamp2*lamp2*ms2 -& 
&  2*Abslam*AbsYv11*mvR012 - 2*AbsYe11*AbsYv11*mvR012 - 2*Abslam*AbsYv22*mvR022 -        & 
&  2*AbsYe22*AbsYv22*mvR022 - 2*Abslam*AbsYv33*mvR032 - 2*AbsYe33*AbsYv33*mvR032 +       & 
&  4*AbsTYe11*gpp2*Qe1p2 + 4*AbsYe11*gpp2*me012*Qe1p2 + 4*AbsYe11*gpp2*mHd2*Qe1p2 +      & 
&  4*AbsYe11*gpp2*ml012*Qe1p2 + 4*AbsTYe22*gpp2*Qe2p2 + 4*AbsYe22*gpp2*me022*Qe2p2  
betamHd22 =  betamHd22+ 4*AbsYe22*gpp2*mHd2*Qe2p2 + 4*AbsYe22*gpp2*ml022*Qe2p2 + 4*AbsTYe33*gpp2*Qe3p2 +      & 
&  4*AbsYe33*gpp2*me032*Qe3p2 + 4*AbsYe33*gpp2*mHd2*Qe3p2 + 4*AbsYe33*gpp2*ml032*Qe3p2 - & 
&  4*AbsTlam*gpp2*QHdp2 - 4*AbsTYe11*gpp2*QHdp2 - 4*AbsTYe22*gpp2*QHdp2 - 4*AbsTYe33*gpp2*QHdp2 +& 
&  24*AbsM2*g2p2*gpp2*QHdp2 - 4*AbsYe11*gpp2*me012*QHdp2 - 4*AbsYe22*gpp2*me022*QHdp2 -  & 
&  4*AbsYe33*gpp2*me032*QHdp2 - 4*Abslam*gpp2*mHd2*QHdp2 - 4*AbsYe11*gpp2*mHd2*QHdp2 -   & 
&  4*AbsYe22*gpp2*mHd2*QHdp2 - 4*AbsYe33*gpp2*mHd2*QHdp2 - 4*Abslam*gpp2*mHu2*QHdp2 -    & 
&  4*AbsYe11*gpp2*ml012*QHdp2 - 4*AbsYe22*gpp2*ml022*QHdp2 - 4*AbsYe33*gpp2*ml032*QHdp2 -& 
&  4*Abslam*gpp2*ms2*QHdp2 + 4*AbsTlam*gpp2*QHup2 + 4*Abslam*gpp2*mHd2*QHup2 +           & 
&  4*Abslam*gpp2*mHu2*QHup2 + 4*Abslam*gpp2*ms2*QHup2 + 4*AbsTYe11*gpp2*Ql1p2 +          & 
&  4*AbsYe11*gpp2*me012*Ql1p2 + 4*AbsYe11*gpp2*mHd2*Ql1p2 + 4*AbsYe11*gpp2*ml012*Ql1p2 + & 
&  4*AbsTYe22*gpp2*Ql2p2 + 4*AbsYe22*gpp2*me022*Ql2p2 + 4*AbsYe22*gpp2*mHd2*Ql2p2 +      & 
&  4*AbsYe22*gpp2*ml022*Ql2p2 + 4*AbsTYe33*gpp2*Ql3p2 + 4*AbsYe33*gpp2*me032*Ql3p2 +     & 
&  4*AbsYe33*gpp2*mHd2*Ql3p2 + 4*AbsYe33*gpp2*ml032*Ql3p2 + 4*AbsTlam*gpp2*Qsp2 +        & 
&  4*Abslam*gpp2*mHd2*Qsp2 + 4*Abslam*gpp2*mHu2*Qsp2 + 4*Abslam*gpp2*ms2*Qsp2 -          & 
&  (4*g1p2*TrCTdTpTd)/5._dp + 32*g3p2*TrCTdTpTd + 12*gpp2*Qdp2*TrCTdTpTd -               & 
&  12*gpp2*QHdp2*TrCTdTpTd + 12*gpp2*Qqp2*TrCTdTpTd + (4*g1p2*M1*TrCTdTpYd)/5._dp -      & 
&  32*g3p2*M3*TrCTdTpYd - 12*gpp2*M4*Qdp2*TrCTdTpYd + 12*gpp2*M4*QHdp2*TrCTdTpYd -       & 
&  12*gpp2*M4*Qqp2*TrCTdTpYd - 6*Abslam*TrCTuTpTu - (4*g1p2*Trmd2YdadjYd)/5._dp +        & 
&  32*g3p2*Trmd2YdadjYd + 12*gpp2*Qdp2*Trmd2YdadjYd - 12*gpp2*QHdp2*Trmd2YdadjYd +       & 
&  12*gpp2*Qqp2*Trmd2YdadjYd - 36._dp*(Trmd2YdadjYdYdadjYd) - 6._dp*(Trmd2YdadjYuYuadjYd) -& 
&  (4*g1p2*Trmq2adjYdYd)/5._dp + 32*g3p2*Trmq2adjYdYd + 12*gpp2*Qdp2*Trmq2adjYdYd  
betamHd22 =  betamHd22- 12*gpp2*QHdp2*Trmq2adjYdYd + 12*gpp2*Qqp2*Trmq2adjYdYd - 36._dp*(Trmq2adjYdYdadjYdYd) -& 
&  6._dp*(Trmq2adjYdYdadjYuYu) - 6*Abslam*Trmq2adjYuYu - 6._dp*(Trmq2adjYuYuadjYdYd) -   & 
&  6._dp*(Trmu2YuadjYdYdadjYu) - 6*Abslam*Trmu2YuadjYu - 36._dp*(TrYdadjTdTdadjYd) -     & 
&  6._dp*(TrYdadjTuTuadjYd) + 64*AbsM3*g3p2*TrYdadjYd - (4*g1p2*mHd2*TrYdadjYd)/5._dp +  & 
&  32*g3p2*mHd2*TrYdadjYd + 12*gpp2*mHd2*Qdp2*TrYdadjYd - 12*gpp2*mHd2*QHdp2*TrYdadjYd + & 
&  12*gpp2*mHd2*Qqp2*TrYdadjYd - 36._dp*(TrYdadjYdTdadjTd) - 36*mHd2*TrYdadjYdYdadjYd -  & 
&  6._dp*(TrYdadjYuTuadjTd) - 6*mHd2*TrYdadjYuYuadjYd - 6*mHu2*TrYdadjYuYuadjYd -        & 
&  6._dp*(TrYuadjTdTdadjYu) - 6._dp*(TrYuadjYdTdadjTu) - 6*AbsTlam*TrYuadjYu -           & 
&  6*Abslam*mHd2*TrYuadjYu - 12*Abslam*mHu2*TrYuadjYu - 6*Abslam*ms2*TrYuadjYu -         & 
&  12*CYe11p2*me012*Ye11p2 - 12*CYe11p2*mHd2*Ye11p2 - 12*CYe11p2*ml012*Ye11p2 -          & 
&  12*CYe22p2*me022*Ye22p2 - 12*CYe22p2*mHd2*Ye22p2 - 12*CYe22p2*ml022*Ye22p2 -          & 
&  12*CYe33p2*me032*Ye33p2 - 12*CYe33p2*mHd2*Ye33p2 - 12*CYe33p2*ml032*Ye33p2 -          & 
&  32*g3p2*TradjYdTd*Conjg(M3) + (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*QHdp2*Conjg(M2) -& 
&  (12*g1p2*M1*Ye11*Conjg(TYe11))/5._dp - 4*gpp2*M4*Qe1p2*Ye11*Conjg(TYe11) +            & 
&  4*gpp2*M4*QHdp2*Ye11*Conjg(TYe11) - 4*gpp2*M4*Ql1p2*Ye11*Conjg(TYe11) -               & 
&  (12*g1p2*M1*Ye22*Conjg(TYe22))/5._dp - 4*gpp2*M4*Qe2p2*Ye22*Conjg(TYe22) +            & 
&  4*gpp2*M4*QHdp2*Ye22*Conjg(TYe22) - 4*gpp2*M4*Ql2p2*Ye22*Conjg(TYe22) -               & 
&  (12*g1p2*M1*Ye33*Conjg(TYe33))/5._dp - 4*gpp2*M4*Qe3p2*Ye33*Conjg(TYe33) +            & 
&  4*gpp2*M4*QHdp2*Ye33*Conjg(TYe33) - 4*gpp2*M4*Ql3p2*Ye33*Conjg(TYe33) +               & 
&  4*gpp2*M4*QHdp2*lam*Conjg(Tlam) - 4*gpp2*M4*QHup2*lam*Conjg(Tlam) - 4*gpp2*M4*Qsp2*lam*Conjg(Tlam) -& 
&  6*TradjYuTu*lam*Conjg(Tlam) - 2*Yv11*Conjg(Ye11)*Conjg(TYv11)*TYe11 - 2*Yv22*Conjg(Ye22)*Conjg(TYv22)*TYe22  
betamHd22 =  betamHd22- 2*Yv33*Conjg(Ye33)*Conjg(TYv33)*TYe33 + (g1p2*Conjg(M1)*(120*AbsYe33*M1 +             & 
&  621*g1p2*M1 + 90*g2p2*M1 + 45*g2p2*M2 - 360*gpp2*M1*Qd*QHd - 180*gpp2*M4*Qd*QHd -     & 
&  120*gpp2*M1*Qe1*QHd - 60*gpp2*M4*Qe1*QHd - 120*gpp2*M1*Qe2*QHd - 60*gpp2*M4*Qe2*QHd - & 
&  120*gpp2*M1*Qe3*QHd - 60*gpp2*M4*Qe3*QHd + 240*gpp2*M1*QHdp2 + 120*gpp2*M4*QHdp2 -    & 
&  120*gpp2*M1*QHd*QHu - 60*gpp2*M4*QHd*QHu + 120*gpp2*M1*QHd*Ql1 + 60*gpp2*M4*QHd*Ql1 + & 
&  120*gpp2*M1*QHd*Ql2 + 60*gpp2*M4*QHd*Ql2 + 120*gpp2*M1*QHd*Ql3 + 60*gpp2*M4*QHd*Ql3 - & 
&  360*gpp2*M1*QHd*Qq - 180*gpp2*M4*QHd*Qq + 720*gpp2*M1*QHd*Qu + 360*gpp2*M4*QHd*Qu +   & 
&  20._dp*(TradjYdTd) - 40*M1*TrYdadjYd + 60*Conjg(Ye11)*(2*M1*Ye11 - TYe11) +           & 
&  60*Conjg(Ye22)*(2*M1*Ye22 - TYe22) - 60*Conjg(Ye33)*TYe33))/25._dp - 2*Ye11*Conjg(Yv11)*Conjg(TYe11)*TYv11 -& 
&  2*lam*Conjg(Yv11)*Conjg(Tlam)*TYv11 - 2*Ye22*Conjg(Yv22)*Conjg(TYe22)*TYv22 -         & 
&  2*lam*Conjg(Yv22)*Conjg(Tlam)*TYv22 - 2*Ye33*Conjg(Yv33)*Conjg(TYe33)*TYv33 -         & 
&  2*lam*Conjg(Yv33)*Conjg(Tlam)*TYv33 - 6*TrCTuTpYu*Conjg(lam)*Tlam - 2*Yv11*Conjg(lam)*Conjg(TYv11)*Tlam -& 
&  2*Yv22*Conjg(lam)*Conjg(TYv22)*Tlam - 2*Yv33*Conjg(lam)*Conjg(TYv33)*Tlam +           & 
&  (4*gpp2*Conjg(M4)*(10*AbsYe33*M4*Qe3p2 - 9*g1p2*M1*Qd*QHd - 18*g1p2*M4*Qd*QHd -       & 
&  3*g1p2*M1*Qe1*QHd - 6*g1p2*M4*Qe1*QHd - 3*g1p2*M1*Qe2*QHd - 6*g1p2*M4*Qe2*QHd -       & 
&  3*g1p2*M1*Qe3*QHd - 6*g1p2*M4*Qe3*QHd + 6*g1p2*M1*QHdp2 - 10*Abslam*M4*QHdp2 -        & 
&  10*AbsYe33*M4*QHdp2 + 12*g1p2*M4*QHdp2 + 30*g2p2*M4*QHdp2 + 15*g2p2*M2*QHdp2 +        & 
&  270*gpp2*M4*Qdp2*QHdp2 + 30*gpp2*M4*Qe1p2*QHdp2 + 30*gpp2*M4*Qe2p2*QHdp2 +            & 
&  30*gpp2*M4*Qe3p2*QHdp2 + 120*gpp2*M4*QHdp4 - 3*g1p2*M1*QHd*QHu - 6*g1p2*M4*QHd*QHu +  & 
&  10*Abslam*M4*QHup2 + 60*gpp2*M4*QHdp2*QHup2 + 3*g1p2*M1*QHd*Ql1 + 6*g1p2*M4*QHd*Ql1 + & 
&  60*gpp2*M4*QHdp2*Ql1p2 + 3*g1p2*M1*QHd*Ql2 + 6*g1p2*M4*QHd*Ql2 + 60*gpp2*M4*QHdp2*Ql2p2 +& 
&  3*g1p2*M1*QHd*Ql3 + 6*g1p2*M4*QHd*Ql3 + 10*AbsYe33*M4*Ql3p2 + 60*gpp2*M4*QHdp2*Ql3p2 -& 
&  9*g1p2*M1*QHd*Qq - 18*g1p2*M4*QHd*Qq + 540*gpp2*M4*QHdp2*Qqp2 + 10*Abslam*M4*Qsp2 +   & 
&  30*gpp2*M4*QHdp2*Qsp2 + 18*g1p2*M1*QHd*Qu + 36*g1p2*M4*QHd*Qu + 270*gpp2*M4*QHdp2*Qup2 +& 
&  30*gpp2*M4*QHdp2*Qv1p2 + 30*gpp2*M4*QHdp2*Qv2p2 + 30*gpp2*M4*QHdp2*Qv3p2 -            & 
&  15*Qdp2*TradjYdTd + 15*QHdp2*TradjYdTd - 15*Qqp2*TradjYdTd + 30*M4*Qdp2*TrYdadjYd -   & 
&  30*M4*QHdp2*TrYdadjYd + 30*M4*Qqp2*TrYdadjYd + 5*(Qe1p2 - QHdp2 + Ql1p2)*Conjg(Ye11)*(2*M4*Ye11 -& 
&  TYe11) + 5*(Qe2p2 - QHdp2 + Ql2p2)*Conjg(Ye22)*(2*M4*Ye22 - TYe22) - 5*Qe3p2*Conjg(Ye33)*TYe33 +& 
&  5*QHdp2*Conjg(Ye33)*TYe33 - 5*Ql3p2*Conjg(Ye33)*TYe33 + 5*QHdp2*Conjg(lam)*Tlam -     & 
&  5*QHup2*Conjg(lam)*Tlam - 5*Qsp2*Conjg(lam)*Tlam))/5._dp + 6*g2p4*Tr2(2)  
betamHd22 =  betamHd22+ (6*g1p2*Tr2U1(1,1))/5._dp - 4*g1*gp*QHd*sqrt3ov5*Tr2U1(1,4) - 4*g1*gp*QHd*sqrt3ov5*Tr2U1(4,& 
& 1) + 8*gpp2*QHdp2*Tr2U1(4,4) - 4*g1*sqrt3ov5*Tr3(1) + 8*gp*QHd*Tr3(4)

 
DmHd2 = oo16pi2*( betamHd21 + oo16pi2 * betamHd22 ) 

 
Else 
DmHd2 = oo16pi2* betamHd21 
End If 
 
 
!-------------------- 
! mHu2 
!-------------------- 
 
betamHu21  = 2._dp*(AbsTep) + 2._dp*(AbsTlam) + 2._dp*(AbsTmup) + 2._dp*(AbsTYv11)    & 
&  + 2._dp*(AbsTYv22) + 2._dp*(AbsTYv33) - (6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 +         & 
&  2*Abslam*mHd2 + 2*Abslam*mHu2 + 2*AbsYv11*mHu2 + 2*AbsYv22*mHu2 + 2*AbsYv33*mHu2 +    & 
&  2*AbsYv11*ml012 + 2*AbsYv22*ml022 + 2*AbsYv33*ml032 + 2*Abslam*ms2 + 2*AbsYv11*mvR012 +& 
&  2*AbsYv22*mvR022 + 2*AbsYv33*mvR032 - 8*AbsM4*gpp2*QHup2 + 6._dp*(TrCTuTpTu)          & 
&  + 6._dp*(Trmq2adjYuYu) + 6._dp*(Trmu2YuadjYu) + 6*mHu2*TrYuadjYu + g1*sqrt3ov5*Tr1(1) & 
&  + 2*gp*QHu*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamHu22 = -24*Abslam*AbsTlam - 2*Abslam*AbsTYe11 - 2*Abslam*AbsTYe22 - 2*Abslam*AbsTYe33 -      & 
&  2*AbsTlam*AbsYe11 - 2*AbsTYv11*AbsYe11 - 2*AbsTlam*AbsYe22 - 2*AbsTYv22*AbsYe22 -     & 
&  2*AbsTlam*AbsYe33 - 2*AbsTYv33*AbsYe33 - 2*AbsTYe11*AbsYv11 - 24*AbsTYv11*AbsYv11 -   & 
&  2*AbsTYe22*AbsYv22 - 24*AbsTYv22*AbsYv22 - 2*AbsTYe33*AbsYv33 - 24*AbsTYv33*AbsYv33 + & 
&  (18*AbsM2*g1p2*g2p2)/5._dp + 33*AbsM2*g2p4 - 2*Abslam*AbsYe11*me012 - 2*AbsYe11*AbsYv11*me012 -& 
&  2*Abslam*AbsYe22*me022 - 2*AbsYe22*AbsYv22*me022 - 2*Abslam*AbsYe33*me032 -           & 
&  2*AbsYe33*AbsYv33*me032 - 4*Abslam*AbsYe11*mHd2 - 4*Abslam*AbsYe22*mHd2 -             & 
&  4*Abslam*AbsYe33*mHd2 - 2*AbsYe11*AbsYv11*mHd2 - 2*AbsYe22*AbsYv22*mHd2 -             & 
&  2*AbsYe33*AbsYv33*mHd2 - 12*Clamp2*lamp2*mHd2 - 2*Abslam*AbsYe11*mHu2 -               & 
&  2*Abslam*AbsYe22*mHu2 - 2*Abslam*AbsYe33*mHu2 - 2*AbsYe11*AbsYv11*mHu2 -              & 
&  2*AbsYe22*AbsYv22*mHu2 - 2*AbsYe33*AbsYv33*mHu2 - 12*Clamp2*lamp2*mHu2 -              & 
&  2*Abslam*AbsYe11*ml012 - 4*AbsYe11*AbsYv11*ml012 - 2*Abslam*AbsYe22*ml022 -           & 
&  4*AbsYe22*AbsYv22*ml022 - 2*Abslam*AbsYe33*ml032 - 4*AbsYe33*AbsYv33*ml032 -          & 
&  2*Abslam*AbsYe11*ms2 - 2*Abslam*AbsYe22*ms2 - 2*Abslam*AbsYe33*ms2 - 12*Clamp2*lamp2*ms2 -& 
&  2*AbsYe11*AbsYv11*mvR012 - 2*AbsYe22*AbsYv22*mvR022 - 2*AbsYe33*AbsYv33*mvR032 +      & 
&  4*AbsTlam*gpp2*QHdp2 + 4*Abslam*gpp2*mHd2*QHdp2 + 4*Abslam*gpp2*mHu2*QHdp2 +          & 
&  4*Abslam*gpp2*ms2*QHdp2 - 4*AbsTlam*gpp2*QHup2 - 4*AbsTYv11*gpp2*QHup2 -              & 
&  4*AbsTYv22*gpp2*QHup2 - 4*AbsTYv33*gpp2*QHup2 + 24*AbsM2*g2p2*gpp2*QHup2 -            & 
&  4*Abslam*gpp2*mHd2*QHup2 - 4*Abslam*gpp2*mHu2*QHup2 - 4*AbsYv11*gpp2*mHu2*QHup2 -     & 
&  4*AbsYv22*gpp2*mHu2*QHup2 - 4*AbsYv33*gpp2*mHu2*QHup2 - 4*AbsYv11*gpp2*ml012*QHup2 -  & 
&  4*AbsYv22*gpp2*ml022*QHup2 - 4*AbsYv33*gpp2*ml032*QHup2 - 4*Abslam*gpp2*ms2*QHup2  
betamHu22 =  betamHu22- 4*AbsYv11*gpp2*mvR012*QHup2 - 4*AbsYv22*gpp2*mvR022*QHup2 - 4*AbsYv33*gpp2*mvR032*QHup2 +& 
&  4*AbsTYv11*gpp2*Ql1p2 + 4*AbsYv11*gpp2*mHu2*Ql1p2 + 4*AbsYv11*gpp2*ml012*Ql1p2 +      & 
&  4*AbsYv11*gpp2*mvR012*Ql1p2 + 4*AbsTYv22*gpp2*Ql2p2 + 4*AbsYv22*gpp2*mHu2*Ql2p2 +     & 
&  4*AbsYv22*gpp2*ml022*Ql2p2 + 4*AbsYv22*gpp2*mvR022*Ql2p2 + 4*AbsTYv33*gpp2*Ql3p2 +    & 
&  4*AbsYv33*gpp2*mHu2*Ql3p2 + 4*AbsYv33*gpp2*ml032*Ql3p2 + 4*AbsYv33*gpp2*mvR032*Ql3p2 +& 
&  4*AbsTlam*gpp2*Qsp2 + 4*Abslam*gpp2*mHd2*Qsp2 + 4*Abslam*gpp2*mHu2*Qsp2 +             & 
&  4*Abslam*gpp2*ms2*Qsp2 + 4*AbsTYv11*gpp2*Qv1p2 + 4*AbsYv11*gpp2*mHu2*Qv1p2 +          & 
&  4*AbsYv11*gpp2*ml012*Qv1p2 + 4*AbsYv11*gpp2*mvR012*Qv1p2 + 4*AbsTYv22*gpp2*Qv2p2 +    & 
&  4*AbsYv22*gpp2*mHu2*Qv2p2 + 4*AbsYv22*gpp2*ml022*Qv2p2 + 4*AbsYv22*gpp2*mvR022*Qv2p2 +& 
&  4*AbsTYv33*gpp2*Qv3p2 + 4*AbsYv33*gpp2*mHu2*Qv3p2 + 4*AbsYv33*gpp2*ml032*Qv3p2 +      & 
&  4*AbsYv33*gpp2*mvR032*Qv3p2 - 6*Abslam*TrCTdTpTd + (8*g1p2*TrCTuTpTu)/5._dp +         & 
&  32*g3p2*TrCTuTpTu - 12*gpp2*QHup2*TrCTuTpTu + 12*gpp2*Qqp2*TrCTuTpTu + 12*gpp2*Qup2*TrCTuTpTu -& 
&  (8*g1p2*M1*TrCTuTpYu)/5._dp - 32*g3p2*M3*TrCTuTpYu + 12*gpp2*M4*QHup2*TrCTuTpYu -     & 
&  12*gpp2*M4*Qqp2*TrCTuTpYu - 12*gpp2*M4*Qup2*TrCTuTpYu - 6*Abslam*Trmd2YdadjYd -       & 
&  6._dp*(Trmd2YdadjYuYuadjYd) - 6*Abslam*Trmq2adjYdYd - 6._dp*(Trmq2adjYdYdadjYuYu) +   & 
&  (8*g1p2*Trmq2adjYuYu)/5._dp + 32*g3p2*Trmq2adjYuYu - 12*gpp2*QHup2*Trmq2adjYuYu +     & 
&  12*gpp2*Qqp2*Trmq2adjYuYu + 12*gpp2*Qup2*Trmq2adjYuYu - 6._dp*(Trmq2adjYuYuadjYdYd) - & 
&  36._dp*(Trmq2adjYuYuadjYuYu) - 6._dp*(Trmu2YuadjYdYdadjYu) + (8*g1p2*Trmu2YuadjYu)/5._dp +& 
&  32*g3p2*Trmu2YuadjYu - 12*gpp2*QHup2*Trmu2YuadjYu + 12*gpp2*Qqp2*Trmu2YuadjYu +       & 
&  12*gpp2*Qup2*Trmu2YuadjYu - 36._dp*(Trmu2YuadjYuYuadjYu) - 6._dp*(TrYdadjTuTuadjYd) - & 
&  6*AbsTlam*TrYdadjYd - 12*Abslam*mHd2*TrYdadjYd - 6*Abslam*mHu2*TrYdadjYd  
betamHu22 =  betamHu22- 6*Abslam*ms2*TrYdadjYd - 6._dp*(TrYdadjYuTuadjTd) - 6*mHd2*TrYdadjYuYuadjYd -         & 
&  6*mHu2*TrYdadjYuYuadjYd - 6._dp*(TrYuadjTdTdadjYu) - 36._dp*(TrYuadjTuTuadjYu) -      & 
&  6._dp*(TrYuadjYdTdadjTu) + 64*AbsM3*g3p2*TrYuadjYu + (8*g1p2*mHu2*TrYuadjYu)/5._dp +  & 
&  32*g3p2*mHu2*TrYuadjYu - 12*gpp2*mHu2*QHup2*TrYuadjYu + 12*gpp2*mHu2*Qqp2*TrYuadjYu + & 
&  12*gpp2*mHu2*Qup2*TrYuadjYu - 36._dp*(TrYuadjYuTuadjTu) - 36*mHu2*TrYuadjYuYuadjYu -  & 
&  12*CYv11p2*mHu2*Yv11p2 - 12*CYv11p2*ml012*Yv11p2 - 12*CYv11p2*mvR012*Yv11p2 -         & 
&  12*CYv22p2*mHu2*Yv22p2 - 12*CYv22p2*ml022*Yv22p2 - 12*CYv22p2*mvR022*Yv22p2 -         & 
&  12*CYv33p2*mHu2*Yv33p2 - 12*CYv33p2*ml032*Yv33p2 - 12*CYv33p2*mvR032*Yv33p2 +         & 
&  (g1p2*(621*g1p2*M1 + 45*g2p2*(2._dp*(M1) + M2) + 60*gpp2*(2._dp*(M1) + M4)*QHu*(3._dp*(Qd) +& 
&  Qe1 + Qe2 + Qe3 - QHd + 2._dp*(QHu) - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) -    & 
&  40._dp*(TradjYuTu) + 80*M1*TrYuadjYu)*Conjg(M1))/25._dp - 32*g3p2*TradjYuTu*Conjg(M3) +& 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*QHup2*Conjg(M2) + 4*gpp2*M4*QHup2*Yv11*Conjg(TYv11) -& 
&  4*gpp2*M4*Ql1p2*Yv11*Conjg(TYv11) - 4*gpp2*M4*Qv1p2*Yv11*Conjg(TYv11) +               & 
&  4*gpp2*M4*QHup2*Yv22*Conjg(TYv22) - 4*gpp2*M4*Ql2p2*Yv22*Conjg(TYv22) -               & 
&  4*gpp2*M4*Qv2p2*Yv22*Conjg(TYv22) + 4*gpp2*M4*QHup2*Yv33*Conjg(TYv33) -               & 
&  4*gpp2*M4*Ql3p2*Yv33*Conjg(TYv33) - 4*gpp2*M4*Qv3p2*Yv33*Conjg(TYv33) -               & 
&  4*gpp2*M4*QHdp2*lam*Conjg(Tlam) + 4*gpp2*M4*QHup2*lam*Conjg(Tlam) - 4*gpp2*M4*Qsp2*lam*Conjg(Tlam) -& 
&  6*TradjYdTd*lam*Conjg(Tlam) - 2*Yv11*Conjg(Ye11)*Conjg(TYv11)*TYe11 - 2*lam*Conjg(Ye11)*Conjg(Tlam)*TYe11 -& 
&  2*Yv22*Conjg(Ye22)*Conjg(TYv22)*TYe22 - 2*lam*Conjg(Ye22)*Conjg(Tlam)*TYe22 -         & 
&  2*Yv33*Conjg(Ye33)*Conjg(TYv33)*TYe33 - 2*lam*Conjg(Ye33)*Conjg(Tlam)*TYe33 -         & 
&  2*Ye11*Conjg(Yv11)*Conjg(TYe11)*TYv11 - 2*Ye22*Conjg(Yv22)*Conjg(TYe22)*TYv22  
betamHu22 =  betamHu22- 2*Ye33*Conjg(Yv33)*Conjg(TYe33)*TYv33 - 6*TrCTdTpYd*Conjg(lam)*Tlam - 2*Ye11*Conjg(lam)*Conjg(TYe11)*Tlam -& 
&  2*Ye22*Conjg(lam)*Conjg(TYe22)*Tlam - 2*Ye33*Conjg(lam)*Conjg(TYe33)*Tlam +           & 
&  (4*gpp2*Conjg(M4)*(10*Abslam*M4*QHdp2 + 9*g1p2*M1*Qd*QHu + 18*g1p2*M4*Qd*QHu +        & 
&  3*g1p2*M1*Qe1*QHu + 6*g1p2*M4*Qe1*QHu + 3*g1p2*M1*Qe2*QHu + 6*g1p2*M4*Qe2*QHu +       & 
&  3*g1p2*M1*Qe3*QHu + 6*g1p2*M4*Qe3*QHu - 3*g1p2*M1*QHd*QHu - 6*g1p2*M4*QHd*QHu +       & 
&  6*g1p2*M1*QHup2 - 10*Abslam*M4*QHup2 - 10*AbsYv33*M4*QHup2 + 12*g1p2*M4*QHup2 +       & 
&  30*g2p2*M4*QHup2 + 15*g2p2*M2*QHup2 + 270*gpp2*M4*Qdp2*QHup2 + 30*gpp2*M4*Qe1p2*QHup2 +& 
&  30*gpp2*M4*Qe2p2*QHup2 + 30*gpp2*M4*Qe3p2*QHup2 + 60*gpp2*M4*QHdp2*QHup2 +            & 
&  120*gpp2*M4*QHup4 - 3*g1p2*M1*QHu*Ql1 - 6*g1p2*M4*QHu*Ql1 + 60*gpp2*M4*QHup2*Ql1p2 -  & 
&  3*g1p2*M1*QHu*Ql2 - 6*g1p2*M4*QHu*Ql2 + 60*gpp2*M4*QHup2*Ql2p2 - 3*g1p2*M1*QHu*Ql3 -  & 
&  6*g1p2*M4*QHu*Ql3 + 10*AbsYv33*M4*Ql3p2 + 60*gpp2*M4*QHup2*Ql3p2 + 9*g1p2*M1*QHu*Qq + & 
&  18*g1p2*M4*QHu*Qq + 540*gpp2*M4*QHup2*Qqp2 + 10*Abslam*M4*Qsp2 + 30*gpp2*M4*QHup2*Qsp2 -& 
&  18*g1p2*M1*QHu*Qu - 36*g1p2*M4*QHu*Qu + 270*gpp2*M4*QHup2*Qup2 + 30*gpp2*M4*QHup2*Qv1p2 +& 
&  30*gpp2*M4*QHup2*Qv2p2 + 10*AbsYv33*M4*Qv3p2 + 30*gpp2*M4*QHup2*Qv3p2 +               & 
&  15*QHup2*TradjYuTu - 15*Qqp2*TradjYuTu - 15*Qup2*TradjYuTu - 30*M4*QHup2*TrYuadjYu +  & 
&  30*M4*Qqp2*TrYuadjYu + 30*M4*Qup2*TrYuadjYu - 5*(QHup2 - Ql1p2 - Qv1p2)*Conjg(Yv11)*(2*M4*Yv11 -& 
&  TYv11) - 5*(QHup2 - Ql2p2 - Qv2p2)*Conjg(Yv22)*(2*M4*Yv22 - TYv22) + 5*QHup2*Conjg(Yv33)*TYv33 -& 
&  5*Ql3p2*Conjg(Yv33)*TYv33 - 5*Qv3p2*Conjg(Yv33)*TYv33 - 5*QHdp2*Conjg(lam)*Tlam +     & 
&  5*QHup2*Conjg(lam)*Tlam - 5*Qsp2*Conjg(lam)*Tlam))/5._dp + 6*g2p4*Tr2(2) +            & 
&  (6*g1p2*Tr2U1(1,1))/5._dp + 4*g1*gp*QHu*sqrt3ov5*Tr2U1(1,4) + 4*g1*gp*QHu*sqrt3ov5*Tr2U1(4,& 
& 1) + 8*gpp2*QHup2*Tr2U1(4,4) + 4*g1*sqrt3ov5*Tr3(1) + 8*gp*QHu*Tr3(4)

 
DmHu2 = oo16pi2*( betamHu21 + oo16pi2 * betamHu22 ) 

 
Else 
DmHu2 = oo16pi2* betamHu21 
End If 
 
 
!-------------------- 
! md2 
!-------------------- 
 
betamd21  = (-8*AbsM1*g1p2*id3R)/15._dp - (32*AbsM3*g3p2*id3R)/3._dp + 2._dp*(md2YdadjYd)& 
&  - 8*AbsM4*gpp2*id3R*Qdp2 + 4._dp*(TdadjTd) + 4*mHd2*YdadjYd + 2._dp*(YdadjYdmd2)      & 
&  + 4._dp*(Ydmq2adjYd) + 2*g1*id3R*ooSqrt15*Tr1(1) + 2*gp*id3R*Qd*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamd22 = -2*Abslam*md2YdadjYd - 2*AbsYe11*md2YdadjYd - 2*AbsYe22*md2YdadjYd - 2*AbsYe33*md2YdadjYd +& 
&  (2*g1p2*md2YdadjYd)/5._dp + 6*g2p2*md2YdadjYd - 2._dp*(md2YdadjYdYdadjYd) -           & 
&  2._dp*(md2YdadjYuYuadjYd) + (176*AbsM4*g1p2*gpp2*id3R*Qdp2)/15._dp + (128*AbsM4*g3p2*gpp2*id3R*Qdp2)/3._dp -& 
&  4*gpp2*md2YdadjYd*Qdp2 + 264*AbsM4*gpp4*id3R*Qdp4 + (16*AbsM4*g1p2*gpp2*id3R*Qd*Qe1)/5._dp +& 
&  24*AbsM4*gpp4*id3R*Qdp2*Qe1p2 + (16*AbsM4*g1p2*gpp2*id3R*Qd*Qe2)/5._dp +              & 
&  24*AbsM4*gpp4*id3R*Qdp2*Qe2p2 + (16*AbsM4*g1p2*gpp2*id3R*Qd*Qe3)/5._dp +              & 
&  24*AbsM4*gpp4*id3R*Qdp2*Qe3p2 - (16*AbsM4*g1p2*gpp2*id3R*Qd*QHd)/5._dp +              & 
&  4*gpp2*md2YdadjYd*QHdp2 + 48*AbsM4*gpp4*id3R*Qdp2*QHdp2 + (16*AbsM4*g1p2*gpp2*id3R*Qd*QHu)/5._dp +& 
&  48*AbsM4*gpp4*id3R*Qdp2*QHup2 - (16*AbsM4*g1p2*gpp2*id3R*Qd*Ql1)/5._dp +              & 
&  48*AbsM4*gpp4*id3R*Qdp2*Ql1p2 - (16*AbsM4*g1p2*gpp2*id3R*Qd*Ql2)/5._dp +              & 
&  48*AbsM4*gpp4*id3R*Qdp2*Ql2p2 - (16*AbsM4*g1p2*gpp2*id3R*Qd*Ql3)/5._dp +              & 
&  48*AbsM4*gpp4*id3R*Qdp2*Ql3p2 + (48*AbsM4*g1p2*gpp2*id3R*Qd*Qq)/5._dp +               & 
&  4*gpp2*md2YdadjYd*Qqp2 + 432*AbsM4*gpp4*id3R*Qdp2*Qqp2 + 24*AbsM4*gpp4*id3R*Qdp2*Qsp2 -& 
&  (96*AbsM4*g1p2*gpp2*id3R*Qd*Qu)/5._dp + 216*AbsM4*gpp4*id3R*Qdp2*Qup2 +               & 
&  24*AbsM4*gpp4*id3R*Qdp2*Qv1p2 + 24*AbsM4*gpp4*id3R*Qdp2*Qv2p2 + 24*AbsM4*gpp4*id3R*Qdp2*Qv3p2 -& 
&  4*Abslam*TdadjTd - 4*AbsYe11*TdadjTd - 4*AbsYe22*TdadjTd - 4*AbsYe33*TdadjTd +        & 
&  (4*g1p2*TdadjTd)/5._dp + 12*g2p2*TdadjTd - 8*gpp2*Qdp2*TdadjTd + 8*gpp2*QHdp2*TdadjTd +& 
&  8*gpp2*Qqp2*TdadjTd - 4._dp*(TdadjTdYdadjYd) - 4._dp*(TdadjTuYuadjYd) -               & 
&  4._dp*(TdadjYdYdadjTd) - 4._dp*(TdadjYuYuadjTd) - 12*TdadjYd*TrCTdTpYd -              & 
&  6*md2YdadjYd*TrYdadjYd - 12*TdadjTd*TrYdadjYd - (4*g1p2*M1*YdadjTd)/5._dp -           & 
&  12*g2p2*M2*YdadjTd + 8*gpp2*M4*Qdp2*YdadjTd - 8*gpp2*M4*QHdp2*YdadjTd  
betamd22 =  betamd22- 8*gpp2*M4*Qqp2*YdadjTd - 12*TradjYdTd*YdadjTd - 4._dp*(YdadjTdTdadjYd) -              & 
&  4._dp*(YdadjTuTuadjYd) - 4*AbsTlam*YdadjYd - 4*AbsTYe11*YdadjYd - 4*AbsTYe22*YdadjYd -& 
&  4*AbsTYe33*YdadjYd + 24*AbsM2*g2p2*YdadjYd - 4*AbsYe11*me012*YdadjYd - 4*AbsYe22*me022*YdadjYd -& 
&  4*AbsYe33*me032*YdadjYd - 8*Abslam*mHd2*YdadjYd - 8*AbsYe11*mHd2*YdadjYd -            & 
&  8*AbsYe22*mHd2*YdadjYd - 8*AbsYe33*mHd2*YdadjYd + (4*g1p2*mHd2*YdadjYd)/5._dp +       & 
&  12*g2p2*mHd2*YdadjYd - 4*Abslam*mHu2*YdadjYd - 4*AbsYe11*ml012*YdadjYd -              & 
&  4*AbsYe22*ml022*YdadjYd - 4*AbsYe33*ml032*YdadjYd - 4*Abslam*ms2*YdadjYd -            & 
&  16*AbsM4*gpp2*Qdp2*YdadjYd - 8*gpp2*mHd2*Qdp2*YdadjYd + 16*AbsM4*gpp2*QHdp2*YdadjYd + & 
&  8*gpp2*mHd2*QHdp2*YdadjYd + 16*AbsM4*gpp2*Qqp2*YdadjYd + 8*gpp2*mHd2*Qqp2*YdadjYd -   & 
&  12*TrCTdTpTd*YdadjYd - 12*Trmd2YdadjYd*YdadjYd - 12*Trmq2adjYdYd*YdadjYd -            & 
&  24*mHd2*TrYdadjYd*YdadjYd - 2*Abslam*YdadjYdmd2 - 2*AbsYe11*YdadjYdmd2 -              & 
&  2*AbsYe22*YdadjYdmd2 - 2*AbsYe33*YdadjYdmd2 + (2*g1p2*YdadjYdmd2)/5._dp +             & 
&  6*g2p2*YdadjYdmd2 - 4*gpp2*Qdp2*YdadjYdmd2 + 4*gpp2*QHdp2*YdadjYdmd2 + 4*gpp2*Qqp2*YdadjYdmd2 -& 
&  6*TrYdadjYd*YdadjYdmd2 - 4._dp*(YdadjYdmd2YdadjYd) - 4._dp*(YdadjYdTdadjTd) -         & 
&  8*mHd2*YdadjYdYdadjYd - 2._dp*(YdadjYdYdadjYdmd2) - 4._dp*(YdadjYdYdmq2adjYd) -       & 
&  4._dp*(YdadjYumu2YuadjYd) - 4._dp*(YdadjYuTuadjTd) - 4*mHd2*YdadjYuYuadjYd -          & 
&  4*mHu2*YdadjYuYuadjYd - 2._dp*(YdadjYuYuadjYdmd2) - 4._dp*(YdadjYuYumq2adjYd) -       & 
&  4*Abslam*Ydmq2adjYd - 4*AbsYe11*Ydmq2adjYd - 4*AbsYe22*Ydmq2adjYd - 4*AbsYe33*Ydmq2adjYd +& 
&  (4*g1p2*Ydmq2adjYd)/5._dp + 12*g2p2*Ydmq2adjYd - 8*gpp2*Qdp2*Ydmq2adjYd +             & 
&  8*gpp2*QHdp2*Ydmq2adjYd + 8*gpp2*Qqp2*Ydmq2adjYd - 12*TrYdadjYd*Ydmq2adjYd -          & 
&  4._dp*(Ydmq2adjYdYdadjYd) - 4._dp*(Ydmq2adjYuYuadjYd) + (4*g1p2*(2*id3R*(303*g1p2*M1 +& 
&  40*g3p2*(2._dp*(M1) + M3) + 15*gpp2*(2._dp*(M1) + M4)*Qd*(11._dp*(Qd) +               & 
&  3*(Qe1 + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)))) -       & 
&  45._dp*(TdadjYd) + 90*M1*YdadjYd)*Conjg(M1))/225._dp - (64*g3p2*id3R*(30*g3p2*M3 -    & 
&  g1p2*(M1 + 2._dp*(M3)) - 15*gpp2*(2._dp*(M3) + M4)*Qdp2)*Conjg(M3))/45._dp  
betamd22 =  betamd22+ (88*g1p2*gpp2*id3R*M1*Qdp2*Conjg(M4))/15._dp + (64*g3p2*gpp2*id3R*M3*Qdp2*Conjg(M4))/3._dp +& 
&  (8*g1p2*gpp2*id3R*M1*Qd*Qe1*Conjg(M4))/5._dp + (8*g1p2*gpp2*id3R*M1*Qd*Qe2*Conjg(M4))/5._dp +& 
&  (8*g1p2*gpp2*id3R*M1*Qd*Qe3*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*QHd*Conjg(M4))/5._dp +& 
&  (8*g1p2*gpp2*id3R*M1*Qd*QHu*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*Ql1*Conjg(M4))/5._dp -& 
&  (8*g1p2*gpp2*id3R*M1*Qd*Ql2*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*Ql3*Conjg(M4))/5._dp +& 
&  (24*g1p2*gpp2*id3R*M1*Qd*Qq*Conjg(M4))/5._dp - (48*g1p2*gpp2*id3R*M1*Qd*Qu*Conjg(M4))/5._dp +& 
&  8*gpp2*Qdp2*TdadjYd*Conjg(M4) - 8*gpp2*QHdp2*TdadjYd*Conjg(M4) - 8*gpp2*Qqp2*TdadjYd*Conjg(M4) -& 
&  12*g2p2*TdadjYd*Conjg(M2) - 4*TdadjYd*Ye11*Conjg(TYe11) - 4*TdadjYd*Ye22*Conjg(TYe22) -& 
&  4*TdadjYd*Ye33*Conjg(TYe33) - 4*TdadjYd*lam*Conjg(Tlam) - 4*YdadjTd*Conjg(Ye11)*TYe11 -& 
&  4*YdadjTd*Conjg(Ye22)*TYe22 - 4*YdadjTd*Conjg(Ye33)*TYe33 - 4*YdadjTd*Conjg(lam)*Tlam +& 
&  (32*g3p4*id3R*Tr2(3))/3._dp + (8*g1p2*id3R*Tr2U1(1,1))/15._dp + 8*g1*gp*id3R*ooSqrt15*Qd*Tr2U1(1,& 
& 4) + 8*g1*gp*id3R*ooSqrt15*Qd*Tr2U1(4,1) + 8*gpp2*id3R*Qdp2*Tr2U1(4,4) +               & 
&  8*g1*id3R*ooSqrt15*Tr3(1) + 8*gp*id3R*Qd*Tr3(4)

 
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
&  M4)*(9._dp*(Qd) + 3._dp*(Qe1) + 3._dp*(Qe2) + 3._dp*(Qe3) - 3._dp*(QHd) +             & 
&  3._dp*(QHu) - 3._dp*(Ql1) - 3._dp*(Ql2) - 3._dp*(Ql3) + 9._dp*(Qq) - 22._dp*(Qu))*Qu) +& 
&  45*(TuadjYu - 2*M1*YuadjYu))*Conjg(M1) + 10*(32*g3p2*id3R*(-30*g3p2*M3 +              & 
&  4*g1p2*(M1 + 2._dp*(M3)) + 15*gpp2*(2._dp*(M3) + M4)*Qup2)*Conjg(M3) + 12*gpp2*(id3R*Qu*(-& 
& 2*g1p2*(M1 + 2._dp*(M4))*(9._dp*(Qd) + 3._dp*(Qe1) + 3._dp*(Qe2) + 3._dp*(Qe3) -       & 
&  3._dp*(QHd) + 3._dp*(QHu) - 3._dp*(Ql1) - 3._dp*(Ql2) - 3._dp*(Ql3) + 9._dp*(Qq) -    & 
&  22._dp*(Qu)) + 5*Qu*(8*g3p2*(M3 + 2._dp*(M4)) + 9*gpp2*M4*(9._dp*(Qdp2) +             & 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 11._dp*(Qup2) + Qv1p2 +        & 
&  Qv2p2 + Qv3p2))) + 15*(QHup2 + Qqp2 - Qup2)*(-1._dp*(TuadjYu) + 2*M4*YuadjYu))*Conjg(M4) -& 
&  9*(5._dp*(mu2YuadjYdYdadjYu) + 5*Abslam*mu2YuadjYu + 5*AbsYv11*mu2YuadjYu +           & 
&  5*AbsYv22*mu2YuadjYu + 5*AbsYv33*mu2YuadjYu + g1p2*mu2YuadjYu - 15*g2p2*mu2YuadjYu +  & 
&  5._dp*(mu2YuadjYuYuadjYu) - 10*gpp2*mu2YuadjYu*QHup2 - 10*gpp2*mu2YuadjYu*Qqp2 +      & 
&  10*gpp2*mu2YuadjYu*Qup2 + 15*mu2YuadjYu*TrYuadjYu + 10._dp*(TuadjTdYdadjYu) +         & 
&  10*Abslam*TuadjTu + 10*AbsYv11*TuadjTu + 10*AbsYv22*TuadjTu + 10*AbsYv33*TuadjTu +    & 
&  2*g1p2*TuadjTu - 30*g2p2*TuadjTu - 20*gpp2*QHup2*TuadjTu - 20*gpp2*Qqp2*TuadjTu +     & 
&  20*gpp2*Qup2*TuadjTu + 30*TrYuadjYu*TuadjTu + 10._dp*(TuadjTuYuadjYu) +               & 
&  10._dp*(TuadjYdYdadjTu) + 30*TrCTuTpYu*TuadjYu + 10._dp*(TuadjYuYuadjTu) +            & 
&  10._dp*(YuadjTdTdadjYu) + 10._dp*(YuadjTuTuadjYu) + 10._dp*(YuadjYdmd2YdadjYu) +      & 
&  10._dp*(YuadjYdTdadjTu) + 10*mHd2*YuadjYdYdadjYu + 10*mHu2*YuadjYdYdadjYu +           & 
&  5._dp*(YuadjYdYdadjYumu2) + 10._dp*(YuadjYdYdmq2adjYu) + 2*(5._dp*(AbsTlam) +         & 
&  5._dp*(AbsTYv11) + 5._dp*(AbsTYv22) + 5._dp*(AbsTYv33) - 30*AbsM2*g2p2 +              & 
&  5*Abslam*mHd2 + 10*Abslam*mHu2 + 10*AbsYv22*mHu2 + 10*AbsYv33*mHu2 + g1p2*mHu2 -      & 
&  15*g2p2*mHu2 + 5*AbsYv22*ml022 + 5*AbsYv33*ml032 + 5*Abslam*ms2 + 5*AbsYv11*(2._dp*(mHu2) +& 
&  ml012 + mvR012) + 5*AbsYv22*mvR022 + 5*AbsYv33*mvR032 - 10*gpp2*mHu2*QHup2 -          & 
&  10*gpp2*mHu2*Qqp2 + 10*gpp2*mHu2*Qup2 + 15._dp*(TrCTuTpTu) + 15._dp*(Trmq2adjYuYu) +  & 
&  15._dp*(Trmu2YuadjYu) + 30*mHu2*TrYuadjYu)*YuadjYu + 5*Abslam*YuadjYumu2 +            & 
&  5*AbsYv11*YuadjYumu2 + 5*AbsYv22*YuadjYumu2 + 5*AbsYv33*YuadjYumu2 + g1p2*YuadjYumu2 -& 
&  15*g2p2*YuadjYumu2 - 10*gpp2*QHup2*YuadjYumu2 - 10*gpp2*Qqp2*YuadjYumu2 +             & 
&  10*gpp2*Qup2*YuadjYumu2 + 15*TrYuadjYu*YuadjYumu2 + 10._dp*(YuadjYumu2YuadjYu) +      & 
&  10._dp*(YuadjYuTuadjTu) + 20*mHu2*YuadjYuYuadjYu + 5._dp*(YuadjYuYuadjYumu2) +        & 
&  10._dp*(YuadjYuYumq2adjYu) + 10._dp*(Yumq2adjYdYdadjYu) + 10*Abslam*Yumq2adjYu +      & 
&  10*AbsYv11*Yumq2adjYu + 10*AbsYv22*Yumq2adjYu + 10*AbsYv33*Yumq2adjYu +               & 
&  2*g1p2*Yumq2adjYu - 30*g2p2*Yumq2adjYu - 20*gpp2*QHup2*Yumq2adjYu - 20*gpp2*Qqp2*Yumq2adjYu +& 
&  20*gpp2*Qup2*Yumq2adjYu + 30*TrYuadjYu*Yumq2adjYu + 10._dp*(Yumq2adjYuYuadjYu) +      & 
&  30*g2p2*TuadjYu*Conjg(M2) + 10*TuadjYu*Yv11*Conjg(TYv11) + 10*TuadjYu*Yv22*Conjg(TYv22) +& 
&  10*TuadjYu*Yv33*Conjg(TYv33) + 10*TuadjYu*lam*Conjg(Tlam) + 2*YuadjTu*(-              & 
& (g1p2*M1) + 15*g2p2*M2 + 10*gpp2*M4*QHup2 + 10*gpp2*M4*Qqp2 - 10*gpp2*M4*Qup2 +        & 
&  15._dp*(TradjYuTu) + 5*Conjg(Yv11)*TYv11 + 5*Conjg(Yv22)*TYv22 + 5*Conjg(Yv33)*TYv33 +& 
&  5*Conjg(lam)*Tlam)) + 12*id3R*(20*g3p4*Tr2(3) + 4*g1p2*Tr2U1(1,1) - 2*g1*sqrt15*(gp*Qu*(Tr2U1(1,& 
& 4) + Tr2U1(4,1)) + Tr3(1)) + 15*gp*Qu*(gp*Qu*Tr2U1(4,4) + Tr3(4)))))/225._dp

 
Dmu2 = oo16pi2*( betamu21 + oo16pi2 * betamu22 ) 

 
Else 
Dmu2 = oo16pi2* betamu21 
End If 
 
 
Call Chop(Dmu2) 

Forall(i1=1:3) Dmu2(i1,i1) =  Real(Dmu2(i1,i1),dp) 
Dmu2 = 0.5_dp*(Dmu2+ Conjg(Transpose(Dmu2)) ) 
!-------------------- 
! me012 
!-------------------- 
 
betame0121  = 4._dp*(AbsTep) + 4._dp*(AbsTYe11) - (24*AbsM1*g1p2)/5._dp +             & 
&  4*AbsYe11*me012 + 4*AbsYe11*mHd2 + 4*AbsYe11*ml012 - 8*AbsM4*gpp2*Qe1p2 +             & 
&  2*g1*sqrt3ov5*Tr1(1) + 2*gp*Qe1*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame0122 = (4*(3*g1p2*Conjg(M1)*(234*g1p2*M1 + 10*gpp2*(2._dp*(M1) + M4)*Qe1*(3._dp*(Qd) +       & 
&  3._dp*(Qe1) + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) +    & 
&  5*Conjg(Ye11)*(-2*M1*Ye11 + TYe11)) + 5*(-5*Abslam*AbsTYe11 - 5*AbsTYe11*AbsYe22 -    & 
&  5*AbsTYe11*AbsYe33 - 5*AbsTYe11*AbsYv11 - 3*AbsTYe11*g1p2 + 15*AbsTYe11*g2p2 -        & 
&  10*AbsTYe11*gpp2*Qe1p2 + 10*AbsTYe11*gpp2*QHdp2 + 10*AbsTYe11*gpp2*Ql1p2 -            & 
&  15*AbsTYe11*TrYdadjYd - 20*CYe11p2*(me012 + mHd2 + ml012)*Ye11p2 + 3*g1p2*M1*Ye11*Conjg(TYe11) -& 
&  15*g2p2*M2*Ye11*Conjg(TYe11) + 10*gpp2*M4*Qe1p2*Ye11*Conjg(TYe11) - 10*gpp2*M4*QHdp2*Ye11*Conjg(TYe11) -& 
&  10*gpp2*M4*Ql1p2*Ye11*Conjg(TYe11) - 15*TradjYdTd*Ye11*Conjg(TYe11) + 2*gpp2*Conjg(M4)*(3*Qe1*(g1p2*(M1 +& 
&  2._dp*(M4))*(3._dp*(Qd) + 3._dp*(Qe1) + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 -           & 
&  Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 5*gpp2*M4*Qe1*(9._dp*(Qdp2) + 3._dp*(Qe1p2) +        & 
&  Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) + 2._dp*(Ql2p2) +       & 
&  2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2)) -       & 
&  5*(Qe1p2 - QHdp2 - Ql1p2)*Conjg(Ye11)*(2*M4*Ye11 - TYe11)) - Conjg(Ye11)*(5*AbsTlam*Ye11 +& 
&  40*AbsTYe11*Ye11 + 5*AbsTYe22*Ye11 + 5*AbsTYe33*Ye11 + 5*AbsTYv11*Ye11 +              & 
&  5*Abslam*me012*Ye11 + 5*AbsYe33*me012*Ye11 + 5*AbsYv11*me012*Ye11 + 3*g1p2*me012*Ye11 -& 
&  15*g2p2*me012*Ye11 + 5*AbsYe33*me032*Ye11 + 10*Abslam*mHd2*Ye11 + 10*AbsYe33*mHd2*Ye11 +& 
&  5*AbsYv11*mHd2*Ye11 + 3*g1p2*mHd2*Ye11 - 15*g2p2*mHd2*Ye11 + 5*Abslam*mHu2*Ye11 +     & 
&  5*AbsYv11*mHu2*Ye11 + 5*Abslam*ml012*Ye11 + 5*AbsYe33*ml012*Ye11 + 10*AbsYv11*ml012*Ye11 +& 
&  3*g1p2*ml012*Ye11 - 15*g2p2*ml012*Ye11 + 5*AbsYe22*(me012 + me022 + 2._dp*(mHd2) +    & 
&  ml012 + ml022)*Ye11 + 5*AbsYe33*ml032*Ye11 + 5*Abslam*ms2*Ye11 + 5*AbsYv11*mvR012*Ye11 +& 
&  10*gpp2*me012*Qe1p2*Ye11 + 10*gpp2*mHd2*Qe1p2*Ye11 + 10*gpp2*ml012*Qe1p2*Ye11 -       & 
&  10*gpp2*me012*QHdp2*Ye11 - 10*gpp2*mHd2*QHdp2*Ye11 - 10*gpp2*ml012*QHdp2*Ye11 -       & 
&  10*gpp2*me012*Ql1p2*Ye11 - 10*gpp2*mHd2*Ql1p2*Ye11 - 10*gpp2*ml012*Ql1p2*Ye11 +       & 
&  15*TrCTdTpTd*Ye11 + 15*Trmd2YdadjYd*Ye11 + 15*Trmq2adjYdYd*Ye11 + 15*me012*TrYdadjYd*Ye11 +& 
&  30*mHd2*TrYdadjYd*Ye11 + 15*ml012*TrYdadjYd*Ye11 + 15*TrCTdTpYd*TYe11 +               & 
&  5*Ye22*Conjg(TYe22)*TYe11 + 5*Ye33*Conjg(TYe33)*TYe11 + 5*Yv11*Conjg(TYv11)*TYe11 +   & 
&  5*lam*Conjg(Tlam)*TYe11 + 15*g2p2*Conjg(M2)*(-2*M2*Ye11 + TYe11)) - 5*Ye11*Conjg(Ye22)*Conjg(TYe11)*TYe22 -& 
&  5*Ye11*Conjg(Ye33)*Conjg(TYe11)*TYe33 - 5*Ye11*Conjg(Yv11)*Conjg(TYe11)*TYv11 -       & 
&  5*Ye11*Conjg(lam)*Conjg(TYe11)*Tlam + 6*g1p2*Tr2U1(1,1) + 2*g1*gp*Qe1*sqrt15*Tr2U1(1, & 
& 4) + 2*g1*gp*Qe1*sqrt15*Tr2U1(4,1) + 10*gpp2*Qe1p2*Tr2U1(4,4) + 2*g1*sqrt15*Tr3(1) +   & 
&  10*gp*Qe1*Tr3(4))))/25._dp

 
Dme012 = oo16pi2*( betame0121 + oo16pi2 * betame0122 ) 

 
Else 
Dme012 = oo16pi2* betame0121 
End If 
 
 
!-------------------- 
! me022 
!-------------------- 
 
betame0221  = 4._dp*(AbsTmup) + 4._dp*(AbsTYe22) - (24*AbsM1*g1p2)/5._dp +            & 
&  4*AbsYe22*me022 + 4*AbsYe22*mHd2 + 4*AbsYe22*ml022 - 8*AbsM4*gpp2*Qe2p2 +             & 
&  2*g1*sqrt3ov5*Tr1(1) + 2*gp*Qe2*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame0222 = (4*(3*g1p2*Conjg(M1)*(234*g1p2*M1 + 10*gpp2*(2._dp*(M1) + M4)*Qe2*(3._dp*(Qd) +       & 
&  Qe1 + 3._dp*(Qe2) + Qe3 - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) +    & 
&  5*Conjg(Ye22)*(-2*M1*Ye22 + TYe22)) + 5*(-5*Abslam*AbsTYe22 - 5*AbsTYe22*AbsYe11 -    & 
&  5*AbsTYe22*AbsYe33 - 5*AbsTYe22*AbsYv22 - 3*AbsTYe22*g1p2 + 15*AbsTYe22*g2p2 -        & 
&  10*AbsTYe22*gpp2*Qe2p2 + 10*AbsTYe22*gpp2*QHdp2 + 10*AbsTYe22*gpp2*Ql2p2 -            & 
&  15*AbsTYe22*TrYdadjYd - 20*CYe22p2*(me022 + mHd2 + ml022)*Ye22p2 + 3*g1p2*M1*Ye22*Conjg(TYe22) -& 
&  15*g2p2*M2*Ye22*Conjg(TYe22) + 10*gpp2*M4*Qe2p2*Ye22*Conjg(TYe22) - 10*gpp2*M4*QHdp2*Ye22*Conjg(TYe22) -& 
&  10*gpp2*M4*Ql2p2*Ye22*Conjg(TYe22) - 15*TradjYdTd*Ye22*Conjg(TYe22) - 5*Ye22*Conjg(Ye11)*Conjg(TYe22)*TYe11 +& 
&  2*gpp2*Conjg(M4)*(3*Qe2*(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe1 + 3._dp*(Qe2) +     & 
&  Qe3 - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 5*gpp2*M4*Qe2*(9._dp*(Qdp2) +& 
&  Qe1p2 + 3._dp*(Qe2p2) + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +       & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 +         & 
&  Qv2p2 + Qv3p2)) - 5*(Qe2p2 - QHdp2 - Ql2p2)*Conjg(Ye22)*(2*M4*Ye22 - TYe22)) -        & 
&  Conjg(Ye22)*(5*AbsTlam*Ye22 + 5*AbsTYe11*Ye22 + 40*AbsTYe22*Ye22 + 5*AbsTYe33*Ye22 +  & 
&  5*AbsTYv22*Ye22 + 5*Abslam*me022*Ye22 + 5*AbsYe33*me022*Ye22 + 5*AbsYv22*me022*Ye22 + & 
&  3*g1p2*me022*Ye22 - 15*g2p2*me022*Ye22 + 5*AbsYe33*me032*Ye22 + 10*Abslam*mHd2*Ye22 + & 
&  10*AbsYe33*mHd2*Ye22 + 5*AbsYv22*mHd2*Ye22 + 3*g1p2*mHd2*Ye22 - 15*g2p2*mHd2*Ye22 +   & 
&  5*Abslam*mHu2*Ye22 + 5*AbsYv22*mHu2*Ye22 + 5*Abslam*ml022*Ye22 + 5*AbsYe33*ml022*Ye22 +& 
&  10*AbsYv22*ml022*Ye22 + 3*g1p2*ml022*Ye22 - 15*g2p2*ml022*Ye22 + 5*AbsYe11*(me012 +   & 
&  me022 + 2._dp*(mHd2) + ml012 + ml022)*Ye22 + 5*AbsYe33*ml032*Ye22 + 5*Abslam*ms2*Ye22 +& 
&  5*AbsYv22*mvR022*Ye22 + 10*gpp2*me022*Qe2p2*Ye22 + 10*gpp2*mHd2*Qe2p2*Ye22 +          & 
&  10*gpp2*ml022*Qe2p2*Ye22 - 10*gpp2*me022*QHdp2*Ye22 - 10*gpp2*mHd2*QHdp2*Ye22 -       & 
&  10*gpp2*ml022*QHdp2*Ye22 - 10*gpp2*me022*Ql2p2*Ye22 - 10*gpp2*mHd2*Ql2p2*Ye22 -       & 
&  10*gpp2*ml022*Ql2p2*Ye22 + 15*TrCTdTpTd*Ye22 + 15*Trmd2YdadjYd*Ye22 + 15*Trmq2adjYdYd*Ye22 +& 
&  15*me022*TrYdadjYd*Ye22 + 30*mHd2*TrYdadjYd*Ye22 + 15*ml022*TrYdadjYd*Ye22 +          & 
&  15*TrCTdTpYd*TYe22 + 5*Ye11*Conjg(TYe11)*TYe22 + 5*Ye33*Conjg(TYe33)*TYe22 +          & 
&  5*Yv22*Conjg(TYv22)*TYe22 + 5*lam*Conjg(Tlam)*TYe22 + 15*g2p2*Conjg(M2)*(-            & 
& 2*M2*Ye22 + TYe22)) - 5*Ye22*Conjg(Ye33)*Conjg(TYe22)*TYe33 - 5*Ye22*Conjg(Yv22)*Conjg(TYe22)*TYv22 -& 
&  5*Ye22*Conjg(lam)*Conjg(TYe22)*Tlam + 6*g1p2*Tr2U1(1,1) + 2*g1*gp*Qe2*sqrt15*Tr2U1(1, & 
& 4) + 2*g1*gp*Qe2*sqrt15*Tr2U1(4,1) + 10*gpp2*Qe2p2*Tr2U1(4,4) + 2*g1*sqrt15*Tr3(1) +   & 
&  10*gp*Qe2*Tr3(4))))/25._dp

 
Dme022 = oo16pi2*( betame0221 + oo16pi2 * betame0222 ) 

 
Else 
Dme022 = oo16pi2* betame0221 
End If 
 
 
!-------------------- 
! me032 
!-------------------- 
 
betame0321  = 4._dp*(AbsTYe33) - (24*AbsM1*g1p2)/5._dp + 4*AbsYe33*me032 +            & 
&  4*AbsYe33*mHd2 + 4*AbsYe33*ml032 - 8*AbsM4*gpp2*Qe3p2 + 2*g1*sqrt3ov5*Tr1(1)          & 
&  + 2*gp*Qe3*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame0322 = (4*(3*g1p2*Conjg(M1)*(234*g1p2*M1 + 10*gpp2*(2._dp*(M1) + M4)*Qe3*(3._dp*(Qd) +       & 
&  Qe1 + Qe2 + 3._dp*(Qe3) - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) +    & 
&  5*Conjg(Ye33)*(-2*M1*Ye33 + TYe33)) + 5*(-5*Abslam*AbsTYe33 - 5*AbsTYe33*AbsYe11 -    & 
&  5*AbsTYe33*AbsYe22 - 5*AbsTYe33*AbsYv33 - 3*AbsTYe33*g1p2 + 15*AbsTYe33*g2p2 -        & 
&  10*AbsTYe33*gpp2*Qe3p2 + 10*AbsTYe33*gpp2*QHdp2 + 10*AbsTYe33*gpp2*Ql3p2 -            & 
&  15*AbsTYe33*TrYdadjYd - 20*CYe33p2*(me032 + mHd2 + ml032)*Ye33p2 + 3*g1p2*M1*Ye33*Conjg(TYe33) -& 
&  15*g2p2*M2*Ye33*Conjg(TYe33) + 10*gpp2*M4*Qe3p2*Ye33*Conjg(TYe33) - 10*gpp2*M4*QHdp2*Ye33*Conjg(TYe33) -& 
&  10*gpp2*M4*Ql3p2*Ye33*Conjg(TYe33) - 15*TradjYdTd*Ye33*Conjg(TYe33) - 5*Ye33*Conjg(Ye11)*Conjg(TYe33)*TYe11 -& 
&  5*Ye33*Conjg(Ye22)*Conjg(TYe33)*TYe22 + 2*gpp2*Conjg(M4)*(3*Qe3*(g1p2*(M1 +           & 
&  2._dp*(M4))*(3._dp*(Qd) + Qe1 + Qe2 + 3._dp*(Qe3) - QHd + QHu - Ql1 - Ql2 -           & 
&  Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 5*gpp2*M4*Qe3*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 +        & 
&  3._dp*(Qe3p2) + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) + 2._dp*(Ql2p2) +       & 
&  2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2)) -       & 
&  5*(Qe3p2 - QHdp2 - Ql3p2)*Conjg(Ye33)*(2*M4*Ye33 - TYe33)) - Conjg(Ye33)*(5*AbsTlam*Ye33 +& 
&  5*AbsTYe11*Ye33 + 5*AbsTYe22*Ye33 + 40*AbsTYe33*Ye33 + 5*AbsTYv33*Ye33 +              & 
&  5*AbsYe22*me022*Ye33 + 5*Abslam*me032*Ye33 + 5*AbsYe22*me032*Ye33 + 5*AbsYv33*me032*Ye33 +& 
&  3*g1p2*me032*Ye33 - 15*g2p2*me032*Ye33 + 10*Abslam*mHd2*Ye33 + 10*AbsYe22*mHd2*Ye33 + & 
&  5*AbsYv33*mHd2*Ye33 + 3*g1p2*mHd2*Ye33 - 15*g2p2*mHd2*Ye33 + 5*Abslam*mHu2*Ye33 +     & 
&  5*AbsYv33*mHu2*Ye33 + 5*AbsYe22*ml022*Ye33 + 5*Abslam*ml032*Ye33 + 5*AbsYe22*ml032*Ye33 +& 
&  10*AbsYv33*ml032*Ye33 + 3*g1p2*ml032*Ye33 - 15*g2p2*ml032*Ye33 + 5*AbsYe11*(me012 +   & 
&  me032 + 2._dp*(mHd2) + ml012 + ml032)*Ye33 + 5*Abslam*ms2*Ye33 + 5*AbsYv33*mvR032*Ye33 +& 
&  10*gpp2*me032*Qe3p2*Ye33 + 10*gpp2*mHd2*Qe3p2*Ye33 + 10*gpp2*ml032*Qe3p2*Ye33 -       & 
&  10*gpp2*me032*QHdp2*Ye33 - 10*gpp2*mHd2*QHdp2*Ye33 - 10*gpp2*ml032*QHdp2*Ye33 -       & 
&  10*gpp2*me032*Ql3p2*Ye33 - 10*gpp2*mHd2*Ql3p2*Ye33 - 10*gpp2*ml032*Ql3p2*Ye33 +       & 
&  15*TrCTdTpTd*Ye33 + 15*Trmd2YdadjYd*Ye33 + 15*Trmq2adjYdYd*Ye33 + 15*me032*TrYdadjYd*Ye33 +& 
&  30*mHd2*TrYdadjYd*Ye33 + 15*ml032*TrYdadjYd*Ye33 + 15*TrCTdTpYd*TYe33 +               & 
&  5*Ye11*Conjg(TYe11)*TYe33 + 5*Ye22*Conjg(TYe22)*TYe33 + 5*Yv33*Conjg(TYv33)*TYe33 +   & 
&  5*lam*Conjg(Tlam)*TYe33 + 15*g2p2*Conjg(M2)*(-2*M2*Ye33 + TYe33)) - 5*Ye33*Conjg(Yv33)*Conjg(TYe33)*TYv33 -& 
&  5*Ye33*Conjg(lam)*Conjg(TYe33)*Tlam + 6*g1p2*Tr2U1(1,1) + 2*g1*gp*Qe3*sqrt15*Tr2U1(1, & 
& 4) + 2*g1*gp*Qe3*sqrt15*Tr2U1(4,1) + 10*gpp2*Qe3p2*Tr2U1(4,4) + 2*g1*sqrt15*Tr3(1) +   & 
&  10*gp*Qe3*Tr3(4))))/25._dp

 
Dme032 = oo16pi2*( betame0321 + oo16pi2 * betame0322 ) 

 
Else 
Dme032 = oo16pi2* betame0321 
End If 
 
 
!-------------------- 
! mvR012 
!-------------------- 
 
betamvR0121  = 4._dp*(AbsTYv11) + 4*AbsYv11*(mHu2 + ml012 + mvR012) - 8*AbsM4*gpp2*Qv1p2 +& 
&  2*gp*Qv1*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamvR0122 = -16*CYv11p2*(mHu2 + ml012 + mvR012)*Yv11p2 + 8*Conjg(M4)*(3*gpp4*M4*Qv1p2*(9._dp*(Qdp2) +& 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + 3._dp*(Qv1p2) + & 
&  Qv2p2 + Qv3p2) + gpp2*(QHup2 + Ql1p2 - Qv1p2)*Conjg(Yv11)*(2*M4*Yv11 - TYv11)) +      & 
&  (4*Conjg(Yv11)*(-5*AbsTlam*Yv11 - 5*AbsTYe11*Yv11 - 40*AbsTYv11*Yv11 - 5*AbsTYv22*Yv11 -& 
&  5*AbsTYv33*Yv11 - 5*AbsYe11*me012*Yv11 - 5*Abslam*mHd2*Yv11 - 5*AbsYe11*mHd2*Yv11 -   & 
&  10*Abslam*mHu2*Yv11 - 5*AbsYe11*mHu2*Yv11 - 10*AbsYv22*mHu2*Yv11 - 10*AbsYv33*mHu2*Yv11 +& 
&  3*g1p2*mHu2*Yv11 + 15*g2p2*mHu2*Yv11 - 5*Abslam*ml012*Yv11 - 10*AbsYe11*ml012*Yv11 -  & 
&  5*AbsYv22*ml012*Yv11 - 5*AbsYv33*ml012*Yv11 + 3*g1p2*ml012*Yv11 + 15*g2p2*ml012*Yv11 -& 
&  5*AbsYv22*ml022*Yv11 - 5*AbsYv33*ml032*Yv11 - 5*Abslam*ms2*Yv11 - 5*Abslam*mvR012*Yv11 -& 
&  5*AbsYe11*mvR012*Yv11 - 5*AbsYv22*mvR012*Yv11 - 5*AbsYv33*mvR012*Yv11 +               & 
&  3*g1p2*mvR012*Yv11 + 15*g2p2*mvR012*Yv11 - 5*AbsYv22*mvR022*Yv11 - 5*AbsYv33*mvR032*Yv11 +& 
&  10*gpp2*mHu2*QHup2*Yv11 + 10*gpp2*ml012*QHup2*Yv11 + 10*gpp2*mvR012*QHup2*Yv11 +      & 
&  10*gpp2*mHu2*Ql1p2*Yv11 + 10*gpp2*ml012*Ql1p2*Yv11 + 10*gpp2*mvR012*Ql1p2*Yv11 -      & 
&  10*gpp2*mHu2*Qv1p2*Yv11 - 10*gpp2*ml012*Qv1p2*Yv11 - 10*gpp2*mvR012*Qv1p2*Yv11 -      & 
&  15*TrCTuTpTu*Yv11 - 15*Trmq2adjYuYu*Yv11 - 15*Trmu2YuadjYu*Yv11 - 30*mHu2*TrYuadjYu*Yv11 -& 
&  15*ml012*TrYuadjYu*Yv11 - 15*mvR012*TrYuadjYu*Yv11 + 3*g1p2*Conjg(M1)*(2*M1*Yv11 -    & 
&  TYv11) + 15*g2p2*Conjg(M2)*(2*M2*Yv11 - TYv11) - 15*TrCTuTpYu*TYv11 - 5*Ye11*Conjg(TYe11)*TYv11 -& 
&  5*Yv22*Conjg(TYv22)*TYv11 - 5*Yv33*Conjg(TYv33)*TYv11 - 5*lam*Conjg(Tlam)*TYv11))/5._dp -& 
&  (4*Conjg(TYv11)*((5._dp*(Abslam) + 5._dp*(AbsYv22) + 5._dp*(AbsYv33) - 3._dp*(g1p2) - & 
&  15._dp*(g2p2) - 10*gpp2*QHup2 - 10*gpp2*Ql1p2 + 10*gpp2*Qv1p2 + 15._dp*(TrYuadjYu))*TYv11 +& 
&  5*Conjg(Ye11)*(Yv11*TYe11 + Ye11*TYv11) + Yv11*(3*g1p2*M1 + 15*g2p2*M2 +              & 
&  10*gpp2*M4*QHup2 + 10*gpp2*M4*Ql1p2 - 10*gpp2*M4*Qv1p2 + 15._dp*(TradjYuTu) +         & 
&  5*Conjg(Yv22)*TYv22 + 5*Conjg(Yv33)*TYv33 + 5*Conjg(lam)*Tlam)))/5._dp  
betamvR0122 =  betamvR0122+ 8*gp*Qv1*(gp*Qv1*Tr2U1(4,4) + Tr3(4))

 
DmvR012 = oo16pi2*( betamvR0121 + oo16pi2 * betamvR0122 ) 

 
Else 
DmvR012 = oo16pi2* betamvR0121 
End If 
 
 
!-------------------- 
! mvR022 
!-------------------- 
 
betamvR0221  = 4._dp*(AbsTYv22) + 4*AbsYv22*(mHu2 + ml022 + mvR022) - 8*AbsM4*gpp2*Qv2p2 +& 
&  2*gp*Qv2*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamvR0222 = -16*CYv22p2*(mHu2 + ml022 + mvR022)*Yv22p2 + 8*Conjg(M4)*(3*gpp4*M4*Qv2p2*(9._dp*(Qdp2) +& 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 +         & 
&  3._dp*(Qv2p2) + Qv3p2) + gpp2*(QHup2 + Ql2p2 - Qv2p2)*Conjg(Yv22)*(2*M4*Yv22 -        & 
&  TYv22)) + (4*Conjg(Yv22)*(-5*AbsTlam*Yv22 - 5*AbsTYe22*Yv22 - 5*AbsTYv11*Yv22 -       & 
&  40*AbsTYv22*Yv22 - 5*AbsTYv33*Yv22 - 5*AbsYe22*me022*Yv22 - 5*Abslam*mHd2*Yv22 -      & 
&  5*AbsYe22*mHd2*Yv22 - 10*Abslam*mHu2*Yv22 - 5*AbsYe22*mHu2*Yv22 - 10*AbsYv11*mHu2*Yv22 -& 
&  10*AbsYv33*mHu2*Yv22 + 3*g1p2*mHu2*Yv22 + 15*g2p2*mHu2*Yv22 - 5*AbsYv11*ml012*Yv22 -  & 
&  5*Abslam*ml022*Yv22 - 10*AbsYe22*ml022*Yv22 - 5*AbsYv11*ml022*Yv22 - 5*AbsYv33*ml022*Yv22 +& 
&  3*g1p2*ml022*Yv22 + 15*g2p2*ml022*Yv22 - 5*AbsYv33*ml032*Yv22 - 5*Abslam*ms2*Yv22 -   & 
&  5*AbsYv11*mvR012*Yv22 - 5*Abslam*mvR022*Yv22 - 5*AbsYe22*mvR022*Yv22 - 5*AbsYv11*mvR022*Yv22 -& 
&  5*AbsYv33*mvR022*Yv22 + 3*g1p2*mvR022*Yv22 + 15*g2p2*mvR022*Yv22 - 5*AbsYv33*mvR032*Yv22 +& 
&  10*gpp2*mHu2*QHup2*Yv22 + 10*gpp2*ml022*QHup2*Yv22 + 10*gpp2*mvR022*QHup2*Yv22 +      & 
&  10*gpp2*mHu2*Ql2p2*Yv22 + 10*gpp2*ml022*Ql2p2*Yv22 + 10*gpp2*mvR022*Ql2p2*Yv22 -      & 
&  10*gpp2*mHu2*Qv2p2*Yv22 - 10*gpp2*ml022*Qv2p2*Yv22 - 10*gpp2*mvR022*Qv2p2*Yv22 -      & 
&  15*TrCTuTpTu*Yv22 - 15*Trmq2adjYuYu*Yv22 - 15*Trmu2YuadjYu*Yv22 - 30*mHu2*TrYuadjYu*Yv22 -& 
&  15*ml022*TrYuadjYu*Yv22 - 15*mvR022*TrYuadjYu*Yv22 + 3*g1p2*Conjg(M1)*(2*M1*Yv22 -    & 
&  TYv22) + 15*g2p2*Conjg(M2)*(2*M2*Yv22 - TYv22) - 15*TrCTuTpYu*TYv22 - 5*Ye22*Conjg(TYe22)*TYv22 -& 
&  5*Yv11*Conjg(TYv11)*TYv22 - 5*Yv33*Conjg(TYv33)*TYv22 - 5*lam*Conjg(Tlam)*TYv22))/5._dp -& 
&  (4*Conjg(TYv22)*(3*g1p2*M1*Yv22 + 15*g2p2*M2*Yv22 + 10*gpp2*M4*QHup2*Yv22 +           & 
&  10*gpp2*M4*Ql2p2*Yv22 - 10*gpp2*M4*Qv2p2*Yv22 + 15*TradjYuTu*Yv22 + 5*Abslam*TYv22 +  & 
&  5*AbsYv33*TYv22 - 3*g1p2*TYv22 - 15*g2p2*TYv22 - 10*gpp2*QHup2*TYv22 - 10*gpp2*Ql2p2*TYv22 +& 
&  10*gpp2*Qv2p2*TYv22 + 15*TrYuadjYu*TYv22 + 5*Conjg(Ye22)*(Yv22*TYe22 + Ye22*TYv22) +  & 
&  5*Conjg(Yv11)*(Yv22*TYv11 + Yv11*TYv22) + 5*Yv22*Conjg(Yv33)*TYv33 + 5*Yv22*Conjg(lam)*Tlam))/5._dp  
betamvR0222 =  betamvR0222+ 8*gp*Qv2*(gp*Qv2*Tr2U1(4,4) + Tr3(4))

 
DmvR022 = oo16pi2*( betamvR0221 + oo16pi2 * betamvR0222 ) 

 
Else 
DmvR022 = oo16pi2* betamvR0221 
End If 
 
 
!-------------------- 
! mvR032 
!-------------------- 
 
betamvR0321  = 4._dp*(AbsTYv33) + 4*AbsYv33*(mHu2 + ml032 + mvR032) - 8*AbsM4*gpp2*Qv3p2 +& 
&  2*gp*Qv3*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamvR0322 = -16*CYv33p2*(mHu2 + ml032 + mvR032)*Yv33p2 + 8*Conjg(M4)*(3*gpp4*M4*Qv3p2*(9._dp*(Qdp2) +& 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 +         & 
&  Qv2p2 + 3._dp*(Qv3p2)) + gpp2*(QHup2 + Ql3p2 - Qv3p2)*Conjg(Yv33)*(2*M4*Yv33 -        & 
&  TYv33)) + (4*Conjg(Yv33)*(-5*AbsTlam*Yv33 - 5*AbsTYe33*Yv33 - 5*AbsTYv11*Yv33 -       & 
&  5*AbsTYv22*Yv33 - 40*AbsTYv33*Yv33 - 5*AbsYe33*me032*Yv33 - 5*Abslam*mHd2*Yv33 -      & 
&  5*AbsYe33*mHd2*Yv33 - 10*Abslam*mHu2*Yv33 - 5*AbsYe33*mHu2*Yv33 - 10*AbsYv11*mHu2*Yv33 -& 
&  10*AbsYv22*mHu2*Yv33 + 3*g1p2*mHu2*Yv33 + 15*g2p2*mHu2*Yv33 - 5*AbsYv11*ml012*Yv33 -  & 
&  5*AbsYv22*ml022*Yv33 - 5*Abslam*ml032*Yv33 - 10*AbsYe33*ml032*Yv33 - 5*AbsYv11*ml032*Yv33 -& 
&  5*AbsYv22*ml032*Yv33 + 3*g1p2*ml032*Yv33 + 15*g2p2*ml032*Yv33 - 5*Abslam*ms2*Yv33 -   & 
&  5*AbsYv11*mvR012*Yv33 - 5*AbsYv22*mvR022*Yv33 - 5*Abslam*mvR032*Yv33 - 5*AbsYe33*mvR032*Yv33 -& 
&  5*AbsYv11*mvR032*Yv33 - 5*AbsYv22*mvR032*Yv33 + 3*g1p2*mvR032*Yv33 + 15*g2p2*mvR032*Yv33 +& 
&  10*gpp2*mHu2*QHup2*Yv33 + 10*gpp2*ml032*QHup2*Yv33 + 10*gpp2*mvR032*QHup2*Yv33 +      & 
&  10*gpp2*mHu2*Ql3p2*Yv33 + 10*gpp2*ml032*Ql3p2*Yv33 + 10*gpp2*mvR032*Ql3p2*Yv33 -      & 
&  10*gpp2*mHu2*Qv3p2*Yv33 - 10*gpp2*ml032*Qv3p2*Yv33 - 10*gpp2*mvR032*Qv3p2*Yv33 -      & 
&  15*TrCTuTpTu*Yv33 - 15*Trmq2adjYuYu*Yv33 - 15*Trmu2YuadjYu*Yv33 - 30*mHu2*TrYuadjYu*Yv33 -& 
&  15*ml032*TrYuadjYu*Yv33 - 15*mvR032*TrYuadjYu*Yv33 + 3*g1p2*Conjg(M1)*(2*M1*Yv33 -    & 
&  TYv33) + 15*g2p2*Conjg(M2)*(2*M2*Yv33 - TYv33) - 15*TrCTuTpYu*TYv33 - 5*Ye33*Conjg(TYe33)*TYv33 -& 
&  5*Yv11*Conjg(TYv11)*TYv33 - 5*Yv22*Conjg(TYv22)*TYv33 - 5*lam*Conjg(Tlam)*TYv33))/5._dp -& 
&  (4*Conjg(TYv33)*(3*g1p2*M1*Yv33 + 15*g2p2*M2*Yv33 + 10*gpp2*M4*QHup2*Yv33 +           & 
&  10*gpp2*M4*Ql3p2*Yv33 - 10*gpp2*M4*Qv3p2*Yv33 + 15*TradjYuTu*Yv33 + 5*Yv33*Conjg(Yv22)*TYv22 +& 
&  5*Abslam*TYv33 + 5*AbsYv22*TYv33 - 3*g1p2*TYv33 - 15*g2p2*TYv33 - 10*gpp2*QHup2*TYv33 -& 
&  10*gpp2*Ql3p2*TYv33 + 10*gpp2*Qv3p2*TYv33 + 15*TrYuadjYu*TYv33 + 5*Conjg(Ye33)*(Yv33*TYe33 +& 
&  Ye33*TYv33) + 5*Conjg(Yv11)*(Yv33*TYv11 + Yv11*TYv33) + 5*Yv33*Conjg(lam)*Tlam))/5._dp  
betamvR0322 =  betamvR0322+ 8*gp*Qv3*(gp*Qv3*Tr2U1(4,4) + Tr3(4))

 
DmvR032 = oo16pi2*( betamvR0321 + oo16pi2 * betamvR0322 ) 

 
Else 
DmvR032 = oo16pi2* betamvR0321 
End If 
 
 
!-------------------- 
! ms2 
!-------------------- 
 
betams21  = 4._dp*(AbsTlam) + 4*Abslam*(mHd2 + mHu2 + ms2) - 8*AbsM4*gpp2*Qsp2 +      & 
&  2*gp*Qs*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betams22 = -16*Clamp2*lamp2*(mHd2 + mHu2 + ms2) + 8*Conjg(M4)*(3*gpp4*M4*Qsp2*(9._dp*(Qdp2) +    & 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + 3._dp*(Qsp2) + 9._dp*(Qup2) +         & 
&  Qv1p2 + Qv2p2 + Qv3p2) + gpp2*(QHdp2 + QHup2 - Qsp2)*Conjg(lam)*(2*M4*lam -           & 
&  Tlam)) + Conjg(lam)*(-32*AbsTlam*lam - 4*AbsTYe11*lam - 4*AbsTYe22*lam -              & 
&  4*AbsTYe33*lam - 4*AbsTYv11*lam - 4*AbsTYv22*lam - 4*AbsTYv33*lam - 4*AbsYe11*me012*lam -& 
&  4*AbsYe22*me022*lam - 4*AbsYe33*me032*lam - 8*AbsYe11*mHd2*lam - 8*AbsYe22*mHd2*lam - & 
&  8*AbsYe33*mHd2*lam - 4*AbsYv11*mHd2*lam - 4*AbsYv22*mHd2*lam - 4*AbsYv33*mHd2*lam +   & 
&  (12*g1p2*mHd2*lam)/5._dp + 12*g2p2*mHd2*lam - 4*AbsYe11*mHu2*lam - 4*AbsYe22*mHu2*lam -& 
&  4*AbsYe33*mHu2*lam - 8*AbsYv11*mHu2*lam - 8*AbsYv22*mHu2*lam - 8*AbsYv33*mHu2*lam +   & 
&  (12*g1p2*mHu2*lam)/5._dp + 12*g2p2*mHu2*lam - 4*AbsYe11*ml012*lam - 4*AbsYv11*ml012*lam -& 
&  4*AbsYe22*ml022*lam - 4*AbsYv22*ml022*lam - 4*AbsYe33*ml032*lam - 4*AbsYv33*ml032*lam -& 
&  4*AbsYe11*ms2*lam - 4*AbsYe22*ms2*lam - 4*AbsYe33*ms2*lam - 4*AbsYv11*ms2*lam -       & 
&  4*AbsYv22*ms2*lam - 4*AbsYv33*ms2*lam + (12*g1p2*ms2*lam)/5._dp + 12*g2p2*ms2*lam -   & 
&  4*AbsYv11*mvR012*lam - 4*AbsYv22*mvR022*lam - 4*AbsYv33*mvR032*lam + 8*gpp2*mHd2*QHdp2*lam +& 
&  8*gpp2*mHu2*QHdp2*lam + 8*gpp2*ms2*QHdp2*lam + 8*gpp2*mHd2*QHup2*lam + 8*gpp2*mHu2*QHup2*lam +& 
&  8*gpp2*ms2*QHup2*lam - 8*gpp2*mHd2*Qsp2*lam - 8*gpp2*mHu2*Qsp2*lam - 8*gpp2*ms2*Qsp2*lam -& 
&  12*TrCTdTpTd*lam - 12*TrCTuTpTu*lam - 12*Trmd2YdadjYd*lam - 12*Trmq2adjYdYd*lam -     & 
&  12*Trmq2adjYuYu*lam - 12*Trmu2YuadjYu*lam - 24*mHd2*TrYdadjYd*lam - 12*mHu2*TrYdadjYd*lam -& 
&  12*ms2*TrYdadjYd*lam - 12*mHd2*TrYuadjYu*lam - 24*mHu2*TrYuadjYu*lam - 12*ms2*TrYuadjYu*lam +& 
&  (12*g1p2*Conjg(M1)*(2*M1*lam - Tlam))/5._dp + 12*g2p2*Conjg(M2)*(2*M2*lam -           & 
&  Tlam) - 12*TrCTdTpYd*Tlam - 12*TrCTuTpYu*Tlam - 4*Ye11*Conjg(TYe11)*Tlam -            & 
&  4*Ye22*Conjg(TYe22)*Tlam - 4*Ye33*Conjg(TYe33)*Tlam - 4*Yv11*Conjg(TYv11)*Tlam -      & 
&  4*Yv22*Conjg(TYv22)*Tlam - 4*Yv33*Conjg(TYv33)*Tlam) - (4*Conjg(Tlam)*(3*g1p2*M1*lam +& 
&  15*g2p2*M2*lam + 10*gpp2*M4*QHdp2*lam + 10*gpp2*M4*QHup2*lam - 10*gpp2*M4*Qsp2*lam +  & 
&  15*TradjYdTd*lam + 15*TradjYuTu*lam + 5*lam*Conjg(Ye33)*TYe33 + 5*lam*Conjg(Yv11)*TYv11 +& 
&  5*lam*Conjg(Yv22)*TYv22 + 5*lam*Conjg(Yv33)*TYv33 + 5*AbsYe33*Tlam + 5*AbsYv11*Tlam + & 
&  5*AbsYv22*Tlam + 5*AbsYv33*Tlam - 3*g1p2*Tlam - 15*g2p2*Tlam - 10*gpp2*QHdp2*Tlam -   & 
&  10*gpp2*QHup2*Tlam + 10*gpp2*Qsp2*Tlam + 15*TrYdadjYd*Tlam + 15*TrYuadjYu*Tlam +      & 
&  5*Conjg(Ye11)*(lam*TYe11 + Ye11*Tlam) + 5*Conjg(Ye22)*(lam*TYe22 + Ye22*Tlam)))/5._dp  
betams22 =  betams22+ 8*gp*Qs*(gp*Qs*Tr2U1(4,4) + Tr3(4))

 
Dms2 = oo16pi2*( betams21 + oo16pi2 * betams22 ) 

 
Else 
Dms2 = oo16pi2* betams21 
End If 
 
 
!-------------------- 
! M1 
!-------------------- 
 
betaM11  = (66*g1p2*M1)/5._dp

 
 
If (TwoLoopRGE) Then 
betaM12 = (2*g1p2*(-30*Abslam*M1 - 90*AbsYe33*M1 - 30*AbsYv11*M1 - 30*AbsYv22*M1 -              & 
&  30*AbsYv33*M1 + 398*g1p2*M1 + 135*g2p2*M1 + 440*g3p2*M1 + 440*g3p2*M3 +               & 
&  135*g2p2*M2 + 60*gpp2*M1*Qdp2 + 60*gpp2*M4*Qdp2 + 60*gpp2*M1*Qe1p2 + 60*gpp2*M4*Qe1p2 +& 
&  60*gpp2*M1*Qe2p2 + 60*gpp2*M4*Qe2p2 + 60*gpp2*M1*Qe3p2 + 60*gpp2*M4*Qe3p2 +           & 
&  30*gpp2*M1*QHdp2 + 30*gpp2*M4*QHdp2 + 30*gpp2*M1*QHup2 + 30*gpp2*M4*QHup2 +           & 
&  30*gpp2*M1*Ql1p2 + 30*gpp2*M4*Ql1p2 + 30*gpp2*M1*Ql2p2 + 30*gpp2*M4*Ql2p2 +           & 
&  30*gpp2*M1*Ql3p2 + 30*gpp2*M4*Ql3p2 + 30*gpp2*M1*Qqp2 + 30*gpp2*M4*Qqp2 +             & 
&  240*gpp2*M1*Qup2 + 240*gpp2*M4*Qup2 + 70._dp*(TradjYdTd) + 130._dp*(TradjYuTu) -      & 
&  70*M1*TrYdadjYd - 130*M1*TrYuadjYu - 90*Conjg(Ye11)*(M1*Ye11 - TYe11) -               & 
&  90*Conjg(Ye22)*(M1*Ye22 - TYe22) + 90*Conjg(Ye33)*TYe33 + 30*Conjg(Yv11)*TYv11 +      & 
&  30*Conjg(Yv22)*TYv22 + 30*Conjg(Yv33)*TYv33 + 30*Conjg(lam)*Tlam))/25._dp

 
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
betaM22 = (2*g2p2*(9*g1p2*M1 + 120*g3p2*M3 - 10*Abslam*M2 - 10*AbsYe33*M2 - 10*AbsYv11*M2 -     & 
&  10*AbsYv22*M2 - 10*AbsYv33*M2 + 9*g1p2*M2 + 250*g2p2*M2 + 120*g3p2*M2 +               & 
&  10*gpp2*M4*QHdp2 + 10*gpp2*M2*QHdp2 + 10*gpp2*M4*QHup2 + 10*gpp2*M2*QHup2 +           & 
&  10*gpp2*M4*Ql1p2 + 10*gpp2*M2*Ql1p2 + 10*gpp2*M4*Ql2p2 + 10*gpp2*M2*Ql2p2 +           & 
&  10*gpp2*M4*Ql3p2 + 10*gpp2*M2*Ql3p2 + 90*gpp2*M4*Qqp2 + 90*gpp2*M2*Qqp2 +             & 
&  30._dp*(TradjYdTd) + 30._dp*(TradjYuTu) - 30*M2*TrYdadjYd - 30*M2*TrYuadjYu -         & 
&  10*Conjg(Ye11)*(M2*Ye11 - TYe11) - 10*Conjg(Ye22)*(M2*Ye22 - TYe22) + 10*Conjg(Ye33)*TYe33 +& 
&  10*Conjg(Yv11)*TYv11 + 10*Conjg(Yv22)*TYv22 + 10*Conjg(Yv33)*TYv33 + 10*Conjg(lam)*Tlam))/5._dp

 
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
 
betaM41  = 2*gpp2*M4*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2)            & 
&  + 2._dp*(QHup2) + 2._dp*(Ql1p2) + 2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2)       & 
&  + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2)

 
 
If (TwoLoopRGE) Then 
betaM42 = (4*gpp2*(6*g1p2*M1*Qdp2 + 120*g3p2*M3*Qdp2 + 6*g1p2*M4*Qdp2 + 120*g3p2*M4*Qdp2 +      & 
&  180*gpp2*M4*Qdp4 + 6*g1p2*M1*Qe1p2 + 6*g1p2*M4*Qe1p2 + 20*gpp2*M4*Qe1p4 +             & 
&  6*g1p2*M1*Qe2p2 + 6*g1p2*M4*Qe2p2 + 20*gpp2*M4*Qe2p4 + 6*g1p2*M1*Qe3p2 -              & 
&  10*AbsYe33*M4*Qe3p2 + 6*g1p2*M4*Qe3p2 + 20*gpp2*M4*Qe3p4 + 3*g1p2*M1*QHdp2 -          & 
&  10*Abslam*M4*QHdp2 - 10*AbsYe33*M4*QHdp2 + 3*g1p2*M4*QHdp2 + 15*g2p2*M4*QHdp2 +       & 
&  15*g2p2*M2*QHdp2 + 40*gpp2*M4*QHdp4 + 3*g1p2*M1*QHup2 - 10*Abslam*M4*QHup2 -          & 
&  10*AbsYv11*M4*QHup2 - 10*AbsYv22*M4*QHup2 - 10*AbsYv33*M4*QHup2 + 3*g1p2*M4*QHup2 +   & 
&  15*g2p2*M4*QHup2 + 15*g2p2*M2*QHup2 + 40*gpp2*M4*QHup4 + 3*g1p2*M1*Ql1p2 -            & 
&  10*AbsYv11*M4*Ql1p2 + 3*g1p2*M4*Ql1p2 + 15*g2p2*M4*Ql1p2 + 15*g2p2*M2*Ql1p2 +         & 
&  40*gpp2*M4*Ql1p4 + 3*g1p2*M1*Ql2p2 - 10*AbsYv22*M4*Ql2p2 + 3*g1p2*M4*Ql2p2 +          & 
&  15*g2p2*M4*Ql2p2 + 15*g2p2*M2*Ql2p2 + 40*gpp2*M4*Ql2p4 + 3*g1p2*M1*Ql3p2 -            & 
&  10*AbsYe33*M4*Ql3p2 - 10*AbsYv33*M4*Ql3p2 + 3*g1p2*M4*Ql3p2 + 15*g2p2*M4*Ql3p2 +      & 
&  15*g2p2*M2*Ql3p2 + 40*gpp2*M4*Ql3p4 + 3*g1p2*M1*Qqp2 + 240*g3p2*M3*Qqp2 +             & 
&  3*g1p2*M4*Qqp2 + 135*g2p2*M4*Qqp2 + 240*g3p2*M4*Qqp2 + 135*g2p2*M2*Qqp2 +             & 
&  360*gpp2*M4*Qqp4 - 10*Abslam*M4*Qsp2 + 20*gpp2*M4*Qsp4 + 24*g1p2*M1*Qup2 +            & 
&  120*g3p2*M3*Qup2 + 24*g1p2*M4*Qup2 + 120*g3p2*M4*Qup2 + 180*gpp2*M4*Qup4 -            & 
&  10*AbsYv11*M4*Qv1p2 + 20*gpp2*M4*Qv1p4 - 10*AbsYv22*M4*Qv2p2 + 20*gpp2*M4*Qv2p4 -     & 
&  10*AbsYv33*M4*Qv3p2 + 20*gpp2*M4*Qv3p4 + 30*Qdp2*TradjYdTd + 30*QHdp2*TradjYdTd +     & 
&  30*Qqp2*TradjYdTd + 30*QHup2*TradjYuTu + 30*Qqp2*TradjYuTu + 30*Qup2*TradjYuTu -      & 
&  30*M4*Qdp2*TrYdadjYd - 30*M4*QHdp2*TrYdadjYd - 30*M4*Qqp2*TrYdadjYd - 30*M4*QHup2*TrYuadjYu -& 
&  30*M4*Qqp2*TrYuadjYu - 30*M4*Qup2*TrYuadjYu - 10*(Qe1p2 + QHdp2 + Ql1p2)*Conjg(Ye11)*(M4*Ye11 -& 
&  TYe11) - 10*(Qe2p2 + QHdp2 + Ql2p2)*Conjg(Ye22)*(M4*Ye22 - TYe22) + 10*Qe3p2*Conjg(Ye33)*TYe33 +& 
&  10*QHdp2*Conjg(Ye33)*TYe33 + 10*Ql3p2*Conjg(Ye33)*TYe33 + 10*QHup2*Conjg(Yv11)*TYv11 +& 
&  10*Ql1p2*Conjg(Yv11)*TYv11 + 10*Qv1p2*Conjg(Yv11)*TYv11 + 10*QHup2*Conjg(Yv22)*TYv22 +& 
&  10*Ql2p2*Conjg(Yv22)*TYv22 + 10*Qv2p2*Conjg(Yv22)*TYv22 + 10*QHup2*Conjg(Yv33)*TYv33 +& 
&  10*Ql3p2*Conjg(Yv33)*TYv33 + 10*Qv3p2*Conjg(Yv33)*TYv33 + 10*QHdp2*Conjg(lam)*Tlam +  & 
&  10*QHup2*Conjg(lam)*Tlam + 10*Qsp2*Conjg(lam)*Tlam))/5._dp

 
DM4 = oo16pi2*( betaM41 + oo16pi2 * betaM42 ) 

 
Else 
DM4 = oo16pi2* betaM41 
End If 
 
 
Call Chop(DM4) 

!-------------------- 
! Tep 
!-------------------- 
 
betaTep1  = Abslam*Tep + 5*AbsYe11*Tep + 4*AbsYv11*Tep + AbsYv22*Tep + AbsYv33*Tep -  & 
&  (6*g1p2*Tep)/5._dp - 2*gpp2*Qe1p2*Tep + 2*gpp2*QHup2*Tep - 2*gpp2*Ql1p2*Tep +         & 
&  3*Tep*TrYuadjYu + 2*Tmup*Ye11*Conjg(Ye22)

 
 
If (TwoLoopRGE) Then 
betaTep2 = 0

 
DTep = oo16pi2*( betaTep1 + oo16pi2 * betaTep2 ) 

 
Else 
DTep = oo16pi2* betaTep1 
End If 
 
 
Call Chop(DTep) 

!-------------------- 
! Tmup 
!-------------------- 
 
betaTmup1  = Abslam*Tmup + 5*AbsYe22*Tmup + AbsYv11*Tmup + 4*AbsYv22*Tmup +           & 
&  AbsYv33*Tmup - (6*g1p2*Tmup)/5._dp - 2*gpp2*Qe2p2*Tmup + 2*gpp2*QHup2*Tmup -          & 
&  2*gpp2*Ql2p2*Tmup + 3*Tmup*TrYuadjYu + 2*Tep*Ye22*Conjg(Ye11)

 
 
If (TwoLoopRGE) Then 
betaTmup2 = 0

 
DTmup = oo16pi2*( betaTmup1 + oo16pi2 * betaTmup2 ) 

 
Else 
DTmup = oo16pi2* betaTmup1 
End If 
 
 
Call Chop(DTmup) 

Call ParametersToG182(Dg1,Dg2,Dg3,Dgp,DYd,DYe11,DYe22,DYe33,Dlam,DYv11,               & 
& DYv22,DYv33,DYu,DTd,DTYe11,DTYe22,DTYe33,DTlam,DTYv11,DTYv22,DTYv33,DTu,               & 
& Dmq2,Dml012,Dml022,Dml032,DmHd2,DmHu2,Dmd2,Dmu2,Dme012,Dme022,Dme032,DmvR012,          & 
& DmvR022,DmvR032,Dms2,DM1,DM2,DM3,DM4,DTep,DTmup,f)

Iname = Iname - 1 
 
End Subroutine rge182  

Subroutine GToParameters185(g,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,            & 
& Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,          & 
& mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,              & 
& Tep,Tmup,vd,vu,vS)

Implicit None 
Real(dp), Intent(in) :: g(185) 
Real(dp),Intent(out) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2,vd,vu,vS

Complex(dp),Intent(out) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters185' 
 
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
 
Ye11= Cmplx(g(23),g(24),dp) 
Ye22= Cmplx(g(25),g(26),dp) 
Ye33= Cmplx(g(27),g(28),dp) 
lam= Cmplx(g(29),g(30),dp) 
Yv11= Cmplx(g(31),g(32),dp) 
Yv22= Cmplx(g(33),g(34),dp) 
Yv33= Cmplx(g(35),g(36),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+37), g(SumI+38), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Td(i1,i2) = Cmplx( g(SumI+55), g(SumI+56), dp) 
End Do 
 End Do 
 
TYe11= Cmplx(g(73),g(74),dp) 
TYe22= Cmplx(g(75),g(76),dp) 
TYe33= Cmplx(g(77),g(78),dp) 
Tlam= Cmplx(g(79),g(80),dp) 
TYv11= Cmplx(g(81),g(82),dp) 
TYv22= Cmplx(g(83),g(84),dp) 
TYv33= Cmplx(g(85),g(86),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Tu(i1,i2) = Cmplx( g(SumI+87), g(SumI+88), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
mq2(i1,i2) = Cmplx( g(SumI+105), g(SumI+106), dp) 
End Do 
 End Do 
 
ml012= g(123) 
ml022= g(124) 
ml032= g(125) 
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
 
me012= g(164) 
me022= g(165) 
me032= g(166) 
mvR012= g(167) 
mvR022= g(168) 
mvR032= g(169) 
ms2= g(170) 
M1= Cmplx(g(171),g(172),dp) 
M2= Cmplx(g(173),g(174),dp) 
M3= Cmplx(g(175),g(176),dp) 
M4= Cmplx(g(177),g(178),dp) 
Tep= Cmplx(g(179),g(180),dp) 
Tmup= Cmplx(g(181),g(182),dp) 
vd= g(183) 
vu= g(184) 
vS= g(185) 
Do i1=1,185 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters185

Subroutine ParametersToG185(g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,              & 
& Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,          & 
& mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,              & 
& Tep,Tmup,vd,vu,vS,g)

Implicit None 
Real(dp), Intent(out) :: g(185) 
Real(dp), Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2,vd,vu,vS

Complex(dp), Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG185' 
 
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

g(23) = Real(Ye11,dp)  
g(24) = Aimag(Ye11)  
g(25) = Real(Ye22,dp)  
g(26) = Aimag(Ye22)  
g(27) = Real(Ye33,dp)  
g(28) = Aimag(Ye33)  
g(29) = Real(lam,dp)  
g(30) = Aimag(lam)  
g(31) = Real(Yv11,dp)  
g(32) = Aimag(Yv11)  
g(33) = Real(Yv22,dp)  
g(34) = Aimag(Yv22)  
g(35) = Real(Yv33,dp)  
g(36) = Aimag(Yv33)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+37) = Real(Yu(i1,i2), dp) 
g(SumI+38) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+55) = Real(Td(i1,i2), dp) 
g(SumI+56) = Aimag(Td(i1,i2)) 
End Do 
End Do 

g(73) = Real(TYe11,dp)  
g(74) = Aimag(TYe11)  
g(75) = Real(TYe22,dp)  
g(76) = Aimag(TYe22)  
g(77) = Real(TYe33,dp)  
g(78) = Aimag(TYe33)  
g(79) = Real(Tlam,dp)  
g(80) = Aimag(Tlam)  
g(81) = Real(TYv11,dp)  
g(82) = Aimag(TYv11)  
g(83) = Real(TYv22,dp)  
g(84) = Aimag(TYv22)  
g(85) = Real(TYv33,dp)  
g(86) = Aimag(TYv33)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+87) = Real(Tu(i1,i2), dp) 
g(SumI+88) = Aimag(Tu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+105) = Real(mq2(i1,i2), dp) 
g(SumI+106) = Aimag(mq2(i1,i2)) 
End Do 
End Do 

g(123) = ml012  
g(124) = ml022  
g(125) = ml032  
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

g(164) = me012  
g(165) = me022  
g(166) = me032  
g(167) = mvR012  
g(168) = mvR022  
g(169) = mvR032  
g(170) = ms2  
g(171) = Real(M1,dp)  
g(172) = Aimag(M1)  
g(173) = Real(M2,dp)  
g(174) = Aimag(M2)  
g(175) = Real(M3,dp)  
g(176) = Aimag(M3)  
g(177) = Real(M4,dp)  
g(178) = Aimag(M4)  
g(179) = Real(Tep,dp)  
g(180) = Aimag(Tep)  
g(181) = Real(Tmup,dp)  
g(182) = Aimag(Tmup)  
g(183) = vd  
g(184) = vu  
g(185) = vS  
Iname = Iname - 1 
 
End Subroutine ParametersToG185

Subroutine rge185(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,         & 
& Dg3,gp,betagp1,betagp2,Dgp,ml012,betaml0121,betaml0122,Dml012,ml022,betaml0221,        & 
& betaml0222,Dml022,ml032,betaml0321,betaml0322,Dml032,mHd2,betamHd21,betamHd22,         & 
& DmHd2,mHu2,betamHu21,betamHu22,DmHu2,me012,betame0121,betame0122,Dme012,               & 
& me022,betame0221,betame0222,Dme022,me032,betame0321,betame0322,Dme032,mvR012,          & 
& betamvR0121,betamvR0122,DmvR012,mvR022,betamvR0221,betamvR0222,DmvR022,mvR032,         & 
& betamvR0321,betamvR0322,DmvR032,ms2,betams21,betams22,Dms2,vd,betavd1,betavd2,         & 
& Dvd,vu,betavu1,betavu2,Dvu,vS,betavS1,betavS2,DvS
Complex(dp) :: Yd(3,3),betaYd1(3,3),betaYd2(3,3),DYd(3,3),adjYd(3,3),Ye11,            & 
& betaYe111,betaYe112,DYe11,Ye22,betaYe221,betaYe222,DYe22,Ye33,betaYe331,               & 
& betaYe332,DYe33,lam,betalam1,betalam2,Dlam,Yv11,betaYv111,betaYv112,DYv11,             & 
& Yv22,betaYv221,betaYv222,DYv22,Yv33,betaYv331,betaYv332,DYv33,Yu(3,3),betaYu1(3,3)     & 
& ,betaYu2(3,3),DYu(3,3),adjYu(3,3),Td(3,3),betaTd1(3,3),betaTd2(3,3),DTd(3,3)           & 
& ,adjTd(3,3),TYe11,betaTYe111,betaTYe112,DTYe11,TYe22,betaTYe221,betaTYe222,            & 
& DTYe22,TYe33,betaTYe331,betaTYe332,DTYe33,Tlam,betaTlam1,betaTlam2,DTlam,              & 
& TYv11,betaTYv111,betaTYv112,DTYv11,TYv22,betaTYv221,betaTYv222,DTYv22,TYv33,           & 
& betaTYv331,betaTYv332,DTYv33,Tu(3,3),betaTu1(3,3),betaTu2(3,3),DTu(3,3),               & 
& adjTu(3,3),mq2(3,3),betamq21(3,3),betamq22(3,3),Dmq2(3,3),md2(3,3),betamd21(3,3)       & 
& ,betamd22(3,3),Dmd2(3,3),mu2(3,3),betamu21(3,3),betamu22(3,3),Dmu2(3,3),               & 
& M1,betaM11,betaM12,DM1,M2,betaM21,betaM22,DM2,M3,betaM31,betaM32,DM3,M4,               & 
& betaM41,betaM42,DM4,Tep,betaTep1,betaTep2,DTep,Tmup,betaTmup1,betaTmup2,DTmup
Real(dp) :: Tr1(4),Tr2(4),Tr3(4) 
Real(dp) :: Tr2U1(4,4) 
Real(dp) :: AbsYe11,AbsYe22,AbsYe33,Abslam,AbsYv11,AbsYv22,AbsYv33,AbsTYe11,          & 
& AbsTYe22,AbsTYe33,AbsTlam,AbsTYv11,AbsTYv22,AbsTYv33,AbsM1,AbsM2,AbsM3,AbsM4,          & 
& AbsTep,AbsTmup
Complex(dp) :: md2Yd(3,3),mq2adjYd(3,3),mq2adjYu(3,3),mu2Yu(3,3),Ydmq2(3,3),YdadjYd(3,3),            & 
& Yumq2(3,3),YuadjYu(3,3),adjYdmd2(3,3),adjYdYd(3,3),adjYdTd(3,3),adjYumu2(3,3),         & 
& adjYuYu(3,3),adjYuTu(3,3),adjTdTd(3,3),adjTuTu(3,3),CTdTpTd(3,3),CTuTpTu(3,3),         & 
& TdadjTd(3,3),TuadjTu(3,3),md2YdadjYd(3,3),mq2adjYdYd(3,3),mq2adjYuYu(3,3),             & 
& mu2YuadjYu(3,3),Ydmq2adjYd(3,3),YdadjYdmd2(3,3),YdadjYdYd(3,3),YdadjYdTd(3,3),         & 
& YdadjYuYu(3,3),YdadjYuTu(3,3),Yumq2adjYu(3,3),YuadjYdYd(3,3),YuadjYdTd(3,3),           & 
& YuadjYumu2(3,3),YuadjYuYu(3,3),YuadjYuTu(3,3),adjYdmd2Yd(3,3),adjYdYdmq2(3,3),         & 
& adjYumu2Yu(3,3),adjYuYumq2(3,3),TdadjYdYd(3,3),TdadjYuYu(3,3),TuadjYdYd(3,3),          & 
& TuadjYuYu(3,3)

Complex(dp) :: YdadjYu(3,3),YdadjTd(3,3),YdadjTu(3,3),YuadjYd(3,3),YuadjTd(3,3),YuadjTu(3,3),        & 
& adjYdCmd2(3,3),adjYuCmu2(3,3),adjTdYd(3,3),adjTuYu(3,3),Cmq2adjYd(3,3),Cmq2adjYu(3,3), & 
& CTdTpYd(3,3),CTuTpYu(3,3),TdadjYd(3,3),TdadjYu(3,3),TdadjTu(3,3),TuadjYd(3,3),         & 
& TuadjYu(3,3),TuadjTd(3,3),md2YdadjYu(3,3),mu2YuadjYd(3,3),Ydmq2adjYu(3,3),             & 
& YdadjYdCmd2(3,3),YdadjYumu2(3,3),YdadjTdTd(3,3),YdCmq2adjYd(3,3),Yumq2adjYd(3,3),      & 
& YuadjYdmd2(3,3),YuadjYuCmu2(3,3),YuadjTuTu(3,3),YuCmq2adjYu(3,3),adjYdYdadjYd(3,3),    & 
& adjYdYdadjYu(3,3),adjYdYdadjTd(3,3),adjYdYdadjTu(3,3),adjYdTdadjYd(3,3),               & 
& adjYdTdadjYu(3,3),adjYdTdadjTd(3,3),adjYdTdadjTu(3,3),adjYuYuadjYd(3,3),               & 
& adjYuYuadjYu(3,3),adjYuYuadjTd(3,3),adjYuYuadjTu(3,3),adjYuTuadjYd(3,3),               & 
& adjYuTuadjYu(3,3),adjYuTuadjTd(3,3),adjYuTuadjTu(3,3),adjTdYdadjYd(3,3),               & 
& adjTdYdadjYu(3,3),adjTdTdadjYd(3,3),adjTdTdadjYu(3,3),adjTuYuadjYd(3,3),               & 
& adjTuYuadjYu(3,3),adjTuTuadjYd(3,3),adjTuTuadjYu(3,3),TdadjTdYd(3,3),TuadjTuYu(3,3),   & 
& md2YdadjYdYd(3,3),mq2adjYdYdadjYd(3,3),mq2adjYdYdadjYu(3,3),mq2adjYuYuadjYd(3,3),      & 
& mq2adjYuYuadjYu(3,3),mu2YuadjYuYu(3,3),Ydmq2adjYdYd(3,3),YdadjYdmd2Yd(3,3),            & 
& YdadjYdYdmq2(3,3),YdadjYdYdadjYd(3,3),YdadjYdTdadjYd(3,3),YdadjYdTdadjTd(3,3),         & 
& YdadjYuYuadjYd(3,3),YdadjYuTuadjYd(3,3),YdadjYuTuadjTd(3,3),YdadjTdTdadjYd(3,3),       & 
& YdadjTuTuadjYd(3,3),Yumq2adjYuYu(3,3),YuadjYdYdadjYu(3,3),YuadjYdTdadjYu(3,3),         & 
& YuadjYdTdadjTu(3,3),YuadjYumu2Yu(3,3),YuadjYuYumq2(3,3),YuadjYuYuadjYu(3,3),           & 
& YuadjYuTuadjYu(3,3),YuadjYuTuadjTu(3,3),YuadjTdTdadjYu(3,3),YuadjTuTuadjYu(3,3),       & 
& adjYdmd2YdadjYd(3,3),adjYdmd2YdadjYu(3,3),adjYdYdmq2adjYd(3,3),adjYdYdmq2adjYu(3,3),   & 
& adjYdYdadjYdmd2(3,3),adjYdYdadjYdYd(3,3),adjYdYdadjYdTd(3,3),adjYdYdadjYumu2(3,3),     & 
& adjYdYdadjYuYu(3,3),adjYdYdadjYuTu(3,3),adjYdYdadjTdTd(3,3),adjYdTdadjYdYd(3,3),       & 
& adjYdTdadjYuYu(3,3),adjYdTdadjTdYd(3,3),adjYumu2YuadjYd(3,3),adjYumu2YuadjYu(3,3),     & 
& adjYuYumq2adjYd(3,3),adjYuYumq2adjYu(3,3),adjYuYuadjYdmd2(3,3),adjYuYuadjYdYd(3,3),    & 
& adjYuYuadjYdTd(3,3),adjYuYuadjYumu2(3,3),adjYuYuadjYuYu(3,3),adjYuYuadjYuTu(3,3),      & 
& adjYuYuadjTuTu(3,3),adjYuTuadjYdYd(3,3),adjYuTuadjYuYu(3,3),adjYuTuadjTuYu(3,3),       & 
& adjTdYdadjYdTd(3,3),adjTdTdadjYdYd(3,3),adjTuYuadjYuTu(3,3),adjTuTuadjYuYu(3,3),       & 
& TdadjYdYdadjTd(3,3),TdadjYuYuadjTd(3,3),TdadjTdYdadjYd(3,3),TdadjTuYuadjYd(3,3),       & 
& TuadjYdYdadjTu(3,3),TuadjYuYuadjTu(3,3),TuadjTdYdadjYu(3,3),TuadjTuYuadjYu(3,3),       & 
& md2YdadjYdYdadjYd(3,3),md2YdadjYuYuadjYd(3,3),mq2adjYdYdadjYdYd(3,3),mq2adjYdYdadjYuYu(3,3),& 
& mq2adjYuYuadjYdYd(3,3),mq2adjYuYuadjYuYu(3,3),mu2YuadjYdYdadjYu(3,3),mu2YuadjYuYuadjYu(3,3),& 
& Ydmq2adjYdYdadjYd(3,3),Ydmq2adjYuYuadjYd(3,3),YdadjYdmd2YdadjYd(3,3),YdadjYdYdmq2adjYd(3,3),& 
& YdadjYdYdadjYdmd2(3,3),YdadjYdYdadjYdYd(3,3),YdadjYdYdadjYdTd(3,3),YdadjYdTdadjYdYd(3,3),& 
& YdadjYumu2YuadjYd(3,3),YdadjYuYumq2adjYd(3,3),YdadjYuYuadjYdmd2(3,3),YdadjYuYuadjYdYd(3,3),& 
& YdadjYuYuadjYdTd(3,3),YdadjYuYuadjYuYu(3,3),YdadjYuYuadjYuTu(3,3),YdadjYuTuadjYdYd(3,3),& 
& YdadjYuTuadjYuYu(3,3),Yumq2adjYdYdadjYu(3,3),Yumq2adjYuYuadjYu(3,3),YuadjYdmd2YdadjYu(3,3),& 
& YuadjYdYdmq2adjYu(3,3),YuadjYdYdadjYdYd(3,3),YuadjYdYdadjYdTd(3,3),YuadjYdYdadjYumu2(3,3)

Complex(dp) :: YuadjYdYdadjYuYu(3,3),YuadjYdYdadjYuTu(3,3),YuadjYdTdadjYdYd(3,3),YuadjYdTdadjYuYu(3,3),& 
& YuadjYumu2YuadjYu(3,3),YuadjYuYumq2adjYu(3,3),YuadjYuYuadjYumu2(3,3),YuadjYuYuadjYuYu(3,3),& 
& YuadjYuYuadjYuTu(3,3),YuadjYuTuadjYuYu(3,3),adjYdmd2YdadjYdYd(3,3),adjYdYdmq2adjYdYd(3,3),& 
& adjYdYdadjYdmd2Yd(3,3),adjYdYdadjYdYdmq2(3,3),adjYumu2YuadjYuYu(3,3),adjYuYumq2adjYuYu(3,3),& 
& adjYuYuadjYumu2Yu(3,3),adjYuYuadjYuYumq2(3,3),TdadjYdYdadjYdYd(3,3),TdadjYuYuadjYdYd(3,3),& 
& TdadjYuYuadjYuYu(3,3),TuadjYdYdadjYdYd(3,3),TuadjYdYdadjYuYu(3,3),TuadjYuYuadjYuYu(3,3)

Complex(dp) :: Trmd2,Trmq2,Trmu2,TrYdadjYd,TrYuadjYu,TradjYdTd,TradjYuTu,TrCTdTpTd,TrCTuTpTu,        & 
& Trmd2YdadjYd,Trmq2adjYdYd,Trmq2adjYuYu,Trmu2YuadjYu

Complex(dp) :: TrCTdTpYd,TrCTuTpYu,TrYdadjYdCmd2,TrYdCmq2adjYd,TrYuadjYuCmu2,TrYuCmq2adjYu,          & 
& TrYdadjYdYdadjYd,TrYdadjYdTdadjYd,TrYdadjYdTdadjTd,TrYdadjYuYuadjYd,TrYdadjYuTuadjYd,  & 
& TrYdadjYuTuadjTd,TrYdadjTdTdadjYd,TrYdadjTuTuadjYd,TrYuadjYdTdadjYu,TrYuadjYdTdadjTu,  & 
& TrYuadjYuYuadjYu,TrYuadjYuTuadjYu,TrYuadjYuTuadjTu,TrYuadjTdTdadjYu,TrYuadjTuTuadjYu,  & 
& Trmd2YdadjYdYdadjYd,Trmd2YdadjYuYuadjYd,Trmq2adjYdYdadjYdYd,Trmq2adjYdYdadjYuYu,       & 
& Trmq2adjYuYuadjYdYd,Trmq2adjYuYuadjYuYu,Trmu2YuadjYdYdadjYu,Trmu2YuadjYuYuadjYu

Real(dp) :: g1p2,g1p3,g2p2,g2p3,g3p2,g3p3,gpp2,gpp3,Qdp2,Qe1p2,Qe2p2,Qe3p2,QHdp2,QHup2,           & 
& Ql1p2,Ql2p2,Ql3p2,Qqp2,Qsp2,Qup2,Qv1p2,Qv2p2,Qv3p2

Complex(dp) :: sqrt3ov5,ooSqrt15,Ye11p2,Ye22p2,Ye33p2,Yv11p2,Yv22p2,Yv33p2,lamp2

Real(dp) :: g1p4,g2p4,g3p4,gpp4,Qdp3,Qdp4,Qe1p3,Qe1p4,Qe2p3,Qe2p4,Qe3p3,Qe3p4,QHdp3,              & 
& QHdp4,QHup3,QHup4,Ql1p3,Ql1p4,Ql2p3,Ql2p4,Ql3p3,Ql3p4,Qqp3,Qqp4,Qsp3,Qsp4,             & 
& Qup3,Qup4,Qv1p3,Qv1p4,Qv2p3,Qv2p4,Qv3p3,Qv3p4

Complex(dp) :: sqrt15,Xip2,Yv11p3,Yv22p3,Yv33p3,lamp3,CYe11p2,CYe22p2,CYe33p2,CYv11p2,               & 
& CYv22p2,CYv33p2,Clamp2

Iname = Iname +1 
NameOfUnit(Iname) = 'rge185' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters185(gy,g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,            & 
& Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,               & 
& mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,              & 
& Tep,Tmup,vd,vu,vS)

AbsYe11 = Conjg(Ye11)*Ye11
AbsYe22 = Conjg(Ye22)*Ye22
AbsYe33 = Conjg(Ye33)*Ye33
Abslam = Conjg(lam)*lam
AbsYv11 = Conjg(Yv11)*Yv11
AbsYv22 = Conjg(Yv22)*Yv22
AbsYv33 = Conjg(Yv33)*Yv33
AbsTYe11 = Conjg(TYe11)*TYe11
AbsTYe22 = Conjg(TYe22)*TYe22
AbsTYe33 = Conjg(TYe33)*TYe33
AbsTlam = Conjg(Tlam)*Tlam
AbsTYv11 = Conjg(TYv11)*TYv11
AbsTYv22 = Conjg(TYv22)*TYv22
AbsTYv33 = Conjg(TYv33)*TYv33
AbsM1 = Conjg(M1)*M1
AbsM2 = Conjg(M2)*M2
AbsM3 = Conjg(M3)*M3
AbsM4 = Conjg(M4)*M4
AbsTep = Conjg(Tep)*Tep
AbsTmup = Conjg(Tmup)*Tmup
Call Adjungate(Yd,adjYd)
Call Adjungate(Yu,adjYu)
Call Adjungate(Td,adjTd)
Call Adjungate(Tu,adjTu)
 md2Yd = Matmul2(md2,Yd,OnlyDiagonal) 
 mq2adjYd = Matmul2(mq2,adjYd,OnlyDiagonal) 
 mq2adjYu = Matmul2(mq2,adjYu,OnlyDiagonal) 
 mu2Yu = Matmul2(mu2,Yu,OnlyDiagonal) 
 Ydmq2 = Matmul2(Yd,mq2,OnlyDiagonal) 
 YdadjYd = Matmul2(Yd,adjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYd(i2,i2) =  Real(YdadjYd(i2,i2),dp) 
 Yumq2 = Matmul2(Yu,mq2,OnlyDiagonal) 
 YuadjYu = Matmul2(Yu,adjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYu(i2,i2) =  Real(YuadjYu(i2,i2),dp) 
 adjYdmd2 = Matmul2(adjYd,md2,OnlyDiagonal) 
 adjYdYd = Matmul2(adjYd,Yd,OnlyDiagonal) 
Forall(i2=1:3)  adjYdYd(i2,i2) =  Real(adjYdYd(i2,i2),dp) 
 adjYdTd = Matmul2(adjYd,Td,OnlyDiagonal) 
 adjYumu2 = Matmul2(adjYu,mu2,OnlyDiagonal) 
 adjYuYu = Matmul2(adjYu,Yu,OnlyDiagonal) 
Forall(i2=1:3)  adjYuYu(i2,i2) =  Real(adjYuYu(i2,i2),dp) 
 adjYuTu = Matmul2(adjYu,Tu,OnlyDiagonal) 
 adjTdTd = Matmul2(adjTd,Td,OnlyDiagonal) 
 adjTuTu = Matmul2(adjTu,Tu,OnlyDiagonal) 
 CTdTpTd = Matmul2(Conjg(Td),Transpose(Td),OnlyDiagonal) 
Forall(i2=1:3)  CTdTpTd(i2,i2) =  Real(CTdTpTd(i2,i2),dp) 
 CTuTpTu = Matmul2(Conjg(Tu),Transpose(Tu),OnlyDiagonal) 
Forall(i2=1:3)  CTuTpTu(i2,i2) =  Real(CTuTpTu(i2,i2),dp) 
 TdadjTd = Matmul2(Td,adjTd,OnlyDiagonal) 
 TuadjTu = Matmul2(Tu,adjTu,OnlyDiagonal) 
 md2YdadjYd = Matmul2(md2,YdadjYd,OnlyDiagonal) 
 mq2adjYdYd = Matmul2(mq2,adjYdYd,OnlyDiagonal) 
 mq2adjYuYu = Matmul2(mq2,adjYuYu,OnlyDiagonal) 
 mu2YuadjYu = Matmul2(mu2,YuadjYu,OnlyDiagonal) 
 Ydmq2adjYd = Matmul2(Yd,mq2adjYd,OnlyDiagonal) 
Forall(i2=1:3)  Ydmq2adjYd(i2,i2) =  Real(Ydmq2adjYd(i2,i2),dp) 
 YdadjYdmd2 = Matmul2(Yd,adjYdmd2,OnlyDiagonal) 
 YdadjYdYd = Matmul2(Yd,adjYdYd,OnlyDiagonal) 
 YdadjYdTd = Matmul2(Yd,adjYdTd,OnlyDiagonal) 
 YdadjYuYu = Matmul2(Yd,adjYuYu,OnlyDiagonal) 
 YdadjYuTu = Matmul2(Yd,adjYuTu,OnlyDiagonal) 
 Yumq2adjYu = Matmul2(Yu,mq2adjYu,OnlyDiagonal) 
Forall(i2=1:3)  Yumq2adjYu(i2,i2) =  Real(Yumq2adjYu(i2,i2),dp) 
 YuadjYdYd = Matmul2(Yu,adjYdYd,OnlyDiagonal) 
 YuadjYdTd = Matmul2(Yu,adjYdTd,OnlyDiagonal) 
 YuadjYumu2 = Matmul2(Yu,adjYumu2,OnlyDiagonal) 
 YuadjYuYu = Matmul2(Yu,adjYuYu,OnlyDiagonal) 
 YuadjYuTu = Matmul2(Yu,adjYuTu,OnlyDiagonal) 
 adjYdmd2Yd = Matmul2(adjYd,md2Yd,OnlyDiagonal) 
Forall(i2=1:3)  adjYdmd2Yd(i2,i2) =  Real(adjYdmd2Yd(i2,i2),dp) 
 adjYdYdmq2 = Matmul2(adjYd,Ydmq2,OnlyDiagonal) 
 adjYumu2Yu = Matmul2(adjYu,mu2Yu,OnlyDiagonal) 
Forall(i2=1:3)  adjYumu2Yu(i2,i2) =  Real(adjYumu2Yu(i2,i2),dp) 
 adjYuYumq2 = Matmul2(adjYu,Yumq2,OnlyDiagonal) 
 TdadjYdYd = Matmul2(Td,adjYdYd,OnlyDiagonal) 
 TdadjYuYu = Matmul2(Td,adjYuYu,OnlyDiagonal) 
 TuadjYdYd = Matmul2(Tu,adjYdYd,OnlyDiagonal) 
 TuadjYuYu = Matmul2(Tu,adjYuYu,OnlyDiagonal) 
 Trmd2 = Real(cTrace(md2),dp) 
 Trmq2 = Real(cTrace(mq2),dp) 
 Trmu2 = Real(cTrace(mu2),dp) 
 TrYdadjYd = Real(cTrace(YdadjYd),dp) 
 TrYuadjYu = Real(cTrace(YuadjYu),dp) 
 TradjYdTd = cTrace(adjYdTd) 
 TradjYuTu = cTrace(adjYuTu) 
 TrCTdTpTd = Real(cTrace(CTdTpTd),dp) 
 TrCTuTpTu = Real(cTrace(CTuTpTu),dp) 
 Trmd2YdadjYd = cTrace(md2YdadjYd) 
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
 Qe1p2 =Qe1**2 
 Qe2p2 =Qe2**2 
 Qe3p2 =Qe3**2 
 QHdp2 =QHd**2 
 QHup2 =QHu**2 
 Ql1p2 =Ql1**2 
 Ql2p2 =Ql2**2 
 Ql3p2 =Ql3**2 
 Qqp2 =Qq**2 
 Qsp2 =Qs**2 
 Qup2 =Qu**2 
 Qv1p2 =Qv1**2 
 Qv2p2 =Qv2**2 
 Qv3p2 =Qv3**2 
 Ye11p2 =Ye11**2 
 Ye22p2 =Ye22**2 
 Ye33p2 =Ye33**2 
 Yv11p2 =Yv11**2 
 Yv22p2 =Yv22**2 
 Yv33p2 =Yv33**2 
 lamp2 =lam**2 
 sqrt15 =sqrt(15._dp) 
 g1p4 =g1**4 
 g2p4 =g2**4 
 g3p4 =g3**4 
 gpp4 =gp**4 
 Qdp3 =Qd**3 
 Qdp4 =Qd**4 
 Qe1p3 =Qe1**3 
 Qe1p4 =Qe1**4 
 Qe2p3 =Qe2**3 
 Qe2p4 =Qe2**4 
 Qe3p3 =Qe3**3 
 Qe3p4 =Qe3**4 
 QHdp3 =QHd**3 
 QHdp4 =QHd**4 
 QHup3 =QHu**3 
 QHup4 =QHu**4 
 Ql1p3 =Ql1**3 
 Ql1p4 =Ql1**4 
 Ql2p3 =Ql2**3 
 Ql2p4 =Ql2**4 
 Ql3p3 =Ql3**3 
 Ql3p4 =Ql3**4 
 Qqp3 =Qq**3 
 Qqp4 =Qq**4 
 Qsp3 =Qs**3 
 Qsp4 =Qs**4 
 Qup3 =Qu**3 
 Qup4 =Qu**4 
 Qv1p3 =Qv1**3 
 Qv1p4 =Qv1**4 
 Qv2p3 =Qv2**3 
 Qv2p4 =Qv2**4 
 Qv3p3 =Qv3**3 
 Qv3p4 =Qv3**4 
 Xip2 =Xi**2 
 Yv11p3 =Yv11**3 
 Yv22p3 =Yv22**3 
 Yv33p3 =Yv33**3 
 lamp3 =lam**3 
 CYe11p2 =Conjg(Ye11)**2 
 CYe22p2 =Conjg(Ye22)**2 
 CYe33p2 =Conjg(Ye33)**2 
 CYv11p2 =Conjg(Yv11)**2 
 CYv22p2 =Conjg(Yv22)**2 
 CYv33p2 =Conjg(Yv33)**2 
 Clamp2 =Conjg(lam)**2 


If (TwoLoopRGE) Then 
 YdadjYu = Matmul2(Yd,adjYu,OnlyDiagonal) 
 YdadjTd = Matmul2(Yd,adjTd,OnlyDiagonal) 
 YdadjTu = Matmul2(Yd,adjTu,OnlyDiagonal) 
 YuadjYd = Matmul2(Yu,adjYd,OnlyDiagonal) 
 YuadjTd = Matmul2(Yu,adjTd,OnlyDiagonal) 
 YuadjTu = Matmul2(Yu,adjTu,OnlyDiagonal) 
 adjYdCmd2 = Matmul2(adjYd,Conjg(md2),OnlyDiagonal) 
 adjYuCmu2 = Matmul2(adjYu,Conjg(mu2),OnlyDiagonal) 
 adjTdYd = Matmul2(adjTd,Yd,OnlyDiagonal) 
 adjTuYu = Matmul2(adjTu,Yu,OnlyDiagonal) 
 Cmq2adjYd = Matmul2(Conjg(mq2),adjYd,OnlyDiagonal) 
 Cmq2adjYu = Matmul2(Conjg(mq2),adjYu,OnlyDiagonal) 
 CTdTpYd = Matmul2(Conjg(Td),Transpose(Yd),OnlyDiagonal) 
 CTuTpYu = Matmul2(Conjg(Tu),Transpose(Yu),OnlyDiagonal) 
 TdadjYd = Matmul2(Td,adjYd,OnlyDiagonal) 
 TdadjYu = Matmul2(Td,adjYu,OnlyDiagonal) 
 TdadjTu = Matmul2(Td,adjTu,OnlyDiagonal) 
 TuadjYd = Matmul2(Tu,adjYd,OnlyDiagonal) 
 TuadjYu = Matmul2(Tu,adjYu,OnlyDiagonal) 
 TuadjTd = Matmul2(Tu,adjTd,OnlyDiagonal) 
 md2YdadjYu = Matmul2(md2,YdadjYu,OnlyDiagonal) 
 mu2YuadjYd = Matmul2(mu2,YuadjYd,OnlyDiagonal) 
 Ydmq2adjYu = Matmul2(Yd,mq2adjYu,OnlyDiagonal) 
 YdadjYdCmd2 = Matmul2(Yd,adjYdCmd2,OnlyDiagonal) 
 YdadjYumu2 = Matmul2(Yd,adjYumu2,OnlyDiagonal) 
 YdadjTdTd = Matmul2(Yd,adjTdTd,OnlyDiagonal) 
 YdCmq2adjYd = Matmul2(Yd,Cmq2adjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdCmq2adjYd(i2,i2) =  Real(YdCmq2adjYd(i2,i2),dp) 
 Yumq2adjYd = Matmul2(Yu,mq2adjYd,OnlyDiagonal) 
 YuadjYdmd2 = Matmul2(Yu,adjYdmd2,OnlyDiagonal) 
 YuadjYuCmu2 = Matmul2(Yu,adjYuCmu2,OnlyDiagonal) 
 YuadjTuTu = Matmul2(Yu,adjTuTu,OnlyDiagonal) 
 YuCmq2adjYu = Matmul2(Yu,Cmq2adjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuCmq2adjYu(i2,i2) =  Real(YuCmq2adjYu(i2,i2),dp) 
 adjYdYdadjYd = Matmul2(adjYd,YdadjYd,OnlyDiagonal) 
 adjYdYdadjYu = Matmul2(adjYd,YdadjYu,OnlyDiagonal) 
 adjYdYdadjTd = Matmul2(adjYd,YdadjTd,OnlyDiagonal) 
 adjYdYdadjTu = Matmul2(adjYd,YdadjTu,OnlyDiagonal) 
 adjYdTdadjYd = Matmul2(adjYd,TdadjYd,OnlyDiagonal) 
 adjYdTdadjYu = Matmul2(adjYd,TdadjYu,OnlyDiagonal) 
 adjYdTdadjTd = Matmul2(adjYd,TdadjTd,OnlyDiagonal) 
 adjYdTdadjTu = Matmul2(adjYd,TdadjTu,OnlyDiagonal) 
 adjYuYuadjYd = Matmul2(adjYu,YuadjYd,OnlyDiagonal) 
 adjYuYuadjYu = Matmul2(adjYu,YuadjYu,OnlyDiagonal) 
 adjYuYuadjTd = Matmul2(adjYu,YuadjTd,OnlyDiagonal) 
 adjYuYuadjTu = Matmul2(adjYu,YuadjTu,OnlyDiagonal) 
 adjYuTuadjYd = Matmul2(adjYu,TuadjYd,OnlyDiagonal) 
 adjYuTuadjYu = Matmul2(adjYu,TuadjYu,OnlyDiagonal) 
 adjYuTuadjTd = Matmul2(adjYu,TuadjTd,OnlyDiagonal) 
 adjYuTuadjTu = Matmul2(adjYu,TuadjTu,OnlyDiagonal) 
 adjTdYdadjYd = Matmul2(adjTd,YdadjYd,OnlyDiagonal) 
 adjTdYdadjYu = Matmul2(adjTd,YdadjYu,OnlyDiagonal) 
 adjTdTdadjYd = Matmul2(adjTd,TdadjYd,OnlyDiagonal) 
 adjTdTdadjYu = Matmul2(adjTd,TdadjYu,OnlyDiagonal) 
 adjTuYuadjYd = Matmul2(adjTu,YuadjYd,OnlyDiagonal) 
 adjTuYuadjYu = Matmul2(adjTu,YuadjYu,OnlyDiagonal) 
 adjTuTuadjYd = Matmul2(adjTu,TuadjYd,OnlyDiagonal) 
 adjTuTuadjYu = Matmul2(adjTu,TuadjYu,OnlyDiagonal) 
 TdadjTdYd = Matmul2(Td,adjTdYd,OnlyDiagonal) 
 TuadjTuYu = Matmul2(Tu,adjTuYu,OnlyDiagonal) 
 md2YdadjYdYd = Matmul2(md2,YdadjYdYd,OnlyDiagonal) 
 mq2adjYdYdadjYd = Matmul2(mq2,adjYdYdadjYd,OnlyDiagonal) 
 mq2adjYdYdadjYu = Matmul2(mq2,adjYdYdadjYu,OnlyDiagonal) 
 mq2adjYuYuadjYd = Matmul2(mq2,adjYuYuadjYd,OnlyDiagonal) 
 mq2adjYuYuadjYu = Matmul2(mq2,adjYuYuadjYu,OnlyDiagonal) 
 mu2YuadjYuYu = Matmul2(mu2,YuadjYuYu,OnlyDiagonal) 
 Ydmq2adjYdYd = Matmul2(Yd,mq2adjYdYd,OnlyDiagonal) 
 YdadjYdmd2Yd = Matmul2(Yd,adjYdmd2Yd,OnlyDiagonal) 
 YdadjYdYdmq2 = Matmul2(Yd,adjYdYdmq2,OnlyDiagonal) 
 YdadjYdYdadjYd = Matmul2(Yd,adjYdYdadjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYdYdadjYd(i2,i2) =  Real(YdadjYdYdadjYd(i2,i2),dp) 
 YdadjYdTdadjYd = Matmul2(Yd,adjYdTdadjYd,OnlyDiagonal) 
 YdadjYdTdadjTd = Matmul2(Yd,adjYdTdadjTd,OnlyDiagonal) 
 YdadjYuYuadjYd = Matmul2(Yd,adjYuYuadjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYuYuadjYd(i2,i2) =  Real(YdadjYuYuadjYd(i2,i2),dp) 
 YdadjYuTuadjYd = Matmul2(Yd,adjYuTuadjYd,OnlyDiagonal) 
 YdadjYuTuadjTd = Matmul2(Yd,adjYuTuadjTd,OnlyDiagonal) 
 YdadjTdTdadjYd = Matmul2(Yd,adjTdTdadjYd,OnlyDiagonal) 
 YdadjTuTuadjYd = Matmul2(Yd,adjTuTuadjYd,OnlyDiagonal) 
 Yumq2adjYuYu = Matmul2(Yu,mq2adjYuYu,OnlyDiagonal) 
 YuadjYdYdadjYu = Matmul2(Yu,adjYdYdadjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYdYdadjYu(i2,i2) =  Real(YuadjYdYdadjYu(i2,i2),dp) 
 YuadjYdTdadjYu = Matmul2(Yu,adjYdTdadjYu,OnlyDiagonal) 
 YuadjYdTdadjTu = Matmul2(Yu,adjYdTdadjTu,OnlyDiagonal) 
 YuadjYumu2Yu = Matmul2(Yu,adjYumu2Yu,OnlyDiagonal) 
 YuadjYuYumq2 = Matmul2(Yu,adjYuYumq2,OnlyDiagonal) 
 YuadjYuYuadjYu = Matmul2(Yu,adjYuYuadjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYuYuadjYu(i2,i2) =  Real(YuadjYuYuadjYu(i2,i2),dp) 
 YuadjYuTuadjYu = Matmul2(Yu,adjYuTuadjYu,OnlyDiagonal) 
 YuadjYuTuadjTu = Matmul2(Yu,adjYuTuadjTu,OnlyDiagonal) 
 YuadjTdTdadjYu = Matmul2(Yu,adjTdTdadjYu,OnlyDiagonal) 
 YuadjTuTuadjYu = Matmul2(Yu,adjTuTuadjYu,OnlyDiagonal) 
 adjYdmd2YdadjYd = Matmul2(adjYd,md2YdadjYd,OnlyDiagonal) 
 adjYdmd2YdadjYu = Matmul2(adjYd,md2YdadjYu,OnlyDiagonal) 
 adjYdYdmq2adjYd = Matmul2(adjYd,Ydmq2adjYd,OnlyDiagonal) 
 adjYdYdmq2adjYu = Matmul2(adjYd,Ydmq2adjYu,OnlyDiagonal) 
 adjYdYdadjYdmd2 = Matmul2(adjYd,YdadjYdmd2,OnlyDiagonal) 
 adjYdYdadjYdYd = Matmul2(adjYd,YdadjYdYd,OnlyDiagonal) 
Forall(i2=1:3)  adjYdYdadjYdYd(i2,i2) =  Real(adjYdYdadjYdYd(i2,i2),dp) 
 adjYdYdadjYdTd = Matmul2(adjYd,YdadjYdTd,OnlyDiagonal) 
 adjYdYdadjYumu2 = Matmul2(adjYd,YdadjYumu2,OnlyDiagonal) 
 adjYdYdadjYuYu = Matmul2(adjYd,YdadjYuYu,OnlyDiagonal) 
 adjYdYdadjYuTu = Matmul2(adjYd,YdadjYuTu,OnlyDiagonal) 
 adjYdYdadjTdTd = Matmul2(adjYd,YdadjTdTd,OnlyDiagonal) 
 adjYdTdadjYdYd = Matmul2(adjYd,TdadjYdYd,OnlyDiagonal) 
 adjYdTdadjYuYu = Matmul2(adjYd,TdadjYuYu,OnlyDiagonal) 
 adjYdTdadjTdYd = Matmul2(adjYd,TdadjTdYd,OnlyDiagonal) 
 adjYumu2YuadjYd = Matmul2(adjYu,mu2YuadjYd,OnlyDiagonal) 
 adjYumu2YuadjYu = Matmul2(adjYu,mu2YuadjYu,OnlyDiagonal) 
 adjYuYumq2adjYd = Matmul2(adjYu,Yumq2adjYd,OnlyDiagonal) 
 adjYuYumq2adjYu = Matmul2(adjYu,Yumq2adjYu,OnlyDiagonal) 
 adjYuYuadjYdmd2 = Matmul2(adjYu,YuadjYdmd2,OnlyDiagonal) 
 adjYuYuadjYdYd = Matmul2(adjYu,YuadjYdYd,OnlyDiagonal) 
 adjYuYuadjYdTd = Matmul2(adjYu,YuadjYdTd,OnlyDiagonal) 
 adjYuYuadjYumu2 = Matmul2(adjYu,YuadjYumu2,OnlyDiagonal) 
 adjYuYuadjYuYu = Matmul2(adjYu,YuadjYuYu,OnlyDiagonal) 
Forall(i2=1:3)  adjYuYuadjYuYu(i2,i2) =  Real(adjYuYuadjYuYu(i2,i2),dp) 
 adjYuYuadjYuTu = Matmul2(adjYu,YuadjYuTu,OnlyDiagonal) 
 adjYuYuadjTuTu = Matmul2(adjYu,YuadjTuTu,OnlyDiagonal) 
 adjYuTuadjYdYd = Matmul2(adjYu,TuadjYdYd,OnlyDiagonal) 
 adjYuTuadjYuYu = Matmul2(adjYu,TuadjYuYu,OnlyDiagonal) 
 adjYuTuadjTuYu = Matmul2(adjYu,TuadjTuYu,OnlyDiagonal) 
 adjTdYdadjYdTd = Matmul2(adjTd,YdadjYdTd,OnlyDiagonal) 
 adjTdTdadjYdYd = Matmul2(adjTd,TdadjYdYd,OnlyDiagonal) 
 adjTuYuadjYuTu = Matmul2(adjTu,YuadjYuTu,OnlyDiagonal) 
 adjTuTuadjYuYu = Matmul2(adjTu,TuadjYuYu,OnlyDiagonal) 
 TdadjYdYdadjTd = Matmul2(Td,adjYdYdadjTd,OnlyDiagonal) 
 TdadjYuYuadjTd = Matmul2(Td,adjYuYuadjTd,OnlyDiagonal) 
 TdadjTdYdadjYd = Matmul2(Td,adjTdYdadjYd,OnlyDiagonal) 
 TdadjTuYuadjYd = Matmul2(Td,adjTuYuadjYd,OnlyDiagonal) 
 TuadjYdYdadjTu = Matmul2(Tu,adjYdYdadjTu,OnlyDiagonal) 
 TuadjYuYuadjTu = Matmul2(Tu,adjYuYuadjTu,OnlyDiagonal) 
 TuadjTdYdadjYu = Matmul2(Tu,adjTdYdadjYu,OnlyDiagonal) 
 TuadjTuYuadjYu = Matmul2(Tu,adjTuYuadjYu,OnlyDiagonal) 
 md2YdadjYdYdadjYd = Matmul2(md2,YdadjYdYdadjYd,OnlyDiagonal) 
 md2YdadjYuYuadjYd = Matmul2(md2,YdadjYuYuadjYd,OnlyDiagonal) 
 mq2adjYdYdadjYdYd = Matmul2(mq2,adjYdYdadjYdYd,OnlyDiagonal) 
 mq2adjYdYdadjYuYu = Matmul2(mq2,adjYdYdadjYuYu,OnlyDiagonal) 
 mq2adjYuYuadjYdYd = Matmul2(mq2,adjYuYuadjYdYd,OnlyDiagonal) 
 mq2adjYuYuadjYuYu = Matmul2(mq2,adjYuYuadjYuYu,OnlyDiagonal) 
 mu2YuadjYdYdadjYu = Matmul2(mu2,YuadjYdYdadjYu,OnlyDiagonal) 
 mu2YuadjYuYuadjYu = Matmul2(mu2,YuadjYuYuadjYu,OnlyDiagonal) 
 Ydmq2adjYdYdadjYd = Matmul2(Yd,mq2adjYdYdadjYd,OnlyDiagonal) 
 Ydmq2adjYuYuadjYd = Matmul2(Yd,mq2adjYuYuadjYd,OnlyDiagonal) 
 YdadjYdmd2YdadjYd = Matmul2(Yd,adjYdmd2YdadjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYdmd2YdadjYd(i2,i2) =  Real(YdadjYdmd2YdadjYd(i2,i2),dp) 
 YdadjYdYdmq2adjYd = Matmul2(Yd,adjYdYdmq2adjYd,OnlyDiagonal) 
 YdadjYdYdadjYdmd2 = Matmul2(Yd,adjYdYdadjYdmd2,OnlyDiagonal) 
 YdadjYdYdadjYdYd = Matmul2(Yd,adjYdYdadjYdYd,OnlyDiagonal) 
 YdadjYdYdadjYdTd = Matmul2(Yd,adjYdYdadjYdTd,OnlyDiagonal) 
 YdadjYdTdadjYdYd = Matmul2(Yd,adjYdTdadjYdYd,OnlyDiagonal) 
 YdadjYumu2YuadjYd = Matmul2(Yd,adjYumu2YuadjYd,OnlyDiagonal) 
Forall(i2=1:3)  YdadjYumu2YuadjYd(i2,i2) =  Real(YdadjYumu2YuadjYd(i2,i2),dp) 
 YdadjYuYumq2adjYd = Matmul2(Yd,adjYuYumq2adjYd,OnlyDiagonal) 
 YdadjYuYuadjYdmd2 = Matmul2(Yd,adjYuYuadjYdmd2,OnlyDiagonal) 
 YdadjYuYuadjYdYd = Matmul2(Yd,adjYuYuadjYdYd,OnlyDiagonal) 
 YdadjYuYuadjYdTd = Matmul2(Yd,adjYuYuadjYdTd,OnlyDiagonal) 
 YdadjYuYuadjYuYu = Matmul2(Yd,adjYuYuadjYuYu,OnlyDiagonal) 
 YdadjYuYuadjYuTu = Matmul2(Yd,adjYuYuadjYuTu,OnlyDiagonal) 
 YdadjYuTuadjYdYd = Matmul2(Yd,adjYuTuadjYdYd,OnlyDiagonal) 
 YdadjYuTuadjYuYu = Matmul2(Yd,adjYuTuadjYuYu,OnlyDiagonal) 
 Yumq2adjYdYdadjYu = Matmul2(Yu,mq2adjYdYdadjYu,OnlyDiagonal) 
 Yumq2adjYuYuadjYu = Matmul2(Yu,mq2adjYuYuadjYu,OnlyDiagonal) 
 YuadjYdmd2YdadjYu = Matmul2(Yu,adjYdmd2YdadjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYdmd2YdadjYu(i2,i2) =  Real(YuadjYdmd2YdadjYu(i2,i2),dp) 
 YuadjYdYdmq2adjYu = Matmul2(Yu,adjYdYdmq2adjYu,OnlyDiagonal) 
 YuadjYdYdadjYdYd = Matmul2(Yu,adjYdYdadjYdYd,OnlyDiagonal) 
 YuadjYdYdadjYdTd = Matmul2(Yu,adjYdYdadjYdTd,OnlyDiagonal) 
 YuadjYdYdadjYumu2 = Matmul2(Yu,adjYdYdadjYumu2,OnlyDiagonal) 
 YuadjYdYdadjYuYu = Matmul2(Yu,adjYdYdadjYuYu,OnlyDiagonal) 
 YuadjYdYdadjYuTu = Matmul2(Yu,adjYdYdadjYuTu,OnlyDiagonal) 
 YuadjYdTdadjYdYd = Matmul2(Yu,adjYdTdadjYdYd,OnlyDiagonal) 
 YuadjYdTdadjYuYu = Matmul2(Yu,adjYdTdadjYuYu,OnlyDiagonal) 
 YuadjYumu2YuadjYu = Matmul2(Yu,adjYumu2YuadjYu,OnlyDiagonal) 
Forall(i2=1:3)  YuadjYumu2YuadjYu(i2,i2) =  Real(YuadjYumu2YuadjYu(i2,i2),dp) 
 YuadjYuYumq2adjYu = Matmul2(Yu,adjYuYumq2adjYu,OnlyDiagonal) 
 YuadjYuYuadjYumu2 = Matmul2(Yu,adjYuYuadjYumu2,OnlyDiagonal) 
 YuadjYuYuadjYuYu = Matmul2(Yu,adjYuYuadjYuYu,OnlyDiagonal) 
 YuadjYuYuadjYuTu = Matmul2(Yu,adjYuYuadjYuTu,OnlyDiagonal) 
 YuadjYuTuadjYuYu = Matmul2(Yu,adjYuTuadjYuYu,OnlyDiagonal) 
 adjYdmd2YdadjYdYd = Matmul2(adjYd,md2YdadjYdYd,OnlyDiagonal) 
 adjYdYdmq2adjYdYd = Matmul2(adjYd,Ydmq2adjYdYd,OnlyDiagonal) 
Forall(i2=1:3)  adjYdYdmq2adjYdYd(i2,i2) =  Real(adjYdYdmq2adjYdYd(i2,i2),dp) 
 adjYdYdadjYdmd2Yd = Matmul2(adjYd,YdadjYdmd2Yd,OnlyDiagonal) 
 adjYdYdadjYdYdmq2 = Matmul2(adjYd,YdadjYdYdmq2,OnlyDiagonal) 
 adjYumu2YuadjYuYu = Matmul2(adjYu,mu2YuadjYuYu,OnlyDiagonal) 
 adjYuYumq2adjYuYu = Matmul2(adjYu,Yumq2adjYuYu,OnlyDiagonal) 
Forall(i2=1:3)  adjYuYumq2adjYuYu(i2,i2) =  Real(adjYuYumq2adjYuYu(i2,i2),dp) 
 adjYuYuadjYumu2Yu = Matmul2(adjYu,YuadjYumu2Yu,OnlyDiagonal) 
 adjYuYuadjYuYumq2 = Matmul2(adjYu,YuadjYuYumq2,OnlyDiagonal) 
 TdadjYdYdadjYdYd = Matmul2(Td,adjYdYdadjYdYd,OnlyDiagonal) 
 TdadjYuYuadjYdYd = Matmul2(Td,adjYuYuadjYdYd,OnlyDiagonal) 
 TdadjYuYuadjYuYu = Matmul2(Td,adjYuYuadjYuYu,OnlyDiagonal) 
 TuadjYdYdadjYdYd = Matmul2(Tu,adjYdYdadjYdYd,OnlyDiagonal) 
 TuadjYdYdadjYuYu = Matmul2(Tu,adjYdYdadjYuYu,OnlyDiagonal) 
 TuadjYuYuadjYuYu = Matmul2(Tu,adjYuYuadjYuYu,OnlyDiagonal) 
 TrCTdTpYd = cTrace(CTdTpYd)
 TrCTuTpYu = cTrace(CTuTpYu)
 TrYdadjYdCmd2 = cTrace(YdadjYdCmd2)
 TrYdCmq2adjYd = Real(cTrace(YdCmq2adjYd),dp)  
 TrYuadjYuCmu2 = cTrace(YuadjYuCmu2)
 TrYuCmq2adjYu = Real(cTrace(YuCmq2adjYu),dp)  
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
 Qdp3 =Qd**3 
 Qdp4 =Qd**4 
 Qe1p3 =Qe1**3 
 Qe1p4 =Qe1**4 
 Qe2p3 =Qe2**3 
 Qe2p4 =Qe2**4 
 Qe3p3 =Qe3**3 
 Qe3p4 =Qe3**4 
 QHdp3 =QHd**3 
 QHdp4 =QHd**4 
 QHup3 =QHu**3 
 QHup4 =QHu**4 
 Ql1p3 =Ql1**3 
 Ql1p4 =Ql1**4 
 Ql2p3 =Ql2**3 
 Ql2p4 =Ql2**4 
 Ql3p3 =Ql3**3 
 Ql3p4 =Ql3**4 
 Qqp3 =Qq**3 
 Qqp4 =Qq**4 
 Qsp3 =Qs**3 
 Qsp4 =Qs**4 
 Qup3 =Qu**3 
 Qup4 =Qu**4 
 Qv1p3 =Qv1**3 
 Qv1p4 =Qv1**4 
 Qv2p3 =Qv2**3 
 Qv2p4 =Qv2**4 
 Qv3p3 =Qv3**3 
 Qv3p4 =Qv3**4 
 Xip2 =Xi**2 
 Yv11p3 =Yv11**3 
 Yv22p3 =Yv22**3 
 Yv33p3 =Yv33**3 
 lamp3 =lam**3 
 CYe11p2 =Conjg(Ye11)**2 
 CYe22p2 =Conjg(Ye22)**2 
 CYe33p2 =Conjg(Ye33)**2 
 CYv11p2 =Conjg(Yv11)**2 
 CYv22p2 =Conjg(Yv22)**2 
 CYv33p2 =Conjg(Yv33)**2 
 Clamp2 =Conjg(lam)**2 
End If 
 
 
Tr1(1) = g1*sqrt3ov5*(me012 + me022 + me032 - mHd2 + mHu2 - ml012 - ml022 -           & 
&  ml032 + Trmd2 + Trmq2 - 2._dp*(Trmu2))

Tr1(4) = gp*(me012*Qe1 + me022*Qe2 + me032*Qe3 + 2*mHd2*QHd + 2*mHu2*QHu +            & 
&  2*ml012*Ql1 + 2*ml022*Ql2 + 2*ml032*Ql3 + ms2*Qs + mvR012*Qv1 + mvR022*Qv2 +          & 
&  mvR032*Qv3 + 3*Qd*Trmd2 + 6*Qq*Trmq2 + 3*Qu*Trmu2)

If (TwoLoopRGE) Then 
Tr2U1(1, 1) = (g1p2*(6._dp*(me012) + 6._dp*(me022) + 6._dp*(me032) + 3._dp*(mHd2)     & 
&  + 3._dp*(mHu2) + 3._dp*(ml012) + 3._dp*(ml022) + 3._dp*(ml032) + 2._dp*(Trmd2)        & 
&  + Trmq2 + 8._dp*(Trmu2)))/10._dp

Tr2U1(1, 4) = g1*gp*sqrt3ov5*(me012*Qe1 + me022*Qe2 + me032*Qe3 - mHd2*QHd +          & 
&  mHu2*QHu - ml012*Ql1 - ml022*Ql2 - ml032*Ql3 + Qd*Trmd2 + Qq*Trmq2 - 2*Qu*Trmu2)

Tr3(1) = (g1*ooSqrt15*(36*g1p2*me012 + 36*g1p2*me022 - 60*AbsYe33*me032 +             & 
&  36*g1p2*me032 + 30*Abslam*mHd2 + 30*AbsYe33*mHd2 - 9*g1p2*mHd2 - 45*g2p2*mHd2 -       & 
&  30*Abslam*mHu2 - 30*AbsYv11*mHu2 - 30*AbsYv22*mHu2 - 30*AbsYv33*mHu2 + 9*g1p2*mHu2 +  & 
&  45*g2p2*mHu2 + 30*AbsYv11*ml012 - 9*g1p2*ml012 - 45*g2p2*ml012 + 30*AbsYe11*(-        & 
& 2._dp*(me012) + mHd2 + ml012) + 30*AbsYv22*ml022 - 9*g1p2*ml022 - 45*g2p2*ml022 +      & 
&  30*AbsYe22*(-2._dp*(me022) + mHd2 + ml022) + 30*AbsYe33*ml032 + 30*AbsYv33*ml032 -    & 
&  9*g1p2*ml032 - 45*g2p2*ml032 + 60*gpp2*me012*Qe1p2 + 60*gpp2*me022*Qe2p2 +            & 
&  60*gpp2*me032*Qe3p2 - 60*gpp2*mHd2*QHdp2 + 60*gpp2*mHu2*QHup2 - 60*gpp2*ml012*Ql1p2 - & 
&  60*gpp2*ml022*Ql2p2 - 60*gpp2*ml032*Ql3p2 + 4*g1p2*Trmd2 + 80*g3p2*Trmd2 +            & 
&  60*gpp2*Qdp2*Trmd2 + g1p2*Trmq2 + 45*g2p2*Trmq2 + 80*g3p2*Trmq2 + 60*gpp2*Qqp2*Trmq2 -& 
&  32*g1p2*Trmu2 - 160*g3p2*Trmu2 - 120*gpp2*Qup2*Trmu2 + 90*mHd2*TrYdadjYd -            & 
&  60._dp*(TrYdadjYdCmd2) - 30._dp*(TrYdCmq2adjYd) - 90*mHu2*TrYuadjYu + 120._dp*(TrYuadjYuCmu2)& 
&  - 30._dp*(TrYuCmq2adjYu)))/20._dp

Tr2(2) = (mHd2 + mHu2 + ml012 + ml022 + ml032 + 3._dp*(Trmq2))/2._dp

Tr2(3) = (Trmd2 + 2._dp*(Trmq2) + Trmu2)/2._dp

Tr2U1(4, 1) = g1*gp*sqrt3ov5*(me012*Qe1 + me022*Qe2 + me032*Qe3 - mHd2*QHd +          & 
&  mHu2*QHu - ml012*Ql1 - ml022*Ql2 - ml032*Ql3 + Qd*Trmd2 + Qq*Trmq2 - 2*Qu*Trmu2)

Tr2U1(4, 4) = gpp2*(me012*Qe1p2 + me022*Qe2p2 + me032*Qe3p2 + 2*mHd2*QHdp2 +          & 
&  2*mHu2*QHup2 + 2*ml012*Ql1p2 + 2*ml022*Ql2p2 + 2*ml032*Ql3p2 + ms2*Qsp2 +             & 
&  mvR012*Qv1p2 + mvR022*Qv2p2 + mvR032*Qv3p2 + 3*Qdp2*Trmd2 + 6*Qqp2*Trmq2 +            & 
&  3*Qup2*Trmu2)

Tr3(4) = (gp*(6*g1p2*me012*Qe1 + 10*gpp2*me012*Qe1p3 + 6*g1p2*me022*Qe2 +             & 
&  10*gpp2*me022*Qe2p3 - 10*AbsYe33*me032*Qe3 + 6*g1p2*me032*Qe3 + 10*gpp2*me032*Qe3p3 - & 
&  10*Abslam*mHd2*QHd - 10*AbsYe33*mHd2*QHd + 3*g1p2*mHd2*QHd + 15*g2p2*mHd2*QHd +       & 
&  20*gpp2*mHd2*QHdp3 - 10*Abslam*mHu2*QHu - 10*AbsYv11*mHu2*QHu - 10*AbsYv22*mHu2*QHu - & 
&  10*AbsYv33*mHu2*QHu + 3*g1p2*mHu2*QHu + 15*g2p2*mHu2*QHu + 20*gpp2*mHu2*QHup3 -       & 
&  10*AbsYv11*ml012*Ql1 + 3*g1p2*ml012*Ql1 + 15*g2p2*ml012*Ql1 - 10*AbsYe11*(me012*Qe1 + & 
&  mHd2*QHd + ml012*Ql1) + 20*gpp2*ml012*Ql1p3 - 10*AbsYv22*ml022*Ql2 + 3*g1p2*ml022*Ql2 +& 
&  15*g2p2*ml022*Ql2 - 10*AbsYe22*(me022*Qe2 + mHd2*QHd + ml022*Ql2) + 20*gpp2*ml022*Ql2p3 -& 
&  10*AbsYe33*ml032*Ql3 - 10*AbsYv33*ml032*Ql3 + 3*g1p2*ml032*Ql3 + 15*g2p2*ml032*Ql3 +  & 
&  20*gpp2*ml032*Ql3p3 - 10*Abslam*ms2*Qs + 10*gpp2*ms2*Qsp3 - 10*AbsYv11*mvR012*Qv1 +   & 
&  10*gpp2*mvR012*Qv1p3 - 10*AbsYv22*mvR022*Qv2 + 10*gpp2*mvR022*Qv2p3 - 10*AbsYv33*mvR032*Qv3 +& 
&  10*gpp2*mvR032*Qv3p3 + 2*g1p2*Qd*Trmd2 + 40*g3p2*Qd*Trmd2 + 30*gpp2*Qdp3*Trmd2 +      & 
&  g1p2*Qq*Trmq2 + 45*g2p2*Qq*Trmq2 + 80*g3p2*Qq*Trmq2 + 60*gpp2*Qqp3*Trmq2 +            & 
&  8*g1p2*Qu*Trmu2 + 40*g3p2*Qu*Trmu2 + 30*gpp2*Qup3*Trmu2 - 30*mHd2*QHd*TrYdadjYd -     & 
&  30*Qd*TrYdadjYdCmd2 - 30*Qq*TrYdCmq2adjYd - 30*mHu2*QHu*TrYuadjYu - 30*Qu*TrYuadjYuCmu2 -& 
&  30*Qq*TrYuCmq2adjYu))/10._dp

End If 
 
 
!-------------------- 
! g1 
!-------------------- 
 
betag11  = 33._dp*(g1p3)/5._dp

 
 
If (TwoLoopRGE) Then 
betag12 = (g1p3*(-30._dp*(Abslam) - 90._dp*(AbsYe11) - 90._dp*(AbsYe22) - 90._dp*(AbsYe33) -    & 
&  30._dp*(AbsYv11) - 30._dp*(AbsYv22) - 30._dp*(AbsYv33) + 199._dp*(g1p2) +             & 
&  135._dp*(g2p2) + 440._dp*(g3p2) + 60*gpp2*Qdp2 + 60*gpp2*Qe1p2 + 60*gpp2*Qe2p2 +      & 
&  60*gpp2*Qe3p2 + 30*gpp2*QHdp2 + 30*gpp2*QHup2 + 30*gpp2*Ql1p2 + 30*gpp2*Ql2p2 +       & 
&  30*gpp2*Ql3p2 + 30*gpp2*Qqp2 + 240*gpp2*Qup2 - 70._dp*(TrYdadjYd) - 130._dp*(TrYuadjYu)))/25._dp

 
Dg1 = oo16pi2*( betag11 + oo16pi2 * betag12 ) 

 
Else 
Dg1 = oo16pi2* betag11 
End If 
 
 
!-------------------- 
! g2 
!-------------------- 
 
betag21  = g2p3

 
 
If (TwoLoopRGE) Then 
betag22 = (g2p3*(-10._dp*(Abslam) - 10._dp*(AbsYe11) - 10._dp*(AbsYe22) - 10._dp*(AbsYe33) -    & 
&  10._dp*(AbsYv11) - 10._dp*(AbsYv22) - 10._dp*(AbsYv33) + 9._dp*(g1p2) +               & 
&  125._dp*(g2p2) + 120._dp*(g3p2) + 10*gpp2*QHdp2 + 10*gpp2*QHup2 + 10*gpp2*Ql1p2 +     & 
&  10*gpp2*Ql2p2 + 10*gpp2*Ql3p2 + 90*gpp2*Qqp2 - 30._dp*(TrYdadjYd) - 30._dp*(TrYuadjYu)))/5._dp

 
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
 
betagp1  = gpp3*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) +               & 
&  2._dp*(QHup2) + 2._dp*(Ql1p2) + 2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2)         & 
&  + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2)

 
 
If (TwoLoopRGE) Then 
betagp2 = (2*gpp3*(6*g1p2*Qdp2 + 120*g3p2*Qdp2 + 90*gpp2*Qdp4 + 6*g1p2*Qe1p2 + 10*gpp2*Qe1p4 +  & 
&  6*g1p2*Qe2p2 + 10*gpp2*Qe2p4 - 10*AbsYe33*Qe3p2 + 6*g1p2*Qe3p2 + 10*gpp2*Qe3p4 -      & 
&  10*Abslam*QHdp2 - 10*AbsYe33*QHdp2 + 3*g1p2*QHdp2 + 15*g2p2*QHdp2 + 20*gpp2*QHdp4 -   & 
&  10*Abslam*QHup2 - 10*AbsYv11*QHup2 - 10*AbsYv22*QHup2 - 10*AbsYv33*QHup2 +            & 
&  3*g1p2*QHup2 + 15*g2p2*QHup2 + 20*gpp2*QHup4 - 10*AbsYv11*Ql1p2 + 3*g1p2*Ql1p2 +      & 
&  15*g2p2*Ql1p2 - 10*AbsYe11*(Qe1p2 + QHdp2 + Ql1p2) + 20*gpp2*Ql1p4 - 10*AbsYv22*Ql2p2 +& 
&  3*g1p2*Ql2p2 + 15*g2p2*Ql2p2 - 10*AbsYe22*(Qe2p2 + QHdp2 + Ql2p2) + 20*gpp2*Ql2p4 -   & 
&  10*AbsYe33*Ql3p2 - 10*AbsYv33*Ql3p2 + 3*g1p2*Ql3p2 + 15*g2p2*Ql3p2 + 20*gpp2*Ql3p4 +  & 
&  3*g1p2*Qqp2 + 135*g2p2*Qqp2 + 240*g3p2*Qqp2 + 180*gpp2*Qqp4 - 10*Abslam*Qsp2 +        & 
&  10*gpp2*Qsp4 + 24*g1p2*Qup2 + 120*g3p2*Qup2 + 90*gpp2*Qup4 - 10*AbsYv11*Qv1p2 +       & 
&  10*gpp2*Qv1p4 - 10*AbsYv22*Qv2p2 + 10*gpp2*Qv2p4 - 10*AbsYv33*Qv3p2 + 10*gpp2*Qv3p4 - & 
&  30*Qdp2*TrYdadjYd - 30*QHdp2*TrYdadjYd - 30*Qqp2*TrYdadjYd - 30*QHup2*TrYuadjYu -     & 
&  30*Qqp2*TrYuadjYu - 30*Qup2*TrYuadjYu))/5._dp

 
Dgp = oo16pi2*( betagp1 + oo16pi2 * betagp2 ) 

 
Else 
Dgp = oo16pi2* betagp1 
End If 
 
 
!-------------------- 
! Yd 
!-------------------- 
 
betaYd1  = (Abslam + AbsYe11 + AbsYe22 + AbsYe33 - 7._dp*(g1p2)/15._dp -              & 
&  3._dp*(g2p2) - 16._dp*(g3p2)/3._dp - 2*gpp2*Qdp2 - 2*gpp2*QHdp2 - 2*gpp2*Qqp2 +       & 
&  3._dp*(TrYdadjYd))*Yd + 3._dp*(YdadjYdYd) + YdadjYuYu

 
 
If (TwoLoopRGE) Then 
betaYd2 = (-3._dp*(Abslam) - 3._dp*(AbsYe11) - 3._dp*(AbsYe22) - 3._dp*(AbsYe33) +              & 
&  4._dp*(g1p2)/5._dp + 6._dp*(g2p2) - 2*gpp2*Qdp2 + 6*gpp2*QHdp2 + 2*gpp2*Qqp2 -        & 
&  9._dp*(TrYdadjYd))*YdadjYdYd - 4._dp*(YdadjYdYdadjYdYd) - Abslam*YdadjYuYu -          & 
&  AbsYv11*YdadjYuYu - AbsYv22*YdadjYuYu - AbsYv33*YdadjYuYu + (4*g1p2*YdadjYuYu)/5._dp +& 
&  2*gpp2*QHup2*YdadjYuYu - 2*gpp2*Qqp2*YdadjYuYu + 2*gpp2*Qup2*YdadjYuYu -              & 
&  3*TrYuadjYu*YdadjYuYu - 2._dp*(YdadjYuYuadjYdYd) - 2._dp*(YdadjYuYuadjYuYu) +         & 
&  Yd*(-(Abslam*AbsYv11) - Abslam*AbsYv22 - Abslam*AbsYv33 - AbsYe33*AbsYv33 +           & 
&  (6*AbsYe33*g1p2)/5._dp + 287._dp*(g1p4)/90._dp + g1p2*g2p2 + 15._dp*(g2p4)/2._dp +    & 
&  (8*g1p2*g3p2)/9._dp + 8*g2p2*g3p2 - 16._dp*(g3p4)/9._dp - 3*Clamp2*lamp2 +            & 
&  (44*g1p2*gpp2*Qdp2)/15._dp + (32*g3p2*gpp2*Qdp2)/3._dp + 22*gpp4*Qdp4 +               & 
&  (4*g1p2*gpp2*Qd*Qe1)/5._dp + 2*gpp4*Qdp2*Qe1p2 + (4*g1p2*gpp2*Qd*Qe2)/5._dp +         & 
&  2*gpp4*Qdp2*Qe2p2 + (4*g1p2*gpp2*Qd*Qe3)/5._dp + 2*AbsYe33*gpp2*Qe3p2 +               & 
&  2*gpp4*Qdp2*Qe3p2 - (22*g1p2*gpp2*Qd*QHd)/5._dp - (6*g1p2*gpp2*Qe1*QHd)/5._dp -       & 
&  (6*g1p2*gpp2*Qe2*QHd)/5._dp - (6*g1p2*gpp2*Qe3*QHd)/5._dp - 2*Abslam*gpp2*QHdp2 -     & 
&  2*AbsYe33*gpp2*QHdp2 + (12*g1p2*gpp2*QHdp2)/5._dp + 6*g2p2*gpp2*QHdp2 +               & 
&  22*gpp4*Qdp2*QHdp2 + 2*gpp4*Qe1p2*QHdp2 + 2*gpp4*Qe2p2*QHdp2 + 2*gpp4*Qe3p2*QHdp2 +   & 
&  8*gpp4*QHdp4 + (4*g1p2*gpp2*Qd*QHu)/5._dp - (6*g1p2*gpp2*QHd*QHu)/5._dp +             & 
&  2*Abslam*gpp2*QHup2 + 4*gpp4*Qdp2*QHup2 + 4*gpp4*QHdp2*QHup2 - (4*g1p2*gpp2*Qd*Ql1)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql1)/5._dp + 4*gpp4*Qdp2*Ql1p2 + 4*gpp4*QHdp2*Ql1p2 - (4*g1p2*gpp2*Qd*Ql2)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql2)/5._dp + 4*gpp4*Qdp2*Ql2p2 + 4*gpp4*QHdp2*Ql2p2 - (4*g1p2*gpp2*Qd*Ql3)/5._dp +& 
&  (6*g1p2*gpp2*QHd*Ql3)/5._dp + 2*AbsYe33*gpp2*Ql3p2 + 4*gpp4*Qdp2*Ql3p2 +              & 
&  4*gpp4*QHdp2*Ql3p2 + (18*g1p2*gpp2*Qd*Qq)/5._dp + (2*g1p2*gpp2*Qe1*Qq)/5._dp +        & 
&  (2*g1p2*gpp2*Qe2*Qq)/5._dp + (2*g1p2*gpp2*Qe3*Qq)/5._dp - 4*g1p2*gpp2*QHd*Qq +        & 
&  (2*g1p2*gpp2*QHu*Qq)/5._dp - (2*g1p2*gpp2*Ql1*Qq)/5._dp - (2*g1p2*gpp2*Ql2*Qq)/5._dp -& 
&  (2*g1p2*gpp2*Ql3*Qq)/5._dp + (4*g1p2*gpp2*Qqp2)/3._dp + 6*g2p2*gpp2*Qqp2 +            & 
&  (32*g3p2*gpp2*Qqp2)/3._dp + 54*gpp4*Qdp2*Qqp2 + 2*gpp4*Qe1p2*Qqp2 + 2*gpp4*Qe2p2*Qqp2 +& 
&  2*gpp4*Qe3p2*Qqp2 + 40*gpp4*QHdp2*Qqp2 + 4*gpp4*QHup2*Qqp2 + 4*gpp4*Ql1p2*Qqp2 +      & 
&  4*gpp4*Ql2p2*Qqp2 + 4*gpp4*Ql3p2*Qqp2 + 40*gpp4*Qqp4 + 2*Abslam*gpp2*Qsp2 +           & 
&  2*gpp4*Qdp2*Qsp2 + 2*gpp4*QHdp2*Qsp2 + 2*gpp4*Qqp2*Qsp2 - (24*g1p2*gpp2*Qd*Qu)/5._dp +& 
&  (36*g1p2*gpp2*QHd*Qu)/5._dp - (12*g1p2*gpp2*Qq*Qu)/5._dp + 18*gpp4*Qdp2*Qup2 +        & 
&  18*gpp4*QHdp2*Qup2 + 18*gpp4*Qqp2*Qup2 + 2*gpp4*Qdp2*Qv1p2 + 2*gpp4*QHdp2*Qv1p2 +     & 
&  2*gpp4*Qqp2*Qv1p2 + 2*gpp4*Qdp2*Qv2p2 + 2*gpp4*QHdp2*Qv2p2 + 2*gpp4*Qqp2*Qv2p2 +      & 
&  2*gpp4*Qdp2*Qv3p2 + 2*gpp4*QHdp2*Qv3p2 + 2*gpp4*Qqp2*Qv3p2 - (2*g1p2*TrYdadjYd)/5._dp +& 
&  16*g3p2*TrYdadjYd + 6*gpp2*Qdp2*TrYdadjYd - 6*gpp2*QHdp2*TrYdadjYd + 6*gpp2*Qqp2*TrYdadjYd -& 
&  9._dp*(TrYdadjYdYdadjYd) - 3._dp*(TrYdadjYuYuadjYd) - 3*Abslam*TrYuadjYu -            & 
&  3*CYe11p2*Ye11p2 - 3*CYe22p2*Ye22p2 - 3*CYe33p2*Ye33p2 + (-(AbsYv11*Ye11) +           & 
&  (6*g1p2*Ye11)/5._dp + 2*gpp2*(Qe1p2 - QHdp2 + Ql1p2)*Ye11)*Conjg(Ye11) +              & 
&  (-(AbsYv22*Ye22) + (6*g1p2*Ye22)/5._dp + 2*gpp2*(Qe2p2 - QHdp2 + Ql2p2)*Ye22)*Conjg(Ye22))

 
DYd = oo16pi2*( betaYd1 + oo16pi2 * betaYd2 ) 

 
Else 
DYd = oo16pi2* betaYd1 
End If 
 
 
Call Chop(DYd) 

!-------------------- 
! Ye11 
!-------------------- 
 
betaYe111  = Abslam*Ye11 + AbsYe22*Ye11 + AbsYe33*Ye11 + AbsYv11*Ye11 -               & 
&  (9*g1p2*Ye11)/5._dp - 3*g2p2*Ye11 - 2*gpp2*Qe1p2*Ye11 - 2*gpp2*QHdp2*Ye11 -           & 
&  2*gpp2*Ql1p2*Ye11 + 3*TrYdadjYd*Ye11 + 4*Ye11p2*Conjg(Ye11)

 
 
If (TwoLoopRGE) Then 
betaYe112 = -(Ye11*(20*Abslam*AbsYv11 + 10*Abslam*AbsYv22 + 10*AbsYv11*AbsYv22 + 10*Abslam*AbsYv33 +& 
&  10*AbsYe33*AbsYv33 + 10*AbsYv11*AbsYv33 - 12*AbsYe33*g1p2 - 135._dp*(g1p4) -          & 
&  18*g1p2*g2p2 - 75._dp*(g2p4) + 30*Clamp2*lamp2 - 72*g1p2*gpp2*Qd*Qe1 - 72*g1p2*gpp2*Qe1p2 -& 
&  180*gpp4*Qdp2*Qe1p2 - 60*gpp4*Qe1p4 - 24*g1p2*gpp2*Qe1*Qe2 - 20*gpp4*Qe1p2*Qe2p2 -    & 
&  24*g1p2*gpp2*Qe1*Qe3 - 20*AbsYe33*gpp2*Qe3p2 - 20*gpp4*Qe1p2*Qe3p2 + 36*g1p2*gpp2*Qd*QHd +& 
&  36*g1p2*gpp2*Qe1*QHd + 12*g1p2*gpp2*Qe2*QHd + 12*g1p2*gpp2*Qe3*QHd + 20*Abslam*gpp2*QHdp2 +& 
&  20*AbsYe33*gpp2*QHdp2 - 24*g1p2*gpp2*QHdp2 - 60*g2p2*gpp2*QHdp2 - 180*gpp4*Qdp2*QHdp2 -& 
&  60*gpp4*Qe1p2*QHdp2 - 20*gpp4*Qe2p2*QHdp2 - 20*gpp4*Qe3p2*QHdp2 - 80*gpp4*QHdp4 -     & 
&  24*g1p2*gpp2*Qe1*QHu + 12*g1p2*gpp2*QHd*QHu - 20*Abslam*gpp2*QHup2 - 20*AbsYv11*gpp2*QHup2 -& 
&  40*gpp4*Qe1p2*QHup2 - 40*gpp4*QHdp2*QHup2 + 36*g1p2*gpp2*Qd*Ql1 + 36*g1p2*gpp2*Qe1*Ql1 +& 
&  12*g1p2*gpp2*Qe2*Ql1 + 12*g1p2*gpp2*Qe3*Ql1 - 24*g1p2*gpp2*QHd*Ql1 + 12*g1p2*gpp2*QHu*Ql1 +& 
&  20*AbsYv11*gpp2*Ql1p2 - 24*g1p2*gpp2*Ql1p2 - 60*g2p2*gpp2*Ql1p2 - 180*gpp4*Qdp2*Ql1p2 -& 
&  60*gpp4*Qe1p2*Ql1p2 - 20*gpp4*Qe2p2*Ql1p2 - 20*gpp4*Qe3p2*Ql1p2 - 80*gpp4*QHdp2*Ql1p2 -& 
&  40*gpp4*QHup2*Ql1p2 - 80*gpp4*Ql1p4 + 24*g1p2*gpp2*Qe1*Ql2 - 12*g1p2*gpp2*QHd*Ql2 -   & 
&  12*g1p2*gpp2*Ql1*Ql2 - 40*gpp4*Qe1p2*Ql2p2 - 40*gpp4*QHdp2*Ql2p2 - 40*gpp4*Ql1p2*Ql2p2 -& 
&  2*AbsYe22*(-5._dp*(AbsYv22) + 6._dp*(g1p2) + 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2)) +       & 
&  24*g1p2*gpp2*Qe1*Ql3 - 12*g1p2*gpp2*QHd*Ql3 - 12*g1p2*gpp2*Ql1*Ql3 - 20*AbsYe33*gpp2*Ql3p2 -& 
&  40*gpp4*Qe1p2*Ql3p2 - 40*gpp4*QHdp2*Ql3p2 - 40*gpp4*Ql1p2*Ql3p2 - 72*g1p2*gpp2*Qe1*Qq +& 
&  36*g1p2*gpp2*QHd*Qq + 36*g1p2*gpp2*Ql1*Qq - 360*gpp4*Qe1p2*Qqp2 - 360*gpp4*QHdp2*Qqp2 -& 
&  360*gpp4*Ql1p2*Qqp2 - 20*Abslam*gpp2*Qsp2 - 20*gpp4*Qe1p2*Qsp2 - 20*gpp4*QHdp2*Qsp2 - & 
&  20*gpp4*Ql1p2*Qsp2 + 144*g1p2*gpp2*Qe1*Qu - 72*g1p2*gpp2*QHd*Qu - 72*g1p2*gpp2*Ql1*Qu -& 
&  180*gpp4*Qe1p2*Qup2 - 180*gpp4*QHdp2*Qup2 - 180*gpp4*Ql1p2*Qup2 - 20*AbsYv11*gpp2*Qv1p2 -& 
&  20*gpp4*Qe1p2*Qv1p2 - 20*gpp4*QHdp2*Qv1p2 - 20*gpp4*Ql1p2*Qv1p2 - 20*gpp4*Qe1p2*Qv2p2 -& 
&  20*gpp4*QHdp2*Qv2p2 - 20*gpp4*Ql1p2*Qv2p2 - 20*gpp4*Qe1p2*Qv3p2 - 20*gpp4*QHdp2*Qv3p2 -& 
&  20*gpp4*Ql1p2*Qv3p2 + 4*g1p2*TrYdadjYd - 160*g3p2*TrYdadjYd - 60*gpp2*Qdp2*TrYdadjYd +& 
&  60*gpp2*QHdp2*TrYdadjYd - 60*gpp2*Qqp2*TrYdadjYd + 2*AbsYe11*(15._dp*(Abslam) +       & 
&  15._dp*(AbsYe22) + 15._dp*(AbsYe33) + 15._dp*(AbsYv11) - 6._dp*(g1p2) -               & 
&  30._dp*(g2p2) - 20*gpp2*QHdp2 - 20*gpp2*Ql1p2 + 45._dp*(TrYdadjYd)) + 90._dp*(TrYdadjYdYdadjYd) +& 
&  30._dp*(TrYdadjYuYuadjYd) + 30*Abslam*TrYuadjYu + 30*AbsYv11*TrYuadjYu +              & 
&  100*CYe11p2*Ye11p2 + 30*CYe22p2*Ye22p2 + 30*CYe33p2*Ye33p2 + 30*CYv11p2*Yv11p2))/10._dp

 
DYe11 = oo16pi2*( betaYe111 + oo16pi2 * betaYe112 ) 

 
Else 
DYe11 = oo16pi2* betaYe111 
End If 
 
 
Call Chop(DYe11) 

!-------------------- 
! Ye22 
!-------------------- 
 
betaYe221  = Abslam*Ye22 + AbsYe11*Ye22 + AbsYe33*Ye22 + AbsYv22*Ye22 -               & 
&  (9*g1p2*Ye22)/5._dp - 3*g2p2*Ye22 - 2*gpp2*Qe2p2*Ye22 - 2*gpp2*QHdp2*Ye22 -           & 
&  2*gpp2*Ql2p2*Ye22 + 3*TrYdadjYd*Ye22 + 4*Ye22p2*Conjg(Ye22)

 
 
If (TwoLoopRGE) Then 
betaYe222 = (Ye22*(-10*Abslam*AbsYv11 - 20*Abslam*AbsYv22 - 10*AbsYv11*AbsYv22 - 10*Abslam*AbsYv33 -& 
&  10*AbsYe33*AbsYv33 - 10*AbsYv22*AbsYv33 + 12*AbsYe33*g1p2 + 135._dp*(g1p4) +          & 
&  18*g1p2*g2p2 + 75._dp*(g2p4) - 30*Clamp2*lamp2 + 72*g1p2*gpp2*Qd*Qe2 + 24*g1p2*gpp2*Qe1*Qe2 +& 
&  72*g1p2*gpp2*Qe2p2 + 180*gpp4*Qdp2*Qe2p2 + 20*gpp4*Qe1p2*Qe2p2 + 60*gpp4*Qe2p4 +      & 
&  24*g1p2*gpp2*Qe2*Qe3 + 20*AbsYe33*gpp2*Qe3p2 + 20*gpp4*Qe2p2*Qe3p2 - 36*g1p2*gpp2*Qd*QHd -& 
&  12*g1p2*gpp2*Qe1*QHd - 36*g1p2*gpp2*Qe2*QHd - 12*g1p2*gpp2*Qe3*QHd - 20*Abslam*gpp2*QHdp2 -& 
&  20*AbsYe33*gpp2*QHdp2 + 24*g1p2*gpp2*QHdp2 + 60*g2p2*gpp2*QHdp2 + 180*gpp4*Qdp2*QHdp2 +& 
&  20*gpp4*Qe1p2*QHdp2 + 60*gpp4*Qe2p2*QHdp2 + 20*gpp4*Qe3p2*QHdp2 + 80*gpp4*QHdp4 +     & 
&  24*g1p2*gpp2*Qe2*QHu - 12*g1p2*gpp2*QHd*QHu + 20*Abslam*gpp2*QHup2 + 20*AbsYv22*gpp2*QHup2 +& 
&  40*gpp4*Qe2p2*QHup2 + 40*gpp4*QHdp2*QHup2 - 24*g1p2*gpp2*Qe2*Ql1 + 12*g1p2*gpp2*QHd*Ql1 +& 
&  40*gpp4*Qe2p2*Ql1p2 + 40*gpp4*QHdp2*Ql1p2 + 2*AbsYe11*(-15._dp*(AbsYe22) -            & 
&  5._dp*(AbsYv11) + 6._dp*(g1p2) + 10*gpp2*Qe1p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql1p2) -     & 
&  36*g1p2*gpp2*Qd*Ql2 - 12*g1p2*gpp2*Qe1*Ql2 - 36*g1p2*gpp2*Qe2*Ql2 - 12*g1p2*gpp2*Qe3*Ql2 +& 
&  24*g1p2*gpp2*QHd*Ql2 - 12*g1p2*gpp2*QHu*Ql2 + 12*g1p2*gpp2*Ql1*Ql2 - 20*AbsYv22*gpp2*Ql2p2 +& 
&  24*g1p2*gpp2*Ql2p2 + 60*g2p2*gpp2*Ql2p2 + 180*gpp4*Qdp2*Ql2p2 + 20*gpp4*Qe1p2*Ql2p2 + & 
&  60*gpp4*Qe2p2*Ql2p2 + 20*gpp4*Qe3p2*Ql2p2 + 80*gpp4*QHdp2*Ql2p2 + 40*gpp4*QHup2*Ql2p2 +& 
&  40*gpp4*Ql1p2*Ql2p2 + 80*gpp4*Ql2p4 - 24*g1p2*gpp2*Qe2*Ql3 + 12*g1p2*gpp2*QHd*Ql3 +   & 
&  12*g1p2*gpp2*Ql2*Ql3 + 20*AbsYe33*gpp2*Ql3p2 + 40*gpp4*Qe2p2*Ql3p2 + 40*gpp4*QHdp2*Ql3p2 +& 
&  40*gpp4*Ql2p2*Ql3p2 + 72*g1p2*gpp2*Qe2*Qq - 36*g1p2*gpp2*QHd*Qq - 36*g1p2*gpp2*Ql2*Qq +& 
&  360*gpp4*Qe2p2*Qqp2 + 360*gpp4*QHdp2*Qqp2 + 360*gpp4*Ql2p2*Qqp2 + 20*Abslam*gpp2*Qsp2 +& 
&  20*gpp4*Qe2p2*Qsp2 + 20*gpp4*QHdp2*Qsp2 + 20*gpp4*Ql2p2*Qsp2 - 144*g1p2*gpp2*Qe2*Qu + & 
&  72*g1p2*gpp2*QHd*Qu + 72*g1p2*gpp2*Ql2*Qu + 180*gpp4*Qe2p2*Qup2 + 180*gpp4*QHdp2*Qup2 +& 
&  180*gpp4*Ql2p2*Qup2 + 20*gpp4*Qe2p2*Qv1p2 + 20*gpp4*QHdp2*Qv1p2 + 20*gpp4*Ql2p2*Qv1p2 +& 
&  20*AbsYv22*gpp2*Qv2p2 + 20*gpp4*Qe2p2*Qv2p2 + 20*gpp4*QHdp2*Qv2p2 + 20*gpp4*Ql2p2*Qv2p2 +& 
&  20*gpp4*Qe2p2*Qv3p2 + 20*gpp4*QHdp2*Qv3p2 + 20*gpp4*Ql2p2*Qv3p2 + 2*AbsYe22*(-        & 
& 15._dp*(Abslam) - 15._dp*(AbsYe33) - 15._dp*(AbsYv22) + 6._dp*(g1p2) + 30._dp*(g2p2) + & 
&  20*gpp2*QHdp2 + 20*gpp2*Ql2p2 - 45._dp*(TrYdadjYd)) - 4*g1p2*TrYdadjYd +              & 
&  160*g3p2*TrYdadjYd + 60*gpp2*Qdp2*TrYdadjYd - 60*gpp2*QHdp2*TrYdadjYd +               & 
&  60*gpp2*Qqp2*TrYdadjYd - 90._dp*(TrYdadjYdYdadjYd) - 30._dp*(TrYdadjYuYuadjYd) -      & 
&  30*Abslam*TrYuadjYu - 30*AbsYv22*TrYuadjYu - 30*CYe11p2*Ye11p2 - 100*CYe22p2*Ye22p2 - & 
&  30*CYe33p2*Ye33p2 - 30*CYv22p2*Yv22p2))/10._dp

 
DYe22 = oo16pi2*( betaYe221 + oo16pi2 * betaYe222 ) 

 
Else 
DYe22 = oo16pi2* betaYe221 
End If 
 
 
Call Chop(DYe22) 

!-------------------- 
! Ye33 
!-------------------- 
 
betaYe331  = Abslam*Ye33 + AbsYe11*Ye33 + AbsYe22*Ye33 + AbsYv33*Ye33 -               & 
&  (9*g1p2*Ye33)/5._dp - 3*g2p2*Ye33 - 2*gpp2*Qe3p2*Ye33 - 2*gpp2*QHdp2*Ye33 -           & 
&  2*gpp2*Ql3p2*Ye33 + 3*TrYdadjYd*Ye33 + 4*Ye33p2*Conjg(Ye33)

 
 
If (TwoLoopRGE) Then 
betaYe332 = (Ye33*(-30*Abslam*AbsYe33 - 10*Abslam*AbsYv11 - 10*Abslam*AbsYv22 - 20*Abslam*AbsYv33 -& 
&  30*AbsYe33*AbsYv33 - 10*AbsYv11*AbsYv33 - 10*AbsYv22*AbsYv33 + 12*AbsYe33*g1p2 +      & 
&  135._dp*(g1p4) + 60*AbsYe33*g2p2 + 18*g1p2*g2p2 + 75._dp*(g2p4) - 30*Clamp2*lamp2 +   & 
&  72*g1p2*gpp2*Qd*Qe3 + 24*g1p2*gpp2*Qe1*Qe3 + 24*g1p2*gpp2*Qe2*Qe3 + 72*g1p2*gpp2*Qe3p2 +& 
&  180*gpp4*Qdp2*Qe3p2 + 20*gpp4*Qe1p2*Qe3p2 + 20*gpp4*Qe2p2*Qe3p2 + 60*gpp4*Qe3p4 -     & 
&  36*g1p2*gpp2*Qd*QHd - 12*g1p2*gpp2*Qe1*QHd - 12*g1p2*gpp2*Qe2*QHd - 36*g1p2*gpp2*Qe3*QHd -& 
&  20*Abslam*gpp2*QHdp2 + 40*AbsYe33*gpp2*QHdp2 + 24*g1p2*gpp2*QHdp2 + 60*g2p2*gpp2*QHdp2 +& 
&  180*gpp4*Qdp2*QHdp2 + 20*gpp4*Qe1p2*QHdp2 + 20*gpp4*Qe2p2*QHdp2 + 60*gpp4*Qe3p2*QHdp2 +& 
&  80*gpp4*QHdp4 + 24*g1p2*gpp2*Qe3*QHu - 12*g1p2*gpp2*QHd*QHu + 20*Abslam*gpp2*QHup2 +  & 
&  20*AbsYv33*gpp2*QHup2 + 40*gpp4*Qe3p2*QHup2 + 40*gpp4*QHdp2*QHup2 - 24*g1p2*gpp2*Qe3*Ql1 +& 
&  12*g1p2*gpp2*QHd*Ql1 + 40*gpp4*Qe3p2*Ql1p2 + 40*gpp4*QHdp2*Ql1p2 + 2*AbsYe11*(-       & 
& 15._dp*(AbsYe33) - 5._dp*(AbsYv11) + 6._dp*(g1p2) + 10*gpp2*Qe1p2 - 10*gpp2*QHdp2 +    & 
&  10*gpp2*Ql1p2) - 24*g1p2*gpp2*Qe3*Ql2 + 12*g1p2*gpp2*QHd*Ql2 + 40*gpp4*Qe3p2*Ql2p2 +  & 
&  40*gpp4*QHdp2*Ql2p2 + 2*AbsYe22*(-15._dp*(AbsYe33) - 5._dp*(AbsYv22) + 6._dp*(g1p2) + & 
&  10*gpp2*Qe2p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql2p2) - 36*g1p2*gpp2*Qd*Ql3 - 12*g1p2*gpp2*Qe1*Ql3 -& 
&  12*g1p2*gpp2*Qe2*Ql3 - 36*g1p2*gpp2*Qe3*Ql3 + 24*g1p2*gpp2*QHd*Ql3 - 12*g1p2*gpp2*QHu*Ql3 +& 
&  12*g1p2*gpp2*Ql1*Ql3 + 12*g1p2*gpp2*Ql2*Ql3 + 40*AbsYe33*gpp2*Ql3p2 - 20*AbsYv33*gpp2*Ql3p2 +& 
&  24*g1p2*gpp2*Ql3p2 + 60*g2p2*gpp2*Ql3p2 + 180*gpp4*Qdp2*Ql3p2 + 20*gpp4*Qe1p2*Ql3p2 + & 
&  20*gpp4*Qe2p2*Ql3p2 + 60*gpp4*Qe3p2*Ql3p2 + 80*gpp4*QHdp2*Ql3p2 + 40*gpp4*QHup2*Ql3p2 +& 
&  40*gpp4*Ql1p2*Ql3p2 + 40*gpp4*Ql2p2*Ql3p2 + 80*gpp4*Ql3p4 + 72*g1p2*gpp2*Qe3*Qq -     & 
&  36*g1p2*gpp2*QHd*Qq - 36*g1p2*gpp2*Ql3*Qq + 360*gpp4*Qe3p2*Qqp2 + 360*gpp4*QHdp2*Qqp2 +& 
&  360*gpp4*Ql3p2*Qqp2 + 20*Abslam*gpp2*Qsp2 + 20*gpp4*Qe3p2*Qsp2 + 20*gpp4*QHdp2*Qsp2 + & 
&  20*gpp4*Ql3p2*Qsp2 - 144*g1p2*gpp2*Qe3*Qu + 72*g1p2*gpp2*QHd*Qu + 72*g1p2*gpp2*Ql3*Qu +& 
&  180*gpp4*Qe3p2*Qup2 + 180*gpp4*QHdp2*Qup2 + 180*gpp4*Ql3p2*Qup2 + 20*gpp4*Qe3p2*Qv1p2 +& 
&  20*gpp4*QHdp2*Qv1p2 + 20*gpp4*Ql3p2*Qv1p2 + 20*gpp4*Qe3p2*Qv2p2 + 20*gpp4*QHdp2*Qv2p2 +& 
&  20*gpp4*Ql3p2*Qv2p2 + 20*AbsYv33*gpp2*Qv3p2 + 20*gpp4*Qe3p2*Qv3p2 + 20*gpp4*QHdp2*Qv3p2 +& 
&  20*gpp4*Ql3p2*Qv3p2 - 90*AbsYe33*TrYdadjYd - 4*g1p2*TrYdadjYd + 160*g3p2*TrYdadjYd +  & 
&  60*gpp2*Qdp2*TrYdadjYd - 60*gpp2*QHdp2*TrYdadjYd + 60*gpp2*Qqp2*TrYdadjYd -           & 
&  90._dp*(TrYdadjYdYdadjYd) - 30._dp*(TrYdadjYuYuadjYd) - 30*Abslam*TrYuadjYu -         & 
&  30*AbsYv33*TrYuadjYu - 30*CYe11p2*Ye11p2 - 30*CYe22p2*Ye22p2 - 100*CYe33p2*Ye33p2 -   & 
&  30*CYv33p2*Yv33p2))/10._dp

 
DYe33 = oo16pi2*( betaYe331 + oo16pi2 * betaYe332 ) 

 
Else 
DYe33 = oo16pi2* betaYe331 
End If 
 
 
Call Chop(DYe33) 

!-------------------- 
! lam 
!-------------------- 
 
betalam1  = AbsYe11*lam + AbsYe22*lam + AbsYe33*lam + AbsYv11*lam + AbsYv22*lam +     & 
&  AbsYv33*lam - (3*g1p2*lam)/5._dp - 3*g2p2*lam - 2*gpp2*QHdp2*lam - 2*gpp2*QHup2*lam - & 
&  2*gpp2*Qsp2*lam + 3*TrYdadjYd*lam + 3*TrYuadjYu*lam + 4*lamp2*Conjg(lam)

 
 
If (TwoLoopRGE) Then 
betalam2 = -10*Clamp2*lamp3 - 2*AbsYe33*AbsYv33*lam + (6*AbsYe33*g1p2*lam)/5._dp +               & 
&  (207*g1p4*lam)/50._dp + (9*g1p2*g2p2*lam)/5._dp + (15*g2p4*lam)/2._dp +               & 
&  2*AbsYe33*gpp2*Qe3p2*lam - (18*g1p2*gpp2*Qd*QHd*lam)/5._dp - (6*g1p2*gpp2*Qe1*QHd*lam)/5._dp -& 
&  (6*g1p2*gpp2*Qe2*QHd*lam)/5._dp - (6*g1p2*gpp2*Qe3*QHd*lam)/5._dp - 2*AbsYe33*gpp2*QHdp2*lam +& 
&  (12*g1p2*gpp2*QHdp2*lam)/5._dp + 6*g2p2*gpp2*QHdp2*lam + 18*gpp4*Qdp2*QHdp2*lam +     & 
&  2*gpp4*Qe1p2*QHdp2*lam + 2*gpp4*Qe2p2*QHdp2*lam + 2*gpp4*Qe3p2*QHdp2*lam +            & 
&  8*gpp4*QHdp4*lam + (18*g1p2*gpp2*Qd*QHu*lam)/5._dp + (6*g1p2*gpp2*Qe1*QHu*lam)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*lam)/5._dp + (6*g1p2*gpp2*Qe3*QHu*lam)/5._dp - (12*g1p2*gpp2*QHd*QHu*lam)/5._dp -& 
&  2*AbsYv11*gpp2*QHup2*lam - 2*AbsYv22*gpp2*QHup2*lam - 2*AbsYv33*gpp2*QHup2*lam +      & 
&  (12*g1p2*gpp2*QHup2*lam)/5._dp + 6*g2p2*gpp2*QHup2*lam + 18*gpp4*Qdp2*QHup2*lam +     & 
&  2*gpp4*Qe1p2*QHup2*lam + 2*gpp4*Qe2p2*QHup2*lam + 2*gpp4*Qe3p2*QHup2*lam +            & 
&  8*gpp4*QHdp2*QHup2*lam + 8*gpp4*QHup4*lam + (6*g1p2*gpp2*QHd*Ql1*lam)/5._dp -         & 
&  (6*g1p2*gpp2*QHu*Ql1*lam)/5._dp + 2*AbsYv11*gpp2*Ql1p2*lam + 4*gpp4*QHdp2*Ql1p2*lam + & 
&  4*gpp4*QHup2*Ql1p2*lam - (AbsYe11*(15._dp*(Abslam) + 10._dp*(AbsYv11) -               & 
&  6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*lam)/5._dp + (6*g1p2*gpp2*QHd*Ql2*lam)/5._dp -& 
&  (6*g1p2*gpp2*QHu*Ql2*lam)/5._dp + 2*AbsYv22*gpp2*Ql2p2*lam + 4*gpp4*QHdp2*Ql2p2*lam + & 
&  4*gpp4*QHup2*Ql2p2*lam - (AbsYe22*(15._dp*(Abslam) + 10._dp*(AbsYv22) -               & 
&  6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*lam)/5._dp + (6*g1p2*gpp2*QHd*Ql3*lam)/5._dp -& 
&  (6*g1p2*gpp2*QHu*Ql3*lam)/5._dp + 2*AbsYe33*gpp2*Ql3p2*lam + 2*AbsYv33*gpp2*Ql3p2*lam +& 
&  4*gpp4*QHdp2*Ql3p2*lam + 4*gpp4*QHup2*Ql3p2*lam - (18*g1p2*gpp2*QHd*Qq*lam)/5._dp +   & 
&  (18*g1p2*gpp2*QHu*Qq*lam)/5._dp + 36*gpp4*QHdp2*Qqp2*lam + 36*gpp4*QHup2*Qqp2*lam  
betalam2 =  betalam2+ 18*gpp4*Qdp2*Qsp2*lam + 2*gpp4*Qe1p2*Qsp2*lam + 2*gpp4*Qe2p2*Qsp2*lam +               & 
&  2*gpp4*Qe3p2*Qsp2*lam + 6*gpp4*QHdp2*Qsp2*lam + 6*gpp4*QHup2*Qsp2*lam +               & 
&  4*gpp4*Ql1p2*Qsp2*lam + 4*gpp4*Ql2p2*Qsp2*lam + 4*gpp4*Ql3p2*Qsp2*lam +               & 
&  36*gpp4*Qqp2*Qsp2*lam + 6*gpp4*Qsp4*lam + (36*g1p2*gpp2*QHd*Qu*lam)/5._dp -           & 
&  (36*g1p2*gpp2*QHu*Qu*lam)/5._dp + 18*gpp4*QHdp2*Qup2*lam + 18*gpp4*QHup2*Qup2*lam +   & 
&  18*gpp4*Qsp2*Qup2*lam + 2*AbsYv11*gpp2*Qv1p2*lam + 2*gpp4*QHdp2*Qv1p2*lam +           & 
&  2*gpp4*QHup2*Qv1p2*lam + 2*gpp4*Qsp2*Qv1p2*lam + 2*AbsYv22*gpp2*Qv2p2*lam +           & 
&  2*gpp4*QHdp2*Qv2p2*lam + 2*gpp4*QHup2*Qv2p2*lam + 2*gpp4*Qsp2*Qv2p2*lam +             & 
&  2*AbsYv33*gpp2*Qv3p2*lam + 2*gpp4*QHdp2*Qv3p2*lam + 2*gpp4*QHup2*Qv3p2*lam +          & 
&  2*gpp4*Qsp2*Qv3p2*lam - (2*g1p2*TrYdadjYd*lam)/5._dp + 16*g3p2*TrYdadjYd*lam +        & 
&  6*gpp2*Qdp2*TrYdadjYd*lam - 6*gpp2*QHdp2*TrYdadjYd*lam + 6*gpp2*Qqp2*TrYdadjYd*lam -  & 
&  9*TrYdadjYdYdadjYd*lam - 6*TrYdadjYuYuadjYd*lam + (4*g1p2*TrYuadjYu*lam)/5._dp +      & 
&  16*g3p2*TrYuadjYu*lam - 6*gpp2*QHup2*TrYuadjYu*lam + 6*gpp2*Qqp2*TrYuadjYu*lam +      & 
&  6*gpp2*Qup2*TrYuadjYu*lam - 9*TrYuadjYuYuadjYu*lam - 3*CYe11p2*Ye11p2*lam -           & 
&  3*CYe22p2*Ye22p2*lam - 3*CYe33p2*Ye33p2*lam - 3*CYv11p2*Yv11p2*lam - 3*CYv22p2*Yv22p2*lam -& 
&  3*CYv33p2*Yv33p2*lam - 3*AbsYe33*lamp2*Conjg(lam) - 3*AbsYv11*lamp2*Conjg(lam) -      & 
&  3*AbsYv22*lamp2*Conjg(lam) - 3*AbsYv33*lamp2*Conjg(lam) + (6*g1p2*lamp2*Conjg(lam))/5._dp +& 
&  6*g2p2*lamp2*Conjg(lam) + 4*gpp2*lamp2*QHdp2*Conjg(lam) + 4*gpp2*lamp2*QHup2*Conjg(lam) -& 
&  9*lamp2*TrYdadjYd*Conjg(lam) - 9*lamp2*TrYuadjYu*Conjg(lam)

 
Dlam = oo16pi2*( betalam1 + oo16pi2 * betalam2 ) 

 
Else 
Dlam = oo16pi2* betalam1 
End If 
 
 
Call Chop(Dlam) 

!-------------------- 
! Yv11 
!-------------------- 
 
betaYv111  = Abslam*Yv11 + AbsYe11*Yv11 + AbsYv22*Yv11 + AbsYv33*Yv11 -               & 
&  (3*g1p2*Yv11)/5._dp - 3*g2p2*Yv11 - 2*gpp2*QHup2*Yv11 - 2*gpp2*Ql1p2*Yv11 -           & 
&  2*gpp2*Qv1p2*Yv11 + 3*TrYuadjYu*Yv11 + 4*Yv11p2*Conjg(Yv11)

 
 
If (TwoLoopRGE) Then 
betaYv112 = -(Abslam*AbsYe22*Yv11) - Abslam*AbsYe33*Yv11 - AbsYe22*AbsYv22*Yv11 - AbsYe33*AbsYv33*Yv11 +& 
&  (207*g1p4*Yv11)/50._dp + (9*g1p2*g2p2*Yv11)/5._dp + (15*g2p4*Yv11)/2._dp -            & 
&  3*Clamp2*lamp2*Yv11 + 2*Abslam*gpp2*QHdp2*Yv11 + (18*g1p2*gpp2*Qd*QHu*Yv11)/5._dp +   & 
&  (6*g1p2*gpp2*Qe1*QHu*Yv11)/5._dp + (6*g1p2*gpp2*Qe2*QHu*Yv11)/5._dp + (6*g1p2*gpp2*Qe3*QHu*Yv11)/5._dp -& 
&  (6*g1p2*gpp2*QHd*QHu*Yv11)/5._dp - 2*Abslam*gpp2*QHup2*Yv11 - 2*AbsYv22*gpp2*QHup2*Yv11 -& 
&  2*AbsYv33*gpp2*QHup2*Yv11 + (12*g1p2*gpp2*QHup2*Yv11)/5._dp + 6*g2p2*gpp2*QHup2*Yv11 +& 
&  18*gpp4*Qdp2*QHup2*Yv11 + 2*gpp4*Qe1p2*QHup2*Yv11 + 2*gpp4*Qe2p2*QHup2*Yv11 +         & 
&  2*gpp4*Qe3p2*QHup2*Yv11 + 4*gpp4*QHdp2*QHup2*Yv11 + 8*gpp4*QHup4*Yv11 -               & 
&  (18*g1p2*gpp2*Qd*Ql1*Yv11)/5._dp - (6*g1p2*gpp2*Qe1*Ql1*Yv11)/5._dp - (6*g1p2*gpp2*Qe2*Ql1*Yv11)/5._dp -& 
&  (6*g1p2*gpp2*Qe3*Ql1*Yv11)/5._dp + (6*g1p2*gpp2*QHd*Ql1*Yv11)/5._dp - (12*g1p2*gpp2*QHu*Ql1*Yv11)/5._dp +& 
&  (12*g1p2*gpp2*Ql1p2*Yv11)/5._dp + 6*g2p2*gpp2*Ql1p2*Yv11 + 18*gpp4*Qdp2*Ql1p2*Yv11 +  & 
&  2*gpp4*Qe1p2*Ql1p2*Yv11 + 2*gpp4*Qe2p2*Ql1p2*Yv11 + 2*gpp4*Qe3p2*Ql1p2*Yv11 +         & 
&  4*gpp4*QHdp2*Ql1p2*Yv11 + 8*gpp4*QHup2*Ql1p2*Yv11 + 8*gpp4*Ql1p4*Yv11 -               & 
&  (6*g1p2*gpp2*QHu*Ql2*Yv11)/5._dp + (6*g1p2*gpp2*Ql1*Ql2*Yv11)/5._dp + 2*AbsYv22*gpp2*Ql2p2*Yv11 +& 
&  4*gpp4*QHup2*Ql2p2*Yv11 + 4*gpp4*Ql1p2*Ql2p2*Yv11 - (6*g1p2*gpp2*QHu*Ql3*Yv11)/5._dp +& 
&  (6*g1p2*gpp2*Ql1*Ql3*Yv11)/5._dp + 2*AbsYv33*gpp2*Ql3p2*Yv11 + 4*gpp4*QHup2*Ql3p2*Yv11 +& 
&  4*gpp4*Ql1p2*Ql3p2*Yv11 + (18*g1p2*gpp2*QHu*Qq*Yv11)/5._dp - (18*g1p2*gpp2*Ql1*Qq*Yv11)/5._dp +& 
&  36*gpp4*QHup2*Qqp2*Yv11 + 36*gpp4*Ql1p2*Qqp2*Yv11 + 2*Abslam*gpp2*Qsp2*Yv11 +         & 
&  2*gpp4*QHup2*Qsp2*Yv11 + 2*gpp4*Ql1p2*Qsp2*Yv11 - (36*g1p2*gpp2*QHu*Qu*Yv11)/5._dp +  & 
&  (36*g1p2*gpp2*Ql1*Qu*Yv11)/5._dp + 18*gpp4*QHup2*Qup2*Yv11 + 18*gpp4*Ql1p2*Qup2*Yv11 +& 
&  18*gpp4*Qdp2*Qv1p2*Yv11 + 2*gpp4*Qe1p2*Qv1p2*Yv11 + 2*gpp4*Qe2p2*Qv1p2*Yv11  
betaYv112 =  betaYv112+ 2*gpp4*Qe3p2*Qv1p2*Yv11 + 4*gpp4*QHdp2*Qv1p2*Yv11 + 6*gpp4*QHup2*Qv1p2*Yv11 +         & 
&  6*gpp4*Ql1p2*Qv1p2*Yv11 + 4*gpp4*Ql2p2*Qv1p2*Yv11 + 4*gpp4*Ql3p2*Qv1p2*Yv11 +         & 
&  36*gpp4*Qqp2*Qv1p2*Yv11 + 2*gpp4*Qsp2*Qv1p2*Yv11 + 18*gpp4*Qup2*Qv1p2*Yv11 +          & 
&  6*gpp4*Qv1p4*Yv11 + 2*AbsYv22*gpp2*Qv2p2*Yv11 + 2*gpp4*QHup2*Qv2p2*Yv11 +             & 
&  2*gpp4*Ql1p2*Qv2p2*Yv11 + 2*gpp4*Qv1p2*Qv2p2*Yv11 + 2*AbsYv33*gpp2*Qv3p2*Yv11 +       & 
&  2*gpp4*QHup2*Qv3p2*Yv11 + 2*gpp4*Ql1p2*Qv3p2*Yv11 + 2*gpp4*Qv1p2*Qv3p2*Yv11 -         & 
&  3*Abslam*TrYdadjYd*Yv11 - (AbsYe11*(10._dp*(Abslam) + 5._dp*(AbsYe22) +               & 
&  5._dp*(AbsYe33) + 15._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*Qe1p2 - 10*gpp2*QHdp2 +   & 
&  10*gpp2*Ql1p2 + 15._dp*(TrYdadjYd))*Yv11)/5._dp - 3*TrYdadjYuYuadjYd*Yv11 +           & 
&  (4*g1p2*TrYuadjYu*Yv11)/5._dp + 16*g3p2*TrYuadjYu*Yv11 - 6*gpp2*QHup2*TrYuadjYu*Yv11 +& 
&  6*gpp2*Qqp2*TrYuadjYu*Yv11 + 6*gpp2*Qup2*TrYuadjYu*Yv11 - 9*TrYuadjYuYuadjYu*Yv11 -   & 
&  3*CYe11p2*Ye11p2*Yv11 - 10*CYv11p2*Yv11p3 - 3*CYv22p2*Yv11*Yv22p2 - 3*CYv33p2*Yv11*Yv33p2 +& 
&  ((-15._dp*(Abslam) - 15._dp*(AbsYv22) - 15._dp*(AbsYv33) + 6._dp*(g1p2) +             & 
&  30._dp*(g2p2) + 20*gpp2*QHup2 + 20*gpp2*Ql1p2 - 45._dp*(TrYuadjYu))*Yv11p2*Conjg(Yv11))/5._dp

 
DYv11 = oo16pi2*( betaYv111 + oo16pi2 * betaYv112 ) 

 
Else 
DYv11 = oo16pi2* betaYv111 
End If 
 
 
Call Chop(DYv11) 

!-------------------- 
! Yv22 
!-------------------- 
 
betaYv221  = Abslam*Yv22 + AbsYe22*Yv22 + AbsYv11*Yv22 + AbsYv33*Yv22 -               & 
&  (3*g1p2*Yv22)/5._dp - 3*g2p2*Yv22 - 2*gpp2*QHup2*Yv22 - 2*gpp2*Ql2p2*Yv22 -           & 
&  2*gpp2*Qv2p2*Yv22 + 3*TrYuadjYu*Yv22 + 4*Yv22p2*Conjg(Yv22)

 
 
If (TwoLoopRGE) Then 
betaYv222 = -(Abslam*AbsYe11*Yv22) - Abslam*AbsYe33*Yv22 - AbsYe33*AbsYv33*Yv22 + (207*g1p4*Yv22)/50._dp +& 
&  (9*g1p2*g2p2*Yv22)/5._dp + (15*g2p4*Yv22)/2._dp - 3*Clamp2*lamp2*Yv22 +               & 
&  2*Abslam*gpp2*QHdp2*Yv22 + (18*g1p2*gpp2*Qd*QHu*Yv22)/5._dp + (6*g1p2*gpp2*Qe1*QHu*Yv22)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*Yv22)/5._dp + (6*g1p2*gpp2*Qe3*QHu*Yv22)/5._dp - (6*g1p2*gpp2*QHd*QHu*Yv22)/5._dp -& 
&  2*Abslam*gpp2*QHup2*Yv22 - 2*AbsYv33*gpp2*QHup2*Yv22 + (12*g1p2*gpp2*QHup2*Yv22)/5._dp +& 
&  6*g2p2*gpp2*QHup2*Yv22 + 18*gpp4*Qdp2*QHup2*Yv22 + 2*gpp4*Qe1p2*QHup2*Yv22 +          & 
&  2*gpp4*Qe2p2*QHup2*Yv22 + 2*gpp4*Qe3p2*QHup2*Yv22 + 4*gpp4*QHdp2*QHup2*Yv22 +         & 
&  8*gpp4*QHup4*Yv22 - (6*g1p2*gpp2*QHu*Ql1*Yv22)/5._dp + 4*gpp4*QHup2*Ql1p2*Yv22 -      & 
&  (18*g1p2*gpp2*Qd*Ql2*Yv22)/5._dp - (6*g1p2*gpp2*Qe1*Ql2*Yv22)/5._dp - (6*g1p2*gpp2*Qe2*Ql2*Yv22)/5._dp -& 
&  (6*g1p2*gpp2*Qe3*Ql2*Yv22)/5._dp + (6*g1p2*gpp2*QHd*Ql2*Yv22)/5._dp - (12*g1p2*gpp2*QHu*Ql2*Yv22)/5._dp +& 
&  (6*g1p2*gpp2*Ql1*Ql2*Yv22)/5._dp + (12*g1p2*gpp2*Ql2p2*Yv22)/5._dp + 6*g2p2*gpp2*Ql2p2*Yv22 +& 
&  18*gpp4*Qdp2*Ql2p2*Yv22 + 2*gpp4*Qe1p2*Ql2p2*Yv22 + 2*gpp4*Qe2p2*Ql2p2*Yv22 +         & 
&  2*gpp4*Qe3p2*Ql2p2*Yv22 + 4*gpp4*QHdp2*Ql2p2*Yv22 + 8*gpp4*QHup2*Ql2p2*Yv22 +         & 
&  4*gpp4*Ql1p2*Ql2p2*Yv22 + 8*gpp4*Ql2p4*Yv22 - (6*g1p2*gpp2*QHu*Ql3*Yv22)/5._dp +      & 
&  (6*g1p2*gpp2*Ql2*Ql3*Yv22)/5._dp + 2*AbsYv33*gpp2*Ql3p2*Yv22 + 4*gpp4*QHup2*Ql3p2*Yv22 +& 
&  4*gpp4*Ql2p2*Ql3p2*Yv22 + (18*g1p2*gpp2*QHu*Qq*Yv22)/5._dp - (18*g1p2*gpp2*Ql2*Qq*Yv22)/5._dp +& 
&  36*gpp4*QHup2*Qqp2*Yv22 + 36*gpp4*Ql2p2*Qqp2*Yv22 + 2*Abslam*gpp2*Qsp2*Yv22 +         & 
&  2*gpp4*QHup2*Qsp2*Yv22 + 2*gpp4*Ql2p2*Qsp2*Yv22 - (36*g1p2*gpp2*QHu*Qu*Yv22)/5._dp +  & 
&  (36*g1p2*gpp2*Ql2*Qu*Yv22)/5._dp + 18*gpp4*QHup2*Qup2*Yv22 + 18*gpp4*Ql2p2*Qup2*Yv22 -& 
&  AbsYv11*(AbsYe11 + 3._dp*(AbsYv22) + 2*gpp2*(QHup2 - Ql1p2 - Qv1p2))*Yv22 +           & 
&  2*gpp4*QHup2*Qv1p2*Yv22 + 2*gpp4*Ql2p2*Qv1p2*Yv22 + 18*gpp4*Qdp2*Qv2p2*Yv22  
betaYv222 =  betaYv222+ 2*gpp4*Qe1p2*Qv2p2*Yv22 + 2*gpp4*Qe2p2*Qv2p2*Yv22 + 2*gpp4*Qe3p2*Qv2p2*Yv22 +         & 
&  4*gpp4*QHdp2*Qv2p2*Yv22 + 6*gpp4*QHup2*Qv2p2*Yv22 + 4*gpp4*Ql1p2*Qv2p2*Yv22 +         & 
&  6*gpp4*Ql2p2*Qv2p2*Yv22 + 4*gpp4*Ql3p2*Qv2p2*Yv22 + 36*gpp4*Qqp2*Qv2p2*Yv22 +         & 
&  2*gpp4*Qsp2*Qv2p2*Yv22 + 18*gpp4*Qup2*Qv2p2*Yv22 + 2*gpp4*Qv1p2*Qv2p2*Yv22 +          & 
&  6*gpp4*Qv2p4*Yv22 + 2*AbsYv33*gpp2*Qv3p2*Yv22 + 2*gpp4*QHup2*Qv3p2*Yv22 +             & 
&  2*gpp4*Ql2p2*Qv3p2*Yv22 + 2*gpp4*Qv2p2*Qv3p2*Yv22 - 3*Abslam*TrYdadjYd*Yv22 -         & 
&  (AbsYe22*(10._dp*(Abslam) + 5._dp*(AbsYe11) + 5._dp*(AbsYe33) + 15._dp*(AbsYv22) -    & 
&  6._dp*(g1p2) - 10*gpp2*Qe2p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql2p2 + 15._dp*(TrYdadjYd))*Yv22)/5._dp -& 
&  3*TrYdadjYuYuadjYd*Yv22 + (4*g1p2*TrYuadjYu*Yv22)/5._dp + 16*g3p2*TrYuadjYu*Yv22 -    & 
&  6*gpp2*QHup2*TrYuadjYu*Yv22 + 6*gpp2*Qqp2*TrYuadjYu*Yv22 + 6*gpp2*Qup2*TrYuadjYu*Yv22 -& 
&  9*TrYuadjYuYuadjYu*Yv22 - 3*CYe22p2*Ye22p2*Yv22 - 3*CYv11p2*Yv11p2*Yv22 -             & 
&  10*CYv22p2*Yv22p3 - 3*CYv33p2*Yv22*Yv33p2 - 3*Abslam*Yv22p2*Conjg(Yv22) -             & 
&  3*AbsYv33*Yv22p2*Conjg(Yv22) + (6*g1p2*Yv22p2*Conjg(Yv22))/5._dp + 6*g2p2*Yv22p2*Conjg(Yv22) +& 
&  4*gpp2*QHup2*Yv22p2*Conjg(Yv22) + 4*gpp2*Ql2p2*Yv22p2*Conjg(Yv22) - 9*TrYuadjYu*Yv22p2*Conjg(Yv22)

 
DYv22 = oo16pi2*( betaYv221 + oo16pi2 * betaYv222 ) 

 
Else 
DYv22 = oo16pi2* betaYv221 
End If 
 
 
Call Chop(DYv22) 

!-------------------- 
! Yv33 
!-------------------- 
 
betaYv331  = Abslam*Yv33 + AbsYe33*Yv33 + AbsYv11*Yv33 + AbsYv22*Yv33 -               & 
&  (3*g1p2*Yv33)/5._dp - 3*g2p2*Yv33 - 2*gpp2*QHup2*Yv33 - 2*gpp2*Ql3p2*Yv33 -           & 
&  2*gpp2*Qv3p2*Yv33 + 3*TrYuadjYu*Yv33 + 4*Yv33p2*Conjg(Yv33)

 
 
If (TwoLoopRGE) Then 
betaYv332 = -(Abslam*AbsYe11*Yv33) - Abslam*AbsYe22*Yv33 - AbsYe22*AbsYv22*Yv33 + (207*g1p4*Yv33)/50._dp +& 
&  (9*g1p2*g2p2*Yv33)/5._dp + (15*g2p4*Yv33)/2._dp - 3*Clamp2*lamp2*Yv33 +               & 
&  2*Abslam*gpp2*QHdp2*Yv33 + (18*g1p2*gpp2*Qd*QHu*Yv33)/5._dp + (6*g1p2*gpp2*Qe1*QHu*Yv33)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*Yv33)/5._dp + (6*g1p2*gpp2*Qe3*QHu*Yv33)/5._dp - (6*g1p2*gpp2*QHd*QHu*Yv33)/5._dp -& 
&  2*Abslam*gpp2*QHup2*Yv33 - 2*AbsYv22*gpp2*QHup2*Yv33 + (12*g1p2*gpp2*QHup2*Yv33)/5._dp +& 
&  6*g2p2*gpp2*QHup2*Yv33 + 18*gpp4*Qdp2*QHup2*Yv33 + 2*gpp4*Qe1p2*QHup2*Yv33 +          & 
&  2*gpp4*Qe2p2*QHup2*Yv33 + 2*gpp4*Qe3p2*QHup2*Yv33 + 4*gpp4*QHdp2*QHup2*Yv33 +         & 
&  8*gpp4*QHup4*Yv33 - (6*g1p2*gpp2*QHu*Ql1*Yv33)/5._dp + 4*gpp4*QHup2*Ql1p2*Yv33 -      & 
&  (6*g1p2*gpp2*QHu*Ql2*Yv33)/5._dp + 2*AbsYv22*gpp2*Ql2p2*Yv33 + 4*gpp4*QHup2*Ql2p2*Yv33 -& 
&  (18*g1p2*gpp2*Qd*Ql3*Yv33)/5._dp - (6*g1p2*gpp2*Qe1*Ql3*Yv33)/5._dp - (6*g1p2*gpp2*Qe2*Ql3*Yv33)/5._dp -& 
&  (6*g1p2*gpp2*Qe3*Ql3*Yv33)/5._dp + (6*g1p2*gpp2*QHd*Ql3*Yv33)/5._dp - (12*g1p2*gpp2*QHu*Ql3*Yv33)/5._dp +& 
&  (6*g1p2*gpp2*Ql1*Ql3*Yv33)/5._dp + (6*g1p2*gpp2*Ql2*Ql3*Yv33)/5._dp + (12*g1p2*gpp2*Ql3p2*Yv33)/5._dp +& 
&  6*g2p2*gpp2*Ql3p2*Yv33 + 18*gpp4*Qdp2*Ql3p2*Yv33 + 2*gpp4*Qe1p2*Ql3p2*Yv33 +          & 
&  2*gpp4*Qe2p2*Ql3p2*Yv33 + 2*gpp4*Qe3p2*Ql3p2*Yv33 + 4*gpp4*QHdp2*Ql3p2*Yv33 +         & 
&  8*gpp4*QHup2*Ql3p2*Yv33 + 4*gpp4*Ql1p2*Ql3p2*Yv33 + 4*gpp4*Ql2p2*Ql3p2*Yv33 +         & 
&  8*gpp4*Ql3p4*Yv33 + (18*g1p2*gpp2*QHu*Qq*Yv33)/5._dp - (18*g1p2*gpp2*Ql3*Qq*Yv33)/5._dp +& 
&  36*gpp4*QHup2*Qqp2*Yv33 + 36*gpp4*Ql3p2*Qqp2*Yv33 + 2*Abslam*gpp2*Qsp2*Yv33 +         & 
&  2*gpp4*QHup2*Qsp2*Yv33 + 2*gpp4*Ql3p2*Qsp2*Yv33 - (36*g1p2*gpp2*QHu*Qu*Yv33)/5._dp +  & 
&  (36*g1p2*gpp2*Ql3*Qu*Yv33)/5._dp + 18*gpp4*QHup2*Qup2*Yv33 + 18*gpp4*Ql3p2*Qup2*Yv33 -& 
&  AbsYv11*(AbsYe11 + 3._dp*(AbsYv33) + 2*gpp2*(QHup2 - Ql1p2 - Qv1p2))*Yv33 +           & 
&  2*gpp4*QHup2*Qv1p2*Yv33 + 2*gpp4*Ql3p2*Qv1p2*Yv33 + 2*AbsYv22*gpp2*Qv2p2*Yv33  
betaYv332 =  betaYv332+ 2*gpp4*QHup2*Qv2p2*Yv33 + 2*gpp4*Ql3p2*Qv2p2*Yv33 + 18*gpp4*Qdp2*Qv3p2*Yv33 +         & 
&  2*gpp4*Qe1p2*Qv3p2*Yv33 + 2*gpp4*Qe2p2*Qv3p2*Yv33 + 2*gpp4*Qe3p2*Qv3p2*Yv33 +         & 
&  4*gpp4*QHdp2*Qv3p2*Yv33 + 6*gpp4*QHup2*Qv3p2*Yv33 + 4*gpp4*Ql1p2*Qv3p2*Yv33 +         & 
&  4*gpp4*Ql2p2*Qv3p2*Yv33 + 6*gpp4*Ql3p2*Qv3p2*Yv33 + 36*gpp4*Qqp2*Qv3p2*Yv33 +         & 
&  2*gpp4*Qsp2*Qv3p2*Yv33 + 18*gpp4*Qup2*Qv3p2*Yv33 + 2*gpp4*Qv1p2*Qv3p2*Yv33 +          & 
&  2*gpp4*Qv2p2*Qv3p2*Yv33 + 6*gpp4*Qv3p4*Yv33 - 3*Abslam*TrYdadjYd*Yv33 -               & 
&  (AbsYe33*(10._dp*(Abslam) + 5._dp*(AbsYe11) + 5._dp*(AbsYe22) + 15._dp*(AbsYv33) -    & 
&  6._dp*(g1p2) - 10*gpp2*Qe3p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql3p2 + 15._dp*(TrYdadjYd))*Yv33)/5._dp -& 
&  3*TrYdadjYuYuadjYd*Yv33 + (4*g1p2*TrYuadjYu*Yv33)/5._dp + 16*g3p2*TrYuadjYu*Yv33 -    & 
&  6*gpp2*QHup2*TrYuadjYu*Yv33 + 6*gpp2*Qqp2*TrYuadjYu*Yv33 + 6*gpp2*Qup2*TrYuadjYu*Yv33 -& 
&  9*TrYuadjYuYuadjYu*Yv33 - 3*CYe33p2*Ye33p2*Yv33 - 3*CYv11p2*Yv11p2*Yv33 -             & 
&  3*CYv22p2*Yv22p2*Yv33 - 10*CYv33p2*Yv33p3 - 3*Abslam*Yv33p2*Conjg(Yv33) -             & 
&  3*AbsYv22*Yv33p2*Conjg(Yv33) + (6*g1p2*Yv33p2*Conjg(Yv33))/5._dp + 6*g2p2*Yv33p2*Conjg(Yv33) +& 
&  4*gpp2*QHup2*Yv33p2*Conjg(Yv33) + 4*gpp2*Ql3p2*Yv33p2*Conjg(Yv33) - 9*TrYuadjYu*Yv33p2*Conjg(Yv33)

 
DYv33 = oo16pi2*( betaYv331 + oo16pi2 * betaYv332 ) 

 
Else 
DYv33 = oo16pi2* betaYv331 
End If 
 
 
Call Chop(DYv33) 

!-------------------- 
! Yu 
!-------------------- 
 
betaYu1  = (Abslam + AbsYv11 + AbsYv22 + AbsYv33 - 13._dp*(g1p2)/15._dp -             & 
&  3._dp*(g2p2) - 16._dp*(g3p2)/3._dp - 2*gpp2*QHup2 - 2*gpp2*Qqp2 - 2*gpp2*Qup2 +       & 
&  3._dp*(TrYuadjYu))*Yu + YuadjYdYd + 3._dp*(YuadjYuYu)

 
 
If (TwoLoopRGE) Then 
betaYu2 = (-1._dp*(Abslam) - AbsYe11 - AbsYe22 - AbsYe33 + 2._dp*(g1p2)/5._dp + 2*gpp2*Qdp2 +   & 
&  2*gpp2*QHdp2 - 2*gpp2*Qqp2 - 3._dp*(TrYdadjYd))*YuadjYdYd - 2._dp*(YuadjYdYdadjYdYd) -& 
&  2._dp*(YuadjYdYdadjYuYu) - 3*Abslam*YuadjYuYu - 3*AbsYv11*YuadjYuYu - 3*AbsYv22*YuadjYuYu -& 
&  3*AbsYv33*YuadjYuYu + (2*g1p2*YuadjYuYu)/5._dp + 6*g2p2*YuadjYuYu + 6*gpp2*QHup2*YuadjYuYu +& 
&  2*gpp2*Qqp2*YuadjYuYu - 2*gpp2*Qup2*YuadjYuYu - 9*TrYuadjYu*YuadjYuYu -               & 
&  4._dp*(YuadjYuYuadjYuYu) + Yu*(-(Abslam*AbsYe11) - Abslam*AbsYe22 - Abslam*AbsYe33 -  & 
&  AbsYe33*AbsYv33 + 2743._dp*(g1p4)/450._dp + g1p2*g2p2 + 15._dp*(g2p4)/2._dp +         & 
&  (136*g1p2*g3p2)/45._dp + 8*g2p2*g3p2 - 16._dp*(g3p4)/9._dp - 3*Clamp2*lamp2 +         & 
&  2*Abslam*gpp2*QHdp2 + (18*g1p2*gpp2*Qd*QHu)/5._dp + (6*g1p2*gpp2*Qe1*QHu)/5._dp +     & 
&  (6*g1p2*gpp2*Qe2*QHu)/5._dp + (6*g1p2*gpp2*Qe3*QHu)/5._dp - (6*g1p2*gpp2*QHd*QHu)/5._dp -& 
&  2*Abslam*gpp2*QHup2 - 2*AbsYv33*gpp2*QHup2 + (12*g1p2*gpp2*QHup2)/5._dp +             & 
&  6*g2p2*gpp2*QHup2 + 18*gpp4*Qdp2*QHup2 + 2*gpp4*Qe1p2*QHup2 + 2*gpp4*Qe2p2*QHup2 +    & 
&  2*gpp4*Qe3p2*QHup2 + 4*gpp4*QHdp2*QHup2 + 8*gpp4*QHup4 - (6*g1p2*gpp2*QHu*Ql1)/5._dp +& 
&  4*gpp4*QHup2*Ql1p2 - (6*g1p2*gpp2*QHu*Ql2)/5._dp + 4*gpp4*QHup2*Ql2p2 -               & 
&  (6*g1p2*gpp2*QHu*Ql3)/5._dp + 2*AbsYv33*gpp2*Ql3p2 + 4*gpp4*QHup2*Ql3p2 +             & 
&  (6*g1p2*gpp2*Qd*Qq)/5._dp + (2*g1p2*gpp2*Qe1*Qq)/5._dp + (2*g1p2*gpp2*Qe2*Qq)/5._dp + & 
&  (2*g1p2*gpp2*Qe3*Qq)/5._dp - (2*g1p2*gpp2*QHd*Qq)/5._dp + 4*g1p2*gpp2*QHu*Qq -        & 
&  (2*g1p2*gpp2*Ql1*Qq)/5._dp - (2*g1p2*gpp2*Ql2*Qq)/5._dp - (2*g1p2*gpp2*Ql3*Qq)/5._dp +& 
&  (4*g1p2*gpp2*Qqp2)/3._dp + 6*g2p2*gpp2*Qqp2 + (32*g3p2*gpp2*Qqp2)/3._dp +             & 
&  18*gpp4*Qdp2*Qqp2 + 2*gpp4*Qe1p2*Qqp2 + 2*gpp4*Qe2p2*Qqp2 + 2*gpp4*Qe3p2*Qqp2 +       & 
&  4*gpp4*QHdp2*Qqp2 + 40*gpp4*QHup2*Qqp2 + 4*gpp4*Ql1p2*Qqp2 + 4*gpp4*Ql2p2*Qqp2 +      & 
&  4*gpp4*Ql3p2*Qqp2 + 40*gpp4*Qqp4 + 2*Abslam*gpp2*Qsp2 + 2*gpp4*QHup2*Qsp2 +           & 
&  2*gpp4*Qqp2*Qsp2 - (24*g1p2*gpp2*Qd*Qu)/5._dp - (8*g1p2*gpp2*Qe1*Qu)/5._dp -          & 
&  (8*g1p2*gpp2*Qe2*Qu)/5._dp - (8*g1p2*gpp2*Qe3*Qu)/5._dp + (8*g1p2*gpp2*QHd*Qu)/5._dp -& 
&  (44*g1p2*gpp2*QHu*Qu)/5._dp + (8*g1p2*gpp2*Ql1*Qu)/5._dp + (8*g1p2*gpp2*Ql2*Qu)/5._dp +& 
&  (8*g1p2*gpp2*Ql3*Qu)/5._dp - (36*g1p2*gpp2*Qq*Qu)/5._dp + (176*g1p2*gpp2*Qup2)/15._dp +& 
&  (32*g3p2*gpp2*Qup2)/3._dp + 18*gpp4*Qdp2*Qup2 + 2*gpp4*Qe1p2*Qup2 + 2*gpp4*Qe2p2*Qup2 +& 
&  2*gpp4*Qe3p2*Qup2 + 4*gpp4*QHdp2*Qup2 + 22*gpp4*QHup2*Qup2 + 4*gpp4*Ql1p2*Qup2 +      & 
&  4*gpp4*Ql2p2*Qup2 + 4*gpp4*Ql3p2*Qup2 + 54*gpp4*Qqp2*Qup2 + 2*gpp4*Qsp2*Qup2 +        & 
&  22*gpp4*Qup4 + 2*gpp4*QHup2*Qv1p2 + 2*gpp4*Qqp2*Qv1p2 + 2*gpp4*Qup2*Qv1p2 +           & 
&  AbsYv11*(-1._dp*(AbsYe11) + 2*gpp2*(-1._dp*(QHup2) + Ql1p2 + Qv1p2)) + 2*gpp4*QHup2*Qv2p2 +& 
&  2*gpp4*Qqp2*Qv2p2 + 2*gpp4*Qup2*Qv2p2 + AbsYv22*(-1._dp*(AbsYe22) + 2*gpp2*(-         & 
& 1._dp*(QHup2) + Ql2p2 + Qv2p2)) + 2*AbsYv33*gpp2*Qv3p2 + 2*gpp4*QHup2*Qv3p2 +          & 
&  2*gpp4*Qqp2*Qv3p2 + 2*gpp4*Qup2*Qv3p2 - 3*Abslam*TrYdadjYd - 3._dp*(TrYdadjYuYuadjYd) +& 
&  (4*g1p2*TrYuadjYu)/5._dp + 16*g3p2*TrYuadjYu - 6*gpp2*QHup2*TrYuadjYu +               & 
&  6*gpp2*Qqp2*TrYuadjYu + 6*gpp2*Qup2*TrYuadjYu - 9._dp*(TrYuadjYuYuadjYu) -            & 
&  3*CYv11p2*Yv11p2 - 3*CYv22p2*Yv22p2 - 3*CYv33p2*Yv33p2)

 
DYu = oo16pi2*( betaYu1 + oo16pi2 * betaYu2 ) 

 
Else 
DYu = oo16pi2* betaYu1 
End If 
 
 
Call Chop(DYu) 

!-------------------- 
! Td 
!-------------------- 
 
betaTd1  = 5._dp*(TdadjYdYd) + TdadjYuYu + 4._dp*(YdadjYdTd) + 2._dp*(YdadjYuTu)      & 
&  + Abslam*Td + AbsYe11*Td + AbsYe22*Td + AbsYe33*Td - (7*g1p2*Td)/15._dp -             & 
&  3*g2p2*Td - (16*g3p2*Td)/3._dp - 2*gpp2*Qdp2*Td - 2*gpp2*QHdp2*Td - 2*gpp2*Qqp2*Td +  & 
&  3*TrYdadjYd*Td + Yd*((14*g1p2*M1)/15._dp + (32*g3p2*M3)/3._dp + 6*g2p2*M2 +           & 
&  4*gpp2*M4*Qdp2 + 4*gpp2*M4*QHdp2 + 4*gpp2*M4*Qqp2 + 6._dp*(TradjYdTd) +               & 
&  2*Conjg(Ye11)*TYe11 + 2*Conjg(Ye22)*TYe22 + 2*Conjg(Ye33)*TYe33 + 2*Conjg(lam)*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTd2 = -5*Abslam*TdadjYdYd - 5*AbsYe11*TdadjYdYd - 5*AbsYe22*TdadjYdYd - 5*AbsYe33*TdadjYdYd +& 
&  (6*g1p2*TdadjYdYd)/5._dp + 12*g2p2*TdadjYdYd - 6*gpp2*Qdp2*TdadjYdYd + 10*gpp2*QHdp2*TdadjYdYd +& 
&  6*gpp2*Qqp2*TdadjYdYd - 6._dp*(TdadjYdYdadjYdYd) - Abslam*TdadjYuYu - AbsYv11*TdadjYuYu -& 
&  AbsYv22*TdadjYuYu - AbsYv33*TdadjYuYu + (4*g1p2*TdadjYuYu)/5._dp + 2*gpp2*QHup2*TdadjYuYu -& 
&  2*gpp2*Qqp2*TdadjYuYu + 2*gpp2*Qup2*TdadjYuYu - 4._dp*(TdadjYuYuadjYdYd) -            & 
&  2._dp*(TdadjYuYuadjYuYu) - 15*TdadjYdYd*TrYdadjYd - 3*TdadjYuYu*TrYuadjYu -           & 
&  4*Abslam*YdadjYdTd - 4*AbsYe11*YdadjYdTd - 4*AbsYe22*YdadjYdTd - 4*AbsYe33*YdadjYdTd +& 
&  (6*g1p2*YdadjYdTd)/5._dp + 6*g2p2*YdadjYdTd + 8*gpp2*QHdp2*YdadjYdTd - 12*TrYdadjYd*YdadjYdTd -& 
&  8._dp*(YdadjYdTdadjYdYd) - 6._dp*(YdadjYdYdadjYdTd) - 2*Abslam*YdadjYuTu -            & 
&  2*AbsYv11*YdadjYuTu - 2*AbsYv22*YdadjYuTu - 2*AbsYv33*YdadjYuTu + (8*g1p2*YdadjYuTu)/5._dp +& 
&  4*gpp2*QHup2*YdadjYuTu - 4*gpp2*Qqp2*YdadjYuTu + 4*gpp2*Qup2*YdadjYuTu -              & 
&  6*TrYuadjYu*YdadjYuTu - 4._dp*(YdadjYuTuadjYdYd) - 4._dp*(YdadjYuTuadjYuYu) -         & 
&  (8*g1p2*M1*YdadjYuYu)/5._dp - 4*gpp2*M4*QHup2*YdadjYuYu + 4*gpp2*M4*Qqp2*YdadjYuYu -  & 
&  4*gpp2*M4*Qup2*YdadjYuYu - 6*TradjYuTu*YdadjYuYu - 2._dp*(YdadjYuYuadjYdTd) -         & 
&  4._dp*(YdadjYuYuadjYuTu) - Abslam*AbsYv11*Td - AbsYe11*AbsYv11*Td - Abslam*AbsYv22*Td -& 
&  AbsYe22*AbsYv22*Td - Abslam*AbsYv33*Td - AbsYe33*AbsYv33*Td + (6*AbsYe11*g1p2*Td)/5._dp +& 
&  (6*AbsYe22*g1p2*Td)/5._dp + (6*AbsYe33*g1p2*Td)/5._dp + (287*g1p4*Td)/90._dp +        & 
&  g1p2*g2p2*Td + (15*g2p4*Td)/2._dp + (8*g1p2*g3p2*Td)/9._dp + 8*g2p2*g3p2*Td -         & 
&  (16*g3p4*Td)/9._dp - 3*Clamp2*lamp2*Td + (44*g1p2*gpp2*Qdp2*Td)/15._dp +              & 
&  (32*g3p2*gpp2*Qdp2*Td)/3._dp + 22*gpp4*Qdp4*Td + (4*g1p2*gpp2*Qd*Qe1*Td)/5._dp +      & 
&  2*AbsYe11*gpp2*Qe1p2*Td + 2*gpp4*Qdp2*Qe1p2*Td + (4*g1p2*gpp2*Qd*Qe2*Td)/5._dp  
betaTd2 =  betaTd2+ 2*AbsYe22*gpp2*Qe2p2*Td + 2*gpp4*Qdp2*Qe2p2*Td + (4*g1p2*gpp2*Qd*Qe3*Td)/5._dp +      & 
&  2*AbsYe33*gpp2*Qe3p2*Td + 2*gpp4*Qdp2*Qe3p2*Td - (22*g1p2*gpp2*Qd*QHd*Td)/5._dp -     & 
&  (6*g1p2*gpp2*Qe1*QHd*Td)/5._dp - (6*g1p2*gpp2*Qe2*QHd*Td)/5._dp - (6*g1p2*gpp2*Qe3*QHd*Td)/5._dp -& 
&  2*Abslam*gpp2*QHdp2*Td - 2*AbsYe11*gpp2*QHdp2*Td - 2*AbsYe22*gpp2*QHdp2*Td -          & 
&  2*AbsYe33*gpp2*QHdp2*Td + (12*g1p2*gpp2*QHdp2*Td)/5._dp + 6*g2p2*gpp2*QHdp2*Td +      & 
&  22*gpp4*Qdp2*QHdp2*Td + 2*gpp4*Qe1p2*QHdp2*Td + 2*gpp4*Qe2p2*QHdp2*Td +               & 
&  2*gpp4*Qe3p2*QHdp2*Td + 8*gpp4*QHdp4*Td + (4*g1p2*gpp2*Qd*QHu*Td)/5._dp -             & 
&  (6*g1p2*gpp2*QHd*QHu*Td)/5._dp + 2*Abslam*gpp2*QHup2*Td + 4*gpp4*Qdp2*QHup2*Td +      & 
&  4*gpp4*QHdp2*QHup2*Td - (4*g1p2*gpp2*Qd*Ql1*Td)/5._dp + (6*g1p2*gpp2*QHd*Ql1*Td)/5._dp +& 
&  2*AbsYe11*gpp2*Ql1p2*Td + 4*gpp4*Qdp2*Ql1p2*Td + 4*gpp4*QHdp2*Ql1p2*Td -              & 
&  (4*g1p2*gpp2*Qd*Ql2*Td)/5._dp + (6*g1p2*gpp2*QHd*Ql2*Td)/5._dp + 2*AbsYe22*gpp2*Ql2p2*Td +& 
&  4*gpp4*Qdp2*Ql2p2*Td + 4*gpp4*QHdp2*Ql2p2*Td - (4*g1p2*gpp2*Qd*Ql3*Td)/5._dp +        & 
&  (6*g1p2*gpp2*QHd*Ql3*Td)/5._dp + 2*AbsYe33*gpp2*Ql3p2*Td + 4*gpp4*Qdp2*Ql3p2*Td +     & 
&  4*gpp4*QHdp2*Ql3p2*Td + (18*g1p2*gpp2*Qd*Qq*Td)/5._dp + (2*g1p2*gpp2*Qe1*Qq*Td)/5._dp +& 
&  (2*g1p2*gpp2*Qe2*Qq*Td)/5._dp + (2*g1p2*gpp2*Qe3*Qq*Td)/5._dp - 4*g1p2*gpp2*QHd*Qq*Td +& 
&  (2*g1p2*gpp2*QHu*Qq*Td)/5._dp - (2*g1p2*gpp2*Ql1*Qq*Td)/5._dp - (2*g1p2*gpp2*Ql2*Qq*Td)/5._dp -& 
&  (2*g1p2*gpp2*Ql3*Qq*Td)/5._dp + (4*g1p2*gpp2*Qqp2*Td)/3._dp + 6*g2p2*gpp2*Qqp2*Td +   & 
&  (32*g3p2*gpp2*Qqp2*Td)/3._dp + 54*gpp4*Qdp2*Qqp2*Td + 2*gpp4*Qe1p2*Qqp2*Td +          & 
&  2*gpp4*Qe2p2*Qqp2*Td + 2*gpp4*Qe3p2*Qqp2*Td + 40*gpp4*QHdp2*Qqp2*Td + 4*gpp4*QHup2*Qqp2*Td +& 
&  4*gpp4*Ql1p2*Qqp2*Td + 4*gpp4*Ql2p2*Qqp2*Td + 4*gpp4*Ql3p2*Qqp2*Td + 40*gpp4*Qqp4*Td +& 
&  2*Abslam*gpp2*Qsp2*Td + 2*gpp4*Qdp2*Qsp2*Td + 2*gpp4*QHdp2*Qsp2*Td + 2*gpp4*Qqp2*Qsp2*Td  
betaTd2 =  betaTd2- (24*g1p2*gpp2*Qd*Qu*Td)/5._dp + (36*g1p2*gpp2*QHd*Qu*Td)/5._dp - (12*g1p2*gpp2*Qq*Qu*Td)/5._dp +& 
&  18*gpp4*Qdp2*Qup2*Td + 18*gpp4*QHdp2*Qup2*Td + 18*gpp4*Qqp2*Qup2*Td + 2*gpp4*Qdp2*Qv1p2*Td +& 
&  2*gpp4*QHdp2*Qv1p2*Td + 2*gpp4*Qqp2*Qv1p2*Td + 2*gpp4*Qdp2*Qv2p2*Td + 2*gpp4*QHdp2*Qv2p2*Td +& 
&  2*gpp4*Qqp2*Qv2p2*Td + 2*gpp4*Qdp2*Qv3p2*Td + 2*gpp4*QHdp2*Qv3p2*Td + 2*gpp4*Qqp2*Qv3p2*Td -& 
&  (2*g1p2*TrYdadjYd*Td)/5._dp + 16*g3p2*TrYdadjYd*Td + 6*gpp2*Qdp2*TrYdadjYd*Td -       & 
&  6*gpp2*QHdp2*TrYdadjYd*Td + 6*gpp2*Qqp2*TrYdadjYd*Td - 9*TrYdadjYdYdadjYd*Td -        & 
&  3*TrYdadjYuYuadjYd*Td - 3*Abslam*TrYuadjYu*Td - 3*CYe11p2*Ye11p2*Td - 3*CYe22p2*Ye22p2*Td -& 
&  3*CYe33p2*Ye33p2*Td - 2*YdadjYuYu*Conjg(Yv11)*TYv11 - 2*YdadjYuYu*Conjg(Yv22)*TYv22 - & 
&  2*YdadjYuYu*Conjg(Yv33)*TYv33 - 2*YdadjYuYu*Conjg(lam)*Tlam - (2*YdadjYdYd*(4*g1p2*M1 +& 
&  30*g2p2*M2 - 10*gpp2*M4*Qdp2 + 30*gpp2*M4*QHdp2 + 10*gpp2*M4*Qqp2 + 45._dp*(TradjYdTd) +& 
&  15*Conjg(Ye11)*TYe11 + 15*Conjg(Ye22)*TYe22 + 15*Conjg(Ye33)*TYe33 + 15*Conjg(lam)*Tlam))/5._dp -& 
&  (2*Yd*(54*AbsYe33*g1p2*M1 + 287*g1p4*M1 + 45*g1p2*g2p2*M1 + 40*g1p2*g3p2*M1 +         & 
&  40*g1p2*g3p2*M3 + 360*g2p2*g3p2*M3 - 160*g3p4*M3 + 45*g1p2*g2p2*M2 + 675*g2p4*M2 +    & 
&  360*g2p2*g3p2*M2 + 132*g1p2*gpp2*M1*Qdp2 + 480*g3p2*gpp2*M3*Qdp2 + 132*g1p2*gpp2*M4*Qdp2 +& 
&  480*g3p2*gpp2*M4*Qdp2 + 1980*gpp4*M4*Qdp4 + 36*g1p2*gpp2*M1*Qd*Qe1 + 36*g1p2*gpp2*M4*Qd*Qe1 +& 
&  180*gpp4*M4*Qdp2*Qe1p2 + 36*g1p2*gpp2*M1*Qd*Qe2 + 36*g1p2*gpp2*M4*Qd*Qe2 +            & 
&  180*gpp4*M4*Qdp2*Qe2p2 + 36*g1p2*gpp2*M1*Qd*Qe3 + 36*g1p2*gpp2*M4*Qd*Qe3 +            & 
&  90*AbsYe33*gpp2*M4*Qe3p2 + 180*gpp4*M4*Qdp2*Qe3p2 - 198*g1p2*gpp2*M1*Qd*QHd -         & 
&  198*g1p2*gpp2*M4*Qd*QHd - 54*g1p2*gpp2*M1*Qe1*QHd - 54*g1p2*gpp2*M4*Qe1*QHd -         & 
&  54*g1p2*gpp2*M1*Qe2*QHd - 54*g1p2*gpp2*M4*Qe2*QHd - 54*g1p2*gpp2*M1*Qe3*QHd -         & 
&  54*g1p2*gpp2*M4*Qe3*QHd + 108*g1p2*gpp2*M1*QHdp2 - 90*Abslam*gpp2*M4*QHdp2 -          & 
&  90*AbsYe33*gpp2*M4*QHdp2 + 108*g1p2*gpp2*M4*QHdp2 + 270*g2p2*gpp2*M4*QHdp2 +          & 
&  270*g2p2*gpp2*M2*QHdp2 + 1980*gpp4*M4*Qdp2*QHdp2 + 180*gpp4*M4*Qe1p2*QHdp2 +          & 
&  180*gpp4*M4*Qe2p2*QHdp2 + 180*gpp4*M4*Qe3p2*QHdp2 + 720*gpp4*M4*QHdp4 +               & 
&  36*g1p2*gpp2*M1*Qd*QHu + 36*g1p2*gpp2*M4*Qd*QHu - 54*g1p2*gpp2*M1*QHd*QHu -           & 
&  54*g1p2*gpp2*M4*QHd*QHu + 90*Abslam*gpp2*M4*QHup2 + 360*gpp4*M4*Qdp2*QHup2 +          & 
&  360*gpp4*M4*QHdp2*QHup2 - 36*g1p2*gpp2*M1*Qd*Ql1 - 36*g1p2*gpp2*M4*Qd*Ql1 +           & 
&  54*g1p2*gpp2*M1*QHd*Ql1 + 54*g1p2*gpp2*M4*QHd*Ql1 + 360*gpp4*M4*Qdp2*Ql1p2 +          & 
&  360*gpp4*M4*QHdp2*Ql1p2 - 36*g1p2*gpp2*M1*Qd*Ql2 - 36*g1p2*gpp2*M4*Qd*Ql2 +           & 
&  54*g1p2*gpp2*M1*QHd*Ql2 + 54*g1p2*gpp2*M4*QHd*Ql2 + 360*gpp4*M4*Qdp2*Ql2p2 +          & 
&  360*gpp4*M4*QHdp2*Ql2p2 - 36*g1p2*gpp2*M1*Qd*Ql3 - 36*g1p2*gpp2*M4*Qd*Ql3 +           & 
&  54*g1p2*gpp2*M1*QHd*Ql3 + 54*g1p2*gpp2*M4*QHd*Ql3 + 90*AbsYe33*gpp2*M4*Ql3p2 +        & 
&  360*gpp4*M4*Qdp2*Ql3p2 + 360*gpp4*M4*QHdp2*Ql3p2 + 162*g1p2*gpp2*M1*Qd*Qq +           & 
&  162*g1p2*gpp2*M4*Qd*Qq + 18*g1p2*gpp2*M1*Qe1*Qq + 18*g1p2*gpp2*M4*Qe1*Qq +            & 
&  18*g1p2*gpp2*M1*Qe2*Qq + 18*g1p2*gpp2*M4*Qe2*Qq + 18*g1p2*gpp2*M1*Qe3*Qq +            & 
&  18*g1p2*gpp2*M4*Qe3*Qq - 180*g1p2*gpp2*M1*QHd*Qq - 180*g1p2*gpp2*M4*QHd*Qq +          & 
&  18*g1p2*gpp2*M1*QHu*Qq + 18*g1p2*gpp2*M4*QHu*Qq - 18*g1p2*gpp2*M1*Ql1*Qq -            & 
&  18*g1p2*gpp2*M4*Ql1*Qq - 18*g1p2*gpp2*M1*Ql2*Qq - 18*g1p2*gpp2*M4*Ql2*Qq -            & 
&  18*g1p2*gpp2*M1*Ql3*Qq - 18*g1p2*gpp2*M4*Ql3*Qq + 60*g1p2*gpp2*M1*Qqp2 +              & 
&  480*g3p2*gpp2*M3*Qqp2 + 60*g1p2*gpp2*M4*Qqp2 + 270*g2p2*gpp2*M4*Qqp2 + 480*g3p2*gpp2*M4*Qqp2 +& 
&  270*g2p2*gpp2*M2*Qqp2 + 4860*gpp4*M4*Qdp2*Qqp2 + 180*gpp4*M4*Qe1p2*Qqp2 +             & 
&  180*gpp4*M4*Qe2p2*Qqp2 + 180*gpp4*M4*Qe3p2*Qqp2 + 3600*gpp4*M4*QHdp2*Qqp2 +           & 
&  360*gpp4*M4*QHup2*Qqp2 + 360*gpp4*M4*Ql1p2*Qqp2 + 360*gpp4*M4*Ql2p2*Qqp2 +            & 
&  360*gpp4*M4*Ql3p2*Qqp2 + 3600*gpp4*M4*Qqp4 + 90*Abslam*gpp2*M4*Qsp2 + 180*gpp4*M4*Qdp2*Qsp2 +& 
&  180*gpp4*M4*QHdp2*Qsp2 + 180*gpp4*M4*Qqp2*Qsp2 - 216*g1p2*gpp2*M1*Qd*Qu -             & 
&  216*g1p2*gpp2*M4*Qd*Qu + 324*g1p2*gpp2*M1*QHd*Qu + 324*g1p2*gpp2*M4*QHd*Qu -          & 
&  108*g1p2*gpp2*M1*Qq*Qu - 108*g1p2*gpp2*M4*Qq*Qu + 1620*gpp4*M4*Qdp2*Qup2 +            & 
&  1620*gpp4*M4*QHdp2*Qup2 + 1620*gpp4*M4*Qqp2*Qup2 + 180*gpp4*M4*Qdp2*Qv1p2 +           & 
&  180*gpp4*M4*QHdp2*Qv1p2 + 180*gpp4*M4*Qqp2*Qv1p2 + 180*gpp4*M4*Qdp2*Qv2p2 +           & 
&  180*gpp4*M4*QHdp2*Qv2p2 + 180*gpp4*M4*Qqp2*Qv2p2 + 180*gpp4*M4*Qdp2*Qv3p2 +           & 
&  180*gpp4*M4*QHdp2*Qv3p2 + 180*gpp4*M4*Qqp2*Qv3p2 + 18*g1p2*TradjYdTd - 720*g3p2*TradjYdTd -& 
&  270*gpp2*Qdp2*TradjYdTd + 270*gpp2*QHdp2*TradjYdTd - 270*gpp2*Qqp2*TradjYdTd +        & 
&  135*Abslam*TradjYuTu - 18*g1p2*M1*TrYdadjYd + 720*g3p2*M3*TrYdadjYd + 270*gpp2*M4*Qdp2*TrYdadjYd -& 
&  270*gpp2*M4*QHdp2*TrYdadjYd + 270*gpp2*M4*Qqp2*TrYdadjYd + 810._dp*(TrYdadjYdTdadjYd) +& 
&  135._dp*(TrYdadjYuTuadjYd) + 135._dp*(TrYuadjYdTdadjYu) + 270*CYe11p2*Ye11*TYe11 +    & 
&  270*CYe22p2*Ye22*TYe22 + 270*CYe33p2*Ye33*TYe33 + 45*AbsYv33*Conjg(Ye33)*TYe33 -      & 
&  54*g1p2*Conjg(Ye33)*TYe33 - 90*gpp2*Qe3p2*Conjg(Ye33)*TYe33 + 90*gpp2*QHdp2*Conjg(Ye33)*TYe33 -& 
&  90*gpp2*Ql3p2*Conjg(Ye33)*TYe33 + 45*Abslam*Conjg(Yv11)*TYv11 + 9*Conjg(Ye11)*((5._dp*(AbsYv11) -& 
&  6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*TYe11 + Ye11*(6*g1p2*M1 +             & 
&  10*gpp2*M4*(Qe1p2 - QHdp2 + Ql1p2) + 5*Conjg(Yv11)*TYv11)) + 45*Abslam*Conjg(Yv22)*TYv22 +& 
&  9*Conjg(Ye22)*((5._dp*(AbsYv22) - 6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 +             & 
&  Ql2p2))*TYe22 + Ye22*(6*g1p2*M1 + 10*gpp2*M4*(Qe2p2 - QHdp2 + Ql2p2) + 5*Conjg(Yv22)*TYv22)) +& 
&  45*Abslam*Conjg(Yv33)*TYv33 + 45*AbsYe33*Conjg(Yv33)*TYv33 + 270*Clamp2*lam*Tlam +    & 
&  45*AbsYv11*Conjg(lam)*Tlam + 45*AbsYv22*Conjg(lam)*Tlam + 45*AbsYv33*Conjg(lam)*Tlam +& 
&  90*gpp2*QHdp2*Conjg(lam)*Tlam - 90*gpp2*QHup2*Conjg(lam)*Tlam - 90*gpp2*Qsp2*Conjg(lam)*Tlam +& 
&  135*TrYuadjYu*Conjg(lam)*Tlam))/45._dp

 
DTd = oo16pi2*( betaTd1 + oo16pi2 * betaTd2 ) 

 
Else 
DTd = oo16pi2* betaTd1 
End If 
 
 
Call Chop(DTd) 

!-------------------- 
! TYe11 
!-------------------- 
 
betaTYe111  = (Abslam + 12._dp*(AbsYe11) + AbsYe22 + AbsYe33 + AbsYv11 -              & 
&  9._dp*(g1p2)/5._dp - 3._dp*(g2p2) - 2*gpp2*Qe1p2 - 2*gpp2*QHdp2 - 2*gpp2*Ql1p2 +      & 
&  3._dp*(TrYdadjYd))*TYe11 + (2*Ye11*(9*g1p2*M1 + 15*g2p2*M2 + 10*gpp2*M4*Qe1p2 +       & 
&  10*gpp2*M4*QHdp2 + 10*gpp2*M4*Ql1p2 + 15._dp*(TradjYdTd) + 5*Conjg(Ye22)              & 
& *TYe22 + 5*Conjg(Ye33)*TYe33 + 5*Conjg(Yv11)*TYv11 + 5*Conjg(lam)*Tlam))/5._dp

 
 
If (TwoLoopRGE) Then 
betaTYe112 = (-540*g1p4*M1*Ye11 - 36*g1p2*g2p2*M1*Ye11 - 36*g1p2*g2p2*M2*Ye11 - 300*g2p4*M2*Ye11 - & 
&  144*g1p2*gpp2*M1*Qd*Qe1*Ye11 - 144*g1p2*gpp2*M4*Qd*Qe1*Ye11 - 144*g1p2*gpp2*M1*Qe1p2*Ye11 -& 
&  144*g1p2*gpp2*M4*Qe1p2*Ye11 - 720*gpp4*M4*Qdp2*Qe1p2*Ye11 - 240*gpp4*M4*Qe1p4*Ye11 -  & 
&  48*g1p2*gpp2*M1*Qe1*Qe2*Ye11 - 48*g1p2*gpp2*M4*Qe1*Qe2*Ye11 - 80*gpp4*M4*Qe1p2*Qe2p2*Ye11 -& 
&  48*g1p2*gpp2*M1*Qe1*Qe3*Ye11 - 48*g1p2*gpp2*M4*Qe1*Qe3*Ye11 - 80*gpp4*M4*Qe1p2*Qe3p2*Ye11 +& 
&  72*g1p2*gpp2*M1*Qd*QHd*Ye11 + 72*g1p2*gpp2*M4*Qd*QHd*Ye11 + 72*g1p2*gpp2*M1*Qe1*QHd*Ye11 +& 
&  72*g1p2*gpp2*M4*Qe1*QHd*Ye11 + 24*g1p2*gpp2*M1*Qe2*QHd*Ye11 + 24*g1p2*gpp2*M4*Qe2*QHd*Ye11 +& 
&  24*g1p2*gpp2*M1*Qe3*QHd*Ye11 + 24*g1p2*gpp2*M4*Qe3*QHd*Ye11 - 48*g1p2*gpp2*M1*QHdp2*Ye11 +& 
&  40*Abslam*gpp2*M4*QHdp2*Ye11 - 48*g1p2*gpp2*M4*QHdp2*Ye11 - 120*g2p2*gpp2*M4*QHdp2*Ye11 -& 
&  120*g2p2*gpp2*M2*QHdp2*Ye11 - 720*gpp4*M4*Qdp2*QHdp2*Ye11 - 240*gpp4*M4*Qe1p2*QHdp2*Ye11 -& 
&  80*gpp4*M4*Qe2p2*QHdp2*Ye11 - 80*gpp4*M4*Qe3p2*QHdp2*Ye11 - 320*gpp4*M4*QHdp4*Ye11 -  & 
&  48*g1p2*gpp2*M1*Qe1*QHu*Ye11 - 48*g1p2*gpp2*M4*Qe1*QHu*Ye11 + 24*g1p2*gpp2*M1*QHd*QHu*Ye11 +& 
&  24*g1p2*gpp2*M4*QHd*QHu*Ye11 - 40*Abslam*gpp2*M4*QHup2*Ye11 - 40*AbsYv11*gpp2*M4*QHup2*Ye11 -& 
&  160*gpp4*M4*Qe1p2*QHup2*Ye11 - 160*gpp4*M4*QHdp2*QHup2*Ye11 + 72*g1p2*gpp2*M1*Qd*Ql1*Ye11 +& 
&  72*g1p2*gpp2*M4*Qd*Ql1*Ye11 + 72*g1p2*gpp2*M1*Qe1*Ql1*Ye11 + 72*g1p2*gpp2*M4*Qe1*Ql1*Ye11 +& 
&  24*g1p2*gpp2*M1*Qe2*Ql1*Ye11 + 24*g1p2*gpp2*M4*Qe2*Ql1*Ye11 + 24*g1p2*gpp2*M1*Qe3*Ql1*Ye11 +& 
&  24*g1p2*gpp2*M4*Qe3*Ql1*Ye11 - 48*g1p2*gpp2*M1*QHd*Ql1*Ye11 - 48*g1p2*gpp2*M4*QHd*Ql1*Ye11 +& 
&  24*g1p2*gpp2*M1*QHu*Ql1*Ye11 + 24*g1p2*gpp2*M4*QHu*Ql1*Ye11 - 48*g1p2*gpp2*M1*Ql1p2*Ye11 +& 
&  40*AbsYv11*gpp2*M4*Ql1p2*Ye11 - 48*g1p2*gpp2*M4*Ql1p2*Ye11 - 120*g2p2*gpp2*M4*Ql1p2*Ye11 -& 
&  120*g2p2*gpp2*M2*Ql1p2*Ye11 - 720*gpp4*M4*Qdp2*Ql1p2*Ye11 - 240*gpp4*M4*Qe1p2*Ql1p2*Ye11 -& 
&  80*gpp4*M4*Qe2p2*Ql1p2*Ye11 - 80*gpp4*M4*Qe3p2*Ql1p2*Ye11 - 320*gpp4*M4*QHdp2*Ql1p2*Ye11 -& 
&  160*gpp4*M4*QHup2*Ql1p2*Ye11 - 320*gpp4*M4*Ql1p4*Ye11 + 48*g1p2*gpp2*M1*Qe1*Ql2*Ye11 +& 
&  48*g1p2*gpp2*M4*Qe1*Ql2*Ye11 - 24*g1p2*gpp2*M1*QHd*Ql2*Ye11 - 24*g1p2*gpp2*M4*QHd*Ql2*Ye11 -& 
&  24*g1p2*gpp2*M1*Ql1*Ql2*Ye11 - 24*g1p2*gpp2*M4*Ql1*Ql2*Ye11 - 160*gpp4*M4*Qe1p2*Ql2p2*Ye11 -& 
&  160*gpp4*M4*QHdp2*Ql2p2*Ye11 - 160*gpp4*M4*Ql1p2*Ql2p2*Ye11 + 48*g1p2*gpp2*M1*Qe1*Ql3*Ye11 +& 
&  48*g1p2*gpp2*M4*Qe1*Ql3*Ye11 - 24*g1p2*gpp2*M1*QHd*Ql3*Ye11 - 24*g1p2*gpp2*M4*QHd*Ql3*Ye11 -& 
&  24*g1p2*gpp2*M1*Ql1*Ql3*Ye11 - 24*g1p2*gpp2*M4*Ql1*Ql3*Ye11 - 160*gpp4*M4*Qe1p2*Ql3p2*Ye11 -& 
&  160*gpp4*M4*QHdp2*Ql3p2*Ye11 - 160*gpp4*M4*Ql1p2*Ql3p2*Ye11 - 144*g1p2*gpp2*M1*Qe1*Qq*Ye11 -& 
&  144*g1p2*gpp2*M4*Qe1*Qq*Ye11 + 72*g1p2*gpp2*M1*QHd*Qq*Ye11 + 72*g1p2*gpp2*M4*QHd*Qq*Ye11 +& 
&  72*g1p2*gpp2*M1*Ql1*Qq*Ye11 + 72*g1p2*gpp2*M4*Ql1*Qq*Ye11 - 1440*gpp4*M4*Qe1p2*Qqp2*Ye11 -& 
&  1440*gpp4*M4*QHdp2*Qqp2*Ye11 - 1440*gpp4*M4*Ql1p2*Qqp2*Ye11 - 40*Abslam*gpp2*M4*Qsp2*Ye11 -& 
&  80*gpp4*M4*Qe1p2*Qsp2*Ye11 - 80*gpp4*M4*QHdp2*Qsp2*Ye11 - 80*gpp4*M4*Ql1p2*Qsp2*Ye11 +& 
&  288*g1p2*gpp2*M1*Qe1*Qu*Ye11 + 288*g1p2*gpp2*M4*Qe1*Qu*Ye11 - 144*g1p2*gpp2*M1*QHd*Qu*Ye11 -& 
&  144*g1p2*gpp2*M4*QHd*Qu*Ye11 - 144*g1p2*gpp2*M1*Ql1*Qu*Ye11 - 144*g1p2*gpp2*M4*Ql1*Qu*Ye11 -& 
&  720*gpp4*M4*Qe1p2*Qup2*Ye11 - 720*gpp4*M4*QHdp2*Qup2*Ye11 - 720*gpp4*M4*Ql1p2*Qup2*Ye11 -& 
&  40*AbsYv11*gpp2*M4*Qv1p2*Ye11 - 80*gpp4*M4*Qe1p2*Qv1p2*Ye11 - 80*gpp4*M4*QHdp2*Qv1p2*Ye11 -& 
&  80*gpp4*M4*Ql1p2*Qv1p2*Ye11 - 80*gpp4*M4*Qe1p2*Qv2p2*Ye11 - 80*gpp4*M4*QHdp2*Qv2p2*Ye11 -& 
&  80*gpp4*M4*Ql1p2*Qv2p2*Ye11 - 80*gpp4*M4*Qe1p2*Qv3p2*Ye11 - 80*gpp4*M4*QHdp2*Qv3p2*Ye11 -& 
&  80*gpp4*M4*Ql1p2*Qv3p2*Ye11 - 8*g1p2*TradjYdTd*Ye11 + 320*g3p2*TradjYdTd*Ye11 +       & 
&  120*gpp2*Qdp2*TradjYdTd*Ye11 - 120*gpp2*QHdp2*TradjYdTd*Ye11 + 120*gpp2*Qqp2*TradjYdTd*Ye11 -& 
&  60*Abslam*TradjYuTu*Ye11 - 60*AbsYv11*TradjYuTu*Ye11 + 8*g1p2*M1*TrYdadjYd*Ye11 -     & 
&  320*g3p2*M3*TrYdadjYd*Ye11 - 120*gpp2*M4*Qdp2*TrYdadjYd*Ye11 + 120*gpp2*M4*QHdp2*TrYdadjYd*Ye11 -& 
&  120*gpp2*M4*Qqp2*TrYdadjYd*Ye11 - 360*TrYdadjYdTdadjYd*Ye11 - 60*TrYdadjYuTuadjYd*Ye11 -& 
&  60*TrYuadjYdTdadjYu*Ye11 - 20*Abslam*AbsYv11*TYe11 - 10*Abslam*AbsYv22*TYe11 -        & 
&  10*AbsYv11*AbsYv22*TYe11 - 10*Abslam*AbsYv33*TYe11 - 10*AbsYv11*AbsYv33*TYe11 +       & 
&  135*g1p4*TYe11 + 18*g1p2*g2p2*TYe11 + 75*g2p4*TYe11 - 30*Clamp2*lamp2*TYe11 +         & 
&  72*g1p2*gpp2*Qd*Qe1*TYe11 + 72*g1p2*gpp2*Qe1p2*TYe11 + 180*gpp4*Qdp2*Qe1p2*TYe11 +    & 
&  60*gpp4*Qe1p4*TYe11 + 24*g1p2*gpp2*Qe1*Qe2*TYe11 + 20*gpp4*Qe1p2*Qe2p2*TYe11 +        & 
&  24*g1p2*gpp2*Qe1*Qe3*TYe11 + 20*gpp4*Qe1p2*Qe3p2*TYe11 - 36*g1p2*gpp2*Qd*QHd*TYe11 -  & 
&  36*g1p2*gpp2*Qe1*QHd*TYe11 - 12*g1p2*gpp2*Qe2*QHd*TYe11 - 12*g1p2*gpp2*Qe3*QHd*TYe11 -& 
&  20*Abslam*gpp2*QHdp2*TYe11 + 24*g1p2*gpp2*QHdp2*TYe11 + 60*g2p2*gpp2*QHdp2*TYe11 +    & 
&  180*gpp4*Qdp2*QHdp2*TYe11 + 60*gpp4*Qe1p2*QHdp2*TYe11 + 20*gpp4*Qe2p2*QHdp2*TYe11 +   & 
&  20*gpp4*Qe3p2*QHdp2*TYe11 + 80*gpp4*QHdp4*TYe11 + 24*g1p2*gpp2*Qe1*QHu*TYe11 -        & 
&  12*g1p2*gpp2*QHd*QHu*TYe11 + 20*Abslam*gpp2*QHup2*TYe11 + 20*AbsYv11*gpp2*QHup2*TYe11 +& 
&  40*gpp4*Qe1p2*QHup2*TYe11 + 40*gpp4*QHdp2*QHup2*TYe11 - 36*g1p2*gpp2*Qd*Ql1*TYe11 -   & 
&  36*g1p2*gpp2*Qe1*Ql1*TYe11 - 12*g1p2*gpp2*Qe2*Ql1*TYe11 - 12*g1p2*gpp2*Qe3*Ql1*TYe11 +& 
&  24*g1p2*gpp2*QHd*Ql1*TYe11 - 12*g1p2*gpp2*QHu*Ql1*TYe11 - 20*AbsYv11*gpp2*Ql1p2*TYe11 +& 
&  24*g1p2*gpp2*Ql1p2*TYe11 + 60*g2p2*gpp2*Ql1p2*TYe11 + 180*gpp4*Qdp2*Ql1p2*TYe11 +     & 
&  60*gpp4*Qe1p2*Ql1p2*TYe11 + 20*gpp4*Qe2p2*Ql1p2*TYe11 + 20*gpp4*Qe3p2*Ql1p2*TYe11 +   & 
&  80*gpp4*QHdp2*Ql1p2*TYe11 + 40*gpp4*QHup2*Ql1p2*TYe11 + 80*gpp4*Ql1p4*TYe11 -         & 
&  24*g1p2*gpp2*Qe1*Ql2*TYe11 + 12*g1p2*gpp2*QHd*Ql2*TYe11 + 12*g1p2*gpp2*Ql1*Ql2*TYe11 +& 
&  40*gpp4*Qe1p2*Ql2p2*TYe11 + 40*gpp4*QHdp2*Ql2p2*TYe11 + 40*gpp4*Ql1p2*Ql2p2*TYe11 -   & 
&  24*g1p2*gpp2*Qe1*Ql3*TYe11 + 12*g1p2*gpp2*QHd*Ql3*TYe11 + 12*g1p2*gpp2*Ql1*Ql3*TYe11 +& 
&  40*gpp4*Qe1p2*Ql3p2*TYe11 + 40*gpp4*QHdp2*Ql3p2*TYe11 + 40*gpp4*Ql1p2*Ql3p2*TYe11 +   & 
&  72*g1p2*gpp2*Qe1*Qq*TYe11 - 36*g1p2*gpp2*QHd*Qq*TYe11 - 36*g1p2*gpp2*Ql1*Qq*TYe11 +   & 
&  360*gpp4*Qe1p2*Qqp2*TYe11 + 360*gpp4*QHdp2*Qqp2*TYe11 + 360*gpp4*Ql1p2*Qqp2*TYe11 +   & 
&  20*Abslam*gpp2*Qsp2*TYe11 + 20*gpp4*Qe1p2*Qsp2*TYe11 + 20*gpp4*QHdp2*Qsp2*TYe11 +     & 
&  20*gpp4*Ql1p2*Qsp2*TYe11 - 144*g1p2*gpp2*Qe1*Qu*TYe11 + 72*g1p2*gpp2*QHd*Qu*TYe11 +   & 
&  72*g1p2*gpp2*Ql1*Qu*TYe11 + 180*gpp4*Qe1p2*Qup2*TYe11 + 180*gpp4*QHdp2*Qup2*TYe11 +   & 
&  180*gpp4*Ql1p2*Qup2*TYe11 + 20*AbsYv11*gpp2*Qv1p2*TYe11 + 20*gpp4*Qe1p2*Qv1p2*TYe11 + & 
&  20*gpp4*QHdp2*Qv1p2*TYe11 + 20*gpp4*Ql1p2*Qv1p2*TYe11 + 20*gpp4*Qe1p2*Qv2p2*TYe11 +   & 
&  20*gpp4*QHdp2*Qv2p2*TYe11 + 20*gpp4*Ql1p2*Qv2p2*TYe11 + 20*gpp4*Qe1p2*Qv3p2*TYe11 +   & 
&  20*gpp4*QHdp2*Qv3p2*TYe11 + 20*gpp4*Ql1p2*Qv3p2*TYe11 - 4*g1p2*TrYdadjYd*TYe11 +      & 
&  160*g3p2*TrYdadjYd*TYe11 + 60*gpp2*Qdp2*TrYdadjYd*TYe11 - 60*gpp2*QHdp2*TrYdadjYd*TYe11 +& 
&  60*gpp2*Qqp2*TrYdadjYd*TYe11 - 90*TrYdadjYdYdadjYd*TYe11 - 30*TrYdadjYuYuadjYd*TYe11 -& 
&  30*Abslam*TrYuadjYu*TYe11 - 30*AbsYv11*TrYuadjYu*TYe11 - 500*CYe11p2*Ye11p2*TYe11 -   & 
&  30*CYv11p2*Yv11p2*TYe11 - 30*CYe22p2*Ye22*(Ye22*TYe11 + 4*Ye11*TYe22) -               & 
&  30*CYe33p2*Ye33*(Ye33*TYe11 + 4*Ye11*TYe33) - 120*CYv11p2*Ye11*Yv11*TYv11 -           & 
&  40*Abslam*Ye11*Conjg(Yv11)*TYv11 - 20*AbsYv22*Ye11*Conjg(Yv11)*TYv11 - 20*AbsYv33*Ye11*Conjg(Yv11)*TYv11 +& 
&  40*gpp2*QHup2*Ye11*Conjg(Yv11)*TYv11 - 40*gpp2*Ql1p2*Ye11*Conjg(Yv11)*TYv11 +         & 
&  40*gpp2*Qv1p2*Ye11*Conjg(Yv11)*TYv11 - 60*TrYuadjYu*Ye11*Conjg(Yv11)*TYv11 -          & 
&  20*Abslam*Ye11*Conjg(Yv22)*TYv22 - 20*AbsYv11*Ye11*Conjg(Yv22)*TYv22 - 2*Conjg(Ye22)*((5._dp*(AbsYv22) -& 
&  6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*Ye22*TYe11 + 2*Ye11*((5._dp*(AbsYv22) -& 
&  6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*TYe22 + Ye22*(6*g1p2*M1 +             & 
&  10*gpp2*M4*(Qe2p2 - QHdp2 + Ql2p2) + 5*Conjg(Yv22)*TYv22))) - 20*Abslam*Ye11*Conjg(Yv33)*TYv33 -& 
&  20*AbsYv11*Ye11*Conjg(Yv33)*TYv33 - 2*Conjg(Ye33)*((5._dp*(AbsYv33) - 6._dp*(g1p2) -  & 
&  10*gpp2*(Qe3p2 - QHdp2 + Ql3p2))*Ye33*TYe11 + 2*Ye11*((5._dp*(AbsYv33) -              & 
&  6._dp*(g1p2) - 10*gpp2*(Qe3p2 - QHdp2 + Ql3p2))*TYe33 + Ye33*(6*g1p2*M1 +             & 
&  10*gpp2*M4*(Qe3p2 - QHdp2 + Ql3p2) + 5*Conjg(Yv33)*TYv33))) - 120*Clamp2*Ye11*lam*Tlam -& 
&  40*AbsYv11*Ye11*Conjg(lam)*Tlam - 20*AbsYv22*Ye11*Conjg(lam)*Tlam - 20*AbsYv33*Ye11*Conjg(lam)*Tlam -& 
&  40*gpp2*QHdp2*Ye11*Conjg(lam)*Tlam + 40*gpp2*QHup2*Ye11*Conjg(lam)*Tlam +             & 
&  40*gpp2*Qsp2*Ye11*Conjg(lam)*Tlam - 60*TrYuadjYu*Ye11*Conjg(lam)*Tlam -               & 
&  2*AbsYe11*((45._dp*(Abslam) + 45._dp*(AbsYe22) + 45._dp*(AbsYe33) + 45._dp*(AbsYv11) -& 
&  18._dp*(g1p2) - 90._dp*(g2p2) - 60*gpp2*QHdp2 - 60*gpp2*Ql1p2 + 135._dp*(TrYdadjYd))*TYe11 +& 
&  2*Ye11*(6*g1p2*M1 + 30*g2p2*M2 + 20*gpp2*M4*QHdp2 + 20*gpp2*M4*Ql1p2 + 45._dp*(TradjYdTd) +& 
&  15*Conjg(Ye22)*TYe22 + 15*Conjg(Ye33)*TYe33 + 15*Conjg(Yv11)*TYv11 + 15*Conjg(lam)*Tlam)))/10._dp

 
DTYe11 = oo16pi2*( betaTYe111 + oo16pi2 * betaTYe112 ) 

 
Else 
DTYe11 = oo16pi2* betaTYe111 
End If 
 
 
Call Chop(DTYe11) 

!-------------------- 
! TYe22 
!-------------------- 
 
betaTYe221  = (Abslam + 12._dp*(AbsYe22) + AbsYe33 + AbsYv22 - 9._dp*(g1p2)           & 
& /5._dp - 3._dp*(g2p2) - 2*gpp2*Qe2p2 - 2*gpp2*QHdp2 - 2*gpp2*Ql2p2 + 3._dp*(TrYdadjYd))& 
& *TYe22 + Conjg(Ye11)*(2*Ye22*TYe11 + Ye11*TYe22) + (2*Ye22*(9*g1p2*M1 + 15*g2p2*M2 +   & 
&  10*gpp2*M4*Qe2p2 + 10*gpp2*M4*QHdp2 + 10*gpp2*M4*Ql2p2 + 15._dp*(TradjYdTd)           & 
&  + 5*Conjg(Ye33)*TYe33 + 5*Conjg(Yv22)*TYv22 + 5*Conjg(lam)*Tlam))/5._dp

 
 
If (TwoLoopRGE) Then 
betaTYe222 = (-24*AbsYe33*g1p2*M1*Ye22 - 540*g1p4*M1*Ye22 - 36*g1p2*g2p2*M1*Ye22 - 36*g1p2*g2p2*M2*Ye22 -& 
&  300*g2p4*M2*Ye22 - 144*g1p2*gpp2*M1*Qd*Qe2*Ye22 - 144*g1p2*gpp2*M4*Qd*Qe2*Ye22 -      & 
&  48*g1p2*gpp2*M1*Qe1*Qe2*Ye22 - 48*g1p2*gpp2*M4*Qe1*Qe2*Ye22 - 144*g1p2*gpp2*M1*Qe2p2*Ye22 -& 
&  144*g1p2*gpp2*M4*Qe2p2*Ye22 - 720*gpp4*M4*Qdp2*Qe2p2*Ye22 - 80*gpp4*M4*Qe1p2*Qe2p2*Ye22 -& 
&  240*gpp4*M4*Qe2p4*Ye22 - 48*g1p2*gpp2*M1*Qe2*Qe3*Ye22 - 48*g1p2*gpp2*M4*Qe2*Qe3*Ye22 -& 
&  40*AbsYe33*gpp2*M4*Qe3p2*Ye22 - 80*gpp4*M4*Qe2p2*Qe3p2*Ye22 + 72*g1p2*gpp2*M1*Qd*QHd*Ye22 +& 
&  72*g1p2*gpp2*M4*Qd*QHd*Ye22 + 24*g1p2*gpp2*M1*Qe1*QHd*Ye22 + 24*g1p2*gpp2*M4*Qe1*QHd*Ye22 +& 
&  72*g1p2*gpp2*M1*Qe2*QHd*Ye22 + 72*g1p2*gpp2*M4*Qe2*QHd*Ye22 + 24*g1p2*gpp2*M1*Qe3*QHd*Ye22 +& 
&  24*g1p2*gpp2*M4*Qe3*QHd*Ye22 - 48*g1p2*gpp2*M1*QHdp2*Ye22 + 40*Abslam*gpp2*M4*QHdp2*Ye22 +& 
&  40*AbsYe33*gpp2*M4*QHdp2*Ye22 - 48*g1p2*gpp2*M4*QHdp2*Ye22 - 120*g2p2*gpp2*M4*QHdp2*Ye22 -& 
&  120*g2p2*gpp2*M2*QHdp2*Ye22 - 720*gpp4*M4*Qdp2*QHdp2*Ye22 - 80*gpp4*M4*Qe1p2*QHdp2*Ye22 -& 
&  240*gpp4*M4*Qe2p2*QHdp2*Ye22 - 80*gpp4*M4*Qe3p2*QHdp2*Ye22 - 320*gpp4*M4*QHdp4*Ye22 - & 
&  48*g1p2*gpp2*M1*Qe2*QHu*Ye22 - 48*g1p2*gpp2*M4*Qe2*QHu*Ye22 + 24*g1p2*gpp2*M1*QHd*QHu*Ye22 +& 
&  24*g1p2*gpp2*M4*QHd*QHu*Ye22 - 40*Abslam*gpp2*M4*QHup2*Ye22 - 40*AbsYv22*gpp2*M4*QHup2*Ye22 -& 
&  160*gpp4*M4*Qe2p2*QHup2*Ye22 - 160*gpp4*M4*QHdp2*QHup2*Ye22 + 48*g1p2*gpp2*M1*Qe2*Ql1*Ye22 +& 
&  48*g1p2*gpp2*M4*Qe2*Ql1*Ye22 - 24*g1p2*gpp2*M1*QHd*Ql1*Ye22 - 24*g1p2*gpp2*M4*QHd*Ql1*Ye22 -& 
&  160*gpp4*M4*Qe2p2*Ql1p2*Ye22 - 160*gpp4*M4*QHdp2*Ql1p2*Ye22 + 72*g1p2*gpp2*M1*Qd*Ql2*Ye22 +& 
&  72*g1p2*gpp2*M4*Qd*Ql2*Ye22 + 24*g1p2*gpp2*M1*Qe1*Ql2*Ye22 + 24*g1p2*gpp2*M4*Qe1*Ql2*Ye22 +& 
&  72*g1p2*gpp2*M1*Qe2*Ql2*Ye22 + 72*g1p2*gpp2*M4*Qe2*Ql2*Ye22 + 24*g1p2*gpp2*M1*Qe3*Ql2*Ye22 +& 
&  24*g1p2*gpp2*M4*Qe3*Ql2*Ye22 - 48*g1p2*gpp2*M1*QHd*Ql2*Ye22 - 48*g1p2*gpp2*M4*QHd*Ql2*Ye22 +& 
&  24*g1p2*gpp2*M1*QHu*Ql2*Ye22 + 24*g1p2*gpp2*M4*QHu*Ql2*Ye22 - 24*g1p2*gpp2*M1*Ql1*Ql2*Ye22 -& 
&  24*g1p2*gpp2*M4*Ql1*Ql2*Ye22 - 48*g1p2*gpp2*M1*Ql2p2*Ye22 + 40*AbsYv22*gpp2*M4*Ql2p2*Ye22 -& 
&  48*g1p2*gpp2*M4*Ql2p2*Ye22 - 120*g2p2*gpp2*M4*Ql2p2*Ye22 - 120*g2p2*gpp2*M2*Ql2p2*Ye22 -& 
&  720*gpp4*M4*Qdp2*Ql2p2*Ye22 - 80*gpp4*M4*Qe1p2*Ql2p2*Ye22 - 240*gpp4*M4*Qe2p2*Ql2p2*Ye22 -& 
&  80*gpp4*M4*Qe3p2*Ql2p2*Ye22 - 320*gpp4*M4*QHdp2*Ql2p2*Ye22 - 160*gpp4*M4*QHup2*Ql2p2*Ye22 -& 
&  160*gpp4*M4*Ql1p2*Ql2p2*Ye22 - 320*gpp4*M4*Ql2p4*Ye22 + 48*g1p2*gpp2*M1*Qe2*Ql3*Ye22 +& 
&  48*g1p2*gpp2*M4*Qe2*Ql3*Ye22 - 24*g1p2*gpp2*M1*QHd*Ql3*Ye22 - 24*g1p2*gpp2*M4*QHd*Ql3*Ye22 -& 
&  24*g1p2*gpp2*M1*Ql2*Ql3*Ye22 - 24*g1p2*gpp2*M4*Ql2*Ql3*Ye22 - 40*AbsYe33*gpp2*M4*Ql3p2*Ye22 -& 
&  160*gpp4*M4*Qe2p2*Ql3p2*Ye22 - 160*gpp4*M4*QHdp2*Ql3p2*Ye22 - 160*gpp4*M4*Ql2p2*Ql3p2*Ye22 -& 
&  144*g1p2*gpp2*M1*Qe2*Qq*Ye22 - 144*g1p2*gpp2*M4*Qe2*Qq*Ye22 + 72*g1p2*gpp2*M1*QHd*Qq*Ye22 +& 
&  72*g1p2*gpp2*M4*QHd*Qq*Ye22 + 72*g1p2*gpp2*M1*Ql2*Qq*Ye22 + 72*g1p2*gpp2*M4*Ql2*Qq*Ye22 -& 
&  1440*gpp4*M4*Qe2p2*Qqp2*Ye22 - 1440*gpp4*M4*QHdp2*Qqp2*Ye22 - 1440*gpp4*M4*Ql2p2*Qqp2*Ye22 -& 
&  40*Abslam*gpp2*M4*Qsp2*Ye22 - 80*gpp4*M4*Qe2p2*Qsp2*Ye22 - 80*gpp4*M4*QHdp2*Qsp2*Ye22 -& 
&  80*gpp4*M4*Ql2p2*Qsp2*Ye22 + 288*g1p2*gpp2*M1*Qe2*Qu*Ye22 + 288*g1p2*gpp2*M4*Qe2*Qu*Ye22 -& 
&  144*g1p2*gpp2*M1*QHd*Qu*Ye22 - 144*g1p2*gpp2*M4*QHd*Qu*Ye22 - 144*g1p2*gpp2*M1*Ql2*Qu*Ye22 -& 
&  144*g1p2*gpp2*M4*Ql2*Qu*Ye22 - 720*gpp4*M4*Qe2p2*Qup2*Ye22 - 720*gpp4*M4*QHdp2*Qup2*Ye22 -& 
&  720*gpp4*M4*Ql2p2*Qup2*Ye22 - 80*gpp4*M4*Qe2p2*Qv1p2*Ye22 - 80*gpp4*M4*QHdp2*Qv1p2*Ye22 -& 
&  80*gpp4*M4*Ql2p2*Qv1p2*Ye22 - 40*AbsYv22*gpp2*M4*Qv2p2*Ye22 - 80*gpp4*M4*Qe2p2*Qv2p2*Ye22 -& 
&  80*gpp4*M4*QHdp2*Qv2p2*Ye22 - 80*gpp4*M4*Ql2p2*Qv2p2*Ye22 - 80*gpp4*M4*Qe2p2*Qv3p2*Ye22 -& 
&  80*gpp4*M4*QHdp2*Qv3p2*Ye22 - 80*gpp4*M4*Ql2p2*Qv3p2*Ye22 - 8*g1p2*TradjYdTd*Ye22 +   & 
&  320*g3p2*TradjYdTd*Ye22 + 120*gpp2*Qdp2*TradjYdTd*Ye22 - 120*gpp2*QHdp2*TradjYdTd*Ye22 +& 
&  120*gpp2*Qqp2*TradjYdTd*Ye22 - 60*Abslam*TradjYuTu*Ye22 - 60*AbsYv22*TradjYuTu*Ye22 + & 
&  8*g1p2*M1*TrYdadjYd*Ye22 - 320*g3p2*M3*TrYdadjYd*Ye22 - 120*gpp2*M4*Qdp2*TrYdadjYd*Ye22 +& 
&  120*gpp2*M4*QHdp2*TrYdadjYd*Ye22 - 120*gpp2*M4*Qqp2*TrYdadjYd*Ye22 - 360*TrYdadjYdTdadjYd*Ye22 -& 
&  60*TrYdadjYuTuadjYd*Ye22 - 60*TrYuadjYdTdadjYu*Ye22 - 10*Abslam*AbsYv11*TYe22 -       & 
&  20*Abslam*AbsYv22*TYe22 - 10*AbsYv11*AbsYv22*TYe22 - 10*Abslam*AbsYv33*TYe22 -        & 
&  10*AbsYe33*AbsYv33*TYe22 - 10*AbsYv22*AbsYv33*TYe22 + 12*AbsYe33*g1p2*TYe22 +         & 
&  135*g1p4*TYe22 + 18*g1p2*g2p2*TYe22 + 75*g2p4*TYe22 - 30*Clamp2*lamp2*TYe22 +         & 
&  72*g1p2*gpp2*Qd*Qe2*TYe22 + 24*g1p2*gpp2*Qe1*Qe2*TYe22 + 72*g1p2*gpp2*Qe2p2*TYe22 +   & 
&  180*gpp4*Qdp2*Qe2p2*TYe22 + 20*gpp4*Qe1p2*Qe2p2*TYe22 + 60*gpp4*Qe2p4*TYe22 +         & 
&  24*g1p2*gpp2*Qe2*Qe3*TYe22 + 20*AbsYe33*gpp2*Qe3p2*TYe22 + 20*gpp4*Qe2p2*Qe3p2*TYe22 -& 
&  36*g1p2*gpp2*Qd*QHd*TYe22 - 12*g1p2*gpp2*Qe1*QHd*TYe22 - 36*g1p2*gpp2*Qe2*QHd*TYe22 - & 
&  12*g1p2*gpp2*Qe3*QHd*TYe22 - 20*Abslam*gpp2*QHdp2*TYe22 - 20*AbsYe33*gpp2*QHdp2*TYe22 +& 
&  24*g1p2*gpp2*QHdp2*TYe22 + 60*g2p2*gpp2*QHdp2*TYe22 + 180*gpp4*Qdp2*QHdp2*TYe22 +     & 
&  20*gpp4*Qe1p2*QHdp2*TYe22 + 60*gpp4*Qe2p2*QHdp2*TYe22 + 20*gpp4*Qe3p2*QHdp2*TYe22 +   & 
&  80*gpp4*QHdp4*TYe22 + 24*g1p2*gpp2*Qe2*QHu*TYe22 - 12*g1p2*gpp2*QHd*QHu*TYe22 +       & 
&  20*Abslam*gpp2*QHup2*TYe22 + 20*AbsYv22*gpp2*QHup2*TYe22 + 40*gpp4*Qe2p2*QHup2*TYe22 +& 
&  40*gpp4*QHdp2*QHup2*TYe22 - 24*g1p2*gpp2*Qe2*Ql1*TYe22 + 12*g1p2*gpp2*QHd*Ql1*TYe22 + & 
&  40*gpp4*Qe2p2*Ql1p2*TYe22 + 40*gpp4*QHdp2*Ql1p2*TYe22 - 36*g1p2*gpp2*Qd*Ql2*TYe22 -   & 
&  12*g1p2*gpp2*Qe1*Ql2*TYe22 - 36*g1p2*gpp2*Qe2*Ql2*TYe22 - 12*g1p2*gpp2*Qe3*Ql2*TYe22 +& 
&  24*g1p2*gpp2*QHd*Ql2*TYe22 - 12*g1p2*gpp2*QHu*Ql2*TYe22 + 12*g1p2*gpp2*Ql1*Ql2*TYe22 -& 
&  20*AbsYv22*gpp2*Ql2p2*TYe22 + 24*g1p2*gpp2*Ql2p2*TYe22 + 60*g2p2*gpp2*Ql2p2*TYe22 +   & 
&  180*gpp4*Qdp2*Ql2p2*TYe22 + 20*gpp4*Qe1p2*Ql2p2*TYe22 + 60*gpp4*Qe2p2*Ql2p2*TYe22 +   & 
&  20*gpp4*Qe3p2*Ql2p2*TYe22 + 80*gpp4*QHdp2*Ql2p2*TYe22 + 40*gpp4*QHup2*Ql2p2*TYe22 +   & 
&  40*gpp4*Ql1p2*Ql2p2*TYe22 + 80*gpp4*Ql2p4*TYe22 - 24*g1p2*gpp2*Qe2*Ql3*TYe22 +        & 
&  12*g1p2*gpp2*QHd*Ql3*TYe22 + 12*g1p2*gpp2*Ql2*Ql3*TYe22 + 20*AbsYe33*gpp2*Ql3p2*TYe22 +& 
&  40*gpp4*Qe2p2*Ql3p2*TYe22 + 40*gpp4*QHdp2*Ql3p2*TYe22 + 40*gpp4*Ql2p2*Ql3p2*TYe22 +   & 
&  72*g1p2*gpp2*Qe2*Qq*TYe22 - 36*g1p2*gpp2*QHd*Qq*TYe22 - 36*g1p2*gpp2*Ql2*Qq*TYe22 +   & 
&  360*gpp4*Qe2p2*Qqp2*TYe22 + 360*gpp4*QHdp2*Qqp2*TYe22 + 360*gpp4*Ql2p2*Qqp2*TYe22 +   & 
&  20*Abslam*gpp2*Qsp2*TYe22 + 20*gpp4*Qe2p2*Qsp2*TYe22 + 20*gpp4*QHdp2*Qsp2*TYe22 +     & 
&  20*gpp4*Ql2p2*Qsp2*TYe22 - 144*g1p2*gpp2*Qe2*Qu*TYe22 + 72*g1p2*gpp2*QHd*Qu*TYe22 +   & 
&  72*g1p2*gpp2*Ql2*Qu*TYe22 + 180*gpp4*Qe2p2*Qup2*TYe22 + 180*gpp4*QHdp2*Qup2*TYe22 +   & 
&  180*gpp4*Ql2p2*Qup2*TYe22 + 20*gpp4*Qe2p2*Qv1p2*TYe22 + 20*gpp4*QHdp2*Qv1p2*TYe22 +   & 
&  20*gpp4*Ql2p2*Qv1p2*TYe22 + 20*AbsYv22*gpp2*Qv2p2*TYe22 + 20*gpp4*Qe2p2*Qv2p2*TYe22 + & 
&  20*gpp4*QHdp2*Qv2p2*TYe22 + 20*gpp4*Ql2p2*Qv2p2*TYe22 + 20*gpp4*Qe2p2*Qv3p2*TYe22 +   & 
&  20*gpp4*QHdp2*Qv3p2*TYe22 + 20*gpp4*Ql2p2*Qv3p2*TYe22 - 4*g1p2*TrYdadjYd*TYe22 +      & 
&  160*g3p2*TrYdadjYd*TYe22 + 60*gpp2*Qdp2*TrYdadjYd*TYe22 - 60*gpp2*QHdp2*TrYdadjYd*TYe22 +& 
&  60*gpp2*Qqp2*TrYdadjYd*TYe22 - 90*TrYdadjYdYdadjYd*TYe22 - 30*TrYdadjYuYuadjYd*TYe22 -& 
&  30*Abslam*TrYuadjYu*TYe22 - 30*AbsYv22*TrYuadjYu*TYe22 - 500*CYe22p2*Ye22p2*TYe22 -   & 
&  30*CYe33p2*Ye33p2*TYe22 - 30*CYv22p2*Yv22p2*TYe22 - 30*CYe11p2*Ye11*(4*Ye22*TYe11 +   & 
&  Ye11*TYe22) - 120*CYe33p2*Ye22*Ye33*TYe33 - 20*AbsYv33*Ye22*Conjg(Ye33)*TYe33 +       & 
&  24*g1p2*Ye22*Conjg(Ye33)*TYe33 + 40*gpp2*Qe3p2*Ye22*Conjg(Ye33)*TYe33 -               & 
&  40*gpp2*QHdp2*Ye22*Conjg(Ye33)*TYe33 + 40*gpp2*Ql3p2*Ye22*Conjg(Ye33)*TYe33 -         & 
&  20*Abslam*Ye22*Conjg(Yv11)*TYv11 - 20*AbsYv22*Ye22*Conjg(Yv11)*TYv11 - 2*Conjg(Ye11)*(2*(15._dp*(AbsYe22) +& 
&  5._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*Ye22*TYe11 +        & 
&  (45._dp*(AbsYe22) + 5._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 +         & 
&  Ql1p2))*Ye11*TYe22 + 2*Ye11*Ye22*(6*g1p2*M1 + 10*gpp2*M4*(Qe1p2 - QHdp2 +             & 
&  Ql1p2) + 5*Conjg(Yv11)*TYv11)) - 120*CYv22p2*Ye22*Yv22*TYv22 - 40*Abslam*Ye22*Conjg(Yv22)*TYv22 -& 
&  20*AbsYv11*Ye22*Conjg(Yv22)*TYv22 - 20*AbsYv33*Ye22*Conjg(Yv22)*TYv22 +               & 
&  40*gpp2*QHup2*Ye22*Conjg(Yv22)*TYv22 - 40*gpp2*Ql2p2*Ye22*Conjg(Yv22)*TYv22 +         & 
&  40*gpp2*Qv2p2*Ye22*Conjg(Yv22)*TYv22 - 60*TrYuadjYu*Ye22*Conjg(Yv22)*TYv22 -          & 
&  20*Abslam*Ye22*Conjg(Yv33)*TYv33 - 20*AbsYe33*Ye22*Conjg(Yv33)*TYv33 - 20*AbsYv22*Ye22*Conjg(Yv33)*TYv33 -& 
&  120*Clamp2*Ye22*lam*Tlam - 20*AbsYv11*Ye22*Conjg(lam)*Tlam - 40*AbsYv22*Ye22*Conjg(lam)*Tlam -& 
&  20*AbsYv33*Ye22*Conjg(lam)*Tlam - 40*gpp2*QHdp2*Ye22*Conjg(lam)*Tlam + 40*gpp2*QHup2*Ye22*Conjg(lam)*Tlam +& 
&  40*gpp2*Qsp2*Ye22*Conjg(lam)*Tlam - 60*TrYuadjYu*Ye22*Conjg(lam)*Tlam -               & 
&  2*AbsYe22*(-3*(-15._dp*(Abslam) - 15._dp*(AbsYe33) - 15._dp*(AbsYv22) +               & 
&  6._dp*(g1p2) + 30._dp*(g2p2) + 20*gpp2*QHdp2 + 20*gpp2*Ql2p2 - 45._dp*(TrYdadjYd))*TYe22 +& 
&  2*Ye22*(6*g1p2*M1 + 30*g2p2*M2 + 20*gpp2*M4*QHdp2 + 20*gpp2*M4*Ql2p2 + 45._dp*(TradjYdTd) +& 
&  15*Conjg(Ye33)*TYe33 + 15*Conjg(Yv22)*TYv22 + 15*Conjg(lam)*Tlam)))/10._dp

 
DTYe22 = oo16pi2*( betaTYe221 + oo16pi2 * betaTYe222 ) 

 
Else 
DTYe22 = oo16pi2* betaTYe221 
End If 
 
 
Call Chop(DTYe22) 

!-------------------- 
! TYe33 
!-------------------- 
 
betaTYe331  = (18*g1p2*M1*Ye33)/5._dp + 6*g2p2*M2*Ye33 + 4*gpp2*M4*Qe3p2*Ye33 +       & 
&  4*gpp2*M4*QHdp2*Ye33 + 4*gpp2*M4*Ql3p2*Ye33 + 6*TradjYdTd*Ye33 + Abslam*TYe33 +       & 
&  12*AbsYe33*TYe33 + AbsYv33*TYe33 - (9*g1p2*TYe33)/5._dp - 3*g2p2*TYe33 -              & 
&  2*gpp2*Qe3p2*TYe33 - 2*gpp2*QHdp2*TYe33 - 2*gpp2*Ql3p2*TYe33 + 3*TrYdadjYd*TYe33 +    & 
&  Conjg(Ye11)*(2*Ye33*TYe11 + Ye11*TYe33) + Conjg(Ye22)*(2*Ye33*TYe22 + Ye22*TYe33)     & 
&  + 2*Ye33*Conjg(Yv33)*TYv33 + 2*Ye33*Conjg(lam)*Tlam

 
 
If (TwoLoopRGE) Then 
betaTYe332 = (-540*g1p4*M1*Ye33 - 36*g1p2*g2p2*M1*Ye33 - 36*g1p2*g2p2*M2*Ye33 - 300*g2p4*M2*Ye33 - & 
&  144*g1p2*gpp2*M1*Qd*Qe3*Ye33 - 144*g1p2*gpp2*M4*Qd*Qe3*Ye33 - 48*g1p2*gpp2*M1*Qe1*Qe3*Ye33 -& 
&  48*g1p2*gpp2*M4*Qe1*Qe3*Ye33 - 48*g1p2*gpp2*M1*Qe2*Qe3*Ye33 - 48*g1p2*gpp2*M4*Qe2*Qe3*Ye33 -& 
&  144*g1p2*gpp2*M1*Qe3p2*Ye33 - 144*g1p2*gpp2*M4*Qe3p2*Ye33 - 720*gpp4*M4*Qdp2*Qe3p2*Ye33 -& 
&  80*gpp4*M4*Qe1p2*Qe3p2*Ye33 - 80*gpp4*M4*Qe2p2*Qe3p2*Ye33 - 240*gpp4*M4*Qe3p4*Ye33 +  & 
&  72*g1p2*gpp2*M1*Qd*QHd*Ye33 + 72*g1p2*gpp2*M4*Qd*QHd*Ye33 + 24*g1p2*gpp2*M1*Qe1*QHd*Ye33 +& 
&  24*g1p2*gpp2*M4*Qe1*QHd*Ye33 + 24*g1p2*gpp2*M1*Qe2*QHd*Ye33 + 24*g1p2*gpp2*M4*Qe2*QHd*Ye33 +& 
&  72*g1p2*gpp2*M1*Qe3*QHd*Ye33 + 72*g1p2*gpp2*M4*Qe3*QHd*Ye33 - 48*g1p2*gpp2*M1*QHdp2*Ye33 +& 
&  40*Abslam*gpp2*M4*QHdp2*Ye33 - 48*g1p2*gpp2*M4*QHdp2*Ye33 - 120*g2p2*gpp2*M4*QHdp2*Ye33 -& 
&  120*g2p2*gpp2*M2*QHdp2*Ye33 - 720*gpp4*M4*Qdp2*QHdp2*Ye33 - 80*gpp4*M4*Qe1p2*QHdp2*Ye33 -& 
&  80*gpp4*M4*Qe2p2*QHdp2*Ye33 - 240*gpp4*M4*Qe3p2*QHdp2*Ye33 - 320*gpp4*M4*QHdp4*Ye33 - & 
&  48*g1p2*gpp2*M1*Qe3*QHu*Ye33 - 48*g1p2*gpp2*M4*Qe3*QHu*Ye33 + 24*g1p2*gpp2*M1*QHd*QHu*Ye33 +& 
&  24*g1p2*gpp2*M4*QHd*QHu*Ye33 - 40*Abslam*gpp2*M4*QHup2*Ye33 - 40*AbsYv33*gpp2*M4*QHup2*Ye33 -& 
&  160*gpp4*M4*Qe3p2*QHup2*Ye33 - 160*gpp4*M4*QHdp2*QHup2*Ye33 + 48*g1p2*gpp2*M1*Qe3*Ql1*Ye33 +& 
&  48*g1p2*gpp2*M4*Qe3*Ql1*Ye33 - 24*g1p2*gpp2*M1*QHd*Ql1*Ye33 - 24*g1p2*gpp2*M4*QHd*Ql1*Ye33 -& 
&  160*gpp4*M4*Qe3p2*Ql1p2*Ye33 - 160*gpp4*M4*QHdp2*Ql1p2*Ye33 + 48*g1p2*gpp2*M1*Qe3*Ql2*Ye33 +& 
&  48*g1p2*gpp2*M4*Qe3*Ql2*Ye33 - 24*g1p2*gpp2*M1*QHd*Ql2*Ye33 - 24*g1p2*gpp2*M4*QHd*Ql2*Ye33 -& 
&  160*gpp4*M4*Qe3p2*Ql2p2*Ye33 - 160*gpp4*M4*QHdp2*Ql2p2*Ye33 + 72*g1p2*gpp2*M1*Qd*Ql3*Ye33 +& 
&  72*g1p2*gpp2*M4*Qd*Ql3*Ye33 + 24*g1p2*gpp2*M1*Qe1*Ql3*Ye33 + 24*g1p2*gpp2*M4*Qe1*Ql3*Ye33 +& 
&  24*g1p2*gpp2*M1*Qe2*Ql3*Ye33 + 24*g1p2*gpp2*M4*Qe2*Ql3*Ye33 + 72*g1p2*gpp2*M1*Qe3*Ql3*Ye33 +& 
&  72*g1p2*gpp2*M4*Qe3*Ql3*Ye33 - 48*g1p2*gpp2*M1*QHd*Ql3*Ye33 - 48*g1p2*gpp2*M4*QHd*Ql3*Ye33 +& 
&  24*g1p2*gpp2*M1*QHu*Ql3*Ye33 + 24*g1p2*gpp2*M4*QHu*Ql3*Ye33 - 24*g1p2*gpp2*M1*Ql1*Ql3*Ye33 -& 
&  24*g1p2*gpp2*M4*Ql1*Ql3*Ye33 - 24*g1p2*gpp2*M1*Ql2*Ql3*Ye33 - 24*g1p2*gpp2*M4*Ql2*Ql3*Ye33 -& 
&  48*g1p2*gpp2*M1*Ql3p2*Ye33 + 40*AbsYv33*gpp2*M4*Ql3p2*Ye33 - 48*g1p2*gpp2*M4*Ql3p2*Ye33 -& 
&  120*g2p2*gpp2*M4*Ql3p2*Ye33 - 120*g2p2*gpp2*M2*Ql3p2*Ye33 - 720*gpp4*M4*Qdp2*Ql3p2*Ye33 -& 
&  80*gpp4*M4*Qe1p2*Ql3p2*Ye33 - 80*gpp4*M4*Qe2p2*Ql3p2*Ye33 - 240*gpp4*M4*Qe3p2*Ql3p2*Ye33 -& 
&  320*gpp4*M4*QHdp2*Ql3p2*Ye33 - 160*gpp4*M4*QHup2*Ql3p2*Ye33 - 160*gpp4*M4*Ql1p2*Ql3p2*Ye33 -& 
&  160*gpp4*M4*Ql2p2*Ql3p2*Ye33 - 320*gpp4*M4*Ql3p4*Ye33 - 144*g1p2*gpp2*M1*Qe3*Qq*Ye33 -& 
&  144*g1p2*gpp2*M4*Qe3*Qq*Ye33 + 72*g1p2*gpp2*M1*QHd*Qq*Ye33 + 72*g1p2*gpp2*M4*QHd*Qq*Ye33 +& 
&  72*g1p2*gpp2*M1*Ql3*Qq*Ye33 + 72*g1p2*gpp2*M4*Ql3*Qq*Ye33 - 1440*gpp4*M4*Qe3p2*Qqp2*Ye33 -& 
&  1440*gpp4*M4*QHdp2*Qqp2*Ye33 - 1440*gpp4*M4*Ql3p2*Qqp2*Ye33 - 40*Abslam*gpp2*M4*Qsp2*Ye33 -& 
&  80*gpp4*M4*Qe3p2*Qsp2*Ye33 - 80*gpp4*M4*QHdp2*Qsp2*Ye33 - 80*gpp4*M4*Ql3p2*Qsp2*Ye33 +& 
&  288*g1p2*gpp2*M1*Qe3*Qu*Ye33 + 288*g1p2*gpp2*M4*Qe3*Qu*Ye33 - 144*g1p2*gpp2*M1*QHd*Qu*Ye33 -& 
&  144*g1p2*gpp2*M4*QHd*Qu*Ye33 - 144*g1p2*gpp2*M1*Ql3*Qu*Ye33 - 144*g1p2*gpp2*M4*Ql3*Qu*Ye33 -& 
&  720*gpp4*M4*Qe3p2*Qup2*Ye33 - 720*gpp4*M4*QHdp2*Qup2*Ye33 - 720*gpp4*M4*Ql3p2*Qup2*Ye33 -& 
&  80*gpp4*M4*Qe3p2*Qv1p2*Ye33 - 80*gpp4*M4*QHdp2*Qv1p2*Ye33 - 80*gpp4*M4*Ql3p2*Qv1p2*Ye33 -& 
&  80*gpp4*M4*Qe3p2*Qv2p2*Ye33 - 80*gpp4*M4*QHdp2*Qv2p2*Ye33 - 80*gpp4*M4*Ql3p2*Qv2p2*Ye33 -& 
&  40*AbsYv33*gpp2*M4*Qv3p2*Ye33 - 80*gpp4*M4*Qe3p2*Qv3p2*Ye33 - 80*gpp4*M4*QHdp2*Qv3p2*Ye33 -& 
&  80*gpp4*M4*Ql3p2*Qv3p2*Ye33 - 8*g1p2*TradjYdTd*Ye33 + 320*g3p2*TradjYdTd*Ye33 +       & 
&  120*gpp2*Qdp2*TradjYdTd*Ye33 - 120*gpp2*QHdp2*TradjYdTd*Ye33 + 120*gpp2*Qqp2*TradjYdTd*Ye33 -& 
&  60*Abslam*TradjYuTu*Ye33 - 60*AbsYv33*TradjYuTu*Ye33 + 8*g1p2*M1*TrYdadjYd*Ye33 -     & 
&  320*g3p2*M3*TrYdadjYd*Ye33 - 120*gpp2*M4*Qdp2*TrYdadjYd*Ye33 + 120*gpp2*M4*QHdp2*TrYdadjYd*Ye33 -& 
&  120*gpp2*M4*Qqp2*TrYdadjYd*Ye33 - 360*TrYdadjYdTdadjYd*Ye33 - 60*TrYdadjYuTuadjYd*Ye33 -& 
&  60*TrYuadjYdTdadjYu*Ye33 - 10*Abslam*AbsYv11*TYe33 - 10*Abslam*AbsYv22*TYe33 -        & 
&  20*Abslam*AbsYv33*TYe33 - 10*AbsYv11*AbsYv33*TYe33 - 10*AbsYv22*AbsYv33*TYe33 +       & 
&  135*g1p4*TYe33 + 18*g1p2*g2p2*TYe33 + 75*g2p4*TYe33 - 30*Clamp2*lamp2*TYe33 +         & 
&  72*g1p2*gpp2*Qd*Qe3*TYe33 + 24*g1p2*gpp2*Qe1*Qe3*TYe33 + 24*g1p2*gpp2*Qe2*Qe3*TYe33 + & 
&  72*g1p2*gpp2*Qe3p2*TYe33 + 180*gpp4*Qdp2*Qe3p2*TYe33 + 20*gpp4*Qe1p2*Qe3p2*TYe33 +    & 
&  20*gpp4*Qe2p2*Qe3p2*TYe33 + 60*gpp4*Qe3p4*TYe33 - 36*g1p2*gpp2*Qd*QHd*TYe33 -         & 
&  12*g1p2*gpp2*Qe1*QHd*TYe33 - 12*g1p2*gpp2*Qe2*QHd*TYe33 - 36*g1p2*gpp2*Qe3*QHd*TYe33 -& 
&  20*Abslam*gpp2*QHdp2*TYe33 + 24*g1p2*gpp2*QHdp2*TYe33 + 60*g2p2*gpp2*QHdp2*TYe33 +    & 
&  180*gpp4*Qdp2*QHdp2*TYe33 + 20*gpp4*Qe1p2*QHdp2*TYe33 + 20*gpp4*Qe2p2*QHdp2*TYe33 +   & 
&  60*gpp4*Qe3p2*QHdp2*TYe33 + 80*gpp4*QHdp4*TYe33 + 24*g1p2*gpp2*Qe3*QHu*TYe33 -        & 
&  12*g1p2*gpp2*QHd*QHu*TYe33 + 20*Abslam*gpp2*QHup2*TYe33 + 20*AbsYv33*gpp2*QHup2*TYe33 +& 
&  40*gpp4*Qe3p2*QHup2*TYe33 + 40*gpp4*QHdp2*QHup2*TYe33 - 24*g1p2*gpp2*Qe3*Ql1*TYe33 +  & 
&  12*g1p2*gpp2*QHd*Ql1*TYe33 + 40*gpp4*Qe3p2*Ql1p2*TYe33 + 40*gpp4*QHdp2*Ql1p2*TYe33 -  & 
&  24*g1p2*gpp2*Qe3*Ql2*TYe33 + 12*g1p2*gpp2*QHd*Ql2*TYe33 + 40*gpp4*Qe3p2*Ql2p2*TYe33 + & 
&  40*gpp4*QHdp2*Ql2p2*TYe33 - 36*g1p2*gpp2*Qd*Ql3*TYe33 - 12*g1p2*gpp2*Qe1*Ql3*TYe33 -  & 
&  12*g1p2*gpp2*Qe2*Ql3*TYe33 - 36*g1p2*gpp2*Qe3*Ql3*TYe33 + 24*g1p2*gpp2*QHd*Ql3*TYe33 -& 
&  12*g1p2*gpp2*QHu*Ql3*TYe33 + 12*g1p2*gpp2*Ql1*Ql3*TYe33 + 12*g1p2*gpp2*Ql2*Ql3*TYe33 -& 
&  20*AbsYv33*gpp2*Ql3p2*TYe33 + 24*g1p2*gpp2*Ql3p2*TYe33 + 60*g2p2*gpp2*Ql3p2*TYe33 +   & 
&  180*gpp4*Qdp2*Ql3p2*TYe33 + 20*gpp4*Qe1p2*Ql3p2*TYe33 + 20*gpp4*Qe2p2*Ql3p2*TYe33 +   & 
&  60*gpp4*Qe3p2*Ql3p2*TYe33 + 80*gpp4*QHdp2*Ql3p2*TYe33 + 40*gpp4*QHup2*Ql3p2*TYe33 +   & 
&  40*gpp4*Ql1p2*Ql3p2*TYe33 + 40*gpp4*Ql2p2*Ql3p2*TYe33 + 80*gpp4*Ql3p4*TYe33 +         & 
&  72*g1p2*gpp2*Qe3*Qq*TYe33 - 36*g1p2*gpp2*QHd*Qq*TYe33 - 36*g1p2*gpp2*Ql3*Qq*TYe33 +   & 
&  360*gpp4*Qe3p2*Qqp2*TYe33 + 360*gpp4*QHdp2*Qqp2*TYe33 + 360*gpp4*Ql3p2*Qqp2*TYe33 +   & 
&  20*Abslam*gpp2*Qsp2*TYe33 + 20*gpp4*Qe3p2*Qsp2*TYe33 + 20*gpp4*QHdp2*Qsp2*TYe33 +     & 
&  20*gpp4*Ql3p2*Qsp2*TYe33 - 144*g1p2*gpp2*Qe3*Qu*TYe33 + 72*g1p2*gpp2*QHd*Qu*TYe33 +   & 
&  72*g1p2*gpp2*Ql3*Qu*TYe33 + 180*gpp4*Qe3p2*Qup2*TYe33 + 180*gpp4*QHdp2*Qup2*TYe33 +   & 
&  180*gpp4*Ql3p2*Qup2*TYe33 + 20*gpp4*Qe3p2*Qv1p2*TYe33 + 20*gpp4*QHdp2*Qv1p2*TYe33 +   & 
&  20*gpp4*Ql3p2*Qv1p2*TYe33 + 20*gpp4*Qe3p2*Qv2p2*TYe33 + 20*gpp4*QHdp2*Qv2p2*TYe33 +   & 
&  20*gpp4*Ql3p2*Qv2p2*TYe33 + 20*AbsYv33*gpp2*Qv3p2*TYe33 + 20*gpp4*Qe3p2*Qv3p2*TYe33 + & 
&  20*gpp4*QHdp2*Qv3p2*TYe33 + 20*gpp4*Ql3p2*Qv3p2*TYe33 - 4*g1p2*TrYdadjYd*TYe33 +      & 
&  160*g3p2*TrYdadjYd*TYe33 + 60*gpp2*Qdp2*TrYdadjYd*TYe33 - 60*gpp2*QHdp2*TrYdadjYd*TYe33 +& 
&  60*gpp2*Qqp2*TrYdadjYd*TYe33 - 90*TrYdadjYdYdadjYd*TYe33 - 30*TrYdadjYuYuadjYd*TYe33 -& 
&  30*Abslam*TrYuadjYu*TYe33 - 30*AbsYv33*TrYuadjYu*TYe33 - 500*CYe33p2*Ye33p2*TYe33 -   & 
&  30*CYv33p2*Yv33p2*TYe33 - 30*CYe11p2*Ye11*(4*Ye33*TYe11 + Ye11*TYe33) -               & 
&  30*CYe22p2*Ye22*(4*Ye33*TYe22 + Ye22*TYe33) - 20*Abslam*Ye33*Conjg(Yv11)*TYv11 -      & 
&  20*AbsYv33*Ye33*Conjg(Yv11)*TYv11 - 2*Conjg(Ye11)*(2*(15._dp*(AbsYe33) +              & 
&  5._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*Ye33*TYe11 +        & 
&  (45._dp*(AbsYe33) + 5._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 +         & 
&  Ql1p2))*Ye11*TYe33 + 2*Ye11*Ye33*(6*g1p2*M1 + 10*gpp2*M4*(Qe1p2 - QHdp2 +             & 
&  Ql1p2) + 5*Conjg(Yv11)*TYv11)) - 20*Abslam*Ye33*Conjg(Yv22)*TYv22 - 20*AbsYv33*Ye33*Conjg(Yv22)*TYv22 -& 
&  2*Conjg(Ye22)*(2*(15._dp*(AbsYe33) + 5._dp*(AbsYv22) - 6._dp*(g1p2) - 10*gpp2*(Qe2p2 -& 
&  QHdp2 + Ql2p2))*Ye33*TYe22 + (45._dp*(AbsYe33) + 5._dp*(AbsYv22) - 6._dp*(g1p2) -     & 
&  10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*Ye22*TYe33 + 2*Ye22*Ye33*(6*g1p2*M1 + 10*gpp2*M4*(Qe2p2 -& 
&  QHdp2 + Ql2p2) + 5*Conjg(Yv22)*TYv22)) - 120*CYv33p2*Ye33*Yv33*TYv33 - 40*Abslam*Ye33*Conjg(Yv33)*TYv33 -& 
&  20*AbsYv11*Ye33*Conjg(Yv33)*TYv33 - 20*AbsYv22*Ye33*Conjg(Yv33)*TYv33 +               & 
&  40*gpp2*QHup2*Ye33*Conjg(Yv33)*TYv33 - 40*gpp2*Ql3p2*Ye33*Conjg(Yv33)*TYv33 +         & 
&  40*gpp2*Qv3p2*Ye33*Conjg(Yv33)*TYv33 - 60*TrYuadjYu*Ye33*Conjg(Yv33)*TYv33 -          & 
&  120*Clamp2*Ye33*lam*Tlam - 20*AbsYv11*Ye33*Conjg(lam)*Tlam - 20*AbsYv22*Ye33*Conjg(lam)*Tlam -& 
&  40*AbsYv33*Ye33*Conjg(lam)*Tlam - 40*gpp2*QHdp2*Ye33*Conjg(lam)*Tlam + 40*gpp2*QHup2*Ye33*Conjg(lam)*Tlam +& 
&  40*gpp2*Qsp2*Ye33*Conjg(lam)*Tlam - 60*TrYuadjYu*Ye33*Conjg(lam)*Tlam -               & 
&  2*AbsYe33*(-3*(-15._dp*(Abslam) - 15._dp*(AbsYv33) + 6._dp*(g1p2) + 30._dp*(g2p2) +   & 
&  20*gpp2*QHdp2 + 20*gpp2*Ql3p2 - 45._dp*(TrYdadjYd))*TYe33 + 2*Ye33*(6*g1p2*M1 +       & 
&  30*g2p2*M2 + 20*gpp2*M4*QHdp2 + 20*gpp2*M4*Ql3p2 + 45._dp*(TradjYdTd) +               & 
&  15*Conjg(Yv33)*TYv33 + 15*Conjg(lam)*Tlam)))/10._dp

 
DTYe33 = oo16pi2*( betaTYe331 + oo16pi2 * betaTYe332 ) 

 
Else 
DTYe33 = oo16pi2* betaTYe331 
End If 
 
 
Call Chop(DTYe33) 

!-------------------- 
! Tlam 
!-------------------- 
 
betaTlam1  = (6*g1p2*M1*lam)/5._dp + 6*g2p2*M2*lam + 4*gpp2*M4*QHdp2*lam +            & 
&  4*gpp2*M4*QHup2*lam + 4*gpp2*M4*Qsp2*lam + 6*TradjYdTd*lam + 6*TradjYuTu*lam +        & 
&  2*lam*Conjg(Ye33)*TYe33 + 2*lam*Conjg(Yv11)*TYv11 + 2*lam*Conjg(Yv22)*TYv22 +         & 
&  2*lam*Conjg(Yv33)*TYv33 + 12*Abslam*Tlam + AbsYe33*Tlam + AbsYv11*Tlam +              & 
&  AbsYv22*Tlam + AbsYv33*Tlam - (3*g1p2*Tlam)/5._dp - 3*g2p2*Tlam - 2*gpp2*QHdp2*Tlam - & 
&  2*gpp2*QHup2*Tlam - 2*gpp2*Qsp2*Tlam + 3*TrYdadjYd*Tlam + 3*TrYuadjYu*Tlam +          & 
&  Conjg(Ye11)*(2*lam*TYe11 + Ye11*Tlam) + Conjg(Ye22)*(2*lam*TYe22 + Ye22*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTlam2 = (-12*AbsYe33*g1p2*M1*lam)/5._dp - (414*g1p4*M1*lam)/25._dp - (18*g1p2*g2p2*M1*lam)/5._dp -& 
&  (18*g1p2*g2p2*M2*lam)/5._dp - 30*g2p4*M2*lam - 4*AbsYe33*gpp2*M4*Qe3p2*lam +          & 
&  (36*g1p2*gpp2*M1*Qd*QHd*lam)/5._dp + (36*g1p2*gpp2*M4*Qd*QHd*lam)/5._dp +             & 
&  (12*g1p2*gpp2*M1*Qe1*QHd*lam)/5._dp + (12*g1p2*gpp2*M4*Qe1*QHd*lam)/5._dp +           & 
&  (12*g1p2*gpp2*M1*Qe2*QHd*lam)/5._dp + (12*g1p2*gpp2*M4*Qe2*QHd*lam)/5._dp +           & 
&  (12*g1p2*gpp2*M1*Qe3*QHd*lam)/5._dp + (12*g1p2*gpp2*M4*Qe3*QHd*lam)/5._dp -           & 
&  (24*g1p2*gpp2*M1*QHdp2*lam)/5._dp + 4*AbsYe33*gpp2*M4*QHdp2*lam - (24*g1p2*gpp2*M4*QHdp2*lam)/5._dp -& 
&  12*g2p2*gpp2*M4*QHdp2*lam - 12*g2p2*gpp2*M2*QHdp2*lam - 72*gpp4*M4*Qdp2*QHdp2*lam -   & 
&  8*gpp4*M4*Qe1p2*QHdp2*lam - 8*gpp4*M4*Qe2p2*QHdp2*lam - 8*gpp4*M4*Qe3p2*QHdp2*lam -   & 
&  32*gpp4*M4*QHdp4*lam - (36*g1p2*gpp2*M1*Qd*QHu*lam)/5._dp - (36*g1p2*gpp2*M4*Qd*QHu*lam)/5._dp -& 
&  (12*g1p2*gpp2*M1*Qe1*QHu*lam)/5._dp - (12*g1p2*gpp2*M4*Qe1*QHu*lam)/5._dp -           & 
&  (12*g1p2*gpp2*M1*Qe2*QHu*lam)/5._dp - (12*g1p2*gpp2*M4*Qe2*QHu*lam)/5._dp -           & 
&  (12*g1p2*gpp2*M1*Qe3*QHu*lam)/5._dp - (12*g1p2*gpp2*M4*Qe3*QHu*lam)/5._dp +           & 
&  (24*g1p2*gpp2*M1*QHd*QHu*lam)/5._dp + (24*g1p2*gpp2*M4*QHd*QHu*lam)/5._dp -           & 
&  (24*g1p2*gpp2*M1*QHup2*lam)/5._dp + 4*AbsYv11*gpp2*M4*QHup2*lam + 4*AbsYv22*gpp2*M4*QHup2*lam +& 
&  4*AbsYv33*gpp2*M4*QHup2*lam - (24*g1p2*gpp2*M4*QHup2*lam)/5._dp - 12*g2p2*gpp2*M4*QHup2*lam -& 
&  12*g2p2*gpp2*M2*QHup2*lam - 72*gpp4*M4*Qdp2*QHup2*lam - 8*gpp4*M4*Qe1p2*QHup2*lam -   & 
&  8*gpp4*M4*Qe2p2*QHup2*lam - 8*gpp4*M4*Qe3p2*QHup2*lam - 32*gpp4*M4*QHdp2*QHup2*lam -  & 
&  32*gpp4*M4*QHup4*lam - (12*g1p2*gpp2*M1*QHd*Ql1*lam)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql1*lam)/5._dp +& 
&  (12*g1p2*gpp2*M1*QHu*Ql1*lam)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql1*lam)/5._dp -           & 
&  4*AbsYv11*gpp2*M4*Ql1p2*lam - 16*gpp4*M4*QHdp2*Ql1p2*lam - 16*gpp4*M4*QHup2*Ql1p2*lam  
betaTlam2 =  betaTlam2- (12*g1p2*gpp2*M1*QHd*Ql2*lam)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql2*lam)/5._dp +           & 
&  (12*g1p2*gpp2*M1*QHu*Ql2*lam)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql2*lam)/5._dp -           & 
&  4*AbsYv22*gpp2*M4*Ql2p2*lam - 16*gpp4*M4*QHdp2*Ql2p2*lam - 16*gpp4*M4*QHup2*Ql2p2*lam -& 
&  (12*g1p2*gpp2*M1*QHd*Ql3*lam)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql3*lam)/5._dp +           & 
&  (12*g1p2*gpp2*M1*QHu*Ql3*lam)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql3*lam)/5._dp -           & 
&  4*AbsYe33*gpp2*M4*Ql3p2*lam - 4*AbsYv33*gpp2*M4*Ql3p2*lam - 16*gpp4*M4*QHdp2*Ql3p2*lam -& 
&  16*gpp4*M4*QHup2*Ql3p2*lam + (36*g1p2*gpp2*M1*QHd*Qq*lam)/5._dp + (36*g1p2*gpp2*M4*QHd*Qq*lam)/5._dp -& 
&  (36*g1p2*gpp2*M1*QHu*Qq*lam)/5._dp - (36*g1p2*gpp2*M4*QHu*Qq*lam)/5._dp -             & 
&  144*gpp4*M4*QHdp2*Qqp2*lam - 144*gpp4*M4*QHup2*Qqp2*lam - 72*gpp4*M4*Qdp2*Qsp2*lam -  & 
&  8*gpp4*M4*Qe1p2*Qsp2*lam - 8*gpp4*M4*Qe2p2*Qsp2*lam - 8*gpp4*M4*Qe3p2*Qsp2*lam -      & 
&  24*gpp4*M4*QHdp2*Qsp2*lam - 24*gpp4*M4*QHup2*Qsp2*lam - 16*gpp4*M4*Ql1p2*Qsp2*lam -   & 
&  16*gpp4*M4*Ql2p2*Qsp2*lam - 16*gpp4*M4*Ql3p2*Qsp2*lam - 144*gpp4*M4*Qqp2*Qsp2*lam -   & 
&  24*gpp4*M4*Qsp4*lam - (72*g1p2*gpp2*M1*QHd*Qu*lam)/5._dp - (72*g1p2*gpp2*M4*QHd*Qu*lam)/5._dp +& 
&  (72*g1p2*gpp2*M1*QHu*Qu*lam)/5._dp + (72*g1p2*gpp2*M4*QHu*Qu*lam)/5._dp -             & 
&  72*gpp4*M4*QHdp2*Qup2*lam - 72*gpp4*M4*QHup2*Qup2*lam - 72*gpp4*M4*Qsp2*Qup2*lam -    & 
&  4*AbsYv11*gpp2*M4*Qv1p2*lam - 8*gpp4*M4*QHdp2*Qv1p2*lam - 8*gpp4*M4*QHup2*Qv1p2*lam - & 
&  8*gpp4*M4*Qsp2*Qv1p2*lam - 4*AbsYv22*gpp2*M4*Qv2p2*lam - 8*gpp4*M4*QHdp2*Qv2p2*lam -  & 
&  8*gpp4*M4*QHup2*Qv2p2*lam - 8*gpp4*M4*Qsp2*Qv2p2*lam - 4*AbsYv33*gpp2*M4*Qv3p2*lam -  & 
&  8*gpp4*M4*QHdp2*Qv3p2*lam - 8*gpp4*M4*QHup2*Qv3p2*lam - 8*gpp4*M4*Qsp2*Qv3p2*lam -    & 
&  (4*g1p2*TradjYdTd*lam)/5._dp + 32*g3p2*TradjYdTd*lam + 12*gpp2*Qdp2*TradjYdTd*lam -   & 
&  12*gpp2*QHdp2*TradjYdTd*lam + 12*gpp2*Qqp2*TradjYdTd*lam + (8*g1p2*TradjYuTu*lam)/5._dp  
betaTlam2 =  betaTlam2+ 32*g3p2*TradjYuTu*lam - 12*gpp2*QHup2*TradjYuTu*lam + 12*gpp2*Qqp2*TradjYuTu*lam +    & 
&  12*gpp2*Qup2*TradjYuTu*lam + (4*g1p2*M1*TrYdadjYd*lam)/5._dp - 32*g3p2*M3*TrYdadjYd*lam -& 
&  12*gpp2*M4*Qdp2*TrYdadjYd*lam + 12*gpp2*M4*QHdp2*TrYdadjYd*lam - 12*gpp2*M4*Qqp2*TrYdadjYd*lam -& 
&  36*TrYdadjYdTdadjYd*lam - 12*TrYdadjYuTuadjYd*lam - 12*TrYuadjYdTdadjYu*lam -         & 
&  (8*g1p2*M1*TrYuadjYu*lam)/5._dp - 32*g3p2*M3*TrYuadjYu*lam + 12*gpp2*M4*QHup2*TrYuadjYu*lam -& 
&  12*gpp2*M4*Qqp2*TrYuadjYu*lam - 12*gpp2*M4*Qup2*TrYuadjYu*lam - 36*TrYuadjYuTuadjYu*lam -& 
&  (12*g1p2*lamp2*M1*Conjg(lam))/5._dp - 12*g2p2*lamp2*M2*Conjg(lam) - 8*gpp2*lamp2*M4*QHdp2*Conjg(lam) -& 
&  8*gpp2*lamp2*M4*QHup2*Conjg(lam) - 18*lamp2*TradjYdTd*Conjg(lam) - 18*lamp2*TradjYuTu*Conjg(lam) -& 
&  12*CYe33p2*Ye33*lam*TYe33 - 4*AbsYv33*lam*Conjg(Ye33)*TYe33 + (12*g1p2*lam*Conjg(Ye33)*TYe33)/5._dp +& 
&  4*gpp2*Qe3p2*lam*Conjg(Ye33)*TYe33 - 4*gpp2*QHdp2*lam*Conjg(Ye33)*TYe33 +             & 
&  4*gpp2*Ql3p2*lam*Conjg(Ye33)*TYe33 - 6*lamp2*Conjg(Ye33)*Conjg(lam)*TYe33 -           & 
&  12*CYv11p2*Yv11*lam*TYv11 - 4*gpp2*QHup2*lam*Conjg(Yv11)*TYv11 + 4*gpp2*Ql1p2*lam*Conjg(Yv11)*TYv11 +& 
&  4*gpp2*Qv1p2*lam*Conjg(Yv11)*TYv11 - 6*lamp2*Conjg(Yv11)*Conjg(lam)*TYv11 -           & 
&  12*CYv22p2*Yv22*lam*TYv22 - 4*gpp2*QHup2*lam*Conjg(Yv22)*TYv22 + 4*gpp2*Ql2p2*lam*Conjg(Yv22)*TYv22 +& 
&  4*gpp2*Qv2p2*lam*Conjg(Yv22)*TYv22 - 6*lamp2*Conjg(Yv22)*Conjg(lam)*TYv22 -           & 
&  12*CYv33p2*Yv33*lam*TYv33 - 4*AbsYe33*lam*Conjg(Yv33)*TYv33 - 4*gpp2*QHup2*lam*Conjg(Yv33)*TYv33 +& 
&  4*gpp2*Ql3p2*lam*Conjg(Yv33)*TYv33 + 4*gpp2*Qv3p2*lam*Conjg(Yv33)*TYv33 -             & 
&  6*lamp2*Conjg(Yv33)*Conjg(lam)*TYv33 - 9*Abslam*AbsYe33*Tlam - 9*Abslam*AbsYv11*Tlam -& 
&  9*Abslam*AbsYv22*Tlam - 9*Abslam*AbsYv33*Tlam - 2*AbsYe33*AbsYv33*Tlam +              & 
&  (18*Abslam*g1p2*Tlam)/5._dp + (6*AbsYe33*g1p2*Tlam)/5._dp + (207*g1p4*Tlam)/50._dp +  & 
&  18*Abslam*g2p2*Tlam + (9*g1p2*g2p2*Tlam)/5._dp + (15*g2p4*Tlam)/2._dp  
betaTlam2 =  betaTlam2- 50*Clamp2*lamp2*Tlam + 2*AbsYe33*gpp2*Qe3p2*Tlam - (18*g1p2*gpp2*Qd*QHd*Tlam)/5._dp - & 
&  (6*g1p2*gpp2*Qe1*QHd*Tlam)/5._dp - (6*g1p2*gpp2*Qe2*QHd*Tlam)/5._dp - (6*g1p2*gpp2*Qe3*QHd*Tlam)/5._dp +& 
&  12*Abslam*gpp2*QHdp2*Tlam - 2*AbsYe33*gpp2*QHdp2*Tlam + (12*g1p2*gpp2*QHdp2*Tlam)/5._dp +& 
&  6*g2p2*gpp2*QHdp2*Tlam + 18*gpp4*Qdp2*QHdp2*Tlam + 2*gpp4*Qe1p2*QHdp2*Tlam +          & 
&  2*gpp4*Qe2p2*QHdp2*Tlam + 2*gpp4*Qe3p2*QHdp2*Tlam + 8*gpp4*QHdp4*Tlam +               & 
&  (18*g1p2*gpp2*Qd*QHu*Tlam)/5._dp + (6*g1p2*gpp2*Qe1*QHu*Tlam)/5._dp + (6*g1p2*gpp2*Qe2*QHu*Tlam)/5._dp +& 
&  (6*g1p2*gpp2*Qe3*QHu*Tlam)/5._dp - (12*g1p2*gpp2*QHd*QHu*Tlam)/5._dp + 12*Abslam*gpp2*QHup2*Tlam -& 
&  2*AbsYv11*gpp2*QHup2*Tlam - 2*AbsYv22*gpp2*QHup2*Tlam - 2*AbsYv33*gpp2*QHup2*Tlam +   & 
&  (12*g1p2*gpp2*QHup2*Tlam)/5._dp + 6*g2p2*gpp2*QHup2*Tlam + 18*gpp4*Qdp2*QHup2*Tlam +  & 
&  2*gpp4*Qe1p2*QHup2*Tlam + 2*gpp4*Qe2p2*QHup2*Tlam + 2*gpp4*Qe3p2*QHup2*Tlam +         & 
&  8*gpp4*QHdp2*QHup2*Tlam + 8*gpp4*QHup4*Tlam + (6*g1p2*gpp2*QHd*Ql1*Tlam)/5._dp -      & 
&  (6*g1p2*gpp2*QHu*Ql1*Tlam)/5._dp + 2*AbsYv11*gpp2*Ql1p2*Tlam + 4*gpp4*QHdp2*Ql1p2*Tlam +& 
&  4*gpp4*QHup2*Ql1p2*Tlam + (6*g1p2*gpp2*QHd*Ql2*Tlam)/5._dp - (6*g1p2*gpp2*QHu*Ql2*Tlam)/5._dp +& 
&  2*AbsYv22*gpp2*Ql2p2*Tlam + 4*gpp4*QHdp2*Ql2p2*Tlam + 4*gpp4*QHup2*Ql2p2*Tlam +       & 
&  (6*g1p2*gpp2*QHd*Ql3*Tlam)/5._dp - (6*g1p2*gpp2*QHu*Ql3*Tlam)/5._dp + 2*AbsYe33*gpp2*Ql3p2*Tlam +& 
&  2*AbsYv33*gpp2*Ql3p2*Tlam + 4*gpp4*QHdp2*Ql3p2*Tlam + 4*gpp4*QHup2*Ql3p2*Tlam -       & 
&  (18*g1p2*gpp2*QHd*Qq*Tlam)/5._dp + (18*g1p2*gpp2*QHu*Qq*Tlam)/5._dp + 36*gpp4*QHdp2*Qqp2*Tlam +& 
&  36*gpp4*QHup2*Qqp2*Tlam + 18*gpp4*Qdp2*Qsp2*Tlam + 2*gpp4*Qe1p2*Qsp2*Tlam +           & 
&  2*gpp4*Qe2p2*Qsp2*Tlam + 2*gpp4*Qe3p2*Qsp2*Tlam + 6*gpp4*QHdp2*Qsp2*Tlam +            & 
&  6*gpp4*QHup2*Qsp2*Tlam + 4*gpp4*Ql1p2*Qsp2*Tlam + 4*gpp4*Ql2p2*Qsp2*Tlam +            & 
&  4*gpp4*Ql3p2*Qsp2*Tlam + 36*gpp4*Qqp2*Qsp2*Tlam + 6*gpp4*Qsp4*Tlam + (36*g1p2*gpp2*QHd*Qu*Tlam)/5._dp  
betaTlam2 =  betaTlam2- (36*g1p2*gpp2*QHu*Qu*Tlam)/5._dp + 18*gpp4*QHdp2*Qup2*Tlam + 18*gpp4*QHup2*Qup2*Tlam +& 
&  18*gpp4*Qsp2*Qup2*Tlam + 2*AbsYv11*gpp2*Qv1p2*Tlam + 2*gpp4*QHdp2*Qv1p2*Tlam +        & 
&  2*gpp4*QHup2*Qv1p2*Tlam + 2*gpp4*Qsp2*Qv1p2*Tlam + 2*AbsYv22*gpp2*Qv2p2*Tlam +        & 
&  2*gpp4*QHdp2*Qv2p2*Tlam + 2*gpp4*QHup2*Qv2p2*Tlam + 2*gpp4*Qsp2*Qv2p2*Tlam +          & 
&  2*AbsYv33*gpp2*Qv3p2*Tlam + 2*gpp4*QHdp2*Qv3p2*Tlam + 2*gpp4*QHup2*Qv3p2*Tlam +       & 
&  2*gpp4*Qsp2*Qv3p2*Tlam - 27*Abslam*TrYdadjYd*Tlam - (2*g1p2*TrYdadjYd*Tlam)/5._dp +   & 
&  16*g3p2*TrYdadjYd*Tlam + 6*gpp2*Qdp2*TrYdadjYd*Tlam - 6*gpp2*QHdp2*TrYdadjYd*Tlam +   & 
&  6*gpp2*Qqp2*TrYdadjYd*Tlam - 9*TrYdadjYdYdadjYd*Tlam - 6*TrYdadjYuYuadjYd*Tlam -      & 
&  27*Abslam*TrYuadjYu*Tlam + (4*g1p2*TrYuadjYu*Tlam)/5._dp + 16*g3p2*TrYuadjYu*Tlam -   & 
&  6*gpp2*QHup2*TrYuadjYu*Tlam + 6*gpp2*Qqp2*TrYuadjYu*Tlam + 6*gpp2*Qup2*TrYuadjYu*Tlam -& 
&  9*TrYuadjYuYuadjYu*Tlam - 3*CYe33p2*Ye33p2*Tlam - 3*CYv11p2*Yv11p2*Tlam -             & 
&  3*CYv22p2*Yv22p2*Tlam - 3*CYv33p2*Yv33p2*Tlam - 3*CYe11p2*Ye11*(4*lam*TYe11 +         & 
&  Ye11*Tlam) - 3*CYe22p2*Ye22*(4*lam*TYe22 + Ye22*Tlam) - (Conjg(Ye11)*(2*(15._dp*(Abslam) +& 
&  10._dp*(AbsYv11) - 6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*lam*TYe11 +        & 
&  Ye11*(4*(3*g1p2*M1 + 5*gpp2*M4*(Qe1p2 - QHdp2 + Ql1p2))*lam + (45._dp*(Abslam) -      & 
&  6._dp*(g1p2) - 10*gpp2*(Qe1p2 - QHdp2 + Ql1p2))*Tlam + 10*Conjg(Yv11)*(2*lam*TYv11 +  & 
&  Yv11*Tlam))))/5._dp - (Conjg(Ye22)*(2*(15._dp*(Abslam) + 10._dp*(AbsYv22) -           & 
&  6._dp*(g1p2) - 10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*lam*TYe22 + Ye22*(4*(3*g1p2*M1 +      & 
&  5*gpp2*M4*(Qe2p2 - QHdp2 + Ql2p2))*lam + (45._dp*(Abslam) - 6._dp*(g1p2) -            & 
&  10*gpp2*(Qe2p2 - QHdp2 + Ql2p2))*Tlam + 10*Conjg(Yv22)*(2*lam*TYv22 + Yv22*Tlam))))/5._dp

 
DTlam = oo16pi2*( betaTlam1 + oo16pi2 * betaTlam2 ) 

 
Else 
DTlam = oo16pi2* betaTlam1 
End If 
 
 
Call Chop(DTlam) 

!-------------------- 
! TYv11 
!-------------------- 
 
betaTYv111  = (Abslam + 12._dp*(AbsYv11) + AbsYv22 + AbsYv33 - 3._dp*(g1p2)           & 
& /5._dp - 3._dp*(g2p2) - 2*gpp2*QHup2 - 2*gpp2*Ql1p2 - 2*gpp2*Qv1p2 + 3._dp*(TrYuadjYu))& 
& *TYv11 + Conjg(Ye11)*(2*Yv11*TYe11 + Ye11*TYv11) + (2*Yv11*(3*g1p2*M1 + 15*g2p2*M2 +   & 
&  10*gpp2*M4*QHup2 + 10*gpp2*M4*Ql1p2 + 10*gpp2*M4*Qv1p2 + 15._dp*(TradjYuTu)           & 
&  + 5*Conjg(Yv22)*TYv22 + 5*Conjg(Yv33)*TYv33 + 5*Conjg(lam)*Tlam))/5._dp

 
 
If (TwoLoopRGE) Then 
betaTYv112 = (-414*g1p4*M1*Yv11)/25._dp - (18*g1p2*g2p2*M1*Yv11)/5._dp - (18*g1p2*g2p2*M2*Yv11)/5._dp -& 
&  30*g2p4*M2*Yv11 - 4*Abslam*gpp2*M4*QHdp2*Yv11 - (36*g1p2*gpp2*M1*Qd*QHu*Yv11)/5._dp - & 
&  (36*g1p2*gpp2*M4*Qd*QHu*Yv11)/5._dp - (12*g1p2*gpp2*M1*Qe1*QHu*Yv11)/5._dp -          & 
&  (12*g1p2*gpp2*M4*Qe1*QHu*Yv11)/5._dp - (12*g1p2*gpp2*M1*Qe2*QHu*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe2*QHu*Yv11)/5._dp - (12*g1p2*gpp2*M1*Qe3*QHu*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe3*QHu*Yv11)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu*Yv11)/5._dp +         & 
&  (12*g1p2*gpp2*M4*QHd*QHu*Yv11)/5._dp - (24*g1p2*gpp2*M1*QHup2*Yv11)/5._dp +           & 
&  4*Abslam*gpp2*M4*QHup2*Yv11 + 4*AbsYv22*gpp2*M4*QHup2*Yv11 + 4*AbsYv33*gpp2*M4*QHup2*Yv11 -& 
&  (24*g1p2*gpp2*M4*QHup2*Yv11)/5._dp - 12*g2p2*gpp2*M4*QHup2*Yv11 - 12*g2p2*gpp2*M2*QHup2*Yv11 -& 
&  72*gpp4*M4*Qdp2*QHup2*Yv11 - 8*gpp4*M4*Qe1p2*QHup2*Yv11 - 8*gpp4*M4*Qe2p2*QHup2*Yv11 -& 
&  8*gpp4*M4*Qe3p2*QHup2*Yv11 - 16*gpp4*M4*QHdp2*QHup2*Yv11 - 32*gpp4*M4*QHup4*Yv11 +    & 
&  (36*g1p2*gpp2*M1*Qd*Ql1*Yv11)/5._dp + (36*g1p2*gpp2*M4*Qd*Ql1*Yv11)/5._dp +           & 
&  (12*g1p2*gpp2*M1*Qe1*Ql1*Yv11)/5._dp + (12*g1p2*gpp2*M4*Qe1*Ql1*Yv11)/5._dp +         & 
&  (12*g1p2*gpp2*M1*Qe2*Ql1*Yv11)/5._dp + (12*g1p2*gpp2*M4*Qe2*Ql1*Yv11)/5._dp +         & 
&  (12*g1p2*gpp2*M1*Qe3*Ql1*Yv11)/5._dp + (12*g1p2*gpp2*M4*Qe3*Ql1*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M1*QHd*Ql1*Yv11)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql1*Yv11)/5._dp +         & 
&  (24*g1p2*gpp2*M1*QHu*Ql1*Yv11)/5._dp + (24*g1p2*gpp2*M4*QHu*Ql1*Yv11)/5._dp -         & 
&  (24*g1p2*gpp2*M1*Ql1p2*Yv11)/5._dp - (24*g1p2*gpp2*M4*Ql1p2*Yv11)/5._dp -             & 
&  12*g2p2*gpp2*M4*Ql1p2*Yv11 - 12*g2p2*gpp2*M2*Ql1p2*Yv11 - 72*gpp4*M4*Qdp2*Ql1p2*Yv11 -& 
&  8*gpp4*M4*Qe1p2*Ql1p2*Yv11 - 8*gpp4*M4*Qe2p2*Ql1p2*Yv11 - 8*gpp4*M4*Qe3p2*Ql1p2*Yv11 -& 
&  16*gpp4*M4*QHdp2*Ql1p2*Yv11 - 32*gpp4*M4*QHup2*Ql1p2*Yv11 - 32*gpp4*M4*Ql1p4*Yv11  
betaTYv112 =  betaTYv112+ (12*g1p2*gpp2*M1*QHu*Ql2*Yv11)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql2*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M1*Ql1*Ql2*Yv11)/5._dp - (12*g1p2*gpp2*M4*Ql1*Ql2*Yv11)/5._dp -         & 
&  4*AbsYv22*gpp2*M4*Ql2p2*Yv11 - 16*gpp4*M4*QHup2*Ql2p2*Yv11 - 16*gpp4*M4*Ql1p2*Ql2p2*Yv11 +& 
&  (12*g1p2*gpp2*M1*QHu*Ql3*Yv11)/5._dp + (12*g1p2*gpp2*M4*QHu*Ql3*Yv11)/5._dp -         & 
&  (12*g1p2*gpp2*M1*Ql1*Ql3*Yv11)/5._dp - (12*g1p2*gpp2*M4*Ql1*Ql3*Yv11)/5._dp -         & 
&  4*AbsYv33*gpp2*M4*Ql3p2*Yv11 - 16*gpp4*M4*QHup2*Ql3p2*Yv11 - 16*gpp4*M4*Ql1p2*Ql3p2*Yv11 -& 
&  (36*g1p2*gpp2*M1*QHu*Qq*Yv11)/5._dp - (36*g1p2*gpp2*M4*QHu*Qq*Yv11)/5._dp +           & 
&  (36*g1p2*gpp2*M1*Ql1*Qq*Yv11)/5._dp + (36*g1p2*gpp2*M4*Ql1*Qq*Yv11)/5._dp -           & 
&  144*gpp4*M4*QHup2*Qqp2*Yv11 - 144*gpp4*M4*Ql1p2*Qqp2*Yv11 - 4*Abslam*gpp2*M4*Qsp2*Yv11 -& 
&  8*gpp4*M4*QHup2*Qsp2*Yv11 - 8*gpp4*M4*Ql1p2*Qsp2*Yv11 + (72*g1p2*gpp2*M1*QHu*Qu*Yv11)/5._dp +& 
&  (72*g1p2*gpp2*M4*QHu*Qu*Yv11)/5._dp - (72*g1p2*gpp2*M1*Ql1*Qu*Yv11)/5._dp -           & 
&  (72*g1p2*gpp2*M4*Ql1*Qu*Yv11)/5._dp - 72*gpp4*M4*QHup2*Qup2*Yv11 - 72*gpp4*M4*Ql1p2*Qup2*Yv11 -& 
&  72*gpp4*M4*Qdp2*Qv1p2*Yv11 - 8*gpp4*M4*Qe1p2*Qv1p2*Yv11 - 8*gpp4*M4*Qe2p2*Qv1p2*Yv11 -& 
&  8*gpp4*M4*Qe3p2*Qv1p2*Yv11 - 16*gpp4*M4*QHdp2*Qv1p2*Yv11 - 24*gpp4*M4*QHup2*Qv1p2*Yv11 -& 
&  24*gpp4*M4*Ql1p2*Qv1p2*Yv11 - 16*gpp4*M4*Ql2p2*Qv1p2*Yv11 - 16*gpp4*M4*Ql3p2*Qv1p2*Yv11 -& 
&  144*gpp4*M4*Qqp2*Qv1p2*Yv11 - 8*gpp4*M4*Qsp2*Qv1p2*Yv11 - 72*gpp4*M4*Qup2*Qv1p2*Yv11 -& 
&  24*gpp4*M4*Qv1p4*Yv11 - 4*AbsYv22*gpp2*M4*Qv2p2*Yv11 - 8*gpp4*M4*QHup2*Qv2p2*Yv11 -   & 
&  8*gpp4*M4*Ql1p2*Qv2p2*Yv11 - 8*gpp4*M4*Qv1p2*Qv2p2*Yv11 - 4*AbsYv33*gpp2*M4*Qv3p2*Yv11 -& 
&  8*gpp4*M4*QHup2*Qv3p2*Yv11 - 8*gpp4*M4*Ql1p2*Qv3p2*Yv11 - 8*gpp4*M4*Qv1p2*Qv3p2*Yv11 -& 
&  6*Abslam*TradjYdTd*Yv11 + (8*g1p2*TradjYuTu*Yv11)/5._dp + 32*g3p2*TradjYuTu*Yv11 -    & 
&  12*gpp2*QHup2*TradjYuTu*Yv11 + 12*gpp2*Qqp2*TradjYuTu*Yv11 + 12*gpp2*Qup2*TradjYuTu*Yv11  
betaTYv112 =  betaTYv112- 6*TrYdadjYuTuadjYd*Yv11 - 6*TrYuadjYdTdadjYu*Yv11 - (8*g1p2*M1*TrYuadjYu*Yv11)/5._dp -& 
&  32*g3p2*M3*TrYuadjYu*Yv11 + 12*gpp2*M4*QHup2*TrYuadjYu*Yv11 - 12*gpp2*M4*Qqp2*TrYuadjYu*Yv11 -& 
&  12*gpp2*M4*Qup2*TrYuadjYu*Yv11 - 36*TrYuadjYuTuadjYu*Yv11 - 2*Abslam*Yv11*Conjg(Ye22)*TYe22 -& 
&  2*AbsYv22*Yv11*Conjg(Ye22)*TYe22 - 2*Abslam*Yv11*Conjg(Ye33)*TYe33 - 2*AbsYv33*Yv11*Conjg(Ye33)*TYe33 -& 
&  Abslam*AbsYe22*TYv11 - Abslam*AbsYe33*TYv11 - AbsYe22*AbsYv22*TYv11 - AbsYe33*AbsYv33*TYv11 +& 
&  (207*g1p4*TYv11)/50._dp + (9*g1p2*g2p2*TYv11)/5._dp + (15*g2p4*TYv11)/2._dp -         & 
&  3*Clamp2*lamp2*TYv11 + 2*Abslam*gpp2*QHdp2*TYv11 + (18*g1p2*gpp2*Qd*QHu*TYv11)/5._dp +& 
&  (6*g1p2*gpp2*Qe1*QHu*TYv11)/5._dp + (6*g1p2*gpp2*Qe2*QHu*TYv11)/5._dp +               & 
&  (6*g1p2*gpp2*Qe3*QHu*TYv11)/5._dp - (6*g1p2*gpp2*QHd*QHu*TYv11)/5._dp -               & 
&  2*Abslam*gpp2*QHup2*TYv11 - 2*AbsYv22*gpp2*QHup2*TYv11 - 2*AbsYv33*gpp2*QHup2*TYv11 + & 
&  (12*g1p2*gpp2*QHup2*TYv11)/5._dp + 6*g2p2*gpp2*QHup2*TYv11 + 18*gpp4*Qdp2*QHup2*TYv11 +& 
&  2*gpp4*Qe1p2*QHup2*TYv11 + 2*gpp4*Qe2p2*QHup2*TYv11 + 2*gpp4*Qe3p2*QHup2*TYv11 +      & 
&  4*gpp4*QHdp2*QHup2*TYv11 + 8*gpp4*QHup4*TYv11 - (18*g1p2*gpp2*Qd*Ql1*TYv11)/5._dp -   & 
&  (6*g1p2*gpp2*Qe1*Ql1*TYv11)/5._dp - (6*g1p2*gpp2*Qe2*Ql1*TYv11)/5._dp -               & 
&  (6*g1p2*gpp2*Qe3*Ql1*TYv11)/5._dp + (6*g1p2*gpp2*QHd*Ql1*TYv11)/5._dp -               & 
&  (12*g1p2*gpp2*QHu*Ql1*TYv11)/5._dp + (12*g1p2*gpp2*Ql1p2*TYv11)/5._dp +               & 
&  6*g2p2*gpp2*Ql1p2*TYv11 + 18*gpp4*Qdp2*Ql1p2*TYv11 + 2*gpp4*Qe1p2*Ql1p2*TYv11 +       & 
&  2*gpp4*Qe2p2*Ql1p2*TYv11 + 2*gpp4*Qe3p2*Ql1p2*TYv11 + 4*gpp4*QHdp2*Ql1p2*TYv11 +      & 
&  8*gpp4*QHup2*Ql1p2*TYv11 + 8*gpp4*Ql1p4*TYv11 - (6*g1p2*gpp2*QHu*Ql2*TYv11)/5._dp +   & 
&  (6*g1p2*gpp2*Ql1*Ql2*TYv11)/5._dp + 2*AbsYv22*gpp2*Ql2p2*TYv11 + 4*gpp4*QHup2*Ql2p2*TYv11 +& 
&  4*gpp4*Ql1p2*Ql2p2*TYv11 - (6*g1p2*gpp2*QHu*Ql3*TYv11)/5._dp + (6*g1p2*gpp2*Ql1*Ql3*TYv11)/5._dp  
betaTYv112 =  betaTYv112+ 2*AbsYv33*gpp2*Ql3p2*TYv11 + 4*gpp4*QHup2*Ql3p2*TYv11 + 4*gpp4*Ql1p2*Ql3p2*TYv11 +    & 
&  (18*g1p2*gpp2*QHu*Qq*TYv11)/5._dp - (18*g1p2*gpp2*Ql1*Qq*TYv11)/5._dp +               & 
&  36*gpp4*QHup2*Qqp2*TYv11 + 36*gpp4*Ql1p2*Qqp2*TYv11 + 2*Abslam*gpp2*Qsp2*TYv11 +      & 
&  2*gpp4*QHup2*Qsp2*TYv11 + 2*gpp4*Ql1p2*Qsp2*TYv11 - (36*g1p2*gpp2*QHu*Qu*TYv11)/5._dp +& 
&  (36*g1p2*gpp2*Ql1*Qu*TYv11)/5._dp + 18*gpp4*QHup2*Qup2*TYv11 + 18*gpp4*Ql1p2*Qup2*TYv11 +& 
&  18*gpp4*Qdp2*Qv1p2*TYv11 + 2*gpp4*Qe1p2*Qv1p2*TYv11 + 2*gpp4*Qe2p2*Qv1p2*TYv11 +      & 
&  2*gpp4*Qe3p2*Qv1p2*TYv11 + 4*gpp4*QHdp2*Qv1p2*TYv11 + 6*gpp4*QHup2*Qv1p2*TYv11 +      & 
&  6*gpp4*Ql1p2*Qv1p2*TYv11 + 4*gpp4*Ql2p2*Qv1p2*TYv11 + 4*gpp4*Ql3p2*Qv1p2*TYv11 +      & 
&  36*gpp4*Qqp2*Qv1p2*TYv11 + 2*gpp4*Qsp2*Qv1p2*TYv11 + 18*gpp4*Qup2*Qv1p2*TYv11 +       & 
&  6*gpp4*Qv1p4*TYv11 + 2*AbsYv22*gpp2*Qv2p2*TYv11 + 2*gpp4*QHup2*Qv2p2*TYv11 +          & 
&  2*gpp4*Ql1p2*Qv2p2*TYv11 + 2*gpp4*Qv1p2*Qv2p2*TYv11 + 2*AbsYv33*gpp2*Qv3p2*TYv11 +    & 
&  2*gpp4*QHup2*Qv3p2*TYv11 + 2*gpp4*Ql1p2*Qv3p2*TYv11 + 2*gpp4*Qv1p2*Qv3p2*TYv11 -      & 
&  3*Abslam*TrYdadjYd*TYv11 - 3*TrYdadjYuYuadjYd*TYv11 + (4*g1p2*TrYuadjYu*TYv11)/5._dp +& 
&  16*g3p2*TrYuadjYu*TYv11 - 6*gpp2*QHup2*TrYuadjYu*TYv11 + 6*gpp2*Qqp2*TrYuadjYu*TYv11 +& 
&  6*gpp2*Qup2*TrYuadjYu*TYv11 - 9*TrYuadjYuYuadjYu*TYv11 - 50*CYv11p2*Yv11p2*TYv11 -    & 
&  3*CYv22p2*Yv22p2*TYv11 - 3*CYv33p2*Yv33p2*TYv11 - 3*CYe11p2*Ye11*(4*Yv11*TYe11 +      & 
&  Ye11*TYv11) - 12*CYv22p2*Yv11*Yv22*TYv22 - 2*AbsYe22*Yv11*Conjg(Yv22)*TYv22 -         & 
&  4*gpp2*QHup2*Yv11*Conjg(Yv22)*TYv22 + 4*gpp2*Ql2p2*Yv11*Conjg(Yv22)*TYv22 +           & 
&  4*gpp2*Qv2p2*Yv11*Conjg(Yv22)*TYv22 - 12*CYv33p2*Yv11*Yv33*TYv33 - 2*AbsYe33*Yv11*Conjg(Yv33)*TYv33 -& 
&  4*gpp2*QHup2*Yv11*Conjg(Yv33)*TYv33 + 4*gpp2*Ql3p2*Yv11*Conjg(Yv33)*TYv33 +           & 
&  4*gpp2*Qv3p2*Yv11*Conjg(Yv33)*TYv33 - 12*Clamp2*Yv11*lam*Tlam - 2*AbsYe22*Yv11*Conjg(lam)*Tlam  
betaTYv112 =  betaTYv112- 2*AbsYe33*Yv11*Conjg(lam)*Tlam + 4*gpp2*QHdp2*Yv11*Conjg(lam)*Tlam - 4*gpp2*QHup2*Yv11*Conjg(lam)*Tlam +& 
&  4*gpp2*Qsp2*Yv11*Conjg(lam)*Tlam - 6*TrYdadjYd*Yv11*Conjg(lam)*Tlam - (AbsYv11*(-     & 
& 3*(-15._dp*(Abslam) - 15._dp*(AbsYv22) - 15._dp*(AbsYv33) + 6._dp*(g1p2) +             & 
&  30._dp*(g2p2) + 20*gpp2*QHup2 + 20*gpp2*Ql1p2 - 45._dp*(TrYuadjYu))*TYv11 +           & 
&  2*Yv11*(6*g1p2*M1 + 30*g2p2*M2 + 20*gpp2*M4*QHup2 + 20*gpp2*M4*Ql1p2 + 45._dp*(TradjYuTu) +& 
&  15*Conjg(Yv22)*TYv22 + 15*Conjg(Yv33)*TYv33 + 15*Conjg(lam)*Tlam)))/5._dp -           & 
&  (Conjg(Ye11)*(2*(10._dp*(Abslam) + 5._dp*(AbsYe22) + 5._dp*(AbsYe33) + 15._dp*(AbsYv11) -& 
&  6._dp*(g1p2) - 10*gpp2*Qe1p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql1p2 + 15._dp*(TrYdadjYd))*Yv11*TYe11 +& 
&  Ye11*(12*g1p2*M1*Yv11 + 20*gpp2*M4*Qe1p2*Yv11 + 20*gpp2*M4*QHdp2*Yv11 -               & 
&  20*gpp2*M4*Ql1p2*Yv11 + 30*TradjYdTd*Yv11 + 10*Abslam*TYv11 + 45*AbsYv11*TYv11 -      & 
&  6*g1p2*TYv11 - 10*gpp2*Qe1p2*TYv11 - 10*gpp2*QHdp2*TYv11 + 10*gpp2*Ql1p2*TYv11 +      & 
&  15*TrYdadjYd*TYv11 + 5*Conjg(Ye22)*(2*Yv11*TYe22 + Ye22*TYv11) + 5*Conjg(Ye33)*(2*Yv11*TYe33 +& 
&  Ye33*TYv11) + 20*Yv11*Conjg(lam)*Tlam)))/5._dp

 
DTYv11 = oo16pi2*( betaTYv111 + oo16pi2 * betaTYv112 ) 

 
Else 
DTYv11 = oo16pi2* betaTYv111 
End If 
 
 
Call Chop(DTYv11) 

!-------------------- 
! TYv22 
!-------------------- 
 
betaTYv221  = (6*g1p2*M1*Yv22)/5._dp + 6*g2p2*M2*Yv22 + 4*gpp2*M4*QHup2*Yv22 +        & 
&  4*gpp2*M4*Ql2p2*Yv22 + 4*gpp2*M4*Qv2p2*Yv22 + 6*TradjYuTu*Yv22 + Abslam*TYv22 +       & 
&  12*AbsYv22*TYv22 + AbsYv33*TYv22 - (3*g1p2*TYv22)/5._dp - 3*g2p2*TYv22 -              & 
&  2*gpp2*QHup2*TYv22 - 2*gpp2*Ql2p2*TYv22 - 2*gpp2*Qv2p2*TYv22 + 3*TrYuadjYu*TYv22 +    & 
&  Conjg(Ye22)*(2*Yv22*TYe22 + Ye22*TYv22) + Conjg(Yv11)*(2*Yv22*TYv11 + Yv11*TYv22)     & 
&  + 2*Yv22*Conjg(Yv33)*TYv33 + 2*Yv22*Conjg(lam)*Tlam

 
 
If (TwoLoopRGE) Then 
betaTYv222 = (-414*g1p4*M1*Yv22)/25._dp - (18*g1p2*g2p2*M1*Yv22)/5._dp - (18*g1p2*g2p2*M2*Yv22)/5._dp -& 
&  30*g2p4*M2*Yv22 - 4*Abslam*gpp2*M4*QHdp2*Yv22 - (36*g1p2*gpp2*M1*Qd*QHu*Yv22)/5._dp - & 
&  (36*g1p2*gpp2*M4*Qd*QHu*Yv22)/5._dp - (12*g1p2*gpp2*M1*Qe1*QHu*Yv22)/5._dp -          & 
&  (12*g1p2*gpp2*M4*Qe1*QHu*Yv22)/5._dp - (12*g1p2*gpp2*M1*Qe2*QHu*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe2*QHu*Yv22)/5._dp - (12*g1p2*gpp2*M1*Qe3*QHu*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe3*QHu*Yv22)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu*Yv22)/5._dp +         & 
&  (12*g1p2*gpp2*M4*QHd*QHu*Yv22)/5._dp - (24*g1p2*gpp2*M1*QHup2*Yv22)/5._dp +           & 
&  4*Abslam*gpp2*M4*QHup2*Yv22 + 4*AbsYv33*gpp2*M4*QHup2*Yv22 - (24*g1p2*gpp2*M4*QHup2*Yv22)/5._dp -& 
&  12*g2p2*gpp2*M4*QHup2*Yv22 - 12*g2p2*gpp2*M2*QHup2*Yv22 - 72*gpp4*M4*Qdp2*QHup2*Yv22 -& 
&  8*gpp4*M4*Qe1p2*QHup2*Yv22 - 8*gpp4*M4*Qe2p2*QHup2*Yv22 - 8*gpp4*M4*Qe3p2*QHup2*Yv22 -& 
&  16*gpp4*M4*QHdp2*QHup2*Yv22 - 32*gpp4*M4*QHup4*Yv22 + (12*g1p2*gpp2*M1*QHu*Ql1*Yv22)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql1*Yv22)/5._dp - 16*gpp4*M4*QHup2*Ql1p2*Yv22 + (36*g1p2*gpp2*M1*Qd*Ql2*Yv22)/5._dp +& 
&  (36*g1p2*gpp2*M4*Qd*Ql2*Yv22)/5._dp + (12*g1p2*gpp2*M1*Qe1*Ql2*Yv22)/5._dp +          & 
&  (12*g1p2*gpp2*M4*Qe1*Ql2*Yv22)/5._dp + (12*g1p2*gpp2*M1*Qe2*Ql2*Yv22)/5._dp +         & 
&  (12*g1p2*gpp2*M4*Qe2*Ql2*Yv22)/5._dp + (12*g1p2*gpp2*M1*Qe3*Ql2*Yv22)/5._dp +         & 
&  (12*g1p2*gpp2*M4*Qe3*Ql2*Yv22)/5._dp - (12*g1p2*gpp2*M1*QHd*Ql2*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*QHd*Ql2*Yv22)/5._dp + (24*g1p2*gpp2*M1*QHu*Ql2*Yv22)/5._dp +         & 
&  (24*g1p2*gpp2*M4*QHu*Ql2*Yv22)/5._dp - (12*g1p2*gpp2*M1*Ql1*Ql2*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Ql1*Ql2*Yv22)/5._dp - (24*g1p2*gpp2*M1*Ql2p2*Yv22)/5._dp -           & 
&  (24*g1p2*gpp2*M4*Ql2p2*Yv22)/5._dp - 12*g2p2*gpp2*M4*Ql2p2*Yv22 - 12*g2p2*gpp2*M2*Ql2p2*Yv22 -& 
&  72*gpp4*M4*Qdp2*Ql2p2*Yv22 - 8*gpp4*M4*Qe1p2*Ql2p2*Yv22 - 8*gpp4*M4*Qe2p2*Ql2p2*Yv22  
betaTYv222 =  betaTYv222- 8*gpp4*M4*Qe3p2*Ql2p2*Yv22 - 16*gpp4*M4*QHdp2*Ql2p2*Yv22 - 32*gpp4*M4*QHup2*Ql2p2*Yv22 -& 
&  16*gpp4*M4*Ql1p2*Ql2p2*Yv22 - 32*gpp4*M4*Ql2p4*Yv22 + (12*g1p2*gpp2*M1*QHu*Ql3*Yv22)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql3*Yv22)/5._dp - (12*g1p2*gpp2*M1*Ql2*Ql3*Yv22)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Ql2*Ql3*Yv22)/5._dp - 4*AbsYv33*gpp2*M4*Ql3p2*Yv22 - 16*gpp4*M4*QHup2*Ql3p2*Yv22 -& 
&  16*gpp4*M4*Ql2p2*Ql3p2*Yv22 - (36*g1p2*gpp2*M1*QHu*Qq*Yv22)/5._dp - (36*g1p2*gpp2*M4*QHu*Qq*Yv22)/5._dp +& 
&  (36*g1p2*gpp2*M1*Ql2*Qq*Yv22)/5._dp + (36*g1p2*gpp2*M4*Ql2*Qq*Yv22)/5._dp -           & 
&  144*gpp4*M4*QHup2*Qqp2*Yv22 - 144*gpp4*M4*Ql2p2*Qqp2*Yv22 - 4*Abslam*gpp2*M4*Qsp2*Yv22 -& 
&  8*gpp4*M4*QHup2*Qsp2*Yv22 - 8*gpp4*M4*Ql2p2*Qsp2*Yv22 + (72*g1p2*gpp2*M1*QHu*Qu*Yv22)/5._dp +& 
&  (72*g1p2*gpp2*M4*QHu*Qu*Yv22)/5._dp - (72*g1p2*gpp2*M1*Ql2*Qu*Yv22)/5._dp -           & 
&  (72*g1p2*gpp2*M4*Ql2*Qu*Yv22)/5._dp - 72*gpp4*M4*QHup2*Qup2*Yv22 - 72*gpp4*M4*Ql2p2*Qup2*Yv22 -& 
&  8*gpp4*M4*QHup2*Qv1p2*Yv22 - 8*gpp4*M4*Ql2p2*Qv1p2*Yv22 - 72*gpp4*M4*Qdp2*Qv2p2*Yv22 -& 
&  8*gpp4*M4*Qe1p2*Qv2p2*Yv22 - 8*gpp4*M4*Qe2p2*Qv2p2*Yv22 - 8*gpp4*M4*Qe3p2*Qv2p2*Yv22 -& 
&  16*gpp4*M4*QHdp2*Qv2p2*Yv22 - 24*gpp4*M4*QHup2*Qv2p2*Yv22 - 16*gpp4*M4*Ql1p2*Qv2p2*Yv22 -& 
&  24*gpp4*M4*Ql2p2*Qv2p2*Yv22 - 16*gpp4*M4*Ql3p2*Qv2p2*Yv22 - 144*gpp4*M4*Qqp2*Qv2p2*Yv22 -& 
&  8*gpp4*M4*Qsp2*Qv2p2*Yv22 - 72*gpp4*M4*Qup2*Qv2p2*Yv22 - 8*gpp4*M4*Qv1p2*Qv2p2*Yv22 - & 
&  24*gpp4*M4*Qv2p4*Yv22 - 4*AbsYv33*gpp2*M4*Qv3p2*Yv22 - 8*gpp4*M4*QHup2*Qv3p2*Yv22 -   & 
&  8*gpp4*M4*Ql2p2*Qv3p2*Yv22 - 8*gpp4*M4*Qv2p2*Qv3p2*Yv22 - 6*Abslam*TradjYdTd*Yv22 +   & 
&  (8*g1p2*TradjYuTu*Yv22)/5._dp + 32*g3p2*TradjYuTu*Yv22 - 12*gpp2*QHup2*TradjYuTu*Yv22 +& 
&  12*gpp2*Qqp2*TradjYuTu*Yv22 + 12*gpp2*Qup2*TradjYuTu*Yv22 - 6*TrYdadjYuTuadjYd*Yv22 - & 
&  6*TrYuadjYdTdadjYu*Yv22 - (8*g1p2*M1*TrYuadjYu*Yv22)/5._dp - 32*g3p2*M3*TrYuadjYu*Yv22 +& 
&  12*gpp2*M4*QHup2*TrYuadjYu*Yv22 - 12*gpp2*M4*Qqp2*TrYuadjYu*Yv22 - 12*gpp2*M4*Qup2*TrYuadjYu*Yv22  
betaTYv222 =  betaTYv222- 36*TrYuadjYuTuadjYu*Yv22 - (12*g1p2*M1*Yv22p2*Conjg(Yv22))/5._dp - 12*g2p2*M2*Yv22p2*Conjg(Yv22) -& 
&  8*gpp2*M4*QHup2*Yv22p2*Conjg(Yv22) - 8*gpp2*M4*Ql2p2*Yv22p2*Conjg(Yv22) -             & 
&  18*TradjYuTu*Yv22p2*Conjg(Yv22) - 2*Abslam*Yv22*Conjg(Ye11)*TYe11 - 2*Abslam*Yv22*Conjg(Ye33)*TYe33 -& 
&  2*AbsYv33*Yv22*Conjg(Ye33)*TYe33 - Abslam*AbsYe11*TYv22 - Abslam*AbsYe33*TYv22 -      & 
&  9*Abslam*AbsYv22*TYv22 - AbsYe33*AbsYv33*TYv22 - 9*AbsYv22*AbsYv33*TYv22 +            & 
&  (18*AbsYv22*g1p2*TYv22)/5._dp + (207*g1p4*TYv22)/50._dp + 18*AbsYv22*g2p2*TYv22 +     & 
&  (9*g1p2*g2p2*TYv22)/5._dp + (15*g2p4*TYv22)/2._dp - 3*Clamp2*lamp2*TYv22 +            & 
&  2*Abslam*gpp2*QHdp2*TYv22 + (18*g1p2*gpp2*Qd*QHu*TYv22)/5._dp + (6*g1p2*gpp2*Qe1*QHu*TYv22)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*TYv22)/5._dp + (6*g1p2*gpp2*Qe3*QHu*TYv22)/5._dp -               & 
&  (6*g1p2*gpp2*QHd*QHu*TYv22)/5._dp - 2*Abslam*gpp2*QHup2*TYv22 + 12*AbsYv22*gpp2*QHup2*TYv22 -& 
&  2*AbsYv33*gpp2*QHup2*TYv22 + (12*g1p2*gpp2*QHup2*TYv22)/5._dp + 6*g2p2*gpp2*QHup2*TYv22 +& 
&  18*gpp4*Qdp2*QHup2*TYv22 + 2*gpp4*Qe1p2*QHup2*TYv22 + 2*gpp4*Qe2p2*QHup2*TYv22 +      & 
&  2*gpp4*Qe3p2*QHup2*TYv22 + 4*gpp4*QHdp2*QHup2*TYv22 + 8*gpp4*QHup4*TYv22 -            & 
&  (6*g1p2*gpp2*QHu*Ql1*TYv22)/5._dp + 4*gpp4*QHup2*Ql1p2*TYv22 - (18*g1p2*gpp2*Qd*Ql2*TYv22)/5._dp -& 
&  (6*g1p2*gpp2*Qe1*Ql2*TYv22)/5._dp - (6*g1p2*gpp2*Qe2*Ql2*TYv22)/5._dp -               & 
&  (6*g1p2*gpp2*Qe3*Ql2*TYv22)/5._dp + (6*g1p2*gpp2*QHd*Ql2*TYv22)/5._dp -               & 
&  (12*g1p2*gpp2*QHu*Ql2*TYv22)/5._dp + (6*g1p2*gpp2*Ql1*Ql2*TYv22)/5._dp +              & 
&  12*AbsYv22*gpp2*Ql2p2*TYv22 + (12*g1p2*gpp2*Ql2p2*TYv22)/5._dp + 6*g2p2*gpp2*Ql2p2*TYv22 +& 
&  18*gpp4*Qdp2*Ql2p2*TYv22 + 2*gpp4*Qe1p2*Ql2p2*TYv22 + 2*gpp4*Qe2p2*Ql2p2*TYv22 +      & 
&  2*gpp4*Qe3p2*Ql2p2*TYv22 + 4*gpp4*QHdp2*Ql2p2*TYv22 + 8*gpp4*QHup2*Ql2p2*TYv22 +      & 
&  4*gpp4*Ql1p2*Ql2p2*TYv22 + 8*gpp4*Ql2p4*TYv22 - (6*g1p2*gpp2*QHu*Ql3*TYv22)/5._dp  
betaTYv222 =  betaTYv222+ (6*g1p2*gpp2*Ql2*Ql3*TYv22)/5._dp + 2*AbsYv33*gpp2*Ql3p2*TYv22 + 4*gpp4*QHup2*Ql3p2*TYv22 +& 
&  4*gpp4*Ql2p2*Ql3p2*TYv22 + (18*g1p2*gpp2*QHu*Qq*TYv22)/5._dp - (18*g1p2*gpp2*Ql2*Qq*TYv22)/5._dp +& 
&  36*gpp4*QHup2*Qqp2*TYv22 + 36*gpp4*Ql2p2*Qqp2*TYv22 + 2*Abslam*gpp2*Qsp2*TYv22 +      & 
&  2*gpp4*QHup2*Qsp2*TYv22 + 2*gpp4*Ql2p2*Qsp2*TYv22 - (36*g1p2*gpp2*QHu*Qu*TYv22)/5._dp +& 
&  (36*g1p2*gpp2*Ql2*Qu*TYv22)/5._dp + 18*gpp4*QHup2*Qup2*TYv22 + 18*gpp4*Ql2p2*Qup2*TYv22 +& 
&  2*gpp4*QHup2*Qv1p2*TYv22 + 2*gpp4*Ql2p2*Qv1p2*TYv22 + 18*gpp4*Qdp2*Qv2p2*TYv22 +      & 
&  2*gpp4*Qe1p2*Qv2p2*TYv22 + 2*gpp4*Qe2p2*Qv2p2*TYv22 + 2*gpp4*Qe3p2*Qv2p2*TYv22 +      & 
&  4*gpp4*QHdp2*Qv2p2*TYv22 + 6*gpp4*QHup2*Qv2p2*TYv22 + 4*gpp4*Ql1p2*Qv2p2*TYv22 +      & 
&  6*gpp4*Ql2p2*Qv2p2*TYv22 + 4*gpp4*Ql3p2*Qv2p2*TYv22 + 36*gpp4*Qqp2*Qv2p2*TYv22 +      & 
&  2*gpp4*Qsp2*Qv2p2*TYv22 + 18*gpp4*Qup2*Qv2p2*TYv22 + 2*gpp4*Qv1p2*Qv2p2*TYv22 +       & 
&  6*gpp4*Qv2p4*TYv22 + 2*AbsYv33*gpp2*Qv3p2*TYv22 + 2*gpp4*QHup2*Qv3p2*TYv22 +          & 
&  2*gpp4*Ql2p2*Qv3p2*TYv22 + 2*gpp4*Qv2p2*Qv3p2*TYv22 - 3*Abslam*TrYdadjYd*TYv22 -      & 
&  3*TrYdadjYuYuadjYd*TYv22 - 27*AbsYv22*TrYuadjYu*TYv22 + (4*g1p2*TrYuadjYu*TYv22)/5._dp +& 
&  16*g3p2*TrYuadjYu*TYv22 - 6*gpp2*QHup2*TrYuadjYu*TYv22 + 6*gpp2*Qqp2*TrYuadjYu*TYv22 +& 
&  6*gpp2*Qup2*TrYuadjYu*TYv22 - 9*TrYuadjYuYuadjYu*TYv22 - 50*CYv22p2*Yv22p2*TYv22 -    & 
&  3*CYv33p2*Yv33p2*TYv22 - 3*CYe22p2*Ye22*(4*Yv22*TYe22 + Ye22*TYv22) - 3*CYv11p2*Yv11*(4*Yv22*TYv11 +& 
&  Yv11*TYv22) + Conjg(Yv11)*(2*(-3._dp*(AbsYv22) + 2*gpp2*(-1._dp*(QHup2) +             & 
&  Ql1p2 + Qv1p2))*Yv22*TYv11 + Yv11*(4*gpp2*M4*(QHup2 - Ql1p2 - Qv1p2)*Yv22 +           & 
&  (-9._dp*(AbsYv22) + 2*gpp2*(-1._dp*(QHup2) + Ql1p2 + Qv1p2))*TYv22) - Conjg(Ye11)*(2*Yv11*Yv22*TYe11 +& 
&  2*Ye11*Yv22*TYv11 + Ye11*Yv11*TYv22)) - 12*CYv33p2*Yv22*Yv33*TYv33 - 2*AbsYe33*Yv22*Conjg(Yv33)*TYv33 -& 
&  4*gpp2*QHup2*Yv22*Conjg(Yv33)*TYv33 + 4*gpp2*Ql3p2*Yv22*Conjg(Yv33)*TYv33  
betaTYv222 =  betaTYv222+ 4*gpp2*Qv3p2*Yv22*Conjg(Yv33)*TYv33 - 6*Yv22p2*Conjg(Yv22)*Conjg(Yv33)*TYv33 -        & 
&  12*Clamp2*Yv22*lam*Tlam - 2*AbsYe11*Yv22*Conjg(lam)*Tlam - 2*AbsYe33*Yv22*Conjg(lam)*Tlam +& 
&  4*gpp2*QHdp2*Yv22*Conjg(lam)*Tlam - 4*gpp2*QHup2*Yv22*Conjg(lam)*Tlam +               & 
&  4*gpp2*Qsp2*Yv22*Conjg(lam)*Tlam - 6*TrYdadjYd*Yv22*Conjg(lam)*Tlam - 6*Yv22p2*Conjg(Yv22)*Conjg(lam)*Tlam -& 
&  (Conjg(Ye22)*(2*(10._dp*(Abslam) + 5._dp*(AbsYe33) + 15._dp*(AbsYv22) -               & 
&  6._dp*(g1p2) - 10*gpp2*Qe2p2 - 10*gpp2*QHdp2 + 10*gpp2*Ql2p2 + 15._dp*(TrYdadjYd))*Yv22*TYe22 +& 
&  5*Conjg(Ye11)*(2*Ye22*Yv22*TYe11 + 2*Ye11*Yv22*TYe22 + Ye11*Ye22*TYv22) +             & 
&  Ye22*((10._dp*(Abslam) + 45._dp*(AbsYv22) - 6._dp*(g1p2) - 10*gpp2*Qe2p2 -            & 
&  10*gpp2*QHdp2 + 10*gpp2*Ql2p2 + 15._dp*(TrYdadjYd))*TYv22 + 5*Conjg(Ye33)*(2*Yv22*TYe33 +& 
&  Ye33*TYv22) + 2*Yv22*(6*g1p2*M1 + 10*gpp2*M4*Qe2p2 + 10*gpp2*M4*QHdp2 -               & 
&  10*gpp2*M4*Ql2p2 + 15._dp*(TradjYdTd) + 10*Conjg(lam)*Tlam))))/5._dp

 
DTYv22 = oo16pi2*( betaTYv221 + oo16pi2 * betaTYv222 ) 

 
Else 
DTYv22 = oo16pi2* betaTYv221 
End If 
 
 
Call Chop(DTYv22) 

!-------------------- 
! TYv33 
!-------------------- 
 
betaTYv331  = (6*g1p2*M1*Yv33)/5._dp + 6*g2p2*M2*Yv33 + 4*gpp2*M4*QHup2*Yv33 +        & 
&  4*gpp2*M4*Ql3p2*Yv33 + 4*gpp2*M4*Qv3p2*Yv33 + 6*TradjYuTu*Yv33 + 2*Yv33*Conjg(Yv22)   & 
& *TYv22 + Abslam*TYv33 + AbsYv22*TYv33 + 12*AbsYv33*TYv33 - (3*g1p2*TYv33)              & 
& /5._dp - 3*g2p2*TYv33 - 2*gpp2*QHup2*TYv33 - 2*gpp2*Ql3p2*TYv33 - 2*gpp2*Qv3p2*TYv33 + & 
&  3*TrYuadjYu*TYv33 + Conjg(Ye33)*(2*Yv33*TYe33 + Ye33*TYv33) + Conjg(Yv11)             & 
& *(2*Yv33*TYv11 + Yv11*TYv33) + 2*Yv33*Conjg(lam)*Tlam

 
 
If (TwoLoopRGE) Then 
betaTYv332 = (-414*g1p4*M1*Yv33)/25._dp - (18*g1p2*g2p2*M1*Yv33)/5._dp - (18*g1p2*g2p2*M2*Yv33)/5._dp -& 
&  30*g2p4*M2*Yv33 - 4*Abslam*gpp2*M4*QHdp2*Yv33 - (36*g1p2*gpp2*M1*Qd*QHu*Yv33)/5._dp - & 
&  (36*g1p2*gpp2*M4*Qd*QHu*Yv33)/5._dp - (12*g1p2*gpp2*M1*Qe1*QHu*Yv33)/5._dp -          & 
&  (12*g1p2*gpp2*M4*Qe1*QHu*Yv33)/5._dp - (12*g1p2*gpp2*M1*Qe2*QHu*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe2*QHu*Yv33)/5._dp - (12*g1p2*gpp2*M1*Qe3*QHu*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M4*Qe3*QHu*Yv33)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu*Yv33)/5._dp +         & 
&  (12*g1p2*gpp2*M4*QHd*QHu*Yv33)/5._dp - (24*g1p2*gpp2*M1*QHup2*Yv33)/5._dp +           & 
&  4*Abslam*gpp2*M4*QHup2*Yv33 + 4*AbsYv22*gpp2*M4*QHup2*Yv33 - (24*g1p2*gpp2*M4*QHup2*Yv33)/5._dp -& 
&  12*g2p2*gpp2*M4*QHup2*Yv33 - 12*g2p2*gpp2*M2*QHup2*Yv33 - 72*gpp4*M4*Qdp2*QHup2*Yv33 -& 
&  8*gpp4*M4*Qe1p2*QHup2*Yv33 - 8*gpp4*M4*Qe2p2*QHup2*Yv33 - 8*gpp4*M4*Qe3p2*QHup2*Yv33 -& 
&  16*gpp4*M4*QHdp2*QHup2*Yv33 - 32*gpp4*M4*QHup4*Yv33 + (12*g1p2*gpp2*M1*QHu*Ql1*Yv33)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql1*Yv33)/5._dp - 16*gpp4*M4*QHup2*Ql1p2*Yv33 + (12*g1p2*gpp2*M1*QHu*Ql2*Yv33)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql2*Yv33)/5._dp - 4*AbsYv22*gpp2*M4*Ql2p2*Yv33 - 16*gpp4*M4*QHup2*Ql2p2*Yv33 +& 
&  (36*g1p2*gpp2*M1*Qd*Ql3*Yv33)/5._dp + (36*g1p2*gpp2*M4*Qd*Ql3*Yv33)/5._dp +           & 
&  (12*g1p2*gpp2*M1*Qe1*Ql3*Yv33)/5._dp + (12*g1p2*gpp2*M4*Qe1*Ql3*Yv33)/5._dp +         & 
&  (12*g1p2*gpp2*M1*Qe2*Ql3*Yv33)/5._dp + (12*g1p2*gpp2*M4*Qe2*Ql3*Yv33)/5._dp +         & 
&  (12*g1p2*gpp2*M1*Qe3*Ql3*Yv33)/5._dp + (12*g1p2*gpp2*M4*Qe3*Ql3*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M1*QHd*Ql3*Yv33)/5._dp - (12*g1p2*gpp2*M4*QHd*Ql3*Yv33)/5._dp +         & 
&  (24*g1p2*gpp2*M1*QHu*Ql3*Yv33)/5._dp + (24*g1p2*gpp2*M4*QHu*Ql3*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M1*Ql1*Ql3*Yv33)/5._dp - (12*g1p2*gpp2*M4*Ql1*Ql3*Yv33)/5._dp -         & 
&  (12*g1p2*gpp2*M1*Ql2*Ql3*Yv33)/5._dp - (12*g1p2*gpp2*M4*Ql2*Ql3*Yv33)/5._dp  
betaTYv332 =  betaTYv332- (24*g1p2*gpp2*M1*Ql3p2*Yv33)/5._dp - (24*g1p2*gpp2*M4*Ql3p2*Yv33)/5._dp -             & 
&  12*g2p2*gpp2*M4*Ql3p2*Yv33 - 12*g2p2*gpp2*M2*Ql3p2*Yv33 - 72*gpp4*M4*Qdp2*Ql3p2*Yv33 -& 
&  8*gpp4*M4*Qe1p2*Ql3p2*Yv33 - 8*gpp4*M4*Qe2p2*Ql3p2*Yv33 - 8*gpp4*M4*Qe3p2*Ql3p2*Yv33 -& 
&  16*gpp4*M4*QHdp2*Ql3p2*Yv33 - 32*gpp4*M4*QHup2*Ql3p2*Yv33 - 16*gpp4*M4*Ql1p2*Ql3p2*Yv33 -& 
&  16*gpp4*M4*Ql2p2*Ql3p2*Yv33 - 32*gpp4*M4*Ql3p4*Yv33 - (36*g1p2*gpp2*M1*QHu*Qq*Yv33)/5._dp -& 
&  (36*g1p2*gpp2*M4*QHu*Qq*Yv33)/5._dp + (36*g1p2*gpp2*M1*Ql3*Qq*Yv33)/5._dp +           & 
&  (36*g1p2*gpp2*M4*Ql3*Qq*Yv33)/5._dp - 144*gpp4*M4*QHup2*Qqp2*Yv33 - 144*gpp4*M4*Ql3p2*Qqp2*Yv33 -& 
&  4*Abslam*gpp2*M4*Qsp2*Yv33 - 8*gpp4*M4*QHup2*Qsp2*Yv33 - 8*gpp4*M4*Ql3p2*Qsp2*Yv33 +  & 
&  (72*g1p2*gpp2*M1*QHu*Qu*Yv33)/5._dp + (72*g1p2*gpp2*M4*QHu*Qu*Yv33)/5._dp -           & 
&  (72*g1p2*gpp2*M1*Ql3*Qu*Yv33)/5._dp - (72*g1p2*gpp2*M4*Ql3*Qu*Yv33)/5._dp -           & 
&  72*gpp4*M4*QHup2*Qup2*Yv33 - 72*gpp4*M4*Ql3p2*Qup2*Yv33 - 8*gpp4*M4*QHup2*Qv1p2*Yv33 -& 
&  8*gpp4*M4*Ql3p2*Qv1p2*Yv33 - 4*AbsYv22*gpp2*M4*Qv2p2*Yv33 - 8*gpp4*M4*QHup2*Qv2p2*Yv33 -& 
&  8*gpp4*M4*Ql3p2*Qv2p2*Yv33 - 72*gpp4*M4*Qdp2*Qv3p2*Yv33 - 8*gpp4*M4*Qe1p2*Qv3p2*Yv33 -& 
&  8*gpp4*M4*Qe2p2*Qv3p2*Yv33 - 8*gpp4*M4*Qe3p2*Qv3p2*Yv33 - 16*gpp4*M4*QHdp2*Qv3p2*Yv33 -& 
&  24*gpp4*M4*QHup2*Qv3p2*Yv33 - 16*gpp4*M4*Ql1p2*Qv3p2*Yv33 - 16*gpp4*M4*Ql2p2*Qv3p2*Yv33 -& 
&  24*gpp4*M4*Ql3p2*Qv3p2*Yv33 - 144*gpp4*M4*Qqp2*Qv3p2*Yv33 - 8*gpp4*M4*Qsp2*Qv3p2*Yv33 -& 
&  72*gpp4*M4*Qup2*Qv3p2*Yv33 - 8*gpp4*M4*Qv1p2*Qv3p2*Yv33 - 8*gpp4*M4*Qv2p2*Qv3p2*Yv33 -& 
&  24*gpp4*M4*Qv3p4*Yv33 - 6*Abslam*TradjYdTd*Yv33 + (8*g1p2*TradjYuTu*Yv33)/5._dp +     & 
&  32*g3p2*TradjYuTu*Yv33 - 12*gpp2*QHup2*TradjYuTu*Yv33 + 12*gpp2*Qqp2*TradjYuTu*Yv33 + & 
&  12*gpp2*Qup2*TradjYuTu*Yv33 - 6*TrYdadjYuTuadjYd*Yv33 - 6*TrYuadjYdTdadjYu*Yv33 -     & 
&  (8*g1p2*M1*TrYuadjYu*Yv33)/5._dp - 32*g3p2*M3*TrYuadjYu*Yv33 + 12*gpp2*M4*QHup2*TrYuadjYu*Yv33  
betaTYv332 =  betaTYv332- 12*gpp2*M4*Qqp2*TrYuadjYu*Yv33 - 12*gpp2*M4*Qup2*TrYuadjYu*Yv33 - 36*TrYuadjYuTuadjYu*Yv33 -& 
&  (12*g1p2*M1*Yv33p2*Conjg(Yv33))/5._dp - 12*g2p2*M2*Yv33p2*Conjg(Yv33) -               & 
&  8*gpp2*M4*QHup2*Yv33p2*Conjg(Yv33) - 8*gpp2*M4*Ql3p2*Yv33p2*Conjg(Yv33) -             & 
&  18*TradjYuTu*Yv33p2*Conjg(Yv33) - 2*Abslam*Yv33*Conjg(Ye11)*TYe11 - 2*Abslam*Yv33*Conjg(Ye22)*TYe22 -& 
&  2*AbsYv22*Yv33*Conjg(Ye22)*TYe22 - 12*CYv22p2*Yv22*Yv33*TYv22 - 2*AbsYe22*Yv33*Conjg(Yv22)*TYv22 -& 
&  4*gpp2*QHup2*Yv33*Conjg(Yv22)*TYv22 + 4*gpp2*Ql2p2*Yv33*Conjg(Yv22)*TYv22 +           & 
&  4*gpp2*Qv2p2*Yv33*Conjg(Yv22)*TYv22 - 6*Yv33p2*Conjg(Yv22)*Conjg(Yv33)*TYv22 -        & 
&  Abslam*AbsYe11*TYv33 - Abslam*AbsYe22*TYv33 - AbsYe22*AbsYv22*TYv33 - 9*Abslam*AbsYv33*TYv33 -& 
&  9*AbsYv22*AbsYv33*TYv33 + (18*AbsYv33*g1p2*TYv33)/5._dp + (207*g1p4*TYv33)/50._dp +   & 
&  18*AbsYv33*g2p2*TYv33 + (9*g1p2*g2p2*TYv33)/5._dp + (15*g2p4*TYv33)/2._dp -           & 
&  3*Clamp2*lamp2*TYv33 + 2*Abslam*gpp2*QHdp2*TYv33 + (18*g1p2*gpp2*Qd*QHu*TYv33)/5._dp +& 
&  (6*g1p2*gpp2*Qe1*QHu*TYv33)/5._dp + (6*g1p2*gpp2*Qe2*QHu*TYv33)/5._dp +               & 
&  (6*g1p2*gpp2*Qe3*QHu*TYv33)/5._dp - (6*g1p2*gpp2*QHd*QHu*TYv33)/5._dp -               & 
&  2*Abslam*gpp2*QHup2*TYv33 - 2*AbsYv22*gpp2*QHup2*TYv33 + 12*AbsYv33*gpp2*QHup2*TYv33 +& 
&  (12*g1p2*gpp2*QHup2*TYv33)/5._dp + 6*g2p2*gpp2*QHup2*TYv33 + 18*gpp4*Qdp2*QHup2*TYv33 +& 
&  2*gpp4*Qe1p2*QHup2*TYv33 + 2*gpp4*Qe2p2*QHup2*TYv33 + 2*gpp4*Qe3p2*QHup2*TYv33 +      & 
&  4*gpp4*QHdp2*QHup2*TYv33 + 8*gpp4*QHup4*TYv33 - (6*g1p2*gpp2*QHu*Ql1*TYv33)/5._dp +   & 
&  4*gpp4*QHup2*Ql1p2*TYv33 - (6*g1p2*gpp2*QHu*Ql2*TYv33)/5._dp + 2*AbsYv22*gpp2*Ql2p2*TYv33 +& 
&  4*gpp4*QHup2*Ql2p2*TYv33 - (18*g1p2*gpp2*Qd*Ql3*TYv33)/5._dp - (6*g1p2*gpp2*Qe1*Ql3*TYv33)/5._dp -& 
&  (6*g1p2*gpp2*Qe2*Ql3*TYv33)/5._dp - (6*g1p2*gpp2*Qe3*Ql3*TYv33)/5._dp +               & 
&  (6*g1p2*gpp2*QHd*Ql3*TYv33)/5._dp - (12*g1p2*gpp2*QHu*Ql3*TYv33)/5._dp  
betaTYv332 =  betaTYv332+ (6*g1p2*gpp2*Ql1*Ql3*TYv33)/5._dp + (6*g1p2*gpp2*Ql2*Ql3*TYv33)/5._dp +               & 
&  12*AbsYv33*gpp2*Ql3p2*TYv33 + (12*g1p2*gpp2*Ql3p2*TYv33)/5._dp + 6*g2p2*gpp2*Ql3p2*TYv33 +& 
&  18*gpp4*Qdp2*Ql3p2*TYv33 + 2*gpp4*Qe1p2*Ql3p2*TYv33 + 2*gpp4*Qe2p2*Ql3p2*TYv33 +      & 
&  2*gpp4*Qe3p2*Ql3p2*TYv33 + 4*gpp4*QHdp2*Ql3p2*TYv33 + 8*gpp4*QHup2*Ql3p2*TYv33 +      & 
&  4*gpp4*Ql1p2*Ql3p2*TYv33 + 4*gpp4*Ql2p2*Ql3p2*TYv33 + 8*gpp4*Ql3p4*TYv33 +            & 
&  (18*g1p2*gpp2*QHu*Qq*TYv33)/5._dp - (18*g1p2*gpp2*Ql3*Qq*TYv33)/5._dp +               & 
&  36*gpp4*QHup2*Qqp2*TYv33 + 36*gpp4*Ql3p2*Qqp2*TYv33 + 2*Abslam*gpp2*Qsp2*TYv33 +      & 
&  2*gpp4*QHup2*Qsp2*TYv33 + 2*gpp4*Ql3p2*Qsp2*TYv33 - (36*g1p2*gpp2*QHu*Qu*TYv33)/5._dp +& 
&  (36*g1p2*gpp2*Ql3*Qu*TYv33)/5._dp + 18*gpp4*QHup2*Qup2*TYv33 + 18*gpp4*Ql3p2*Qup2*TYv33 +& 
&  2*gpp4*QHup2*Qv1p2*TYv33 + 2*gpp4*Ql3p2*Qv1p2*TYv33 + 2*AbsYv22*gpp2*Qv2p2*TYv33 +    & 
&  2*gpp4*QHup2*Qv2p2*TYv33 + 2*gpp4*Ql3p2*Qv2p2*TYv33 + 18*gpp4*Qdp2*Qv3p2*TYv33 +      & 
&  2*gpp4*Qe1p2*Qv3p2*TYv33 + 2*gpp4*Qe2p2*Qv3p2*TYv33 + 2*gpp4*Qe3p2*Qv3p2*TYv33 +      & 
&  4*gpp4*QHdp2*Qv3p2*TYv33 + 6*gpp4*QHup2*Qv3p2*TYv33 + 4*gpp4*Ql1p2*Qv3p2*TYv33 +      & 
&  4*gpp4*Ql2p2*Qv3p2*TYv33 + 6*gpp4*Ql3p2*Qv3p2*TYv33 + 36*gpp4*Qqp2*Qv3p2*TYv33 +      & 
&  2*gpp4*Qsp2*Qv3p2*TYv33 + 18*gpp4*Qup2*Qv3p2*TYv33 + 2*gpp4*Qv1p2*Qv3p2*TYv33 +       & 
&  2*gpp4*Qv2p2*Qv3p2*TYv33 + 6*gpp4*Qv3p4*TYv33 - 3*Abslam*TrYdadjYd*TYv33 -            & 
&  3*TrYdadjYuYuadjYd*TYv33 - 27*AbsYv33*TrYuadjYu*TYv33 + (4*g1p2*TrYuadjYu*TYv33)/5._dp +& 
&  16*g3p2*TrYuadjYu*TYv33 - 6*gpp2*QHup2*TrYuadjYu*TYv33 + 6*gpp2*Qqp2*TrYuadjYu*TYv33 +& 
&  6*gpp2*Qup2*TrYuadjYu*TYv33 - 9*TrYuadjYuYuadjYu*TYv33 - 3*CYv22p2*Yv22p2*TYv33 -     & 
&  50*CYv33p2*Yv33p2*TYv33 - 3*CYe33p2*Ye33*(4*Yv33*TYe33 + Ye33*TYv33) - 3*CYv11p2*Yv11*(4*Yv33*TYv11 +& 
&  Yv11*TYv33) + Conjg(Yv11)*(2*(-3._dp*(AbsYv33) + 2*gpp2*(-1._dp*(QHup2) +             & 
&  Ql1p2 + Qv1p2))*Yv33*TYv11 + Yv11*(4*gpp2*M4*(QHup2 - Ql1p2 - Qv1p2)*Yv33 +           & 
&  (-9._dp*(AbsYv33) + 2*gpp2*(-1._dp*(QHup2) + Ql1p2 + Qv1p2))*TYv33) - Conjg(Ye11)*(2*Yv11*Yv33*TYe11 +& 
&  2*Ye11*Yv33*TYv11 + Ye11*Yv11*TYv33)) - 12*Clamp2*Yv33*lam*Tlam - 2*AbsYe11*Yv33*Conjg(lam)*Tlam  
betaTYv332 =  betaTYv332- 2*AbsYe22*Yv33*Conjg(lam)*Tlam + 4*gpp2*QHdp2*Yv33*Conjg(lam)*Tlam - 4*gpp2*QHup2*Yv33*Conjg(lam)*Tlam +& 
&  4*gpp2*Qsp2*Yv33*Conjg(lam)*Tlam - 6*TrYdadjYd*Yv33*Conjg(lam)*Tlam - 6*Yv33p2*Conjg(Yv33)*Conjg(lam)*Tlam +& 
&  Conjg(Ye33)*((-12*g1p2*M1*Ye33*Yv33)/5._dp - 4*gpp2*M4*Qe3p2*Ye33*Yv33 -              & 
&  4*gpp2*M4*QHdp2*Ye33*Yv33 + 4*gpp2*M4*Ql3p2*Ye33*Yv33 - 6*TradjYdTd*Ye33*Yv33 -       & 
&  4*Abslam*Yv33*TYe33 + (12*g1p2*Yv33*TYe33)/5._dp + 4*gpp2*Qe3p2*Yv33*TYe33 +          & 
&  4*gpp2*QHdp2*Yv33*TYe33 - 4*gpp2*Ql3p2*Yv33*TYe33 - 6*TrYdadjYd*Yv33*TYe33 -          & 
&  6*Yv33p2*Conjg(Yv33)*TYe33 - 2*Abslam*Ye33*TYv33 - 9*AbsYv33*Ye33*TYv33 +             & 
&  (6*g1p2*Ye33*TYv33)/5._dp + 2*gpp2*Qe3p2*Ye33*TYv33 + 2*gpp2*QHdp2*Ye33*TYv33 -       & 
&  2*gpp2*Ql3p2*Ye33*TYv33 - 3*TrYdadjYd*Ye33*TYv33 - Conjg(Ye11)*(2*Ye33*Yv33*TYe11 +   & 
&  2*Ye11*Yv33*TYe33 + Ye11*Ye33*TYv33) - Conjg(Ye22)*(2*Ye33*Yv33*TYe22 +               & 
&  2*Ye22*Yv33*TYe33 + Ye22*Ye33*TYv33) - 4*Ye33*Yv33*Conjg(lam)*Tlam)

 
DTYv33 = oo16pi2*( betaTYv331 + oo16pi2 * betaTYv332 ) 

 
Else 
DTYv33 = oo16pi2* betaTYv331 
End If 
 
 
Call Chop(DTYv33) 

!-------------------- 
! Tu 
!-------------------- 
 
betaTu1  = TuadjYdYd + 5._dp*(TuadjYuYu) + 2._dp*(YuadjYdTd) + 4._dp*(YuadjYuTu)      & 
&  + Abslam*Tu + AbsYv11*Tu + AbsYv22*Tu + AbsYv33*Tu - (13*g1p2*Tu)/15._dp -            & 
&  3*g2p2*Tu - (16*g3p2*Tu)/3._dp - 2*gpp2*QHup2*Tu - 2*gpp2*Qqp2*Tu - 2*gpp2*Qup2*Tu +  & 
&  3*TrYuadjYu*Tu + Yu*((26*g1p2*M1)/15._dp + (32*g3p2*M3)/3._dp + 6*g2p2*M2 +           & 
&  4*gpp2*M4*QHup2 + 4*gpp2*M4*Qqp2 + 4*gpp2*M4*Qup2 + 6._dp*(TradjYuTu) +               & 
&  2*Conjg(Yv11)*TYv11 + 2*Conjg(Yv22)*TYv22 + 2*Conjg(Yv33)*TYv33 + 2*Conjg(lam)*Tlam)

 
 
If (TwoLoopRGE) Then 
betaTu2 = -(Abslam*TuadjYdYd) - AbsYe11*TuadjYdYd - AbsYe22*TuadjYdYd - AbsYe33*TuadjYdYd +     & 
&  (2*g1p2*TuadjYdYd)/5._dp + 2*gpp2*Qdp2*TuadjYdYd + 2*gpp2*QHdp2*TuadjYdYd -           & 
&  2*gpp2*Qqp2*TuadjYdYd - 3*TrYdadjYd*TuadjYdYd - 2._dp*(TuadjYdYdadjYdYd) -            & 
&  4._dp*(TuadjYdYdadjYuYu) - 5*Abslam*TuadjYuYu - 5*AbsYv11*TuadjYuYu - 5*AbsYv22*TuadjYuYu -& 
&  5*AbsYv33*TuadjYuYu + 12*g2p2*TuadjYuYu + 10*gpp2*QHup2*TuadjYuYu + 6*gpp2*Qqp2*TuadjYuYu -& 
&  6*gpp2*Qup2*TuadjYuYu - 15*TrYuadjYu*TuadjYuYu - 6._dp*(TuadjYuYuadjYuYu) -           & 
&  2*Abslam*YuadjYdTd - 2*AbsYe11*YuadjYdTd - 2*AbsYe22*YuadjYdTd - 2*AbsYe33*YuadjYdTd +& 
&  (4*g1p2*YuadjYdTd)/5._dp + 4*gpp2*Qdp2*YuadjYdTd + 4*gpp2*QHdp2*YuadjYdTd -           & 
&  4*gpp2*Qqp2*YuadjYdTd - 6*TrYdadjYd*YuadjYdTd - 4._dp*(YuadjYdTdadjYdYd) -            & 
&  4._dp*(YuadjYdTdadjYuYu) - 4._dp*(YuadjYdYdadjYdTd) - 2._dp*(YuadjYdYdadjYuTu) -      & 
&  4*Abslam*YuadjYuTu - 4*AbsYv11*YuadjYuTu - 4*AbsYv22*YuadjYuTu - 4*AbsYv33*YuadjYuTu +& 
&  (6*g1p2*YuadjYuTu)/5._dp + 6*g2p2*YuadjYuTu + 8*gpp2*QHup2*YuadjYuTu - 12*TrYuadjYu*YuadjYuTu -& 
&  8._dp*(YuadjYuTuadjYuYu) - (4*g1p2*M1*YuadjYuYu)/5._dp - 12*g2p2*M2*YuadjYuYu -       & 
&  12*gpp2*M4*QHup2*YuadjYuYu - 4*gpp2*M4*Qqp2*YuadjYuYu + 4*gpp2*M4*Qup2*YuadjYuYu -    & 
&  18*TradjYuTu*YuadjYuYu - 6._dp*(YuadjYuYuadjYuTu) - Abslam*AbsYe11*Tu -               & 
&  Abslam*AbsYe22*Tu - Abslam*AbsYe33*Tu - AbsYe11*AbsYv11*Tu - AbsYe22*AbsYv22*Tu -     & 
&  AbsYe33*AbsYv33*Tu + (2743*g1p4*Tu)/450._dp + g1p2*g2p2*Tu + (15*g2p4*Tu)/2._dp +     & 
&  (136*g1p2*g3p2*Tu)/45._dp + 8*g2p2*g3p2*Tu - (16*g3p4*Tu)/9._dp - 3*Clamp2*lamp2*Tu + & 
&  2*Abslam*gpp2*QHdp2*Tu + (18*g1p2*gpp2*Qd*QHu*Tu)/5._dp + (6*g1p2*gpp2*Qe1*QHu*Tu)/5._dp +& 
&  (6*g1p2*gpp2*Qe2*QHu*Tu)/5._dp + (6*g1p2*gpp2*Qe3*QHu*Tu)/5._dp - (6*g1p2*gpp2*QHd*QHu*Tu)/5._dp -& 
&  2*Abslam*gpp2*QHup2*Tu - 2*AbsYv11*gpp2*QHup2*Tu - 2*AbsYv22*gpp2*QHup2*Tu  
betaTu2 =  betaTu2- 2*AbsYv33*gpp2*QHup2*Tu + (12*g1p2*gpp2*QHup2*Tu)/5._dp + 6*g2p2*gpp2*QHup2*Tu +      & 
&  18*gpp4*Qdp2*QHup2*Tu + 2*gpp4*Qe1p2*QHup2*Tu + 2*gpp4*Qe2p2*QHup2*Tu +               & 
&  2*gpp4*Qe3p2*QHup2*Tu + 4*gpp4*QHdp2*QHup2*Tu + 8*gpp4*QHup4*Tu - (6*g1p2*gpp2*QHu*Ql1*Tu)/5._dp +& 
&  2*AbsYv11*gpp2*Ql1p2*Tu + 4*gpp4*QHup2*Ql1p2*Tu - (6*g1p2*gpp2*QHu*Ql2*Tu)/5._dp +    & 
&  2*AbsYv22*gpp2*Ql2p2*Tu + 4*gpp4*QHup2*Ql2p2*Tu - (6*g1p2*gpp2*QHu*Ql3*Tu)/5._dp +    & 
&  2*AbsYv33*gpp2*Ql3p2*Tu + 4*gpp4*QHup2*Ql3p2*Tu + (6*g1p2*gpp2*Qd*Qq*Tu)/5._dp +      & 
&  (2*g1p2*gpp2*Qe1*Qq*Tu)/5._dp + (2*g1p2*gpp2*Qe2*Qq*Tu)/5._dp + (2*g1p2*gpp2*Qe3*Qq*Tu)/5._dp -& 
&  (2*g1p2*gpp2*QHd*Qq*Tu)/5._dp + 4*g1p2*gpp2*QHu*Qq*Tu - (2*g1p2*gpp2*Ql1*Qq*Tu)/5._dp -& 
&  (2*g1p2*gpp2*Ql2*Qq*Tu)/5._dp - (2*g1p2*gpp2*Ql3*Qq*Tu)/5._dp + (4*g1p2*gpp2*Qqp2*Tu)/3._dp +& 
&  6*g2p2*gpp2*Qqp2*Tu + (32*g3p2*gpp2*Qqp2*Tu)/3._dp + 18*gpp4*Qdp2*Qqp2*Tu +           & 
&  2*gpp4*Qe1p2*Qqp2*Tu + 2*gpp4*Qe2p2*Qqp2*Tu + 2*gpp4*Qe3p2*Qqp2*Tu + 4*gpp4*QHdp2*Qqp2*Tu +& 
&  40*gpp4*QHup2*Qqp2*Tu + 4*gpp4*Ql1p2*Qqp2*Tu + 4*gpp4*Ql2p2*Qqp2*Tu + 4*gpp4*Ql3p2*Qqp2*Tu +& 
&  40*gpp4*Qqp4*Tu + 2*Abslam*gpp2*Qsp2*Tu + 2*gpp4*QHup2*Qsp2*Tu + 2*gpp4*Qqp2*Qsp2*Tu -& 
&  (24*g1p2*gpp2*Qd*Qu*Tu)/5._dp - (8*g1p2*gpp2*Qe1*Qu*Tu)/5._dp - (8*g1p2*gpp2*Qe2*Qu*Tu)/5._dp -& 
&  (8*g1p2*gpp2*Qe3*Qu*Tu)/5._dp + (8*g1p2*gpp2*QHd*Qu*Tu)/5._dp - (44*g1p2*gpp2*QHu*Qu*Tu)/5._dp +& 
&  (8*g1p2*gpp2*Ql1*Qu*Tu)/5._dp + (8*g1p2*gpp2*Ql2*Qu*Tu)/5._dp + (8*g1p2*gpp2*Ql3*Qu*Tu)/5._dp -& 
&  (36*g1p2*gpp2*Qq*Qu*Tu)/5._dp + (176*g1p2*gpp2*Qup2*Tu)/15._dp + (32*g3p2*gpp2*Qup2*Tu)/3._dp +& 
&  18*gpp4*Qdp2*Qup2*Tu + 2*gpp4*Qe1p2*Qup2*Tu + 2*gpp4*Qe2p2*Qup2*Tu + 2*gpp4*Qe3p2*Qup2*Tu +& 
&  4*gpp4*QHdp2*Qup2*Tu + 22*gpp4*QHup2*Qup2*Tu + 4*gpp4*Ql1p2*Qup2*Tu + 4*gpp4*Ql2p2*Qup2*Tu +& 
&  4*gpp4*Ql3p2*Qup2*Tu + 54*gpp4*Qqp2*Qup2*Tu + 2*gpp4*Qsp2*Qup2*Tu + 22*gpp4*Qup4*Tu + & 
&  2*AbsYv11*gpp2*Qv1p2*Tu + 2*gpp4*QHup2*Qv1p2*Tu + 2*gpp4*Qqp2*Qv1p2*Tu  
betaTu2 =  betaTu2+ 2*gpp4*Qup2*Qv1p2*Tu + 2*AbsYv22*gpp2*Qv2p2*Tu + 2*gpp4*QHup2*Qv2p2*Tu +              & 
&  2*gpp4*Qqp2*Qv2p2*Tu + 2*gpp4*Qup2*Qv2p2*Tu + 2*AbsYv33*gpp2*Qv3p2*Tu +               & 
&  2*gpp4*QHup2*Qv3p2*Tu + 2*gpp4*Qqp2*Qv3p2*Tu + 2*gpp4*Qup2*Qv3p2*Tu - 3*Abslam*TrYdadjYd*Tu -& 
&  3*TrYdadjYuYuadjYd*Tu + (4*g1p2*TrYuadjYu*Tu)/5._dp + 16*g3p2*TrYuadjYu*Tu -          & 
&  6*gpp2*QHup2*TrYuadjYu*Tu + 6*gpp2*Qqp2*TrYuadjYu*Tu + 6*gpp2*Qup2*TrYuadjYu*Tu -     & 
&  9*TrYuadjYuYuadjYu*Tu - 3*CYv11p2*Yv11p2*Tu - 3*CYv22p2*Yv22p2*Tu - 3*CYv33p2*Yv33p2*Tu -& 
&  6*YuadjYuYu*Conjg(Yv11)*TYv11 - 6*YuadjYuYu*Conjg(Yv22)*TYv22 - 6*YuadjYuYu*Conjg(Yv33)*TYv33 -& 
&  6*YuadjYuYu*Conjg(lam)*Tlam - (2*YuadjYdYd*(2*g1p2*M1 + 10*gpp2*M4*Qdp2 +             & 
&  10*gpp2*M4*QHdp2 - 10*gpp2*M4*Qqp2 + 15._dp*(TradjYdTd) + 5*Conjg(Ye11)*TYe11 +       & 
&  5*Conjg(Ye22)*TYe22 + 5*Conjg(Ye33)*TYe33 + 5*Conjg(lam)*Tlam))/5._dp +               & 
&  Yu*((-5486*g1p4*M1)/225._dp - 2*g1p2*g2p2*M1 - (272*g1p2*g3p2*M1)/45._dp -            & 
&  (272*g1p2*g3p2*M3)/45._dp - 16*g2p2*g3p2*M3 + (64*g3p4*M3)/9._dp - 2*g1p2*g2p2*M2 -   & 
&  30*g2p4*M2 - 16*g2p2*g3p2*M2 - 4*Abslam*gpp2*M4*QHdp2 - (36*g1p2*gpp2*M1*Qd*QHu)/5._dp -& 
&  (36*g1p2*gpp2*M4*Qd*QHu)/5._dp - (12*g1p2*gpp2*M1*Qe1*QHu)/5._dp - (12*g1p2*gpp2*M4*Qe1*QHu)/5._dp -& 
&  (12*g1p2*gpp2*M1*Qe2*QHu)/5._dp - (12*g1p2*gpp2*M4*Qe2*QHu)/5._dp - (12*g1p2*gpp2*M1*Qe3*QHu)/5._dp -& 
&  (12*g1p2*gpp2*M4*Qe3*QHu)/5._dp + (12*g1p2*gpp2*M1*QHd*QHu)/5._dp + (12*g1p2*gpp2*M4*QHd*QHu)/5._dp -& 
&  (24*g1p2*gpp2*M1*QHup2)/5._dp + 4*Abslam*gpp2*M4*QHup2 + 4*AbsYv33*gpp2*M4*QHup2 -    & 
&  (24*g1p2*gpp2*M4*QHup2)/5._dp - 12*g2p2*gpp2*M4*QHup2 - 12*g2p2*gpp2*M2*QHup2 -       & 
&  72*gpp4*M4*Qdp2*QHup2 - 8*gpp4*M4*Qe1p2*QHup2 - 8*gpp4*M4*Qe2p2*QHup2 -               & 
&  8*gpp4*M4*Qe3p2*QHup2 - 16*gpp4*M4*QHdp2*QHup2 - 32*gpp4*M4*QHup4 + (12*g1p2*gpp2*M1*QHu*Ql1)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql1)/5._dp - 16*gpp4*M4*QHup2*Ql1p2 + (12*g1p2*gpp2*M1*QHu*Ql2)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql2)/5._dp - 16*gpp4*M4*QHup2*Ql2p2 + (12*g1p2*gpp2*M1*QHu*Ql3)/5._dp +& 
&  (12*g1p2*gpp2*M4*QHu*Ql3)/5._dp - 4*AbsYv33*gpp2*M4*Ql3p2 - 16*gpp4*M4*QHup2*Ql3p2 -  & 
&  (12*g1p2*gpp2*M1*Qd*Qq)/5._dp - (12*g1p2*gpp2*M4*Qd*Qq)/5._dp - (4*g1p2*gpp2*M1*Qe1*Qq)/5._dp -& 
&  (4*g1p2*gpp2*M4*Qe1*Qq)/5._dp - (4*g1p2*gpp2*M1*Qe2*Qq)/5._dp - (4*g1p2*gpp2*M4*Qe2*Qq)/5._dp -& 
&  (4*g1p2*gpp2*M1*Qe3*Qq)/5._dp - (4*g1p2*gpp2*M4*Qe3*Qq)/5._dp + (4*g1p2*gpp2*M1*QHd*Qq)/5._dp +& 
&  (4*g1p2*gpp2*M4*QHd*Qq)/5._dp - 8*g1p2*gpp2*M1*QHu*Qq - 8*g1p2*gpp2*M4*QHu*Qq +       & 
&  (4*g1p2*gpp2*M1*Ql1*Qq)/5._dp + (4*g1p2*gpp2*M4*Ql1*Qq)/5._dp + (4*g1p2*gpp2*M1*Ql2*Qq)/5._dp +& 
&  (4*g1p2*gpp2*M4*Ql2*Qq)/5._dp + (4*g1p2*gpp2*M1*Ql3*Qq)/5._dp + (4*g1p2*gpp2*M4*Ql3*Qq)/5._dp -& 
&  (8*g1p2*gpp2*M1*Qqp2)/3._dp - (64*g3p2*gpp2*M3*Qqp2)/3._dp - (8*g1p2*gpp2*M4*Qqp2)/3._dp -& 
&  12*g2p2*gpp2*M4*Qqp2 - (64*g3p2*gpp2*M4*Qqp2)/3._dp - 12*g2p2*gpp2*M2*Qqp2 -          & 
&  72*gpp4*M4*Qdp2*Qqp2 - 8*gpp4*M4*Qe1p2*Qqp2 - 8*gpp4*M4*Qe2p2*Qqp2 - 8*gpp4*M4*Qe3p2*Qqp2 -& 
&  16*gpp4*M4*QHdp2*Qqp2 - 160*gpp4*M4*QHup2*Qqp2 - 16*gpp4*M4*Ql1p2*Qqp2 -              & 
&  16*gpp4*M4*Ql2p2*Qqp2 - 16*gpp4*M4*Ql3p2*Qqp2 - 160*gpp4*M4*Qqp4 - 4*Abslam*gpp2*M4*Qsp2 -& 
&  8*gpp4*M4*QHup2*Qsp2 - 8*gpp4*M4*Qqp2*Qsp2 + (48*g1p2*gpp2*M1*Qd*Qu)/5._dp +          & 
&  (48*g1p2*gpp2*M4*Qd*Qu)/5._dp + (16*g1p2*gpp2*M1*Qe1*Qu)/5._dp + (16*g1p2*gpp2*M4*Qe1*Qu)/5._dp +& 
&  (16*g1p2*gpp2*M1*Qe2*Qu)/5._dp + (16*g1p2*gpp2*M4*Qe2*Qu)/5._dp + (16*g1p2*gpp2*M1*Qe3*Qu)/5._dp +& 
&  (16*g1p2*gpp2*M4*Qe3*Qu)/5._dp - (16*g1p2*gpp2*M1*QHd*Qu)/5._dp - (16*g1p2*gpp2*M4*QHd*Qu)/5._dp +& 
&  (88*g1p2*gpp2*M1*QHu*Qu)/5._dp + (88*g1p2*gpp2*M4*QHu*Qu)/5._dp - (16*g1p2*gpp2*M1*Ql1*Qu)/5._dp -& 
&  (16*g1p2*gpp2*M4*Ql1*Qu)/5._dp - (16*g1p2*gpp2*M1*Ql2*Qu)/5._dp - (16*g1p2*gpp2*M4*Ql2*Qu)/5._dp -& 
&  (16*g1p2*gpp2*M1*Ql3*Qu)/5._dp - (16*g1p2*gpp2*M4*Ql3*Qu)/5._dp + (72*g1p2*gpp2*M1*Qq*Qu)/5._dp +& 
&  (72*g1p2*gpp2*M4*Qq*Qu)/5._dp - (352*g1p2*gpp2*M1*Qup2)/15._dp - (64*g3p2*gpp2*M3*Qup2)/3._dp -& 
&  (352*g1p2*gpp2*M4*Qup2)/15._dp - (64*g3p2*gpp2*M4*Qup2)/3._dp - 72*gpp4*M4*Qdp2*Qup2 -& 
&  8*gpp4*M4*Qe1p2*Qup2 - 8*gpp4*M4*Qe2p2*Qup2 - 8*gpp4*M4*Qe3p2*Qup2 - 16*gpp4*M4*QHdp2*Qup2 -& 
&  88*gpp4*M4*QHup2*Qup2 - 16*gpp4*M4*Ql1p2*Qup2 - 16*gpp4*M4*Ql2p2*Qup2 -               & 
&  16*gpp4*M4*Ql3p2*Qup2 - 216*gpp4*M4*Qqp2*Qup2 - 8*gpp4*M4*Qsp2*Qup2 - 88*gpp4*M4*Qup4 -& 
&  8*gpp4*M4*QHup2*Qv1p2 - 8*gpp4*M4*Qqp2*Qv1p2 - 8*gpp4*M4*Qup2*Qv1p2 - 8*gpp4*M4*QHup2*Qv2p2 -& 
&  8*gpp4*M4*Qqp2*Qv2p2 - 8*gpp4*M4*Qup2*Qv2p2 - 4*AbsYv33*gpp2*M4*Qv3p2 -               & 
&  8*gpp4*M4*QHup2*Qv3p2 - 8*gpp4*M4*Qqp2*Qv3p2 - 8*gpp4*M4*Qup2*Qv3p2 - 6*Abslam*TradjYdTd +& 
&  (8*g1p2*TradjYuTu)/5._dp + 32*g3p2*TradjYuTu - 12*gpp2*QHup2*TradjYuTu +              & 
&  12*gpp2*Qqp2*TradjYuTu + 12*gpp2*Qup2*TradjYuTu - 6._dp*(TrYdadjYuTuadjYd) -          & 
&  6._dp*(TrYuadjYdTdadjYu) - (8*g1p2*M1*TrYuadjYu)/5._dp - 32*g3p2*M3*TrYuadjYu +       & 
&  12*gpp2*M4*QHup2*TrYuadjYu - 12*gpp2*M4*Qqp2*TrYuadjYu - 12*gpp2*M4*Qup2*TrYuadjYu -  & 
&  36._dp*(TrYuadjYuTuadjYu) - 2*Abslam*Conjg(Ye11)*TYe11 - 2*Abslam*Conjg(Ye22)*TYe22 - & 
&  2*Abslam*Conjg(Ye33)*TYe33 - 2*AbsYv33*Conjg(Ye33)*TYe33 - 12*CYv11p2*Yv11*TYv11 +    & 
&  Conjg(Yv11)*(4*gpp2*(QHup2 - Ql1p2 - Qv1p2)*(M4*Yv11 - TYv11) - 2*Conjg(Ye11)*(Yv11*TYe11 +& 
&  Ye11*TYv11)) - 12*CYv22p2*Yv22*TYv22 + Conjg(Yv22)*(4*gpp2*(QHup2 - Ql2p2 -           & 
&  Qv2p2)*(M4*Yv22 - TYv22) - 2*Conjg(Ye22)*(Yv22*TYe22 + Ye22*TYv22)) - 12*CYv33p2*Yv33*TYv33 -& 
&  2*AbsYe33*Conjg(Yv33)*TYv33 - 4*gpp2*QHup2*Conjg(Yv33)*TYv33 + 4*gpp2*Ql3p2*Conjg(Yv33)*TYv33 +& 
&  4*gpp2*Qv3p2*Conjg(Yv33)*TYv33 - 12*Clamp2*lam*Tlam - 2*AbsYe11*Conjg(lam)*Tlam -     & 
&  2*AbsYe22*Conjg(lam)*Tlam - 2*AbsYe33*Conjg(lam)*Tlam + 4*gpp2*QHdp2*Conjg(lam)*Tlam -& 
&  4*gpp2*QHup2*Conjg(lam)*Tlam + 4*gpp2*Qsp2*Conjg(lam)*Tlam - 6*TrYdadjYd*Conjg(lam)*Tlam)

 
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
&  mq2adjYuYu - 8*AbsM4*gpp2*id3R*Qqp2 + g1*id3R*ooSqrt15*Tr1(1) + 2*gp*id3R*Qq*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamq22 = -2*Abslam*adjTdTd - 2*AbsYe11*adjTdTd - 2*AbsYe22*adjTdTd - 2*AbsYe33*adjTdTd -       & 
&  4._dp*(adjTdTdadjYdYd) - 4._dp*(adjTdYdadjYdTd) - 2*Abslam*adjTuTu - 2*AbsYv11*adjTuTu -& 
&  2*AbsYv22*adjTuTu - 2*AbsYv33*adjTuTu - 4._dp*(adjTuTuadjYuYu) - 4._dp*(adjTuYuadjYuTu) -& 
&  2*Abslam*adjYdmd2Yd - 2*AbsYe11*adjYdmd2Yd - 2*AbsYe22*adjYdmd2Yd - 2*AbsYe33*adjYdmd2Yd -& 
&  4._dp*(adjYdmd2YdadjYdYd) - 4._dp*(adjYdTdadjTdYd) - 2*AbsTlam*adjYdYd -              & 
&  2*AbsTYe11*adjYdYd - 2*AbsTYe22*adjYdYd - 2*AbsTYe33*adjYdYd - 4._dp*(adjYdYdadjTdTd) -& 
&  4._dp*(adjYdYdadjYdmd2Yd) - 2._dp*(adjYdYdadjYdYdmq2) - Abslam*adjYdYdmq2 -           & 
&  AbsYe11*adjYdYdmq2 - AbsYe22*adjYdYdmq2 - AbsYe33*adjYdYdmq2 - 4._dp*(adjYdYdmq2adjYdYd) -& 
&  2*Abslam*adjYumu2Yu - 2*AbsYv11*adjYumu2Yu - 2*AbsYv22*adjYumu2Yu - 2*AbsYv33*adjYumu2Yu -& 
&  4._dp*(adjYumu2YuadjYuYu) - 4._dp*(adjYuTuadjTuYu) - 2*AbsTlam*adjYuYu -              & 
&  2*AbsTYv11*adjYuYu - 2*AbsTYv22*adjYuYu - 2*AbsTYv33*adjYuYu - 4._dp*(adjYuYuadjTuTu) -& 
&  4._dp*(adjYuYuadjYumu2Yu) - 2._dp*(adjYuYuadjYuYumq2) - Abslam*adjYuYumq2 -           & 
&  AbsYv11*adjYuYumq2 - AbsYv22*adjYuYumq2 - AbsYv33*adjYuYumq2 - 4._dp*(adjYuYumq2adjYuYu) +& 
&  (4*adjTdTd*g1p2)/5._dp + (8*adjTuTu*g1p2)/5._dp + (4*adjYdmd2Yd*g1p2)/5._dp +         & 
&  (2*adjYdYdmq2*g1p2)/5._dp + (8*adjYumu2Yu*g1p2)/5._dp + (4*adjYuYumq2*g1p2)/5._dp +   & 
&  (2*AbsM2*g1p2*g2p2*id3R)/5._dp + 33*AbsM2*g2p4*id3R + 32*AbsM2*g2p2*g3p2*id3R -       & 
&  (4*adjTdYd*g1p2*M1)/5._dp - (8*adjTuYu*g1p2*M1)/5._dp - 2*AbsYe11*adjYdYd*me012 -     & 
&  2*AbsYe22*adjYdYd*me022 - 2*AbsYe33*adjYdYd*me032 - 4*Abslam*adjYdYd*mHd2 -           & 
&  4*AbsYe11*adjYdYd*mHd2 - 4*AbsYe22*adjYdYd*mHd2 - 4*AbsYe33*adjYdYd*mHd2 -            & 
&  8*adjYdYdadjYdYd*mHd2 - 2*Abslam*adjYuYu*mHd2 + (4*adjYdYd*g1p2*mHd2)/5._dp -         & 
&  2*Abslam*adjYdYd*mHu2 - 4*Abslam*adjYuYu*mHu2 - 4*AbsYv11*adjYuYu*mHu2  
betamq22 =  betamq22- 4*AbsYv22*adjYuYu*mHu2 - 4*AbsYv33*adjYuYu*mHu2 - 8*adjYuYuadjYuYu*mHu2 +             & 
&  (8*adjYuYu*g1p2*mHu2)/5._dp - 2*AbsYe11*adjYdYd*ml012 - 2*AbsYv11*adjYuYu*ml012 -     & 
&  2*AbsYe22*adjYdYd*ml022 - 2*AbsYv22*adjYuYu*ml022 - 2*AbsYe33*adjYdYd*ml032 -         & 
&  2*AbsYv33*adjYuYu*ml032 - Abslam*mq2adjYdYd - AbsYe11*mq2adjYdYd - AbsYe22*mq2adjYdYd -& 
&  AbsYe33*mq2adjYdYd + (2*g1p2*mq2adjYdYd)/5._dp - 2._dp*(mq2adjYdYdadjYdYd) -          & 
&  Abslam*mq2adjYuYu - AbsYv11*mq2adjYuYu - AbsYv22*mq2adjYuYu - AbsYv33*mq2adjYuYu +    & 
&  (4*g1p2*mq2adjYuYu)/5._dp - 2._dp*(mq2adjYuYuadjYuYu) - 2*Abslam*adjYdYd*ms2 -        & 
&  2*Abslam*adjYuYu*ms2 - 2*AbsYv11*adjYuYu*mvR012 - 2*AbsYv22*adjYuYu*mvR022 -          & 
&  2*AbsYv33*adjYuYu*mvR032 + 4*adjTdTd*gpp2*Qdp2 + 4*adjYdmd2Yd*gpp2*Qdp2 +             & 
&  8*AbsM4*adjYdYd*gpp2*Qdp2 + 2*adjYdYdmq2*gpp2*Qdp2 - 4*adjTdYd*gpp2*M4*Qdp2 +         & 
&  4*adjYdYd*gpp2*mHd2*Qdp2 + 2*gpp2*mq2adjYdYd*Qdp2 + 4*adjTdTd*gpp2*QHdp2 +            & 
&  4*adjYdmd2Yd*gpp2*QHdp2 + 8*AbsM4*adjYdYd*gpp2*QHdp2 + 2*adjYdYdmq2*gpp2*QHdp2 -      & 
&  4*adjTdYd*gpp2*M4*QHdp2 + 4*adjYdYd*gpp2*mHd2*QHdp2 + 2*gpp2*mq2adjYdYd*QHdp2 +       & 
&  4*adjTuTu*gpp2*QHup2 + 4*adjYumu2Yu*gpp2*QHup2 + 8*AbsM4*adjYuYu*gpp2*QHup2 +         & 
&  2*adjYuYumq2*gpp2*QHup2 - 4*adjTuYu*gpp2*M4*QHup2 + 4*adjYuYu*gpp2*mHu2*QHup2 +       & 
&  2*gpp2*mq2adjYuYu*QHup2 + (24*AbsM4*g1p2*gpp2*id3R*Qd*Qq)/5._dp + (8*AbsM4*g1p2*gpp2*id3R*Qe1*Qq)/5._dp +& 
&  (8*AbsM4*g1p2*gpp2*id3R*Qe2*Qq)/5._dp + (8*AbsM4*g1p2*gpp2*id3R*Qe3*Qq)/5._dp -       & 
&  (8*AbsM4*g1p2*gpp2*id3R*QHd*Qq)/5._dp + (8*AbsM4*g1p2*gpp2*id3R*QHu*Qq)/5._dp -       & 
&  (8*AbsM4*g1p2*gpp2*id3R*Ql1*Qq)/5._dp - (8*AbsM4*g1p2*gpp2*id3R*Ql2*Qq)/5._dp -       & 
&  (8*AbsM4*g1p2*gpp2*id3R*Ql3*Qq)/5._dp - 4*adjTdTd*gpp2*Qqp2 - 4*adjTuTu*gpp2*Qqp2 -   & 
&  4*adjYdmd2Yd*gpp2*Qqp2 - 8*AbsM4*adjYdYd*gpp2*Qqp2 - 2*adjYdYdmq2*gpp2*Qqp2  
betamq22 =  betamq22- 4*adjYumu2Yu*gpp2*Qqp2 - 8*AbsM4*adjYuYu*gpp2*Qqp2 - 2*adjYuYumq2*gpp2*Qqp2 +         & 
&  (16*AbsM4*g1p2*gpp2*id3R*Qqp2)/3._dp + 24*AbsM2*g2p2*gpp2*id3R*Qqp2 + 24*AbsM4*g2p2*gpp2*id3R*Qqp2 +& 
&  (128*AbsM4*g3p2*gpp2*id3R*Qqp2)/3._dp + 4*adjTdYd*gpp2*M4*Qqp2 + 4*adjTuYu*gpp2*M4*Qqp2 -& 
&  4*adjYdYd*gpp2*mHd2*Qqp2 - 4*adjYuYu*gpp2*mHu2*Qqp2 - 2*gpp2*mq2adjYdYd*Qqp2 -        & 
&  2*gpp2*mq2adjYuYu*Qqp2 + 216*AbsM4*gpp4*id3R*Qdp2*Qqp2 + 24*AbsM4*gpp4*id3R*Qe1p2*Qqp2 +& 
&  24*AbsM4*gpp4*id3R*Qe2p2*Qqp2 + 24*AbsM4*gpp4*id3R*Qe3p2*Qqp2 + 48*AbsM4*gpp4*id3R*QHdp2*Qqp2 +& 
&  48*AbsM4*gpp4*id3R*QHup2*Qqp2 + 48*AbsM4*gpp4*id3R*Ql1p2*Qqp2 + 48*AbsM4*gpp4*id3R*Ql2p2*Qqp2 +& 
&  48*AbsM4*gpp4*id3R*Ql3p2*Qqp2 + 480*AbsM4*gpp4*id3R*Qqp4 + 24*AbsM4*gpp4*id3R*Qqp2*Qsp2 -& 
&  (48*AbsM4*g1p2*gpp2*id3R*Qq*Qu)/5._dp + 4*adjTuTu*gpp2*Qup2 + 4*adjYumu2Yu*gpp2*Qup2 +& 
&  8*AbsM4*adjYuYu*gpp2*Qup2 + 2*adjYuYumq2*gpp2*Qup2 - 4*adjTuYu*gpp2*M4*Qup2 +         & 
&  4*adjYuYu*gpp2*mHu2*Qup2 + 2*gpp2*mq2adjYuYu*Qup2 + 216*AbsM4*gpp4*id3R*Qqp2*Qup2 +   & 
&  24*AbsM4*gpp4*id3R*Qqp2*Qv1p2 + 24*AbsM4*gpp4*id3R*Qqp2*Qv2p2 + 24*AbsM4*gpp4*id3R*Qqp2*Qv3p2 -& 
&  6*adjTdYd*TradjYdTd - 6*adjTuYu*TradjYuTu - 6*adjYdYd*TrCTdTpTd - 6*adjYdTd*TrCTdTpYd -& 
&  6*adjYuYu*TrCTuTpTu - 6*adjYuTu*TrCTuTpYu - 6*adjYdYd*Trmd2YdadjYd - 6*adjYdYd*Trmq2adjYdYd -& 
&  6*adjYuYu*Trmq2adjYuYu - 6*adjYuYu*Trmu2YuadjYu - 6*adjTdTd*TrYdadjYd -               & 
&  6*adjYdmd2Yd*TrYdadjYd - 3*adjYdYdmq2*TrYdadjYd - 12*adjYdYd*mHd2*TrYdadjYd -         & 
&  3*mq2adjYdYd*TrYdadjYd - 6*adjTuTu*TrYuadjYu - 6*adjYumu2Yu*TrYuadjYu -               & 
&  3*adjYuYumq2*TrYuadjYu - 12*adjYuYu*mHu2*TrYuadjYu - 3*mq2adjYuYu*TrYuadjYu +         & 
&  (g1p2*(180*(-1._dp*(adjYdTd) - 2._dp*(adjYuTu) + 2*adjYdYd*M1 + 4*adjYuYu*M1) +       & 
&  id3R*(597*g1p2*M1 + 80*g3p2*(2._dp*(M1) + M3) + 45*g2p2*(2._dp*(M1) + M2) +           & 
&  60*gpp2*(2._dp*(M1) + M4)*Qq*(9._dp*(Qd) + 3._dp*(Qe1) + 3._dp*(Qe2) + 3._dp*(Qe3) -  & 
&  3._dp*(QHd) + 3._dp*(QHu) - 3._dp*(Ql1) - 3._dp*(Ql2) - 3._dp*(Ql3) + 10._dp*(Qq) -   & 
&  18._dp*(Qu))))*Conjg(M1))/225._dp - (16*g3p2*id3R*(-(g1p2*(M1 + 2._dp*(M3))) -        & 
&  15*(-8*g3p2*M3 + 3*g2p2*(2._dp*(M3) + M2) + 4*gpp2*(2._dp*(M3) + M4)*Qqp2))*Conjg(M3))/45._dp  
betamq22 =  betamq22- 4*adjYdTd*gpp2*Qdp2*Conjg(M4) - 4*adjYdTd*gpp2*QHdp2*Conjg(M4) - 4*adjYuTu*gpp2*QHup2*Conjg(M4) +& 
&  (12*g1p2*gpp2*id3R*M1*Qd*Qq*Conjg(M4))/5._dp + (4*g1p2*gpp2*id3R*M1*Qe1*Qq*Conjg(M4))/5._dp +& 
&  (4*g1p2*gpp2*id3R*M1*Qe2*Qq*Conjg(M4))/5._dp + (4*g1p2*gpp2*id3R*M1*Qe3*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*QHd*Qq*Conjg(M4))/5._dp + (4*g1p2*gpp2*id3R*M1*QHu*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*Ql1*Qq*Conjg(M4))/5._dp - (4*g1p2*gpp2*id3R*M1*Ql2*Qq*Conjg(M4))/5._dp -& 
&  (4*g1p2*gpp2*id3R*M1*Ql3*Qq*Conjg(M4))/5._dp + 4*adjYdTd*gpp2*Qqp2*Conjg(M4) +        & 
&  4*adjYuTu*gpp2*Qqp2*Conjg(M4) + (8*g1p2*gpp2*id3R*M1*Qqp2*Conjg(M4))/3._dp +          & 
&  (64*g3p2*gpp2*id3R*M3*Qqp2*Conjg(M4))/3._dp + 12*g2p2*gpp2*id3R*M2*Qqp2*Conjg(M4) -   & 
&  (24*g1p2*gpp2*id3R*M1*Qq*Qu*Conjg(M4))/5._dp - 4*adjYuTu*gpp2*Qup2*Conjg(M4) +        & 
&  (g1p2*g2p2*id3R*M1*Conjg(M2))/5._dp + 16*g2p2*g3p2*id3R*M3*Conjg(M2) + 12*g2p2*gpp2*id3R*M4*Qqp2*Conjg(M2) -& 
&  2*adjYdTd*Ye11*Conjg(TYe11) - 2*adjYdTd*Ye22*Conjg(TYe22) - 2*adjYdTd*Ye33*Conjg(TYe33) -& 
&  2*adjYuTu*Yv11*Conjg(TYv11) - 2*adjYuTu*Yv22*Conjg(TYv22) - 2*adjYuTu*Yv33*Conjg(TYv33) -& 
&  2*adjYdTd*lam*Conjg(Tlam) - 2*adjYuTu*lam*Conjg(Tlam) - 2*adjTdYd*Conjg(Ye11)*TYe11 - & 
&  2*adjTdYd*Conjg(Ye22)*TYe22 - 2*adjTdYd*Conjg(Ye33)*TYe33 - 2*adjTuYu*Conjg(Yv11)*TYv11 -& 
&  2*adjTuYu*Conjg(Yv22)*TYv22 - 2*adjTuYu*Conjg(Yv33)*TYv33 - 2*adjTdYd*Conjg(lam)*Tlam -& 
&  2*adjTuYu*Conjg(lam)*Tlam + 6*g2p4*id3R*Tr2(2) + (32*g3p4*id3R*Tr2(3))/3._dp +        & 
&  (2*g1p2*id3R*Tr2U1(1,1))/15._dp + 4*g1*gp*id3R*ooSqrt15*Qq*Tr2U1(1,4) +               & 
&  4*g1*gp*id3R*ooSqrt15*Qq*Tr2U1(4,1) + 8*gpp2*id3R*Qqp2*Tr2U1(4,4) + 4*g1*id3R*ooSqrt15*Tr3(1) +& 
&  8*gp*id3R*Qq*Tr3(4)

 
Dmq2 = oo16pi2*( betamq21 + oo16pi2 * betamq22 ) 

 
Else 
Dmq2 = oo16pi2* betamq21 
End If 
 
 
Call Chop(Dmq2) 

Forall(i1=1:3) Dmq2(i1,i1) =  Real(Dmq2(i1,i1),dp) 
Dmq2 = 0.5_dp*(Dmq2+ Conjg(Transpose(Dmq2)) ) 
!-------------------- 
! ml012 
!-------------------- 
 
betaml0121  = 2._dp*(AbsTep) + 2._dp*(AbsTYe11) + 2._dp*(AbsTYv11) - (6*AbsM1*g1p2)   & 
& /5._dp - 6*AbsM2*g2p2 + 2*AbsYe11*me012 + 2*AbsYe11*mHd2 + 2*AbsYv11*mHu2 +            & 
&  2*AbsYe11*ml012 + 2*AbsYv11*ml012 + 2*AbsYv11*mvR012 - 8*AbsM4*gpp2*Ql1p2 -           & 
&  g1*sqrt3ov5*Tr1(1) + 2*gp*Ql1*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml0122 = -2*Abslam*AbsTYe11 - 2*Abslam*AbsTYv11 - 2*AbsTlam*AbsYe11 - 24*AbsTYe11*AbsYe11 -    & 
&  2*AbsTYe22*AbsYe11 - 2*AbsTYe33*AbsYe11 - 2*AbsTYe11*AbsYe22 - 2*AbsTYe11*AbsYe33 -   & 
&  2*AbsTlam*AbsYv11 - 24*AbsTYv11*AbsYv11 - 2*AbsTYv22*AbsYv11 - 2*AbsTYv33*AbsYv11 -   & 
&  2*AbsTYv11*AbsYv22 - 2*AbsTYv11*AbsYv33 + (12*AbsTYe11*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +& 
&  33*AbsM2*g2p4 - 2*Abslam*AbsYe11*me012 - 2*AbsYe11*AbsYe22*me012 - 2*AbsYe11*AbsYe33*me012 +& 
&  (12*AbsYe11*g1p2*me012)/5._dp - 2*AbsYe11*AbsYe22*me022 - 2*AbsYe11*AbsYe33*me032 -   & 
&  4*Abslam*AbsYe11*mHd2 - 4*AbsYe11*AbsYe22*mHd2 - 4*AbsYe11*AbsYe33*mHd2 -             & 
&  2*Abslam*AbsYv11*mHd2 + (12*AbsYe11*g1p2*mHd2)/5._dp - 2*Abslam*AbsYe11*mHu2 -        & 
&  4*Abslam*AbsYv11*mHu2 - 4*AbsYv11*AbsYv22*mHu2 - 4*AbsYv11*AbsYv33*mHu2 -             & 
&  2*Abslam*AbsYe11*ml012 - 2*AbsYe11*AbsYe22*ml012 - 2*AbsYe11*AbsYe33*ml012 -          & 
&  2*Abslam*AbsYv11*ml012 - 2*AbsYv11*AbsYv22*ml012 - 2*AbsYv11*AbsYv33*ml012 +          & 
&  (12*AbsYe11*g1p2*ml012)/5._dp - 2*AbsYe11*AbsYe22*ml022 - 2*AbsYv11*AbsYv22*ml022 -   & 
&  2*AbsYe11*AbsYe33*ml032 - 2*AbsYv11*AbsYv33*ml032 - 2*Abslam*AbsYe11*ms2 -            & 
&  2*Abslam*AbsYv11*ms2 - 2*Abslam*AbsYv11*mvR012 - 2*AbsYv11*AbsYv22*mvR012 -           & 
&  2*AbsYv11*AbsYv33*mvR012 - 2*AbsYv11*AbsYv22*mvR022 - 2*AbsYv11*AbsYv33*mvR032 +      & 
&  4*AbsTYe11*gpp2*Qe1p2 + 4*AbsYe11*gpp2*me012*Qe1p2 + 4*AbsYe11*gpp2*mHd2*Qe1p2 +      & 
&  4*AbsYe11*gpp2*ml012*Qe1p2 + 4*AbsTYe11*gpp2*QHdp2 + 4*AbsYe11*gpp2*me012*QHdp2 +     & 
&  4*AbsYe11*gpp2*mHd2*QHdp2 + 4*AbsYe11*gpp2*ml012*QHdp2 + 4*AbsTYv11*gpp2*QHup2 +      & 
&  4*AbsYv11*gpp2*mHu2*QHup2 + 4*AbsYv11*gpp2*ml012*QHup2 + 4*AbsYv11*gpp2*mvR012*QHup2 -& 
&  4*AbsTYe11*gpp2*Ql1p2 - 4*AbsTYv11*gpp2*Ql1p2 + 24*AbsM2*g2p2*gpp2*Ql1p2 -            & 
&  4*AbsYe11*gpp2*me012*Ql1p2 - 4*AbsYe11*gpp2*mHd2*Ql1p2 - 4*AbsYv11*gpp2*mHu2*Ql1p2  
betaml0122 =  betaml0122- 4*AbsYe11*gpp2*ml012*Ql1p2 - 4*AbsYv11*gpp2*ml012*Ql1p2 - 4*AbsYv11*gpp2*mvR012*Ql1p2 +& 
&  4*AbsTYv11*gpp2*Qv1p2 + 4*AbsYv11*gpp2*mHu2*Qv1p2 + 4*AbsYv11*gpp2*ml012*Qv1p2 +      & 
&  4*AbsYv11*gpp2*mvR012*Qv1p2 - 6*AbsYe11*TrCTdTpTd - 6*AbsYv11*TrCTuTpTu -             & 
&  6*AbsYe11*Trmd2YdadjYd - 6*AbsYe11*Trmq2adjYdYd - 6*AbsYv11*Trmq2adjYuYu -            & 
&  6*AbsYv11*Trmu2YuadjYu - 6*AbsTYe11*TrYdadjYd - 6*AbsYe11*me012*TrYdadjYd -           & 
&  12*AbsYe11*mHd2*TrYdadjYd - 6*AbsYe11*ml012*TrYdadjYd - 6*AbsTYv11*TrYuadjYu -        & 
&  12*AbsYv11*mHu2*TrYuadjYu - 6*AbsYv11*ml012*TrYuadjYu - 6*AbsYv11*mvR012*TrYuadjYu -  & 
&  12*CYe11p2*me012*Ye11p2 - 12*CYe11p2*mHd2*Ye11p2 - 12*CYe11p2*ml012*Ye11p2 -          & 
&  12*CYv11p2*mHu2*Yv11p2 - 12*CYv11p2*ml012*Yv11p2 - 12*CYv11p2*mvR012*Yv11p2 +         & 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*Ql1p2*Conjg(M2) - (12*g1p2*M1*Ye11*Conjg(TYe11))/5._dp -& 
&  4*gpp2*M4*Qe1p2*Ye11*Conjg(TYe11) - 4*gpp2*M4*QHdp2*Ye11*Conjg(TYe11) +               & 
&  4*gpp2*M4*Ql1p2*Ye11*Conjg(TYe11) - 6*TradjYdTd*Ye11*Conjg(TYe11) - 4*gpp2*M4*QHup2*Yv11*Conjg(TYv11) +& 
&  4*gpp2*M4*Ql1p2*Yv11*Conjg(TYv11) - 4*gpp2*M4*Qv1p2*Yv11*Conjg(TYv11) -               & 
&  6*TradjYuTu*Yv11*Conjg(TYv11) + (3*g1p2*Conjg(M1)*(207*g1p2*M1 + 15*g2p2*(2._dp*(M1) +& 
&  M2) - 20*gpp2*(2._dp*(M1) + M4)*Ql1*(3._dp*(Qd) + Qe1 + Qe2 + Qe3 - QHd +             & 
&  QHu - 2._dp*(Ql1) - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 20*Conjg(Ye11)*(2*M1*Ye11 -& 
&  TYe11)))/25._dp - 6*TrCTdTpYd*Conjg(Ye11)*TYe11 - 2*Ye22*Conjg(Ye11)*Conjg(TYe22)*TYe11 -& 
&  2*Ye33*Conjg(Ye11)*Conjg(TYe33)*TYe11 - 2*lam*Conjg(Ye11)*Conjg(Tlam)*TYe11 -         & 
&  2*Ye11*Conjg(Ye22)*Conjg(TYe11)*TYe22 - 2*Ye11*Conjg(Ye33)*Conjg(TYe11)*TYe33 +       & 
&  (4*gpp2*Conjg(M4)*(3*Ql1*(-(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe1 + Qe2 +          & 
&  Qe3 - QHd + QHu - 2._dp*(Ql1) - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu))) +               & 
&  5*Ql1*(g2p2*(2._dp*(M4) + M2) + 2*gpp2*M4*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 +             & 
&  Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 4._dp*(Ql1p2) + 2._dp*(Ql2p2) +               & 
&  2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2))) +      & 
&  5*(Qe1p2 + QHdp2 - Ql1p2)*Conjg(Ye11)*(2*M4*Ye11 - TYe11) + 5*(QHup2 - Ql1p2 +        & 
&  Qv1p2)*Conjg(Yv11)*(2*M4*Yv11 - TYv11)))/5._dp - 6*TrCTuTpYu*Conjg(Yv11)*TYv11  
betaml0122 =  betaml0122- 2*Yv22*Conjg(Yv11)*Conjg(TYv22)*TYv11 - 2*Yv33*Conjg(Yv11)*Conjg(TYv33)*TYv11 -       & 
&  2*lam*Conjg(Yv11)*Conjg(Tlam)*TYv11 - 2*Yv11*Conjg(Yv22)*Conjg(TYv11)*TYv22 -         & 
&  2*Yv11*Conjg(Yv33)*Conjg(TYv11)*TYv33 - 2*Ye11*Conjg(lam)*Conjg(TYe11)*Tlam -         & 
&  2*Yv11*Conjg(lam)*Conjg(TYv11)*Tlam + 6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp -     & 
&  4*g1*gp*Ql1*sqrt3ov5*Tr2U1(1,4) - 4*g1*gp*Ql1*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*Ql1p2*Tr2U1(4,& 
& 4) - 4*g1*sqrt3ov5*Tr3(1) + 8*gp*Ql1*Tr3(4)

 
Dml012 = oo16pi2*( betaml0121 + oo16pi2 * betaml0122 ) 

 
Else 
Dml012 = oo16pi2* betaml0121 
End If 
 
 
!-------------------- 
! ml022 
!-------------------- 
 
betaml0221  = 2._dp*(AbsTmup) + 2._dp*(AbsTYe22) + 2._dp*(AbsTYv22) - (6*AbsM1*g1p2)  & 
& /5._dp - 6*AbsM2*g2p2 + 2*AbsYe22*me022 + 2*AbsYe22*mHd2 + 2*AbsYv22*mHu2 +            & 
&  2*AbsYe22*ml022 + 2*AbsYv22*ml022 + 2*AbsYv22*mvR022 - 8*AbsM4*gpp2*Ql2p2 -           & 
&  g1*sqrt3ov5*Tr1(1) + 2*gp*Ql2*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml0222 = -2*Abslam*AbsTYe22 - 2*Abslam*AbsTYv22 - 2*AbsTYe22*AbsYe11 - 2*AbsTlam*AbsYe22 -     & 
&  2*AbsTYe11*AbsYe22 - 24*AbsTYe22*AbsYe22 - 2*AbsTYe33*AbsYe22 - 2*AbsTYe22*AbsYe33 -  & 
&  2*AbsTYv22*AbsYv11 - 2*AbsTlam*AbsYv22 - 2*AbsTYv11*AbsYv22 - 24*AbsTYv22*AbsYv22 -   & 
&  2*AbsTYv33*AbsYv22 - 2*AbsTYv22*AbsYv33 + (12*AbsTYe22*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +& 
&  33*AbsM2*g2p4 - 2*AbsYe11*AbsYe22*me012 - 2*Abslam*AbsYe22*me022 - 2*AbsYe11*AbsYe22*me022 -& 
&  2*AbsYe22*AbsYe33*me022 + (12*AbsYe22*g1p2*me022)/5._dp - 2*AbsYe22*AbsYe33*me032 -   & 
&  4*Abslam*AbsYe22*mHd2 - 4*AbsYe11*AbsYe22*mHd2 - 4*AbsYe22*AbsYe33*mHd2 -             & 
&  2*Abslam*AbsYv22*mHd2 + (12*AbsYe22*g1p2*mHd2)/5._dp - 2*Abslam*AbsYe22*mHu2 -        & 
&  4*Abslam*AbsYv22*mHu2 - 4*AbsYv11*AbsYv22*mHu2 - 4*AbsYv22*AbsYv33*mHu2 -             & 
&  2*AbsYe11*AbsYe22*ml012 - 2*AbsYv11*AbsYv22*ml012 - 2*Abslam*AbsYe22*ml022 -          & 
&  2*AbsYe11*AbsYe22*ml022 - 2*AbsYe22*AbsYe33*ml022 - 2*Abslam*AbsYv22*ml022 -          & 
&  2*AbsYv11*AbsYv22*ml022 - 2*AbsYv22*AbsYv33*ml022 + (12*AbsYe22*g1p2*ml022)/5._dp -   & 
&  2*AbsYe22*AbsYe33*ml032 - 2*AbsYv22*AbsYv33*ml032 - 2*Abslam*AbsYe22*ms2 -            & 
&  2*Abslam*AbsYv22*ms2 - 2*AbsYv11*AbsYv22*mvR012 - 2*Abslam*AbsYv22*mvR022 -           & 
&  2*AbsYv11*AbsYv22*mvR022 - 2*AbsYv22*AbsYv33*mvR022 - 2*AbsYv22*AbsYv33*mvR032 +      & 
&  4*AbsTYe22*gpp2*Qe2p2 + 4*AbsYe22*gpp2*me022*Qe2p2 + 4*AbsYe22*gpp2*mHd2*Qe2p2 +      & 
&  4*AbsYe22*gpp2*ml022*Qe2p2 + 4*AbsTYe22*gpp2*QHdp2 + 4*AbsYe22*gpp2*me022*QHdp2 +     & 
&  4*AbsYe22*gpp2*mHd2*QHdp2 + 4*AbsYe22*gpp2*ml022*QHdp2 + 4*AbsTYv22*gpp2*QHup2 +      & 
&  4*AbsYv22*gpp2*mHu2*QHup2 + 4*AbsYv22*gpp2*ml022*QHup2 + 4*AbsYv22*gpp2*mvR022*QHup2 -& 
&  4*AbsTYe22*gpp2*Ql2p2 - 4*AbsTYv22*gpp2*Ql2p2 + 24*AbsM2*g2p2*gpp2*Ql2p2 -            & 
&  4*AbsYe22*gpp2*me022*Ql2p2 - 4*AbsYe22*gpp2*mHd2*Ql2p2 - 4*AbsYv22*gpp2*mHu2*Ql2p2  
betaml0222 =  betaml0222- 4*AbsYe22*gpp2*ml022*Ql2p2 - 4*AbsYv22*gpp2*ml022*Ql2p2 - 4*AbsYv22*gpp2*mvR022*Ql2p2 +& 
&  4*AbsTYv22*gpp2*Qv2p2 + 4*AbsYv22*gpp2*mHu2*Qv2p2 + 4*AbsYv22*gpp2*ml022*Qv2p2 +      & 
&  4*AbsYv22*gpp2*mvR022*Qv2p2 - 6*AbsYe22*TrCTdTpTd - 6*AbsYv22*TrCTuTpTu -             & 
&  6*AbsYe22*Trmd2YdadjYd - 6*AbsYe22*Trmq2adjYdYd - 6*AbsYv22*Trmq2adjYuYu -            & 
&  6*AbsYv22*Trmu2YuadjYu - 6*AbsTYe22*TrYdadjYd - 6*AbsYe22*me022*TrYdadjYd -           & 
&  12*AbsYe22*mHd2*TrYdadjYd - 6*AbsYe22*ml022*TrYdadjYd - 6*AbsTYv22*TrYuadjYu -        & 
&  12*AbsYv22*mHu2*TrYuadjYu - 6*AbsYv22*ml022*TrYuadjYu - 6*AbsYv22*mvR022*TrYuadjYu -  & 
&  12*CYe22p2*me022*Ye22p2 - 12*CYe22p2*mHd2*Ye22p2 - 12*CYe22p2*ml022*Ye22p2 -          & 
&  12*CYv22p2*mHu2*Yv22p2 - 12*CYv22p2*ml022*Yv22p2 - 12*CYv22p2*mvR022*Yv22p2 +         & 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*Ql2p2*Conjg(M2) - (12*g1p2*M1*Ye22*Conjg(TYe22))/5._dp -& 
&  4*gpp2*M4*Qe2p2*Ye22*Conjg(TYe22) - 4*gpp2*M4*QHdp2*Ye22*Conjg(TYe22) +               & 
&  4*gpp2*M4*Ql2p2*Ye22*Conjg(TYe22) - 6*TradjYdTd*Ye22*Conjg(TYe22) - 4*gpp2*M4*QHup2*Yv22*Conjg(TYv22) +& 
&  4*gpp2*M4*Ql2p2*Yv22*Conjg(TYv22) - 4*gpp2*M4*Qv2p2*Yv22*Conjg(TYv22) -               & 
&  6*TradjYuTu*Yv22*Conjg(TYv22) - 2*Ye22*Conjg(Ye11)*Conjg(TYe22)*TYe11 +               & 
&  (3*g1p2*Conjg(M1)*(207*g1p2*M1 + 15*g2p2*(2._dp*(M1) + M2) - 20*gpp2*(2._dp*(M1) +    & 
&  M4)*Ql2*(3._dp*(Qd) + Qe1 + Qe2 + Qe3 - QHd + QHu - Ql1 - 2._dp*(Ql2) -               & 
&  Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 20*Conjg(Ye22)*(2*M1*Ye22 - TYe22)))/25._dp -        & 
&  6*TrCTdTpYd*Conjg(Ye22)*TYe22 - 2*Ye11*Conjg(Ye22)*Conjg(TYe11)*TYe22 -               & 
&  2*Ye33*Conjg(Ye22)*Conjg(TYe33)*TYe22 - 2*lam*Conjg(Ye22)*Conjg(Tlam)*TYe22 -         & 
&  2*Ye22*Conjg(Ye33)*Conjg(TYe22)*TYe33 - 2*Yv22*Conjg(Yv11)*Conjg(TYv22)*TYv11 +       & 
&  (4*gpp2*Conjg(M4)*(3*Ql2*(-(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe1 + Qe2 +          & 
&  Qe3 - QHd + QHu - Ql1 - 2._dp*(Ql2) - Ql3 + 3._dp*(Qq) - 6._dp*(Qu))) +               & 
&  5*Ql2*(g2p2*(2._dp*(M4) + M2) + 2*gpp2*M4*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 +             & 
&  Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) + 4._dp*(Ql2p2) +               & 
&  2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2))) +      & 
&  5*(Qe2p2 + QHdp2 - Ql2p2)*Conjg(Ye22)*(2*M4*Ye22 - TYe22) + 5*(QHup2 - Ql2p2 +        & 
&  Qv2p2)*Conjg(Yv22)*(2*M4*Yv22 - TYv22)))/5._dp - 6*TrCTuTpYu*Conjg(Yv22)*TYv22  
betaml0222 =  betaml0222- 2*Yv11*Conjg(Yv22)*Conjg(TYv11)*TYv22 - 2*Yv33*Conjg(Yv22)*Conjg(TYv33)*TYv22 -       & 
&  2*lam*Conjg(Yv22)*Conjg(Tlam)*TYv22 - 2*Yv22*Conjg(Yv33)*Conjg(TYv22)*TYv33 -         & 
&  2*Ye22*Conjg(lam)*Conjg(TYe22)*Tlam - 2*Yv22*Conjg(lam)*Conjg(TYv22)*Tlam +           & 
&  6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp - 4*g1*gp*Ql2*sqrt3ov5*Tr2U1(1,             & 
& 4) - 4*g1*gp*Ql2*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*Ql2p2*Tr2U1(4,4) - 4*g1*sqrt3ov5*Tr3(1) +& 
&  8*gp*Ql2*Tr3(4)

 
Dml022 = oo16pi2*( betaml0221 + oo16pi2 * betaml0222 ) 

 
Else 
Dml022 = oo16pi2* betaml0221 
End If 
 
 
!-------------------- 
! ml032 
!-------------------- 
 
betaml0321  = 2._dp*(AbsTYe33) + 2._dp*(AbsTYv33) - (6*AbsM1*g1p2)/5._dp -            & 
&  6*AbsM2*g2p2 + 2*AbsYe33*me032 + 2*AbsYe33*mHd2 + 2*AbsYv33*mHu2 + 2*AbsYe33*ml032 +  & 
&  2*AbsYv33*ml032 + 2*AbsYv33*mvR032 - 8*AbsM4*gpp2*Ql3p2 - g1*sqrt3ov5*Tr1(1)          & 
&  + 2*gp*Ql3*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betaml0322 = -2*Abslam*AbsTYe33 - 2*Abslam*AbsTYv33 - 2*AbsTYe33*AbsYe11 - 2*AbsTYe33*AbsYe22 -    & 
&  2*AbsTlam*AbsYe33 - 2*AbsTYe11*AbsYe33 - 2*AbsTYe22*AbsYe33 - 24*AbsTYe33*AbsYe33 -   & 
&  2*AbsTYv33*AbsYv11 - 2*AbsTYv33*AbsYv22 - 2*AbsTlam*AbsYv33 - 2*AbsTYv11*AbsYv33 -    & 
&  2*AbsTYv22*AbsYv33 - 24*AbsTYv33*AbsYv33 + (12*AbsTYe33*g1p2)/5._dp + (18*AbsM2*g1p2*g2p2)/5._dp +& 
&  33*AbsM2*g2p4 - 2*AbsYe11*AbsYe33*me012 - 2*AbsYe22*AbsYe33*me022 - 2*Abslam*AbsYe33*me032 -& 
&  2*AbsYe11*AbsYe33*me032 - 2*AbsYe22*AbsYe33*me032 + (12*AbsYe33*g1p2*me032)/5._dp -   & 
&  4*Abslam*AbsYe33*mHd2 - 4*AbsYe11*AbsYe33*mHd2 - 4*AbsYe22*AbsYe33*mHd2 -             & 
&  2*Abslam*AbsYv33*mHd2 + (12*AbsYe33*g1p2*mHd2)/5._dp - 2*Abslam*AbsYe33*mHu2 -        & 
&  4*Abslam*AbsYv33*mHu2 - 4*AbsYv11*AbsYv33*mHu2 - 4*AbsYv22*AbsYv33*mHu2 -             & 
&  2*AbsYe11*AbsYe33*ml012 - 2*AbsYv11*AbsYv33*ml012 - 2*AbsYe22*AbsYe33*ml022 -         & 
&  2*AbsYv22*AbsYv33*ml022 - 2*Abslam*AbsYe33*ml032 - 2*AbsYe11*AbsYe33*ml032 -          & 
&  2*AbsYe22*AbsYe33*ml032 - 2*Abslam*AbsYv33*ml032 - 2*AbsYv11*AbsYv33*ml032 -          & 
&  2*AbsYv22*AbsYv33*ml032 + (12*AbsYe33*g1p2*ml032)/5._dp - 2*Abslam*AbsYe33*ms2 -      & 
&  2*Abslam*AbsYv33*ms2 - 2*AbsYv11*AbsYv33*mvR012 - 2*AbsYv22*AbsYv33*mvR022 -          & 
&  2*Abslam*AbsYv33*mvR032 - 2*AbsYv11*AbsYv33*mvR032 - 2*AbsYv22*AbsYv33*mvR032 +       & 
&  4*AbsTYe33*gpp2*Qe3p2 + 4*AbsYe33*gpp2*me032*Qe3p2 + 4*AbsYe33*gpp2*mHd2*Qe3p2 +      & 
&  4*AbsYe33*gpp2*ml032*Qe3p2 + 4*AbsTYe33*gpp2*QHdp2 + 4*AbsYe33*gpp2*me032*QHdp2 +     & 
&  4*AbsYe33*gpp2*mHd2*QHdp2 + 4*AbsYe33*gpp2*ml032*QHdp2 + 4*AbsTYv33*gpp2*QHup2 +      & 
&  4*AbsYv33*gpp2*mHu2*QHup2 + 4*AbsYv33*gpp2*ml032*QHup2 + 4*AbsYv33*gpp2*mvR032*QHup2 -& 
&  4*AbsTYe33*gpp2*Ql3p2 - 4*AbsTYv33*gpp2*Ql3p2 + 24*AbsM2*g2p2*gpp2*Ql3p2 -            & 
&  4*AbsYe33*gpp2*me032*Ql3p2 - 4*AbsYe33*gpp2*mHd2*Ql3p2 - 4*AbsYv33*gpp2*mHu2*Ql3p2  
betaml0322 =  betaml0322- 4*AbsYe33*gpp2*ml032*Ql3p2 - 4*AbsYv33*gpp2*ml032*Ql3p2 - 4*AbsYv33*gpp2*mvR032*Ql3p2 +& 
&  4*AbsTYv33*gpp2*Qv3p2 + 4*AbsYv33*gpp2*mHu2*Qv3p2 + 4*AbsYv33*gpp2*ml032*Qv3p2 +      & 
&  4*AbsYv33*gpp2*mvR032*Qv3p2 - 6*AbsYe33*TrCTdTpTd - 6*AbsYv33*TrCTuTpTu -             & 
&  6*AbsYe33*Trmd2YdadjYd - 6*AbsYe33*Trmq2adjYdYd - 6*AbsYv33*Trmq2adjYuYu -            & 
&  6*AbsYv33*Trmu2YuadjYu - 6*AbsTYe33*TrYdadjYd - 6*AbsYe33*me032*TrYdadjYd -           & 
&  12*AbsYe33*mHd2*TrYdadjYd - 6*AbsYe33*ml032*TrYdadjYd - 6*AbsTYv33*TrYuadjYu -        & 
&  12*AbsYv33*mHu2*TrYuadjYu - 6*AbsYv33*ml032*TrYuadjYu - 6*AbsYv33*mvR032*TrYuadjYu -  & 
&  12*CYe33p2*me032*Ye33p2 - 12*CYe33p2*mHd2*Ye33p2 - 12*CYe33p2*ml032*Ye33p2 -          & 
&  12*CYv33p2*mHu2*Yv33p2 - 12*CYv33p2*ml032*Yv33p2 - 12*CYv33p2*mvR032*Yv33p2 +         & 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*Ql3p2*Conjg(M2) - (12*g1p2*M1*Ye33*Conjg(TYe33))/5._dp -& 
&  4*gpp2*M4*Qe3p2*Ye33*Conjg(TYe33) - 4*gpp2*M4*QHdp2*Ye33*Conjg(TYe33) +               & 
&  4*gpp2*M4*Ql3p2*Ye33*Conjg(TYe33) - 6*TradjYdTd*Ye33*Conjg(TYe33) - 4*gpp2*M4*QHup2*Yv33*Conjg(TYv33) +& 
&  4*gpp2*M4*Ql3p2*Yv33*Conjg(TYv33) - 4*gpp2*M4*Qv3p2*Yv33*Conjg(TYv33) -               & 
&  6*TradjYuTu*Yv33*Conjg(TYv33) - 2*Ye33*Conjg(Ye11)*Conjg(TYe33)*TYe11 -               & 
&  2*Ye33*Conjg(Ye22)*Conjg(TYe33)*TYe22 + (3*g1p2*Conjg(M1)*(207*g1p2*M1 +              & 
&  15*g2p2*(2._dp*(M1) + M2) - 20*gpp2*(2._dp*(M1) + M4)*Ql3*(3._dp*(Qd) +               & 
&  Qe1 + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 - 2._dp*(Ql3) + 3._dp*(Qq) - 6._dp*(Qu)) +    & 
&  20*Conjg(Ye33)*(2*M1*Ye33 - TYe33)))/25._dp - 6*TrCTdTpYd*Conjg(Ye33)*TYe33 -         & 
&  2*Ye11*Conjg(Ye33)*Conjg(TYe11)*TYe33 - 2*Ye22*Conjg(Ye33)*Conjg(TYe22)*TYe33 -       & 
&  2*lam*Conjg(Ye33)*Conjg(Tlam)*TYe33 - 2*Yv33*Conjg(Yv11)*Conjg(TYv33)*TYv11 -         & 
&  2*Yv33*Conjg(Yv22)*Conjg(TYv33)*TYv22 + (4*gpp2*Conjg(M4)*(3*Ql3*(-(g1p2*(M1 +        & 
&  2._dp*(M4))*(3._dp*(Qd) + Qe1 + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 - 2._dp*(Ql3) +     & 
&  3._dp*(Qq) - 6._dp*(Qu))) + 5*Ql3*(g2p2*(2._dp*(M4) + M2) + 2*gpp2*M4*(9._dp*(Qdp2) + & 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 4._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 +         & 
&  Qv2p2 + Qv3p2))) + 5*(Qe3p2 + QHdp2 - Ql3p2)*Conjg(Ye33)*(2*M4*Ye33 - TYe33) +        & 
&  5*(QHup2 - Ql3p2 + Qv3p2)*Conjg(Yv33)*(2*M4*Yv33 - TYv33)))/5._dp - 6*TrCTuTpYu*Conjg(Yv33)*TYv33  
betaml0322 =  betaml0322- 2*Yv11*Conjg(Yv33)*Conjg(TYv11)*TYv33 - 2*Yv22*Conjg(Yv33)*Conjg(TYv22)*TYv33 -       & 
&  2*lam*Conjg(Yv33)*Conjg(Tlam)*TYv33 - 2*Ye33*Conjg(lam)*Conjg(TYe33)*Tlam -           & 
&  2*Yv33*Conjg(lam)*Conjg(TYv33)*Tlam + 6*g2p4*Tr2(2) + (6*g1p2*Tr2U1(1,1))/5._dp -     & 
&  4*g1*gp*Ql3*sqrt3ov5*Tr2U1(1,4) - 4*g1*gp*Ql3*sqrt3ov5*Tr2U1(4,1) + 8*gpp2*Ql3p2*Tr2U1(4,& 
& 4) - 4*g1*sqrt3ov5*Tr3(1) + 8*gp*Ql3*Tr3(4)

 
Dml032 = oo16pi2*( betaml0321 + oo16pi2 * betaml0322 ) 

 
Else 
Dml032 = oo16pi2* betaml0321 
End If 
 
 
!-------------------- 
! mHd2 
!-------------------- 
 
betamHd21  = 2._dp*(AbsTlam) + 2._dp*(AbsTYe11) + 2._dp*(AbsTYe22) + 2._dp*(AbsTYe33) & 
&  - (6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 + 2*AbsYe11*me012 + 2*AbsYe22*me022 +           & 
&  2*AbsYe33*me032 + 2*Abslam*mHd2 + 2*AbsYe11*mHd2 + 2*AbsYe22*mHd2 + 2*AbsYe33*mHd2 +  & 
&  2*Abslam*mHu2 + 2*AbsYe11*ml012 + 2*AbsYe22*ml022 + 2*AbsYe33*ml032 + 2*Abslam*ms2 -  & 
&  8*AbsM4*gpp2*QHdp2 + 6._dp*(TrCTdTpTd) + 6._dp*(Trmd2YdadjYd) + 6._dp*(Trmq2adjYdYd)  & 
&  + 6*mHd2*TrYdadjYd - g1*sqrt3ov5*Tr1(1) + 2*gp*QHd*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamHd22 = -24*Abslam*AbsTlam - 2*Abslam*AbsTYv11 - 2*Abslam*AbsTYv22 - 2*Abslam*AbsTYv33 -      & 
&  24*AbsTYe11*AbsYe11 - 2*AbsTYv11*AbsYe11 - 24*AbsTYe22*AbsYe22 - 2*AbsTYv22*AbsYe22 - & 
&  24*AbsTYe33*AbsYe33 - 2*AbsTYv33*AbsYe33 - 2*AbsTlam*AbsYv11 - 2*AbsTYe11*AbsYv11 -   & 
&  2*AbsTlam*AbsYv22 - 2*AbsTYe22*AbsYv22 - 2*AbsTlam*AbsYv33 - 2*AbsTYe33*AbsYv33 +     & 
&  (12*AbsTYe11*g1p2)/5._dp + (12*AbsTYe22*g1p2)/5._dp + (12*AbsTYe33*g1p2)/5._dp +      & 
&  (18*AbsM2*g1p2*g2p2)/5._dp + 33*AbsM2*g2p4 - 2*AbsYe11*AbsYv11*me012 + (12*AbsYe11*g1p2*me012)/5._dp -& 
&  2*AbsYe22*AbsYv22*me022 + (12*AbsYe22*g1p2*me022)/5._dp - 2*AbsYe33*AbsYv33*me032 +   & 
&  (12*AbsYe33*g1p2*me032)/5._dp - 2*Abslam*AbsYv11*mHd2 - 2*AbsYe11*AbsYv11*mHd2 -      & 
&  2*Abslam*AbsYv22*mHd2 - 2*AbsYe22*AbsYv22*mHd2 - 2*Abslam*AbsYv33*mHd2 -              & 
&  2*AbsYe33*AbsYv33*mHd2 + (12*AbsYe11*g1p2*mHd2)/5._dp + (12*AbsYe22*g1p2*mHd2)/5._dp +& 
&  (12*AbsYe33*g1p2*mHd2)/5._dp - 12*Clamp2*lamp2*mHd2 - 4*Abslam*AbsYv11*mHu2 -         & 
&  2*AbsYe11*AbsYv11*mHu2 - 4*Abslam*AbsYv22*mHu2 - 2*AbsYe22*AbsYv22*mHu2 -             & 
&  4*Abslam*AbsYv33*mHu2 - 2*AbsYe33*AbsYv33*mHu2 - 12*Clamp2*lamp2*mHu2 -               & 
&  2*Abslam*AbsYv11*ml012 - 4*AbsYe11*AbsYv11*ml012 + (12*AbsYe11*g1p2*ml012)/5._dp -    & 
&  2*Abslam*AbsYv22*ml022 - 4*AbsYe22*AbsYv22*ml022 + (12*AbsYe22*g1p2*ml022)/5._dp -    & 
&  2*Abslam*AbsYv33*ml032 - 4*AbsYe33*AbsYv33*ml032 + (12*AbsYe33*g1p2*ml032)/5._dp -    & 
&  2*Abslam*AbsYv11*ms2 - 2*Abslam*AbsYv22*ms2 - 2*Abslam*AbsYv33*ms2 - 12*Clamp2*lamp2*ms2 -& 
&  2*Abslam*AbsYv11*mvR012 - 2*AbsYe11*AbsYv11*mvR012 - 2*Abslam*AbsYv22*mvR022 -        & 
&  2*AbsYe22*AbsYv22*mvR022 - 2*Abslam*AbsYv33*mvR032 - 2*AbsYe33*AbsYv33*mvR032 +       & 
&  4*AbsTYe11*gpp2*Qe1p2 + 4*AbsYe11*gpp2*me012*Qe1p2 + 4*AbsYe11*gpp2*mHd2*Qe1p2 +      & 
&  4*AbsYe11*gpp2*ml012*Qe1p2 + 4*AbsTYe22*gpp2*Qe2p2 + 4*AbsYe22*gpp2*me022*Qe2p2  
betamHd22 =  betamHd22+ 4*AbsYe22*gpp2*mHd2*Qe2p2 + 4*AbsYe22*gpp2*ml022*Qe2p2 + 4*AbsTYe33*gpp2*Qe3p2 +      & 
&  4*AbsYe33*gpp2*me032*Qe3p2 + 4*AbsYe33*gpp2*mHd2*Qe3p2 + 4*AbsYe33*gpp2*ml032*Qe3p2 - & 
&  4*AbsTlam*gpp2*QHdp2 - 4*AbsTYe11*gpp2*QHdp2 - 4*AbsTYe22*gpp2*QHdp2 - 4*AbsTYe33*gpp2*QHdp2 +& 
&  24*AbsM2*g2p2*gpp2*QHdp2 - 4*AbsYe11*gpp2*me012*QHdp2 - 4*AbsYe22*gpp2*me022*QHdp2 -  & 
&  4*AbsYe33*gpp2*me032*QHdp2 - 4*Abslam*gpp2*mHd2*QHdp2 - 4*AbsYe11*gpp2*mHd2*QHdp2 -   & 
&  4*AbsYe22*gpp2*mHd2*QHdp2 - 4*AbsYe33*gpp2*mHd2*QHdp2 - 4*Abslam*gpp2*mHu2*QHdp2 -    & 
&  4*AbsYe11*gpp2*ml012*QHdp2 - 4*AbsYe22*gpp2*ml022*QHdp2 - 4*AbsYe33*gpp2*ml032*QHdp2 -& 
&  4*Abslam*gpp2*ms2*QHdp2 + 4*AbsTlam*gpp2*QHup2 + 4*Abslam*gpp2*mHd2*QHup2 +           & 
&  4*Abslam*gpp2*mHu2*QHup2 + 4*Abslam*gpp2*ms2*QHup2 + 4*AbsTYe11*gpp2*Ql1p2 +          & 
&  4*AbsYe11*gpp2*me012*Ql1p2 + 4*AbsYe11*gpp2*mHd2*Ql1p2 + 4*AbsYe11*gpp2*ml012*Ql1p2 + & 
&  4*AbsTYe22*gpp2*Ql2p2 + 4*AbsYe22*gpp2*me022*Ql2p2 + 4*AbsYe22*gpp2*mHd2*Ql2p2 +      & 
&  4*AbsYe22*gpp2*ml022*Ql2p2 + 4*AbsTYe33*gpp2*Ql3p2 + 4*AbsYe33*gpp2*me032*Ql3p2 +     & 
&  4*AbsYe33*gpp2*mHd2*Ql3p2 + 4*AbsYe33*gpp2*ml032*Ql3p2 + 4*AbsTlam*gpp2*Qsp2 +        & 
&  4*Abslam*gpp2*mHd2*Qsp2 + 4*Abslam*gpp2*mHu2*Qsp2 + 4*Abslam*gpp2*ms2*Qsp2 -          & 
&  (4*g1p2*TrCTdTpTd)/5._dp + 32*g3p2*TrCTdTpTd + 12*gpp2*Qdp2*TrCTdTpTd -               & 
&  12*gpp2*QHdp2*TrCTdTpTd + 12*gpp2*Qqp2*TrCTdTpTd + (4*g1p2*M1*TrCTdTpYd)/5._dp -      & 
&  32*g3p2*M3*TrCTdTpYd - 12*gpp2*M4*Qdp2*TrCTdTpYd + 12*gpp2*M4*QHdp2*TrCTdTpYd -       & 
&  12*gpp2*M4*Qqp2*TrCTdTpYd - 6*Abslam*TrCTuTpTu - (4*g1p2*Trmd2YdadjYd)/5._dp +        & 
&  32*g3p2*Trmd2YdadjYd + 12*gpp2*Qdp2*Trmd2YdadjYd - 12*gpp2*QHdp2*Trmd2YdadjYd +       & 
&  12*gpp2*Qqp2*Trmd2YdadjYd - 36._dp*(Trmd2YdadjYdYdadjYd) - 6._dp*(Trmd2YdadjYuYuadjYd) -& 
&  (4*g1p2*Trmq2adjYdYd)/5._dp + 32*g3p2*Trmq2adjYdYd + 12*gpp2*Qdp2*Trmq2adjYdYd  
betamHd22 =  betamHd22- 12*gpp2*QHdp2*Trmq2adjYdYd + 12*gpp2*Qqp2*Trmq2adjYdYd - 36._dp*(Trmq2adjYdYdadjYdYd) -& 
&  6._dp*(Trmq2adjYdYdadjYuYu) - 6*Abslam*Trmq2adjYuYu - 6._dp*(Trmq2adjYuYuadjYdYd) -   & 
&  6._dp*(Trmu2YuadjYdYdadjYu) - 6*Abslam*Trmu2YuadjYu - 36._dp*(TrYdadjTdTdadjYd) -     & 
&  6._dp*(TrYdadjTuTuadjYd) + 64*AbsM3*g3p2*TrYdadjYd - (4*g1p2*mHd2*TrYdadjYd)/5._dp +  & 
&  32*g3p2*mHd2*TrYdadjYd + 12*gpp2*mHd2*Qdp2*TrYdadjYd - 12*gpp2*mHd2*QHdp2*TrYdadjYd + & 
&  12*gpp2*mHd2*Qqp2*TrYdadjYd - 36._dp*(TrYdadjYdTdadjTd) - 36*mHd2*TrYdadjYdYdadjYd -  & 
&  6._dp*(TrYdadjYuTuadjTd) - 6*mHd2*TrYdadjYuYuadjYd - 6*mHu2*TrYdadjYuYuadjYd -        & 
&  6._dp*(TrYuadjTdTdadjYu) - 6._dp*(TrYuadjYdTdadjTu) - 6*AbsTlam*TrYuadjYu -           & 
&  6*Abslam*mHd2*TrYuadjYu - 12*Abslam*mHu2*TrYuadjYu - 6*Abslam*ms2*TrYuadjYu -         & 
&  12*CYe11p2*me012*Ye11p2 - 12*CYe11p2*mHd2*Ye11p2 - 12*CYe11p2*ml012*Ye11p2 -          & 
&  12*CYe22p2*me022*Ye22p2 - 12*CYe22p2*mHd2*Ye22p2 - 12*CYe22p2*ml022*Ye22p2 -          & 
&  12*CYe33p2*me032*Ye33p2 - 12*CYe33p2*mHd2*Ye33p2 - 12*CYe33p2*ml032*Ye33p2 -          & 
&  32*g3p2*TradjYdTd*Conjg(M3) + (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*QHdp2*Conjg(M2) -& 
&  (12*g1p2*M1*Ye11*Conjg(TYe11))/5._dp - 4*gpp2*M4*Qe1p2*Ye11*Conjg(TYe11) +            & 
&  4*gpp2*M4*QHdp2*Ye11*Conjg(TYe11) - 4*gpp2*M4*Ql1p2*Ye11*Conjg(TYe11) -               & 
&  (12*g1p2*M1*Ye22*Conjg(TYe22))/5._dp - 4*gpp2*M4*Qe2p2*Ye22*Conjg(TYe22) +            & 
&  4*gpp2*M4*QHdp2*Ye22*Conjg(TYe22) - 4*gpp2*M4*Ql2p2*Ye22*Conjg(TYe22) -               & 
&  (12*g1p2*M1*Ye33*Conjg(TYe33))/5._dp - 4*gpp2*M4*Qe3p2*Ye33*Conjg(TYe33) +            & 
&  4*gpp2*M4*QHdp2*Ye33*Conjg(TYe33) - 4*gpp2*M4*Ql3p2*Ye33*Conjg(TYe33) +               & 
&  4*gpp2*M4*QHdp2*lam*Conjg(Tlam) - 4*gpp2*M4*QHup2*lam*Conjg(Tlam) - 4*gpp2*M4*Qsp2*lam*Conjg(Tlam) -& 
&  6*TradjYuTu*lam*Conjg(Tlam) - 2*Yv11*Conjg(Ye11)*Conjg(TYv11)*TYe11 - 2*Yv22*Conjg(Ye22)*Conjg(TYv22)*TYe22  
betamHd22 =  betamHd22- 2*Yv33*Conjg(Ye33)*Conjg(TYv33)*TYe33 + (g1p2*Conjg(M1)*(120*AbsYe33*M1 +             & 
&  621*g1p2*M1 + 90*g2p2*M1 + 45*g2p2*M2 - 360*gpp2*M1*Qd*QHd - 180*gpp2*M4*Qd*QHd -     & 
&  120*gpp2*M1*Qe1*QHd - 60*gpp2*M4*Qe1*QHd - 120*gpp2*M1*Qe2*QHd - 60*gpp2*M4*Qe2*QHd - & 
&  120*gpp2*M1*Qe3*QHd - 60*gpp2*M4*Qe3*QHd + 240*gpp2*M1*QHdp2 + 120*gpp2*M4*QHdp2 -    & 
&  120*gpp2*M1*QHd*QHu - 60*gpp2*M4*QHd*QHu + 120*gpp2*M1*QHd*Ql1 + 60*gpp2*M4*QHd*Ql1 + & 
&  120*gpp2*M1*QHd*Ql2 + 60*gpp2*M4*QHd*Ql2 + 120*gpp2*M1*QHd*Ql3 + 60*gpp2*M4*QHd*Ql3 - & 
&  360*gpp2*M1*QHd*Qq - 180*gpp2*M4*QHd*Qq + 720*gpp2*M1*QHd*Qu + 360*gpp2*M4*QHd*Qu +   & 
&  20._dp*(TradjYdTd) - 40*M1*TrYdadjYd + 60*Conjg(Ye11)*(2*M1*Ye11 - TYe11) +           & 
&  60*Conjg(Ye22)*(2*M1*Ye22 - TYe22) - 60*Conjg(Ye33)*TYe33))/25._dp - 2*Ye11*Conjg(Yv11)*Conjg(TYe11)*TYv11 -& 
&  2*lam*Conjg(Yv11)*Conjg(Tlam)*TYv11 - 2*Ye22*Conjg(Yv22)*Conjg(TYe22)*TYv22 -         & 
&  2*lam*Conjg(Yv22)*Conjg(Tlam)*TYv22 - 2*Ye33*Conjg(Yv33)*Conjg(TYe33)*TYv33 -         & 
&  2*lam*Conjg(Yv33)*Conjg(Tlam)*TYv33 - 6*TrCTuTpYu*Conjg(lam)*Tlam - 2*Yv11*Conjg(lam)*Conjg(TYv11)*Tlam -& 
&  2*Yv22*Conjg(lam)*Conjg(TYv22)*Tlam - 2*Yv33*Conjg(lam)*Conjg(TYv33)*Tlam +           & 
&  (4*gpp2*Conjg(M4)*(10*AbsYe33*M4*Qe3p2 - 9*g1p2*M1*Qd*QHd - 18*g1p2*M4*Qd*QHd -       & 
&  3*g1p2*M1*Qe1*QHd - 6*g1p2*M4*Qe1*QHd - 3*g1p2*M1*Qe2*QHd - 6*g1p2*M4*Qe2*QHd -       & 
&  3*g1p2*M1*Qe3*QHd - 6*g1p2*M4*Qe3*QHd + 6*g1p2*M1*QHdp2 - 10*Abslam*M4*QHdp2 -        & 
&  10*AbsYe33*M4*QHdp2 + 12*g1p2*M4*QHdp2 + 30*g2p2*M4*QHdp2 + 15*g2p2*M2*QHdp2 +        & 
&  270*gpp2*M4*Qdp2*QHdp2 + 30*gpp2*M4*Qe1p2*QHdp2 + 30*gpp2*M4*Qe2p2*QHdp2 +            & 
&  30*gpp2*M4*Qe3p2*QHdp2 + 120*gpp2*M4*QHdp4 - 3*g1p2*M1*QHd*QHu - 6*g1p2*M4*QHd*QHu +  & 
&  10*Abslam*M4*QHup2 + 60*gpp2*M4*QHdp2*QHup2 + 3*g1p2*M1*QHd*Ql1 + 6*g1p2*M4*QHd*Ql1 + & 
&  60*gpp2*M4*QHdp2*Ql1p2 + 3*g1p2*M1*QHd*Ql2 + 6*g1p2*M4*QHd*Ql2 + 60*gpp2*M4*QHdp2*Ql2p2 +& 
&  3*g1p2*M1*QHd*Ql3 + 6*g1p2*M4*QHd*Ql3 + 10*AbsYe33*M4*Ql3p2 + 60*gpp2*M4*QHdp2*Ql3p2 -& 
&  9*g1p2*M1*QHd*Qq - 18*g1p2*M4*QHd*Qq + 540*gpp2*M4*QHdp2*Qqp2 + 10*Abslam*M4*Qsp2 +   & 
&  30*gpp2*M4*QHdp2*Qsp2 + 18*g1p2*M1*QHd*Qu + 36*g1p2*M4*QHd*Qu + 270*gpp2*M4*QHdp2*Qup2 +& 
&  30*gpp2*M4*QHdp2*Qv1p2 + 30*gpp2*M4*QHdp2*Qv2p2 + 30*gpp2*M4*QHdp2*Qv3p2 -            & 
&  15*Qdp2*TradjYdTd + 15*QHdp2*TradjYdTd - 15*Qqp2*TradjYdTd + 30*M4*Qdp2*TrYdadjYd -   & 
&  30*M4*QHdp2*TrYdadjYd + 30*M4*Qqp2*TrYdadjYd + 5*(Qe1p2 - QHdp2 + Ql1p2)*Conjg(Ye11)*(2*M4*Ye11 -& 
&  TYe11) + 5*(Qe2p2 - QHdp2 + Ql2p2)*Conjg(Ye22)*(2*M4*Ye22 - TYe22) - 5*Qe3p2*Conjg(Ye33)*TYe33 +& 
&  5*QHdp2*Conjg(Ye33)*TYe33 - 5*Ql3p2*Conjg(Ye33)*TYe33 + 5*QHdp2*Conjg(lam)*Tlam -     & 
&  5*QHup2*Conjg(lam)*Tlam - 5*Qsp2*Conjg(lam)*Tlam))/5._dp + 6*g2p4*Tr2(2)  
betamHd22 =  betamHd22+ (6*g1p2*Tr2U1(1,1))/5._dp - 4*g1*gp*QHd*sqrt3ov5*Tr2U1(1,4) - 4*g1*gp*QHd*sqrt3ov5*Tr2U1(4,& 
& 1) + 8*gpp2*QHdp2*Tr2U1(4,4) - 4*g1*sqrt3ov5*Tr3(1) + 8*gp*QHd*Tr3(4)

 
DmHd2 = oo16pi2*( betamHd21 + oo16pi2 * betamHd22 ) 

 
Else 
DmHd2 = oo16pi2* betamHd21 
End If 
 
 
!-------------------- 
! mHu2 
!-------------------- 
 
betamHu21  = 2._dp*(AbsTep) + 2._dp*(AbsTlam) + 2._dp*(AbsTmup) + 2._dp*(AbsTYv11)    & 
&  + 2._dp*(AbsTYv22) + 2._dp*(AbsTYv33) - (6*AbsM1*g1p2)/5._dp - 6*AbsM2*g2p2 +         & 
&  2*Abslam*mHd2 + 2*Abslam*mHu2 + 2*AbsYv11*mHu2 + 2*AbsYv22*mHu2 + 2*AbsYv33*mHu2 +    & 
&  2*AbsYv11*ml012 + 2*AbsYv22*ml022 + 2*AbsYv33*ml032 + 2*Abslam*ms2 + 2*AbsYv11*mvR012 +& 
&  2*AbsYv22*mvR022 + 2*AbsYv33*mvR032 - 8*AbsM4*gpp2*QHup2 + 6._dp*(TrCTuTpTu)          & 
&  + 6._dp*(Trmq2adjYuYu) + 6._dp*(Trmu2YuadjYu) + 6*mHu2*TrYuadjYu + g1*sqrt3ov5*Tr1(1) & 
&  + 2*gp*QHu*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamHu22 = -24*Abslam*AbsTlam - 2*Abslam*AbsTYe11 - 2*Abslam*AbsTYe22 - 2*Abslam*AbsTYe33 -      & 
&  2*AbsTlam*AbsYe11 - 2*AbsTYv11*AbsYe11 - 2*AbsTlam*AbsYe22 - 2*AbsTYv22*AbsYe22 -     & 
&  2*AbsTlam*AbsYe33 - 2*AbsTYv33*AbsYe33 - 2*AbsTYe11*AbsYv11 - 24*AbsTYv11*AbsYv11 -   & 
&  2*AbsTYe22*AbsYv22 - 24*AbsTYv22*AbsYv22 - 2*AbsTYe33*AbsYv33 - 24*AbsTYv33*AbsYv33 + & 
&  (18*AbsM2*g1p2*g2p2)/5._dp + 33*AbsM2*g2p4 - 2*Abslam*AbsYe11*me012 - 2*AbsYe11*AbsYv11*me012 -& 
&  2*Abslam*AbsYe22*me022 - 2*AbsYe22*AbsYv22*me022 - 2*Abslam*AbsYe33*me032 -           & 
&  2*AbsYe33*AbsYv33*me032 - 4*Abslam*AbsYe11*mHd2 - 4*Abslam*AbsYe22*mHd2 -             & 
&  4*Abslam*AbsYe33*mHd2 - 2*AbsYe11*AbsYv11*mHd2 - 2*AbsYe22*AbsYv22*mHd2 -             & 
&  2*AbsYe33*AbsYv33*mHd2 - 12*Clamp2*lamp2*mHd2 - 2*Abslam*AbsYe11*mHu2 -               & 
&  2*Abslam*AbsYe22*mHu2 - 2*Abslam*AbsYe33*mHu2 - 2*AbsYe11*AbsYv11*mHu2 -              & 
&  2*AbsYe22*AbsYv22*mHu2 - 2*AbsYe33*AbsYv33*mHu2 - 12*Clamp2*lamp2*mHu2 -              & 
&  2*Abslam*AbsYe11*ml012 - 4*AbsYe11*AbsYv11*ml012 - 2*Abslam*AbsYe22*ml022 -           & 
&  4*AbsYe22*AbsYv22*ml022 - 2*Abslam*AbsYe33*ml032 - 4*AbsYe33*AbsYv33*ml032 -          & 
&  2*Abslam*AbsYe11*ms2 - 2*Abslam*AbsYe22*ms2 - 2*Abslam*AbsYe33*ms2 - 12*Clamp2*lamp2*ms2 -& 
&  2*AbsYe11*AbsYv11*mvR012 - 2*AbsYe22*AbsYv22*mvR022 - 2*AbsYe33*AbsYv33*mvR032 +      & 
&  4*AbsTlam*gpp2*QHdp2 + 4*Abslam*gpp2*mHd2*QHdp2 + 4*Abslam*gpp2*mHu2*QHdp2 +          & 
&  4*Abslam*gpp2*ms2*QHdp2 - 4*AbsTlam*gpp2*QHup2 - 4*AbsTYv11*gpp2*QHup2 -              & 
&  4*AbsTYv22*gpp2*QHup2 - 4*AbsTYv33*gpp2*QHup2 + 24*AbsM2*g2p2*gpp2*QHup2 -            & 
&  4*Abslam*gpp2*mHd2*QHup2 - 4*Abslam*gpp2*mHu2*QHup2 - 4*AbsYv11*gpp2*mHu2*QHup2 -     & 
&  4*AbsYv22*gpp2*mHu2*QHup2 - 4*AbsYv33*gpp2*mHu2*QHup2 - 4*AbsYv11*gpp2*ml012*QHup2 -  & 
&  4*AbsYv22*gpp2*ml022*QHup2 - 4*AbsYv33*gpp2*ml032*QHup2 - 4*Abslam*gpp2*ms2*QHup2  
betamHu22 =  betamHu22- 4*AbsYv11*gpp2*mvR012*QHup2 - 4*AbsYv22*gpp2*mvR022*QHup2 - 4*AbsYv33*gpp2*mvR032*QHup2 +& 
&  4*AbsTYv11*gpp2*Ql1p2 + 4*AbsYv11*gpp2*mHu2*Ql1p2 + 4*AbsYv11*gpp2*ml012*Ql1p2 +      & 
&  4*AbsYv11*gpp2*mvR012*Ql1p2 + 4*AbsTYv22*gpp2*Ql2p2 + 4*AbsYv22*gpp2*mHu2*Ql2p2 +     & 
&  4*AbsYv22*gpp2*ml022*Ql2p2 + 4*AbsYv22*gpp2*mvR022*Ql2p2 + 4*AbsTYv33*gpp2*Ql3p2 +    & 
&  4*AbsYv33*gpp2*mHu2*Ql3p2 + 4*AbsYv33*gpp2*ml032*Ql3p2 + 4*AbsYv33*gpp2*mvR032*Ql3p2 +& 
&  4*AbsTlam*gpp2*Qsp2 + 4*Abslam*gpp2*mHd2*Qsp2 + 4*Abslam*gpp2*mHu2*Qsp2 +             & 
&  4*Abslam*gpp2*ms2*Qsp2 + 4*AbsTYv11*gpp2*Qv1p2 + 4*AbsYv11*gpp2*mHu2*Qv1p2 +          & 
&  4*AbsYv11*gpp2*ml012*Qv1p2 + 4*AbsYv11*gpp2*mvR012*Qv1p2 + 4*AbsTYv22*gpp2*Qv2p2 +    & 
&  4*AbsYv22*gpp2*mHu2*Qv2p2 + 4*AbsYv22*gpp2*ml022*Qv2p2 + 4*AbsYv22*gpp2*mvR022*Qv2p2 +& 
&  4*AbsTYv33*gpp2*Qv3p2 + 4*AbsYv33*gpp2*mHu2*Qv3p2 + 4*AbsYv33*gpp2*ml032*Qv3p2 +      & 
&  4*AbsYv33*gpp2*mvR032*Qv3p2 - 6*Abslam*TrCTdTpTd + (8*g1p2*TrCTuTpTu)/5._dp +         & 
&  32*g3p2*TrCTuTpTu - 12*gpp2*QHup2*TrCTuTpTu + 12*gpp2*Qqp2*TrCTuTpTu + 12*gpp2*Qup2*TrCTuTpTu -& 
&  (8*g1p2*M1*TrCTuTpYu)/5._dp - 32*g3p2*M3*TrCTuTpYu + 12*gpp2*M4*QHup2*TrCTuTpYu -     & 
&  12*gpp2*M4*Qqp2*TrCTuTpYu - 12*gpp2*M4*Qup2*TrCTuTpYu - 6*Abslam*Trmd2YdadjYd -       & 
&  6._dp*(Trmd2YdadjYuYuadjYd) - 6*Abslam*Trmq2adjYdYd - 6._dp*(Trmq2adjYdYdadjYuYu) +   & 
&  (8*g1p2*Trmq2adjYuYu)/5._dp + 32*g3p2*Trmq2adjYuYu - 12*gpp2*QHup2*Trmq2adjYuYu +     & 
&  12*gpp2*Qqp2*Trmq2adjYuYu + 12*gpp2*Qup2*Trmq2adjYuYu - 6._dp*(Trmq2adjYuYuadjYdYd) - & 
&  36._dp*(Trmq2adjYuYuadjYuYu) - 6._dp*(Trmu2YuadjYdYdadjYu) + (8*g1p2*Trmu2YuadjYu)/5._dp +& 
&  32*g3p2*Trmu2YuadjYu - 12*gpp2*QHup2*Trmu2YuadjYu + 12*gpp2*Qqp2*Trmu2YuadjYu +       & 
&  12*gpp2*Qup2*Trmu2YuadjYu - 36._dp*(Trmu2YuadjYuYuadjYu) - 6._dp*(TrYdadjTuTuadjYd) - & 
&  6*AbsTlam*TrYdadjYd - 12*Abslam*mHd2*TrYdadjYd - 6*Abslam*mHu2*TrYdadjYd  
betamHu22 =  betamHu22- 6*Abslam*ms2*TrYdadjYd - 6._dp*(TrYdadjYuTuadjTd) - 6*mHd2*TrYdadjYuYuadjYd -         & 
&  6*mHu2*TrYdadjYuYuadjYd - 6._dp*(TrYuadjTdTdadjYu) - 36._dp*(TrYuadjTuTuadjYu) -      & 
&  6._dp*(TrYuadjYdTdadjTu) + 64*AbsM3*g3p2*TrYuadjYu + (8*g1p2*mHu2*TrYuadjYu)/5._dp +  & 
&  32*g3p2*mHu2*TrYuadjYu - 12*gpp2*mHu2*QHup2*TrYuadjYu + 12*gpp2*mHu2*Qqp2*TrYuadjYu + & 
&  12*gpp2*mHu2*Qup2*TrYuadjYu - 36._dp*(TrYuadjYuTuadjTu) - 36*mHu2*TrYuadjYuYuadjYu -  & 
&  12*CYv11p2*mHu2*Yv11p2 - 12*CYv11p2*ml012*Yv11p2 - 12*CYv11p2*mvR012*Yv11p2 -         & 
&  12*CYv22p2*mHu2*Yv22p2 - 12*CYv22p2*ml022*Yv22p2 - 12*CYv22p2*mvR022*Yv22p2 -         & 
&  12*CYv33p2*mHu2*Yv33p2 - 12*CYv33p2*ml032*Yv33p2 - 12*CYv33p2*mvR032*Yv33p2 +         & 
&  (g1p2*(621*g1p2*M1 + 45*g2p2*(2._dp*(M1) + M2) + 60*gpp2*(2._dp*(M1) + M4)*QHu*(3._dp*(Qd) +& 
&  Qe1 + Qe2 + Qe3 - QHd + 2._dp*(QHu) - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) -    & 
&  40._dp*(TradjYuTu) + 80*M1*TrYuadjYu)*Conjg(M1))/25._dp - 32*g3p2*TradjYuTu*Conjg(M3) +& 
&  (9*g1p2*g2p2*M1*Conjg(M2))/5._dp + 12*g2p2*gpp2*M4*QHup2*Conjg(M2) + 4*gpp2*M4*QHup2*Yv11*Conjg(TYv11) -& 
&  4*gpp2*M4*Ql1p2*Yv11*Conjg(TYv11) - 4*gpp2*M4*Qv1p2*Yv11*Conjg(TYv11) +               & 
&  4*gpp2*M4*QHup2*Yv22*Conjg(TYv22) - 4*gpp2*M4*Ql2p2*Yv22*Conjg(TYv22) -               & 
&  4*gpp2*M4*Qv2p2*Yv22*Conjg(TYv22) + 4*gpp2*M4*QHup2*Yv33*Conjg(TYv33) -               & 
&  4*gpp2*M4*Ql3p2*Yv33*Conjg(TYv33) - 4*gpp2*M4*Qv3p2*Yv33*Conjg(TYv33) -               & 
&  4*gpp2*M4*QHdp2*lam*Conjg(Tlam) + 4*gpp2*M4*QHup2*lam*Conjg(Tlam) - 4*gpp2*M4*Qsp2*lam*Conjg(Tlam) -& 
&  6*TradjYdTd*lam*Conjg(Tlam) - 2*Yv11*Conjg(Ye11)*Conjg(TYv11)*TYe11 - 2*lam*Conjg(Ye11)*Conjg(Tlam)*TYe11 -& 
&  2*Yv22*Conjg(Ye22)*Conjg(TYv22)*TYe22 - 2*lam*Conjg(Ye22)*Conjg(Tlam)*TYe22 -         & 
&  2*Yv33*Conjg(Ye33)*Conjg(TYv33)*TYe33 - 2*lam*Conjg(Ye33)*Conjg(Tlam)*TYe33 -         & 
&  2*Ye11*Conjg(Yv11)*Conjg(TYe11)*TYv11 - 2*Ye22*Conjg(Yv22)*Conjg(TYe22)*TYv22  
betamHu22 =  betamHu22- 2*Ye33*Conjg(Yv33)*Conjg(TYe33)*TYv33 - 6*TrCTdTpYd*Conjg(lam)*Tlam - 2*Ye11*Conjg(lam)*Conjg(TYe11)*Tlam -& 
&  2*Ye22*Conjg(lam)*Conjg(TYe22)*Tlam - 2*Ye33*Conjg(lam)*Conjg(TYe33)*Tlam +           & 
&  (4*gpp2*Conjg(M4)*(10*Abslam*M4*QHdp2 + 9*g1p2*M1*Qd*QHu + 18*g1p2*M4*Qd*QHu +        & 
&  3*g1p2*M1*Qe1*QHu + 6*g1p2*M4*Qe1*QHu + 3*g1p2*M1*Qe2*QHu + 6*g1p2*M4*Qe2*QHu +       & 
&  3*g1p2*M1*Qe3*QHu + 6*g1p2*M4*Qe3*QHu - 3*g1p2*M1*QHd*QHu - 6*g1p2*M4*QHd*QHu +       & 
&  6*g1p2*M1*QHup2 - 10*Abslam*M4*QHup2 - 10*AbsYv33*M4*QHup2 + 12*g1p2*M4*QHup2 +       & 
&  30*g2p2*M4*QHup2 + 15*g2p2*M2*QHup2 + 270*gpp2*M4*Qdp2*QHup2 + 30*gpp2*M4*Qe1p2*QHup2 +& 
&  30*gpp2*M4*Qe2p2*QHup2 + 30*gpp2*M4*Qe3p2*QHup2 + 60*gpp2*M4*QHdp2*QHup2 +            & 
&  120*gpp2*M4*QHup4 - 3*g1p2*M1*QHu*Ql1 - 6*g1p2*M4*QHu*Ql1 + 60*gpp2*M4*QHup2*Ql1p2 -  & 
&  3*g1p2*M1*QHu*Ql2 - 6*g1p2*M4*QHu*Ql2 + 60*gpp2*M4*QHup2*Ql2p2 - 3*g1p2*M1*QHu*Ql3 -  & 
&  6*g1p2*M4*QHu*Ql3 + 10*AbsYv33*M4*Ql3p2 + 60*gpp2*M4*QHup2*Ql3p2 + 9*g1p2*M1*QHu*Qq + & 
&  18*g1p2*M4*QHu*Qq + 540*gpp2*M4*QHup2*Qqp2 + 10*Abslam*M4*Qsp2 + 30*gpp2*M4*QHup2*Qsp2 -& 
&  18*g1p2*M1*QHu*Qu - 36*g1p2*M4*QHu*Qu + 270*gpp2*M4*QHup2*Qup2 + 30*gpp2*M4*QHup2*Qv1p2 +& 
&  30*gpp2*M4*QHup2*Qv2p2 + 10*AbsYv33*M4*Qv3p2 + 30*gpp2*M4*QHup2*Qv3p2 +               & 
&  15*QHup2*TradjYuTu - 15*Qqp2*TradjYuTu - 15*Qup2*TradjYuTu - 30*M4*QHup2*TrYuadjYu +  & 
&  30*M4*Qqp2*TrYuadjYu + 30*M4*Qup2*TrYuadjYu - 5*(QHup2 - Ql1p2 - Qv1p2)*Conjg(Yv11)*(2*M4*Yv11 -& 
&  TYv11) - 5*(QHup2 - Ql2p2 - Qv2p2)*Conjg(Yv22)*(2*M4*Yv22 - TYv22) + 5*QHup2*Conjg(Yv33)*TYv33 -& 
&  5*Ql3p2*Conjg(Yv33)*TYv33 - 5*Qv3p2*Conjg(Yv33)*TYv33 - 5*QHdp2*Conjg(lam)*Tlam +     & 
&  5*QHup2*Conjg(lam)*Tlam - 5*Qsp2*Conjg(lam)*Tlam))/5._dp + 6*g2p4*Tr2(2) +            & 
&  (6*g1p2*Tr2U1(1,1))/5._dp + 4*g1*gp*QHu*sqrt3ov5*Tr2U1(1,4) + 4*g1*gp*QHu*sqrt3ov5*Tr2U1(4,& 
& 1) + 8*gpp2*QHup2*Tr2U1(4,4) + 4*g1*sqrt3ov5*Tr3(1) + 8*gp*QHu*Tr3(4)

 
DmHu2 = oo16pi2*( betamHu21 + oo16pi2 * betamHu22 ) 

 
Else 
DmHu2 = oo16pi2* betamHu21 
End If 
 
 
!-------------------- 
! md2 
!-------------------- 
 
betamd21  = (-8*AbsM1*g1p2*id3R)/15._dp - (32*AbsM3*g3p2*id3R)/3._dp + 2._dp*(md2YdadjYd)& 
&  - 8*AbsM4*gpp2*id3R*Qdp2 + 4._dp*(TdadjTd) + 4*mHd2*YdadjYd + 2._dp*(YdadjYdmd2)      & 
&  + 4._dp*(Ydmq2adjYd) + 2*g1*id3R*ooSqrt15*Tr1(1) + 2*gp*id3R*Qd*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamd22 = -2*Abslam*md2YdadjYd - 2*AbsYe11*md2YdadjYd - 2*AbsYe22*md2YdadjYd - 2*AbsYe33*md2YdadjYd +& 
&  (2*g1p2*md2YdadjYd)/5._dp + 6*g2p2*md2YdadjYd - 2._dp*(md2YdadjYdYdadjYd) -           & 
&  2._dp*(md2YdadjYuYuadjYd) + (176*AbsM4*g1p2*gpp2*id3R*Qdp2)/15._dp + (128*AbsM4*g3p2*gpp2*id3R*Qdp2)/3._dp -& 
&  4*gpp2*md2YdadjYd*Qdp2 + 264*AbsM4*gpp4*id3R*Qdp4 + (16*AbsM4*g1p2*gpp2*id3R*Qd*Qe1)/5._dp +& 
&  24*AbsM4*gpp4*id3R*Qdp2*Qe1p2 + (16*AbsM4*g1p2*gpp2*id3R*Qd*Qe2)/5._dp +              & 
&  24*AbsM4*gpp4*id3R*Qdp2*Qe2p2 + (16*AbsM4*g1p2*gpp2*id3R*Qd*Qe3)/5._dp +              & 
&  24*AbsM4*gpp4*id3R*Qdp2*Qe3p2 - (16*AbsM4*g1p2*gpp2*id3R*Qd*QHd)/5._dp +              & 
&  4*gpp2*md2YdadjYd*QHdp2 + 48*AbsM4*gpp4*id3R*Qdp2*QHdp2 + (16*AbsM4*g1p2*gpp2*id3R*Qd*QHu)/5._dp +& 
&  48*AbsM4*gpp4*id3R*Qdp2*QHup2 - (16*AbsM4*g1p2*gpp2*id3R*Qd*Ql1)/5._dp +              & 
&  48*AbsM4*gpp4*id3R*Qdp2*Ql1p2 - (16*AbsM4*g1p2*gpp2*id3R*Qd*Ql2)/5._dp +              & 
&  48*AbsM4*gpp4*id3R*Qdp2*Ql2p2 - (16*AbsM4*g1p2*gpp2*id3R*Qd*Ql3)/5._dp +              & 
&  48*AbsM4*gpp4*id3R*Qdp2*Ql3p2 + (48*AbsM4*g1p2*gpp2*id3R*Qd*Qq)/5._dp +               & 
&  4*gpp2*md2YdadjYd*Qqp2 + 432*AbsM4*gpp4*id3R*Qdp2*Qqp2 + 24*AbsM4*gpp4*id3R*Qdp2*Qsp2 -& 
&  (96*AbsM4*g1p2*gpp2*id3R*Qd*Qu)/5._dp + 216*AbsM4*gpp4*id3R*Qdp2*Qup2 +               & 
&  24*AbsM4*gpp4*id3R*Qdp2*Qv1p2 + 24*AbsM4*gpp4*id3R*Qdp2*Qv2p2 + 24*AbsM4*gpp4*id3R*Qdp2*Qv3p2 -& 
&  4*Abslam*TdadjTd - 4*AbsYe11*TdadjTd - 4*AbsYe22*TdadjTd - 4*AbsYe33*TdadjTd +        & 
&  (4*g1p2*TdadjTd)/5._dp + 12*g2p2*TdadjTd - 8*gpp2*Qdp2*TdadjTd + 8*gpp2*QHdp2*TdadjTd +& 
&  8*gpp2*Qqp2*TdadjTd - 4._dp*(TdadjTdYdadjYd) - 4._dp*(TdadjTuYuadjYd) -               & 
&  4._dp*(TdadjYdYdadjTd) - 4._dp*(TdadjYuYuadjTd) - 12*TdadjYd*TrCTdTpYd -              & 
&  6*md2YdadjYd*TrYdadjYd - 12*TdadjTd*TrYdadjYd - (4*g1p2*M1*YdadjTd)/5._dp -           & 
&  12*g2p2*M2*YdadjTd + 8*gpp2*M4*Qdp2*YdadjTd - 8*gpp2*M4*QHdp2*YdadjTd  
betamd22 =  betamd22- 8*gpp2*M4*Qqp2*YdadjTd - 12*TradjYdTd*YdadjTd - 4._dp*(YdadjTdTdadjYd) -              & 
&  4._dp*(YdadjTuTuadjYd) - 4*AbsTlam*YdadjYd - 4*AbsTYe11*YdadjYd - 4*AbsTYe22*YdadjYd -& 
&  4*AbsTYe33*YdadjYd + 24*AbsM2*g2p2*YdadjYd - 4*AbsYe11*me012*YdadjYd - 4*AbsYe22*me022*YdadjYd -& 
&  4*AbsYe33*me032*YdadjYd - 8*Abslam*mHd2*YdadjYd - 8*AbsYe11*mHd2*YdadjYd -            & 
&  8*AbsYe22*mHd2*YdadjYd - 8*AbsYe33*mHd2*YdadjYd + (4*g1p2*mHd2*YdadjYd)/5._dp +       & 
&  12*g2p2*mHd2*YdadjYd - 4*Abslam*mHu2*YdadjYd - 4*AbsYe11*ml012*YdadjYd -              & 
&  4*AbsYe22*ml022*YdadjYd - 4*AbsYe33*ml032*YdadjYd - 4*Abslam*ms2*YdadjYd -            & 
&  16*AbsM4*gpp2*Qdp2*YdadjYd - 8*gpp2*mHd2*Qdp2*YdadjYd + 16*AbsM4*gpp2*QHdp2*YdadjYd + & 
&  8*gpp2*mHd2*QHdp2*YdadjYd + 16*AbsM4*gpp2*Qqp2*YdadjYd + 8*gpp2*mHd2*Qqp2*YdadjYd -   & 
&  12*TrCTdTpTd*YdadjYd - 12*Trmd2YdadjYd*YdadjYd - 12*Trmq2adjYdYd*YdadjYd -            & 
&  24*mHd2*TrYdadjYd*YdadjYd - 2*Abslam*YdadjYdmd2 - 2*AbsYe11*YdadjYdmd2 -              & 
&  2*AbsYe22*YdadjYdmd2 - 2*AbsYe33*YdadjYdmd2 + (2*g1p2*YdadjYdmd2)/5._dp +             & 
&  6*g2p2*YdadjYdmd2 - 4*gpp2*Qdp2*YdadjYdmd2 + 4*gpp2*QHdp2*YdadjYdmd2 + 4*gpp2*Qqp2*YdadjYdmd2 -& 
&  6*TrYdadjYd*YdadjYdmd2 - 4._dp*(YdadjYdmd2YdadjYd) - 4._dp*(YdadjYdTdadjTd) -         & 
&  8*mHd2*YdadjYdYdadjYd - 2._dp*(YdadjYdYdadjYdmd2) - 4._dp*(YdadjYdYdmq2adjYd) -       & 
&  4._dp*(YdadjYumu2YuadjYd) - 4._dp*(YdadjYuTuadjTd) - 4*mHd2*YdadjYuYuadjYd -          & 
&  4*mHu2*YdadjYuYuadjYd - 2._dp*(YdadjYuYuadjYdmd2) - 4._dp*(YdadjYuYumq2adjYd) -       & 
&  4*Abslam*Ydmq2adjYd - 4*AbsYe11*Ydmq2adjYd - 4*AbsYe22*Ydmq2adjYd - 4*AbsYe33*Ydmq2adjYd +& 
&  (4*g1p2*Ydmq2adjYd)/5._dp + 12*g2p2*Ydmq2adjYd - 8*gpp2*Qdp2*Ydmq2adjYd +             & 
&  8*gpp2*QHdp2*Ydmq2adjYd + 8*gpp2*Qqp2*Ydmq2adjYd - 12*TrYdadjYd*Ydmq2adjYd -          & 
&  4._dp*(Ydmq2adjYdYdadjYd) - 4._dp*(Ydmq2adjYuYuadjYd) + (4*g1p2*(2*id3R*(303*g1p2*M1 +& 
&  40*g3p2*(2._dp*(M1) + M3) + 15*gpp2*(2._dp*(M1) + M4)*Qd*(11._dp*(Qd) +               & 
&  3*(Qe1 + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)))) -       & 
&  45._dp*(TdadjYd) + 90*M1*YdadjYd)*Conjg(M1))/225._dp - (64*g3p2*id3R*(30*g3p2*M3 -    & 
&  g1p2*(M1 + 2._dp*(M3)) - 15*gpp2*(2._dp*(M3) + M4)*Qdp2)*Conjg(M3))/45._dp  
betamd22 =  betamd22+ (88*g1p2*gpp2*id3R*M1*Qdp2*Conjg(M4))/15._dp + (64*g3p2*gpp2*id3R*M3*Qdp2*Conjg(M4))/3._dp +& 
&  (8*g1p2*gpp2*id3R*M1*Qd*Qe1*Conjg(M4))/5._dp + (8*g1p2*gpp2*id3R*M1*Qd*Qe2*Conjg(M4))/5._dp +& 
&  (8*g1p2*gpp2*id3R*M1*Qd*Qe3*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*QHd*Conjg(M4))/5._dp +& 
&  (8*g1p2*gpp2*id3R*M1*Qd*QHu*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*Ql1*Conjg(M4))/5._dp -& 
&  (8*g1p2*gpp2*id3R*M1*Qd*Ql2*Conjg(M4))/5._dp - (8*g1p2*gpp2*id3R*M1*Qd*Ql3*Conjg(M4))/5._dp +& 
&  (24*g1p2*gpp2*id3R*M1*Qd*Qq*Conjg(M4))/5._dp - (48*g1p2*gpp2*id3R*M1*Qd*Qu*Conjg(M4))/5._dp +& 
&  8*gpp2*Qdp2*TdadjYd*Conjg(M4) - 8*gpp2*QHdp2*TdadjYd*Conjg(M4) - 8*gpp2*Qqp2*TdadjYd*Conjg(M4) -& 
&  12*g2p2*TdadjYd*Conjg(M2) - 4*TdadjYd*Ye11*Conjg(TYe11) - 4*TdadjYd*Ye22*Conjg(TYe22) -& 
&  4*TdadjYd*Ye33*Conjg(TYe33) - 4*TdadjYd*lam*Conjg(Tlam) - 4*YdadjTd*Conjg(Ye11)*TYe11 -& 
&  4*YdadjTd*Conjg(Ye22)*TYe22 - 4*YdadjTd*Conjg(Ye33)*TYe33 - 4*YdadjTd*Conjg(lam)*Tlam +& 
&  (32*g3p4*id3R*Tr2(3))/3._dp + (8*g1p2*id3R*Tr2U1(1,1))/15._dp + 8*g1*gp*id3R*ooSqrt15*Qd*Tr2U1(1,& 
& 4) + 8*g1*gp*id3R*ooSqrt15*Qd*Tr2U1(4,1) + 8*gpp2*id3R*Qdp2*Tr2U1(4,4) +               & 
&  8*g1*id3R*ooSqrt15*Tr3(1) + 8*gp*id3R*Qd*Tr3(4)

 
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
&  M4)*(9._dp*(Qd) + 3._dp*(Qe1) + 3._dp*(Qe2) + 3._dp*(Qe3) - 3._dp*(QHd) +             & 
&  3._dp*(QHu) - 3._dp*(Ql1) - 3._dp*(Ql2) - 3._dp*(Ql3) + 9._dp*(Qq) - 22._dp*(Qu))*Qu) +& 
&  45*(TuadjYu - 2*M1*YuadjYu))*Conjg(M1) + 10*(32*g3p2*id3R*(-30*g3p2*M3 +              & 
&  4*g1p2*(M1 + 2._dp*(M3)) + 15*gpp2*(2._dp*(M3) + M4)*Qup2)*Conjg(M3) + 12*gpp2*(id3R*Qu*(-& 
& 2*g1p2*(M1 + 2._dp*(M4))*(9._dp*(Qd) + 3._dp*(Qe1) + 3._dp*(Qe2) + 3._dp*(Qe3) -       & 
&  3._dp*(QHd) + 3._dp*(QHu) - 3._dp*(Ql1) - 3._dp*(Ql2) - 3._dp*(Ql3) + 9._dp*(Qq) -    & 
&  22._dp*(Qu)) + 5*Qu*(8*g3p2*(M3 + 2._dp*(M4)) + 9*gpp2*M4*(9._dp*(Qdp2) +             & 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 11._dp*(Qup2) + Qv1p2 +        & 
&  Qv2p2 + Qv3p2))) + 15*(QHup2 + Qqp2 - Qup2)*(-1._dp*(TuadjYu) + 2*M4*YuadjYu))*Conjg(M4) -& 
&  9*(5._dp*(mu2YuadjYdYdadjYu) + 5*Abslam*mu2YuadjYu + 5*AbsYv11*mu2YuadjYu +           & 
&  5*AbsYv22*mu2YuadjYu + 5*AbsYv33*mu2YuadjYu + g1p2*mu2YuadjYu - 15*g2p2*mu2YuadjYu +  & 
&  5._dp*(mu2YuadjYuYuadjYu) - 10*gpp2*mu2YuadjYu*QHup2 - 10*gpp2*mu2YuadjYu*Qqp2 +      & 
&  10*gpp2*mu2YuadjYu*Qup2 + 15*mu2YuadjYu*TrYuadjYu + 10._dp*(TuadjTdYdadjYu) +         & 
&  10*Abslam*TuadjTu + 10*AbsYv11*TuadjTu + 10*AbsYv22*TuadjTu + 10*AbsYv33*TuadjTu +    & 
&  2*g1p2*TuadjTu - 30*g2p2*TuadjTu - 20*gpp2*QHup2*TuadjTu - 20*gpp2*Qqp2*TuadjTu +     & 
&  20*gpp2*Qup2*TuadjTu + 30*TrYuadjYu*TuadjTu + 10._dp*(TuadjTuYuadjYu) +               & 
&  10._dp*(TuadjYdYdadjTu) + 30*TrCTuTpYu*TuadjYu + 10._dp*(TuadjYuYuadjTu) +            & 
&  10._dp*(YuadjTdTdadjYu) + 10._dp*(YuadjTuTuadjYu) + 10._dp*(YuadjYdmd2YdadjYu) +      & 
&  10._dp*(YuadjYdTdadjTu) + 10*mHd2*YuadjYdYdadjYu + 10*mHu2*YuadjYdYdadjYu +           & 
&  5._dp*(YuadjYdYdadjYumu2) + 10._dp*(YuadjYdYdmq2adjYu) + 2*(5._dp*(AbsTlam) +         & 
&  5._dp*(AbsTYv11) + 5._dp*(AbsTYv22) + 5._dp*(AbsTYv33) - 30*AbsM2*g2p2 +              & 
&  5*Abslam*mHd2 + 10*Abslam*mHu2 + 10*AbsYv22*mHu2 + 10*AbsYv33*mHu2 + g1p2*mHu2 -      & 
&  15*g2p2*mHu2 + 5*AbsYv22*ml022 + 5*AbsYv33*ml032 + 5*Abslam*ms2 + 5*AbsYv11*(2._dp*(mHu2) +& 
&  ml012 + mvR012) + 5*AbsYv22*mvR022 + 5*AbsYv33*mvR032 - 10*gpp2*mHu2*QHup2 -          & 
&  10*gpp2*mHu2*Qqp2 + 10*gpp2*mHu2*Qup2 + 15._dp*(TrCTuTpTu) + 15._dp*(Trmq2adjYuYu) +  & 
&  15._dp*(Trmu2YuadjYu) + 30*mHu2*TrYuadjYu)*YuadjYu + 5*Abslam*YuadjYumu2 +            & 
&  5*AbsYv11*YuadjYumu2 + 5*AbsYv22*YuadjYumu2 + 5*AbsYv33*YuadjYumu2 + g1p2*YuadjYumu2 -& 
&  15*g2p2*YuadjYumu2 - 10*gpp2*QHup2*YuadjYumu2 - 10*gpp2*Qqp2*YuadjYumu2 +             & 
&  10*gpp2*Qup2*YuadjYumu2 + 15*TrYuadjYu*YuadjYumu2 + 10._dp*(YuadjYumu2YuadjYu) +      & 
&  10._dp*(YuadjYuTuadjTu) + 20*mHu2*YuadjYuYuadjYu + 5._dp*(YuadjYuYuadjYumu2) +        & 
&  10._dp*(YuadjYuYumq2adjYu) + 10._dp*(Yumq2adjYdYdadjYu) + 10*Abslam*Yumq2adjYu +      & 
&  10*AbsYv11*Yumq2adjYu + 10*AbsYv22*Yumq2adjYu + 10*AbsYv33*Yumq2adjYu +               & 
&  2*g1p2*Yumq2adjYu - 30*g2p2*Yumq2adjYu - 20*gpp2*QHup2*Yumq2adjYu - 20*gpp2*Qqp2*Yumq2adjYu +& 
&  20*gpp2*Qup2*Yumq2adjYu + 30*TrYuadjYu*Yumq2adjYu + 10._dp*(Yumq2adjYuYuadjYu) +      & 
&  30*g2p2*TuadjYu*Conjg(M2) + 10*TuadjYu*Yv11*Conjg(TYv11) + 10*TuadjYu*Yv22*Conjg(TYv22) +& 
&  10*TuadjYu*Yv33*Conjg(TYv33) + 10*TuadjYu*lam*Conjg(Tlam) + 2*YuadjTu*(-              & 
& (g1p2*M1) + 15*g2p2*M2 + 10*gpp2*M4*QHup2 + 10*gpp2*M4*Qqp2 - 10*gpp2*M4*Qup2 +        & 
&  15._dp*(TradjYuTu) + 5*Conjg(Yv11)*TYv11 + 5*Conjg(Yv22)*TYv22 + 5*Conjg(Yv33)*TYv33 +& 
&  5*Conjg(lam)*Tlam)) + 12*id3R*(20*g3p4*Tr2(3) + 4*g1p2*Tr2U1(1,1) - 2*g1*sqrt15*(gp*Qu*(Tr2U1(1,& 
& 4) + Tr2U1(4,1)) + Tr3(1)) + 15*gp*Qu*(gp*Qu*Tr2U1(4,4) + Tr3(4)))))/225._dp

 
Dmu2 = oo16pi2*( betamu21 + oo16pi2 * betamu22 ) 

 
Else 
Dmu2 = oo16pi2* betamu21 
End If 
 
 
Call Chop(Dmu2) 

Forall(i1=1:3) Dmu2(i1,i1) =  Real(Dmu2(i1,i1),dp) 
Dmu2 = 0.5_dp*(Dmu2+ Conjg(Transpose(Dmu2)) ) 
!-------------------- 
! me012 
!-------------------- 
 
betame0121  = 4._dp*(AbsTep) + 4._dp*(AbsTYe11) - (24*AbsM1*g1p2)/5._dp +             & 
&  4*AbsYe11*me012 + 4*AbsYe11*mHd2 + 4*AbsYe11*ml012 - 8*AbsM4*gpp2*Qe1p2 +             & 
&  2*g1*sqrt3ov5*Tr1(1) + 2*gp*Qe1*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame0122 = (4*(3*g1p2*Conjg(M1)*(234*g1p2*M1 + 10*gpp2*(2._dp*(M1) + M4)*Qe1*(3._dp*(Qd) +       & 
&  3._dp*(Qe1) + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) +    & 
&  5*Conjg(Ye11)*(-2*M1*Ye11 + TYe11)) + 5*(-5*Abslam*AbsTYe11 - 5*AbsTYe11*AbsYe22 -    & 
&  5*AbsTYe11*AbsYe33 - 5*AbsTYe11*AbsYv11 - 3*AbsTYe11*g1p2 + 15*AbsTYe11*g2p2 -        & 
&  10*AbsTYe11*gpp2*Qe1p2 + 10*AbsTYe11*gpp2*QHdp2 + 10*AbsTYe11*gpp2*Ql1p2 -            & 
&  15*AbsTYe11*TrYdadjYd - 20*CYe11p2*(me012 + mHd2 + ml012)*Ye11p2 + 3*g1p2*M1*Ye11*Conjg(TYe11) -& 
&  15*g2p2*M2*Ye11*Conjg(TYe11) + 10*gpp2*M4*Qe1p2*Ye11*Conjg(TYe11) - 10*gpp2*M4*QHdp2*Ye11*Conjg(TYe11) -& 
&  10*gpp2*M4*Ql1p2*Ye11*Conjg(TYe11) - 15*TradjYdTd*Ye11*Conjg(TYe11) + 2*gpp2*Conjg(M4)*(3*Qe1*(g1p2*(M1 +& 
&  2._dp*(M4))*(3._dp*(Qd) + 3._dp*(Qe1) + Qe2 + Qe3 - QHd + QHu - Ql1 - Ql2 -           & 
&  Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 5*gpp2*M4*Qe1*(9._dp*(Qdp2) + 3._dp*(Qe1p2) +        & 
&  Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) + 2._dp*(Ql2p2) +       & 
&  2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2)) -       & 
&  5*(Qe1p2 - QHdp2 - Ql1p2)*Conjg(Ye11)*(2*M4*Ye11 - TYe11)) - Conjg(Ye11)*(5*AbsTlam*Ye11 +& 
&  40*AbsTYe11*Ye11 + 5*AbsTYe22*Ye11 + 5*AbsTYe33*Ye11 + 5*AbsTYv11*Ye11 +              & 
&  5*Abslam*me012*Ye11 + 5*AbsYe33*me012*Ye11 + 5*AbsYv11*me012*Ye11 + 3*g1p2*me012*Ye11 -& 
&  15*g2p2*me012*Ye11 + 5*AbsYe33*me032*Ye11 + 10*Abslam*mHd2*Ye11 + 10*AbsYe33*mHd2*Ye11 +& 
&  5*AbsYv11*mHd2*Ye11 + 3*g1p2*mHd2*Ye11 - 15*g2p2*mHd2*Ye11 + 5*Abslam*mHu2*Ye11 +     & 
&  5*AbsYv11*mHu2*Ye11 + 5*Abslam*ml012*Ye11 + 5*AbsYe33*ml012*Ye11 + 10*AbsYv11*ml012*Ye11 +& 
&  3*g1p2*ml012*Ye11 - 15*g2p2*ml012*Ye11 + 5*AbsYe22*(me012 + me022 + 2._dp*(mHd2) +    & 
&  ml012 + ml022)*Ye11 + 5*AbsYe33*ml032*Ye11 + 5*Abslam*ms2*Ye11 + 5*AbsYv11*mvR012*Ye11 +& 
&  10*gpp2*me012*Qe1p2*Ye11 + 10*gpp2*mHd2*Qe1p2*Ye11 + 10*gpp2*ml012*Qe1p2*Ye11 -       & 
&  10*gpp2*me012*QHdp2*Ye11 - 10*gpp2*mHd2*QHdp2*Ye11 - 10*gpp2*ml012*QHdp2*Ye11 -       & 
&  10*gpp2*me012*Ql1p2*Ye11 - 10*gpp2*mHd2*Ql1p2*Ye11 - 10*gpp2*ml012*Ql1p2*Ye11 +       & 
&  15*TrCTdTpTd*Ye11 + 15*Trmd2YdadjYd*Ye11 + 15*Trmq2adjYdYd*Ye11 + 15*me012*TrYdadjYd*Ye11 +& 
&  30*mHd2*TrYdadjYd*Ye11 + 15*ml012*TrYdadjYd*Ye11 + 15*TrCTdTpYd*TYe11 +               & 
&  5*Ye22*Conjg(TYe22)*TYe11 + 5*Ye33*Conjg(TYe33)*TYe11 + 5*Yv11*Conjg(TYv11)*TYe11 +   & 
&  5*lam*Conjg(Tlam)*TYe11 + 15*g2p2*Conjg(M2)*(-2*M2*Ye11 + TYe11)) - 5*Ye11*Conjg(Ye22)*Conjg(TYe11)*TYe22 -& 
&  5*Ye11*Conjg(Ye33)*Conjg(TYe11)*TYe33 - 5*Ye11*Conjg(Yv11)*Conjg(TYe11)*TYv11 -       & 
&  5*Ye11*Conjg(lam)*Conjg(TYe11)*Tlam + 6*g1p2*Tr2U1(1,1) + 2*g1*gp*Qe1*sqrt15*Tr2U1(1, & 
& 4) + 2*g1*gp*Qe1*sqrt15*Tr2U1(4,1) + 10*gpp2*Qe1p2*Tr2U1(4,4) + 2*g1*sqrt15*Tr3(1) +   & 
&  10*gp*Qe1*Tr3(4))))/25._dp

 
Dme012 = oo16pi2*( betame0121 + oo16pi2 * betame0122 ) 

 
Else 
Dme012 = oo16pi2* betame0121 
End If 
 
 
!-------------------- 
! me022 
!-------------------- 
 
betame0221  = 4._dp*(AbsTmup) + 4._dp*(AbsTYe22) - (24*AbsM1*g1p2)/5._dp +            & 
&  4*AbsYe22*me022 + 4*AbsYe22*mHd2 + 4*AbsYe22*ml022 - 8*AbsM4*gpp2*Qe2p2 +             & 
&  2*g1*sqrt3ov5*Tr1(1) + 2*gp*Qe2*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame0222 = (4*(3*g1p2*Conjg(M1)*(234*g1p2*M1 + 10*gpp2*(2._dp*(M1) + M4)*Qe2*(3._dp*(Qd) +       & 
&  Qe1 + 3._dp*(Qe2) + Qe3 - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) +    & 
&  5*Conjg(Ye22)*(-2*M1*Ye22 + TYe22)) + 5*(-5*Abslam*AbsTYe22 - 5*AbsTYe22*AbsYe11 -    & 
&  5*AbsTYe22*AbsYe33 - 5*AbsTYe22*AbsYv22 - 3*AbsTYe22*g1p2 + 15*AbsTYe22*g2p2 -        & 
&  10*AbsTYe22*gpp2*Qe2p2 + 10*AbsTYe22*gpp2*QHdp2 + 10*AbsTYe22*gpp2*Ql2p2 -            & 
&  15*AbsTYe22*TrYdadjYd - 20*CYe22p2*(me022 + mHd2 + ml022)*Ye22p2 + 3*g1p2*M1*Ye22*Conjg(TYe22) -& 
&  15*g2p2*M2*Ye22*Conjg(TYe22) + 10*gpp2*M4*Qe2p2*Ye22*Conjg(TYe22) - 10*gpp2*M4*QHdp2*Ye22*Conjg(TYe22) -& 
&  10*gpp2*M4*Ql2p2*Ye22*Conjg(TYe22) - 15*TradjYdTd*Ye22*Conjg(TYe22) - 5*Ye22*Conjg(Ye11)*Conjg(TYe22)*TYe11 +& 
&  2*gpp2*Conjg(M4)*(3*Qe2*(g1p2*(M1 + 2._dp*(M4))*(3._dp*(Qd) + Qe1 + 3._dp*(Qe2) +     & 
&  Qe3 - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 5*gpp2*M4*Qe2*(9._dp*(Qdp2) +& 
&  Qe1p2 + 3._dp*(Qe2p2) + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +       & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 +         & 
&  Qv2p2 + Qv3p2)) - 5*(Qe2p2 - QHdp2 - Ql2p2)*Conjg(Ye22)*(2*M4*Ye22 - TYe22)) -        & 
&  Conjg(Ye22)*(5*AbsTlam*Ye22 + 5*AbsTYe11*Ye22 + 40*AbsTYe22*Ye22 + 5*AbsTYe33*Ye22 +  & 
&  5*AbsTYv22*Ye22 + 5*Abslam*me022*Ye22 + 5*AbsYe33*me022*Ye22 + 5*AbsYv22*me022*Ye22 + & 
&  3*g1p2*me022*Ye22 - 15*g2p2*me022*Ye22 + 5*AbsYe33*me032*Ye22 + 10*Abslam*mHd2*Ye22 + & 
&  10*AbsYe33*mHd2*Ye22 + 5*AbsYv22*mHd2*Ye22 + 3*g1p2*mHd2*Ye22 - 15*g2p2*mHd2*Ye22 +   & 
&  5*Abslam*mHu2*Ye22 + 5*AbsYv22*mHu2*Ye22 + 5*Abslam*ml022*Ye22 + 5*AbsYe33*ml022*Ye22 +& 
&  10*AbsYv22*ml022*Ye22 + 3*g1p2*ml022*Ye22 - 15*g2p2*ml022*Ye22 + 5*AbsYe11*(me012 +   & 
&  me022 + 2._dp*(mHd2) + ml012 + ml022)*Ye22 + 5*AbsYe33*ml032*Ye22 + 5*Abslam*ms2*Ye22 +& 
&  5*AbsYv22*mvR022*Ye22 + 10*gpp2*me022*Qe2p2*Ye22 + 10*gpp2*mHd2*Qe2p2*Ye22 +          & 
&  10*gpp2*ml022*Qe2p2*Ye22 - 10*gpp2*me022*QHdp2*Ye22 - 10*gpp2*mHd2*QHdp2*Ye22 -       & 
&  10*gpp2*ml022*QHdp2*Ye22 - 10*gpp2*me022*Ql2p2*Ye22 - 10*gpp2*mHd2*Ql2p2*Ye22 -       & 
&  10*gpp2*ml022*Ql2p2*Ye22 + 15*TrCTdTpTd*Ye22 + 15*Trmd2YdadjYd*Ye22 + 15*Trmq2adjYdYd*Ye22 +& 
&  15*me022*TrYdadjYd*Ye22 + 30*mHd2*TrYdadjYd*Ye22 + 15*ml022*TrYdadjYd*Ye22 +          & 
&  15*TrCTdTpYd*TYe22 + 5*Ye11*Conjg(TYe11)*TYe22 + 5*Ye33*Conjg(TYe33)*TYe22 +          & 
&  5*Yv22*Conjg(TYv22)*TYe22 + 5*lam*Conjg(Tlam)*TYe22 + 15*g2p2*Conjg(M2)*(-            & 
& 2*M2*Ye22 + TYe22)) - 5*Ye22*Conjg(Ye33)*Conjg(TYe22)*TYe33 - 5*Ye22*Conjg(Yv22)*Conjg(TYe22)*TYv22 -& 
&  5*Ye22*Conjg(lam)*Conjg(TYe22)*Tlam + 6*g1p2*Tr2U1(1,1) + 2*g1*gp*Qe2*sqrt15*Tr2U1(1, & 
& 4) + 2*g1*gp*Qe2*sqrt15*Tr2U1(4,1) + 10*gpp2*Qe2p2*Tr2U1(4,4) + 2*g1*sqrt15*Tr3(1) +   & 
&  10*gp*Qe2*Tr3(4))))/25._dp

 
Dme022 = oo16pi2*( betame0221 + oo16pi2 * betame0222 ) 

 
Else 
Dme022 = oo16pi2* betame0221 
End If 
 
 
!-------------------- 
! me032 
!-------------------- 
 
betame0321  = 4._dp*(AbsTYe33) - (24*AbsM1*g1p2)/5._dp + 4*AbsYe33*me032 +            & 
&  4*AbsYe33*mHd2 + 4*AbsYe33*ml032 - 8*AbsM4*gpp2*Qe3p2 + 2*g1*sqrt3ov5*Tr1(1)          & 
&  + 2*gp*Qe3*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betame0322 = (4*(3*g1p2*Conjg(M1)*(234*g1p2*M1 + 10*gpp2*(2._dp*(M1) + M4)*Qe3*(3._dp*(Qd) +       & 
&  Qe1 + Qe2 + 3._dp*(Qe3) - QHd + QHu - Ql1 - Ql2 - Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) +    & 
&  5*Conjg(Ye33)*(-2*M1*Ye33 + TYe33)) + 5*(-5*Abslam*AbsTYe33 - 5*AbsTYe33*AbsYe11 -    & 
&  5*AbsTYe33*AbsYe22 - 5*AbsTYe33*AbsYv33 - 3*AbsTYe33*g1p2 + 15*AbsTYe33*g2p2 -        & 
&  10*AbsTYe33*gpp2*Qe3p2 + 10*AbsTYe33*gpp2*QHdp2 + 10*AbsTYe33*gpp2*Ql3p2 -            & 
&  15*AbsTYe33*TrYdadjYd - 20*CYe33p2*(me032 + mHd2 + ml032)*Ye33p2 + 3*g1p2*M1*Ye33*Conjg(TYe33) -& 
&  15*g2p2*M2*Ye33*Conjg(TYe33) + 10*gpp2*M4*Qe3p2*Ye33*Conjg(TYe33) - 10*gpp2*M4*QHdp2*Ye33*Conjg(TYe33) -& 
&  10*gpp2*M4*Ql3p2*Ye33*Conjg(TYe33) - 15*TradjYdTd*Ye33*Conjg(TYe33) - 5*Ye33*Conjg(Ye11)*Conjg(TYe33)*TYe11 -& 
&  5*Ye33*Conjg(Ye22)*Conjg(TYe33)*TYe22 + 2*gpp2*Conjg(M4)*(3*Qe3*(g1p2*(M1 +           & 
&  2._dp*(M4))*(3._dp*(Qd) + Qe1 + Qe2 + 3._dp*(Qe3) - QHd + QHu - Ql1 - Ql2 -           & 
&  Ql3 + 3._dp*(Qq) - 6._dp*(Qu)) + 5*gpp2*M4*Qe3*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 +        & 
&  3._dp*(Qe3p2) + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) + 2._dp*(Ql2p2) +       & 
&  2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2)) -       & 
&  5*(Qe3p2 - QHdp2 - Ql3p2)*Conjg(Ye33)*(2*M4*Ye33 - TYe33)) - Conjg(Ye33)*(5*AbsTlam*Ye33 +& 
&  5*AbsTYe11*Ye33 + 5*AbsTYe22*Ye33 + 40*AbsTYe33*Ye33 + 5*AbsTYv33*Ye33 +              & 
&  5*AbsYe22*me022*Ye33 + 5*Abslam*me032*Ye33 + 5*AbsYe22*me032*Ye33 + 5*AbsYv33*me032*Ye33 +& 
&  3*g1p2*me032*Ye33 - 15*g2p2*me032*Ye33 + 10*Abslam*mHd2*Ye33 + 10*AbsYe22*mHd2*Ye33 + & 
&  5*AbsYv33*mHd2*Ye33 + 3*g1p2*mHd2*Ye33 - 15*g2p2*mHd2*Ye33 + 5*Abslam*mHu2*Ye33 +     & 
&  5*AbsYv33*mHu2*Ye33 + 5*AbsYe22*ml022*Ye33 + 5*Abslam*ml032*Ye33 + 5*AbsYe22*ml032*Ye33 +& 
&  10*AbsYv33*ml032*Ye33 + 3*g1p2*ml032*Ye33 - 15*g2p2*ml032*Ye33 + 5*AbsYe11*(me012 +   & 
&  me032 + 2._dp*(mHd2) + ml012 + ml032)*Ye33 + 5*Abslam*ms2*Ye33 + 5*AbsYv33*mvR032*Ye33 +& 
&  10*gpp2*me032*Qe3p2*Ye33 + 10*gpp2*mHd2*Qe3p2*Ye33 + 10*gpp2*ml032*Qe3p2*Ye33 -       & 
&  10*gpp2*me032*QHdp2*Ye33 - 10*gpp2*mHd2*QHdp2*Ye33 - 10*gpp2*ml032*QHdp2*Ye33 -       & 
&  10*gpp2*me032*Ql3p2*Ye33 - 10*gpp2*mHd2*Ql3p2*Ye33 - 10*gpp2*ml032*Ql3p2*Ye33 +       & 
&  15*TrCTdTpTd*Ye33 + 15*Trmd2YdadjYd*Ye33 + 15*Trmq2adjYdYd*Ye33 + 15*me032*TrYdadjYd*Ye33 +& 
&  30*mHd2*TrYdadjYd*Ye33 + 15*ml032*TrYdadjYd*Ye33 + 15*TrCTdTpYd*TYe33 +               & 
&  5*Ye11*Conjg(TYe11)*TYe33 + 5*Ye22*Conjg(TYe22)*TYe33 + 5*Yv33*Conjg(TYv33)*TYe33 +   & 
&  5*lam*Conjg(Tlam)*TYe33 + 15*g2p2*Conjg(M2)*(-2*M2*Ye33 + TYe33)) - 5*Ye33*Conjg(Yv33)*Conjg(TYe33)*TYv33 -& 
&  5*Ye33*Conjg(lam)*Conjg(TYe33)*Tlam + 6*g1p2*Tr2U1(1,1) + 2*g1*gp*Qe3*sqrt15*Tr2U1(1, & 
& 4) + 2*g1*gp*Qe3*sqrt15*Tr2U1(4,1) + 10*gpp2*Qe3p2*Tr2U1(4,4) + 2*g1*sqrt15*Tr3(1) +   & 
&  10*gp*Qe3*Tr3(4))))/25._dp

 
Dme032 = oo16pi2*( betame0321 + oo16pi2 * betame0322 ) 

 
Else 
Dme032 = oo16pi2* betame0321 
End If 
 
 
!-------------------- 
! mvR012 
!-------------------- 
 
betamvR0121  = 4._dp*(AbsTYv11) + 4*AbsYv11*(mHu2 + ml012 + mvR012) - 8*AbsM4*gpp2*Qv1p2 +& 
&  2*gp*Qv1*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamvR0122 = -16*CYv11p2*(mHu2 + ml012 + mvR012)*Yv11p2 + 8*Conjg(M4)*(3*gpp4*M4*Qv1p2*(9._dp*(Qdp2) +& 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + 3._dp*(Qv1p2) + & 
&  Qv2p2 + Qv3p2) + gpp2*(QHup2 + Ql1p2 - Qv1p2)*Conjg(Yv11)*(2*M4*Yv11 - TYv11)) +      & 
&  (4*Conjg(Yv11)*(-5*AbsTlam*Yv11 - 5*AbsTYe11*Yv11 - 40*AbsTYv11*Yv11 - 5*AbsTYv22*Yv11 -& 
&  5*AbsTYv33*Yv11 - 5*AbsYe11*me012*Yv11 - 5*Abslam*mHd2*Yv11 - 5*AbsYe11*mHd2*Yv11 -   & 
&  10*Abslam*mHu2*Yv11 - 5*AbsYe11*mHu2*Yv11 - 10*AbsYv22*mHu2*Yv11 - 10*AbsYv33*mHu2*Yv11 +& 
&  3*g1p2*mHu2*Yv11 + 15*g2p2*mHu2*Yv11 - 5*Abslam*ml012*Yv11 - 10*AbsYe11*ml012*Yv11 -  & 
&  5*AbsYv22*ml012*Yv11 - 5*AbsYv33*ml012*Yv11 + 3*g1p2*ml012*Yv11 + 15*g2p2*ml012*Yv11 -& 
&  5*AbsYv22*ml022*Yv11 - 5*AbsYv33*ml032*Yv11 - 5*Abslam*ms2*Yv11 - 5*Abslam*mvR012*Yv11 -& 
&  5*AbsYe11*mvR012*Yv11 - 5*AbsYv22*mvR012*Yv11 - 5*AbsYv33*mvR012*Yv11 +               & 
&  3*g1p2*mvR012*Yv11 + 15*g2p2*mvR012*Yv11 - 5*AbsYv22*mvR022*Yv11 - 5*AbsYv33*mvR032*Yv11 +& 
&  10*gpp2*mHu2*QHup2*Yv11 + 10*gpp2*ml012*QHup2*Yv11 + 10*gpp2*mvR012*QHup2*Yv11 +      & 
&  10*gpp2*mHu2*Ql1p2*Yv11 + 10*gpp2*ml012*Ql1p2*Yv11 + 10*gpp2*mvR012*Ql1p2*Yv11 -      & 
&  10*gpp2*mHu2*Qv1p2*Yv11 - 10*gpp2*ml012*Qv1p2*Yv11 - 10*gpp2*mvR012*Qv1p2*Yv11 -      & 
&  15*TrCTuTpTu*Yv11 - 15*Trmq2adjYuYu*Yv11 - 15*Trmu2YuadjYu*Yv11 - 30*mHu2*TrYuadjYu*Yv11 -& 
&  15*ml012*TrYuadjYu*Yv11 - 15*mvR012*TrYuadjYu*Yv11 + 3*g1p2*Conjg(M1)*(2*M1*Yv11 -    & 
&  TYv11) + 15*g2p2*Conjg(M2)*(2*M2*Yv11 - TYv11) - 15*TrCTuTpYu*TYv11 - 5*Ye11*Conjg(TYe11)*TYv11 -& 
&  5*Yv22*Conjg(TYv22)*TYv11 - 5*Yv33*Conjg(TYv33)*TYv11 - 5*lam*Conjg(Tlam)*TYv11))/5._dp -& 
&  (4*Conjg(TYv11)*((5._dp*(Abslam) + 5._dp*(AbsYv22) + 5._dp*(AbsYv33) - 3._dp*(g1p2) - & 
&  15._dp*(g2p2) - 10*gpp2*QHup2 - 10*gpp2*Ql1p2 + 10*gpp2*Qv1p2 + 15._dp*(TrYuadjYu))*TYv11 +& 
&  5*Conjg(Ye11)*(Yv11*TYe11 + Ye11*TYv11) + Yv11*(3*g1p2*M1 + 15*g2p2*M2 +              & 
&  10*gpp2*M4*QHup2 + 10*gpp2*M4*Ql1p2 - 10*gpp2*M4*Qv1p2 + 15._dp*(TradjYuTu) +         & 
&  5*Conjg(Yv22)*TYv22 + 5*Conjg(Yv33)*TYv33 + 5*Conjg(lam)*Tlam)))/5._dp  
betamvR0122 =  betamvR0122+ 8*gp*Qv1*(gp*Qv1*Tr2U1(4,4) + Tr3(4))

 
DmvR012 = oo16pi2*( betamvR0121 + oo16pi2 * betamvR0122 ) 

 
Else 
DmvR012 = oo16pi2* betamvR0121 
End If 
 
 
!-------------------- 
! mvR022 
!-------------------- 
 
betamvR0221  = 4._dp*(AbsTYv22) + 4*AbsYv22*(mHu2 + ml022 + mvR022) - 8*AbsM4*gpp2*Qv2p2 +& 
&  2*gp*Qv2*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamvR0222 = -16*CYv22p2*(mHu2 + ml022 + mvR022)*Yv22p2 + 8*Conjg(M4)*(3*gpp4*M4*Qv2p2*(9._dp*(Qdp2) +& 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 +         & 
&  3._dp*(Qv2p2) + Qv3p2) + gpp2*(QHup2 + Ql2p2 - Qv2p2)*Conjg(Yv22)*(2*M4*Yv22 -        & 
&  TYv22)) + (4*Conjg(Yv22)*(-5*AbsTlam*Yv22 - 5*AbsTYe22*Yv22 - 5*AbsTYv11*Yv22 -       & 
&  40*AbsTYv22*Yv22 - 5*AbsTYv33*Yv22 - 5*AbsYe22*me022*Yv22 - 5*Abslam*mHd2*Yv22 -      & 
&  5*AbsYe22*mHd2*Yv22 - 10*Abslam*mHu2*Yv22 - 5*AbsYe22*mHu2*Yv22 - 10*AbsYv11*mHu2*Yv22 -& 
&  10*AbsYv33*mHu2*Yv22 + 3*g1p2*mHu2*Yv22 + 15*g2p2*mHu2*Yv22 - 5*AbsYv11*ml012*Yv22 -  & 
&  5*Abslam*ml022*Yv22 - 10*AbsYe22*ml022*Yv22 - 5*AbsYv11*ml022*Yv22 - 5*AbsYv33*ml022*Yv22 +& 
&  3*g1p2*ml022*Yv22 + 15*g2p2*ml022*Yv22 - 5*AbsYv33*ml032*Yv22 - 5*Abslam*ms2*Yv22 -   & 
&  5*AbsYv11*mvR012*Yv22 - 5*Abslam*mvR022*Yv22 - 5*AbsYe22*mvR022*Yv22 - 5*AbsYv11*mvR022*Yv22 -& 
&  5*AbsYv33*mvR022*Yv22 + 3*g1p2*mvR022*Yv22 + 15*g2p2*mvR022*Yv22 - 5*AbsYv33*mvR032*Yv22 +& 
&  10*gpp2*mHu2*QHup2*Yv22 + 10*gpp2*ml022*QHup2*Yv22 + 10*gpp2*mvR022*QHup2*Yv22 +      & 
&  10*gpp2*mHu2*Ql2p2*Yv22 + 10*gpp2*ml022*Ql2p2*Yv22 + 10*gpp2*mvR022*Ql2p2*Yv22 -      & 
&  10*gpp2*mHu2*Qv2p2*Yv22 - 10*gpp2*ml022*Qv2p2*Yv22 - 10*gpp2*mvR022*Qv2p2*Yv22 -      & 
&  15*TrCTuTpTu*Yv22 - 15*Trmq2adjYuYu*Yv22 - 15*Trmu2YuadjYu*Yv22 - 30*mHu2*TrYuadjYu*Yv22 -& 
&  15*ml022*TrYuadjYu*Yv22 - 15*mvR022*TrYuadjYu*Yv22 + 3*g1p2*Conjg(M1)*(2*M1*Yv22 -    & 
&  TYv22) + 15*g2p2*Conjg(M2)*(2*M2*Yv22 - TYv22) - 15*TrCTuTpYu*TYv22 - 5*Ye22*Conjg(TYe22)*TYv22 -& 
&  5*Yv11*Conjg(TYv11)*TYv22 - 5*Yv33*Conjg(TYv33)*TYv22 - 5*lam*Conjg(Tlam)*TYv22))/5._dp -& 
&  (4*Conjg(TYv22)*(3*g1p2*M1*Yv22 + 15*g2p2*M2*Yv22 + 10*gpp2*M4*QHup2*Yv22 +           & 
&  10*gpp2*M4*Ql2p2*Yv22 - 10*gpp2*M4*Qv2p2*Yv22 + 15*TradjYuTu*Yv22 + 5*Abslam*TYv22 +  & 
&  5*AbsYv33*TYv22 - 3*g1p2*TYv22 - 15*g2p2*TYv22 - 10*gpp2*QHup2*TYv22 - 10*gpp2*Ql2p2*TYv22 +& 
&  10*gpp2*Qv2p2*TYv22 + 15*TrYuadjYu*TYv22 + 5*Conjg(Ye22)*(Yv22*TYe22 + Ye22*TYv22) +  & 
&  5*Conjg(Yv11)*(Yv22*TYv11 + Yv11*TYv22) + 5*Yv22*Conjg(Yv33)*TYv33 + 5*Yv22*Conjg(lam)*Tlam))/5._dp  
betamvR0222 =  betamvR0222+ 8*gp*Qv2*(gp*Qv2*Tr2U1(4,4) + Tr3(4))

 
DmvR022 = oo16pi2*( betamvR0221 + oo16pi2 * betamvR0222 ) 

 
Else 
DmvR022 = oo16pi2* betamvR0221 
End If 
 
 
!-------------------- 
! mvR032 
!-------------------- 
 
betamvR0321  = 4._dp*(AbsTYv33) + 4*AbsYv33*(mHu2 + ml032 + mvR032) - 8*AbsM4*gpp2*Qv3p2 +& 
&  2*gp*Qv3*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betamvR0322 = -16*CYv33p2*(mHu2 + ml032 + mvR032)*Yv33p2 + 8*Conjg(M4)*(3*gpp4*M4*Qv3p2*(9._dp*(Qdp2) +& 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + Qsp2 + 9._dp*(Qup2) + Qv1p2 +         & 
&  Qv2p2 + 3._dp*(Qv3p2)) + gpp2*(QHup2 + Ql3p2 - Qv3p2)*Conjg(Yv33)*(2*M4*Yv33 -        & 
&  TYv33)) + (4*Conjg(Yv33)*(-5*AbsTlam*Yv33 - 5*AbsTYe33*Yv33 - 5*AbsTYv11*Yv33 -       & 
&  5*AbsTYv22*Yv33 - 40*AbsTYv33*Yv33 - 5*AbsYe33*me032*Yv33 - 5*Abslam*mHd2*Yv33 -      & 
&  5*AbsYe33*mHd2*Yv33 - 10*Abslam*mHu2*Yv33 - 5*AbsYe33*mHu2*Yv33 - 10*AbsYv11*mHu2*Yv33 -& 
&  10*AbsYv22*mHu2*Yv33 + 3*g1p2*mHu2*Yv33 + 15*g2p2*mHu2*Yv33 - 5*AbsYv11*ml012*Yv33 -  & 
&  5*AbsYv22*ml022*Yv33 - 5*Abslam*ml032*Yv33 - 10*AbsYe33*ml032*Yv33 - 5*AbsYv11*ml032*Yv33 -& 
&  5*AbsYv22*ml032*Yv33 + 3*g1p2*ml032*Yv33 + 15*g2p2*ml032*Yv33 - 5*Abslam*ms2*Yv33 -   & 
&  5*AbsYv11*mvR012*Yv33 - 5*AbsYv22*mvR022*Yv33 - 5*Abslam*mvR032*Yv33 - 5*AbsYe33*mvR032*Yv33 -& 
&  5*AbsYv11*mvR032*Yv33 - 5*AbsYv22*mvR032*Yv33 + 3*g1p2*mvR032*Yv33 + 15*g2p2*mvR032*Yv33 +& 
&  10*gpp2*mHu2*QHup2*Yv33 + 10*gpp2*ml032*QHup2*Yv33 + 10*gpp2*mvR032*QHup2*Yv33 +      & 
&  10*gpp2*mHu2*Ql3p2*Yv33 + 10*gpp2*ml032*Ql3p2*Yv33 + 10*gpp2*mvR032*Ql3p2*Yv33 -      & 
&  10*gpp2*mHu2*Qv3p2*Yv33 - 10*gpp2*ml032*Qv3p2*Yv33 - 10*gpp2*mvR032*Qv3p2*Yv33 -      & 
&  15*TrCTuTpTu*Yv33 - 15*Trmq2adjYuYu*Yv33 - 15*Trmu2YuadjYu*Yv33 - 30*mHu2*TrYuadjYu*Yv33 -& 
&  15*ml032*TrYuadjYu*Yv33 - 15*mvR032*TrYuadjYu*Yv33 + 3*g1p2*Conjg(M1)*(2*M1*Yv33 -    & 
&  TYv33) + 15*g2p2*Conjg(M2)*(2*M2*Yv33 - TYv33) - 15*TrCTuTpYu*TYv33 - 5*Ye33*Conjg(TYe33)*TYv33 -& 
&  5*Yv11*Conjg(TYv11)*TYv33 - 5*Yv22*Conjg(TYv22)*TYv33 - 5*lam*Conjg(Tlam)*TYv33))/5._dp -& 
&  (4*Conjg(TYv33)*(3*g1p2*M1*Yv33 + 15*g2p2*M2*Yv33 + 10*gpp2*M4*QHup2*Yv33 +           & 
&  10*gpp2*M4*Ql3p2*Yv33 - 10*gpp2*M4*Qv3p2*Yv33 + 15*TradjYuTu*Yv33 + 5*Yv33*Conjg(Yv22)*TYv22 +& 
&  5*Abslam*TYv33 + 5*AbsYv22*TYv33 - 3*g1p2*TYv33 - 15*g2p2*TYv33 - 10*gpp2*QHup2*TYv33 -& 
&  10*gpp2*Ql3p2*TYv33 + 10*gpp2*Qv3p2*TYv33 + 15*TrYuadjYu*TYv33 + 5*Conjg(Ye33)*(Yv33*TYe33 +& 
&  Ye33*TYv33) + 5*Conjg(Yv11)*(Yv33*TYv11 + Yv11*TYv33) + 5*Yv33*Conjg(lam)*Tlam))/5._dp  
betamvR0322 =  betamvR0322+ 8*gp*Qv3*(gp*Qv3*Tr2U1(4,4) + Tr3(4))

 
DmvR032 = oo16pi2*( betamvR0321 + oo16pi2 * betamvR0322 ) 

 
Else 
DmvR032 = oo16pi2* betamvR0321 
End If 
 
 
!-------------------- 
! ms2 
!-------------------- 
 
betams21  = 4._dp*(AbsTlam) + 4*Abslam*(mHd2 + mHu2 + ms2) - 8*AbsM4*gpp2*Qsp2 +      & 
&  2*gp*Qs*Tr1(4)

 
 
If (TwoLoopRGE) Then 
betams22 = -16*Clamp2*lamp2*(mHd2 + mHu2 + ms2) + 8*Conjg(M4)*(3*gpp4*M4*Qsp2*(9._dp*(Qdp2) +    & 
&  Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) +               & 
&  2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2) + 3._dp*(Qsp2) + 9._dp*(Qup2) +         & 
&  Qv1p2 + Qv2p2 + Qv3p2) + gpp2*(QHdp2 + QHup2 - Qsp2)*Conjg(lam)*(2*M4*lam -           & 
&  Tlam)) + Conjg(lam)*(-32*AbsTlam*lam - 4*AbsTYe11*lam - 4*AbsTYe22*lam -              & 
&  4*AbsTYe33*lam - 4*AbsTYv11*lam - 4*AbsTYv22*lam - 4*AbsTYv33*lam - 4*AbsYe11*me012*lam -& 
&  4*AbsYe22*me022*lam - 4*AbsYe33*me032*lam - 8*AbsYe11*mHd2*lam - 8*AbsYe22*mHd2*lam - & 
&  8*AbsYe33*mHd2*lam - 4*AbsYv11*mHd2*lam - 4*AbsYv22*mHd2*lam - 4*AbsYv33*mHd2*lam +   & 
&  (12*g1p2*mHd2*lam)/5._dp + 12*g2p2*mHd2*lam - 4*AbsYe11*mHu2*lam - 4*AbsYe22*mHu2*lam -& 
&  4*AbsYe33*mHu2*lam - 8*AbsYv11*mHu2*lam - 8*AbsYv22*mHu2*lam - 8*AbsYv33*mHu2*lam +   & 
&  (12*g1p2*mHu2*lam)/5._dp + 12*g2p2*mHu2*lam - 4*AbsYe11*ml012*lam - 4*AbsYv11*ml012*lam -& 
&  4*AbsYe22*ml022*lam - 4*AbsYv22*ml022*lam - 4*AbsYe33*ml032*lam - 4*AbsYv33*ml032*lam -& 
&  4*AbsYe11*ms2*lam - 4*AbsYe22*ms2*lam - 4*AbsYe33*ms2*lam - 4*AbsYv11*ms2*lam -       & 
&  4*AbsYv22*ms2*lam - 4*AbsYv33*ms2*lam + (12*g1p2*ms2*lam)/5._dp + 12*g2p2*ms2*lam -   & 
&  4*AbsYv11*mvR012*lam - 4*AbsYv22*mvR022*lam - 4*AbsYv33*mvR032*lam + 8*gpp2*mHd2*QHdp2*lam +& 
&  8*gpp2*mHu2*QHdp2*lam + 8*gpp2*ms2*QHdp2*lam + 8*gpp2*mHd2*QHup2*lam + 8*gpp2*mHu2*QHup2*lam +& 
&  8*gpp2*ms2*QHup2*lam - 8*gpp2*mHd2*Qsp2*lam - 8*gpp2*mHu2*Qsp2*lam - 8*gpp2*ms2*Qsp2*lam -& 
&  12*TrCTdTpTd*lam - 12*TrCTuTpTu*lam - 12*Trmd2YdadjYd*lam - 12*Trmq2adjYdYd*lam -     & 
&  12*Trmq2adjYuYu*lam - 12*Trmu2YuadjYu*lam - 24*mHd2*TrYdadjYd*lam - 12*mHu2*TrYdadjYd*lam -& 
&  12*ms2*TrYdadjYd*lam - 12*mHd2*TrYuadjYu*lam - 24*mHu2*TrYuadjYu*lam - 12*ms2*TrYuadjYu*lam +& 
&  (12*g1p2*Conjg(M1)*(2*M1*lam - Tlam))/5._dp + 12*g2p2*Conjg(M2)*(2*M2*lam -           & 
&  Tlam) - 12*TrCTdTpYd*Tlam - 12*TrCTuTpYu*Tlam - 4*Ye11*Conjg(TYe11)*Tlam -            & 
&  4*Ye22*Conjg(TYe22)*Tlam - 4*Ye33*Conjg(TYe33)*Tlam - 4*Yv11*Conjg(TYv11)*Tlam -      & 
&  4*Yv22*Conjg(TYv22)*Tlam - 4*Yv33*Conjg(TYv33)*Tlam) - (4*Conjg(Tlam)*(3*g1p2*M1*lam +& 
&  15*g2p2*M2*lam + 10*gpp2*M4*QHdp2*lam + 10*gpp2*M4*QHup2*lam - 10*gpp2*M4*Qsp2*lam +  & 
&  15*TradjYdTd*lam + 15*TradjYuTu*lam + 5*lam*Conjg(Ye33)*TYe33 + 5*lam*Conjg(Yv11)*TYv11 +& 
&  5*lam*Conjg(Yv22)*TYv22 + 5*lam*Conjg(Yv33)*TYv33 + 5*AbsYe33*Tlam + 5*AbsYv11*Tlam + & 
&  5*AbsYv22*Tlam + 5*AbsYv33*Tlam - 3*g1p2*Tlam - 15*g2p2*Tlam - 10*gpp2*QHdp2*Tlam -   & 
&  10*gpp2*QHup2*Tlam + 10*gpp2*Qsp2*Tlam + 15*TrYdadjYd*Tlam + 15*TrYuadjYu*Tlam +      & 
&  5*Conjg(Ye11)*(lam*TYe11 + Ye11*Tlam) + 5*Conjg(Ye22)*(lam*TYe22 + Ye22*Tlam)))/5._dp  
betams22 =  betams22+ 8*gp*Qs*(gp*Qs*Tr2U1(4,4) + Tr3(4))

 
Dms2 = oo16pi2*( betams21 + oo16pi2 * betams22 ) 

 
Else 
Dms2 = oo16pi2* betams21 
End If 
 
 
!-------------------- 
! M1 
!-------------------- 
 
betaM11  = (66*g1p2*M1)/5._dp

 
 
If (TwoLoopRGE) Then 
betaM12 = (2*g1p2*(-30*Abslam*M1 - 90*AbsYe33*M1 - 30*AbsYv11*M1 - 30*AbsYv22*M1 -              & 
&  30*AbsYv33*M1 + 398*g1p2*M1 + 135*g2p2*M1 + 440*g3p2*M1 + 440*g3p2*M3 +               & 
&  135*g2p2*M2 + 60*gpp2*M1*Qdp2 + 60*gpp2*M4*Qdp2 + 60*gpp2*M1*Qe1p2 + 60*gpp2*M4*Qe1p2 +& 
&  60*gpp2*M1*Qe2p2 + 60*gpp2*M4*Qe2p2 + 60*gpp2*M1*Qe3p2 + 60*gpp2*M4*Qe3p2 +           & 
&  30*gpp2*M1*QHdp2 + 30*gpp2*M4*QHdp2 + 30*gpp2*M1*QHup2 + 30*gpp2*M4*QHup2 +           & 
&  30*gpp2*M1*Ql1p2 + 30*gpp2*M4*Ql1p2 + 30*gpp2*M1*Ql2p2 + 30*gpp2*M4*Ql2p2 +           & 
&  30*gpp2*M1*Ql3p2 + 30*gpp2*M4*Ql3p2 + 30*gpp2*M1*Qqp2 + 30*gpp2*M4*Qqp2 +             & 
&  240*gpp2*M1*Qup2 + 240*gpp2*M4*Qup2 + 70._dp*(TradjYdTd) + 130._dp*(TradjYuTu) -      & 
&  70*M1*TrYdadjYd - 130*M1*TrYuadjYu - 90*Conjg(Ye11)*(M1*Ye11 - TYe11) -               & 
&  90*Conjg(Ye22)*(M1*Ye22 - TYe22) + 90*Conjg(Ye33)*TYe33 + 30*Conjg(Yv11)*TYv11 +      & 
&  30*Conjg(Yv22)*TYv22 + 30*Conjg(Yv33)*TYv33 + 30*Conjg(lam)*Tlam))/25._dp

 
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
betaM22 = (2*g2p2*(9*g1p2*M1 + 120*g3p2*M3 - 10*Abslam*M2 - 10*AbsYe33*M2 - 10*AbsYv11*M2 -     & 
&  10*AbsYv22*M2 - 10*AbsYv33*M2 + 9*g1p2*M2 + 250*g2p2*M2 + 120*g3p2*M2 +               & 
&  10*gpp2*M4*QHdp2 + 10*gpp2*M2*QHdp2 + 10*gpp2*M4*QHup2 + 10*gpp2*M2*QHup2 +           & 
&  10*gpp2*M4*Ql1p2 + 10*gpp2*M2*Ql1p2 + 10*gpp2*M4*Ql2p2 + 10*gpp2*M2*Ql2p2 +           & 
&  10*gpp2*M4*Ql3p2 + 10*gpp2*M2*Ql3p2 + 90*gpp2*M4*Qqp2 + 90*gpp2*M2*Qqp2 +             & 
&  30._dp*(TradjYdTd) + 30._dp*(TradjYuTu) - 30*M2*TrYdadjYd - 30*M2*TrYuadjYu -         & 
&  10*Conjg(Ye11)*(M2*Ye11 - TYe11) - 10*Conjg(Ye22)*(M2*Ye22 - TYe22) + 10*Conjg(Ye33)*TYe33 +& 
&  10*Conjg(Yv11)*TYv11 + 10*Conjg(Yv22)*TYv22 + 10*Conjg(Yv33)*TYv33 + 10*Conjg(lam)*Tlam))/5._dp

 
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
 
betaM41  = 2*gpp2*M4*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 + Qe3p2 + 2._dp*(QHdp2)            & 
&  + 2._dp*(QHup2) + 2._dp*(Ql1p2) + 2._dp*(Ql2p2) + 2._dp*(Ql3p2) + 18._dp*(Qqp2)       & 
&  + Qsp2 + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2)

 
 
If (TwoLoopRGE) Then 
betaM42 = (4*gpp2*(6*g1p2*M1*Qdp2 + 120*g3p2*M3*Qdp2 + 6*g1p2*M4*Qdp2 + 120*g3p2*M4*Qdp2 +      & 
&  180*gpp2*M4*Qdp4 + 6*g1p2*M1*Qe1p2 + 6*g1p2*M4*Qe1p2 + 20*gpp2*M4*Qe1p4 +             & 
&  6*g1p2*M1*Qe2p2 + 6*g1p2*M4*Qe2p2 + 20*gpp2*M4*Qe2p4 + 6*g1p2*M1*Qe3p2 -              & 
&  10*AbsYe33*M4*Qe3p2 + 6*g1p2*M4*Qe3p2 + 20*gpp2*M4*Qe3p4 + 3*g1p2*M1*QHdp2 -          & 
&  10*Abslam*M4*QHdp2 - 10*AbsYe33*M4*QHdp2 + 3*g1p2*M4*QHdp2 + 15*g2p2*M4*QHdp2 +       & 
&  15*g2p2*M2*QHdp2 + 40*gpp2*M4*QHdp4 + 3*g1p2*M1*QHup2 - 10*Abslam*M4*QHup2 -          & 
&  10*AbsYv11*M4*QHup2 - 10*AbsYv22*M4*QHup2 - 10*AbsYv33*M4*QHup2 + 3*g1p2*M4*QHup2 +   & 
&  15*g2p2*M4*QHup2 + 15*g2p2*M2*QHup2 + 40*gpp2*M4*QHup4 + 3*g1p2*M1*Ql1p2 -            & 
&  10*AbsYv11*M4*Ql1p2 + 3*g1p2*M4*Ql1p2 + 15*g2p2*M4*Ql1p2 + 15*g2p2*M2*Ql1p2 +         & 
&  40*gpp2*M4*Ql1p4 + 3*g1p2*M1*Ql2p2 - 10*AbsYv22*M4*Ql2p2 + 3*g1p2*M4*Ql2p2 +          & 
&  15*g2p2*M4*Ql2p2 + 15*g2p2*M2*Ql2p2 + 40*gpp2*M4*Ql2p4 + 3*g1p2*M1*Ql3p2 -            & 
&  10*AbsYe33*M4*Ql3p2 - 10*AbsYv33*M4*Ql3p2 + 3*g1p2*M4*Ql3p2 + 15*g2p2*M4*Ql3p2 +      & 
&  15*g2p2*M2*Ql3p2 + 40*gpp2*M4*Ql3p4 + 3*g1p2*M1*Qqp2 + 240*g3p2*M3*Qqp2 +             & 
&  3*g1p2*M4*Qqp2 + 135*g2p2*M4*Qqp2 + 240*g3p2*M4*Qqp2 + 135*g2p2*M2*Qqp2 +             & 
&  360*gpp2*M4*Qqp4 - 10*Abslam*M4*Qsp2 + 20*gpp2*M4*Qsp4 + 24*g1p2*M1*Qup2 +            & 
&  120*g3p2*M3*Qup2 + 24*g1p2*M4*Qup2 + 120*g3p2*M4*Qup2 + 180*gpp2*M4*Qup4 -            & 
&  10*AbsYv11*M4*Qv1p2 + 20*gpp2*M4*Qv1p4 - 10*AbsYv22*M4*Qv2p2 + 20*gpp2*M4*Qv2p4 -     & 
&  10*AbsYv33*M4*Qv3p2 + 20*gpp2*M4*Qv3p4 + 30*Qdp2*TradjYdTd + 30*QHdp2*TradjYdTd +     & 
&  30*Qqp2*TradjYdTd + 30*QHup2*TradjYuTu + 30*Qqp2*TradjYuTu + 30*Qup2*TradjYuTu -      & 
&  30*M4*Qdp2*TrYdadjYd - 30*M4*QHdp2*TrYdadjYd - 30*M4*Qqp2*TrYdadjYd - 30*M4*QHup2*TrYuadjYu -& 
&  30*M4*Qqp2*TrYuadjYu - 30*M4*Qup2*TrYuadjYu - 10*(Qe1p2 + QHdp2 + Ql1p2)*Conjg(Ye11)*(M4*Ye11 -& 
&  TYe11) - 10*(Qe2p2 + QHdp2 + Ql2p2)*Conjg(Ye22)*(M4*Ye22 - TYe22) + 10*Qe3p2*Conjg(Ye33)*TYe33 +& 
&  10*QHdp2*Conjg(Ye33)*TYe33 + 10*Ql3p2*Conjg(Ye33)*TYe33 + 10*QHup2*Conjg(Yv11)*TYv11 +& 
&  10*Ql1p2*Conjg(Yv11)*TYv11 + 10*Qv1p2*Conjg(Yv11)*TYv11 + 10*QHup2*Conjg(Yv22)*TYv22 +& 
&  10*Ql2p2*Conjg(Yv22)*TYv22 + 10*Qv2p2*Conjg(Yv22)*TYv22 + 10*QHup2*Conjg(Yv33)*TYv33 +& 
&  10*Ql3p2*Conjg(Yv33)*TYv33 + 10*Qv3p2*Conjg(Yv33)*TYv33 + 10*QHdp2*Conjg(lam)*Tlam +  & 
&  10*QHup2*Conjg(lam)*Tlam + 10*Qsp2*Conjg(lam)*Tlam))/5._dp

 
DM4 = oo16pi2*( betaM41 + oo16pi2 * betaM42 ) 

 
Else 
DM4 = oo16pi2* betaM41 
End If 
 
 
Call Chop(DM4) 

!-------------------- 
! Tep 
!-------------------- 
 
betaTep1  = Abslam*Tep + 5*AbsYe11*Tep + 4*AbsYv11*Tep + AbsYv22*Tep + AbsYv33*Tep -  & 
&  (6*g1p2*Tep)/5._dp - 2*gpp2*Qe1p2*Tep + 2*gpp2*QHup2*Tep - 2*gpp2*Ql1p2*Tep +         & 
&  3*Tep*TrYuadjYu + 2*Tmup*Ye11*Conjg(Ye22)

 
 
If (TwoLoopRGE) Then 
betaTep2 = 0

 
DTep = oo16pi2*( betaTep1 + oo16pi2 * betaTep2 ) 

 
Else 
DTep = oo16pi2* betaTep1 
End If 
 
 
Call Chop(DTep) 

!-------------------- 
! Tmup 
!-------------------- 
 
betaTmup1  = Abslam*Tmup + 5*AbsYe22*Tmup + AbsYv11*Tmup + 4*AbsYv22*Tmup +           & 
&  AbsYv33*Tmup - (6*g1p2*Tmup)/5._dp - 2*gpp2*Qe2p2*Tmup + 2*gpp2*QHup2*Tmup -          & 
&  2*gpp2*Ql2p2*Tmup + 3*Tmup*TrYuadjYu + 2*Tep*Ye22*Conjg(Ye11)

 
 
If (TwoLoopRGE) Then 
betaTmup2 = 0

 
DTmup = oo16pi2*( betaTmup1 + oo16pi2 * betaTmup2 ) 

 
Else 
DTmup = oo16pi2* betaTmup1 
End If 
 
 
Call Chop(DTmup) 

!-------------------- 
! vd 
!-------------------- 
 
betavd1  = (vd*(-20._dp*(Abslam) - 20._dp*(AbsYe11) - 20._dp*(AbsYe22) -              & 
&  20._dp*(AbsYe33) + 3._dp*(g1p2) + 15._dp*(g2p2) + 20*gpp2*QHdp2 - 60._dp*(TrYdadjYd)  & 
&  + 3*g1p2*Xi + 15*g2p2*Xi + 20*gpp2*QHdp2*Xi))/20._dp

 
 
If (TwoLoopRGE) Then 
betavd2 = Abslam*AbsYv11*vd + Abslam*AbsYv22*vd + Abslam*AbsYv33*vd + AbsYe33*AbsYv33*vd -      & 
&  (6*AbsYe33*g1p2*vd)/5._dp - (207*g1p4*vd)/200._dp - (9*g1p2*g2p2*vd)/20._dp -         & 
&  3*g2p4*vd + 3*Clamp2*lamp2*vd - 2*AbsYe33*gpp2*Qe3p2*vd + (9*g1p2*gpp2*Qd*QHd*vd)/5._dp +& 
&  (3*g1p2*gpp2*Qe1*QHd*vd)/5._dp + (3*g1p2*gpp2*Qe2*QHd*vd)/5._dp + (3*g1p2*gpp2*Qe3*QHd*vd)/5._dp +& 
&  2*Abslam*gpp2*QHdp2*vd + 2*AbsYe33*gpp2*QHdp2*vd - (6*g1p2*gpp2*QHdp2*vd)/5._dp -     & 
&  3*g2p2*gpp2*QHdp2*vd - 9*gpp4*Qdp2*QHdp2*vd - gpp4*Qe1p2*QHdp2*vd - gpp4*Qe2p2*QHdp2*vd -& 
&  gpp4*Qe3p2*QHdp2*vd - 4*gpp4*QHdp4*vd + (3*g1p2*gpp2*QHd*QHu*vd)/5._dp -              & 
&  2*Abslam*gpp2*QHup2*vd - 2*gpp4*QHdp2*QHup2*vd - (3*g1p2*gpp2*QHd*Ql1*vd)/5._dp -     & 
&  2*gpp4*QHdp2*Ql1p2*vd - (3*g1p2*gpp2*QHd*Ql2*vd)/5._dp - 2*gpp4*QHdp2*Ql2p2*vd -      & 
&  (3*g1p2*gpp2*QHd*Ql3*vd)/5._dp - 2*AbsYe33*gpp2*Ql3p2*vd - 2*gpp4*QHdp2*Ql3p2*vd +    & 
&  (9*g1p2*gpp2*QHd*Qq*vd)/5._dp - 18*gpp4*QHdp2*Qqp2*vd - 2*Abslam*gpp2*Qsp2*vd -       & 
&  gpp4*QHdp2*Qsp2*vd - (18*g1p2*gpp2*QHd*Qu*vd)/5._dp - 9*gpp4*QHdp2*Qup2*vd -          & 
&  gpp4*QHdp2*Qv1p2*vd - gpp4*QHdp2*Qv2p2*vd - gpp4*QHdp2*Qv3p2*vd + (2*g1p2*TrYdadjYd*vd)/5._dp -& 
&  16*g3p2*TrYdadjYd*vd - 6*gpp2*Qdp2*TrYdadjYd*vd + 6*gpp2*QHdp2*TrYdadjYd*vd -         & 
&  6*gpp2*Qqp2*TrYdadjYd*vd + 9*TrYdadjYdYdadjYd*vd + 3*TrYdadjYuYuadjYd*vd +            & 
&  3*Abslam*TrYuadjYu*vd - (3*Abslam*g1p2*vd*Xi)/10._dp - (3*AbsYe33*g1p2*vd*Xi)/10._dp -& 
&  (9*g1p4*vd*Xi)/200._dp - (3*Abslam*g2p2*vd*Xi)/2._dp - (3*AbsYe33*g2p2*vd*Xi)/2._dp - & 
&  (9*g1p2*g2p2*vd*Xi)/20._dp + (13*g2p4*vd*Xi)/8._dp - 2*Abslam*gpp2*QHdp2*vd*Xi -      & 
&  2*AbsYe33*gpp2*QHdp2*vd*Xi - (3*g1p2*gpp2*QHdp2*vd*Xi)/5._dp - 3*g2p2*gpp2*QHdp2*vd*Xi -& 
&  2*gpp4*QHdp4*vd*Xi - (9*g1p2*TrYdadjYd*vd*Xi)/10._dp - (9*g2p2*TrYdadjYd*vd*Xi)/2._dp -& 
&  6*gpp2*QHdp2*TrYdadjYd*vd*Xi - (AbsYe11*vd*(-10._dp*(AbsYv11) + 20*gpp2*(Qe1p2 +      & 
&  Ql1p2 + QHdp2*(-1 + Xi)) + 15*g2p2*Xi + 3*g1p2*(4 + Xi)))/10._dp - (AbsYe22*vd*(-     & 
& 10._dp*(AbsYv22) + 20*gpp2*(Qe2p2 + Ql2p2 + QHdp2*(-1 + Xi)) + 15*g2p2*Xi +            & 
&  3*g1p2*(4 + Xi)))/10._dp + (9*g1p4*vd*Xip2)/200._dp + (9*g1p2*g2p2*vd*Xip2)/20._dp  
betavd2 =  betavd2+ (3*g1p2*gpp2*QHdp2*vd*Xip2)/5._dp + 3*g2p2*gpp2*QHdp2*vd*Xip2 + 2*gpp4*QHdp4*vd*Xip2 +& 
&  3*CYe11p2*vd*Ye11p2 + 3*CYe22p2*vd*Ye22p2 + 3*CYe33p2*vd*Ye33p2

 
Dvd = oo16pi2*( betavd1 + oo16pi2 * betavd2 ) 

 
Else 
Dvd = oo16pi2* betavd1 
End If 
 
 
!-------------------- 
! vu 
!-------------------- 
 
betavu1  = (vu*(-20._dp*(Abslam) - 20._dp*(AbsYv11) - 20._dp*(AbsYv22) -              & 
&  20._dp*(AbsYv33) + 3._dp*(g1p2) + 15._dp*(g2p2) + 20*gpp2*QHup2 - 60._dp*(TrYuadjYu)  & 
&  + 3*g1p2*Xi + 15*g2p2*Xi + 20*gpp2*QHup2*Xi))/20._dp

 
 
If (TwoLoopRGE) Then 
betavu2 = Abslam*AbsYe11*vu + Abslam*AbsYe22*vu + Abslam*AbsYe33*vu + AbsYe33*AbsYv33*vu -      & 
&  (207*g1p4*vu)/200._dp - (9*g1p2*g2p2*vu)/20._dp - 3*g2p4*vu + 3*Clamp2*lamp2*vu -     & 
&  2*Abslam*gpp2*QHdp2*vu - (9*g1p2*gpp2*Qd*QHu*vu)/5._dp - (3*g1p2*gpp2*Qe1*QHu*vu)/5._dp -& 
&  (3*g1p2*gpp2*Qe2*QHu*vu)/5._dp - (3*g1p2*gpp2*Qe3*QHu*vu)/5._dp + (3*g1p2*gpp2*QHd*QHu*vu)/5._dp +& 
&  2*Abslam*gpp2*QHup2*vu + 2*AbsYv33*gpp2*QHup2*vu - (6*g1p2*gpp2*QHup2*vu)/5._dp -     & 
&  3*g2p2*gpp2*QHup2*vu - 9*gpp4*Qdp2*QHup2*vu - gpp4*Qe1p2*QHup2*vu - gpp4*Qe2p2*QHup2*vu -& 
&  gpp4*Qe3p2*QHup2*vu - 2*gpp4*QHdp2*QHup2*vu - 4*gpp4*QHup4*vu + (3*g1p2*gpp2*QHu*Ql1*vu)/5._dp -& 
&  2*gpp4*QHup2*Ql1p2*vu + (3*g1p2*gpp2*QHu*Ql2*vu)/5._dp - 2*gpp4*QHup2*Ql2p2*vu +      & 
&  (3*g1p2*gpp2*QHu*Ql3*vu)/5._dp - 2*AbsYv33*gpp2*Ql3p2*vu - 2*gpp4*QHup2*Ql3p2*vu -    & 
&  (9*g1p2*gpp2*QHu*Qq*vu)/5._dp - 18*gpp4*QHup2*Qqp2*vu - 2*Abslam*gpp2*Qsp2*vu -       & 
&  gpp4*QHup2*Qsp2*vu + (18*g1p2*gpp2*QHu*Qu*vu)/5._dp - 9*gpp4*QHup2*Qup2*vu -          & 
&  gpp4*QHup2*Qv1p2*vu - gpp4*QHup2*Qv2p2*vu - 2*AbsYv33*gpp2*Qv3p2*vu - gpp4*QHup2*Qv3p2*vu +& 
&  3*Abslam*TrYdadjYd*vu + 3*TrYdadjYuYuadjYd*vu - (4*g1p2*TrYuadjYu*vu)/5._dp -         & 
&  16*g3p2*TrYuadjYu*vu + 6*gpp2*QHup2*TrYuadjYu*vu - 6*gpp2*Qqp2*TrYuadjYu*vu -         & 
&  6*gpp2*Qup2*TrYuadjYu*vu + 9*TrYuadjYuYuadjYu*vu - (3*Abslam*g1p2*vu*Xi)/10._dp -     & 
&  (3*AbsYv33*g1p2*vu*Xi)/10._dp - (9*g1p4*vu*Xi)/200._dp - (3*Abslam*g2p2*vu*Xi)/2._dp -& 
&  (3*AbsYv33*g2p2*vu*Xi)/2._dp - (9*g1p2*g2p2*vu*Xi)/20._dp + (13*g2p4*vu*Xi)/8._dp -   & 
&  2*Abslam*gpp2*QHup2*vu*Xi - 2*AbsYv33*gpp2*QHup2*vu*Xi - (3*g1p2*gpp2*QHup2*vu*Xi)/5._dp -& 
&  3*g2p2*gpp2*QHup2*vu*Xi - 2*gpp4*QHup4*vu*Xi - (9*g1p2*TrYuadjYu*vu*Xi)/10._dp -      & 
&  (9*g2p2*TrYuadjYu*vu*Xi)/2._dp - 6*gpp2*QHup2*TrYuadjYu*vu*Xi - (AbsYv11*vu*(-        & 
& 10._dp*(AbsYe11) + 20*gpp2*(Ql1p2 + Qv1p2 + QHup2*(-1 + Xi)) + 3*(g1p2 +               & 
&  5._dp*(g2p2))*Xi))/10._dp - (AbsYv22*vu*(-10._dp*(AbsYe22) + 20*gpp2*(Ql2p2 +         & 
&  Qv2p2 + QHup2*(-1 + Xi)) + 3*(g1p2 + 5._dp*(g2p2))*Xi))/10._dp + (9*g1p4*vu*Xip2)/200._dp  
betavu2 =  betavu2+ (9*g1p2*g2p2*vu*Xip2)/20._dp + (3*g1p2*gpp2*QHup2*vu*Xip2)/5._dp + 3*g2p2*gpp2*QHup2*vu*Xip2 +& 
&  2*gpp4*QHup4*vu*Xip2 + 3*CYv11p2*vu*Yv11p2 + 3*CYv22p2*vu*Yv22p2 + 3*CYv33p2*vu*Yv33p2

 
Dvu = oo16pi2*( betavu1 + oo16pi2 * betavu2 ) 

 
Else 
Dvu = oo16pi2* betavu1 
End If 
 
 
!-------------------- 
! vS 
!-------------------- 
 
betavS1  = vS*(-2._dp*(Abslam) + gpp2*Qsp2*(1 + Xi))

 
 
If (TwoLoopRGE) Then 
betavS2 = 4*Clamp2*lamp2*vS - (2*Abslam*vS*(-5._dp*(AbsYe11) - 5._dp*(AbsYe22) - 5._dp*(AbsYe33) -& 
&  5._dp*(AbsYv11) - 5._dp*(AbsYv22) - 5._dp*(AbsYv33) + 3._dp*(g1p2) + 15._dp*(g2p2) +  & 
&  10*gpp2*QHdp2 + 10*gpp2*QHup2 - 10*gpp2*Qsp2 - 15._dp*(TrYdadjYd) - 15._dp*(TrYuadjYu) +& 
&  10*gpp2*Qsp2*Xi))/5._dp - gpp4*Qsp2*vS*(9._dp*(Qdp2) + Qe1p2 + Qe2p2 + Qe3p2 +        & 
&  2._dp*(QHdp2) + 2._dp*(QHup2) + 2._dp*(Ql1p2) + 2._dp*(Ql2p2) + 2._dp*(Ql3p2) +       & 
&  18._dp*(Qqp2) + 3._dp*(Qsp2) + 9._dp*(Qup2) + Qv1p2 + Qv2p2 + Qv3p2 + 2*Qsp2*Xi -     & 
&  2*Qsp2*Xip2)

 
DvS = oo16pi2*( betavS1 + oo16pi2 * betavS2 ) 

 
Else 
DvS = oo16pi2* betavS1 
End If 
 
 
Call ParametersToG185(Dg1,Dg2,Dg3,Dgp,DYd,DYe11,DYe22,DYe33,Dlam,DYv11,               & 
& DYv22,DYv33,DYu,DTd,DTYe11,DTYe22,DTYe33,DTlam,DTYv11,DTYv22,DTYv33,DTu,               & 
& Dmq2,Dml012,Dml022,Dml032,DmHd2,DmHu2,Dmd2,Dmu2,Dme012,Dme022,Dme032,DmvR012,          & 
& DmvR022,DmvR032,Dms2,DM1,DM2,DM3,DM4,DTep,DTmup,Dvd,Dvu,DvS,f)

Iname = Iname - 1 
 
End Subroutine rge185  

End Module RGEs_NonUMSSMv4 
 
