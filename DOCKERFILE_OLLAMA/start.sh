#!/bin/sh
# Iniciar Ollama en segundo plano
/usr/bin/ollama serve &

# Esperar a que Ollama esté listo
sleep 10

# Descargar el modelo llama3.2
/usr/bin/ollama pull llama3.2

# Crear el modelo usando el modelfile
/usr/bin/ollama create -f /root/.ollama/modelfile

# Mantener el contenedor en ejecución
tail -f /dev/null