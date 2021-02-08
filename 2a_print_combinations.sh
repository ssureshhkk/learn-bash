#!/bin/sh

ar1=(ela1 ela2 ela3)
ar2=(b1 b2 b3 b4 b5)
ar3=(c1 c2)

count=1

for ind1 in ${!ar1[*]}
do
	for ind2 in ${!ar2[*]}
	do
		for ind3 in ${!ar3[*]}
		do
			printf "%d> %s_%s_%s \n" $count ${ar1[$ind1]} ${ar2[$ind2]} ${ar3[$ind3]}
			((count=count+1))
		done
	done
done
