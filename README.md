# Prueba técnica v0.1

# Base de Datos 
Se debe importar el archivo **bdd_empresas.sql** en phpmyadmin (Este archivo esta guardado en la raiz) 
## Tablas 
#### Empresas 
#### Sectores
#### Usuarios 
#### Usuariossectores
#### Monedas
#### Peticion 

# Configurar el proyecto 
**Este proyecto usa la versión php 8.0.10**
Una vez clonado el proyecto Backend, (**Guardado en la carpeta Backend/miproyecto**), será necesario ejecutar el comando **composer update**.(**Sobre la carpeta que contiene el proyecto**)
Una vez hayamos echo esto e importado la base de datos podermos ejecutar el comando **symfony serve** (**Sobre la carpeta que contiene el proyecto**)
# Información sobre el proyecto
Este proyecto consta de la parte CRUD, a la que solo pueden acceder usuarios logeados. A continuación os doy los datos de algunos usuarios para poder logeaos:
#### usuario: admin 	pass: 123
#### usuario peper		pass:123

Tambíen se incluye en ese proyecto el acceso a la api externa para realizar cambios de divisa (Para acceder a esta parte no se requiere estar logeado)
He incluido el formulario de datos personales de la parte Frontend en este proyecto, para hacer las comprobaciones de los datos hago uso de javaScript. También os lo incuyo en un proyecto aparte (**En la carpeta Frontend**)
# CRUD de empresas y sectores
Cuando un usuario se loguea tiene acceso a ver sectores, empresas y usuarios. 
Los **usuarios clientes solo verán en la ventana sectores los sectores que tienen asignados y** en la ventana empresas **las empresas que pertenecen a esos sectores**.
Los **usuarios administradores verán todos los sectores y todas las empresas, podrán crear sectores, empresas y usuarios, modificalos y eliminarlos**. Tambíen, (en  la ventana usuarios) **podrán asignar a los usuarios sectores, así como desasignarlos**. 
# Cambio de divisa 
En este formulario, **cuando se envían los datos se consulta una api externa  (guardando los datos en la base de datos, solo si no existen**) y se realizan los cálculos para realizar el cambio de divisa.
**Cada vez que se hace una petición, esta se guarda en base de datos junto a la respuesta para no tener que volver a consultarse** si se hace en otra petición igual. (Mismas monedas, mismo importe y misma fecha)
# Formularío de datos personales (FrontEnd)
Este formulario **habilita y deshabilita los campos necesarios en función del tipo de persona y país que el usuario seleccione**.
Cada vez que el usuario rellene un dato y pase al siguiente **se comprobará el campo, si este no es válido se muestra un mensaje justo debajo del campo** 
Todos los datos son requeridos por lo que **no se podrá enviar los datos si los campos necesarios no están rellenos ni son correctos**.

