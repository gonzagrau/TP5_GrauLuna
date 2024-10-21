# TP5_GrauLuna
TP 5 Informatica Medica (20242C)
## Alumnos
* Gonzalo Grau
* Agustin Luna Simondi

### Breve descripción del trabajo
Este repositorio esta hecho para el trabajo práctico 5 de la materia de Informática Médica durante el segundo cuatrimestre de 2024. Se desarrollan los diferentes puntos a cumplir compartiendo imagenes, resultados, queries, y otros recursos relevantes.

## Base de datos
Para asegurar una correcta sincronización y gestión de versiones, decidimos hostear una base de datos remota en el servicio web AIVEN. De esta manera, podemos coordinar nuestras operaciones en una misma base, a la cual nos podemos conectar vía python o pgadmin. Para acatarnos a las medidas típicas de seguridad informática, decidimos no exponer las credenciales de acceso en el repositorio público.  

En la carpeta `database_connection` del repositorio, se encuentran los archivos de Python y jupyter notebook utilizados para conectarnos a la base y realizar las queries SQL / DML correspondientes a las consignas del punto 2. En la carpeta `Ejercicio2` se encuentran los scripts utilizados en formato `.sql`.

## Reporting
Para la actividad de reporting, nos conectamos desde *Looker studio* directamente a la base antes mencionada (razón por la que no hemos utilizado Google Sheets). Se enviarán las credenciales a la cátedra vía email en el día de la entrega.

[Dashboard en looker studio](https://lookerstudio.google.com/reporting/c859cbee-0adf-4350-bc1f-f7a3cb9b67be)
