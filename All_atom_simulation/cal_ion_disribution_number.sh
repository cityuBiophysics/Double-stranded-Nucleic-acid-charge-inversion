 echo "a O1P" > tmpq
 echo "a O2P" >> tmpq
 echo "r DG & a N7" >> tmpq
 echo "r DG & a O6" >> tmpq
 echo "r DA & a N7" >> tmpq
 echo "r DT & a O4" >> tmpq
 echo "r DT & a O2" >> tmpq
 echo "r DC & a O2" >> tmpq
 echo q >> tmpq
 gmx make_ndx -f em.gro -o < tmpq

for i in `seq 1 8`;do
 echo $(($i+10)) 2 | gmx mindist -f traj.xtc -s md.tpr -n -on -group yes -b 100010 -e 300000 -d 0.3
 awk 'NR>24{print $2}' numcont.xvg > Cs_numcount$i.txt
 rm "#"*
done
