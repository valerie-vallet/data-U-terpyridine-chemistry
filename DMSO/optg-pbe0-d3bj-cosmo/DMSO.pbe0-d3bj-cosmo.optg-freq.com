%mem=8000Mb
%NProc=4
%chk=DMSO.pbe0-d3bj-cosmo.optg-freq.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=8) Integral=(Grid=UltraFine)
   Guess=CheckPoint
   Geom=CheckPoint
   Symm=Loose 
   Opt=(ReadFc) Freq=(Raman, InternalModes)
   SCRF=(COSMO, Solvent=Water, Read)

DMSO.pbe0-d3bj-cosmo.optg-freq.chk

 0  1

S  0
Def2TZVP
****
O  0
Def2TZVP
****
C  0
Def2TZVP
****
H  0
Def2TZVP
****

Radii=Klamt

