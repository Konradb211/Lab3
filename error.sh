create_error_file() {
    for ((i=1; i<=$1; i++))
    do
        mkdir -p error$i
        echo "Błąd nr $i" > error$i/error$i.txt
    done
}

if [ $OPTIND -eq 1 ]
then
    create_error_file 100
fi