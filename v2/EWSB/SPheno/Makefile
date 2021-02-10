modname = NonUMSSM  # as an example  
PreDef = -DGENERATIONMIXING -DONLYDOUBLE
# setting various paths  
InDir = ../include
Mdir = ${InDir}
VPATH = 3-Body-Decays:LoopDecays:TwoLoopMasses:Observables:SM 
name = ../lib/libSPhenoNonUMSSM.a
 
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
bin/SPhenoNonUMSSM:
ifeq (${cVersion},1)
	 cd ../src ; ${MAKE} F90=${F90} 
	 ${MAKE} F90=${F90} ${name} 
	 ${MAKE} F90=${F90} SPhenoNonUMSSM.o 
	 ${F90} -o SPhenoNonUMSSM ${LFlagsB} SPhenoNonUMSSM.o ../lib/libSPhenoNonUMSSM.a ../lib/libSPheno.a
	 mv SPhenoNonUMSSM ../bin
	 rm SPhenoNonUMSSM.o  
${name}:  ${name}(Settings.o) ${name}(Model_Data_NonUMSSM.o)  \
 ${name}(RGEs_NonUMSSM.o)   \
 ${name}(Couplings_NonUMSSM.o) ${name}(TreeLevelMasses_NonUMSSM.o) ${name}(TadpoleEquations_NonUMSSM.o) \
 ${name}(LoopCouplings_NonUMSSM.o) ${name}(CouplingsForDecays_NonUMSSM.o) \
 ${name}(TreeLevel_Decays_NonUMSSM.o) \
 ${name}(Glu_NonUMSSM.o)  ${name}(Chi_NonUMSSM.o)  ${name}(Cha_NonUMSSM.o)  ${name}(Sd_NonUMSSM.o)  ${name}(Su_NonUMSSM.o)  ${name}(Se_NonUMSSM.o)  ${name}(Sv_NonUMSSM.o)  \
${name}(AddLoopFunctions.o) ${name}(Kinematics.o) \
 ${name}(EffPotFunctions.o) ${name}(DerivativesEffPotFunctions.o) ${name}(EffectivePotential_NonUMSSM.o) \
 ${name}(2LPoleFunctions.o) ${name}(2LPole_NonUMSSM.o) \
 ${name}(LoopMasses_NonUMSSM.o) \
 ${name}(RGEs_SM_HC.o) ${name}(Couplings_SM_HC.o) ${name}(TreeLevelMasses_SM_HC.o) ${name}(LoopMasses_SM_HC.o)   \
${name}(CouplingsCT_NonUMSSM.o) \
${name}(Bremsstrahlung.o) ${name}(DecayFFS.o) ${name}(DecayFFV.o) ${name}(DecaySSS.o) ${name}(DecaySSV.o) ${name}(DecaySFF.o) ${name}(DecaySVV.o) \
 ${name}(LoopDecaySd_NonUMSSM.o)  ${name}(LoopDecaySu_NonUMSSM.o)  ${name}(LoopDecaySe_NonUMSSM.o)  ${name}(LoopDecaySv_NonUMSSM.o)  ${name}(LoopDecayhh_NonUMSSM.o)  ${name}(LoopDecayAh_NonUMSSM.o)  ${name}(LoopDecayHpm_NonUMSSM.o)  ${name}(LoopDecayGlu_NonUMSSM.o)  ${name}(LoopDecayChi_NonUMSSM.o)  ${name}(LoopDecayCha_NonUMSSM.o)  ${name}(LoopDecayFu_NonUMSSM.o) \
 ${name}(Wrapper_LoopDecay_Sd_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_Su_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_Se_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_Sv_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_hh_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_Ah_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_Hpm_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_Glu_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_Chi_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_Cha_NonUMSSM.o)  ${name}(Wrapper_LoopDecay_Fu_NonUMSSM.o) ${name}(OneLoopDecays_NonUMSSM.o) \
 ${name}(BranchingRatios_NonUMSSM.o) ${name}(HiggsCS_NonUMSSM.o) ${name}(RunSM_NonUMSSM.o) \
${name}(FlavorKit_LFV_NonUMSSM.o) ${name}(FlavorKit_QFV_NonUMSSM.o) ${name}(FlavorKit_Observables_NonUMSSM.o)\
 ${name}(LowEnergy_NonUMSSM.o) \
 ${name}(Boundaries_NonUMSSM.o)  ${name}(InputOutput_NonUMSSM.o) 
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
