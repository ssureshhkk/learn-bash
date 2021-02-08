#!/bin/sh

while IFS=, read -r f1 f2 f3
do
    echo "$f1 == $f2 == $f3"
done < sheet1.csv
