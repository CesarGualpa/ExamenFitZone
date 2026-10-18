
-- EXAMEN PRACTICO BASE DE DATOS
-- FITZONE


-- CREAR BASE DE DATOS

CREATE DATABASE IF NOT EXISTS fitzone_api;

USE fitzone_api;



-- PARTE 1.1 - CREACION DE TABLA SOCIOS

DROP TABLE IF EXISTS socios;

CREATE TABLE socios (
    id_socio INT NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    fecha_registro VARCHAR(10) NOT NULL,
    activo BOOLEAN NOT NULL,

    CONSTRAINT socios_pk PRIMARY KEY (id_socio)
);



-- PARTE 1.2 - INSERCION DE DATOS

INSERT INTO socios
(id_socio, nombres, apellidos, edad, fecha_registro, activo)
VALUES
(1, 'Ana', 'Torres', 25, '2026-01-10', true);

INSERT INTO socios
(id_socio, nombres, apellidos, edad, fecha_registro, activo)
VALUES
(2, 'Luis', 'Mena', 17, '2026-02-05', true);

INSERT INTO socios
(id_socio, nombres, apellidos, edad, fecha_registro, activo)
VALUES
(3, 'Carla', 'Ruiz', 32, '2026-03-20', false);

INSERT INTO socios
(id_socio, nombres, apellidos, edad, fecha_registro, activo)
VALUES
(4, 'Diego', 'Perez', 19, '2026-06-14', true);

INSERT INTO socios
(id_socio, nombres, apellidos, edad, fecha_registro, activo)
VALUES
(5, 'Sofia', 'Lopez', 16, '2026-09-30', true);


-- PARTE 1.3 - CONSULTAS

-- Consulta 1:
-- Mostrar nombres, apellidos y edad de socios activos
-- mayores de 18 años.

SELECT nombres, apellidos, edad
FROM socios
WHERE activo = true
AND edad > 18;


-- Consulta 2:
-- Mostrar socios registrados después del 2026-02-01.

SELECT *
FROM socios
WHERE fecha_registro > '2026-02-01';


-- Consulta 3:
-- Mostrar todos los socios ordenados por edad
-- de mayor a menor.

SELECT *
FROM socios
ORDER BY edad DESC;


-- PARTE 1.4 - ALTER TABLE Y UPDATE

ALTER TABLE socios
ADD COLUMN email VARCHAR(100);


UPDATE socios
SET email = 'ana.torres@correo.com'
WHERE id_socio = 1;


-- CONSULTA FINAL DE COMPROBACION

SELECT *
FROM socios;