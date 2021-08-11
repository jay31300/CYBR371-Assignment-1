#!/bin/bash

cd ../../

#In Home (~/home)
sudo setfacl -Rm g:administrator:rwx wellingtonCl
sudo setfacl -m o:r-x wellingtonCl

cd wellingtonCl

#In wellingtonCl (~/home/wellingtonCl)
sudo setfacl -Rm o:r-x staff
sudo setfacl -Rm o:--- scripts
sudo setfacl -m o:r-x scripts
sudo setfacl -Rm o:r-x patients

cd scripts

#In Scripts (~/home/wellingtonCl/scripts)
sudo setfacl -m g:administrator:rwx audit.sh
sudo setfacl -m g:receptionist:r-x searchpatient.sh
sudo setfacl -m g:receptionist:r-x patients.sh
sudo setfacl -m g:doctors:r-x visit.sh
sudo setfacl -m g:doctors:r-x searchpatients.sh
sudo setfacl -m g:nurses:r-x searchpatients.sh

cd ..
#In wellingtonCl (~/home/wellingtonCl/)
#double check, make the receptionist the owner of all patients
sudo chgrp receptionist patients
sudo setfacls -Rm g:administrator:rwx patients

