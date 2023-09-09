create database count_sum_avg;
use count_sum_avg;

-- FUNCIONES DE AGRUPACION: COUNT, SUM, AVG 
-- count: nos permite contar la cantidad de registros en nuestras tablas.
-- sum: nos permite realizar una sumatoria de registros.
-- avg: nos permite calcular el promedio de valores.

 create table empleados(
 id_empleado int not null primary key,
  nombre varchar(30),
  apellido varchar(30),
  direccion varchar(30),
  puesto varchar(50),
  sueldo decimal(6,2),
  cant_hijos tinyint
 );

  insert into empleados values(1, 'Juan', 'Pérez', 'Calle A, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(2, 'María', 'López', 'Calle B, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(3, 'Pedro', 'González', 'Calle C, Ciudad', 'Técnico', 2500.00, 1);
  insert into empleados values(4, 'Laura', 'García', 'Calle D, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(5, 'Carlos', 'Martínez', 'Calle E, Ciudad', 'Desarrollador', 4000.00, 2);
  insert into empleados values(6, 'Ana', 'Sánchez', 'Calle F, Ciudad', 'Contadora', 4500.00, 1);
  insert into empleados values(7, 'Luis', 'Rodríguez', 'Calle G, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(8, 'Patricia', 'Torres', 'Calle H, Ciudad', 'Técnico', 2500.00, 1);
  insert into empleados values(9, 'Javier', 'Hernández', 'Calle I, Ciudad', 'Gerente', 5000.00, 3);
  insert into empleados values(10, 'Sofía', 'Flores', 'Calle J, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(11, 'Alejandro', 'Luna', 'Calle K, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(12, 'Elena', 'Vargas', 'Calle L, Ciudad', 'Contadora', 4500.00, 2);
  insert into empleados values(13, 'Diego', 'Rojas', 'Calle M, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(14, 'Carmen', 'Navarro', 'Calle N, Ciudad', 'Técnico', 2500.00, 1);
  insert into empleados values(15, 'Gabriel', 'Soto', 'Calle O, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(16, 'Valeria', 'Gómez', 'Calle P, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(17, 'Hugo', 'Silva', 'Calle Q, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(18, 'Mónica', 'Mendoza', 'Calle R, Ciudad', 'Contadora', 4500.00, 3);
  insert into empleados values(19, 'Fernando', 'Chávez', 'Calle S, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(20, 'Adriana', 'Ortega', 'Calle T, Ciudad', 'Técnico', 2500.00, 1);
  insert into empleados values(21, 'Ricardo', 'Castro', 'Calle U, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(22, 'Camila', 'Morales', 'Calle V, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(23, 'Andrés', 'Ríos', 'Calle W, Ciudad', 'Técnico', 2500.00, 1);
  insert into empleados values(24, 'Isabella', 'Vega', 'Calle X, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(25, 'David', 'Herrera', 'Calle Y, Ciudad', 'Desarrollador', 4000.00, 2);
  insert into empleados values(26, 'Carolina', 'Santos', 'Calle Z, Ciudad', 'Contadora', 4500.00, 1);
  insert into empleados values(27, 'Raúl', 'Mendoza', 'Calle A1, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(28, 'Gabriela', 'Campos', 'Calle B1, Ciudad', 'Técnico', 2500.00, 1);
  insert into empleados values(29, 'Óscar', 'Delgado', 'Calle C1, Ciudad', 'Gerente', 5000.00, 3);
  insert into empleados values(30, 'Daniela', 'Castillo', 'Calle D1, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(31, 'Eduardo', 'Fuentes', 'Calle E1, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(32, 'Gabriela', 'Lara', 'Calle F1, Ciudad', 'Contadora', 4500.00, 2);
  insert into empleados values(33, 'Lorenzo', 'Ortiz', 'Calle G1, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(34, 'Valentina', 'Guerra', 'Calle H1, Ciudad', 'Técnico', 2500.00, 1);
  insert into empleados values(35, 'Héctor', 'Vargas', 'Calle I1, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(36, 'Daniela', 'Paredes', 'Calle J1, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(37, 'Santiago', 'Castañeda', 'Calle K1, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(38, 'Valeria', 'Cruz', 'Calle L1, Ciudad', 'Contadora', 4500.00, 3);
  insert into empleados values(39, 'Gustavo', 'Mejía', 'Calle M1, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(40, 'Alejandra', 'Rojas', 'Calle N1, Ciudad', 'Técnico', 2500.00, 1);

  select * from empleados;

  -- 1. Count
  -- Ver cuantos registros tiene esta tabla empleados
  select count(*) as Cantidad from empleados; -- count(*): contamos todos los campos

  -- Ver el total de sueldos en el puesto asistente
  select count(sueldo) from empleados
  where puesto = 'Asistente';

  -- 2. Sum
  -- Visualizamos la suma del campo sueldo
 select sum(sueldo) as total from empleados;

  -- Visualizamos la suma del campo sueldo, donde el puesto sea asistente
 select sum(sueldo) as total from empleados
 where puesto = 'Asistente';

   -- Visualizamos la suma del campo sueldo, con valores distintos
 select sum(distinct sueldo) from empleados; -- distinct sueldo: Recordemos que distinct sirve como filtro

 -- 3. Avg
 -- Visualizamos el promedio del campo sueldo
 select avg(sueldo) from empleados;

 -- Visualizamos el promedio del campo sueldo, donde el puesto sea gerente
 select avg(sueldo) from empleados
 where puesto = 'Gerente';

  -- Visualizamos el promedio del campo sueldo, con valores distintos
 select avg(distinct sueldo) from empleados; -- distinct sueldo: Recordemos que distinct sirve como filtro
 