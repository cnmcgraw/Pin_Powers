#!/bin/bash
filename="$1"
line=$(grep -A19 'Pin Power Map (MeV/s)' $filename)
line=${line##*]}
for a in `seq 2 19`;
do
  newline=$(line[$a] + line[$(($a + 18))])
  echo ${newline##*]} >> $2
done
