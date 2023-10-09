create database funcionesMatematicas;
use funcionesMatematicas;

/*
Funciones Matematicas:
*/

--1.- pi(): Te da el valor 3.14159.
select pi() as Pi;
-- Salida: 3.14159

--2.- ceiling(): Funcion de redondeo de cifras
select ceiling(123.45) as redondeo;
-- Salida: 124

--3.- floor(): Funcion para eliminar decimales (Me trae el entero sin redondear)
select floor(123.45);
-- Salida: 123

-- 4.- Round():Se utiliza para redondear un valor numérico a una longitud o precisión específica
-- Sintaxis: round(numeroARedondear, desdeQueCifraVaRedondear)
select round(123.5666, 3); -- Quiero que me redondee desde la tercera cifra
-- Salida: 123.5670

-- 5.- Power(): Sirve para calcular la potencia
-- Sintaxis: power(base, exponente)
select power(4, 2);
-- Salida: 16

-- 6.- rand(): sirve para generar un numero aleatorio.
select rand()*(100-1); -- Quiero ver un valor entre 100 y 1 (se utiliza guion, no resta)

-- 7.- sin(): sirve para calcular el seno de un angulo
select sin(45);

-- 8.- cos(): sirve para calcular el coseno de un angulo
select cos(270);

--9.- sqrt: sirve para calcular la raiz cuadrada de un numero
select sqrt(81);