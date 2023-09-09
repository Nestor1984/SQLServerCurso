create database tablas;
use tablas;

create table Empleados(
	idempleado int,
	nombre varchar(20),
	apellido varchar(30),
	edad numeric(2), /*Solo permitimos 2 digitos*/
	telefono numeric(10), /*Solo permitimos 10 digitos*/
	direccion varchar(100),
	fecha_nacimiento date,
	salario decimal(18,2),
	activo char(2)/*solo permite 2 caracteres*/
);

insert into Empleados values(1, 'Jose', 'Feliciano', 35, 1234567890, 'calle primera no 1', '1980-06-03', 30000.00, 'SI');
insert into Empleados values(2, 'Manuel', 'Gonzales', 25, 456789123, 'calle primera no 2', '1977-06-02', 45000.00, 'NO');



