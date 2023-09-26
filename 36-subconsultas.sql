create database subconsultas;
use subconsultas;

/*Una subconsulta: es una consulta completa que aparece luego de que colocamos nuestra clausula where
o nuestra funcion having en una sentencia de SQL. (es colocar una consulta dentro de otra consulta)

Para trabajar con subconsultas tenemos reglas:
- La subconsulta debe ir entre parentesis.
- En una subconsulta se debe especificar solo una columna o expresion, a no ser que estemos utilizando
las funciones IN, ANY, ALL Y EXISTS.
- No pueden contener una clausula Between, ni like.
- No puede contener Order By.
- Tampoco podemos utilizar una subconsulta para realizar un Update.
- Tampoco podemos utilizar una subconsulta para realizar un Delete.
*/

-- DE AQUI
create table facturas(
  numero int not null,
  fecha datetime,
  cliente varchar(30),
  primary key(numero)
);

create table detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  primary key(numerofactura,numeroitem),
   constraint FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   on update cascade
   on delete cascade
);

go

set dateformat ymd; -- set dateformat ymd: para cambiar el formato de fecha.

INSERT INTO facturas (numero, fecha, cliente) VALUES
  (1, '2023-06-28', 'Juan P�rez'),
  (2, '2023-06-28', 'Mar�a Gonz�lez'),
  (3, '2023-06-28', 'Carlos L�pez'),
  (4, '2023-06-28', 'Ana Rodr�guez'),
  (5, '2023-06-28', 'Luisa Mart�nez'),
  (6, '2023-06-28', 'Pedro Hern�ndez'),
  (7, '2023-06-28', 'Laura G�mez'),
  (8, '2023-06-28', 'Diego Torres'),
  (9, '2023-06-28', 'Valentina Ram�rez'),
  (10, '2023-06-28', 'Andr�s Silva'),
  (11, '2023-06-28', 'Camila Vargas'),
  (12, '2023-06-28', 'Mateo Castro'),
  (13, '2023-06-28', 'Isabella Rios'),
  (14, '2023-06-28', 'Santiago Morales'),
  (15, '2023-06-28', 'Valeria Rojas'),
  (16, '2023-06-28', 'Daniel Acosta'),
  (17, '2023-06-28', 'Mariana Duarte'),
  (18, '2023-06-28', 'Alejandro Cardona'),
  (19, '2023-06-28', 'Fernanda Mendoza'),
  (20, '2023-06-28', 'Gabriel Medina');

INSERT INTO detalles (numerofactura, numeroitem, articulo, precio, cantidad) VALUES
  (1, 1, 'L�piz', 1.99, 5),
  (1, 2, 'Cuaderno', 3.99, 3),
  (1, 3, 'Bol�grafo', 0.99, 10),
  (2, 1, 'Goma de borrar', 0.5, 8),
  (2, 2, 'Marcadores', 2.49, 4),
  (2, 3, 'Pegamento', 1.99, 2),
  (3, 1, 'Regla', 1.25, 5),
  (3, 2, 'Tijeras', 2.99, 2),
  (3, 3, 'Notas adhesivas', 0.75, 6),
  (4, 1, 'L�pices de colores', 4.99, 1),
  (4, 2, 'Borrador', 0.99, 3),
  (4, 3, 'Cinta adhesiva', 1.49, 2),
  (5, 1, 'Resaltador', 1.75, 4),
  (5, 2, 'Papel de carta', 2.99, 2),
  (5, 3, 'Clips', 0.25, 10),
  (6, 1, 'Corrector l�quido', 1.99, 3),
  (6, 2, 'Carpeta', 2.49, 2),
  (6, 3, 'Sacapuntas', 0.99, 5),
  (7, 1, 'Calculadora', 9.99, 1),
  (7, 2, 'Agenda', 4.99, 1),
  (8, 1, 'L�piz', 1.99, 5),
  (8, 2, 'Cuaderno', 3.99, 3),
  (8, 3, 'Bol�grafo', 0.99, 10),
  (9, 1, 'Goma de borrar', 0.5, 8),
  (9, 2, 'Marcadores', 2.49, 4),
  (9, 3, 'Pegamento', 1.99, 2),
  (10, 1, 'Regla', 1.25, 5),
  (10, 2, 'Tijeras', 2.99, 2),
  (10, 3, 'Notas adhesivas', 0.75, 6),
  (11, 1, 'L�pices de colores', 4.99, 1),
  (11, 2, 'Borrador', 0.99, 3),
  (11, 3, 'Cinta adhesiva', 1.49, 2),
  (12, 1, 'Resaltador', 1.75, 4),
  (12, 2, 'Papel de carta', 2.99, 2),
  (12, 3, 'Clips', 0.25, 10),
  (13, 1, 'Corrector l�quido', 1.99, 3),
  (13, 2, 'Carpeta', 2.49, 2),
  (13, 3, 'Sacapuntas', 0.99, 5),
  (14, 1, 'Calculadora', 9.99, 1),
  (14, 2, 'Agenda', 4.99, 1),
  (15, 1, 'L�piz', 1.99, 5),
  (15, 2, 'Cuaderno', 3.99, 3),
  (15, 3, 'Bol�grafo', 0.99, 10),
  (16, 1, 'Goma de borrar', 0.5, 8),
  (16, 2, 'Marcadores', 2.49, 4),
  (16, 3, 'Pegamento', 1.99, 2),
  (17, 1, 'Regla', 1.25, 5),
  (17, 2, 'Tijeras', 2.99, 2),
  (17, 3, 'Notas adhesivas', 0.75, 6),
  (18, 1, 'L�pices de colores', 4.99, 1),
  (18, 2, 'Borrador', 0.99, 3),
  (18, 3, 'Cinta adhesiva', 1.49, 2),
  (19, 1, 'Resaltador', 1.75, 4),
  (19, 2, 'Papel de carta', 2.99, 2),
  (19, 3, 'Clips', 0.25, 10),
  (20, 1, 'Corrector l�quido', 1.99, 3),
  (20, 2, 'Carpeta', 2.49, 2),
  (20, 3, 'Sacapuntas', 0.99, 5),
  (1, 4, 'Calculadora', 9.99, 1),
  (1, 5, 'Agenda', 4.99, 1);
  -- A AQUI ES CONTENIDO DEL TXT

  -- DE AQUI
  create table empleados(
 id_empleado int not null primary key,
  nombre varchar(30),
  apellido varchar(30),
  direccion varchar(30),
  puesto varchar(50),
  sueldo decimal(6,2),
  cant_hijos tinyint
 );

  insert into empleados values(1, 'Juan', 'P�rez', 'Calle A, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(2, 'Mar�a', 'L�pez', 'Calle B, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(3, 'Pedro', 'Gonz�lez', 'Calle C, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(4, 'Laura', 'Garc�a', 'Calle D, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(5, 'Carlos', 'Mart�nez', 'Calle E, Ciudad', 'Desarrollador', 4000.00, 2);
  insert into empleados values(6, 'Ana', 'S�nchez', 'Calle F, Ciudad', 'Contadora', 4500.00, 1);
  insert into empleados values(7, 'Luis', 'Rodr�guez', 'Calle G, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(8, 'Patricia', 'Torres', 'Calle H, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(9, 'Javier', 'Hern�ndez', 'Calle I, Ciudad', 'Gerente', 5000.00, 3);
  insert into empleados values(10, 'Sof�a', 'Flores', 'Calle J, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(11, 'Alejandro', 'Luna', 'Calle K, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(12, 'Elena', 'Vargas', 'Calle L, Ciudad', 'Contadora', 4500.00, 2);
  insert into empleados values(13, 'Diego', 'Rojas', 'Calle M, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(14, 'Carmen', 'Navarro', 'Calle N, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(15, 'Gabriel', 'Soto', 'Calle O, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(16, 'Valeria', 'G�mez', 'Calle P, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(17, 'Hugo', 'Silva', 'Calle Q, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(18, 'M�nica', 'Mendoza', 'Calle R, Ciudad', 'Contadora', 4500.00, 3);
  insert into empleados values(19, 'Fernando', 'Ch�vez', 'Calle S, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(20, 'Adriana', 'Ortega', 'Calle T, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(21, 'Ricardo', 'Castro', 'Calle U, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(22, 'Camila', 'Morales', 'Calle V, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(23, 'Andr�s', 'R�os', 'Calle W, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(24, 'Isabella', 'Vega', 'Calle X, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(25, 'David', 'Herrera', 'Calle Y, Ciudad', 'Desarrollador', 4000.00, 2);
  insert into empleados values(26, 'Carolina', 'Santos', 'Calle Z, Ciudad', 'Contadora', 4500.00, 1);
  insert into empleados values(27, 'Ra�l', 'Mendoza', 'Calle A1, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(28, 'Gabriela', 'Campos', 'Calle B1, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(29, '�scar', 'Delgado', 'Calle C1, Ciudad', 'Gerente', 5000.00, 3);
  insert into empleados values(30, 'Daniela', 'Castillo', 'Calle D1, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(31, 'Eduardo', 'Fuentes', 'Calle E1, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(32, 'Gabriela', 'Lara', 'Calle F1, Ciudad', 'Contadora', 4500.00, 2);
  insert into empleados values(33, 'Lorenzo', 'Ortiz', 'Calle G1, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(34, 'Valentina', 'Guerra', 'Calle H1, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(35, 'H�ctor', 'Vargas', 'Calle I1, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(36, 'Daniela', 'Paredes', 'Calle J1, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(37, 'Santiago', 'Casta�eda', 'Calle K1, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(38, 'Valeria', 'Cruz', 'Calle L1, Ciudad', 'Contadora', 4500.00, 3);
  insert into empleados values(39, 'Gustavo', 'Mej�a', 'Calle M1, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(40, 'Alejandra', 'Rojas', 'Calle N1, Ciudad', 'T�cnico', 2500.00, 1);

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

  -- A AQUI ES NUESTRA ANTIGUA TABLA EMPLEADOS Y NUESTRA ANTIGUA TABLA CLIENTES

  select * from facturas;
  select * from detalles;
  select * from empleados;

  -- Ejm 1: (Tabla empleados) Cuales empleados ganan mas o igual al salario promedio.
  -- NOTA: Primero se elabora la subconsulta.
  select id_empleado, nombre, apellido, sueldo
  from empleados
  where sueldo >= (select avg(sueldo) from empleados);
  
  -- Ejm 2: (Tabla clientes) Buscar todos los nombres de clientes con idCliente de Mexico.
  select nombre, ciudad 
  from clientes
  where idcliente in(select idCliente from clientes where pais = 'Mexico');

  -- Ejm 3: (Tabla clientes) Buscar todos los nombres de clientes con idCliente de Mexico.
  select nombre, ciudad 
  from clientes
  where idcliente = any(select idCliente from clientes where pais = 'Mexico'); -- any(): busca cualquier coincidencia.

  -- Ejm 4: (consulta con clausula exits y not exits) Cuales clientes han comprado lapices.
  
  /* exits: esta clausula nos sirve para buscar coincidencias en una subconsulta. La diferencia que tiene con la
  clausula any es que la clausula any busca cualquier valor que coincida, la clausula exits va buscar espeficicamente
  lo que estamos sugiriendo*/

  select cliente, numero, fecha
  from facturas f
  where exists -- En donde exista una concidencia con el articulo lapiz
	  (select * from detalles d 
	  where f.numero = d.numerofactura
	  and d.articulo ='Lapiz');

-- Ejm 5: Cuales clientes no han comprado lapices.
  select cliente, numero, fecha
  from facturas f
  where not exists -- En donde no exista una concidencia con el articulo lapiz
	  (select * from detalles d 
	  where f.numero = d.numerofactura
	  and d.articulo ='Lapiz');
