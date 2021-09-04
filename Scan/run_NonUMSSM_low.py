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
seed(randint(1, 1000000))

######## Current LesHouches File Paths ########
LHAFileFullPath = os.path.abspath("LesHouches.in.NonUMSSM_low")
LHAFiledirPath = os.path.dirname(LHAFileFullPath)
LHAFileName = os.path.basename(LHAFileFullPath)
######## Updated LesHouches Files Paths #######
UpdatedLHAFileFullPath = os.path.abspath("LesHouches.in.NonUMSSM_lowUpdated")
UpdatedLHAFiledirPath = os.path.dirname(UpdatedLHAFileFullPath)
UpdatedLHAFileName = os.path.basename(UpdatedLHAFileFullPath)
######## Desired SPheno Output File Paths #########
SLHAFileFullPath = os.path.abspath("SPheno.spc.NonUMSSM")
SLHAFiledirPath = os.path.dirname(SLHAFileFullPath)
SLHAFileName = os.path.basename(SLHAFileFullPath)
destPathforNewSLHA = os.path.dirname("SPhenoOutputs/SPheno.spc.NonUMSSM*")

####### Desired MicrOMEGAs Output File Paths #########

#PathforMicrOMEGAsResult = os.path.abspath("Block_micrOMEGAs.out")
#PathforChannelsOutput = os.path.abspath("Channels.out")
#PathforDecaysOutput = os.path.abspath("DECAYS.out")

###################################################################

fileno = len(fnmatch.filter(os.listdir(
    destPathforNewSLHA), 'SPheno.spc.NonUMSSM*'))
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

            TanBetaIN = uniform(2., 50.) # np.random.normal(2.38993364E+01, 0.6)

            LambdaIN = uniform(1e-2, 0.6) # np.random.normal(2.09166267E-01, 0.1)
            InvLamIN = uniform(1000., 15000) # np.random.normal(5.12492636E+03, 10.)
            vSIN = uniform(13000., 20000.)  # np.random.normal(1.21591000E+04, 100.)

            Tdp11IN = 0.0 # uniform(-5000., 5000.) # np.random.normal(5.29566845E-01, 0.1)
            Tdp22IN = 0.0 # uniform(-5000., 5000.) # np.random.normal(5.29566845E-01, 0.1)
            Tdp33IN = 0.0 # uniform(-5000., 5000.) # np.random.normal(5.29566845E-01, 0.1) 

            TepIN  = 0.0 # uniform(-5000, 5000) # np.random.normal(-1.66981363E+03, 10)
            TmupIN = 0.0 # uniform(-5000, 5000) # np.random.normal(-1.66981363E+03, 10)

            vd = cos(atan(TanBetaIN))*244.5
            Ye11IN = 0.000511*sqrt(2)/vd 
            Ye22IN = 0.105*sqrt(2)/vd    
            Ye33IN = 1.772*sqrt(2)/vd 

            TYe33IN = uniform(-1000, 1000) # np.random.normal(2.44830506E+02, 10)

            M1IN = uniform(-5000., 5000.)  # np.random.normal(5.96741221E+01, 10)  # uniform(-3000., 3000.)
            M2IN = uniform(-5000., 5000.)  # np.random.normal(2.20167876E+03, 10)  # -1.*np.sign(M1IN)*uniform(0., 3000.)
            M3IN = uniform(-5000., 5000.)  # np.random.normal(2.79591885E+03, 10)
            M4IN = uniform(-5000., 5000.)  # np.random.normal(-2.17335959E+03,10)

            me012 = uniform(1e4, 10000**2)  # np.random.normal(7.46054725E+06, 100000)
            me022 = uniform(1e4, 10000**2)  # np.random.normal(8.41835696E+06, 100000) 
            me032 = uniform(1e4, 10000**2)  # np.random.normal(8.50282542E+06, 100000)
            ml012 = uniform(1e4, 10000**2)  # np.random.normal(2.24287690E+06, 100000) 
            ml022 = uniform(1e4, 10000**2)  # np.random.normal(8.81432832E+06, 100000)
            ml032 = uniform(1e4, 10000**2)  # np.random.normal(8.82332008E+06, 100000)

            MSD211IN = uniform(1e4, 10000**2)
            MSD222IN = uniform(1e4, 10000**2)
            MSD233IN = uniform(1e4, 10000**2)

            gpIN  = uniform(0.6, 1.)

            alpha = np.sign(np.random.uniform(-1,1))*np.random.uniform(0.20, 0.28) # Free U(1) prime charge

########################### End of Free Parameters #########################################
############################################################################################

            # Let's change strings with the values
            LHA.LHAfile = LHA.LHAfile.replace(
                'TanBetaIN', str("{:.8E}".format(TanBetaIN)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'LambdaIN', str("{:.8E}".format(LambdaIN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'InvLamIN', str("{:.8E}".format(InvLamIN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'vSIN', str("{:.8E}".format(vSIN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Tdp11IN', str("{:.8E}".format(Tdp11IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Tdp22IN', str("{:.8E}".format(Tdp22IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Tdp33IN', str("{:.8E}".format(Tdp33IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'TepIN', str("{:.8E}".format(TepIN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'TmupIN', str("{:.8E}".format(TmupIN)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'TYe33IN', str("{:.8E}".format(TYe33IN)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'Ye11IN', str("{:.8E}".format(Ye11IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Ye22IN', str("{:.8E}".format(Ye22IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'Ye33IN', str("{:.8E}".format(Ye33IN)))

############### Assign U1 prime charges #####################
            LHA.U1ChargeGenerator(alpha)
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
                'QsIN',  str("{:.8E}".format(LHA.Qs_charge)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'M1IN', str("{:.8E}".format(M1IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'M2IN', str("{:.8E}".format(M2IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'M3IN', str("{:.8E}".format(M3IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'M4IN', str("{:.8E}".format(M4IN)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'me012IN', str("{:.8E}".format(me012)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'me022IN', str("{:.8E}".format(me022)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'me032IN', str("{:.8E}".format(me032)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'ml012IN', str("{:.8E}".format(ml012)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'ml022IN', str("{:.8E}".format(ml022)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'ml032IN', str("{:.8E}".format(ml032)))

            LHA.LHAfile = LHA.LHAfile.replace(
                'MSD211IN', str("{:.8E}".format(MSD211IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'MSD222IN', str("{:.8E}".format(MSD222IN)))
            LHA.LHAfile = LHA.LHAfile.replace(
                'MSD233IN', str("{:.8E}".format(MSD233IN)))

	    LHA.LHAfile = LHA.LHAfile.replace(
                'gpIN', str("{:.8E}".format(gpIN)))
              
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
            if LHA.MassBounds() == True and LHA.CheckBPhysics() == True: # and LHA.G2Bound() == True: # and LHA.CheckWhoIsLSP() == True:
                fileno = len(fnmatch.filter(os.listdir(
                    destPathforNewSLHA), "SPheno.spc.NonUMSSM.*"))
                newfileno = fileno + 1
                LHA.NewSLHAFileName = "SPheno.spc.NonUMSSM."+str(newfileno)
                LHA.NewSLHAFileFullPath = "SPhenoOutputs/" + LHA.NewSLHAFileName
                LHA.RenameAndCopy(os.path.abspath(
                    "SPheno.spc.NonUMSSM"), LHA.NewSLHAFileFullPath)
                LHA.Erase(SLHAFileName)
            else:
                LHA.Erase(SLHAFileName)
