#!/bin/bash

read -p "Sisesta kataloogi tee: " kataloog
kataloog_nimi=$(basename "$kataloog")
kuupaev=$(date +%d%b%Y | tr '[:upper:]' '[:lower:]')  # nt 18sep2025

mkdir -p ./backup

tar -czf ./backup/${kataloog_nimi}.backup.${kuupaev}.tar.gz "$kataloog"

echo "Backup kataloogist '$kataloog' on tehtud ja salvestatud asukohta './backup/${kataloog_nimi}.backup.${kuupaev}.tar.gz'."
