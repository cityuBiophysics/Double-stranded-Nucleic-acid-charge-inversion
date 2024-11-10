echo 19 20 21 0 | gmx energy -f -o box.xvg -b 100010 -e 300000
awk 'NR>26{print $0}' box.xvg > box.txt
