%mem=64000Mb
%NProc=16
%oldchk=compound2.pbe0-d3bj-cosmo.freq.chk
%chk=compound2.pbe0-d3bj-cosmo.QTAIM.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=7) Integral=(Grid=UltraFine)
   Pseudo=Read
   Guess=CheckPoint
   Geom=CheckPoint
   Symm=Loose 
   SCRF=(COSMO, Solvent=Water, Read)
   Output=WFX

compound2.pbe0-d3bj.QTAIM.chk

 2  1

!input file for basis set of U
@/home/pcmt/basis.gaussian/U-ECP60MWB_SEG/N
****
S  0
Def2TZVP
****
O  0
Def2TZVP
****
N  0
Def2TZVP
****
C  0
Def2TZVP
****
H  0
Def2TZVP
****

!input file for ECP for U
@/home/pcmt/basis.gaussian/U-ECP60MWB/N

Radii=Klamt

compound2.pbe0-d3bj-cosmo.QTAIM.wfx

