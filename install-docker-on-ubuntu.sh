#!/bin/bash

# THIS SCRIPT WILL INSTALL DOCKER COMMUNITY EDITION AND DOCKER-COMPOSE PACKAGE ON UBUNTU 20.04 LTS

printf "\nUPDATE PACKAGE INDEX:\n"
sudo apt update

printf "\nINSTALL DEPENDENCIES:\n"
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

printf "\nADD DOCKER APT-KEY:\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

printf "\nADD DOCKER APT-REPOSITORY:\n"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

printf "\nINTEGRATE CACHE POLICY:\n"
apt-cache policy docker-ce

printf "\nINSTALL DOCKER COMMUNITY EDITION:\n"
sudo apt install docker-ce -y

printf "\nADD CURRENT USER TO THE DOCKER GROUP:\n"
sudo usermod -aG docker ${USER}
su - ${USER}

printf "\nINSTALLING DOCKER-COMPOSE:\n"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

printf "\nMAKE THE DOCKER-COMPOSE CMD EXECUTABLE:\n"
sudo chmod +x /usr/local/bin/docker-compose

printf "\nSHOW DOCKER-COMPOSE VERSION:\n"
docker-compose version
