create database _unique;
use _unique;

/*Unique: es una regla que se asegura que todos los valores en una columna de una tabla son diferentes
basicamente cumple con la misma regla que cumple el primary key, a acepcion de que el primary key tiene 
otras funciones como por ejemplo facilitar el enlace entre tablas.
NOTA: A DIFERENCIA DE PRIMARY KEY PODEMOS UTILIZAR MUCHOS UNIQUE POR TABLAS*/

-- NOTA2: UNIQUE PERMITE INGRESAR VALORES NULOS
create table Personas(
	idpersona int not null unique, -- Va ser unico y no va permitir valores iguales
	clave varchar(10) unique, -- Va ser unico y no va permitir valores iguales
	nombre varchar(10),
	edad int
);

insert into personas values(1, 'clave1', 'Alberto', 30);
insert into personas values(2, 'clave2', 'Ana', 50);

/* Otras formas de hacer:
1. Otra forma: (la mas recomendada)
create table Personas(
	idpersona int not null,
	clave varchar(10),
	nombre varchar(10),
	edad int,
	constraint UQ_idpersona unique(idpersona),
	constraint UQ_clave unique(clave)
);

2. Otra forma:
alter table personas
add constraint UQ_idperona unique(idpersona);
*/

drop table personas;

/* Para borrar con alter (OBLIGATORIAMENTE EL UNIQUE DEBE TENER NOMBRE)
alter table personas
drop constraint UQ_idperona;
*/

select * from personas;
