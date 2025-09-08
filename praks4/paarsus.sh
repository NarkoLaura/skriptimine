#!/bin/bash
# Skript kontrollib käsurea argumendina antud arvu paarisust

if [ $# -ne 1 ]; then
    echo "Käivita see skript koos ühe arvuga mille paarsust soovid kontrollida."
    echo "Näiteks: ./paarsus 3"
    exit 1
fi

arv=$1

if [ $((arv % 2)) -eq 0 ]; then
    echo "Antud arv on paaris"
else
    echo "Antud arv on paaritu"
fi
