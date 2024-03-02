#!/bin/bash
file=paginas.csv

echo "Pagina,Estatus" > $file
for pagina in $(cat paginas)
do

	salida=$(curl -s -I "$pagina" | sed -n '1p' | tail -1 | awk '{print $3 " " $4}' | rev | cut -c3- | rev)
	if [ -z "$salida" ]
	then
		echo "$pagina,FAIL" >> $file
	else
		echo "$pagina,OK" >> $file
	fi

done


column -s, -t $file
#rm -rf $file


#declare -a paginas=()

#for pagina in "${paginas[@]}"
#do
#	echo -e "$pagina \n"
#	curl -s -l "$pagina"

#done
