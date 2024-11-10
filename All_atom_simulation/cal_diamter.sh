echo q | gmx make_ndx -f em.gro -o
echo [ diameter ] >> index.ndx
echo 1 604 34 571 64 539 96 507 128 474 158 442 190 412 223 382 256 352 289 319 >> index.ndx
echo 11 | gmx distance -f traj.xtc -s md.tpr -n -oav -oall -dt 10 -pbc yes -b 10 -e 300000
awk 'NR>24{print $0}' distave.xvg > distave.txt
rm "#"*
