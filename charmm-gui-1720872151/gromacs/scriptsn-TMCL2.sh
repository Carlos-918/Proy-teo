#!/bin/bash

{
echo a cA1 and TMCL2
echo a cA2 and TMCL2
echo a cA3 and TMCL2
echo a cA4 and TMCL2
echo a cA5 and TMCL2
echo a cA6 and TMCL2
echo a cA7 and TMCL2
echo a cA8 and TMCL2
echo a cA9 and TMCL2
echo a cA10 and TMCL2
echo a cA11 and TMCL2
echo a cA12 and TMCL2
echo a cA13 and TMCL2
echo a cA14  and TMCL2 
echo del 0-6 
echo q 
} | gmx make_ndx -f step7_1.tpr -o TMCL2-snA.ndx 

gmx order -s step7_1.tpr -f step7_1.trr -n TMCL2-snA.ndx -d z -od TMCL2_snA.xvg

{
echo  a cB1 and TMCL2
echo a cB2 and TMCL2
echo a cB3 and TMCL2
echo a cB4 and TMCL2
echo a cB5 and TMCL2
echo a cB6 and TMCL2
echo a cB7 and TMCL2
echo a cB8 and TMCL2
echo a cB9 and TMCL2
echo a cB10 and TMCL2
echo a cB11 and TMCL2
echo a cB12 and TMCL2
echo a cB13 and TMCL2
echo a cB14 and TMCL2
echo del 0-6
echo q 
} | gmx make_ndx -f step7_1.tpr -o TMCL2-snB.ndx  

gmx order -s step7_1.tpr -f step7_1.trr -n TMCL2-snB.ndx -d z -od TMCL2_snB.xvg

	
{
echo  a cC1 and TMCL2
echo a cC2 and TMCL2
echo a cC3 and TMCL2
echo a cC4 and TMCL2
echo a cC5 and TMCL2
echo a cC6 and TMCL2
echo a cC7 and TMCL2
echo a cC8 and TMCL2
echo a cC9 and TMCL2
echo a cC10 and TMCL2
echo a cC11 and TMCL2
echo a cC12 and TMCL2
echo a cC13 and TMCL2
echo a cC14 and TMCL2
echo del 0-6
echo q 
} | gmx make_ndx -f step7_1.tpr -o TMCL2-snC.ndx  

gmx order -s step7_1.tpr -f step7_1.trr -n TMCL2-snC.ndx -d z -od TMCL2_snC.xvg


{
echo  a cD1 and TMCL2
echo a cD2 and TMCL2
echo a cD3 and TMCL2
echo a cD4 and TMCL2
echo a cD5 and TMCL2
echo a cD6 and TMCL2
echo a cD7 and TMCL2
echo a cD8 and TMCL2
echo a cD9 and TMCL2
echo a cD10 and TMCL2
echo a cD11 and TMCL2
echo a cD12 and TMCL2
echo a cD13 and TMCL2
echo a cD14 and TMCL2
echo del 0-6
echo q 
} | gmx make_ndx -f step7_1.tpr -o TMCL2-snD.ndx  

gmx order -s step7_1.tpr -f step7_1.trr -n TMCL2-snD.ndx -d z -od TMCL2_snD.xvg

xmgrace TMCL2_snA.xvg TMCL2_snB.xvg TMCL2_snC.xvg TMCL2_snD.xvg
rm TMCL2-snA.ndx  TMCL2-snB.ndx  TMCL2-snC.ndx  TMCL2-snD.ndx 
#xmgrace deuter_sn1.xvg deuter_sn2.xvg
#rm deuter_sn1.xvg deuter_sn2.xvg
