    Universidad Nacional Autónoma de Honduras (UNAH)
    II PAC 2021   
    Clase: Bases de Datos II
    Sección: 1600
    Catedrático: Ing. Constantino Sorto Reyes
    Alumnos:  Daniel Antonio Artica Amaya         - 20121008497
              Carlos José Pérez Sánchez           - 20161005458
              Andres Alberto Zuniga               - 20161003850
              Daniel Alessandro Arteaga Martínez  - 20161000031

# Requerimientos:

- https://www.mongodb.com/try/download/community
- https://www.cdata.com/drivers/mongodb/ssis/
- https://nodejs.org/es/download/ 

# Antes de iniciar
**Correr el script de SQL antes de hacer los siguientes pasos**

# Obtener la información del API:
Primero se debe instalar NodeJS. Una vez instalado en la carpeta de **BDII - Proyecto**"** ubicarse en la dentro de la carpeta **backend**. Abrir una terminal y correr el siguiente comando:

        npm i

En ese momento se deberan de instalar todos los modulos necesarios. Para levantar el servidor se debe correr el siguiente comando:

        npm run dev

En consola tendrá que salir un mensaje que el servidor esta corriendo en el puerto 4000 (cambiar si es necesario en app.ts) y que se ha conectado correctamente a la base de MongoDB.

Ahora en Visual Studio Code descargar la siguiente extensión:

![Search](https://drive.google.com/uc?export=view&id=1eGOALU3bixaqkXYL42AJtYzRI_cDa1S0 "Search")

Una vez instalado abrir el archivo **request.http** y presionar **Send Request**

![Search](https://drive.google.com/uc?export=view&id=1xEdsVS11GIKPCG_iHrJGbit1PfHuFOdY "Search")

Luego en la base de MongoDB estará llena de los datos de la API.

# Instalar CDATA OBDC Driver
Una vez instalado el CDATA Driver hacemos lo siguiente: 

- Buscar ODBC en la barra buscadora de Windows

![Search](https://drive.google.com/uc?export=view&id=1JpAOn0o1nZBVF9k6SqhypoMdzAS4njGd "Search")

- Abrir ODBC Data Sources (32/64 bits) y saldrá la siguiente pantalla (ir a la segunda pestaña y tendrá que salir lo siguiente):

![Search](https://drive.google.com/uc?export=view&id=1CNbDzLtSxqwP9qjGlsPGz2ESeM0gubXL "Search")


# Instalar MongoDB
Una vez instalado buscar y ejecutar **MongoDB Compass**

- Al ejecutarlo saldrá la siguiente ventana: (Seleccionar 'Connect')

![Search](https://drive.google.com/uc?export=view&id=1Lh874sB2HRe7mjAmngda9kOKvWaPi7EL "Search")

- Una vez conectados saldrá las listas de base de datos que tenemos: (Seleccionar 'CREATE DATABASE')

![Search](https://drive.google.com/uc?export=view&id=1t0Id6Q57ujwcAmyBqZEBKhnnedsSzIpG "Search")

- Saldra una ventana emergente y hacer lo siguiente y presionar 'CREATE DATABASE'
- Al crear la base nos saldra en la lista de base de datos como: 'api' seleccionarla y nos saldrá la colección 'apidata'

![Search](https://drive.google.com/uc?export=view&id=1xtqmktmKRFzw79jOLs3g4VbIIDhxey9g "Search")

- Al entrar en la base saldrá lo siguiente: (Seleccionar 'ADD DATA' y 'IMPORT FILE')

![Search](https://drive.google.com/uc?export=view&id=1_bVrwD6lwcgQFY3zU3gCA9GI4X9CvVE- "Search")

- Nos saldrá lo siguiente y buscar el archivo .json que mande y presionar 'Import'

![Search](https://drive.google.com/uc?export=view&id=1G5QkpPOC2hqEZ1mVFxpH3AV1ZuznD7nF "Search")

- Al finalizar saldrá lo siguiente y podremos visualizar todos los datos del API.

![Search](https://drive.google.com/uc?export=view&id=1P7CF2Ykt-61YuLc2mCMRkwZ_g-uG7nDi "Search")

# Visual Studio - Migrando datos de MongoDB a SQL Server
En visual studio crear un proyecto que sea de **Integration Services Project**

![Search](https://drive.google.com/uc?export=view&id=1hR3Qm_Aw9PrQY3GTJVITkxLBH635TxmM "Search")

Luego una vez en el proyecto, en la parte inferior donde dice **Connection Manager** hacer lo siguente:

![Search](https://drive.google.com/uc?export=view&id=1hWfbQKzVVvug_Qt-Ws6ewUJCElwACgXo "Search")

Saldrá la siguiente ventana y seleccionar: 

![Search](https://drive.google.com/uc?export=view&id=1ZaoKiKD4GaVhhQkVtsKApmP-bnbuHht0 "Search")

Seleccionar **New**

![Search](https://drive.google.com/uc?export=view&id=1U1izSIU0ZsQMXXsQjpgx0DeXG17PLGzS "Search")

Seleccionar **CData MongoDB Sys** y luego presionar **Ok** (También se puede testear la connection para ver si fue exitosa)

![Search](https://drive.google.com/uc?export=view&id=1sc9e8neFJ2wJjtjYYGDAS3f4j6FF_Eer "Search")

Una vez creado, en el control flow saldra **ODBC Source**: (Hacer doble click en el)

![Search](https://drive.google.com/uc?export=view&id=1Omgjg8Pd1wTy4ecOW1JsxNQqc3470d6z "Search")

Se abrirá la siguiente ventana y dejar la siguiente configuración: 

![Search](https://drive.google.com/uc?export=view&id=1Qkw1DKmBLn_JpS8MnQFf3WZwvNpqw2Rr "Search")
![Search](https://drive.google.com/uc?export=view&id=1a16s1HyU6IunAx-R-2hi9ZRxO7tePcpa "Search")

Luego tenemos que añadir una **OLE DB** para eso hacemos lo siguiente:

![Search](https://drive.google.com/uc?export=view&id=1JnwYTEBi45Q3VOZ10moUzi4oap7xBBKK "Search")

Una vez creado y tener la conexión a Microsoft SQL Server se creara en el control flow la siguiente figura: (Hacer doble click en el)

![Search](https://drive.google.com/uc?export=view&id=1b3OO7KjPaY1RkT4YsuJ8cdmQoB_PZnqM "Search")

Se abrirá la siguiente ventana y dejar la siguiente configuración: **(.admin es mi usuario puede variar segun como se autenticaron)**

![Search](https://drive.google.com/uc?export=view&id=1CQkI_WFq3qj7lxnAQfRzw0bM9-wLShkR "Search")
![Search](https://drive.google.com/uc?export=view&id=1nHWamGW0HdOI-GLquxzrQU0q6DUWvErL "Search")

Finalmente unir con la línea azul desde la **ODBC Source** hacia la **OLE DB Destination** y correr el proyecto:

![Search](https://drive.google.com/uc?export=view&id=16Gfz28CPmBpMkiiVC1Hhq5n5s3YSlkl- "Search")




