#!/bin/bash

read -p "Sisesta oma nimi: " nimi
echo "Tere tulemast, $nimi!"

read -p "Sisesta oma sünniaasta: " aasta
praegune_aasta=$(date +%Y)
vanus=$((praegune_aasta - aasta))

echo "$nimi, sina oled $vanus aasta vana."
