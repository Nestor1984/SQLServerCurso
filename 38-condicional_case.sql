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

  CREATE TABLE articulos (
  codigo INT IDENTITY,
  nombre VARCHAR(30),
  descripcion VARCHAR(100),
  precio SMALLMONEY,
  cantidad INT DEFAULT 0,
  vendidos INT DEFAULT 0,
  PRIMARY KEY (codigo)
);

  insert into articulos values('Laptop Acer', 'Portátil con procesador i5, 8GB RAM, 256GB SSD', 899.99, 10, 2);
  insert into articulos values('Monitor Samsung', 'Monitor LED de 24 pulgadas con resolución Full HD', 179.99, 20, 5);
  insert into articulos values('Impresora HP', 'Impresora láser multifuncional con conexión Wi-Fi', 249.99, 15, 3);
  insert into articulos values('Teclado Logitech', 'Teclado inalámbrico con retroiluminación y teclas programables', 59.99, 30, 8);
  insert into articulos values('Mouse Microsoft', 'Mouse óptico ergonómico con 6 botones programables', 19.99, 40, 12);
  insert into articulos values('Disco Duro Externo', 'Almacenamiento portátil de 1TB con conexión USB 3.0', 79.99, 25, 6);
  insert into articulos values('Laptop HP', 'Portátil con procesador i7, 16GB RAM, 512GB SSD', 1299.99, 8, 1);
  insert into articulos values('Monitor LG', 'Monitor LED de 27 pulgadas con resolución 4K', 299.99, 12, 3);
  insert into articulos values('Impresora Epson', 'Impresora de inyección de tinta con escáner incorporado', 159.99, 18, 4);
  insert into articulos values('Teclado Razer', 'Teclado mecánico con iluminación personalizable', 99.99, 22, 7);
  insert into articulos values('Mouse Logitech', 'Mouse inalámbrico con sensor de alta precisión', 29.99, 35, 10);
  insert into articulos values('Disco Duro SSD', 'Unidad de estado sólido de 500GB con velocidad de transferencia rápida', 109.99, 30, 9);
  insert into articulos values('Laptop Dell', 'Portátil con procesador i7, 16GB RAM, 1TB HDD', 1199.99, 6, 1);
  insert into articulos values('Monitor BenQ', 'Monitor LED de 32 pulgadas con tecnología HDR', 399.99, 9, 2);
  insert into articulos values('Impresora Canon', 'Impresora láser en color de alta velocidad', 199.99, 14, 4);
  insert into articulos values('Teclado Corsair', 'Teclado mecánico para juegos con retroiluminación RGB', 79.99, 28, 9);
  insert into articulos values('Mouse Gaming', 'Mouse para juegos con botones programables y DPI ajustable', 49.99, 42, 15);
  insert into articulos values('Disco Duro Externo SSD', 'Almacenamiento portátil de 2TB con conexión USB-C', 159.99, 20, 8);
  insert into articulos values('Laptop Lenovo', 'Portátil con procesador Ryzen 7, 12GB RAM, 512GB SSD', 999.99, 10, 2);
  insert into articulos values('Monitor ASUS', 'Monitor LED de 29 pulgadas ultrapanorámico', 249.99, 16, 3);
  insert into articulos values('Impresora Brother', 'Impresora láser monocromática de alta capacidad', 179.99, 20, 6);

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