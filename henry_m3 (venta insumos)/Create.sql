CREATE DATABASE henry_m3;
USE henry_m3;

SELECT @@global.secure_file_priv;

CREATE TABLE IF NOT EXISTS gasto(
	IdGasto INT,
	IdSucursal INT,
	IdTipoGasto INT,
	Fecha DATE,
	Monto DECIMAL(10,2)
);
SELECT * FROM gasto;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Gasto.csv'
INTO TABLE gasto
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES
(IdGasto, IdSucursal, IdTipoGasto, Fecha, Monto);

SELECT * FROM gasto;


