#!/bin/bash   

OUTPUT="csamples.txt"

grep -E "^1/2/2007" household_power_consumption.txt > sample_1_2_2007.txt
grep -E "^2/2/2007" household_power_consumption.txt > sample_2_2_2007.txt

head -n1 household_power_consumption.txt > $OUTPUT
cat sample_1_2_2007.txt >> $OUTPUT; cat sample_2_2_2007.txt >> $OUTPUT

echo "SAMPLE WRITEN TO: $OUTPUT"
