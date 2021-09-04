######## Packages ###########
from math import *
import fnmatch
import numpy as np
import os
import pyslha
import pandas as pd
import signal
import time
from scipy.stats import beta
from scipy.stats import lognorm
#import xslha

from MyPySLHA import *
#from MySPheno import *
#from MyMicrOMEGAs import *

# generate random integer values
from random import seed
from random import randint
from random import choice
from random import uniform
# seed random number generator
seed(randint(1,1000000))

######## Current LesHouches File Paths ########
LHAFileFullPath = os.path.abspath("LesHouches.in.NonUMSSM")
LHAFiledirPath = os.path.dirname(LHAFileFullPath)
LHAFileName = os.path.basename(LHAFileFullPath)
######## Updated LesHouches Files Paths #######
UpdatedLHAFileFullPath = os.path.abspath("LesHouches.in.NonUMSSM_Updated")
UpdatedLHAFiledirPath  = os.path.dirname(UpdatedLHAFileFullPath)
UpdatedLHAFileName     = os.path.basename(UpdatedLHAFileFullPath)
######## Desired SPheno Output File Paths #########
SLHAFileFullPath   = os.path.abspath("SPheno.spc.NonUMSSM")
SLHAFiledirPath    = os.path.dirname(SLHAFileFullPath)
SLHAFileName       = os.path.basename(SLHAFileFullPath)
destPathforNewSLHA = os.path.dirname("SPhenoOutputs/SPheno.spc.NonUMSSM*")

####### Desired MicrOMEGAs Output File Paths #########

#PathforMicrOMEGAsResult = os.path.abspath("Block_micrOMEGAs.out")
#PathforChannelsOutput = os.path.abspath("Channels.out")
#PathforDecaysOutput = os.path.abspath("DECAYS.out")

###################################################################

fileno = len(fnmatch.filter(os.listdir(destPathforNewSLHA), 'SPheno.spc.NonUMSSM*'))
MaxNumberOfSolution = 2000
UpperLim = 1.15
LowerLim = 0.85

###################################################################

fileno = 1
while fileno < MaxNumberOfSolution:    
    LHA = MyPySLHA()
################### Clean ########################################
    LHA.Erase(SLHAFileName)
    LHA.Erase(UpdatedLHAFileFullPath)
    LHA.Erase("Messages.out")
    LHA.Erase("SPheno.out")
##################################################################
    if LHA.CheckLHAexist(LHAFileFullPath) == True:

#################  Read LesHouches Accord File  #######################################
        with open(LHAFileFullPath, 'r') as LHAfile:
            LHA.LHAfile = LHAfile.read()

            # Replace the target string
            m0IN      = uniform(-3000., 3000.) # 2.0000000E+03
            m12IN     = uniform(-3000., 3000.) # 4.0000000E+02
            TanBetaIN = uniform(2., 50.) # 3.0000000E+01
            AzeroIN   = uniform(-3*m0IN,3*m0IN) # 2.5000000E+03

            LambdaIN = 4.0000000E-02 # uniform(-0.05, 0.5 )
            InvLamIN = 2.8000000E+03 # uniform(-3000., 3000.)
            vSIN     = uniform(15000., 30000.) # 3.0000000E+03
 
            Tdp11IN    = 2.00000000E+00  # uniform(1500., 5000.)
            Tdp22IN    = 5.00000000E+01  # uniform(1500., 5000.)
            Tdp33IN    = -1.00000000E+00 # uniform(1500., 5000.)

            TepIN    = 1.00000000E-02 # uniform(-3000., 3000.) # 1.000000E+03
            TmupIN   = 1.00000000E-01 # uniform(-3000., 3000.) # 1.000000E+03

            vd = cos(atan(TanBetaIN))*244.5
            Ye11IN = 0.000511*sqrt(2)/vd # 1.000000E-05
            Ye22IN = 0.105*sqrt(2)/vd    # 1.000000E-05
            Ye33IN = 1.772*sqrt(2)/vd    # 1.000000E-05

            # MINPAR
            LHA.LHAfile = LHA.LHAfile.replace('m0IN', str("{:.8E}".format(m0IN)))
            LHA.LHAfile = LHA.LHAfile.replace('m12IN', str("{:.8E}".format(m12IN)))
	    LHA.LHAfile = LHA.LHAfile.replace('TanBetaIN', str("{:.8E}".format(TanBetaIN)))
            LHA.LHAfile = LHA.LHAfile.replace('AzeroIN', str("{:.8E}".format(AzeroIN)))

            # EXTPAR
            LHA.LHAfile = LHA.LHAfile.replace('LambdaIN', str("{:.8E}".format(LambdaIN)))
            LHA.LHAfile = LHA.LHAfile.replace('InvLamIN', str("{:.8E}".format(InvLamIN)))
            LHA.LHAfile = LHA.LHAfile.replace('vSIN', str("{:.8E}".format(vSIN)))
            LHA.LHAfile = LHA.LHAfile.replace('Tdp11IN', str("{:.8E}".format(Tdp11IN)))
            LHA.LHAfile = LHA.LHAfile.replace('Tdp22IN', str("{:.8E}".format(Tdp22IN)))
            LHA.LHAfile = LHA.LHAfile.replace('Tdp33IN', str("{:.8E}".format(Tdp33IN)))
            LHA.LHAfile = LHA.LHAfile.replace('TepIN', str("{:.8E}".format(TepIN)))
            LHA.LHAfile = LHA.LHAfile.replace('TmupIN', str("{:.8E}".format(TmupIN)))

            LHA.LHAfile = LHA.LHAfile.replace('Ye11IN', str("{:.8E}".format(Ye11IN)))
            LHA.LHAfile = LHA.LHAfile.replace('Ye22IN', str("{:.8E}".format(Ye22IN)))
            LHA.LHAfile = LHA.LHAfile.replace('Ye33IN', str("{:.8E}".format(Ye33IN)))

            alpha       = np.random.uniform(0.1,0.5)
            LHA.U1ChargeGenerator(alpha)
            LHA.LHAfile = LHA.LHAfile.replace('QqIn',  str("{:.8E}".format(LHA.QQ_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('Ql1IN', str("{:.8E}".format(LHA.Ql1_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('Ql2IN', str("{:.8E}".format(LHA.Ql2_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('Ql3IN', str("{:.8E}".format(LHA.Ql3_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('QHuIN', str("{:.8E}".format(LHA.QHu_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('QHdIN', str("{:.8E}".format(LHA.QHd_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('QdIN',  str("{:.8E}".format(LHA.Qd_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('QuIN',  str("{:.8E}".format(LHA.Qu_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('Qe1IN', str("{:.8E}".format(LHA.Qe1_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('Qe2IN', str("{:.8E}".format(LHA.Qe2_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('Qe3IN', str("{:.8E}".format(LHA.Qe3_charge)))
            LHA.LHAfile = LHA.LHAfile.replace('QsIN',  str("{:.8E}".format(LHA.Qs_charge)))


        # Write the file out again
        with open(UpdatedLHAFileFullPath, 'w') as UpdatedLHAFile:
            LHA.LHAfile = UpdatedLHAFile.write(LHA.LHAfile)
        
        UpdatedLHAFile.close()

############## Run SPheno ########################################################################
#        LHA.NewSLHAFileName = "SPheno.spc.NonUMSSM."+str(RandomSolIndex)
#        LHA.NewSLHAFileFullPath = "SPhenoOutputs/" + LHA.NewSLHAFileName
        LHA.RunSPheno(UpdatedLHAFileName)
############# Load SPheno Output into PySLHA #####################################################
        if LHA.CheckLHAexist(SLHAFileName) == True:
            LHA.LoadLHAFile(SLHAFileName)
############# Check Constraints  #######################################################################
            if LHA.MassBounds() == True and LHA.CheckBPhysics() == True: # and LHA.CheckWhoIsLSP() == True:
                fileno = len(fnmatch.filter(os.listdir(destPathforNewSLHA), "SPheno.spc.NonUMSSM.*"))
                newfileno = fileno + 1
                LHA.NewSLHAFileName = "SPheno.spc.NonUMSSM."+str(newfileno)
                LHA.NewSLHAFileFullPath = "SPhenoOutputs/" + LHA.NewSLHAFileName
                LHA.RenameAndCopy(os.path.abspath("SPheno.spc.NonUMSSM"),LHA.NewSLHAFileFullPath)
                LHA.Erase(SLHAFileName)
            else:
                LHA.Erase(SLHAFileName)
