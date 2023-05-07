#!/bin/bash
function show_help() {
  echo "Użycie: skrypt.sh [OPCJE]"
  echo "OPCJE:"
  echo "--date  wyświetla dzisiejszą datę"
  echo "--logs  [liczba] tworzy [liczba] plików log zawierających nazwę pliku, nazwę skryptu i datę"
  echo "--help  wyświetla tę pomoc"
}

if [[ "$1" == "--date" ]]; then
  date
elif [[ "$1" == "--logs" ]]; then
  if [ -z "$2" ]; then
    num_files=100
  else
    num_files=$2
  fi

  for i in $(seq 1 $num_files); do
    echo "Nazwa pliku: log$i.txt" >>log$i.txt
    echo "Nazwa skryptu: skrypt.sh" >>log$i.txt
    echo "Data utworzenia: $(date)" >>log$i.txt
  done
elif [[ "$1" == "--help" ]]; then
  show_help
else
  echo "Nieznana opcja: $1. Użyj opcji --help, aby uzyskać więcej informacji."
  exit 1
fi
