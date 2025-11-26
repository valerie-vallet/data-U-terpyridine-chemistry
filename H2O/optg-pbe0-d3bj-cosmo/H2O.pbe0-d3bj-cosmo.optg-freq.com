%mem=8000Mb
%NProc=4
%chk=H2O.pbe0-d3bj-cosmo.optg-freq.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=8) Integral=(Grid=UltraFine)
   Guess=Harris
   Symm=Loose 
   Opt Freq=(Raman, InternalModes)
   SCRF=(COSMO, Solvent=Water, Read)

H2O.pbe0-d3bj-cosmo.optg-freq.chk

 0  1
O 0.0 0.0 0.0
H 0.0 1.0 1.0
H 0.0 1.0 -1.0

O  0
Def2TZVP
****
H  0
Def2TZVP
****

Radii=Klamt

