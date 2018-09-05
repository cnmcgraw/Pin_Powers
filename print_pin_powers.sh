#!/bin/bash
filename="$1"
for i in `seq 1 19`;
do
  line=$(grep -A$i 'Pin Power Map (MeV/s)' $filename | tail -n1)
  echo ${line##*]} >> $2
done
