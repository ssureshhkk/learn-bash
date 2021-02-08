#!/bin/sh

#for var in {1..$3}
#do
#echo -e "https://www.elections.tn.gov.in/SSR2021_20012021/dt$2/ac$1/ac$1$3.pdf"
#wget https://www.elections.tn.gov.in/SSR2021_20012021/dt$2/ac$1/ac$1$3.pdf
#done

num=$3
ac=$(printf "%03d" $1)
for ((var=001;var<=num;var++))
do
	
	foo=$(printf "%03d" $var)
	#echo "${foo}"
	
	#echo ${var}	
	echo -e "https://www.elections.tn.gov.in/SSR2021_20012021/dt$2/ac$ac/ac$ac${foo}.pdf"
	#wget "https://www.elections.tn.gov.in/SSR2021_20012021/dt$2/ac$1/ac$1$3.pdf
done
