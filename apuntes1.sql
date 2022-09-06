DROP DATABASE IF EXISTS david_db; -- Elimina la BBDD si existe DROP SCHEMA IF EXISTS david_db;
CREATE DATABASE david_db; -- Crea la BBDD si no existe CREATE SCHEMA IF NOT EXISTS david_db;

USE david_db; -- Nos permite posicionarnos dentro de la BBDD

CREATE TABLE IF NOT EXISTS david_db.personajes(
	id_personaje INTEGER UNSIGNED KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL, -- Este campo no puede ser nulo
    apellido VARCHAR(255), -- Este campo por defecto puede ser nulo
    fecha_nacimiento DATE,
    residencia VARCHAR(255) DEFAULT 'EEUU' -- Por defecto el valor definido si no define otro es EEUU
);

DESCRIBE david_db.personajes; -- Permite mostrar la estructura de los campos

INSERT INTO
	david_db.personajes(nombre, apellido, fecha_nacimiento, residencia)
VALUES
	('pepito', 'jaimito', '2022-08-17', 'Spain'),
	('jaimito', 'whatsapp', '2022-08-17', 'Spain'),
    ('jaimito', 'whatsapp', '2022-08-17', 'Spain');
    
SELECT * FROM david_db.personajes; -- Consultar los registros que tiene la tabla
SELECT nombre AS name, apellido FROM david_dbpersonajes WHERE nombre = 'pepitoo';
