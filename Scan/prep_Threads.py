######## Packages ###########

import os
import shutil

######## Current File Paths ########

FullPathForMainDirectories = os.path.abspath("/home/phylab/projects/Secluded_UMSSM/Sec")

PathForMainDirectory = os.path.dirname(FullPathForMainDirectories)

#####################################

NumberofThread = 12

nb = raw_input("Choose prep, run_SPheno, run_Micromegas or kill: \n")

if nb == "prep":

    for f_no in range(1,NumberofThread+1):
        PathForfDirectory=PathForMainDirectory+"/Sec"+str(f_no)
        if not os.path.exists(PathForfDirectory): os.makedirs(PathForfDirectory)
        PathForOutputFiles = PathForfDirectory+"/SPhenoOutputs"
        if not os.path.isdir(PathForOutputFiles): os.makedirs(PathForOutputFiles)
        PathForMicromegasFiles = PathForfDirectory+"/MicromegasOutputs"
        if not os.path.isdir(PathForMicromegasFiles): os.makedirs(PathForMicromegasFiles)
        shutil.copy2("LesHouches.in.sec_UMSSM",PathForfDirectory) 
        shutil.copy2("run_Secluded.py",PathForfDirectory)
        shutil.copy2("MyPySLHA.py",PathForfDirectory)
        shutil.copy2("myOmega",PathForfDirectory)
        shutil.copy2("run_ParallelMicromegas.py",PathForfDirectory)

if nb == "run_SPheno":
    for f_no in range(1,NumberofThread+1):
        PathForfDirectory=PathForMainDirectory+"/Sec"+str(f_no)    
        os.chdir(PathForfDirectory)
        ScreenBaseName = "Sec"
        ScreenFullName = ScreenBaseName+'_'+str(f_no)

        os.system("screen -S "+ ScreenFullName +" -dm ipython -i run_Secluded.py")
        os.chdir("../")

if nb == "run_Micromegas":
    for f_no in range(1,NumberofThread+1):
        PathForfDirectory=PathForMainDirectory+"/Sec"+str(f_no)    
        os.chdir(PathForfDirectory)
        ScreenBaseName = "Micro"
        ScreenFullName = ScreenBaseName+'_'+str(f_no)

        os.system("screen -S "+ ScreenFullName +" -dm ipython -i run_ParallelMicromegas.py")
        os.chdir("../")

elif nb == "kill":
    os.system("screen -X -S Micro_1 kill")
    os.system("screen -X -S Micro_2 kill")
    os.system("screen -X -S Micro_3 kill")
    os.system("screen -X -S Micro_4 kill")
    os.system("screen -X -S Micro_5 kill")
    os.system("screen -X -S Micro_6 kill")
    os.system("screen -X -S Micro_7 kill")
    os.system("screen -X -S Micro_8 kill")
    os.system("screen -X -S Micro_9 kill")
    os.system("screen -X -S Micro_10 kill")
    os.system("screen -X -S Micro_11 kill")
    os.system("screen -X -S Micro_12 kill")
