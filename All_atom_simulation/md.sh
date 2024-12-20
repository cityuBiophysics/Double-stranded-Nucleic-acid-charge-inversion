 gmx grompp -f em.mdp -c ion.gro -p ion.top -o em.tpr
 gmx mdrun -v -s em.tpr -o -c em.gro -nt 12

 echo q | gmx make_ndx -f em.gro -o

 gmx grompp -f NVT.mdp -c em.gro -p ion.top -o NVT.tpr -r em.gro -n
 gmx mdrun -v -s NVT.tpr -o -c NVT.gro -x traj.xtc -ntomp 12

 gmx grompp -f NPT.mdp -c NVT.gro -p ion.top -o NPT.tpr -r NVT.gro -n
 gmx mdrun -v -s NPT.tpr -o -c NPT.gro -x traj.xtc -ntomp 12

 gmx grompp -f md.mdp -c NPT.gro -p ion.top -o md.tpr -n -maxwarn 1
 gmx mdrun -v -s md.tpr -o -c md.gro -x traj.xtc -e -g -ntomp 12
