create database _identity;
use _identity;

/*Identity: Un campo de tipo identity es un campo que incrementa su valor automaticamente
 a medida de que va recibiendo inserts de valores en esa tabla. Solamente puede haber un campo 
 identity por tabla*/

 create table libros(
	codigo int identity, -- autoincrement
	titulo varchar(60) not null,
	autor varchar(60) not null
 );

 insert into libros values('Cien anios de soledad', 'Gabriel Garcia Marquez');
 insert into libros values('Harry Potter', 'J.K Rowling');
 insert into libros values('Matar a un ruisenor', 'Harper Lee');

 select * from libros;

/*
Otras formas de configurar identity:
1- Forma:
  create table libros(
	codigo int identity(10, 1), -- (Aqui decimos que el primer valor que se va insertar en mi tabla libros va empezar con el numero 10, Aqui decimos que aumente el valor siguiente de uno en uno)
	titulo varchar(60) not null,
	autor varchar(60) not null
 );

 - Como desactivar la regla de un identity en una tabla

 - 1. Asi desactivamos la regla
 set identity_insert libros on;

 -2. Asi activamos de nuevo la regla
  set identity_insert libros off;
*/

