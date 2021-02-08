#!/bin/sh

num=$3
ac=$(printf "%03d" $1)
for ((var=001;var<=num;var++))
do
	foo=$(printf "%03d" $var)
	#echo -e "https://www.elections.tn.gov.in/SSR2021_20012021/dt$2/ac$ac/ac$ac${foo}.pdf"
	
	FILE="/home/suresh/work/scripts/ac_pdf/out/district$2/assembly$ac/ac$ac${foo}.pdf"
	if [[ -f "$FILE" ]]; then
		echo "$FILE exists"
	else
		echo "$FILE no exists"
		wget https://www.elections.tn.gov.in/SSR2021_20012021/dt$2/ac$ac/ac$ac${foo}.pdf -P /home/suresh/work/scripts/ac_pdf/out/district$2/assembly$ac/
	fi
	
	#wget https://www.elections.tn.gov.in/SSR2021_20012021/dt$2/ac$ac/ac$ac${foo}.pdf -P /home/suresh/work/scripts/ac_pdf/out/district$2/assembly$ac/
done
