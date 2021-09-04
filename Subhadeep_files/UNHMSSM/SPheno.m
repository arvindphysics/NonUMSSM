MINPAR={{1,m0},
             {2,m12},
             {3,TanBeta},
             {5,Azero}};

EXTPAR = {
   {71, Qq},
   {72, Ql},
   {73, QHu},
   {74, QHd},
   {75, Qd},
   {76, Qu},
   {77, Qe12},
   {78, Qe3},
   {79, Qs}
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
{ml122, DIAGONAL m0^2},
{md2, DIAGONAL m0^2},
{mu2, DIAGONAL m0^2},
{me122, DIAGONAL m0^2},
{ml12l32, m0^2},
{MassU, m12},
{MassB, m12},
{MassWB,m12},
{MassG,m12}
};


BoundarySUSYScale = {
{Tep,LHInput[Tep]},
{Tdp,LHInput[Tdp]},
{gp, LHInput[gp]},
{vS, LHInput[vS]},  
{ml32, LHInput[ml32]},  
{me32, LHInput[me32]},  
{Y12, LHInput[Y12]},
{Y3, LHInput[Y3]},
{T[Y12], LHInput[T[Y12]]},
{T[Y3], LHInput[T[Y3]]},
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
