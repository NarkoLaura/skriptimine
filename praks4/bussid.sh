#!/bin/bash
# Skript arvutab, mitu bussi on vaja reisijate jaoks

echo -n "Sisesta reisijate arv: "
read reisijad
echo -n "Sisesta kohtade arv bussis: "
read kohad

bussid=$((reisijad / kohad))

if [ $((reisijad % kohad)) -ne 0 ]; then
    bussid=$((bussid + 1))
fi

echo "Kokku on vaja $bussid bussi"
