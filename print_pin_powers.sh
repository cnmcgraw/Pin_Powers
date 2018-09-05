#!/bin/bash
filename="$1"
for a in `seq 2 19`;
do
  line=$(grep -A$a 'Pin Power Map (MeV/s)' $filename)
  line=${line##*]}
  num=21
  b=$(($a + $num))
  newline=$(grep -A$b 'Pin Power Map (MeV/s)' $filename)
  newline=${newline##*]}
  newline=${newline:1:16}
  newnewline=$line$newline
  echo $newnewline >> $2
done

