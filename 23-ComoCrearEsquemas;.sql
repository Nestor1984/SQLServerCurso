create database comoCrearEsquemas;
use comoCrearEsquemas;

/*Un esquema de SQL: Es una estructura logica que se utiliza para organizar y agrupar objetos
de nuestra base de datos como tablas, vistas, procedimientos, funciones, sinonimos, etc. Actua como
una especie de contenedor logico.*/

-- NOTA: dbo. ES EL ESQUEMA POR DEFECTO QUE ASIGNA A LAS TABLAS EL SISTEMA.

-- CREAMOS UN ESQUEMA:
create schema Ventas;

-- CREAMOS UN SEGUNDO ESQUEMA:
create schema Cobros;

-- CREAMOS UNA TABLA CLIENTES PARA NUESTRO ESQUEMA VENTAS
create table ventas.clientes(
	idclientes int,
	nombre int,
	direccion varchar(30)
);

-- CREAMOS UNA TABLA CLIENTES PARA NUESTRO ESQUEMA COBROS
create table cobros.clientes(
	idclientes int,
	nombre int,
	direccion varchar(30)
);

-- CONSULTAS
select * from ventas.clientes;
select * from cobros.clientes;

-- BORRAMOS LA TABLA CLIENTES DEL ESQUEMA COBROS
drop table cobros.clientes;

-- CREAMOS UNA NUEVA TABLA CLIENTES PARA EL ESQUEMA COBROS
create table cobros.clientes(
	campo1 int,
	campo2 int
);


