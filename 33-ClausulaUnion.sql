create database clausula_Union;
use clausula_Union;

/*
Clausula Union: el operador union es usado para combinar un conjunto de resultados de dos
o mas columnas

Reglas para utilizar esta clausula:
1.- Cada select que hagamos, utilizando este operador debe tener el mismo numero de columnas en ambos
lados de la consulta, de lo contrario no va traer ningun resultado. (Tiene que haber el mismo numero de 
columnas tanto en el primer select, como en el segundo).
2.- Estas columnas deben de tener tipos de datos similares.
*/

CREATE TABLE clientes (
  idcliente INT PRIMARY KEY,
  nom_cliente VARCHAR(100),
  contacto VARCHAR(100),
  direccion VARCHAR(100),
  ciudad VARCHAR(100),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50)
);


insert into clientes values(1, 'Juan Perez', 'Juan Perez', 'Calle Falsa 123', 'Ciudad Ficticia', '12345', 'Argentina');
insert into clientes values(2, 'Maria Lopez', 'Maria Lopez', 'Avenida Imaginaria 456', 'Otra Ciudad', '54321', 'México');
insert into clientes values(3, 'Carlos Ramirez', 'Carlos Ramirez', 'Carrera Inexistente 789', 'Ciudad Fantasma', '67890', 'Colombia');
insert into clientes values(4, 'Luisa Fernández', 'Luisa Fernández', 'Calle Sin Nombre 42', 'Ciudad Irreal', '24680', 'Perú');
insert into clientes values(5, 'Roberto Castro', 'Roberto Castro', 'Paseo de los Sueños 789', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(6, 'Ana Gómez', 'Ana Gómez', 'Avenida de los Sueños 111', 'Ciudad de Ensueño', '12345', 'México');
  insert into clientes values(7, 'Pedro Rodríguez', 'Pedro Rodríguez', 'Calle del Sol 222', 'Ciudad del Sol', '54321', 'Argentina');
  insert into clientes values(8, 'Laura Silva', 'Laura Silva', 'Carrera Imaginaria 333', 'Ciudad Ficticia', '67890', 'Colombia');
  insert into clientes values(9, 'Javier Martínez', 'Javier Martínez', 'Paseo Sin Fin 444', 'Ciudad Irreal', '24680', 'Perú');
  insert into clientes values(10, 'María Torres', 'María Torres', 'Avenida del Lago 555', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(11, 'Roberto González', 'Roberto González', 'Calle del Bosque 666', 'Ciudad del Sol', '13579', 'Argentina');
  insert into clientes values(12, 'Carolina Herrera', 'Carolina Herrera', 'Carrera de los Sueños 777', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(13, 'Daniel Mendoza', 'Daniel Mendoza', 'Paseo del Mar 888', 'Ciudad Irreal', '24680', 'Perú');
  insert into clientes values(14, 'Sofía Ramírez', 'Sofía Ramírez', 'Avenida del Viento 999', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(15, 'Fernando Morales', 'Fernando Morales', 'Calle del Monte 1010', 'Ciudad del Sol', '24680', 'Argentina');
  insert into clientes values(16, 'Valeria Peña', 'Valeria Peña', 'Carrera del Río 1111', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(17, 'Hugo Rojas', 'Hugo Rojas', 'Paseo de la Montaña 1212', 'Ciudad Irreal', '13579', 'Perú');
  insert into clientes values(18, 'Gabriela Salinas', 'Gabriela Salinas', 'Avenida del Mar 1313', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(19, 'Andrés Castro', 'Andrés Castro', 'Calle del Cielo 1414', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(20, 'Luisana Sánchez', 'Luisana Sánchez', 'Carrera del Horizonte 1515', 'Ciudad Ficticia', '13579', 'Colombia');
  insert into clientes values(21, 'Martín Vega', 'Martín Vega', 'Paseo del Bosque 1616', 'Ciudad Irreal', '86420', 'Perú');
  insert into clientes values(22, 'Carla Medina', 'Carla Medina', 'Avenida de los Ángeles 1717', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(24, 'Cecilia Ramos', 'Cecilia Ramos', 'Carrera de la Luna 1919', 'Ciudad Ficticia', '13579', 'Argentina');
  insert into clientes values(25, 'Alejandro Vargas', 'Alejandro Vargas', 'Paseo del Sol 2020', 'Ciudad Irreal', '86420', 'Colombia');
  insert into clientes values(26, 'Daniela Fernández', 'Daniela Fernández', 'Avenida del Cielo 2121', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(27, 'Manuel Torres', 'Manuel Torres', 'Calle del Mar 2222', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(28, 'Gabriela Mendoza', 'Gabriela Mendoza', 'Carrera de la Montaña 2323', 'Ciudad Ficticia', '13579', 'Colombia');
  insert into clientes values(29, 'Sebastián Rojas', 'Sebastián Rojas', 'Paseo del Río 2424', 'Ciudad Irreal', '98765', 'Perú');
  insert into clientes values(30, 'Valentina Salazar', 'Valentina Salazar', 'Avenida del Bosque 2525', 'Ciudad de Ensueño', '86420', 'Chile');
  insert into clientes values(31, 'Francisco Morales', 'Francisco Morales', 'Calle de la Luna 2626', 'Ciudad del Sol', '13579', 'Argentina');
  insert into clientes values(32, 'Marcela Vega', 'Marcela Vega', 'Carrera del Sol 2727', 'Ciudad Ficticia', '98765', 'Colombia');
  insert into clientes values(33, 'Andrés Castro', 'Andrés Castro', 'Paseo de los Sueños 2828', 'Ciudad Irreal', '86420', 'Perú');
  insert into clientes values(34, 'Daniela Rojas', 'Daniela Rojas', 'Avenida de la Fantasía 2929', 'Ciudad de Ensueño', '13579', 'Chile');
  insert into clientes values(35, 'Roberto Salinas', 'Roberto Salinas', 'Calle de los Sueños 3030', 'Ciudad del Sol', '98765', 'Argentina');
  insert into clientes values(36, 'Laura Torres', 'Laura Torres', 'Carrera de la Imaginación 3131', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(37, 'Javier Mendoza', 'Javier Mendoza', 'Paseo de los Sueños 3232', 'Ciudad Irreal', '13579', 'Perú');
  insert into clientes values(38, 'Carolina Salazar', 'Carolina Salazar', 'Avenida de los Recuerdos 3333', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(39, 'Gabriel Medina', 'Gabriel Medina', 'Calle de la Esperanza 3434', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(40, 'Isabella Vargas', 'Isabella Vargas', 'Carrera de los Sueños 3535', 'Ciudad Ficticia', '13579', 'Colombia');
  
  
  CREATE TABLE suplidores (
  idsuplidor INT PRIMARY KEY,
  empresa VARCHAR(100),
  contacto VARCHAR(100),
  direccion VARCHAR(100),
  ciudad VARCHAR(100),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50)
);

  insert into suplidores values(6, 'Acme Corporation', 'John Smith', '123 Main Street', 'New York', '10001', 'Argentina');
  insert into suplidores values(7, 'Globex Corporation', 'Jane Doe', '456 Elm Street', 'Los Angeles', '90001', 'Perú');
  insert into suplidores values(8, 'Wayne Enterprises', 'Bruce Wayne', '789 Park Avenue', 'Gotham City', '12345', 'Colombia');
  insert into suplidores values(9, 'Stark Industries', 'Tony Stark', '1 Stark Tower', 'New York', '10001', 'Chile');
  insert into suplidores values(10, 'LexCorp', 'Lex Luthor', '555 LexCorp Plaza', 'Metropolis', '54321', 'Argentina');
  insert into suplidores values(11, 'Umbrella Corporation', 'Albert Wesker', '777 Raccoon Street', 'Raccoon City', '67890', 'Venezuela');
  insert into suplidores values(12, 'Weyland-Yutani Corporation', 'Ellen Ripley', '888 Nostromo Way', 'Hadleys Hope', '24680', 'Rep. Dominicana');
  insert into suplidores values(13, 'InGen', 'John Hammond', 'Jurassic Park', 'Isla Nublar', '98765', 'Costa Rica');
  insert into suplidores values(14, 'Tyrell Corporation', 'Eldon Tyrell', '123 Tyrell Building', 'Los Angeles', '90001', 'United States');

  select * from clientes;
  select * from suplidores;
  /*Con union: podemos ver los datos de una tabla y de otra tabla sin usar un join, siempre y cuando cumplamos las reglas*/

  /*1.- Visualizar los campos: contacto, ciudad y pais de la tabla Clientes y Suplidores*/
  select contacto, ciudad, pais from clientes
  union /*Union: si colocamos solo la instruccion union, vamos a ver los valores distintos*/
  select contacto, ciudad, pais from suplidores;

  /*2.- Ver los valores duplicados*/
  select contacto, ciudad, pais from clientes
  union all /*All: el valor all sirve para ver valores duplicados*/
  select contacto, ciudad, pais from suplidores;

  /*3.- Ver los registros que vienen de la tabla clientes y la tabla suplidores.*/
  select 'Cliente' as Tipo, contacto, ciudad, pais from clientes /*'Cliente' as Tipo: 'NombreDeLaTabla' as NombreDelCampoEnElQueSeVaMostrarLosNombresDeLasTablas */
  union 
  select 'Suplidor' as Tipo, contacto, ciudad, pais from suplidores;

  /*4.- Ordenar por pais*/
  select 'Cliente' as Tipo, contacto, ciudad, pais from clientes 
  union 
  select 'Suplidor' as Tipo, contacto, ciudad, pais from suplidores
  order by pais;

  /*5.- */
  select 'Cliente' as tipo, ciudad, pais from clientes where pais = 'Mexico'
  union
  select 'Suplidor' as tipo, ciudad, pais from suplidores where pais = 'Mexico'

  /*
    El resultado seria el siguiente:
    |tipo	 |  ciudad			|  pais |
	|Cliente | Ciudad de Ensueno| Mexico|
	|Cliente | Otra Ciudad		| Mexico|
  */

