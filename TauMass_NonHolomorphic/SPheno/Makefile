modname = SplitUMSSM  # as an example  
PreDef = -DGENERATIONMIXING -DONLYDOUBLE
# setting various paths  
InDir = ../include
Mdir = ${InDir}
VPATH = 3-Body-Decays:LoopDecays:TwoLoopMasses:Observables:SM 
name = ../lib/libSPhenoSplitUMSSM.a
 
# check if SARAH module and SPheno are compatibel  
minV=330.00 
cVersion =$(shell expr $(version) \>= $(minV))
#  
# options for various compilers  
#  
# Default Compiler  
F90=gfortran
comp= -c -O -module ${Mdir} -I${InDir}  
LFlagsB= -O  
# Intels ifort,debug modus  
ifeq (${F90},ifortg)  
F90=ifort  
comp= -c -g -module ${Mdir} -I${InDir}  
LFlagsB= -g  
endif  
# gfortran  
ifeq (${F90},gfortran)  
comp= -c -g -ffree-line-length-none -J${Mdir} -I${InDir}  
LFlagsB= -g  
endif  
# g95  
ifeq (${F90},g95)  
comp= -c -O -fmod=${Mdir} -I${InDir}  
LFlagsB= -O  
endif  
# Lahey F95 compiler  
ifeq (${F90},lf95)  
comp=-c -O -M ${Mdir} -I${InDir}  
LFlagsB=-O  
endif  
# NAG f95/2003  
ifeq (${F90},nagfor)  
comp= -c -O -mdir ${Mdir} -I${InDir}  
LFlagsB= -O -DONLYDOUBLE -mdir ${MDir} -I${InDir}  
endif   
.SUFFIXES : .o .ps .f90 .F90 .a 
bin/SPhenoSplitUMSSM:
ifeq (${cVersion},1)
	 cd ../src ; ${MAKE} F90=${F90} 
	 ${MAKE} F90=${F90} ${name} 
	 ${MAKE} F90=${F90} SPhenoSplitUMSSM.o 
	 ${F90} -o SPhenoSplitUMSSM ${LFlagsB} SPhenoSplitUMSSM.o ../lib/libSPhenoSplitUMSSM.a ../lib/libSPheno.a
	 mv SPhenoSplitUMSSM ../bin
	 rm SPhenoSplitUMSSM.o  
${name}:  ${name}(Settings.o) ${name}(Model_Data_SplitUMSSM.o)  \
 ${name}(RGEs_SplitUMSSM.o)   \
 ${name}(Couplings_SplitUMSSM.o) ${name}(TreeLevelMasses_SplitUMSSM.o) ${name}(TadpoleEquations_SplitUMSSM.o) \
 ${name}(LoopCouplings_SplitUMSSM.o) ${name}(CouplingsForDecays_SplitUMSSM.o) \
 ${name}(TreeLevel_Decays_SplitUMSSM.o) \
 ${name}(Glu_SplitUMSSM.o)  ${name}(Chi_SplitUMSSM.o)  ${name}(Cha_SplitUMSSM.o)  ${name}(Sd_SplitUMSSM.o)  ${name}(Su_SplitUMSSM.o)  ${name}(Se_SplitUMSSM.o)  ${name}(Sv_SplitUMSSM.o)  \
${name}(AddLoopFunctions.o) ${name}(Kinematics.o) \
 ${name}(EffPotFunctions.o) ${name}(DerivativesEffPotFunctions.o) ${name}(EffectivePotential_SplitUMSSM.o) \
 ${name}(2LPoleFunctions.o) ${name}(2LPole_SplitUMSSM.o) \
 ${name}(LoopMasses_SplitUMSSM.o) \
 ${name}(RGEs_SM_HC.o) ${name}(Couplings_SM_HC.o) ${name}(TreeLevelMasses_SM_HC.o) ${name}(LoopMasses_SM_HC.o)   \
 ${name}(BranchingRatios_SplitUMSSM.o) ${name}(HiggsCS_SplitUMSSM.o) ${name}(RunSM_SplitUMSSM.o) \
${name}(FlavorKit_LFV_SplitUMSSM.o) ${name}(FlavorKit_QFV_SplitUMSSM.o) ${name}(FlavorKit_Observables_SplitUMSSM.o)\
 ${name}(LowEnergy_SplitUMSSM.o) \
 ${name}(Boundaries_SplitUMSSM.o)  ${name}(InputOutput_SplitUMSSM.o) 
else 
	 @echo -------------------------------------------------------------------  
	 @echo ERROR:  
	 @echo The installed SPheno is version not compatibel with this module 
	 @echo Please, upgrade at least to SPheno version 3.3.0.  
	 @echo The current SPheno version can be downloaded from 
	 @echo http://www.hepforge.org/downloads/spheno 
	 @echo ------------------------------------------------------------------- 
endif 
clean: 
	 rm -f *.o *~ */*.o */*~
cleanall: 
	 rm -f bin/SPheno3 lib/*.a *~ */*.o */*~ include/*
#
# Suffix rules
#
.f90.a:
	 ${F90} ${comp} $< 
	 ar -ruc $@ $*.o
	 rm -f $*.o
.F90.a:
	 ${F90} ${comp} ${PreDef} $< 
	 ar -ruc $@ $*.o
	 rm -f $*.o
.f90.o:
	 ${F90} ${comp} $<
.f90.ps:
	 a2ps -o $*.ps $<
.h.ps:
	 a2ps -o $*.ps $<
