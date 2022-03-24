#!/bin/bash

# Atualizando o sistema
sudo yum update -y

# Baixando as dependencias

sudo yum install -y docker
sudo yum install -y git

# Inicializando Docker

sudo systemctl enable docker
sudo systemctl restart docker
echo "Finalizado"
# Finalizado