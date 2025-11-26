%mem=16000Mb
%NProc=8
%chk=HClO4.pbe0-d3bj-cosmo.optg-freq.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=8) Integral=(Grid=UltraFine)
   Guess=Harris
   Symm=Loose 
   Opt Freq=(Raman, InternalModes)
   SCRF=(COSMO, Solvent=Water, Read)

HClO4.pbe0-d3bj-cosmo.optg-freq.chk

 0  1
 O     1.401296    -0.094501    -0.477100
Cl     0.091812     0.370140    -0.274113
 O    -0.898704    -0.196151    -1.073934
 O    -0.089567     0.220195     1.105966
 O     0.344301     1.745552    -0.341138
 H    -0.421544     2.313918    -0.308851

Cl  0
Def2TZVP
****
O  0
Def2TZVP
****
H  0
Def2TZVP
****

Radii=Klamt

