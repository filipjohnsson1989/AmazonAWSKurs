#!/bin/bash

#I början behöver man använda kommandot här nedan för att kan springa filen
#chmod u+x uppgift2C.sh

#Att bli säker användare är root eller sudo att instalera grejer
user=$(whoami)
if [ $user != root ]; then
    echo "Du springer som $user, spring som root eller sudo!"
    exit
fi

#Tredje del
#Första behöver man installera ssh på den server datorn
#apt-get update -y
#apt-get install openssh-server -y

#Logga in remote via SSH med användarenamn och lösenord till den linux-server
ssh administartion@195.168.56.103

#Monitorera diskar
#df
df -H

# Att monitorera program
#top
htop

#Lista block storages att hitta diskar
lsblk

#Att hitta information om disken att vi använadar som användare
blkid
#eller man kan hantera de genom den här kommandon nedan
cat /etc/fstab

exit

#Logga in remote via SSH med nyckel till motagare-server
#Först behöver man skappa nyckeln på klienten
ssh-keygen

#det är privat nyckeln
cat .ssh/id_rsa
#det är public nyckeln
cat .ssh/id_rsa.pub

#Första gången behöver man lägga nyckeln i mottagar-servern.
ssh-copy-id administration@192.168.56.103

#Nu kan man logga in utan lösenord
ssh administration@192.168.56.103

#Att checka installerad nyckeln som är samaa nyckeln kopierade jag tidigare.
cat .ssh/authorized_keys

#logga in remote via SSH agent till andra motagare-serveren via jamp server eller Bastion host.
eval $(ssh-agent)
ssh-add 
ssh -A adminstration@192.168.56.103     
ssh adminstration2@192.168.56.104 -y
exit
exit
eval $(ssh-agent -k)
