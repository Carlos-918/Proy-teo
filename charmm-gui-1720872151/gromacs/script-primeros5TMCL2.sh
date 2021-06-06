#!/bin/bash

{
echo ri 1
echo ri 1-5
echo q 
} | gmx make_ndx -f step7_1.tpr -o Primeros5TMCL2.ndx
echo r_1-5 | gmx trjconv -f step7_1.trr -s step7_1.tpr -n Primeros5TMCL2.ndx -dump 0 -o Primeros5TMCL2.gro
#echo r_1 | gmx convert-tpr -s step7_1.tpr -n Primeros5TMCL2.ndx -o PrimerTMCL2.tpr
echo r_1-5 | gmx trjconv -f step7_1.trr -s step7_1.tpr -n Primeros5TMCL2.ndx -o Primeros5TMCL2.xtc
echo r_1 | gmx trjconv -f step7_1.trr -s step7_1.tpr -n Primeros5TMCL2.ndx -dump 0 -o PrimerTMCL2.gro
gmx grompp -f clustsize.mdp -o Primeros5TMCL2.tpr -c Primeros5TMCL2.gro -r PrimerTMCL2.gro -p clustsize.top -maxwarn 1
