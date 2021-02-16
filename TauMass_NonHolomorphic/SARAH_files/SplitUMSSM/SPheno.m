MINPAR={{1,m0},
        {2,m12},
        {3,TanBeta},
        {4,Azero}};

EXTPAR = {
   {71, Qq},
   {72, Ql4},
   {73, Ql9},
   {74, QHu},
   {75, QHd},
   {76, Qd},
   {77, Qu},
   {78, Qe4},
   {79, Qe9},
   {80, Qs}
};


RealParameters = {TanBeta,m0};

ParametersToSolveTadpoles = {mHd2,mHu2,ms2};

RenormalizationScaleFirstGuess = m0^2 + 4 m12^2;

RenormalizationScale = MSu[1]*MSu[6];

ConditionGUTscale = g1 == g2;

BoundaryHighScale={
{T[Yu], Azero*Yu},
{T[Yd], 0.0},
{mq2, DIAGONAL m0^2},
{ml92, DIAGONAL m0^2},
{md2, DIAGONAL m0^2},
{mu2, DIAGONAL m0^2},
{me92, DIAGONAL m0^2},
{ml4l92, m0^2},
{MassU, m12},
{MassB, m12},
{MassWB,m12},
{MassG, m12}
};


BoundarySUSYScale = {
{Tep,LHInput[Tep]},
{Tdp,LHInput[Tdp]},
{gp, LHInput[gp]},
{vS, LHInput[vS]},  
{ml42, LHInput[ml42]},  
{me42, LHInput[me42]},  
{Y1, LHInput[Y1]},
{Y2, LHInput[Y2]},
{T[Y1], LHInput[T[Y1]]},
{T[Y2], LHInput[T[Y2]]},
{\[Lambda], LHInput[\[Lambda]]},
{T[\[Lambda]], LHInput[T[\[Lambda]]]}
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
