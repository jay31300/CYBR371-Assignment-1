#!/bin/bash
sudo groupadd doctors
sudo groupadd nurses
sudo groupadd receptionist
sudo groupadd administrator

cd ../
cd staff/doctors

mkdir -p mate1997
sudo useradd -m -d /home/mate1997/ -g doctors mate1997
echo "Mary Teresa,03/08/1953,1997,173 Rnd street Kelburn,m.theresa@yahoo.com,04528293" > mate1997/sbasicinfo.log

mkdir -p brki2018
sudo useradd -m -d /home/brki2018/ -g doctors brki2018
echo "Breana Kipling,03/08/1991,2018,4548 River Road HugoTown Auckland 5513,szzh8@tempmail.net,071943668" > brki2018/sbasicinfo.log

mkdir -p mada1993
sudo useradd -m -d /home/mada1965/ -g doctors mada1993
echo "Mandy Dannel,15/12/1965,1993,343 Norma Avenue Dayton Napier 6731,mandydl@gmail.com,052637445" > mada1965/sbasicinfo.log

mkdir -p labo2002
sudo useradd -m -d /home/labo1970/ -g doctors labo2002
echo "Lance Bourne,07/04/1970,2002,25 Ferguson Street Franklin Greytown 8567,lancb@outlook.com,083736456" > labo1970/sbasicinfo.log

cd ../
cd nurses

mkdir -p lubl1980
sudo useradd -m -d /home/lubl1980/ -g nurses lubl1980
echo "Lucia Blakeley,11/09/1980,2004,935 Massachusetts Avenue Hamilton 4562,lucyblak@outlook.com,38347463" > lubl1980/sbasicinfo.log

mkdir -p phmc2008
sudo useradd -m -d /home/phmc2008/ -g nurses phmc2008
echo "Phil McGraw,15/04/1984,2008,45 Razyn Street Petone Lower Hutt 8435,philmcg@gmail.com,02384756" > phmc2008/sbasicinfo.log

cd ../
cd receptionist

mkdir -p ansm1974
sudo useradd -m -d /home/ansm1974/ -g receptionist ansm1974
echo "Andy Smith,13/09/1974,2002,58 Foster avenue Wellington 5011,smith.andy74@gmail.com,07284756" > ansm1974/sbasicinfo.log

cd ../
cd administrator

mkdir -p pasa1993
sudo useradd -m -d /home/pasa1993/ -g administrator pasa1993
echo "Pauline Sanderson,08/03/1993,1995,2452 Randolph Street Bedford Auckland 7752,paulsand@admins.co.nz,03747543" > pasa1993/sbasicinfo.log
