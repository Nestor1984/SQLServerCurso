create database funciones_left_right_stuff;
use funciones_left_right_stuff;

CREATE TABLE e_mails (
    nombre VARCHAR(60),
    clave VARCHAR(20),
    email VARCHAR(80)
); 

INSERT INTO e_mails (nombre, clave, email)
VALUES
    ('Juan P�rez', 'qwerty123', 'juanperez1985@hotmail.com'),
    ('Mar�a Gonz�lez', 'abcde456', 'mariagonzalez89@yahoo.com'),
    ('Carlos Rodr�guez', 'pass1234', 'carlos.rodriguez@gmail.com'),
    ('Laura L�pez', 'password1', 'lauralopez_87@hotmail.com'),
    ('Pedro S�nchez', 'securepass', 'pedro.sanchez@gmail.com'),
    ('Ana Mart�nez', 'mypassword', 'ana.martinez93@yahoo.com'),
    ('Javier Torres', '12345678', 'javier.torres82@hotmail.com'),
    ('Sara Ram�rez', 'p@ssw0rd', 'sara.ramirez88@yahoo.com'),
    ('Luis Herrera', 'hello123', 'luis.herrera79@gmail.com'),
    ('Marta Castro', '987654321', 'marta.castro85@hotmail.com'),
    ('David Jim�nez', 'password123', 'david.jimenez94@yahoo.com'),
    ('Elena Vega', 'testpass', 'elena.vega81@gmail.com'),
    ('Andr�s Morales', 'pass123', 'andres.morales91@hotmail.com'),
    ('Patricia Rojas', 'password456', 'patricia.rojas87@yahoo.com'),
    ('Roberto Fern�ndez', 'qwertyuiop', 'roberto.fernandez80@gmail.com'),
    ('Isabel Silva', 'securepassword', 'isabel.silva86@hotmail.com'),
    ('Fernando Castro', 'myp@ssw0rd', 'fernando.castro92@yahoo.com'),
    ('Carmen Navarro', 'abcdefgh', 'carmen.navarro84@gmail.com'),
    ('Daniel Mendoza', 'test1234', 'daniel.mendoza89@hotmail.com'),
    ('Raquel G�mez', 'password9876', 'raquel.gomez83@yahoo.com'),
    ('Mario Morales', 'mysecret', 'mario.morales85@hotmail.com'),
    ('Silvia Torres', 'passw0rd', 'silvia.torres91@yahoo.com'),
    ('Ricardo Soto', 'securepass123', 'ricardo.soto82@gmail.com'),
    ('Marina G�mez', 'hello1234', 'marina.gomez87@hotmail.com'),
    ('Jorge Vargas', 'testpass123', 'jorge.vargas83@yahoo.com'),
    ('Natalia Ruiz', '123456789', 'natalia.ruiz88@gmail.com'),
    ('H�ctor Paredes', 'qwerty1234', 'hector.paredes84@hotmail.com'),
    ('Adriana Morales', 'mypassword123', 'adriana.morales89@yahoo.com'),
    ('Alejandro R�os', 'password1234', 'alejandro.rios90@gmail.com'),
    ('Luc�a Castro', 'test123456', 'lucia.castro85@hotmail.com'),
    ('Julio Hern�ndez', 'passwordabcd', 'julio.hernandez91@yahoo.com'),
    ('Carolina S�nchez', 'password5678', 'carolina.sanchez86@gmail.com'),
    ('Diego Peralta', 'testpassabcd', 'diego.peralta92@hotmail.com'),
    ('Gabriela Ram�rez', 'qwertyuiop123', 'gabriela.ramirez87@yahoo.com'),
    ('Roberto M�ndez', 'securepassword123', 'roberto.mendez93@gmail.com'),
    ('Mar�a Jos� Mora', 'myp@ssw0rd123', 'mariajose.mora88@hotmail.com'),
    ('Fabi�n Castro', 'abcdefgh123', 'fabian.castro94@yahoo.com'),
    ('Valentina Navarro', 'test12345678', 'valentina.navarro89@gmail.com'),
    ('Andrea Mendoza', 'password98765', 'andrea.mendoza90@hotmail.com'),
    ('Luisa Guti�rrez', 'passwordabcd123', 'luisa.gutierrez91@yahoo.com');

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


