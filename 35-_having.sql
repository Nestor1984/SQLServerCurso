create database _having;
use _having;

/*Having: se utiliza para realizar filtros a consultas en donde estemos trabajando
con otras funciones de agrupamiento.
*/

-- NOTA: HAVING FUNCIONA EXACTAMENTE IGUAL QUE LA CLAUSULA WHERE (PERO NOS SIRVE PARA FUNCIONES)

CREATE TABLE clientes (
  idcliente INT,
  nombre VARCHAR(50),
  direccion VARCHAR(100),
  ciudad VARCHAR(50),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50)
);
INSERT INTO clientes (idcliente, nombre, direccion, ciudad, codigo_postal, pais)
VALUES
  (1, 'Juan P�rez', 'Calle 123', 'Ciudad de M�xico', '12345', 'M�xico'),
  (2, 'Mar�a Garc�a', 'Avenida Principal 456', 'Monterrey', '67890', 'M�xico'),
  (3, 'Carlos L�pez', 'Calle Principal 789', 'Guadalajara', '54321', 'M�xico'),
  (4, 'Ana Rodr�guez', 'Carrera 10', 'Bogot�', '11111', 'Colombia'),
  (5, 'Luisa Mart�nez', 'Calle 20', 'Medell�n', '22222', 'Colombia'),
  (6, 'Pedro G�mez', 'Avenida Central', 'Cali', '33333', 'Colombia'),
  (7, 'Pablo Fern�ndez', 'Calle Principal 1', 'Madrid', '28001', 'Espa�a'),
  (8, 'Sof�a Torres', 'Avenida Gran V�a', 'Barcelona', '08001', 'Espa�a'),
  (9, 'Javier Ram�rez', 'Calle Diagonal', 'Valencia', '46001', 'Espa�a'),
  (10, 'Fernanda Silva', 'Avenida 9 de Julio', 'Buenos Aires', '1000', 'Argentina'),
  (11, 'Diego L�pez', 'Calle Florida', 'C�rdoba', '2000', 'Argentina'),
  (12, 'Gabriela Gonz�lez', 'Avenida Libertador', 'Rosario', '3000', 'Argentina'),
  (13, 'Mario Huam�n', 'Jir�n de la Uni�n', 'Lima', '01', 'Per�'),
  (14, 'Rosa Cruz', 'Avenida Arequipa', 'Arequipa', '02', 'Per�'),
  (15, 'Andr�s Torres', 'Calle Las Nazarenas', 'Cusco', '03', 'Per�'),
  (16, 'Camila Soto', 'Avenida Providencia', 'Santiago', '8320000', 'Chile'),
  (17, 'Lucas Morales', 'Calle Alonso de C�rdova', 'Vi�a del Mar', '8320000', 'Chile'),
  (18, 'Valentina Castro', 'Avenida Apoquindo', 'Valpara�so', '8320000', 'Chile'),
  (19, 'Mariano Mendoza', 'Calle Tacna', 'Arica', '1000000', 'Chile'),
  (20, 'Laura Torres', 'Avenida Pedro Montt', 'Antofagasta', '1000000', 'Chile'),
  (21, 'Isabella Morales', 'Calle Principal 2', 'Ciudad de M�xico', '54321', 'M�xico'),
  (22, 'Emilio Vargas', 'Avenida Reforma', 'Ciudad de M�xico', '12345', 'M�xico'),
  (23, 'Valeria Gonz�lez', 'Calle Morelos', 'Monterrey', '67890', 'M�xico'),
  (24, 'Daniel Silva', 'Avenida Ju�rez', 'Monterrey', '54321', 'M�xico'),
  (25, 'Sara Ram�rez', 'Calle Independencia', 'Guadalajara', '11111', 'M�xico'),
  (26, 'Javier Garc�a', 'Avenida Hidalgo', 'Guadalajara', '22222', 'M�xico'),
  (27, 'Camila Torres', 'Calle 20 de Noviembre', 'Bogot�', '33333', 'Colombia'),
  (28, 'Diego Castro', 'Avenida de los Andes', 'Bogot�', '67890', 'Colombia'),
  (29, 'Valentina Vargas', 'Calle Santander', 'Medell�n', '11111', 'Colombia'),
  (30, 'Andr�s P�rez', 'Avenida Oriental', 'Medell�n', '54321', 'Colombia'),
  (31, 'Luciana L�pez', 'Calle Mayor', 'Cali', '22222', 'Colombia'),
  (32, 'Sebasti�n Ram�rez', 'Avenida 9 de Octubre', 'Cali', '33333', 'Colombia'),
  (33, 'Paula Fern�ndez', 'Calle Gran V�a', 'Madrid', '11111', 'Espa�a'),
  (34, 'Joaqu�n Torres', 'Avenida Paseo del Prado', 'Madrid', '22222', 'Espa�a'),
  (35, 'Luc�a Herrera', 'Calle Serrano', 'Barcelona', '33333', 'Espa�a'),
  (36, 'Tom�s Mart�nez', 'Avenida Diagonal', 'Barcelona', '67890', 'Espa�a'),
  (37, 'Catalina Castro', 'Calle San Mart�n', 'Valencia', '54321', 'Espa�a'),
  (38, 'Mateo Morales', 'Avenida Blasco Ib��ez', 'Valencia', '11111', 'Espa�a'),
  (39, 'Isidora Ram�rez', 'Calle Florida', 'Buenos Aires', '22222', 'Argentina'),
  (40, 'Benjam�n Silva', 'Avenida Corrientes', 'Buenos Aires', '33333', 'Argentina'),
  (41, 'Valent�n G�mez', 'Calle Hidalgo', 'C�rdoba', '67890', 'Argentina'),
  (42, 'Renata Torres', 'Avenida Libertador', 'C�rdoba', '54321', 'Argentina'),
  (43, 'Emilio Soto', 'Calle Santa Fe', 'Rosario', '11111', 'Argentina'),
  (44, 'Martina Morales', 'Avenida 27 de Abril', 'Rosario', '22222', 'Argentina'),
  (45, 'Felipe Gonz�lez', 'Calle Huallaga', 'Lima', '33333', 'Per�'),
  (46, 'Renata Castro', 'Avenida Abancay', 'Lima', '67890', 'Per�'),
  (47, 'Sebasti�n Herrera', 'Calle Mariscal Miller', 'Arequipa', '54321', 'Per�'),
  (48, 'Antonella Ram�rez', 'Avenida Dolores', 'Arequipa', '11111', 'Per�'),
  (49, 'Maximiliano Silva', 'Calle Merced', 'Cusco', '22222', 'Per�'),
  (50, 'Valentina Torres', 'Avenida El Sol', 'Cusco', '33333', 'Per�'),
  (51, 'Agust�n Morales', 'Calle Merced', 'Santiago', '67890', 'Chile'),
  (52, 'Renata Castro', 'Avenida Providencia', 'Santiago', '54321', 'Chile'),
  (53, 'Mat�as Herrera', 'Calle Alonso de C�rdova', 'Vi�a del Mar', '11111', 'Chile'),
  (54, 'Emilia Ram�rez', 'Avenida San Mart�n', 'Vi�a del Mar', '22222', 'Chile'),
  (55, 'Luciano Gonz�lez', 'Calle San Mart�n', 'Valpara�so', '33333', 'Chile'),
  (56, 'Delfina Silva', 'Avenida Err�zuriz', 'Valpara�so', '67890', 'Chile'),
  (57, 'M�ximo L�pez', 'Calle 21 de Mayo', 'Arica', '54321', 'Chile'),
  (58, 'Isidora Morales', 'Avenida Pedro Montt', 'Arica', '11111', 'Chile'),
  (59, 'Felipe Castro', 'Calle Rancagua', 'Antofagasta', '22222', 'Chile'),
  (60, 'Constanza Torres', 'Avenida Balmaceda', 'Antofagasta', '33333', 'Chile');

  select * from clientes;

  /*Ej 1*/
  select count(idCliente) as "Cantidad clientes" , pais
  from clientes
  group by pais
  having count(idcliente) > 5 -- quiero que tome la cantidad de clientes que son mayores a 5
  order by count(idCliente) desc;
    
  /*Ej 2: Ejemplo usando alias en having*/
  select count(idCliente) as "Cantidad clientes" , pais
  from clientes
  group by pais
  having count(idCliente) > 5 -- quiero que tome la cantidad de clientes que son mayores a 5
  order by "Cantidad clientes" desc;

  -- Insertamos tablas pasadas
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

  /*Ej 3: Having con union de tablas*/
  select v.nombre, count(o.idorden) as "cantidad ordenes"
  from ordenes o
  inner join vendedor v
  on o.id_vendedor = v.id_vendedor
  group by nombre
  having count(o.idorden) > 2;

  /*Ej 4: Traer registros de Ana y Pedro*/
  select v.nombre, count(o.idorden) as "cantidad ordenes"
  from ordenes o
  inner join vendedor v
  on o.id_vendedor = v.id_vendedor
  where nombre like '%Ana%' or nombre like '%Pedro%'
  group by nombre -- NOTA: Group By siempre se utiliza con funciones de agrupamiento como: max, min, sum, count, avg, etc.
  having count(o.idorden) > 2; -- NOTA: Having sirve para filtrar consultas en donde estamos usando funciones con agrupacion
