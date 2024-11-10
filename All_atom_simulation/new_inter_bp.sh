for i in `seq 1 13000`; do
  echo $i
  cp new_11bp_pdb/dnaMD$i.pdb dna.pdb
./../../../../../curves+/Cur+ <<!
&inp file=dna, lis=dnaout,
 lib=../../../../../curves+/standard, &end
2 1 -1 0 0
1:11
22:12
!

awk  '(NR>65 && NR<76){print $7 "\t" $10 "\t" $11 "\t" $12}' dnaout.lis >> new_inter_bp.txt
rm dna*
done
