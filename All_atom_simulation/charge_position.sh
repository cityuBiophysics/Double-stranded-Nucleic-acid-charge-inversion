mkdir Z_a/
for i in `seq 10001 30000`; do
        echo $i
        grep 'ATOM' curves_twist_pdb/dnaMD$i.pdb | cut -c 31-54  > Z_a/a$i.txt
        cut -c 1-8   Z_a/a$i.txt > c1.txt
        cut -c 9-16   Z_a/a$i.txt > c2.txt
        cut -c 17-24   Z_a/a$i.txt > c3.txt
        paste -d ' ' c1.txt c2.txt > c4.txt
        paste -d ' ' c4.txt c3.txt >> charge.txt
done
rm -r c[1234].txt Z_a/
