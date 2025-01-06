# Usar la imagen base de anythingllm (basada en Ubuntu)
FROM mintplexlabs/anythingllm:latest

# Cambiar al usuario root para instalar paquetes y modificar permisos
USER root

# Instalar libcap2-bin para tener acceso a setcap (si es necesario para otros usos)
RUN apt-get update && apt-get install -y libcap2-bin && rm -rf /var/lib/apt/lists/*

# Crear el directorio de almacenamiento
RUN mkdir -p /app/server/storage

# Copiar el script de inicio al contenedor
COPY start.sh /app/start.sh

# Asegurarse de que el script sea ejecutable
RUN chmod +x /app/start.sh
RUN ls -l /app/start.sh

# Volver al usuario original (si es necesario)
USER anythingllm

# Exponer el puerto 3001
EXPOSE 3001

# Establecer variables de entorno
ENV STORAGE_DIR=/app/server/storage
ENV JWT_SECRET='7x#L9@qW2$vR4pZ!tY8&'
ENV LLM_PROVIDER=ollama
ENV OLLAMA_BASE_PATH=http://local_ollama:11434
ENV OLLAMA_MODEL_PREF=llama2
ENV OLLAMA_MODEL_TOKEN_LIMIT=4096
ENV EMBEDDING_ENGINE=ollama
ENV EMBEDDING_BASE_PATH=http://local_ollama:11434
ENV EMBEDDING_MODEL_PREF=nomic-embed-text:latest
ENV EMBEDDING_MODEL_MAX_CHUNK_LENGTH=8192
ENV VECTOR_DB=lancedb
ENV WHISPER_PROVIDER=local
ENV TTS_PROVIDER=native
ENV PASSWORDMINCHAR=8

# Montar el volumen
VOLUME /app/server/storage

# Comando para iniciar el servicio
CMD ["/app/start.sh"]