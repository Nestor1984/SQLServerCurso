create database _distinct;
use _distinct;

/*Distinct (registros duplicados): La funcion distinct es utilizada para seleccionar valores unicos de una columna o un conjunto de columnas
dentro de una consulta, esto solo devuelve los valores distintos y elimina las repeticiones de datos en el resultado*/


  CREATE TABLE clientes (
  id_cliente INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(20) NOT NULL,
  apellido VARCHAR(20) NOT NULL,
  pais VARCHAR(50) NOT NULL,
  compras INT NULL
);
  
  insert into Clientes values(1, 'Juan', 'Pérez', 'Estados Unidos', 1);
  insert into Clientes values(2, 'María', 'Gómez', 'Argentina', 2);
  insert into Clientes values(3, 'Carlos', 'López', 'Brasil', NULL);
  insert into Clientes values(4, 'Laura', 'Martínez', 'Canadá', 4);
  insert into Clientes values(5, 'Pedro', 'Hernández', 'China', 5);
  insert into Clientes values(6, 'Ana', 'Ruiz', 'Colombia', NULL);
  insert into Clientes values(7, 'Luis', 'Torres', 'Egipto', 7);
  insert into Clientes values(8, 'Marta', 'Sánchez', 'España', 8);
  insert into Clientes values(9, 'Roberto', 'García', 'Francia', 9);
  insert into Clientes values(10, 'Sofía', 'López', 'Alemania', 10);
  insert into Clientes values(11, 'David', 'Hernández', 'Argentina', NULL);
  insert into Clientes values(12, 'Andrea', 'Gómez', 'Brasil', 12);
  insert into Clientes values(13, 'Fernando', 'Pérez', 'Canadá', 13);
  insert into Clientes values(14, 'Patricia', 'Martínez', 'China', 14);
  insert into Clientes values(15, 'Javier', 'López', 'Colombia', 15);
  insert into Clientes values(16, 'Carmen', 'Ruiz', 'Egipto', NULL);
  insert into Clientes values(17, 'Ricardo', 'Torres', 'España', 17);
  insert into Clientes values(18, 'Marina', 'Sánchez', 'Francia', 18);
  insert into Clientes values(19, 'Alejandro', 'García', 'Alemania', 19);
  insert into Clientes values(20, 'Claudia', 'López', 'Argentina', 20);
  insert into Clientes values(21, 'Fernanda', 'Gómez', 'Brasil', 21);
  insert into Clientes values(22, 'Rodrigo', 'Pérez', 'Canadá', 22);
  insert into Clientes values(23, 'Luisa', 'Martínez', 'China', 23);
  insert into Clientes values(24, 'Emilio', 'Hernández', 'Colombia', 24);
  insert into Clientes values(25, 'Valeria', 'Ruiz', 'Egipto', 25);
  insert into Clientes values(26, 'Rafael', 'Torres', 'España', 26);
  insert into Clientes values(27, 'Camila', 'Sánchez', 'Francia', 27);
  insert into Clientes values(28, 'Gabriel', 'García', 'Alemania', NULL);
  insert into Clientes values(29, 'Isabella', 'López', 'Argentina', NULL);
  insert into Clientes values(30, 'Santiago', 'Pérez', 'Brasil', 30);

  select * from clientes;

  -- Vamos a traer a todos los clientes que no tengan el pais repetido
  select distinct pais from clientes;

  -- Selecciona las valores distintos de mi campo id_cliente en mi tabla clientes donde el pais se argentina
  select distinct id_cliente from clientes
  where pais = 'Argentina';

  -- Consultamos valores nulos
  --Ej 1
  select distinct(nombre) from clientes
  where compras is null;
  -- Ej 2
  select distinct(pais) from clientes
  where compras is null;

  -- RESUMEN: SIRVE PARA FILTRAR VALORES DUPLICADOS EN NUESTRA TABLA