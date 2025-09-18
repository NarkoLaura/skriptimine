#!/bin/bash

mkdir -p ./test
echo "Fail 1 sisu" > ./test/file1.txt
echo "Fail 2 sisu" > ./test/file2.txt
echo "Fail 3 sisu" > ./test/file3.txt
echo "Fail 4 sisu" > ./test/file4.txt
mkdir -p ./test/dir1
echo "Kausta dir1 fail" > ./test/dir1/fail.txt
mkdir -p ./test/dir2
echo "Kausta dir2 fail" > ./test/dir2/fail.txt

mkdir -p ./backup

tar -czf ./backup/test.backup.tar.gz ./test

echo "Backup kataloogist './test' on tehtud ja salvestatud asukohta './backup/test.backup.tar.gz'."
