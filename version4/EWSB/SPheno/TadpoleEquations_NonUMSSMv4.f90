! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 16:28 on 21.3.2021   
! ----------------------------------------------------------------------  
 
 
Module Tadpoles_NonUMSSMv4 
 
Use Model_Data_NonUMSSMv4 
Use TreeLevelMasses_NonUMSSMv4 
Use RGEs_NonUMSSMv4 
Use Control 
Use Settings 
Use Mathematics 

Contains 


Subroutine SolveTadpoleEquations(g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,              & 
& Yv22,Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,           & 
& ml032,mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,              & 
& M3,M4,Tep,Tmup,vd,vu,vS,Tad1Loop)

Implicit None
Real(dp),Intent(inout) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2,vd,vu,vS

Complex(dp),Intent(inout) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Complex(dp), Intent(in) :: Tad1Loop(3)

! For numerical routines 
Real(dp) :: gC(185)
logical :: broycheck 
Real(dp) :: broyx(3)

If (HighScaleModel.Eq."LOW") Then 
mHd2 = (-(g1**2*vd**3) - g2**2*vd**3 - 4*gp**2*QHd**2*vd**3 - 4*gp**2*QHd*Qs*vd*vS**2 +      & 
&  g1**2*vd*vu**2 + g2**2*vd*vu**2 - 4*gp**2*QHd*QHu*vd*vu**2 - 4*vd*(vS**2 +            & 
&  vu**2)*lam*Conjg(lam) + 2*sqrt(2._dp)*vS*vu*Conjg(Tlam) + 2*sqrt(2._dp)*vS*vu*Tlam +  & 
&  8*Tad1Loop(1))/(8._dp*vd)
mHu2 = (g1**2*vd**2*vu + g2**2*vd**2*vu - 4*gp**2*QHd*QHu*vd**2*vu - 4*gp**2*QHu*Qs*vS**2*vu -& 
&  g1**2*vu**3 - g2**2*vu**3 - 4*gp**2*QHu**2*vu**3 - 4*(vd**2 + vS**2)*vu*lam*Conjg(lam) +& 
&  2*sqrt(2._dp)*vd*vS*Conjg(Tlam) + 2*sqrt(2._dp)*vd*vS*Tlam + 8*Tad1Loop(2))/(8._dp*vu)
ms2 = (-2*gp**2*QHd*Qs*vd**2*vS - 2*gp**2*Qs**2*vS**3 - 2*gp**2*QHu*Qs*vS*vu**2 -           & 
&  2*vS*(vd**2 + vu**2)*lam*Conjg(lam) + sqrt(2._dp)*vd*vu*Conjg(Tlam) + sqrt(2._dp)*vd*vu*Tlam +& 
&  4*Tad1Loop(3))/(4._dp*vS)

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
mHd2 = (-(g1**2*vd**3) - g2**2*vd**3 - 4*gp**2*QHd**2*vd**3 - 4*gp**2*QHd*Qs*vd*vS**2 +      & 
&  g1**2*vd*vu**2 + g2**2*vd*vu**2 - 4*gp**2*QHd*QHu*vd*vu**2 - 4*vd*(vS**2 +            & 
&  vu**2)*lam*Conjg(lam) + 2*sqrt(2._dp)*vS*vu*Conjg(Tlam) + 2*sqrt(2._dp)*vS*vu*Tlam +  & 
&  8*Tad1Loop(1))/(8._dp*vd)
mHu2 = (g1**2*vd**2*vu + g2**2*vd**2*vu - 4*gp**2*QHd*QHu*vd**2*vu - 4*gp**2*QHu*Qs*vS**2*vu -& 
&  g1**2*vu**3 - g2**2*vu**3 - 4*gp**2*QHu**2*vu**3 - 4*(vd**2 + vS**2)*vu*lam*Conjg(lam) +& 
&  2*sqrt(2._dp)*vd*vS*Conjg(Tlam) + 2*sqrt(2._dp)*vd*vS*Tlam + 8*Tad1Loop(2))/(8._dp*vu)
ms2 = (-2*gp**2*QHd*Qs*vd**2*vS - 2*gp**2*Qs**2*vS**3 - 2*gp**2*QHu*Qs*vS*vu**2 -           & 
&  2*vS*(vd**2 + vu**2)*lam*Conjg(lam) + sqrt(2._dp)*vd*vu*Conjg(Tlam) + sqrt(2._dp)*vd*vu*Tlam +& 
&  4*Tad1Loop(3))/(4._dp*vS)

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

Subroutine CalculateTadpoles(g1,g2,g3,gp,Yd,Ye11,Ye22,Ye33,lam,Yv11,Yv22,             & 
& Yv33,Yu,Td,TYe11,TYe22,TYe33,Tlam,TYv11,TYv22,TYv33,Tu,mq2,ml012,ml022,ml032,          & 
& mHd2,mHu2,md2,mu2,me012,me022,me032,mvR012,mvR022,mvR032,ms2,M1,M2,M3,M4,              & 
& Tep,Tmup,vd,vu,vS,Tad1Loop,TadpoleValues)

Real(dp),Intent(in) :: g1,g2,g3,gp,ml012,ml022,ml032,mHd2,mHu2,me012,me022,me032,mvR012,mvR022,              & 
& mvR032,ms2,vd,vu,vS

Complex(dp),Intent(in) :: Yd(3,3),Ye11,Ye22,Ye33,lam,Yv11,Yv22,Yv33,Yu(3,3),Td(3,3),TYe11,TYe22,TYe33,          & 
& Tlam,TYv11,TYv22,TYv33,Tu(3,3),mq2(3,3),md2(3,3),mu2(3,3),M1,M2,M3,M4,Tep,Tmup

Complex(dp), Intent(in) :: Tad1Loop(3)

Real(dp), Intent(out) :: TadpoleValues(3)

TadpoleValues(1) = Real(((g1**2 + g2**2 + 4*gp**2*QHd**2)*vd**3 + vd*(8._dp*(mHd2)    & 
&  - vu**2*(g1**2 + g2**2 - 4*gp**2*QHd*QHu - 4*lam*Conjg(lam)) + 4*vS**2*(gp**2*QHd*Qs + lam*Conjg(lam)))& 
&  - 2*sqrt(2._dp)*vS*vu*(Conjg(Tlam) + Tlam))/8._dp - Tad1Loop(1),dp) 
TadpoleValues(2) = Real((vu*(8._dp*(mHu2) + g1**2*vu**2 + g2**2*vu**2 + 4*gp**2*QHu**2*vu**2 - vd**2*(g1**2 + g2**2 - 4*gp**2*QHd*QHu - 4*lam*Conjg(lam))& 
&  + 4*vS**2*(gp**2*QHu*Qs + lam*Conjg(lam))) - 2*sqrt(2._dp)*vd*vS*Conjg(Tlam)          & 
&  - 2*sqrt(2._dp)*vd*vS*Tlam)/8._dp - Tad1Loop(2),dp) 
TadpoleValues(3) = Real((2*gp**2*Qs**2*vS**3 + 2*vS*(2._dp*(ms2) + vd**2*(gp**2*QHd*Qs + lam*Conjg(lam))& 
&  + vu**2*(gp**2*QHu*Qs + lam*Conjg(lam))) - sqrt(2._dp)*vd*vu*(Conjg(Tlam)             & 
&  + Tlam))/4._dp - Tad1Loop(3),dp) 
End Subroutine CalculateTadpoles 

End Module Tadpoles_NonUMSSMv4 
 
