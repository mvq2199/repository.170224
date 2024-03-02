#! /bin/bash
file=cpu.log
path=/var/log/

cd $path
if !(find $file)
then
	touch $file
fi

while true; do
echo -e "Fecha: $(date +%d/%m/%Y-%H:%M:%S)\tHostname: $(hostname -A)\tCPU: $(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')\tRAM: $(free -m | awk '/Mem/{print int($3/$2*100)}')%" >> $file
	sleep 1

done
