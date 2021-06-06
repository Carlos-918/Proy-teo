#!/bin/bash

{
echo ri 1
echo ri 1-26
echo q 
} | gmx make_ndx -f step7_1.tpr -o Primeros26TMCL2.ndx
echo r_1-26 | gmx trjconv -f step7_1.trr -s step7_1.tpr -n Primeros26TMCL2.ndx -dump 0 -o Primeros26TMCL2.gro
#echo r_1 | gmx convert-tpr -s step7_1.tpr -n Primeros26TMCL2.ndx -o PrimerTMCL2.tpr
echo r_1-26 | gmx trjconv -f step7_1.trr -s step7_1.tpr -n Primeros26TMCL2.ndx -o Primeros26TMCL2.xtc
echo r_1-26 | gmx trjconv -f step7_1.trr -s step7_1.tpr -n Primeros26TMCL2.ndx -dump 0 -o Primeros26TMCL2.gro
gmx grompp -f clustsize.mdp -o Primeros26TMCL2.tpr -c Primeros26TMCL2.gro -r Primerros26TMCL2.gro -p clustsize.top -maxwarn 1
