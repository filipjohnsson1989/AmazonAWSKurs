#!/bin/bash

#I början behöver man använda kommandot här nedan för att kan springa filen
#chmod u+x uppgift2A.sh

#Att bli säker användare är root eller sudo att instalera grejer
user=$(whoami)
if [ $user != root ]; then
    echo "Du springer som $user, spring som root eller sudo!"
    exit
fi

#Första Del

#Att bli säker med ladda ned och updetera de alla grejorna som packages lister från repositories. 
apt-get update -y

#Att installera nginx som serva webb applikationer
apt-get install Nginx -y

#Om Nginx är inte aktiverat
systemctl start nginx

#Att surfa genom terminal kanalen standard webbaplikationen på nginx
curl localhost

#En statik hemsida med mitt namn
echo "<html><body><h1>Filip Johnsson</h1></body></html>" > /usr/share/nginx/html/index.html
systemctrl reload nginx
curl localhost:80

#Att praktisera
#Att installera Docker
#https://docs.docker.com/engine/install/ubuntu/
#Install using the repository
#Set up the repository
apt-get update
apt-get install apt-transport-https ca-certificates curl gnupg lsb-release

#Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#set up the stable repository. x86_64 / amd64
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Installera Docker Engine
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io

#Att starta Apache som docker container
docker run -p 81:80 httpd

#Att bli säker att Docker funkerar
curl localhost:81


#Set to default
cat <<EOT >> /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>"
EOT


