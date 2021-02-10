# ------------------------------------------------------------------------------  
# This model file was automatically created by SARAH version4.14.3 
# SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223   
# (c) Florian Staub, 2013  
# -------------------------------------------------------------------------------  
# File created at 1:00 on 10.2.2021   
# ----------------------------------------------------------------------  
 
 
from object_library import all_vertices,Vertex 
import particles as P 
import couplings as C 
import lorentz as L 
 
 
V_1 = Vertex(name = 'V_1', 
	 particles = [P.Ah1, P.Ah1, P.h1], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_1}) 
 
 
V_2 = Vertex(name = 'V_2', 
	 particles = [P.Ah1, P.Ah1, P.h2], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_2}) 
 
 
V_3 = Vertex(name = 'V_3', 
	 particles = [P.Ah1, P.Ah1, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_3}) 
 
 
V_4 = Vertex(name = 'V_4', 
	 particles = [P.Ah1, P.Ah2, P.h1], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_4}) 
 
 
V_5 = Vertex(name = 'V_5', 
	 particles = [P.Ah1, P.Ah2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_5}) 
 
 
V_6 = Vertex(name = 'V_6', 
	 particles = [P.Ah1, P.Ah2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_6}) 
 
 
V_7 = Vertex(name = 'V_7', 
	 particles = [P.Ah1, P.Ah3, P.h1], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_7}) 
 
 
V_8 = Vertex(name = 'V_8', 
	 particles = [P.Ah1, P.Ah3, P.h2], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_8}) 
 
 
V_9 = Vertex(name = 'V_9', 
	 particles = [P.Ah1, P.Ah3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_9}) 
 
 
V_10 = Vertex(name = 'V_10', 
	 particles = [P.Ah2, P.Ah2, P.h1], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_10}) 
 
 
V_11 = Vertex(name = 'V_11', 
	 particles = [P.Ah2, P.Ah2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_11}) 
 
 
V_12 = Vertex(name = 'V_12', 
	 particles = [P.Ah2, P.Ah2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_12}) 
 
 
V_13 = Vertex(name = 'V_13', 
	 particles = [P.Ah2, P.Ah3, P.h1], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_13}) 
 
 
V_14 = Vertex(name = 'V_14', 
	 particles = [P.Ah2, P.Ah3, P.h2], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_14}) 
 
 
V_15 = Vertex(name = 'V_15', 
	 particles = [P.Ah2, P.Ah3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_15}) 
 
 
V_16 = Vertex(name = 'V_16', 
	 particles = [P.Ah3, P.Ah3, P.h1], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_16}) 
 
 
V_17 = Vertex(name = 'V_17', 
	 particles = [P.Ah3, P.Ah3, P.h2], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_17}) 
 
 
V_18 = Vertex(name = 'V_18', 
	 particles = [P.Ah3, P.Ah3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_18}) 
 
 
V_19 = Vertex(name = 'V_19', 
	 particles = [P.Ah1, P.Hm1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_19}) 
 
 
V_20 = Vertex(name = 'V_20', 
	 particles = [P.Ah1, P.Hm2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_20}) 
 
 
V_21 = Vertex(name = 'V_21', 
	 particles = [P.Ah2, P.Hm1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_21}) 
 
 
V_22 = Vertex(name = 'V_22', 
	 particles = [P.Ah2, P.Hm2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_22}) 
 
 
V_23 = Vertex(name = 'V_23', 
	 particles = [P.Ah3, P.Hm1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_23}) 
 
 
V_24 = Vertex(name = 'V_24', 
	 particles = [P.Ah3, P.Hm2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_24}) 
 
 
V_25 = Vertex(name = 'V_25', 
	 particles = [P.Ah1, P.sd1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_25}) 
 
 
V_26 = Vertex(name = 'V_26', 
	 particles = [P.Ah1, P.sd1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_26}) 
 
 
V_27 = Vertex(name = 'V_27', 
	 particles = [P.Ah1, P.sd1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_27}) 
 
 
V_28 = Vertex(name = 'V_28', 
	 particles = [P.Ah1, P.sd1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_28}) 
 
 
V_29 = Vertex(name = 'V_29', 
	 particles = [P.Ah1, P.sd1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_29}) 
 
 
V_30 = Vertex(name = 'V_30', 
	 particles = [P.Ah1, P.sd1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_30}) 
 
 
V_31 = Vertex(name = 'V_31', 
	 particles = [P.Ah1, P.sd2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_31}) 
 
 
V_32 = Vertex(name = 'V_32', 
	 particles = [P.Ah1, P.sd2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_32}) 
 
 
V_33 = Vertex(name = 'V_33', 
	 particles = [P.Ah1, P.sd2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_33}) 
 
 
V_34 = Vertex(name = 'V_34', 
	 particles = [P.Ah1, P.sd2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_34}) 
 
 
V_35 = Vertex(name = 'V_35', 
	 particles = [P.Ah1, P.sd2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_35}) 
 
 
V_36 = Vertex(name = 'V_36', 
	 particles = [P.Ah1, P.sd2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_36}) 
 
 
V_37 = Vertex(name = 'V_37', 
	 particles = [P.Ah1, P.sd3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_37}) 
 
 
V_38 = Vertex(name = 'V_38', 
	 particles = [P.Ah1, P.sd3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_38}) 
 
 
V_39 = Vertex(name = 'V_39', 
	 particles = [P.Ah1, P.sd3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_39}) 
 
 
V_40 = Vertex(name = 'V_40', 
	 particles = [P.Ah1, P.sd3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_40}) 
 
 
V_41 = Vertex(name = 'V_41', 
	 particles = [P.Ah1, P.sd3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_41}) 
 
 
V_42 = Vertex(name = 'V_42', 
	 particles = [P.Ah1, P.sd3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_42}) 
 
 
V_43 = Vertex(name = 'V_43', 
	 particles = [P.Ah1, P.sd4, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_43}) 
 
 
V_44 = Vertex(name = 'V_44', 
	 particles = [P.Ah1, P.sd4, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_44}) 
 
 
V_45 = Vertex(name = 'V_45', 
	 particles = [P.Ah1, P.sd4, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_45}) 
 
 
V_46 = Vertex(name = 'V_46', 
	 particles = [P.Ah1, P.sd4, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_46}) 
 
 
V_47 = Vertex(name = 'V_47', 
	 particles = [P.Ah1, P.sd4, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_47}) 
 
 
V_48 = Vertex(name = 'V_48', 
	 particles = [P.Ah1, P.sd4, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_48}) 
 
 
V_49 = Vertex(name = 'V_49', 
	 particles = [P.Ah1, P.sd5, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_49}) 
 
 
V_50 = Vertex(name = 'V_50', 
	 particles = [P.Ah1, P.sd5, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_50}) 
 
 
V_51 = Vertex(name = 'V_51', 
	 particles = [P.Ah1, P.sd5, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_51}) 
 
 
V_52 = Vertex(name = 'V_52', 
	 particles = [P.Ah1, P.sd5, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_52}) 
 
 
V_53 = Vertex(name = 'V_53', 
	 particles = [P.Ah1, P.sd5, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_53}) 
 
 
V_54 = Vertex(name = 'V_54', 
	 particles = [P.Ah1, P.sd5, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_54}) 
 
 
V_55 = Vertex(name = 'V_55', 
	 particles = [P.Ah1, P.sd6, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_55}) 
 
 
V_56 = Vertex(name = 'V_56', 
	 particles = [P.Ah1, P.sd6, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_56}) 
 
 
V_57 = Vertex(name = 'V_57', 
	 particles = [P.Ah1, P.sd6, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_57}) 
 
 
V_58 = Vertex(name = 'V_58', 
	 particles = [P.Ah1, P.sd6, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_58}) 
 
 
V_59 = Vertex(name = 'V_59', 
	 particles = [P.Ah1, P.sd6, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_59}) 
 
 
V_60 = Vertex(name = 'V_60', 
	 particles = [P.Ah1, P.sd6, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_60}) 
 
 
V_61 = Vertex(name = 'V_61', 
	 particles = [P.Ah2, P.sd1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_61}) 
 
 
V_62 = Vertex(name = 'V_62', 
	 particles = [P.Ah2, P.sd1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_62}) 
 
 
V_63 = Vertex(name = 'V_63', 
	 particles = [P.Ah2, P.sd1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_63}) 
 
 
V_64 = Vertex(name = 'V_64', 
	 particles = [P.Ah2, P.sd1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_64}) 
 
 
V_65 = Vertex(name = 'V_65', 
	 particles = [P.Ah2, P.sd1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_65}) 
 
 
V_66 = Vertex(name = 'V_66', 
	 particles = [P.Ah2, P.sd1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_66}) 
 
 
V_67 = Vertex(name = 'V_67', 
	 particles = [P.Ah2, P.sd2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_67}) 
 
 
V_68 = Vertex(name = 'V_68', 
	 particles = [P.Ah2, P.sd2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_68}) 
 
 
V_69 = Vertex(name = 'V_69', 
	 particles = [P.Ah2, P.sd2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_69}) 
 
 
V_70 = Vertex(name = 'V_70', 
	 particles = [P.Ah2, P.sd2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_70}) 
 
 
V_71 = Vertex(name = 'V_71', 
	 particles = [P.Ah2, P.sd2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_71}) 
 
 
V_72 = Vertex(name = 'V_72', 
	 particles = [P.Ah2, P.sd2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_72}) 
 
 
V_73 = Vertex(name = 'V_73', 
	 particles = [P.Ah2, P.sd3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_73}) 
 
 
V_74 = Vertex(name = 'V_74', 
	 particles = [P.Ah2, P.sd3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_74}) 
 
 
V_75 = Vertex(name = 'V_75', 
	 particles = [P.Ah2, P.sd3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_75}) 
 
 
V_76 = Vertex(name = 'V_76', 
	 particles = [P.Ah2, P.sd3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_76}) 
 
 
V_77 = Vertex(name = 'V_77', 
	 particles = [P.Ah2, P.sd3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_77}) 
 
 
V_78 = Vertex(name = 'V_78', 
	 particles = [P.Ah2, P.sd3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_78}) 
 
 
V_79 = Vertex(name = 'V_79', 
	 particles = [P.Ah2, P.sd4, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_79}) 
 
 
V_80 = Vertex(name = 'V_80', 
	 particles = [P.Ah2, P.sd4, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_80}) 
 
 
V_81 = Vertex(name = 'V_81', 
	 particles = [P.Ah2, P.sd4, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_81}) 
 
 
V_82 = Vertex(name = 'V_82', 
	 particles = [P.Ah2, P.sd4, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_82}) 
 
 
V_83 = Vertex(name = 'V_83', 
	 particles = [P.Ah2, P.sd4, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_83}) 
 
 
V_84 = Vertex(name = 'V_84', 
	 particles = [P.Ah2, P.sd4, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_84}) 
 
 
V_85 = Vertex(name = 'V_85', 
	 particles = [P.Ah2, P.sd5, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_85}) 
 
 
V_86 = Vertex(name = 'V_86', 
	 particles = [P.Ah2, P.sd5, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_86}) 
 
 
V_87 = Vertex(name = 'V_87', 
	 particles = [P.Ah2, P.sd5, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_87}) 
 
 
V_88 = Vertex(name = 'V_88', 
	 particles = [P.Ah2, P.sd5, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_88}) 
 
 
V_89 = Vertex(name = 'V_89', 
	 particles = [P.Ah2, P.sd5, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_89}) 
 
 
V_90 = Vertex(name = 'V_90', 
	 particles = [P.Ah2, P.sd5, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_90}) 
 
 
V_91 = Vertex(name = 'V_91', 
	 particles = [P.Ah2, P.sd6, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_91}) 
 
 
V_92 = Vertex(name = 'V_92', 
	 particles = [P.Ah2, P.sd6, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_92}) 
 
 
V_93 = Vertex(name = 'V_93', 
	 particles = [P.Ah2, P.sd6, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_93}) 
 
 
V_94 = Vertex(name = 'V_94', 
	 particles = [P.Ah2, P.sd6, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_94}) 
 
 
V_95 = Vertex(name = 'V_95', 
	 particles = [P.Ah2, P.sd6, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_95}) 
 
 
V_96 = Vertex(name = 'V_96', 
	 particles = [P.Ah2, P.sd6, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_96}) 
 
 
V_97 = Vertex(name = 'V_97', 
	 particles = [P.Ah3, P.sd1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_97}) 
 
 
V_98 = Vertex(name = 'V_98', 
	 particles = [P.Ah3, P.sd1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_98}) 
 
 
V_99 = Vertex(name = 'V_99', 
	 particles = [P.Ah3, P.sd1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_99}) 
 
 
V_100 = Vertex(name = 'V_100', 
	 particles = [P.Ah3, P.sd1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_100}) 
 
 
V_101 = Vertex(name = 'V_101', 
	 particles = [P.Ah3, P.sd1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_101}) 
 
 
V_102 = Vertex(name = 'V_102', 
	 particles = [P.Ah3, P.sd1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_102}) 
 
 
V_103 = Vertex(name = 'V_103', 
	 particles = [P.Ah3, P.sd2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_103}) 
 
 
V_104 = Vertex(name = 'V_104', 
	 particles = [P.Ah3, P.sd2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_104}) 
 
 
V_105 = Vertex(name = 'V_105', 
	 particles = [P.Ah3, P.sd2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_105}) 
 
 
V_106 = Vertex(name = 'V_106', 
	 particles = [P.Ah3, P.sd2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_106}) 
 
 
V_107 = Vertex(name = 'V_107', 
	 particles = [P.Ah3, P.sd2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_107}) 
 
 
V_108 = Vertex(name = 'V_108', 
	 particles = [P.Ah3, P.sd2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_108}) 
 
 
V_109 = Vertex(name = 'V_109', 
	 particles = [P.Ah3, P.sd3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_109}) 
 
 
V_110 = Vertex(name = 'V_110', 
	 particles = [P.Ah3, P.sd3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_110}) 
 
 
V_111 = Vertex(name = 'V_111', 
	 particles = [P.Ah3, P.sd3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_111}) 
 
 
V_112 = Vertex(name = 'V_112', 
	 particles = [P.Ah3, P.sd3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_112}) 
 
 
V_113 = Vertex(name = 'V_113', 
	 particles = [P.Ah3, P.sd3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_113}) 
 
 
V_114 = Vertex(name = 'V_114', 
	 particles = [P.Ah3, P.sd3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_114}) 
 
 
V_115 = Vertex(name = 'V_115', 
	 particles = [P.Ah3, P.sd4, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_115}) 
 
 
V_116 = Vertex(name = 'V_116', 
	 particles = [P.Ah3, P.sd4, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_116}) 
 
 
V_117 = Vertex(name = 'V_117', 
	 particles = [P.Ah3, P.sd4, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_117}) 
 
 
V_118 = Vertex(name = 'V_118', 
	 particles = [P.Ah3, P.sd4, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_118}) 
 
 
V_119 = Vertex(name = 'V_119', 
	 particles = [P.Ah3, P.sd4, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_119}) 
 
 
V_120 = Vertex(name = 'V_120', 
	 particles = [P.Ah3, P.sd4, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_120}) 
 
 
V_121 = Vertex(name = 'V_121', 
	 particles = [P.Ah3, P.sd5, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_121}) 
 
 
V_122 = Vertex(name = 'V_122', 
	 particles = [P.Ah3, P.sd5, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_122}) 
 
 
V_123 = Vertex(name = 'V_123', 
	 particles = [P.Ah3, P.sd5, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_123}) 
 
 
V_124 = Vertex(name = 'V_124', 
	 particles = [P.Ah3, P.sd5, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_124}) 
 
 
V_125 = Vertex(name = 'V_125', 
	 particles = [P.Ah3, P.sd5, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_125}) 
 
 
V_126 = Vertex(name = 'V_126', 
	 particles = [P.Ah3, P.sd5, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_126}) 
 
 
V_127 = Vertex(name = 'V_127', 
	 particles = [P.Ah3, P.sd6, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_127}) 
 
 
V_128 = Vertex(name = 'V_128', 
	 particles = [P.Ah3, P.sd6, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_128}) 
 
 
V_129 = Vertex(name = 'V_129', 
	 particles = [P.Ah3, P.sd6, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_129}) 
 
 
V_130 = Vertex(name = 'V_130', 
	 particles = [P.Ah3, P.sd6, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_130}) 
 
 
V_131 = Vertex(name = 'V_131', 
	 particles = [P.Ah3, P.sd6, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_131}) 
 
 
V_132 = Vertex(name = 'V_132', 
	 particles = [P.Ah3, P.sd6, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_132}) 
 
 
V_133 = Vertex(name = 'V_133', 
	 particles = [P.Ah1, P.se1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_133}) 
 
 
V_134 = Vertex(name = 'V_134', 
	 particles = [P.Ah1, P.se1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_134}) 
 
 
V_135 = Vertex(name = 'V_135', 
	 particles = [P.Ah1, P.se1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_135}) 
 
 
V_136 = Vertex(name = 'V_136', 
	 particles = [P.Ah1, P.se1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_136}) 
 
 
V_137 = Vertex(name = 'V_137', 
	 particles = [P.Ah1, P.se1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_137}) 
 
 
V_138 = Vertex(name = 'V_138', 
	 particles = [P.Ah1, P.se1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_138}) 
 
 
V_139 = Vertex(name = 'V_139', 
	 particles = [P.Ah1, P.se2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_139}) 
 
 
V_140 = Vertex(name = 'V_140', 
	 particles = [P.Ah1, P.se2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_140}) 
 
 
V_141 = Vertex(name = 'V_141', 
	 particles = [P.Ah1, P.se2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_141}) 
 
 
V_142 = Vertex(name = 'V_142', 
	 particles = [P.Ah1, P.se2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_142}) 
 
 
V_143 = Vertex(name = 'V_143', 
	 particles = [P.Ah1, P.se2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_143}) 
 
 
V_144 = Vertex(name = 'V_144', 
	 particles = [P.Ah1, P.se2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_144}) 
 
 
V_145 = Vertex(name = 'V_145', 
	 particles = [P.Ah1, P.se3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_145}) 
 
 
V_146 = Vertex(name = 'V_146', 
	 particles = [P.Ah1, P.se3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_146}) 
 
 
V_147 = Vertex(name = 'V_147', 
	 particles = [P.Ah1, P.se3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_147}) 
 
 
V_148 = Vertex(name = 'V_148', 
	 particles = [P.Ah1, P.se3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_148}) 
 
 
V_149 = Vertex(name = 'V_149', 
	 particles = [P.Ah1, P.se3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_149}) 
 
 
V_150 = Vertex(name = 'V_150', 
	 particles = [P.Ah1, P.se3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_150}) 
 
 
V_151 = Vertex(name = 'V_151', 
	 particles = [P.Ah1, P.se4, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_151}) 
 
 
V_152 = Vertex(name = 'V_152', 
	 particles = [P.Ah1, P.se4, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_152}) 
 
 
V_153 = Vertex(name = 'V_153', 
	 particles = [P.Ah1, P.se4, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_153}) 
 
 
V_154 = Vertex(name = 'V_154', 
	 particles = [P.Ah1, P.se4, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_154}) 
 
 
V_155 = Vertex(name = 'V_155', 
	 particles = [P.Ah1, P.se4, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_155}) 
 
 
V_156 = Vertex(name = 'V_156', 
	 particles = [P.Ah1, P.se4, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_156}) 
 
 
V_157 = Vertex(name = 'V_157', 
	 particles = [P.Ah1, P.se5, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_157}) 
 
 
V_158 = Vertex(name = 'V_158', 
	 particles = [P.Ah1, P.se5, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_158}) 
 
 
V_159 = Vertex(name = 'V_159', 
	 particles = [P.Ah1, P.se5, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_159}) 
 
 
V_160 = Vertex(name = 'V_160', 
	 particles = [P.Ah1, P.se5, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_160}) 
 
 
V_161 = Vertex(name = 'V_161', 
	 particles = [P.Ah1, P.se5, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_161}) 
 
 
V_162 = Vertex(name = 'V_162', 
	 particles = [P.Ah1, P.se5, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_162}) 
 
 
V_163 = Vertex(name = 'V_163', 
	 particles = [P.Ah1, P.se6, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_163}) 
 
 
V_164 = Vertex(name = 'V_164', 
	 particles = [P.Ah1, P.se6, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_164}) 
 
 
V_165 = Vertex(name = 'V_165', 
	 particles = [P.Ah1, P.se6, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_165}) 
 
 
V_166 = Vertex(name = 'V_166', 
	 particles = [P.Ah1, P.se6, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_166}) 
 
 
V_167 = Vertex(name = 'V_167', 
	 particles = [P.Ah1, P.se6, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_167}) 
 
 
V_168 = Vertex(name = 'V_168', 
	 particles = [P.Ah1, P.se6, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_168}) 
 
 
V_169 = Vertex(name = 'V_169', 
	 particles = [P.Ah2, P.se1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_169}) 
 
 
V_170 = Vertex(name = 'V_170', 
	 particles = [P.Ah2, P.se1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_170}) 
 
 
V_171 = Vertex(name = 'V_171', 
	 particles = [P.Ah2, P.se1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_171}) 
 
 
V_172 = Vertex(name = 'V_172', 
	 particles = [P.Ah2, P.se1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_172}) 
 
 
V_173 = Vertex(name = 'V_173', 
	 particles = [P.Ah2, P.se1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_173}) 
 
 
V_174 = Vertex(name = 'V_174', 
	 particles = [P.Ah2, P.se1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_174}) 
 
 
V_175 = Vertex(name = 'V_175', 
	 particles = [P.Ah2, P.se2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_175}) 
 
 
V_176 = Vertex(name = 'V_176', 
	 particles = [P.Ah2, P.se2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_176}) 
 
 
V_177 = Vertex(name = 'V_177', 
	 particles = [P.Ah2, P.se2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_177}) 
 
 
V_178 = Vertex(name = 'V_178', 
	 particles = [P.Ah2, P.se2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_178}) 
 
 
V_179 = Vertex(name = 'V_179', 
	 particles = [P.Ah2, P.se2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_179}) 
 
 
V_180 = Vertex(name = 'V_180', 
	 particles = [P.Ah2, P.se2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_180}) 
 
 
V_181 = Vertex(name = 'V_181', 
	 particles = [P.Ah2, P.se3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_181}) 
 
 
V_182 = Vertex(name = 'V_182', 
	 particles = [P.Ah2, P.se3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_182}) 
 
 
V_183 = Vertex(name = 'V_183', 
	 particles = [P.Ah2, P.se3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_183}) 
 
 
V_184 = Vertex(name = 'V_184', 
	 particles = [P.Ah2, P.se3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_184}) 
 
 
V_185 = Vertex(name = 'V_185', 
	 particles = [P.Ah2, P.se3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_185}) 
 
 
V_186 = Vertex(name = 'V_186', 
	 particles = [P.Ah2, P.se3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_186}) 
 
 
V_187 = Vertex(name = 'V_187', 
	 particles = [P.Ah2, P.se4, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_187}) 
 
 
V_188 = Vertex(name = 'V_188', 
	 particles = [P.Ah2, P.se4, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_188}) 
 
 
V_189 = Vertex(name = 'V_189', 
	 particles = [P.Ah2, P.se4, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_189}) 
 
 
V_190 = Vertex(name = 'V_190', 
	 particles = [P.Ah2, P.se4, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_190}) 
 
 
V_191 = Vertex(name = 'V_191', 
	 particles = [P.Ah2, P.se4, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_191}) 
 
 
V_192 = Vertex(name = 'V_192', 
	 particles = [P.Ah2, P.se4, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_192}) 
 
 
V_193 = Vertex(name = 'V_193', 
	 particles = [P.Ah2, P.se5, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_193}) 
 
 
V_194 = Vertex(name = 'V_194', 
	 particles = [P.Ah2, P.se5, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_194}) 
 
 
V_195 = Vertex(name = 'V_195', 
	 particles = [P.Ah2, P.se5, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_195}) 
 
 
V_196 = Vertex(name = 'V_196', 
	 particles = [P.Ah2, P.se5, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_196}) 
 
 
V_197 = Vertex(name = 'V_197', 
	 particles = [P.Ah2, P.se5, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_197}) 
 
 
V_198 = Vertex(name = 'V_198', 
	 particles = [P.Ah2, P.se5, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_198}) 
 
 
V_199 = Vertex(name = 'V_199', 
	 particles = [P.Ah2, P.se6, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_199}) 
 
 
V_200 = Vertex(name = 'V_200', 
	 particles = [P.Ah2, P.se6, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_200}) 
 
 
V_201 = Vertex(name = 'V_201', 
	 particles = [P.Ah2, P.se6, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_201}) 
 
 
V_202 = Vertex(name = 'V_202', 
	 particles = [P.Ah2, P.se6, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_202}) 
 
 
V_203 = Vertex(name = 'V_203', 
	 particles = [P.Ah2, P.se6, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_203}) 
 
 
V_204 = Vertex(name = 'V_204', 
	 particles = [P.Ah2, P.se6, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_204}) 
 
 
V_205 = Vertex(name = 'V_205', 
	 particles = [P.Ah3, P.se1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_205}) 
 
 
V_206 = Vertex(name = 'V_206', 
	 particles = [P.Ah3, P.se1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_206}) 
 
 
V_207 = Vertex(name = 'V_207', 
	 particles = [P.Ah3, P.se1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_207}) 
 
 
V_208 = Vertex(name = 'V_208', 
	 particles = [P.Ah3, P.se1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_208}) 
 
 
V_209 = Vertex(name = 'V_209', 
	 particles = [P.Ah3, P.se1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_209}) 
 
 
V_210 = Vertex(name = 'V_210', 
	 particles = [P.Ah3, P.se1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_210}) 
 
 
V_211 = Vertex(name = 'V_211', 
	 particles = [P.Ah3, P.se2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_211}) 
 
 
V_212 = Vertex(name = 'V_212', 
	 particles = [P.Ah3, P.se2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_212}) 
 
 
V_213 = Vertex(name = 'V_213', 
	 particles = [P.Ah3, P.se2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_213}) 
 
 
V_214 = Vertex(name = 'V_214', 
	 particles = [P.Ah3, P.se2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_214}) 
 
 
V_215 = Vertex(name = 'V_215', 
	 particles = [P.Ah3, P.se2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_215}) 
 
 
V_216 = Vertex(name = 'V_216', 
	 particles = [P.Ah3, P.se2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_216}) 
 
 
V_217 = Vertex(name = 'V_217', 
	 particles = [P.Ah3, P.se3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_217}) 
 
 
V_218 = Vertex(name = 'V_218', 
	 particles = [P.Ah3, P.se3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_218}) 
 
 
V_219 = Vertex(name = 'V_219', 
	 particles = [P.Ah3, P.se3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_219}) 
 
 
V_220 = Vertex(name = 'V_220', 
	 particles = [P.Ah3, P.se3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_220}) 
 
 
V_221 = Vertex(name = 'V_221', 
	 particles = [P.Ah3, P.se3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_221}) 
 
 
V_222 = Vertex(name = 'V_222', 
	 particles = [P.Ah3, P.se3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_222}) 
 
 
V_223 = Vertex(name = 'V_223', 
	 particles = [P.Ah3, P.se4, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_223}) 
 
 
V_224 = Vertex(name = 'V_224', 
	 particles = [P.Ah3, P.se4, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_224}) 
 
 
V_225 = Vertex(name = 'V_225', 
	 particles = [P.Ah3, P.se4, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_225}) 
 
 
V_226 = Vertex(name = 'V_226', 
	 particles = [P.Ah3, P.se4, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_226}) 
 
 
V_227 = Vertex(name = 'V_227', 
	 particles = [P.Ah3, P.se4, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_227}) 
 
 
V_228 = Vertex(name = 'V_228', 
	 particles = [P.Ah3, P.se4, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_228}) 
 
 
V_229 = Vertex(name = 'V_229', 
	 particles = [P.Ah3, P.se5, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_229}) 
 
 
V_230 = Vertex(name = 'V_230', 
	 particles = [P.Ah3, P.se5, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_230}) 
 
 
V_231 = Vertex(name = 'V_231', 
	 particles = [P.Ah3, P.se5, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_231}) 
 
 
V_232 = Vertex(name = 'V_232', 
	 particles = [P.Ah3, P.se5, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_232}) 
 
 
V_233 = Vertex(name = 'V_233', 
	 particles = [P.Ah3, P.se5, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_233}) 
 
 
V_234 = Vertex(name = 'V_234', 
	 particles = [P.Ah3, P.se5, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_234}) 
 
 
V_235 = Vertex(name = 'V_235', 
	 particles = [P.Ah3, P.se6, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_235}) 
 
 
V_236 = Vertex(name = 'V_236', 
	 particles = [P.Ah3, P.se6, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_236}) 
 
 
V_237 = Vertex(name = 'V_237', 
	 particles = [P.Ah3, P.se6, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_237}) 
 
 
V_238 = Vertex(name = 'V_238', 
	 particles = [P.Ah3, P.se6, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_238}) 
 
 
V_239 = Vertex(name = 'V_239', 
	 particles = [P.Ah3, P.se6, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_239}) 
 
 
V_240 = Vertex(name = 'V_240', 
	 particles = [P.Ah3, P.se6, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_240}) 
 
 
V_241 = Vertex(name = 'V_241', 
	 particles = [P.Ah1, P.su1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_241}) 
 
 
V_242 = Vertex(name = 'V_242', 
	 particles = [P.Ah1, P.su1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_242}) 
 
 
V_243 = Vertex(name = 'V_243', 
	 particles = [P.Ah1, P.su1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_243}) 
 
 
V_244 = Vertex(name = 'V_244', 
	 particles = [P.Ah1, P.su1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_244}) 
 
 
V_245 = Vertex(name = 'V_245', 
	 particles = [P.Ah1, P.su1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_245}) 
 
 
V_246 = Vertex(name = 'V_246', 
	 particles = [P.Ah1, P.su1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_246}) 
 
 
V_247 = Vertex(name = 'V_247', 
	 particles = [P.Ah1, P.su2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_247}) 
 
 
V_248 = Vertex(name = 'V_248', 
	 particles = [P.Ah1, P.su2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_248}) 
 
 
V_249 = Vertex(name = 'V_249', 
	 particles = [P.Ah1, P.su2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_249}) 
 
 
V_250 = Vertex(name = 'V_250', 
	 particles = [P.Ah1, P.su2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_250}) 
 
 
V_251 = Vertex(name = 'V_251', 
	 particles = [P.Ah1, P.su2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_251}) 
 
 
V_252 = Vertex(name = 'V_252', 
	 particles = [P.Ah1, P.su2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_252}) 
 
 
V_253 = Vertex(name = 'V_253', 
	 particles = [P.Ah1, P.su3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_253}) 
 
 
V_254 = Vertex(name = 'V_254', 
	 particles = [P.Ah1, P.su3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_254}) 
 
 
V_255 = Vertex(name = 'V_255', 
	 particles = [P.Ah1, P.su3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_255}) 
 
 
V_256 = Vertex(name = 'V_256', 
	 particles = [P.Ah1, P.su3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_256}) 
 
 
V_257 = Vertex(name = 'V_257', 
	 particles = [P.Ah1, P.su3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_257}) 
 
 
V_258 = Vertex(name = 'V_258', 
	 particles = [P.Ah1, P.su3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_258}) 
 
 
V_259 = Vertex(name = 'V_259', 
	 particles = [P.Ah1, P.su4, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_259}) 
 
 
V_260 = Vertex(name = 'V_260', 
	 particles = [P.Ah1, P.su4, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_260}) 
 
 
V_261 = Vertex(name = 'V_261', 
	 particles = [P.Ah1, P.su4, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_261}) 
 
 
V_262 = Vertex(name = 'V_262', 
	 particles = [P.Ah1, P.su4, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_262}) 
 
 
V_263 = Vertex(name = 'V_263', 
	 particles = [P.Ah1, P.su4, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_263}) 
 
 
V_264 = Vertex(name = 'V_264', 
	 particles = [P.Ah1, P.su4, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_264}) 
 
 
V_265 = Vertex(name = 'V_265', 
	 particles = [P.Ah1, P.su5, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_265}) 
 
 
V_266 = Vertex(name = 'V_266', 
	 particles = [P.Ah1, P.su5, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_266}) 
 
 
V_267 = Vertex(name = 'V_267', 
	 particles = [P.Ah1, P.su5, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_267}) 
 
 
V_268 = Vertex(name = 'V_268', 
	 particles = [P.Ah1, P.su5, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_268}) 
 
 
V_269 = Vertex(name = 'V_269', 
	 particles = [P.Ah1, P.su5, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_269}) 
 
 
V_270 = Vertex(name = 'V_270', 
	 particles = [P.Ah1, P.su5, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_270}) 
 
 
V_271 = Vertex(name = 'V_271', 
	 particles = [P.Ah1, P.su6, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_271}) 
 
 
V_272 = Vertex(name = 'V_272', 
	 particles = [P.Ah1, P.su6, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_272}) 
 
 
V_273 = Vertex(name = 'V_273', 
	 particles = [P.Ah1, P.su6, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_273}) 
 
 
V_274 = Vertex(name = 'V_274', 
	 particles = [P.Ah1, P.su6, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_274}) 
 
 
V_275 = Vertex(name = 'V_275', 
	 particles = [P.Ah1, P.su6, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_275}) 
 
 
V_276 = Vertex(name = 'V_276', 
	 particles = [P.Ah1, P.su6, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_276}) 
 
 
V_277 = Vertex(name = 'V_277', 
	 particles = [P.Ah2, P.su1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_277}) 
 
 
V_278 = Vertex(name = 'V_278', 
	 particles = [P.Ah2, P.su1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_278}) 
 
 
V_279 = Vertex(name = 'V_279', 
	 particles = [P.Ah2, P.su1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_279}) 
 
 
V_280 = Vertex(name = 'V_280', 
	 particles = [P.Ah2, P.su1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_280}) 
 
 
V_281 = Vertex(name = 'V_281', 
	 particles = [P.Ah2, P.su1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_281}) 
 
 
V_282 = Vertex(name = 'V_282', 
	 particles = [P.Ah2, P.su1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_282}) 
 
 
V_283 = Vertex(name = 'V_283', 
	 particles = [P.Ah2, P.su2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_283}) 
 
 
V_284 = Vertex(name = 'V_284', 
	 particles = [P.Ah2, P.su2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_284}) 
 
 
V_285 = Vertex(name = 'V_285', 
	 particles = [P.Ah2, P.su2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_285}) 
 
 
V_286 = Vertex(name = 'V_286', 
	 particles = [P.Ah2, P.su2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_286}) 
 
 
V_287 = Vertex(name = 'V_287', 
	 particles = [P.Ah2, P.su2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_287}) 
 
 
V_288 = Vertex(name = 'V_288', 
	 particles = [P.Ah2, P.su2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_288}) 
 
 
V_289 = Vertex(name = 'V_289', 
	 particles = [P.Ah2, P.su3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_289}) 
 
 
V_290 = Vertex(name = 'V_290', 
	 particles = [P.Ah2, P.su3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_290}) 
 
 
V_291 = Vertex(name = 'V_291', 
	 particles = [P.Ah2, P.su3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_291}) 
 
 
V_292 = Vertex(name = 'V_292', 
	 particles = [P.Ah2, P.su3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_292}) 
 
 
V_293 = Vertex(name = 'V_293', 
	 particles = [P.Ah2, P.su3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_293}) 
 
 
V_294 = Vertex(name = 'V_294', 
	 particles = [P.Ah2, P.su3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_294}) 
 
 
V_295 = Vertex(name = 'V_295', 
	 particles = [P.Ah2, P.su4, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_295}) 
 
 
V_296 = Vertex(name = 'V_296', 
	 particles = [P.Ah2, P.su4, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_296}) 
 
 
V_297 = Vertex(name = 'V_297', 
	 particles = [P.Ah2, P.su4, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_297}) 
 
 
V_298 = Vertex(name = 'V_298', 
	 particles = [P.Ah2, P.su4, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_298}) 
 
 
V_299 = Vertex(name = 'V_299', 
	 particles = [P.Ah2, P.su4, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_299}) 
 
 
V_300 = Vertex(name = 'V_300', 
	 particles = [P.Ah2, P.su4, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_300}) 
 
 
V_301 = Vertex(name = 'V_301', 
	 particles = [P.Ah2, P.su5, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_301}) 
 
 
V_302 = Vertex(name = 'V_302', 
	 particles = [P.Ah2, P.su5, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_302}) 
 
 
V_303 = Vertex(name = 'V_303', 
	 particles = [P.Ah2, P.su5, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_303}) 
 
 
V_304 = Vertex(name = 'V_304', 
	 particles = [P.Ah2, P.su5, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_304}) 
 
 
V_305 = Vertex(name = 'V_305', 
	 particles = [P.Ah2, P.su5, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_305}) 
 
 
V_306 = Vertex(name = 'V_306', 
	 particles = [P.Ah2, P.su5, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_306}) 
 
 
V_307 = Vertex(name = 'V_307', 
	 particles = [P.Ah2, P.su6, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_307}) 
 
 
V_308 = Vertex(name = 'V_308', 
	 particles = [P.Ah2, P.su6, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_308}) 
 
 
V_309 = Vertex(name = 'V_309', 
	 particles = [P.Ah2, P.su6, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_309}) 
 
 
V_310 = Vertex(name = 'V_310', 
	 particles = [P.Ah2, P.su6, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_310}) 
 
 
V_311 = Vertex(name = 'V_311', 
	 particles = [P.Ah2, P.su6, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_311}) 
 
 
V_312 = Vertex(name = 'V_312', 
	 particles = [P.Ah2, P.su6, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_312}) 
 
 
V_313 = Vertex(name = 'V_313', 
	 particles = [P.Ah3, P.su1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_313}) 
 
 
V_314 = Vertex(name = 'V_314', 
	 particles = [P.Ah3, P.su1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_314}) 
 
 
V_315 = Vertex(name = 'V_315', 
	 particles = [P.Ah3, P.su1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_315}) 
 
 
V_316 = Vertex(name = 'V_316', 
	 particles = [P.Ah3, P.su1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_316}) 
 
 
V_317 = Vertex(name = 'V_317', 
	 particles = [P.Ah3, P.su1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_317}) 
 
 
V_318 = Vertex(name = 'V_318', 
	 particles = [P.Ah3, P.su1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_318}) 
 
 
V_319 = Vertex(name = 'V_319', 
	 particles = [P.Ah3, P.su2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_319}) 
 
 
V_320 = Vertex(name = 'V_320', 
	 particles = [P.Ah3, P.su2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_320}) 
 
 
V_321 = Vertex(name = 'V_321', 
	 particles = [P.Ah3, P.su2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_321}) 
 
 
V_322 = Vertex(name = 'V_322', 
	 particles = [P.Ah3, P.su2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_322}) 
 
 
V_323 = Vertex(name = 'V_323', 
	 particles = [P.Ah3, P.su2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_323}) 
 
 
V_324 = Vertex(name = 'V_324', 
	 particles = [P.Ah3, P.su2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_324}) 
 
 
V_325 = Vertex(name = 'V_325', 
	 particles = [P.Ah3, P.su3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_325}) 
 
 
V_326 = Vertex(name = 'V_326', 
	 particles = [P.Ah3, P.su3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_326}) 
 
 
V_327 = Vertex(name = 'V_327', 
	 particles = [P.Ah3, P.su3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_327}) 
 
 
V_328 = Vertex(name = 'V_328', 
	 particles = [P.Ah3, P.su3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_328}) 
 
 
V_329 = Vertex(name = 'V_329', 
	 particles = [P.Ah3, P.su3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_329}) 
 
 
V_330 = Vertex(name = 'V_330', 
	 particles = [P.Ah3, P.su3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_330}) 
 
 
V_331 = Vertex(name = 'V_331', 
	 particles = [P.Ah3, P.su4, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_331}) 
 
 
V_332 = Vertex(name = 'V_332', 
	 particles = [P.Ah3, P.su4, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_332}) 
 
 
V_333 = Vertex(name = 'V_333', 
	 particles = [P.Ah3, P.su4, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_333}) 
 
 
V_334 = Vertex(name = 'V_334', 
	 particles = [P.Ah3, P.su4, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_334}) 
 
 
V_335 = Vertex(name = 'V_335', 
	 particles = [P.Ah3, P.su4, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_335}) 
 
 
V_336 = Vertex(name = 'V_336', 
	 particles = [P.Ah3, P.su4, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_336}) 
 
 
V_337 = Vertex(name = 'V_337', 
	 particles = [P.Ah3, P.su5, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_337}) 
 
 
V_338 = Vertex(name = 'V_338', 
	 particles = [P.Ah3, P.su5, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_338}) 
 
 
V_339 = Vertex(name = 'V_339', 
	 particles = [P.Ah3, P.su5, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_339}) 
 
 
V_340 = Vertex(name = 'V_340', 
	 particles = [P.Ah3, P.su5, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_340}) 
 
 
V_341 = Vertex(name = 'V_341', 
	 particles = [P.Ah3, P.su5, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_341}) 
 
 
V_342 = Vertex(name = 'V_342', 
	 particles = [P.Ah3, P.su5, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_342}) 
 
 
V_343 = Vertex(name = 'V_343', 
	 particles = [P.Ah3, P.su6, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_343}) 
 
 
V_344 = Vertex(name = 'V_344', 
	 particles = [P.Ah3, P.su6, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_344}) 
 
 
V_345 = Vertex(name = 'V_345', 
	 particles = [P.Ah3, P.su6, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_345}) 
 
 
V_346 = Vertex(name = 'V_346', 
	 particles = [P.Ah3, P.su6, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_346}) 
 
 
V_347 = Vertex(name = 'V_347', 
	 particles = [P.Ah3, P.su6, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_347}) 
 
 
V_348 = Vertex(name = 'V_348', 
	 particles = [P.Ah3, P.su6, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_348}) 
 
 
V_349 = Vertex(name = 'V_349', 
	 particles = [P.h1, P.h1, P.h1], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_349}) 
 
 
V_350 = Vertex(name = 'V_350', 
	 particles = [P.h1, P.h1, P.h2], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_350}) 
 
 
V_351 = Vertex(name = 'V_351', 
	 particles = [P.h1, P.h1, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_351}) 
 
 
V_352 = Vertex(name = 'V_352', 
	 particles = [P.h1, P.h2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_352}) 
 
 
V_353 = Vertex(name = 'V_353', 
	 particles = [P.h1, P.h2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_353}) 
 
 
V_354 = Vertex(name = 'V_354', 
	 particles = [P.h1, P.h3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_354}) 
 
 
V_355 = Vertex(name = 'V_355', 
	 particles = [P.h2, P.h2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_355}) 
 
 
V_356 = Vertex(name = 'V_356', 
	 particles = [P.h2, P.h2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_356}) 
 
 
V_357 = Vertex(name = 'V_357', 
	 particles = [P.h2, P.h3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_357}) 
 
 
V_358 = Vertex(name = 'V_358', 
	 particles = [P.h3, P.h3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_358}) 
 
 
V_359 = Vertex(name = 'V_359', 
	 particles = [P.h1, P.Hm1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_359}) 
 
 
V_360 = Vertex(name = 'V_360', 
	 particles = [P.h1, P.Hm1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_360}) 
 
 
V_361 = Vertex(name = 'V_361', 
	 particles = [P.h1, P.Hm2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_361}) 
 
 
V_362 = Vertex(name = 'V_362', 
	 particles = [P.h1, P.Hm2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_362}) 
 
 
V_363 = Vertex(name = 'V_363', 
	 particles = [P.h2, P.Hm1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_363}) 
 
 
V_364 = Vertex(name = 'V_364', 
	 particles = [P.h2, P.Hm1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_364}) 
 
 
V_365 = Vertex(name = 'V_365', 
	 particles = [P.h2, P.Hm2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_365}) 
 
 
V_366 = Vertex(name = 'V_366', 
	 particles = [P.h2, P.Hm2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_366}) 
 
 
V_367 = Vertex(name = 'V_367', 
	 particles = [P.h3, P.Hm1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_367}) 
 
 
V_368 = Vertex(name = 'V_368', 
	 particles = [P.h3, P.Hm1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_368}) 
 
 
V_369 = Vertex(name = 'V_369', 
	 particles = [P.h3, P.Hm2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_369}) 
 
 
V_370 = Vertex(name = 'V_370', 
	 particles = [P.h3, P.Hm2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_370}) 
 
 
V_371 = Vertex(name = 'V_371', 
	 particles = [P.h1, P.sd1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_371}) 
 
 
V_372 = Vertex(name = 'V_372', 
	 particles = [P.h1, P.sd1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_372}) 
 
 
V_373 = Vertex(name = 'V_373', 
	 particles = [P.h1, P.sd1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_373}) 
 
 
V_374 = Vertex(name = 'V_374', 
	 particles = [P.h1, P.sd1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_374}) 
 
 
V_375 = Vertex(name = 'V_375', 
	 particles = [P.h1, P.sd1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_375}) 
 
 
V_376 = Vertex(name = 'V_376', 
	 particles = [P.h1, P.sd1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_376}) 
 
 
V_377 = Vertex(name = 'V_377', 
	 particles = [P.h1, P.sd2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_377}) 
 
 
V_378 = Vertex(name = 'V_378', 
	 particles = [P.h1, P.sd2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_378}) 
 
 
V_379 = Vertex(name = 'V_379', 
	 particles = [P.h1, P.sd2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_379}) 
 
 
V_380 = Vertex(name = 'V_380', 
	 particles = [P.h1, P.sd2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_380}) 
 
 
V_381 = Vertex(name = 'V_381', 
	 particles = [P.h1, P.sd2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_381}) 
 
 
V_382 = Vertex(name = 'V_382', 
	 particles = [P.h1, P.sd2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_382}) 
 
 
V_383 = Vertex(name = 'V_383', 
	 particles = [P.h1, P.sd3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_383}) 
 
 
V_384 = Vertex(name = 'V_384', 
	 particles = [P.h1, P.sd3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_384}) 
 
 
V_385 = Vertex(name = 'V_385', 
	 particles = [P.h1, P.sd3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_385}) 
 
 
V_386 = Vertex(name = 'V_386', 
	 particles = [P.h1, P.sd3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_386}) 
 
 
V_387 = Vertex(name = 'V_387', 
	 particles = [P.h1, P.sd3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_387}) 
 
 
V_388 = Vertex(name = 'V_388', 
	 particles = [P.h1, P.sd3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_388}) 
 
 
V_389 = Vertex(name = 'V_389', 
	 particles = [P.h1, P.sd4, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_389}) 
 
 
V_390 = Vertex(name = 'V_390', 
	 particles = [P.h1, P.sd4, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_390}) 
 
 
V_391 = Vertex(name = 'V_391', 
	 particles = [P.h1, P.sd4, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_391}) 
 
 
V_392 = Vertex(name = 'V_392', 
	 particles = [P.h1, P.sd4, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_392}) 
 
 
V_393 = Vertex(name = 'V_393', 
	 particles = [P.h1, P.sd4, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_393}) 
 
 
V_394 = Vertex(name = 'V_394', 
	 particles = [P.h1, P.sd4, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_394}) 
 
 
V_395 = Vertex(name = 'V_395', 
	 particles = [P.h1, P.sd5, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_395}) 
 
 
V_396 = Vertex(name = 'V_396', 
	 particles = [P.h1, P.sd5, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_396}) 
 
 
V_397 = Vertex(name = 'V_397', 
	 particles = [P.h1, P.sd5, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_397}) 
 
 
V_398 = Vertex(name = 'V_398', 
	 particles = [P.h1, P.sd5, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_398}) 
 
 
V_399 = Vertex(name = 'V_399', 
	 particles = [P.h1, P.sd5, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_399}) 
 
 
V_400 = Vertex(name = 'V_400', 
	 particles = [P.h1, P.sd5, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_400}) 
 
 
V_401 = Vertex(name = 'V_401', 
	 particles = [P.h1, P.sd6, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_401}) 
 
 
V_402 = Vertex(name = 'V_402', 
	 particles = [P.h1, P.sd6, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_402}) 
 
 
V_403 = Vertex(name = 'V_403', 
	 particles = [P.h1, P.sd6, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_403}) 
 
 
V_404 = Vertex(name = 'V_404', 
	 particles = [P.h1, P.sd6, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_404}) 
 
 
V_405 = Vertex(name = 'V_405', 
	 particles = [P.h1, P.sd6, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_405}) 
 
 
V_406 = Vertex(name = 'V_406', 
	 particles = [P.h1, P.sd6, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_406}) 
 
 
V_407 = Vertex(name = 'V_407', 
	 particles = [P.h2, P.sd1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_407}) 
 
 
V_408 = Vertex(name = 'V_408', 
	 particles = [P.h2, P.sd1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_408}) 
 
 
V_409 = Vertex(name = 'V_409', 
	 particles = [P.h2, P.sd1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_409}) 
 
 
V_410 = Vertex(name = 'V_410', 
	 particles = [P.h2, P.sd1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_410}) 
 
 
V_411 = Vertex(name = 'V_411', 
	 particles = [P.h2, P.sd1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_411}) 
 
 
V_412 = Vertex(name = 'V_412', 
	 particles = [P.h2, P.sd1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_412}) 
 
 
V_413 = Vertex(name = 'V_413', 
	 particles = [P.h2, P.sd2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_413}) 
 
 
V_414 = Vertex(name = 'V_414', 
	 particles = [P.h2, P.sd2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_414}) 
 
 
V_415 = Vertex(name = 'V_415', 
	 particles = [P.h2, P.sd2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_415}) 
 
 
V_416 = Vertex(name = 'V_416', 
	 particles = [P.h2, P.sd2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_416}) 
 
 
V_417 = Vertex(name = 'V_417', 
	 particles = [P.h2, P.sd2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_417}) 
 
 
V_418 = Vertex(name = 'V_418', 
	 particles = [P.h2, P.sd2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_418}) 
 
 
V_419 = Vertex(name = 'V_419', 
	 particles = [P.h2, P.sd3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_419}) 
 
 
V_420 = Vertex(name = 'V_420', 
	 particles = [P.h2, P.sd3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_420}) 
 
 
V_421 = Vertex(name = 'V_421', 
	 particles = [P.h2, P.sd3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_421}) 
 
 
V_422 = Vertex(name = 'V_422', 
	 particles = [P.h2, P.sd3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_422}) 
 
 
V_423 = Vertex(name = 'V_423', 
	 particles = [P.h2, P.sd3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_423}) 
 
 
V_424 = Vertex(name = 'V_424', 
	 particles = [P.h2, P.sd3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_424}) 
 
 
V_425 = Vertex(name = 'V_425', 
	 particles = [P.h2, P.sd4, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_425}) 
 
 
V_426 = Vertex(name = 'V_426', 
	 particles = [P.h2, P.sd4, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_426}) 
 
 
V_427 = Vertex(name = 'V_427', 
	 particles = [P.h2, P.sd4, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_427}) 
 
 
V_428 = Vertex(name = 'V_428', 
	 particles = [P.h2, P.sd4, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_428}) 
 
 
V_429 = Vertex(name = 'V_429', 
	 particles = [P.h2, P.sd4, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_429}) 
 
 
V_430 = Vertex(name = 'V_430', 
	 particles = [P.h2, P.sd4, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_430}) 
 
 
V_431 = Vertex(name = 'V_431', 
	 particles = [P.h2, P.sd5, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_431}) 
 
 
V_432 = Vertex(name = 'V_432', 
	 particles = [P.h2, P.sd5, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_432}) 
 
 
V_433 = Vertex(name = 'V_433', 
	 particles = [P.h2, P.sd5, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_433}) 
 
 
V_434 = Vertex(name = 'V_434', 
	 particles = [P.h2, P.sd5, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_434}) 
 
 
V_435 = Vertex(name = 'V_435', 
	 particles = [P.h2, P.sd5, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_435}) 
 
 
V_436 = Vertex(name = 'V_436', 
	 particles = [P.h2, P.sd5, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_436}) 
 
 
V_437 = Vertex(name = 'V_437', 
	 particles = [P.h2, P.sd6, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_437}) 
 
 
V_438 = Vertex(name = 'V_438', 
	 particles = [P.h2, P.sd6, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_438}) 
 
 
V_439 = Vertex(name = 'V_439', 
	 particles = [P.h2, P.sd6, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_439}) 
 
 
V_440 = Vertex(name = 'V_440', 
	 particles = [P.h2, P.sd6, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_440}) 
 
 
V_441 = Vertex(name = 'V_441', 
	 particles = [P.h2, P.sd6, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_441}) 
 
 
V_442 = Vertex(name = 'V_442', 
	 particles = [P.h2, P.sd6, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_442}) 
 
 
V_443 = Vertex(name = 'V_443', 
	 particles = [P.h3, P.sd1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_443}) 
 
 
V_444 = Vertex(name = 'V_444', 
	 particles = [P.h3, P.sd1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_444}) 
 
 
V_445 = Vertex(name = 'V_445', 
	 particles = [P.h3, P.sd1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_445}) 
 
 
V_446 = Vertex(name = 'V_446', 
	 particles = [P.h3, P.sd1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_446}) 
 
 
V_447 = Vertex(name = 'V_447', 
	 particles = [P.h3, P.sd1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_447}) 
 
 
V_448 = Vertex(name = 'V_448', 
	 particles = [P.h3, P.sd1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_448}) 
 
 
V_449 = Vertex(name = 'V_449', 
	 particles = [P.h3, P.sd2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_449}) 
 
 
V_450 = Vertex(name = 'V_450', 
	 particles = [P.h3, P.sd2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_450}) 
 
 
V_451 = Vertex(name = 'V_451', 
	 particles = [P.h3, P.sd2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_451}) 
 
 
V_452 = Vertex(name = 'V_452', 
	 particles = [P.h3, P.sd2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_452}) 
 
 
V_453 = Vertex(name = 'V_453', 
	 particles = [P.h3, P.sd2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_453}) 
 
 
V_454 = Vertex(name = 'V_454', 
	 particles = [P.h3, P.sd2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_454}) 
 
 
V_455 = Vertex(name = 'V_455', 
	 particles = [P.h3, P.sd3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_455}) 
 
 
V_456 = Vertex(name = 'V_456', 
	 particles = [P.h3, P.sd3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_456}) 
 
 
V_457 = Vertex(name = 'V_457', 
	 particles = [P.h3, P.sd3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_457}) 
 
 
V_458 = Vertex(name = 'V_458', 
	 particles = [P.h3, P.sd3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_458}) 
 
 
V_459 = Vertex(name = 'V_459', 
	 particles = [P.h3, P.sd3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_459}) 
 
 
V_460 = Vertex(name = 'V_460', 
	 particles = [P.h3, P.sd3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_460}) 
 
 
V_461 = Vertex(name = 'V_461', 
	 particles = [P.h3, P.sd4, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_461}) 
 
 
V_462 = Vertex(name = 'V_462', 
	 particles = [P.h3, P.sd4, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_462}) 
 
 
V_463 = Vertex(name = 'V_463', 
	 particles = [P.h3, P.sd4, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_463}) 
 
 
V_464 = Vertex(name = 'V_464', 
	 particles = [P.h3, P.sd4, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_464}) 
 
 
V_465 = Vertex(name = 'V_465', 
	 particles = [P.h3, P.sd4, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_465}) 
 
 
V_466 = Vertex(name = 'V_466', 
	 particles = [P.h3, P.sd4, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_466}) 
 
 
V_467 = Vertex(name = 'V_467', 
	 particles = [P.h3, P.sd5, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_467}) 
 
 
V_468 = Vertex(name = 'V_468', 
	 particles = [P.h3, P.sd5, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_468}) 
 
 
V_469 = Vertex(name = 'V_469', 
	 particles = [P.h3, P.sd5, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_469}) 
 
 
V_470 = Vertex(name = 'V_470', 
	 particles = [P.h3, P.sd5, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_470}) 
 
 
V_471 = Vertex(name = 'V_471', 
	 particles = [P.h3, P.sd5, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_471}) 
 
 
V_472 = Vertex(name = 'V_472', 
	 particles = [P.h3, P.sd5, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_472}) 
 
 
V_473 = Vertex(name = 'V_473', 
	 particles = [P.h3, P.sd6, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_473}) 
 
 
V_474 = Vertex(name = 'V_474', 
	 particles = [P.h3, P.sd6, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_474}) 
 
 
V_475 = Vertex(name = 'V_475', 
	 particles = [P.h3, P.sd6, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_475}) 
 
 
V_476 = Vertex(name = 'V_476', 
	 particles = [P.h3, P.sd6, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_476}) 
 
 
V_477 = Vertex(name = 'V_477', 
	 particles = [P.h3, P.sd6, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_477}) 
 
 
V_478 = Vertex(name = 'V_478', 
	 particles = [P.h3, P.sd6, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_478}) 
 
 
V_479 = Vertex(name = 'V_479', 
	 particles = [P.h1, P.se1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_479}) 
 
 
V_480 = Vertex(name = 'V_480', 
	 particles = [P.h1, P.se1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_480}) 
 
 
V_481 = Vertex(name = 'V_481', 
	 particles = [P.h1, P.se1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_481}) 
 
 
V_482 = Vertex(name = 'V_482', 
	 particles = [P.h1, P.se1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_482}) 
 
 
V_483 = Vertex(name = 'V_483', 
	 particles = [P.h1, P.se1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_483}) 
 
 
V_484 = Vertex(name = 'V_484', 
	 particles = [P.h1, P.se1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_484}) 
 
 
V_485 = Vertex(name = 'V_485', 
	 particles = [P.h1, P.se2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_485}) 
 
 
V_486 = Vertex(name = 'V_486', 
	 particles = [P.h1, P.se2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_486}) 
 
 
V_487 = Vertex(name = 'V_487', 
	 particles = [P.h1, P.se2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_487}) 
 
 
V_488 = Vertex(name = 'V_488', 
	 particles = [P.h1, P.se2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_488}) 
 
 
V_489 = Vertex(name = 'V_489', 
	 particles = [P.h1, P.se2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_489}) 
 
 
V_490 = Vertex(name = 'V_490', 
	 particles = [P.h1, P.se2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_490}) 
 
 
V_491 = Vertex(name = 'V_491', 
	 particles = [P.h1, P.se3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_491}) 
 
 
V_492 = Vertex(name = 'V_492', 
	 particles = [P.h1, P.se3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_492}) 
 
 
V_493 = Vertex(name = 'V_493', 
	 particles = [P.h1, P.se3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_493}) 
 
 
V_494 = Vertex(name = 'V_494', 
	 particles = [P.h1, P.se3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_494}) 
 
 
V_495 = Vertex(name = 'V_495', 
	 particles = [P.h1, P.se3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_495}) 
 
 
V_496 = Vertex(name = 'V_496', 
	 particles = [P.h1, P.se3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_496}) 
 
 
V_497 = Vertex(name = 'V_497', 
	 particles = [P.h1, P.se4, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_497}) 
 
 
V_498 = Vertex(name = 'V_498', 
	 particles = [P.h1, P.se4, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_498}) 
 
 
V_499 = Vertex(name = 'V_499', 
	 particles = [P.h1, P.se4, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_499}) 
 
 
V_500 = Vertex(name = 'V_500', 
	 particles = [P.h1, P.se4, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_500}) 
 
 
V_501 = Vertex(name = 'V_501', 
	 particles = [P.h1, P.se4, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_501}) 
 
 
V_502 = Vertex(name = 'V_502', 
	 particles = [P.h1, P.se4, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_502}) 
 
 
V_503 = Vertex(name = 'V_503', 
	 particles = [P.h1, P.se5, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_503}) 
 
 
V_504 = Vertex(name = 'V_504', 
	 particles = [P.h1, P.se5, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_504}) 
 
 
V_505 = Vertex(name = 'V_505', 
	 particles = [P.h1, P.se5, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_505}) 
 
 
V_506 = Vertex(name = 'V_506', 
	 particles = [P.h1, P.se5, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_506}) 
 
 
V_507 = Vertex(name = 'V_507', 
	 particles = [P.h1, P.se5, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_507}) 
 
 
V_508 = Vertex(name = 'V_508', 
	 particles = [P.h1, P.se5, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_508}) 
 
 
V_509 = Vertex(name = 'V_509', 
	 particles = [P.h1, P.se6, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_509}) 
 
 
V_510 = Vertex(name = 'V_510', 
	 particles = [P.h1, P.se6, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_510}) 
 
 
V_511 = Vertex(name = 'V_511', 
	 particles = [P.h1, P.se6, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_511}) 
 
 
V_512 = Vertex(name = 'V_512', 
	 particles = [P.h1, P.se6, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_512}) 
 
 
V_513 = Vertex(name = 'V_513', 
	 particles = [P.h1, P.se6, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_513}) 
 
 
V_514 = Vertex(name = 'V_514', 
	 particles = [P.h1, P.se6, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_514}) 
 
 
V_515 = Vertex(name = 'V_515', 
	 particles = [P.h2, P.se1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_515}) 
 
 
V_516 = Vertex(name = 'V_516', 
	 particles = [P.h2, P.se1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_516}) 
 
 
V_517 = Vertex(name = 'V_517', 
	 particles = [P.h2, P.se1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_517}) 
 
 
V_518 = Vertex(name = 'V_518', 
	 particles = [P.h2, P.se1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_518}) 
 
 
V_519 = Vertex(name = 'V_519', 
	 particles = [P.h2, P.se1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_519}) 
 
 
V_520 = Vertex(name = 'V_520', 
	 particles = [P.h2, P.se1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_520}) 
 
 
V_521 = Vertex(name = 'V_521', 
	 particles = [P.h2, P.se2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_521}) 
 
 
V_522 = Vertex(name = 'V_522', 
	 particles = [P.h2, P.se2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_522}) 
 
 
V_523 = Vertex(name = 'V_523', 
	 particles = [P.h2, P.se2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_523}) 
 
 
V_524 = Vertex(name = 'V_524', 
	 particles = [P.h2, P.se2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_524}) 
 
 
V_525 = Vertex(name = 'V_525', 
	 particles = [P.h2, P.se2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_525}) 
 
 
V_526 = Vertex(name = 'V_526', 
	 particles = [P.h2, P.se2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_526}) 
 
 
V_527 = Vertex(name = 'V_527', 
	 particles = [P.h2, P.se3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_527}) 
 
 
V_528 = Vertex(name = 'V_528', 
	 particles = [P.h2, P.se3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_528}) 
 
 
V_529 = Vertex(name = 'V_529', 
	 particles = [P.h2, P.se3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_529}) 
 
 
V_530 = Vertex(name = 'V_530', 
	 particles = [P.h2, P.se3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_530}) 
 
 
V_531 = Vertex(name = 'V_531', 
	 particles = [P.h2, P.se3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_531}) 
 
 
V_532 = Vertex(name = 'V_532', 
	 particles = [P.h2, P.se3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_532}) 
 
 
V_533 = Vertex(name = 'V_533', 
	 particles = [P.h2, P.se4, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_533}) 
 
 
V_534 = Vertex(name = 'V_534', 
	 particles = [P.h2, P.se4, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_534}) 
 
 
V_535 = Vertex(name = 'V_535', 
	 particles = [P.h2, P.se4, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_535}) 
 
 
V_536 = Vertex(name = 'V_536', 
	 particles = [P.h2, P.se4, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_536}) 
 
 
V_537 = Vertex(name = 'V_537', 
	 particles = [P.h2, P.se4, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_537}) 
 
 
V_538 = Vertex(name = 'V_538', 
	 particles = [P.h2, P.se4, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_538}) 
 
 
V_539 = Vertex(name = 'V_539', 
	 particles = [P.h2, P.se5, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_539}) 
 
 
V_540 = Vertex(name = 'V_540', 
	 particles = [P.h2, P.se5, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_540}) 
 
 
V_541 = Vertex(name = 'V_541', 
	 particles = [P.h2, P.se5, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_541}) 
 
 
V_542 = Vertex(name = 'V_542', 
	 particles = [P.h2, P.se5, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_542}) 
 
 
V_543 = Vertex(name = 'V_543', 
	 particles = [P.h2, P.se5, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_543}) 
 
 
V_544 = Vertex(name = 'V_544', 
	 particles = [P.h2, P.se5, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_544}) 
 
 
V_545 = Vertex(name = 'V_545', 
	 particles = [P.h2, P.se6, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_545}) 
 
 
V_546 = Vertex(name = 'V_546', 
	 particles = [P.h2, P.se6, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_546}) 
 
 
V_547 = Vertex(name = 'V_547', 
	 particles = [P.h2, P.se6, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_547}) 
 
 
V_548 = Vertex(name = 'V_548', 
	 particles = [P.h2, P.se6, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_548}) 
 
 
V_549 = Vertex(name = 'V_549', 
	 particles = [P.h2, P.se6, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_549}) 
 
 
V_550 = Vertex(name = 'V_550', 
	 particles = [P.h2, P.se6, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_550}) 
 
 
V_551 = Vertex(name = 'V_551', 
	 particles = [P.h3, P.se1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_551}) 
 
 
V_552 = Vertex(name = 'V_552', 
	 particles = [P.h3, P.se1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_552}) 
 
 
V_553 = Vertex(name = 'V_553', 
	 particles = [P.h3, P.se1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_553}) 
 
 
V_554 = Vertex(name = 'V_554', 
	 particles = [P.h3, P.se1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_554}) 
 
 
V_555 = Vertex(name = 'V_555', 
	 particles = [P.h3, P.se1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_555}) 
 
 
V_556 = Vertex(name = 'V_556', 
	 particles = [P.h3, P.se1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_556}) 
 
 
V_557 = Vertex(name = 'V_557', 
	 particles = [P.h3, P.se2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_557}) 
 
 
V_558 = Vertex(name = 'V_558', 
	 particles = [P.h3, P.se2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_558}) 
 
 
V_559 = Vertex(name = 'V_559', 
	 particles = [P.h3, P.se2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_559}) 
 
 
V_560 = Vertex(name = 'V_560', 
	 particles = [P.h3, P.se2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_560}) 
 
 
V_561 = Vertex(name = 'V_561', 
	 particles = [P.h3, P.se2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_561}) 
 
 
V_562 = Vertex(name = 'V_562', 
	 particles = [P.h3, P.se2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_562}) 
 
 
V_563 = Vertex(name = 'V_563', 
	 particles = [P.h3, P.se3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_563}) 
 
 
V_564 = Vertex(name = 'V_564', 
	 particles = [P.h3, P.se3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_564}) 
 
 
V_565 = Vertex(name = 'V_565', 
	 particles = [P.h3, P.se3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_565}) 
 
 
V_566 = Vertex(name = 'V_566', 
	 particles = [P.h3, P.se3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_566}) 
 
 
V_567 = Vertex(name = 'V_567', 
	 particles = [P.h3, P.se3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_567}) 
 
 
V_568 = Vertex(name = 'V_568', 
	 particles = [P.h3, P.se3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_568}) 
 
 
V_569 = Vertex(name = 'V_569', 
	 particles = [P.h3, P.se4, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_569}) 
 
 
V_570 = Vertex(name = 'V_570', 
	 particles = [P.h3, P.se4, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_570}) 
 
 
V_571 = Vertex(name = 'V_571', 
	 particles = [P.h3, P.se4, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_571}) 
 
 
V_572 = Vertex(name = 'V_572', 
	 particles = [P.h3, P.se4, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_572}) 
 
 
V_573 = Vertex(name = 'V_573', 
	 particles = [P.h3, P.se4, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_573}) 
 
 
V_574 = Vertex(name = 'V_574', 
	 particles = [P.h3, P.se4, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_574}) 
 
 
V_575 = Vertex(name = 'V_575', 
	 particles = [P.h3, P.se5, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_575}) 
 
 
V_576 = Vertex(name = 'V_576', 
	 particles = [P.h3, P.se5, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_576}) 
 
 
V_577 = Vertex(name = 'V_577', 
	 particles = [P.h3, P.se5, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_577}) 
 
 
V_578 = Vertex(name = 'V_578', 
	 particles = [P.h3, P.se5, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_578}) 
 
 
V_579 = Vertex(name = 'V_579', 
	 particles = [P.h3, P.se5, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_579}) 
 
 
V_580 = Vertex(name = 'V_580', 
	 particles = [P.h3, P.se5, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_580}) 
 
 
V_581 = Vertex(name = 'V_581', 
	 particles = [P.h3, P.se6, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_581}) 
 
 
V_582 = Vertex(name = 'V_582', 
	 particles = [P.h3, P.se6, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_582}) 
 
 
V_583 = Vertex(name = 'V_583', 
	 particles = [P.h3, P.se6, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_583}) 
 
 
V_584 = Vertex(name = 'V_584', 
	 particles = [P.h3, P.se6, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_584}) 
 
 
V_585 = Vertex(name = 'V_585', 
	 particles = [P.h3, P.se6, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_585}) 
 
 
V_586 = Vertex(name = 'V_586', 
	 particles = [P.h3, P.se6, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_586}) 
 
 
V_587 = Vertex(name = 'V_587', 
	 particles = [P.h1, P.su1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_587}) 
 
 
V_588 = Vertex(name = 'V_588', 
	 particles = [P.h1, P.su1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_588}) 
 
 
V_589 = Vertex(name = 'V_589', 
	 particles = [P.h1, P.su1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_589}) 
 
 
V_590 = Vertex(name = 'V_590', 
	 particles = [P.h1, P.su1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_590}) 
 
 
V_591 = Vertex(name = 'V_591', 
	 particles = [P.h1, P.su1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_591}) 
 
 
V_592 = Vertex(name = 'V_592', 
	 particles = [P.h1, P.su1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_592}) 
 
 
V_593 = Vertex(name = 'V_593', 
	 particles = [P.h1, P.su2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_593}) 
 
 
V_594 = Vertex(name = 'V_594', 
	 particles = [P.h1, P.su2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_594}) 
 
 
V_595 = Vertex(name = 'V_595', 
	 particles = [P.h1, P.su2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_595}) 
 
 
V_596 = Vertex(name = 'V_596', 
	 particles = [P.h1, P.su2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_596}) 
 
 
V_597 = Vertex(name = 'V_597', 
	 particles = [P.h1, P.su2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_597}) 
 
 
V_598 = Vertex(name = 'V_598', 
	 particles = [P.h1, P.su2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_598}) 
 
 
V_599 = Vertex(name = 'V_599', 
	 particles = [P.h1, P.su3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_599}) 
 
 
V_600 = Vertex(name = 'V_600', 
	 particles = [P.h1, P.su3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_600}) 
 
 
V_601 = Vertex(name = 'V_601', 
	 particles = [P.h1, P.su3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_601}) 
 
 
V_602 = Vertex(name = 'V_602', 
	 particles = [P.h1, P.su3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_602}) 
 
 
V_603 = Vertex(name = 'V_603', 
	 particles = [P.h1, P.su3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_603}) 
 
 
V_604 = Vertex(name = 'V_604', 
	 particles = [P.h1, P.su3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_604}) 
 
 
V_605 = Vertex(name = 'V_605', 
	 particles = [P.h1, P.su4, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_605}) 
 
 
V_606 = Vertex(name = 'V_606', 
	 particles = [P.h1, P.su4, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_606}) 
 
 
V_607 = Vertex(name = 'V_607', 
	 particles = [P.h1, P.su4, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_607}) 
 
 
V_608 = Vertex(name = 'V_608', 
	 particles = [P.h1, P.su4, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_608}) 
 
 
V_609 = Vertex(name = 'V_609', 
	 particles = [P.h1, P.su4, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_609}) 
 
 
V_610 = Vertex(name = 'V_610', 
	 particles = [P.h1, P.su4, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_610}) 
 
 
V_611 = Vertex(name = 'V_611', 
	 particles = [P.h1, P.su5, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_611}) 
 
 
V_612 = Vertex(name = 'V_612', 
	 particles = [P.h1, P.su5, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_612}) 
 
 
V_613 = Vertex(name = 'V_613', 
	 particles = [P.h1, P.su5, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_613}) 
 
 
V_614 = Vertex(name = 'V_614', 
	 particles = [P.h1, P.su5, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_614}) 
 
 
V_615 = Vertex(name = 'V_615', 
	 particles = [P.h1, P.su5, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_615}) 
 
 
V_616 = Vertex(name = 'V_616', 
	 particles = [P.h1, P.su5, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_616}) 
 
 
V_617 = Vertex(name = 'V_617', 
	 particles = [P.h1, P.su6, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_617}) 
 
 
V_618 = Vertex(name = 'V_618', 
	 particles = [P.h1, P.su6, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_618}) 
 
 
V_619 = Vertex(name = 'V_619', 
	 particles = [P.h1, P.su6, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_619}) 
 
 
V_620 = Vertex(name = 'V_620', 
	 particles = [P.h1, P.su6, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_620}) 
 
 
V_621 = Vertex(name = 'V_621', 
	 particles = [P.h1, P.su6, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_621}) 
 
 
V_622 = Vertex(name = 'V_622', 
	 particles = [P.h1, P.su6, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_622}) 
 
 
V_623 = Vertex(name = 'V_623', 
	 particles = [P.h2, P.su1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_623}) 
 
 
V_624 = Vertex(name = 'V_624', 
	 particles = [P.h2, P.su1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_624}) 
 
 
V_625 = Vertex(name = 'V_625', 
	 particles = [P.h2, P.su1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_625}) 
 
 
V_626 = Vertex(name = 'V_626', 
	 particles = [P.h2, P.su1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_626}) 
 
 
V_627 = Vertex(name = 'V_627', 
	 particles = [P.h2, P.su1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_627}) 
 
 
V_628 = Vertex(name = 'V_628', 
	 particles = [P.h2, P.su1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_628}) 
 
 
V_629 = Vertex(name = 'V_629', 
	 particles = [P.h2, P.su2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_629}) 
 
 
V_630 = Vertex(name = 'V_630', 
	 particles = [P.h2, P.su2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_630}) 
 
 
V_631 = Vertex(name = 'V_631', 
	 particles = [P.h2, P.su2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_631}) 
 
 
V_632 = Vertex(name = 'V_632', 
	 particles = [P.h2, P.su2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_632}) 
 
 
V_633 = Vertex(name = 'V_633', 
	 particles = [P.h2, P.su2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_633}) 
 
 
V_634 = Vertex(name = 'V_634', 
	 particles = [P.h2, P.su2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_634}) 
 
 
V_635 = Vertex(name = 'V_635', 
	 particles = [P.h2, P.su3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_635}) 
 
 
V_636 = Vertex(name = 'V_636', 
	 particles = [P.h2, P.su3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_636}) 
 
 
V_637 = Vertex(name = 'V_637', 
	 particles = [P.h2, P.su3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_637}) 
 
 
V_638 = Vertex(name = 'V_638', 
	 particles = [P.h2, P.su3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_638}) 
 
 
V_639 = Vertex(name = 'V_639', 
	 particles = [P.h2, P.su3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_639}) 
 
 
V_640 = Vertex(name = 'V_640', 
	 particles = [P.h2, P.su3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_640}) 
 
 
V_641 = Vertex(name = 'V_641', 
	 particles = [P.h2, P.su4, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_641}) 
 
 
V_642 = Vertex(name = 'V_642', 
	 particles = [P.h2, P.su4, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_642}) 
 
 
V_643 = Vertex(name = 'V_643', 
	 particles = [P.h2, P.su4, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_643}) 
 
 
V_644 = Vertex(name = 'V_644', 
	 particles = [P.h2, P.su4, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_644}) 
 
 
V_645 = Vertex(name = 'V_645', 
	 particles = [P.h2, P.su4, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_645}) 
 
 
V_646 = Vertex(name = 'V_646', 
	 particles = [P.h2, P.su4, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_646}) 
 
 
V_647 = Vertex(name = 'V_647', 
	 particles = [P.h2, P.su5, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_647}) 
 
 
V_648 = Vertex(name = 'V_648', 
	 particles = [P.h2, P.su5, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_648}) 
 
 
V_649 = Vertex(name = 'V_649', 
	 particles = [P.h2, P.su5, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_649}) 
 
 
V_650 = Vertex(name = 'V_650', 
	 particles = [P.h2, P.su5, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_650}) 
 
 
V_651 = Vertex(name = 'V_651', 
	 particles = [P.h2, P.su5, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_651}) 
 
 
V_652 = Vertex(name = 'V_652', 
	 particles = [P.h2, P.su5, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_652}) 
 
 
V_653 = Vertex(name = 'V_653', 
	 particles = [P.h2, P.su6, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_653}) 
 
 
V_654 = Vertex(name = 'V_654', 
	 particles = [P.h2, P.su6, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_654}) 
 
 
V_655 = Vertex(name = 'V_655', 
	 particles = [P.h2, P.su6, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_655}) 
 
 
V_656 = Vertex(name = 'V_656', 
	 particles = [P.h2, P.su6, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_656}) 
 
 
V_657 = Vertex(name = 'V_657', 
	 particles = [P.h2, P.su6, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_657}) 
 
 
V_658 = Vertex(name = 'V_658', 
	 particles = [P.h2, P.su6, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_658}) 
 
 
V_659 = Vertex(name = 'V_659', 
	 particles = [P.h3, P.su1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_659}) 
 
 
V_660 = Vertex(name = 'V_660', 
	 particles = [P.h3, P.su1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_660}) 
 
 
V_661 = Vertex(name = 'V_661', 
	 particles = [P.h3, P.su1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_661}) 
 
 
V_662 = Vertex(name = 'V_662', 
	 particles = [P.h3, P.su1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_662}) 
 
 
V_663 = Vertex(name = 'V_663', 
	 particles = [P.h3, P.su1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_663}) 
 
 
V_664 = Vertex(name = 'V_664', 
	 particles = [P.h3, P.su1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_664}) 
 
 
V_665 = Vertex(name = 'V_665', 
	 particles = [P.h3, P.su2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_665}) 
 
 
V_666 = Vertex(name = 'V_666', 
	 particles = [P.h3, P.su2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_666}) 
 
 
V_667 = Vertex(name = 'V_667', 
	 particles = [P.h3, P.su2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_667}) 
 
 
V_668 = Vertex(name = 'V_668', 
	 particles = [P.h3, P.su2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_668}) 
 
 
V_669 = Vertex(name = 'V_669', 
	 particles = [P.h3, P.su2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_669}) 
 
 
V_670 = Vertex(name = 'V_670', 
	 particles = [P.h3, P.su2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_670}) 
 
 
V_671 = Vertex(name = 'V_671', 
	 particles = [P.h3, P.su3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_671}) 
 
 
V_672 = Vertex(name = 'V_672', 
	 particles = [P.h3, P.su3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_672}) 
 
 
V_673 = Vertex(name = 'V_673', 
	 particles = [P.h3, P.su3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_673}) 
 
 
V_674 = Vertex(name = 'V_674', 
	 particles = [P.h3, P.su3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_674}) 
 
 
V_675 = Vertex(name = 'V_675', 
	 particles = [P.h3, P.su3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_675}) 
 
 
V_676 = Vertex(name = 'V_676', 
	 particles = [P.h3, P.su3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_676}) 
 
 
V_677 = Vertex(name = 'V_677', 
	 particles = [P.h3, P.su4, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_677}) 
 
 
V_678 = Vertex(name = 'V_678', 
	 particles = [P.h3, P.su4, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_678}) 
 
 
V_679 = Vertex(name = 'V_679', 
	 particles = [P.h3, P.su4, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_679}) 
 
 
V_680 = Vertex(name = 'V_680', 
	 particles = [P.h3, P.su4, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_680}) 
 
 
V_681 = Vertex(name = 'V_681', 
	 particles = [P.h3, P.su4, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_681}) 
 
 
V_682 = Vertex(name = 'V_682', 
	 particles = [P.h3, P.su4, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_682}) 
 
 
V_683 = Vertex(name = 'V_683', 
	 particles = [P.h3, P.su5, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_683}) 
 
 
V_684 = Vertex(name = 'V_684', 
	 particles = [P.h3, P.su5, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_684}) 
 
 
V_685 = Vertex(name = 'V_685', 
	 particles = [P.h3, P.su5, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_685}) 
 
 
V_686 = Vertex(name = 'V_686', 
	 particles = [P.h3, P.su5, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_686}) 
 
 
V_687 = Vertex(name = 'V_687', 
	 particles = [P.h3, P.su5, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_687}) 
 
 
V_688 = Vertex(name = 'V_688', 
	 particles = [P.h3, P.su5, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_688}) 
 
 
V_689 = Vertex(name = 'V_689', 
	 particles = [P.h3, P.su6, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_689}) 
 
 
V_690 = Vertex(name = 'V_690', 
	 particles = [P.h3, P.su6, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_690}) 
 
 
V_691 = Vertex(name = 'V_691', 
	 particles = [P.h3, P.su6, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_691}) 
 
 
V_692 = Vertex(name = 'V_692', 
	 particles = [P.h3, P.su6, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_692}) 
 
 
V_693 = Vertex(name = 'V_693', 
	 particles = [P.h3, P.su6, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_693}) 
 
 
V_694 = Vertex(name = 'V_694', 
	 particles = [P.h3, P.su6, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_694}) 
 
 
V_695 = Vertex(name = 'V_695', 
	 particles = [P.h1, P.sv1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_695}) 
 
 
V_696 = Vertex(name = 'V_696', 
	 particles = [P.h1, P.sv1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_696}) 
 
 
V_697 = Vertex(name = 'V_697', 
	 particles = [P.h1, P.sv1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_697}) 
 
 
V_698 = Vertex(name = 'V_698', 
	 particles = [P.h1, P.sv2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_698}) 
 
 
V_699 = Vertex(name = 'V_699', 
	 particles = [P.h1, P.sv2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_699}) 
 
 
V_700 = Vertex(name = 'V_700', 
	 particles = [P.h1, P.sv2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_700}) 
 
 
V_701 = Vertex(name = 'V_701', 
	 particles = [P.h1, P.sv3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_701}) 
 
 
V_702 = Vertex(name = 'V_702', 
	 particles = [P.h1, P.sv3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_702}) 
 
 
V_703 = Vertex(name = 'V_703', 
	 particles = [P.h1, P.sv3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_703}) 
 
 
V_704 = Vertex(name = 'V_704', 
	 particles = [P.h2, P.sv1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_704}) 
 
 
V_705 = Vertex(name = 'V_705', 
	 particles = [P.h2, P.sv1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_705}) 
 
 
V_706 = Vertex(name = 'V_706', 
	 particles = [P.h2, P.sv1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_706}) 
 
 
V_707 = Vertex(name = 'V_707', 
	 particles = [P.h2, P.sv2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_707}) 
 
 
V_708 = Vertex(name = 'V_708', 
	 particles = [P.h2, P.sv2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_708}) 
 
 
V_709 = Vertex(name = 'V_709', 
	 particles = [P.h2, P.sv2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_709}) 
 
 
V_710 = Vertex(name = 'V_710', 
	 particles = [P.h2, P.sv3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_710}) 
 
 
V_711 = Vertex(name = 'V_711', 
	 particles = [P.h2, P.sv3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_711}) 
 
 
V_712 = Vertex(name = 'V_712', 
	 particles = [P.h2, P.sv3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_712}) 
 
 
V_713 = Vertex(name = 'V_713', 
	 particles = [P.h3, P.sv1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_713}) 
 
 
V_714 = Vertex(name = 'V_714', 
	 particles = [P.h3, P.sv1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_714}) 
 
 
V_715 = Vertex(name = 'V_715', 
	 particles = [P.h3, P.sv1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_715}) 
 
 
V_716 = Vertex(name = 'V_716', 
	 particles = [P.h3, P.sv2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_716}) 
 
 
V_717 = Vertex(name = 'V_717', 
	 particles = [P.h3, P.sv2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_717}) 
 
 
V_718 = Vertex(name = 'V_718', 
	 particles = [P.h3, P.sv2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_718}) 
 
 
V_719 = Vertex(name = 'V_719', 
	 particles = [P.h3, P.sv3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_719}) 
 
 
V_720 = Vertex(name = 'V_720', 
	 particles = [P.h3, P.sv3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_720}) 
 
 
V_721 = Vertex(name = 'V_721', 
	 particles = [P.h3, P.sv3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_721}) 
 
 
V_722 = Vertex(name = 'V_722', 
	 particles = [P.Hm1, P.su1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_722}) 
 
 
V_723 = Vertex(name = 'V_723', 
	 particles = [P.Hm1, P.su1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_723}) 
 
 
V_724 = Vertex(name = 'V_724', 
	 particles = [P.Hm1, P.su1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_724}) 
 
 
V_725 = Vertex(name = 'V_725', 
	 particles = [P.Hm1, P.su1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_725}) 
 
 
V_726 = Vertex(name = 'V_726', 
	 particles = [P.Hm1, P.su1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_726}) 
 
 
V_727 = Vertex(name = 'V_727', 
	 particles = [P.Hm1, P.su1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_727}) 
 
 
V_728 = Vertex(name = 'V_728', 
	 particles = [P.Hm1, P.su2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_728}) 
 
 
V_729 = Vertex(name = 'V_729', 
	 particles = [P.Hm1, P.su2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_729}) 
 
 
V_730 = Vertex(name = 'V_730', 
	 particles = [P.Hm1, P.su2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_730}) 
 
 
V_731 = Vertex(name = 'V_731', 
	 particles = [P.Hm1, P.su2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_731}) 
 
 
V_732 = Vertex(name = 'V_732', 
	 particles = [P.Hm1, P.su2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_732}) 
 
 
V_733 = Vertex(name = 'V_733', 
	 particles = [P.Hm1, P.su2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_733}) 
 
 
V_734 = Vertex(name = 'V_734', 
	 particles = [P.Hm1, P.su3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_734}) 
 
 
V_735 = Vertex(name = 'V_735', 
	 particles = [P.Hm1, P.su3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_735}) 
 
 
V_736 = Vertex(name = 'V_736', 
	 particles = [P.Hm1, P.su3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_736}) 
 
 
V_737 = Vertex(name = 'V_737', 
	 particles = [P.Hm1, P.su3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_737}) 
 
 
V_738 = Vertex(name = 'V_738', 
	 particles = [P.Hm1, P.su3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_738}) 
 
 
V_739 = Vertex(name = 'V_739', 
	 particles = [P.Hm1, P.su3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_739}) 
 
 
V_740 = Vertex(name = 'V_740', 
	 particles = [P.Hm1, P.su4, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_740}) 
 
 
V_741 = Vertex(name = 'V_741', 
	 particles = [P.Hm1, P.su4, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_741}) 
 
 
V_742 = Vertex(name = 'V_742', 
	 particles = [P.Hm1, P.su4, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_742}) 
 
 
V_743 = Vertex(name = 'V_743', 
	 particles = [P.Hm1, P.su4, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_743}) 
 
 
V_744 = Vertex(name = 'V_744', 
	 particles = [P.Hm1, P.su4, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_744}) 
 
 
V_745 = Vertex(name = 'V_745', 
	 particles = [P.Hm1, P.su4, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_745}) 
 
 
V_746 = Vertex(name = 'V_746', 
	 particles = [P.Hm1, P.su5, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_746}) 
 
 
V_747 = Vertex(name = 'V_747', 
	 particles = [P.Hm1, P.su5, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_747}) 
 
 
V_748 = Vertex(name = 'V_748', 
	 particles = [P.Hm1, P.su5, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_748}) 
 
 
V_749 = Vertex(name = 'V_749', 
	 particles = [P.Hm1, P.su5, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_749}) 
 
 
V_750 = Vertex(name = 'V_750', 
	 particles = [P.Hm1, P.su5, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_750}) 
 
 
V_751 = Vertex(name = 'V_751', 
	 particles = [P.Hm1, P.su5, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_751}) 
 
 
V_752 = Vertex(name = 'V_752', 
	 particles = [P.Hm1, P.su6, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_752}) 
 
 
V_753 = Vertex(name = 'V_753', 
	 particles = [P.Hm1, P.su6, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_753}) 
 
 
V_754 = Vertex(name = 'V_754', 
	 particles = [P.Hm1, P.su6, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_754}) 
 
 
V_755 = Vertex(name = 'V_755', 
	 particles = [P.Hm1, P.su6, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_755}) 
 
 
V_756 = Vertex(name = 'V_756', 
	 particles = [P.Hm1, P.su6, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_756}) 
 
 
V_757 = Vertex(name = 'V_757', 
	 particles = [P.Hm1, P.su6, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_757}) 
 
 
V_758 = Vertex(name = 'V_758', 
	 particles = [P.Hm2, P.su1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_758}) 
 
 
V_759 = Vertex(name = 'V_759', 
	 particles = [P.Hm2, P.su1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_759}) 
 
 
V_760 = Vertex(name = 'V_760', 
	 particles = [P.Hm2, P.su1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_760}) 
 
 
V_761 = Vertex(name = 'V_761', 
	 particles = [P.Hm2, P.su1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_761}) 
 
 
V_762 = Vertex(name = 'V_762', 
	 particles = [P.Hm2, P.su1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_762}) 
 
 
V_763 = Vertex(name = 'V_763', 
	 particles = [P.Hm2, P.su1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_763}) 
 
 
V_764 = Vertex(name = 'V_764', 
	 particles = [P.Hm2, P.su2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_764}) 
 
 
V_765 = Vertex(name = 'V_765', 
	 particles = [P.Hm2, P.su2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_765}) 
 
 
V_766 = Vertex(name = 'V_766', 
	 particles = [P.Hm2, P.su2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_766}) 
 
 
V_767 = Vertex(name = 'V_767', 
	 particles = [P.Hm2, P.su2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_767}) 
 
 
V_768 = Vertex(name = 'V_768', 
	 particles = [P.Hm2, P.su2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_768}) 
 
 
V_769 = Vertex(name = 'V_769', 
	 particles = [P.Hm2, P.su2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_769}) 
 
 
V_770 = Vertex(name = 'V_770', 
	 particles = [P.Hm2, P.su3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_770}) 
 
 
V_771 = Vertex(name = 'V_771', 
	 particles = [P.Hm2, P.su3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_771}) 
 
 
V_772 = Vertex(name = 'V_772', 
	 particles = [P.Hm2, P.su3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_772}) 
 
 
V_773 = Vertex(name = 'V_773', 
	 particles = [P.Hm2, P.su3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_773}) 
 
 
V_774 = Vertex(name = 'V_774', 
	 particles = [P.Hm2, P.su3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_774}) 
 
 
V_775 = Vertex(name = 'V_775', 
	 particles = [P.Hm2, P.su3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_775}) 
 
 
V_776 = Vertex(name = 'V_776', 
	 particles = [P.Hm2, P.su4, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_776}) 
 
 
V_777 = Vertex(name = 'V_777', 
	 particles = [P.Hm2, P.su4, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_777}) 
 
 
V_778 = Vertex(name = 'V_778', 
	 particles = [P.Hm2, P.su4, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_778}) 
 
 
V_779 = Vertex(name = 'V_779', 
	 particles = [P.Hm2, P.su4, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_779}) 
 
 
V_780 = Vertex(name = 'V_780', 
	 particles = [P.Hm2, P.su4, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_780}) 
 
 
V_781 = Vertex(name = 'V_781', 
	 particles = [P.Hm2, P.su4, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_781}) 
 
 
V_782 = Vertex(name = 'V_782', 
	 particles = [P.Hm2, P.su5, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_782}) 
 
 
V_783 = Vertex(name = 'V_783', 
	 particles = [P.Hm2, P.su5, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_783}) 
 
 
V_784 = Vertex(name = 'V_784', 
	 particles = [P.Hm2, P.su5, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_784}) 
 
 
V_785 = Vertex(name = 'V_785', 
	 particles = [P.Hm2, P.su5, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_785}) 
 
 
V_786 = Vertex(name = 'V_786', 
	 particles = [P.Hm2, P.su5, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_786}) 
 
 
V_787 = Vertex(name = 'V_787', 
	 particles = [P.Hm2, P.su5, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_787}) 
 
 
V_788 = Vertex(name = 'V_788', 
	 particles = [P.Hm2, P.su6, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_788}) 
 
 
V_789 = Vertex(name = 'V_789', 
	 particles = [P.Hm2, P.su6, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_789}) 
 
 
V_790 = Vertex(name = 'V_790', 
	 particles = [P.Hm2, P.su6, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_790}) 
 
 
V_791 = Vertex(name = 'V_791', 
	 particles = [P.Hm2, P.su6, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_791}) 
 
 
V_792 = Vertex(name = 'V_792', 
	 particles = [P.Hm2, P.su6, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_792}) 
 
 
V_793 = Vertex(name = 'V_793', 
	 particles = [P.Hm2, P.su6, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_793}) 
 
 
V_794 = Vertex(name = 'V_794', 
	 particles = [P.Hm1, P.sv1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_794}) 
 
 
V_795 = Vertex(name = 'V_795', 
	 particles = [P.Hm1, P.sv1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_795}) 
 
 
V_796 = Vertex(name = 'V_796', 
	 particles = [P.Hm1, P.sv1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_796}) 
 
 
V_797 = Vertex(name = 'V_797', 
	 particles = [P.Hm1, P.sv1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_797}) 
 
 
V_798 = Vertex(name = 'V_798', 
	 particles = [P.Hm1, P.sv1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_798}) 
 
 
V_799 = Vertex(name = 'V_799', 
	 particles = [P.Hm1, P.sv1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_799}) 
 
 
V_800 = Vertex(name = 'V_800', 
	 particles = [P.Hm1, P.sv2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_800}) 
 
 
V_801 = Vertex(name = 'V_801', 
	 particles = [P.Hm1, P.sv2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_801}) 
 
 
V_802 = Vertex(name = 'V_802', 
	 particles = [P.Hm1, P.sv2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_802}) 
 
 
V_803 = Vertex(name = 'V_803', 
	 particles = [P.Hm1, P.sv2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_803}) 
 
 
V_804 = Vertex(name = 'V_804', 
	 particles = [P.Hm1, P.sv2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_804}) 
 
 
V_805 = Vertex(name = 'V_805', 
	 particles = [P.Hm1, P.sv2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_805}) 
 
 
V_806 = Vertex(name = 'V_806', 
	 particles = [P.Hm1, P.sv3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_806}) 
 
 
V_807 = Vertex(name = 'V_807', 
	 particles = [P.Hm1, P.sv3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_807}) 
 
 
V_808 = Vertex(name = 'V_808', 
	 particles = [P.Hm1, P.sv3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_808}) 
 
 
V_809 = Vertex(name = 'V_809', 
	 particles = [P.Hm1, P.sv3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_809}) 
 
 
V_810 = Vertex(name = 'V_810', 
	 particles = [P.Hm1, P.sv3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_810}) 
 
 
V_811 = Vertex(name = 'V_811', 
	 particles = [P.Hm1, P.sv3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_811}) 
 
 
V_812 = Vertex(name = 'V_812', 
	 particles = [P.Hm2, P.sv1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_812}) 
 
 
V_813 = Vertex(name = 'V_813', 
	 particles = [P.Hm2, P.sv1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_813}) 
 
 
V_814 = Vertex(name = 'V_814', 
	 particles = [P.Hm2, P.sv1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_814}) 
 
 
V_815 = Vertex(name = 'V_815', 
	 particles = [P.Hm2, P.sv1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_815}) 
 
 
V_816 = Vertex(name = 'V_816', 
	 particles = [P.Hm2, P.sv1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_816}) 
 
 
V_817 = Vertex(name = 'V_817', 
	 particles = [P.Hm2, P.sv1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_817}) 
 
 
V_818 = Vertex(name = 'V_818', 
	 particles = [P.Hm2, P.sv2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_818}) 
 
 
V_819 = Vertex(name = 'V_819', 
	 particles = [P.Hm2, P.sv2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_819}) 
 
 
V_820 = Vertex(name = 'V_820', 
	 particles = [P.Hm2, P.sv2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_820}) 
 
 
V_821 = Vertex(name = 'V_821', 
	 particles = [P.Hm2, P.sv2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_821}) 
 
 
V_822 = Vertex(name = 'V_822', 
	 particles = [P.Hm2, P.sv2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_822}) 
 
 
V_823 = Vertex(name = 'V_823', 
	 particles = [P.Hm2, P.sv2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_823}) 
 
 
V_824 = Vertex(name = 'V_824', 
	 particles = [P.Hm2, P.sv3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_824}) 
 
 
V_825 = Vertex(name = 'V_825', 
	 particles = [P.Hm2, P.sv3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_825}) 
 
 
V_826 = Vertex(name = 'V_826', 
	 particles = [P.Hm2, P.sv3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_826}) 
 
 
V_827 = Vertex(name = 'V_827', 
	 particles = [P.Hm2, P.sv3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_827}) 
 
 
V_828 = Vertex(name = 'V_828', 
	 particles = [P.Hm2, P.sv3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_828}) 
 
 
V_829 = Vertex(name = 'V_829', 
	 particles = [P.Hm2, P.sv3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_829}) 
 
 
V_830 = Vertex(name = 'V_830', 
	 particles = [P.sd1, P.Hm1c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_830}) 
 
 
V_831 = Vertex(name = 'V_831', 
	 particles = [P.sd1, P.Hm1c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_831}) 
 
 
V_832 = Vertex(name = 'V_832', 
	 particles = [P.sd1, P.Hm1c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_832}) 
 
 
V_833 = Vertex(name = 'V_833', 
	 particles = [P.sd1, P.Hm1c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_833}) 
 
 
V_834 = Vertex(name = 'V_834', 
	 particles = [P.sd1, P.Hm1c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_834}) 
 
 
V_835 = Vertex(name = 'V_835', 
	 particles = [P.sd1, P.Hm1c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_835}) 
 
 
V_836 = Vertex(name = 'V_836', 
	 particles = [P.sd1, P.Hm2c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_836}) 
 
 
V_837 = Vertex(name = 'V_837', 
	 particles = [P.sd1, P.Hm2c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_837}) 
 
 
V_838 = Vertex(name = 'V_838', 
	 particles = [P.sd1, P.Hm2c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_838}) 
 
 
V_839 = Vertex(name = 'V_839', 
	 particles = [P.sd1, P.Hm2c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_839}) 
 
 
V_840 = Vertex(name = 'V_840', 
	 particles = [P.sd1, P.Hm2c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_840}) 
 
 
V_841 = Vertex(name = 'V_841', 
	 particles = [P.sd1, P.Hm2c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_841}) 
 
 
V_842 = Vertex(name = 'V_842', 
	 particles = [P.sd2, P.Hm1c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_842}) 
 
 
V_843 = Vertex(name = 'V_843', 
	 particles = [P.sd2, P.Hm1c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_843}) 
 
 
V_844 = Vertex(name = 'V_844', 
	 particles = [P.sd2, P.Hm1c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_844}) 
 
 
V_845 = Vertex(name = 'V_845', 
	 particles = [P.sd2, P.Hm1c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_845}) 
 
 
V_846 = Vertex(name = 'V_846', 
	 particles = [P.sd2, P.Hm1c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_846}) 
 
 
V_847 = Vertex(name = 'V_847', 
	 particles = [P.sd2, P.Hm1c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_847}) 
 
 
V_848 = Vertex(name = 'V_848', 
	 particles = [P.sd2, P.Hm2c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_848}) 
 
 
V_849 = Vertex(name = 'V_849', 
	 particles = [P.sd2, P.Hm2c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_849}) 
 
 
V_850 = Vertex(name = 'V_850', 
	 particles = [P.sd2, P.Hm2c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_850}) 
 
 
V_851 = Vertex(name = 'V_851', 
	 particles = [P.sd2, P.Hm2c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_851}) 
 
 
V_852 = Vertex(name = 'V_852', 
	 particles = [P.sd2, P.Hm2c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_852}) 
 
 
V_853 = Vertex(name = 'V_853', 
	 particles = [P.sd2, P.Hm2c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_853}) 
 
 
V_854 = Vertex(name = 'V_854', 
	 particles = [P.sd3, P.Hm1c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_854}) 
 
 
V_855 = Vertex(name = 'V_855', 
	 particles = [P.sd3, P.Hm1c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_855}) 
 
 
V_856 = Vertex(name = 'V_856', 
	 particles = [P.sd3, P.Hm1c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_856}) 
 
 
V_857 = Vertex(name = 'V_857', 
	 particles = [P.sd3, P.Hm1c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_857}) 
 
 
V_858 = Vertex(name = 'V_858', 
	 particles = [P.sd3, P.Hm1c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_858}) 
 
 
V_859 = Vertex(name = 'V_859', 
	 particles = [P.sd3, P.Hm1c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_859}) 
 
 
V_860 = Vertex(name = 'V_860', 
	 particles = [P.sd3, P.Hm2c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_860}) 
 
 
V_861 = Vertex(name = 'V_861', 
	 particles = [P.sd3, P.Hm2c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_861}) 
 
 
V_862 = Vertex(name = 'V_862', 
	 particles = [P.sd3, P.Hm2c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_862}) 
 
 
V_863 = Vertex(name = 'V_863', 
	 particles = [P.sd3, P.Hm2c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_863}) 
 
 
V_864 = Vertex(name = 'V_864', 
	 particles = [P.sd3, P.Hm2c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_864}) 
 
 
V_865 = Vertex(name = 'V_865', 
	 particles = [P.sd3, P.Hm2c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_865}) 
 
 
V_866 = Vertex(name = 'V_866', 
	 particles = [P.sd4, P.Hm1c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_866}) 
 
 
V_867 = Vertex(name = 'V_867', 
	 particles = [P.sd4, P.Hm1c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_867}) 
 
 
V_868 = Vertex(name = 'V_868', 
	 particles = [P.sd4, P.Hm1c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_868}) 
 
 
V_869 = Vertex(name = 'V_869', 
	 particles = [P.sd4, P.Hm1c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_869}) 
 
 
V_870 = Vertex(name = 'V_870', 
	 particles = [P.sd4, P.Hm1c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_870}) 
 
 
V_871 = Vertex(name = 'V_871', 
	 particles = [P.sd4, P.Hm1c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_871}) 
 
 
V_872 = Vertex(name = 'V_872', 
	 particles = [P.sd4, P.Hm2c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_872}) 
 
 
V_873 = Vertex(name = 'V_873', 
	 particles = [P.sd4, P.Hm2c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_873}) 
 
 
V_874 = Vertex(name = 'V_874', 
	 particles = [P.sd4, P.Hm2c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_874}) 
 
 
V_875 = Vertex(name = 'V_875', 
	 particles = [P.sd4, P.Hm2c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_875}) 
 
 
V_876 = Vertex(name = 'V_876', 
	 particles = [P.sd4, P.Hm2c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_876}) 
 
 
V_877 = Vertex(name = 'V_877', 
	 particles = [P.sd4, P.Hm2c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_877}) 
 
 
V_878 = Vertex(name = 'V_878', 
	 particles = [P.sd5, P.Hm1c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_878}) 
 
 
V_879 = Vertex(name = 'V_879', 
	 particles = [P.sd5, P.Hm1c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_879}) 
 
 
V_880 = Vertex(name = 'V_880', 
	 particles = [P.sd5, P.Hm1c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_880}) 
 
 
V_881 = Vertex(name = 'V_881', 
	 particles = [P.sd5, P.Hm1c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_881}) 
 
 
V_882 = Vertex(name = 'V_882', 
	 particles = [P.sd5, P.Hm1c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_882}) 
 
 
V_883 = Vertex(name = 'V_883', 
	 particles = [P.sd5, P.Hm1c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_883}) 
 
 
V_884 = Vertex(name = 'V_884', 
	 particles = [P.sd5, P.Hm2c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_884}) 
 
 
V_885 = Vertex(name = 'V_885', 
	 particles = [P.sd5, P.Hm2c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_885}) 
 
 
V_886 = Vertex(name = 'V_886', 
	 particles = [P.sd5, P.Hm2c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_886}) 
 
 
V_887 = Vertex(name = 'V_887', 
	 particles = [P.sd5, P.Hm2c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_887}) 
 
 
V_888 = Vertex(name = 'V_888', 
	 particles = [P.sd5, P.Hm2c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_888}) 
 
 
V_889 = Vertex(name = 'V_889', 
	 particles = [P.sd5, P.Hm2c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_889}) 
 
 
V_890 = Vertex(name = 'V_890', 
	 particles = [P.sd6, P.Hm1c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_890}) 
 
 
V_891 = Vertex(name = 'V_891', 
	 particles = [P.sd6, P.Hm1c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_891}) 
 
 
V_892 = Vertex(name = 'V_892', 
	 particles = [P.sd6, P.Hm1c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_892}) 
 
 
V_893 = Vertex(name = 'V_893', 
	 particles = [P.sd6, P.Hm1c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_893}) 
 
 
V_894 = Vertex(name = 'V_894', 
	 particles = [P.sd6, P.Hm1c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_894}) 
 
 
V_895 = Vertex(name = 'V_895', 
	 particles = [P.sd6, P.Hm1c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_895}) 
 
 
V_896 = Vertex(name = 'V_896', 
	 particles = [P.sd6, P.Hm2c, P.su1c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_896}) 
 
 
V_897 = Vertex(name = 'V_897', 
	 particles = [P.sd6, P.Hm2c, P.su2c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_897}) 
 
 
V_898 = Vertex(name = 'V_898', 
	 particles = [P.sd6, P.Hm2c, P.su3c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_898}) 
 
 
V_899 = Vertex(name = 'V_899', 
	 particles = [P.sd6, P.Hm2c, P.su4c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_899}) 
 
 
V_900 = Vertex(name = 'V_900', 
	 particles = [P.sd6, P.Hm2c, P.su5c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_900}) 
 
 
V_901 = Vertex(name = 'V_901', 
	 particles = [P.sd6, P.Hm2c, P.su6c], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_901}) 
 
 
V_902 = Vertex(name = 'V_902', 
	 particles = [P.se1, P.Hm1c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_902}) 
 
 
V_903 = Vertex(name = 'V_903', 
	 particles = [P.se1, P.Hm1c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_903}) 
 
 
V_904 = Vertex(name = 'V_904', 
	 particles = [P.se1, P.Hm1c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_904}) 
 
 
V_905 = Vertex(name = 'V_905', 
	 particles = [P.se1, P.Hm2c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_905}) 
 
 
V_906 = Vertex(name = 'V_906', 
	 particles = [P.se1, P.Hm2c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_906}) 
 
 
V_907 = Vertex(name = 'V_907', 
	 particles = [P.se1, P.Hm2c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_907}) 
 
 
V_908 = Vertex(name = 'V_908', 
	 particles = [P.se2, P.Hm1c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_908}) 
 
 
V_909 = Vertex(name = 'V_909', 
	 particles = [P.se2, P.Hm1c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_909}) 
 
 
V_910 = Vertex(name = 'V_910', 
	 particles = [P.se2, P.Hm1c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_910}) 
 
 
V_911 = Vertex(name = 'V_911', 
	 particles = [P.se2, P.Hm2c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_911}) 
 
 
V_912 = Vertex(name = 'V_912', 
	 particles = [P.se2, P.Hm2c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_912}) 
 
 
V_913 = Vertex(name = 'V_913', 
	 particles = [P.se2, P.Hm2c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_913}) 
 
 
V_914 = Vertex(name = 'V_914', 
	 particles = [P.se3, P.Hm1c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_914}) 
 
 
V_915 = Vertex(name = 'V_915', 
	 particles = [P.se3, P.Hm1c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_915}) 
 
 
V_916 = Vertex(name = 'V_916', 
	 particles = [P.se3, P.Hm1c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_916}) 
 
 
V_917 = Vertex(name = 'V_917', 
	 particles = [P.se3, P.Hm2c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_917}) 
 
 
V_918 = Vertex(name = 'V_918', 
	 particles = [P.se3, P.Hm2c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_918}) 
 
 
V_919 = Vertex(name = 'V_919', 
	 particles = [P.se3, P.Hm2c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_919}) 
 
 
V_920 = Vertex(name = 'V_920', 
	 particles = [P.se4, P.Hm1c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_920}) 
 
 
V_921 = Vertex(name = 'V_921', 
	 particles = [P.se4, P.Hm1c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_921}) 
 
 
V_922 = Vertex(name = 'V_922', 
	 particles = [P.se4, P.Hm1c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_922}) 
 
 
V_923 = Vertex(name = 'V_923', 
	 particles = [P.se4, P.Hm2c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_923}) 
 
 
V_924 = Vertex(name = 'V_924', 
	 particles = [P.se4, P.Hm2c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_924}) 
 
 
V_925 = Vertex(name = 'V_925', 
	 particles = [P.se4, P.Hm2c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_925}) 
 
 
V_926 = Vertex(name = 'V_926', 
	 particles = [P.se5, P.Hm1c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_926}) 
 
 
V_927 = Vertex(name = 'V_927', 
	 particles = [P.se5, P.Hm1c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_927}) 
 
 
V_928 = Vertex(name = 'V_928', 
	 particles = [P.se5, P.Hm1c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_928}) 
 
 
V_929 = Vertex(name = 'V_929', 
	 particles = [P.se5, P.Hm2c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_929}) 
 
 
V_930 = Vertex(name = 'V_930', 
	 particles = [P.se5, P.Hm2c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_930}) 
 
 
V_931 = Vertex(name = 'V_931', 
	 particles = [P.se5, P.Hm2c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_931}) 
 
 
V_932 = Vertex(name = 'V_932', 
	 particles = [P.se6, P.Hm1c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_932}) 
 
 
V_933 = Vertex(name = 'V_933', 
	 particles = [P.se6, P.Hm1c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_933}) 
 
 
V_934 = Vertex(name = 'V_934', 
	 particles = [P.se6, P.Hm1c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_934}) 
 
 
V_935 = Vertex(name = 'V_935', 
	 particles = [P.se6, P.Hm2c, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_935}) 
 
 
V_936 = Vertex(name = 'V_936', 
	 particles = [P.se6, P.Hm2c, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_936}) 
 
 
V_937 = Vertex(name = 'V_937', 
	 particles = [P.se6, P.Hm2c, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.SSS1], 
	 couplings = {(0,0):C.GC_937}) 
 
 
V_938 = Vertex(name = 'V_938', 
	 particles = [P.Ah1, P.Ah1, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_938}) 
 
 
V_939 = Vertex(name = 'V_939', 
	 particles = [P.Ah1, P.Ah2, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_939}) 
 
 
V_940 = Vertex(name = 'V_940', 
	 particles = [P.Ah1, P.Ah3, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_940}) 
 
 
V_941 = Vertex(name = 'V_941', 
	 particles = [P.Ah2, P.Ah2, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_941}) 
 
 
V_942 = Vertex(name = 'V_942', 
	 particles = [P.Ah2, P.Ah3, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_942}) 
 
 
V_943 = Vertex(name = 'V_943', 
	 particles = [P.Ah3, P.Ah3, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_943}) 
 
 
V_944 = Vertex(name = 'V_944', 
	 particles = [P.Ah1, P.Ah1, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_944}) 
 
 
V_945 = Vertex(name = 'V_945', 
	 particles = [P.Ah1, P.Ah2, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_945}) 
 
 
V_946 = Vertex(name = 'V_946', 
	 particles = [P.Ah1, P.Ah3, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_946}) 
 
 
V_947 = Vertex(name = 'V_947', 
	 particles = [P.Ah2, P.Ah2, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_947}) 
 
 
V_948 = Vertex(name = 'V_948', 
	 particles = [P.Ah2, P.Ah3, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_948}) 
 
 
V_949 = Vertex(name = 'V_949', 
	 particles = [P.Ah3, P.Ah3, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_949}) 
 
 
V_950 = Vertex(name = 'V_950', 
	 particles = [P.Ah1, P.Ah1, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_950}) 
 
 
V_951 = Vertex(name = 'V_951', 
	 particles = [P.Ah1, P.Ah2, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_951}) 
 
 
V_952 = Vertex(name = 'V_952', 
	 particles = [P.Ah1, P.Ah3, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_952}) 
 
 
V_953 = Vertex(name = 'V_953', 
	 particles = [P.Ah2, P.Ah2, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_953}) 
 
 
V_954 = Vertex(name = 'V_954', 
	 particles = [P.Ah2, P.Ah3, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_954}) 
 
 
V_955 = Vertex(name = 'V_955', 
	 particles = [P.Ah3, P.Ah3, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_955}) 
 
 
V_956 = Vertex(name = 'V_956', 
	 particles = [P.Ah1, P.Ah1, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_956}) 
 
 
V_957 = Vertex(name = 'V_957', 
	 particles = [P.Ah1, P.Ah2, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_957}) 
 
 
V_958 = Vertex(name = 'V_958', 
	 particles = [P.Ah1, P.Ah3, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_958}) 
 
 
V_959 = Vertex(name = 'V_959', 
	 particles = [P.Ah2, P.Ah2, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_959}) 
 
 
V_960 = Vertex(name = 'V_960', 
	 particles = [P.Ah2, P.Ah3, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_960}) 
 
 
V_961 = Vertex(name = 'V_961', 
	 particles = [P.Ah3, P.Ah3, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_961}) 
 
 
V_962 = Vertex(name = 'V_962', 
	 particles = [P.Ah1, P.Hm1, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_962}) 
 
 
V_963 = Vertex(name = 'V_963', 
	 particles = [P.Ah1, P.Hm2, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_963}) 
 
 
V_964 = Vertex(name = 'V_964', 
	 particles = [P.Ah2, P.Hm1, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_964}) 
 
 
V_965 = Vertex(name = 'V_965', 
	 particles = [P.Ah2, P.Hm2, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_965}) 
 
 
V_966 = Vertex(name = 'V_966', 
	 particles = [P.Ah3, P.Hm1, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_966}) 
 
 
V_967 = Vertex(name = 'V_967', 
	 particles = [P.Ah3, P.Hm2, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_967}) 
 
 
V_968 = Vertex(name = 'V_968', 
	 particles = [P.Ah1, P.Hm1, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_968}) 
 
 
V_969 = Vertex(name = 'V_969', 
	 particles = [P.Ah1, P.Hm2, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_969}) 
 
 
V_970 = Vertex(name = 'V_970', 
	 particles = [P.Ah2, P.Hm1, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_970}) 
 
 
V_971 = Vertex(name = 'V_971', 
	 particles = [P.Ah2, P.Hm2, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_971}) 
 
 
V_972 = Vertex(name = 'V_972', 
	 particles = [P.Ah3, P.Hm1, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_972}) 
 
 
V_973 = Vertex(name = 'V_973', 
	 particles = [P.Ah3, P.Hm2, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_973}) 
 
 
V_974 = Vertex(name = 'V_974', 
	 particles = [P.Ah1, P.Hm1, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_974}) 
 
 
V_975 = Vertex(name = 'V_975', 
	 particles = [P.Ah1, P.Hm2, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_975}) 
 
 
V_976 = Vertex(name = 'V_976', 
	 particles = [P.Ah2, P.Hm1, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_976}) 
 
 
V_977 = Vertex(name = 'V_977', 
	 particles = [P.Ah2, P.Hm2, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_977}) 
 
 
V_978 = Vertex(name = 'V_978', 
	 particles = [P.Ah3, P.Hm1, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_978}) 
 
 
V_979 = Vertex(name = 'V_979', 
	 particles = [P.Ah3, P.Hm2, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_979}) 
 
 
V_980 = Vertex(name = 'V_980', 
	 particles = [P.Ah1, P.Hm1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_980}) 
 
 
V_981 = Vertex(name = 'V_981', 
	 particles = [P.Ah1, P.Hm2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_981}) 
 
 
V_982 = Vertex(name = 'V_982', 
	 particles = [P.Ah2, P.Hm1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_982}) 
 
 
V_983 = Vertex(name = 'V_983', 
	 particles = [P.Ah2, P.Hm2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_983}) 
 
 
V_984 = Vertex(name = 'V_984', 
	 particles = [P.Ah3, P.Hm1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_984}) 
 
 
V_985 = Vertex(name = 'V_985', 
	 particles = [P.Ah3, P.Hm2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_985}) 
 
 
V_986 = Vertex(name = 'V_986', 
	 particles = [P.Ah1, P.Hm1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_986}) 
 
 
V_987 = Vertex(name = 'V_987', 
	 particles = [P.Ah1, P.Hm2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_987}) 
 
 
V_988 = Vertex(name = 'V_988', 
	 particles = [P.Ah2, P.Hm1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_988}) 
 
 
V_989 = Vertex(name = 'V_989', 
	 particles = [P.Ah2, P.Hm2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_989}) 
 
 
V_990 = Vertex(name = 'V_990', 
	 particles = [P.Ah3, P.Hm1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_990}) 
 
 
V_991 = Vertex(name = 'V_991', 
	 particles = [P.Ah3, P.Hm2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_991}) 
 
 
V_992 = Vertex(name = 'V_992', 
	 particles = [P.Ah1, P.Hm1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_992}) 
 
 
V_993 = Vertex(name = 'V_993', 
	 particles = [P.Ah1, P.Hm2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_993}) 
 
 
V_994 = Vertex(name = 'V_994', 
	 particles = [P.Ah2, P.Hm1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_994}) 
 
 
V_995 = Vertex(name = 'V_995', 
	 particles = [P.Ah2, P.Hm2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_995}) 
 
 
V_996 = Vertex(name = 'V_996', 
	 particles = [P.Ah3, P.Hm1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_996}) 
 
 
V_997 = Vertex(name = 'V_997', 
	 particles = [P.Ah3, P.Hm2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_997}) 
 
 
V_998 = Vertex(name = 'V_998', 
	 particles = [P.h1, P.h1, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_998}) 
 
 
V_999 = Vertex(name = 'V_999', 
	 particles = [P.h1, P.h2, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_999}) 
 
 
V_1000 = Vertex(name = 'V_1000', 
	 particles = [P.h1, P.h3, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1000}) 
 
 
V_1001 = Vertex(name = 'V_1001', 
	 particles = [P.h2, P.h2, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1001}) 
 
 
V_1002 = Vertex(name = 'V_1002', 
	 particles = [P.h2, P.h3, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1002}) 
 
 
V_1003 = Vertex(name = 'V_1003', 
	 particles = [P.h3, P.h3, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1003}) 
 
 
V_1004 = Vertex(name = 'V_1004', 
	 particles = [P.h1, P.h1, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1004}) 
 
 
V_1005 = Vertex(name = 'V_1005', 
	 particles = [P.h1, P.h2, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1005}) 
 
 
V_1006 = Vertex(name = 'V_1006', 
	 particles = [P.h1, P.h3, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1006}) 
 
 
V_1007 = Vertex(name = 'V_1007', 
	 particles = [P.h2, P.h2, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1007}) 
 
 
V_1008 = Vertex(name = 'V_1008', 
	 particles = [P.h2, P.h3, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1008}) 
 
 
V_1009 = Vertex(name = 'V_1009', 
	 particles = [P.h3, P.h3, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1009}) 
 
 
V_1010 = Vertex(name = 'V_1010', 
	 particles = [P.h1, P.h1, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1010}) 
 
 
V_1011 = Vertex(name = 'V_1011', 
	 particles = [P.h1, P.h2, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1011}) 
 
 
V_1012 = Vertex(name = 'V_1012', 
	 particles = [P.h1, P.h3, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1012}) 
 
 
V_1013 = Vertex(name = 'V_1013', 
	 particles = [P.h2, P.h2, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1013}) 
 
 
V_1014 = Vertex(name = 'V_1014', 
	 particles = [P.h2, P.h3, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1014}) 
 
 
V_1015 = Vertex(name = 'V_1015', 
	 particles = [P.h3, P.h3, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1015}) 
 
 
V_1016 = Vertex(name = 'V_1016', 
	 particles = [P.h1, P.h1, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1016}) 
 
 
V_1017 = Vertex(name = 'V_1017', 
	 particles = [P.h1, P.h2, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1017}) 
 
 
V_1018 = Vertex(name = 'V_1018', 
	 particles = [P.h1, P.h3, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1018}) 
 
 
V_1019 = Vertex(name = 'V_1019', 
	 particles = [P.h2, P.h2, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1019}) 
 
 
V_1020 = Vertex(name = 'V_1020', 
	 particles = [P.h2, P.h3, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1020}) 
 
 
V_1021 = Vertex(name = 'V_1021', 
	 particles = [P.h3, P.h3, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1021}) 
 
 
V_1022 = Vertex(name = 'V_1022', 
	 particles = [P.h1, P.Hm1, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1022}) 
 
 
V_1023 = Vertex(name = 'V_1023', 
	 particles = [P.h1, P.Hm2, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1023}) 
 
 
V_1024 = Vertex(name = 'V_1024', 
	 particles = [P.h2, P.Hm1, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1024}) 
 
 
V_1025 = Vertex(name = 'V_1025', 
	 particles = [P.h2, P.Hm2, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1025}) 
 
 
V_1026 = Vertex(name = 'V_1026', 
	 particles = [P.h3, P.Hm1, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1026}) 
 
 
V_1027 = Vertex(name = 'V_1027', 
	 particles = [P.h3, P.Hm2, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1027}) 
 
 
V_1028 = Vertex(name = 'V_1028', 
	 particles = [P.h1, P.Hm1, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1028}) 
 
 
V_1029 = Vertex(name = 'V_1029', 
	 particles = [P.h1, P.Hm2, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1029}) 
 
 
V_1030 = Vertex(name = 'V_1030', 
	 particles = [P.h2, P.Hm1, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1030}) 
 
 
V_1031 = Vertex(name = 'V_1031', 
	 particles = [P.h2, P.Hm2, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1031}) 
 
 
V_1032 = Vertex(name = 'V_1032', 
	 particles = [P.h3, P.Hm1, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1032}) 
 
 
V_1033 = Vertex(name = 'V_1033', 
	 particles = [P.h3, P.Hm2, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1033}) 
 
 
V_1034 = Vertex(name = 'V_1034', 
	 particles = [P.h1, P.Hm1, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1034}) 
 
 
V_1035 = Vertex(name = 'V_1035', 
	 particles = [P.h1, P.Hm2, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1035}) 
 
 
V_1036 = Vertex(name = 'V_1036', 
	 particles = [P.h2, P.Hm1, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1036}) 
 
 
V_1037 = Vertex(name = 'V_1037', 
	 particles = [P.h2, P.Hm2, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1037}) 
 
 
V_1038 = Vertex(name = 'V_1038', 
	 particles = [P.h3, P.Hm1, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1038}) 
 
 
V_1039 = Vertex(name = 'V_1039', 
	 particles = [P.h3, P.Hm2, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1039}) 
 
 
V_1040 = Vertex(name = 'V_1040', 
	 particles = [P.h1, P.Hm1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1040}) 
 
 
V_1041 = Vertex(name = 'V_1041', 
	 particles = [P.h1, P.Hm2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1041}) 
 
 
V_1042 = Vertex(name = 'V_1042', 
	 particles = [P.h2, P.Hm1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1042}) 
 
 
V_1043 = Vertex(name = 'V_1043', 
	 particles = [P.h2, P.Hm2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1043}) 
 
 
V_1044 = Vertex(name = 'V_1044', 
	 particles = [P.h3, P.Hm1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1044}) 
 
 
V_1045 = Vertex(name = 'V_1045', 
	 particles = [P.h3, P.Hm2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1045}) 
 
 
V_1046 = Vertex(name = 'V_1046', 
	 particles = [P.h1, P.Hm1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1046}) 
 
 
V_1047 = Vertex(name = 'V_1047', 
	 particles = [P.h1, P.Hm2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1047}) 
 
 
V_1048 = Vertex(name = 'V_1048', 
	 particles = [P.h2, P.Hm1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1048}) 
 
 
V_1049 = Vertex(name = 'V_1049', 
	 particles = [P.h2, P.Hm2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1049}) 
 
 
V_1050 = Vertex(name = 'V_1050', 
	 particles = [P.h3, P.Hm1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1050}) 
 
 
V_1051 = Vertex(name = 'V_1051', 
	 particles = [P.h3, P.Hm2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1051}) 
 
 
V_1052 = Vertex(name = 'V_1052', 
	 particles = [P.h1, P.Hm1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1052}) 
 
 
V_1053 = Vertex(name = 'V_1053', 
	 particles = [P.h1, P.Hm2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1053}) 
 
 
V_1054 = Vertex(name = 'V_1054', 
	 particles = [P.h2, P.Hm1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1054}) 
 
 
V_1055 = Vertex(name = 'V_1055', 
	 particles = [P.h2, P.Hm2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1055}) 
 
 
V_1056 = Vertex(name = 'V_1056', 
	 particles = [P.h3, P.Hm1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1056}) 
 
 
V_1057 = Vertex(name = 'V_1057', 
	 particles = [P.h3, P.Hm2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1057}) 
 
 
V_1058 = Vertex(name = 'V_1058', 
	 particles = [P.Hm1, P.Hm1c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1058}) 
 
 
V_1059 = Vertex(name = 'V_1059', 
	 particles = [P.Hm1, P.Hm2c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1059}) 
 
 
V_1060 = Vertex(name = 'V_1060', 
	 particles = [P.Hm2, P.Hm1c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1060}) 
 
 
V_1061 = Vertex(name = 'V_1061', 
	 particles = [P.Hm2, P.Hm2c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1061}) 
 
 
V_1062 = Vertex(name = 'V_1062', 
	 particles = [P.Hm1, P.Hm1c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1062}) 
 
 
V_1063 = Vertex(name = 'V_1063', 
	 particles = [P.Hm1, P.Hm2c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1063}) 
 
 
V_1064 = Vertex(name = 'V_1064', 
	 particles = [P.Hm2, P.Hm1c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1064}) 
 
 
V_1065 = Vertex(name = 'V_1065', 
	 particles = [P.Hm2, P.Hm2c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1065}) 
 
 
V_1066 = Vertex(name = 'V_1066', 
	 particles = [P.Hm1, P.Hm1c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1066}) 
 
 
V_1067 = Vertex(name = 'V_1067', 
	 particles = [P.Hm1, P.Hm2c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1067}) 
 
 
V_1068 = Vertex(name = 'V_1068', 
	 particles = [P.Hm2, P.Hm1c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1068}) 
 
 
V_1069 = Vertex(name = 'V_1069', 
	 particles = [P.Hm2, P.Hm2c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1069}) 
 
 
V_1070 = Vertex(name = 'V_1070', 
	 particles = [P.Hm1, P.Hm1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1070}) 
 
 
V_1071 = Vertex(name = 'V_1071', 
	 particles = [P.Hm1, P.Hm2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1071}) 
 
 
V_1072 = Vertex(name = 'V_1072', 
	 particles = [P.Hm2, P.Hm1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1072}) 
 
 
V_1073 = Vertex(name = 'V_1073', 
	 particles = [P.Hm2, P.Hm2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1073}) 
 
 
V_1074 = Vertex(name = 'V_1074', 
	 particles = [P.Hm1, P.Hm1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1074}) 
 
 
V_1075 = Vertex(name = 'V_1075', 
	 particles = [P.Hm1, P.Hm2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1075}) 
 
 
V_1076 = Vertex(name = 'V_1076', 
	 particles = [P.Hm2, P.Hm1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1076}) 
 
 
V_1077 = Vertex(name = 'V_1077', 
	 particles = [P.Hm2, P.Hm2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1077}) 
 
 
V_1078 = Vertex(name = 'V_1078', 
	 particles = [P.Hm1, P.Hm1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1078}) 
 
 
V_1079 = Vertex(name = 'V_1079', 
	 particles = [P.Hm1, P.Hm2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1079}) 
 
 
V_1080 = Vertex(name = 'V_1080', 
	 particles = [P.Hm2, P.Hm1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1080}) 
 
 
V_1081 = Vertex(name = 'V_1081', 
	 particles = [P.Hm2, P.Hm2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1081}) 
 
 
V_1082 = Vertex(name = 'V_1082', 
	 particles = [P.Hm1, P.Hm1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1082}) 
 
 
V_1083 = Vertex(name = 'V_1083', 
	 particles = [P.Hm1, P.Hm2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1083}) 
 
 
V_1084 = Vertex(name = 'V_1084', 
	 particles = [P.Hm2, P.Hm1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1084}) 
 
 
V_1085 = Vertex(name = 'V_1085', 
	 particles = [P.Hm2, P.Hm2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1085}) 
 
 
V_1086 = Vertex(name = 'V_1086', 
	 particles = [P.sd1, P.sd1c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1086,(1,0):C.GC_1087}) 
 
 
V_1087 = Vertex(name = 'V_1087', 
	 particles = [P.sd2, P.sd2c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1088,(1,0):C.GC_1089}) 
 
 
V_1088 = Vertex(name = 'V_1088', 
	 particles = [P.sd3, P.sd3c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1090,(1,0):C.GC_1091}) 
 
 
V_1089 = Vertex(name = 'V_1089', 
	 particles = [P.sd4, P.sd4c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1092,(1,0):C.GC_1093}) 
 
 
V_1090 = Vertex(name = 'V_1090', 
	 particles = [P.sd5, P.sd5c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1094,(1,0):C.GC_1095}) 
 
 
V_1091 = Vertex(name = 'V_1091', 
	 particles = [P.sd6, P.sd6c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1096,(1,0):C.GC_1097}) 
 
 
V_1092 = Vertex(name = 'V_1092', 
	 particles = [P.sd1, P.sd1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1098}) 
 
 
V_1093 = Vertex(name = 'V_1093', 
	 particles = [P.sd1, P.sd2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1099}) 
 
 
V_1094 = Vertex(name = 'V_1094', 
	 particles = [P.sd1, P.sd3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1100}) 
 
 
V_1095 = Vertex(name = 'V_1095', 
	 particles = [P.sd1, P.sd4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1101}) 
 
 
V_1096 = Vertex(name = 'V_1096', 
	 particles = [P.sd1, P.sd5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1102}) 
 
 
V_1097 = Vertex(name = 'V_1097', 
	 particles = [P.sd1, P.sd6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1103}) 
 
 
V_1098 = Vertex(name = 'V_1098', 
	 particles = [P.sd2, P.sd1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1104}) 
 
 
V_1099 = Vertex(name = 'V_1099', 
	 particles = [P.sd2, P.sd2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1105}) 
 
 
V_1100 = Vertex(name = 'V_1100', 
	 particles = [P.sd2, P.sd3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1106}) 
 
 
V_1101 = Vertex(name = 'V_1101', 
	 particles = [P.sd2, P.sd4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1107}) 
 
 
V_1102 = Vertex(name = 'V_1102', 
	 particles = [P.sd2, P.sd5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1108}) 
 
 
V_1103 = Vertex(name = 'V_1103', 
	 particles = [P.sd2, P.sd6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1109}) 
 
 
V_1104 = Vertex(name = 'V_1104', 
	 particles = [P.sd3, P.sd1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1110}) 
 
 
V_1105 = Vertex(name = 'V_1105', 
	 particles = [P.sd3, P.sd2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1111}) 
 
 
V_1106 = Vertex(name = 'V_1106', 
	 particles = [P.sd3, P.sd3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1112}) 
 
 
V_1107 = Vertex(name = 'V_1107', 
	 particles = [P.sd3, P.sd4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1113}) 
 
 
V_1108 = Vertex(name = 'V_1108', 
	 particles = [P.sd3, P.sd5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1114}) 
 
 
V_1109 = Vertex(name = 'V_1109', 
	 particles = [P.sd3, P.sd6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1115}) 
 
 
V_1110 = Vertex(name = 'V_1110', 
	 particles = [P.sd4, P.sd1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1116}) 
 
 
V_1111 = Vertex(name = 'V_1111', 
	 particles = [P.sd4, P.sd2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1117}) 
 
 
V_1112 = Vertex(name = 'V_1112', 
	 particles = [P.sd4, P.sd3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1118}) 
 
 
V_1113 = Vertex(name = 'V_1113', 
	 particles = [P.sd4, P.sd4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1119}) 
 
 
V_1114 = Vertex(name = 'V_1114', 
	 particles = [P.sd4, P.sd5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1120}) 
 
 
V_1115 = Vertex(name = 'V_1115', 
	 particles = [P.sd4, P.sd6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1121}) 
 
 
V_1116 = Vertex(name = 'V_1116', 
	 particles = [P.sd5, P.sd1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1122}) 
 
 
V_1117 = Vertex(name = 'V_1117', 
	 particles = [P.sd5, P.sd2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1123}) 
 
 
V_1118 = Vertex(name = 'V_1118', 
	 particles = [P.sd5, P.sd3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1124}) 
 
 
V_1119 = Vertex(name = 'V_1119', 
	 particles = [P.sd5, P.sd4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1125}) 
 
 
V_1120 = Vertex(name = 'V_1120', 
	 particles = [P.sd5, P.sd5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1126}) 
 
 
V_1121 = Vertex(name = 'V_1121', 
	 particles = [P.sd5, P.sd6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1127}) 
 
 
V_1122 = Vertex(name = 'V_1122', 
	 particles = [P.sd6, P.sd1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1128}) 
 
 
V_1123 = Vertex(name = 'V_1123', 
	 particles = [P.sd6, P.sd2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1129}) 
 
 
V_1124 = Vertex(name = 'V_1124', 
	 particles = [P.sd6, P.sd3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1130}) 
 
 
V_1125 = Vertex(name = 'V_1125', 
	 particles = [P.sd6, P.sd4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1131}) 
 
 
V_1126 = Vertex(name = 'V_1126', 
	 particles = [P.sd6, P.sd5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1132}) 
 
 
V_1127 = Vertex(name = 'V_1127', 
	 particles = [P.sd6, P.sd6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1133}) 
 
 
V_1128 = Vertex(name = 'V_1128', 
	 particles = [P.sd1, P.sd1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1134}) 
 
 
V_1129 = Vertex(name = 'V_1129', 
	 particles = [P.sd1, P.sd2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1135}) 
 
 
V_1130 = Vertex(name = 'V_1130', 
	 particles = [P.sd1, P.sd3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1136}) 
 
 
V_1131 = Vertex(name = 'V_1131', 
	 particles = [P.sd1, P.sd4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1137}) 
 
 
V_1132 = Vertex(name = 'V_1132', 
	 particles = [P.sd1, P.sd5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1138}) 
 
 
V_1133 = Vertex(name = 'V_1133', 
	 particles = [P.sd1, P.sd6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1139}) 
 
 
V_1134 = Vertex(name = 'V_1134', 
	 particles = [P.sd2, P.sd1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1140}) 
 
 
V_1135 = Vertex(name = 'V_1135', 
	 particles = [P.sd2, P.sd2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1141}) 
 
 
V_1136 = Vertex(name = 'V_1136', 
	 particles = [P.sd2, P.sd3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1142}) 
 
 
V_1137 = Vertex(name = 'V_1137', 
	 particles = [P.sd2, P.sd4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1143}) 
 
 
V_1138 = Vertex(name = 'V_1138', 
	 particles = [P.sd2, P.sd5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1144}) 
 
 
V_1139 = Vertex(name = 'V_1139', 
	 particles = [P.sd2, P.sd6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1145}) 
 
 
V_1140 = Vertex(name = 'V_1140', 
	 particles = [P.sd3, P.sd1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1146}) 
 
 
V_1141 = Vertex(name = 'V_1141', 
	 particles = [P.sd3, P.sd2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1147}) 
 
 
V_1142 = Vertex(name = 'V_1142', 
	 particles = [P.sd3, P.sd3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1148}) 
 
 
V_1143 = Vertex(name = 'V_1143', 
	 particles = [P.sd3, P.sd4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1149}) 
 
 
V_1144 = Vertex(name = 'V_1144', 
	 particles = [P.sd3, P.sd5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1150}) 
 
 
V_1145 = Vertex(name = 'V_1145', 
	 particles = [P.sd3, P.sd6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1151}) 
 
 
V_1146 = Vertex(name = 'V_1146', 
	 particles = [P.sd4, P.sd1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1152}) 
 
 
V_1147 = Vertex(name = 'V_1147', 
	 particles = [P.sd4, P.sd2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1153}) 
 
 
V_1148 = Vertex(name = 'V_1148', 
	 particles = [P.sd4, P.sd3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1154}) 
 
 
V_1149 = Vertex(name = 'V_1149', 
	 particles = [P.sd4, P.sd4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1155}) 
 
 
V_1150 = Vertex(name = 'V_1150', 
	 particles = [P.sd4, P.sd5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1156}) 
 
 
V_1151 = Vertex(name = 'V_1151', 
	 particles = [P.sd4, P.sd6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1157}) 
 
 
V_1152 = Vertex(name = 'V_1152', 
	 particles = [P.sd5, P.sd1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1158}) 
 
 
V_1153 = Vertex(name = 'V_1153', 
	 particles = [P.sd5, P.sd2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1159}) 
 
 
V_1154 = Vertex(name = 'V_1154', 
	 particles = [P.sd5, P.sd3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1160}) 
 
 
V_1155 = Vertex(name = 'V_1155', 
	 particles = [P.sd5, P.sd4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1161}) 
 
 
V_1156 = Vertex(name = 'V_1156', 
	 particles = [P.sd5, P.sd5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1162}) 
 
 
V_1157 = Vertex(name = 'V_1157', 
	 particles = [P.sd5, P.sd6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1163}) 
 
 
V_1158 = Vertex(name = 'V_1158', 
	 particles = [P.sd6, P.sd1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1164}) 
 
 
V_1159 = Vertex(name = 'V_1159', 
	 particles = [P.sd6, P.sd2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1165}) 
 
 
V_1160 = Vertex(name = 'V_1160', 
	 particles = [P.sd6, P.sd3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1166}) 
 
 
V_1161 = Vertex(name = 'V_1161', 
	 particles = [P.sd6, P.sd4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1167}) 
 
 
V_1162 = Vertex(name = 'V_1162', 
	 particles = [P.sd6, P.sd5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1168}) 
 
 
V_1163 = Vertex(name = 'V_1163', 
	 particles = [P.sd6, P.sd6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1169}) 
 
 
V_1164 = Vertex(name = 'V_1164', 
	 particles = [P.sd1, P.sd1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1170}) 
 
 
V_1165 = Vertex(name = 'V_1165', 
	 particles = [P.sd1, P.sd2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1171}) 
 
 
V_1166 = Vertex(name = 'V_1166', 
	 particles = [P.sd1, P.sd3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1172}) 
 
 
V_1167 = Vertex(name = 'V_1167', 
	 particles = [P.sd1, P.sd4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1173}) 
 
 
V_1168 = Vertex(name = 'V_1168', 
	 particles = [P.sd1, P.sd5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1174}) 
 
 
V_1169 = Vertex(name = 'V_1169', 
	 particles = [P.sd1, P.sd6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1175}) 
 
 
V_1170 = Vertex(name = 'V_1170', 
	 particles = [P.sd2, P.sd1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1176}) 
 
 
V_1171 = Vertex(name = 'V_1171', 
	 particles = [P.sd2, P.sd2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1177}) 
 
 
V_1172 = Vertex(name = 'V_1172', 
	 particles = [P.sd2, P.sd3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1178}) 
 
 
V_1173 = Vertex(name = 'V_1173', 
	 particles = [P.sd2, P.sd4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1179}) 
 
 
V_1174 = Vertex(name = 'V_1174', 
	 particles = [P.sd2, P.sd5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1180}) 
 
 
V_1175 = Vertex(name = 'V_1175', 
	 particles = [P.sd2, P.sd6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1181}) 
 
 
V_1176 = Vertex(name = 'V_1176', 
	 particles = [P.sd3, P.sd1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1182}) 
 
 
V_1177 = Vertex(name = 'V_1177', 
	 particles = [P.sd3, P.sd2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1183}) 
 
 
V_1178 = Vertex(name = 'V_1178', 
	 particles = [P.sd3, P.sd3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1184}) 
 
 
V_1179 = Vertex(name = 'V_1179', 
	 particles = [P.sd3, P.sd4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1185}) 
 
 
V_1180 = Vertex(name = 'V_1180', 
	 particles = [P.sd3, P.sd5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1186}) 
 
 
V_1181 = Vertex(name = 'V_1181', 
	 particles = [P.sd3, P.sd6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1187}) 
 
 
V_1182 = Vertex(name = 'V_1182', 
	 particles = [P.sd4, P.sd1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1188}) 
 
 
V_1183 = Vertex(name = 'V_1183', 
	 particles = [P.sd4, P.sd2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1189}) 
 
 
V_1184 = Vertex(name = 'V_1184', 
	 particles = [P.sd4, P.sd3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1190}) 
 
 
V_1185 = Vertex(name = 'V_1185', 
	 particles = [P.sd4, P.sd4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1191}) 
 
 
V_1186 = Vertex(name = 'V_1186', 
	 particles = [P.sd4, P.sd5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1192}) 
 
 
V_1187 = Vertex(name = 'V_1187', 
	 particles = [P.sd4, P.sd6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1193}) 
 
 
V_1188 = Vertex(name = 'V_1188', 
	 particles = [P.sd5, P.sd1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1194}) 
 
 
V_1189 = Vertex(name = 'V_1189', 
	 particles = [P.sd5, P.sd2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1195}) 
 
 
V_1190 = Vertex(name = 'V_1190', 
	 particles = [P.sd5, P.sd3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1196}) 
 
 
V_1191 = Vertex(name = 'V_1191', 
	 particles = [P.sd5, P.sd4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1197}) 
 
 
V_1192 = Vertex(name = 'V_1192', 
	 particles = [P.sd5, P.sd5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1198}) 
 
 
V_1193 = Vertex(name = 'V_1193', 
	 particles = [P.sd5, P.sd6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1199}) 
 
 
V_1194 = Vertex(name = 'V_1194', 
	 particles = [P.sd6, P.sd1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1200}) 
 
 
V_1195 = Vertex(name = 'V_1195', 
	 particles = [P.sd6, P.sd2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1201}) 
 
 
V_1196 = Vertex(name = 'V_1196', 
	 particles = [P.sd6, P.sd3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1202}) 
 
 
V_1197 = Vertex(name = 'V_1197', 
	 particles = [P.sd6, P.sd4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1203}) 
 
 
V_1198 = Vertex(name = 'V_1198', 
	 particles = [P.sd6, P.sd5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1204}) 
 
 
V_1199 = Vertex(name = 'V_1199', 
	 particles = [P.sd6, P.sd6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1205}) 
 
 
V_1200 = Vertex(name = 'V_1200', 
	 particles = [P.sd1, P.su1c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1206}) 
 
 
V_1201 = Vertex(name = 'V_1201', 
	 particles = [P.sd1, P.su2c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1207}) 
 
 
V_1202 = Vertex(name = 'V_1202', 
	 particles = [P.sd1, P.su3c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1208}) 
 
 
V_1203 = Vertex(name = 'V_1203', 
	 particles = [P.sd1, P.su4c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1209}) 
 
 
V_1204 = Vertex(name = 'V_1204', 
	 particles = [P.sd1, P.su5c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1210}) 
 
 
V_1205 = Vertex(name = 'V_1205', 
	 particles = [P.sd1, P.su6c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1211}) 
 
 
V_1206 = Vertex(name = 'V_1206', 
	 particles = [P.sd2, P.su1c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1212}) 
 
 
V_1207 = Vertex(name = 'V_1207', 
	 particles = [P.sd2, P.su2c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1213}) 
 
 
V_1208 = Vertex(name = 'V_1208', 
	 particles = [P.sd2, P.su3c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1214}) 
 
 
V_1209 = Vertex(name = 'V_1209', 
	 particles = [P.sd2, P.su4c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1215}) 
 
 
V_1210 = Vertex(name = 'V_1210', 
	 particles = [P.sd2, P.su5c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1216}) 
 
 
V_1211 = Vertex(name = 'V_1211', 
	 particles = [P.sd2, P.su6c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1217}) 
 
 
V_1212 = Vertex(name = 'V_1212', 
	 particles = [P.sd3, P.su1c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1218}) 
 
 
V_1213 = Vertex(name = 'V_1213', 
	 particles = [P.sd3, P.su2c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1219}) 
 
 
V_1214 = Vertex(name = 'V_1214', 
	 particles = [P.sd3, P.su3c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1220}) 
 
 
V_1215 = Vertex(name = 'V_1215', 
	 particles = [P.sd3, P.su4c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1221}) 
 
 
V_1216 = Vertex(name = 'V_1216', 
	 particles = [P.sd3, P.su5c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1222}) 
 
 
V_1217 = Vertex(name = 'V_1217', 
	 particles = [P.sd3, P.su6c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1223}) 
 
 
V_1218 = Vertex(name = 'V_1218', 
	 particles = [P.sd4, P.su1c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1224}) 
 
 
V_1219 = Vertex(name = 'V_1219', 
	 particles = [P.sd4, P.su2c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1225}) 
 
 
V_1220 = Vertex(name = 'V_1220', 
	 particles = [P.sd4, P.su3c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1226}) 
 
 
V_1221 = Vertex(name = 'V_1221', 
	 particles = [P.sd4, P.su4c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1227}) 
 
 
V_1222 = Vertex(name = 'V_1222', 
	 particles = [P.sd4, P.su5c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1228}) 
 
 
V_1223 = Vertex(name = 'V_1223', 
	 particles = [P.sd4, P.su6c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1229}) 
 
 
V_1224 = Vertex(name = 'V_1224', 
	 particles = [P.sd5, P.su1c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1230}) 
 
 
V_1225 = Vertex(name = 'V_1225', 
	 particles = [P.sd5, P.su2c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1231}) 
 
 
V_1226 = Vertex(name = 'V_1226', 
	 particles = [P.sd5, P.su3c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1232}) 
 
 
V_1227 = Vertex(name = 'V_1227', 
	 particles = [P.sd5, P.su4c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1233}) 
 
 
V_1228 = Vertex(name = 'V_1228', 
	 particles = [P.sd5, P.su5c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1234}) 
 
 
V_1229 = Vertex(name = 'V_1229', 
	 particles = [P.sd5, P.su6c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1235}) 
 
 
V_1230 = Vertex(name = 'V_1230', 
	 particles = [P.sd6, P.su1c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1236}) 
 
 
V_1231 = Vertex(name = 'V_1231', 
	 particles = [P.sd6, P.su2c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1237}) 
 
 
V_1232 = Vertex(name = 'V_1232', 
	 particles = [P.sd6, P.su3c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1238}) 
 
 
V_1233 = Vertex(name = 'V_1233', 
	 particles = [P.sd6, P.su4c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1239}) 
 
 
V_1234 = Vertex(name = 'V_1234', 
	 particles = [P.sd6, P.su5c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1240}) 
 
 
V_1235 = Vertex(name = 'V_1235', 
	 particles = [P.sd6, P.su6c, P.Wmc, P.g], 
	 color = ['T(4,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1241}) 
 
 
V_1236 = Vertex(name = 'V_1236', 
	 particles = [P.sd1, P.sd1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1242}) 
 
 
V_1237 = Vertex(name = 'V_1237', 
	 particles = [P.sd1, P.sd2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1243}) 
 
 
V_1238 = Vertex(name = 'V_1238', 
	 particles = [P.sd1, P.sd3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1244}) 
 
 
V_1239 = Vertex(name = 'V_1239', 
	 particles = [P.sd1, P.sd4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1245}) 
 
 
V_1240 = Vertex(name = 'V_1240', 
	 particles = [P.sd1, P.sd5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1246}) 
 
 
V_1241 = Vertex(name = 'V_1241', 
	 particles = [P.sd1, P.sd6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1247}) 
 
 
V_1242 = Vertex(name = 'V_1242', 
	 particles = [P.sd2, P.sd1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1248}) 
 
 
V_1243 = Vertex(name = 'V_1243', 
	 particles = [P.sd2, P.sd2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1249}) 
 
 
V_1244 = Vertex(name = 'V_1244', 
	 particles = [P.sd2, P.sd3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1250}) 
 
 
V_1245 = Vertex(name = 'V_1245', 
	 particles = [P.sd2, P.sd4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1251}) 
 
 
V_1246 = Vertex(name = 'V_1246', 
	 particles = [P.sd2, P.sd5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1252}) 
 
 
V_1247 = Vertex(name = 'V_1247', 
	 particles = [P.sd2, P.sd6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1253}) 
 
 
V_1248 = Vertex(name = 'V_1248', 
	 particles = [P.sd3, P.sd1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1254}) 
 
 
V_1249 = Vertex(name = 'V_1249', 
	 particles = [P.sd3, P.sd2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1255}) 
 
 
V_1250 = Vertex(name = 'V_1250', 
	 particles = [P.sd3, P.sd3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1256}) 
 
 
V_1251 = Vertex(name = 'V_1251', 
	 particles = [P.sd3, P.sd4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1257}) 
 
 
V_1252 = Vertex(name = 'V_1252', 
	 particles = [P.sd3, P.sd5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1258}) 
 
 
V_1253 = Vertex(name = 'V_1253', 
	 particles = [P.sd3, P.sd6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1259}) 
 
 
V_1254 = Vertex(name = 'V_1254', 
	 particles = [P.sd4, P.sd1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1260}) 
 
 
V_1255 = Vertex(name = 'V_1255', 
	 particles = [P.sd4, P.sd2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1261}) 
 
 
V_1256 = Vertex(name = 'V_1256', 
	 particles = [P.sd4, P.sd3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1262}) 
 
 
V_1257 = Vertex(name = 'V_1257', 
	 particles = [P.sd4, P.sd4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1263}) 
 
 
V_1258 = Vertex(name = 'V_1258', 
	 particles = [P.sd4, P.sd5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1264}) 
 
 
V_1259 = Vertex(name = 'V_1259', 
	 particles = [P.sd4, P.sd6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1265}) 
 
 
V_1260 = Vertex(name = 'V_1260', 
	 particles = [P.sd5, P.sd1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1266}) 
 
 
V_1261 = Vertex(name = 'V_1261', 
	 particles = [P.sd5, P.sd2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1267}) 
 
 
V_1262 = Vertex(name = 'V_1262', 
	 particles = [P.sd5, P.sd3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1268}) 
 
 
V_1263 = Vertex(name = 'V_1263', 
	 particles = [P.sd5, P.sd4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1269}) 
 
 
V_1264 = Vertex(name = 'V_1264', 
	 particles = [P.sd5, P.sd5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1270}) 
 
 
V_1265 = Vertex(name = 'V_1265', 
	 particles = [P.sd5, P.sd6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1271}) 
 
 
V_1266 = Vertex(name = 'V_1266', 
	 particles = [P.sd6, P.sd1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1272}) 
 
 
V_1267 = Vertex(name = 'V_1267', 
	 particles = [P.sd6, P.sd2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1273}) 
 
 
V_1268 = Vertex(name = 'V_1268', 
	 particles = [P.sd6, P.sd3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1274}) 
 
 
V_1269 = Vertex(name = 'V_1269', 
	 particles = [P.sd6, P.sd4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1275}) 
 
 
V_1270 = Vertex(name = 'V_1270', 
	 particles = [P.sd6, P.sd5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1276}) 
 
 
V_1271 = Vertex(name = 'V_1271', 
	 particles = [P.sd6, P.sd6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1277}) 
 
 
V_1272 = Vertex(name = 'V_1272', 
	 particles = [P.sd1, P.sd1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1278}) 
 
 
V_1273 = Vertex(name = 'V_1273', 
	 particles = [P.sd1, P.sd2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1279}) 
 
 
V_1274 = Vertex(name = 'V_1274', 
	 particles = [P.sd1, P.sd3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1280}) 
 
 
V_1275 = Vertex(name = 'V_1275', 
	 particles = [P.sd1, P.sd4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1281}) 
 
 
V_1276 = Vertex(name = 'V_1276', 
	 particles = [P.sd1, P.sd5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1282}) 
 
 
V_1277 = Vertex(name = 'V_1277', 
	 particles = [P.sd1, P.sd6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1283}) 
 
 
V_1278 = Vertex(name = 'V_1278', 
	 particles = [P.sd2, P.sd1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1284}) 
 
 
V_1279 = Vertex(name = 'V_1279', 
	 particles = [P.sd2, P.sd2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1285}) 
 
 
V_1280 = Vertex(name = 'V_1280', 
	 particles = [P.sd2, P.sd3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1286}) 
 
 
V_1281 = Vertex(name = 'V_1281', 
	 particles = [P.sd2, P.sd4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1287}) 
 
 
V_1282 = Vertex(name = 'V_1282', 
	 particles = [P.sd2, P.sd5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1288}) 
 
 
V_1283 = Vertex(name = 'V_1283', 
	 particles = [P.sd2, P.sd6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1289}) 
 
 
V_1284 = Vertex(name = 'V_1284', 
	 particles = [P.sd3, P.sd1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1290}) 
 
 
V_1285 = Vertex(name = 'V_1285', 
	 particles = [P.sd3, P.sd2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1291}) 
 
 
V_1286 = Vertex(name = 'V_1286', 
	 particles = [P.sd3, P.sd3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1292}) 
 
 
V_1287 = Vertex(name = 'V_1287', 
	 particles = [P.sd3, P.sd4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1293}) 
 
 
V_1288 = Vertex(name = 'V_1288', 
	 particles = [P.sd3, P.sd5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1294}) 
 
 
V_1289 = Vertex(name = 'V_1289', 
	 particles = [P.sd3, P.sd6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1295}) 
 
 
V_1290 = Vertex(name = 'V_1290', 
	 particles = [P.sd4, P.sd1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1296}) 
 
 
V_1291 = Vertex(name = 'V_1291', 
	 particles = [P.sd4, P.sd2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1297}) 
 
 
V_1292 = Vertex(name = 'V_1292', 
	 particles = [P.sd4, P.sd3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1298}) 
 
 
V_1293 = Vertex(name = 'V_1293', 
	 particles = [P.sd4, P.sd4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1299}) 
 
 
V_1294 = Vertex(name = 'V_1294', 
	 particles = [P.sd4, P.sd5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1300}) 
 
 
V_1295 = Vertex(name = 'V_1295', 
	 particles = [P.sd4, P.sd6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1301}) 
 
 
V_1296 = Vertex(name = 'V_1296', 
	 particles = [P.sd5, P.sd1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1302}) 
 
 
V_1297 = Vertex(name = 'V_1297', 
	 particles = [P.sd5, P.sd2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1303}) 
 
 
V_1298 = Vertex(name = 'V_1298', 
	 particles = [P.sd5, P.sd3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1304}) 
 
 
V_1299 = Vertex(name = 'V_1299', 
	 particles = [P.sd5, P.sd4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1305}) 
 
 
V_1300 = Vertex(name = 'V_1300', 
	 particles = [P.sd5, P.sd5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1306}) 
 
 
V_1301 = Vertex(name = 'V_1301', 
	 particles = [P.sd5, P.sd6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1307}) 
 
 
V_1302 = Vertex(name = 'V_1302', 
	 particles = [P.sd6, P.sd1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1308}) 
 
 
V_1303 = Vertex(name = 'V_1303', 
	 particles = [P.sd6, P.sd2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1309}) 
 
 
V_1304 = Vertex(name = 'V_1304', 
	 particles = [P.sd6, P.sd3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1310}) 
 
 
V_1305 = Vertex(name = 'V_1305', 
	 particles = [P.sd6, P.sd4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1311}) 
 
 
V_1306 = Vertex(name = 'V_1306', 
	 particles = [P.sd6, P.sd5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1312}) 
 
 
V_1307 = Vertex(name = 'V_1307', 
	 particles = [P.sd6, P.sd6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1313}) 
 
 
V_1308 = Vertex(name = 'V_1308', 
	 particles = [P.sd1, P.sd1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1314}) 
 
 
V_1309 = Vertex(name = 'V_1309', 
	 particles = [P.sd1, P.sd2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1315}) 
 
 
V_1310 = Vertex(name = 'V_1310', 
	 particles = [P.sd1, P.sd3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1316}) 
 
 
V_1311 = Vertex(name = 'V_1311', 
	 particles = [P.sd1, P.sd4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1317}) 
 
 
V_1312 = Vertex(name = 'V_1312', 
	 particles = [P.sd1, P.sd5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1318}) 
 
 
V_1313 = Vertex(name = 'V_1313', 
	 particles = [P.sd1, P.sd6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1319}) 
 
 
V_1314 = Vertex(name = 'V_1314', 
	 particles = [P.sd2, P.sd1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1320}) 
 
 
V_1315 = Vertex(name = 'V_1315', 
	 particles = [P.sd2, P.sd2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1321}) 
 
 
V_1316 = Vertex(name = 'V_1316', 
	 particles = [P.sd2, P.sd3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1322}) 
 
 
V_1317 = Vertex(name = 'V_1317', 
	 particles = [P.sd2, P.sd4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1323}) 
 
 
V_1318 = Vertex(name = 'V_1318', 
	 particles = [P.sd2, P.sd5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1324}) 
 
 
V_1319 = Vertex(name = 'V_1319', 
	 particles = [P.sd2, P.sd6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1325}) 
 
 
V_1320 = Vertex(name = 'V_1320', 
	 particles = [P.sd3, P.sd1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1326}) 
 
 
V_1321 = Vertex(name = 'V_1321', 
	 particles = [P.sd3, P.sd2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1327}) 
 
 
V_1322 = Vertex(name = 'V_1322', 
	 particles = [P.sd3, P.sd3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1328}) 
 
 
V_1323 = Vertex(name = 'V_1323', 
	 particles = [P.sd3, P.sd4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1329}) 
 
 
V_1324 = Vertex(name = 'V_1324', 
	 particles = [P.sd3, P.sd5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1330}) 
 
 
V_1325 = Vertex(name = 'V_1325', 
	 particles = [P.sd3, P.sd6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1331}) 
 
 
V_1326 = Vertex(name = 'V_1326', 
	 particles = [P.sd4, P.sd1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1332}) 
 
 
V_1327 = Vertex(name = 'V_1327', 
	 particles = [P.sd4, P.sd2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1333}) 
 
 
V_1328 = Vertex(name = 'V_1328', 
	 particles = [P.sd4, P.sd3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1334}) 
 
 
V_1329 = Vertex(name = 'V_1329', 
	 particles = [P.sd4, P.sd4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1335}) 
 
 
V_1330 = Vertex(name = 'V_1330', 
	 particles = [P.sd4, P.sd5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1336}) 
 
 
V_1331 = Vertex(name = 'V_1331', 
	 particles = [P.sd4, P.sd6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1337}) 
 
 
V_1332 = Vertex(name = 'V_1332', 
	 particles = [P.sd5, P.sd1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1338}) 
 
 
V_1333 = Vertex(name = 'V_1333', 
	 particles = [P.sd5, P.sd2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1339}) 
 
 
V_1334 = Vertex(name = 'V_1334', 
	 particles = [P.sd5, P.sd3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1340}) 
 
 
V_1335 = Vertex(name = 'V_1335', 
	 particles = [P.sd5, P.sd4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1341}) 
 
 
V_1336 = Vertex(name = 'V_1336', 
	 particles = [P.sd5, P.sd5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1342}) 
 
 
V_1337 = Vertex(name = 'V_1337', 
	 particles = [P.sd5, P.sd6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1343}) 
 
 
V_1338 = Vertex(name = 'V_1338', 
	 particles = [P.sd6, P.sd1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1344}) 
 
 
V_1339 = Vertex(name = 'V_1339', 
	 particles = [P.sd6, P.sd2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1345}) 
 
 
V_1340 = Vertex(name = 'V_1340', 
	 particles = [P.sd6, P.sd3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1346}) 
 
 
V_1341 = Vertex(name = 'V_1341', 
	 particles = [P.sd6, P.sd4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1347}) 
 
 
V_1342 = Vertex(name = 'V_1342', 
	 particles = [P.sd6, P.sd5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1348}) 
 
 
V_1343 = Vertex(name = 'V_1343', 
	 particles = [P.sd6, P.sd6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1349}) 
 
 
V_1344 = Vertex(name = 'V_1344', 
	 particles = [P.sd1, P.su1c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1350}) 
 
 
V_1345 = Vertex(name = 'V_1345', 
	 particles = [P.sd1, P.su2c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1351}) 
 
 
V_1346 = Vertex(name = 'V_1346', 
	 particles = [P.sd1, P.su3c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1352}) 
 
 
V_1347 = Vertex(name = 'V_1347', 
	 particles = [P.sd1, P.su4c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1353}) 
 
 
V_1348 = Vertex(name = 'V_1348', 
	 particles = [P.sd1, P.su5c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1354}) 
 
 
V_1349 = Vertex(name = 'V_1349', 
	 particles = [P.sd1, P.su6c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1355}) 
 
 
V_1350 = Vertex(name = 'V_1350', 
	 particles = [P.sd2, P.su1c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1356}) 
 
 
V_1351 = Vertex(name = 'V_1351', 
	 particles = [P.sd2, P.su2c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1357}) 
 
 
V_1352 = Vertex(name = 'V_1352', 
	 particles = [P.sd2, P.su3c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1358}) 
 
 
V_1353 = Vertex(name = 'V_1353', 
	 particles = [P.sd2, P.su4c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1359}) 
 
 
V_1354 = Vertex(name = 'V_1354', 
	 particles = [P.sd2, P.su5c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1360}) 
 
 
V_1355 = Vertex(name = 'V_1355', 
	 particles = [P.sd2, P.su6c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1361}) 
 
 
V_1356 = Vertex(name = 'V_1356', 
	 particles = [P.sd3, P.su1c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1362}) 
 
 
V_1357 = Vertex(name = 'V_1357', 
	 particles = [P.sd3, P.su2c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1363}) 
 
 
V_1358 = Vertex(name = 'V_1358', 
	 particles = [P.sd3, P.su3c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1364}) 
 
 
V_1359 = Vertex(name = 'V_1359', 
	 particles = [P.sd3, P.su4c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1365}) 
 
 
V_1360 = Vertex(name = 'V_1360', 
	 particles = [P.sd3, P.su5c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1366}) 
 
 
V_1361 = Vertex(name = 'V_1361', 
	 particles = [P.sd3, P.su6c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1367}) 
 
 
V_1362 = Vertex(name = 'V_1362', 
	 particles = [P.sd4, P.su1c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1368}) 
 
 
V_1363 = Vertex(name = 'V_1363', 
	 particles = [P.sd4, P.su2c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1369}) 
 
 
V_1364 = Vertex(name = 'V_1364', 
	 particles = [P.sd4, P.su3c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1370}) 
 
 
V_1365 = Vertex(name = 'V_1365', 
	 particles = [P.sd4, P.su4c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1371}) 
 
 
V_1366 = Vertex(name = 'V_1366', 
	 particles = [P.sd4, P.su5c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1372}) 
 
 
V_1367 = Vertex(name = 'V_1367', 
	 particles = [P.sd4, P.su6c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1373}) 
 
 
V_1368 = Vertex(name = 'V_1368', 
	 particles = [P.sd5, P.su1c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1374}) 
 
 
V_1369 = Vertex(name = 'V_1369', 
	 particles = [P.sd5, P.su2c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1375}) 
 
 
V_1370 = Vertex(name = 'V_1370', 
	 particles = [P.sd5, P.su3c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1376}) 
 
 
V_1371 = Vertex(name = 'V_1371', 
	 particles = [P.sd5, P.su4c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1377}) 
 
 
V_1372 = Vertex(name = 'V_1372', 
	 particles = [P.sd5, P.su5c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1378}) 
 
 
V_1373 = Vertex(name = 'V_1373', 
	 particles = [P.sd5, P.su6c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1379}) 
 
 
V_1374 = Vertex(name = 'V_1374', 
	 particles = [P.sd6, P.su1c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1380}) 
 
 
V_1375 = Vertex(name = 'V_1375', 
	 particles = [P.sd6, P.su2c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1381}) 
 
 
V_1376 = Vertex(name = 'V_1376', 
	 particles = [P.sd6, P.su3c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1382}) 
 
 
V_1377 = Vertex(name = 'V_1377', 
	 particles = [P.sd6, P.su4c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1383}) 
 
 
V_1378 = Vertex(name = 'V_1378', 
	 particles = [P.sd6, P.su5c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1384}) 
 
 
V_1379 = Vertex(name = 'V_1379', 
	 particles = [P.sd6, P.su6c, P.Wmc, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1385}) 
 
 
V_1380 = Vertex(name = 'V_1380', 
	 particles = [P.sd1, P.sd1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1386}) 
 
 
V_1381 = Vertex(name = 'V_1381', 
	 particles = [P.sd1, P.sd2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1387}) 
 
 
V_1382 = Vertex(name = 'V_1382', 
	 particles = [P.sd1, P.sd3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1388}) 
 
 
V_1383 = Vertex(name = 'V_1383', 
	 particles = [P.sd1, P.sd4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1389}) 
 
 
V_1384 = Vertex(name = 'V_1384', 
	 particles = [P.sd1, P.sd5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1390}) 
 
 
V_1385 = Vertex(name = 'V_1385', 
	 particles = [P.sd1, P.sd6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1391}) 
 
 
V_1386 = Vertex(name = 'V_1386', 
	 particles = [P.sd2, P.sd1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1392}) 
 
 
V_1387 = Vertex(name = 'V_1387', 
	 particles = [P.sd2, P.sd2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1393}) 
 
 
V_1388 = Vertex(name = 'V_1388', 
	 particles = [P.sd2, P.sd3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1394}) 
 
 
V_1389 = Vertex(name = 'V_1389', 
	 particles = [P.sd2, P.sd4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1395}) 
 
 
V_1390 = Vertex(name = 'V_1390', 
	 particles = [P.sd2, P.sd5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1396}) 
 
 
V_1391 = Vertex(name = 'V_1391', 
	 particles = [P.sd2, P.sd6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1397}) 
 
 
V_1392 = Vertex(name = 'V_1392', 
	 particles = [P.sd3, P.sd1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1398}) 
 
 
V_1393 = Vertex(name = 'V_1393', 
	 particles = [P.sd3, P.sd2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1399}) 
 
 
V_1394 = Vertex(name = 'V_1394', 
	 particles = [P.sd3, P.sd3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1400}) 
 
 
V_1395 = Vertex(name = 'V_1395', 
	 particles = [P.sd3, P.sd4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1401}) 
 
 
V_1396 = Vertex(name = 'V_1396', 
	 particles = [P.sd3, P.sd5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1402}) 
 
 
V_1397 = Vertex(name = 'V_1397', 
	 particles = [P.sd3, P.sd6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1403}) 
 
 
V_1398 = Vertex(name = 'V_1398', 
	 particles = [P.sd4, P.sd1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1404}) 
 
 
V_1399 = Vertex(name = 'V_1399', 
	 particles = [P.sd4, P.sd2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1405}) 
 
 
V_1400 = Vertex(name = 'V_1400', 
	 particles = [P.sd4, P.sd3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1406}) 
 
 
V_1401 = Vertex(name = 'V_1401', 
	 particles = [P.sd4, P.sd4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1407}) 
 
 
V_1402 = Vertex(name = 'V_1402', 
	 particles = [P.sd4, P.sd5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1408}) 
 
 
V_1403 = Vertex(name = 'V_1403', 
	 particles = [P.sd4, P.sd6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1409}) 
 
 
V_1404 = Vertex(name = 'V_1404', 
	 particles = [P.sd5, P.sd1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1410}) 
 
 
V_1405 = Vertex(name = 'V_1405', 
	 particles = [P.sd5, P.sd2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1411}) 
 
 
V_1406 = Vertex(name = 'V_1406', 
	 particles = [P.sd5, P.sd3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1412}) 
 
 
V_1407 = Vertex(name = 'V_1407', 
	 particles = [P.sd5, P.sd4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1413}) 
 
 
V_1408 = Vertex(name = 'V_1408', 
	 particles = [P.sd5, P.sd5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1414}) 
 
 
V_1409 = Vertex(name = 'V_1409', 
	 particles = [P.sd5, P.sd6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1415}) 
 
 
V_1410 = Vertex(name = 'V_1410', 
	 particles = [P.sd6, P.sd1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1416}) 
 
 
V_1411 = Vertex(name = 'V_1411', 
	 particles = [P.sd6, P.sd2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1417}) 
 
 
V_1412 = Vertex(name = 'V_1412', 
	 particles = [P.sd6, P.sd3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1418}) 
 
 
V_1413 = Vertex(name = 'V_1413', 
	 particles = [P.sd6, P.sd4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1419}) 
 
 
V_1414 = Vertex(name = 'V_1414', 
	 particles = [P.sd6, P.sd5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1420}) 
 
 
V_1415 = Vertex(name = 'V_1415', 
	 particles = [P.sd6, P.sd6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1421}) 
 
 
V_1416 = Vertex(name = 'V_1416', 
	 particles = [P.sd1, P.sd1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1422}) 
 
 
V_1417 = Vertex(name = 'V_1417', 
	 particles = [P.sd1, P.sd2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1423}) 
 
 
V_1418 = Vertex(name = 'V_1418', 
	 particles = [P.sd1, P.sd3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1424}) 
 
 
V_1419 = Vertex(name = 'V_1419', 
	 particles = [P.sd1, P.sd4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1425}) 
 
 
V_1420 = Vertex(name = 'V_1420', 
	 particles = [P.sd1, P.sd5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1426}) 
 
 
V_1421 = Vertex(name = 'V_1421', 
	 particles = [P.sd1, P.sd6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1427}) 
 
 
V_1422 = Vertex(name = 'V_1422', 
	 particles = [P.sd2, P.sd1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1428}) 
 
 
V_1423 = Vertex(name = 'V_1423', 
	 particles = [P.sd2, P.sd2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1429}) 
 
 
V_1424 = Vertex(name = 'V_1424', 
	 particles = [P.sd2, P.sd3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1430}) 
 
 
V_1425 = Vertex(name = 'V_1425', 
	 particles = [P.sd2, P.sd4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1431}) 
 
 
V_1426 = Vertex(name = 'V_1426', 
	 particles = [P.sd2, P.sd5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1432}) 
 
 
V_1427 = Vertex(name = 'V_1427', 
	 particles = [P.sd2, P.sd6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1433}) 
 
 
V_1428 = Vertex(name = 'V_1428', 
	 particles = [P.sd3, P.sd1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1434}) 
 
 
V_1429 = Vertex(name = 'V_1429', 
	 particles = [P.sd3, P.sd2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1435}) 
 
 
V_1430 = Vertex(name = 'V_1430', 
	 particles = [P.sd3, P.sd3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1436}) 
 
 
V_1431 = Vertex(name = 'V_1431', 
	 particles = [P.sd3, P.sd4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1437}) 
 
 
V_1432 = Vertex(name = 'V_1432', 
	 particles = [P.sd3, P.sd5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1438}) 
 
 
V_1433 = Vertex(name = 'V_1433', 
	 particles = [P.sd3, P.sd6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1439}) 
 
 
V_1434 = Vertex(name = 'V_1434', 
	 particles = [P.sd4, P.sd1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1440}) 
 
 
V_1435 = Vertex(name = 'V_1435', 
	 particles = [P.sd4, P.sd2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1441}) 
 
 
V_1436 = Vertex(name = 'V_1436', 
	 particles = [P.sd4, P.sd3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1442}) 
 
 
V_1437 = Vertex(name = 'V_1437', 
	 particles = [P.sd4, P.sd4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1443}) 
 
 
V_1438 = Vertex(name = 'V_1438', 
	 particles = [P.sd4, P.sd5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1444}) 
 
 
V_1439 = Vertex(name = 'V_1439', 
	 particles = [P.sd4, P.sd6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1445}) 
 
 
V_1440 = Vertex(name = 'V_1440', 
	 particles = [P.sd5, P.sd1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1446}) 
 
 
V_1441 = Vertex(name = 'V_1441', 
	 particles = [P.sd5, P.sd2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1447}) 
 
 
V_1442 = Vertex(name = 'V_1442', 
	 particles = [P.sd5, P.sd3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1448}) 
 
 
V_1443 = Vertex(name = 'V_1443', 
	 particles = [P.sd5, P.sd4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1449}) 
 
 
V_1444 = Vertex(name = 'V_1444', 
	 particles = [P.sd5, P.sd5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1450}) 
 
 
V_1445 = Vertex(name = 'V_1445', 
	 particles = [P.sd5, P.sd6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1451}) 
 
 
V_1446 = Vertex(name = 'V_1446', 
	 particles = [P.sd6, P.sd1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1452}) 
 
 
V_1447 = Vertex(name = 'V_1447', 
	 particles = [P.sd6, P.sd2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1453}) 
 
 
V_1448 = Vertex(name = 'V_1448', 
	 particles = [P.sd6, P.sd3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1454}) 
 
 
V_1449 = Vertex(name = 'V_1449', 
	 particles = [P.sd6, P.sd4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1455}) 
 
 
V_1450 = Vertex(name = 'V_1450', 
	 particles = [P.sd6, P.sd5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1456}) 
 
 
V_1451 = Vertex(name = 'V_1451', 
	 particles = [P.sd6, P.sd6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1457}) 
 
 
V_1452 = Vertex(name = 'V_1452', 
	 particles = [P.sd1, P.sd1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1458}) 
 
 
V_1453 = Vertex(name = 'V_1453', 
	 particles = [P.sd1, P.sd2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1459}) 
 
 
V_1454 = Vertex(name = 'V_1454', 
	 particles = [P.sd1, P.sd3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1460}) 
 
 
V_1455 = Vertex(name = 'V_1455', 
	 particles = [P.sd1, P.sd4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1461}) 
 
 
V_1456 = Vertex(name = 'V_1456', 
	 particles = [P.sd1, P.sd5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1462}) 
 
 
V_1457 = Vertex(name = 'V_1457', 
	 particles = [P.sd1, P.sd6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1463}) 
 
 
V_1458 = Vertex(name = 'V_1458', 
	 particles = [P.sd2, P.sd1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1464}) 
 
 
V_1459 = Vertex(name = 'V_1459', 
	 particles = [P.sd2, P.sd2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1465}) 
 
 
V_1460 = Vertex(name = 'V_1460', 
	 particles = [P.sd2, P.sd3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1466}) 
 
 
V_1461 = Vertex(name = 'V_1461', 
	 particles = [P.sd2, P.sd4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1467}) 
 
 
V_1462 = Vertex(name = 'V_1462', 
	 particles = [P.sd2, P.sd5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1468}) 
 
 
V_1463 = Vertex(name = 'V_1463', 
	 particles = [P.sd2, P.sd6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1469}) 
 
 
V_1464 = Vertex(name = 'V_1464', 
	 particles = [P.sd3, P.sd1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1470}) 
 
 
V_1465 = Vertex(name = 'V_1465', 
	 particles = [P.sd3, P.sd2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1471}) 
 
 
V_1466 = Vertex(name = 'V_1466', 
	 particles = [P.sd3, P.sd3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1472}) 
 
 
V_1467 = Vertex(name = 'V_1467', 
	 particles = [P.sd3, P.sd4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1473}) 
 
 
V_1468 = Vertex(name = 'V_1468', 
	 particles = [P.sd3, P.sd5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1474}) 
 
 
V_1469 = Vertex(name = 'V_1469', 
	 particles = [P.sd3, P.sd6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1475}) 
 
 
V_1470 = Vertex(name = 'V_1470', 
	 particles = [P.sd4, P.sd1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1476}) 
 
 
V_1471 = Vertex(name = 'V_1471', 
	 particles = [P.sd4, P.sd2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1477}) 
 
 
V_1472 = Vertex(name = 'V_1472', 
	 particles = [P.sd4, P.sd3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1478}) 
 
 
V_1473 = Vertex(name = 'V_1473', 
	 particles = [P.sd4, P.sd4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1479}) 
 
 
V_1474 = Vertex(name = 'V_1474', 
	 particles = [P.sd4, P.sd5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1480}) 
 
 
V_1475 = Vertex(name = 'V_1475', 
	 particles = [P.sd4, P.sd6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1481}) 
 
 
V_1476 = Vertex(name = 'V_1476', 
	 particles = [P.sd5, P.sd1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1482}) 
 
 
V_1477 = Vertex(name = 'V_1477', 
	 particles = [P.sd5, P.sd2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1483}) 
 
 
V_1478 = Vertex(name = 'V_1478', 
	 particles = [P.sd5, P.sd3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1484}) 
 
 
V_1479 = Vertex(name = 'V_1479', 
	 particles = [P.sd5, P.sd4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1485}) 
 
 
V_1480 = Vertex(name = 'V_1480', 
	 particles = [P.sd5, P.sd5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1486}) 
 
 
V_1481 = Vertex(name = 'V_1481', 
	 particles = [P.sd5, P.sd6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1487}) 
 
 
V_1482 = Vertex(name = 'V_1482', 
	 particles = [P.sd6, P.sd1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1488}) 
 
 
V_1483 = Vertex(name = 'V_1483', 
	 particles = [P.sd6, P.sd2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1489}) 
 
 
V_1484 = Vertex(name = 'V_1484', 
	 particles = [P.sd6, P.sd3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1490}) 
 
 
V_1485 = Vertex(name = 'V_1485', 
	 particles = [P.sd6, P.sd4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1491}) 
 
 
V_1486 = Vertex(name = 'V_1486', 
	 particles = [P.sd6, P.sd5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1492}) 
 
 
V_1487 = Vertex(name = 'V_1487', 
	 particles = [P.sd6, P.sd6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1493}) 
 
 
V_1488 = Vertex(name = 'V_1488', 
	 particles = [P.sd1, P.su1c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1494}) 
 
 
V_1489 = Vertex(name = 'V_1489', 
	 particles = [P.sd1, P.su2c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1495}) 
 
 
V_1490 = Vertex(name = 'V_1490', 
	 particles = [P.sd1, P.su3c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1496}) 
 
 
V_1491 = Vertex(name = 'V_1491', 
	 particles = [P.sd1, P.su4c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1497}) 
 
 
V_1492 = Vertex(name = 'V_1492', 
	 particles = [P.sd1, P.su5c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1498}) 
 
 
V_1493 = Vertex(name = 'V_1493', 
	 particles = [P.sd1, P.su6c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1499}) 
 
 
V_1494 = Vertex(name = 'V_1494', 
	 particles = [P.sd2, P.su1c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1500}) 
 
 
V_1495 = Vertex(name = 'V_1495', 
	 particles = [P.sd2, P.su2c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1501}) 
 
 
V_1496 = Vertex(name = 'V_1496', 
	 particles = [P.sd2, P.su3c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1502}) 
 
 
V_1497 = Vertex(name = 'V_1497', 
	 particles = [P.sd2, P.su4c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1503}) 
 
 
V_1498 = Vertex(name = 'V_1498', 
	 particles = [P.sd2, P.su5c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1504}) 
 
 
V_1499 = Vertex(name = 'V_1499', 
	 particles = [P.sd2, P.su6c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1505}) 
 
 
V_1500 = Vertex(name = 'V_1500', 
	 particles = [P.sd3, P.su1c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1506}) 
 
 
V_1501 = Vertex(name = 'V_1501', 
	 particles = [P.sd3, P.su2c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1507}) 
 
 
V_1502 = Vertex(name = 'V_1502', 
	 particles = [P.sd3, P.su3c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1508}) 
 
 
V_1503 = Vertex(name = 'V_1503', 
	 particles = [P.sd3, P.su4c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1509}) 
 
 
V_1504 = Vertex(name = 'V_1504', 
	 particles = [P.sd3, P.su5c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1510}) 
 
 
V_1505 = Vertex(name = 'V_1505', 
	 particles = [P.sd3, P.su6c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1511}) 
 
 
V_1506 = Vertex(name = 'V_1506', 
	 particles = [P.sd4, P.su1c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1512}) 
 
 
V_1507 = Vertex(name = 'V_1507', 
	 particles = [P.sd4, P.su2c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1513}) 
 
 
V_1508 = Vertex(name = 'V_1508', 
	 particles = [P.sd4, P.su3c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1514}) 
 
 
V_1509 = Vertex(name = 'V_1509', 
	 particles = [P.sd4, P.su4c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1515}) 
 
 
V_1510 = Vertex(name = 'V_1510', 
	 particles = [P.sd4, P.su5c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1516}) 
 
 
V_1511 = Vertex(name = 'V_1511', 
	 particles = [P.sd4, P.su6c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1517}) 
 
 
V_1512 = Vertex(name = 'V_1512', 
	 particles = [P.sd5, P.su1c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1518}) 
 
 
V_1513 = Vertex(name = 'V_1513', 
	 particles = [P.sd5, P.su2c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1519}) 
 
 
V_1514 = Vertex(name = 'V_1514', 
	 particles = [P.sd5, P.su3c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1520}) 
 
 
V_1515 = Vertex(name = 'V_1515', 
	 particles = [P.sd5, P.su4c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1521}) 
 
 
V_1516 = Vertex(name = 'V_1516', 
	 particles = [P.sd5, P.su5c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1522}) 
 
 
V_1517 = Vertex(name = 'V_1517', 
	 particles = [P.sd5, P.su6c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1523}) 
 
 
V_1518 = Vertex(name = 'V_1518', 
	 particles = [P.sd6, P.su1c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1524}) 
 
 
V_1519 = Vertex(name = 'V_1519', 
	 particles = [P.sd6, P.su2c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1525}) 
 
 
V_1520 = Vertex(name = 'V_1520', 
	 particles = [P.sd6, P.su3c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1526}) 
 
 
V_1521 = Vertex(name = 'V_1521', 
	 particles = [P.sd6, P.su4c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1527}) 
 
 
V_1522 = Vertex(name = 'V_1522', 
	 particles = [P.sd6, P.su5c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1528}) 
 
 
V_1523 = Vertex(name = 'V_1523', 
	 particles = [P.sd6, P.su6c, P.Wmc, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1529}) 
 
 
V_1524 = Vertex(name = 'V_1524', 
	 particles = [P.sd1, P.sd1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1530}) 
 
 
V_1525 = Vertex(name = 'V_1525', 
	 particles = [P.sd1, P.sd2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1531}) 
 
 
V_1526 = Vertex(name = 'V_1526', 
	 particles = [P.sd1, P.sd3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1532}) 
 
 
V_1527 = Vertex(name = 'V_1527', 
	 particles = [P.sd1, P.sd4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1533}) 
 
 
V_1528 = Vertex(name = 'V_1528', 
	 particles = [P.sd1, P.sd5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1534}) 
 
 
V_1529 = Vertex(name = 'V_1529', 
	 particles = [P.sd1, P.sd6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1535}) 
 
 
V_1530 = Vertex(name = 'V_1530', 
	 particles = [P.sd2, P.sd1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1536}) 
 
 
V_1531 = Vertex(name = 'V_1531', 
	 particles = [P.sd2, P.sd2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1537}) 
 
 
V_1532 = Vertex(name = 'V_1532', 
	 particles = [P.sd2, P.sd3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1538}) 
 
 
V_1533 = Vertex(name = 'V_1533', 
	 particles = [P.sd2, P.sd4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1539}) 
 
 
V_1534 = Vertex(name = 'V_1534', 
	 particles = [P.sd2, P.sd5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1540}) 
 
 
V_1535 = Vertex(name = 'V_1535', 
	 particles = [P.sd2, P.sd6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1541}) 
 
 
V_1536 = Vertex(name = 'V_1536', 
	 particles = [P.sd3, P.sd1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1542}) 
 
 
V_1537 = Vertex(name = 'V_1537', 
	 particles = [P.sd3, P.sd2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1543}) 
 
 
V_1538 = Vertex(name = 'V_1538', 
	 particles = [P.sd3, P.sd3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1544}) 
 
 
V_1539 = Vertex(name = 'V_1539', 
	 particles = [P.sd3, P.sd4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1545}) 
 
 
V_1540 = Vertex(name = 'V_1540', 
	 particles = [P.sd3, P.sd5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1546}) 
 
 
V_1541 = Vertex(name = 'V_1541', 
	 particles = [P.sd3, P.sd6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1547}) 
 
 
V_1542 = Vertex(name = 'V_1542', 
	 particles = [P.sd4, P.sd1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1548}) 
 
 
V_1543 = Vertex(name = 'V_1543', 
	 particles = [P.sd4, P.sd2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1549}) 
 
 
V_1544 = Vertex(name = 'V_1544', 
	 particles = [P.sd4, P.sd3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1550}) 
 
 
V_1545 = Vertex(name = 'V_1545', 
	 particles = [P.sd4, P.sd4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1551}) 
 
 
V_1546 = Vertex(name = 'V_1546', 
	 particles = [P.sd4, P.sd5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1552}) 
 
 
V_1547 = Vertex(name = 'V_1547', 
	 particles = [P.sd4, P.sd6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1553}) 
 
 
V_1548 = Vertex(name = 'V_1548', 
	 particles = [P.sd5, P.sd1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1554}) 
 
 
V_1549 = Vertex(name = 'V_1549', 
	 particles = [P.sd5, P.sd2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1555}) 
 
 
V_1550 = Vertex(name = 'V_1550', 
	 particles = [P.sd5, P.sd3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1556}) 
 
 
V_1551 = Vertex(name = 'V_1551', 
	 particles = [P.sd5, P.sd4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1557}) 
 
 
V_1552 = Vertex(name = 'V_1552', 
	 particles = [P.sd5, P.sd5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1558}) 
 
 
V_1553 = Vertex(name = 'V_1553', 
	 particles = [P.sd5, P.sd6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1559}) 
 
 
V_1554 = Vertex(name = 'V_1554', 
	 particles = [P.sd6, P.sd1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1560}) 
 
 
V_1555 = Vertex(name = 'V_1555', 
	 particles = [P.sd6, P.sd2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1561}) 
 
 
V_1556 = Vertex(name = 'V_1556', 
	 particles = [P.sd6, P.sd3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1562}) 
 
 
V_1557 = Vertex(name = 'V_1557', 
	 particles = [P.sd6, P.sd4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1563}) 
 
 
V_1558 = Vertex(name = 'V_1558', 
	 particles = [P.sd6, P.sd5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1564}) 
 
 
V_1559 = Vertex(name = 'V_1559', 
	 particles = [P.sd6, P.sd6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1565}) 
 
 
V_1560 = Vertex(name = 'V_1560', 
	 particles = [P.sd1, P.su1c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1566}) 
 
 
V_1561 = Vertex(name = 'V_1561', 
	 particles = [P.sd1, P.su2c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1567}) 
 
 
V_1562 = Vertex(name = 'V_1562', 
	 particles = [P.sd1, P.su3c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1568}) 
 
 
V_1563 = Vertex(name = 'V_1563', 
	 particles = [P.sd1, P.su4c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1569}) 
 
 
V_1564 = Vertex(name = 'V_1564', 
	 particles = [P.sd1, P.su5c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1570}) 
 
 
V_1565 = Vertex(name = 'V_1565', 
	 particles = [P.sd1, P.su6c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1571}) 
 
 
V_1566 = Vertex(name = 'V_1566', 
	 particles = [P.sd2, P.su1c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1572}) 
 
 
V_1567 = Vertex(name = 'V_1567', 
	 particles = [P.sd2, P.su2c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1573}) 
 
 
V_1568 = Vertex(name = 'V_1568', 
	 particles = [P.sd2, P.su3c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1574}) 
 
 
V_1569 = Vertex(name = 'V_1569', 
	 particles = [P.sd2, P.su4c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1575}) 
 
 
V_1570 = Vertex(name = 'V_1570', 
	 particles = [P.sd2, P.su5c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1576}) 
 
 
V_1571 = Vertex(name = 'V_1571', 
	 particles = [P.sd2, P.su6c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1577}) 
 
 
V_1572 = Vertex(name = 'V_1572', 
	 particles = [P.sd3, P.su1c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1578}) 
 
 
V_1573 = Vertex(name = 'V_1573', 
	 particles = [P.sd3, P.su2c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1579}) 
 
 
V_1574 = Vertex(name = 'V_1574', 
	 particles = [P.sd3, P.su3c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1580}) 
 
 
V_1575 = Vertex(name = 'V_1575', 
	 particles = [P.sd3, P.su4c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1581}) 
 
 
V_1576 = Vertex(name = 'V_1576', 
	 particles = [P.sd3, P.su5c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1582}) 
 
 
V_1577 = Vertex(name = 'V_1577', 
	 particles = [P.sd3, P.su6c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1583}) 
 
 
V_1578 = Vertex(name = 'V_1578', 
	 particles = [P.sd4, P.su1c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1584}) 
 
 
V_1579 = Vertex(name = 'V_1579', 
	 particles = [P.sd4, P.su2c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1585}) 
 
 
V_1580 = Vertex(name = 'V_1580', 
	 particles = [P.sd4, P.su3c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1586}) 
 
 
V_1581 = Vertex(name = 'V_1581', 
	 particles = [P.sd4, P.su4c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1587}) 
 
 
V_1582 = Vertex(name = 'V_1582', 
	 particles = [P.sd4, P.su5c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1588}) 
 
 
V_1583 = Vertex(name = 'V_1583', 
	 particles = [P.sd4, P.su6c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1589}) 
 
 
V_1584 = Vertex(name = 'V_1584', 
	 particles = [P.sd5, P.su1c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1590}) 
 
 
V_1585 = Vertex(name = 'V_1585', 
	 particles = [P.sd5, P.su2c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1591}) 
 
 
V_1586 = Vertex(name = 'V_1586', 
	 particles = [P.sd5, P.su3c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1592}) 
 
 
V_1587 = Vertex(name = 'V_1587', 
	 particles = [P.sd5, P.su4c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1593}) 
 
 
V_1588 = Vertex(name = 'V_1588', 
	 particles = [P.sd5, P.su5c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1594}) 
 
 
V_1589 = Vertex(name = 'V_1589', 
	 particles = [P.sd5, P.su6c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1595}) 
 
 
V_1590 = Vertex(name = 'V_1590', 
	 particles = [P.sd6, P.su1c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1596}) 
 
 
V_1591 = Vertex(name = 'V_1591', 
	 particles = [P.sd6, P.su2c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1597}) 
 
 
V_1592 = Vertex(name = 'V_1592', 
	 particles = [P.sd6, P.su3c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1598}) 
 
 
V_1593 = Vertex(name = 'V_1593', 
	 particles = [P.sd6, P.su4c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1599}) 
 
 
V_1594 = Vertex(name = 'V_1594', 
	 particles = [P.sd6, P.su5c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1600}) 
 
 
V_1595 = Vertex(name = 'V_1595', 
	 particles = [P.sd6, P.su6c, P.Wmc, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1601}) 
 
 
V_1596 = Vertex(name = 'V_1596', 
	 particles = [P.se1, P.se1c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1602}) 
 
 
V_1597 = Vertex(name = 'V_1597', 
	 particles = [P.se1, P.se2c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1603}) 
 
 
V_1598 = Vertex(name = 'V_1598', 
	 particles = [P.se1, P.se3c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1604}) 
 
 
V_1599 = Vertex(name = 'V_1599', 
	 particles = [P.se1, P.se4c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1605}) 
 
 
V_1600 = Vertex(name = 'V_1600', 
	 particles = [P.se1, P.se5c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1606}) 
 
 
V_1601 = Vertex(name = 'V_1601', 
	 particles = [P.se1, P.se6c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1607}) 
 
 
V_1602 = Vertex(name = 'V_1602', 
	 particles = [P.se2, P.se1c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1608}) 
 
 
V_1603 = Vertex(name = 'V_1603', 
	 particles = [P.se2, P.se2c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1609}) 
 
 
V_1604 = Vertex(name = 'V_1604', 
	 particles = [P.se2, P.se3c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1610}) 
 
 
V_1605 = Vertex(name = 'V_1605', 
	 particles = [P.se2, P.se4c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1611}) 
 
 
V_1606 = Vertex(name = 'V_1606', 
	 particles = [P.se2, P.se5c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1612}) 
 
 
V_1607 = Vertex(name = 'V_1607', 
	 particles = [P.se2, P.se6c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1613}) 
 
 
V_1608 = Vertex(name = 'V_1608', 
	 particles = [P.se3, P.se1c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1614}) 
 
 
V_1609 = Vertex(name = 'V_1609', 
	 particles = [P.se3, P.se2c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1615}) 
 
 
V_1610 = Vertex(name = 'V_1610', 
	 particles = [P.se3, P.se3c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1616}) 
 
 
V_1611 = Vertex(name = 'V_1611', 
	 particles = [P.se3, P.se4c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1617}) 
 
 
V_1612 = Vertex(name = 'V_1612', 
	 particles = [P.se3, P.se5c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1618}) 
 
 
V_1613 = Vertex(name = 'V_1613', 
	 particles = [P.se3, P.se6c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1619}) 
 
 
V_1614 = Vertex(name = 'V_1614', 
	 particles = [P.se4, P.se1c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1620}) 
 
 
V_1615 = Vertex(name = 'V_1615', 
	 particles = [P.se4, P.se2c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1621}) 
 
 
V_1616 = Vertex(name = 'V_1616', 
	 particles = [P.se4, P.se3c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1622}) 
 
 
V_1617 = Vertex(name = 'V_1617', 
	 particles = [P.se4, P.se4c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1623}) 
 
 
V_1618 = Vertex(name = 'V_1618', 
	 particles = [P.se4, P.se5c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1624}) 
 
 
V_1619 = Vertex(name = 'V_1619', 
	 particles = [P.se4, P.se6c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1625}) 
 
 
V_1620 = Vertex(name = 'V_1620', 
	 particles = [P.se5, P.se1c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1626}) 
 
 
V_1621 = Vertex(name = 'V_1621', 
	 particles = [P.se5, P.se2c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1627}) 
 
 
V_1622 = Vertex(name = 'V_1622', 
	 particles = [P.se5, P.se3c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1628}) 
 
 
V_1623 = Vertex(name = 'V_1623', 
	 particles = [P.se5, P.se4c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1629}) 
 
 
V_1624 = Vertex(name = 'V_1624', 
	 particles = [P.se5, P.se5c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1630}) 
 
 
V_1625 = Vertex(name = 'V_1625', 
	 particles = [P.se5, P.se6c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1631}) 
 
 
V_1626 = Vertex(name = 'V_1626', 
	 particles = [P.se6, P.se1c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1632}) 
 
 
V_1627 = Vertex(name = 'V_1627', 
	 particles = [P.se6, P.se2c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1633}) 
 
 
V_1628 = Vertex(name = 'V_1628', 
	 particles = [P.se6, P.se3c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1634}) 
 
 
V_1629 = Vertex(name = 'V_1629', 
	 particles = [P.se6, P.se4c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1635}) 
 
 
V_1630 = Vertex(name = 'V_1630', 
	 particles = [P.se6, P.se5c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1636}) 
 
 
V_1631 = Vertex(name = 'V_1631', 
	 particles = [P.se6, P.se6c, P.A, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1637}) 
 
 
V_1632 = Vertex(name = 'V_1632', 
	 particles = [P.se1, P.se1c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1638}) 
 
 
V_1633 = Vertex(name = 'V_1633', 
	 particles = [P.se1, P.se2c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1639}) 
 
 
V_1634 = Vertex(name = 'V_1634', 
	 particles = [P.se1, P.se3c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1640}) 
 
 
V_1635 = Vertex(name = 'V_1635', 
	 particles = [P.se1, P.se4c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1641}) 
 
 
V_1636 = Vertex(name = 'V_1636', 
	 particles = [P.se1, P.se5c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1642}) 
 
 
V_1637 = Vertex(name = 'V_1637', 
	 particles = [P.se1, P.se6c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1643}) 
 
 
V_1638 = Vertex(name = 'V_1638', 
	 particles = [P.se2, P.se1c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1644}) 
 
 
V_1639 = Vertex(name = 'V_1639', 
	 particles = [P.se2, P.se2c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1645}) 
 
 
V_1640 = Vertex(name = 'V_1640', 
	 particles = [P.se2, P.se3c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1646}) 
 
 
V_1641 = Vertex(name = 'V_1641', 
	 particles = [P.se2, P.se4c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1647}) 
 
 
V_1642 = Vertex(name = 'V_1642', 
	 particles = [P.se2, P.se5c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1648}) 
 
 
V_1643 = Vertex(name = 'V_1643', 
	 particles = [P.se2, P.se6c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1649}) 
 
 
V_1644 = Vertex(name = 'V_1644', 
	 particles = [P.se3, P.se1c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1650}) 
 
 
V_1645 = Vertex(name = 'V_1645', 
	 particles = [P.se3, P.se2c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1651}) 
 
 
V_1646 = Vertex(name = 'V_1646', 
	 particles = [P.se3, P.se3c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1652}) 
 
 
V_1647 = Vertex(name = 'V_1647', 
	 particles = [P.se3, P.se4c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1653}) 
 
 
V_1648 = Vertex(name = 'V_1648', 
	 particles = [P.se3, P.se5c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1654}) 
 
 
V_1649 = Vertex(name = 'V_1649', 
	 particles = [P.se3, P.se6c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1655}) 
 
 
V_1650 = Vertex(name = 'V_1650', 
	 particles = [P.se4, P.se1c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1656}) 
 
 
V_1651 = Vertex(name = 'V_1651', 
	 particles = [P.se4, P.se2c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1657}) 
 
 
V_1652 = Vertex(name = 'V_1652', 
	 particles = [P.se4, P.se3c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1658}) 
 
 
V_1653 = Vertex(name = 'V_1653', 
	 particles = [P.se4, P.se4c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1659}) 
 
 
V_1654 = Vertex(name = 'V_1654', 
	 particles = [P.se4, P.se5c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1660}) 
 
 
V_1655 = Vertex(name = 'V_1655', 
	 particles = [P.se4, P.se6c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1661}) 
 
 
V_1656 = Vertex(name = 'V_1656', 
	 particles = [P.se5, P.se1c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1662}) 
 
 
V_1657 = Vertex(name = 'V_1657', 
	 particles = [P.se5, P.se2c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1663}) 
 
 
V_1658 = Vertex(name = 'V_1658', 
	 particles = [P.se5, P.se3c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1664}) 
 
 
V_1659 = Vertex(name = 'V_1659', 
	 particles = [P.se5, P.se4c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1665}) 
 
 
V_1660 = Vertex(name = 'V_1660', 
	 particles = [P.se5, P.se5c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1666}) 
 
 
V_1661 = Vertex(name = 'V_1661', 
	 particles = [P.se5, P.se6c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1667}) 
 
 
V_1662 = Vertex(name = 'V_1662', 
	 particles = [P.se6, P.se1c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1668}) 
 
 
V_1663 = Vertex(name = 'V_1663', 
	 particles = [P.se6, P.se2c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1669}) 
 
 
V_1664 = Vertex(name = 'V_1664', 
	 particles = [P.se6, P.se3c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1670}) 
 
 
V_1665 = Vertex(name = 'V_1665', 
	 particles = [P.se6, P.se4c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1671}) 
 
 
V_1666 = Vertex(name = 'V_1666', 
	 particles = [P.se6, P.se5c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1672}) 
 
 
V_1667 = Vertex(name = 'V_1667', 
	 particles = [P.se6, P.se6c, P.A, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1673}) 
 
 
V_1668 = Vertex(name = 'V_1668', 
	 particles = [P.se1, P.se1c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1674}) 
 
 
V_1669 = Vertex(name = 'V_1669', 
	 particles = [P.se1, P.se2c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1675}) 
 
 
V_1670 = Vertex(name = 'V_1670', 
	 particles = [P.se1, P.se3c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1676}) 
 
 
V_1671 = Vertex(name = 'V_1671', 
	 particles = [P.se1, P.se4c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1677}) 
 
 
V_1672 = Vertex(name = 'V_1672', 
	 particles = [P.se1, P.se5c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1678}) 
 
 
V_1673 = Vertex(name = 'V_1673', 
	 particles = [P.se1, P.se6c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1679}) 
 
 
V_1674 = Vertex(name = 'V_1674', 
	 particles = [P.se2, P.se1c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1680}) 
 
 
V_1675 = Vertex(name = 'V_1675', 
	 particles = [P.se2, P.se2c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1681}) 
 
 
V_1676 = Vertex(name = 'V_1676', 
	 particles = [P.se2, P.se3c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1682}) 
 
 
V_1677 = Vertex(name = 'V_1677', 
	 particles = [P.se2, P.se4c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1683}) 
 
 
V_1678 = Vertex(name = 'V_1678', 
	 particles = [P.se2, P.se5c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1684}) 
 
 
V_1679 = Vertex(name = 'V_1679', 
	 particles = [P.se2, P.se6c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1685}) 
 
 
V_1680 = Vertex(name = 'V_1680', 
	 particles = [P.se3, P.se1c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1686}) 
 
 
V_1681 = Vertex(name = 'V_1681', 
	 particles = [P.se3, P.se2c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1687}) 
 
 
V_1682 = Vertex(name = 'V_1682', 
	 particles = [P.se3, P.se3c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1688}) 
 
 
V_1683 = Vertex(name = 'V_1683', 
	 particles = [P.se3, P.se4c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1689}) 
 
 
V_1684 = Vertex(name = 'V_1684', 
	 particles = [P.se3, P.se5c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1690}) 
 
 
V_1685 = Vertex(name = 'V_1685', 
	 particles = [P.se3, P.se6c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1691}) 
 
 
V_1686 = Vertex(name = 'V_1686', 
	 particles = [P.se4, P.se1c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1692}) 
 
 
V_1687 = Vertex(name = 'V_1687', 
	 particles = [P.se4, P.se2c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1693}) 
 
 
V_1688 = Vertex(name = 'V_1688', 
	 particles = [P.se4, P.se3c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1694}) 
 
 
V_1689 = Vertex(name = 'V_1689', 
	 particles = [P.se4, P.se4c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1695}) 
 
 
V_1690 = Vertex(name = 'V_1690', 
	 particles = [P.se4, P.se5c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1696}) 
 
 
V_1691 = Vertex(name = 'V_1691', 
	 particles = [P.se4, P.se6c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1697}) 
 
 
V_1692 = Vertex(name = 'V_1692', 
	 particles = [P.se5, P.se1c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1698}) 
 
 
V_1693 = Vertex(name = 'V_1693', 
	 particles = [P.se5, P.se2c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1699}) 
 
 
V_1694 = Vertex(name = 'V_1694', 
	 particles = [P.se5, P.se3c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1700}) 
 
 
V_1695 = Vertex(name = 'V_1695', 
	 particles = [P.se5, P.se4c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1701}) 
 
 
V_1696 = Vertex(name = 'V_1696', 
	 particles = [P.se5, P.se5c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1702}) 
 
 
V_1697 = Vertex(name = 'V_1697', 
	 particles = [P.se5, P.se6c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1703}) 
 
 
V_1698 = Vertex(name = 'V_1698', 
	 particles = [P.se6, P.se1c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1704}) 
 
 
V_1699 = Vertex(name = 'V_1699', 
	 particles = [P.se6, P.se2c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1705}) 
 
 
V_1700 = Vertex(name = 'V_1700', 
	 particles = [P.se6, P.se3c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1706}) 
 
 
V_1701 = Vertex(name = 'V_1701', 
	 particles = [P.se6, P.se4c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1707}) 
 
 
V_1702 = Vertex(name = 'V_1702', 
	 particles = [P.se6, P.se5c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1708}) 
 
 
V_1703 = Vertex(name = 'V_1703', 
	 particles = [P.se6, P.se6c, P.A, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1709}) 
 
 
V_1704 = Vertex(name = 'V_1704', 
	 particles = [P.se1, P.sv1c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1710}) 
 
 
V_1705 = Vertex(name = 'V_1705', 
	 particles = [P.se1, P.sv2c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1711}) 
 
 
V_1706 = Vertex(name = 'V_1706', 
	 particles = [P.se1, P.sv3c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1712}) 
 
 
V_1707 = Vertex(name = 'V_1707', 
	 particles = [P.se2, P.sv1c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1713}) 
 
 
V_1708 = Vertex(name = 'V_1708', 
	 particles = [P.se2, P.sv2c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1714}) 
 
 
V_1709 = Vertex(name = 'V_1709', 
	 particles = [P.se2, P.sv3c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1715}) 
 
 
V_1710 = Vertex(name = 'V_1710', 
	 particles = [P.se3, P.sv1c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1716}) 
 
 
V_1711 = Vertex(name = 'V_1711', 
	 particles = [P.se3, P.sv2c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1717}) 
 
 
V_1712 = Vertex(name = 'V_1712', 
	 particles = [P.se3, P.sv3c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1718}) 
 
 
V_1713 = Vertex(name = 'V_1713', 
	 particles = [P.se4, P.sv1c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1719}) 
 
 
V_1714 = Vertex(name = 'V_1714', 
	 particles = [P.se4, P.sv2c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1720}) 
 
 
V_1715 = Vertex(name = 'V_1715', 
	 particles = [P.se4, P.sv3c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1721}) 
 
 
V_1716 = Vertex(name = 'V_1716', 
	 particles = [P.se5, P.sv1c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1722}) 
 
 
V_1717 = Vertex(name = 'V_1717', 
	 particles = [P.se5, P.sv2c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1723}) 
 
 
V_1718 = Vertex(name = 'V_1718', 
	 particles = [P.se5, P.sv3c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1724}) 
 
 
V_1719 = Vertex(name = 'V_1719', 
	 particles = [P.se6, P.sv1c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1725}) 
 
 
V_1720 = Vertex(name = 'V_1720', 
	 particles = [P.se6, P.sv2c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1726}) 
 
 
V_1721 = Vertex(name = 'V_1721', 
	 particles = [P.se6, P.sv3c, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1727}) 
 
 
V_1722 = Vertex(name = 'V_1722', 
	 particles = [P.se1, P.se1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1728}) 
 
 
V_1723 = Vertex(name = 'V_1723', 
	 particles = [P.se1, P.se2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1729}) 
 
 
V_1724 = Vertex(name = 'V_1724', 
	 particles = [P.se1, P.se3c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1730}) 
 
 
V_1725 = Vertex(name = 'V_1725', 
	 particles = [P.se1, P.se4c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1731}) 
 
 
V_1726 = Vertex(name = 'V_1726', 
	 particles = [P.se1, P.se5c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1732}) 
 
 
V_1727 = Vertex(name = 'V_1727', 
	 particles = [P.se1, P.se6c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1733}) 
 
 
V_1728 = Vertex(name = 'V_1728', 
	 particles = [P.se2, P.se1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1734}) 
 
 
V_1729 = Vertex(name = 'V_1729', 
	 particles = [P.se2, P.se2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1735}) 
 
 
V_1730 = Vertex(name = 'V_1730', 
	 particles = [P.se2, P.se3c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1736}) 
 
 
V_1731 = Vertex(name = 'V_1731', 
	 particles = [P.se2, P.se4c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1737}) 
 
 
V_1732 = Vertex(name = 'V_1732', 
	 particles = [P.se2, P.se5c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1738}) 
 
 
V_1733 = Vertex(name = 'V_1733', 
	 particles = [P.se2, P.se6c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1739}) 
 
 
V_1734 = Vertex(name = 'V_1734', 
	 particles = [P.se3, P.se1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1740}) 
 
 
V_1735 = Vertex(name = 'V_1735', 
	 particles = [P.se3, P.se2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1741}) 
 
 
V_1736 = Vertex(name = 'V_1736', 
	 particles = [P.se3, P.se3c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1742}) 
 
 
V_1737 = Vertex(name = 'V_1737', 
	 particles = [P.se3, P.se4c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1743}) 
 
 
V_1738 = Vertex(name = 'V_1738', 
	 particles = [P.se3, P.se5c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1744}) 
 
 
V_1739 = Vertex(name = 'V_1739', 
	 particles = [P.se3, P.se6c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1745}) 
 
 
V_1740 = Vertex(name = 'V_1740', 
	 particles = [P.se4, P.se1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1746}) 
 
 
V_1741 = Vertex(name = 'V_1741', 
	 particles = [P.se4, P.se2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1747}) 
 
 
V_1742 = Vertex(name = 'V_1742', 
	 particles = [P.se4, P.se3c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1748}) 
 
 
V_1743 = Vertex(name = 'V_1743', 
	 particles = [P.se4, P.se4c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1749}) 
 
 
V_1744 = Vertex(name = 'V_1744', 
	 particles = [P.se4, P.se5c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1750}) 
 
 
V_1745 = Vertex(name = 'V_1745', 
	 particles = [P.se4, P.se6c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1751}) 
 
 
V_1746 = Vertex(name = 'V_1746', 
	 particles = [P.se5, P.se1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1752}) 
 
 
V_1747 = Vertex(name = 'V_1747', 
	 particles = [P.se5, P.se2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1753}) 
 
 
V_1748 = Vertex(name = 'V_1748', 
	 particles = [P.se5, P.se3c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1754}) 
 
 
V_1749 = Vertex(name = 'V_1749', 
	 particles = [P.se5, P.se4c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1755}) 
 
 
V_1750 = Vertex(name = 'V_1750', 
	 particles = [P.se5, P.se5c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1756}) 
 
 
V_1751 = Vertex(name = 'V_1751', 
	 particles = [P.se5, P.se6c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1757}) 
 
 
V_1752 = Vertex(name = 'V_1752', 
	 particles = [P.se6, P.se1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1758}) 
 
 
V_1753 = Vertex(name = 'V_1753', 
	 particles = [P.se6, P.se2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1759}) 
 
 
V_1754 = Vertex(name = 'V_1754', 
	 particles = [P.se6, P.se3c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1760}) 
 
 
V_1755 = Vertex(name = 'V_1755', 
	 particles = [P.se6, P.se4c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1761}) 
 
 
V_1756 = Vertex(name = 'V_1756', 
	 particles = [P.se6, P.se5c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1762}) 
 
 
V_1757 = Vertex(name = 'V_1757', 
	 particles = [P.se6, P.se6c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1763}) 
 
 
V_1758 = Vertex(name = 'V_1758', 
	 particles = [P.se1, P.se1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1764}) 
 
 
V_1759 = Vertex(name = 'V_1759', 
	 particles = [P.se1, P.se2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1765}) 
 
 
V_1760 = Vertex(name = 'V_1760', 
	 particles = [P.se1, P.se3c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1766}) 
 
 
V_1761 = Vertex(name = 'V_1761', 
	 particles = [P.se1, P.se4c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1767}) 
 
 
V_1762 = Vertex(name = 'V_1762', 
	 particles = [P.se1, P.se5c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1768}) 
 
 
V_1763 = Vertex(name = 'V_1763', 
	 particles = [P.se1, P.se6c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1769}) 
 
 
V_1764 = Vertex(name = 'V_1764', 
	 particles = [P.se2, P.se1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1770}) 
 
 
V_1765 = Vertex(name = 'V_1765', 
	 particles = [P.se2, P.se2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1771}) 
 
 
V_1766 = Vertex(name = 'V_1766', 
	 particles = [P.se2, P.se3c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1772}) 
 
 
V_1767 = Vertex(name = 'V_1767', 
	 particles = [P.se2, P.se4c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1773}) 
 
 
V_1768 = Vertex(name = 'V_1768', 
	 particles = [P.se2, P.se5c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1774}) 
 
 
V_1769 = Vertex(name = 'V_1769', 
	 particles = [P.se2, P.se6c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1775}) 
 
 
V_1770 = Vertex(name = 'V_1770', 
	 particles = [P.se3, P.se1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1776}) 
 
 
V_1771 = Vertex(name = 'V_1771', 
	 particles = [P.se3, P.se2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1777}) 
 
 
V_1772 = Vertex(name = 'V_1772', 
	 particles = [P.se3, P.se3c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1778}) 
 
 
V_1773 = Vertex(name = 'V_1773', 
	 particles = [P.se3, P.se4c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1779}) 
 
 
V_1774 = Vertex(name = 'V_1774', 
	 particles = [P.se3, P.se5c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1780}) 
 
 
V_1775 = Vertex(name = 'V_1775', 
	 particles = [P.se3, P.se6c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1781}) 
 
 
V_1776 = Vertex(name = 'V_1776', 
	 particles = [P.se4, P.se1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1782}) 
 
 
V_1777 = Vertex(name = 'V_1777', 
	 particles = [P.se4, P.se2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1783}) 
 
 
V_1778 = Vertex(name = 'V_1778', 
	 particles = [P.se4, P.se3c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1784}) 
 
 
V_1779 = Vertex(name = 'V_1779', 
	 particles = [P.se4, P.se4c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1785}) 
 
 
V_1780 = Vertex(name = 'V_1780', 
	 particles = [P.se4, P.se5c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1786}) 
 
 
V_1781 = Vertex(name = 'V_1781', 
	 particles = [P.se4, P.se6c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1787}) 
 
 
V_1782 = Vertex(name = 'V_1782', 
	 particles = [P.se5, P.se1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1788}) 
 
 
V_1783 = Vertex(name = 'V_1783', 
	 particles = [P.se5, P.se2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1789}) 
 
 
V_1784 = Vertex(name = 'V_1784', 
	 particles = [P.se5, P.se3c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1790}) 
 
 
V_1785 = Vertex(name = 'V_1785', 
	 particles = [P.se5, P.se4c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1791}) 
 
 
V_1786 = Vertex(name = 'V_1786', 
	 particles = [P.se5, P.se5c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1792}) 
 
 
V_1787 = Vertex(name = 'V_1787', 
	 particles = [P.se5, P.se6c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1793}) 
 
 
V_1788 = Vertex(name = 'V_1788', 
	 particles = [P.se6, P.se1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1794}) 
 
 
V_1789 = Vertex(name = 'V_1789', 
	 particles = [P.se6, P.se2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1795}) 
 
 
V_1790 = Vertex(name = 'V_1790', 
	 particles = [P.se6, P.se3c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1796}) 
 
 
V_1791 = Vertex(name = 'V_1791', 
	 particles = [P.se6, P.se4c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1797}) 
 
 
V_1792 = Vertex(name = 'V_1792', 
	 particles = [P.se6, P.se5c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1798}) 
 
 
V_1793 = Vertex(name = 'V_1793', 
	 particles = [P.se6, P.se6c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1799}) 
 
 
V_1794 = Vertex(name = 'V_1794', 
	 particles = [P.se1, P.se1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1800}) 
 
 
V_1795 = Vertex(name = 'V_1795', 
	 particles = [P.se1, P.se2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1801}) 
 
 
V_1796 = Vertex(name = 'V_1796', 
	 particles = [P.se1, P.se3c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1802}) 
 
 
V_1797 = Vertex(name = 'V_1797', 
	 particles = [P.se1, P.se4c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1803}) 
 
 
V_1798 = Vertex(name = 'V_1798', 
	 particles = [P.se1, P.se5c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1804}) 
 
 
V_1799 = Vertex(name = 'V_1799', 
	 particles = [P.se1, P.se6c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1805}) 
 
 
V_1800 = Vertex(name = 'V_1800', 
	 particles = [P.se2, P.se1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1806}) 
 
 
V_1801 = Vertex(name = 'V_1801', 
	 particles = [P.se2, P.se2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1807}) 
 
 
V_1802 = Vertex(name = 'V_1802', 
	 particles = [P.se2, P.se3c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1808}) 
 
 
V_1803 = Vertex(name = 'V_1803', 
	 particles = [P.se2, P.se4c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1809}) 
 
 
V_1804 = Vertex(name = 'V_1804', 
	 particles = [P.se2, P.se5c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1810}) 
 
 
V_1805 = Vertex(name = 'V_1805', 
	 particles = [P.se2, P.se6c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1811}) 
 
 
V_1806 = Vertex(name = 'V_1806', 
	 particles = [P.se3, P.se1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1812}) 
 
 
V_1807 = Vertex(name = 'V_1807', 
	 particles = [P.se3, P.se2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1813}) 
 
 
V_1808 = Vertex(name = 'V_1808', 
	 particles = [P.se3, P.se3c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1814}) 
 
 
V_1809 = Vertex(name = 'V_1809', 
	 particles = [P.se3, P.se4c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1815}) 
 
 
V_1810 = Vertex(name = 'V_1810', 
	 particles = [P.se3, P.se5c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1816}) 
 
 
V_1811 = Vertex(name = 'V_1811', 
	 particles = [P.se3, P.se6c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1817}) 
 
 
V_1812 = Vertex(name = 'V_1812', 
	 particles = [P.se4, P.se1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1818}) 
 
 
V_1813 = Vertex(name = 'V_1813', 
	 particles = [P.se4, P.se2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1819}) 
 
 
V_1814 = Vertex(name = 'V_1814', 
	 particles = [P.se4, P.se3c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1820}) 
 
 
V_1815 = Vertex(name = 'V_1815', 
	 particles = [P.se4, P.se4c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1821}) 
 
 
V_1816 = Vertex(name = 'V_1816', 
	 particles = [P.se4, P.se5c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1822}) 
 
 
V_1817 = Vertex(name = 'V_1817', 
	 particles = [P.se4, P.se6c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1823}) 
 
 
V_1818 = Vertex(name = 'V_1818', 
	 particles = [P.se5, P.se1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1824}) 
 
 
V_1819 = Vertex(name = 'V_1819', 
	 particles = [P.se5, P.se2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1825}) 
 
 
V_1820 = Vertex(name = 'V_1820', 
	 particles = [P.se5, P.se3c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1826}) 
 
 
V_1821 = Vertex(name = 'V_1821', 
	 particles = [P.se5, P.se4c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1827}) 
 
 
V_1822 = Vertex(name = 'V_1822', 
	 particles = [P.se5, P.se5c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1828}) 
 
 
V_1823 = Vertex(name = 'V_1823', 
	 particles = [P.se5, P.se6c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1829}) 
 
 
V_1824 = Vertex(name = 'V_1824', 
	 particles = [P.se6, P.se1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1830}) 
 
 
V_1825 = Vertex(name = 'V_1825', 
	 particles = [P.se6, P.se2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1831}) 
 
 
V_1826 = Vertex(name = 'V_1826', 
	 particles = [P.se6, P.se3c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1832}) 
 
 
V_1827 = Vertex(name = 'V_1827', 
	 particles = [P.se6, P.se4c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1833}) 
 
 
V_1828 = Vertex(name = 'V_1828', 
	 particles = [P.se6, P.se5c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1834}) 
 
 
V_1829 = Vertex(name = 'V_1829', 
	 particles = [P.se6, P.se6c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1835}) 
 
 
V_1830 = Vertex(name = 'V_1830', 
	 particles = [P.se1, P.sv1c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1836}) 
 
 
V_1831 = Vertex(name = 'V_1831', 
	 particles = [P.se1, P.sv2c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1837}) 
 
 
V_1832 = Vertex(name = 'V_1832', 
	 particles = [P.se1, P.sv3c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1838}) 
 
 
V_1833 = Vertex(name = 'V_1833', 
	 particles = [P.se2, P.sv1c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1839}) 
 
 
V_1834 = Vertex(name = 'V_1834', 
	 particles = [P.se2, P.sv2c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1840}) 
 
 
V_1835 = Vertex(name = 'V_1835', 
	 particles = [P.se2, P.sv3c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1841}) 
 
 
V_1836 = Vertex(name = 'V_1836', 
	 particles = [P.se3, P.sv1c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1842}) 
 
 
V_1837 = Vertex(name = 'V_1837', 
	 particles = [P.se3, P.sv2c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1843}) 
 
 
V_1838 = Vertex(name = 'V_1838', 
	 particles = [P.se3, P.sv3c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1844}) 
 
 
V_1839 = Vertex(name = 'V_1839', 
	 particles = [P.se4, P.sv1c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1845}) 
 
 
V_1840 = Vertex(name = 'V_1840', 
	 particles = [P.se4, P.sv2c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1846}) 
 
 
V_1841 = Vertex(name = 'V_1841', 
	 particles = [P.se4, P.sv3c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1847}) 
 
 
V_1842 = Vertex(name = 'V_1842', 
	 particles = [P.se5, P.sv1c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1848}) 
 
 
V_1843 = Vertex(name = 'V_1843', 
	 particles = [P.se5, P.sv2c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1849}) 
 
 
V_1844 = Vertex(name = 'V_1844', 
	 particles = [P.se5, P.sv3c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1850}) 
 
 
V_1845 = Vertex(name = 'V_1845', 
	 particles = [P.se6, P.sv1c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1851}) 
 
 
V_1846 = Vertex(name = 'V_1846', 
	 particles = [P.se6, P.sv2c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1852}) 
 
 
V_1847 = Vertex(name = 'V_1847', 
	 particles = [P.se6, P.sv3c, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1853}) 
 
 
V_1848 = Vertex(name = 'V_1848', 
	 particles = [P.se1, P.se1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1854}) 
 
 
V_1849 = Vertex(name = 'V_1849', 
	 particles = [P.se1, P.se2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1855}) 
 
 
V_1850 = Vertex(name = 'V_1850', 
	 particles = [P.se1, P.se3c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1856}) 
 
 
V_1851 = Vertex(name = 'V_1851', 
	 particles = [P.se1, P.se4c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1857}) 
 
 
V_1852 = Vertex(name = 'V_1852', 
	 particles = [P.se1, P.se5c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1858}) 
 
 
V_1853 = Vertex(name = 'V_1853', 
	 particles = [P.se1, P.se6c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1859}) 
 
 
V_1854 = Vertex(name = 'V_1854', 
	 particles = [P.se2, P.se1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1860}) 
 
 
V_1855 = Vertex(name = 'V_1855', 
	 particles = [P.se2, P.se2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1861}) 
 
 
V_1856 = Vertex(name = 'V_1856', 
	 particles = [P.se2, P.se3c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1862}) 
 
 
V_1857 = Vertex(name = 'V_1857', 
	 particles = [P.se2, P.se4c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1863}) 
 
 
V_1858 = Vertex(name = 'V_1858', 
	 particles = [P.se2, P.se5c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1864}) 
 
 
V_1859 = Vertex(name = 'V_1859', 
	 particles = [P.se2, P.se6c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1865}) 
 
 
V_1860 = Vertex(name = 'V_1860', 
	 particles = [P.se3, P.se1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1866}) 
 
 
V_1861 = Vertex(name = 'V_1861', 
	 particles = [P.se3, P.se2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1867}) 
 
 
V_1862 = Vertex(name = 'V_1862', 
	 particles = [P.se3, P.se3c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1868}) 
 
 
V_1863 = Vertex(name = 'V_1863', 
	 particles = [P.se3, P.se4c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1869}) 
 
 
V_1864 = Vertex(name = 'V_1864', 
	 particles = [P.se3, P.se5c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1870}) 
 
 
V_1865 = Vertex(name = 'V_1865', 
	 particles = [P.se3, P.se6c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1871}) 
 
 
V_1866 = Vertex(name = 'V_1866', 
	 particles = [P.se4, P.se1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1872}) 
 
 
V_1867 = Vertex(name = 'V_1867', 
	 particles = [P.se4, P.se2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1873}) 
 
 
V_1868 = Vertex(name = 'V_1868', 
	 particles = [P.se4, P.se3c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1874}) 
 
 
V_1869 = Vertex(name = 'V_1869', 
	 particles = [P.se4, P.se4c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1875}) 
 
 
V_1870 = Vertex(name = 'V_1870', 
	 particles = [P.se4, P.se5c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1876}) 
 
 
V_1871 = Vertex(name = 'V_1871', 
	 particles = [P.se4, P.se6c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1877}) 
 
 
V_1872 = Vertex(name = 'V_1872', 
	 particles = [P.se5, P.se1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1878}) 
 
 
V_1873 = Vertex(name = 'V_1873', 
	 particles = [P.se5, P.se2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1879}) 
 
 
V_1874 = Vertex(name = 'V_1874', 
	 particles = [P.se5, P.se3c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1880}) 
 
 
V_1875 = Vertex(name = 'V_1875', 
	 particles = [P.se5, P.se4c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1881}) 
 
 
V_1876 = Vertex(name = 'V_1876', 
	 particles = [P.se5, P.se5c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1882}) 
 
 
V_1877 = Vertex(name = 'V_1877', 
	 particles = [P.se5, P.se6c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1883}) 
 
 
V_1878 = Vertex(name = 'V_1878', 
	 particles = [P.se6, P.se1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1884}) 
 
 
V_1879 = Vertex(name = 'V_1879', 
	 particles = [P.se6, P.se2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1885}) 
 
 
V_1880 = Vertex(name = 'V_1880', 
	 particles = [P.se6, P.se3c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1886}) 
 
 
V_1881 = Vertex(name = 'V_1881', 
	 particles = [P.se6, P.se4c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1887}) 
 
 
V_1882 = Vertex(name = 'V_1882', 
	 particles = [P.se6, P.se5c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1888}) 
 
 
V_1883 = Vertex(name = 'V_1883', 
	 particles = [P.se6, P.se6c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1889}) 
 
 
V_1884 = Vertex(name = 'V_1884', 
	 particles = [P.se1, P.sv1c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1890}) 
 
 
V_1885 = Vertex(name = 'V_1885', 
	 particles = [P.se1, P.sv2c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1891}) 
 
 
V_1886 = Vertex(name = 'V_1886', 
	 particles = [P.se1, P.sv3c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1892}) 
 
 
V_1887 = Vertex(name = 'V_1887', 
	 particles = [P.se2, P.sv1c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1893}) 
 
 
V_1888 = Vertex(name = 'V_1888', 
	 particles = [P.se2, P.sv2c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1894}) 
 
 
V_1889 = Vertex(name = 'V_1889', 
	 particles = [P.se2, P.sv3c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1895}) 
 
 
V_1890 = Vertex(name = 'V_1890', 
	 particles = [P.se3, P.sv1c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1896}) 
 
 
V_1891 = Vertex(name = 'V_1891', 
	 particles = [P.se3, P.sv2c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1897}) 
 
 
V_1892 = Vertex(name = 'V_1892', 
	 particles = [P.se3, P.sv3c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1898}) 
 
 
V_1893 = Vertex(name = 'V_1893', 
	 particles = [P.se4, P.sv1c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1899}) 
 
 
V_1894 = Vertex(name = 'V_1894', 
	 particles = [P.se4, P.sv2c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1900}) 
 
 
V_1895 = Vertex(name = 'V_1895', 
	 particles = [P.se4, P.sv3c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1901}) 
 
 
V_1896 = Vertex(name = 'V_1896', 
	 particles = [P.se5, P.sv1c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1902}) 
 
 
V_1897 = Vertex(name = 'V_1897', 
	 particles = [P.se5, P.sv2c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1903}) 
 
 
V_1898 = Vertex(name = 'V_1898', 
	 particles = [P.se5, P.sv3c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1904}) 
 
 
V_1899 = Vertex(name = 'V_1899', 
	 particles = [P.se6, P.sv1c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1905}) 
 
 
V_1900 = Vertex(name = 'V_1900', 
	 particles = [P.se6, P.sv2c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1906}) 
 
 
V_1901 = Vertex(name = 'V_1901', 
	 particles = [P.se6, P.sv3c, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1907}) 
 
 
V_1902 = Vertex(name = 'V_1902', 
	 particles = [P.su1, P.su1c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1908,(1,0):C.GC_1909}) 
 
 
V_1903 = Vertex(name = 'V_1903', 
	 particles = [P.su2, P.su2c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1910,(1,0):C.GC_1911}) 
 
 
V_1904 = Vertex(name = 'V_1904', 
	 particles = [P.su3, P.su3c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1912,(1,0):C.GC_1913}) 
 
 
V_1905 = Vertex(name = 'V_1905', 
	 particles = [P.su4, P.su4c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1914,(1,0):C.GC_1915}) 
 
 
V_1906 = Vertex(name = 'V_1906', 
	 particles = [P.su5, P.su5c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1916,(1,0):C.GC_1917}) 
 
 
V_1907 = Vertex(name = 'V_1907', 
	 particles = [P.su6, P.su6c, P.g, P.g], 
	 color = ['T(3,-1,2)*T(4,1,-1)', 'T(3,1,-1)*T(4,-1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1918,(1,0):C.GC_1919}) 
 
 
V_1908 = Vertex(name = 'V_1908', 
	 particles = [P.su1, P.su1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1920}) 
 
 
V_1909 = Vertex(name = 'V_1909', 
	 particles = [P.su1, P.su2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1921}) 
 
 
V_1910 = Vertex(name = 'V_1910', 
	 particles = [P.su1, P.su3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1922}) 
 
 
V_1911 = Vertex(name = 'V_1911', 
	 particles = [P.su1, P.su4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1923}) 
 
 
V_1912 = Vertex(name = 'V_1912', 
	 particles = [P.su1, P.su5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1924}) 
 
 
V_1913 = Vertex(name = 'V_1913', 
	 particles = [P.su1, P.su6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1925}) 
 
 
V_1914 = Vertex(name = 'V_1914', 
	 particles = [P.su2, P.su1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1926}) 
 
 
V_1915 = Vertex(name = 'V_1915', 
	 particles = [P.su2, P.su2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1927}) 
 
 
V_1916 = Vertex(name = 'V_1916', 
	 particles = [P.su2, P.su3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1928}) 
 
 
V_1917 = Vertex(name = 'V_1917', 
	 particles = [P.su2, P.su4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1929}) 
 
 
V_1918 = Vertex(name = 'V_1918', 
	 particles = [P.su2, P.su5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1930}) 
 
 
V_1919 = Vertex(name = 'V_1919', 
	 particles = [P.su2, P.su6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1931}) 
 
 
V_1920 = Vertex(name = 'V_1920', 
	 particles = [P.su3, P.su1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1932}) 
 
 
V_1921 = Vertex(name = 'V_1921', 
	 particles = [P.su3, P.su2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1933}) 
 
 
V_1922 = Vertex(name = 'V_1922', 
	 particles = [P.su3, P.su3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1934}) 
 
 
V_1923 = Vertex(name = 'V_1923', 
	 particles = [P.su3, P.su4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1935}) 
 
 
V_1924 = Vertex(name = 'V_1924', 
	 particles = [P.su3, P.su5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1936}) 
 
 
V_1925 = Vertex(name = 'V_1925', 
	 particles = [P.su3, P.su6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1937}) 
 
 
V_1926 = Vertex(name = 'V_1926', 
	 particles = [P.su4, P.su1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1938}) 
 
 
V_1927 = Vertex(name = 'V_1927', 
	 particles = [P.su4, P.su2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1939}) 
 
 
V_1928 = Vertex(name = 'V_1928', 
	 particles = [P.su4, P.su3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1940}) 
 
 
V_1929 = Vertex(name = 'V_1929', 
	 particles = [P.su4, P.su4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1941}) 
 
 
V_1930 = Vertex(name = 'V_1930', 
	 particles = [P.su4, P.su5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1942}) 
 
 
V_1931 = Vertex(name = 'V_1931', 
	 particles = [P.su4, P.su6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1943}) 
 
 
V_1932 = Vertex(name = 'V_1932', 
	 particles = [P.su5, P.su1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1944}) 
 
 
V_1933 = Vertex(name = 'V_1933', 
	 particles = [P.su5, P.su2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1945}) 
 
 
V_1934 = Vertex(name = 'V_1934', 
	 particles = [P.su5, P.su3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1946}) 
 
 
V_1935 = Vertex(name = 'V_1935', 
	 particles = [P.su5, P.su4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1947}) 
 
 
V_1936 = Vertex(name = 'V_1936', 
	 particles = [P.su5, P.su5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1948}) 
 
 
V_1937 = Vertex(name = 'V_1937', 
	 particles = [P.su5, P.su6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1949}) 
 
 
V_1938 = Vertex(name = 'V_1938', 
	 particles = [P.su6, P.su1c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1950}) 
 
 
V_1939 = Vertex(name = 'V_1939', 
	 particles = [P.su6, P.su2c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1951}) 
 
 
V_1940 = Vertex(name = 'V_1940', 
	 particles = [P.su6, P.su3c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1952}) 
 
 
V_1941 = Vertex(name = 'V_1941', 
	 particles = [P.su6, P.su4c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1953}) 
 
 
V_1942 = Vertex(name = 'V_1942', 
	 particles = [P.su6, P.su5c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1954}) 
 
 
V_1943 = Vertex(name = 'V_1943', 
	 particles = [P.su6, P.su6c, P.g, P.A], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1955}) 
 
 
V_1944 = Vertex(name = 'V_1944', 
	 particles = [P.su1, P.sd1c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1956}) 
 
 
V_1945 = Vertex(name = 'V_1945', 
	 particles = [P.su1, P.sd2c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1957}) 
 
 
V_1946 = Vertex(name = 'V_1946', 
	 particles = [P.su1, P.sd3c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1958}) 
 
 
V_1947 = Vertex(name = 'V_1947', 
	 particles = [P.su1, P.sd4c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1959}) 
 
 
V_1948 = Vertex(name = 'V_1948', 
	 particles = [P.su1, P.sd5c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1960}) 
 
 
V_1949 = Vertex(name = 'V_1949', 
	 particles = [P.su1, P.sd6c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1961}) 
 
 
V_1950 = Vertex(name = 'V_1950', 
	 particles = [P.su2, P.sd1c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1962}) 
 
 
V_1951 = Vertex(name = 'V_1951', 
	 particles = [P.su2, P.sd2c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1963}) 
 
 
V_1952 = Vertex(name = 'V_1952', 
	 particles = [P.su2, P.sd3c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1964}) 
 
 
V_1953 = Vertex(name = 'V_1953', 
	 particles = [P.su2, P.sd4c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1965}) 
 
 
V_1954 = Vertex(name = 'V_1954', 
	 particles = [P.su2, P.sd5c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1966}) 
 
 
V_1955 = Vertex(name = 'V_1955', 
	 particles = [P.su2, P.sd6c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1967}) 
 
 
V_1956 = Vertex(name = 'V_1956', 
	 particles = [P.su3, P.sd1c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1968}) 
 
 
V_1957 = Vertex(name = 'V_1957', 
	 particles = [P.su3, P.sd2c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1969}) 
 
 
V_1958 = Vertex(name = 'V_1958', 
	 particles = [P.su3, P.sd3c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1970}) 
 
 
V_1959 = Vertex(name = 'V_1959', 
	 particles = [P.su3, P.sd4c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1971}) 
 
 
V_1960 = Vertex(name = 'V_1960', 
	 particles = [P.su3, P.sd5c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1972}) 
 
 
V_1961 = Vertex(name = 'V_1961', 
	 particles = [P.su3, P.sd6c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1973}) 
 
 
V_1962 = Vertex(name = 'V_1962', 
	 particles = [P.su4, P.sd1c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1974}) 
 
 
V_1963 = Vertex(name = 'V_1963', 
	 particles = [P.su4, P.sd2c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1975}) 
 
 
V_1964 = Vertex(name = 'V_1964', 
	 particles = [P.su4, P.sd3c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1976}) 
 
 
V_1965 = Vertex(name = 'V_1965', 
	 particles = [P.su4, P.sd4c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1977}) 
 
 
V_1966 = Vertex(name = 'V_1966', 
	 particles = [P.su4, P.sd5c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1978}) 
 
 
V_1967 = Vertex(name = 'V_1967', 
	 particles = [P.su4, P.sd6c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1979}) 
 
 
V_1968 = Vertex(name = 'V_1968', 
	 particles = [P.su5, P.sd1c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1980}) 
 
 
V_1969 = Vertex(name = 'V_1969', 
	 particles = [P.su5, P.sd2c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1981}) 
 
 
V_1970 = Vertex(name = 'V_1970', 
	 particles = [P.su5, P.sd3c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1982}) 
 
 
V_1971 = Vertex(name = 'V_1971', 
	 particles = [P.su5, P.sd4c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1983}) 
 
 
V_1972 = Vertex(name = 'V_1972', 
	 particles = [P.su5, P.sd5c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1984}) 
 
 
V_1973 = Vertex(name = 'V_1973', 
	 particles = [P.su5, P.sd6c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1985}) 
 
 
V_1974 = Vertex(name = 'V_1974', 
	 particles = [P.su6, P.sd1c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1986}) 
 
 
V_1975 = Vertex(name = 'V_1975', 
	 particles = [P.su6, P.sd2c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1987}) 
 
 
V_1976 = Vertex(name = 'V_1976', 
	 particles = [P.su6, P.sd3c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1988}) 
 
 
V_1977 = Vertex(name = 'V_1977', 
	 particles = [P.su6, P.sd4c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1989}) 
 
 
V_1978 = Vertex(name = 'V_1978', 
	 particles = [P.su6, P.sd5c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1990}) 
 
 
V_1979 = Vertex(name = 'V_1979', 
	 particles = [P.su6, P.sd6c, P.g, P.Wm], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1991}) 
 
 
V_1980 = Vertex(name = 'V_1980', 
	 particles = [P.su1, P.su1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1992}) 
 
 
V_1981 = Vertex(name = 'V_1981', 
	 particles = [P.su1, P.su2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1993}) 
 
 
V_1982 = Vertex(name = 'V_1982', 
	 particles = [P.su1, P.su3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1994}) 
 
 
V_1983 = Vertex(name = 'V_1983', 
	 particles = [P.su1, P.su4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1995}) 
 
 
V_1984 = Vertex(name = 'V_1984', 
	 particles = [P.su1, P.su5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1996}) 
 
 
V_1985 = Vertex(name = 'V_1985', 
	 particles = [P.su1, P.su6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1997}) 
 
 
V_1986 = Vertex(name = 'V_1986', 
	 particles = [P.su2, P.su1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1998}) 
 
 
V_1987 = Vertex(name = 'V_1987', 
	 particles = [P.su2, P.su2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_1999}) 
 
 
V_1988 = Vertex(name = 'V_1988', 
	 particles = [P.su2, P.su3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2000}) 
 
 
V_1989 = Vertex(name = 'V_1989', 
	 particles = [P.su2, P.su4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2001}) 
 
 
V_1990 = Vertex(name = 'V_1990', 
	 particles = [P.su2, P.su5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2002}) 
 
 
V_1991 = Vertex(name = 'V_1991', 
	 particles = [P.su2, P.su6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2003}) 
 
 
V_1992 = Vertex(name = 'V_1992', 
	 particles = [P.su3, P.su1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2004}) 
 
 
V_1993 = Vertex(name = 'V_1993', 
	 particles = [P.su3, P.su2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2005}) 
 
 
V_1994 = Vertex(name = 'V_1994', 
	 particles = [P.su3, P.su3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2006}) 
 
 
V_1995 = Vertex(name = 'V_1995', 
	 particles = [P.su3, P.su4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2007}) 
 
 
V_1996 = Vertex(name = 'V_1996', 
	 particles = [P.su3, P.su5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2008}) 
 
 
V_1997 = Vertex(name = 'V_1997', 
	 particles = [P.su3, P.su6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2009}) 
 
 
V_1998 = Vertex(name = 'V_1998', 
	 particles = [P.su4, P.su1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2010}) 
 
 
V_1999 = Vertex(name = 'V_1999', 
	 particles = [P.su4, P.su2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2011}) 
 
 
V_2000 = Vertex(name = 'V_2000', 
	 particles = [P.su4, P.su3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2012}) 
 
 
V_2001 = Vertex(name = 'V_2001', 
	 particles = [P.su4, P.su4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2013}) 
 
 
V_2002 = Vertex(name = 'V_2002', 
	 particles = [P.su4, P.su5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2014}) 
 
 
V_2003 = Vertex(name = 'V_2003', 
	 particles = [P.su4, P.su6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2015}) 
 
 
V_2004 = Vertex(name = 'V_2004', 
	 particles = [P.su5, P.su1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2016}) 
 
 
V_2005 = Vertex(name = 'V_2005', 
	 particles = [P.su5, P.su2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2017}) 
 
 
V_2006 = Vertex(name = 'V_2006', 
	 particles = [P.su5, P.su3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2018}) 
 
 
V_2007 = Vertex(name = 'V_2007', 
	 particles = [P.su5, P.su4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2019}) 
 
 
V_2008 = Vertex(name = 'V_2008', 
	 particles = [P.su5, P.su5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2020}) 
 
 
V_2009 = Vertex(name = 'V_2009', 
	 particles = [P.su5, P.su6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2021}) 
 
 
V_2010 = Vertex(name = 'V_2010', 
	 particles = [P.su6, P.su1c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2022}) 
 
 
V_2011 = Vertex(name = 'V_2011', 
	 particles = [P.su6, P.su2c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2023}) 
 
 
V_2012 = Vertex(name = 'V_2012', 
	 particles = [P.su6, P.su3c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2024}) 
 
 
V_2013 = Vertex(name = 'V_2013', 
	 particles = [P.su6, P.su4c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2025}) 
 
 
V_2014 = Vertex(name = 'V_2014', 
	 particles = [P.su6, P.su5c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2026}) 
 
 
V_2015 = Vertex(name = 'V_2015', 
	 particles = [P.su6, P.su6c, P.g, P.Z], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2027}) 
 
 
V_2016 = Vertex(name = 'V_2016', 
	 particles = [P.su1, P.su1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2028}) 
 
 
V_2017 = Vertex(name = 'V_2017', 
	 particles = [P.su1, P.su2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2029}) 
 
 
V_2018 = Vertex(name = 'V_2018', 
	 particles = [P.su1, P.su3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2030}) 
 
 
V_2019 = Vertex(name = 'V_2019', 
	 particles = [P.su1, P.su4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2031}) 
 
 
V_2020 = Vertex(name = 'V_2020', 
	 particles = [P.su1, P.su5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2032}) 
 
 
V_2021 = Vertex(name = 'V_2021', 
	 particles = [P.su1, P.su6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2033}) 
 
 
V_2022 = Vertex(name = 'V_2022', 
	 particles = [P.su2, P.su1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2034}) 
 
 
V_2023 = Vertex(name = 'V_2023', 
	 particles = [P.su2, P.su2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2035}) 
 
 
V_2024 = Vertex(name = 'V_2024', 
	 particles = [P.su2, P.su3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2036}) 
 
 
V_2025 = Vertex(name = 'V_2025', 
	 particles = [P.su2, P.su4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2037}) 
 
 
V_2026 = Vertex(name = 'V_2026', 
	 particles = [P.su2, P.su5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2038}) 
 
 
V_2027 = Vertex(name = 'V_2027', 
	 particles = [P.su2, P.su6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2039}) 
 
 
V_2028 = Vertex(name = 'V_2028', 
	 particles = [P.su3, P.su1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2040}) 
 
 
V_2029 = Vertex(name = 'V_2029', 
	 particles = [P.su3, P.su2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2041}) 
 
 
V_2030 = Vertex(name = 'V_2030', 
	 particles = [P.su3, P.su3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2042}) 
 
 
V_2031 = Vertex(name = 'V_2031', 
	 particles = [P.su3, P.su4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2043}) 
 
 
V_2032 = Vertex(name = 'V_2032', 
	 particles = [P.su3, P.su5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2044}) 
 
 
V_2033 = Vertex(name = 'V_2033', 
	 particles = [P.su3, P.su6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2045}) 
 
 
V_2034 = Vertex(name = 'V_2034', 
	 particles = [P.su4, P.su1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2046}) 
 
 
V_2035 = Vertex(name = 'V_2035', 
	 particles = [P.su4, P.su2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2047}) 
 
 
V_2036 = Vertex(name = 'V_2036', 
	 particles = [P.su4, P.su3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2048}) 
 
 
V_2037 = Vertex(name = 'V_2037', 
	 particles = [P.su4, P.su4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2049}) 
 
 
V_2038 = Vertex(name = 'V_2038', 
	 particles = [P.su4, P.su5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2050}) 
 
 
V_2039 = Vertex(name = 'V_2039', 
	 particles = [P.su4, P.su6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2051}) 
 
 
V_2040 = Vertex(name = 'V_2040', 
	 particles = [P.su5, P.su1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2052}) 
 
 
V_2041 = Vertex(name = 'V_2041', 
	 particles = [P.su5, P.su2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2053}) 
 
 
V_2042 = Vertex(name = 'V_2042', 
	 particles = [P.su5, P.su3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2054}) 
 
 
V_2043 = Vertex(name = 'V_2043', 
	 particles = [P.su5, P.su4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2055}) 
 
 
V_2044 = Vertex(name = 'V_2044', 
	 particles = [P.su5, P.su5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2056}) 
 
 
V_2045 = Vertex(name = 'V_2045', 
	 particles = [P.su5, P.su6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2057}) 
 
 
V_2046 = Vertex(name = 'V_2046', 
	 particles = [P.su6, P.su1c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2058}) 
 
 
V_2047 = Vertex(name = 'V_2047', 
	 particles = [P.su6, P.su2c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2059}) 
 
 
V_2048 = Vertex(name = 'V_2048', 
	 particles = [P.su6, P.su3c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2060}) 
 
 
V_2049 = Vertex(name = 'V_2049', 
	 particles = [P.su6, P.su4c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2061}) 
 
 
V_2050 = Vertex(name = 'V_2050', 
	 particles = [P.su6, P.su5c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2062}) 
 
 
V_2051 = Vertex(name = 'V_2051', 
	 particles = [P.su6, P.su6c, P.g, P.Zp], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2063}) 
 
 
V_2052 = Vertex(name = 'V_2052', 
	 particles = [P.su1, P.su1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2064}) 
 
 
V_2053 = Vertex(name = 'V_2053', 
	 particles = [P.su1, P.su2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2065}) 
 
 
V_2054 = Vertex(name = 'V_2054', 
	 particles = [P.su1, P.su3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2066}) 
 
 
V_2055 = Vertex(name = 'V_2055', 
	 particles = [P.su1, P.su4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2067}) 
 
 
V_2056 = Vertex(name = 'V_2056', 
	 particles = [P.su1, P.su5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2068}) 
 
 
V_2057 = Vertex(name = 'V_2057', 
	 particles = [P.su1, P.su6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2069}) 
 
 
V_2058 = Vertex(name = 'V_2058', 
	 particles = [P.su2, P.su1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2070}) 
 
 
V_2059 = Vertex(name = 'V_2059', 
	 particles = [P.su2, P.su2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2071}) 
 
 
V_2060 = Vertex(name = 'V_2060', 
	 particles = [P.su2, P.su3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2072}) 
 
 
V_2061 = Vertex(name = 'V_2061', 
	 particles = [P.su2, P.su4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2073}) 
 
 
V_2062 = Vertex(name = 'V_2062', 
	 particles = [P.su2, P.su5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2074}) 
 
 
V_2063 = Vertex(name = 'V_2063', 
	 particles = [P.su2, P.su6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2075}) 
 
 
V_2064 = Vertex(name = 'V_2064', 
	 particles = [P.su3, P.su1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2076}) 
 
 
V_2065 = Vertex(name = 'V_2065', 
	 particles = [P.su3, P.su2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2077}) 
 
 
V_2066 = Vertex(name = 'V_2066', 
	 particles = [P.su3, P.su3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2078}) 
 
 
V_2067 = Vertex(name = 'V_2067', 
	 particles = [P.su3, P.su4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2079}) 
 
 
V_2068 = Vertex(name = 'V_2068', 
	 particles = [P.su3, P.su5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2080}) 
 
 
V_2069 = Vertex(name = 'V_2069', 
	 particles = [P.su3, P.su6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2081}) 
 
 
V_2070 = Vertex(name = 'V_2070', 
	 particles = [P.su4, P.su1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2082}) 
 
 
V_2071 = Vertex(name = 'V_2071', 
	 particles = [P.su4, P.su2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2083}) 
 
 
V_2072 = Vertex(name = 'V_2072', 
	 particles = [P.su4, P.su3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2084}) 
 
 
V_2073 = Vertex(name = 'V_2073', 
	 particles = [P.su4, P.su4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2085}) 
 
 
V_2074 = Vertex(name = 'V_2074', 
	 particles = [P.su4, P.su5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2086}) 
 
 
V_2075 = Vertex(name = 'V_2075', 
	 particles = [P.su4, P.su6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2087}) 
 
 
V_2076 = Vertex(name = 'V_2076', 
	 particles = [P.su5, P.su1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2088}) 
 
 
V_2077 = Vertex(name = 'V_2077', 
	 particles = [P.su5, P.su2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2089}) 
 
 
V_2078 = Vertex(name = 'V_2078', 
	 particles = [P.su5, P.su3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2090}) 
 
 
V_2079 = Vertex(name = 'V_2079', 
	 particles = [P.su5, P.su4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2091}) 
 
 
V_2080 = Vertex(name = 'V_2080', 
	 particles = [P.su5, P.su5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2092}) 
 
 
V_2081 = Vertex(name = 'V_2081', 
	 particles = [P.su5, P.su6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2093}) 
 
 
V_2082 = Vertex(name = 'V_2082', 
	 particles = [P.su6, P.su1c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2094}) 
 
 
V_2083 = Vertex(name = 'V_2083', 
	 particles = [P.su6, P.su2c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2095}) 
 
 
V_2084 = Vertex(name = 'V_2084', 
	 particles = [P.su6, P.su3c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2096}) 
 
 
V_2085 = Vertex(name = 'V_2085', 
	 particles = [P.su6, P.su4c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2097}) 
 
 
V_2086 = Vertex(name = 'V_2086', 
	 particles = [P.su6, P.su5c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2098}) 
 
 
V_2087 = Vertex(name = 'V_2087', 
	 particles = [P.su6, P.su6c, P.A, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2099}) 
 
 
V_2088 = Vertex(name = 'V_2088', 
	 particles = [P.su1, P.sd1c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2100}) 
 
 
V_2089 = Vertex(name = 'V_2089', 
	 particles = [P.su1, P.sd2c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2101}) 
 
 
V_2090 = Vertex(name = 'V_2090', 
	 particles = [P.su1, P.sd3c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2102}) 
 
 
V_2091 = Vertex(name = 'V_2091', 
	 particles = [P.su1, P.sd4c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2103}) 
 
 
V_2092 = Vertex(name = 'V_2092', 
	 particles = [P.su1, P.sd5c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2104}) 
 
 
V_2093 = Vertex(name = 'V_2093', 
	 particles = [P.su1, P.sd6c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2105}) 
 
 
V_2094 = Vertex(name = 'V_2094', 
	 particles = [P.su2, P.sd1c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2106}) 
 
 
V_2095 = Vertex(name = 'V_2095', 
	 particles = [P.su2, P.sd2c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2107}) 
 
 
V_2096 = Vertex(name = 'V_2096', 
	 particles = [P.su2, P.sd3c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2108}) 
 
 
V_2097 = Vertex(name = 'V_2097', 
	 particles = [P.su2, P.sd4c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2109}) 
 
 
V_2098 = Vertex(name = 'V_2098', 
	 particles = [P.su2, P.sd5c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2110}) 
 
 
V_2099 = Vertex(name = 'V_2099', 
	 particles = [P.su2, P.sd6c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2111}) 
 
 
V_2100 = Vertex(name = 'V_2100', 
	 particles = [P.su3, P.sd1c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2112}) 
 
 
V_2101 = Vertex(name = 'V_2101', 
	 particles = [P.su3, P.sd2c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2113}) 
 
 
V_2102 = Vertex(name = 'V_2102', 
	 particles = [P.su3, P.sd3c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2114}) 
 
 
V_2103 = Vertex(name = 'V_2103', 
	 particles = [P.su3, P.sd4c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2115}) 
 
 
V_2104 = Vertex(name = 'V_2104', 
	 particles = [P.su3, P.sd5c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2116}) 
 
 
V_2105 = Vertex(name = 'V_2105', 
	 particles = [P.su3, P.sd6c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2117}) 
 
 
V_2106 = Vertex(name = 'V_2106', 
	 particles = [P.su4, P.sd1c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2118}) 
 
 
V_2107 = Vertex(name = 'V_2107', 
	 particles = [P.su4, P.sd2c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2119}) 
 
 
V_2108 = Vertex(name = 'V_2108', 
	 particles = [P.su4, P.sd3c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2120}) 
 
 
V_2109 = Vertex(name = 'V_2109', 
	 particles = [P.su4, P.sd4c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2121}) 
 
 
V_2110 = Vertex(name = 'V_2110', 
	 particles = [P.su4, P.sd5c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2122}) 
 
 
V_2111 = Vertex(name = 'V_2111', 
	 particles = [P.su4, P.sd6c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2123}) 
 
 
V_2112 = Vertex(name = 'V_2112', 
	 particles = [P.su5, P.sd1c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2124}) 
 
 
V_2113 = Vertex(name = 'V_2113', 
	 particles = [P.su5, P.sd2c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2125}) 
 
 
V_2114 = Vertex(name = 'V_2114', 
	 particles = [P.su5, P.sd3c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2126}) 
 
 
V_2115 = Vertex(name = 'V_2115', 
	 particles = [P.su5, P.sd4c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2127}) 
 
 
V_2116 = Vertex(name = 'V_2116', 
	 particles = [P.su5, P.sd5c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2128}) 
 
 
V_2117 = Vertex(name = 'V_2117', 
	 particles = [P.su5, P.sd6c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2129}) 
 
 
V_2118 = Vertex(name = 'V_2118', 
	 particles = [P.su6, P.sd1c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2130}) 
 
 
V_2119 = Vertex(name = 'V_2119', 
	 particles = [P.su6, P.sd2c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2131}) 
 
 
V_2120 = Vertex(name = 'V_2120', 
	 particles = [P.su6, P.sd3c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2132}) 
 
 
V_2121 = Vertex(name = 'V_2121', 
	 particles = [P.su6, P.sd4c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2133}) 
 
 
V_2122 = Vertex(name = 'V_2122', 
	 particles = [P.su6, P.sd5c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2134}) 
 
 
V_2123 = Vertex(name = 'V_2123', 
	 particles = [P.su6, P.sd6c, P.A, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2135}) 
 
 
V_2124 = Vertex(name = 'V_2124', 
	 particles = [P.su1, P.su1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2136}) 
 
 
V_2125 = Vertex(name = 'V_2125', 
	 particles = [P.su1, P.su2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2137}) 
 
 
V_2126 = Vertex(name = 'V_2126', 
	 particles = [P.su1, P.su3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2138}) 
 
 
V_2127 = Vertex(name = 'V_2127', 
	 particles = [P.su1, P.su4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2139}) 
 
 
V_2128 = Vertex(name = 'V_2128', 
	 particles = [P.su1, P.su5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2140}) 
 
 
V_2129 = Vertex(name = 'V_2129', 
	 particles = [P.su1, P.su6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2141}) 
 
 
V_2130 = Vertex(name = 'V_2130', 
	 particles = [P.su2, P.su1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2142}) 
 
 
V_2131 = Vertex(name = 'V_2131', 
	 particles = [P.su2, P.su2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2143}) 
 
 
V_2132 = Vertex(name = 'V_2132', 
	 particles = [P.su2, P.su3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2144}) 
 
 
V_2133 = Vertex(name = 'V_2133', 
	 particles = [P.su2, P.su4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2145}) 
 
 
V_2134 = Vertex(name = 'V_2134', 
	 particles = [P.su2, P.su5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2146}) 
 
 
V_2135 = Vertex(name = 'V_2135', 
	 particles = [P.su2, P.su6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2147}) 
 
 
V_2136 = Vertex(name = 'V_2136', 
	 particles = [P.su3, P.su1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2148}) 
 
 
V_2137 = Vertex(name = 'V_2137', 
	 particles = [P.su3, P.su2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2149}) 
 
 
V_2138 = Vertex(name = 'V_2138', 
	 particles = [P.su3, P.su3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2150}) 
 
 
V_2139 = Vertex(name = 'V_2139', 
	 particles = [P.su3, P.su4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2151}) 
 
 
V_2140 = Vertex(name = 'V_2140', 
	 particles = [P.su3, P.su5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2152}) 
 
 
V_2141 = Vertex(name = 'V_2141', 
	 particles = [P.su3, P.su6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2153}) 
 
 
V_2142 = Vertex(name = 'V_2142', 
	 particles = [P.su4, P.su1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2154}) 
 
 
V_2143 = Vertex(name = 'V_2143', 
	 particles = [P.su4, P.su2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2155}) 
 
 
V_2144 = Vertex(name = 'V_2144', 
	 particles = [P.su4, P.su3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2156}) 
 
 
V_2145 = Vertex(name = 'V_2145', 
	 particles = [P.su4, P.su4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2157}) 
 
 
V_2146 = Vertex(name = 'V_2146', 
	 particles = [P.su4, P.su5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2158}) 
 
 
V_2147 = Vertex(name = 'V_2147', 
	 particles = [P.su4, P.su6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2159}) 
 
 
V_2148 = Vertex(name = 'V_2148', 
	 particles = [P.su5, P.su1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2160}) 
 
 
V_2149 = Vertex(name = 'V_2149', 
	 particles = [P.su5, P.su2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2161}) 
 
 
V_2150 = Vertex(name = 'V_2150', 
	 particles = [P.su5, P.su3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2162}) 
 
 
V_2151 = Vertex(name = 'V_2151', 
	 particles = [P.su5, P.su4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2163}) 
 
 
V_2152 = Vertex(name = 'V_2152', 
	 particles = [P.su5, P.su5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2164}) 
 
 
V_2153 = Vertex(name = 'V_2153', 
	 particles = [P.su5, P.su6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2165}) 
 
 
V_2154 = Vertex(name = 'V_2154', 
	 particles = [P.su6, P.su1c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2166}) 
 
 
V_2155 = Vertex(name = 'V_2155', 
	 particles = [P.su6, P.su2c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2167}) 
 
 
V_2156 = Vertex(name = 'V_2156', 
	 particles = [P.su6, P.su3c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2168}) 
 
 
V_2157 = Vertex(name = 'V_2157', 
	 particles = [P.su6, P.su4c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2169}) 
 
 
V_2158 = Vertex(name = 'V_2158', 
	 particles = [P.su6, P.su5c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2170}) 
 
 
V_2159 = Vertex(name = 'V_2159', 
	 particles = [P.su6, P.su6c, P.A, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2171}) 
 
 
V_2160 = Vertex(name = 'V_2160', 
	 particles = [P.su1, P.su1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2172}) 
 
 
V_2161 = Vertex(name = 'V_2161', 
	 particles = [P.su1, P.su2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2173}) 
 
 
V_2162 = Vertex(name = 'V_2162', 
	 particles = [P.su1, P.su3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2174}) 
 
 
V_2163 = Vertex(name = 'V_2163', 
	 particles = [P.su1, P.su4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2175}) 
 
 
V_2164 = Vertex(name = 'V_2164', 
	 particles = [P.su1, P.su5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2176}) 
 
 
V_2165 = Vertex(name = 'V_2165', 
	 particles = [P.su1, P.su6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2177}) 
 
 
V_2166 = Vertex(name = 'V_2166', 
	 particles = [P.su2, P.su1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2178}) 
 
 
V_2167 = Vertex(name = 'V_2167', 
	 particles = [P.su2, P.su2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2179}) 
 
 
V_2168 = Vertex(name = 'V_2168', 
	 particles = [P.su2, P.su3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2180}) 
 
 
V_2169 = Vertex(name = 'V_2169', 
	 particles = [P.su2, P.su4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2181}) 
 
 
V_2170 = Vertex(name = 'V_2170', 
	 particles = [P.su2, P.su5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2182}) 
 
 
V_2171 = Vertex(name = 'V_2171', 
	 particles = [P.su2, P.su6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2183}) 
 
 
V_2172 = Vertex(name = 'V_2172', 
	 particles = [P.su3, P.su1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2184}) 
 
 
V_2173 = Vertex(name = 'V_2173', 
	 particles = [P.su3, P.su2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2185}) 
 
 
V_2174 = Vertex(name = 'V_2174', 
	 particles = [P.su3, P.su3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2186}) 
 
 
V_2175 = Vertex(name = 'V_2175', 
	 particles = [P.su3, P.su4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2187}) 
 
 
V_2176 = Vertex(name = 'V_2176', 
	 particles = [P.su3, P.su5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2188}) 
 
 
V_2177 = Vertex(name = 'V_2177', 
	 particles = [P.su3, P.su6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2189}) 
 
 
V_2178 = Vertex(name = 'V_2178', 
	 particles = [P.su4, P.su1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2190}) 
 
 
V_2179 = Vertex(name = 'V_2179', 
	 particles = [P.su4, P.su2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2191}) 
 
 
V_2180 = Vertex(name = 'V_2180', 
	 particles = [P.su4, P.su3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2192}) 
 
 
V_2181 = Vertex(name = 'V_2181', 
	 particles = [P.su4, P.su4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2193}) 
 
 
V_2182 = Vertex(name = 'V_2182', 
	 particles = [P.su4, P.su5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2194}) 
 
 
V_2183 = Vertex(name = 'V_2183', 
	 particles = [P.su4, P.su6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2195}) 
 
 
V_2184 = Vertex(name = 'V_2184', 
	 particles = [P.su5, P.su1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2196}) 
 
 
V_2185 = Vertex(name = 'V_2185', 
	 particles = [P.su5, P.su2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2197}) 
 
 
V_2186 = Vertex(name = 'V_2186', 
	 particles = [P.su5, P.su3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2198}) 
 
 
V_2187 = Vertex(name = 'V_2187', 
	 particles = [P.su5, P.su4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2199}) 
 
 
V_2188 = Vertex(name = 'V_2188', 
	 particles = [P.su5, P.su5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2200}) 
 
 
V_2189 = Vertex(name = 'V_2189', 
	 particles = [P.su5, P.su6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2201}) 
 
 
V_2190 = Vertex(name = 'V_2190', 
	 particles = [P.su6, P.su1c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2202}) 
 
 
V_2191 = Vertex(name = 'V_2191', 
	 particles = [P.su6, P.su2c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2203}) 
 
 
V_2192 = Vertex(name = 'V_2192', 
	 particles = [P.su6, P.su3c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2204}) 
 
 
V_2193 = Vertex(name = 'V_2193', 
	 particles = [P.su6, P.su4c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2205}) 
 
 
V_2194 = Vertex(name = 'V_2194', 
	 particles = [P.su6, P.su5c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2206}) 
 
 
V_2195 = Vertex(name = 'V_2195', 
	 particles = [P.su6, P.su6c, P.A, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2207}) 
 
 
V_2196 = Vertex(name = 'V_2196', 
	 particles = [P.su1, P.sd1c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2208}) 
 
 
V_2197 = Vertex(name = 'V_2197', 
	 particles = [P.su1, P.sd2c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2209}) 
 
 
V_2198 = Vertex(name = 'V_2198', 
	 particles = [P.su1, P.sd3c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2210}) 
 
 
V_2199 = Vertex(name = 'V_2199', 
	 particles = [P.su1, P.sd4c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2211}) 
 
 
V_2200 = Vertex(name = 'V_2200', 
	 particles = [P.su1, P.sd5c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2212}) 
 
 
V_2201 = Vertex(name = 'V_2201', 
	 particles = [P.su1, P.sd6c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2213}) 
 
 
V_2202 = Vertex(name = 'V_2202', 
	 particles = [P.su2, P.sd1c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2214}) 
 
 
V_2203 = Vertex(name = 'V_2203', 
	 particles = [P.su2, P.sd2c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2215}) 
 
 
V_2204 = Vertex(name = 'V_2204', 
	 particles = [P.su2, P.sd3c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2216}) 
 
 
V_2205 = Vertex(name = 'V_2205', 
	 particles = [P.su2, P.sd4c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2217}) 
 
 
V_2206 = Vertex(name = 'V_2206', 
	 particles = [P.su2, P.sd5c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2218}) 
 
 
V_2207 = Vertex(name = 'V_2207', 
	 particles = [P.su2, P.sd6c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2219}) 
 
 
V_2208 = Vertex(name = 'V_2208', 
	 particles = [P.su3, P.sd1c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2220}) 
 
 
V_2209 = Vertex(name = 'V_2209', 
	 particles = [P.su3, P.sd2c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2221}) 
 
 
V_2210 = Vertex(name = 'V_2210', 
	 particles = [P.su3, P.sd3c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2222}) 
 
 
V_2211 = Vertex(name = 'V_2211', 
	 particles = [P.su3, P.sd4c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2223}) 
 
 
V_2212 = Vertex(name = 'V_2212', 
	 particles = [P.su3, P.sd5c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2224}) 
 
 
V_2213 = Vertex(name = 'V_2213', 
	 particles = [P.su3, P.sd6c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2225}) 
 
 
V_2214 = Vertex(name = 'V_2214', 
	 particles = [P.su4, P.sd1c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2226}) 
 
 
V_2215 = Vertex(name = 'V_2215', 
	 particles = [P.su4, P.sd2c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2227}) 
 
 
V_2216 = Vertex(name = 'V_2216', 
	 particles = [P.su4, P.sd3c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2228}) 
 
 
V_2217 = Vertex(name = 'V_2217', 
	 particles = [P.su4, P.sd4c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2229}) 
 
 
V_2218 = Vertex(name = 'V_2218', 
	 particles = [P.su4, P.sd5c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2230}) 
 
 
V_2219 = Vertex(name = 'V_2219', 
	 particles = [P.su4, P.sd6c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2231}) 
 
 
V_2220 = Vertex(name = 'V_2220', 
	 particles = [P.su5, P.sd1c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2232}) 
 
 
V_2221 = Vertex(name = 'V_2221', 
	 particles = [P.su5, P.sd2c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2233}) 
 
 
V_2222 = Vertex(name = 'V_2222', 
	 particles = [P.su5, P.sd3c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2234}) 
 
 
V_2223 = Vertex(name = 'V_2223', 
	 particles = [P.su5, P.sd4c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2235}) 
 
 
V_2224 = Vertex(name = 'V_2224', 
	 particles = [P.su5, P.sd5c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2236}) 
 
 
V_2225 = Vertex(name = 'V_2225', 
	 particles = [P.su5, P.sd6c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2237}) 
 
 
V_2226 = Vertex(name = 'V_2226', 
	 particles = [P.su6, P.sd1c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2238}) 
 
 
V_2227 = Vertex(name = 'V_2227', 
	 particles = [P.su6, P.sd2c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2239}) 
 
 
V_2228 = Vertex(name = 'V_2228', 
	 particles = [P.su6, P.sd3c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2240}) 
 
 
V_2229 = Vertex(name = 'V_2229', 
	 particles = [P.su6, P.sd4c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2241}) 
 
 
V_2230 = Vertex(name = 'V_2230', 
	 particles = [P.su6, P.sd5c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2242}) 
 
 
V_2231 = Vertex(name = 'V_2231', 
	 particles = [P.su6, P.sd6c, P.Wm, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2243}) 
 
 
V_2232 = Vertex(name = 'V_2232', 
	 particles = [P.su1, P.sd1c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2244}) 
 
 
V_2233 = Vertex(name = 'V_2233', 
	 particles = [P.su1, P.sd2c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2245}) 
 
 
V_2234 = Vertex(name = 'V_2234', 
	 particles = [P.su1, P.sd3c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2246}) 
 
 
V_2235 = Vertex(name = 'V_2235', 
	 particles = [P.su1, P.sd4c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2247}) 
 
 
V_2236 = Vertex(name = 'V_2236', 
	 particles = [P.su1, P.sd5c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2248}) 
 
 
V_2237 = Vertex(name = 'V_2237', 
	 particles = [P.su1, P.sd6c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2249}) 
 
 
V_2238 = Vertex(name = 'V_2238', 
	 particles = [P.su2, P.sd1c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2250}) 
 
 
V_2239 = Vertex(name = 'V_2239', 
	 particles = [P.su2, P.sd2c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2251}) 
 
 
V_2240 = Vertex(name = 'V_2240', 
	 particles = [P.su2, P.sd3c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2252}) 
 
 
V_2241 = Vertex(name = 'V_2241', 
	 particles = [P.su2, P.sd4c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2253}) 
 
 
V_2242 = Vertex(name = 'V_2242', 
	 particles = [P.su2, P.sd5c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2254}) 
 
 
V_2243 = Vertex(name = 'V_2243', 
	 particles = [P.su2, P.sd6c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2255}) 
 
 
V_2244 = Vertex(name = 'V_2244', 
	 particles = [P.su3, P.sd1c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2256}) 
 
 
V_2245 = Vertex(name = 'V_2245', 
	 particles = [P.su3, P.sd2c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2257}) 
 
 
V_2246 = Vertex(name = 'V_2246', 
	 particles = [P.su3, P.sd3c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2258}) 
 
 
V_2247 = Vertex(name = 'V_2247', 
	 particles = [P.su3, P.sd4c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2259}) 
 
 
V_2248 = Vertex(name = 'V_2248', 
	 particles = [P.su3, P.sd5c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2260}) 
 
 
V_2249 = Vertex(name = 'V_2249', 
	 particles = [P.su3, P.sd6c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2261}) 
 
 
V_2250 = Vertex(name = 'V_2250', 
	 particles = [P.su4, P.sd1c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2262}) 
 
 
V_2251 = Vertex(name = 'V_2251', 
	 particles = [P.su4, P.sd2c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2263}) 
 
 
V_2252 = Vertex(name = 'V_2252', 
	 particles = [P.su4, P.sd3c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2264}) 
 
 
V_2253 = Vertex(name = 'V_2253', 
	 particles = [P.su4, P.sd4c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2265}) 
 
 
V_2254 = Vertex(name = 'V_2254', 
	 particles = [P.su4, P.sd5c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2266}) 
 
 
V_2255 = Vertex(name = 'V_2255', 
	 particles = [P.su4, P.sd6c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2267}) 
 
 
V_2256 = Vertex(name = 'V_2256', 
	 particles = [P.su5, P.sd1c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2268}) 
 
 
V_2257 = Vertex(name = 'V_2257', 
	 particles = [P.su5, P.sd2c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2269}) 
 
 
V_2258 = Vertex(name = 'V_2258', 
	 particles = [P.su5, P.sd3c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2270}) 
 
 
V_2259 = Vertex(name = 'V_2259', 
	 particles = [P.su5, P.sd4c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2271}) 
 
 
V_2260 = Vertex(name = 'V_2260', 
	 particles = [P.su5, P.sd5c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2272}) 
 
 
V_2261 = Vertex(name = 'V_2261', 
	 particles = [P.su5, P.sd6c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2273}) 
 
 
V_2262 = Vertex(name = 'V_2262', 
	 particles = [P.su6, P.sd1c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2274}) 
 
 
V_2263 = Vertex(name = 'V_2263', 
	 particles = [P.su6, P.sd2c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2275}) 
 
 
V_2264 = Vertex(name = 'V_2264', 
	 particles = [P.su6, P.sd3c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2276}) 
 
 
V_2265 = Vertex(name = 'V_2265', 
	 particles = [P.su6, P.sd4c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2277}) 
 
 
V_2266 = Vertex(name = 'V_2266', 
	 particles = [P.su6, P.sd5c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2278}) 
 
 
V_2267 = Vertex(name = 'V_2267', 
	 particles = [P.su6, P.sd6c, P.Wm, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2279}) 
 
 
V_2268 = Vertex(name = 'V_2268', 
	 particles = [P.su1, P.su1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2280}) 
 
 
V_2269 = Vertex(name = 'V_2269', 
	 particles = [P.su1, P.su2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2281}) 
 
 
V_2270 = Vertex(name = 'V_2270', 
	 particles = [P.su1, P.su3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2282}) 
 
 
V_2271 = Vertex(name = 'V_2271', 
	 particles = [P.su1, P.su4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2283}) 
 
 
V_2272 = Vertex(name = 'V_2272', 
	 particles = [P.su1, P.su5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2284}) 
 
 
V_2273 = Vertex(name = 'V_2273', 
	 particles = [P.su1, P.su6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2285}) 
 
 
V_2274 = Vertex(name = 'V_2274', 
	 particles = [P.su2, P.su1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2286}) 
 
 
V_2275 = Vertex(name = 'V_2275', 
	 particles = [P.su2, P.su2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2287}) 
 
 
V_2276 = Vertex(name = 'V_2276', 
	 particles = [P.su2, P.su3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2288}) 
 
 
V_2277 = Vertex(name = 'V_2277', 
	 particles = [P.su2, P.su4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2289}) 
 
 
V_2278 = Vertex(name = 'V_2278', 
	 particles = [P.su2, P.su5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2290}) 
 
 
V_2279 = Vertex(name = 'V_2279', 
	 particles = [P.su2, P.su6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2291}) 
 
 
V_2280 = Vertex(name = 'V_2280', 
	 particles = [P.su3, P.su1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2292}) 
 
 
V_2281 = Vertex(name = 'V_2281', 
	 particles = [P.su3, P.su2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2293}) 
 
 
V_2282 = Vertex(name = 'V_2282', 
	 particles = [P.su3, P.su3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2294}) 
 
 
V_2283 = Vertex(name = 'V_2283', 
	 particles = [P.su3, P.su4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2295}) 
 
 
V_2284 = Vertex(name = 'V_2284', 
	 particles = [P.su3, P.su5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2296}) 
 
 
V_2285 = Vertex(name = 'V_2285', 
	 particles = [P.su3, P.su6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2297}) 
 
 
V_2286 = Vertex(name = 'V_2286', 
	 particles = [P.su4, P.su1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2298}) 
 
 
V_2287 = Vertex(name = 'V_2287', 
	 particles = [P.su4, P.su2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2299}) 
 
 
V_2288 = Vertex(name = 'V_2288', 
	 particles = [P.su4, P.su3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2300}) 
 
 
V_2289 = Vertex(name = 'V_2289', 
	 particles = [P.su4, P.su4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2301}) 
 
 
V_2290 = Vertex(name = 'V_2290', 
	 particles = [P.su4, P.su5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2302}) 
 
 
V_2291 = Vertex(name = 'V_2291', 
	 particles = [P.su4, P.su6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2303}) 
 
 
V_2292 = Vertex(name = 'V_2292', 
	 particles = [P.su5, P.su1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2304}) 
 
 
V_2293 = Vertex(name = 'V_2293', 
	 particles = [P.su5, P.su2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2305}) 
 
 
V_2294 = Vertex(name = 'V_2294', 
	 particles = [P.su5, P.su3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2306}) 
 
 
V_2295 = Vertex(name = 'V_2295', 
	 particles = [P.su5, P.su4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2307}) 
 
 
V_2296 = Vertex(name = 'V_2296', 
	 particles = [P.su5, P.su5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2308}) 
 
 
V_2297 = Vertex(name = 'V_2297', 
	 particles = [P.su5, P.su6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2309}) 
 
 
V_2298 = Vertex(name = 'V_2298', 
	 particles = [P.su6, P.su1c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2310}) 
 
 
V_2299 = Vertex(name = 'V_2299', 
	 particles = [P.su6, P.su2c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2311}) 
 
 
V_2300 = Vertex(name = 'V_2300', 
	 particles = [P.su6, P.su3c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2312}) 
 
 
V_2301 = Vertex(name = 'V_2301', 
	 particles = [P.su6, P.su4c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2313}) 
 
 
V_2302 = Vertex(name = 'V_2302', 
	 particles = [P.su6, P.su5c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2314}) 
 
 
V_2303 = Vertex(name = 'V_2303', 
	 particles = [P.su6, P.su6c, P.Wmc, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2315}) 
 
 
V_2304 = Vertex(name = 'V_2304', 
	 particles = [P.su1, P.su1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2316}) 
 
 
V_2305 = Vertex(name = 'V_2305', 
	 particles = [P.su1, P.su2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2317}) 
 
 
V_2306 = Vertex(name = 'V_2306', 
	 particles = [P.su1, P.su3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2318}) 
 
 
V_2307 = Vertex(name = 'V_2307', 
	 particles = [P.su1, P.su4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2319}) 
 
 
V_2308 = Vertex(name = 'V_2308', 
	 particles = [P.su1, P.su5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2320}) 
 
 
V_2309 = Vertex(name = 'V_2309', 
	 particles = [P.su1, P.su6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2321}) 
 
 
V_2310 = Vertex(name = 'V_2310', 
	 particles = [P.su2, P.su1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2322}) 
 
 
V_2311 = Vertex(name = 'V_2311', 
	 particles = [P.su2, P.su2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2323}) 
 
 
V_2312 = Vertex(name = 'V_2312', 
	 particles = [P.su2, P.su3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2324}) 
 
 
V_2313 = Vertex(name = 'V_2313', 
	 particles = [P.su2, P.su4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2325}) 
 
 
V_2314 = Vertex(name = 'V_2314', 
	 particles = [P.su2, P.su5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2326}) 
 
 
V_2315 = Vertex(name = 'V_2315', 
	 particles = [P.su2, P.su6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2327}) 
 
 
V_2316 = Vertex(name = 'V_2316', 
	 particles = [P.su3, P.su1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2328}) 
 
 
V_2317 = Vertex(name = 'V_2317', 
	 particles = [P.su3, P.su2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2329}) 
 
 
V_2318 = Vertex(name = 'V_2318', 
	 particles = [P.su3, P.su3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2330}) 
 
 
V_2319 = Vertex(name = 'V_2319', 
	 particles = [P.su3, P.su4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2331}) 
 
 
V_2320 = Vertex(name = 'V_2320', 
	 particles = [P.su3, P.su5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2332}) 
 
 
V_2321 = Vertex(name = 'V_2321', 
	 particles = [P.su3, P.su6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2333}) 
 
 
V_2322 = Vertex(name = 'V_2322', 
	 particles = [P.su4, P.su1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2334}) 
 
 
V_2323 = Vertex(name = 'V_2323', 
	 particles = [P.su4, P.su2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2335}) 
 
 
V_2324 = Vertex(name = 'V_2324', 
	 particles = [P.su4, P.su3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2336}) 
 
 
V_2325 = Vertex(name = 'V_2325', 
	 particles = [P.su4, P.su4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2337}) 
 
 
V_2326 = Vertex(name = 'V_2326', 
	 particles = [P.su4, P.su5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2338}) 
 
 
V_2327 = Vertex(name = 'V_2327', 
	 particles = [P.su4, P.su6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2339}) 
 
 
V_2328 = Vertex(name = 'V_2328', 
	 particles = [P.su5, P.su1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2340}) 
 
 
V_2329 = Vertex(name = 'V_2329', 
	 particles = [P.su5, P.su2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2341}) 
 
 
V_2330 = Vertex(name = 'V_2330', 
	 particles = [P.su5, P.su3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2342}) 
 
 
V_2331 = Vertex(name = 'V_2331', 
	 particles = [P.su5, P.su4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2343}) 
 
 
V_2332 = Vertex(name = 'V_2332', 
	 particles = [P.su5, P.su5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2344}) 
 
 
V_2333 = Vertex(name = 'V_2333', 
	 particles = [P.su5, P.su6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2345}) 
 
 
V_2334 = Vertex(name = 'V_2334', 
	 particles = [P.su6, P.su1c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2346}) 
 
 
V_2335 = Vertex(name = 'V_2335', 
	 particles = [P.su6, P.su2c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2347}) 
 
 
V_2336 = Vertex(name = 'V_2336', 
	 particles = [P.su6, P.su3c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2348}) 
 
 
V_2337 = Vertex(name = 'V_2337', 
	 particles = [P.su6, P.su4c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2349}) 
 
 
V_2338 = Vertex(name = 'V_2338', 
	 particles = [P.su6, P.su5c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2350}) 
 
 
V_2339 = Vertex(name = 'V_2339', 
	 particles = [P.su6, P.su6c, P.Z, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2351}) 
 
 
V_2340 = Vertex(name = 'V_2340', 
	 particles = [P.su1, P.su1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2352}) 
 
 
V_2341 = Vertex(name = 'V_2341', 
	 particles = [P.su1, P.su2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2353}) 
 
 
V_2342 = Vertex(name = 'V_2342', 
	 particles = [P.su1, P.su3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2354}) 
 
 
V_2343 = Vertex(name = 'V_2343', 
	 particles = [P.su1, P.su4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2355}) 
 
 
V_2344 = Vertex(name = 'V_2344', 
	 particles = [P.su1, P.su5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2356}) 
 
 
V_2345 = Vertex(name = 'V_2345', 
	 particles = [P.su1, P.su6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2357}) 
 
 
V_2346 = Vertex(name = 'V_2346', 
	 particles = [P.su2, P.su1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2358}) 
 
 
V_2347 = Vertex(name = 'V_2347', 
	 particles = [P.su2, P.su2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2359}) 
 
 
V_2348 = Vertex(name = 'V_2348', 
	 particles = [P.su2, P.su3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2360}) 
 
 
V_2349 = Vertex(name = 'V_2349', 
	 particles = [P.su2, P.su4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2361}) 
 
 
V_2350 = Vertex(name = 'V_2350', 
	 particles = [P.su2, P.su5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2362}) 
 
 
V_2351 = Vertex(name = 'V_2351', 
	 particles = [P.su2, P.su6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2363}) 
 
 
V_2352 = Vertex(name = 'V_2352', 
	 particles = [P.su3, P.su1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2364}) 
 
 
V_2353 = Vertex(name = 'V_2353', 
	 particles = [P.su3, P.su2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2365}) 
 
 
V_2354 = Vertex(name = 'V_2354', 
	 particles = [P.su3, P.su3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2366}) 
 
 
V_2355 = Vertex(name = 'V_2355', 
	 particles = [P.su3, P.su4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2367}) 
 
 
V_2356 = Vertex(name = 'V_2356', 
	 particles = [P.su3, P.su5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2368}) 
 
 
V_2357 = Vertex(name = 'V_2357', 
	 particles = [P.su3, P.su6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2369}) 
 
 
V_2358 = Vertex(name = 'V_2358', 
	 particles = [P.su4, P.su1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2370}) 
 
 
V_2359 = Vertex(name = 'V_2359', 
	 particles = [P.su4, P.su2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2371}) 
 
 
V_2360 = Vertex(name = 'V_2360', 
	 particles = [P.su4, P.su3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2372}) 
 
 
V_2361 = Vertex(name = 'V_2361', 
	 particles = [P.su4, P.su4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2373}) 
 
 
V_2362 = Vertex(name = 'V_2362', 
	 particles = [P.su4, P.su5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2374}) 
 
 
V_2363 = Vertex(name = 'V_2363', 
	 particles = [P.su4, P.su6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2375}) 
 
 
V_2364 = Vertex(name = 'V_2364', 
	 particles = [P.su5, P.su1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2376}) 
 
 
V_2365 = Vertex(name = 'V_2365', 
	 particles = [P.su5, P.su2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2377}) 
 
 
V_2366 = Vertex(name = 'V_2366', 
	 particles = [P.su5, P.su3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2378}) 
 
 
V_2367 = Vertex(name = 'V_2367', 
	 particles = [P.su5, P.su4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2379}) 
 
 
V_2368 = Vertex(name = 'V_2368', 
	 particles = [P.su5, P.su5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2380}) 
 
 
V_2369 = Vertex(name = 'V_2369', 
	 particles = [P.su5, P.su6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2381}) 
 
 
V_2370 = Vertex(name = 'V_2370', 
	 particles = [P.su6, P.su1c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2382}) 
 
 
V_2371 = Vertex(name = 'V_2371', 
	 particles = [P.su6, P.su2c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2383}) 
 
 
V_2372 = Vertex(name = 'V_2372', 
	 particles = [P.su6, P.su3c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2384}) 
 
 
V_2373 = Vertex(name = 'V_2373', 
	 particles = [P.su6, P.su4c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2385}) 
 
 
V_2374 = Vertex(name = 'V_2374', 
	 particles = [P.su6, P.su5c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2386}) 
 
 
V_2375 = Vertex(name = 'V_2375', 
	 particles = [P.su6, P.su6c, P.Z, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2387}) 
 
 
V_2376 = Vertex(name = 'V_2376', 
	 particles = [P.su1, P.su1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2388}) 
 
 
V_2377 = Vertex(name = 'V_2377', 
	 particles = [P.su1, P.su2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2389}) 
 
 
V_2378 = Vertex(name = 'V_2378', 
	 particles = [P.su1, P.su3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2390}) 
 
 
V_2379 = Vertex(name = 'V_2379', 
	 particles = [P.su1, P.su4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2391}) 
 
 
V_2380 = Vertex(name = 'V_2380', 
	 particles = [P.su1, P.su5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2392}) 
 
 
V_2381 = Vertex(name = 'V_2381', 
	 particles = [P.su1, P.su6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2393}) 
 
 
V_2382 = Vertex(name = 'V_2382', 
	 particles = [P.su2, P.su1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2394}) 
 
 
V_2383 = Vertex(name = 'V_2383', 
	 particles = [P.su2, P.su2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2395}) 
 
 
V_2384 = Vertex(name = 'V_2384', 
	 particles = [P.su2, P.su3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2396}) 
 
 
V_2385 = Vertex(name = 'V_2385', 
	 particles = [P.su2, P.su4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2397}) 
 
 
V_2386 = Vertex(name = 'V_2386', 
	 particles = [P.su2, P.su5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2398}) 
 
 
V_2387 = Vertex(name = 'V_2387', 
	 particles = [P.su2, P.su6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2399}) 
 
 
V_2388 = Vertex(name = 'V_2388', 
	 particles = [P.su3, P.su1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2400}) 
 
 
V_2389 = Vertex(name = 'V_2389', 
	 particles = [P.su3, P.su2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2401}) 
 
 
V_2390 = Vertex(name = 'V_2390', 
	 particles = [P.su3, P.su3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2402}) 
 
 
V_2391 = Vertex(name = 'V_2391', 
	 particles = [P.su3, P.su4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2403}) 
 
 
V_2392 = Vertex(name = 'V_2392', 
	 particles = [P.su3, P.su5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2404}) 
 
 
V_2393 = Vertex(name = 'V_2393', 
	 particles = [P.su3, P.su6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2405}) 
 
 
V_2394 = Vertex(name = 'V_2394', 
	 particles = [P.su4, P.su1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2406}) 
 
 
V_2395 = Vertex(name = 'V_2395', 
	 particles = [P.su4, P.su2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2407}) 
 
 
V_2396 = Vertex(name = 'V_2396', 
	 particles = [P.su4, P.su3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2408}) 
 
 
V_2397 = Vertex(name = 'V_2397', 
	 particles = [P.su4, P.su4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2409}) 
 
 
V_2398 = Vertex(name = 'V_2398', 
	 particles = [P.su4, P.su5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2410}) 
 
 
V_2399 = Vertex(name = 'V_2399', 
	 particles = [P.su4, P.su6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2411}) 
 
 
V_2400 = Vertex(name = 'V_2400', 
	 particles = [P.su5, P.su1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2412}) 
 
 
V_2401 = Vertex(name = 'V_2401', 
	 particles = [P.su5, P.su2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2413}) 
 
 
V_2402 = Vertex(name = 'V_2402', 
	 particles = [P.su5, P.su3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2414}) 
 
 
V_2403 = Vertex(name = 'V_2403', 
	 particles = [P.su5, P.su4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2415}) 
 
 
V_2404 = Vertex(name = 'V_2404', 
	 particles = [P.su5, P.su5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2416}) 
 
 
V_2405 = Vertex(name = 'V_2405', 
	 particles = [P.su5, P.su6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2417}) 
 
 
V_2406 = Vertex(name = 'V_2406', 
	 particles = [P.su6, P.su1c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2418}) 
 
 
V_2407 = Vertex(name = 'V_2407', 
	 particles = [P.su6, P.su2c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2419}) 
 
 
V_2408 = Vertex(name = 'V_2408', 
	 particles = [P.su6, P.su3c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2420}) 
 
 
V_2409 = Vertex(name = 'V_2409', 
	 particles = [P.su6, P.su4c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2421}) 
 
 
V_2410 = Vertex(name = 'V_2410', 
	 particles = [P.su6, P.su5c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2422}) 
 
 
V_2411 = Vertex(name = 'V_2411', 
	 particles = [P.su6, P.su6c, P.Zp, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2423}) 
 
 
V_2412 = Vertex(name = 'V_2412', 
	 particles = [P.sv1, P.se1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2424}) 
 
 
V_2413 = Vertex(name = 'V_2413', 
	 particles = [P.sv1, P.se2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2425}) 
 
 
V_2414 = Vertex(name = 'V_2414', 
	 particles = [P.sv1, P.se3c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2426}) 
 
 
V_2415 = Vertex(name = 'V_2415', 
	 particles = [P.sv1, P.se4c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2427}) 
 
 
V_2416 = Vertex(name = 'V_2416', 
	 particles = [P.sv1, P.se5c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2428}) 
 
 
V_2417 = Vertex(name = 'V_2417', 
	 particles = [P.sv1, P.se6c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2429}) 
 
 
V_2418 = Vertex(name = 'V_2418', 
	 particles = [P.sv2, P.se1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2430}) 
 
 
V_2419 = Vertex(name = 'V_2419', 
	 particles = [P.sv2, P.se2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2431}) 
 
 
V_2420 = Vertex(name = 'V_2420', 
	 particles = [P.sv2, P.se3c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2432}) 
 
 
V_2421 = Vertex(name = 'V_2421', 
	 particles = [P.sv2, P.se4c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2433}) 
 
 
V_2422 = Vertex(name = 'V_2422', 
	 particles = [P.sv2, P.se5c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2434}) 
 
 
V_2423 = Vertex(name = 'V_2423', 
	 particles = [P.sv2, P.se6c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2435}) 
 
 
V_2424 = Vertex(name = 'V_2424', 
	 particles = [P.sv3, P.se1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2436}) 
 
 
V_2425 = Vertex(name = 'V_2425', 
	 particles = [P.sv3, P.se2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2437}) 
 
 
V_2426 = Vertex(name = 'V_2426', 
	 particles = [P.sv3, P.se3c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2438}) 
 
 
V_2427 = Vertex(name = 'V_2427', 
	 particles = [P.sv3, P.se4c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2439}) 
 
 
V_2428 = Vertex(name = 'V_2428', 
	 particles = [P.sv3, P.se5c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2440}) 
 
 
V_2429 = Vertex(name = 'V_2429', 
	 particles = [P.sv3, P.se6c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2441}) 
 
 
V_2430 = Vertex(name = 'V_2430', 
	 particles = [P.sv1, P.se1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2442}) 
 
 
V_2431 = Vertex(name = 'V_2431', 
	 particles = [P.sv1, P.se2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2443}) 
 
 
V_2432 = Vertex(name = 'V_2432', 
	 particles = [P.sv1, P.se3c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2444}) 
 
 
V_2433 = Vertex(name = 'V_2433', 
	 particles = [P.sv1, P.se4c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2445}) 
 
 
V_2434 = Vertex(name = 'V_2434', 
	 particles = [P.sv1, P.se5c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2446}) 
 
 
V_2435 = Vertex(name = 'V_2435', 
	 particles = [P.sv1, P.se6c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2447}) 
 
 
V_2436 = Vertex(name = 'V_2436', 
	 particles = [P.sv2, P.se1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2448}) 
 
 
V_2437 = Vertex(name = 'V_2437', 
	 particles = [P.sv2, P.se2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2449}) 
 
 
V_2438 = Vertex(name = 'V_2438', 
	 particles = [P.sv2, P.se3c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2450}) 
 
 
V_2439 = Vertex(name = 'V_2439', 
	 particles = [P.sv2, P.se4c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2451}) 
 
 
V_2440 = Vertex(name = 'V_2440', 
	 particles = [P.sv2, P.se5c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2452}) 
 
 
V_2441 = Vertex(name = 'V_2441', 
	 particles = [P.sv2, P.se6c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2453}) 
 
 
V_2442 = Vertex(name = 'V_2442', 
	 particles = [P.sv3, P.se1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2454}) 
 
 
V_2443 = Vertex(name = 'V_2443', 
	 particles = [P.sv3, P.se2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2455}) 
 
 
V_2444 = Vertex(name = 'V_2444', 
	 particles = [P.sv3, P.se3c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2456}) 
 
 
V_2445 = Vertex(name = 'V_2445', 
	 particles = [P.sv3, P.se4c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2457}) 
 
 
V_2446 = Vertex(name = 'V_2446', 
	 particles = [P.sv3, P.se5c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2458}) 
 
 
V_2447 = Vertex(name = 'V_2447', 
	 particles = [P.sv3, P.se6c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2459}) 
 
 
V_2448 = Vertex(name = 'V_2448', 
	 particles = [P.sv1, P.se1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2460}) 
 
 
V_2449 = Vertex(name = 'V_2449', 
	 particles = [P.sv1, P.se2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2461}) 
 
 
V_2450 = Vertex(name = 'V_2450', 
	 particles = [P.sv1, P.se3c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2462}) 
 
 
V_2451 = Vertex(name = 'V_2451', 
	 particles = [P.sv1, P.se4c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2463}) 
 
 
V_2452 = Vertex(name = 'V_2452', 
	 particles = [P.sv1, P.se5c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2464}) 
 
 
V_2453 = Vertex(name = 'V_2453', 
	 particles = [P.sv1, P.se6c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2465}) 
 
 
V_2454 = Vertex(name = 'V_2454', 
	 particles = [P.sv2, P.se1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2466}) 
 
 
V_2455 = Vertex(name = 'V_2455', 
	 particles = [P.sv2, P.se2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2467}) 
 
 
V_2456 = Vertex(name = 'V_2456', 
	 particles = [P.sv2, P.se3c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2468}) 
 
 
V_2457 = Vertex(name = 'V_2457', 
	 particles = [P.sv2, P.se4c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2469}) 
 
 
V_2458 = Vertex(name = 'V_2458', 
	 particles = [P.sv2, P.se5c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2470}) 
 
 
V_2459 = Vertex(name = 'V_2459', 
	 particles = [P.sv2, P.se6c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2471}) 
 
 
V_2460 = Vertex(name = 'V_2460', 
	 particles = [P.sv3, P.se1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2472}) 
 
 
V_2461 = Vertex(name = 'V_2461', 
	 particles = [P.sv3, P.se2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2473}) 
 
 
V_2462 = Vertex(name = 'V_2462', 
	 particles = [P.sv3, P.se3c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2474}) 
 
 
V_2463 = Vertex(name = 'V_2463', 
	 particles = [P.sv3, P.se4c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2475}) 
 
 
V_2464 = Vertex(name = 'V_2464', 
	 particles = [P.sv3, P.se5c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2476}) 
 
 
V_2465 = Vertex(name = 'V_2465', 
	 particles = [P.sv3, P.se6c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2477}) 
 
 
V_2466 = Vertex(name = 'V_2466', 
	 particles = [P.sv1, P.sv1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2478}) 
 
 
V_2467 = Vertex(name = 'V_2467', 
	 particles = [P.sv1, P.sv2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2479}) 
 
 
V_2468 = Vertex(name = 'V_2468', 
	 particles = [P.sv1, P.sv3c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2480}) 
 
 
V_2469 = Vertex(name = 'V_2469', 
	 particles = [P.sv2, P.sv1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2481}) 
 
 
V_2470 = Vertex(name = 'V_2470', 
	 particles = [P.sv2, P.sv2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2482}) 
 
 
V_2471 = Vertex(name = 'V_2471', 
	 particles = [P.sv2, P.sv3c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2483}) 
 
 
V_2472 = Vertex(name = 'V_2472', 
	 particles = [P.sv3, P.sv1c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2484}) 
 
 
V_2473 = Vertex(name = 'V_2473', 
	 particles = [P.sv3, P.sv2c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2485}) 
 
 
V_2474 = Vertex(name = 'V_2474', 
	 particles = [P.sv3, P.sv3c, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2486}) 
 
 
V_2475 = Vertex(name = 'V_2475', 
	 particles = [P.sv1, P.sv1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2487}) 
 
 
V_2476 = Vertex(name = 'V_2476', 
	 particles = [P.sv1, P.sv2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2488}) 
 
 
V_2477 = Vertex(name = 'V_2477', 
	 particles = [P.sv1, P.sv3c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2489}) 
 
 
V_2478 = Vertex(name = 'V_2478', 
	 particles = [P.sv2, P.sv1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2490}) 
 
 
V_2479 = Vertex(name = 'V_2479', 
	 particles = [P.sv2, P.sv2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2491}) 
 
 
V_2480 = Vertex(name = 'V_2480', 
	 particles = [P.sv2, P.sv3c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2492}) 
 
 
V_2481 = Vertex(name = 'V_2481', 
	 particles = [P.sv3, P.sv1c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2493}) 
 
 
V_2482 = Vertex(name = 'V_2482', 
	 particles = [P.sv3, P.sv2c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2494}) 
 
 
V_2483 = Vertex(name = 'V_2483', 
	 particles = [P.sv3, P.sv3c, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2495}) 
 
 
V_2484 = Vertex(name = 'V_2484', 
	 particles = [P.sv1, P.sv1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2496}) 
 
 
V_2485 = Vertex(name = 'V_2485', 
	 particles = [P.sv1, P.sv2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2497}) 
 
 
V_2486 = Vertex(name = 'V_2486', 
	 particles = [P.sv1, P.sv3c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2498}) 
 
 
V_2487 = Vertex(name = 'V_2487', 
	 particles = [P.sv2, P.sv1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2499}) 
 
 
V_2488 = Vertex(name = 'V_2488', 
	 particles = [P.sv2, P.sv2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2500}) 
 
 
V_2489 = Vertex(name = 'V_2489', 
	 particles = [P.sv2, P.sv3c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2501}) 
 
 
V_2490 = Vertex(name = 'V_2490', 
	 particles = [P.sv3, P.sv1c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2502}) 
 
 
V_2491 = Vertex(name = 'V_2491', 
	 particles = [P.sv3, P.sv2c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2503}) 
 
 
V_2492 = Vertex(name = 'V_2492', 
	 particles = [P.sv3, P.sv3c, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2504}) 
 
 
V_2493 = Vertex(name = 'V_2493', 
	 particles = [P.sv1, P.sv1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2505}) 
 
 
V_2494 = Vertex(name = 'V_2494', 
	 particles = [P.sv1, P.sv2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2506}) 
 
 
V_2495 = Vertex(name = 'V_2495', 
	 particles = [P.sv1, P.sv3c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2507}) 
 
 
V_2496 = Vertex(name = 'V_2496', 
	 particles = [P.sv2, P.sv1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2508}) 
 
 
V_2497 = Vertex(name = 'V_2497', 
	 particles = [P.sv2, P.sv2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2509}) 
 
 
V_2498 = Vertex(name = 'V_2498', 
	 particles = [P.sv2, P.sv3c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2510}) 
 
 
V_2499 = Vertex(name = 'V_2499', 
	 particles = [P.sv3, P.sv1c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2511}) 
 
 
V_2500 = Vertex(name = 'V_2500', 
	 particles = [P.sv3, P.sv2c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2512}) 
 
 
V_2501 = Vertex(name = 'V_2501', 
	 particles = [P.sv3, P.sv3c, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSVV1], 
	 couplings = {(0,0):C.GC_2513}) 
 
 
V_2502 = Vertex(name = 'V_2502', 
	 particles = [P.Ah1, P.h1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2514}) 
 
 
V_2503 = Vertex(name = 'V_2503', 
	 particles = [P.Ah1, P.h2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2515}) 
 
 
V_2504 = Vertex(name = 'V_2504', 
	 particles = [P.Ah1, P.h3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2516}) 
 
 
V_2505 = Vertex(name = 'V_2505', 
	 particles = [P.Ah2, P.h1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2517}) 
 
 
V_2506 = Vertex(name = 'V_2506', 
	 particles = [P.Ah2, P.h2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2518}) 
 
 
V_2507 = Vertex(name = 'V_2507', 
	 particles = [P.Ah2, P.h3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2519}) 
 
 
V_2508 = Vertex(name = 'V_2508', 
	 particles = [P.Ah3, P.h1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2520}) 
 
 
V_2509 = Vertex(name = 'V_2509', 
	 particles = [P.Ah3, P.h2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2521}) 
 
 
V_2510 = Vertex(name = 'V_2510', 
	 particles = [P.Ah3, P.h3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2522}) 
 
 
V_2511 = Vertex(name = 'V_2511', 
	 particles = [P.Ah1, P.h1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2523}) 
 
 
V_2512 = Vertex(name = 'V_2512', 
	 particles = [P.Ah1, P.h2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2524}) 
 
 
V_2513 = Vertex(name = 'V_2513', 
	 particles = [P.Ah1, P.h3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2525}) 
 
 
V_2514 = Vertex(name = 'V_2514', 
	 particles = [P.Ah2, P.h1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2526}) 
 
 
V_2515 = Vertex(name = 'V_2515', 
	 particles = [P.Ah2, P.h2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2527}) 
 
 
V_2516 = Vertex(name = 'V_2516', 
	 particles = [P.Ah2, P.h3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2528}) 
 
 
V_2517 = Vertex(name = 'V_2517', 
	 particles = [P.Ah3, P.h1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2529}) 
 
 
V_2518 = Vertex(name = 'V_2518', 
	 particles = [P.Ah3, P.h2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2530}) 
 
 
V_2519 = Vertex(name = 'V_2519', 
	 particles = [P.Ah3, P.h3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2531}) 
 
 
V_2520 = Vertex(name = 'V_2520', 
	 particles = [P.Ah1, P.Hm1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2532}) 
 
 
V_2521 = Vertex(name = 'V_2521', 
	 particles = [P.Ah1, P.Hm2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2533}) 
 
 
V_2522 = Vertex(name = 'V_2522', 
	 particles = [P.Ah2, P.Hm1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2534}) 
 
 
V_2523 = Vertex(name = 'V_2523', 
	 particles = [P.Ah2, P.Hm2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2535}) 
 
 
V_2524 = Vertex(name = 'V_2524', 
	 particles = [P.Ah3, P.Hm1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2536}) 
 
 
V_2525 = Vertex(name = 'V_2525', 
	 particles = [P.Ah3, P.Hm2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2537}) 
 
 
V_2526 = Vertex(name = 'V_2526', 
	 particles = [P.Ah1, P.Hm1c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2538}) 
 
 
V_2527 = Vertex(name = 'V_2527', 
	 particles = [P.Ah1, P.Hm2c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2539}) 
 
 
V_2528 = Vertex(name = 'V_2528', 
	 particles = [P.Ah2, P.Hm1c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2540}) 
 
 
V_2529 = Vertex(name = 'V_2529', 
	 particles = [P.Ah2, P.Hm2c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2541}) 
 
 
V_2530 = Vertex(name = 'V_2530', 
	 particles = [P.Ah3, P.Hm1c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2542}) 
 
 
V_2531 = Vertex(name = 'V_2531', 
	 particles = [P.Ah3, P.Hm2c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2543}) 
 
 
V_2532 = Vertex(name = 'V_2532', 
	 particles = [P.h1, P.Hm1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2544}) 
 
 
V_2533 = Vertex(name = 'V_2533', 
	 particles = [P.h1, P.Hm2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2545}) 
 
 
V_2534 = Vertex(name = 'V_2534', 
	 particles = [P.h2, P.Hm1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2546}) 
 
 
V_2535 = Vertex(name = 'V_2535', 
	 particles = [P.h2, P.Hm2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2547}) 
 
 
V_2536 = Vertex(name = 'V_2536', 
	 particles = [P.h3, P.Hm1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2548}) 
 
 
V_2537 = Vertex(name = 'V_2537', 
	 particles = [P.h3, P.Hm2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2549}) 
 
 
V_2538 = Vertex(name = 'V_2538', 
	 particles = [P.h1, P.Hm1c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2550}) 
 
 
V_2539 = Vertex(name = 'V_2539', 
	 particles = [P.h1, P.Hm2c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2551}) 
 
 
V_2540 = Vertex(name = 'V_2540', 
	 particles = [P.h2, P.Hm1c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2552}) 
 
 
V_2541 = Vertex(name = 'V_2541', 
	 particles = [P.h2, P.Hm2c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2553}) 
 
 
V_2542 = Vertex(name = 'V_2542', 
	 particles = [P.h3, P.Hm1c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2554}) 
 
 
V_2543 = Vertex(name = 'V_2543', 
	 particles = [P.h3, P.Hm2c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2555}) 
 
 
V_2544 = Vertex(name = 'V_2544', 
	 particles = [P.Hm1, P.Hm1c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2556}) 
 
 
V_2545 = Vertex(name = 'V_2545', 
	 particles = [P.Hm1, P.Hm2c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2557}) 
 
 
V_2546 = Vertex(name = 'V_2546', 
	 particles = [P.Hm2, P.Hm1c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2558}) 
 
 
V_2547 = Vertex(name = 'V_2547', 
	 particles = [P.Hm2, P.Hm2c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2559}) 
 
 
V_2548 = Vertex(name = 'V_2548', 
	 particles = [P.Hm1, P.Hm1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2560}) 
 
 
V_2549 = Vertex(name = 'V_2549', 
	 particles = [P.Hm1, P.Hm2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2561}) 
 
 
V_2550 = Vertex(name = 'V_2550', 
	 particles = [P.Hm2, P.Hm1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2562}) 
 
 
V_2551 = Vertex(name = 'V_2551', 
	 particles = [P.Hm2, P.Hm2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2563}) 
 
 
V_2552 = Vertex(name = 'V_2552', 
	 particles = [P.Hm1, P.Hm1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2564}) 
 
 
V_2553 = Vertex(name = 'V_2553', 
	 particles = [P.Hm1, P.Hm2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2565}) 
 
 
V_2554 = Vertex(name = 'V_2554', 
	 particles = [P.Hm2, P.Hm1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2566}) 
 
 
V_2555 = Vertex(name = 'V_2555', 
	 particles = [P.Hm2, P.Hm2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2567}) 
 
 
V_2556 = Vertex(name = 'V_2556', 
	 particles = [P.sd1, P.sd1c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2568}) 
 
 
V_2557 = Vertex(name = 'V_2557', 
	 particles = [P.sd2, P.sd2c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2569}) 
 
 
V_2558 = Vertex(name = 'V_2558', 
	 particles = [P.sd3, P.sd3c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2570}) 
 
 
V_2559 = Vertex(name = 'V_2559', 
	 particles = [P.sd4, P.sd4c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2571}) 
 
 
V_2560 = Vertex(name = 'V_2560', 
	 particles = [P.sd5, P.sd5c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2572}) 
 
 
V_2561 = Vertex(name = 'V_2561', 
	 particles = [P.sd6, P.sd6c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2573}) 
 
 
V_2562 = Vertex(name = 'V_2562', 
	 particles = [P.sd1, P.sd1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2574}) 
 
 
V_2563 = Vertex(name = 'V_2563', 
	 particles = [P.sd1, P.sd2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2575}) 
 
 
V_2564 = Vertex(name = 'V_2564', 
	 particles = [P.sd1, P.sd3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2576}) 
 
 
V_2565 = Vertex(name = 'V_2565', 
	 particles = [P.sd1, P.sd4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2577}) 
 
 
V_2566 = Vertex(name = 'V_2566', 
	 particles = [P.sd1, P.sd5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2578}) 
 
 
V_2567 = Vertex(name = 'V_2567', 
	 particles = [P.sd1, P.sd6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2579}) 
 
 
V_2568 = Vertex(name = 'V_2568', 
	 particles = [P.sd2, P.sd1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2580}) 
 
 
V_2569 = Vertex(name = 'V_2569', 
	 particles = [P.sd2, P.sd2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2581}) 
 
 
V_2570 = Vertex(name = 'V_2570', 
	 particles = [P.sd2, P.sd3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2582}) 
 
 
V_2571 = Vertex(name = 'V_2571', 
	 particles = [P.sd2, P.sd4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2583}) 
 
 
V_2572 = Vertex(name = 'V_2572', 
	 particles = [P.sd2, P.sd5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2584}) 
 
 
V_2573 = Vertex(name = 'V_2573', 
	 particles = [P.sd2, P.sd6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2585}) 
 
 
V_2574 = Vertex(name = 'V_2574', 
	 particles = [P.sd3, P.sd1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2586}) 
 
 
V_2575 = Vertex(name = 'V_2575', 
	 particles = [P.sd3, P.sd2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2587}) 
 
 
V_2576 = Vertex(name = 'V_2576', 
	 particles = [P.sd3, P.sd3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2588}) 
 
 
V_2577 = Vertex(name = 'V_2577', 
	 particles = [P.sd3, P.sd4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2589}) 
 
 
V_2578 = Vertex(name = 'V_2578', 
	 particles = [P.sd3, P.sd5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2590}) 
 
 
V_2579 = Vertex(name = 'V_2579', 
	 particles = [P.sd3, P.sd6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2591}) 
 
 
V_2580 = Vertex(name = 'V_2580', 
	 particles = [P.sd4, P.sd1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2592}) 
 
 
V_2581 = Vertex(name = 'V_2581', 
	 particles = [P.sd4, P.sd2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2593}) 
 
 
V_2582 = Vertex(name = 'V_2582', 
	 particles = [P.sd4, P.sd3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2594}) 
 
 
V_2583 = Vertex(name = 'V_2583', 
	 particles = [P.sd4, P.sd4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2595}) 
 
 
V_2584 = Vertex(name = 'V_2584', 
	 particles = [P.sd4, P.sd5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2596}) 
 
 
V_2585 = Vertex(name = 'V_2585', 
	 particles = [P.sd4, P.sd6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2597}) 
 
 
V_2586 = Vertex(name = 'V_2586', 
	 particles = [P.sd5, P.sd1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2598}) 
 
 
V_2587 = Vertex(name = 'V_2587', 
	 particles = [P.sd5, P.sd2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2599}) 
 
 
V_2588 = Vertex(name = 'V_2588', 
	 particles = [P.sd5, P.sd3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2600}) 
 
 
V_2589 = Vertex(name = 'V_2589', 
	 particles = [P.sd5, P.sd4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2601}) 
 
 
V_2590 = Vertex(name = 'V_2590', 
	 particles = [P.sd5, P.sd5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2602}) 
 
 
V_2591 = Vertex(name = 'V_2591', 
	 particles = [P.sd5, P.sd6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2603}) 
 
 
V_2592 = Vertex(name = 'V_2592', 
	 particles = [P.sd6, P.sd1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2604}) 
 
 
V_2593 = Vertex(name = 'V_2593', 
	 particles = [P.sd6, P.sd2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2605}) 
 
 
V_2594 = Vertex(name = 'V_2594', 
	 particles = [P.sd6, P.sd3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2606}) 
 
 
V_2595 = Vertex(name = 'V_2595', 
	 particles = [P.sd6, P.sd4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2607}) 
 
 
V_2596 = Vertex(name = 'V_2596', 
	 particles = [P.sd6, P.sd5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2608}) 
 
 
V_2597 = Vertex(name = 'V_2597', 
	 particles = [P.sd6, P.sd6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2609}) 
 
 
V_2598 = Vertex(name = 'V_2598', 
	 particles = [P.sd1, P.sd1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2610}) 
 
 
V_2599 = Vertex(name = 'V_2599', 
	 particles = [P.sd1, P.sd2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2611}) 
 
 
V_2600 = Vertex(name = 'V_2600', 
	 particles = [P.sd1, P.sd3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2612}) 
 
 
V_2601 = Vertex(name = 'V_2601', 
	 particles = [P.sd1, P.sd4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2613}) 
 
 
V_2602 = Vertex(name = 'V_2602', 
	 particles = [P.sd1, P.sd5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2614}) 
 
 
V_2603 = Vertex(name = 'V_2603', 
	 particles = [P.sd1, P.sd6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2615}) 
 
 
V_2604 = Vertex(name = 'V_2604', 
	 particles = [P.sd2, P.sd1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2616}) 
 
 
V_2605 = Vertex(name = 'V_2605', 
	 particles = [P.sd2, P.sd2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2617}) 
 
 
V_2606 = Vertex(name = 'V_2606', 
	 particles = [P.sd2, P.sd3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2618}) 
 
 
V_2607 = Vertex(name = 'V_2607', 
	 particles = [P.sd2, P.sd4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2619}) 
 
 
V_2608 = Vertex(name = 'V_2608', 
	 particles = [P.sd2, P.sd5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2620}) 
 
 
V_2609 = Vertex(name = 'V_2609', 
	 particles = [P.sd2, P.sd6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2621}) 
 
 
V_2610 = Vertex(name = 'V_2610', 
	 particles = [P.sd3, P.sd1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2622}) 
 
 
V_2611 = Vertex(name = 'V_2611', 
	 particles = [P.sd3, P.sd2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2623}) 
 
 
V_2612 = Vertex(name = 'V_2612', 
	 particles = [P.sd3, P.sd3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2624}) 
 
 
V_2613 = Vertex(name = 'V_2613', 
	 particles = [P.sd3, P.sd4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2625}) 
 
 
V_2614 = Vertex(name = 'V_2614', 
	 particles = [P.sd3, P.sd5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2626}) 
 
 
V_2615 = Vertex(name = 'V_2615', 
	 particles = [P.sd3, P.sd6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2627}) 
 
 
V_2616 = Vertex(name = 'V_2616', 
	 particles = [P.sd4, P.sd1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2628}) 
 
 
V_2617 = Vertex(name = 'V_2617', 
	 particles = [P.sd4, P.sd2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2629}) 
 
 
V_2618 = Vertex(name = 'V_2618', 
	 particles = [P.sd4, P.sd3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2630}) 
 
 
V_2619 = Vertex(name = 'V_2619', 
	 particles = [P.sd4, P.sd4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2631}) 
 
 
V_2620 = Vertex(name = 'V_2620', 
	 particles = [P.sd4, P.sd5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2632}) 
 
 
V_2621 = Vertex(name = 'V_2621', 
	 particles = [P.sd4, P.sd6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2633}) 
 
 
V_2622 = Vertex(name = 'V_2622', 
	 particles = [P.sd5, P.sd1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2634}) 
 
 
V_2623 = Vertex(name = 'V_2623', 
	 particles = [P.sd5, P.sd2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2635}) 
 
 
V_2624 = Vertex(name = 'V_2624', 
	 particles = [P.sd5, P.sd3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2636}) 
 
 
V_2625 = Vertex(name = 'V_2625', 
	 particles = [P.sd5, P.sd4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2637}) 
 
 
V_2626 = Vertex(name = 'V_2626', 
	 particles = [P.sd5, P.sd5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2638}) 
 
 
V_2627 = Vertex(name = 'V_2627', 
	 particles = [P.sd5, P.sd6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2639}) 
 
 
V_2628 = Vertex(name = 'V_2628', 
	 particles = [P.sd6, P.sd1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2640}) 
 
 
V_2629 = Vertex(name = 'V_2629', 
	 particles = [P.sd6, P.sd2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2641}) 
 
 
V_2630 = Vertex(name = 'V_2630', 
	 particles = [P.sd6, P.sd3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2642}) 
 
 
V_2631 = Vertex(name = 'V_2631', 
	 particles = [P.sd6, P.sd4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2643}) 
 
 
V_2632 = Vertex(name = 'V_2632', 
	 particles = [P.sd6, P.sd5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2644}) 
 
 
V_2633 = Vertex(name = 'V_2633', 
	 particles = [P.sd6, P.sd6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2645}) 
 
 
V_2634 = Vertex(name = 'V_2634', 
	 particles = [P.sd1, P.sd1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2646}) 
 
 
V_2635 = Vertex(name = 'V_2635', 
	 particles = [P.sd1, P.sd2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2647}) 
 
 
V_2636 = Vertex(name = 'V_2636', 
	 particles = [P.sd1, P.sd3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2648}) 
 
 
V_2637 = Vertex(name = 'V_2637', 
	 particles = [P.sd1, P.sd4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2649}) 
 
 
V_2638 = Vertex(name = 'V_2638', 
	 particles = [P.sd1, P.sd5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2650}) 
 
 
V_2639 = Vertex(name = 'V_2639', 
	 particles = [P.sd1, P.sd6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2651}) 
 
 
V_2640 = Vertex(name = 'V_2640', 
	 particles = [P.sd2, P.sd1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2652}) 
 
 
V_2641 = Vertex(name = 'V_2641', 
	 particles = [P.sd2, P.sd2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2653}) 
 
 
V_2642 = Vertex(name = 'V_2642', 
	 particles = [P.sd2, P.sd3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2654}) 
 
 
V_2643 = Vertex(name = 'V_2643', 
	 particles = [P.sd2, P.sd4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2655}) 
 
 
V_2644 = Vertex(name = 'V_2644', 
	 particles = [P.sd2, P.sd5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2656}) 
 
 
V_2645 = Vertex(name = 'V_2645', 
	 particles = [P.sd2, P.sd6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2657}) 
 
 
V_2646 = Vertex(name = 'V_2646', 
	 particles = [P.sd3, P.sd1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2658}) 
 
 
V_2647 = Vertex(name = 'V_2647', 
	 particles = [P.sd3, P.sd2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2659}) 
 
 
V_2648 = Vertex(name = 'V_2648', 
	 particles = [P.sd3, P.sd3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2660}) 
 
 
V_2649 = Vertex(name = 'V_2649', 
	 particles = [P.sd3, P.sd4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2661}) 
 
 
V_2650 = Vertex(name = 'V_2650', 
	 particles = [P.sd3, P.sd5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2662}) 
 
 
V_2651 = Vertex(name = 'V_2651', 
	 particles = [P.sd3, P.sd6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2663}) 
 
 
V_2652 = Vertex(name = 'V_2652', 
	 particles = [P.sd4, P.sd1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2664}) 
 
 
V_2653 = Vertex(name = 'V_2653', 
	 particles = [P.sd4, P.sd2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2665}) 
 
 
V_2654 = Vertex(name = 'V_2654', 
	 particles = [P.sd4, P.sd3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2666}) 
 
 
V_2655 = Vertex(name = 'V_2655', 
	 particles = [P.sd4, P.sd4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2667}) 
 
 
V_2656 = Vertex(name = 'V_2656', 
	 particles = [P.sd4, P.sd5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2668}) 
 
 
V_2657 = Vertex(name = 'V_2657', 
	 particles = [P.sd4, P.sd6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2669}) 
 
 
V_2658 = Vertex(name = 'V_2658', 
	 particles = [P.sd5, P.sd1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2670}) 
 
 
V_2659 = Vertex(name = 'V_2659', 
	 particles = [P.sd5, P.sd2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2671}) 
 
 
V_2660 = Vertex(name = 'V_2660', 
	 particles = [P.sd5, P.sd3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2672}) 
 
 
V_2661 = Vertex(name = 'V_2661', 
	 particles = [P.sd5, P.sd4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2673}) 
 
 
V_2662 = Vertex(name = 'V_2662', 
	 particles = [P.sd5, P.sd5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2674}) 
 
 
V_2663 = Vertex(name = 'V_2663', 
	 particles = [P.sd5, P.sd6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2675}) 
 
 
V_2664 = Vertex(name = 'V_2664', 
	 particles = [P.sd6, P.sd1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2676}) 
 
 
V_2665 = Vertex(name = 'V_2665', 
	 particles = [P.sd6, P.sd2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2677}) 
 
 
V_2666 = Vertex(name = 'V_2666', 
	 particles = [P.sd6, P.sd3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2678}) 
 
 
V_2667 = Vertex(name = 'V_2667', 
	 particles = [P.sd6, P.sd4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2679}) 
 
 
V_2668 = Vertex(name = 'V_2668', 
	 particles = [P.sd6, P.sd5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2680}) 
 
 
V_2669 = Vertex(name = 'V_2669', 
	 particles = [P.sd6, P.sd6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2681}) 
 
 
V_2670 = Vertex(name = 'V_2670', 
	 particles = [P.sd1, P.su1c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2682}) 
 
 
V_2671 = Vertex(name = 'V_2671', 
	 particles = [P.sd1, P.su2c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2683}) 
 
 
V_2672 = Vertex(name = 'V_2672', 
	 particles = [P.sd1, P.su3c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2684}) 
 
 
V_2673 = Vertex(name = 'V_2673', 
	 particles = [P.sd1, P.su4c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2685}) 
 
 
V_2674 = Vertex(name = 'V_2674', 
	 particles = [P.sd1, P.su5c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2686}) 
 
 
V_2675 = Vertex(name = 'V_2675', 
	 particles = [P.sd1, P.su6c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2687}) 
 
 
V_2676 = Vertex(name = 'V_2676', 
	 particles = [P.sd2, P.su1c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2688}) 
 
 
V_2677 = Vertex(name = 'V_2677', 
	 particles = [P.sd2, P.su2c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2689}) 
 
 
V_2678 = Vertex(name = 'V_2678', 
	 particles = [P.sd2, P.su3c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2690}) 
 
 
V_2679 = Vertex(name = 'V_2679', 
	 particles = [P.sd2, P.su4c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2691}) 
 
 
V_2680 = Vertex(name = 'V_2680', 
	 particles = [P.sd2, P.su5c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2692}) 
 
 
V_2681 = Vertex(name = 'V_2681', 
	 particles = [P.sd2, P.su6c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2693}) 
 
 
V_2682 = Vertex(name = 'V_2682', 
	 particles = [P.sd3, P.su1c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2694}) 
 
 
V_2683 = Vertex(name = 'V_2683', 
	 particles = [P.sd3, P.su2c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2695}) 
 
 
V_2684 = Vertex(name = 'V_2684', 
	 particles = [P.sd3, P.su3c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2696}) 
 
 
V_2685 = Vertex(name = 'V_2685', 
	 particles = [P.sd3, P.su4c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2697}) 
 
 
V_2686 = Vertex(name = 'V_2686', 
	 particles = [P.sd3, P.su5c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2698}) 
 
 
V_2687 = Vertex(name = 'V_2687', 
	 particles = [P.sd3, P.su6c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2699}) 
 
 
V_2688 = Vertex(name = 'V_2688', 
	 particles = [P.sd4, P.su1c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2700}) 
 
 
V_2689 = Vertex(name = 'V_2689', 
	 particles = [P.sd4, P.su2c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2701}) 
 
 
V_2690 = Vertex(name = 'V_2690', 
	 particles = [P.sd4, P.su3c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2702}) 
 
 
V_2691 = Vertex(name = 'V_2691', 
	 particles = [P.sd4, P.su4c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2703}) 
 
 
V_2692 = Vertex(name = 'V_2692', 
	 particles = [P.sd4, P.su5c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2704}) 
 
 
V_2693 = Vertex(name = 'V_2693', 
	 particles = [P.sd4, P.su6c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2705}) 
 
 
V_2694 = Vertex(name = 'V_2694', 
	 particles = [P.sd5, P.su1c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2706}) 
 
 
V_2695 = Vertex(name = 'V_2695', 
	 particles = [P.sd5, P.su2c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2707}) 
 
 
V_2696 = Vertex(name = 'V_2696', 
	 particles = [P.sd5, P.su3c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2708}) 
 
 
V_2697 = Vertex(name = 'V_2697', 
	 particles = [P.sd5, P.su4c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2709}) 
 
 
V_2698 = Vertex(name = 'V_2698', 
	 particles = [P.sd5, P.su5c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2710}) 
 
 
V_2699 = Vertex(name = 'V_2699', 
	 particles = [P.sd5, P.su6c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2711}) 
 
 
V_2700 = Vertex(name = 'V_2700', 
	 particles = [P.sd6, P.su1c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2712}) 
 
 
V_2701 = Vertex(name = 'V_2701', 
	 particles = [P.sd6, P.su2c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2713}) 
 
 
V_2702 = Vertex(name = 'V_2702', 
	 particles = [P.sd6, P.su3c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2714}) 
 
 
V_2703 = Vertex(name = 'V_2703', 
	 particles = [P.sd6, P.su4c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2715}) 
 
 
V_2704 = Vertex(name = 'V_2704', 
	 particles = [P.sd6, P.su5c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2716}) 
 
 
V_2705 = Vertex(name = 'V_2705', 
	 particles = [P.sd6, P.su6c, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2717}) 
 
 
V_2706 = Vertex(name = 'V_2706', 
	 particles = [P.se1, P.se1c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2718}) 
 
 
V_2707 = Vertex(name = 'V_2707', 
	 particles = [P.se1, P.se2c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2719}) 
 
 
V_2708 = Vertex(name = 'V_2708', 
	 particles = [P.se1, P.se3c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2720}) 
 
 
V_2709 = Vertex(name = 'V_2709', 
	 particles = [P.se1, P.se4c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2721}) 
 
 
V_2710 = Vertex(name = 'V_2710', 
	 particles = [P.se1, P.se5c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2722}) 
 
 
V_2711 = Vertex(name = 'V_2711', 
	 particles = [P.se1, P.se6c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2723}) 
 
 
V_2712 = Vertex(name = 'V_2712', 
	 particles = [P.se2, P.se1c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2724}) 
 
 
V_2713 = Vertex(name = 'V_2713', 
	 particles = [P.se2, P.se2c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2725}) 
 
 
V_2714 = Vertex(name = 'V_2714', 
	 particles = [P.se2, P.se3c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2726}) 
 
 
V_2715 = Vertex(name = 'V_2715', 
	 particles = [P.se2, P.se4c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2727}) 
 
 
V_2716 = Vertex(name = 'V_2716', 
	 particles = [P.se2, P.se5c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2728}) 
 
 
V_2717 = Vertex(name = 'V_2717', 
	 particles = [P.se2, P.se6c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2729}) 
 
 
V_2718 = Vertex(name = 'V_2718', 
	 particles = [P.se3, P.se1c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2730}) 
 
 
V_2719 = Vertex(name = 'V_2719', 
	 particles = [P.se3, P.se2c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2731}) 
 
 
V_2720 = Vertex(name = 'V_2720', 
	 particles = [P.se3, P.se3c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2732}) 
 
 
V_2721 = Vertex(name = 'V_2721', 
	 particles = [P.se3, P.se4c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2733}) 
 
 
V_2722 = Vertex(name = 'V_2722', 
	 particles = [P.se3, P.se5c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2734}) 
 
 
V_2723 = Vertex(name = 'V_2723', 
	 particles = [P.se3, P.se6c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2735}) 
 
 
V_2724 = Vertex(name = 'V_2724', 
	 particles = [P.se4, P.se1c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2736}) 
 
 
V_2725 = Vertex(name = 'V_2725', 
	 particles = [P.se4, P.se2c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2737}) 
 
 
V_2726 = Vertex(name = 'V_2726', 
	 particles = [P.se4, P.se3c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2738}) 
 
 
V_2727 = Vertex(name = 'V_2727', 
	 particles = [P.se4, P.se4c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2739}) 
 
 
V_2728 = Vertex(name = 'V_2728', 
	 particles = [P.se4, P.se5c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2740}) 
 
 
V_2729 = Vertex(name = 'V_2729', 
	 particles = [P.se4, P.se6c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2741}) 
 
 
V_2730 = Vertex(name = 'V_2730', 
	 particles = [P.se5, P.se1c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2742}) 
 
 
V_2731 = Vertex(name = 'V_2731', 
	 particles = [P.se5, P.se2c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2743}) 
 
 
V_2732 = Vertex(name = 'V_2732', 
	 particles = [P.se5, P.se3c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2744}) 
 
 
V_2733 = Vertex(name = 'V_2733', 
	 particles = [P.se5, P.se4c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2745}) 
 
 
V_2734 = Vertex(name = 'V_2734', 
	 particles = [P.se5, P.se5c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2746}) 
 
 
V_2735 = Vertex(name = 'V_2735', 
	 particles = [P.se5, P.se6c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2747}) 
 
 
V_2736 = Vertex(name = 'V_2736', 
	 particles = [P.se6, P.se1c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2748}) 
 
 
V_2737 = Vertex(name = 'V_2737', 
	 particles = [P.se6, P.se2c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2749}) 
 
 
V_2738 = Vertex(name = 'V_2738', 
	 particles = [P.se6, P.se3c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2750}) 
 
 
V_2739 = Vertex(name = 'V_2739', 
	 particles = [P.se6, P.se4c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2751}) 
 
 
V_2740 = Vertex(name = 'V_2740', 
	 particles = [P.se6, P.se5c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2752}) 
 
 
V_2741 = Vertex(name = 'V_2741', 
	 particles = [P.se6, P.se6c, P.A], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2753}) 
 
 
V_2742 = Vertex(name = 'V_2742', 
	 particles = [P.se1, P.se1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2754}) 
 
 
V_2743 = Vertex(name = 'V_2743', 
	 particles = [P.se1, P.se2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2755}) 
 
 
V_2744 = Vertex(name = 'V_2744', 
	 particles = [P.se1, P.se3c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2756}) 
 
 
V_2745 = Vertex(name = 'V_2745', 
	 particles = [P.se1, P.se4c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2757}) 
 
 
V_2746 = Vertex(name = 'V_2746', 
	 particles = [P.se1, P.se5c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2758}) 
 
 
V_2747 = Vertex(name = 'V_2747', 
	 particles = [P.se1, P.se6c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2759}) 
 
 
V_2748 = Vertex(name = 'V_2748', 
	 particles = [P.se2, P.se1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2760}) 
 
 
V_2749 = Vertex(name = 'V_2749', 
	 particles = [P.se2, P.se2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2761}) 
 
 
V_2750 = Vertex(name = 'V_2750', 
	 particles = [P.se2, P.se3c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2762}) 
 
 
V_2751 = Vertex(name = 'V_2751', 
	 particles = [P.se2, P.se4c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2763}) 
 
 
V_2752 = Vertex(name = 'V_2752', 
	 particles = [P.se2, P.se5c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2764}) 
 
 
V_2753 = Vertex(name = 'V_2753', 
	 particles = [P.se2, P.se6c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2765}) 
 
 
V_2754 = Vertex(name = 'V_2754', 
	 particles = [P.se3, P.se1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2766}) 
 
 
V_2755 = Vertex(name = 'V_2755', 
	 particles = [P.se3, P.se2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2767}) 
 
 
V_2756 = Vertex(name = 'V_2756', 
	 particles = [P.se3, P.se3c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2768}) 
 
 
V_2757 = Vertex(name = 'V_2757', 
	 particles = [P.se3, P.se4c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2769}) 
 
 
V_2758 = Vertex(name = 'V_2758', 
	 particles = [P.se3, P.se5c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2770}) 
 
 
V_2759 = Vertex(name = 'V_2759', 
	 particles = [P.se3, P.se6c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2771}) 
 
 
V_2760 = Vertex(name = 'V_2760', 
	 particles = [P.se4, P.se1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2772}) 
 
 
V_2761 = Vertex(name = 'V_2761', 
	 particles = [P.se4, P.se2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2773}) 
 
 
V_2762 = Vertex(name = 'V_2762', 
	 particles = [P.se4, P.se3c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2774}) 
 
 
V_2763 = Vertex(name = 'V_2763', 
	 particles = [P.se4, P.se4c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2775}) 
 
 
V_2764 = Vertex(name = 'V_2764', 
	 particles = [P.se4, P.se5c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2776}) 
 
 
V_2765 = Vertex(name = 'V_2765', 
	 particles = [P.se4, P.se6c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2777}) 
 
 
V_2766 = Vertex(name = 'V_2766', 
	 particles = [P.se5, P.se1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2778}) 
 
 
V_2767 = Vertex(name = 'V_2767', 
	 particles = [P.se5, P.se2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2779}) 
 
 
V_2768 = Vertex(name = 'V_2768', 
	 particles = [P.se5, P.se3c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2780}) 
 
 
V_2769 = Vertex(name = 'V_2769', 
	 particles = [P.se5, P.se4c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2781}) 
 
 
V_2770 = Vertex(name = 'V_2770', 
	 particles = [P.se5, P.se5c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2782}) 
 
 
V_2771 = Vertex(name = 'V_2771', 
	 particles = [P.se5, P.se6c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2783}) 
 
 
V_2772 = Vertex(name = 'V_2772', 
	 particles = [P.se6, P.se1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2784}) 
 
 
V_2773 = Vertex(name = 'V_2773', 
	 particles = [P.se6, P.se2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2785}) 
 
 
V_2774 = Vertex(name = 'V_2774', 
	 particles = [P.se6, P.se3c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2786}) 
 
 
V_2775 = Vertex(name = 'V_2775', 
	 particles = [P.se6, P.se4c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2787}) 
 
 
V_2776 = Vertex(name = 'V_2776', 
	 particles = [P.se6, P.se5c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2788}) 
 
 
V_2777 = Vertex(name = 'V_2777', 
	 particles = [P.se6, P.se6c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2789}) 
 
 
V_2778 = Vertex(name = 'V_2778', 
	 particles = [P.se1, P.se1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2790}) 
 
 
V_2779 = Vertex(name = 'V_2779', 
	 particles = [P.se1, P.se2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2791}) 
 
 
V_2780 = Vertex(name = 'V_2780', 
	 particles = [P.se1, P.se3c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2792}) 
 
 
V_2781 = Vertex(name = 'V_2781', 
	 particles = [P.se1, P.se4c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2793}) 
 
 
V_2782 = Vertex(name = 'V_2782', 
	 particles = [P.se1, P.se5c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2794}) 
 
 
V_2783 = Vertex(name = 'V_2783', 
	 particles = [P.se1, P.se6c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2795}) 
 
 
V_2784 = Vertex(name = 'V_2784', 
	 particles = [P.se2, P.se1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2796}) 
 
 
V_2785 = Vertex(name = 'V_2785', 
	 particles = [P.se2, P.se2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2797}) 
 
 
V_2786 = Vertex(name = 'V_2786', 
	 particles = [P.se2, P.se3c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2798}) 
 
 
V_2787 = Vertex(name = 'V_2787', 
	 particles = [P.se2, P.se4c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2799}) 
 
 
V_2788 = Vertex(name = 'V_2788', 
	 particles = [P.se2, P.se5c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2800}) 
 
 
V_2789 = Vertex(name = 'V_2789', 
	 particles = [P.se2, P.se6c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2801}) 
 
 
V_2790 = Vertex(name = 'V_2790', 
	 particles = [P.se3, P.se1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2802}) 
 
 
V_2791 = Vertex(name = 'V_2791', 
	 particles = [P.se3, P.se2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2803}) 
 
 
V_2792 = Vertex(name = 'V_2792', 
	 particles = [P.se3, P.se3c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2804}) 
 
 
V_2793 = Vertex(name = 'V_2793', 
	 particles = [P.se3, P.se4c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2805}) 
 
 
V_2794 = Vertex(name = 'V_2794', 
	 particles = [P.se3, P.se5c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2806}) 
 
 
V_2795 = Vertex(name = 'V_2795', 
	 particles = [P.se3, P.se6c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2807}) 
 
 
V_2796 = Vertex(name = 'V_2796', 
	 particles = [P.se4, P.se1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2808}) 
 
 
V_2797 = Vertex(name = 'V_2797', 
	 particles = [P.se4, P.se2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2809}) 
 
 
V_2798 = Vertex(name = 'V_2798', 
	 particles = [P.se4, P.se3c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2810}) 
 
 
V_2799 = Vertex(name = 'V_2799', 
	 particles = [P.se4, P.se4c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2811}) 
 
 
V_2800 = Vertex(name = 'V_2800', 
	 particles = [P.se4, P.se5c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2812}) 
 
 
V_2801 = Vertex(name = 'V_2801', 
	 particles = [P.se4, P.se6c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2813}) 
 
 
V_2802 = Vertex(name = 'V_2802', 
	 particles = [P.se5, P.se1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2814}) 
 
 
V_2803 = Vertex(name = 'V_2803', 
	 particles = [P.se5, P.se2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2815}) 
 
 
V_2804 = Vertex(name = 'V_2804', 
	 particles = [P.se5, P.se3c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2816}) 
 
 
V_2805 = Vertex(name = 'V_2805', 
	 particles = [P.se5, P.se4c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2817}) 
 
 
V_2806 = Vertex(name = 'V_2806', 
	 particles = [P.se5, P.se5c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2818}) 
 
 
V_2807 = Vertex(name = 'V_2807', 
	 particles = [P.se5, P.se6c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2819}) 
 
 
V_2808 = Vertex(name = 'V_2808', 
	 particles = [P.se6, P.se1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2820}) 
 
 
V_2809 = Vertex(name = 'V_2809', 
	 particles = [P.se6, P.se2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2821}) 
 
 
V_2810 = Vertex(name = 'V_2810', 
	 particles = [P.se6, P.se3c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2822}) 
 
 
V_2811 = Vertex(name = 'V_2811', 
	 particles = [P.se6, P.se4c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2823}) 
 
 
V_2812 = Vertex(name = 'V_2812', 
	 particles = [P.se6, P.se5c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2824}) 
 
 
V_2813 = Vertex(name = 'V_2813', 
	 particles = [P.se6, P.se6c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2825}) 
 
 
V_2814 = Vertex(name = 'V_2814', 
	 particles = [P.se1, P.sv1c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2826}) 
 
 
V_2815 = Vertex(name = 'V_2815', 
	 particles = [P.se1, P.sv2c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2827}) 
 
 
V_2816 = Vertex(name = 'V_2816', 
	 particles = [P.se1, P.sv3c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2828}) 
 
 
V_2817 = Vertex(name = 'V_2817', 
	 particles = [P.se2, P.sv1c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2829}) 
 
 
V_2818 = Vertex(name = 'V_2818', 
	 particles = [P.se2, P.sv2c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2830}) 
 
 
V_2819 = Vertex(name = 'V_2819', 
	 particles = [P.se2, P.sv3c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2831}) 
 
 
V_2820 = Vertex(name = 'V_2820', 
	 particles = [P.se3, P.sv1c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2832}) 
 
 
V_2821 = Vertex(name = 'V_2821', 
	 particles = [P.se3, P.sv2c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2833}) 
 
 
V_2822 = Vertex(name = 'V_2822', 
	 particles = [P.se3, P.sv3c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2834}) 
 
 
V_2823 = Vertex(name = 'V_2823', 
	 particles = [P.se4, P.sv1c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2835}) 
 
 
V_2824 = Vertex(name = 'V_2824', 
	 particles = [P.se4, P.sv2c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2836}) 
 
 
V_2825 = Vertex(name = 'V_2825', 
	 particles = [P.se4, P.sv3c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2837}) 
 
 
V_2826 = Vertex(name = 'V_2826', 
	 particles = [P.se5, P.sv1c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2838}) 
 
 
V_2827 = Vertex(name = 'V_2827', 
	 particles = [P.se5, P.sv2c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2839}) 
 
 
V_2828 = Vertex(name = 'V_2828', 
	 particles = [P.se5, P.sv3c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2840}) 
 
 
V_2829 = Vertex(name = 'V_2829', 
	 particles = [P.se6, P.sv1c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2841}) 
 
 
V_2830 = Vertex(name = 'V_2830', 
	 particles = [P.se6, P.sv2c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2842}) 
 
 
V_2831 = Vertex(name = 'V_2831', 
	 particles = [P.se6, P.sv3c, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2843}) 
 
 
V_2832 = Vertex(name = 'V_2832', 
	 particles = [P.su1, P.su1c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2844}) 
 
 
V_2833 = Vertex(name = 'V_2833', 
	 particles = [P.su2, P.su2c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2845}) 
 
 
V_2834 = Vertex(name = 'V_2834', 
	 particles = [P.su3, P.su3c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2846}) 
 
 
V_2835 = Vertex(name = 'V_2835', 
	 particles = [P.su4, P.su4c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2847}) 
 
 
V_2836 = Vertex(name = 'V_2836', 
	 particles = [P.su5, P.su5c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2848}) 
 
 
V_2837 = Vertex(name = 'V_2837', 
	 particles = [P.su6, P.su6c, P.g], 
	 color = ['T(3,1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2849}) 
 
 
V_2838 = Vertex(name = 'V_2838', 
	 particles = [P.su1, P.su1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2850}) 
 
 
V_2839 = Vertex(name = 'V_2839', 
	 particles = [P.su1, P.su2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2851}) 
 
 
V_2840 = Vertex(name = 'V_2840', 
	 particles = [P.su1, P.su3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2852}) 
 
 
V_2841 = Vertex(name = 'V_2841', 
	 particles = [P.su1, P.su4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2853}) 
 
 
V_2842 = Vertex(name = 'V_2842', 
	 particles = [P.su1, P.su5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2854}) 
 
 
V_2843 = Vertex(name = 'V_2843', 
	 particles = [P.su1, P.su6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2855}) 
 
 
V_2844 = Vertex(name = 'V_2844', 
	 particles = [P.su2, P.su1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2856}) 
 
 
V_2845 = Vertex(name = 'V_2845', 
	 particles = [P.su2, P.su2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2857}) 
 
 
V_2846 = Vertex(name = 'V_2846', 
	 particles = [P.su2, P.su3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2858}) 
 
 
V_2847 = Vertex(name = 'V_2847', 
	 particles = [P.su2, P.su4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2859}) 
 
 
V_2848 = Vertex(name = 'V_2848', 
	 particles = [P.su2, P.su5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2860}) 
 
 
V_2849 = Vertex(name = 'V_2849', 
	 particles = [P.su2, P.su6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2861}) 
 
 
V_2850 = Vertex(name = 'V_2850', 
	 particles = [P.su3, P.su1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2862}) 
 
 
V_2851 = Vertex(name = 'V_2851', 
	 particles = [P.su3, P.su2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2863}) 
 
 
V_2852 = Vertex(name = 'V_2852', 
	 particles = [P.su3, P.su3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2864}) 
 
 
V_2853 = Vertex(name = 'V_2853', 
	 particles = [P.su3, P.su4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2865}) 
 
 
V_2854 = Vertex(name = 'V_2854', 
	 particles = [P.su3, P.su5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2866}) 
 
 
V_2855 = Vertex(name = 'V_2855', 
	 particles = [P.su3, P.su6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2867}) 
 
 
V_2856 = Vertex(name = 'V_2856', 
	 particles = [P.su4, P.su1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2868}) 
 
 
V_2857 = Vertex(name = 'V_2857', 
	 particles = [P.su4, P.su2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2869}) 
 
 
V_2858 = Vertex(name = 'V_2858', 
	 particles = [P.su4, P.su3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2870}) 
 
 
V_2859 = Vertex(name = 'V_2859', 
	 particles = [P.su4, P.su4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2871}) 
 
 
V_2860 = Vertex(name = 'V_2860', 
	 particles = [P.su4, P.su5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2872}) 
 
 
V_2861 = Vertex(name = 'V_2861', 
	 particles = [P.su4, P.su6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2873}) 
 
 
V_2862 = Vertex(name = 'V_2862', 
	 particles = [P.su5, P.su1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2874}) 
 
 
V_2863 = Vertex(name = 'V_2863', 
	 particles = [P.su5, P.su2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2875}) 
 
 
V_2864 = Vertex(name = 'V_2864', 
	 particles = [P.su5, P.su3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2876}) 
 
 
V_2865 = Vertex(name = 'V_2865', 
	 particles = [P.su5, P.su4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2877}) 
 
 
V_2866 = Vertex(name = 'V_2866', 
	 particles = [P.su5, P.su5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2878}) 
 
 
V_2867 = Vertex(name = 'V_2867', 
	 particles = [P.su5, P.su6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2879}) 
 
 
V_2868 = Vertex(name = 'V_2868', 
	 particles = [P.su6, P.su1c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2880}) 
 
 
V_2869 = Vertex(name = 'V_2869', 
	 particles = [P.su6, P.su2c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2881}) 
 
 
V_2870 = Vertex(name = 'V_2870', 
	 particles = [P.su6, P.su3c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2882}) 
 
 
V_2871 = Vertex(name = 'V_2871', 
	 particles = [P.su6, P.su4c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2883}) 
 
 
V_2872 = Vertex(name = 'V_2872', 
	 particles = [P.su6, P.su5c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2884}) 
 
 
V_2873 = Vertex(name = 'V_2873', 
	 particles = [P.su6, P.su6c, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2885}) 
 
 
V_2874 = Vertex(name = 'V_2874', 
	 particles = [P.su1, P.sd1c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2886}) 
 
 
V_2875 = Vertex(name = 'V_2875', 
	 particles = [P.su1, P.sd2c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2887}) 
 
 
V_2876 = Vertex(name = 'V_2876', 
	 particles = [P.su1, P.sd3c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2888}) 
 
 
V_2877 = Vertex(name = 'V_2877', 
	 particles = [P.su1, P.sd4c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2889}) 
 
 
V_2878 = Vertex(name = 'V_2878', 
	 particles = [P.su1, P.sd5c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2890}) 
 
 
V_2879 = Vertex(name = 'V_2879', 
	 particles = [P.su1, P.sd6c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2891}) 
 
 
V_2880 = Vertex(name = 'V_2880', 
	 particles = [P.su2, P.sd1c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2892}) 
 
 
V_2881 = Vertex(name = 'V_2881', 
	 particles = [P.su2, P.sd2c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2893}) 
 
 
V_2882 = Vertex(name = 'V_2882', 
	 particles = [P.su2, P.sd3c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2894}) 
 
 
V_2883 = Vertex(name = 'V_2883', 
	 particles = [P.su2, P.sd4c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2895}) 
 
 
V_2884 = Vertex(name = 'V_2884', 
	 particles = [P.su2, P.sd5c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2896}) 
 
 
V_2885 = Vertex(name = 'V_2885', 
	 particles = [P.su2, P.sd6c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2897}) 
 
 
V_2886 = Vertex(name = 'V_2886', 
	 particles = [P.su3, P.sd1c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2898}) 
 
 
V_2887 = Vertex(name = 'V_2887', 
	 particles = [P.su3, P.sd2c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2899}) 
 
 
V_2888 = Vertex(name = 'V_2888', 
	 particles = [P.su3, P.sd3c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2900}) 
 
 
V_2889 = Vertex(name = 'V_2889', 
	 particles = [P.su3, P.sd4c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2901}) 
 
 
V_2890 = Vertex(name = 'V_2890', 
	 particles = [P.su3, P.sd5c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2902}) 
 
 
V_2891 = Vertex(name = 'V_2891', 
	 particles = [P.su3, P.sd6c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2903}) 
 
 
V_2892 = Vertex(name = 'V_2892', 
	 particles = [P.su4, P.sd1c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2904}) 
 
 
V_2893 = Vertex(name = 'V_2893', 
	 particles = [P.su4, P.sd2c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2905}) 
 
 
V_2894 = Vertex(name = 'V_2894', 
	 particles = [P.su4, P.sd3c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2906}) 
 
 
V_2895 = Vertex(name = 'V_2895', 
	 particles = [P.su4, P.sd4c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2907}) 
 
 
V_2896 = Vertex(name = 'V_2896', 
	 particles = [P.su4, P.sd5c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2908}) 
 
 
V_2897 = Vertex(name = 'V_2897', 
	 particles = [P.su4, P.sd6c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2909}) 
 
 
V_2898 = Vertex(name = 'V_2898', 
	 particles = [P.su5, P.sd1c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2910}) 
 
 
V_2899 = Vertex(name = 'V_2899', 
	 particles = [P.su5, P.sd2c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2911}) 
 
 
V_2900 = Vertex(name = 'V_2900', 
	 particles = [P.su5, P.sd3c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2912}) 
 
 
V_2901 = Vertex(name = 'V_2901', 
	 particles = [P.su5, P.sd4c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2913}) 
 
 
V_2902 = Vertex(name = 'V_2902', 
	 particles = [P.su5, P.sd5c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2914}) 
 
 
V_2903 = Vertex(name = 'V_2903', 
	 particles = [P.su5, P.sd6c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2915}) 
 
 
V_2904 = Vertex(name = 'V_2904', 
	 particles = [P.su6, P.sd1c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2916}) 
 
 
V_2905 = Vertex(name = 'V_2905', 
	 particles = [P.su6, P.sd2c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2917}) 
 
 
V_2906 = Vertex(name = 'V_2906', 
	 particles = [P.su6, P.sd3c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2918}) 
 
 
V_2907 = Vertex(name = 'V_2907', 
	 particles = [P.su6, P.sd4c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2919}) 
 
 
V_2908 = Vertex(name = 'V_2908', 
	 particles = [P.su6, P.sd5c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2920}) 
 
 
V_2909 = Vertex(name = 'V_2909', 
	 particles = [P.su6, P.sd6c, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2921}) 
 
 
V_2910 = Vertex(name = 'V_2910', 
	 particles = [P.su1, P.su1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2922}) 
 
 
V_2911 = Vertex(name = 'V_2911', 
	 particles = [P.su1, P.su2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2923}) 
 
 
V_2912 = Vertex(name = 'V_2912', 
	 particles = [P.su1, P.su3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2924}) 
 
 
V_2913 = Vertex(name = 'V_2913', 
	 particles = [P.su1, P.su4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2925}) 
 
 
V_2914 = Vertex(name = 'V_2914', 
	 particles = [P.su1, P.su5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2926}) 
 
 
V_2915 = Vertex(name = 'V_2915', 
	 particles = [P.su1, P.su6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2927}) 
 
 
V_2916 = Vertex(name = 'V_2916', 
	 particles = [P.su2, P.su1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2928}) 
 
 
V_2917 = Vertex(name = 'V_2917', 
	 particles = [P.su2, P.su2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2929}) 
 
 
V_2918 = Vertex(name = 'V_2918', 
	 particles = [P.su2, P.su3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2930}) 
 
 
V_2919 = Vertex(name = 'V_2919', 
	 particles = [P.su2, P.su4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2931}) 
 
 
V_2920 = Vertex(name = 'V_2920', 
	 particles = [P.su2, P.su5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2932}) 
 
 
V_2921 = Vertex(name = 'V_2921', 
	 particles = [P.su2, P.su6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2933}) 
 
 
V_2922 = Vertex(name = 'V_2922', 
	 particles = [P.su3, P.su1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2934}) 
 
 
V_2923 = Vertex(name = 'V_2923', 
	 particles = [P.su3, P.su2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2935}) 
 
 
V_2924 = Vertex(name = 'V_2924', 
	 particles = [P.su3, P.su3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2936}) 
 
 
V_2925 = Vertex(name = 'V_2925', 
	 particles = [P.su3, P.su4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2937}) 
 
 
V_2926 = Vertex(name = 'V_2926', 
	 particles = [P.su3, P.su5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2938}) 
 
 
V_2927 = Vertex(name = 'V_2927', 
	 particles = [P.su3, P.su6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2939}) 
 
 
V_2928 = Vertex(name = 'V_2928', 
	 particles = [P.su4, P.su1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2940}) 
 
 
V_2929 = Vertex(name = 'V_2929', 
	 particles = [P.su4, P.su2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2941}) 
 
 
V_2930 = Vertex(name = 'V_2930', 
	 particles = [P.su4, P.su3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2942}) 
 
 
V_2931 = Vertex(name = 'V_2931', 
	 particles = [P.su4, P.su4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2943}) 
 
 
V_2932 = Vertex(name = 'V_2932', 
	 particles = [P.su4, P.su5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2944}) 
 
 
V_2933 = Vertex(name = 'V_2933', 
	 particles = [P.su4, P.su6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2945}) 
 
 
V_2934 = Vertex(name = 'V_2934', 
	 particles = [P.su5, P.su1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2946}) 
 
 
V_2935 = Vertex(name = 'V_2935', 
	 particles = [P.su5, P.su2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2947}) 
 
 
V_2936 = Vertex(name = 'V_2936', 
	 particles = [P.su5, P.su3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2948}) 
 
 
V_2937 = Vertex(name = 'V_2937', 
	 particles = [P.su5, P.su4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2949}) 
 
 
V_2938 = Vertex(name = 'V_2938', 
	 particles = [P.su5, P.su5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2950}) 
 
 
V_2939 = Vertex(name = 'V_2939', 
	 particles = [P.su5, P.su6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2951}) 
 
 
V_2940 = Vertex(name = 'V_2940', 
	 particles = [P.su6, P.su1c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2952}) 
 
 
V_2941 = Vertex(name = 'V_2941', 
	 particles = [P.su6, P.su2c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2953}) 
 
 
V_2942 = Vertex(name = 'V_2942', 
	 particles = [P.su6, P.su3c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2954}) 
 
 
V_2943 = Vertex(name = 'V_2943', 
	 particles = [P.su6, P.su4c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2955}) 
 
 
V_2944 = Vertex(name = 'V_2944', 
	 particles = [P.su6, P.su5c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2956}) 
 
 
V_2945 = Vertex(name = 'V_2945', 
	 particles = [P.su6, P.su6c, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2957}) 
 
 
V_2946 = Vertex(name = 'V_2946', 
	 particles = [P.su1, P.su1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2958}) 
 
 
V_2947 = Vertex(name = 'V_2947', 
	 particles = [P.su1, P.su2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2959}) 
 
 
V_2948 = Vertex(name = 'V_2948', 
	 particles = [P.su1, P.su3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2960}) 
 
 
V_2949 = Vertex(name = 'V_2949', 
	 particles = [P.su1, P.su4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2961}) 
 
 
V_2950 = Vertex(name = 'V_2950', 
	 particles = [P.su1, P.su5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2962}) 
 
 
V_2951 = Vertex(name = 'V_2951', 
	 particles = [P.su1, P.su6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2963}) 
 
 
V_2952 = Vertex(name = 'V_2952', 
	 particles = [P.su2, P.su1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2964}) 
 
 
V_2953 = Vertex(name = 'V_2953', 
	 particles = [P.su2, P.su2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2965}) 
 
 
V_2954 = Vertex(name = 'V_2954', 
	 particles = [P.su2, P.su3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2966}) 
 
 
V_2955 = Vertex(name = 'V_2955', 
	 particles = [P.su2, P.su4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2967}) 
 
 
V_2956 = Vertex(name = 'V_2956', 
	 particles = [P.su2, P.su5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2968}) 
 
 
V_2957 = Vertex(name = 'V_2957', 
	 particles = [P.su2, P.su6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2969}) 
 
 
V_2958 = Vertex(name = 'V_2958', 
	 particles = [P.su3, P.su1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2970}) 
 
 
V_2959 = Vertex(name = 'V_2959', 
	 particles = [P.su3, P.su2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2971}) 
 
 
V_2960 = Vertex(name = 'V_2960', 
	 particles = [P.su3, P.su3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2972}) 
 
 
V_2961 = Vertex(name = 'V_2961', 
	 particles = [P.su3, P.su4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2973}) 
 
 
V_2962 = Vertex(name = 'V_2962', 
	 particles = [P.su3, P.su5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2974}) 
 
 
V_2963 = Vertex(name = 'V_2963', 
	 particles = [P.su3, P.su6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2975}) 
 
 
V_2964 = Vertex(name = 'V_2964', 
	 particles = [P.su4, P.su1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2976}) 
 
 
V_2965 = Vertex(name = 'V_2965', 
	 particles = [P.su4, P.su2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2977}) 
 
 
V_2966 = Vertex(name = 'V_2966', 
	 particles = [P.su4, P.su3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2978}) 
 
 
V_2967 = Vertex(name = 'V_2967', 
	 particles = [P.su4, P.su4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2979}) 
 
 
V_2968 = Vertex(name = 'V_2968', 
	 particles = [P.su4, P.su5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2980}) 
 
 
V_2969 = Vertex(name = 'V_2969', 
	 particles = [P.su4, P.su6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2981}) 
 
 
V_2970 = Vertex(name = 'V_2970', 
	 particles = [P.su5, P.su1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2982}) 
 
 
V_2971 = Vertex(name = 'V_2971', 
	 particles = [P.su5, P.su2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2983}) 
 
 
V_2972 = Vertex(name = 'V_2972', 
	 particles = [P.su5, P.su3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2984}) 
 
 
V_2973 = Vertex(name = 'V_2973', 
	 particles = [P.su5, P.su4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2985}) 
 
 
V_2974 = Vertex(name = 'V_2974', 
	 particles = [P.su5, P.su5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2986}) 
 
 
V_2975 = Vertex(name = 'V_2975', 
	 particles = [P.su5, P.su6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2987}) 
 
 
V_2976 = Vertex(name = 'V_2976', 
	 particles = [P.su6, P.su1c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2988}) 
 
 
V_2977 = Vertex(name = 'V_2977', 
	 particles = [P.su6, P.su2c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2989}) 
 
 
V_2978 = Vertex(name = 'V_2978', 
	 particles = [P.su6, P.su3c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2990}) 
 
 
V_2979 = Vertex(name = 'V_2979', 
	 particles = [P.su6, P.su4c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2991}) 
 
 
V_2980 = Vertex(name = 'V_2980', 
	 particles = [P.su6, P.su5c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2992}) 
 
 
V_2981 = Vertex(name = 'V_2981', 
	 particles = [P.su6, P.su6c, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2993}) 
 
 
V_2982 = Vertex(name = 'V_2982', 
	 particles = [P.sv1, P.se1c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2994}) 
 
 
V_2983 = Vertex(name = 'V_2983', 
	 particles = [P.sv1, P.se2c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2995}) 
 
 
V_2984 = Vertex(name = 'V_2984', 
	 particles = [P.sv1, P.se3c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2996}) 
 
 
V_2985 = Vertex(name = 'V_2985', 
	 particles = [P.sv1, P.se4c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2997}) 
 
 
V_2986 = Vertex(name = 'V_2986', 
	 particles = [P.sv1, P.se5c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2998}) 
 
 
V_2987 = Vertex(name = 'V_2987', 
	 particles = [P.sv1, P.se6c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_2999}) 
 
 
V_2988 = Vertex(name = 'V_2988', 
	 particles = [P.sv2, P.se1c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3000}) 
 
 
V_2989 = Vertex(name = 'V_2989', 
	 particles = [P.sv2, P.se2c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3001}) 
 
 
V_2990 = Vertex(name = 'V_2990', 
	 particles = [P.sv2, P.se3c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3002}) 
 
 
V_2991 = Vertex(name = 'V_2991', 
	 particles = [P.sv2, P.se4c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3003}) 
 
 
V_2992 = Vertex(name = 'V_2992', 
	 particles = [P.sv2, P.se5c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3004}) 
 
 
V_2993 = Vertex(name = 'V_2993', 
	 particles = [P.sv2, P.se6c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3005}) 
 
 
V_2994 = Vertex(name = 'V_2994', 
	 particles = [P.sv3, P.se1c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3006}) 
 
 
V_2995 = Vertex(name = 'V_2995', 
	 particles = [P.sv3, P.se2c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3007}) 
 
 
V_2996 = Vertex(name = 'V_2996', 
	 particles = [P.sv3, P.se3c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3008}) 
 
 
V_2997 = Vertex(name = 'V_2997', 
	 particles = [P.sv3, P.se4c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3009}) 
 
 
V_2998 = Vertex(name = 'V_2998', 
	 particles = [P.sv3, P.se5c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3010}) 
 
 
V_2999 = Vertex(name = 'V_2999', 
	 particles = [P.sv3, P.se6c, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3011}) 
 
 
V_3000 = Vertex(name = 'V_3000', 
	 particles = [P.sv1, P.sv1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3012}) 
 
 
V_3001 = Vertex(name = 'V_3001', 
	 particles = [P.sv1, P.sv2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3013}) 
 
 
V_3002 = Vertex(name = 'V_3002', 
	 particles = [P.sv1, P.sv3c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3014}) 
 
 
V_3003 = Vertex(name = 'V_3003', 
	 particles = [P.sv2, P.sv1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3015}) 
 
 
V_3004 = Vertex(name = 'V_3004', 
	 particles = [P.sv2, P.sv2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3016}) 
 
 
V_3005 = Vertex(name = 'V_3005', 
	 particles = [P.sv2, P.sv3c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3017}) 
 
 
V_3006 = Vertex(name = 'V_3006', 
	 particles = [P.sv3, P.sv1c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3018}) 
 
 
V_3007 = Vertex(name = 'V_3007', 
	 particles = [P.sv3, P.sv2c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3019}) 
 
 
V_3008 = Vertex(name = 'V_3008', 
	 particles = [P.sv3, P.sv3c, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3020}) 
 
 
V_3009 = Vertex(name = 'V_3009', 
	 particles = [P.sv1, P.sv1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3021}) 
 
 
V_3010 = Vertex(name = 'V_3010', 
	 particles = [P.sv1, P.sv2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3022}) 
 
 
V_3011 = Vertex(name = 'V_3011', 
	 particles = [P.sv1, P.sv3c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3023}) 
 
 
V_3012 = Vertex(name = 'V_3012', 
	 particles = [P.sv2, P.sv1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3024}) 
 
 
V_3013 = Vertex(name = 'V_3013', 
	 particles = [P.sv2, P.sv2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3025}) 
 
 
V_3014 = Vertex(name = 'V_3014', 
	 particles = [P.sv2, P.sv3c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3026}) 
 
 
V_3015 = Vertex(name = 'V_3015', 
	 particles = [P.sv3, P.sv1c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3027}) 
 
 
V_3016 = Vertex(name = 'V_3016', 
	 particles = [P.sv3, P.sv2c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3028}) 
 
 
V_3017 = Vertex(name = 'V_3017', 
	 particles = [P.sv3, P.sv3c, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SSV1], 
	 couplings = {(0,0):C.GC_3029}) 
 
 
V_3018 = Vertex(name = 'V_3018', 
	 particles = [P.h1, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3030}) 
 
 
V_3019 = Vertex(name = 'V_3019', 
	 particles = [P.h2, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3031}) 
 
 
V_3020 = Vertex(name = 'V_3020', 
	 particles = [P.h3, P.Wmc, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3032}) 
 
 
V_3021 = Vertex(name = 'V_3021', 
	 particles = [P.h1, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3033}) 
 
 
V_3022 = Vertex(name = 'V_3022', 
	 particles = [P.h2, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3034}) 
 
 
V_3023 = Vertex(name = 'V_3023', 
	 particles = [P.h3, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3035}) 
 
 
V_3024 = Vertex(name = 'V_3024', 
	 particles = [P.h1, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3036}) 
 
 
V_3025 = Vertex(name = 'V_3025', 
	 particles = [P.h2, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3037}) 
 
 
V_3026 = Vertex(name = 'V_3026', 
	 particles = [P.h3, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3038}) 
 
 
V_3027 = Vertex(name = 'V_3027', 
	 particles = [P.h1, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3039}) 
 
 
V_3028 = Vertex(name = 'V_3028', 
	 particles = [P.h2, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3040}) 
 
 
V_3029 = Vertex(name = 'V_3029', 
	 particles = [P.h3, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3041}) 
 
 
V_3030 = Vertex(name = 'V_3030', 
	 particles = [P.Hm1, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3042}) 
 
 
V_3031 = Vertex(name = 'V_3031', 
	 particles = [P.Hm2, P.Wmc, P.A], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3043}) 
 
 
V_3032 = Vertex(name = 'V_3032', 
	 particles = [P.Hm1, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3044}) 
 
 
V_3033 = Vertex(name = 'V_3033', 
	 particles = [P.Hm2, P.Wmc, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3045}) 
 
 
V_3034 = Vertex(name = 'V_3034', 
	 particles = [P.Hm1, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3046}) 
 
 
V_3035 = Vertex(name = 'V_3035', 
	 particles = [P.Hm2, P.Wmc, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3047}) 
 
 
V_3036 = Vertex(name = 'V_3036', 
	 particles = [P.Hm1c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3048}) 
 
 
V_3037 = Vertex(name = 'V_3037', 
	 particles = [P.Hm2c, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3049}) 
 
 
V_3038 = Vertex(name = 'V_3038', 
	 particles = [P.Hm1c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3050}) 
 
 
V_3039 = Vertex(name = 'V_3039', 
	 particles = [P.Hm2c, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3051}) 
 
 
V_3040 = Vertex(name = 'V_3040', 
	 particles = [P.Hm1c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3052}) 
 
 
V_3041 = Vertex(name = 'V_3041', 
	 particles = [P.Hm2c, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.SVV1], 
	 couplings = {(0,0):C.GC_3053}) 
 
 
V_3042 = Vertex(name = 'V_3042', 
	 particles = [P.C1bar, P.C1, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3054,(0,1):C.GC_3055}) 
 
 
V_3043 = Vertex(name = 'V_3043', 
	 particles = [P.C1bar, P.C1, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3056,(0,1):C.GC_3057}) 
 
 
V_3044 = Vertex(name = 'V_3044', 
	 particles = [P.C1bar, P.C1, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3058,(0,1):C.GC_3059}) 
 
 
V_3045 = Vertex(name = 'V_3045', 
	 particles = [P.C1bar, P.C2, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3060,(0,1):C.GC_3061}) 
 
 
V_3046 = Vertex(name = 'V_3046', 
	 particles = [P.C1bar, P.C2, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3062,(0,1):C.GC_3063}) 
 
 
V_3047 = Vertex(name = 'V_3047', 
	 particles = [P.C1bar, P.C2, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3064,(0,1):C.GC_3065}) 
 
 
V_3048 = Vertex(name = 'V_3048', 
	 particles = [P.C2bar, P.C1, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3066,(0,1):C.GC_3067}) 
 
 
V_3049 = Vertex(name = 'V_3049', 
	 particles = [P.C2bar, P.C1, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3068,(0,1):C.GC_3069}) 
 
 
V_3050 = Vertex(name = 'V_3050', 
	 particles = [P.C2bar, P.C1, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3070,(0,1):C.GC_3071}) 
 
 
V_3051 = Vertex(name = 'V_3051', 
	 particles = [P.C2bar, P.C2, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3072,(0,1):C.GC_3073}) 
 
 
V_3052 = Vertex(name = 'V_3052', 
	 particles = [P.C2bar, P.C2, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3074,(0,1):C.GC_3075}) 
 
 
V_3053 = Vertex(name = 'V_3053', 
	 particles = [P.C2bar, P.C2, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3076,(0,1):C.GC_3077}) 
 
 
V_3054 = Vertex(name = 'V_3054', 
	 particles = [P.N1, P.N1, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3078,(0,1):C.GC_3079}) 
 
 
V_3055 = Vertex(name = 'V_3055', 
	 particles = [P.N1, P.N1, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3080,(0,1):C.GC_3081}) 
 
 
V_3056 = Vertex(name = 'V_3056', 
	 particles = [P.N1, P.N1, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3082,(0,1):C.GC_3083}) 
 
 
V_3057 = Vertex(name = 'V_3057', 
	 particles = [P.N1, P.N2, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3084,(0,1):C.GC_3085}) 
 
 
V_3058 = Vertex(name = 'V_3058', 
	 particles = [P.N1, P.N2, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3086,(0,1):C.GC_3087}) 
 
 
V_3059 = Vertex(name = 'V_3059', 
	 particles = [P.N1, P.N2, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3088,(0,1):C.GC_3089}) 
 
 
V_3060 = Vertex(name = 'V_3060', 
	 particles = [P.N1, P.N3, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3090,(0,1):C.GC_3091}) 
 
 
V_3061 = Vertex(name = 'V_3061', 
	 particles = [P.N1, P.N3, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3092,(0,1):C.GC_3093}) 
 
 
V_3062 = Vertex(name = 'V_3062', 
	 particles = [P.N1, P.N3, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3094,(0,1):C.GC_3095}) 
 
 
V_3063 = Vertex(name = 'V_3063', 
	 particles = [P.N1, P.N4, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3096,(0,1):C.GC_3097}) 
 
 
V_3064 = Vertex(name = 'V_3064', 
	 particles = [P.N1, P.N4, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3098,(0,1):C.GC_3099}) 
 
 
V_3065 = Vertex(name = 'V_3065', 
	 particles = [P.N1, P.N4, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3100,(0,1):C.GC_3101}) 
 
 
V_3066 = Vertex(name = 'V_3066', 
	 particles = [P.N1, P.N5, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3102,(0,1):C.GC_3103}) 
 
 
V_3067 = Vertex(name = 'V_3067', 
	 particles = [P.N1, P.N5, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3104,(0,1):C.GC_3105}) 
 
 
V_3068 = Vertex(name = 'V_3068', 
	 particles = [P.N1, P.N5, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3106,(0,1):C.GC_3107}) 
 
 
V_3069 = Vertex(name = 'V_3069', 
	 particles = [P.N1, P.N6, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3108,(0,1):C.GC_3109}) 
 
 
V_3070 = Vertex(name = 'V_3070', 
	 particles = [P.N1, P.N6, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3110,(0,1):C.GC_3111}) 
 
 
V_3071 = Vertex(name = 'V_3071', 
	 particles = [P.N1, P.N6, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3112,(0,1):C.GC_3113}) 
 
 
V_3072 = Vertex(name = 'V_3072', 
	 particles = [P.N2, P.N2, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3114,(0,1):C.GC_3115}) 
 
 
V_3073 = Vertex(name = 'V_3073', 
	 particles = [P.N2, P.N2, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3116,(0,1):C.GC_3117}) 
 
 
V_3074 = Vertex(name = 'V_3074', 
	 particles = [P.N2, P.N2, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3118,(0,1):C.GC_3119}) 
 
 
V_3075 = Vertex(name = 'V_3075', 
	 particles = [P.N2, P.N3, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3120,(0,1):C.GC_3121}) 
 
 
V_3076 = Vertex(name = 'V_3076', 
	 particles = [P.N2, P.N3, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3122,(0,1):C.GC_3123}) 
 
 
V_3077 = Vertex(name = 'V_3077', 
	 particles = [P.N2, P.N3, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3124,(0,1):C.GC_3125}) 
 
 
V_3078 = Vertex(name = 'V_3078', 
	 particles = [P.N2, P.N4, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3126,(0,1):C.GC_3127}) 
 
 
V_3079 = Vertex(name = 'V_3079', 
	 particles = [P.N2, P.N4, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3128,(0,1):C.GC_3129}) 
 
 
V_3080 = Vertex(name = 'V_3080', 
	 particles = [P.N2, P.N4, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3130,(0,1):C.GC_3131}) 
 
 
V_3081 = Vertex(name = 'V_3081', 
	 particles = [P.N2, P.N5, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3132,(0,1):C.GC_3133}) 
 
 
V_3082 = Vertex(name = 'V_3082', 
	 particles = [P.N2, P.N5, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3134,(0,1):C.GC_3135}) 
 
 
V_3083 = Vertex(name = 'V_3083', 
	 particles = [P.N2, P.N5, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3136,(0,1):C.GC_3137}) 
 
 
V_3084 = Vertex(name = 'V_3084', 
	 particles = [P.N2, P.N6, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3138,(0,1):C.GC_3139}) 
 
 
V_3085 = Vertex(name = 'V_3085', 
	 particles = [P.N2, P.N6, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3140,(0,1):C.GC_3141}) 
 
 
V_3086 = Vertex(name = 'V_3086', 
	 particles = [P.N2, P.N6, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3142,(0,1):C.GC_3143}) 
 
 
V_3087 = Vertex(name = 'V_3087', 
	 particles = [P.N3, P.N3, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3144,(0,1):C.GC_3145}) 
 
 
V_3088 = Vertex(name = 'V_3088', 
	 particles = [P.N3, P.N3, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3146,(0,1):C.GC_3147}) 
 
 
V_3089 = Vertex(name = 'V_3089', 
	 particles = [P.N3, P.N3, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3148,(0,1):C.GC_3149}) 
 
 
V_3090 = Vertex(name = 'V_3090', 
	 particles = [P.N3, P.N4, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3150,(0,1):C.GC_3151}) 
 
 
V_3091 = Vertex(name = 'V_3091', 
	 particles = [P.N3, P.N4, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3152,(0,1):C.GC_3153}) 
 
 
V_3092 = Vertex(name = 'V_3092', 
	 particles = [P.N3, P.N4, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3154,(0,1):C.GC_3155}) 
 
 
V_3093 = Vertex(name = 'V_3093', 
	 particles = [P.N3, P.N5, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3156,(0,1):C.GC_3157}) 
 
 
V_3094 = Vertex(name = 'V_3094', 
	 particles = [P.N3, P.N5, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3158,(0,1):C.GC_3159}) 
 
 
V_3095 = Vertex(name = 'V_3095', 
	 particles = [P.N3, P.N5, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3160,(0,1):C.GC_3161}) 
 
 
V_3096 = Vertex(name = 'V_3096', 
	 particles = [P.N3, P.N6, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3162,(0,1):C.GC_3163}) 
 
 
V_3097 = Vertex(name = 'V_3097', 
	 particles = [P.N3, P.N6, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3164,(0,1):C.GC_3165}) 
 
 
V_3098 = Vertex(name = 'V_3098', 
	 particles = [P.N3, P.N6, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3166,(0,1):C.GC_3167}) 
 
 
V_3099 = Vertex(name = 'V_3099', 
	 particles = [P.N4, P.N4, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3168,(0,1):C.GC_3169}) 
 
 
V_3100 = Vertex(name = 'V_3100', 
	 particles = [P.N4, P.N4, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3170,(0,1):C.GC_3171}) 
 
 
V_3101 = Vertex(name = 'V_3101', 
	 particles = [P.N4, P.N4, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3172,(0,1):C.GC_3173}) 
 
 
V_3102 = Vertex(name = 'V_3102', 
	 particles = [P.N4, P.N5, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3174,(0,1):C.GC_3175}) 
 
 
V_3103 = Vertex(name = 'V_3103', 
	 particles = [P.N4, P.N5, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3176,(0,1):C.GC_3177}) 
 
 
V_3104 = Vertex(name = 'V_3104', 
	 particles = [P.N4, P.N5, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3178,(0,1):C.GC_3179}) 
 
 
V_3105 = Vertex(name = 'V_3105', 
	 particles = [P.N4, P.N6, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3180,(0,1):C.GC_3181}) 
 
 
V_3106 = Vertex(name = 'V_3106', 
	 particles = [P.N4, P.N6, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3182,(0,1):C.GC_3183}) 
 
 
V_3107 = Vertex(name = 'V_3107', 
	 particles = [P.N4, P.N6, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3184,(0,1):C.GC_3185}) 
 
 
V_3108 = Vertex(name = 'V_3108', 
	 particles = [P.N5, P.N5, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3186,(0,1):C.GC_3187}) 
 
 
V_3109 = Vertex(name = 'V_3109', 
	 particles = [P.N5, P.N5, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3188,(0,1):C.GC_3189}) 
 
 
V_3110 = Vertex(name = 'V_3110', 
	 particles = [P.N5, P.N5, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3190,(0,1):C.GC_3191}) 
 
 
V_3111 = Vertex(name = 'V_3111', 
	 particles = [P.N5, P.N6, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3192,(0,1):C.GC_3193}) 
 
 
V_3112 = Vertex(name = 'V_3112', 
	 particles = [P.N5, P.N6, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3194,(0,1):C.GC_3195}) 
 
 
V_3113 = Vertex(name = 'V_3113', 
	 particles = [P.N5, P.N6, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3196,(0,1):C.GC_3197}) 
 
 
V_3114 = Vertex(name = 'V_3114', 
	 particles = [P.N6, P.N6, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3198,(0,1):C.GC_3199}) 
 
 
V_3115 = Vertex(name = 'V_3115', 
	 particles = [P.N6, P.N6, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3200,(0,1):C.GC_3201}) 
 
 
V_3116 = Vertex(name = 'V_3116', 
	 particles = [P.N6, P.N6, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3202,(0,1):C.GC_3203}) 
 
 
V_3117 = Vertex(name = 'V_3117', 
	 particles = [P.d1bar, P.d1, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3204,(0,1):C.GC_3205}) 
 
 
V_3118 = Vertex(name = 'V_3118', 
	 particles = [P.d1bar, P.d1, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3206,(0,1):C.GC_3207}) 
 
 
V_3119 = Vertex(name = 'V_3119', 
	 particles = [P.d1bar, P.d1, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3208,(0,1):C.GC_3209}) 
 
 
V_3120 = Vertex(name = 'V_3120', 
	 particles = [P.d1bar, P.d2, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3210,(0,1):C.GC_3211}) 
 
 
V_3121 = Vertex(name = 'V_3121', 
	 particles = [P.d1bar, P.d2, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3212,(0,1):C.GC_3213}) 
 
 
V_3122 = Vertex(name = 'V_3122', 
	 particles = [P.d1bar, P.d2, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3214,(0,1):C.GC_3215}) 
 
 
V_3123 = Vertex(name = 'V_3123', 
	 particles = [P.d1bar, P.d3, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3216,(0,1):C.GC_3217}) 
 
 
V_3124 = Vertex(name = 'V_3124', 
	 particles = [P.d1bar, P.d3, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3218,(0,1):C.GC_3219}) 
 
 
V_3125 = Vertex(name = 'V_3125', 
	 particles = [P.d1bar, P.d3, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3220,(0,1):C.GC_3221}) 
 
 
V_3126 = Vertex(name = 'V_3126', 
	 particles = [P.d2bar, P.d1, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3222,(0,1):C.GC_3223}) 
 
 
V_3127 = Vertex(name = 'V_3127', 
	 particles = [P.d2bar, P.d1, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3224,(0,1):C.GC_3225}) 
 
 
V_3128 = Vertex(name = 'V_3128', 
	 particles = [P.d2bar, P.d1, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3226,(0,1):C.GC_3227}) 
 
 
V_3129 = Vertex(name = 'V_3129', 
	 particles = [P.d2bar, P.d2, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3228,(0,1):C.GC_3229}) 
 
 
V_3130 = Vertex(name = 'V_3130', 
	 particles = [P.d2bar, P.d2, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3230,(0,1):C.GC_3231}) 
 
 
V_3131 = Vertex(name = 'V_3131', 
	 particles = [P.d2bar, P.d2, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3232,(0,1):C.GC_3233}) 
 
 
V_3132 = Vertex(name = 'V_3132', 
	 particles = [P.d2bar, P.d3, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3234,(0,1):C.GC_3235}) 
 
 
V_3133 = Vertex(name = 'V_3133', 
	 particles = [P.d2bar, P.d3, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3236,(0,1):C.GC_3237}) 
 
 
V_3134 = Vertex(name = 'V_3134', 
	 particles = [P.d2bar, P.d3, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3238,(0,1):C.GC_3239}) 
 
 
V_3135 = Vertex(name = 'V_3135', 
	 particles = [P.d3bar, P.d1, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3240,(0,1):C.GC_3241}) 
 
 
V_3136 = Vertex(name = 'V_3136', 
	 particles = [P.d3bar, P.d1, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3242,(0,1):C.GC_3243}) 
 
 
V_3137 = Vertex(name = 'V_3137', 
	 particles = [P.d3bar, P.d1, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3244,(0,1):C.GC_3245}) 
 
 
V_3138 = Vertex(name = 'V_3138', 
	 particles = [P.d3bar, P.d2, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3246,(0,1):C.GC_3247}) 
 
 
V_3139 = Vertex(name = 'V_3139', 
	 particles = [P.d3bar, P.d2, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3248,(0,1):C.GC_3249}) 
 
 
V_3140 = Vertex(name = 'V_3140', 
	 particles = [P.d3bar, P.d2, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3250,(0,1):C.GC_3251}) 
 
 
V_3141 = Vertex(name = 'V_3141', 
	 particles = [P.d3bar, P.d3, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3252,(0,1):C.GC_3253}) 
 
 
V_3142 = Vertex(name = 'V_3142', 
	 particles = [P.d3bar, P.d3, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3254,(0,1):C.GC_3255}) 
 
 
V_3143 = Vertex(name = 'V_3143', 
	 particles = [P.d3bar, P.d3, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3256,(0,1):C.GC_3257}) 
 
 
V_3144 = Vertex(name = 'V_3144', 
	 particles = [P.e1bar, P.e1, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3258,(0,1):C.GC_3259}) 
 
 
V_3145 = Vertex(name = 'V_3145', 
	 particles = [P.e1bar, P.e1, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3260,(0,1):C.GC_3261}) 
 
 
V_3146 = Vertex(name = 'V_3146', 
	 particles = [P.e1bar, P.e1, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3262,(0,1):C.GC_3263}) 
 
 
V_3147 = Vertex(name = 'V_3147', 
	 particles = [P.e1bar, P.e2, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3264,(0,1):C.GC_3265}) 
 
 
V_3148 = Vertex(name = 'V_3148', 
	 particles = [P.e1bar, P.e2, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3266,(0,1):C.GC_3267}) 
 
 
V_3149 = Vertex(name = 'V_3149', 
	 particles = [P.e1bar, P.e2, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3268,(0,1):C.GC_3269}) 
 
 
V_3150 = Vertex(name = 'V_3150', 
	 particles = [P.e1bar, P.e3, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3270,(0,1):C.GC_3271}) 
 
 
V_3151 = Vertex(name = 'V_3151', 
	 particles = [P.e1bar, P.e3, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3272,(0,1):C.GC_3273}) 
 
 
V_3152 = Vertex(name = 'V_3152', 
	 particles = [P.e1bar, P.e3, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3274,(0,1):C.GC_3275}) 
 
 
V_3153 = Vertex(name = 'V_3153', 
	 particles = [P.e2bar, P.e1, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3276,(0,1):C.GC_3277}) 
 
 
V_3154 = Vertex(name = 'V_3154', 
	 particles = [P.e2bar, P.e1, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3278,(0,1):C.GC_3279}) 
 
 
V_3155 = Vertex(name = 'V_3155', 
	 particles = [P.e2bar, P.e1, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3280,(0,1):C.GC_3281}) 
 
 
V_3156 = Vertex(name = 'V_3156', 
	 particles = [P.e2bar, P.e2, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3282,(0,1):C.GC_3283}) 
 
 
V_3157 = Vertex(name = 'V_3157', 
	 particles = [P.e2bar, P.e2, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3284,(0,1):C.GC_3285}) 
 
 
V_3158 = Vertex(name = 'V_3158', 
	 particles = [P.e2bar, P.e2, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3286,(0,1):C.GC_3287}) 
 
 
V_3159 = Vertex(name = 'V_3159', 
	 particles = [P.e2bar, P.e3, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3288,(0,1):C.GC_3289}) 
 
 
V_3160 = Vertex(name = 'V_3160', 
	 particles = [P.e2bar, P.e3, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3290,(0,1):C.GC_3291}) 
 
 
V_3161 = Vertex(name = 'V_3161', 
	 particles = [P.e2bar, P.e3, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3292,(0,1):C.GC_3293}) 
 
 
V_3162 = Vertex(name = 'V_3162', 
	 particles = [P.e3bar, P.e1, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3294,(0,1):C.GC_3295}) 
 
 
V_3163 = Vertex(name = 'V_3163', 
	 particles = [P.e3bar, P.e1, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3296,(0,1):C.GC_3297}) 
 
 
V_3164 = Vertex(name = 'V_3164', 
	 particles = [P.e3bar, P.e1, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3298,(0,1):C.GC_3299}) 
 
 
V_3165 = Vertex(name = 'V_3165', 
	 particles = [P.e3bar, P.e2, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3300,(0,1):C.GC_3301}) 
 
 
V_3166 = Vertex(name = 'V_3166', 
	 particles = [P.e3bar, P.e2, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3302,(0,1):C.GC_3303}) 
 
 
V_3167 = Vertex(name = 'V_3167', 
	 particles = [P.e3bar, P.e2, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3304,(0,1):C.GC_3305}) 
 
 
V_3168 = Vertex(name = 'V_3168', 
	 particles = [P.e3bar, P.e3, P.Ah1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3306,(0,1):C.GC_3307}) 
 
 
V_3169 = Vertex(name = 'V_3169', 
	 particles = [P.e3bar, P.e3, P.Ah2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3308,(0,1):C.GC_3309}) 
 
 
V_3170 = Vertex(name = 'V_3170', 
	 particles = [P.e3bar, P.e3, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3310,(0,1):C.GC_3311}) 
 
 
V_3171 = Vertex(name = 'V_3171', 
	 particles = [P.u1bar, P.u1, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3312,(0,1):C.GC_3313}) 
 
 
V_3172 = Vertex(name = 'V_3172', 
	 particles = [P.u1bar, P.u1, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3314,(0,1):C.GC_3315}) 
 
 
V_3173 = Vertex(name = 'V_3173', 
	 particles = [P.u1bar, P.u1, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3316,(0,1):C.GC_3317}) 
 
 
V_3174 = Vertex(name = 'V_3174', 
	 particles = [P.u1bar, P.u2, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3318,(0,1):C.GC_3319}) 
 
 
V_3175 = Vertex(name = 'V_3175', 
	 particles = [P.u1bar, P.u2, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3320,(0,1):C.GC_3321}) 
 
 
V_3176 = Vertex(name = 'V_3176', 
	 particles = [P.u1bar, P.u2, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3322,(0,1):C.GC_3323}) 
 
 
V_3177 = Vertex(name = 'V_3177', 
	 particles = [P.u1bar, P.u3, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3324,(0,1):C.GC_3325}) 
 
 
V_3178 = Vertex(name = 'V_3178', 
	 particles = [P.u1bar, P.u3, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3326,(0,1):C.GC_3327}) 
 
 
V_3179 = Vertex(name = 'V_3179', 
	 particles = [P.u1bar, P.u3, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3328,(0,1):C.GC_3329}) 
 
 
V_3180 = Vertex(name = 'V_3180', 
	 particles = [P.u2bar, P.u1, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3330,(0,1):C.GC_3331}) 
 
 
V_3181 = Vertex(name = 'V_3181', 
	 particles = [P.u2bar, P.u1, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3332,(0,1):C.GC_3333}) 
 
 
V_3182 = Vertex(name = 'V_3182', 
	 particles = [P.u2bar, P.u1, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3334,(0,1):C.GC_3335}) 
 
 
V_3183 = Vertex(name = 'V_3183', 
	 particles = [P.u2bar, P.u2, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3336,(0,1):C.GC_3337}) 
 
 
V_3184 = Vertex(name = 'V_3184', 
	 particles = [P.u2bar, P.u2, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3338,(0,1):C.GC_3339}) 
 
 
V_3185 = Vertex(name = 'V_3185', 
	 particles = [P.u2bar, P.u2, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3340,(0,1):C.GC_3341}) 
 
 
V_3186 = Vertex(name = 'V_3186', 
	 particles = [P.u2bar, P.u3, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3342,(0,1):C.GC_3343}) 
 
 
V_3187 = Vertex(name = 'V_3187', 
	 particles = [P.u2bar, P.u3, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3344,(0,1):C.GC_3345}) 
 
 
V_3188 = Vertex(name = 'V_3188', 
	 particles = [P.u2bar, P.u3, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3346,(0,1):C.GC_3347}) 
 
 
V_3189 = Vertex(name = 'V_3189', 
	 particles = [P.u3bar, P.u1, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3348,(0,1):C.GC_3349}) 
 
 
V_3190 = Vertex(name = 'V_3190', 
	 particles = [P.u3bar, P.u1, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3350,(0,1):C.GC_3351}) 
 
 
V_3191 = Vertex(name = 'V_3191', 
	 particles = [P.u3bar, P.u1, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3352,(0,1):C.GC_3353}) 
 
 
V_3192 = Vertex(name = 'V_3192', 
	 particles = [P.u3bar, P.u2, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3354,(0,1):C.GC_3355}) 
 
 
V_3193 = Vertex(name = 'V_3193', 
	 particles = [P.u3bar, P.u2, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3356,(0,1):C.GC_3357}) 
 
 
V_3194 = Vertex(name = 'V_3194', 
	 particles = [P.u3bar, P.u2, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3358,(0,1):C.GC_3359}) 
 
 
V_3195 = Vertex(name = 'V_3195', 
	 particles = [P.u3bar, P.u3, P.Ah1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3360,(0,1):C.GC_3361}) 
 
 
V_3196 = Vertex(name = 'V_3196', 
	 particles = [P.u3bar, P.u3, P.Ah2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3362,(0,1):C.GC_3363}) 
 
 
V_3197 = Vertex(name = 'V_3197', 
	 particles = [P.u3bar, P.u3, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3364,(0,1):C.GC_3365}) 
 
 
V_3198 = Vertex(name = 'V_3198', 
	 particles = [P.N1, P.C1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3366,(0,1):C.GC_3367}) 
 
 
V_3199 = Vertex(name = 'V_3199', 
	 particles = [P.N1, P.C1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3368,(0,1):C.GC_3369}) 
 
 
V_3200 = Vertex(name = 'V_3200', 
	 particles = [P.N1, P.C2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3370,(0,1):C.GC_3371}) 
 
 
V_3201 = Vertex(name = 'V_3201', 
	 particles = [P.N1, P.C2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3372,(0,1):C.GC_3373}) 
 
 
V_3202 = Vertex(name = 'V_3202', 
	 particles = [P.N2, P.C1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3374,(0,1):C.GC_3375}) 
 
 
V_3203 = Vertex(name = 'V_3203', 
	 particles = [P.N2, P.C1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3376,(0,1):C.GC_3377}) 
 
 
V_3204 = Vertex(name = 'V_3204', 
	 particles = [P.N2, P.C2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3378,(0,1):C.GC_3379}) 
 
 
V_3205 = Vertex(name = 'V_3205', 
	 particles = [P.N2, P.C2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3380,(0,1):C.GC_3381}) 
 
 
V_3206 = Vertex(name = 'V_3206', 
	 particles = [P.N3, P.C1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3382,(0,1):C.GC_3383}) 
 
 
V_3207 = Vertex(name = 'V_3207', 
	 particles = [P.N3, P.C1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3384,(0,1):C.GC_3385}) 
 
 
V_3208 = Vertex(name = 'V_3208', 
	 particles = [P.N3, P.C2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3386,(0,1):C.GC_3387}) 
 
 
V_3209 = Vertex(name = 'V_3209', 
	 particles = [P.N3, P.C2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3388,(0,1):C.GC_3389}) 
 
 
V_3210 = Vertex(name = 'V_3210', 
	 particles = [P.N4, P.C1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3390,(0,1):C.GC_3391}) 
 
 
V_3211 = Vertex(name = 'V_3211', 
	 particles = [P.N4, P.C1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3392,(0,1):C.GC_3393}) 
 
 
V_3212 = Vertex(name = 'V_3212', 
	 particles = [P.N4, P.C2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3394,(0,1):C.GC_3395}) 
 
 
V_3213 = Vertex(name = 'V_3213', 
	 particles = [P.N4, P.C2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3396,(0,1):C.GC_3397}) 
 
 
V_3214 = Vertex(name = 'V_3214', 
	 particles = [P.N5, P.C1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3398,(0,1):C.GC_3399}) 
 
 
V_3215 = Vertex(name = 'V_3215', 
	 particles = [P.N5, P.C1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3400,(0,1):C.GC_3401}) 
 
 
V_3216 = Vertex(name = 'V_3216', 
	 particles = [P.N5, P.C2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3402,(0,1):C.GC_3403}) 
 
 
V_3217 = Vertex(name = 'V_3217', 
	 particles = [P.N5, P.C2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3404,(0,1):C.GC_3405}) 
 
 
V_3218 = Vertex(name = 'V_3218', 
	 particles = [P.N6, P.C1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3406,(0,1):C.GC_3407}) 
 
 
V_3219 = Vertex(name = 'V_3219', 
	 particles = [P.N6, P.C1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3408,(0,1):C.GC_3409}) 
 
 
V_3220 = Vertex(name = 'V_3220', 
	 particles = [P.N6, P.C2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3410,(0,1):C.GC_3411}) 
 
 
V_3221 = Vertex(name = 'V_3221', 
	 particles = [P.N6, P.C2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3412,(0,1):C.GC_3413}) 
 
 
V_3222 = Vertex(name = 'V_3222', 
	 particles = [P.C1, P.u1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3414,(0,1):C.GC_3415}) 
 
 
V_3223 = Vertex(name = 'V_3223', 
	 particles = [P.C1, P.u1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3416,(0,1):C.GC_3417}) 
 
 
V_3224 = Vertex(name = 'V_3224', 
	 particles = [P.C1, P.u1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3418,(0,1):C.GC_3419}) 
 
 
V_3225 = Vertex(name = 'V_3225', 
	 particles = [P.C1, P.u1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3420,(0,1):C.GC_3421}) 
 
 
V_3226 = Vertex(name = 'V_3226', 
	 particles = [P.C1, P.u1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3422,(0,1):C.GC_3423}) 
 
 
V_3227 = Vertex(name = 'V_3227', 
	 particles = [P.C1, P.u1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3424,(0,1):C.GC_3425}) 
 
 
V_3228 = Vertex(name = 'V_3228', 
	 particles = [P.C1, P.u2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3426,(0,1):C.GC_3427}) 
 
 
V_3229 = Vertex(name = 'V_3229', 
	 particles = [P.C1, P.u2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3428,(0,1):C.GC_3429}) 
 
 
V_3230 = Vertex(name = 'V_3230', 
	 particles = [P.C1, P.u2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3430,(0,1):C.GC_3431}) 
 
 
V_3231 = Vertex(name = 'V_3231', 
	 particles = [P.C1, P.u2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3432,(0,1):C.GC_3433}) 
 
 
V_3232 = Vertex(name = 'V_3232', 
	 particles = [P.C1, P.u2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3434,(0,1):C.GC_3435}) 
 
 
V_3233 = Vertex(name = 'V_3233', 
	 particles = [P.C1, P.u2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3436,(0,1):C.GC_3437}) 
 
 
V_3234 = Vertex(name = 'V_3234', 
	 particles = [P.C1, P.u3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3438,(0,1):C.GC_3439}) 
 
 
V_3235 = Vertex(name = 'V_3235', 
	 particles = [P.C1, P.u3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3440,(0,1):C.GC_3441}) 
 
 
V_3236 = Vertex(name = 'V_3236', 
	 particles = [P.C1, P.u3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3442,(0,1):C.GC_3443}) 
 
 
V_3237 = Vertex(name = 'V_3237', 
	 particles = [P.C1, P.u3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3444,(0,1):C.GC_3445}) 
 
 
V_3238 = Vertex(name = 'V_3238', 
	 particles = [P.C1, P.u3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3446,(0,1):C.GC_3447}) 
 
 
V_3239 = Vertex(name = 'V_3239', 
	 particles = [P.C1, P.u3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3448,(0,1):C.GC_3449}) 
 
 
V_3240 = Vertex(name = 'V_3240', 
	 particles = [P.C2, P.u1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3450,(0,1):C.GC_3451}) 
 
 
V_3241 = Vertex(name = 'V_3241', 
	 particles = [P.C2, P.u1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3452,(0,1):C.GC_3453}) 
 
 
V_3242 = Vertex(name = 'V_3242', 
	 particles = [P.C2, P.u1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3454,(0,1):C.GC_3455}) 
 
 
V_3243 = Vertex(name = 'V_3243', 
	 particles = [P.C2, P.u1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3456,(0,1):C.GC_3457}) 
 
 
V_3244 = Vertex(name = 'V_3244', 
	 particles = [P.C2, P.u1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3458,(0,1):C.GC_3459}) 
 
 
V_3245 = Vertex(name = 'V_3245', 
	 particles = [P.C2, P.u1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3460,(0,1):C.GC_3461}) 
 
 
V_3246 = Vertex(name = 'V_3246', 
	 particles = [P.C2, P.u2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3462,(0,1):C.GC_3463}) 
 
 
V_3247 = Vertex(name = 'V_3247', 
	 particles = [P.C2, P.u2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3464,(0,1):C.GC_3465}) 
 
 
V_3248 = Vertex(name = 'V_3248', 
	 particles = [P.C2, P.u2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3466,(0,1):C.GC_3467}) 
 
 
V_3249 = Vertex(name = 'V_3249', 
	 particles = [P.C2, P.u2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3468,(0,1):C.GC_3469}) 
 
 
V_3250 = Vertex(name = 'V_3250', 
	 particles = [P.C2, P.u2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3470,(0,1):C.GC_3471}) 
 
 
V_3251 = Vertex(name = 'V_3251', 
	 particles = [P.C2, P.u2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3472,(0,1):C.GC_3473}) 
 
 
V_3252 = Vertex(name = 'V_3252', 
	 particles = [P.C2, P.u3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3474,(0,1):C.GC_3475}) 
 
 
V_3253 = Vertex(name = 'V_3253', 
	 particles = [P.C2, P.u3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3476,(0,1):C.GC_3477}) 
 
 
V_3254 = Vertex(name = 'V_3254', 
	 particles = [P.C2, P.u3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3478,(0,1):C.GC_3479}) 
 
 
V_3255 = Vertex(name = 'V_3255', 
	 particles = [P.C2, P.u3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3480,(0,1):C.GC_3481}) 
 
 
V_3256 = Vertex(name = 'V_3256', 
	 particles = [P.C2, P.u3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3482,(0,1):C.GC_3483}) 
 
 
V_3257 = Vertex(name = 'V_3257', 
	 particles = [P.C2, P.u3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3484,(0,1):C.GC_3485}) 
 
 
V_3258 = Vertex(name = 'V_3258', 
	 particles = [P.C1, P.nu1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3486}) 
 
 
V_3259 = Vertex(name = 'V_3259', 
	 particles = [P.C1, P.nu1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3487}) 
 
 
V_3260 = Vertex(name = 'V_3260', 
	 particles = [P.C1, P.nu1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3488}) 
 
 
V_3261 = Vertex(name = 'V_3261', 
	 particles = [P.C1, P.nu1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3489}) 
 
 
V_3262 = Vertex(name = 'V_3262', 
	 particles = [P.C1, P.nu1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3490}) 
 
 
V_3263 = Vertex(name = 'V_3263', 
	 particles = [P.C1, P.nu1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3491}) 
 
 
V_3264 = Vertex(name = 'V_3264', 
	 particles = [P.C1, P.nu2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3492}) 
 
 
V_3265 = Vertex(name = 'V_3265', 
	 particles = [P.C1, P.nu2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3493}) 
 
 
V_3266 = Vertex(name = 'V_3266', 
	 particles = [P.C1, P.nu2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3494}) 
 
 
V_3267 = Vertex(name = 'V_3267', 
	 particles = [P.C1, P.nu2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3495}) 
 
 
V_3268 = Vertex(name = 'V_3268', 
	 particles = [P.C1, P.nu2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3496}) 
 
 
V_3269 = Vertex(name = 'V_3269', 
	 particles = [P.C1, P.nu2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3497}) 
 
 
V_3270 = Vertex(name = 'V_3270', 
	 particles = [P.C1, P.nu3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3498}) 
 
 
V_3271 = Vertex(name = 'V_3271', 
	 particles = [P.C1, P.nu3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3499}) 
 
 
V_3272 = Vertex(name = 'V_3272', 
	 particles = [P.C1, P.nu3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3500}) 
 
 
V_3273 = Vertex(name = 'V_3273', 
	 particles = [P.C1, P.nu3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3501}) 
 
 
V_3274 = Vertex(name = 'V_3274', 
	 particles = [P.C1, P.nu3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3502}) 
 
 
V_3275 = Vertex(name = 'V_3275', 
	 particles = [P.C1, P.nu3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3503}) 
 
 
V_3276 = Vertex(name = 'V_3276', 
	 particles = [P.C2, P.nu1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3504}) 
 
 
V_3277 = Vertex(name = 'V_3277', 
	 particles = [P.C2, P.nu1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3505}) 
 
 
V_3278 = Vertex(name = 'V_3278', 
	 particles = [P.C2, P.nu1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3506}) 
 
 
V_3279 = Vertex(name = 'V_3279', 
	 particles = [P.C2, P.nu1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3507}) 
 
 
V_3280 = Vertex(name = 'V_3280', 
	 particles = [P.C2, P.nu1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3508}) 
 
 
V_3281 = Vertex(name = 'V_3281', 
	 particles = [P.C2, P.nu1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3509}) 
 
 
V_3282 = Vertex(name = 'V_3282', 
	 particles = [P.C2, P.nu2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3510}) 
 
 
V_3283 = Vertex(name = 'V_3283', 
	 particles = [P.C2, P.nu2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3511}) 
 
 
V_3284 = Vertex(name = 'V_3284', 
	 particles = [P.C2, P.nu2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3512}) 
 
 
V_3285 = Vertex(name = 'V_3285', 
	 particles = [P.C2, P.nu2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3513}) 
 
 
V_3286 = Vertex(name = 'V_3286', 
	 particles = [P.C2, P.nu2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3514}) 
 
 
V_3287 = Vertex(name = 'V_3287', 
	 particles = [P.C2, P.nu2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3515}) 
 
 
V_3288 = Vertex(name = 'V_3288', 
	 particles = [P.C2, P.nu3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3516}) 
 
 
V_3289 = Vertex(name = 'V_3289', 
	 particles = [P.C2, P.nu3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3517}) 
 
 
V_3290 = Vertex(name = 'V_3290', 
	 particles = [P.C2, P.nu3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3518}) 
 
 
V_3291 = Vertex(name = 'V_3291', 
	 particles = [P.C2, P.nu3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3519}) 
 
 
V_3292 = Vertex(name = 'V_3292', 
	 particles = [P.C2, P.nu3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3520}) 
 
 
V_3293 = Vertex(name = 'V_3293', 
	 particles = [P.C2, P.nu3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_3521}) 
 
 
V_3294 = Vertex(name = 'V_3294', 
	 particles = [P.C1bar, P.C1, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3522,(0,1):C.GC_3523}) 
 
 
V_3295 = Vertex(name = 'V_3295', 
	 particles = [P.C1bar, P.C1, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3524,(0,1):C.GC_3525}) 
 
 
V_3296 = Vertex(name = 'V_3296', 
	 particles = [P.C1bar, P.C1, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3526,(0,1):C.GC_3527}) 
 
 
V_3297 = Vertex(name = 'V_3297', 
	 particles = [P.C1bar, P.C2, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3528,(0,1):C.GC_3529}) 
 
 
V_3298 = Vertex(name = 'V_3298', 
	 particles = [P.C1bar, P.C2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3530,(0,1):C.GC_3531}) 
 
 
V_3299 = Vertex(name = 'V_3299', 
	 particles = [P.C1bar, P.C2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3532,(0,1):C.GC_3533}) 
 
 
V_3300 = Vertex(name = 'V_3300', 
	 particles = [P.C2bar, P.C1, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3534,(0,1):C.GC_3535}) 
 
 
V_3301 = Vertex(name = 'V_3301', 
	 particles = [P.C2bar, P.C1, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3536,(0,1):C.GC_3537}) 
 
 
V_3302 = Vertex(name = 'V_3302', 
	 particles = [P.C2bar, P.C1, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3538,(0,1):C.GC_3539}) 
 
 
V_3303 = Vertex(name = 'V_3303', 
	 particles = [P.C2bar, P.C2, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3540,(0,1):C.GC_3541}) 
 
 
V_3304 = Vertex(name = 'V_3304', 
	 particles = [P.C2bar, P.C2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3542,(0,1):C.GC_3543}) 
 
 
V_3305 = Vertex(name = 'V_3305', 
	 particles = [P.C2bar, P.C2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3544,(0,1):C.GC_3545}) 
 
 
V_3306 = Vertex(name = 'V_3306', 
	 particles = [P.d1bar, P.C1, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3546,(0,1):C.GC_3547}) 
 
 
V_3307 = Vertex(name = 'V_3307', 
	 particles = [P.d1bar, P.C1, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3548,(0,1):C.GC_3549}) 
 
 
V_3308 = Vertex(name = 'V_3308', 
	 particles = [P.d1bar, P.C1, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3550,(0,1):C.GC_3551}) 
 
 
V_3309 = Vertex(name = 'V_3309', 
	 particles = [P.d1bar, P.C1, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3552,(0,1):C.GC_3553}) 
 
 
V_3310 = Vertex(name = 'V_3310', 
	 particles = [P.d1bar, P.C1, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3554,(0,1):C.GC_3555}) 
 
 
V_3311 = Vertex(name = 'V_3311', 
	 particles = [P.d1bar, P.C1, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3556,(0,1):C.GC_3557}) 
 
 
V_3312 = Vertex(name = 'V_3312', 
	 particles = [P.d1bar, P.C2, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3558,(0,1):C.GC_3559}) 
 
 
V_3313 = Vertex(name = 'V_3313', 
	 particles = [P.d1bar, P.C2, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3560,(0,1):C.GC_3561}) 
 
 
V_3314 = Vertex(name = 'V_3314', 
	 particles = [P.d1bar, P.C2, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3562,(0,1):C.GC_3563}) 
 
 
V_3315 = Vertex(name = 'V_3315', 
	 particles = [P.d1bar, P.C2, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3564,(0,1):C.GC_3565}) 
 
 
V_3316 = Vertex(name = 'V_3316', 
	 particles = [P.d1bar, P.C2, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3566,(0,1):C.GC_3567}) 
 
 
V_3317 = Vertex(name = 'V_3317', 
	 particles = [P.d1bar, P.C2, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3568,(0,1):C.GC_3569}) 
 
 
V_3318 = Vertex(name = 'V_3318', 
	 particles = [P.d2bar, P.C1, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3570,(0,1):C.GC_3571}) 
 
 
V_3319 = Vertex(name = 'V_3319', 
	 particles = [P.d2bar, P.C1, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3572,(0,1):C.GC_3573}) 
 
 
V_3320 = Vertex(name = 'V_3320', 
	 particles = [P.d2bar, P.C1, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3574,(0,1):C.GC_3575}) 
 
 
V_3321 = Vertex(name = 'V_3321', 
	 particles = [P.d2bar, P.C1, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3576,(0,1):C.GC_3577}) 
 
 
V_3322 = Vertex(name = 'V_3322', 
	 particles = [P.d2bar, P.C1, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3578,(0,1):C.GC_3579}) 
 
 
V_3323 = Vertex(name = 'V_3323', 
	 particles = [P.d2bar, P.C1, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3580,(0,1):C.GC_3581}) 
 
 
V_3324 = Vertex(name = 'V_3324', 
	 particles = [P.d2bar, P.C2, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3582,(0,1):C.GC_3583}) 
 
 
V_3325 = Vertex(name = 'V_3325', 
	 particles = [P.d2bar, P.C2, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3584,(0,1):C.GC_3585}) 
 
 
V_3326 = Vertex(name = 'V_3326', 
	 particles = [P.d2bar, P.C2, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3586,(0,1):C.GC_3587}) 
 
 
V_3327 = Vertex(name = 'V_3327', 
	 particles = [P.d2bar, P.C2, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3588,(0,1):C.GC_3589}) 
 
 
V_3328 = Vertex(name = 'V_3328', 
	 particles = [P.d2bar, P.C2, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3590,(0,1):C.GC_3591}) 
 
 
V_3329 = Vertex(name = 'V_3329', 
	 particles = [P.d2bar, P.C2, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3592,(0,1):C.GC_3593}) 
 
 
V_3330 = Vertex(name = 'V_3330', 
	 particles = [P.d3bar, P.C1, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3594,(0,1):C.GC_3595}) 
 
 
V_3331 = Vertex(name = 'V_3331', 
	 particles = [P.d3bar, P.C1, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3596,(0,1):C.GC_3597}) 
 
 
V_3332 = Vertex(name = 'V_3332', 
	 particles = [P.d3bar, P.C1, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3598,(0,1):C.GC_3599}) 
 
 
V_3333 = Vertex(name = 'V_3333', 
	 particles = [P.d3bar, P.C1, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3600,(0,1):C.GC_3601}) 
 
 
V_3334 = Vertex(name = 'V_3334', 
	 particles = [P.d3bar, P.C1, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3602,(0,1):C.GC_3603}) 
 
 
V_3335 = Vertex(name = 'V_3335', 
	 particles = [P.d3bar, P.C1, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3604,(0,1):C.GC_3605}) 
 
 
V_3336 = Vertex(name = 'V_3336', 
	 particles = [P.d3bar, P.C2, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3606,(0,1):C.GC_3607}) 
 
 
V_3337 = Vertex(name = 'V_3337', 
	 particles = [P.d3bar, P.C2, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3608,(0,1):C.GC_3609}) 
 
 
V_3338 = Vertex(name = 'V_3338', 
	 particles = [P.d3bar, P.C2, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3610,(0,1):C.GC_3611}) 
 
 
V_3339 = Vertex(name = 'V_3339', 
	 particles = [P.d3bar, P.C2, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3612,(0,1):C.GC_3613}) 
 
 
V_3340 = Vertex(name = 'V_3340', 
	 particles = [P.d3bar, P.C2, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3614,(0,1):C.GC_3615}) 
 
 
V_3341 = Vertex(name = 'V_3341', 
	 particles = [P.d3bar, P.C2, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3616,(0,1):C.GC_3617}) 
 
 
V_3342 = Vertex(name = 'V_3342', 
	 particles = [P.e1bar, P.C1, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3618,(0,1):C.GC_3619}) 
 
 
V_3343 = Vertex(name = 'V_3343', 
	 particles = [P.e1bar, P.C1, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3620,(0,1):C.GC_3621}) 
 
 
V_3344 = Vertex(name = 'V_3344', 
	 particles = [P.e1bar, P.C1, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3622,(0,1):C.GC_3623}) 
 
 
V_3345 = Vertex(name = 'V_3345', 
	 particles = [P.e1bar, P.C2, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3624,(0,1):C.GC_3625}) 
 
 
V_3346 = Vertex(name = 'V_3346', 
	 particles = [P.e1bar, P.C2, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3626,(0,1):C.GC_3627}) 
 
 
V_3347 = Vertex(name = 'V_3347', 
	 particles = [P.e1bar, P.C2, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3628,(0,1):C.GC_3629}) 
 
 
V_3348 = Vertex(name = 'V_3348', 
	 particles = [P.e2bar, P.C1, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3630,(0,1):C.GC_3631}) 
 
 
V_3349 = Vertex(name = 'V_3349', 
	 particles = [P.e2bar, P.C1, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3632,(0,1):C.GC_3633}) 
 
 
V_3350 = Vertex(name = 'V_3350', 
	 particles = [P.e2bar, P.C1, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3634,(0,1):C.GC_3635}) 
 
 
V_3351 = Vertex(name = 'V_3351', 
	 particles = [P.e2bar, P.C2, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3636,(0,1):C.GC_3637}) 
 
 
V_3352 = Vertex(name = 'V_3352', 
	 particles = [P.e2bar, P.C2, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3638,(0,1):C.GC_3639}) 
 
 
V_3353 = Vertex(name = 'V_3353', 
	 particles = [P.e2bar, P.C2, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3640,(0,1):C.GC_3641}) 
 
 
V_3354 = Vertex(name = 'V_3354', 
	 particles = [P.e3bar, P.C1, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3642,(0,1):C.GC_3643}) 
 
 
V_3355 = Vertex(name = 'V_3355', 
	 particles = [P.e3bar, P.C1, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3644,(0,1):C.GC_3645}) 
 
 
V_3356 = Vertex(name = 'V_3356', 
	 particles = [P.e3bar, P.C1, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3646,(0,1):C.GC_3647}) 
 
 
V_3357 = Vertex(name = 'V_3357', 
	 particles = [P.e3bar, P.C2, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3648,(0,1):C.GC_3649}) 
 
 
V_3358 = Vertex(name = 'V_3358', 
	 particles = [P.e3bar, P.C2, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3650,(0,1):C.GC_3651}) 
 
 
V_3359 = Vertex(name = 'V_3359', 
	 particles = [P.e3bar, P.C2, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3652,(0,1):C.GC_3653}) 
 
 
V_3360 = Vertex(name = 'V_3360', 
	 particles = [P.N1, P.N1, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3654,(0,1):C.GC_3655}) 
 
 
V_3361 = Vertex(name = 'V_3361', 
	 particles = [P.N1, P.N1, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3656,(0,1):C.GC_3657}) 
 
 
V_3362 = Vertex(name = 'V_3362', 
	 particles = [P.N1, P.N1, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3658,(0,1):C.GC_3659}) 
 
 
V_3363 = Vertex(name = 'V_3363', 
	 particles = [P.N1, P.N2, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3660,(0,1):C.GC_3661}) 
 
 
V_3364 = Vertex(name = 'V_3364', 
	 particles = [P.N1, P.N2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3662,(0,1):C.GC_3663}) 
 
 
V_3365 = Vertex(name = 'V_3365', 
	 particles = [P.N1, P.N2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3664,(0,1):C.GC_3665}) 
 
 
V_3366 = Vertex(name = 'V_3366', 
	 particles = [P.N1, P.N3, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3666,(0,1):C.GC_3667}) 
 
 
V_3367 = Vertex(name = 'V_3367', 
	 particles = [P.N1, P.N3, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3668,(0,1):C.GC_3669}) 
 
 
V_3368 = Vertex(name = 'V_3368', 
	 particles = [P.N1, P.N3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3670,(0,1):C.GC_3671}) 
 
 
V_3369 = Vertex(name = 'V_3369', 
	 particles = [P.N1, P.N4, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3672,(0,1):C.GC_3673}) 
 
 
V_3370 = Vertex(name = 'V_3370', 
	 particles = [P.N1, P.N4, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3674,(0,1):C.GC_3675}) 
 
 
V_3371 = Vertex(name = 'V_3371', 
	 particles = [P.N1, P.N4, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3676,(0,1):C.GC_3677}) 
 
 
V_3372 = Vertex(name = 'V_3372', 
	 particles = [P.N1, P.N5, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3678,(0,1):C.GC_3679}) 
 
 
V_3373 = Vertex(name = 'V_3373', 
	 particles = [P.N1, P.N5, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3680,(0,1):C.GC_3681}) 
 
 
V_3374 = Vertex(name = 'V_3374', 
	 particles = [P.N1, P.N5, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3682,(0,1):C.GC_3683}) 
 
 
V_3375 = Vertex(name = 'V_3375', 
	 particles = [P.N1, P.N6, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3684,(0,1):C.GC_3685}) 
 
 
V_3376 = Vertex(name = 'V_3376', 
	 particles = [P.N1, P.N6, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3686,(0,1):C.GC_3687}) 
 
 
V_3377 = Vertex(name = 'V_3377', 
	 particles = [P.N1, P.N6, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3688,(0,1):C.GC_3689}) 
 
 
V_3378 = Vertex(name = 'V_3378', 
	 particles = [P.N2, P.N2, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3690,(0,1):C.GC_3691}) 
 
 
V_3379 = Vertex(name = 'V_3379', 
	 particles = [P.N2, P.N2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3692,(0,1):C.GC_3693}) 
 
 
V_3380 = Vertex(name = 'V_3380', 
	 particles = [P.N2, P.N2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3694,(0,1):C.GC_3695}) 
 
 
V_3381 = Vertex(name = 'V_3381', 
	 particles = [P.N2, P.N3, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3696,(0,1):C.GC_3697}) 
 
 
V_3382 = Vertex(name = 'V_3382', 
	 particles = [P.N2, P.N3, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3698,(0,1):C.GC_3699}) 
 
 
V_3383 = Vertex(name = 'V_3383', 
	 particles = [P.N2, P.N3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3700,(0,1):C.GC_3701}) 
 
 
V_3384 = Vertex(name = 'V_3384', 
	 particles = [P.N2, P.N4, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3702,(0,1):C.GC_3703}) 
 
 
V_3385 = Vertex(name = 'V_3385', 
	 particles = [P.N2, P.N4, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3704,(0,1):C.GC_3705}) 
 
 
V_3386 = Vertex(name = 'V_3386', 
	 particles = [P.N2, P.N4, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3706,(0,1):C.GC_3707}) 
 
 
V_3387 = Vertex(name = 'V_3387', 
	 particles = [P.N2, P.N5, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3708,(0,1):C.GC_3709}) 
 
 
V_3388 = Vertex(name = 'V_3388', 
	 particles = [P.N2, P.N5, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3710,(0,1):C.GC_3711}) 
 
 
V_3389 = Vertex(name = 'V_3389', 
	 particles = [P.N2, P.N5, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3712,(0,1):C.GC_3713}) 
 
 
V_3390 = Vertex(name = 'V_3390', 
	 particles = [P.N2, P.N6, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3714,(0,1):C.GC_3715}) 
 
 
V_3391 = Vertex(name = 'V_3391', 
	 particles = [P.N2, P.N6, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3716,(0,1):C.GC_3717}) 
 
 
V_3392 = Vertex(name = 'V_3392', 
	 particles = [P.N2, P.N6, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3718,(0,1):C.GC_3719}) 
 
 
V_3393 = Vertex(name = 'V_3393', 
	 particles = [P.N3, P.N3, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3720,(0,1):C.GC_3721}) 
 
 
V_3394 = Vertex(name = 'V_3394', 
	 particles = [P.N3, P.N3, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3722,(0,1):C.GC_3723}) 
 
 
V_3395 = Vertex(name = 'V_3395', 
	 particles = [P.N3, P.N3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3724,(0,1):C.GC_3725}) 
 
 
V_3396 = Vertex(name = 'V_3396', 
	 particles = [P.N3, P.N4, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3726,(0,1):C.GC_3727}) 
 
 
V_3397 = Vertex(name = 'V_3397', 
	 particles = [P.N3, P.N4, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3728,(0,1):C.GC_3729}) 
 
 
V_3398 = Vertex(name = 'V_3398', 
	 particles = [P.N3, P.N4, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3730,(0,1):C.GC_3731}) 
 
 
V_3399 = Vertex(name = 'V_3399', 
	 particles = [P.N3, P.N5, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3732,(0,1):C.GC_3733}) 
 
 
V_3400 = Vertex(name = 'V_3400', 
	 particles = [P.N3, P.N5, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3734,(0,1):C.GC_3735}) 
 
 
V_3401 = Vertex(name = 'V_3401', 
	 particles = [P.N3, P.N5, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3736,(0,1):C.GC_3737}) 
 
 
V_3402 = Vertex(name = 'V_3402', 
	 particles = [P.N3, P.N6, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3738,(0,1):C.GC_3739}) 
 
 
V_3403 = Vertex(name = 'V_3403', 
	 particles = [P.N3, P.N6, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3740,(0,1):C.GC_3741}) 
 
 
V_3404 = Vertex(name = 'V_3404', 
	 particles = [P.N3, P.N6, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3742,(0,1):C.GC_3743}) 
 
 
V_3405 = Vertex(name = 'V_3405', 
	 particles = [P.N4, P.N4, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3744,(0,1):C.GC_3745}) 
 
 
V_3406 = Vertex(name = 'V_3406', 
	 particles = [P.N4, P.N4, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3746,(0,1):C.GC_3747}) 
 
 
V_3407 = Vertex(name = 'V_3407', 
	 particles = [P.N4, P.N4, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3748,(0,1):C.GC_3749}) 
 
 
V_3408 = Vertex(name = 'V_3408', 
	 particles = [P.N4, P.N5, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3750,(0,1):C.GC_3751}) 
 
 
V_3409 = Vertex(name = 'V_3409', 
	 particles = [P.N4, P.N5, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3752,(0,1):C.GC_3753}) 
 
 
V_3410 = Vertex(name = 'V_3410', 
	 particles = [P.N4, P.N5, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3754,(0,1):C.GC_3755}) 
 
 
V_3411 = Vertex(name = 'V_3411', 
	 particles = [P.N4, P.N6, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3756,(0,1):C.GC_3757}) 
 
 
V_3412 = Vertex(name = 'V_3412', 
	 particles = [P.N4, P.N6, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3758,(0,1):C.GC_3759}) 
 
 
V_3413 = Vertex(name = 'V_3413', 
	 particles = [P.N4, P.N6, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3760,(0,1):C.GC_3761}) 
 
 
V_3414 = Vertex(name = 'V_3414', 
	 particles = [P.N5, P.N5, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3762,(0,1):C.GC_3763}) 
 
 
V_3415 = Vertex(name = 'V_3415', 
	 particles = [P.N5, P.N5, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3764,(0,1):C.GC_3765}) 
 
 
V_3416 = Vertex(name = 'V_3416', 
	 particles = [P.N5, P.N5, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3766,(0,1):C.GC_3767}) 
 
 
V_3417 = Vertex(name = 'V_3417', 
	 particles = [P.N5, P.N6, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3768,(0,1):C.GC_3769}) 
 
 
V_3418 = Vertex(name = 'V_3418', 
	 particles = [P.N5, P.N6, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3770,(0,1):C.GC_3771}) 
 
 
V_3419 = Vertex(name = 'V_3419', 
	 particles = [P.N5, P.N6, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3772,(0,1):C.GC_3773}) 
 
 
V_3420 = Vertex(name = 'V_3420', 
	 particles = [P.N6, P.N6, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3774,(0,1):C.GC_3775}) 
 
 
V_3421 = Vertex(name = 'V_3421', 
	 particles = [P.N6, P.N6, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3776,(0,1):C.GC_3777}) 
 
 
V_3422 = Vertex(name = 'V_3422', 
	 particles = [P.N6, P.N6, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3778,(0,1):C.GC_3779}) 
 
 
V_3423 = Vertex(name = 'V_3423', 
	 particles = [P.N1, P.d1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3780,(0,1):C.GC_3781}) 
 
 
V_3424 = Vertex(name = 'V_3424', 
	 particles = [P.N1, P.d1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3782,(0,1):C.GC_3783}) 
 
 
V_3425 = Vertex(name = 'V_3425', 
	 particles = [P.N1, P.d1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3784,(0,1):C.GC_3785}) 
 
 
V_3426 = Vertex(name = 'V_3426', 
	 particles = [P.N1, P.d1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3786,(0,1):C.GC_3787}) 
 
 
V_3427 = Vertex(name = 'V_3427', 
	 particles = [P.N1, P.d1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3788,(0,1):C.GC_3789}) 
 
 
V_3428 = Vertex(name = 'V_3428', 
	 particles = [P.N1, P.d1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3790,(0,1):C.GC_3791}) 
 
 
V_3429 = Vertex(name = 'V_3429', 
	 particles = [P.N1, P.d2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3792,(0,1):C.GC_3793}) 
 
 
V_3430 = Vertex(name = 'V_3430', 
	 particles = [P.N1, P.d2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3794,(0,1):C.GC_3795}) 
 
 
V_3431 = Vertex(name = 'V_3431', 
	 particles = [P.N1, P.d2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3796,(0,1):C.GC_3797}) 
 
 
V_3432 = Vertex(name = 'V_3432', 
	 particles = [P.N1, P.d2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3798,(0,1):C.GC_3799}) 
 
 
V_3433 = Vertex(name = 'V_3433', 
	 particles = [P.N1, P.d2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3800,(0,1):C.GC_3801}) 
 
 
V_3434 = Vertex(name = 'V_3434', 
	 particles = [P.N1, P.d2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3802,(0,1):C.GC_3803}) 
 
 
V_3435 = Vertex(name = 'V_3435', 
	 particles = [P.N1, P.d3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3804,(0,1):C.GC_3805}) 
 
 
V_3436 = Vertex(name = 'V_3436', 
	 particles = [P.N1, P.d3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3806,(0,1):C.GC_3807}) 
 
 
V_3437 = Vertex(name = 'V_3437', 
	 particles = [P.N1, P.d3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3808,(0,1):C.GC_3809}) 
 
 
V_3438 = Vertex(name = 'V_3438', 
	 particles = [P.N1, P.d3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3810,(0,1):C.GC_3811}) 
 
 
V_3439 = Vertex(name = 'V_3439', 
	 particles = [P.N1, P.d3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3812,(0,1):C.GC_3813}) 
 
 
V_3440 = Vertex(name = 'V_3440', 
	 particles = [P.N1, P.d3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3814,(0,1):C.GC_3815}) 
 
 
V_3441 = Vertex(name = 'V_3441', 
	 particles = [P.N2, P.d1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3816,(0,1):C.GC_3817}) 
 
 
V_3442 = Vertex(name = 'V_3442', 
	 particles = [P.N2, P.d1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3818,(0,1):C.GC_3819}) 
 
 
V_3443 = Vertex(name = 'V_3443', 
	 particles = [P.N2, P.d1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3820,(0,1):C.GC_3821}) 
 
 
V_3444 = Vertex(name = 'V_3444', 
	 particles = [P.N2, P.d1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3822,(0,1):C.GC_3823}) 
 
 
V_3445 = Vertex(name = 'V_3445', 
	 particles = [P.N2, P.d1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3824,(0,1):C.GC_3825}) 
 
 
V_3446 = Vertex(name = 'V_3446', 
	 particles = [P.N2, P.d1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3826,(0,1):C.GC_3827}) 
 
 
V_3447 = Vertex(name = 'V_3447', 
	 particles = [P.N2, P.d2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3828,(0,1):C.GC_3829}) 
 
 
V_3448 = Vertex(name = 'V_3448', 
	 particles = [P.N2, P.d2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3830,(0,1):C.GC_3831}) 
 
 
V_3449 = Vertex(name = 'V_3449', 
	 particles = [P.N2, P.d2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3832,(0,1):C.GC_3833}) 
 
 
V_3450 = Vertex(name = 'V_3450', 
	 particles = [P.N2, P.d2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3834,(0,1):C.GC_3835}) 
 
 
V_3451 = Vertex(name = 'V_3451', 
	 particles = [P.N2, P.d2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3836,(0,1):C.GC_3837}) 
 
 
V_3452 = Vertex(name = 'V_3452', 
	 particles = [P.N2, P.d2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3838,(0,1):C.GC_3839}) 
 
 
V_3453 = Vertex(name = 'V_3453', 
	 particles = [P.N2, P.d3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3840,(0,1):C.GC_3841}) 
 
 
V_3454 = Vertex(name = 'V_3454', 
	 particles = [P.N2, P.d3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3842,(0,1):C.GC_3843}) 
 
 
V_3455 = Vertex(name = 'V_3455', 
	 particles = [P.N2, P.d3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3844,(0,1):C.GC_3845}) 
 
 
V_3456 = Vertex(name = 'V_3456', 
	 particles = [P.N2, P.d3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3846,(0,1):C.GC_3847}) 
 
 
V_3457 = Vertex(name = 'V_3457', 
	 particles = [P.N2, P.d3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3848,(0,1):C.GC_3849}) 
 
 
V_3458 = Vertex(name = 'V_3458', 
	 particles = [P.N2, P.d3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3850,(0,1):C.GC_3851}) 
 
 
V_3459 = Vertex(name = 'V_3459', 
	 particles = [P.N3, P.d1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3852,(0,1):C.GC_3853}) 
 
 
V_3460 = Vertex(name = 'V_3460', 
	 particles = [P.N3, P.d1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3854,(0,1):C.GC_3855}) 
 
 
V_3461 = Vertex(name = 'V_3461', 
	 particles = [P.N3, P.d1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3856,(0,1):C.GC_3857}) 
 
 
V_3462 = Vertex(name = 'V_3462', 
	 particles = [P.N3, P.d1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3858,(0,1):C.GC_3859}) 
 
 
V_3463 = Vertex(name = 'V_3463', 
	 particles = [P.N3, P.d1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3860,(0,1):C.GC_3861}) 
 
 
V_3464 = Vertex(name = 'V_3464', 
	 particles = [P.N3, P.d1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3862,(0,1):C.GC_3863}) 
 
 
V_3465 = Vertex(name = 'V_3465', 
	 particles = [P.N3, P.d2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3864,(0,1):C.GC_3865}) 
 
 
V_3466 = Vertex(name = 'V_3466', 
	 particles = [P.N3, P.d2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3866,(0,1):C.GC_3867}) 
 
 
V_3467 = Vertex(name = 'V_3467', 
	 particles = [P.N3, P.d2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3868,(0,1):C.GC_3869}) 
 
 
V_3468 = Vertex(name = 'V_3468', 
	 particles = [P.N3, P.d2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3870,(0,1):C.GC_3871}) 
 
 
V_3469 = Vertex(name = 'V_3469', 
	 particles = [P.N3, P.d2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3872,(0,1):C.GC_3873}) 
 
 
V_3470 = Vertex(name = 'V_3470', 
	 particles = [P.N3, P.d2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3874,(0,1):C.GC_3875}) 
 
 
V_3471 = Vertex(name = 'V_3471', 
	 particles = [P.N3, P.d3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3876,(0,1):C.GC_3877}) 
 
 
V_3472 = Vertex(name = 'V_3472', 
	 particles = [P.N3, P.d3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3878,(0,1):C.GC_3879}) 
 
 
V_3473 = Vertex(name = 'V_3473', 
	 particles = [P.N3, P.d3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3880,(0,1):C.GC_3881}) 
 
 
V_3474 = Vertex(name = 'V_3474', 
	 particles = [P.N3, P.d3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3882,(0,1):C.GC_3883}) 
 
 
V_3475 = Vertex(name = 'V_3475', 
	 particles = [P.N3, P.d3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3884,(0,1):C.GC_3885}) 
 
 
V_3476 = Vertex(name = 'V_3476', 
	 particles = [P.N3, P.d3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3886,(0,1):C.GC_3887}) 
 
 
V_3477 = Vertex(name = 'V_3477', 
	 particles = [P.N4, P.d1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3888,(0,1):C.GC_3889}) 
 
 
V_3478 = Vertex(name = 'V_3478', 
	 particles = [P.N4, P.d1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3890,(0,1):C.GC_3891}) 
 
 
V_3479 = Vertex(name = 'V_3479', 
	 particles = [P.N4, P.d1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3892,(0,1):C.GC_3893}) 
 
 
V_3480 = Vertex(name = 'V_3480', 
	 particles = [P.N4, P.d1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3894,(0,1):C.GC_3895}) 
 
 
V_3481 = Vertex(name = 'V_3481', 
	 particles = [P.N4, P.d1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3896,(0,1):C.GC_3897}) 
 
 
V_3482 = Vertex(name = 'V_3482', 
	 particles = [P.N4, P.d1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3898,(0,1):C.GC_3899}) 
 
 
V_3483 = Vertex(name = 'V_3483', 
	 particles = [P.N4, P.d2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3900,(0,1):C.GC_3901}) 
 
 
V_3484 = Vertex(name = 'V_3484', 
	 particles = [P.N4, P.d2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3902,(0,1):C.GC_3903}) 
 
 
V_3485 = Vertex(name = 'V_3485', 
	 particles = [P.N4, P.d2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3904,(0,1):C.GC_3905}) 
 
 
V_3486 = Vertex(name = 'V_3486', 
	 particles = [P.N4, P.d2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3906,(0,1):C.GC_3907}) 
 
 
V_3487 = Vertex(name = 'V_3487', 
	 particles = [P.N4, P.d2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3908,(0,1):C.GC_3909}) 
 
 
V_3488 = Vertex(name = 'V_3488', 
	 particles = [P.N4, P.d2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3910,(0,1):C.GC_3911}) 
 
 
V_3489 = Vertex(name = 'V_3489', 
	 particles = [P.N4, P.d3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3912,(0,1):C.GC_3913}) 
 
 
V_3490 = Vertex(name = 'V_3490', 
	 particles = [P.N4, P.d3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3914,(0,1):C.GC_3915}) 
 
 
V_3491 = Vertex(name = 'V_3491', 
	 particles = [P.N4, P.d3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3916,(0,1):C.GC_3917}) 
 
 
V_3492 = Vertex(name = 'V_3492', 
	 particles = [P.N4, P.d3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3918,(0,1):C.GC_3919}) 
 
 
V_3493 = Vertex(name = 'V_3493', 
	 particles = [P.N4, P.d3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3920,(0,1):C.GC_3921}) 
 
 
V_3494 = Vertex(name = 'V_3494', 
	 particles = [P.N4, P.d3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3922,(0,1):C.GC_3923}) 
 
 
V_3495 = Vertex(name = 'V_3495', 
	 particles = [P.N5, P.d1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3924,(0,1):C.GC_3925}) 
 
 
V_3496 = Vertex(name = 'V_3496', 
	 particles = [P.N5, P.d1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3926,(0,1):C.GC_3927}) 
 
 
V_3497 = Vertex(name = 'V_3497', 
	 particles = [P.N5, P.d1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3928,(0,1):C.GC_3929}) 
 
 
V_3498 = Vertex(name = 'V_3498', 
	 particles = [P.N5, P.d1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3930,(0,1):C.GC_3931}) 
 
 
V_3499 = Vertex(name = 'V_3499', 
	 particles = [P.N5, P.d1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3932,(0,1):C.GC_3933}) 
 
 
V_3500 = Vertex(name = 'V_3500', 
	 particles = [P.N5, P.d1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3934,(0,1):C.GC_3935}) 
 
 
V_3501 = Vertex(name = 'V_3501', 
	 particles = [P.N5, P.d2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3936,(0,1):C.GC_3937}) 
 
 
V_3502 = Vertex(name = 'V_3502', 
	 particles = [P.N5, P.d2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3938,(0,1):C.GC_3939}) 
 
 
V_3503 = Vertex(name = 'V_3503', 
	 particles = [P.N5, P.d2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3940,(0,1):C.GC_3941}) 
 
 
V_3504 = Vertex(name = 'V_3504', 
	 particles = [P.N5, P.d2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3942,(0,1):C.GC_3943}) 
 
 
V_3505 = Vertex(name = 'V_3505', 
	 particles = [P.N5, P.d2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3944,(0,1):C.GC_3945}) 
 
 
V_3506 = Vertex(name = 'V_3506', 
	 particles = [P.N5, P.d2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3946,(0,1):C.GC_3947}) 
 
 
V_3507 = Vertex(name = 'V_3507', 
	 particles = [P.N5, P.d3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3948,(0,1):C.GC_3949}) 
 
 
V_3508 = Vertex(name = 'V_3508', 
	 particles = [P.N5, P.d3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3950,(0,1):C.GC_3951}) 
 
 
V_3509 = Vertex(name = 'V_3509', 
	 particles = [P.N5, P.d3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3952,(0,1):C.GC_3953}) 
 
 
V_3510 = Vertex(name = 'V_3510', 
	 particles = [P.N5, P.d3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3954,(0,1):C.GC_3955}) 
 
 
V_3511 = Vertex(name = 'V_3511', 
	 particles = [P.N5, P.d3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3956,(0,1):C.GC_3957}) 
 
 
V_3512 = Vertex(name = 'V_3512', 
	 particles = [P.N5, P.d3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3958,(0,1):C.GC_3959}) 
 
 
V_3513 = Vertex(name = 'V_3513', 
	 particles = [P.N6, P.d1, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3960,(0,1):C.GC_3961}) 
 
 
V_3514 = Vertex(name = 'V_3514', 
	 particles = [P.N6, P.d1, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3962,(0,1):C.GC_3963}) 
 
 
V_3515 = Vertex(name = 'V_3515', 
	 particles = [P.N6, P.d1, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3964,(0,1):C.GC_3965}) 
 
 
V_3516 = Vertex(name = 'V_3516', 
	 particles = [P.N6, P.d1, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3966,(0,1):C.GC_3967}) 
 
 
V_3517 = Vertex(name = 'V_3517', 
	 particles = [P.N6, P.d1, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3968,(0,1):C.GC_3969}) 
 
 
V_3518 = Vertex(name = 'V_3518', 
	 particles = [P.N6, P.d1, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3970,(0,1):C.GC_3971}) 
 
 
V_3519 = Vertex(name = 'V_3519', 
	 particles = [P.N6, P.d2, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3972,(0,1):C.GC_3973}) 
 
 
V_3520 = Vertex(name = 'V_3520', 
	 particles = [P.N6, P.d2, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3974,(0,1):C.GC_3975}) 
 
 
V_3521 = Vertex(name = 'V_3521', 
	 particles = [P.N6, P.d2, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3976,(0,1):C.GC_3977}) 
 
 
V_3522 = Vertex(name = 'V_3522', 
	 particles = [P.N6, P.d2, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3978,(0,1):C.GC_3979}) 
 
 
V_3523 = Vertex(name = 'V_3523', 
	 particles = [P.N6, P.d2, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3980,(0,1):C.GC_3981}) 
 
 
V_3524 = Vertex(name = 'V_3524', 
	 particles = [P.N6, P.d2, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3982,(0,1):C.GC_3983}) 
 
 
V_3525 = Vertex(name = 'V_3525', 
	 particles = [P.N6, P.d3, P.sd1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3984,(0,1):C.GC_3985}) 
 
 
V_3526 = Vertex(name = 'V_3526', 
	 particles = [P.N6, P.d3, P.sd2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3986,(0,1):C.GC_3987}) 
 
 
V_3527 = Vertex(name = 'V_3527', 
	 particles = [P.N6, P.d3, P.sd3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3988,(0,1):C.GC_3989}) 
 
 
V_3528 = Vertex(name = 'V_3528', 
	 particles = [P.N6, P.d3, P.sd4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3990,(0,1):C.GC_3991}) 
 
 
V_3529 = Vertex(name = 'V_3529', 
	 particles = [P.N6, P.d3, P.sd5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3992,(0,1):C.GC_3993}) 
 
 
V_3530 = Vertex(name = 'V_3530', 
	 particles = [P.N6, P.d3, P.sd6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3994,(0,1):C.GC_3995}) 
 
 
V_3531 = Vertex(name = 'V_3531', 
	 particles = [P.N1, P.e1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3996,(0,1):C.GC_3997}) 
 
 
V_3532 = Vertex(name = 'V_3532', 
	 particles = [P.N1, P.e1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_3998,(0,1):C.GC_3999}) 
 
 
V_3533 = Vertex(name = 'V_3533', 
	 particles = [P.N1, P.e1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4000,(0,1):C.GC_4001}) 
 
 
V_3534 = Vertex(name = 'V_3534', 
	 particles = [P.N1, P.e1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4002,(0,1):C.GC_4003}) 
 
 
V_3535 = Vertex(name = 'V_3535', 
	 particles = [P.N1, P.e1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4004,(0,1):C.GC_4005}) 
 
 
V_3536 = Vertex(name = 'V_3536', 
	 particles = [P.N1, P.e1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4006,(0,1):C.GC_4007}) 
 
 
V_3537 = Vertex(name = 'V_3537', 
	 particles = [P.N1, P.e2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4008,(0,1):C.GC_4009}) 
 
 
V_3538 = Vertex(name = 'V_3538', 
	 particles = [P.N1, P.e2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4010,(0,1):C.GC_4011}) 
 
 
V_3539 = Vertex(name = 'V_3539', 
	 particles = [P.N1, P.e2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4012,(0,1):C.GC_4013}) 
 
 
V_3540 = Vertex(name = 'V_3540', 
	 particles = [P.N1, P.e2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4014,(0,1):C.GC_4015}) 
 
 
V_3541 = Vertex(name = 'V_3541', 
	 particles = [P.N1, P.e2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4016,(0,1):C.GC_4017}) 
 
 
V_3542 = Vertex(name = 'V_3542', 
	 particles = [P.N1, P.e2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4018,(0,1):C.GC_4019}) 
 
 
V_3543 = Vertex(name = 'V_3543', 
	 particles = [P.N1, P.e3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4020,(0,1):C.GC_4021}) 
 
 
V_3544 = Vertex(name = 'V_3544', 
	 particles = [P.N1, P.e3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4022,(0,1):C.GC_4023}) 
 
 
V_3545 = Vertex(name = 'V_3545', 
	 particles = [P.N1, P.e3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4024,(0,1):C.GC_4025}) 
 
 
V_3546 = Vertex(name = 'V_3546', 
	 particles = [P.N1, P.e3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4026,(0,1):C.GC_4027}) 
 
 
V_3547 = Vertex(name = 'V_3547', 
	 particles = [P.N1, P.e3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4028,(0,1):C.GC_4029}) 
 
 
V_3548 = Vertex(name = 'V_3548', 
	 particles = [P.N1, P.e3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4030,(0,1):C.GC_4031}) 
 
 
V_3549 = Vertex(name = 'V_3549', 
	 particles = [P.N2, P.e1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4032,(0,1):C.GC_4033}) 
 
 
V_3550 = Vertex(name = 'V_3550', 
	 particles = [P.N2, P.e1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4034,(0,1):C.GC_4035}) 
 
 
V_3551 = Vertex(name = 'V_3551', 
	 particles = [P.N2, P.e1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4036,(0,1):C.GC_4037}) 
 
 
V_3552 = Vertex(name = 'V_3552', 
	 particles = [P.N2, P.e1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4038,(0,1):C.GC_4039}) 
 
 
V_3553 = Vertex(name = 'V_3553', 
	 particles = [P.N2, P.e1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4040,(0,1):C.GC_4041}) 
 
 
V_3554 = Vertex(name = 'V_3554', 
	 particles = [P.N2, P.e1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4042,(0,1):C.GC_4043}) 
 
 
V_3555 = Vertex(name = 'V_3555', 
	 particles = [P.N2, P.e2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4044,(0,1):C.GC_4045}) 
 
 
V_3556 = Vertex(name = 'V_3556', 
	 particles = [P.N2, P.e2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4046,(0,1):C.GC_4047}) 
 
 
V_3557 = Vertex(name = 'V_3557', 
	 particles = [P.N2, P.e2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4048,(0,1):C.GC_4049}) 
 
 
V_3558 = Vertex(name = 'V_3558', 
	 particles = [P.N2, P.e2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4050,(0,1):C.GC_4051}) 
 
 
V_3559 = Vertex(name = 'V_3559', 
	 particles = [P.N2, P.e2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4052,(0,1):C.GC_4053}) 
 
 
V_3560 = Vertex(name = 'V_3560', 
	 particles = [P.N2, P.e2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4054,(0,1):C.GC_4055}) 
 
 
V_3561 = Vertex(name = 'V_3561', 
	 particles = [P.N2, P.e3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4056,(0,1):C.GC_4057}) 
 
 
V_3562 = Vertex(name = 'V_3562', 
	 particles = [P.N2, P.e3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4058,(0,1):C.GC_4059}) 
 
 
V_3563 = Vertex(name = 'V_3563', 
	 particles = [P.N2, P.e3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4060,(0,1):C.GC_4061}) 
 
 
V_3564 = Vertex(name = 'V_3564', 
	 particles = [P.N2, P.e3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4062,(0,1):C.GC_4063}) 
 
 
V_3565 = Vertex(name = 'V_3565', 
	 particles = [P.N2, P.e3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4064,(0,1):C.GC_4065}) 
 
 
V_3566 = Vertex(name = 'V_3566', 
	 particles = [P.N2, P.e3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4066,(0,1):C.GC_4067}) 
 
 
V_3567 = Vertex(name = 'V_3567', 
	 particles = [P.N3, P.e1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4068,(0,1):C.GC_4069}) 
 
 
V_3568 = Vertex(name = 'V_3568', 
	 particles = [P.N3, P.e1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4070,(0,1):C.GC_4071}) 
 
 
V_3569 = Vertex(name = 'V_3569', 
	 particles = [P.N3, P.e1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4072,(0,1):C.GC_4073}) 
 
 
V_3570 = Vertex(name = 'V_3570', 
	 particles = [P.N3, P.e1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4074,(0,1):C.GC_4075}) 
 
 
V_3571 = Vertex(name = 'V_3571', 
	 particles = [P.N3, P.e1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4076,(0,1):C.GC_4077}) 
 
 
V_3572 = Vertex(name = 'V_3572', 
	 particles = [P.N3, P.e1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4078,(0,1):C.GC_4079}) 
 
 
V_3573 = Vertex(name = 'V_3573', 
	 particles = [P.N3, P.e2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4080,(0,1):C.GC_4081}) 
 
 
V_3574 = Vertex(name = 'V_3574', 
	 particles = [P.N3, P.e2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4082,(0,1):C.GC_4083}) 
 
 
V_3575 = Vertex(name = 'V_3575', 
	 particles = [P.N3, P.e2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4084,(0,1):C.GC_4085}) 
 
 
V_3576 = Vertex(name = 'V_3576', 
	 particles = [P.N3, P.e2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4086,(0,1):C.GC_4087}) 
 
 
V_3577 = Vertex(name = 'V_3577', 
	 particles = [P.N3, P.e2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4088,(0,1):C.GC_4089}) 
 
 
V_3578 = Vertex(name = 'V_3578', 
	 particles = [P.N3, P.e2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4090,(0,1):C.GC_4091}) 
 
 
V_3579 = Vertex(name = 'V_3579', 
	 particles = [P.N3, P.e3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4092,(0,1):C.GC_4093}) 
 
 
V_3580 = Vertex(name = 'V_3580', 
	 particles = [P.N3, P.e3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4094,(0,1):C.GC_4095}) 
 
 
V_3581 = Vertex(name = 'V_3581', 
	 particles = [P.N3, P.e3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4096,(0,1):C.GC_4097}) 
 
 
V_3582 = Vertex(name = 'V_3582', 
	 particles = [P.N3, P.e3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4098,(0,1):C.GC_4099}) 
 
 
V_3583 = Vertex(name = 'V_3583', 
	 particles = [P.N3, P.e3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4100,(0,1):C.GC_4101}) 
 
 
V_3584 = Vertex(name = 'V_3584', 
	 particles = [P.N3, P.e3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4102,(0,1):C.GC_4103}) 
 
 
V_3585 = Vertex(name = 'V_3585', 
	 particles = [P.N4, P.e1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4104,(0,1):C.GC_4105}) 
 
 
V_3586 = Vertex(name = 'V_3586', 
	 particles = [P.N4, P.e1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4106,(0,1):C.GC_4107}) 
 
 
V_3587 = Vertex(name = 'V_3587', 
	 particles = [P.N4, P.e1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4108,(0,1):C.GC_4109}) 
 
 
V_3588 = Vertex(name = 'V_3588', 
	 particles = [P.N4, P.e1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4110,(0,1):C.GC_4111}) 
 
 
V_3589 = Vertex(name = 'V_3589', 
	 particles = [P.N4, P.e1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4112,(0,1):C.GC_4113}) 
 
 
V_3590 = Vertex(name = 'V_3590', 
	 particles = [P.N4, P.e1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4114,(0,1):C.GC_4115}) 
 
 
V_3591 = Vertex(name = 'V_3591', 
	 particles = [P.N4, P.e2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4116,(0,1):C.GC_4117}) 
 
 
V_3592 = Vertex(name = 'V_3592', 
	 particles = [P.N4, P.e2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4118,(0,1):C.GC_4119}) 
 
 
V_3593 = Vertex(name = 'V_3593', 
	 particles = [P.N4, P.e2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4120,(0,1):C.GC_4121}) 
 
 
V_3594 = Vertex(name = 'V_3594', 
	 particles = [P.N4, P.e2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4122,(0,1):C.GC_4123}) 
 
 
V_3595 = Vertex(name = 'V_3595', 
	 particles = [P.N4, P.e2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4124,(0,1):C.GC_4125}) 
 
 
V_3596 = Vertex(name = 'V_3596', 
	 particles = [P.N4, P.e2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4126,(0,1):C.GC_4127}) 
 
 
V_3597 = Vertex(name = 'V_3597', 
	 particles = [P.N4, P.e3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4128,(0,1):C.GC_4129}) 
 
 
V_3598 = Vertex(name = 'V_3598', 
	 particles = [P.N4, P.e3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4130,(0,1):C.GC_4131}) 
 
 
V_3599 = Vertex(name = 'V_3599', 
	 particles = [P.N4, P.e3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4132,(0,1):C.GC_4133}) 
 
 
V_3600 = Vertex(name = 'V_3600', 
	 particles = [P.N4, P.e3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4134,(0,1):C.GC_4135}) 
 
 
V_3601 = Vertex(name = 'V_3601', 
	 particles = [P.N4, P.e3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4136,(0,1):C.GC_4137}) 
 
 
V_3602 = Vertex(name = 'V_3602', 
	 particles = [P.N4, P.e3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4138,(0,1):C.GC_4139}) 
 
 
V_3603 = Vertex(name = 'V_3603', 
	 particles = [P.N5, P.e1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4140,(0,1):C.GC_4141}) 
 
 
V_3604 = Vertex(name = 'V_3604', 
	 particles = [P.N5, P.e1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4142,(0,1):C.GC_4143}) 
 
 
V_3605 = Vertex(name = 'V_3605', 
	 particles = [P.N5, P.e1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4144,(0,1):C.GC_4145}) 
 
 
V_3606 = Vertex(name = 'V_3606', 
	 particles = [P.N5, P.e1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4146,(0,1):C.GC_4147}) 
 
 
V_3607 = Vertex(name = 'V_3607', 
	 particles = [P.N5, P.e1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4148,(0,1):C.GC_4149}) 
 
 
V_3608 = Vertex(name = 'V_3608', 
	 particles = [P.N5, P.e1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4150,(0,1):C.GC_4151}) 
 
 
V_3609 = Vertex(name = 'V_3609', 
	 particles = [P.N5, P.e2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4152,(0,1):C.GC_4153}) 
 
 
V_3610 = Vertex(name = 'V_3610', 
	 particles = [P.N5, P.e2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4154,(0,1):C.GC_4155}) 
 
 
V_3611 = Vertex(name = 'V_3611', 
	 particles = [P.N5, P.e2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4156,(0,1):C.GC_4157}) 
 
 
V_3612 = Vertex(name = 'V_3612', 
	 particles = [P.N5, P.e2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4158,(0,1):C.GC_4159}) 
 
 
V_3613 = Vertex(name = 'V_3613', 
	 particles = [P.N5, P.e2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4160,(0,1):C.GC_4161}) 
 
 
V_3614 = Vertex(name = 'V_3614', 
	 particles = [P.N5, P.e2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4162,(0,1):C.GC_4163}) 
 
 
V_3615 = Vertex(name = 'V_3615', 
	 particles = [P.N5, P.e3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4164,(0,1):C.GC_4165}) 
 
 
V_3616 = Vertex(name = 'V_3616', 
	 particles = [P.N5, P.e3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4166,(0,1):C.GC_4167}) 
 
 
V_3617 = Vertex(name = 'V_3617', 
	 particles = [P.N5, P.e3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4168,(0,1):C.GC_4169}) 
 
 
V_3618 = Vertex(name = 'V_3618', 
	 particles = [P.N5, P.e3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4170,(0,1):C.GC_4171}) 
 
 
V_3619 = Vertex(name = 'V_3619', 
	 particles = [P.N5, P.e3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4172,(0,1):C.GC_4173}) 
 
 
V_3620 = Vertex(name = 'V_3620', 
	 particles = [P.N5, P.e3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4174,(0,1):C.GC_4175}) 
 
 
V_3621 = Vertex(name = 'V_3621', 
	 particles = [P.N6, P.e1, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4176,(0,1):C.GC_4177}) 
 
 
V_3622 = Vertex(name = 'V_3622', 
	 particles = [P.N6, P.e1, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4178,(0,1):C.GC_4179}) 
 
 
V_3623 = Vertex(name = 'V_3623', 
	 particles = [P.N6, P.e1, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4180,(0,1):C.GC_4181}) 
 
 
V_3624 = Vertex(name = 'V_3624', 
	 particles = [P.N6, P.e1, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4182,(0,1):C.GC_4183}) 
 
 
V_3625 = Vertex(name = 'V_3625', 
	 particles = [P.N6, P.e1, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4184,(0,1):C.GC_4185}) 
 
 
V_3626 = Vertex(name = 'V_3626', 
	 particles = [P.N6, P.e1, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4186,(0,1):C.GC_4187}) 
 
 
V_3627 = Vertex(name = 'V_3627', 
	 particles = [P.N6, P.e2, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4188,(0,1):C.GC_4189}) 
 
 
V_3628 = Vertex(name = 'V_3628', 
	 particles = [P.N6, P.e2, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4190,(0,1):C.GC_4191}) 
 
 
V_3629 = Vertex(name = 'V_3629', 
	 particles = [P.N6, P.e2, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4192,(0,1):C.GC_4193}) 
 
 
V_3630 = Vertex(name = 'V_3630', 
	 particles = [P.N6, P.e2, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4194,(0,1):C.GC_4195}) 
 
 
V_3631 = Vertex(name = 'V_3631', 
	 particles = [P.N6, P.e2, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4196,(0,1):C.GC_4197}) 
 
 
V_3632 = Vertex(name = 'V_3632', 
	 particles = [P.N6, P.e2, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4198,(0,1):C.GC_4199}) 
 
 
V_3633 = Vertex(name = 'V_3633', 
	 particles = [P.N6, P.e3, P.se1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4200,(0,1):C.GC_4201}) 
 
 
V_3634 = Vertex(name = 'V_3634', 
	 particles = [P.N6, P.e3, P.se2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4202,(0,1):C.GC_4203}) 
 
 
V_3635 = Vertex(name = 'V_3635', 
	 particles = [P.N6, P.e3, P.se3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4204,(0,1):C.GC_4205}) 
 
 
V_3636 = Vertex(name = 'V_3636', 
	 particles = [P.N6, P.e3, P.se4c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4206,(0,1):C.GC_4207}) 
 
 
V_3637 = Vertex(name = 'V_3637', 
	 particles = [P.N6, P.e3, P.se5c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4208,(0,1):C.GC_4209}) 
 
 
V_3638 = Vertex(name = 'V_3638', 
	 particles = [P.N6, P.e3, P.se6c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4210,(0,1):C.GC_4211}) 
 
 
V_3639 = Vertex(name = 'V_3639', 
	 particles = [P.N1, P.u1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4212,(0,1):C.GC_4213}) 
 
 
V_3640 = Vertex(name = 'V_3640', 
	 particles = [P.N1, P.u1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4214,(0,1):C.GC_4215}) 
 
 
V_3641 = Vertex(name = 'V_3641', 
	 particles = [P.N1, P.u1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4216,(0,1):C.GC_4217}) 
 
 
V_3642 = Vertex(name = 'V_3642', 
	 particles = [P.N1, P.u1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4218,(0,1):C.GC_4219}) 
 
 
V_3643 = Vertex(name = 'V_3643', 
	 particles = [P.N1, P.u1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4220,(0,1):C.GC_4221}) 
 
 
V_3644 = Vertex(name = 'V_3644', 
	 particles = [P.N1, P.u1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4222,(0,1):C.GC_4223}) 
 
 
V_3645 = Vertex(name = 'V_3645', 
	 particles = [P.N1, P.u2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4224,(0,1):C.GC_4225}) 
 
 
V_3646 = Vertex(name = 'V_3646', 
	 particles = [P.N1, P.u2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4226,(0,1):C.GC_4227}) 
 
 
V_3647 = Vertex(name = 'V_3647', 
	 particles = [P.N1, P.u2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4228,(0,1):C.GC_4229}) 
 
 
V_3648 = Vertex(name = 'V_3648', 
	 particles = [P.N1, P.u2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4230,(0,1):C.GC_4231}) 
 
 
V_3649 = Vertex(name = 'V_3649', 
	 particles = [P.N1, P.u2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4232,(0,1):C.GC_4233}) 
 
 
V_3650 = Vertex(name = 'V_3650', 
	 particles = [P.N1, P.u2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4234,(0,1):C.GC_4235}) 
 
 
V_3651 = Vertex(name = 'V_3651', 
	 particles = [P.N1, P.u3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4236,(0,1):C.GC_4237}) 
 
 
V_3652 = Vertex(name = 'V_3652', 
	 particles = [P.N1, P.u3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4238,(0,1):C.GC_4239}) 
 
 
V_3653 = Vertex(name = 'V_3653', 
	 particles = [P.N1, P.u3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4240,(0,1):C.GC_4241}) 
 
 
V_3654 = Vertex(name = 'V_3654', 
	 particles = [P.N1, P.u3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4242,(0,1):C.GC_4243}) 
 
 
V_3655 = Vertex(name = 'V_3655', 
	 particles = [P.N1, P.u3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4244,(0,1):C.GC_4245}) 
 
 
V_3656 = Vertex(name = 'V_3656', 
	 particles = [P.N1, P.u3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4246,(0,1):C.GC_4247}) 
 
 
V_3657 = Vertex(name = 'V_3657', 
	 particles = [P.N2, P.u1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4248,(0,1):C.GC_4249}) 
 
 
V_3658 = Vertex(name = 'V_3658', 
	 particles = [P.N2, P.u1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4250,(0,1):C.GC_4251}) 
 
 
V_3659 = Vertex(name = 'V_3659', 
	 particles = [P.N2, P.u1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4252,(0,1):C.GC_4253}) 
 
 
V_3660 = Vertex(name = 'V_3660', 
	 particles = [P.N2, P.u1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4254,(0,1):C.GC_4255}) 
 
 
V_3661 = Vertex(name = 'V_3661', 
	 particles = [P.N2, P.u1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4256,(0,1):C.GC_4257}) 
 
 
V_3662 = Vertex(name = 'V_3662', 
	 particles = [P.N2, P.u1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4258,(0,1):C.GC_4259}) 
 
 
V_3663 = Vertex(name = 'V_3663', 
	 particles = [P.N2, P.u2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4260,(0,1):C.GC_4261}) 
 
 
V_3664 = Vertex(name = 'V_3664', 
	 particles = [P.N2, P.u2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4262,(0,1):C.GC_4263}) 
 
 
V_3665 = Vertex(name = 'V_3665', 
	 particles = [P.N2, P.u2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4264,(0,1):C.GC_4265}) 
 
 
V_3666 = Vertex(name = 'V_3666', 
	 particles = [P.N2, P.u2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4266,(0,1):C.GC_4267}) 
 
 
V_3667 = Vertex(name = 'V_3667', 
	 particles = [P.N2, P.u2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4268,(0,1):C.GC_4269}) 
 
 
V_3668 = Vertex(name = 'V_3668', 
	 particles = [P.N2, P.u2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4270,(0,1):C.GC_4271}) 
 
 
V_3669 = Vertex(name = 'V_3669', 
	 particles = [P.N2, P.u3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4272,(0,1):C.GC_4273}) 
 
 
V_3670 = Vertex(name = 'V_3670', 
	 particles = [P.N2, P.u3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4274,(0,1):C.GC_4275}) 
 
 
V_3671 = Vertex(name = 'V_3671', 
	 particles = [P.N2, P.u3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4276,(0,1):C.GC_4277}) 
 
 
V_3672 = Vertex(name = 'V_3672', 
	 particles = [P.N2, P.u3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4278,(0,1):C.GC_4279}) 
 
 
V_3673 = Vertex(name = 'V_3673', 
	 particles = [P.N2, P.u3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4280,(0,1):C.GC_4281}) 
 
 
V_3674 = Vertex(name = 'V_3674', 
	 particles = [P.N2, P.u3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4282,(0,1):C.GC_4283}) 
 
 
V_3675 = Vertex(name = 'V_3675', 
	 particles = [P.N3, P.u1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4284,(0,1):C.GC_4285}) 
 
 
V_3676 = Vertex(name = 'V_3676', 
	 particles = [P.N3, P.u1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4286,(0,1):C.GC_4287}) 
 
 
V_3677 = Vertex(name = 'V_3677', 
	 particles = [P.N3, P.u1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4288,(0,1):C.GC_4289}) 
 
 
V_3678 = Vertex(name = 'V_3678', 
	 particles = [P.N3, P.u1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4290,(0,1):C.GC_4291}) 
 
 
V_3679 = Vertex(name = 'V_3679', 
	 particles = [P.N3, P.u1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4292,(0,1):C.GC_4293}) 
 
 
V_3680 = Vertex(name = 'V_3680', 
	 particles = [P.N3, P.u1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4294,(0,1):C.GC_4295}) 
 
 
V_3681 = Vertex(name = 'V_3681', 
	 particles = [P.N3, P.u2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4296,(0,1):C.GC_4297}) 
 
 
V_3682 = Vertex(name = 'V_3682', 
	 particles = [P.N3, P.u2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4298,(0,1):C.GC_4299}) 
 
 
V_3683 = Vertex(name = 'V_3683', 
	 particles = [P.N3, P.u2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4300,(0,1):C.GC_4301}) 
 
 
V_3684 = Vertex(name = 'V_3684', 
	 particles = [P.N3, P.u2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4302,(0,1):C.GC_4303}) 
 
 
V_3685 = Vertex(name = 'V_3685', 
	 particles = [P.N3, P.u2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4304,(0,1):C.GC_4305}) 
 
 
V_3686 = Vertex(name = 'V_3686', 
	 particles = [P.N3, P.u2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4306,(0,1):C.GC_4307}) 
 
 
V_3687 = Vertex(name = 'V_3687', 
	 particles = [P.N3, P.u3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4308,(0,1):C.GC_4309}) 
 
 
V_3688 = Vertex(name = 'V_3688', 
	 particles = [P.N3, P.u3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4310,(0,1):C.GC_4311}) 
 
 
V_3689 = Vertex(name = 'V_3689', 
	 particles = [P.N3, P.u3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4312,(0,1):C.GC_4313}) 
 
 
V_3690 = Vertex(name = 'V_3690', 
	 particles = [P.N3, P.u3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4314,(0,1):C.GC_4315}) 
 
 
V_3691 = Vertex(name = 'V_3691', 
	 particles = [P.N3, P.u3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4316,(0,1):C.GC_4317}) 
 
 
V_3692 = Vertex(name = 'V_3692', 
	 particles = [P.N3, P.u3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4318,(0,1):C.GC_4319}) 
 
 
V_3693 = Vertex(name = 'V_3693', 
	 particles = [P.N4, P.u1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4320,(0,1):C.GC_4321}) 
 
 
V_3694 = Vertex(name = 'V_3694', 
	 particles = [P.N4, P.u1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4322,(0,1):C.GC_4323}) 
 
 
V_3695 = Vertex(name = 'V_3695', 
	 particles = [P.N4, P.u1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4324,(0,1):C.GC_4325}) 
 
 
V_3696 = Vertex(name = 'V_3696', 
	 particles = [P.N4, P.u1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4326,(0,1):C.GC_4327}) 
 
 
V_3697 = Vertex(name = 'V_3697', 
	 particles = [P.N4, P.u1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4328,(0,1):C.GC_4329}) 
 
 
V_3698 = Vertex(name = 'V_3698', 
	 particles = [P.N4, P.u1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4330,(0,1):C.GC_4331}) 
 
 
V_3699 = Vertex(name = 'V_3699', 
	 particles = [P.N4, P.u2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4332,(0,1):C.GC_4333}) 
 
 
V_3700 = Vertex(name = 'V_3700', 
	 particles = [P.N4, P.u2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4334,(0,1):C.GC_4335}) 
 
 
V_3701 = Vertex(name = 'V_3701', 
	 particles = [P.N4, P.u2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4336,(0,1):C.GC_4337}) 
 
 
V_3702 = Vertex(name = 'V_3702', 
	 particles = [P.N4, P.u2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4338,(0,1):C.GC_4339}) 
 
 
V_3703 = Vertex(name = 'V_3703', 
	 particles = [P.N4, P.u2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4340,(0,1):C.GC_4341}) 
 
 
V_3704 = Vertex(name = 'V_3704', 
	 particles = [P.N4, P.u2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4342,(0,1):C.GC_4343}) 
 
 
V_3705 = Vertex(name = 'V_3705', 
	 particles = [P.N4, P.u3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4344,(0,1):C.GC_4345}) 
 
 
V_3706 = Vertex(name = 'V_3706', 
	 particles = [P.N4, P.u3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4346,(0,1):C.GC_4347}) 
 
 
V_3707 = Vertex(name = 'V_3707', 
	 particles = [P.N4, P.u3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4348,(0,1):C.GC_4349}) 
 
 
V_3708 = Vertex(name = 'V_3708', 
	 particles = [P.N4, P.u3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4350,(0,1):C.GC_4351}) 
 
 
V_3709 = Vertex(name = 'V_3709', 
	 particles = [P.N4, P.u3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4352,(0,1):C.GC_4353}) 
 
 
V_3710 = Vertex(name = 'V_3710', 
	 particles = [P.N4, P.u3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4354,(0,1):C.GC_4355}) 
 
 
V_3711 = Vertex(name = 'V_3711', 
	 particles = [P.N5, P.u1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4356,(0,1):C.GC_4357}) 
 
 
V_3712 = Vertex(name = 'V_3712', 
	 particles = [P.N5, P.u1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4358,(0,1):C.GC_4359}) 
 
 
V_3713 = Vertex(name = 'V_3713', 
	 particles = [P.N5, P.u1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4360,(0,1):C.GC_4361}) 
 
 
V_3714 = Vertex(name = 'V_3714', 
	 particles = [P.N5, P.u1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4362,(0,1):C.GC_4363}) 
 
 
V_3715 = Vertex(name = 'V_3715', 
	 particles = [P.N5, P.u1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4364,(0,1):C.GC_4365}) 
 
 
V_3716 = Vertex(name = 'V_3716', 
	 particles = [P.N5, P.u1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4366,(0,1):C.GC_4367}) 
 
 
V_3717 = Vertex(name = 'V_3717', 
	 particles = [P.N5, P.u2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4368,(0,1):C.GC_4369}) 
 
 
V_3718 = Vertex(name = 'V_3718', 
	 particles = [P.N5, P.u2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4370,(0,1):C.GC_4371}) 
 
 
V_3719 = Vertex(name = 'V_3719', 
	 particles = [P.N5, P.u2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4372,(0,1):C.GC_4373}) 
 
 
V_3720 = Vertex(name = 'V_3720', 
	 particles = [P.N5, P.u2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4374,(0,1):C.GC_4375}) 
 
 
V_3721 = Vertex(name = 'V_3721', 
	 particles = [P.N5, P.u2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4376,(0,1):C.GC_4377}) 
 
 
V_3722 = Vertex(name = 'V_3722', 
	 particles = [P.N5, P.u2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4378,(0,1):C.GC_4379}) 
 
 
V_3723 = Vertex(name = 'V_3723', 
	 particles = [P.N5, P.u3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4380,(0,1):C.GC_4381}) 
 
 
V_3724 = Vertex(name = 'V_3724', 
	 particles = [P.N5, P.u3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4382,(0,1):C.GC_4383}) 
 
 
V_3725 = Vertex(name = 'V_3725', 
	 particles = [P.N5, P.u3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4384,(0,1):C.GC_4385}) 
 
 
V_3726 = Vertex(name = 'V_3726', 
	 particles = [P.N5, P.u3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4386,(0,1):C.GC_4387}) 
 
 
V_3727 = Vertex(name = 'V_3727', 
	 particles = [P.N5, P.u3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4388,(0,1):C.GC_4389}) 
 
 
V_3728 = Vertex(name = 'V_3728', 
	 particles = [P.N5, P.u3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4390,(0,1):C.GC_4391}) 
 
 
V_3729 = Vertex(name = 'V_3729', 
	 particles = [P.N6, P.u1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4392,(0,1):C.GC_4393}) 
 
 
V_3730 = Vertex(name = 'V_3730', 
	 particles = [P.N6, P.u1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4394,(0,1):C.GC_4395}) 
 
 
V_3731 = Vertex(name = 'V_3731', 
	 particles = [P.N6, P.u1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4396,(0,1):C.GC_4397}) 
 
 
V_3732 = Vertex(name = 'V_3732', 
	 particles = [P.N6, P.u1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4398,(0,1):C.GC_4399}) 
 
 
V_3733 = Vertex(name = 'V_3733', 
	 particles = [P.N6, P.u1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4400,(0,1):C.GC_4401}) 
 
 
V_3734 = Vertex(name = 'V_3734', 
	 particles = [P.N6, P.u1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4402,(0,1):C.GC_4403}) 
 
 
V_3735 = Vertex(name = 'V_3735', 
	 particles = [P.N6, P.u2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4404,(0,1):C.GC_4405}) 
 
 
V_3736 = Vertex(name = 'V_3736', 
	 particles = [P.N6, P.u2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4406,(0,1):C.GC_4407}) 
 
 
V_3737 = Vertex(name = 'V_3737', 
	 particles = [P.N6, P.u2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4408,(0,1):C.GC_4409}) 
 
 
V_3738 = Vertex(name = 'V_3738', 
	 particles = [P.N6, P.u2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4410,(0,1):C.GC_4411}) 
 
 
V_3739 = Vertex(name = 'V_3739', 
	 particles = [P.N6, P.u2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4412,(0,1):C.GC_4413}) 
 
 
V_3740 = Vertex(name = 'V_3740', 
	 particles = [P.N6, P.u2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4414,(0,1):C.GC_4415}) 
 
 
V_3741 = Vertex(name = 'V_3741', 
	 particles = [P.N6, P.u3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4416,(0,1):C.GC_4417}) 
 
 
V_3742 = Vertex(name = 'V_3742', 
	 particles = [P.N6, P.u3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4418,(0,1):C.GC_4419}) 
 
 
V_3743 = Vertex(name = 'V_3743', 
	 particles = [P.N6, P.u3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4420,(0,1):C.GC_4421}) 
 
 
V_3744 = Vertex(name = 'V_3744', 
	 particles = [P.N6, P.u3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4422,(0,1):C.GC_4423}) 
 
 
V_3745 = Vertex(name = 'V_3745', 
	 particles = [P.N6, P.u3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4424,(0,1):C.GC_4425}) 
 
 
V_3746 = Vertex(name = 'V_3746', 
	 particles = [P.N6, P.u3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4426,(0,1):C.GC_4427}) 
 
 
V_3747 = Vertex(name = 'V_3747', 
	 particles = [P.N1, P.nu1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4428}) 
 
 
V_3748 = Vertex(name = 'V_3748', 
	 particles = [P.N1, P.nu1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4429}) 
 
 
V_3749 = Vertex(name = 'V_3749', 
	 particles = [P.N1, P.nu1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4430}) 
 
 
V_3750 = Vertex(name = 'V_3750', 
	 particles = [P.N1, P.nu2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4431}) 
 
 
V_3751 = Vertex(name = 'V_3751', 
	 particles = [P.N1, P.nu2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4432}) 
 
 
V_3752 = Vertex(name = 'V_3752', 
	 particles = [P.N1, P.nu2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4433}) 
 
 
V_3753 = Vertex(name = 'V_3753', 
	 particles = [P.N1, P.nu3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4434}) 
 
 
V_3754 = Vertex(name = 'V_3754', 
	 particles = [P.N1, P.nu3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4435}) 
 
 
V_3755 = Vertex(name = 'V_3755', 
	 particles = [P.N1, P.nu3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4436}) 
 
 
V_3756 = Vertex(name = 'V_3756', 
	 particles = [P.N2, P.nu1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4437}) 
 
 
V_3757 = Vertex(name = 'V_3757', 
	 particles = [P.N2, P.nu1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4438}) 
 
 
V_3758 = Vertex(name = 'V_3758', 
	 particles = [P.N2, P.nu1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4439}) 
 
 
V_3759 = Vertex(name = 'V_3759', 
	 particles = [P.N2, P.nu2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4440}) 
 
 
V_3760 = Vertex(name = 'V_3760', 
	 particles = [P.N2, P.nu2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4441}) 
 
 
V_3761 = Vertex(name = 'V_3761', 
	 particles = [P.N2, P.nu2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4442}) 
 
 
V_3762 = Vertex(name = 'V_3762', 
	 particles = [P.N2, P.nu3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4443}) 
 
 
V_3763 = Vertex(name = 'V_3763', 
	 particles = [P.N2, P.nu3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4444}) 
 
 
V_3764 = Vertex(name = 'V_3764', 
	 particles = [P.N2, P.nu3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4445}) 
 
 
V_3765 = Vertex(name = 'V_3765', 
	 particles = [P.N3, P.nu1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4446}) 
 
 
V_3766 = Vertex(name = 'V_3766', 
	 particles = [P.N3, P.nu1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4447}) 
 
 
V_3767 = Vertex(name = 'V_3767', 
	 particles = [P.N3, P.nu1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4448}) 
 
 
V_3768 = Vertex(name = 'V_3768', 
	 particles = [P.N3, P.nu2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4449}) 
 
 
V_3769 = Vertex(name = 'V_3769', 
	 particles = [P.N3, P.nu2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4450}) 
 
 
V_3770 = Vertex(name = 'V_3770', 
	 particles = [P.N3, P.nu2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4451}) 
 
 
V_3771 = Vertex(name = 'V_3771', 
	 particles = [P.N3, P.nu3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4452}) 
 
 
V_3772 = Vertex(name = 'V_3772', 
	 particles = [P.N3, P.nu3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4453}) 
 
 
V_3773 = Vertex(name = 'V_3773', 
	 particles = [P.N3, P.nu3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4454}) 
 
 
V_3774 = Vertex(name = 'V_3774', 
	 particles = [P.N4, P.nu1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4455}) 
 
 
V_3775 = Vertex(name = 'V_3775', 
	 particles = [P.N4, P.nu1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4456}) 
 
 
V_3776 = Vertex(name = 'V_3776', 
	 particles = [P.N4, P.nu1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4457}) 
 
 
V_3777 = Vertex(name = 'V_3777', 
	 particles = [P.N4, P.nu2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4458}) 
 
 
V_3778 = Vertex(name = 'V_3778', 
	 particles = [P.N4, P.nu2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4459}) 
 
 
V_3779 = Vertex(name = 'V_3779', 
	 particles = [P.N4, P.nu2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4460}) 
 
 
V_3780 = Vertex(name = 'V_3780', 
	 particles = [P.N4, P.nu3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4461}) 
 
 
V_3781 = Vertex(name = 'V_3781', 
	 particles = [P.N4, P.nu3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4462}) 
 
 
V_3782 = Vertex(name = 'V_3782', 
	 particles = [P.N4, P.nu3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4463}) 
 
 
V_3783 = Vertex(name = 'V_3783', 
	 particles = [P.N5, P.nu1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4464}) 
 
 
V_3784 = Vertex(name = 'V_3784', 
	 particles = [P.N5, P.nu1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4465}) 
 
 
V_3785 = Vertex(name = 'V_3785', 
	 particles = [P.N5, P.nu1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4466}) 
 
 
V_3786 = Vertex(name = 'V_3786', 
	 particles = [P.N5, P.nu2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4467}) 
 
 
V_3787 = Vertex(name = 'V_3787', 
	 particles = [P.N5, P.nu2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4468}) 
 
 
V_3788 = Vertex(name = 'V_3788', 
	 particles = [P.N5, P.nu2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4469}) 
 
 
V_3789 = Vertex(name = 'V_3789', 
	 particles = [P.N5, P.nu3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4470}) 
 
 
V_3790 = Vertex(name = 'V_3790', 
	 particles = [P.N5, P.nu3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4471}) 
 
 
V_3791 = Vertex(name = 'V_3791', 
	 particles = [P.N5, P.nu3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4472}) 
 
 
V_3792 = Vertex(name = 'V_3792', 
	 particles = [P.N6, P.nu1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4473}) 
 
 
V_3793 = Vertex(name = 'V_3793', 
	 particles = [P.N6, P.nu1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4474}) 
 
 
V_3794 = Vertex(name = 'V_3794', 
	 particles = [P.N6, P.nu1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4475}) 
 
 
V_3795 = Vertex(name = 'V_3795', 
	 particles = [P.N6, P.nu2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4476}) 
 
 
V_3796 = Vertex(name = 'V_3796', 
	 particles = [P.N6, P.nu2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4477}) 
 
 
V_3797 = Vertex(name = 'V_3797', 
	 particles = [P.N6, P.nu2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4478}) 
 
 
V_3798 = Vertex(name = 'V_3798', 
	 particles = [P.N6, P.nu3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4479}) 
 
 
V_3799 = Vertex(name = 'V_3799', 
	 particles = [P.N6, P.nu3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4480}) 
 
 
V_3800 = Vertex(name = 'V_3800', 
	 particles = [P.N6, P.nu3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_4481}) 
 
 
V_3801 = Vertex(name = 'V_3801', 
	 particles = [P.C1bar, P.N1, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4482,(0,1):C.GC_4483}) 
 
 
V_3802 = Vertex(name = 'V_3802', 
	 particles = [P.C1bar, P.N1, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4484,(0,1):C.GC_4485}) 
 
 
V_3803 = Vertex(name = 'V_3803', 
	 particles = [P.C1bar, P.N2, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4486,(0,1):C.GC_4487}) 
 
 
V_3804 = Vertex(name = 'V_3804', 
	 particles = [P.C1bar, P.N2, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4488,(0,1):C.GC_4489}) 
 
 
V_3805 = Vertex(name = 'V_3805', 
	 particles = [P.C1bar, P.N3, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4490,(0,1):C.GC_4491}) 
 
 
V_3806 = Vertex(name = 'V_3806', 
	 particles = [P.C1bar, P.N3, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4492,(0,1):C.GC_4493}) 
 
 
V_3807 = Vertex(name = 'V_3807', 
	 particles = [P.C1bar, P.N4, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4494,(0,1):C.GC_4495}) 
 
 
V_3808 = Vertex(name = 'V_3808', 
	 particles = [P.C1bar, P.N4, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4496,(0,1):C.GC_4497}) 
 
 
V_3809 = Vertex(name = 'V_3809', 
	 particles = [P.C1bar, P.N5, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4498,(0,1):C.GC_4499}) 
 
 
V_3810 = Vertex(name = 'V_3810', 
	 particles = [P.C1bar, P.N5, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4500,(0,1):C.GC_4501}) 
 
 
V_3811 = Vertex(name = 'V_3811', 
	 particles = [P.C1bar, P.N6, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4502,(0,1):C.GC_4503}) 
 
 
V_3812 = Vertex(name = 'V_3812', 
	 particles = [P.C1bar, P.N6, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4504,(0,1):C.GC_4505}) 
 
 
V_3813 = Vertex(name = 'V_3813', 
	 particles = [P.C2bar, P.N1, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4506,(0,1):C.GC_4507}) 
 
 
V_3814 = Vertex(name = 'V_3814', 
	 particles = [P.C2bar, P.N1, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4508,(0,1):C.GC_4509}) 
 
 
V_3815 = Vertex(name = 'V_3815', 
	 particles = [P.C2bar, P.N2, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4510,(0,1):C.GC_4511}) 
 
 
V_3816 = Vertex(name = 'V_3816', 
	 particles = [P.C2bar, P.N2, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4512,(0,1):C.GC_4513}) 
 
 
V_3817 = Vertex(name = 'V_3817', 
	 particles = [P.C2bar, P.N3, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4514,(0,1):C.GC_4515}) 
 
 
V_3818 = Vertex(name = 'V_3818', 
	 particles = [P.C2bar, P.N3, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4516,(0,1):C.GC_4517}) 
 
 
V_3819 = Vertex(name = 'V_3819', 
	 particles = [P.C2bar, P.N4, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4518,(0,1):C.GC_4519}) 
 
 
V_3820 = Vertex(name = 'V_3820', 
	 particles = [P.C2bar, P.N4, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4520,(0,1):C.GC_4521}) 
 
 
V_3821 = Vertex(name = 'V_3821', 
	 particles = [P.C2bar, P.N5, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4522,(0,1):C.GC_4523}) 
 
 
V_3822 = Vertex(name = 'V_3822', 
	 particles = [P.C2bar, P.N5, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4524,(0,1):C.GC_4525}) 
 
 
V_3823 = Vertex(name = 'V_3823', 
	 particles = [P.C2bar, P.N6, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4526,(0,1):C.GC_4527}) 
 
 
V_3824 = Vertex(name = 'V_3824', 
	 particles = [P.C2bar, P.N6, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4528,(0,1):C.GC_4529}) 
 
 
V_3825 = Vertex(name = 'V_3825', 
	 particles = [P.d1bar, P.N1, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4530,(0,1):C.GC_4531}) 
 
 
V_3826 = Vertex(name = 'V_3826', 
	 particles = [P.d1bar, P.N1, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4532,(0,1):C.GC_4533}) 
 
 
V_3827 = Vertex(name = 'V_3827', 
	 particles = [P.d1bar, P.N1, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4534,(0,1):C.GC_4535}) 
 
 
V_3828 = Vertex(name = 'V_3828', 
	 particles = [P.d1bar, P.N1, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4536,(0,1):C.GC_4537}) 
 
 
V_3829 = Vertex(name = 'V_3829', 
	 particles = [P.d1bar, P.N1, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4538,(0,1):C.GC_4539}) 
 
 
V_3830 = Vertex(name = 'V_3830', 
	 particles = [P.d1bar, P.N1, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4540,(0,1):C.GC_4541}) 
 
 
V_3831 = Vertex(name = 'V_3831', 
	 particles = [P.d1bar, P.N2, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4542,(0,1):C.GC_4543}) 
 
 
V_3832 = Vertex(name = 'V_3832', 
	 particles = [P.d1bar, P.N2, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4544,(0,1):C.GC_4545}) 
 
 
V_3833 = Vertex(name = 'V_3833', 
	 particles = [P.d1bar, P.N2, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4546,(0,1):C.GC_4547}) 
 
 
V_3834 = Vertex(name = 'V_3834', 
	 particles = [P.d1bar, P.N2, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4548,(0,1):C.GC_4549}) 
 
 
V_3835 = Vertex(name = 'V_3835', 
	 particles = [P.d1bar, P.N2, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4550,(0,1):C.GC_4551}) 
 
 
V_3836 = Vertex(name = 'V_3836', 
	 particles = [P.d1bar, P.N2, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4552,(0,1):C.GC_4553}) 
 
 
V_3837 = Vertex(name = 'V_3837', 
	 particles = [P.d1bar, P.N3, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4554,(0,1):C.GC_4555}) 
 
 
V_3838 = Vertex(name = 'V_3838', 
	 particles = [P.d1bar, P.N3, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4556,(0,1):C.GC_4557}) 
 
 
V_3839 = Vertex(name = 'V_3839', 
	 particles = [P.d1bar, P.N3, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4558,(0,1):C.GC_4559}) 
 
 
V_3840 = Vertex(name = 'V_3840', 
	 particles = [P.d1bar, P.N3, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4560,(0,1):C.GC_4561}) 
 
 
V_3841 = Vertex(name = 'V_3841', 
	 particles = [P.d1bar, P.N3, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4562,(0,1):C.GC_4563}) 
 
 
V_3842 = Vertex(name = 'V_3842', 
	 particles = [P.d1bar, P.N3, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4564,(0,1):C.GC_4565}) 
 
 
V_3843 = Vertex(name = 'V_3843', 
	 particles = [P.d1bar, P.N4, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4566,(0,1):C.GC_4567}) 
 
 
V_3844 = Vertex(name = 'V_3844', 
	 particles = [P.d1bar, P.N4, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4568,(0,1):C.GC_4569}) 
 
 
V_3845 = Vertex(name = 'V_3845', 
	 particles = [P.d1bar, P.N4, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4570,(0,1):C.GC_4571}) 
 
 
V_3846 = Vertex(name = 'V_3846', 
	 particles = [P.d1bar, P.N4, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4572,(0,1):C.GC_4573}) 
 
 
V_3847 = Vertex(name = 'V_3847', 
	 particles = [P.d1bar, P.N4, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4574,(0,1):C.GC_4575}) 
 
 
V_3848 = Vertex(name = 'V_3848', 
	 particles = [P.d1bar, P.N4, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4576,(0,1):C.GC_4577}) 
 
 
V_3849 = Vertex(name = 'V_3849', 
	 particles = [P.d1bar, P.N5, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4578,(0,1):C.GC_4579}) 
 
 
V_3850 = Vertex(name = 'V_3850', 
	 particles = [P.d1bar, P.N5, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4580,(0,1):C.GC_4581}) 
 
 
V_3851 = Vertex(name = 'V_3851', 
	 particles = [P.d1bar, P.N5, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4582,(0,1):C.GC_4583}) 
 
 
V_3852 = Vertex(name = 'V_3852', 
	 particles = [P.d1bar, P.N5, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4584,(0,1):C.GC_4585}) 
 
 
V_3853 = Vertex(name = 'V_3853', 
	 particles = [P.d1bar, P.N5, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4586,(0,1):C.GC_4587}) 
 
 
V_3854 = Vertex(name = 'V_3854', 
	 particles = [P.d1bar, P.N5, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4588,(0,1):C.GC_4589}) 
 
 
V_3855 = Vertex(name = 'V_3855', 
	 particles = [P.d1bar, P.N6, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4590,(0,1):C.GC_4591}) 
 
 
V_3856 = Vertex(name = 'V_3856', 
	 particles = [P.d1bar, P.N6, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4592,(0,1):C.GC_4593}) 
 
 
V_3857 = Vertex(name = 'V_3857', 
	 particles = [P.d1bar, P.N6, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4594,(0,1):C.GC_4595}) 
 
 
V_3858 = Vertex(name = 'V_3858', 
	 particles = [P.d1bar, P.N6, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4596,(0,1):C.GC_4597}) 
 
 
V_3859 = Vertex(name = 'V_3859', 
	 particles = [P.d1bar, P.N6, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4598,(0,1):C.GC_4599}) 
 
 
V_3860 = Vertex(name = 'V_3860', 
	 particles = [P.d1bar, P.N6, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4600,(0,1):C.GC_4601}) 
 
 
V_3861 = Vertex(name = 'V_3861', 
	 particles = [P.d2bar, P.N1, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4602,(0,1):C.GC_4603}) 
 
 
V_3862 = Vertex(name = 'V_3862', 
	 particles = [P.d2bar, P.N1, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4604,(0,1):C.GC_4605}) 
 
 
V_3863 = Vertex(name = 'V_3863', 
	 particles = [P.d2bar, P.N1, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4606,(0,1):C.GC_4607}) 
 
 
V_3864 = Vertex(name = 'V_3864', 
	 particles = [P.d2bar, P.N1, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4608,(0,1):C.GC_4609}) 
 
 
V_3865 = Vertex(name = 'V_3865', 
	 particles = [P.d2bar, P.N1, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4610,(0,1):C.GC_4611}) 
 
 
V_3866 = Vertex(name = 'V_3866', 
	 particles = [P.d2bar, P.N1, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4612,(0,1):C.GC_4613}) 
 
 
V_3867 = Vertex(name = 'V_3867', 
	 particles = [P.d2bar, P.N2, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4614,(0,1):C.GC_4615}) 
 
 
V_3868 = Vertex(name = 'V_3868', 
	 particles = [P.d2bar, P.N2, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4616,(0,1):C.GC_4617}) 
 
 
V_3869 = Vertex(name = 'V_3869', 
	 particles = [P.d2bar, P.N2, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4618,(0,1):C.GC_4619}) 
 
 
V_3870 = Vertex(name = 'V_3870', 
	 particles = [P.d2bar, P.N2, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4620,(0,1):C.GC_4621}) 
 
 
V_3871 = Vertex(name = 'V_3871', 
	 particles = [P.d2bar, P.N2, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4622,(0,1):C.GC_4623}) 
 
 
V_3872 = Vertex(name = 'V_3872', 
	 particles = [P.d2bar, P.N2, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4624,(0,1):C.GC_4625}) 
 
 
V_3873 = Vertex(name = 'V_3873', 
	 particles = [P.d2bar, P.N3, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4626,(0,1):C.GC_4627}) 
 
 
V_3874 = Vertex(name = 'V_3874', 
	 particles = [P.d2bar, P.N3, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4628,(0,1):C.GC_4629}) 
 
 
V_3875 = Vertex(name = 'V_3875', 
	 particles = [P.d2bar, P.N3, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4630,(0,1):C.GC_4631}) 
 
 
V_3876 = Vertex(name = 'V_3876', 
	 particles = [P.d2bar, P.N3, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4632,(0,1):C.GC_4633}) 
 
 
V_3877 = Vertex(name = 'V_3877', 
	 particles = [P.d2bar, P.N3, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4634,(0,1):C.GC_4635}) 
 
 
V_3878 = Vertex(name = 'V_3878', 
	 particles = [P.d2bar, P.N3, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4636,(0,1):C.GC_4637}) 
 
 
V_3879 = Vertex(name = 'V_3879', 
	 particles = [P.d2bar, P.N4, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4638,(0,1):C.GC_4639}) 
 
 
V_3880 = Vertex(name = 'V_3880', 
	 particles = [P.d2bar, P.N4, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4640,(0,1):C.GC_4641}) 
 
 
V_3881 = Vertex(name = 'V_3881', 
	 particles = [P.d2bar, P.N4, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4642,(0,1):C.GC_4643}) 
 
 
V_3882 = Vertex(name = 'V_3882', 
	 particles = [P.d2bar, P.N4, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4644,(0,1):C.GC_4645}) 
 
 
V_3883 = Vertex(name = 'V_3883', 
	 particles = [P.d2bar, P.N4, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4646,(0,1):C.GC_4647}) 
 
 
V_3884 = Vertex(name = 'V_3884', 
	 particles = [P.d2bar, P.N4, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4648,(0,1):C.GC_4649}) 
 
 
V_3885 = Vertex(name = 'V_3885', 
	 particles = [P.d2bar, P.N5, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4650,(0,1):C.GC_4651}) 
 
 
V_3886 = Vertex(name = 'V_3886', 
	 particles = [P.d2bar, P.N5, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4652,(0,1):C.GC_4653}) 
 
 
V_3887 = Vertex(name = 'V_3887', 
	 particles = [P.d2bar, P.N5, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4654,(0,1):C.GC_4655}) 
 
 
V_3888 = Vertex(name = 'V_3888', 
	 particles = [P.d2bar, P.N5, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4656,(0,1):C.GC_4657}) 
 
 
V_3889 = Vertex(name = 'V_3889', 
	 particles = [P.d2bar, P.N5, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4658,(0,1):C.GC_4659}) 
 
 
V_3890 = Vertex(name = 'V_3890', 
	 particles = [P.d2bar, P.N5, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4660,(0,1):C.GC_4661}) 
 
 
V_3891 = Vertex(name = 'V_3891', 
	 particles = [P.d2bar, P.N6, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4662,(0,1):C.GC_4663}) 
 
 
V_3892 = Vertex(name = 'V_3892', 
	 particles = [P.d2bar, P.N6, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4664,(0,1):C.GC_4665}) 
 
 
V_3893 = Vertex(name = 'V_3893', 
	 particles = [P.d2bar, P.N6, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4666,(0,1):C.GC_4667}) 
 
 
V_3894 = Vertex(name = 'V_3894', 
	 particles = [P.d2bar, P.N6, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4668,(0,1):C.GC_4669}) 
 
 
V_3895 = Vertex(name = 'V_3895', 
	 particles = [P.d2bar, P.N6, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4670,(0,1):C.GC_4671}) 
 
 
V_3896 = Vertex(name = 'V_3896', 
	 particles = [P.d2bar, P.N6, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4672,(0,1):C.GC_4673}) 
 
 
V_3897 = Vertex(name = 'V_3897', 
	 particles = [P.d3bar, P.N1, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4674,(0,1):C.GC_4675}) 
 
 
V_3898 = Vertex(name = 'V_3898', 
	 particles = [P.d3bar, P.N1, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4676,(0,1):C.GC_4677}) 
 
 
V_3899 = Vertex(name = 'V_3899', 
	 particles = [P.d3bar, P.N1, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4678,(0,1):C.GC_4679}) 
 
 
V_3900 = Vertex(name = 'V_3900', 
	 particles = [P.d3bar, P.N1, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4680,(0,1):C.GC_4681}) 
 
 
V_3901 = Vertex(name = 'V_3901', 
	 particles = [P.d3bar, P.N1, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4682,(0,1):C.GC_4683}) 
 
 
V_3902 = Vertex(name = 'V_3902', 
	 particles = [P.d3bar, P.N1, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4684,(0,1):C.GC_4685}) 
 
 
V_3903 = Vertex(name = 'V_3903', 
	 particles = [P.d3bar, P.N2, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4686,(0,1):C.GC_4687}) 
 
 
V_3904 = Vertex(name = 'V_3904', 
	 particles = [P.d3bar, P.N2, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4688,(0,1):C.GC_4689}) 
 
 
V_3905 = Vertex(name = 'V_3905', 
	 particles = [P.d3bar, P.N2, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4690,(0,1):C.GC_4691}) 
 
 
V_3906 = Vertex(name = 'V_3906', 
	 particles = [P.d3bar, P.N2, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4692,(0,1):C.GC_4693}) 
 
 
V_3907 = Vertex(name = 'V_3907', 
	 particles = [P.d3bar, P.N2, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4694,(0,1):C.GC_4695}) 
 
 
V_3908 = Vertex(name = 'V_3908', 
	 particles = [P.d3bar, P.N2, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4696,(0,1):C.GC_4697}) 
 
 
V_3909 = Vertex(name = 'V_3909', 
	 particles = [P.d3bar, P.N3, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4698,(0,1):C.GC_4699}) 
 
 
V_3910 = Vertex(name = 'V_3910', 
	 particles = [P.d3bar, P.N3, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4700,(0,1):C.GC_4701}) 
 
 
V_3911 = Vertex(name = 'V_3911', 
	 particles = [P.d3bar, P.N3, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4702,(0,1):C.GC_4703}) 
 
 
V_3912 = Vertex(name = 'V_3912', 
	 particles = [P.d3bar, P.N3, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4704,(0,1):C.GC_4705}) 
 
 
V_3913 = Vertex(name = 'V_3913', 
	 particles = [P.d3bar, P.N3, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4706,(0,1):C.GC_4707}) 
 
 
V_3914 = Vertex(name = 'V_3914', 
	 particles = [P.d3bar, P.N3, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4708,(0,1):C.GC_4709}) 
 
 
V_3915 = Vertex(name = 'V_3915', 
	 particles = [P.d3bar, P.N4, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4710,(0,1):C.GC_4711}) 
 
 
V_3916 = Vertex(name = 'V_3916', 
	 particles = [P.d3bar, P.N4, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4712,(0,1):C.GC_4713}) 
 
 
V_3917 = Vertex(name = 'V_3917', 
	 particles = [P.d3bar, P.N4, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4714,(0,1):C.GC_4715}) 
 
 
V_3918 = Vertex(name = 'V_3918', 
	 particles = [P.d3bar, P.N4, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4716,(0,1):C.GC_4717}) 
 
 
V_3919 = Vertex(name = 'V_3919', 
	 particles = [P.d3bar, P.N4, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4718,(0,1):C.GC_4719}) 
 
 
V_3920 = Vertex(name = 'V_3920', 
	 particles = [P.d3bar, P.N4, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4720,(0,1):C.GC_4721}) 
 
 
V_3921 = Vertex(name = 'V_3921', 
	 particles = [P.d3bar, P.N5, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4722,(0,1):C.GC_4723}) 
 
 
V_3922 = Vertex(name = 'V_3922', 
	 particles = [P.d3bar, P.N5, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4724,(0,1):C.GC_4725}) 
 
 
V_3923 = Vertex(name = 'V_3923', 
	 particles = [P.d3bar, P.N5, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4726,(0,1):C.GC_4727}) 
 
 
V_3924 = Vertex(name = 'V_3924', 
	 particles = [P.d3bar, P.N5, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4728,(0,1):C.GC_4729}) 
 
 
V_3925 = Vertex(name = 'V_3925', 
	 particles = [P.d3bar, P.N5, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4730,(0,1):C.GC_4731}) 
 
 
V_3926 = Vertex(name = 'V_3926', 
	 particles = [P.d3bar, P.N5, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4732,(0,1):C.GC_4733}) 
 
 
V_3927 = Vertex(name = 'V_3927', 
	 particles = [P.d3bar, P.N6, P.sd1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4734,(0,1):C.GC_4735}) 
 
 
V_3928 = Vertex(name = 'V_3928', 
	 particles = [P.d3bar, P.N6, P.sd2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4736,(0,1):C.GC_4737}) 
 
 
V_3929 = Vertex(name = 'V_3929', 
	 particles = [P.d3bar, P.N6, P.sd3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4738,(0,1):C.GC_4739}) 
 
 
V_3930 = Vertex(name = 'V_3930', 
	 particles = [P.d3bar, P.N6, P.sd4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4740,(0,1):C.GC_4741}) 
 
 
V_3931 = Vertex(name = 'V_3931', 
	 particles = [P.d3bar, P.N6, P.sd5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4742,(0,1):C.GC_4743}) 
 
 
V_3932 = Vertex(name = 'V_3932', 
	 particles = [P.d3bar, P.N6, P.sd6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4744,(0,1):C.GC_4745}) 
 
 
V_3933 = Vertex(name = 'V_3933', 
	 particles = [P.e1bar, P.N1, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4746,(0,1):C.GC_4747}) 
 
 
V_3934 = Vertex(name = 'V_3934', 
	 particles = [P.e1bar, P.N1, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4748,(0,1):C.GC_4749}) 
 
 
V_3935 = Vertex(name = 'V_3935', 
	 particles = [P.e1bar, P.N1, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4750,(0,1):C.GC_4751}) 
 
 
V_3936 = Vertex(name = 'V_3936', 
	 particles = [P.e1bar, P.N1, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4752,(0,1):C.GC_4753}) 
 
 
V_3937 = Vertex(name = 'V_3937', 
	 particles = [P.e1bar, P.N1, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4754,(0,1):C.GC_4755}) 
 
 
V_3938 = Vertex(name = 'V_3938', 
	 particles = [P.e1bar, P.N1, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4756,(0,1):C.GC_4757}) 
 
 
V_3939 = Vertex(name = 'V_3939', 
	 particles = [P.e1bar, P.N2, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4758,(0,1):C.GC_4759}) 
 
 
V_3940 = Vertex(name = 'V_3940', 
	 particles = [P.e1bar, P.N2, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4760,(0,1):C.GC_4761}) 
 
 
V_3941 = Vertex(name = 'V_3941', 
	 particles = [P.e1bar, P.N2, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4762,(0,1):C.GC_4763}) 
 
 
V_3942 = Vertex(name = 'V_3942', 
	 particles = [P.e1bar, P.N2, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4764,(0,1):C.GC_4765}) 
 
 
V_3943 = Vertex(name = 'V_3943', 
	 particles = [P.e1bar, P.N2, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4766,(0,1):C.GC_4767}) 
 
 
V_3944 = Vertex(name = 'V_3944', 
	 particles = [P.e1bar, P.N2, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4768,(0,1):C.GC_4769}) 
 
 
V_3945 = Vertex(name = 'V_3945', 
	 particles = [P.e1bar, P.N3, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4770,(0,1):C.GC_4771}) 
 
 
V_3946 = Vertex(name = 'V_3946', 
	 particles = [P.e1bar, P.N3, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4772,(0,1):C.GC_4773}) 
 
 
V_3947 = Vertex(name = 'V_3947', 
	 particles = [P.e1bar, P.N3, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4774,(0,1):C.GC_4775}) 
 
 
V_3948 = Vertex(name = 'V_3948', 
	 particles = [P.e1bar, P.N3, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4776,(0,1):C.GC_4777}) 
 
 
V_3949 = Vertex(name = 'V_3949', 
	 particles = [P.e1bar, P.N3, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4778,(0,1):C.GC_4779}) 
 
 
V_3950 = Vertex(name = 'V_3950', 
	 particles = [P.e1bar, P.N3, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4780,(0,1):C.GC_4781}) 
 
 
V_3951 = Vertex(name = 'V_3951', 
	 particles = [P.e1bar, P.N4, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4782,(0,1):C.GC_4783}) 
 
 
V_3952 = Vertex(name = 'V_3952', 
	 particles = [P.e1bar, P.N4, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4784,(0,1):C.GC_4785}) 
 
 
V_3953 = Vertex(name = 'V_3953', 
	 particles = [P.e1bar, P.N4, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4786,(0,1):C.GC_4787}) 
 
 
V_3954 = Vertex(name = 'V_3954', 
	 particles = [P.e1bar, P.N4, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4788,(0,1):C.GC_4789}) 
 
 
V_3955 = Vertex(name = 'V_3955', 
	 particles = [P.e1bar, P.N4, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4790,(0,1):C.GC_4791}) 
 
 
V_3956 = Vertex(name = 'V_3956', 
	 particles = [P.e1bar, P.N4, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4792,(0,1):C.GC_4793}) 
 
 
V_3957 = Vertex(name = 'V_3957', 
	 particles = [P.e1bar, P.N5, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4794,(0,1):C.GC_4795}) 
 
 
V_3958 = Vertex(name = 'V_3958', 
	 particles = [P.e1bar, P.N5, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4796,(0,1):C.GC_4797}) 
 
 
V_3959 = Vertex(name = 'V_3959', 
	 particles = [P.e1bar, P.N5, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4798,(0,1):C.GC_4799}) 
 
 
V_3960 = Vertex(name = 'V_3960', 
	 particles = [P.e1bar, P.N5, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4800,(0,1):C.GC_4801}) 
 
 
V_3961 = Vertex(name = 'V_3961', 
	 particles = [P.e1bar, P.N5, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4802,(0,1):C.GC_4803}) 
 
 
V_3962 = Vertex(name = 'V_3962', 
	 particles = [P.e1bar, P.N5, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4804,(0,1):C.GC_4805}) 
 
 
V_3963 = Vertex(name = 'V_3963', 
	 particles = [P.e1bar, P.N6, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4806,(0,1):C.GC_4807}) 
 
 
V_3964 = Vertex(name = 'V_3964', 
	 particles = [P.e1bar, P.N6, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4808,(0,1):C.GC_4809}) 
 
 
V_3965 = Vertex(name = 'V_3965', 
	 particles = [P.e1bar, P.N6, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4810,(0,1):C.GC_4811}) 
 
 
V_3966 = Vertex(name = 'V_3966', 
	 particles = [P.e1bar, P.N6, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4812,(0,1):C.GC_4813}) 
 
 
V_3967 = Vertex(name = 'V_3967', 
	 particles = [P.e1bar, P.N6, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4814,(0,1):C.GC_4815}) 
 
 
V_3968 = Vertex(name = 'V_3968', 
	 particles = [P.e1bar, P.N6, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4816,(0,1):C.GC_4817}) 
 
 
V_3969 = Vertex(name = 'V_3969', 
	 particles = [P.e2bar, P.N1, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4818,(0,1):C.GC_4819}) 
 
 
V_3970 = Vertex(name = 'V_3970', 
	 particles = [P.e2bar, P.N1, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4820,(0,1):C.GC_4821}) 
 
 
V_3971 = Vertex(name = 'V_3971', 
	 particles = [P.e2bar, P.N1, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4822,(0,1):C.GC_4823}) 
 
 
V_3972 = Vertex(name = 'V_3972', 
	 particles = [P.e2bar, P.N1, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4824,(0,1):C.GC_4825}) 
 
 
V_3973 = Vertex(name = 'V_3973', 
	 particles = [P.e2bar, P.N1, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4826,(0,1):C.GC_4827}) 
 
 
V_3974 = Vertex(name = 'V_3974', 
	 particles = [P.e2bar, P.N1, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4828,(0,1):C.GC_4829}) 
 
 
V_3975 = Vertex(name = 'V_3975', 
	 particles = [P.e2bar, P.N2, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4830,(0,1):C.GC_4831}) 
 
 
V_3976 = Vertex(name = 'V_3976', 
	 particles = [P.e2bar, P.N2, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4832,(0,1):C.GC_4833}) 
 
 
V_3977 = Vertex(name = 'V_3977', 
	 particles = [P.e2bar, P.N2, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4834,(0,1):C.GC_4835}) 
 
 
V_3978 = Vertex(name = 'V_3978', 
	 particles = [P.e2bar, P.N2, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4836,(0,1):C.GC_4837}) 
 
 
V_3979 = Vertex(name = 'V_3979', 
	 particles = [P.e2bar, P.N2, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4838,(0,1):C.GC_4839}) 
 
 
V_3980 = Vertex(name = 'V_3980', 
	 particles = [P.e2bar, P.N2, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4840,(0,1):C.GC_4841}) 
 
 
V_3981 = Vertex(name = 'V_3981', 
	 particles = [P.e2bar, P.N3, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4842,(0,1):C.GC_4843}) 
 
 
V_3982 = Vertex(name = 'V_3982', 
	 particles = [P.e2bar, P.N3, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4844,(0,1):C.GC_4845}) 
 
 
V_3983 = Vertex(name = 'V_3983', 
	 particles = [P.e2bar, P.N3, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4846,(0,1):C.GC_4847}) 
 
 
V_3984 = Vertex(name = 'V_3984', 
	 particles = [P.e2bar, P.N3, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4848,(0,1):C.GC_4849}) 
 
 
V_3985 = Vertex(name = 'V_3985', 
	 particles = [P.e2bar, P.N3, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4850,(0,1):C.GC_4851}) 
 
 
V_3986 = Vertex(name = 'V_3986', 
	 particles = [P.e2bar, P.N3, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4852,(0,1):C.GC_4853}) 
 
 
V_3987 = Vertex(name = 'V_3987', 
	 particles = [P.e2bar, P.N4, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4854,(0,1):C.GC_4855}) 
 
 
V_3988 = Vertex(name = 'V_3988', 
	 particles = [P.e2bar, P.N4, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4856,(0,1):C.GC_4857}) 
 
 
V_3989 = Vertex(name = 'V_3989', 
	 particles = [P.e2bar, P.N4, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4858,(0,1):C.GC_4859}) 
 
 
V_3990 = Vertex(name = 'V_3990', 
	 particles = [P.e2bar, P.N4, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4860,(0,1):C.GC_4861}) 
 
 
V_3991 = Vertex(name = 'V_3991', 
	 particles = [P.e2bar, P.N4, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4862,(0,1):C.GC_4863}) 
 
 
V_3992 = Vertex(name = 'V_3992', 
	 particles = [P.e2bar, P.N4, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4864,(0,1):C.GC_4865}) 
 
 
V_3993 = Vertex(name = 'V_3993', 
	 particles = [P.e2bar, P.N5, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4866,(0,1):C.GC_4867}) 
 
 
V_3994 = Vertex(name = 'V_3994', 
	 particles = [P.e2bar, P.N5, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4868,(0,1):C.GC_4869}) 
 
 
V_3995 = Vertex(name = 'V_3995', 
	 particles = [P.e2bar, P.N5, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4870,(0,1):C.GC_4871}) 
 
 
V_3996 = Vertex(name = 'V_3996', 
	 particles = [P.e2bar, P.N5, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4872,(0,1):C.GC_4873}) 
 
 
V_3997 = Vertex(name = 'V_3997', 
	 particles = [P.e2bar, P.N5, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4874,(0,1):C.GC_4875}) 
 
 
V_3998 = Vertex(name = 'V_3998', 
	 particles = [P.e2bar, P.N5, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4876,(0,1):C.GC_4877}) 
 
 
V_3999 = Vertex(name = 'V_3999', 
	 particles = [P.e2bar, P.N6, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4878,(0,1):C.GC_4879}) 
 
 
V_4000 = Vertex(name = 'V_4000', 
	 particles = [P.e2bar, P.N6, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4880,(0,1):C.GC_4881}) 
 
 
V_4001 = Vertex(name = 'V_4001', 
	 particles = [P.e2bar, P.N6, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4882,(0,1):C.GC_4883}) 
 
 
V_4002 = Vertex(name = 'V_4002', 
	 particles = [P.e2bar, P.N6, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4884,(0,1):C.GC_4885}) 
 
 
V_4003 = Vertex(name = 'V_4003', 
	 particles = [P.e2bar, P.N6, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4886,(0,1):C.GC_4887}) 
 
 
V_4004 = Vertex(name = 'V_4004', 
	 particles = [P.e2bar, P.N6, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4888,(0,1):C.GC_4889}) 
 
 
V_4005 = Vertex(name = 'V_4005', 
	 particles = [P.e3bar, P.N1, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4890,(0,1):C.GC_4891}) 
 
 
V_4006 = Vertex(name = 'V_4006', 
	 particles = [P.e3bar, P.N1, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4892,(0,1):C.GC_4893}) 
 
 
V_4007 = Vertex(name = 'V_4007', 
	 particles = [P.e3bar, P.N1, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4894,(0,1):C.GC_4895}) 
 
 
V_4008 = Vertex(name = 'V_4008', 
	 particles = [P.e3bar, P.N1, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4896,(0,1):C.GC_4897}) 
 
 
V_4009 = Vertex(name = 'V_4009', 
	 particles = [P.e3bar, P.N1, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4898,(0,1):C.GC_4899}) 
 
 
V_4010 = Vertex(name = 'V_4010', 
	 particles = [P.e3bar, P.N1, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4900,(0,1):C.GC_4901}) 
 
 
V_4011 = Vertex(name = 'V_4011', 
	 particles = [P.e3bar, P.N2, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4902,(0,1):C.GC_4903}) 
 
 
V_4012 = Vertex(name = 'V_4012', 
	 particles = [P.e3bar, P.N2, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4904,(0,1):C.GC_4905}) 
 
 
V_4013 = Vertex(name = 'V_4013', 
	 particles = [P.e3bar, P.N2, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4906,(0,1):C.GC_4907}) 
 
 
V_4014 = Vertex(name = 'V_4014', 
	 particles = [P.e3bar, P.N2, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4908,(0,1):C.GC_4909}) 
 
 
V_4015 = Vertex(name = 'V_4015', 
	 particles = [P.e3bar, P.N2, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4910,(0,1):C.GC_4911}) 
 
 
V_4016 = Vertex(name = 'V_4016', 
	 particles = [P.e3bar, P.N2, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4912,(0,1):C.GC_4913}) 
 
 
V_4017 = Vertex(name = 'V_4017', 
	 particles = [P.e3bar, P.N3, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4914,(0,1):C.GC_4915}) 
 
 
V_4018 = Vertex(name = 'V_4018', 
	 particles = [P.e3bar, P.N3, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4916,(0,1):C.GC_4917}) 
 
 
V_4019 = Vertex(name = 'V_4019', 
	 particles = [P.e3bar, P.N3, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4918,(0,1):C.GC_4919}) 
 
 
V_4020 = Vertex(name = 'V_4020', 
	 particles = [P.e3bar, P.N3, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4920,(0,1):C.GC_4921}) 
 
 
V_4021 = Vertex(name = 'V_4021', 
	 particles = [P.e3bar, P.N3, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4922,(0,1):C.GC_4923}) 
 
 
V_4022 = Vertex(name = 'V_4022', 
	 particles = [P.e3bar, P.N3, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4924,(0,1):C.GC_4925}) 
 
 
V_4023 = Vertex(name = 'V_4023', 
	 particles = [P.e3bar, P.N4, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4926,(0,1):C.GC_4927}) 
 
 
V_4024 = Vertex(name = 'V_4024', 
	 particles = [P.e3bar, P.N4, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4928,(0,1):C.GC_4929}) 
 
 
V_4025 = Vertex(name = 'V_4025', 
	 particles = [P.e3bar, P.N4, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4930,(0,1):C.GC_4931}) 
 
 
V_4026 = Vertex(name = 'V_4026', 
	 particles = [P.e3bar, P.N4, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4932,(0,1):C.GC_4933}) 
 
 
V_4027 = Vertex(name = 'V_4027', 
	 particles = [P.e3bar, P.N4, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4934,(0,1):C.GC_4935}) 
 
 
V_4028 = Vertex(name = 'V_4028', 
	 particles = [P.e3bar, P.N4, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4936,(0,1):C.GC_4937}) 
 
 
V_4029 = Vertex(name = 'V_4029', 
	 particles = [P.e3bar, P.N5, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4938,(0,1):C.GC_4939}) 
 
 
V_4030 = Vertex(name = 'V_4030', 
	 particles = [P.e3bar, P.N5, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4940,(0,1):C.GC_4941}) 
 
 
V_4031 = Vertex(name = 'V_4031', 
	 particles = [P.e3bar, P.N5, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4942,(0,1):C.GC_4943}) 
 
 
V_4032 = Vertex(name = 'V_4032', 
	 particles = [P.e3bar, P.N5, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4944,(0,1):C.GC_4945}) 
 
 
V_4033 = Vertex(name = 'V_4033', 
	 particles = [P.e3bar, P.N5, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4946,(0,1):C.GC_4947}) 
 
 
V_4034 = Vertex(name = 'V_4034', 
	 particles = [P.e3bar, P.N5, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4948,(0,1):C.GC_4949}) 
 
 
V_4035 = Vertex(name = 'V_4035', 
	 particles = [P.e3bar, P.N6, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4950,(0,1):C.GC_4951}) 
 
 
V_4036 = Vertex(name = 'V_4036', 
	 particles = [P.e3bar, P.N6, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4952,(0,1):C.GC_4953}) 
 
 
V_4037 = Vertex(name = 'V_4037', 
	 particles = [P.e3bar, P.N6, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4954,(0,1):C.GC_4955}) 
 
 
V_4038 = Vertex(name = 'V_4038', 
	 particles = [P.e3bar, P.N6, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4956,(0,1):C.GC_4957}) 
 
 
V_4039 = Vertex(name = 'V_4039', 
	 particles = [P.e3bar, P.N6, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4958,(0,1):C.GC_4959}) 
 
 
V_4040 = Vertex(name = 'V_4040', 
	 particles = [P.e3bar, P.N6, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4960,(0,1):C.GC_4961}) 
 
 
V_4041 = Vertex(name = 'V_4041', 
	 particles = [P.u1bar, P.N1, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4962,(0,1):C.GC_4963}) 
 
 
V_4042 = Vertex(name = 'V_4042', 
	 particles = [P.u1bar, P.N1, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4964,(0,1):C.GC_4965}) 
 
 
V_4043 = Vertex(name = 'V_4043', 
	 particles = [P.u1bar, P.N1, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4966,(0,1):C.GC_4967}) 
 
 
V_4044 = Vertex(name = 'V_4044', 
	 particles = [P.u1bar, P.N1, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4968,(0,1):C.GC_4969}) 
 
 
V_4045 = Vertex(name = 'V_4045', 
	 particles = [P.u1bar, P.N1, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4970,(0,1):C.GC_4971}) 
 
 
V_4046 = Vertex(name = 'V_4046', 
	 particles = [P.u1bar, P.N1, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4972,(0,1):C.GC_4973}) 
 
 
V_4047 = Vertex(name = 'V_4047', 
	 particles = [P.u1bar, P.N2, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4974,(0,1):C.GC_4975}) 
 
 
V_4048 = Vertex(name = 'V_4048', 
	 particles = [P.u1bar, P.N2, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4976,(0,1):C.GC_4977}) 
 
 
V_4049 = Vertex(name = 'V_4049', 
	 particles = [P.u1bar, P.N2, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4978,(0,1):C.GC_4979}) 
 
 
V_4050 = Vertex(name = 'V_4050', 
	 particles = [P.u1bar, P.N2, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4980,(0,1):C.GC_4981}) 
 
 
V_4051 = Vertex(name = 'V_4051', 
	 particles = [P.u1bar, P.N2, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4982,(0,1):C.GC_4983}) 
 
 
V_4052 = Vertex(name = 'V_4052', 
	 particles = [P.u1bar, P.N2, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4984,(0,1):C.GC_4985}) 
 
 
V_4053 = Vertex(name = 'V_4053', 
	 particles = [P.u1bar, P.N3, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4986,(0,1):C.GC_4987}) 
 
 
V_4054 = Vertex(name = 'V_4054', 
	 particles = [P.u1bar, P.N3, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4988,(0,1):C.GC_4989}) 
 
 
V_4055 = Vertex(name = 'V_4055', 
	 particles = [P.u1bar, P.N3, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4990,(0,1):C.GC_4991}) 
 
 
V_4056 = Vertex(name = 'V_4056', 
	 particles = [P.u1bar, P.N3, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4992,(0,1):C.GC_4993}) 
 
 
V_4057 = Vertex(name = 'V_4057', 
	 particles = [P.u1bar, P.N3, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4994,(0,1):C.GC_4995}) 
 
 
V_4058 = Vertex(name = 'V_4058', 
	 particles = [P.u1bar, P.N3, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4996,(0,1):C.GC_4997}) 
 
 
V_4059 = Vertex(name = 'V_4059', 
	 particles = [P.u1bar, P.N4, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_4998,(0,1):C.GC_4999}) 
 
 
V_4060 = Vertex(name = 'V_4060', 
	 particles = [P.u1bar, P.N4, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5000,(0,1):C.GC_5001}) 
 
 
V_4061 = Vertex(name = 'V_4061', 
	 particles = [P.u1bar, P.N4, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5002,(0,1):C.GC_5003}) 
 
 
V_4062 = Vertex(name = 'V_4062', 
	 particles = [P.u1bar, P.N4, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5004,(0,1):C.GC_5005}) 
 
 
V_4063 = Vertex(name = 'V_4063', 
	 particles = [P.u1bar, P.N4, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5006,(0,1):C.GC_5007}) 
 
 
V_4064 = Vertex(name = 'V_4064', 
	 particles = [P.u1bar, P.N4, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5008,(0,1):C.GC_5009}) 
 
 
V_4065 = Vertex(name = 'V_4065', 
	 particles = [P.u1bar, P.N5, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5010,(0,1):C.GC_5011}) 
 
 
V_4066 = Vertex(name = 'V_4066', 
	 particles = [P.u1bar, P.N5, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5012,(0,1):C.GC_5013}) 
 
 
V_4067 = Vertex(name = 'V_4067', 
	 particles = [P.u1bar, P.N5, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5014,(0,1):C.GC_5015}) 
 
 
V_4068 = Vertex(name = 'V_4068', 
	 particles = [P.u1bar, P.N5, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5016,(0,1):C.GC_5017}) 
 
 
V_4069 = Vertex(name = 'V_4069', 
	 particles = [P.u1bar, P.N5, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5018,(0,1):C.GC_5019}) 
 
 
V_4070 = Vertex(name = 'V_4070', 
	 particles = [P.u1bar, P.N5, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5020,(0,1):C.GC_5021}) 
 
 
V_4071 = Vertex(name = 'V_4071', 
	 particles = [P.u1bar, P.N6, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5022,(0,1):C.GC_5023}) 
 
 
V_4072 = Vertex(name = 'V_4072', 
	 particles = [P.u1bar, P.N6, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5024,(0,1):C.GC_5025}) 
 
 
V_4073 = Vertex(name = 'V_4073', 
	 particles = [P.u1bar, P.N6, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5026,(0,1):C.GC_5027}) 
 
 
V_4074 = Vertex(name = 'V_4074', 
	 particles = [P.u1bar, P.N6, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5028,(0,1):C.GC_5029}) 
 
 
V_4075 = Vertex(name = 'V_4075', 
	 particles = [P.u1bar, P.N6, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5030,(0,1):C.GC_5031}) 
 
 
V_4076 = Vertex(name = 'V_4076', 
	 particles = [P.u1bar, P.N6, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5032,(0,1):C.GC_5033}) 
 
 
V_4077 = Vertex(name = 'V_4077', 
	 particles = [P.u2bar, P.N1, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5034,(0,1):C.GC_5035}) 
 
 
V_4078 = Vertex(name = 'V_4078', 
	 particles = [P.u2bar, P.N1, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5036,(0,1):C.GC_5037}) 
 
 
V_4079 = Vertex(name = 'V_4079', 
	 particles = [P.u2bar, P.N1, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5038,(0,1):C.GC_5039}) 
 
 
V_4080 = Vertex(name = 'V_4080', 
	 particles = [P.u2bar, P.N1, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5040,(0,1):C.GC_5041}) 
 
 
V_4081 = Vertex(name = 'V_4081', 
	 particles = [P.u2bar, P.N1, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5042,(0,1):C.GC_5043}) 
 
 
V_4082 = Vertex(name = 'V_4082', 
	 particles = [P.u2bar, P.N1, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5044,(0,1):C.GC_5045}) 
 
 
V_4083 = Vertex(name = 'V_4083', 
	 particles = [P.u2bar, P.N2, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5046,(0,1):C.GC_5047}) 
 
 
V_4084 = Vertex(name = 'V_4084', 
	 particles = [P.u2bar, P.N2, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5048,(0,1):C.GC_5049}) 
 
 
V_4085 = Vertex(name = 'V_4085', 
	 particles = [P.u2bar, P.N2, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5050,(0,1):C.GC_5051}) 
 
 
V_4086 = Vertex(name = 'V_4086', 
	 particles = [P.u2bar, P.N2, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5052,(0,1):C.GC_5053}) 
 
 
V_4087 = Vertex(name = 'V_4087', 
	 particles = [P.u2bar, P.N2, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5054,(0,1):C.GC_5055}) 
 
 
V_4088 = Vertex(name = 'V_4088', 
	 particles = [P.u2bar, P.N2, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5056,(0,1):C.GC_5057}) 
 
 
V_4089 = Vertex(name = 'V_4089', 
	 particles = [P.u2bar, P.N3, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5058,(0,1):C.GC_5059}) 
 
 
V_4090 = Vertex(name = 'V_4090', 
	 particles = [P.u2bar, P.N3, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5060,(0,1):C.GC_5061}) 
 
 
V_4091 = Vertex(name = 'V_4091', 
	 particles = [P.u2bar, P.N3, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5062,(0,1):C.GC_5063}) 
 
 
V_4092 = Vertex(name = 'V_4092', 
	 particles = [P.u2bar, P.N3, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5064,(0,1):C.GC_5065}) 
 
 
V_4093 = Vertex(name = 'V_4093', 
	 particles = [P.u2bar, P.N3, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5066,(0,1):C.GC_5067}) 
 
 
V_4094 = Vertex(name = 'V_4094', 
	 particles = [P.u2bar, P.N3, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5068,(0,1):C.GC_5069}) 
 
 
V_4095 = Vertex(name = 'V_4095', 
	 particles = [P.u2bar, P.N4, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5070,(0,1):C.GC_5071}) 
 
 
V_4096 = Vertex(name = 'V_4096', 
	 particles = [P.u2bar, P.N4, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5072,(0,1):C.GC_5073}) 
 
 
V_4097 = Vertex(name = 'V_4097', 
	 particles = [P.u2bar, P.N4, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5074,(0,1):C.GC_5075}) 
 
 
V_4098 = Vertex(name = 'V_4098', 
	 particles = [P.u2bar, P.N4, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5076,(0,1):C.GC_5077}) 
 
 
V_4099 = Vertex(name = 'V_4099', 
	 particles = [P.u2bar, P.N4, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5078,(0,1):C.GC_5079}) 
 
 
V_4100 = Vertex(name = 'V_4100', 
	 particles = [P.u2bar, P.N4, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5080,(0,1):C.GC_5081}) 
 
 
V_4101 = Vertex(name = 'V_4101', 
	 particles = [P.u2bar, P.N5, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5082,(0,1):C.GC_5083}) 
 
 
V_4102 = Vertex(name = 'V_4102', 
	 particles = [P.u2bar, P.N5, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5084,(0,1):C.GC_5085}) 
 
 
V_4103 = Vertex(name = 'V_4103', 
	 particles = [P.u2bar, P.N5, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5086,(0,1):C.GC_5087}) 
 
 
V_4104 = Vertex(name = 'V_4104', 
	 particles = [P.u2bar, P.N5, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5088,(0,1):C.GC_5089}) 
 
 
V_4105 = Vertex(name = 'V_4105', 
	 particles = [P.u2bar, P.N5, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5090,(0,1):C.GC_5091}) 
 
 
V_4106 = Vertex(name = 'V_4106', 
	 particles = [P.u2bar, P.N5, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5092,(0,1):C.GC_5093}) 
 
 
V_4107 = Vertex(name = 'V_4107', 
	 particles = [P.u2bar, P.N6, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5094,(0,1):C.GC_5095}) 
 
 
V_4108 = Vertex(name = 'V_4108', 
	 particles = [P.u2bar, P.N6, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5096,(0,1):C.GC_5097}) 
 
 
V_4109 = Vertex(name = 'V_4109', 
	 particles = [P.u2bar, P.N6, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5098,(0,1):C.GC_5099}) 
 
 
V_4110 = Vertex(name = 'V_4110', 
	 particles = [P.u2bar, P.N6, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5100,(0,1):C.GC_5101}) 
 
 
V_4111 = Vertex(name = 'V_4111', 
	 particles = [P.u2bar, P.N6, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5102,(0,1):C.GC_5103}) 
 
 
V_4112 = Vertex(name = 'V_4112', 
	 particles = [P.u2bar, P.N6, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5104,(0,1):C.GC_5105}) 
 
 
V_4113 = Vertex(name = 'V_4113', 
	 particles = [P.u3bar, P.N1, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5106,(0,1):C.GC_5107}) 
 
 
V_4114 = Vertex(name = 'V_4114', 
	 particles = [P.u3bar, P.N1, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5108,(0,1):C.GC_5109}) 
 
 
V_4115 = Vertex(name = 'V_4115', 
	 particles = [P.u3bar, P.N1, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5110,(0,1):C.GC_5111}) 
 
 
V_4116 = Vertex(name = 'V_4116', 
	 particles = [P.u3bar, P.N1, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5112,(0,1):C.GC_5113}) 
 
 
V_4117 = Vertex(name = 'V_4117', 
	 particles = [P.u3bar, P.N1, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5114,(0,1):C.GC_5115}) 
 
 
V_4118 = Vertex(name = 'V_4118', 
	 particles = [P.u3bar, P.N1, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5116,(0,1):C.GC_5117}) 
 
 
V_4119 = Vertex(name = 'V_4119', 
	 particles = [P.u3bar, P.N2, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5118,(0,1):C.GC_5119}) 
 
 
V_4120 = Vertex(name = 'V_4120', 
	 particles = [P.u3bar, P.N2, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5120,(0,1):C.GC_5121}) 
 
 
V_4121 = Vertex(name = 'V_4121', 
	 particles = [P.u3bar, P.N2, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5122,(0,1):C.GC_5123}) 
 
 
V_4122 = Vertex(name = 'V_4122', 
	 particles = [P.u3bar, P.N2, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5124,(0,1):C.GC_5125}) 
 
 
V_4123 = Vertex(name = 'V_4123', 
	 particles = [P.u3bar, P.N2, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5126,(0,1):C.GC_5127}) 
 
 
V_4124 = Vertex(name = 'V_4124', 
	 particles = [P.u3bar, P.N2, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5128,(0,1):C.GC_5129}) 
 
 
V_4125 = Vertex(name = 'V_4125', 
	 particles = [P.u3bar, P.N3, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5130,(0,1):C.GC_5131}) 
 
 
V_4126 = Vertex(name = 'V_4126', 
	 particles = [P.u3bar, P.N3, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5132,(0,1):C.GC_5133}) 
 
 
V_4127 = Vertex(name = 'V_4127', 
	 particles = [P.u3bar, P.N3, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5134,(0,1):C.GC_5135}) 
 
 
V_4128 = Vertex(name = 'V_4128', 
	 particles = [P.u3bar, P.N3, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5136,(0,1):C.GC_5137}) 
 
 
V_4129 = Vertex(name = 'V_4129', 
	 particles = [P.u3bar, P.N3, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5138,(0,1):C.GC_5139}) 
 
 
V_4130 = Vertex(name = 'V_4130', 
	 particles = [P.u3bar, P.N3, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5140,(0,1):C.GC_5141}) 
 
 
V_4131 = Vertex(name = 'V_4131', 
	 particles = [P.u3bar, P.N4, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5142,(0,1):C.GC_5143}) 
 
 
V_4132 = Vertex(name = 'V_4132', 
	 particles = [P.u3bar, P.N4, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5144,(0,1):C.GC_5145}) 
 
 
V_4133 = Vertex(name = 'V_4133', 
	 particles = [P.u3bar, P.N4, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5146,(0,1):C.GC_5147}) 
 
 
V_4134 = Vertex(name = 'V_4134', 
	 particles = [P.u3bar, P.N4, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5148,(0,1):C.GC_5149}) 
 
 
V_4135 = Vertex(name = 'V_4135', 
	 particles = [P.u3bar, P.N4, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5150,(0,1):C.GC_5151}) 
 
 
V_4136 = Vertex(name = 'V_4136', 
	 particles = [P.u3bar, P.N4, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5152,(0,1):C.GC_5153}) 
 
 
V_4137 = Vertex(name = 'V_4137', 
	 particles = [P.u3bar, P.N5, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5154,(0,1):C.GC_5155}) 
 
 
V_4138 = Vertex(name = 'V_4138', 
	 particles = [P.u3bar, P.N5, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5156,(0,1):C.GC_5157}) 
 
 
V_4139 = Vertex(name = 'V_4139', 
	 particles = [P.u3bar, P.N5, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5158,(0,1):C.GC_5159}) 
 
 
V_4140 = Vertex(name = 'V_4140', 
	 particles = [P.u3bar, P.N5, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5160,(0,1):C.GC_5161}) 
 
 
V_4141 = Vertex(name = 'V_4141', 
	 particles = [P.u3bar, P.N5, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5162,(0,1):C.GC_5163}) 
 
 
V_4142 = Vertex(name = 'V_4142', 
	 particles = [P.u3bar, P.N5, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5164,(0,1):C.GC_5165}) 
 
 
V_4143 = Vertex(name = 'V_4143', 
	 particles = [P.u3bar, P.N6, P.su1], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5166,(0,1):C.GC_5167}) 
 
 
V_4144 = Vertex(name = 'V_4144', 
	 particles = [P.u3bar, P.N6, P.su2], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5168,(0,1):C.GC_5169}) 
 
 
V_4145 = Vertex(name = 'V_4145', 
	 particles = [P.u3bar, P.N6, P.su3], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5170,(0,1):C.GC_5171}) 
 
 
V_4146 = Vertex(name = 'V_4146', 
	 particles = [P.u3bar, P.N6, P.su4], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5172,(0,1):C.GC_5173}) 
 
 
V_4147 = Vertex(name = 'V_4147', 
	 particles = [P.u3bar, P.N6, P.su5], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5174,(0,1):C.GC_5175}) 
 
 
V_4148 = Vertex(name = 'V_4148', 
	 particles = [P.u3bar, P.N6, P.su6], 
	 color = ['Identity(1,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5176,(0,1):C.GC_5177}) 
 
 
V_4149 = Vertex(name = 'V_4149', 
	 particles = [P.nu1bar, P.N1, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5178}) 
 
 
V_4150 = Vertex(name = 'V_4150', 
	 particles = [P.nu1bar, P.N1, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5179}) 
 
 
V_4151 = Vertex(name = 'V_4151', 
	 particles = [P.nu1bar, P.N1, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5180}) 
 
 
V_4152 = Vertex(name = 'V_4152', 
	 particles = [P.nu1bar, P.N2, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5181}) 
 
 
V_4153 = Vertex(name = 'V_4153', 
	 particles = [P.nu1bar, P.N2, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5182}) 
 
 
V_4154 = Vertex(name = 'V_4154', 
	 particles = [P.nu1bar, P.N2, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5183}) 
 
 
V_4155 = Vertex(name = 'V_4155', 
	 particles = [P.nu1bar, P.N3, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5184}) 
 
 
V_4156 = Vertex(name = 'V_4156', 
	 particles = [P.nu1bar, P.N3, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5185}) 
 
 
V_4157 = Vertex(name = 'V_4157', 
	 particles = [P.nu1bar, P.N3, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5186}) 
 
 
V_4158 = Vertex(name = 'V_4158', 
	 particles = [P.nu1bar, P.N4, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5187}) 
 
 
V_4159 = Vertex(name = 'V_4159', 
	 particles = [P.nu1bar, P.N4, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5188}) 
 
 
V_4160 = Vertex(name = 'V_4160', 
	 particles = [P.nu1bar, P.N4, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5189}) 
 
 
V_4161 = Vertex(name = 'V_4161', 
	 particles = [P.nu1bar, P.N5, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5190}) 
 
 
V_4162 = Vertex(name = 'V_4162', 
	 particles = [P.nu1bar, P.N5, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5191}) 
 
 
V_4163 = Vertex(name = 'V_4163', 
	 particles = [P.nu1bar, P.N5, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5192}) 
 
 
V_4164 = Vertex(name = 'V_4164', 
	 particles = [P.nu1bar, P.N6, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5193}) 
 
 
V_4165 = Vertex(name = 'V_4165', 
	 particles = [P.nu1bar, P.N6, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5194}) 
 
 
V_4166 = Vertex(name = 'V_4166', 
	 particles = [P.nu1bar, P.N6, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5195}) 
 
 
V_4167 = Vertex(name = 'V_4167', 
	 particles = [P.nu2bar, P.N1, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5196}) 
 
 
V_4168 = Vertex(name = 'V_4168', 
	 particles = [P.nu2bar, P.N1, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5197}) 
 
 
V_4169 = Vertex(name = 'V_4169', 
	 particles = [P.nu2bar, P.N1, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5198}) 
 
 
V_4170 = Vertex(name = 'V_4170', 
	 particles = [P.nu2bar, P.N2, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5199}) 
 
 
V_4171 = Vertex(name = 'V_4171', 
	 particles = [P.nu2bar, P.N2, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5200}) 
 
 
V_4172 = Vertex(name = 'V_4172', 
	 particles = [P.nu2bar, P.N2, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5201}) 
 
 
V_4173 = Vertex(name = 'V_4173', 
	 particles = [P.nu2bar, P.N3, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5202}) 
 
 
V_4174 = Vertex(name = 'V_4174', 
	 particles = [P.nu2bar, P.N3, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5203}) 
 
 
V_4175 = Vertex(name = 'V_4175', 
	 particles = [P.nu2bar, P.N3, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5204}) 
 
 
V_4176 = Vertex(name = 'V_4176', 
	 particles = [P.nu2bar, P.N4, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5205}) 
 
 
V_4177 = Vertex(name = 'V_4177', 
	 particles = [P.nu2bar, P.N4, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5206}) 
 
 
V_4178 = Vertex(name = 'V_4178', 
	 particles = [P.nu2bar, P.N4, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5207}) 
 
 
V_4179 = Vertex(name = 'V_4179', 
	 particles = [P.nu2bar, P.N5, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5208}) 
 
 
V_4180 = Vertex(name = 'V_4180', 
	 particles = [P.nu2bar, P.N5, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5209}) 
 
 
V_4181 = Vertex(name = 'V_4181', 
	 particles = [P.nu2bar, P.N5, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5210}) 
 
 
V_4182 = Vertex(name = 'V_4182', 
	 particles = [P.nu2bar, P.N6, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5211}) 
 
 
V_4183 = Vertex(name = 'V_4183', 
	 particles = [P.nu2bar, P.N6, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5212}) 
 
 
V_4184 = Vertex(name = 'V_4184', 
	 particles = [P.nu2bar, P.N6, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5213}) 
 
 
V_4185 = Vertex(name = 'V_4185', 
	 particles = [P.nu3bar, P.N1, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5214}) 
 
 
V_4186 = Vertex(name = 'V_4186', 
	 particles = [P.nu3bar, P.N1, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5215}) 
 
 
V_4187 = Vertex(name = 'V_4187', 
	 particles = [P.nu3bar, P.N1, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5216}) 
 
 
V_4188 = Vertex(name = 'V_4188', 
	 particles = [P.nu3bar, P.N2, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5217}) 
 
 
V_4189 = Vertex(name = 'V_4189', 
	 particles = [P.nu3bar, P.N2, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5218}) 
 
 
V_4190 = Vertex(name = 'V_4190', 
	 particles = [P.nu3bar, P.N2, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5219}) 
 
 
V_4191 = Vertex(name = 'V_4191', 
	 particles = [P.nu3bar, P.N3, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5220}) 
 
 
V_4192 = Vertex(name = 'V_4192', 
	 particles = [P.nu3bar, P.N3, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5221}) 
 
 
V_4193 = Vertex(name = 'V_4193', 
	 particles = [P.nu3bar, P.N3, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5222}) 
 
 
V_4194 = Vertex(name = 'V_4194', 
	 particles = [P.nu3bar, P.N4, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5223}) 
 
 
V_4195 = Vertex(name = 'V_4195', 
	 particles = [P.nu3bar, P.N4, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5224}) 
 
 
V_4196 = Vertex(name = 'V_4196', 
	 particles = [P.nu3bar, P.N4, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5225}) 
 
 
V_4197 = Vertex(name = 'V_4197', 
	 particles = [P.nu3bar, P.N5, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5226}) 
 
 
V_4198 = Vertex(name = 'V_4198', 
	 particles = [P.nu3bar, P.N5, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5227}) 
 
 
V_4199 = Vertex(name = 'V_4199', 
	 particles = [P.nu3bar, P.N5, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5228}) 
 
 
V_4200 = Vertex(name = 'V_4200', 
	 particles = [P.nu3bar, P.N6, P.sv1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5229}) 
 
 
V_4201 = Vertex(name = 'V_4201', 
	 particles = [P.nu3bar, P.N6, P.sv2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5230}) 
 
 
V_4202 = Vertex(name = 'V_4202', 
	 particles = [P.nu3bar, P.N6, P.sv3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5231}) 
 
 
V_4203 = Vertex(name = 'V_4203', 
	 particles = [P.go, P.d1, P.sd1c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5232,(0,1):C.GC_5233}) 
 
 
V_4204 = Vertex(name = 'V_4204', 
	 particles = [P.go, P.d1, P.sd2c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5234,(0,1):C.GC_5235}) 
 
 
V_4205 = Vertex(name = 'V_4205', 
	 particles = [P.go, P.d1, P.sd3c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5236,(0,1):C.GC_5237}) 
 
 
V_4206 = Vertex(name = 'V_4206', 
	 particles = [P.go, P.d1, P.sd4c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5238,(0,1):C.GC_5239}) 
 
 
V_4207 = Vertex(name = 'V_4207', 
	 particles = [P.go, P.d1, P.sd5c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5240,(0,1):C.GC_5241}) 
 
 
V_4208 = Vertex(name = 'V_4208', 
	 particles = [P.go, P.d1, P.sd6c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5242,(0,1):C.GC_5243}) 
 
 
V_4209 = Vertex(name = 'V_4209', 
	 particles = [P.go, P.d2, P.sd1c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5244,(0,1):C.GC_5245}) 
 
 
V_4210 = Vertex(name = 'V_4210', 
	 particles = [P.go, P.d2, P.sd2c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5246,(0,1):C.GC_5247}) 
 
 
V_4211 = Vertex(name = 'V_4211', 
	 particles = [P.go, P.d2, P.sd3c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5248,(0,1):C.GC_5249}) 
 
 
V_4212 = Vertex(name = 'V_4212', 
	 particles = [P.go, P.d2, P.sd4c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5250,(0,1):C.GC_5251}) 
 
 
V_4213 = Vertex(name = 'V_4213', 
	 particles = [P.go, P.d2, P.sd5c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5252,(0,1):C.GC_5253}) 
 
 
V_4214 = Vertex(name = 'V_4214', 
	 particles = [P.go, P.d2, P.sd6c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5254,(0,1):C.GC_5255}) 
 
 
V_4215 = Vertex(name = 'V_4215', 
	 particles = [P.go, P.d3, P.sd1c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5256,(0,1):C.GC_5257}) 
 
 
V_4216 = Vertex(name = 'V_4216', 
	 particles = [P.go, P.d3, P.sd2c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5258,(0,1):C.GC_5259}) 
 
 
V_4217 = Vertex(name = 'V_4217', 
	 particles = [P.go, P.d3, P.sd3c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5260,(0,1):C.GC_5261}) 
 
 
V_4218 = Vertex(name = 'V_4218', 
	 particles = [P.go, P.d3, P.sd4c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5262,(0,1):C.GC_5263}) 
 
 
V_4219 = Vertex(name = 'V_4219', 
	 particles = [P.go, P.d3, P.sd5c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5264,(0,1):C.GC_5265}) 
 
 
V_4220 = Vertex(name = 'V_4220', 
	 particles = [P.go, P.d3, P.sd6c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5266,(0,1):C.GC_5267}) 
 
 
V_4221 = Vertex(name = 'V_4221', 
	 particles = [P.d1bar, P.d1, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5268,(0,1):C.GC_5269}) 
 
 
V_4222 = Vertex(name = 'V_4222', 
	 particles = [P.d1bar, P.d1, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5270,(0,1):C.GC_5271}) 
 
 
V_4223 = Vertex(name = 'V_4223', 
	 particles = [P.d1bar, P.d1, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5272,(0,1):C.GC_5273}) 
 
 
V_4224 = Vertex(name = 'V_4224', 
	 particles = [P.d1bar, P.d2, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5274,(0,1):C.GC_5275}) 
 
 
V_4225 = Vertex(name = 'V_4225', 
	 particles = [P.d1bar, P.d2, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5276,(0,1):C.GC_5277}) 
 
 
V_4226 = Vertex(name = 'V_4226', 
	 particles = [P.d1bar, P.d2, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5278,(0,1):C.GC_5279}) 
 
 
V_4227 = Vertex(name = 'V_4227', 
	 particles = [P.d1bar, P.d3, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5280,(0,1):C.GC_5281}) 
 
 
V_4228 = Vertex(name = 'V_4228', 
	 particles = [P.d1bar, P.d3, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5282,(0,1):C.GC_5283}) 
 
 
V_4229 = Vertex(name = 'V_4229', 
	 particles = [P.d1bar, P.d3, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5284,(0,1):C.GC_5285}) 
 
 
V_4230 = Vertex(name = 'V_4230', 
	 particles = [P.d2bar, P.d1, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5286,(0,1):C.GC_5287}) 
 
 
V_4231 = Vertex(name = 'V_4231', 
	 particles = [P.d2bar, P.d1, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5288,(0,1):C.GC_5289}) 
 
 
V_4232 = Vertex(name = 'V_4232', 
	 particles = [P.d2bar, P.d1, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5290,(0,1):C.GC_5291}) 
 
 
V_4233 = Vertex(name = 'V_4233', 
	 particles = [P.d2bar, P.d2, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5292,(0,1):C.GC_5293}) 
 
 
V_4234 = Vertex(name = 'V_4234', 
	 particles = [P.d2bar, P.d2, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5294,(0,1):C.GC_5295}) 
 
 
V_4235 = Vertex(name = 'V_4235', 
	 particles = [P.d2bar, P.d2, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5296,(0,1):C.GC_5297}) 
 
 
V_4236 = Vertex(name = 'V_4236', 
	 particles = [P.d2bar, P.d3, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5298,(0,1):C.GC_5299}) 
 
 
V_4237 = Vertex(name = 'V_4237', 
	 particles = [P.d2bar, P.d3, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5300,(0,1):C.GC_5301}) 
 
 
V_4238 = Vertex(name = 'V_4238', 
	 particles = [P.d2bar, P.d3, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5302,(0,1):C.GC_5303}) 
 
 
V_4239 = Vertex(name = 'V_4239', 
	 particles = [P.d3bar, P.d1, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5304,(0,1):C.GC_5305}) 
 
 
V_4240 = Vertex(name = 'V_4240', 
	 particles = [P.d3bar, P.d1, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5306,(0,1):C.GC_5307}) 
 
 
V_4241 = Vertex(name = 'V_4241', 
	 particles = [P.d3bar, P.d1, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5308,(0,1):C.GC_5309}) 
 
 
V_4242 = Vertex(name = 'V_4242', 
	 particles = [P.d3bar, P.d2, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5310,(0,1):C.GC_5311}) 
 
 
V_4243 = Vertex(name = 'V_4243', 
	 particles = [P.d3bar, P.d2, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5312,(0,1):C.GC_5313}) 
 
 
V_4244 = Vertex(name = 'V_4244', 
	 particles = [P.d3bar, P.d2, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5314,(0,1):C.GC_5315}) 
 
 
V_4245 = Vertex(name = 'V_4245', 
	 particles = [P.d3bar, P.d3, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5316,(0,1):C.GC_5317}) 
 
 
V_4246 = Vertex(name = 'V_4246', 
	 particles = [P.d3bar, P.d3, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5318,(0,1):C.GC_5319}) 
 
 
V_4247 = Vertex(name = 'V_4247', 
	 particles = [P.d3bar, P.d3, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5320,(0,1):C.GC_5321}) 
 
 
V_4248 = Vertex(name = 'V_4248', 
	 particles = [P.C1bar, P.d1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5322,(0,1):C.GC_5323}) 
 
 
V_4249 = Vertex(name = 'V_4249', 
	 particles = [P.C1bar, P.d1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5324,(0,1):C.GC_5325}) 
 
 
V_4250 = Vertex(name = 'V_4250', 
	 particles = [P.C1bar, P.d1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5326,(0,1):C.GC_5327}) 
 
 
V_4251 = Vertex(name = 'V_4251', 
	 particles = [P.C1bar, P.d1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5328,(0,1):C.GC_5329}) 
 
 
V_4252 = Vertex(name = 'V_4252', 
	 particles = [P.C1bar, P.d1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5330,(0,1):C.GC_5331}) 
 
 
V_4253 = Vertex(name = 'V_4253', 
	 particles = [P.C1bar, P.d1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5332,(0,1):C.GC_5333}) 
 
 
V_4254 = Vertex(name = 'V_4254', 
	 particles = [P.C1bar, P.d2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5334,(0,1):C.GC_5335}) 
 
 
V_4255 = Vertex(name = 'V_4255', 
	 particles = [P.C1bar, P.d2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5336,(0,1):C.GC_5337}) 
 
 
V_4256 = Vertex(name = 'V_4256', 
	 particles = [P.C1bar, P.d2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5338,(0,1):C.GC_5339}) 
 
 
V_4257 = Vertex(name = 'V_4257', 
	 particles = [P.C1bar, P.d2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5340,(0,1):C.GC_5341}) 
 
 
V_4258 = Vertex(name = 'V_4258', 
	 particles = [P.C1bar, P.d2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5342,(0,1):C.GC_5343}) 
 
 
V_4259 = Vertex(name = 'V_4259', 
	 particles = [P.C1bar, P.d2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5344,(0,1):C.GC_5345}) 
 
 
V_4260 = Vertex(name = 'V_4260', 
	 particles = [P.C1bar, P.d3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5346,(0,1):C.GC_5347}) 
 
 
V_4261 = Vertex(name = 'V_4261', 
	 particles = [P.C1bar, P.d3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5348,(0,1):C.GC_5349}) 
 
 
V_4262 = Vertex(name = 'V_4262', 
	 particles = [P.C1bar, P.d3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5350,(0,1):C.GC_5351}) 
 
 
V_4263 = Vertex(name = 'V_4263', 
	 particles = [P.C1bar, P.d3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5352,(0,1):C.GC_5353}) 
 
 
V_4264 = Vertex(name = 'V_4264', 
	 particles = [P.C1bar, P.d3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5354,(0,1):C.GC_5355}) 
 
 
V_4265 = Vertex(name = 'V_4265', 
	 particles = [P.C1bar, P.d3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5356,(0,1):C.GC_5357}) 
 
 
V_4266 = Vertex(name = 'V_4266', 
	 particles = [P.C2bar, P.d1, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5358,(0,1):C.GC_5359}) 
 
 
V_4267 = Vertex(name = 'V_4267', 
	 particles = [P.C2bar, P.d1, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5360,(0,1):C.GC_5361}) 
 
 
V_4268 = Vertex(name = 'V_4268', 
	 particles = [P.C2bar, P.d1, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5362,(0,1):C.GC_5363}) 
 
 
V_4269 = Vertex(name = 'V_4269', 
	 particles = [P.C2bar, P.d1, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5364,(0,1):C.GC_5365}) 
 
 
V_4270 = Vertex(name = 'V_4270', 
	 particles = [P.C2bar, P.d1, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5366,(0,1):C.GC_5367}) 
 
 
V_4271 = Vertex(name = 'V_4271', 
	 particles = [P.C2bar, P.d1, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5368,(0,1):C.GC_5369}) 
 
 
V_4272 = Vertex(name = 'V_4272', 
	 particles = [P.C2bar, P.d2, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5370,(0,1):C.GC_5371}) 
 
 
V_4273 = Vertex(name = 'V_4273', 
	 particles = [P.C2bar, P.d2, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5372,(0,1):C.GC_5373}) 
 
 
V_4274 = Vertex(name = 'V_4274', 
	 particles = [P.C2bar, P.d2, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5374,(0,1):C.GC_5375}) 
 
 
V_4275 = Vertex(name = 'V_4275', 
	 particles = [P.C2bar, P.d2, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5376,(0,1):C.GC_5377}) 
 
 
V_4276 = Vertex(name = 'V_4276', 
	 particles = [P.C2bar, P.d2, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5378,(0,1):C.GC_5379}) 
 
 
V_4277 = Vertex(name = 'V_4277', 
	 particles = [P.C2bar, P.d2, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5380,(0,1):C.GC_5381}) 
 
 
V_4278 = Vertex(name = 'V_4278', 
	 particles = [P.C2bar, P.d3, P.su1c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5382,(0,1):C.GC_5383}) 
 
 
V_4279 = Vertex(name = 'V_4279', 
	 particles = [P.C2bar, P.d3, P.su2c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5384,(0,1):C.GC_5385}) 
 
 
V_4280 = Vertex(name = 'V_4280', 
	 particles = [P.C2bar, P.d3, P.su3c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5386,(0,1):C.GC_5387}) 
 
 
V_4281 = Vertex(name = 'V_4281', 
	 particles = [P.C2bar, P.d3, P.su4c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5388,(0,1):C.GC_5389}) 
 
 
V_4282 = Vertex(name = 'V_4282', 
	 particles = [P.C2bar, P.d3, P.su5c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5390,(0,1):C.GC_5391}) 
 
 
V_4283 = Vertex(name = 'V_4283', 
	 particles = [P.C2bar, P.d3, P.su6c], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5392,(0,1):C.GC_5393}) 
 
 
V_4284 = Vertex(name = 'V_4284', 
	 particles = [P.u1bar, P.d1, P.Hm1c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5394,(0,1):C.GC_5395}) 
 
 
V_4285 = Vertex(name = 'V_4285', 
	 particles = [P.u1bar, P.d1, P.Hm2c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5396,(0,1):C.GC_5397}) 
 
 
V_4286 = Vertex(name = 'V_4286', 
	 particles = [P.u1bar, P.d2, P.Hm1c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5398,(0,1):C.GC_5399}) 
 
 
V_4287 = Vertex(name = 'V_4287', 
	 particles = [P.u1bar, P.d2, P.Hm2c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5400,(0,1):C.GC_5401}) 
 
 
V_4288 = Vertex(name = 'V_4288', 
	 particles = [P.u1bar, P.d3, P.Hm1c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5402,(0,1):C.GC_5403}) 
 
 
V_4289 = Vertex(name = 'V_4289', 
	 particles = [P.u1bar, P.d3, P.Hm2c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5404,(0,1):C.GC_5405}) 
 
 
V_4290 = Vertex(name = 'V_4290', 
	 particles = [P.u2bar, P.d1, P.Hm1c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5406,(0,1):C.GC_5407}) 
 
 
V_4291 = Vertex(name = 'V_4291', 
	 particles = [P.u2bar, P.d1, P.Hm2c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5408,(0,1):C.GC_5409}) 
 
 
V_4292 = Vertex(name = 'V_4292', 
	 particles = [P.u2bar, P.d2, P.Hm1c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5410,(0,1):C.GC_5411}) 
 
 
V_4293 = Vertex(name = 'V_4293', 
	 particles = [P.u2bar, P.d2, P.Hm2c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5412,(0,1):C.GC_5413}) 
 
 
V_4294 = Vertex(name = 'V_4294', 
	 particles = [P.u2bar, P.d3, P.Hm1c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5414,(0,1):C.GC_5415}) 
 
 
V_4295 = Vertex(name = 'V_4295', 
	 particles = [P.u2bar, P.d3, P.Hm2c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5416,(0,1):C.GC_5417}) 
 
 
V_4296 = Vertex(name = 'V_4296', 
	 particles = [P.u3bar, P.d1, P.Hm1c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5418,(0,1):C.GC_5419}) 
 
 
V_4297 = Vertex(name = 'V_4297', 
	 particles = [P.u3bar, P.d1, P.Hm2c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5420,(0,1):C.GC_5421}) 
 
 
V_4298 = Vertex(name = 'V_4298', 
	 particles = [P.u3bar, P.d2, P.Hm1c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5422,(0,1):C.GC_5423}) 
 
 
V_4299 = Vertex(name = 'V_4299', 
	 particles = [P.u3bar, P.d2, P.Hm2c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5424,(0,1):C.GC_5425}) 
 
 
V_4300 = Vertex(name = 'V_4300', 
	 particles = [P.u3bar, P.d3, P.Hm1c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5426,(0,1):C.GC_5427}) 
 
 
V_4301 = Vertex(name = 'V_4301', 
	 particles = [P.u3bar, P.d3, P.Hm2c], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5428,(0,1):C.GC_5429}) 
 
 
V_4302 = Vertex(name = 'V_4302', 
	 particles = [P.e1bar, P.e1, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5430,(0,1):C.GC_5431}) 
 
 
V_4303 = Vertex(name = 'V_4303', 
	 particles = [P.e1bar, P.e1, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5432,(0,1):C.GC_5433}) 
 
 
V_4304 = Vertex(name = 'V_4304', 
	 particles = [P.e1bar, P.e1, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5434,(0,1):C.GC_5435}) 
 
 
V_4305 = Vertex(name = 'V_4305', 
	 particles = [P.e1bar, P.e2, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5436,(0,1):C.GC_5437}) 
 
 
V_4306 = Vertex(name = 'V_4306', 
	 particles = [P.e1bar, P.e2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5438,(0,1):C.GC_5439}) 
 
 
V_4307 = Vertex(name = 'V_4307', 
	 particles = [P.e1bar, P.e2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5440,(0,1):C.GC_5441}) 
 
 
V_4308 = Vertex(name = 'V_4308', 
	 particles = [P.e1bar, P.e3, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5442,(0,1):C.GC_5443}) 
 
 
V_4309 = Vertex(name = 'V_4309', 
	 particles = [P.e1bar, P.e3, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5444,(0,1):C.GC_5445}) 
 
 
V_4310 = Vertex(name = 'V_4310', 
	 particles = [P.e1bar, P.e3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5446,(0,1):C.GC_5447}) 
 
 
V_4311 = Vertex(name = 'V_4311', 
	 particles = [P.e2bar, P.e1, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5448,(0,1):C.GC_5449}) 
 
 
V_4312 = Vertex(name = 'V_4312', 
	 particles = [P.e2bar, P.e1, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5450,(0,1):C.GC_5451}) 
 
 
V_4313 = Vertex(name = 'V_4313', 
	 particles = [P.e2bar, P.e1, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5452,(0,1):C.GC_5453}) 
 
 
V_4314 = Vertex(name = 'V_4314', 
	 particles = [P.e2bar, P.e2, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5454,(0,1):C.GC_5455}) 
 
 
V_4315 = Vertex(name = 'V_4315', 
	 particles = [P.e2bar, P.e2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5456,(0,1):C.GC_5457}) 
 
 
V_4316 = Vertex(name = 'V_4316', 
	 particles = [P.e2bar, P.e2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5458,(0,1):C.GC_5459}) 
 
 
V_4317 = Vertex(name = 'V_4317', 
	 particles = [P.e2bar, P.e3, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5460,(0,1):C.GC_5461}) 
 
 
V_4318 = Vertex(name = 'V_4318', 
	 particles = [P.e2bar, P.e3, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5462,(0,1):C.GC_5463}) 
 
 
V_4319 = Vertex(name = 'V_4319', 
	 particles = [P.e2bar, P.e3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5464,(0,1):C.GC_5465}) 
 
 
V_4320 = Vertex(name = 'V_4320', 
	 particles = [P.e3bar, P.e1, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5466,(0,1):C.GC_5467}) 
 
 
V_4321 = Vertex(name = 'V_4321', 
	 particles = [P.e3bar, P.e1, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5468,(0,1):C.GC_5469}) 
 
 
V_4322 = Vertex(name = 'V_4322', 
	 particles = [P.e3bar, P.e1, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5470,(0,1):C.GC_5471}) 
 
 
V_4323 = Vertex(name = 'V_4323', 
	 particles = [P.e3bar, P.e2, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5472,(0,1):C.GC_5473}) 
 
 
V_4324 = Vertex(name = 'V_4324', 
	 particles = [P.e3bar, P.e2, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5474,(0,1):C.GC_5475}) 
 
 
V_4325 = Vertex(name = 'V_4325', 
	 particles = [P.e3bar, P.e2, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5476,(0,1):C.GC_5477}) 
 
 
V_4326 = Vertex(name = 'V_4326', 
	 particles = [P.e3bar, P.e3, P.h1], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5478,(0,1):C.GC_5479}) 
 
 
V_4327 = Vertex(name = 'V_4327', 
	 particles = [P.e3bar, P.e3, P.h2], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5480,(0,1):C.GC_5481}) 
 
 
V_4328 = Vertex(name = 'V_4328', 
	 particles = [P.e3bar, P.e3, P.h3], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5482,(0,1):C.GC_5483}) 
 
 
V_4329 = Vertex(name = 'V_4329', 
	 particles = [P.C1bar, P.e1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5484,(0,1):C.GC_5485}) 
 
 
V_4330 = Vertex(name = 'V_4330', 
	 particles = [P.C1bar, P.e1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5486,(0,1):C.GC_5487}) 
 
 
V_4331 = Vertex(name = 'V_4331', 
	 particles = [P.C1bar, P.e1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5488,(0,1):C.GC_5489}) 
 
 
V_4332 = Vertex(name = 'V_4332', 
	 particles = [P.C1bar, P.e2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5490,(0,1):C.GC_5491}) 
 
 
V_4333 = Vertex(name = 'V_4333', 
	 particles = [P.C1bar, P.e2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5492,(0,1):C.GC_5493}) 
 
 
V_4334 = Vertex(name = 'V_4334', 
	 particles = [P.C1bar, P.e2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5494,(0,1):C.GC_5495}) 
 
 
V_4335 = Vertex(name = 'V_4335', 
	 particles = [P.C1bar, P.e3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5496,(0,1):C.GC_5497}) 
 
 
V_4336 = Vertex(name = 'V_4336', 
	 particles = [P.C1bar, P.e3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5498,(0,1):C.GC_5499}) 
 
 
V_4337 = Vertex(name = 'V_4337', 
	 particles = [P.C1bar, P.e3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5500,(0,1):C.GC_5501}) 
 
 
V_4338 = Vertex(name = 'V_4338', 
	 particles = [P.C2bar, P.e1, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5502,(0,1):C.GC_5503}) 
 
 
V_4339 = Vertex(name = 'V_4339', 
	 particles = [P.C2bar, P.e1, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5504,(0,1):C.GC_5505}) 
 
 
V_4340 = Vertex(name = 'V_4340', 
	 particles = [P.C2bar, P.e1, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5506,(0,1):C.GC_5507}) 
 
 
V_4341 = Vertex(name = 'V_4341', 
	 particles = [P.C2bar, P.e2, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5508,(0,1):C.GC_5509}) 
 
 
V_4342 = Vertex(name = 'V_4342', 
	 particles = [P.C2bar, P.e2, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5510,(0,1):C.GC_5511}) 
 
 
V_4343 = Vertex(name = 'V_4343', 
	 particles = [P.C2bar, P.e2, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5512,(0,1):C.GC_5513}) 
 
 
V_4344 = Vertex(name = 'V_4344', 
	 particles = [P.C2bar, P.e3, P.sv1c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5514,(0,1):C.GC_5515}) 
 
 
V_4345 = Vertex(name = 'V_4345', 
	 particles = [P.C2bar, P.e3, P.sv2c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5516,(0,1):C.GC_5517}) 
 
 
V_4346 = Vertex(name = 'V_4346', 
	 particles = [P.C2bar, P.e3, P.sv3c], 
	 color = ['1'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5518,(0,1):C.GC_5519}) 
 
 
V_4347 = Vertex(name = 'V_4347', 
	 particles = [P.nu1bar, P.e1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5520}) 
 
 
V_4348 = Vertex(name = 'V_4348', 
	 particles = [P.nu1bar, P.e1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5521}) 
 
 
V_4349 = Vertex(name = 'V_4349', 
	 particles = [P.nu1bar, P.e2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5522}) 
 
 
V_4350 = Vertex(name = 'V_4350', 
	 particles = [P.nu1bar, P.e2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5523}) 
 
 
V_4351 = Vertex(name = 'V_4351', 
	 particles = [P.nu1bar, P.e3, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5524}) 
 
 
V_4352 = Vertex(name = 'V_4352', 
	 particles = [P.nu1bar, P.e3, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5525}) 
 
 
V_4353 = Vertex(name = 'V_4353', 
	 particles = [P.nu2bar, P.e1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5526}) 
 
 
V_4354 = Vertex(name = 'V_4354', 
	 particles = [P.nu2bar, P.e1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5527}) 
 
 
V_4355 = Vertex(name = 'V_4355', 
	 particles = [P.nu2bar, P.e2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5528}) 
 
 
V_4356 = Vertex(name = 'V_4356', 
	 particles = [P.nu2bar, P.e2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5529}) 
 
 
V_4357 = Vertex(name = 'V_4357', 
	 particles = [P.nu2bar, P.e3, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5530}) 
 
 
V_4358 = Vertex(name = 'V_4358', 
	 particles = [P.nu2bar, P.e3, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5531}) 
 
 
V_4359 = Vertex(name = 'V_4359', 
	 particles = [P.nu3bar, P.e1, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5532}) 
 
 
V_4360 = Vertex(name = 'V_4360', 
	 particles = [P.nu3bar, P.e1, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5533}) 
 
 
V_4361 = Vertex(name = 'V_4361', 
	 particles = [P.nu3bar, P.e2, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5534}) 
 
 
V_4362 = Vertex(name = 'V_4362', 
	 particles = [P.nu3bar, P.e2, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5535}) 
 
 
V_4363 = Vertex(name = 'V_4363', 
	 particles = [P.nu3bar, P.e3, P.Hm1c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5536}) 
 
 
V_4364 = Vertex(name = 'V_4364', 
	 particles = [P.nu3bar, P.e3, P.Hm2c], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5537}) 
 
 
V_4365 = Vertex(name = 'V_4365', 
	 particles = [P.go, P.u1, P.su1c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5538,(0,1):C.GC_5539}) 
 
 
V_4366 = Vertex(name = 'V_4366', 
	 particles = [P.go, P.u1, P.su2c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5540,(0,1):C.GC_5541}) 
 
 
V_4367 = Vertex(name = 'V_4367', 
	 particles = [P.go, P.u1, P.su3c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5542,(0,1):C.GC_5543}) 
 
 
V_4368 = Vertex(name = 'V_4368', 
	 particles = [P.go, P.u1, P.su4c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5544,(0,1):C.GC_5545}) 
 
 
V_4369 = Vertex(name = 'V_4369', 
	 particles = [P.go, P.u1, P.su5c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5546,(0,1):C.GC_5547}) 
 
 
V_4370 = Vertex(name = 'V_4370', 
	 particles = [P.go, P.u1, P.su6c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5548,(0,1):C.GC_5549}) 
 
 
V_4371 = Vertex(name = 'V_4371', 
	 particles = [P.go, P.u2, P.su1c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5550,(0,1):C.GC_5551}) 
 
 
V_4372 = Vertex(name = 'V_4372', 
	 particles = [P.go, P.u2, P.su2c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5552,(0,1):C.GC_5553}) 
 
 
V_4373 = Vertex(name = 'V_4373', 
	 particles = [P.go, P.u2, P.su3c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5554,(0,1):C.GC_5555}) 
 
 
V_4374 = Vertex(name = 'V_4374', 
	 particles = [P.go, P.u2, P.su4c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5556,(0,1):C.GC_5557}) 
 
 
V_4375 = Vertex(name = 'V_4375', 
	 particles = [P.go, P.u2, P.su5c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5558,(0,1):C.GC_5559}) 
 
 
V_4376 = Vertex(name = 'V_4376', 
	 particles = [P.go, P.u2, P.su6c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5560,(0,1):C.GC_5561}) 
 
 
V_4377 = Vertex(name = 'V_4377', 
	 particles = [P.go, P.u3, P.su1c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5562,(0,1):C.GC_5563}) 
 
 
V_4378 = Vertex(name = 'V_4378', 
	 particles = [P.go, P.u3, P.su2c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5564,(0,1):C.GC_5565}) 
 
 
V_4379 = Vertex(name = 'V_4379', 
	 particles = [P.go, P.u3, P.su3c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5566,(0,1):C.GC_5567}) 
 
 
V_4380 = Vertex(name = 'V_4380', 
	 particles = [P.go, P.u3, P.su4c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5568,(0,1):C.GC_5569}) 
 
 
V_4381 = Vertex(name = 'V_4381', 
	 particles = [P.go, P.u3, P.su5c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5570,(0,1):C.GC_5571}) 
 
 
V_4382 = Vertex(name = 'V_4382', 
	 particles = [P.go, P.u3, P.su6c], 
	 color = ['T(1,2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5572,(0,1):C.GC_5573}) 
 
 
V_4383 = Vertex(name = 'V_4383', 
	 particles = [P.u1bar, P.u1, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5574,(0,1):C.GC_5575}) 
 
 
V_4384 = Vertex(name = 'V_4384', 
	 particles = [P.u1bar, P.u1, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5576,(0,1):C.GC_5577}) 
 
 
V_4385 = Vertex(name = 'V_4385', 
	 particles = [P.u1bar, P.u1, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5578,(0,1):C.GC_5579}) 
 
 
V_4386 = Vertex(name = 'V_4386', 
	 particles = [P.u1bar, P.u2, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5580,(0,1):C.GC_5581}) 
 
 
V_4387 = Vertex(name = 'V_4387', 
	 particles = [P.u1bar, P.u2, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5582,(0,1):C.GC_5583}) 
 
 
V_4388 = Vertex(name = 'V_4388', 
	 particles = [P.u1bar, P.u2, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5584,(0,1):C.GC_5585}) 
 
 
V_4389 = Vertex(name = 'V_4389', 
	 particles = [P.u1bar, P.u3, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5586,(0,1):C.GC_5587}) 
 
 
V_4390 = Vertex(name = 'V_4390', 
	 particles = [P.u1bar, P.u3, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5588,(0,1):C.GC_5589}) 
 
 
V_4391 = Vertex(name = 'V_4391', 
	 particles = [P.u1bar, P.u3, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5590,(0,1):C.GC_5591}) 
 
 
V_4392 = Vertex(name = 'V_4392', 
	 particles = [P.u2bar, P.u1, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5592,(0,1):C.GC_5593}) 
 
 
V_4393 = Vertex(name = 'V_4393', 
	 particles = [P.u2bar, P.u1, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5594,(0,1):C.GC_5595}) 
 
 
V_4394 = Vertex(name = 'V_4394', 
	 particles = [P.u2bar, P.u1, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5596,(0,1):C.GC_5597}) 
 
 
V_4395 = Vertex(name = 'V_4395', 
	 particles = [P.u2bar, P.u2, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5598,(0,1):C.GC_5599}) 
 
 
V_4396 = Vertex(name = 'V_4396', 
	 particles = [P.u2bar, P.u2, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5600,(0,1):C.GC_5601}) 
 
 
V_4397 = Vertex(name = 'V_4397', 
	 particles = [P.u2bar, P.u2, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5602,(0,1):C.GC_5603}) 
 
 
V_4398 = Vertex(name = 'V_4398', 
	 particles = [P.u2bar, P.u3, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5604,(0,1):C.GC_5605}) 
 
 
V_4399 = Vertex(name = 'V_4399', 
	 particles = [P.u2bar, P.u3, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5606,(0,1):C.GC_5607}) 
 
 
V_4400 = Vertex(name = 'V_4400', 
	 particles = [P.u2bar, P.u3, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5608,(0,1):C.GC_5609}) 
 
 
V_4401 = Vertex(name = 'V_4401', 
	 particles = [P.u3bar, P.u1, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5610,(0,1):C.GC_5611}) 
 
 
V_4402 = Vertex(name = 'V_4402', 
	 particles = [P.u3bar, P.u1, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5612,(0,1):C.GC_5613}) 
 
 
V_4403 = Vertex(name = 'V_4403', 
	 particles = [P.u3bar, P.u1, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5614,(0,1):C.GC_5615}) 
 
 
V_4404 = Vertex(name = 'V_4404', 
	 particles = [P.u3bar, P.u2, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5616,(0,1):C.GC_5617}) 
 
 
V_4405 = Vertex(name = 'V_4405', 
	 particles = [P.u3bar, P.u2, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5618,(0,1):C.GC_5619}) 
 
 
V_4406 = Vertex(name = 'V_4406', 
	 particles = [P.u3bar, P.u2, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5620,(0,1):C.GC_5621}) 
 
 
V_4407 = Vertex(name = 'V_4407', 
	 particles = [P.u3bar, P.u3, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5622,(0,1):C.GC_5623}) 
 
 
V_4408 = Vertex(name = 'V_4408', 
	 particles = [P.u3bar, P.u3, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5624,(0,1):C.GC_5625}) 
 
 
V_4409 = Vertex(name = 'V_4409', 
	 particles = [P.u3bar, P.u3, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5626,(0,1):C.GC_5627}) 
 
 
V_4410 = Vertex(name = 'V_4410', 
	 particles = [P.d1bar, P.u1, P.Hm1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5628,(0,1):C.GC_5629}) 
 
 
V_4411 = Vertex(name = 'V_4411', 
	 particles = [P.d1bar, P.u1, P.Hm2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5630,(0,1):C.GC_5631}) 
 
 
V_4412 = Vertex(name = 'V_4412', 
	 particles = [P.d1bar, P.u2, P.Hm1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5632,(0,1):C.GC_5633}) 
 
 
V_4413 = Vertex(name = 'V_4413', 
	 particles = [P.d1bar, P.u2, P.Hm2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5634,(0,1):C.GC_5635}) 
 
 
V_4414 = Vertex(name = 'V_4414', 
	 particles = [P.d1bar, P.u3, P.Hm1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5636,(0,1):C.GC_5637}) 
 
 
V_4415 = Vertex(name = 'V_4415', 
	 particles = [P.d1bar, P.u3, P.Hm2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5638,(0,1):C.GC_5639}) 
 
 
V_4416 = Vertex(name = 'V_4416', 
	 particles = [P.d2bar, P.u1, P.Hm1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5640,(0,1):C.GC_5641}) 
 
 
V_4417 = Vertex(name = 'V_4417', 
	 particles = [P.d2bar, P.u1, P.Hm2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5642,(0,1):C.GC_5643}) 
 
 
V_4418 = Vertex(name = 'V_4418', 
	 particles = [P.d2bar, P.u2, P.Hm1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5644,(0,1):C.GC_5645}) 
 
 
V_4419 = Vertex(name = 'V_4419', 
	 particles = [P.d2bar, P.u2, P.Hm2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5646,(0,1):C.GC_5647}) 
 
 
V_4420 = Vertex(name = 'V_4420', 
	 particles = [P.d2bar, P.u3, P.Hm1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5648,(0,1):C.GC_5649}) 
 
 
V_4421 = Vertex(name = 'V_4421', 
	 particles = [P.d2bar, P.u3, P.Hm2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5650,(0,1):C.GC_5651}) 
 
 
V_4422 = Vertex(name = 'V_4422', 
	 particles = [P.d3bar, P.u1, P.Hm1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5652,(0,1):C.GC_5653}) 
 
 
V_4423 = Vertex(name = 'V_4423', 
	 particles = [P.d3bar, P.u1, P.Hm2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5654,(0,1):C.GC_5655}) 
 
 
V_4424 = Vertex(name = 'V_4424', 
	 particles = [P.d3bar, P.u2, P.Hm1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5656,(0,1):C.GC_5657}) 
 
 
V_4425 = Vertex(name = 'V_4425', 
	 particles = [P.d3bar, P.u2, P.Hm2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5658,(0,1):C.GC_5659}) 
 
 
V_4426 = Vertex(name = 'V_4426', 
	 particles = [P.d3bar, P.u3, P.Hm1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5660,(0,1):C.GC_5661}) 
 
 
V_4427 = Vertex(name = 'V_4427', 
	 particles = [P.d3bar, P.u3, P.Hm2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5662,(0,1):C.GC_5663}) 
 
 
V_4428 = Vertex(name = 'V_4428', 
	 particles = [P.e1bar, P.nu1, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5664}) 
 
 
V_4429 = Vertex(name = 'V_4429', 
	 particles = [P.e1bar, P.nu1, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5665}) 
 
 
V_4430 = Vertex(name = 'V_4430', 
	 particles = [P.e1bar, P.nu2, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5666}) 
 
 
V_4431 = Vertex(name = 'V_4431', 
	 particles = [P.e1bar, P.nu2, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5667}) 
 
 
V_4432 = Vertex(name = 'V_4432', 
	 particles = [P.e1bar, P.nu3, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5668}) 
 
 
V_4433 = Vertex(name = 'V_4433', 
	 particles = [P.e1bar, P.nu3, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5669}) 
 
 
V_4434 = Vertex(name = 'V_4434', 
	 particles = [P.e2bar, P.nu1, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5670}) 
 
 
V_4435 = Vertex(name = 'V_4435', 
	 particles = [P.e2bar, P.nu1, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5671}) 
 
 
V_4436 = Vertex(name = 'V_4436', 
	 particles = [P.e2bar, P.nu2, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5672}) 
 
 
V_4437 = Vertex(name = 'V_4437', 
	 particles = [P.e2bar, P.nu2, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5673}) 
 
 
V_4438 = Vertex(name = 'V_4438', 
	 particles = [P.e2bar, P.nu3, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5674}) 
 
 
V_4439 = Vertex(name = 'V_4439', 
	 particles = [P.e2bar, P.nu3, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5675}) 
 
 
V_4440 = Vertex(name = 'V_4440', 
	 particles = [P.e3bar, P.nu1, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5676}) 
 
 
V_4441 = Vertex(name = 'V_4441', 
	 particles = [P.e3bar, P.nu1, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5677}) 
 
 
V_4442 = Vertex(name = 'V_4442', 
	 particles = [P.e3bar, P.nu2, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5678}) 
 
 
V_4443 = Vertex(name = 'V_4443', 
	 particles = [P.e3bar, P.nu2, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5679}) 
 
 
V_4444 = Vertex(name = 'V_4444', 
	 particles = [P.e3bar, P.nu3, P.Hm1], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5680}) 
 
 
V_4445 = Vertex(name = 'V_4445', 
	 particles = [P.e3bar, P.nu3, P.Hm2], 
	 color = ['1'], 
	 lorentz = [L.FFS1], 
	 couplings = {(0,0):C.GC_5681}) 
 
 
V_4446 = Vertex(name = 'V_4446', 
	 particles = [P.d1bar, P.go, P.sd1], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5682,(0,1):C.GC_5683}) 
 
 
V_4447 = Vertex(name = 'V_4447', 
	 particles = [P.d1bar, P.go, P.sd2], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5684,(0,1):C.GC_5685}) 
 
 
V_4448 = Vertex(name = 'V_4448', 
	 particles = [P.d1bar, P.go, P.sd3], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5686,(0,1):C.GC_5687}) 
 
 
V_4449 = Vertex(name = 'V_4449', 
	 particles = [P.d1bar, P.go, P.sd4], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5688,(0,1):C.GC_5689}) 
 
 
V_4450 = Vertex(name = 'V_4450', 
	 particles = [P.d1bar, P.go, P.sd5], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5690,(0,1):C.GC_5691}) 
 
 
V_4451 = Vertex(name = 'V_4451', 
	 particles = [P.d1bar, P.go, P.sd6], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5692,(0,1):C.GC_5693}) 
 
 
V_4452 = Vertex(name = 'V_4452', 
	 particles = [P.d2bar, P.go, P.sd1], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5694,(0,1):C.GC_5695}) 
 
 
V_4453 = Vertex(name = 'V_4453', 
	 particles = [P.d2bar, P.go, P.sd2], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5696,(0,1):C.GC_5697}) 
 
 
V_4454 = Vertex(name = 'V_4454', 
	 particles = [P.d2bar, P.go, P.sd3], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5698,(0,1):C.GC_5699}) 
 
 
V_4455 = Vertex(name = 'V_4455', 
	 particles = [P.d2bar, P.go, P.sd4], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5700,(0,1):C.GC_5701}) 
 
 
V_4456 = Vertex(name = 'V_4456', 
	 particles = [P.d2bar, P.go, P.sd5], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5702,(0,1):C.GC_5703}) 
 
 
V_4457 = Vertex(name = 'V_4457', 
	 particles = [P.d2bar, P.go, P.sd6], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5704,(0,1):C.GC_5705}) 
 
 
V_4458 = Vertex(name = 'V_4458', 
	 particles = [P.d3bar, P.go, P.sd1], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5706,(0,1):C.GC_5707}) 
 
 
V_4459 = Vertex(name = 'V_4459', 
	 particles = [P.d3bar, P.go, P.sd2], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5708,(0,1):C.GC_5709}) 
 
 
V_4460 = Vertex(name = 'V_4460', 
	 particles = [P.d3bar, P.go, P.sd3], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5710,(0,1):C.GC_5711}) 
 
 
V_4461 = Vertex(name = 'V_4461', 
	 particles = [P.d3bar, P.go, P.sd4], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5712,(0,1):C.GC_5713}) 
 
 
V_4462 = Vertex(name = 'V_4462', 
	 particles = [P.d3bar, P.go, P.sd5], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5714,(0,1):C.GC_5715}) 
 
 
V_4463 = Vertex(name = 'V_4463', 
	 particles = [P.d3bar, P.go, P.sd6], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5716,(0,1):C.GC_5717}) 
 
 
V_4464 = Vertex(name = 'V_4464', 
	 particles = [P.u1bar, P.go, P.su1], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5718,(0,1):C.GC_5719}) 
 
 
V_4465 = Vertex(name = 'V_4465', 
	 particles = [P.u1bar, P.go, P.su2], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5720,(0,1):C.GC_5721}) 
 
 
V_4466 = Vertex(name = 'V_4466', 
	 particles = [P.u1bar, P.go, P.su3], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5722,(0,1):C.GC_5723}) 
 
 
V_4467 = Vertex(name = 'V_4467', 
	 particles = [P.u1bar, P.go, P.su4], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5724,(0,1):C.GC_5725}) 
 
 
V_4468 = Vertex(name = 'V_4468', 
	 particles = [P.u1bar, P.go, P.su5], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5726,(0,1):C.GC_5727}) 
 
 
V_4469 = Vertex(name = 'V_4469', 
	 particles = [P.u1bar, P.go, P.su6], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5728,(0,1):C.GC_5729}) 
 
 
V_4470 = Vertex(name = 'V_4470', 
	 particles = [P.u2bar, P.go, P.su1], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5730,(0,1):C.GC_5731}) 
 
 
V_4471 = Vertex(name = 'V_4471', 
	 particles = [P.u2bar, P.go, P.su2], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5732,(0,1):C.GC_5733}) 
 
 
V_4472 = Vertex(name = 'V_4472', 
	 particles = [P.u2bar, P.go, P.su3], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5734,(0,1):C.GC_5735}) 
 
 
V_4473 = Vertex(name = 'V_4473', 
	 particles = [P.u2bar, P.go, P.su4], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5736,(0,1):C.GC_5737}) 
 
 
V_4474 = Vertex(name = 'V_4474', 
	 particles = [P.u2bar, P.go, P.su5], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5738,(0,1):C.GC_5739}) 
 
 
V_4475 = Vertex(name = 'V_4475', 
	 particles = [P.u2bar, P.go, P.su6], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5740,(0,1):C.GC_5741}) 
 
 
V_4476 = Vertex(name = 'V_4476', 
	 particles = [P.u3bar, P.go, P.su1], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5742,(0,1):C.GC_5743}) 
 
 
V_4477 = Vertex(name = 'V_4477', 
	 particles = [P.u3bar, P.go, P.su2], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5744,(0,1):C.GC_5745}) 
 
 
V_4478 = Vertex(name = 'V_4478', 
	 particles = [P.u3bar, P.go, P.su3], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5746,(0,1):C.GC_5747}) 
 
 
V_4479 = Vertex(name = 'V_4479', 
	 particles = [P.u3bar, P.go, P.su4], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5748,(0,1):C.GC_5749}) 
 
 
V_4480 = Vertex(name = 'V_4480', 
	 particles = [P.u3bar, P.go, P.su5], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5750,(0,1):C.GC_5751}) 
 
 
V_4481 = Vertex(name = 'V_4481', 
	 particles = [P.u3bar, P.go, P.su6], 
	 color = ['T(2,3,1)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5752,(0,1):C.GC_5753}) 
 
 
V_4482 = Vertex(name = 'V_4482', 
	 particles = [P.C1bar, P.u1bar, P.sd1], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5754,(0,1):C.GC_5755}) 
 
 
V_4483 = Vertex(name = 'V_4483', 
	 particles = [P.C1bar, P.u1bar, P.sd2], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5756,(0,1):C.GC_5757}) 
 
 
V_4484 = Vertex(name = 'V_4484', 
	 particles = [P.C1bar, P.u1bar, P.sd3], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5758,(0,1):C.GC_5759}) 
 
 
V_4485 = Vertex(name = 'V_4485', 
	 particles = [P.C1bar, P.u1bar, P.sd4], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5760,(0,1):C.GC_5761}) 
 
 
V_4486 = Vertex(name = 'V_4486', 
	 particles = [P.C1bar, P.u1bar, P.sd5], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5762,(0,1):C.GC_5763}) 
 
 
V_4487 = Vertex(name = 'V_4487', 
	 particles = [P.C1bar, P.u1bar, P.sd6], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5764,(0,1):C.GC_5765}) 
 
 
V_4488 = Vertex(name = 'V_4488', 
	 particles = [P.C1bar, P.u2bar, P.sd1], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5766,(0,1):C.GC_5767}) 
 
 
V_4489 = Vertex(name = 'V_4489', 
	 particles = [P.C1bar, P.u2bar, P.sd2], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5768,(0,1):C.GC_5769}) 
 
 
V_4490 = Vertex(name = 'V_4490', 
	 particles = [P.C1bar, P.u2bar, P.sd3], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5770,(0,1):C.GC_5771}) 
 
 
V_4491 = Vertex(name = 'V_4491', 
	 particles = [P.C1bar, P.u2bar, P.sd4], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5772,(0,1):C.GC_5773}) 
 
 
V_4492 = Vertex(name = 'V_4492', 
	 particles = [P.C1bar, P.u2bar, P.sd5], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5774,(0,1):C.GC_5775}) 
 
 
V_4493 = Vertex(name = 'V_4493', 
	 particles = [P.C1bar, P.u2bar, P.sd6], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5776,(0,1):C.GC_5777}) 
 
 
V_4494 = Vertex(name = 'V_4494', 
	 particles = [P.C1bar, P.u3bar, P.sd1], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5778,(0,1):C.GC_5779}) 
 
 
V_4495 = Vertex(name = 'V_4495', 
	 particles = [P.C1bar, P.u3bar, P.sd2], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5780,(0,1):C.GC_5781}) 
 
 
V_4496 = Vertex(name = 'V_4496', 
	 particles = [P.C1bar, P.u3bar, P.sd3], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5782,(0,1):C.GC_5783}) 
 
 
V_4497 = Vertex(name = 'V_4497', 
	 particles = [P.C1bar, P.u3bar, P.sd4], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5784,(0,1):C.GC_5785}) 
 
 
V_4498 = Vertex(name = 'V_4498', 
	 particles = [P.C1bar, P.u3bar, P.sd5], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5786,(0,1):C.GC_5787}) 
 
 
V_4499 = Vertex(name = 'V_4499', 
	 particles = [P.C1bar, P.u3bar, P.sd6], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5788,(0,1):C.GC_5789}) 
 
 
V_4500 = Vertex(name = 'V_4500', 
	 particles = [P.C2bar, P.u1bar, P.sd1], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5790,(0,1):C.GC_5791}) 
 
 
V_4501 = Vertex(name = 'V_4501', 
	 particles = [P.C2bar, P.u1bar, P.sd2], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5792,(0,1):C.GC_5793}) 
 
 
V_4502 = Vertex(name = 'V_4502', 
	 particles = [P.C2bar, P.u1bar, P.sd3], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5794,(0,1):C.GC_5795}) 
 
 
V_4503 = Vertex(name = 'V_4503', 
	 particles = [P.C2bar, P.u1bar, P.sd4], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5796,(0,1):C.GC_5797}) 
 
 
V_4504 = Vertex(name = 'V_4504', 
	 particles = [P.C2bar, P.u1bar, P.sd5], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5798,(0,1):C.GC_5799}) 
 
 
V_4505 = Vertex(name = 'V_4505', 
	 particles = [P.C2bar, P.u1bar, P.sd6], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5800,(0,1):C.GC_5801}) 
 
 
V_4506 = Vertex(name = 'V_4506', 
	 particles = [P.C2bar, P.u2bar, P.sd1], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5802,(0,1):C.GC_5803}) 
 
 
V_4507 = Vertex(name = 'V_4507', 
	 particles = [P.C2bar, P.u2bar, P.sd2], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5804,(0,1):C.GC_5805}) 
 
 
V_4508 = Vertex(name = 'V_4508', 
	 particles = [P.C2bar, P.u2bar, P.sd3], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5806,(0,1):C.GC_5807}) 
 
 
V_4509 = Vertex(name = 'V_4509', 
	 particles = [P.C2bar, P.u2bar, P.sd4], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5808,(0,1):C.GC_5809}) 
 
 
V_4510 = Vertex(name = 'V_4510', 
	 particles = [P.C2bar, P.u2bar, P.sd5], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5810,(0,1):C.GC_5811}) 
 
 
V_4511 = Vertex(name = 'V_4511', 
	 particles = [P.C2bar, P.u2bar, P.sd6], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5812,(0,1):C.GC_5813}) 
 
 
V_4512 = Vertex(name = 'V_4512', 
	 particles = [P.C2bar, P.u3bar, P.sd1], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5814,(0,1):C.GC_5815}) 
 
 
V_4513 = Vertex(name = 'V_4513', 
	 particles = [P.C2bar, P.u3bar, P.sd2], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5816,(0,1):C.GC_5817}) 
 
 
V_4514 = Vertex(name = 'V_4514', 
	 particles = [P.C2bar, P.u3bar, P.sd3], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5818,(0,1):C.GC_5819}) 
 
 
V_4515 = Vertex(name = 'V_4515', 
	 particles = [P.C2bar, P.u3bar, P.sd4], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5820,(0,1):C.GC_5821}) 
 
 
V_4516 = Vertex(name = 'V_4516', 
	 particles = [P.C2bar, P.u3bar, P.sd5], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5822,(0,1):C.GC_5823}) 
 
 
V_4517 = Vertex(name = 'V_4517', 
	 particles = [P.C2bar, P.u3bar, P.sd6], 
	 color = ['Identity(2,3)'], 
	 lorentz = [L.FFS1,L.FFS2], 
	 couplings = {(0,0):C.GC_5824,(0,1):C.GC_5825}) 
 
 
V_4518 = Vertex(name = 'V_4518', 
	 particles = [P.C1bar, P.nu1bar, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5826}) 
 
 
V_4519 = Vertex(name = 'V_4519', 
	 particles = [P.C1bar, P.nu1bar, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5827}) 
 
 
V_4520 = Vertex(name = 'V_4520', 
	 particles = [P.C1bar, P.nu1bar, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5828}) 
 
 
V_4521 = Vertex(name = 'V_4521', 
	 particles = [P.C1bar, P.nu1bar, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5829}) 
 
 
V_4522 = Vertex(name = 'V_4522', 
	 particles = [P.C1bar, P.nu1bar, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5830}) 
 
 
V_4523 = Vertex(name = 'V_4523', 
	 particles = [P.C1bar, P.nu1bar, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5831}) 
 
 
V_4524 = Vertex(name = 'V_4524', 
	 particles = [P.C1bar, P.nu2bar, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5832}) 
 
 
V_4525 = Vertex(name = 'V_4525', 
	 particles = [P.C1bar, P.nu2bar, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5833}) 
 
 
V_4526 = Vertex(name = 'V_4526', 
	 particles = [P.C1bar, P.nu2bar, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5834}) 
 
 
V_4527 = Vertex(name = 'V_4527', 
	 particles = [P.C1bar, P.nu2bar, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5835}) 
 
 
V_4528 = Vertex(name = 'V_4528', 
	 particles = [P.C1bar, P.nu2bar, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5836}) 
 
 
V_4529 = Vertex(name = 'V_4529', 
	 particles = [P.C1bar, P.nu2bar, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5837}) 
 
 
V_4530 = Vertex(name = 'V_4530', 
	 particles = [P.C1bar, P.nu3bar, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5838}) 
 
 
V_4531 = Vertex(name = 'V_4531', 
	 particles = [P.C1bar, P.nu3bar, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5839}) 
 
 
V_4532 = Vertex(name = 'V_4532', 
	 particles = [P.C1bar, P.nu3bar, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5840}) 
 
 
V_4533 = Vertex(name = 'V_4533', 
	 particles = [P.C1bar, P.nu3bar, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5841}) 
 
 
V_4534 = Vertex(name = 'V_4534', 
	 particles = [P.C1bar, P.nu3bar, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5842}) 
 
 
V_4535 = Vertex(name = 'V_4535', 
	 particles = [P.C1bar, P.nu3bar, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5843}) 
 
 
V_4536 = Vertex(name = 'V_4536', 
	 particles = [P.C2bar, P.nu1bar, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5844}) 
 
 
V_4537 = Vertex(name = 'V_4537', 
	 particles = [P.C2bar, P.nu1bar, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5845}) 
 
 
V_4538 = Vertex(name = 'V_4538', 
	 particles = [P.C2bar, P.nu1bar, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5846}) 
 
 
V_4539 = Vertex(name = 'V_4539', 
	 particles = [P.C2bar, P.nu1bar, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5847}) 
 
 
V_4540 = Vertex(name = 'V_4540', 
	 particles = [P.C2bar, P.nu1bar, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5848}) 
 
 
V_4541 = Vertex(name = 'V_4541', 
	 particles = [P.C2bar, P.nu1bar, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5849}) 
 
 
V_4542 = Vertex(name = 'V_4542', 
	 particles = [P.C2bar, P.nu2bar, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5850}) 
 
 
V_4543 = Vertex(name = 'V_4543', 
	 particles = [P.C2bar, P.nu2bar, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5851}) 
 
 
V_4544 = Vertex(name = 'V_4544', 
	 particles = [P.C2bar, P.nu2bar, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5852}) 
 
 
V_4545 = Vertex(name = 'V_4545', 
	 particles = [P.C2bar, P.nu2bar, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5853}) 
 
 
V_4546 = Vertex(name = 'V_4546', 
	 particles = [P.C2bar, P.nu2bar, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5854}) 
 
 
V_4547 = Vertex(name = 'V_4547', 
	 particles = [P.C2bar, P.nu2bar, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5855}) 
 
 
V_4548 = Vertex(name = 'V_4548', 
	 particles = [P.C2bar, P.nu3bar, P.se1], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5856}) 
 
 
V_4549 = Vertex(name = 'V_4549', 
	 particles = [P.C2bar, P.nu3bar, P.se2], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5857}) 
 
 
V_4550 = Vertex(name = 'V_4550', 
	 particles = [P.C2bar, P.nu3bar, P.se3], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5858}) 
 
 
V_4551 = Vertex(name = 'V_4551', 
	 particles = [P.C2bar, P.nu3bar, P.se4], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5859}) 
 
 
V_4552 = Vertex(name = 'V_4552', 
	 particles = [P.C2bar, P.nu3bar, P.se5], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5860}) 
 
 
V_4553 = Vertex(name = 'V_4553', 
	 particles = [P.C2bar, P.nu3bar, P.se6], 
	 color = ['1'], 
	 lorentz = [L.FFS2], 
	 couplings = {(0,0):C.GC_5861}) 
 
 
V_4554 = Vertex(name = 'V_4554', 
	 particles = [P.N1, P.C1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5862,(0,0):C.GC_5863}) 
 
 
V_4555 = Vertex(name = 'V_4555', 
	 particles = [P.N1, P.C2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5864,(0,0):C.GC_5865}) 
 
 
V_4556 = Vertex(name = 'V_4556', 
	 particles = [P.N2, P.C1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5866,(0,0):C.GC_5867}) 
 
 
V_4557 = Vertex(name = 'V_4557', 
	 particles = [P.N2, P.C2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5868,(0,0):C.GC_5869}) 
 
 
V_4558 = Vertex(name = 'V_4558', 
	 particles = [P.N3, P.C1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5870,(0,0):C.GC_5871}) 
 
 
V_4559 = Vertex(name = 'V_4559', 
	 particles = [P.N3, P.C2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5872,(0,0):C.GC_5873}) 
 
 
V_4560 = Vertex(name = 'V_4560', 
	 particles = [P.N4, P.C1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5874,(0,0):C.GC_5875}) 
 
 
V_4561 = Vertex(name = 'V_4561', 
	 particles = [P.N4, P.C2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5876,(0,0):C.GC_5877}) 
 
 
V_4562 = Vertex(name = 'V_4562', 
	 particles = [P.N5, P.C1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5878,(0,0):C.GC_5879}) 
 
 
V_4563 = Vertex(name = 'V_4563', 
	 particles = [P.N5, P.C2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5880,(0,0):C.GC_5881}) 
 
 
V_4564 = Vertex(name = 'V_4564', 
	 particles = [P.N6, P.C1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5882,(0,0):C.GC_5883}) 
 
 
V_4565 = Vertex(name = 'V_4565', 
	 particles = [P.N6, P.C2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5884,(0,0):C.GC_5885}) 
 
 
V_4566 = Vertex(name = 'V_4566', 
	 particles = [P.C1bar, P.C1, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5886,(0,0):C.GC_5887}) 
 
 
V_4567 = Vertex(name = 'V_4567', 
	 particles = [P.C1bar, P.C2, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5888,(0,0):C.GC_5889}) 
 
 
V_4568 = Vertex(name = 'V_4568', 
	 particles = [P.C2bar, P.C1, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5890,(0,0):C.GC_5891}) 
 
 
V_4569 = Vertex(name = 'V_4569', 
	 particles = [P.C2bar, P.C2, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5892,(0,0):C.GC_5893}) 
 
 
V_4570 = Vertex(name = 'V_4570', 
	 particles = [P.C1bar, P.C1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5894,(0,0):C.GC_5895}) 
 
 
V_4571 = Vertex(name = 'V_4571', 
	 particles = [P.C1bar, P.C2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5896,(0,0):C.GC_5897}) 
 
 
V_4572 = Vertex(name = 'V_4572', 
	 particles = [P.C2bar, P.C1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5898,(0,0):C.GC_5899}) 
 
 
V_4573 = Vertex(name = 'V_4573', 
	 particles = [P.C2bar, P.C2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5900,(0,0):C.GC_5901}) 
 
 
V_4574 = Vertex(name = 'V_4574', 
	 particles = [P.C1bar, P.C1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5902,(0,0):C.GC_5903}) 
 
 
V_4575 = Vertex(name = 'V_4575', 
	 particles = [P.C1bar, P.C2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5904,(0,0):C.GC_5905}) 
 
 
V_4576 = Vertex(name = 'V_4576', 
	 particles = [P.C2bar, P.C1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5906,(0,0):C.GC_5907}) 
 
 
V_4577 = Vertex(name = 'V_4577', 
	 particles = [P.C2bar, P.C2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5908,(0,0):C.GC_5909}) 
 
 
V_4578 = Vertex(name = 'V_4578', 
	 particles = [P.N1, P.N1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5910,(0,0):C.GC_5911}) 
 
 
V_4579 = Vertex(name = 'V_4579', 
	 particles = [P.N1, P.N2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5912,(0,0):C.GC_5913}) 
 
 
V_4580 = Vertex(name = 'V_4580', 
	 particles = [P.N1, P.N3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5914,(0,0):C.GC_5915}) 
 
 
V_4581 = Vertex(name = 'V_4581', 
	 particles = [P.N1, P.N4, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5916,(0,0):C.GC_5917}) 
 
 
V_4582 = Vertex(name = 'V_4582', 
	 particles = [P.N1, P.N5, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5918,(0,0):C.GC_5919}) 
 
 
V_4583 = Vertex(name = 'V_4583', 
	 particles = [P.N1, P.N6, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5920,(0,0):C.GC_5921}) 
 
 
V_4584 = Vertex(name = 'V_4584', 
	 particles = [P.N2, P.N2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5922,(0,0):C.GC_5923}) 
 
 
V_4585 = Vertex(name = 'V_4585', 
	 particles = [P.N2, P.N3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5924,(0,0):C.GC_5925}) 
 
 
V_4586 = Vertex(name = 'V_4586', 
	 particles = [P.N2, P.N4, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5926,(0,0):C.GC_5927}) 
 
 
V_4587 = Vertex(name = 'V_4587', 
	 particles = [P.N2, P.N5, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5928,(0,0):C.GC_5929}) 
 
 
V_4588 = Vertex(name = 'V_4588', 
	 particles = [P.N2, P.N6, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5930,(0,0):C.GC_5931}) 
 
 
V_4589 = Vertex(name = 'V_4589', 
	 particles = [P.N3, P.N3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5932,(0,0):C.GC_5933}) 
 
 
V_4590 = Vertex(name = 'V_4590', 
	 particles = [P.N3, P.N4, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5934,(0,0):C.GC_5935}) 
 
 
V_4591 = Vertex(name = 'V_4591', 
	 particles = [P.N3, P.N5, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5936,(0,0):C.GC_5937}) 
 
 
V_4592 = Vertex(name = 'V_4592', 
	 particles = [P.N3, P.N6, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5938,(0,0):C.GC_5939}) 
 
 
V_4593 = Vertex(name = 'V_4593', 
	 particles = [P.N4, P.N4, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5940,(0,0):C.GC_5941}) 
 
 
V_4594 = Vertex(name = 'V_4594', 
	 particles = [P.N4, P.N5, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5942,(0,0):C.GC_5943}) 
 
 
V_4595 = Vertex(name = 'V_4595', 
	 particles = [P.N4, P.N6, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5944,(0,0):C.GC_5945}) 
 
 
V_4596 = Vertex(name = 'V_4596', 
	 particles = [P.N5, P.N5, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5946,(0,0):C.GC_5947}) 
 
 
V_4597 = Vertex(name = 'V_4597', 
	 particles = [P.N5, P.N6, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5948,(0,0):C.GC_5949}) 
 
 
V_4598 = Vertex(name = 'V_4598', 
	 particles = [P.N6, P.N6, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5950,(0,0):C.GC_5951}) 
 
 
V_4599 = Vertex(name = 'V_4599', 
	 particles = [P.N1, P.N1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5952,(0,0):C.GC_5953}) 
 
 
V_4600 = Vertex(name = 'V_4600', 
	 particles = [P.N1, P.N2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5954,(0,0):C.GC_5955}) 
 
 
V_4601 = Vertex(name = 'V_4601', 
	 particles = [P.N1, P.N3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5956,(0,0):C.GC_5957}) 
 
 
V_4602 = Vertex(name = 'V_4602', 
	 particles = [P.N1, P.N4, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5958,(0,0):C.GC_5959}) 
 
 
V_4603 = Vertex(name = 'V_4603', 
	 particles = [P.N1, P.N5, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5960,(0,0):C.GC_5961}) 
 
 
V_4604 = Vertex(name = 'V_4604', 
	 particles = [P.N1, P.N6, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5962,(0,0):C.GC_5963}) 
 
 
V_4605 = Vertex(name = 'V_4605', 
	 particles = [P.N2, P.N2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5964,(0,0):C.GC_5965}) 
 
 
V_4606 = Vertex(name = 'V_4606', 
	 particles = [P.N2, P.N3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5966,(0,0):C.GC_5967}) 
 
 
V_4607 = Vertex(name = 'V_4607', 
	 particles = [P.N2, P.N4, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5968,(0,0):C.GC_5969}) 
 
 
V_4608 = Vertex(name = 'V_4608', 
	 particles = [P.N2, P.N5, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5970,(0,0):C.GC_5971}) 
 
 
V_4609 = Vertex(name = 'V_4609', 
	 particles = [P.N2, P.N6, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5972,(0,0):C.GC_5973}) 
 
 
V_4610 = Vertex(name = 'V_4610', 
	 particles = [P.N3, P.N3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5974,(0,0):C.GC_5975}) 
 
 
V_4611 = Vertex(name = 'V_4611', 
	 particles = [P.N3, P.N4, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5976,(0,0):C.GC_5977}) 
 
 
V_4612 = Vertex(name = 'V_4612', 
	 particles = [P.N3, P.N5, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5978,(0,0):C.GC_5979}) 
 
 
V_4613 = Vertex(name = 'V_4613', 
	 particles = [P.N3, P.N6, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5980,(0,0):C.GC_5981}) 
 
 
V_4614 = Vertex(name = 'V_4614', 
	 particles = [P.N4, P.N4, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5982,(0,0):C.GC_5983}) 
 
 
V_4615 = Vertex(name = 'V_4615', 
	 particles = [P.N4, P.N5, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5984,(0,0):C.GC_5985}) 
 
 
V_4616 = Vertex(name = 'V_4616', 
	 particles = [P.N4, P.N6, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5986,(0,0):C.GC_5987}) 
 
 
V_4617 = Vertex(name = 'V_4617', 
	 particles = [P.N5, P.N5, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5988,(0,0):C.GC_5989}) 
 
 
V_4618 = Vertex(name = 'V_4618', 
	 particles = [P.N5, P.N6, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5990,(0,0):C.GC_5991}) 
 
 
V_4619 = Vertex(name = 'V_4619', 
	 particles = [P.N6, P.N6, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5992,(0,0):C.GC_5993}) 
 
 
V_4620 = Vertex(name = 'V_4620', 
	 particles = [P.C1bar, P.N1, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5994,(0,0):C.GC_5995}) 
 
 
V_4621 = Vertex(name = 'V_4621', 
	 particles = [P.C1bar, P.N2, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5996,(0,0):C.GC_5997}) 
 
 
V_4622 = Vertex(name = 'V_4622', 
	 particles = [P.C1bar, P.N3, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_5998,(0,0):C.GC_5999}) 
 
 
V_4623 = Vertex(name = 'V_4623', 
	 particles = [P.C1bar, P.N4, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6000,(0,0):C.GC_6001}) 
 
 
V_4624 = Vertex(name = 'V_4624', 
	 particles = [P.C1bar, P.N5, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6002,(0,0):C.GC_6003}) 
 
 
V_4625 = Vertex(name = 'V_4625', 
	 particles = [P.C1bar, P.N6, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6004,(0,0):C.GC_6005}) 
 
 
V_4626 = Vertex(name = 'V_4626', 
	 particles = [P.C2bar, P.N1, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6006,(0,0):C.GC_6007}) 
 
 
V_4627 = Vertex(name = 'V_4627', 
	 particles = [P.C2bar, P.N2, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6008,(0,0):C.GC_6009}) 
 
 
V_4628 = Vertex(name = 'V_4628', 
	 particles = [P.C2bar, P.N3, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6010,(0,0):C.GC_6011}) 
 
 
V_4629 = Vertex(name = 'V_4629', 
	 particles = [P.C2bar, P.N4, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6012,(0,0):C.GC_6013}) 
 
 
V_4630 = Vertex(name = 'V_4630', 
	 particles = [P.C2bar, P.N5, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6014,(0,0):C.GC_6015}) 
 
 
V_4631 = Vertex(name = 'V_4631', 
	 particles = [P.C2bar, P.N6, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6016,(0,0):C.GC_6017}) 
 
 
V_4632 = Vertex(name = 'V_4632', 
	 particles = [P.d1bar, P.d1, P.g], 
	 color = ['T(3,2,1)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6018,(0,0):C.GC_6019}) 
 
 
V_4633 = Vertex(name = 'V_4633', 
	 particles = [P.d2bar, P.d2, P.g], 
	 color = ['T(3,2,1)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6020,(0,0):C.GC_6021}) 
 
 
V_4634 = Vertex(name = 'V_4634', 
	 particles = [P.d3bar, P.d3, P.g], 
	 color = ['T(3,2,1)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6022,(0,0):C.GC_6023}) 
 
 
V_4635 = Vertex(name = 'V_4635', 
	 particles = [P.d1bar, P.d1, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6024,(0,0):C.GC_6025}) 
 
 
V_4636 = Vertex(name = 'V_4636', 
	 particles = [P.d2bar, P.d2, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6026,(0,0):C.GC_6027}) 
 
 
V_4637 = Vertex(name = 'V_4637', 
	 particles = [P.d3bar, P.d3, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6028,(0,0):C.GC_6029}) 
 
 
V_4638 = Vertex(name = 'V_4638', 
	 particles = [P.d1bar, P.d1, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6030,(0,0):C.GC_6031}) 
 
 
V_4639 = Vertex(name = 'V_4639', 
	 particles = [P.d2bar, P.d2, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6032,(0,0):C.GC_6033}) 
 
 
V_4640 = Vertex(name = 'V_4640', 
	 particles = [P.d3bar, P.d3, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6034,(0,0):C.GC_6035}) 
 
 
V_4641 = Vertex(name = 'V_4641', 
	 particles = [P.d1bar, P.d1, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6036,(0,0):C.GC_6037}) 
 
 
V_4642 = Vertex(name = 'V_4642', 
	 particles = [P.d2bar, P.d2, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6038,(0,0):C.GC_6039}) 
 
 
V_4643 = Vertex(name = 'V_4643', 
	 particles = [P.d3bar, P.d3, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6040,(0,0):C.GC_6041}) 
 
 
V_4644 = Vertex(name = 'V_4644', 
	 particles = [P.u1bar, P.d1, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6042}) 
 
 
V_4645 = Vertex(name = 'V_4645', 
	 particles = [P.u1bar, P.d2, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6043}) 
 
 
V_4646 = Vertex(name = 'V_4646', 
	 particles = [P.u1bar, P.d3, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6044}) 
 
 
V_4647 = Vertex(name = 'V_4647', 
	 particles = [P.u2bar, P.d1, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6045}) 
 
 
V_4648 = Vertex(name = 'V_4648', 
	 particles = [P.u2bar, P.d2, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6046}) 
 
 
V_4649 = Vertex(name = 'V_4649', 
	 particles = [P.u2bar, P.d3, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6047}) 
 
 
V_4650 = Vertex(name = 'V_4650', 
	 particles = [P.u3bar, P.d1, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6048}) 
 
 
V_4651 = Vertex(name = 'V_4651', 
	 particles = [P.u3bar, P.d2, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6049}) 
 
 
V_4652 = Vertex(name = 'V_4652', 
	 particles = [P.u3bar, P.d3, P.Wmc], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6050}) 
 
 
V_4653 = Vertex(name = 'V_4653', 
	 particles = [P.e1bar, P.e1, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6051,(0,0):C.GC_6052}) 
 
 
V_4654 = Vertex(name = 'V_4654', 
	 particles = [P.e1bar, P.e2, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6053,(0,0):C.GC_6054}) 
 
 
V_4655 = Vertex(name = 'V_4655', 
	 particles = [P.e1bar, P.e3, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6055,(0,0):C.GC_6056}) 
 
 
V_4656 = Vertex(name = 'V_4656', 
	 particles = [P.e2bar, P.e1, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6057,(0,0):C.GC_6058}) 
 
 
V_4657 = Vertex(name = 'V_4657', 
	 particles = [P.e2bar, P.e2, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6059,(0,0):C.GC_6060}) 
 
 
V_4658 = Vertex(name = 'V_4658', 
	 particles = [P.e2bar, P.e3, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6061,(0,0):C.GC_6062}) 
 
 
V_4659 = Vertex(name = 'V_4659', 
	 particles = [P.e3bar, P.e1, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6063,(0,0):C.GC_6064}) 
 
 
V_4660 = Vertex(name = 'V_4660', 
	 particles = [P.e3bar, P.e2, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6065,(0,0):C.GC_6066}) 
 
 
V_4661 = Vertex(name = 'V_4661', 
	 particles = [P.e3bar, P.e3, P.A], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6067,(0,0):C.GC_6068}) 
 
 
V_4662 = Vertex(name = 'V_4662', 
	 particles = [P.e1bar, P.e1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6069,(0,0):C.GC_6070}) 
 
 
V_4663 = Vertex(name = 'V_4663', 
	 particles = [P.e1bar, P.e2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6071,(0,0):C.GC_6072}) 
 
 
V_4664 = Vertex(name = 'V_4664', 
	 particles = [P.e1bar, P.e3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6073,(0,0):C.GC_6074}) 
 
 
V_4665 = Vertex(name = 'V_4665', 
	 particles = [P.e2bar, P.e1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6075,(0,0):C.GC_6076}) 
 
 
V_4666 = Vertex(name = 'V_4666', 
	 particles = [P.e2bar, P.e2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6077,(0,0):C.GC_6078}) 
 
 
V_4667 = Vertex(name = 'V_4667', 
	 particles = [P.e2bar, P.e3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6079,(0,0):C.GC_6080}) 
 
 
V_4668 = Vertex(name = 'V_4668', 
	 particles = [P.e3bar, P.e1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6081,(0,0):C.GC_6082}) 
 
 
V_4669 = Vertex(name = 'V_4669', 
	 particles = [P.e3bar, P.e2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6083,(0,0):C.GC_6084}) 
 
 
V_4670 = Vertex(name = 'V_4670', 
	 particles = [P.e3bar, P.e3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6085,(0,0):C.GC_6086}) 
 
 
V_4671 = Vertex(name = 'V_4671', 
	 particles = [P.e1bar, P.e1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6087,(0,0):C.GC_6088}) 
 
 
V_4672 = Vertex(name = 'V_4672', 
	 particles = [P.e1bar, P.e2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6089,(0,0):C.GC_6090}) 
 
 
V_4673 = Vertex(name = 'V_4673', 
	 particles = [P.e1bar, P.e3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6091,(0,0):C.GC_6092}) 
 
 
V_4674 = Vertex(name = 'V_4674', 
	 particles = [P.e2bar, P.e1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6093,(0,0):C.GC_6094}) 
 
 
V_4675 = Vertex(name = 'V_4675', 
	 particles = [P.e2bar, P.e2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6095,(0,0):C.GC_6096}) 
 
 
V_4676 = Vertex(name = 'V_4676', 
	 particles = [P.e2bar, P.e3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6097,(0,0):C.GC_6098}) 
 
 
V_4677 = Vertex(name = 'V_4677', 
	 particles = [P.e3bar, P.e1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6099,(0,0):C.GC_6100}) 
 
 
V_4678 = Vertex(name = 'V_4678', 
	 particles = [P.e3bar, P.e2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6101,(0,0):C.GC_6102}) 
 
 
V_4679 = Vertex(name = 'V_4679', 
	 particles = [P.e3bar, P.e3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6103,(0,0):C.GC_6104}) 
 
 
V_4680 = Vertex(name = 'V_4680', 
	 particles = [P.nu1bar, P.e1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6105}) 
 
 
V_4681 = Vertex(name = 'V_4681', 
	 particles = [P.nu1bar, P.e2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6106}) 
 
 
V_4682 = Vertex(name = 'V_4682', 
	 particles = [P.nu1bar, P.e3, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6107}) 
 
 
V_4683 = Vertex(name = 'V_4683', 
	 particles = [P.nu2bar, P.e1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6108}) 
 
 
V_4684 = Vertex(name = 'V_4684', 
	 particles = [P.nu2bar, P.e2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6109}) 
 
 
V_4685 = Vertex(name = 'V_4685', 
	 particles = [P.nu2bar, P.e3, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6110}) 
 
 
V_4686 = Vertex(name = 'V_4686', 
	 particles = [P.nu3bar, P.e1, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6111}) 
 
 
V_4687 = Vertex(name = 'V_4687', 
	 particles = [P.nu3bar, P.e2, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6112}) 
 
 
V_4688 = Vertex(name = 'V_4688', 
	 particles = [P.nu3bar, P.e3, P.Wmc], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6113}) 
 
 
V_4689 = Vertex(name = 'V_4689', 
	 particles = [P.u1bar, P.u1, P.g], 
	 color = ['T(3,2,1)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6114,(0,0):C.GC_6115}) 
 
 
V_4690 = Vertex(name = 'V_4690', 
	 particles = [P.u2bar, P.u2, P.g], 
	 color = ['T(3,2,1)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6116,(0,0):C.GC_6117}) 
 
 
V_4691 = Vertex(name = 'V_4691', 
	 particles = [P.u3bar, P.u3, P.g], 
	 color = ['T(3,2,1)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6118,(0,0):C.GC_6119}) 
 
 
V_4692 = Vertex(name = 'V_4692', 
	 particles = [P.u1bar, P.u1, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6120,(0,0):C.GC_6121}) 
 
 
V_4693 = Vertex(name = 'V_4693', 
	 particles = [P.u2bar, P.u2, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6122,(0,0):C.GC_6123}) 
 
 
V_4694 = Vertex(name = 'V_4694', 
	 particles = [P.u3bar, P.u3, P.A], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6124,(0,0):C.GC_6125}) 
 
 
V_4695 = Vertex(name = 'V_4695', 
	 particles = [P.d1bar, P.u1, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6126}) 
 
 
V_4696 = Vertex(name = 'V_4696', 
	 particles = [P.d1bar, P.u2, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6127}) 
 
 
V_4697 = Vertex(name = 'V_4697', 
	 particles = [P.d1bar, P.u3, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6128}) 
 
 
V_4698 = Vertex(name = 'V_4698', 
	 particles = [P.d2bar, P.u1, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6129}) 
 
 
V_4699 = Vertex(name = 'V_4699', 
	 particles = [P.d2bar, P.u2, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6130}) 
 
 
V_4700 = Vertex(name = 'V_4700', 
	 particles = [P.d2bar, P.u3, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6131}) 
 
 
V_4701 = Vertex(name = 'V_4701', 
	 particles = [P.d3bar, P.u1, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6132}) 
 
 
V_4702 = Vertex(name = 'V_4702', 
	 particles = [P.d3bar, P.u2, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6133}) 
 
 
V_4703 = Vertex(name = 'V_4703', 
	 particles = [P.d3bar, P.u3, P.Wm], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6134}) 
 
 
V_4704 = Vertex(name = 'V_4704', 
	 particles = [P.u1bar, P.u1, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6135,(0,0):C.GC_6136}) 
 
 
V_4705 = Vertex(name = 'V_4705', 
	 particles = [P.u2bar, P.u2, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6137,(0,0):C.GC_6138}) 
 
 
V_4706 = Vertex(name = 'V_4706', 
	 particles = [P.u3bar, P.u3, P.Z], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6139,(0,0):C.GC_6140}) 
 
 
V_4707 = Vertex(name = 'V_4707', 
	 particles = [P.u1bar, P.u1, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6141,(0,0):C.GC_6142}) 
 
 
V_4708 = Vertex(name = 'V_4708', 
	 particles = [P.u2bar, P.u2, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6143,(0,0):C.GC_6144}) 
 
 
V_4709 = Vertex(name = 'V_4709', 
	 particles = [P.u3bar, P.u3, P.Zp], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6145,(0,0):C.GC_6146}) 
 
 
V_4710 = Vertex(name = 'V_4710', 
	 particles = [P.e1bar, P.nu1, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6147}) 
 
 
V_4711 = Vertex(name = 'V_4711', 
	 particles = [P.e1bar, P.nu2, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6148}) 
 
 
V_4712 = Vertex(name = 'V_4712', 
	 particles = [P.e1bar, P.nu3, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6149}) 
 
 
V_4713 = Vertex(name = 'V_4713', 
	 particles = [P.e2bar, P.nu1, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6150}) 
 
 
V_4714 = Vertex(name = 'V_4714', 
	 particles = [P.e2bar, P.nu2, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6151}) 
 
 
V_4715 = Vertex(name = 'V_4715', 
	 particles = [P.e2bar, P.nu3, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6152}) 
 
 
V_4716 = Vertex(name = 'V_4716', 
	 particles = [P.e3bar, P.nu1, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6153}) 
 
 
V_4717 = Vertex(name = 'V_4717', 
	 particles = [P.e3bar, P.nu2, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6154}) 
 
 
V_4718 = Vertex(name = 'V_4718', 
	 particles = [P.e3bar, P.nu3, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6155}) 
 
 
V_4719 = Vertex(name = 'V_4719', 
	 particles = [P.nu1bar, P.nu1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6156}) 
 
 
V_4720 = Vertex(name = 'V_4720', 
	 particles = [P.nu1bar, P.nu2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6157}) 
 
 
V_4721 = Vertex(name = 'V_4721', 
	 particles = [P.nu1bar, P.nu3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6158}) 
 
 
V_4722 = Vertex(name = 'V_4722', 
	 particles = [P.nu2bar, P.nu1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6159}) 
 
 
V_4723 = Vertex(name = 'V_4723', 
	 particles = [P.nu2bar, P.nu2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6160}) 
 
 
V_4724 = Vertex(name = 'V_4724', 
	 particles = [P.nu2bar, P.nu3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6161}) 
 
 
V_4725 = Vertex(name = 'V_4725', 
	 particles = [P.nu3bar, P.nu1, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6162}) 
 
 
V_4726 = Vertex(name = 'V_4726', 
	 particles = [P.nu3bar, P.nu2, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6163}) 
 
 
V_4727 = Vertex(name = 'V_4727', 
	 particles = [P.nu3bar, P.nu3, P.Z], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6164}) 
 
 
V_4728 = Vertex(name = 'V_4728', 
	 particles = [P.nu1bar, P.nu1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6165}) 
 
 
V_4729 = Vertex(name = 'V_4729', 
	 particles = [P.nu1bar, P.nu2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6166}) 
 
 
V_4730 = Vertex(name = 'V_4730', 
	 particles = [P.nu1bar, P.nu3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6167}) 
 
 
V_4731 = Vertex(name = 'V_4731', 
	 particles = [P.nu2bar, P.nu1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6168}) 
 
 
V_4732 = Vertex(name = 'V_4732', 
	 particles = [P.nu2bar, P.nu2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6169}) 
 
 
V_4733 = Vertex(name = 'V_4733', 
	 particles = [P.nu2bar, P.nu3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6170}) 
 
 
V_4734 = Vertex(name = 'V_4734', 
	 particles = [P.nu3bar, P.nu1, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6171}) 
 
 
V_4735 = Vertex(name = 'V_4735', 
	 particles = [P.nu3bar, P.nu2, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6172}) 
 
 
V_4736 = Vertex(name = 'V_4736', 
	 particles = [P.nu3bar, P.nu3, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.FFV3], 
	 couplings = {(0,0):C.GC_6173}) 
 
 
V_4737 = Vertex(name = 'V_4737', 
	 particles = [P.go, P.go, P.g], 
	 color = ['f(1,2,3)'], 
	 lorentz = [L.FFV2,L.FFV3], 
	 couplings = {(0,1):C.GC_6174,(0,0):C.GC_6175}) 
 
 
V_4738 = Vertex(name = 'V_4738', 
	 particles = [P.g, P.g, P.g], 
	 color = ['f(1,2,3)'], 
	 lorentz = [L.VVV1], 
	 couplings = {(0,0):C.GC_6176}) 
 
 
V_4739 = Vertex(name = 'V_4739', 
	 particles = [P.Wmc, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.VVV1], 
	 couplings = {(0,0):C.GC_6177}) 
 
 
V_4740 = Vertex(name = 'V_4740', 
	 particles = [P.Wmc, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.VVV1], 
	 couplings = {(0,0):C.GC_6178}) 
 
 
V_4741 = Vertex(name = 'V_4741', 
	 particles = [P.Wmc, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.VVV1], 
	 couplings = {(0,0):C.GC_6179}) 
 
 
V_4742 = Vertex(name = 'V_4742', 
	 particles = [P.g, P.g, P.g, P.g], 
	 color = ['f(-1,1,4)*f(-1,2,3)', 'f(-1,1,3)*f(-1,2,4)', 'f(-1,1,2)*f(-1,3,4)'], 
	 lorentz = [L.VVVV1,L.VVVV2,L.VVVV3], 
	 couplings = {(0,0):C.GC_6180,(1,0):C.GC_6181,(0,1):C.GC_6182,(2,1):C.GC_6183,(1,2):C.GC_6184,(2,2):C.GC_6185}) 
 
 
V_4743 = Vertex(name = 'V_4743', 
	 particles = [P.Wmc, P.A, P.A, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.VVVV1,L.VVVV2,L.VVVV3], 
	 couplings = {(0,0):C.GC_6186,(0,1):C.GC_6187,(0,2):C.GC_6188}) 
 
 
V_4744 = Vertex(name = 'V_4744', 
	 particles = [P.Wmc, P.A, P.Wm, P.Z], 
	 color = ['1'], 
	 lorentz = [L.VVVV1,L.VVVV2,L.VVVV3], 
	 couplings = {(0,0):C.GC_6189,(0,1):C.GC_6190,(0,2):C.GC_6191}) 
 
 
V_4745 = Vertex(name = 'V_4745', 
	 particles = [P.Wmc, P.A, P.Wm, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.VVVV1,L.VVVV2,L.VVVV3], 
	 couplings = {(0,0):C.GC_6192,(0,1):C.GC_6193,(0,2):C.GC_6194}) 
 
 
V_4746 = Vertex(name = 'V_4746', 
	 particles = [P.Wmc, P.Wmc, P.Wm, P.Wm], 
	 color = ['1'], 
	 lorentz = [L.VVVV1,L.VVVV2,L.VVVV3], 
	 couplings = {(0,0):C.GC_6195,(0,1):C.GC_6196,(0,2):C.GC_6197}) 
 
 
V_4747 = Vertex(name = 'V_4747', 
	 particles = [P.Wmc, P.Wm, P.Z, P.Z], 
	 color = ['1'], 
	 lorentz = [L.VVVV1,L.VVVV2,L.VVVV3], 
	 couplings = {(0,0):C.GC_6198,(0,1):C.GC_6199,(0,2):C.GC_6200}) 
 
 
V_4748 = Vertex(name = 'V_4748', 
	 particles = [P.Wmc, P.Wm, P.Z, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.VVVV1,L.VVVV2,L.VVVV3], 
	 couplings = {(0,0):C.GC_6201,(0,1):C.GC_6202,(0,2):C.GC_6203}) 
 
 
V_4749 = Vertex(name = 'V_4749', 
	 particles = [P.Wmc, P.Wm, P.Zp, P.Zp], 
	 color = ['1'], 
	 lorentz = [L.VVVV1,L.VVVV2,L.VVVV3], 
	 couplings = {(0,0):C.GC_6204,(0,1):C.GC_6205,(0,2):C.GC_6206}) 
 
 
V_4750 = Vertex(name = 'V_4750', 
	 particles = [P.A, P.A, P.h1], 
	 color = ['1'], 
	 lorentz = [L.VVS99], 
	 couplings = {(0,0):C.GC_6207}) 
 
 
V_4751 = Vertex(name = 'V_4751', 
	 particles = [P.g, P.g, P.h1], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.VVS99], 
	 couplings = {(0,0):C.GC_6208}) 
 
 
V_4752 = Vertex(name = 'V_4752', 
	 particles = [P.A, P.A, P.h2], 
	 color = ['1'], 
	 lorentz = [L.VVS99], 
	 couplings = {(0,0):C.GC_6209}) 
 
 
V_4753 = Vertex(name = 'V_4753', 
	 particles = [P.g, P.g, P.h2], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.VVS99], 
	 couplings = {(0,0):C.GC_6210}) 
 
 
V_4754 = Vertex(name = 'V_4754', 
	 particles = [P.A, P.A, P.h3], 
	 color = ['1'], 
	 lorentz = [L.VVS99], 
	 couplings = {(0,0):C.GC_6211}) 
 
 
V_4755 = Vertex(name = 'V_4755', 
	 particles = [P.g, P.g, P.h3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.VVS99], 
	 couplings = {(0,0):C.GC_6212}) 
 
 
V_4756 = Vertex(name = 'V_4756', 
	 particles = [P.A, P.A, P.Ah3], 
	 color = ['1'], 
	 lorentz = [L.VVS99], 
	 couplings = {(0,0):C.GC_6213}) 
 
 
V_4757 = Vertex(name = 'V_4757', 
	 particles = [P.g, P.g, P.Ah3], 
	 color = ['Identity(1,2)'], 
	 lorentz = [L.VVS99], 
	 couplings = {(0,0):C.GC_6214}) 
 
 
