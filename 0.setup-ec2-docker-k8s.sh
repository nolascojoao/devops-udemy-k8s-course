#!/bin/bash
set -e

# Atualiza os pacotes do sistema
sudo apt update -y
sudo apt install -y apt-transport-https ca-certificates curl gnupg lsb-release

# Configura o repositório do Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Instala o Docker
sudo apt update -y
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
echo "Docker instalado e configurado!" >> /var/log/user-data.log

# Instala o kubectl
KUBECTL_VERSION="v1.24.2"
curl -LO https://dl.k8s.io/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
echo "kubectl $KUBECTL_VERSION instalado!" >> /var/log/user-data.log

# Instala o Minikube
MINIKUBE_VERSION="v1.26.0"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/$MINIKUBE_VERSION/minikube-linux-amd64
chmod +x minikube
sudo install minikube /usr/local/bin
echo "Minikube $MINIKUBE_VERSION instalado!" >> /var/log/user-data.log

# Finaliza o script
echo "Setup completo!" >> /var/log/user-data.log
