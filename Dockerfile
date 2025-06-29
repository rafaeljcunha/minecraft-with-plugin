FROM itzg/minecraft-server:java21

# Cria pasta de plugins
RUN mkdir -p /plugins

# Copia os plugins para a imagem
COPY plugins /plugins
