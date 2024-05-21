create database sentenciaMerge;
use sentenciaMerge;

/*
Un ejemplo de cómo utilizar la sentencia MERGE en SQL Server con tablas de origen y destino, y cómo mostrar los
resultados antes y después de la operación:
Supongamos que tenemos una tabla de origen llamada "TablaOrigen" y una tabla de destino llamada "TablaDestino". 
Ambas tablas tienen los siguientes campos en español:
- TablaOrigen: id, nombre, edad
- TablaDestino: id, nombre, edad
Antes de realizar la operación MERGE, vamos a mostrar los datos de ambas tablas:
*/

create table TablaOrigen(
	id int not null,
	nombre varchar(30) not null,
	edad int not null,
	constraint PK_idTablaOrigen primary key(id)
);

create table TablaDestino(
	id int not null,
	nombre varchar(30) not null,
	edad int not null,
	constraint PK_idTablaDestino primary key(id)	
);

insert into TablaOrigen(id, nombre, edad)
values
(1, 'Max', 13),
(2, 'Carlos', 14),
(3, 'Carla', 15),
(4, 'Nestor', 16);

insert into TablaDestino(id, nombre, edad)
values
(1, 'Max', 13),
(2, 'Carlos', 14),
(3, 'Carla', 80);
-- Mostrar datos de TablaOrigen antes del MERGE
SELECT * FROM TablaOrigen;

-- Mostrar datos de TablaDestino antes del MERGE
SELECT * FROM TablaDestino;

/*Ahora realizamos la operación MERGE para actualizar los datos de la tabla de destino con los valores de la tabla de origen:*/
MERGE INTO TablaDestino AS D
USING TablaOrigen AS O
ON D.id = O.id
WHEN MATCHED THEN
    UPDATE SET D.nombre = O.nombre, D.edad = O.edad
WHEN NOT MATCHED THEN
    INSERT (id, nombre, edad) VALUES (O.id, O.nombre, O.edad);

-- Vaciar tablas
truncate table TablaOrigen;
truncate table TablaDestino;

-----------------------------------------------------------------------------------------------------------------------------

/*
Supongamos que tenemos dos tablas: "TablaOrigen" y "TablaDestino". Queremos sincronizar los datos de ambas tablas, actualizando 
los registros existentes en "TablaDestino" y eliminando los registros que ya no existen en "TablaOrigen".
*/

-- Mostrar datos de TablaOrigen
SELECT * FROM TablaOrigen;

-- Mostrar datos de TablaDestino
SELECT * FROM TablaDestino;


MERGE TablaDestino AS destino
USING TablaOrigen AS origen
ON destino.id = origen.id
WHEN MATCHED THEN
    UPDATE SET destino.nombre = origen.nombre, destino.edad = origen.edad
WHEN NOT MATCHED BY SOURCE THEN
    DELETE;
/*
En este ejemplo, estamos utilizando la cláusula MERGE para combinar los datos de "TablaOrigen" y "TablaDestino" basándonos
 en la columna "id". Si hay coincidencias, actualizamos los campos "nombre" y "edad" en "TablaDestino" con los valores 
 correspondientes de "TablaOrigen". Si no hay coincidencias en "TablaOrigen", eliminamos el registro correspondiente en 
 "TablaDestino".
*/