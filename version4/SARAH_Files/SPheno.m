(* ::Package:: *)

MINPAR={{1,m0},
             {2,m121},
	     {3,m122},
             {4,m123},
             {5,m124},
             {6,TanBeta},
             {7,Azero}};

EXTPAR = {
   {61, LambdaInput},
   {63, ALambdaInput},
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
   {215, Qv3}          };


RealParameters = {TanBeta,m0};

ParametersToSolveTadpoles = {mHd2,mHu2,ms2};

RenormalizationScaleFirstGuess = m0^2 + 4 m122^2;

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
{md2, DIAGONAL m0^2},
{mu2, DIAGONAL m0^2},
{T[\[Lambda]], ALambdaInput \[Lambda]},
{MassB, m121},
{MassWB,m122},
{MassG,m123},
{MassU,m124}
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
{\[Lambda], LambdaInput},
{ml012, LHInput[ml012]},
{ml022, LHInput[ml022]},
{ml032, LHInput[ml032]},
{me012, LHInput[me012]},
{me022, LHInput[me022]},
{me032, LHInput[me032]},
{mvR012, LHInput[mvR012]},
{mvR022, LHInput[mvR022]},
{mvR032, LHInput[mvR032]}
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
