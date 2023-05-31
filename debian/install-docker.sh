#!/bin/bash
sudo apt-get update \
sudo apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common \
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list \
sudo apt update \
sudo apt install -y docker-ce \
docker -v \
sudo systemctl status docker \
sudo usermod -aG docker ${USER}