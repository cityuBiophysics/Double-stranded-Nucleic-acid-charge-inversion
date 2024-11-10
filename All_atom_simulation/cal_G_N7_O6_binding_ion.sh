echo "a 16 205 238 271 334 489 586" > tmpq
echo "a 19 208 241 274 337 492 589" >> tmpq
echo q >> tmpq
gmx make_ndx -f em.gro -o < tmpq
echo 9 2 | gmx mindist -f traj.xtc -s md.tpr -n -on -b 100010 -e 300000 -pbc yes -group yes -d 0.4
awk 'NR>24{print $2}' numcont.xvg > G_N7_binding_ion_number.txt
echo 10 2 | gmx mindist -f traj.xtc -s md.tpr -n -on -b 100010 -e 300000 -pbc yes -group yes -d 0.37
awk 'NR>24{print $2}' numcont.xvg > G_O6_binding_ion_number.txt
rm "#"*
