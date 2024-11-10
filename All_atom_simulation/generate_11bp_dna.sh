mkdir new_11bp_pdb/
while read number boxz
do
echo $number
grep "[[:space:]]A[[:space:]]\{2\}" curves_twist_pdb/dnaMD$number.pdb | awk '{printf("%4s%7d%5s%4s%2s%4d%12.3f%8.3f%8.3f%6.2f%6.2f%12s\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12)}' > new_11bp_pdb/dnaMD$number.pdb
grep "DG[[:space:]]A[[:space:]]\{3\}1" curves_twist_pdb/dnaMD$number.pdb | awk -v h=$boxz '{printf("%4s%7d%5s%4s%2s%4d%12.3f%8.3f%8.3f%6.2f%6.2f%12s\n",$1,$2,$3,$4,$5,11,$7,$8,$9-h,$10,$11,$12)}' >> new_11bp_pdb/dnaMD$number.pdb
grep "DC[[:space:]]B[[:space:]]\{2\}20" curves_twist_pdb/dnaMD$number.pdb | awk -v h=$boxz '{printf("%4s%7d%5s%4s%2s%4d%12.3f%8.3f%8.3f%6.2f%6.2f%12s\n",$1,$2,$3,$4,$5,12,$7,$8,$9-h,$10,$11,$12)}' >> new_11bp_pdb/dnaMD$number.pdb
grep "[[:space:]]B[[:space:]]\{2\}" curves_twist_pdb/dnaMD$number.pdb | awk '{printf("%4s%7d%5s%4s%2s%4d%12.3f%8.3f%8.3f%6.2f%6.2f%12s\n",$1,$2,$3,$4,$5,$6+2,$7,$8,$9,$10,$11,$12)}' >> new_11bp_pdb/dnaMD$number.pdb
done
