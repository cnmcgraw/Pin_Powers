#!/bin/bash
filename="$1"
echo $filename
while read -r line
do
    if(line=='[0]              Pin Power Map (MeV/s)')
    then
      for i in `seq 1 10`;
      do
          j=$i+2
          grep -A$j 'Pin Power Map (MeV/s)' $filename >> $2
      done
    fi
done < "$filename"

