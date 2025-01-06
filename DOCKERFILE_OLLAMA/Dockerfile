# Usar la imagen base de ollama
FROM ollama/ollama

# Exponer el puerto 11434
EXPOSE 11434

# Copiar el script de inicio al contenedor
COPY start.sh /start.sh

# Asegurarse de que el script sea ejecutable
RUN chmod +x /start.sh

# Montar el volumen
VOLUME /app/server/storage

# Comando para iniciar el servicio
ENTRYPOINT ["/start.sh"]