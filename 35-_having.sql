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
  (1, 'Juan Pérez', 'Calle 123', 'Ciudad de México', '12345', 'México'),
  (2, 'María García', 'Avenida Principal 456', 'Monterrey', '67890', 'México'),
  (3, 'Carlos López', 'Calle Principal 789', 'Guadalajara', '54321', 'México'),
  (4, 'Ana Rodríguez', 'Carrera 10', 'Bogotá', '11111', 'Colombia'),
  (5, 'Luisa Martínez', 'Calle 20', 'Medellín', '22222', 'Colombia'),
  (6, 'Pedro Gómez', 'Avenida Central', 'Cali', '33333', 'Colombia'),
  (7, 'Pablo Fernández', 'Calle Principal 1', 'Madrid', '28001', 'España'),
  (8, 'Sofía Torres', 'Avenida Gran Vía', 'Barcelona', '08001', 'España'),
  (9, 'Javier Ramírez', 'Calle Diagonal', 'Valencia', '46001', 'España'),
  (10, 'Fernanda Silva', 'Avenida 9 de Julio', 'Buenos Aires', '1000', 'Argentina'),
  (11, 'Diego López', 'Calle Florida', 'Córdoba', '2000', 'Argentina'),
  (12, 'Gabriela González', 'Avenida Libertador', 'Rosario', '3000', 'Argentina'),
  (13, 'Mario Huamán', 'Jirón de la Unión', 'Lima', '01', 'Perú'),
  (14, 'Rosa Cruz', 'Avenida Arequipa', 'Arequipa', '02', 'Perú'),
  (15, 'Andrés Torres', 'Calle Las Nazarenas', 'Cusco', '03', 'Perú'),
  (16, 'Camila Soto', 'Avenida Providencia', 'Santiago', '8320000', 'Chile'),
  (17, 'Lucas Morales', 'Calle Alonso de Córdova', 'Viña del Mar', '8320000', 'Chile'),
  (18, 'Valentina Castro', 'Avenida Apoquindo', 'Valparaíso', '8320000', 'Chile'),
  (19, 'Mariano Mendoza', 'Calle Tacna', 'Arica', '1000000', 'Chile'),
  (20, 'Laura Torres', 'Avenida Pedro Montt', 'Antofagasta', '1000000', 'Chile'),
  (21, 'Isabella Morales', 'Calle Principal 2', 'Ciudad de México', '54321', 'México'),
  (22, 'Emilio Vargas', 'Avenida Reforma', 'Ciudad de México', '12345', 'México'),
  (23, 'Valeria González', 'Calle Morelos', 'Monterrey', '67890', 'México'),
  (24, 'Daniel Silva', 'Avenida Juárez', 'Monterrey', '54321', 'México'),
  (25, 'Sara Ramírez', 'Calle Independencia', 'Guadalajara', '11111', 'México'),
  (26, 'Javier García', 'Avenida Hidalgo', 'Guadalajara', '22222', 'México'),
  (27, 'Camila Torres', 'Calle 20 de Noviembre', 'Bogotá', '33333', 'Colombia'),
  (28, 'Diego Castro', 'Avenida de los Andes', 'Bogotá', '67890', 'Colombia'),
  (29, 'Valentina Vargas', 'Calle Santander', 'Medellín', '11111', 'Colombia'),
  (30, 'Andrés Pérez', 'Avenida Oriental', 'Medellín', '54321', 'Colombia'),
  (31, 'Luciana López', 'Calle Mayor', 'Cali', '22222', 'Colombia'),
  (32, 'Sebastián Ramírez', 'Avenida 9 de Octubre', 'Cali', '33333', 'Colombia'),
  (33, 'Paula Fernández', 'Calle Gran Vía', 'Madrid', '11111', 'España'),
  (34, 'Joaquín Torres', 'Avenida Paseo del Prado', 'Madrid', '22222', 'España'),
  (35, 'Lucía Herrera', 'Calle Serrano', 'Barcelona', '33333', 'España'),
  (36, 'Tomás Martínez', 'Avenida Diagonal', 'Barcelona', '67890', 'España'),
  (37, 'Catalina Castro', 'Calle San Martín', 'Valencia', '54321', 'España'),
  (38, 'Mateo Morales', 'Avenida Blasco Ibáñez', 'Valencia', '11111', 'España'),
  (39, 'Isidora Ramírez', 'Calle Florida', 'Buenos Aires', '22222', 'Argentina'),
  (40, 'Benjamín Silva', 'Avenida Corrientes', 'Buenos Aires', '33333', 'Argentina'),
  (41, 'Valentín Gómez', 'Calle Hidalgo', 'Córdoba', '67890', 'Argentina'),
  (42, 'Renata Torres', 'Avenida Libertador', 'Córdoba', '54321', 'Argentina'),
  (43, 'Emilio Soto', 'Calle Santa Fe', 'Rosario', '11111', 'Argentina'),
  (44, 'Martina Morales', 'Avenida 27 de Abril', 'Rosario', '22222', 'Argentina'),
  (45, 'Felipe González', 'Calle Huallaga', 'Lima', '33333', 'Perú'),
  (46, 'Renata Castro', 'Avenida Abancay', 'Lima', '67890', 'Perú'),
  (47, 'Sebastián Herrera', 'Calle Mariscal Miller', 'Arequipa', '54321', 'Perú'),
  (48, 'Antonella Ramírez', 'Avenida Dolores', 'Arequipa', '11111', 'Perú'),
  (49, 'Maximiliano Silva', 'Calle Merced', 'Cusco', '22222', 'Perú'),
  (50, 'Valentina Torres', 'Avenida El Sol', 'Cusco', '33333', 'Perú'),
  (51, 'Agustín Morales', 'Calle Merced', 'Santiago', '67890', 'Chile'),
  (52, 'Renata Castro', 'Avenida Providencia', 'Santiago', '54321', 'Chile'),
  (53, 'Matías Herrera', 'Calle Alonso de Córdova', 'Viña del Mar', '11111', 'Chile'),
  (54, 'Emilia Ramírez', 'Avenida San Martín', 'Viña del Mar', '22222', 'Chile'),
  (55, 'Luciano González', 'Calle San Martín', 'Valparaíso', '33333', 'Chile'),
  (56, 'Delfina Silva', 'Avenida Errázuriz', 'Valparaíso', '67890', 'Chile'),
  (57, 'Máximo López', 'Calle 21 de Mayo', 'Arica', '54321', 'Chile'),
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

    insert into vendedor values(1, 'Juan Pérez', '1234567890');
    insert into vendedor values(2, 'María Gómez', '9876543210');
    insert into vendedor values(3, 'Carlos Rodríguez', '5555555555');
    insert into vendedor values(4, 'Laura López', '9999999999');
    insert into vendedor values(5, 'Pedro Martínez', '1111111111');
    insert into vendedor values(6, 'Ana Sánchez', '2222222222');
    insert into vendedor values(7, 'José Morales', '3333333333');

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
