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
{Ql4,        { LaTeX -> "Q_{l_4}",
              Real -> True,
              OutputName -> Ql4,
	      LesHouches -> {XCharge, 2}}},
{Ql9,        { LaTeX -> "Q_{l_9}",
              Real -> True,
              OutputName -> Ql9,
              LesHouches -> {XCharge, 3}}},
{QHu,        { LaTeX -> "Q_{H_u}",
              Real -> True,
		OutputName -> QHu,
			  LesHouches -> {XCharge, 4}}},
{QHd,        { LaTeX -> "Q_{H_d}",
              Real -> True,
		OutputName -> QHd,
			  LesHouches -> {XCharge, 5}}},
{Qd,        { LaTeX -> "Q_d",
              Real -> True,
		OutputName -> Qd,
			  LesHouches -> {XCharge, 6}}},
{Qu,        { LaTeX -> "Q_u",
              Real -> True,
		OutputName -> Qu,
			  LesHouches -> {XCharge, 7}}},             
{Qe4,        { LaTeX -> "Q_{e_{4}}",
              Real -> True,
		OutputName -> Qe4,
			  LesHouches -> {XCharge, 8}}},
{Qe9,        { LaTeX -> "Q_{e_9}",
              Real -> True,
		OutputName -> Qe9,
			  LesHouches -> {XCharge, 9}}},
			  
{Qs,        { LaTeX -> "Q_s",
              Real -> True,
		OutputName -> Qs,
			  LesHouches -> {XCharge, 10}}},


{Yu,        { Description -> "Up-Yukawa-Coupling"   }}, 
{Yd,        { Description -> "Down-Yukawa-Coupling"   }}, 
{Y1,        { Real -> False,
                LesHouches -> Y1,
                LaTeX -> "Y1",
                OutputName -> y1   }}, 
{Y2,        {Real -> False,
              LesHouches -> Y2,
              LaTeX -> "Y2",
              OutputName -> y2 }}, 

{T[Yu],     { Description -> "Trilinear-Up-Coupling"}}, 
{T[Yd],     { Description -> "Trilinear-Down-Coupling"}}, 
{T[Y1],     { LesHouches -> TY1,
               LaTeX -> "TY1",
               OutputName -> Ty1}}, 
{T[Y2],     { LesHouches -> TY2,
               LaTeX -> "TY2",
               OutputName -> Ty2}}, 

{mq2,       { Description -> "Softbreaking left Squark Mass"}},

{me42,       { LaTeX -> "m^2_{e_4}",
                LesHouches -> ME42,
                OutputName -> me42}},
{me92,       { LaTeX -> "m^2_{e_9}",
                LesHouches -> ME92,
                OutputName -> me92}},
{ml42,       { LaTeX -> "m^2_{l_4}",
                LesHouches -> ML42,
                OutputName -> ml42}},
{ml92,       { LaTeX -> "m^2_{l_9}",
                LesHouches -> ML92,
                OutputName -> ml92}},
{ml4l92,       { LaTeX -> "m^2_{l4l9}",
                LesHouches -> ML4L92,
                OutputName -> ml4l92}},

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
 


