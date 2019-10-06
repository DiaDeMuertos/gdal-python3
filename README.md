# Gdal Python3

## Contenido

- Inicio
- Uso

## Inicio

La imagen esta basada en ubunto:16.04 y para poder usarla hay que crearla, para eso hacemos un build. Este paso solo es necesario hacer la primera vez ya que la imagen no existe. Una vez que la existe la imange como se compento este paso deha de ser necesario.

```
$ docker build . -t gdal-python3
```

## Uso

Una vez creada la imange podemos usarla. El contenedor que se ejecutara necestara que se le provee las rutas de las imanges, la salida y el codigo(para el caso de que necesite ser actualizado). El mando **\$(pwd)** es un comando de linux que se encarga de generar la ruta respecto al lugar donde nos encontramos. De ser necesario sustitulla por la ruta de forma explisita.

```
$ docker run -it --rm -v $(pwd)/images:/base/images -v $(pwd)/output:/base/output -v $(pwd)/src:/base/src gdal-python3
```

**_nota: esta solucion fue probada en un sistema operativo linux_**
