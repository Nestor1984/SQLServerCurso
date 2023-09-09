create database _foreignKey;
use _foreignKey;

/*Foreign key: Una llave foranea es restriccion que es usada para prevenir acciones que 
podrian danar los enlaces o las relaciones entre tablas.
Realiza el enlace con una llave primaria. Las tablas que tienen configurado los foreign key o las llaves foraneas
son llamadas tablas secundarias o tablas hijas, mientras que las tablas que tienen la primary key se les denomina tabla
principal o tabla de referencia.*/

create table clientes(
	id_cliente int,
	nombre varchar(20) not null,
	apellido varchar(30) not null,
	edad int not null
	constraint PK_clientes primary key(id_cliente)
);

create table ordenes(
	id_orden int not null,
	articulo varchar(50) not null,
	id_cliente int -- Aqui no es necesario ponerle una ',' por que se supone que estamos declarando el constraint en la misma linea
	constraint FK_ordenes_clientes foreign key references clientes(id_cliente)
);

insert into clientes values(1, 'Juan', 'Perez', 30);

insert into ordenes values(1, 'Martillo', 1); -- NOTA: recuerda que cuando insertas datos en un campo que es foreign key, SE DEBE INGRESAR DATOS QUE EXISTAN EL CAMPO RELACIONADO QUE TENGA LA PRIMARY KEY

select * from clientes;
select * from ordenes;


/*
- Como borrar un foreign key: (EL FOREIGN KEY DEBE TENER OBLIGATORIAMENTE UN NOMBRE)
alter table ordenes
drop constraint FK_ordenes_clientes;
*/
