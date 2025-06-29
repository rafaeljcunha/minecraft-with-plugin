#!/bin/bash

# Substitua pelo seu nome de usuário Docker Hub
USERNAME="seu-usuario"
IMAGE_NAME="nome_image"
TAG="latest"

echo "📦 Construindo a imagem Docker..."
docker build -t $USERNAME/$IMAGE_NAME:$TAG .

echo "🔐 Login no Docker Hub..."
docker login

echo "🚀 Enviando imagem para Docker Hub..."
docker push $USERNAME/$IMAGE_NAME:$TAG

echo "✅ Imagem enviada com sucesso: $USERNAME/$IMAGE_NAME:$TAG"
