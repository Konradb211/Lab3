#!/bin/bash
for i in {1..100}
do
  echo "Nazwa pliku: log$i.txt" >> log$i.txt
  echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
  echo "Data utworzenia: $(date)" >> log$i.txt
done
