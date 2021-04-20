from MyPySLHA import *
import pyslha
import fnmatch
import os, re

datafilepath     = os.path.abspath("/scratch/oo1m20/projects/NonUMSSM/data/NonUMSSMv1.csv")
ExcludedDataPath = os.path.abspath("/scratch/oo1m20/projects/NonUMSSM/data/Exc_NonUMSSMv1.csv")
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

    path = f_filename + "/SPhenoOutputs"
    files = os.listdir(path)


    for index, file in enumerate(files):
    	os.rename(os.path.join(path, file), os.path.join(path, "SPheno.spc.NonUMSSM."+str(index+1)))

