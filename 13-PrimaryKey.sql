create database primaryKey;
use primaryKey;

/*Primary key: permite insertar registros unicos*/
create table Personas(
	idpersona int not null primary key, -- Es recomendable que este campo sea not null
	nombre varchar(10) not null,
	edad int not null
);

insert into Personas values(1, 'Jose', 50);

/*Otras formas de configurar seria:

1. Otra opcion:
create table Personas(
	idpersona int not null,
	nombre varchar(10) not null,
	edad int not null,
	primary key(idpersona)
);

2. Otra opcion: (la mas recomendable)
create table Personas(
	idpersona int not null,
	nombre varchar(10) not null,
	edad int not null,
	constraint PK_enlace_persona primary key(idpersona)
);

3. Otra opcion: (NOTA: PARA CREAR CON ALTER ES NECESARIO QUE EL CAMPO SEA NOT NULL)
alter table Personas
add constraint PK_enlace primary key(idpersona);
*/

select * from Personas;

/*
Asi se borra una primary key: (NOTA: PARA BORRAR ES NECESARIO QUE LA LLAVE PRYMARIA TENGA UN NOMBRE)
alter table Personas
drop constraint PK_enlace;
*/
