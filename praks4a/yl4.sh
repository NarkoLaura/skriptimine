#!/bin/bash

read -p "Sisesta kataloogi tee: " kataloog
kataloog_nimi=$(basename "$kataloog")

mkdir -p ./backup

tar -czf ./backup/${kataloog_nimi}.backup.tar.gz "$kataloog"

echo "Backup kataloogist '$kataloog' on tehtud ja salvestatud asukohta './backup/${kataloog_nimi}.backup.tar.gz'."
