echo "a 130912" > tmpq
echo "a OW" >> tmpq
echo q >> tmpq
gmx make_ndx -f em.gro -o < tmpq
echo 11 > tmprdf
echo 12 >> tmprdf
gmx rdf -f traj.xtc -s md.tpr -n -o -b 100010 -e 300000 < tmprdf
awk 'NR>25{print $0}' rdf.xvg >> rdf_ion_water_shell.txt
rm "#"
