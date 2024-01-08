-- Crear una tabla con los siguientes campos: id_local, nombre, categoria, direccion, barrio, comuna
-- para posteriormente poblarla con los datos bajados, utilzando el conector desde el script de Python.

CREATE DATABASE ofertaGastronomica;
USE ofertaGastronomica;
CREATE TABLE oferta (
	id_local INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40),
    categoria VARCHAR(40),
    direccion VARCHAR(50),
    barrio VARCHAR(40),
    comuna VARCHAR(40),
    PRIMARY KEY (id_local)
);

