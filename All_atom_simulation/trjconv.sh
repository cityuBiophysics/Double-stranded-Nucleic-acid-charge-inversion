mkdir curves_twist_pdb/
echo 6 | gmx trjconv -f traj.xtc -s md.tpr -n -o ./curves_twist_pdb/dnaMD.pdb -sep -b 0 -e 300000
mkdir curves_twist_analysis/
mv curves_twist_pdb/ curves_twist_analysis/
rm "#"*
