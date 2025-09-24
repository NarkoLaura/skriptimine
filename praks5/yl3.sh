#!/bin/bash
# Skript küsib kellaaja (tund) ja väljastab sobiva tervituse.

echo -n "Sisesta aja väärtus (tunnid, 0-23): "
read tund

if test $tund -ge 6 -a $tund -lt 12
then
    echo "Tere hommikust!"
elif test $tund -ge 12 -a $tund -lt 18
then
    echo "Tere päevast!"
elif test $tund -ge 18 -a $tund -lt 22
then
    echo "Tere õhtust!"
elif test $tund -ge 22 -o $tund -lt 6
then
    echo "Head ööd!"
else
    echo "Vigane sisend"
fi
