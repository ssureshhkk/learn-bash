#!/bin/sh

ar1=(ela1 ela2 ela3 ela4)
ar2=(elb1 elb2 elb3 elb4)
ar3=(elc1 elc2 elc3 elc4)

echo ${ar1[0]} ${ar2[2]} ${ar3[3]} ${ar2[1]}

echo "Array size ar1 : ${#ar1[*]}"
echo "Array size ar1 : ${#ar2[*]}"
echo "Array size ar1 : ${#ar3[*]}"


echo "Array items:"
for item in ${ar1[*]}
do
    printf "   %s\n" $item
done

echo "Array indexes:"
for index in ${!ar2[*]}
do
    printf "   %d\n" $index
done

echo "Array items and indexes:"
for index in ${!ar3[*]}
do
    printf "%4d: %s\n" $index ${ar3[$index]}
done
