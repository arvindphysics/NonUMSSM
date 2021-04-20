! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 16:43 on 4.2.2021   
! ----------------------------------------------------------------------  
 
 
Module Tadpoles_NonUMSSM 
 
Use Model_Data_NonUMSSM 
Use TreeLevelMasses_NonUMSSM 
Use RGEs_NonUMSSM 
Use Control 
Use Settings 
Use Mathematics 

Contains 


Subroutine SolveTadpoleEquations(g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yu,Td,             & 
& TYe11,TYe22,TYe33,Tlam,Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,               & 
& me022,me032,ms2,M1,M2,M3,M4,Tdp,Tep,Tmup,vd,vu,vS,Tad1Loop)

Implicit None
Real(dp),Intent(inout) :: g1,g2,g3,gp,lam,Tlam,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,ms2,vd,vu,vS

Complex(dp),Intent(inout) :: Yd(3,3),Ye11,Ye22,Ye33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,Tu(3,3),mq2(3,3),            & 
& md2(3,3),mu2(3,3),M1,M2,M3,M4,Tdp(3,3),Tep,Tmup

Complex(dp), Intent(in) :: Tad1Loop(3)

! For numerical routines 
Real(dp) :: gC(186)
logical :: broycheck 
Real(dp) :: broyx(3)

If (HighScaleModel.Eq."LOW") Then 
mHd2 = -(g2**2*vd**3 + 4*gp**2*QHd**2*vd**3 + 4*gp**2*QHd*Qs*vd*vS**2 - g2**2*vd*vu**2 +     & 
&  4*gp**2*QHd*QHu*vd*vu**2 + g1**2*(vd**3 - vd*vu**2) + 4*vd*vS**2*lam**2 +             & 
&  4*vd*vu**2*lam**2 - 4*sqrt(2._dp)*vS*vu*Tlam - 8*Tad1Loop(1))/(8._dp*vd)
mHu2 = (g2**2*vd**2*vu - 4*gp**2*QHd*QHu*vd**2*vu - 4*gp**2*QHu*Qs*vS**2*vu - g2**2*vu**3 -  & 
&  4*gp**2*QHu**2*vu**3 + g1**2*vu*(vd**2 - vu**2) - 4*vd**2*vu*lam**2 - 4*vS**2*vu*lam**2 +& 
&  4*sqrt(2._dp)*vd*vS*Tlam + 8*Tad1Loop(2))/(8._dp*vu)
ms2 = -(gp**2*Qs*vS*(QHd*vd**2 + Qs*vS**2 + QHu*vu**2) + vd**2*vS*lam**2 + vS*vu**2*lam**2 -& 
&  sqrt(2._dp)*vd*vu*Tlam - 2*Tad1Loop(3))/(2._dp*vS)

 ! ----------- Check solutions for consistency  -------- 

 ! Check for NaNs 
If (mHd2.ne.mHd2) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for mHd2" 
   Call TerminateProgram  
 End If 
 If (mHu2.ne.mHu2) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for mHu2" 
   Call TerminateProgram  
 End If 
 If (ms2.ne.ms2) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for ms2" 
   Call TerminateProgram  
 End If 
 Else 
mHd2 = -(g2**2*vd**3 + 4*gp**2*QHd**2*vd**3 + 4*gp**2*QHd*Qs*vd*vS**2 - g2**2*vd*vu**2 +     & 
&  4*gp**2*QHd*QHu*vd*vu**2 + g1**2*(vd**3 - vd*vu**2) + 4*vd*vS**2*lam**2 +             & 
&  4*vd*vu**2*lam**2 - 4*sqrt(2._dp)*vS*vu*Tlam - 8*Tad1Loop(1))/(8._dp*vd)
mHu2 = (g2**2*vd**2*vu - 4*gp**2*QHd*QHu*vd**2*vu - 4*gp**2*QHu*Qs*vS**2*vu - g2**2*vu**3 -  & 
&  4*gp**2*QHu**2*vu**3 + g1**2*vu*(vd**2 - vu**2) - 4*vd**2*vu*lam**2 - 4*vS**2*vu*lam**2 +& 
&  4*sqrt(2._dp)*vd*vS*Tlam + 8*Tad1Loop(2))/(8._dp*vu)
ms2 = -(gp**2*Qs*vS*(QHd*vd**2 + Qs*vS**2 + QHu*vu**2) + vd**2*vS*lam**2 + vS*vu**2*lam**2 -& 
&  sqrt(2._dp)*vd*vu*Tlam - 2*Tad1Loop(3))/(2._dp*vS)

 ! ----------- Check solutions for consistency  -------- 

 ! Check for NaNs 
If (mHd2.ne.mHd2) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for mHd2" 
   Call TerminateProgram  
 End If 
 If (mHu2.ne.mHu2) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for mHu2" 
   Call TerminateProgram  
 End If 
 If (ms2.ne.ms2) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for ms2" 
   Call TerminateProgram  
 End If 
 End if 
End Subroutine SolveTadpoleEquations

Subroutine CalculateTadpoles(g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yu,Td,TYe11,           & 
& TYe22,TYe33,Tlam,Tu,mq2,ml012,ml022,ml032,mHd2,mHu2,md2,mu2,me012,me022,               & 
& me032,ms2,M1,M2,M3,M4,Tdp,Tep,Tmup,vd,vu,vS,Tad1Loop,TadpoleValues)

Real(dp),Intent(in) :: g1,g2,g3,gp,lam,Tlam,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,ms2,vd,vu,vS

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,Tu(3,3),mq2(3,3),            & 
& md2(3,3),mu2(3,3),M1,M2,M3,M4,Tdp(3,3),Tep,Tmup

Complex(dp), Intent(in) :: Tad1Loop(3)

Real(dp), Intent(out) :: TadpoleValues(3)

TadpoleValues(1) = Real(((g1**2 + g2**2 + 4*gp**2*QHd**2)*vd**3 + vd*(8._dp*(mHd2)    & 
&  + 4*vS**2*(gp**2*QHd*Qs + lam**2) - vu**2*(g1**2 + g2**2 - 4*(gp**2*QHd*QHu + lam**2)))& 
&  - 4*sqrt(2._dp)*vS*vu*Tlam)/8._dp - Tad1Loop(1),dp) 
TadpoleValues(2) = Real((vu*(8._dp*(mHu2) + g1**2*vu**2 + g2**2*vu**2 + 4*gp**2*QHu**2*vu**2 + 4*vS**2*(gp**2*QHu*Qs + lam**2)& 
&  - vd**2*(g1**2 + g2**2 - 4*(gp**2*QHd*QHu + lam**2))) - 4*sqrt(2._dp)*vd*vS*Tlam)     & 
& /8._dp - Tad1Loop(2),dp) 
TadpoleValues(3) = Real((gp**2*Qs**2*vS**3 + vS*(2._dp*(ms2) + vd**2*(gp**2*QHd*Qs + lam**2)& 
&  + vu**2*(gp**2*QHu*Qs + lam**2)) - sqrt(2._dp)*vd*vu*Tlam)/2._dp - Tad1Loop(3),dp) 
End Subroutine CalculateTadpoles 

End Module Tadpoles_NonUMSSM 
 
