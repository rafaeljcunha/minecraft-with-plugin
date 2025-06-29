# Minecraft Server com GeyserMC (via Docker)

Este projeto utiliza `itzg/minecraft-server` com o plugin GeyserMC já incluído, permitindo que jogadores Bedrock (celular, console) conectem-se ao servidor Java.

## 🚀 Como usar

### 1. Baixe o GeyserMC

Coloque o `.jar` em:  
`plugins/Geyser-Spigot.jar`

Ou use o link:  
https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/spigot

### 2. Construa e suba a imagem

```bash
./build-and-push.sh
```

### 3. Rode o servidor

```bash
docker-compose up -d
```

## 🔄 Dados persistentes

Todos os dados do servidor (mundo, configs, etc.) são armazenados no volume `minecraft_data`, então não são perdidos ao rebuildar a imagem.

## 📡 Conexão

- **Java Edition**: IP:PORTA 25565  
- **Bedrock Edition**: IP:PORTA 19132 (UDP)

## 🧠 Backup (opcional)

Crie backup do volume:

```bash
docker run --rm -v minecraft-geyser_minecraft_data:/data -v $(pwd):/backup busybox tar czf /backup/backup.tar.gz /data
```

---

Feito com ❤️ por Rafael Cunha
