# Docker AnythingLLM

Este proyecto utiliza Docker Compose para orquestar los contenedores necesarios para ejecutar AnythingLLM.

## Requisitos

- Docker
- Docker Compose

## Instrucciones

1. Clona este repositorio:
    ```sh
    git clone https://github.com/tu_usuario/tu_repositorio.git
    cd tu_repositorio
    ```

2. Construye y levanta los contenedores:
    ```sh
    docker-compose up --build
    ```

3. Accede a la aplicación:
    Abre tu navegador y ve a `http://localhost:puerto` (reemplaza `puerto` con el puerto configurado en tu `docker-compose.yml`).

## Archivos

### docker-compose.yml

Este archivo define los servicios, redes y volúmenes necesarios para la aplicación.

```yaml
version: '3.8'

services:
  app:
    image: tu_imagen
    ports:
      - "puerto:puerto"
    environment:
      - VARIABLE=valor
    volumes:
      - ./ruta_local:/ruta_contenedor
  # ...otros servicios...

networks:
  default:
    driver: bridge
```

## Comandos útiles

- Para detener los contenedores:
    ```sh
    docker-compose down
    ```

- Para reconstruir los contenedores sin usar la cache:
    ```sh
    docker-compose build --no-cache
    ```

- Para ver los logs de los contenedores:
    ```sh
    docker-compose logs -f
    ```

## Contribuciones

Las contribuciones son bienvenidas. Por favor, abre un issue o un pull request para discutir cualquier cambio.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.
