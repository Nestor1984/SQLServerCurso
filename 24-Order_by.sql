create database Order_by;
use Order_by;
/*
order by: es una funcionalidad de el lenguaje SQL para organizar nuestras consultas por un campo
especifico, ya sea en valores ascendentes o descendentes.
*/

-- REUTILIZAMOS LA TABLA EMPLEADOS 
create table Empleados(
	ID int,
	NOMBRE varchar(20),
	APELLIDO varchar(30),
	EDAD numeric(2), /*Solo permitimos 2 digitos*/
	TELEFONO numeric(10), /*Solo permitimos 10 digitos*/
	DIRECCION varchar(100),
	FECHA_NACIMIENTO date,
	SALARIO decimal(18,2),
	ACTIVO char(2)/*solo permite 2 caracteres*/
);


  insert into empleados values (1, 'Juan', 'Pérez', 25, 1234567890, 'Calle 123', '1978-06-15', 2500.00, 'NO');
  insert into empleados values (1, 'Juan', 'Pérez', 25, 1234567890, 'Calle 123', '1978-06-15', 2500.00, 'NO');
  insert into empleados values (2, 'María', 'López', 30, 9876543210, 'Avenida 456', '1980-03-20', 3000.00, 'SI');
  insert into empleados values (4, 'Ana', 'Martínez', 35, 9998887770, 'Avenida 012', '1977-09-05', 3500.00, 'SI');
  insert into empleados values (5, 'Pedro', 'Sánchez', 22, 1112223334, 'Calle 567', '1980-01-25', 2000.00, 'NO');
  insert into empleados values (6, 'Laura', 'Ramírez', 31, 4444444444, 'Avenida 890', '1978-07-12', 3200.00, 'SI');
  insert into empleados values (7, 'Luis', 'Torres', 29, 7777777777, 'Calle 345', '1979-04-18', 2700.00, 'NO');
  insert into empleados values (9, 'Jorge', 'García', 33, 2223334445, 'Calle 901', '1977-12-27', 3400.00, 'NO');
  insert into empleados values (10, 'Silvia', 'Lara', 24, 8889990000, 'Avenida 234', '1980-05-09', 2200.00, 'SI');
  insert into empleados values (11, 'Roberto', 'Rojas', 26, 3334445556, 'Calle 567', '1979-02-14', 2400.00, 'SI');
  insert into empleados values (12, 'Patricia', 'Cruz', 32, 2223334444, 'Avenida 890', '1978-08-21', 3100.00, 'SI');
  insert into empleados values (13, 'Daniel', 'Gómez', 29, 5556667778, 'Calle 123', '1979-06-06', 2800.00, 'SI');
  insert into empleados values (14, 'Sara', 'Vargas', 34, 6667778889, 'Avenida 456', '1977-04-01', 3300.00, 'SI');

 -- CREAMOS UN INDICE DE TIPO NONCLUSTERED
    -- Creamos un indice para el edad
  /* Sintaxis:
	  create nonclustered index I_nombreDelIndice
	  on nombreDeLaTabla(nombreDelCampo)
  */
  create nonclustered index I_edad_empleado
  on empleados(edad);

 -- Creamos nuevos indices´para el campo id y salario
  create clustered index I_id_sal
  on empleados(id, salario);

-- REUTILIZAMOS LA TABLA EMPLEADOS HASTA AQUI

-- Ej 1:
-- Organizamos la tabla por el campo edad:
select * from Empleados
order by edad; -- Por defecto es en orden ascendente

-- Ej 2:
-- Organizamos la tabla por el campo edad en forma ascendente (explicitamente):
select * from Empleados
order by edad asc;

-- Ej 3:
-- Organizamos la tabla por el campo edad en forma descendente:
select * from Empleados
order by edad desc;

-- Ej 4:
-- Organizamos la tabla por el campo activo en forma ascendente(explicitamente):
select * from Empleados
order by activo asc; -- lo ordenara en orden alfabetico ascendente

-- Ej 5:
-- Organizamos la tabla por el campo edad en forma ascendente donde la edad sea mayor a 25
select * from Empleados
where edad > 25
order by edad asc;

-- Ej 6:
-- Ordenar la tabla por edad y salario en forma ascendente
select nombre, apellido, edad, salario
from empleados
order by edad, salario; -- Organiza la busqueda primero por edad, luego por salario (la preferencia de organizacion la tiene el primer campo)






