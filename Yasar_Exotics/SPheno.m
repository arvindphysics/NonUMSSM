(* ::Package:: *)

MINPAR={{1,m0},
             {2,m12},
             {3,TanBeta},
             {5,Azero}};

EXTPAR = {
   {61, LambdaInput},
   {62, KappaInput},
   {63, ALambdaInput},
   {64, AKappaInput},
   {65, vSInput},
   {201, Qq},
   {202, Ql1},
   {203, Ql2},
   {204, Ql3},
   {205, QHd},
   {206, QHu},
   {207, Qd},
   {208, Qu},
   {209, Qe1},
   {210, Qe2},
   {211, Qe3},
   {212, Qs},
   {213, Qv1},
   {214, Qv2},
   {215, Qv3},
   {216, QDx},
   {217, QDxbar}       };


RealParameters = {TanBeta,m0};

ParametersToSolveTadpoles = {mHd2,mHu2,ms2};

RenormalizationScaleFirstGuess = m0^2 + 4 m12^2;

RenormalizationScale = MSu[1]*MSu[6];

ConditionGUTscale = g1 == g2;

BoundaryHighScale={
{g1, Sqrt[(g1^2 + g2^2)/2]},
{g2, g1},
{gp, g1},
{gpg1,0},
{g1gp,0},
{T[Ye33], Azero*Ye33},
{T[Yv11], Azero*Yv11},
{T[Yv22], Azero*Yv22},
{T[Yv33], Azero*Yv33},
{T[Yd], Azero*Yd},
{T[Yu], Azero*Yu},
{mq2, DIAGONAL m0^2},
{ml012, m0^2},
{ml022, m0^2},
{ml032, m0^2},
{mDx2, DIAGONAL m0^2},
{mDxbar2, DIAGONAL m0^2},
{md2, DIAGONAL m0^2},
{mu2, DIAGONAL m0^2},
{me012, m0^2},
{me022, m0^2},
{me032, m0^2},
{mvR012, m0^2},
{mvR022, m0^2},
{mvR032, m0^2},
{T[\[Kappa]], AKappaInput \[Kappa]},
{T[\[Lambda]], ALambdaInput \[Lambda]},
{MassB, m12},
{MassWB,m12},
{MassG,m12},
{MassU,m12}
};

BoundarySUSYScale = {
{Tep, LHInput[Tep]},
{Tmup, LHInput[Tmup]},
{T[Ye11], LHInput[T[Ye11]]},
{T[Ye22], LHInput[T[Ye22]]},
{Ye11, LHInput[Ye11]},
{Ye22, LHInput[Ye22]},
{Ye33, LHInput[Ye33]},
{Yv11, LHInput[Yv11]},
{Yv22, LHInput[Yv22]},
{Yv33, LHInput[Yv33]},
{vS, vSInput},
{\[Kappa],  DIAGONAL KappaInput}, 
{\[Lambda], LambdaInput}
};

BoundaryLowScaleInput={
 {vd,Sqrt[4 mz2/(g1^2+g2^2)]*Cos[ArcTan[TanBeta]]},
 {vu,Sqrt[4 mz2/(g1^2+g2^2)]*Sin[ArcTan[TanBeta]]}
};

DEFINITION[MatchingConditions]= {
 {Yu, YuSM*vSM/vu},
 {Yd, YdSM*vSM/vd},
 {Ye, 0.0},
 {g1, g1SM},
 {g2, g2SM},
 {g3, g3SM},
 {vd,vSM*Cos[ArcTan[TanBeta]]},
 {vu,vSM*Sin[ArcTan[TanBeta]]}
 };


QuadruplePrecision = {};


ListDecayParticles = Automatic;
ListDecayParticles3B = Automatic;

DefaultInputValues = {m0 -> 2000, m12 -> 400, TanBeta->30,  Azero -> 2500,  LambdaInput -> 0.04, ALambdaInput -> 2800, vSInput -> 3000,\
Qq1->1./(2 Sqrt[6]), Qq2->1./(2 Sqrt[6]), Qq3->1./(2 Sqrt[6]), Ql1->1./(2 Sqrt[6]), Ql2->1./(2 Sqrt[6]), Ql3->1./(2 Sqrt[6]),\
QHd-> -1./(Sqrt[6]), QHu-> -1./(Sqrt[6]), Qe1->1./(2 Sqrt[6]), Qe2->1./(2 Sqrt[6]), Qe3->1./(2 Sqrt[6]),Qd1->1./(2 Sqrt[6]),Qd2->1./(2 Sqrt[6]), Qd3->1./(2 Sqrt[6]),\
Qu1->1./(2 Sqrt[6]),  Qu2->1./(2 Sqrt[6]),Qu3->1./(2 Sqrt[6]),Qs->2./(Sqrt[6])  };
