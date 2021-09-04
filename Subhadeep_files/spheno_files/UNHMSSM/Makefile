modname = UNHMSSM  # as an example  
PreDef = -DGENERATIONMIXING -DONLYDOUBLE
# setting various paths  
InDir = ../include
Mdir = ${InDir}
VPATH = 3-Body-Decays:LoopDecays:TwoLoopMasses:Observables:SM 
name = ../lib/libSPhenoUNHMSSM.a
 
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
bin/SPhenoUNHMSSM:
ifeq (${cVersion},1)
	 cd ../src ; ${MAKE} F90=${F90} 
	 ${MAKE} F90=${F90} ${name} 
	 ${MAKE} F90=${F90} SPhenoUNHMSSM.o 
	 ${F90} -o SPhenoUNHMSSM ${LFlagsB} SPhenoUNHMSSM.o ../lib/libSPhenoUNHMSSM.a ../lib/libSPheno.a
	 mv SPhenoUNHMSSM ../bin
	 rm SPhenoUNHMSSM.o  
${name}:  ${name}(Settings.o) ${name}(Model_Data_UNHMSSM.o)  \
 ${name}(RGEs_UNHMSSM.o)   \
 ${name}(Couplings_UNHMSSM.o) ${name}(TreeLevelMasses_UNHMSSM.o) ${name}(TadpoleEquations_UNHMSSM.o) \
 ${name}(LoopCouplings_UNHMSSM.o) ${name}(CouplingsForDecays_UNHMSSM.o) \
 ${name}(TreeLevel_Decays_UNHMSSM.o) \
 ${name}(Glu_UNHMSSM.o)  ${name}(Chi_UNHMSSM.o)  ${name}(Cha_UNHMSSM.o)  ${name}(Sd_UNHMSSM.o)  ${name}(Su_UNHMSSM.o)  ${name}(Se_UNHMSSM.o)  ${name}(Sv_UNHMSSM.o)  \
${name}(AddLoopFunctions.o) ${name}(Kinematics.o) \
 ${name}(EffPotFunctions.o) ${name}(DerivativesEffPotFunctions.o) ${name}(EffectivePotential_UNHMSSM.o) \
 ${name}(2LPoleFunctions.o) ${name}(2LPole_UNHMSSM.o) \
 ${name}(LoopMasses_UNHMSSM.o) \
 ${name}(RGEs_SM_HC.o) ${name}(Couplings_SM_HC.o) ${name}(TreeLevelMasses_SM_HC.o) ${name}(LoopMasses_SM_HC.o)   \
 ${name}(BranchingRatios_UNHMSSM.o) ${name}(HiggsCS_UNHMSSM.o) ${name}(RunSM_UNHMSSM.o) \
${name}(FlavorKit_LFV_UNHMSSM.o) ${name}(FlavorKit_QFV_UNHMSSM.o) ${name}(FlavorKit_Observables_UNHMSSM.o)\
 ${name}(LowEnergy_UNHMSSM.o) \
 ${name}(Boundaries_UNHMSSM.o)  ${name}(InputOutput_UNHMSSM.o) 
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
	 ar -ruc -U $@ $*.o
	 rm -f $*.o
.F90.a:
	 ${F90} ${comp} ${PreDef} $< 
	 ar -ruc -U $@ $*.o
	 rm -f $*.o
.f90.o:
	 ${F90} ${comp} $<
.f90.ps:
	 a2ps -o $*.ps $<
.h.ps:
	 a2ps -o $*.ps $<
