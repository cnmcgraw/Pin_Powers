#!/bin/bash
filename="$1"
echo $filename
while read -r line
do
    if(line=='[0]              Pin Power Map (MeV/s)')
    then
      for i in `seq 1 16`;
      do
          num=3
          j=$(($i+$num))
          grep -A$j 'Pin Power Map (MeV/s)' $filename | tail -n1 >> $2
      done
    fi
done < "$filename"

