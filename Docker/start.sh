#!/bin/bash

# Criando imagem docker
buildCommand="docker build -t image_bankly /home/daraildes/platform-challenge-devops/Docker"

# Comando para criar o contêiner Docker
runCommand="docker run --name meucontainer -p 3000:3000 image_bankly"

# Executar o comando para criar a imagem docker
echo "Criando a imagem Docker..."
$buildCommand

# Verificar se o comando foi bem-sucedido
if [ $? -eq 0 ]; then
    echo "Imagem Docker construída com sucesso."
    # Executar o comando para criar o contêiner
    echo "Criando o contêiner Docker..."
    $runCommand
else
    echo "Erro ao construir a imagem Docker. Verifique o Dockerfile e o caminho especificado."
fi
