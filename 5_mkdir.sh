#!/bin/sh

for ((var=001;var<=2;var++))
do
	foo=$(printf "%03d" $var)
	mkdir -p ac${foo}
	mv ac${foo}*.pdf  ac${foo}/
done
