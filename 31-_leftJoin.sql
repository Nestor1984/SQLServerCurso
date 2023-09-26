create database _leftJoin;
use _leftJoin;

-- Tabla clientes
create table clientes (
idcliente int not null primary key,
nombre varchar(20) not null,
apellido varchar(30) not null,
direccion varchar(100) not null,
ciudad varchar(50) not null,
telefono numeric(10) null,
);

INSERT INTO clientes (idcliente, nombre, apellido, direccion, ciudad, telefono)
VALUES
(1, 'Juan', 'P�rez', 'Calle 123', 'Ciudad A', 1234567890),
(2, 'Mar�a', 'Gonz�lez', 'Avenida 456', 'Ciudad B', 2345678901),
(3, 'Pedro', 'L�pez', 'Calle Principal', 'Ciudad C', 3456789012),
(4, 'Laura', 'Mart�nez', 'Avenida Central', 'Ciudad A', 4567890123),
(5, 'Carlos', 'Hern�ndez', 'Calle 789', 'Ciudad B', 5678901234),
(6, 'Ana', 'S�nchez', 'Avenida Secundaria', 'Ciudad C', 6789012345),
(7, 'Luis', 'Rodr�guez', 'Calle 321', 'Ciudad A', 7890123456),
(8, 'Sof�a', 'Fern�ndez', 'Avenida 654', 'Ciudad B', 8901234567),
(9, 'Andr�s', 'G�mez', 'Calle Secundaria', 'Ciudad C', 9012345678),
(10, 'Marta', 'Torres', 'Avenida Principal', 'Ciudad A', 1234567890),
(11, 'Alejandro', 'Vargas', 'Calle Central', 'Ciudad B', 2345678901),
(12, 'Patricia', 'Ortega', 'Avenida 123', 'Ciudad C', 3456789012),
(13, 'Roberto', 'Jim�nez', 'Calle 456', 'Ciudad A', 4567890123),
(14, 'Elena', 'Ru�z', 'Avenida 789', 'Ciudad B', 5678901234),
(15, 'Javier', 'Navarro', 'Calle Secundaria', 'Ciudad C', 6789012345),
(16, 'Carolina', 'Lara', 'Avenida 321', 'Ciudad A', 7890123456),
(17, 'Diego', 'Silva', 'Calle 654', 'Ciudad B', 8901234567),
(18, 'Luc�a', 'Romero', 'Avenida Central', 'Ciudad C', 9012345678),
(19, 'Gabriel', 'Flores', 'Calle Principal', 'Ciudad A', 1234567890),
(20, 'Valentina', 'Mendoza', 'Avenida Secundaria', 'Ciudad B', 2345678901),
(21, 'Mario', 'L�pez', 'Calle 789', 'Ciudad A', 3456789012),
(22, 'Camila', 'Garc�a', 'Avenida 456', 'Ciudad B', 4567890123),
(23, 'Jos�', 'Hern�ndez', 'Calle Principal', 'Ciudad C', 5678901234),
(24, 'Isabel', 'Rojas', 'Avenida Central', 'Ciudad A', 6789012345),
(25, 'Fernando', 'G�mez', 'Calle 123', 'Ciudad B', 7890123456),
(26, 'Ana', 'Lara', 'Avenida Secundaria', 'Ciudad C', 8901234567),
(27, 'Pedro', 'Fuentes', 'Calle 321', 'Ciudad A', 9012345678),
(28, 'Sara', 'Mart�nez', 'Avenida 654', 'Ciudad B', 1234567890),
(29, 'Gabriel', 'S�nchez', 'Calle Secundaria', 'Ciudad C', 2345678901),
(30, 'Valeria', 'Ortega', 'Avenida Principal', 'Ciudad A', 3456789012),
(31, 'Luisa', 'Vargas', 'Calle Central', 'Ciudad B', 4567890123),
(32, 'Daniel', 'Silva', 'Avenida 123', 'Ciudad C', 5678901234),
(33, 'Carolina', 'Torres', 'Calle 456', 'Ciudad A', 6789012345),
(34, 'Andr�s', 'Guzm�n', 'Avenida 789', 'Ciudad B', 7890123456),
(35, 'Mar�a', 'Romero', 'Calle Secundaria', 'Ciudad C', 8901234567),
(36, 'Alejandro', 'Mendoza', 'Avenida 321', 'Ciudad A', 9012345678),
(37, 'Valentina', 'P�rez', 'Calle 654', 'Ciudad B', 1234567890),
(38, 'Roberto', 'Fern�ndez', 'Avenida Central', 'Ciudad C', 2345678901),
(39, 'Laura', 'Gonz�lez', 'Calle Principal', 'Ciudad A', 3456789012),
(40, 'Javier', 'Soto', 'Avenida Secundaria', 'Ciudad B', 4567890123);

-- Tabla de ordenes
create table ordenes(
id_orden int not null primary key,
idcliente int foreign key references clientes(idcliente),
fecha_orden date default getdate(),
id_vendedor int not null
);

insert into ordenes values(1, 1, '2020-01-12' ,1);
insert into ordenes values(2, 2, '2021-03-20', 2);
insert into ordenes values(3, 3, '2021-06-10', 3);
insert into ordenes values(4, 4, '2021-09-05', 4);
insert into ordenes values(5, 5, GETDATE(),5);
insert into ordenes values(6, 1, '2022-02-28', 1);
insert into ordenes values(7, 2, '2022-05-14', 2);
insert into ordenes values(8, 3, '2022-07-29', 3);
insert into ordenes values(9, 4, GETDATE(), 4);
insert into ordenes values(10, 5, '2022-12-23', 5);
insert into ordenes values(11, 1, '2023-02-14', 1);
insert into ordenes values(12, 2, '2023-04-30', 2);
insert into ordenes values(13, 3, GETDATE(), 3);
insert into ordenes values(14, 4, '2023-09-28', 4);
insert into ordenes values(15, 5, '2023-11-12', 5);
insert into ordenes values(16, 1, '2023-02-05', 1);
insert into ordenes values(17, 2, '2023-04-12', 2);
insert into ordenes values(18, 3, '2023-07-20', 3);
insert into ordenes values(19, 4, GETDATE(), 4);
insert into ordenes values(20, 5, '2023-12-30', 5);
insert into ordenes values(21, 1, '2021-01-15', 1);
insert into ordenes values(22, 2, '2021-03-20', 2);
insert into ordenes values(23, 3, '2021-06-10', 3);
insert into ordenes values(24, 4, '2021-09-05', 4);
insert into ordenes values(25, 5, GETDATE(), 5);
insert into ordenes values(26, 1, '2022-02-28', 1);
insert into ordenes values(27, 2, '2022-05-14', 2);
insert into ordenes values(28, 3, '2022-07-29', 3);
insert into ordenes values(29, 4, GETDATE(), 4);
insert into ordenes values(30, 5, '2022-12-23', 5);
insert into ordenes values(31, 1, '2023-02-14', 1);
insert into ordenes values(32, 2, '2023-04-30', 2);
insert into ordenes values(33, 3, GETDATE(), 3);
insert into ordenes values(34, 4, '2023-09-28', 4);
insert into ordenes values(35, 5, '2023-11-12', 5);
insert into ordenes values(36, 1, '2023-02-05', 1);
insert into ordenes values(37, 2, '2023-04-12', 2);
insert into ordenes values(38, 3, '2023-07-20', 3);
insert into ordenes values(39, 4, GETDATE(), 4);
insert into ordenes values(40, 5, '2023-12-30', 5);

/* Left Join: nos trae todos los registros de la tabla que coloquemos en la izquierda, y los registros
 que coincidan con la tabla de la derecha.*/

 -- Ej 1 Realizar una consulta de todos mis clientes para ver cuales pueden tener ordenes de servicio y cuales no
 select clientes.nombre, clientes.apellido, ordenes.id_orden
 from clientes
 left join ordenes on clientes.idcliente = ordenes.idcliente;

 -- Ej 2
 select clientes.nombre, clientes.apellido, ordenes.id_orden
 from clientes
 left join ordenes on clientes.idcliente = ordenes.idcliente
 order by id_orden;

 -- Ej 3 (NOTA: CUANDO SE HABLA DE LEFT JOIN SIGNIFICA QUE TIENE PREFERENCIA LA TABLA DE LA IZQUIERDA)
 select clientes.nombre, clientes.apellido, ordenes.id_orden, ordenes.fecha_orden
 from clientes -- ESTA SERIA LA TABLA DE LA IZQUIERDA POR QUE ES LA PRIMERA QUE ESTAMOS COLOCANDO
 left join ordenes on clientes.idcliente = ordenes.idcliente -- Y ORDENES SERIA LA TABLA DE LA DERECHA
 order by id_orden;

 -- NOTA IMPORTANTE: (ESTE ES EL RESUMEN DE TODO) NULL SIGNIFICA QUE HAY COINCIDENCIA, SIN EMBARGO SEGUN EL LEFT JOIN DEBE TRAERLOS TODOS A DIFERENCIA DE INNER JOIN QUE SOLO VA TRAER LO QUE COINCIDA LO DEMAS LO VA EXCLUIR

 -- Ej 4: Uso de Alias
 select cli.nombre, cli.apellido, ord.id_orden -- select aliasDeLaTabla.campo, aliasDeLaTabla.campo, aliasDeLaTabla.campo
 from clientes cli
 left join ordenes ord 
 on cli.idcliente = ord.idcliente;

 -- Ej 5
 select cli.nombre, cli.apellido, ord.id_orden, ord.fecha_orden
 from clientes cli
 left join ordenes ord 
 on cli.idcliente = ord.idcliente
 order by ord.id_orden;

 -- RESUMEN FINAL: INNER JOIN BUSCAR COINCIDENCIAS EN AMBAS TABLAS
 select c.idcliente, o.idcliente
 from clientes c
 inner join ordenes o
 on o.idcliente = c.idcliente;

 