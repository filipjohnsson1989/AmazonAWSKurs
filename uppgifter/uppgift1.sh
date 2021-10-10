#!/bin/bash

#I början behöver man använda kommandot här nedan för att kan springa filen
#chmod u+x uppgift1.sh

#Femte del
user=$(whoami)
if [ $user != root ]; then
    echo "Du springer som $user, spring som root eller sudo!"
    exit
fi

#Fösrta del
touch filip_johnsson.txt
ls -l

chmod g-rw filip_johnsson.txt
chmod o-r filip_johnsson.txt

chmod g-rwx filip_johnsson.txt
chmod o-rwx filip_johnsson.txt
ls -l


#Andra del
echo "Blå
Hund" > filip_johnsson.txt

#Tredje Del
#tail filip_johnsson.txt
#tail -f filip_johnsson.txt
#^Z

#less filip_johnsson.txt
#more filip_johnsson.txt
cat filip_johnsson.txt

#Visa och hitaa Blå och Hund i filen
#cat filip_johnsson.txt | grep Blå
#cat filip_johnsson.txt | grep Hund

#Femte Del
#-R för alla filer i en dir
chown root:root filip_johnsson.txt 
ls -l

cat <<EOT >> filip_johnsson.txt
Röd
Katt
EOT

cat filip_johnsson.txt