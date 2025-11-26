%mem=16000Mb
%NProc=8
%oldchk=HClO4.pbe0-d3bj-cosmo.optg-freq.chk
%chk=HClO4.pbe0-d3bj-gp.sp.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=8) Integral=(Grid=UltraFine)
   Guess=CheckPoint
   Geom=CheckPoint
   Symm=Loose 

HClO4.pbe0-d3bj-cosmo.optg-freq.chk

 0  1

Cl  0
Def2TZVP
****
O  0
Def2TZVP
****
H  0
Def2TZVP
****

