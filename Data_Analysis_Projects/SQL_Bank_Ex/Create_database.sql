-- Crear base de datos
CREATE DATABASE dsrp_banco
GO 

USE dsrp_banco
-- Crear tablas
CREATE TABLE sucursales(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
nombre VARCHAR(55) UNIQUE NOT NULL,
direccion VARCHAR(100) NOT NULL,
descripcion VARCHAR(255) NULL
);


--INSERT INTO sucursales VALUES('LA MOLINA','Av La Molina',NULL)	
--INSERT INTO sucursales VALUES('Lima-Cercado','Av Alfonso Ugarte','Inicia funcionamiento en 2024')


SELECT * FROM sucursales

--Tipo Atenciones

CREATE TABLE tipo_atenciones(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
nombre VARCHAR(100) UNIQUE NOT NULL,
descripcion VARCHAR(255) NULL
);

/*INSERT INTO tipo_atenciones 
VALUES
('Informes', NULL),
('Reclamos', NULL),
('Apertura de Cuenta', 'apertura de nuevas cuentas en los diferentes productos que ofrece un banco'),
('Cierre de Cuenta', 'Cierre de cuentas de los diferentes productos que ofrece un banco')
*/
SELECT * FROM tipo_atenciones

--Tipo Transacciones

CREATE TABLE tipo_transacciones(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
nombre VARCHAR(100) UNIQUE NOT NULL,
descripcion VARCHAR(255) NULL
);

/*INSERT INTO tipo_transacciones
VALUES 
('Depósito', 'depósito de dinero a una cuenta bancaria'),
('Retiro', 'retiro de dinero a una cuenta bancaria'),
('Transferencia', 'cuando se transfiere dinero de una cuenta a otra'),
('Pago', 'cuando se realiza el pago de un servicio')
*/
SELECT * FROM tipo_transacciones

--Productos

CREATE TABLE productos(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
nombre VARCHAR(55) UNIQUE NOT NULL,
descripcion VARCHAR(255) NULL
);
/*
INSERT INTO productos (nombre, descripcion)
VALUES
('Cuenta de ahorro', ''),
('Cuenta sueldo', ''),
('Tarjeta de crédito', ''),
('Cuenta Millonaria', ''),
('Cuenta Gremio', ''),
('CTS','' )*/

SELECT * from productos

CREATE TABLE clientes(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
cod_cliente VARCHAR(10) UNIQUE NOT NULL,
nombre VARCHAR(100) NOT NULL,
numero_documento VARCHAR(11) UNIQUE NOT NULL,
genero CHAR(1) NOT NULL,
fecha_nacimiento DATE NOT NULL,
direccion VARCHAR(255) NOT NULL,
telefono VARCHAR(10) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
created_at DATETIME2 NOT NULL DEFAULT GETDATE(),
updated_at DATETIME2 NULL,
deleted_at DATETIME2 NULL,
created_by INT NOT NULL,
updated_by INT NULL,
deleted_by INT NULL
)


SELECT * from clientes;
/*
INSERT INTO clientes VALUES
('BALIM0001', 'Kevin Figueroa', '1232445','M' ,'1996-06-18', 'Yungay-Ancash','987643213', 'kevinfigu1@hotmail.com',DEFAULT,NULL,NULL,1,NULL,NULL),
('BWEIM0002', 'Lucía Martinez', '1232431','F' ,'1934-03-22', 'Lima','98324213', 'lumacirte@hotmail.com',DEFAULT,NULL,NULL,1,NULL,NULL)
*/

CREATE TABLE empleados(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
sucursal_id INT NOT NULL,
supervisor_id INT NULL,
nombre VARCHAR(100) UNIQUE NOT NULL,
numero_documento VARCHAR(11) UNIQUE NOT NULL,
genero CHAR(1) NOT NULL,
fecha_nacimiento DATE NOT NULL,
direccion VARCHAR(255) NOT NULL,
telefono VARCHAR(10) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
email_institucional VARCHAR(25) NULL,
puesto VARCHAR(20) NOT NULL,
salario MONEY NOT NULL,
created_at DATETIME2 NOT NULL DEFAULT GETDATE(),
updated_at DATETIME2 NULL,
deleted_at DATETIME2 NULL,
created_by INT NOT NULL,
updated_by INT NULL,
deleted_by INT NULL
CONSTRAINT fk_sucursal_empleados FOREIGN KEY (sucursal_id) REFERENCES sucursales(id),
CONSTRAINT fk_supervisor_empleados FOREIGN KEY (supervisor_id) REFERENCES empleados(id)
);

--TABLA Cuentas

CREATE TABLE cuentas (
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
cliente_id INT NOT NULL,
producto_id INT NOT NULL, 
no_tarjeta VARCHAR(50) UNIQUE NOT NULL,
no_cuenta VARCHAR(50) UNIQUE NOT NULL,
cod_interbancario VARCHAR(75) UNIQUE NULL,
saldo MONEY NULL,
limite_cred MONEY NULL,
estado INT NOT NULL,
tea FLOAT NULL,
trea FLOAT NULL,
created_at DATETIME2 NOT NULL DEFAULT GETDATE(),
updated_at DATETIME2 NULL,
deleted_at DATETIME2 NULL,
created_by INT NOT NULL,
updated_by INT NULL,
deleted_by INT NULL,
CONSTRAINT fk_cuentas_clientes FOREIGN KEY (cliente_id) REFERENCES clientes(id),
CONSTRAINT fk_productos_clientes FOREIGN KEY (producto_id) REFERENCES productos(id)
);

SELECT * FROM cuentas

CREATE TABLE atenciones (
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
cliente_id INT NOT NULL,
empleado_id INT NOT NULL,
tipo_atencion_id INT NOT NULL,
fecha_atencion DATETIME2 NOT NULL,
estado VARCHAR(55) NOT NULL,
calificacion INT NULL,
created_at DATETIME2 NOT NULL DEFAULT GETDATE(),
updated_at DATETIME2 NULL,
deleted_at DATETIME2 NULL,
created_by INT NOT NULL,
updated_by INT NULL,
deleted_by INT NULL,
CONSTRAINT fk_atenciones_clientes FOREIGN KEY (cliente_id) REFERENCES clientes(id),
CONSTRAINT fk_atenciones_empleados FOREIGN KEY (empleado_id) REFERENCES empleados(id),
CONSTRAINT fk_atenciones_tipo FOREIGN KEY (tipo_atencion_id) REFERENCES tipo_atenciones(id),
);
SELECT * FROM atenciones


CREATE TABLE transacciones(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
cuenta_origen_id INT NULL,
cuenta_destino_id INT NULL,
tipo_transaccion_id INT NOT NULL,
monto MONEY NOT NULL,
fecha_transaccion DATETIME2 NOT NULL,
created_at DATETIME2 NOT NULL DEFAULT GETDATE(),
updated_at DATETIME2 NULL,
deleted_at DATETIME2 NULL,
created_by INT NOT NULL,
updated_by INT NULL,
deleted_by INT NULL,
CONSTRAINT fk_transacciones_cuenta_origen FOREIGN KEY (cuenta_origen_id) REFERENCES cuentas(id),
CONSTRAINT fk_transacciones_cuenta_destino FOREIGN KEY (cuenta_destino_id) REFERENCES cuentas(id),
CONSTRAINT fk_atransacciones_tipos FOREIGN KEY (tipo_transaccion_id) REFERENCES tipo_transacciones(id),
);