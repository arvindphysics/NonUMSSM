ParameterDefinitions = { 

{g1,        { Description -> "Hypercharge-Coupling"}},
{g2,        { Description -> "Left-Coupling"}},
{g3,        { Description -> "Strong-Coupling"}},    
{AlphaS,    {Description -> "Alpha Strong"}},	
{Gf,        { Description -> "Fermi's constant"}},
{aEWinv,    { Description -> "inverse weak coupling constant at mZ"}},

{e,         { Description -> "electric charge"}}, 

{Qq,        { LaTeX -> "Q_q",
              Real -> True,
	      OutputName -> Qq,
	      LesHouches -> {XCharge, 1}}},             
{Ql,        { LaTeX -> "Q_l",
              Real -> True,
              OutputName -> Ql,
	      LesHouches -> {XCharge, 2}}},
{QHu,        { LaTeX -> "Q_{H_u}",
              Real -> True,
		OutputName -> QHu,
			  LesHouches -> {XCharge, 3}}},
{QHd,        { LaTeX -> "Q_{H_d}",
              Real -> True,
		OutputName -> QHd,
			  LesHouches -> {XCharge, 4}}},
{Qd,        { LaTeX -> "Q_d",
              Real -> True,
		OutputName -> Qd,
			  LesHouches -> {XCharge, 5}}},
{Qu,        { LaTeX -> "Q_u",
              Real -> True,
		OutputName -> Qu,
			  LesHouches -> {XCharge, 6}}},             
{Qe12,        { LaTeX -> "Q_{e_{12}}",
              Real -> True,
		OutputName -> Qe12,
			  LesHouches -> {XCharge, 7}}},
{Qe3,        { LaTeX -> "Q_{e_3}",
              Real -> True,
		OutputName -> Qe3,
			  LesHouches -> {XCharge, 8}}},
{Qv,        { LaTeX -> "Q_v",
              Real -> True,
		OutputName -> Qv,
			  LesHouches -> {XCharge, 9}}},
			  

{Qs,        { LaTeX -> "Q_s",
              Real -> True,
		OutputName -> Qs,
			  LesHouches -> {XCharge, 10}}},


{Yu,        { Description -> "Up-Yukawa-Coupling"   }}, 
{Yd,        { Description -> "Down-Yukawa-Coupling"   }}, 
{Y12,        { Real -> False,
                LesHouches -> Y12,
                LaTeX -> "Y12",
                OutputName -> y12   }}, 
{Y3,        {Real -> False,
              LesHouches -> Y3,
              LaTeX -> "Y3",
              OutputName -> y3 }}, 

{T[Yu],     { Description -> "Trilinear-Up-Coupling"}}, 
{T[Yd],     { Description -> "Trilinear-Down-Coupling"}}, 
{T[Y12],     { LesHouches -> TY12,
               LaTeX -> "TY12",
               OutputName -> Ty12}}, 
{T[Y3],     { LesHouches -> TY3,
               LaTeX -> "TY3",
               OutputName -> Ty3}}, 

{mq2,       { Description -> "Softbreaking left Squark Mass"}},

{me122,       { LaTeX -> "m^2_{e12}",
                LesHouches -> ME122,
                OutputName -> me122}},
{me32,       { LaTeX -> "m^2_{e3}",
                LesHouches -> {NP, 5},
                OutputName -> me32}},
{ml122,       { LaTeX -> "m^2_{l12}",
                LesHouches -> ML122,
                OutputName -> ml122}},
{ml32,       { LaTeX -> "m^2_{l3}",
                LesHouches -> {NP, 6},
                OutputName -> ml32}},
{ml12l32,       { LaTeX -> "m^2_{l12l3}",
                LesHouches -> ML12L32,
                OutputName -> ml12l32}},

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

{Tep, {LaTeX ->"T^{\\prime}_e",
       OutputName-> Tep,
       LesHouches -> TEP}},

{Tdp, {LaTeX ->"T^{\\prime}_d",
       OutputName-> Tdp,
       LesHouches -> TDP}}

 }; 
 


