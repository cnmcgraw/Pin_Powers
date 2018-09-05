#!/bin/bash
filename="$1"
echo $filename
grep -A19 'Pin Power Map (MeV/s)' $filename >> $2

