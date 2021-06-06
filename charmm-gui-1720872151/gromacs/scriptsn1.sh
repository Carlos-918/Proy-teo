#!/bin/bash

{
echo a c21
echo a c22
echo a c23
echo a c24
echo a c25
echo a c26
echo a c27
echo a c28
echo a c29
echo a c210
echo a c211
echo a c212
echo a c213
echo a c214  
echo del 0-6
echo q 
} | gmx make_ndx -f step7_1.tpr -o sn1.ndx 

gmx order -s step7_1.tpr -f step7_1.trr -n sn1.ndx -d z -od deuter_sn1.xvg

{
echo  a c31 \& r DMPG 
echo a c32 \& r DMPG
echo a c33 \& r DMPG
echo a c34
echo a c35
echo a c36
echo a c37
echo a c38
echo a c39
echo a c310
echo a c311
echo a c312
echo a c313
echo a c314
echo del 0-6
echo q 
} | gmx make_ndx -f step7_1.tpr -o sn2.ndx  

gmx order -s step7_1.tpr -f step7_1.trr -n sn2.ndx -d z -od deuter_sn2.xvg
xmgrace deuter_sn1.xvg deuter_sn2.xvg
#rm deuter_sn1.xvg deuter_sn2.xvg
