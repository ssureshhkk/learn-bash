#!/bin/sh

while IFS=, read -r f1 f2 f3
do
    #/home/suresh/work/scripts/ac_pdf/1.sh $f1 $f2 $f3
    echo -e `/home/suresh/work/scripts/ac_pdf/2a.sh $f1 $f2 $f3 &` >> download_list
done < sheet1.csv
