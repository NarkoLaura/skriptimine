#!/bin/bash
# Skript ainepunktide arvestamiseks

# Küsi kasutajalt ainepunktide arvu
read -p "Sisesta ainepunktide arv: " ainepunktid

# Küsi kasutajalt nädalate arvu
read -p "Sisesta nädalate arv: " nadalad

# Arvuta kogu ajakulu
tundide_arv=$(expr "$ainepunktid" \* 26)

# Arvuta nädalane ajakulu ja ümarda ülespoole
ajakulu=$(echo "($tundide_arv + $nadalad - 1) / $nadalad" | bc)

# Väljasta tulemus
echo "Ühe nädala eeldatav ajakulu on $ajakulu tundi."
