create database condicional_case;
use condicional_case;

/*Condicional Case: Es una condicional en la cual vamos a recibir un resultado cuando se cumpla 
cualquiera de varias condiciones que vamos a establecer.*/

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

  CREATE TABLE articulos (
  codigo INT IDENTITY,
  nombre VARCHAR(30),
  descripcion VARCHAR(100),
  precio SMALLMONEY,
  cantidad INT DEFAULT 0,
  vendidos INT DEFAULT 0,
  PRIMARY KEY (codigo)
);

  insert into articulos values('Laptop Acer', 'Port�til con procesador i5, 8GB RAM, 256GB SSD', 899.99, 10, 2);
  insert into articulos values('Monitor Samsung', 'Monitor LED de 24 pulgadas con resoluci�n Full HD', 179.99, 20, 5);
  insert into articulos values('Impresora HP', 'Impresora l�ser multifuncional con conexi�n Wi-Fi', 249.99, 15, 3);
  insert into articulos values('Teclado Logitech', 'Teclado inal�mbrico con retroiluminaci�n y teclas programables', 59.99, 30, 8);
  insert into articulos values('Mouse Microsoft', 'Mouse �ptico ergon�mico con 6 botones programables', 19.99, 40, 12);
  insert into articulos values('Disco Duro Externo', 'Almacenamiento port�til de 1TB con conexi�n USB 3.0', 79.99, 25, 6);
  insert into articulos values('Laptop HP', 'Port�til con procesador i7, 16GB RAM, 512GB SSD', 1299.99, 8, 1);
  insert into articulos values('Monitor LG', 'Monitor LED de 27 pulgadas con resoluci�n 4K', 299.99, 12, 3);
  insert into articulos values('Impresora Epson', 'Impresora de inyecci�n de tinta con esc�ner incorporado', 159.99, 18, 4);
  insert into articulos values('Teclado Razer', 'Teclado mec�nico con iluminaci�n personalizable', 99.99, 22, 7);
  insert into articulos values('Mouse Logitech', 'Mouse inal�mbrico con sensor de alta precisi�n', 29.99, 35, 10);
  insert into articulos values('Disco Duro SSD', 'Unidad de estado s�lido de 500GB con velocidad de transferencia r�pida', 109.99, 30, 9);
  insert into articulos values('Laptop Dell', 'Port�til con procesador i7, 16GB RAM, 1TB HDD', 1199.99, 6, 1);
  insert into articulos values('Monitor BenQ', 'Monitor LED de 32 pulgadas con tecnolog�a HDR', 399.99, 9, 2);
  insert into articulos values('Impresora Canon', 'Impresora l�ser en color de alta velocidad', 199.99, 14, 4);
  insert into articulos values('Teclado Corsair', 'Teclado mec�nico para juegos con retroiluminaci�n RGB', 79.99, 28, 9);
  insert into articulos values('Mouse Gaming', 'Mouse para juegos con botones programables y DPI ajustable', 49.99, 42, 15);
  insert into articulos values('Disco Duro Externo SSD', 'Almacenamiento port�til de 2TB con conexi�n USB-C', 159.99, 20, 8);
  insert into articulos values('Laptop Lenovo', 'Port�til con procesador Ryzen 7, 12GB RAM, 512GB SSD', 999.99, 10, 2);
  insert into articulos values('Monitor ASUS', 'Monitor LED de 29 pulgadas ultrapanor�mico', 249.99, 16, 3);
  insert into articulos values('Impresora Brother', 'Impresora l�ser monocrom�tica de alta capacidad', 179.99, 20, 6);

  select * from clientes;
  select * from articulos;

  -- Hacemos una actualizacion
  update clientes
  set ciudad = null
  where idcliente in(1, 3, 9, 10, 13, 11, 14, 20, 23, 34, 38, 40, 46);

  -- Ejemplo 1: (Con tabla articulos)
  -- 1. Ver articulos de mi inventario con existencia normal
  -- 2. Ver articulos que necesitan ser pedidos
  -- 3. Ver articulos menos vendidos
	
  /* Condicional case:
    -- Palabras reservadas:
    - when: cuando
	- then entonces
	- else: si no
	- end: fin
	- as: como
  */
  select nombre, cantidad,
  case 
	when cantidad > 30 then 'Articulo con sobre-existencia'
	when cantidad < 10 then 'Se debe realizar pedido'
	else 'Existencia normal' -- else: opcion por default
	end as Inventario -- as Inventario: apodo del campo
  from articulos;

  -- Ejemplo 2: (Con tabla clientes)
  -- Generar un reporte con nombre pais y ciudad de los clientes
  -- organizar el reporte por ciudad, en caso de que el 
  -- cliente no tenga ciudad, organizar por pais.

  select nombre, ciudad, pais
  from clientes
  order by 
  (case 
	when ciudad is null then pais -- cuando el campo ciudad sea nulo, entonces organizalo por pais
	else ciudad -- sino por ciudad
  end);