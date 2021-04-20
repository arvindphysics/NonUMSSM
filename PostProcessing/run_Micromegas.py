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
import subprocess

from MyPySLHA import *

########################################################

numberofoutput = len(fnmatch.filter(os.listdir("SPhenoOutputs"), 'SPheno.spc.NonUMSSMv4.*'))

for j in range(1,numberofoutput):
	outputfilefullpath = "SPhenoOutputs/SPheno.spc.NonUMSSMv4."+str(j)
	fileformicromegas  = "MicromegasOutputs/SPheno.spc.NonUMSSMv4" 	
        
        LHA = MyPySLHA()
        if LHA.CheckLHAexist(outputfilefullpath) == True: 
                LHA.LoadLHAFile(outputfilefullpath)
                if LHA.CheckWhoIsLSP() == False: continue
                    
		LHA.RenameAndCopy(outputfilefullpath,fileformicromegas)

		os.chdir("MicromegasOutputs")
		p = subprocess.call("./myOmega SPheno.spc.NonUMSSMv4",shell=True)
        	#os.system("./myOmega SPheno.spc.sec_UMSSM")
		os.chdir("../")

		PathforMicrOMEGAsResult = "MicromegasOutputs/Block_micrOMEGAs.out"
		PathforChannelsOutput   = "MicromegasOutputs/Channels.out"
		PathforDecaysOutput     = "MicromegasOutputs/DECAYS.out"

        	LHA.PathforMicrOMEGAsResult = PathforMicrOMEGAsResult
        	LHA.PathforChannelsOutput   = PathforChannelsOutput
        	LHA.PathforDecaysOutput     = PathforDecaysOutput

        	LHA.MicrOMEGA_Result_exist  = os.path.isfile(LHA.PathforMicrOMEGAsResult)
        	LHA.Channels_exist          = os.path.isfile(LHA.PathforChannelsOutput)	

                LHA.MicromegasNewFileName = "Micromegas."+str(j)
                LHA.FullDestForMicromegas = "MicromegasOutputs/"+LHA.MicromegasNewFileName
		LHA.FullDestForMicromegas_Exist = os.path.isfile(LHA.FullDestForMicromegas)

                LHA.ChannelsNewFileName = "Channels."+str(j)
                LHA.FullDestForChannels = "MicromegasOutputs/"+LHA.ChannelsNewFileName
		LHA.FullDestForChannels_Exist = os.path.isfile(LHA.FullDestForChannels)

		if (LHA.FullDestForMicromegas_Exist and LHA.FullDestForChannels_Exist) == False:
                        LHA.MicroDestFile_Check = True
                else:
                        LHA.MicroDestFile_Check = False

        	if (LHA.MicrOMEGA_Result_exist and LHA.Channels_exist and LHA.MicroDestFile_Check) == True:
             		LHA.RenameAndCopy(LHA.PathforMicrOMEGAsResult, LHA.FullDestForMicromegas)
			LHA.RenameAndCopy(LHA.PathforChannelsOutput,LHA.FullDestForChannels)

	     		LHA.Erase(fileformicromegas)
             		LHA.Erase(LHA.PathforMicrOMEGAsResult)
             		LHA.Erase(LHA.PathforChannelsOutput)

		else:
			LHA.Erase(fileformicromegas)




