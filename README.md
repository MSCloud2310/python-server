# python-server
## Construir la imagen:
    docker build -t python-server -f Dockerfile .

        - `-f` indica donde está el archivo Dockerfile (opcional si está en la misma carpeta)
        - `-t` indica el nombre de la imagen
        - `.` indica la carpeta donde están los demás archivos que se usarán para construir la imagen

## Ejecutar la imagen:
    docker container run -it -v `pwd`/html:/html -p 8080:8080 python-server