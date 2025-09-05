#!/bin/bash
# Skript arvutab mitu bussi on vaja ja mitu inimest jääb üle

echo -n "Sisesta reisijate arv: "
read reisijad
echo -n "Sisesta kohtade arv ühes bussis: "
read kohad

# Täielikult täidetud busside arv
bussid=$(expr $reisijad / $kohad)

# Ülejäänud reisijad
ulejaanud=$(expr $reisijad % $kohad)

echo "Täielikult täidetud busse: $bussid"
echo "Ülejäänud reisijaid: $ulejaanud"
