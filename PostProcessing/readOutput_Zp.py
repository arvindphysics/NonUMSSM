from MyPySLHA import *
import pyslha
import fnmatch
import os, re

datafilepath     = os.path.abspath("/scratch/oo1m20/projects/NonUMSSM/data/NonUMSSMv4_Zp.csv")
ExcludedDataPath = os.path.abspath("/scratch/oo1m20/projects/NonUMSSM/data/Exc_NonUMSSMv4.csv")
maindirpath      = os.path.abspath("/scratch/oo1m20/projects/NonUMSSM/")
#MGdirectory      = "/home/oo4g19/softwares/MG5_aMC_v2_6_7/secUMSSM_pptozp/Events"

###########################################################

def is_non_zero_file(fpath):
    return os.path.isfile(fpath) and os.path.getsize(fpath) > 0

###########################################################

numberofoutputdir = len(fnmatch.filter(os.listdir(maindirpath), 'OutputDir*')) # Out1, Out2, Out3 etc..

for i in range(1,numberofoutputdir+1):
    f_filename       = "OutputDir"+str(i)
    outputdir        = f_filename + "/SPhenoOutputs"
    numberofoutput   = len(fnmatch.filter(os.listdir(outputdir), 'SPheno.spc.NonUMSSMv4.*'))
#    print f_filename

    MicromegasOutdir = f_filename + "/MicromegasOutputs"

    for j in range(1,numberofoutput+1):
        outputfilefullpath   = os.path.abspath(outputdir+"/SPheno.spc.NonUMSSMv4."+str(j))
#       MGoutputfilefullpath = os.path.abspath(MGdirectory+"/Sec"+str(i)+"_"+str(j)+"/Sec"+str(i)+"_"+str(j)+"_tag_1_banner.txt")
#       FullSysErrPath       = os.path.abspath(MGdirectory+"/Sec2"+str(i)+"/parton_systematics.log")
        print(outputfilefullpath)

        MicromegasOutputFullPath = os.path.abspath(MicromegasOutdir+"/Micromegas."+str(j))

        SLHA = MyPySLHA()
#        if SLHA.CheckLHAexist(outputfilefullpath) == True:
#       if SLHA.CheckLHAexist(outputfilefullpath) and SLHA.MassBounds() == True:
        if (SLHA.CheckLHAexist(outputfilefullpath) and SLHA.CheckLHAexist(MicromegasOutputFullPath) and is_non_zero_file(MicromegasOutputFullPath) == True):
#       if (SLHA.CheckLHAexist(outputfilefullpath) and SLHA.CheckLHAexist(MGoutputfilefullpath)) == True:
                SLHA.LoadLHAFile(outputfilefullpath)
                if    SLHA.Read_Decays(31,[-11,11]) == None:            SLHA.BRZptoee     = 0
                else : SLHA.BRZptoee     = SLHA.Read_Decays(31,[-11,11])
                if SLHA.Read_Decays(31,[-13,13]) == None:               SLHA.BRZptomumu   = 0
                else : SLHA.BRZptomumu   = SLHA.Read_Decays(31,[-13,13])
                SLHA.BRZptoll     = SLHA.BRZptoee + SLHA.BRZptomumu
                if    SLHA.Read_Decays(1000024,[1000022,24]) == None: SLHA.BRCha1toWChi1 = 0
                else: SLHA.BRCha1toWChi1                      = SLHA.Read_Decays(1000024,[1000022,24])
                if    SLHA.Read_Decays(31,[1000024,-1000024]) == None: SLHA.BRZptoCha1Cha1 = 0
                else: SLHA.BRZptoCha1Cha1                     = SLHA.Read_Decays(31,[1000024,-1000024])
                SLHA.gpSUSY       = SLHA.allcontent.blocks["GAUGE"][5]
                SLHA.gLSUSY       = SLHA.allcontent.blocks["GAUGE"][2]
                SLHA.tanBeta      = SLHA.allcontent.blocks["MINPAR"][6]

                SLHA.LambdaInput  = SLHA.allcontent.blocks["EXTPAR"][61]
                SLHA.ALambdaInput = SLHA.allcontent.blocks["EXTPAR"][63]
                SLHA.vSInput      = SLHA.allcontent.blocks["EXTPAR"][65]

                SLHA.DAEL         = SLHA.allcontent.blocks["SPHENOLOWENERGY"][20]
                SLHA.DAMU         = SLHA.allcontent.blocks["SPHENOLOWENERGY"][21]
                SLHA.Chi1         = SLHA.allcontent.blocks["MASS"][1000022]
                SLHA.Chi2         = SLHA.allcontent.blocks["MASS"][1000023]
                SLHA.Chi3         = SLHA.allcontent.blocks["MASS"][1000025]
                SLHA.Cha1         = SLHA.allcontent.blocks["MASS"][1000024]
                SLHA.Sv1          = SLHA.allcontent.blocks["MASS"][1000012]
                SLHA.Se1          = SLHA.allcontent.blocks["MASS"][1000011]

                SLHA.M1           = SLHA.allcontent.blocks["MSOFT"][1]
                SLHA.M2           = SLHA.allcontent.blocks["MSOFT"][2]
                SLHA.M3           = SLHA.allcontent.blocks["MSOFT"][3]
                SLHA.M4           = SLHA.allcontent.blocks["MSOFT"][4]

                SLHA.Tep          = SLHA.allcontent.blocks["TEP"][1]
                SLHA.Tmup         = SLHA.allcontent.blocks["TMUP"][1]

                SLHA.TYe33        = SLHA.allcontent.blocks['TYE33'][1]

                SLHA.Ql1          = SLHA.allcontent.blocks['XCHARGE'][4]
                SLHA.Ql2          = SLHA.allcontent.blocks['XCHARGE'][5]
                SLHA.Qe1          = SLHA.allcontent.blocks['XCHARGE'][15]
                SLHA.Qe2          = SLHA.allcontent.blocks['XCHARGE'][16]

                if   SLHA.Read_Decays(31,[-1,1]) == None: SLHA.Zpq1q1 = 0
                else: SLHA.Zpq1q1                 = SLHA.Read_Decays(31,[-1,1])
                if SLHA.Read_Decays(31,[-3,3]) == None: SLHA.Zpq3q3 = 0
                else: SLHA.Zpq3q3                 = SLHA.Read_Decays(31,[-3,3])
                if SLHA.Read_Decays(31,[-5,5]) == None: SLHA.Zpq5q5 = 0
                else: SLHA.Zpq5q5                 = SLHA.Read_Decays(31,[-5,5])
                if SLHA.Read_Decays(31,[-2,2]) == None: SLHA.Zpq2q2 = 0
                else: SLHA.Zpq2q2                 = SLHA.Read_Decays(31,[-2,2])
                if SLHA.Read_Decays(31,[-4,4]) == None: SLHA.Zpq4q4 = 0
                else: SLHA.Zpq4q4                 = SLHA.Read_Decays(31,[-4,4])
#               if SLHA.Read_Decays(31,[-6,6]) == None: SLHA.Zpq6q6 = 0
#               else: SLHA.Zpq6q6                 = SLHA.Read_Decays(31,[-6,6])
                SLHA.BRZptoqq     = SLHA.Zpq1q1 + SLHA.Zpq3q3 + SLHA.Zpq5q5 + SLHA.Zpq2q2 + SLHA.Zpq4q4

                SLHA.MZp          = SLHA.ParticleMass
                SLHA.Zptotalwidth = SLHA.totalwidth

#               SLHA.ReadxSection(MGoutputfilefullpath)
#               SLHA.ReadUncertainty(FullSysErrPath)
                SLHA.chi2STU()

                SLHA.ReadMicrOmegasOutput(MicromegasOutputFullPath)
                SLHA.Chi1Content()

#                if SLHA.G2Bound() == False: SLHA.Erase(outputfilefullpath)

                if SLHA.MassBounds() == True and SLHA.CheckBPhysics() == True and SLHA.Check_DAELDAMU_Sig() == True: # SLHA.chi2STU() == True and SLHA.CheckWhoIsLSP() == True
                        g= open(datafilepath,"a+")
                        g.write("%.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %d %6s %.6E %.6E %.6E %.6E %.6E" % (SLHA.MZp, SLHA.Zptotalwidth/SLHA.MZp, SLHA.BRZptoll, SLHA.BRZptoqq, SLHA.gpSUSY, SLHA.DAEL, SLHA.DAMU, SLHA.Chi1, SLHA.Chi2, SLHA.Cha1, SLHA.BRCha1toWChi1, SLHA.BRZptoCha1Cha1, SLHA.chi2, SLHA.Sv1, SLHA.tanBeta, SLHA.LambdaInput, SLHA.ALambdaInput, SLHA.vSInput, SLHA.NMIX11, SLHA.NMIX12, SLHA.NMIX13, SLHA.NMIX14, SLHA.NMIX15, SLHA.NMIX16, SLHA.Se1, SLHA.M1, SLHA.M2, SLHA.M3, SLHA.M4, SLHA.Tep, SLHA.Tmup, SLHA.TYe33, SLHA.WhoIsLSP(), SLHA.Calculate_DAELDAMU(), SLHA.Ql1, SLHA.Ql2, SLHA.Qe1, SLHA.Qe2, SLHA.xsecpptoZp))
                        g.write('\n')
                        g.close()
                else:
                        f= open(ExcludedDataPath,"a+")
                        f.write("%.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E %.6E" % (SLHA.MZp, SLHA.Zptotalwidth/SLHA.MZp, SLHA.BRZptoll, SLHA.BRZptoqq, SLHA.gpSUSY, SLHA.DAEL, SLHA.DAMU, SLHA.Chi1, SLHA.Chi2, SLHA.Cha1, SLHA.BRCha1toWChi1, SLHA.BRZptoCha1Cha1, SLHA.chi2, SLHA.Sv1, SLHA.tanBeta, SLHA.LambdaInput, SLHA.ALambdaInput, SLHA.vSInput, SLHA.NMIX11, SLHA.NMIX12, SLHA.NMIX13, SLHA.NMIX14, SLHA.NMIX15, SLHA.NMIX16, SLHA.Se1, SLHA.M1, SLHA.M2, SLHA.M3, SLHA.M4, SLHA.Tep, SLHA.Tmup, SLHA.TYe33))
                        f.write('\n')
                        f.close()
