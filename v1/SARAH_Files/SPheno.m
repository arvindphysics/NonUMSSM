MINPAR={{1,m0},
        {2,m12},
        {3,TanBeta},
        {4,Azero}
};

EXTPAR = {
   {61, LambdaInput},
   {62, ALambdaInput},
   {63, vSInput},
   {71, Qq},
   {72, Ql1},
   {73, Ql2},
   {74, Ql3},
   {75, QHu},
   {76, QHd},
   {77, Qd},
   {78, Qu},
   {79, Qe1},
   {80, Qe2},
   {81, Qe3},
   {82, Qs}
};


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
{T[Yu], Azero*Yu},
{T[Yd], 0.0},
{T[Ye33], Azero*Ye33},
{mq2, DIAGONAL m0^2},
{ml012, m0^2},
{ml022, m0^2},
{ml032, m0^2},
{md2, DIAGONAL m0^2},
{mu2, DIAGONAL m0^2},
{me012, m0^2},
{me022, m0^2},
{me032, m0^2},
{T[\[Lambda]], ALambdaInput \[Lambda]},
{MassU, m12},
{MassB, m12},
{MassWB,m12},
{MassG, m12}
};


BoundarySUSYScale = {
{Tdp, LHInput[Tdp]},
{Tep, LHInput[Tep]},
{Tmup, LHInput[Tmup]},
{Ye11, LHInput[Ye11]},
{Ye22, LHInput[Ye22]},
{Ye33, LHInput[Ye33]},
{T[Ye11], LHInput[T[Ye11]]},
{T[Ye22], LHInput[T[Ye22]]},
{vS, vSInput},
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
Qq->1./(2 Sqrt[6]),  Ql1->1./(2 Sqrt[6]), Ql2->1./(2 Sqrt[6]), Ql3->1./(2 Sqrt[6]),\
QHd-> -1./(Sqrt[6]), QHu-> -1./(Sqrt[6]), Qe1->1./(2 Sqrt[6]), Qe2->1./(2 Sqrt[6]), Qe3->1./(2 Sqrt[6]),Qd->1./(2 Sqrt[6]),\
Qu->1./(2 Sqrt[6]),  Qs->2./(Sqrt[6]), Qv->1./(2 Sqrt[6])  };
