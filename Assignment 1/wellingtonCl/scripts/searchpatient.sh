#!/bin/bash

echo "1: Doctor Search "
echo "2: Patients Search"
echo "Input 1 or 2"
read  input

if [ "$input" = "1" ]
then
#case $input in
	#1)
	read -p "Enter Doctors ID Name: " DOCID

	cd ../patients
	echo "Patients that have had appointments with Dr. ${DOCID}: "
	for FILEZI in `ls`; #Problem might be here
	do
		cd  "$FILEZI"
		while IFS=',' read -r VISIT DOC_VISITED x
		do
			if [ "$DOCID" = "${DOC_VISITED" ]; then
			read -r LINE < pbasicinfo.log
			IFS=',' read -ra ARRAY <<< "$LINE" #Spaceing <<<
			echo "${ARRAY[0]} ${ARRAY[1]}"
			break
			fi
		done < pmedicalrecord.log
		cd ../
	done
elif [ "$input" == "2" ]
then
	#;;
	#2)
	read -p "Patients First Name: " NAME
	read -p "Patients Last Name: " LAST
	read -p "Date of Birth (dd/mm/yyyy): " DOB

	FN="${NAME:0:1}"
	LN="${LAST: -1}"
	DATEOB="${DOB//'/'}"
	DIR="${FN}${LN}${DATEOB}"
	cd ../patients/"$DIR"

	declare -A docarr
	while IFS=',' read -r VISIT DOC X
	do
		echo "${DOC}"
	done < pmedicalrecord.log
else
	#;;
	#*)
	echo "Input 1 or 2"
	#;;
fi
