#!/bin/bash
# Skript võtab süsteemi kellast aja ja tervitab kasutajat tema nimega.

tund=$(date +%H)   # võtab praeguse tunni (00-23)
kasutaja=$USER     # süsteemi aktiivne kasutaja

if test $tund -ge 6 -a $tund -lt 12
then
    echo "Tere hommikust, $kasutaja!"
elif test $tund -ge 12 -a $tund -lt 18
then
    echo "Tere päevast, $kasutaja!"
elif test $tund -ge 18 -a $tund -lt 22
then
    echo "Tere õhtust, $kasutaja!"
else
    echo "Head ööd, $kasutaja!"
fi
