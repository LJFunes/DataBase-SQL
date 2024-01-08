USE henry_m3;
SELECT @@global.secure_file_priv;

CREATE TABLE TipoDeGasto (
idTipoGasto INT NOT NULL AUTO_INCREMENT,
Descripcion VARCHAR(40),
Monto_Aproximado INT,
PRIMARY KEY (idTipoGasto)
);

CREATE TABLE IF NOT EXISTS gasto (
	idGasto INT,
	idSucursal INT,
	idTipoGasto INT,
	Fecha DATE,
	Monto DECIMAL(10,2),
	PRIMARY KEY (idGasto)
);

SELECT * FROM gasto;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Gasto.csv'
INTO TABLE gasto
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES
(idGasto, idSucursal, idTipoGasto, Fecha, Monto);


CREATE TABLE venta(
	idVenta INT,
	Fecha DATE,
	Fecha_Entrega DATE,
	idCanal INT,
	idCliente INT,
	idSucursal INT,
	idEmpleado INT,
	idProducto INT,
	Precio VARCHAR(13),
	Cantidad VARCHAR(10)
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Venta.csv'
INTO TABLE venta
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES;

SELECT * FROM venta;

-- PARA VER LOS DATOS FALTANTES EN FIELDS 'Precio' y 'Cantidad'
SELECT * FROM venta
WHERE Precio = '' OR Cantidad = '\r';

DROP TABLE IF EXISTS Cliente;
CREATE TABLE IF NOT EXISTS Cliente(
	id INT,
	Provincia VARCHAR(50),
	Nombre_y_Apellido VARCHAR(100),
	Domicilio VARCHAR(150),
	Telefono VARCHAR(30),
	Edad INT,
	Localidad VARCHAR(80),
	X VARCHAR(30),
	Y VARCHAR(30),
    Fecha_Alta DATE,
	Usuario_Alta VARCHAR(20),
	Fecha_Ultima_Modificacion DATE,
	Usuario_Ultima_Modificacion VARCHAR(20),
	Marca_Baja INT,
	col10 VARCHAR(1)
);


LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Clientes.csv'
INTO TABLE Cliente
FIELDS TERMINATED BY ';' ENCLOSED BY '' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES;

SELECT * FROM Cliente;

DROP TABLE IF EXISTS sucursal;

CREATE TABLE IF NOT EXISTS sucursal (
	ID INT,
    Sucursal VARCHAR(40),
    Direccion VARCHAR(100),
    Localidad VARCHAR(120),
    Provincia VARCHAR(80),
    Latitud VARCHAR(40),
    Longitud VARCHAR(40)
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Sucursales.csv'
INTO TABLE Sucursal
FIELDS TERMINATED BY ';' ENCLOSED BY '' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS TipoGasto (
	IdTipoGasto INT,
    Descripcion VARCHAR(40),
    Monto_Aproximado INT
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\TiposDeGasto.csv'
INTO TABLE TipoGasto
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES;

