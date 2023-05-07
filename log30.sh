#!/bin/bash
if [ -z "$1" ]
then
  num_files=100
else
  num_files=$1
fi

for i in $(seq 1 $num_files)
do
  echo "Nazwa pliku: log$i.txt" >> log$i.txt
  echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
  echo "Data utworzenia: $(date)" >> log$i.txt
done