#!/bin/bash
sudo apt update
sudo apt  install docker.io


sudo apt-get update
sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg

sudo mkdir -p /etc/apt/keyrings
curl -sLS https://packages.microsoft.com/keys/microsoft.asc |
    gpg --dearmor |
    sudo tee /etc/apt/keyrings/microsoft.gpg > /dev/null
sudo chmod go+r /etc/apt/keyrings/microsoft.gpg

AZ_REPO=$(lsb_release -cs)
echo "deb [arch=`dpkg --print-architecture` signed-by=/etc/apt/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" |
    sudo tee /etc/apt/sources.list.d/azure-cli.list
    
sudo apt-get update
sudo apt-get install azure-cli

az login - > from docker cli
az acr login --name aspcoredocker

open port 5000 on nsg

docker run -it --rm -p 5000:80 aspcoredocker.azurecr.io/rakeshwebtech/aspdockerproject:40


http://52.142.50.236:5000/
