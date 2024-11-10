 gmx grompp -f em.mdp -c water.gro -p topol.top -o ions.tpr -maxwarn 1
 echo 3 | gmx genion -s ions.tpr -o ion.gro -p topol.top  -nname CL -nn 809 -pname CS -np 829
 cp topol.top ion.top
