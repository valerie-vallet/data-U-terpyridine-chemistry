%mem=64000Mb
%NProc=16
%oldchk=compound1.pbe0-d3bj-cosmo.optg-freq.chk
%chk=compound1.pbe0-d3bj-cosmo.NLMOs.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=7) Integral=(Grid=UltraFine)
   Pseudo=Read
   Guess=CheckPoint
   Geom=CheckPoint
   Symm=Loose 
   Pop=(NBO7Read, SaveNLMOs)
   SCRF=(COSMO, Solvent=Water, Read)

compound1.pbe0-d3bj.QTAIM.chk

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

$NBO
AONLMO
BNDIDX
$END

--Link1--
%mem=64000Mb
%NProc=16
%chk=compound1.pbe0-d3bj-cosmo.NLMOs.chk
#p PBE1PBE/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   EmpiricalDispersion=GD3BJ
   Scf=(NoVarAcc,MaxCycle=200,conver=7) Integral=(Grid=UltraFine)
   Pseudo=Read
   Geom=CheckPoint
   Guess=(CheckPoint, Only)
   Symm=Loose 
   Output=WFX
   SCRF=(COSMO, Solvent=Water, Read)

compound1.pbe0-d3bj.QTAIM.chk

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

compound1.pbe0-d3bj-cosmo.NLMOs.wfx

