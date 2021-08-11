#!/bin/bash
echo "Select from the following options"
echo "1. Register new patient"
echo "2. Make an appointment"

read INPUT

case $INPUT in
	1)
	echo "Input patient information"
	read -p "First-name: " FIRST
	read -p "Last-name: " LAST
	read -p "DOB (dd/mm/year): " DOB
	read -p "Gender: " GENDER
	read -p "Home Address: " ADDY
	read -p "Email: " EMAIL
	read -p "Phone Number:" PHNUM
 	read -p "Registered Doctor: " REGDOC

	echo "Confirming Details"
	echo "Name - $FIRST $LAST"
	echo "DOB - $DOB"
	echo "Gender - $GENDER"
	echo "Home Address - $ADDY"
	echo "Email - $EMAIL"
	echo "Phone Number - $PHNUM"
	echo "Your Registered Doctor - $REGDOC"

	cd ../staff/doctors/"${REGDOC}"
	read -r linez < sbasicinfo.log
	IFS=',' read -ra array <<< "$linz"

	if [ "$FIRST" = "${array[0]}" ] && [ "$LAST" = "${array[1]}" ]; then
		echo "Patient can not be their own doctor"
		exit 1
	fi
	firstN="${FIRST:0:1}"
	lastN="${LAST: -1}"
	dob="${DOB//'/'}"
	dirName="${firstN}${lastN}${dob}"
	cd ../../../patients
	mkdir -p "${dirName}"
	cd "${dirName}"
	echo "$FIRST,$LAST,$DOB,$GENDER,$ADDY,$EMAIL,$PHNUM,$REGDOC" >> pbasicinfo.log
	touch pmedicalrecord.log

;;

2)
echo "Creating an appointment"
read -p "First-Name: " FIRST
read -p "Last-Name: " LAST
read -p "DOB (dd/mm/year): " DOB
read -p "Doctor:" DOC
firstN="${FIRST:0:1}"
lastN="${LAST: -1}"
dob="${DOB//'/'}"
dirName="${firstN}${lastN}${dob}"
cd ../patients/"$dirName"
pwd

setfacl -Rm u:"$DOC":rwx pmedicalrecord.log

while IFS=',' read -r date doc other
do 
	echo "Date: ${date}, Doctor:${doc}"
done < pmedicalrecord.log
;;
3)

 echo "Please run the seatchpatients.sh script to look for specific patients"


;;
*)

 echo "Please choose from 1,2 or 3"

;;
esac
