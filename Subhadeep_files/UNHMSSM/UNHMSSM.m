Off[General::spell]

Model`Name = "UNHMSSM";
Model`NameLaTeX ="$U(1)$ extended MSSM";
Model`Authors = "S.Mondal";
Model`Date = "2019-01-30";

(* 2013-09-01: changing to new conventions for Superfields, Superpotential and global symmetries *)
(* 2015-11-16: added right-handed neutrinos *)

(*-------------------------------------------*)
(*           Particle Content                *)
(*-------------------------------------------*)

(* Global symmetries *)


Global[[1]]={Z[2],RParity}; 
RpM = {-1,-1,1}; RpP = {1,1,-1};

(* Vector Superfields *)

Gauge[[1]]={B,   U[1], hypercharge, g1,False, RpM};
Gauge[[2]]={WB, SU[2], left,        g2,True,  RpM};
Gauge[[3]]={G,  SU[3], color,       g3,False, RpM};
Gauge[[4]]={U,   U[1], additional,  gp,False, RpM};


(* Chiral Superfields *)

SuperFields[[1]] = {q, 3, {uL,  dL},     1/6, 2, 3, Qq, RpM};  
SuperFields[[2]] = {l12, 2, {v12L,  e12L},    -1/2, 2, 1, Ql, RpM};
SuperFields[[3]] = {l3, 1, {v3L,  e3L},    -1/2, 2, 1, Ql, RpM};
SuperFields[[4]] = {Hd,1, {Hd0, Hdm},   -1/2, 2, 1, QHd, RpP};
SuperFields[[5]] = {Hu,1, {Hup, Hu0},    1/2, 2, 1, QHu, RpP};

SuperFields[[6]] = {d, 3, conj[dR],    1/3, 1, -3, Qd, RpM};
SuperFields[[7]] = {u, 3, conj[uR],   -2/3, 1, -3, Qu, RpM};
SuperFields[[8]] = {e12, 2, conj[e12R],      1, 1,  1, Qe12, RpM};
SuperFields[[9]] = {e3, 1, conj[e3R],      1, 1,  1, Qe3, RpM};

SuperFields[[10]] = {s, 1, sR,     0, 1,  1, Qs, RpP};

NoU1Mixing=True;


(*------------------------------------------------------*)
(* Superpotential *)
(*------------------------------------------------------*)

SuperPotential = Yu u.q.Hu - Yd d.q.Hd - Y12 e12.l12.Hd - Y3 e3.l3.Hd + \[Lambda] Hu.Hd.s;

DEFINITION[GaugeES][Additional]= {
	{LagHC, {Overwrite->False, AddHC->True}}
};
LagHC = Tdp conj[SHu].conj[SdR].Sq + Tep conj[SHu].conj[Se12R].Sl12;


AddRGEsNonHolomorphic = True;

(*-------------------------------------------*)
(* Integrate Out or Delete Particles         *)
(*-------------------------------------------*)

IntegrateOut={};
DeleteParticles={};


(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES,EWSB};


(* ----- After EWSB ----- *)

      

DEFINITION[EWSB][GaugeSector] =
{ 
  {{VB,VWB[3],VU},{VP,VZ,VZp},ZZ},
  {{VWB[1],VWB[2]},{VWm,conj[VWm]},ZW},
  {{fWB[1],fWB[2],fWB[3]},{fWm,fWp,fW0},ZfW}
};
        
       
DEFINITION[EWSB][VEVs]= 
{    {SHd0, {vd, 1/Sqrt[2]}, {sigmad, \[ImaginaryI]/Sqrt[2]},{phid,1/Sqrt[2]}},
     {SHu0, {vu, 1/Sqrt[2]}, {sigmau, \[ImaginaryI]/Sqrt[2]},{phiu,1/Sqrt[2]}},
     {SsR, {vS, 1/Sqrt[2]}, {sigmaS, \[ImaginaryI]/Sqrt[2]},{phiS, 1/Sqrt[2]}}     };

DEFINITION[EWSB][MatterSector]= 

{    {{SdL, SdR}, {Sd, ZD}},
     {{Sv12L, Sv3L}, {Sv, ZV}},
     {{Fv12L, Fv3L}, {FvL, ZVL}},
     {{SuL, SuR}, {Su, ZU}},
     {{Se12L, Se3L, Se12R, Se3R}, {Se, ZE}},
     {{phid, phiu, phiS}, {hh, ZH}},
     {{sigmad, sigmau,sigmaS}, {Ah, ZA}},
     {{SHdm,conj[SHup]},{Hpm,ZP}},
     {{fU,fB, fW0, FHd0, FHu0,FsR}, {L0, ZN}}, 
     {{{fWm, FHdm}, {fWp, FHup}}, {{Lm,UM}, {Lp,UP}}},
     {{{Fe12L, Fe3L},{conj[Fe12R], conj[Fe3R]}},{{FEL,ZEL},{FER,ZER}}},
     {{{FdL},{conj[FdR]}},{{FDL,ZDL},{FDR,ZDR}}},
     {{{FuL},{conj[FuR]}},{{FUL,ZUL},{FUR,ZUR}}}            
}; 

DEFINITION[EWSB][Phases]= 
{    {fG, PhaseGlu}
    }; 

DEFINITION[EWSB][DiracSpinors]={
 Fd ->{  FDL, conj[FDR]},
 Fe ->{  FEL, conj[FER]},
 Fu ->{  FUL, conj[FUR]},
 Fv ->{  FvL, 0},
 Chi ->{ L0, conj[L0]},
 Cha ->{ Lm, conj[Lp]},
 Glu ->{ fG, conj[fG]}
};
