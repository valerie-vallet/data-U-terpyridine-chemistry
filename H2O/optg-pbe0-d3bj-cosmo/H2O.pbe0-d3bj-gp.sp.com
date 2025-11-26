%mem=8000Mb
%NProc=4
%oldchk=H2O.pbe0-d3bj-cosmo.optg-freq.chk
%chk=H2O.pbe0-d3bj-gp.sp.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=8) Integral=(Grid=UltraFine)
   Guess=CheckPoint
   Geom=CheckPoint
   Symm=Loose 

H2O.pbe0-d3bj-cosmo.optg-freq.chk

 0  1

O  0
Def2TZVP
****
H  0
Def2TZVP
****

Radii=Klamt

