rm Nanumcont.txt Clnumcont.txt
for i in `seq 1 90`;do
A=`echo "$i*0.1"|bc`
echo 1 2 | gmx mindist -f traj.xtc -s md.tpr -on -d $A -b 100010 -e 300000 -group
awk 'NR>24{print $2}' numcont.xvg >> Nanumcont.txt
echo 1 3 | gmx mindist -f traj.xtc -s md.tpr -on -d $A -b 100010 -e 300000 -group
awk 'NR>24{print $2}' numcont.xvg >> Clnumcont.txt
rm "#"*
done
