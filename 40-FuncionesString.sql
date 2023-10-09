create database funcionesString;
use funcionesString;

-- 1.- char(): te devuelve el valor de un numero de mapa de caracteres
select char(65);
-- Salida: A

-- 2.- concat(): esta funcion nos sirve para unir strings y enteros.
select concat('Hola','a','todos');
-- Salida: Holaatodos

-- 3.- len(): te devuelve el tamanio de un string.
select len('SQLserver');
-- Salida: 9

-- 4.- lower(): lleva a minusculas todo lo que le pongas entre parentesis
select lower('HOLA A TODOS');
-- Salida: hola a todos

-- 5.- upper: lleva a mayusculas todo lo que le pongas entre parentesis
select upper('hola a todos');
-- Salida: HOLA A TODOS

-- 6.- ltrim: corta espacios dede la izquierda
select ltrim('     hola a todos');
-- Salida: hola a todos

-- 7.- rtrim: corta espacios dede la derecha
select rtrim('hola a todos     ');
-- Salida: hola a todos

-- 8.- replace: remplaza caracteres en los registros
select replace('el cocobongo', 'o', 'a'); -- Sintaxis: replace('cadena', 'caracterARemplazar', 'caracterPorElCualVamosARemplazar')
-- Salida: el cacabanga

-- 9.- replicate: sirve para replicar registros dentro de un campo
-- Quiero ver el 0, diez veces en un campo
select replicate('0', 10); 
-- Salida: 0000000000

-- 10.- reverse: sirve para ver palabras o numeros alreves
select reverse('SQLserver');
-- Salida: revresLQS
