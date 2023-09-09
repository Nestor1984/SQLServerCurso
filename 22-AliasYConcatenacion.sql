create database aliasYConcatenacion;
use aliasYConcatenacion;

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


-- Alias: Con 'as' colocamos un alias al campo
-- Ej 1: Sin espacios
select id as Identificador, nombre as Primer_Nombre, apellido as Primer_apellido, salario from Empleados
where salario < 3000;

-- Ej 2: Con espacios (debe ir entre comillas)
select id as Identificador, nombre as "Primer Nombre", apellido as "Primer apellido", salario from Empleados
where salario < 3000;

-- Concatenar registros: Unir registros (NOTA: EL SISTEMA SOLO PUEDE CONCATENAR REGISTROS DEL MISMO TIPO DE DATO)
-- Ej 1: Quiero ver en un solo campo nombre y apellido de empleados
select nombre + ' ' + apellido from empleados;

-- Ej 2: Quiero concatenar un valor varchar con un entero
select nombre + ' ' + apellido + ' ' + cast(edad as varchar(2)) as "Datos de empleados" from empleados; -- cast(edad as varchar(2)): con esta instruccion transformamos edad a varchar de un tamanio de 2


