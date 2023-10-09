create database funciones_left_right_stuff;
use funciones_left_right_stuff;

CREATE TABLE e_mails (
    nombre VARCHAR(60),
    clave VARCHAR(20),
    email VARCHAR(80)
); 

INSERT INTO e_mails (nombre, clave, email)
VALUES
    ('Juan Pérez', 'qwerty123', 'juanperez1985@hotmail.com'),
    ('María González', 'abcde456', 'mariagonzalez89@yahoo.com'),
    ('Carlos Rodríguez', 'pass1234', 'carlos.rodriguez@gmail.com'),
    ('Laura López', 'password1', 'lauralopez_87@hotmail.com'),
    ('Pedro Sánchez', 'securepass', 'pedro.sanchez@gmail.com'),
    ('Ana Martínez', 'mypassword', 'ana.martinez93@yahoo.com'),
    ('Javier Torres', '12345678', 'javier.torres82@hotmail.com'),
    ('Sara Ramírez', 'p@ssw0rd', 'sara.ramirez88@yahoo.com'),
    ('Luis Herrera', 'hello123', 'luis.herrera79@gmail.com'),
    ('Marta Castro', '987654321', 'marta.castro85@hotmail.com'),
    ('David Jiménez', 'password123', 'david.jimenez94@yahoo.com'),
    ('Elena Vega', 'testpass', 'elena.vega81@gmail.com'),
    ('Andrés Morales', 'pass123', 'andres.morales91@hotmail.com'),
    ('Patricia Rojas', 'password456', 'patricia.rojas87@yahoo.com'),
    ('Roberto Fernández', 'qwertyuiop', 'roberto.fernandez80@gmail.com'),
    ('Isabel Silva', 'securepassword', 'isabel.silva86@hotmail.com'),
    ('Fernando Castro', 'myp@ssw0rd', 'fernando.castro92@yahoo.com'),
    ('Carmen Navarro', 'abcdefgh', 'carmen.navarro84@gmail.com'),
    ('Daniel Mendoza', 'test1234', 'daniel.mendoza89@hotmail.com'),
    ('Raquel Gómez', 'password9876', 'raquel.gomez83@yahoo.com'),
    ('Mario Morales', 'mysecret', 'mario.morales85@hotmail.com'),
    ('Silvia Torres', 'passw0rd', 'silvia.torres91@yahoo.com'),
    ('Ricardo Soto', 'securepass123', 'ricardo.soto82@gmail.com'),
    ('Marina Gómez', 'hello1234', 'marina.gomez87@hotmail.com'),
    ('Jorge Vargas', 'testpass123', 'jorge.vargas83@yahoo.com'),
    ('Natalia Ruiz', '123456789', 'natalia.ruiz88@gmail.com'),
    ('Héctor Paredes', 'qwerty1234', 'hector.paredes84@hotmail.com'),
    ('Adriana Morales', 'mypassword123', 'adriana.morales89@yahoo.com'),
    ('Alejandro Ríos', 'password1234', 'alejandro.rios90@gmail.com'),
    ('Lucía Castro', 'test123456', 'lucia.castro85@hotmail.com'),
    ('Julio Hernández', 'passwordabcd', 'julio.hernandez91@yahoo.com'),
    ('Carolina Sánchez', 'password5678', 'carolina.sanchez86@gmail.com'),
    ('Diego Peralta', 'testpassabcd', 'diego.peralta92@hotmail.com'),
    ('Gabriela Ramírez', 'qwertyuiop123', 'gabriela.ramirez87@yahoo.com'),
    ('Roberto Méndez', 'securepassword123', 'roberto.mendez93@gmail.com'),
    ('María José Mora', 'myp@ssw0rd123', 'mariajose.mora88@hotmail.com'),
    ('Fabián Castro', 'abcdefgh123', 'fabian.castro94@yahoo.com'),
    ('Valentina Navarro', 'test12345678', 'valentina.navarro89@gmail.com'),
    ('Andrea Mendoza', 'password98765', 'andrea.mendoza90@hotmail.com'),
    ('Luisa Gutiérrez', 'passwordabcd123', 'luisa.gutierrez91@yahoo.com');

	select * from e_mails;

	-- LEFT: Nos sirve para traer caracteres de la izquierda.
	--Traeme los primeros 2 caracteres de la izquierda de cada registro de la columna email
	select left(email, 2) from e_mails;
	-- SALIDA
	-- ju
	-- ma
	-- ca
	-- la
	-- ...
	-- ...

    -- RIGHT: Nos sirve para traer caracteres de la derecha.
	--Traeme los ultimos 3 caracteres de la derecha de cada registro de la columna email
	select right(email, 3) from e_mails;
	-- SALIDA
	-- com
	-- com
	-- com
	-- com
	-- ...
	-- ...

	-- STUFF: Nos sirve para eliminar cantidad de caracteres desde un punto en especifico.
	
	select ('Hola a todos') as saludo;
	-- SALIDA 
	-- Hola a todos

	select stuff('Hola a todos', 3, 5, 'Amigos'); -- Sintaxis: 	select stuff('A esta frase', aPartirDelCaracter3, Quite5Caracteres, 'yLuegoColoqueEstaFrase')
	-- SALIDA: HoAmigostodos


