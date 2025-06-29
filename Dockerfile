FROM itzg/minecraft-server:latest

# Cria pasta de plugins
RUN mkdir -p /plugins

# Copia os plugins para a imagem
COPY plugins /plugins
