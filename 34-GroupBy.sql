create database groupBy;
use groupBy;

/*Group by: es una funcion de sql que agrupa filas que tienen los mismos valores en el resultado que tiene la misma
consulta.
Esta funcion se usa mucho con funciones agregadas como: Count(), Max(), Min(), Sum(), Avg().
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
insert into clientes values(2, 'Maria Lopez', 'Maria Lopez', 'Avenida Imaginaria 456', 'Otra Ciudad', '54321', 'M�xico');
insert into clientes values(3, 'Carlos Ramirez', 'Carlos Ramirez', 'Carrera Inexistente 789', 'Ciudad Fantasma', '67890', 'Colombia');
insert into clientes values(4, 'Luisa Fern�ndez', 'Luisa Fern�ndez', 'Calle Sin Nombre 42', 'Ciudad Irreal', '24680', 'Per�');
insert into clientes values(5, 'Roberto Castro', 'Roberto Castro', 'Paseo de los Sue�os 789', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(6, 'Ana G�mez', 'Ana G�mez', 'Avenida de los Sue�os 111', 'Ciudad de Ensue�o', '12345', 'M�xico');
  insert into clientes values(7, 'Pedro Rodr�guez', 'Pedro Rodr�guez', 'Calle del Sol 222', 'Ciudad del Sol', '54321', 'Argentina');
  insert into clientes values(8, 'Laura Silva', 'Laura Silva', 'Carrera Imaginaria 333', 'Ciudad Ficticia', '67890', 'Colombia');
  insert into clientes values(9, 'Javier Mart�nez', 'Javier Mart�nez', 'Paseo Sin Fin 444', 'Ciudad Irreal', '24680', 'Per�');
  insert into clientes values(10, 'Mar�a Torres', 'Mar�a Torres', 'Avenida del Lago 555', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(11, 'Roberto Gonz�lez', 'Roberto Gonz�lez', 'Calle del Bosque 666', 'Ciudad del Sol', '13579', 'Argentina');
  insert into clientes values(12, 'Carolina Herrera', 'Carolina Herrera', 'Carrera de los Sue�os 777', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(13, 'Daniel Mendoza', 'Daniel Mendoza', 'Paseo del Mar 888', 'Ciudad Irreal', '24680', 'Per�');
  insert into clientes values(14, 'Sof�a Ram�rez', 'Sof�a Ram�rez', 'Avenida del Viento 999', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(15, 'Fernando Morales', 'Fernando Morales', 'Calle del Monte 1010', 'Ciudad del Sol', '24680', 'Argentina');
  insert into clientes values(16, 'Valeria Pe�a', 'Valeria Pe�a', 'Carrera del R�o 1111', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(17, 'Hugo Rojas', 'Hugo Rojas', 'Paseo de la Monta�a 1212', 'Ciudad Irreal', '13579', 'Per�');
  insert into clientes values(18, 'Gabriela Salinas', 'Gabriela Salinas', 'Avenida del Mar 1313', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(19, 'Andr�s Castro', 'Andr�s Castro', 'Calle del Cielo 1414', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(20, 'Luisana S�nchez', 'Luisana S�nchez', 'Carrera del Horizonte 1515', 'Ciudad Ficticia', '13579', 'Colombia');
  insert into clientes values(21, 'Mart�n Vega', 'Mart�n Vega', 'Paseo del Bosque 1616', 'Ciudad Irreal', '86420', 'Per�');
  insert into clientes values(22, 'Carla Medina', 'Carla Medina', 'Avenida de los �ngeles 1717', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(24, 'Cecilia Ramos', 'Cecilia Ramos', 'Carrera de la Luna 1919', 'Ciudad Ficticia', '13579', 'Argentina');
  insert into clientes values(25, 'Alejandro Vargas', 'Alejandro Vargas', 'Paseo del Sol 2020', 'Ciudad Irreal', '86420', 'Colombia');
  insert into clientes values(26, 'Daniela Fern�ndez', 'Daniela Fern�ndez', 'Avenida del Cielo 2121', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(27, 'Manuel Torres', 'Manuel Torres', 'Calle del Mar 2222', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(28, 'Gabriela Mendoza', 'Gabriela Mendoza', 'Carrera de la Monta�a 2323', 'Ciudad Ficticia', '13579', 'Colombia');
  insert into clientes values(29, 'Sebasti�n Rojas', 'Sebasti�n Rojas', 'Paseo del R�o 2424', 'Ciudad Irreal', '98765', 'Per�');
  insert into clientes values(30, 'Valentina Salazar', 'Valentina Salazar', 'Avenida del Bosque 2525', 'Ciudad de Ensue�o', '86420', 'Chile');
  insert into clientes values(31, 'Francisco Morales', 'Francisco Morales', 'Calle de la Luna 2626', 'Ciudad del Sol', '13579', 'Argentina');
  insert into clientes values(32, 'Marcela Vega', 'Marcela Vega', 'Carrera del Sol 2727', 'Ciudad Ficticia', '98765', 'Colombia');
  insert into clientes values(33, 'Andr�s Castro', 'Andr�s Castro', 'Paseo de los Sue�os 2828', 'Ciudad Irreal', '86420', 'Per�');
  insert into clientes values(34, 'Daniela Rojas', 'Daniela Rojas', 'Avenida de la Fantas�a 2929', 'Ciudad de Ensue�o', '13579', 'Chile');
  insert into clientes values(35, 'Roberto Salinas', 'Roberto Salinas', 'Calle de los Sue�os 3030', 'Ciudad del Sol', '98765', 'Argentina');
  insert into clientes values(36, 'Laura Torres', 'Laura Torres', 'Carrera de la Imaginaci�n 3131', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(37, 'Javier Mendoza', 'Javier Mendoza', 'Paseo de los Sue�os 3232', 'Ciudad Irreal', '13579', 'Per�');
  insert into clientes values(38, 'Carolina Salazar', 'Carolina Salazar', 'Avenida de los Recuerdos 3333', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(39, 'Gabriel Medina', 'Gabriel Medina', 'Calle de la Esperanza 3434', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(40, 'Isabella Vargas', 'Isabella Vargas', 'Carrera de los Sue�os 3535', 'Ciudad Ficticia', '13579', 'Colombia');
  
  select * from clientes;

  /*Ejemplo 1: Cuenta cuantos clientes hay, busca su pais y agrupa por pais*/
  select count(idcliente) as Cantidad, pais
  from clientes
  group by pais;

   /*Ejemplo 2: Cuenta cuantos clientes hay, busca su pais, agrupa por pais y ordena por el conteo de idCliente*/
  select count(idcliente) as Cantidad, pais
  from clientes
  group by pais
  order by count(idCliente);

   /*Ejemplo 3: Cuenta cuantos clientes hay, busca su pais, agrupa por pais y ordena por el conteo de idCliente en forma descendente*/
  select count(idcliente) as Cantidad, pais
  from clientes
  group by pais
  order by count(idCliente) desc;

  /*Ejemplo 4: Cuenta cuantos clientes hay, busca su pais, agrupa por pais y ordena por el alias del conteo de idCliente en forma descendente*/
  select count(idcliente) as Cantidad, pais
  from clientes
  group by pais
  order by count(idCliente) desc;

  /*Ejemplo 5: selecciona el campo maximo de mi campo idCliente en un campo que se llame cantidad jutno con el campo pais de la tabla Clientes, agrupalos con pais 
  y ordenalos por cantidad en forma decendente*/
  select max(idcliente) as Cantidad, pais
  from clientes
  group by pais
  order by Cantidad desc;

  /*Ejemplo 6:*/
  select min(idcliente) as Cantidad, pais
  from clientes
  group by pais
  order by Cantidad desc;

  /*Ejemplo 7: Con el promedio de los valores idCliente*/
  select avg(idcliente) as Cantidad, pais
  from clientes
  group by pais
  order by Cantidad desc;

  /*Ejemplo con joins*/

  CREATE TABLE ordenes (
    idorden INT PRIMARY KEY,
    idcliente INT,
    idempleado INT,
    fecha_orden DATE,
    id_vendedor INT
);
	insert into ordenes values(1, 1001, 2001, '2023-06-01', 1);
    insert into ordenes values(2, 1002, 2002, '2023-06-02', 2);
    insert into ordenes values(3, 1003, 2003, '2023-06-03', 3);
    insert into ordenes values(4, 1004, 2004, '2023-06-04', 4);
    insert into ordenes values(5, 1005, 2005, '2023-06-05', 5);
    insert into ordenes values(6, 1006, 2006, '2023-06-06', 6);
    insert into ordenes values(7, 1007, 2007, '2023-06-07', 7);
    insert into ordenes values(8, 1008, 2008, '2023-06-08', 1);
    insert into ordenes values(9, 1009, 2009, '2023-06-09', 2);
    insert into ordenes values(10, 1010, 2010, '2023-06-10', 3);
    insert into ordenes values(11, 1011, 2011, '2023-06-11', 4);
    insert into ordenes values(12, 1012, 2012, '2023-06-12', 5);
    insert into ordenes values(13, 1013, 2013, '2023-06-13', 6);
    insert into ordenes values(14, 1014, 2014, '2023-06-14', 7);
    insert into ordenes values(15, 1015, 2015, '2023-06-15', 1);
    insert into ordenes values(16, 1016, 2016, '2023-06-16', 2);
    insert into ordenes values(17, 1017, 2017, '2023-06-17', 3);
    insert into ordenes values(18, 1018, 2018, '2023-06-18', 4);
    insert into ordenes values(19, 1019, 2019, '2023-06-19', 5);
    insert into ordenes values(20, 1020, 2020, '2023-06-20', 6);
    insert into ordenes values(21, 1021, 2021, '2019-07-15', 1);
    insert into ordenes values(22, 1022, 2022, '2020-02-28', 2);
    insert into ordenes values(23, 1023, 2023, '2020-11-10', 3);
    insert into ordenes values(24, 1024, 2024, '2021-05-07', 4);
    insert into ordenes values(25, 1025, 2025, '2021-12-25', 5);
    insert into ordenes values(26, 1026, 2026, '2022-08-18', 6);
    insert into ordenes values(27, 1027, 2027, '2023-03-01', 7);
    insert into ordenes values(28, 1028, 2028, '2019-10-22', 1);
    insert into ordenes values(29, 1029, 2029, '2020-07-12', 2);
    insert into ordenes values(30, 1030, 2030, '2020-11-30', 3);
    insert into ordenes values(31, 1031, 2031, '2021-08-04', 4);
    insert into ordenes values(32, 1032, 2032, '2022-01-15', 5);
    insert into ordenes values(33, 1033, 2033, '2022-10-05', 6);
    insert into ordenes values(34, 1034, 2034, '2023-05-18', 7);
    insert into ordenes values(35, 1035, 2035, '2019-12-08', 1);
    insert into ordenes values(36, 1036, 2036, '2020-06-25', 2);
    insert into ordenes values(37, 1037, 2037, '2020-09-17', 3);
    insert into ordenes values(38, 1038, 2038, '2021-04-02', 4);
    insert into ordenes values(39, 1039, 2039, '2022-01-05', 5);
    insert into ordenes values(40, 1040, 2040, '2022-09-28', 6);


CREATE TABLE vendedor (
    id_vendedor INT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(20)
);

    insert into vendedor values(1, 'Juan P�rez', '1234567890');
    insert into vendedor values(2, 'Mar�a G�mez', '9876543210');
    insert into vendedor values(3, 'Carlos Rodr�guez', '5555555555');
    insert into vendedor values(4, 'Laura L�pez', '9999999999');
    insert into vendedor values(5, 'Pedro Mart�nez', '1111111111');
    insert into vendedor values(6, 'Ana S�nchez', '2222222222');
    insert into vendedor values(7, 'Jos� Morales', '3333333333');
	
	/*Ej 1: Seleccioname de mi tabla vendedor el campo nombre, la cantidad de ordenes en mi tabla ordenes desde
	su campo idorden en un campo que se llame "Cantidad de ordenes", tomando como tabla de la izquierda a mi tabla ordenes
	y uniendola con mi tabla vendedor.
	  ve: Alias para tabla vendedor
	  o: Alias para tabla ordenes
	*/
	select ve.nombre, count(o.idorden) as "Cantidad de ordenes"
	from ordenes o
	left join vendedor ve
	on ve.id_vendedor = o.id_vendedor
	group by ve.nombre;