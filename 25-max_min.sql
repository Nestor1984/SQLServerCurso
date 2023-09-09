create database max_min;
use max_min;

/*max y min: son funciones que nos permiten extraer el valor maximo y minimo de un campo*/
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

  select * from articulos;

  -- Verificar cual es el articulo mas caro que tenemos en nuestro inventario.
 select max(precio) as Mas_caro from articulos;

  -- Verificar cual es el articulo mas barato que tenemos en nuestro inventario.
 select min(precio) as Mas_barato from articulos;

 -- Combinacion
 select max(precio) as mas_caro, min(precio) as mas_barato from articulos;

 -- Traer el registro que tenga la letra inicial mas alto en el alfabeto
 select max(nombre) from articulos;

 -- Traer el registro que tenga la letra inicial mas bajo en el alfabeto
 select min(nombre) from articulos;

 