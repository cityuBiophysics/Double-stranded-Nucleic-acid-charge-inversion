echo 1 | gmx traj -f traj.xtc -s md.tpr -n -ox coord.xvg -com -b 100010 -e 300000
awk 'NR>26{print $0}' coord.xvg > coord.txt
