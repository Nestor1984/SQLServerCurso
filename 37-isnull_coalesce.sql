create database isnull_coalesce;
use isnull_coalesce;

/*
Isnull(): nos ayuda a quitar valores nulos
Coalesce(): nos ayuda a quitar valores nulos
*/

create TABLE productos (
  idproducto INT,
  nombre VARCHAR(100),
  precio_unidad NUMERIC(6,2),
  existencia INT,
  vendidos INT
);
INSERT INTO productos (idproducto, nombre, precio_unidad, existencia, vendidos)
VALUES
  (1, 'Martillo', 12.50, 100, 50),
  (2, 'Destornillador', 6.75, 80, NULL),
  (3, 'Taladro', 75.00, 25, 10),
  (4, 'Sierra eléctrica', 120.25, 15, NULL),
  (5, 'Cinta métrica', 5.20, 200, 100),
  (6, 'Llave inglesa', 9.80, 50, NULL),
  (7, 'Pala', 15.00, 40, 20),
  (8, 'Clavos', 1.50, 500, NULL),
  (9, 'Tornillos', 2.00, 300, 150),
  (10, 'Alicate', 7.25, 70, NULL),
  (11, 'Escalera', 40.00, 10, 5),
  (12, 'Cincel', 4.30, 40, NULL),
  (13, 'Cepillo', 8.15, 30, 15),
  (14, 'Nivel', 10.50, 25, NULL),
  (15, 'Brocha', 3.75, 120, 60),
  (16, 'Talocha', 6.00, 80, NULL),
  (17, 'Llave ajustable', 11.20, 45, 25),
  (18, 'Mazo', 9.90, 20, NULL),
  (19, 'Formón', 5.80, 35, 15),
  (20, 'Serrucho', 8.50, 60, NULL),
  (21, 'Taladro inalámbrico', 95.00, 20, 15),
  (22, 'Llave de tubo', 13.50, 30, 20),
  (23, 'Pintura blanca', 18.75, 50, NULL),
  (24, 'Cepillo metálico', 6.25, 40, 30),
  (25, 'Escuadra', 2.80, 100, 50),
  (26, 'Broca para concreto', 4.50, 75, 40),
  (27, 'Gafas de seguridad', 8.90, 60, 45),
  (28, 'Cinta adhesiva', 1.25, 200, NULL),
  (29, 'Nivel láser', 45.50, 10, 5),
  (30, 'Sierra de mano', 7.80, 50, 35),
  (31, 'Alicates de corte', 9.25, 30, 20),
  (32, 'Tornillos de acero', 2.50, 500, NULL),
  (33, 'Destornillador de precisión', 5.50, 40, 30),
  (34, 'Martillo de goma', 10.75, 25, 20),
  (35, 'Llave hexagonal', 6.60, 50, NULL),
  (36, 'Pala plegable', 14.00, 15, 10),
  (37, 'Escobilla de alambre', 3.25, 80, 60),
  (38, 'Clavos galvanizados', 2.75, 1000, NULL),
  (39, 'Cincel de punta', 7.40, 35, 25),
  (40, 'Cúter', 2.15, 90, NULL);

  select * from productos;

  -- Ejemplo 1:
  select nombre, precio_unidad, isnull(vendidos , 0)-- isnull(vendidos , 0): si hay valores nulos en mi campo vendidos, traemelos con el valor 0.
  from productos;

  -- Ejemplo 2:
  select nombre, precio_unidad, coalesce(vendidos , 0)-- coalesce(vendidos , 0): si hay valores nulos en mi campo vendidos, traemelos con el valor 0.
  from productos;