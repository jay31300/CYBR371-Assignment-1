#!/bin/bash

echo "Enter the patient medical details"

read -p "First-Name: " FIRST
read -p "Last-Name: " LAST
read -p "DOB (dd/mm/year): " DOB
read -p "Date-of-visit: " DOV
read -p "Doctor: " DOC
read -p "Health-Problem: " HP
read -p "Medication: " MED
read -p "Dosage: " DOS

NAME="${FIRST:0:1}${LAST: -1}${DOB//'/'}"
cd ../patients/"${NAME}"
echo "${DOV},${DOC},${HP},${MED},${DOS}" >> pmedicalrecord.log
