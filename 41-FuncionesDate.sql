create database funcionesDate;
use funcionesDate;

-- 1.- getdate(): nos va retornar la fecha y hora actual de nuestro sistema
select getdate() as fecha;
-- Salida: 2023-10-01 16:36:40.273

-- 2.- dateadd: nos permite ver la fecha dentro de dias, meses, anios, horas y minutos
-- Ejemplo 2.1:
select dateadd(day, 1, getdate()); -- Agregale un dia a la fecha actual (me muestra el dia de manana). 
-- Salida: 2023-10-02 16:44:06.330

-- Ejemplo 2.2:
select dateadd(month, 2, getdate()); --Agregale dos meses a la fecha actual (me muestra dos meses despues). 
-- Salida: 2023-12-01 16:50:47.440

-- Ejemplo 2.3:
select dateadd(year, 2, getdate()); -- Agregale dos anios a la fecha actual (me muestra dos anios despues). 
-- Salida: 2025-10-01 16:55:00.643

-- Ejemplo 2.4:
select dateadd(hour, 3, getdate()); --Agregale tres horas a la fecha actual (me muestra tres horas despues). 
-- Salida: 2023-10-01 20:20:11.040

-- Ejemplo 2.5:
select dateadd(minute, 30, getdate()); -- Agregale 30 minutos a la fecha actual (me muestra 30 minutos despues). 
-- Salida: 2023-10-01 17:52:42.107

-- 3.- datename: nos permite ver el nombre de la fecha actual (meses, dias de la semana...)
-- Ejemplo 2.6:
select datename(month, getdate()); -- Muestrame el nombre del mes de la fecha actual (me muestra el nombre del mes actual). 
-- Salida: Octubre

-- Ejemplo 2.7:
select datename(weekday, getdate()); -- Ver nombre del dia de la semana de la fecha actual
-- Salida: Domingo

-- 4.- datepart: nos permite ver en numero la fecha actual (meses...)
-- Ejemplo 2.8:
select datepart(month, getDate()); -- Ver en numero el mes de la fecha actual
-- Salida: 10

-- EJERCICIO CON TABLA:
create table facturas(
  numero int not null,
  fecha date,
  cliente varchar(30),
  primary key(numero)
);

INSERT INTO facturas (numero, fecha, cliente)
VALUES
  (1, '2018-01-01', 'Juan Pérez'),
  (2, '2018-01-15', 'María González'),
  (3, '2018-01-22', 'Pedro Rodríguez'),
  (4, '2018-02-10', 'Ana López'),
  (5, '2018-02-05', 'Luisa Martínez'),
  (6, '2018-03-12', 'Carlos Sánchez'),
  (7, '2018-04-20', 'Laura Torres'),
  (8, '2018-05-18', 'Javier Herrera'),
  (9, '2018-06-27', 'Sofía Ramírez'),
  (10, '2018-10-14', 'Diego Castro'),
  (11, '2019-01-03', 'Valeria Gómez'),
  (12, '2019-02-25', 'Andrés Cruz'),
  (13, '2019-03-17', 'Gabriela Vargas'),
  (14, '2019-04-08', 'Miguel Flores'),
  (15, '2019-05-19', 'Fernanda Mendoza'),
  (16, '2019-06-27', 'Roberto Ríos'),
  (17, '2019-07-14', 'Paulina Acosta'),
  (18, '2019-08-29', 'Emilio Castro'),
  (19, '2019-09-11', 'Carolina Mejía'),
  (20, '2019-10-05', 'Jorge Mora'),
  (21, '2021-01-01', 'Juan Pérez'),
  (22, '2021-02-15', 'María González'),
  (23, '2021-03-22', 'Pedro Rodríguez'),
  (24, '2021-04-10', 'Ana López'),
  (25, '2021-05-05', 'Luisa Martínez'),
  (26, '2021-06-12', 'Carlos Sánchez'),
  (27, '2021-07-20', 'Laura Torres'),
  (28, '2021-08-18', 'Javier Herrera'),
  (29, '2021-09-27', 'Sofía Ramírez'),
  (30, '2021-10-14', 'Diego Castro'),
  (31, '2019-01-03', 'Valeria Gómez'),
  (32, '2020-02-25', 'Andrés Cruz'),
  (33, '2020-03-17', 'Gabriela Vargas'),
  (34, '2020-04-08', 'Miguel Flores'),
  (35, '2020-05-19', 'Fernanda Mendoza'),
  (36, '2020-06-27', 'Roberto Ríos'),
  (37, '2020-07-14', 'Paulina Acosta'),
  (38, '2020-08-29', 'Emilio Castro'),
  (39, '2020-09-11', 'Carolina Mejía'),
  (40, '2020-10-05', 'Jorge Mora');

  select * from facturas;

  -- EJ 1: Quiero ver las facturas entre enero del 2018 a un anio en adelante
  select * from facturas
  where fecha between '2018-01-01'
  and dateadd(year, 1, '2018-01-01'); -- Y un anio en adelante a la fecha actual

  -- EJ 2: Quiero ver las facturas entre enero y marzo
  select * from facturas
  where fecha between '2018-01-01'
  and dateadd(month, 3, '2018-01-01'); -- Y tres meses en adelante a la fecha actual
