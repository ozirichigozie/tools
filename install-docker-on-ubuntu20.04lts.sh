#!/bin/sh

printf "Install System Updates\n\n"
sudo apt update

printf "\nInstall prerequisite packages\n\n"
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

printf "\nAdd the GPG key for the official docker repo\n\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

printf "\nAdd the docker repo to apt sources\n\n"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

printf "\nEnsure installation is from the Docker repo, and not from the default Ubuntu repo\n\n"
apt-cache policy docker-ce

printf "\nInstall docker community edition...\n\n"
sudo apt install -y docker-ce
