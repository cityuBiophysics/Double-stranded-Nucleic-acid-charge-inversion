 echo "a P O1P O2P" > tmpq
 echo q >> tmpq
 gmx make_ndx -f em.gro -o < tmpq

 echo 11 2 | gmx mindist -f traj.xtc -s md.tpr -n -on -group yes -b 100010 -e 300000 -d 0.6
 awk 'NR>24{print $2}' numcont.xvg > phosphate_Cs_numcount.txt

 echo 1 2 | gmx mindist -f traj.xtc -s md.tpr -n -on -group yes -b 100010 -e 300000 -d 0.6
 awk 'NR>24{print $2}' numcont.xvg > DNA_Cs_numcount.txt
 rm "#"*

