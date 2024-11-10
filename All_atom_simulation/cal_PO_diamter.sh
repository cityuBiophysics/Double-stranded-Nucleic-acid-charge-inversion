echo a 1 2 3 > tmpq
echo a 34 35 36 >> tmpq
echo a 64 65 66 >> tmpq
echo a 96 97 98 >> tmpq
echo a 128 129 130 >> tmpq
echo a 158 159 160 >> tmpq
echo a 190 191 192 >> tmpq
echo a 223 224 225 >> tmpq
echo a 256 257 258 >> tmpq
echo a 289 290 291 >> tmpq
echo a 319 320 321 >> tmpq
echo a 352 353 354 >> tmpq
echo a 382 383 384 >> tmpq
echo a 412 413 414 >> tmpq
echo a 442 443 444 >> tmpq
echo a 474 475 476 >> tmpq
echo a 507 508 509 >> tmpq
echo a 539 540 541 >> tmpq
echo a 571 572 573 >> tmpq
echo a 604 605 606 >> tmpq
echo name 11 PO1 >> tmpq
echo name 12 PO2 >> tmpq
echo name 13 PO3 >> tmpq
echo name 14 PO4 >> tmpq
echo name 15 PO5 >> tmpq
echo name 16 PO6 >> tmpq
echo name 17 PO7 >> tmpq
echo name 18 PO8 >> tmpq
echo name 19 PO9 >> tmpq
echo name 20 PO10 >> tmpq
echo name 21 PO11 >> tmpq
echo name 22 PO12 >> tmpq
echo name 23 PO13 >> tmpq
echo name 24 PO14 >> tmpq
echo name 25 PO15 >> tmpq
echo name 26 PO16 >> tmpq
echo name 27 PO17 >> tmpq
echo name 28 PO18 >> tmpq
echo name 29 PO19 >> tmpq
echo name 30 PO20 >> tmpq
echo q >> tmpq
gmx make_ndx -f em.gro -o < tmpq
for i in `seq 1 10`;do
gmx distance -f traj.xtc -s md.tpr -n -select "com of group $[i+10] plus com of group $[31-i]" -oav -pbc yes -b 0 -e 130000
awk 'NR>25{print $0}' distave.xvg > distave$i.txt
done
rm "#"*
