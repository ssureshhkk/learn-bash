#!/bin/sh

# file modulation_datarate_rolloff_freq

ar1=(bpsk qpsk oqpsk)
ar2=(64 128 256 1024 2048)
ar3=(0.35 0.25 0.20 0.15 0.10 0.05)
batch="batch1"
count=1

for ind1 in ${!ar1[*]}
do
	for ind2 in ${!ar2[*]}
	do
		for ind3 in ${!ar3[*]}
		do
			printf "%d> %s_%d_%s_%s_%s.iq \n" $count $batch $count ${ar1[$ind1]} ${ar2[$ind2]} ${ar3[$ind3]}
			((count=count+1))
		done
	done
done
