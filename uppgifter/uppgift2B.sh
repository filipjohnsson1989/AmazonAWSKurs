#!/bin/bash

#I början behöver man använda kommandot här nedan för att kan springa filen
#chmod u+x uppgift2B.sh

#Att bli säker användare är root eller sudo att instalera grejer
user=$(whoami)
if [ $user != root ]; then
    echo "Du springer som $user, spring som root eller sudo!"
    exit
fi

#Andra del
#Att monitorera diskar
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