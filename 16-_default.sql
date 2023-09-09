create database _default;
use _default;

/*Default: la restriccion default es usada para establecer un valor por defecto en una columna,
 en caso de que estemos insertando datos en una tabla y no ingresemos datos en un campo que tiene
ya un valor default el valor configurado sera el que se va insertar automaticamente. */

create table personas(
	idpersona int not null,
	nombre varchar(10),
	edad int not null,
	ciudad varchar(50) default 'No tiene' -- Cuando se intente llenar esta tabla con datos, al momento de que en el campo ciudad no se ingrese ningun dato, el sistema automaticamente va ingresar este dato 'No tiene'
);

insert into personas values(1, 'Pedro', 30, default); -- Como ingresamos el valor default, se va insertar automaticamente el valor por defecto que es 'no tiene'

select * from personas;

/* Otras formas de hacer:
1. Otra forma: 
alter table personas
add constraint DF_ciudad
default 'No tiene' for ciudad; -- for ciudad: con esto decimos que se le va aplicar al campo ciudad

Para borrar un default: (El default debe tener obligatoriamente un nombre)
alter table personas
drop constraint DF_ciudad;
*/
