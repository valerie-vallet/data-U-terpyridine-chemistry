%oldchk=U_IV_DMSO_8.pbe0-d3bj-cosmo.optg-freq.chk
%chk=U_IV_DMSO_8.pbe0-d3bj-gp.sp.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=8) Integral=(Grid=UltraFine)
   Pseudo=Read
   Guess=CheckPoint
   Geom=CheckPoint
   Symm=Loose 

U_IV_DMSO_8.pbe0-d3bj-gp.sp.chk

 4  3

!input file for basis set of U
@/lustre/fshomisc/home/rech/genphl01/rdmp523/basis.gaussian/U-ECP60MWB_SEG/N
****
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

!input file for ECP for U
@/lustre/fshomisc/home/rech/genphl01/rdmp523/basis.gaussian/U-ECP60MWB/N

Radii=Klamt

