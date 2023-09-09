create database _check;
use _check;

/*
Check: es usado para limitar el rango de valores que se puede permitir como registro
dentro de una columna.
Cuando definimos la restriccion check solo se permitiran los valores que especifiquemos
dentro de esa clausula
*/

create table personas(
	id int not null,
	nombre varchar(10),
	edad int,
	check (edad >= 18) -- colocamos una restriccion
);

insert into personas values(1, 'Juan', 18);
insert into personas values(1, 'Juan', 20);

select * from personas;

/* Otras formas de hacer:
1. Otra forma: 
create table personas(
	id int not null,
	nombre varchar(10),
	edad int check(edad>=18)
);

2. Otra forma: (la mas recomendada)
create table personas(
	id int not null,
	nombre varchar(10),
	edad int,
	constraint CK_edad check(edad >= 18)
);

3. Otra forma:
alter table personas
add check(edad >= 18);

Para borrar un check: (Para borrar obligatoriamente el check debe tener un nombre)
alter table personas
drop constraint CK__personas__edad__6FE99F9F;

*/
