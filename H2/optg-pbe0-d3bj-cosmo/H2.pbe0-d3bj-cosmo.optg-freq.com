%mem=16000Mb
%NProc=8
%chk=H2.pbe0-d3bj-cosmo.optg-freq.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=8) Integral=(Grid=UltraFine)
   Guess=Harris
   Symm=Loose 
   Opt Freq=(Raman, InternalModes)
   SCRF=(COSMO, Solvent=Water, Read)

HClO4.pbe0-d3bj-cosmo.optg-freq.chk

 0  1
 H     0.000000     0.000000      0.000000
 H     0.000000     0.000000      2.000000

H  0
Def2TZVP
****

Radii=Klamt

