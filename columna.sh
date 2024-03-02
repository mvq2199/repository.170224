#!/bin/bash
archivo="Accidentes_ags_2021.csv"

#Leemos la columna ID y la columna FERROCARRI
echo -e "ID \t FERROCARRI"
awk -F ',' 'index($45, "CONSTITUCION") {print $1, $22}' "$archivo"