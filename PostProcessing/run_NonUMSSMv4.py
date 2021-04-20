######## Packages ###########
from math import *
import fnmatch
import numpy as np
import os
import sys
sys.path.append("/home/oo1m20/softwares/pyslha-3.2.3/")
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
seed(randint(1, 1000000))

######## Current LesHouches File Paths ########
LHAFileFullPath = os.path.abspath("LesHouches.in.NonUMSSMv4")
LHAFiledirPath = os.path.dirname(LHAFileFullPath)
LHAFileName = os.path.basename(LHAFileFullPath)
######## Updated LesHouches Files Paths #######
UpdatedLHAFileFullPath = os.path.abspath("LesHouches.in.NonUMSSMv4_Updated")
UpdatedLHAFiledirPath = os.path.dirname(UpdatedLHAFileFullPath)
UpdatedLHAFileName = os.path.basename(UpdatedLHAFileFullPath)
######## Desired SPheno Output File Paths #########
SLHAFileFullPath = os.path.abspath("SPheno.spc.NonUMSSMv4")
SLHAFiledirPath = os.path.dirname(SLHAFileFullPath)
SLHAFileName = os.path.basename(SLHAFileFullPath)
destPathforNewSLHA = os.path.dirname("SPhenoOutputs/SPheno.spc.NonUMSSMv4*")

####### Desired MicrOMEGAs Output File Paths #########

#PathforMicrOMEGAsResult = os.path.abspath("Block_micrOMEGAs.out")
#PathforChannelsOutput = os.path.abspath("Channels.out")
#PathforDecaysOutput = os.path.abspath("DECAYS.out")

###################################################################

fileno = len(fnmatch.filter(os.listdir(
    destPathforNewSLHA), 'SPheno.spc.NonUMSSMv4*'))
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

###########################################################################
######################### Free Parameters #################################
###########################################################################

            m0Input   = uniform(-25., 25.)
            m121Input = uniform(-5000., 5000.)
            m122Input = uniform(-5000., 5000.) 
            m123Input = uniform(-5000., 5000.)
            m124Input = uniform(-5000., 5000.)

            TanBetaIN = uniform(2., 50.) # np.random.normal(2.38993364E+01, 0.6)
            A0Input   = uniform(-3*m0Input,3*m0Input)

            LambdaIN = uniform(0.15, 0.4) # np.random.normal(2.09166267E-01, 0.1)
            InvLamIN = uniform(-15000., 15000.) # np.random.normal(5.12492636E+03, 10.)
            vSIN = uniform(13000., 19886.)   # np.random.normal(1.21591000E+04, 100.)

            TepIN =  uniform(-7000, 7000) # np.random.normal(-1.66981363E+03, 10)
            TmupIN = uniform(-15000, 15000) # np.random.normal(-1.66981363E+03, 10)

            vd = cos(atan(TanBetaIN))*244.5
            Ye11IN = 0.000511*sqrt(2)/vd 
            Ye22IN = 0.105*sqrt(2)/vd    
            Ye33IN = 1.772*sqrt(2)/vd 

            Yv11IN = uniform(1e-8, 1e-7)
            Yv22IN = uniform(1e-8, 1e-7)
            Yv33IN = uniform(1e-8, 1e-7)

            me012IN = uniform(1e5, 3e7)  # np.random.normal(7.46054725E+06, 100000)
            me022IN = uniform(1e5, 3e7)  # np.random.normal(8.41835696E+06, 100000) 
            me032IN = uniform(1e5, 3e7)  # np.random.normal(8.50282542E+06, 100000)
            ml012IN = uniform(1e5, 3e7)  # np.random.normal(2.24287690E+06, 100000) 
            ml022IN = uniform(1e5, 3e7)  # np.random.normal(8.81432832E+06, 100000)
            ml032IN = uniform(1e5, 3e7)  # np.random.normal(8.82332008E+06, 100000)

            mvR012IN = uniform(1e5, 3e7)
            mvR022IN = uniform(1e5, 3e7)
            mvR032IN = uniform(1e5, 3e7)

            # alpha = np.sign(np.random.uniform(-1,1))*np.random.uniform(0.20, 0.28) # Free U(1) prime charge

########################### End of Free Parameters #########################################
############################################################################################

            # Let's change strings with the values
            LHA.LHAfile = LHA.LHAfile.replace(
                'm0Input', str("{:.8E}".format(m0Input)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'm121Input', str("{:.8E}".format(m121Input)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'm122Input', str("{:.8E}".format(m122Input)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'm123Input', str("{:.8E}".format(m123Input)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'm124Input', str("{:.8E}".format(m124Input)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'TanBetaIN', str("{:.8E}".format(TanBetaIN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'A0Input', str("{:.8E}".format(A0Input)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'LambdaIN', str("{:.8E}".format(LambdaIN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'InvLamIN', str("{:.8E}".format(InvLamIN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'vSIN', str("{:.8E}".format(vSIN)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'TepIN', str("{:.8E}".format(TepIN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'TmupIN', str("{:.8E}".format(TmupIN)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'Ye11IN', str("{:.8E}".format(Ye11IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Ye22IN', str("{:.8E}".format(Ye22IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Ye33IN', str("{:.8E}".format(Ye33IN)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'Yv11IN', str("{:.8E}".format(Yv11IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Yv22IN', str("{:.8E}".format(Yv22IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Yv33IN', str("{:.8E}".format(Yv33IN)))

############### Assign U1 prime charges #####################
            LHA.U1ChargeGenerator()
            LHA.LHAfile = LHA.LHAfile.replace(
                'QqIn',  str("{:.8E}".format(LHA.QQ_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Ql1IN', str("{:.8E}".format(LHA.Ql1_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Ql2IN', str("{:.8E}".format(LHA.Ql2_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Ql3IN', str("{:.8E}".format(LHA.Ql3_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'QHuIN', str("{:.8E}".format(LHA.QHu_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'QHdIN', str("{:.8E}".format(LHA.QHd_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'QdIN',  str("{:.8E}".format(LHA.Qd_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'QuIN',  str("{:.8E}".format(LHA.Qu_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Qe1IN', str("{:.8E}".format(LHA.Qe1_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Qe2IN', str("{:.8E}".format(LHA.Qe2_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Qe3IN', str("{:.8E}".format(LHA.Qe3_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Qv1IN', str("{:.8E}".format(LHA.Qv1_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Qv2IN', str("{:.8E}".format(LHA.Qv2_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Qv3IN', str("{:.8E}".format(LHA.Qv3_charge)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'QsIN',  str("{:.8E}".format(LHA.Qs_charge)))


            LHA.LHAfile = LHA.LHAfile.replace(
                'me012IN', str("{:.8E}".format(me012IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'me022IN', str("{:.8E}".format(me022IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'me032IN', str("{:.8E}".format(me032IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'ml012IN', str("{:.8E}".format(ml012IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'ml022IN', str("{:.8E}".format(ml022IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'ml032IN', str("{:.8E}".format(ml032IN)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'mvR012IN', str("{:.8E}".format(mvR012IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'mvR022IN', str("{:.8E}".format(mvR022IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'mvR032IN', str("{:.8E}".format(mvR032IN)))
              
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
            if LHA.MassBounds() == True and LHA.CheckBPhysics() == True and LHA.Check_DAELDAMU_Sig() == True and LHA.CheckWhoIsLSP() == True:
                fileno = len(fnmatch.filter(os.listdir(
                    destPathforNewSLHA), "SPheno.spc.NonUMSSMv4.*"))
                newfileno = fileno + 1
                LHA.NewSLHAFileName = "SPheno.spc.NonUMSSMv4."+str(newfileno)
                LHA.NewSLHAFileFullPath = "SPhenoOutputs/" + LHA.NewSLHAFileName
                LHA.RenameAndCopy(os.path.abspath(
                    "SPheno.spc.NonUMSSMv4"), LHA.NewSLHAFileFullPath)
                LHA.Erase(SLHAFileName)
            else:
                LHA.Erase(SLHAFileName)
