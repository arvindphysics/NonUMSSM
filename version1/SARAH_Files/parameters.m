ParameterDefinitions = { 

{g1,        { Description -> "Hypercharge-Coupling"}},
{g2,        { Description -> "Left-Coupling"}},
{g3,        { Description -> "Strong-Coupling"}},    
{AlphaS,    {Description -> "Alpha Strong"}},	
{Gf,        { Description -> "Fermi's constant"}},
{aEWinv,    { Description -> "inverse weak coupling constant at mZ"}},

{e,         { Description -> "electric charge"}}, 


{Qq, { LaTeX -> "Q_q}",
	Real -> True,
	OutputName -> Qq,
	LesHouches -> {XCharge, 1}}},
{Ql1, { LaTeX -> "Q_{l_1}",
	Real -> True,
	OutputName -> Ql1,
	LesHouches -> {XCharge, 4}}},
{Ql2, { LaTeX -> "Q_{l_2}",
	Real -> True,
	OutputName -> Ql2,
	LesHouches -> {XCharge, 5}}},
{Ql3, { LaTeX -> "Q_{l_3}",
	Real -> True,
	OutputName -> Ql3,
	LesHouches -> {XCharge, 6}}},
{QHu, { LaTeX -> "Q_{H_u}",
	Real -> True,
	OutputName -> QHu,
	LesHouches -> {XCharge, 7}}},
{QHd, { LaTeX -> "Q_{H_d}",
	Real -> True,
	OutputName -> QHd,
	LesHouches -> {XCharge, 8}}},
{Qd, { LaTeX -> "Q_{d}",
	Real -> True,
	OutputName -> Qd,
	LesHouches -> {XCharge, 9}}},
{Qu, { LaTeX -> "Q_{u}",
	Real -> True,
	OutputName -> Qu,
	LesHouches -> {XCharge, 12}}},
{Qe1, { LaTeX -> "Q_{e_{1}}",
	Real -> True,
	OutputName -> Qe1,
	LesHouches -> {XCharge, 15}}},
{Qe2, { LaTeX -> "Q_{e_{2}}",
	Real -> True,
	OutputName -> Qe2,
	LesHouches -> {XCharge, 16}}},
{Qe3, { LaTeX -> "Q_{e_3}",
	Real -> True,
	OutputName -> Qe3,
	LesHouches -> {XCharge, 17}}},
{Qv, { LaTeX -> "Q_{v}",
	Real -> True,
	OutputName -> Qv,
	LesHouches -> {XCharge, 18}}},
{Qs, { LaTeX -> "Q_s",
	Real -> True,
	OutputName -> Qs,
	LesHouches -> {XCharge, 21}}},


{Yu,        { Description -> "Up-Yukawa-Coupling"   }}, 
{Yd,        { Description -> "Down-Yukawa-Coupling"   }}, 


{Ye11, {Real -> False,
	LesHouches -> Ye11,
	LaTeX -> "Ye11",
	OutputName -> Ye11 }},
{Ye22, {Real -> False,
	LesHouches -> Ye22,
	LaTeX -> "Ye22",
	OutputName -> Ye22 }},
{Ye33, {Real -> False,
	LesHouches -> Ye33,
	LaTeX -> "Ye33",
	OutputName -> Ye33 }},
{Yv,   {Real -> False,
	LesHouches -> Yv,
	LaTeX -> "Yv",
	OutputName -> Yv }},


{T[Yu],     { Description -> "Trilinear-Up-Coupling"}},
{T[Yd],     { Description -> "Trilinear-Down-Coupling"}},

{T[Ye11],     { LesHouches -> TYe11,
               LaTeX -> "TYe11",
               OutputName -> TYe11}}, 
{T[Ye22],     { LesHouches -> TYe22,
               LaTeX -> "TYe22",
               OutputName -> TYe22}},
{T[Ye33],     { LesHouches -> TYe33,
               LaTeX -> "TYe33",
               OutputName -> TYe33}},  
{T[Yv],       { LesHouches -> TYv,
               LaTeX -> "TYv",
               OutputName -> TYv}},


{mq2,       { Description -> "Softbreaking left Squark Mass"}},

{me012, { LaTeX -> "m^2_{e01}",
	LesHouches -> ME012,
	OutputName -> me012}},
{me022, { LaTeX -> "m^2_{e02}",
	LesHouches -> ME022,
	OutputName -> me022}},
{me032, { LaTeX -> "m^2_{e03}",
	LesHouches -> ME032,
	OutputName -> me032}},
{mvR2, { LaTeX -> "m^2_{vR}",
	LesHouches -> MVR2,
	OutputName -> mvR2}},

{ml012, { LaTeX -> "m^2_{l01}",
	LesHouches -> ML012,
	OutputName -> ml012}},
{ml022, { LaTeX -> "m^2_{l02}",
	LesHouches -> ML022,
	OutputName -> ml022}},
{ml032, { LaTeX -> "m^2_{l03}",
	LesHouches -> ML032,
	OutputName -> ml032}},

{mu2,       { Description -> "Softbreaking right Up-Squark Mass"}},
{md2,       { Description -> "Softbreaking right Down-Squark Mass"}},
{mHd2,      { Description -> "Softbreaking Down-Higgs Mass"}}, 
{mHu2,      { Description -> "Softbreaking Up-Higgs Mass"}}, 


{MassB,     { Description -> "Bino Mass parameter"}},
{MassWB,    { Description -> "Wino Mass parameter"}},
{MassG,     { Description -> "Gluino Mass parameter"}},
                           
{vd,        { Description -> "Down-VEV"}}, 
{vu,        { Description -> "Up-VEV"}},       
{v,         { Description -> "EW-VEV"}},
             
{\[Beta],   { Description -> "Pseudo Scalar mixing angle"  }},             
{TanBeta,   { Description -> "Tan Beta" }},              
{\[Alpha],  { Description -> "Scalar mixing angle" }},                          
             
    
{ZD,        { Description -> "Down-Squark-Mixing-Matrix" }},             
{ZU,        { Description -> "Up-Squark-Mixing-Matrix"}},             
{ZE,        { Description -> "Slepton-Mixing-Matrix"}}, 
{ZV,        { Description->"Sneutrino Mixing-Matrix"}},   
{ZH,        { Description->"Scalar-Mixing-Matrix", 
              Real -> False, 
              Dependence -> None,
              DependenceNum -> None,
              DependenceOptional -> None,
              LesHouches -> NMHMIX      }},
{ZA,        { Description->"Pseudo-Scalar-Mixing-Matrix", 
               Real ->False,
               Dependence -> None,
              DependenceNum -> None,
              DependenceOptional -> None,
               LesHouches -> NMAMIX     }},
{ZP,        { Description->"Charged-Mixing-Matrix"}},                      
                                          
 
{ZN,        { Description->"Neutralino Mixing-Matrix",
              LesHouches -> NMNMIX   }}, 

{UP,        { Description->"Chargino-plus Mixing-Matrix"}}, 
{UM,        { Description->"Chargino-minus Mixing-Matrix"}}, 

{ZEL,       { Description ->"Left-Lepton-Mixing-Matrix"}},
{ZVL,       { LaTeX -> "ZVL",
              LesHouches -> NEMIX,
              OutputName -> ZVL}},
{ZVR,       {LaTeX -> "Z^{V_R}",
	      LesHouches -> SNURMIX,
	      OutputName-> ZVR }},

{ZER,       { Description ->"Right-Lepton-Mixing-Matrix" }},                          
{ZDL,       { Description ->"Left-Down-Mixing-Matrix"}},                       
{ZDR,       { Description ->"Right-Down-Mixing-Matrix"}},              
{ZUL,       { Description ->"Left-Up-Mixing-Matrix"}},                        
{ZUR,       { Description ->"Right-Up-Mixing-Matrix"}},           


{ThetaW,    { Description -> "Weinberg-Angle"}},              

                         
{PhaseGlu,  { Description -> "Gluino-Phase" }},   
                                                                      
{\[Lambda],   { LaTeX -> "\\lambda",
             OutputName -> lam,
             Real -> True,
             LesHouches -> {NP, 1}   }},                               
{T[\[Lambda]],  {LaTeX -> "T_{\\lambda}",
             OutputName -> Tlam,
             Real -> True,
             LesHouches -> {NP, 2}}},        
             
{vS,        { LaTeX -> "v_S",
              LesHouches -> {NP, 3},
              OutputName -> vS}},
  
{ms2,       {  LaTeX -> "m^2_{s}",
               LesHouches -> {NP, 4},
               OutputName -> ms2 }},

(* ------------------------------------------- *)
(* Expression for ThetaWp has to be added!     *)
(* ------------------------------------------- *)

{ZZ, {Description ->   "Photon-Z-Z' Mixing Matrix"}},
{ZW, {Description -> "W Mixing Matrix" }},
{ZfW, {Description ->    "Wino Mixing Matrix"}},

{ThetaWp,  { Description -> "Theta'",
             LaTeX -> "\\Theta_W^{\\prime}",
              DependenceNum -> None  }},
              
{gp,       {Description -> "U(1)' Gauge Coupling"}},


{ThetaZ,    { LaTeX -> "\\Theta_Z",
			  OutputName -> ThZ}},

{MassU,    { LaTeX -> "M_U",
             Form -> Scalar,
             OutputName -> M4,
             LesHouches -> {MSOFT,4} }},

{Tdp, {LaTeX ->"T^{\\prime}_d",
       OutputName-> Tdp,
       LesHouches -> TDP}},

{Tep, {LaTeX ->"T^{\\prime}_e",
	OutputName-> Tep,
	LesHouches -> TEP}},

{Tmup, {LaTeX ->"T^{\\prime}_mu",
	OutputName-> Tmup,
	LesHouches -> TMUP}}

 }; 
 


