for i in `seq 1 30000`; do
  echo $i
  cp curves_twist_pdb/dnaMD$i.pdb dna.pdb
./../../../../../curves+/Cur+ <<!
&inp file=dna, lis=dnaout,
 lib=../../../../../curves+/standard, &end
2 1 -1 0 0
1:10
20:11
!

awk  '(NR>63 && NR<73){print $11 "\t" $12}' dnaout.lis >> curves_inter_bp.txt
rm dna*
done
