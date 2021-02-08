#!/bin/sh

ar1=(ela1 ela2 ela3)
ar2=(b1 b2 b3 b4 b5)
ar3=(c1 12)

count=0

for ind1 in ${!ar1[*]}
do
	
	printf "%d>%s : %s\n" $count $ind1 ${ar1[$ind1]}
	((count=count+1))
	for ind2 in ${!ar2[*]}
	do
		printf "%d>\t%s : %s\n" $count $ind2 ${ar2[$ind2]}
		((count=count+1))
		for ind3 in ${!ar3[*]}
		do
			printf "%d>\t\t%s : %s\n" $count $ind3 ${ar3[$ind3]}
			((count=count+1))
		done
	done
done
