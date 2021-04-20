modname = NonUMSSMv4  # as an example  
PreDef = -DGENERATIONMIXING -DONLYDOUBLE
# setting various paths  
InDir = ../include
Mdir = ${InDir}
VPATH = 3-Body-Decays:LoopDecays:TwoLoopMasses:Observables:SM 
name = ../lib/libSPhenoNonUMSSMv4.a
 
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
bin/SPhenoNonUMSSMv4:
ifeq (${cVersion},1)
	 cd ../src ; ${MAKE} F90=${F90} 
	 ${MAKE} F90=${F90} ${name} 
	 ${MAKE} F90=${F90} SPhenoNonUMSSMv4.o 
	 ${F90} -o SPhenoNonUMSSMv4 ${LFlagsB} SPhenoNonUMSSMv4.o ../lib/libSPhenoNonUMSSMv4.a ../lib/libSPheno.a
	 mv SPhenoNonUMSSMv4 ../bin
	 rm SPhenoNonUMSSMv4.o  
${name}:  ${name}(Settings.o) ${name}(Model_Data_NonUMSSMv4.o)  \
 ${name}(RGEs_NonUMSSMv4.o)   \
 ${name}(Couplings_NonUMSSMv4.o) ${name}(TreeLevelMasses_NonUMSSMv4.o) ${name}(TadpoleEquations_NonUMSSMv4.o) \
 ${name}(LoopCouplings_NonUMSSMv4.o) ${name}(CouplingsForDecays_NonUMSSMv4.o) \
 ${name}(TreeLevel_Decays_NonUMSSMv4.o) \
 ${name}(Glu_NonUMSSMv4.o)  ${name}(Chi_NonUMSSMv4.o)  ${name}(Cha_NonUMSSMv4.o)  ${name}(Sd_NonUMSSMv4.o)  ${name}(Su_NonUMSSMv4.o)  ${name}(Se_NonUMSSMv4.o)  ${name}(Sv_NonUMSSMv4.o)  \
${name}(AddLoopFunctions.o) ${name}(Kinematics.o) \
 ${name}(EffPotFunctions.o) ${name}(DerivativesEffPotFunctions.o) ${name}(EffectivePotential_NonUMSSMv4.o) \
 ${name}(2LPoleFunctions.o) ${name}(2LPole_NonUMSSMv4.o) \
 ${name}(LoopMasses_NonUMSSMv4.o) \
 ${name}(RGEs_SM_HC.o) ${name}(Couplings_SM_HC.o) ${name}(TreeLevelMasses_SM_HC.o) ${name}(LoopMasses_SM_HC.o)   \
 ${name}(BranchingRatios_NonUMSSMv4.o) ${name}(HiggsCS_NonUMSSMv4.o) ${name}(RunSM_NonUMSSMv4.o) \
${name}(FlavorKit_LFV_NonUMSSMv4.o) ${name}(FlavorKit_QFV_NonUMSSMv4.o) ${name}(FlavorKit_Observables_NonUMSSMv4.o)\
 ${name}(LowEnergy_NonUMSSMv4.o) \
 ${name}(Boundaries_NonUMSSMv4.o)  ${name}(InputOutput_NonUMSSMv4.o) 
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
