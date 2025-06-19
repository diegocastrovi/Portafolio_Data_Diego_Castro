--Procedimientos almacenados
--Crea un procedimiento almacenado que devuelva la cantidad de clientes en la basse de datos
SELECT COUNT(*) AS 'Total clientes' FROM clientes;

--VIEW

CREATE VIEW kv_view_total_clientes
AS SELECT COUNT(*) AS 'Total clientes' FROM clientes;

--PROCEDURE

CREATE PROCEDURE kv_pr_total_clientes
AS
	SET NOCOUNT ON;
	SELECT COUNT(*) AS 'Total clientes' FROM clientes;
GO

--FUNCTION

CREATE FUNCTION dbo.kv_fn_total_clientes ()
RETURNS INT
AS
BEGIN 
	DECLARE @total_clientes INT
	SET @total_clientes = (SELECT COUNT(*) FROM clientes);
	RETURN @total_clientes
END

SELECT dbo.kv_fn_total_clientes();

--Diseñño de un procedimiento almacenado que acepte el id de un cliente y devuelve todas las transacciones echas por ese cliente
SELECT cl.nombre, cu.no_cuenta, tt.nombre AS 'tipo transaccion', monto
FROM clientes cl
INNER JOIN cuentas cu ON cu.cliente_id = cl.id
INNER JOIN transacciones t ON t.cuenta_destino_id = cu.id OR  t.cuenta_origen_id = cu.id 
INNER JOIN tipo_transacciones tt ON tt.id = t.tipo_transaccion_id
WHERE cl.id = 1

CREATE PROCEDURE pr_transacciones_cliente @id_cliente INT
AS
	SET NOCOUNT ON;
	SELECT cl.nombre, cu.no_cuenta, tt.nombre AS 'tipo transaccion', monto
	FROM clientes cl
	INNER JOIN cuentas cu ON cu.cliente_id = cl.id
	INNER JOIN transacciones t ON t.cuenta_destino_id = cu.id OR  t.cuenta_origen_id = cu.id 
	INNER JOIN tipo_transacciones tt ON tt.id = t.tipo_transaccion_id
	WHERE cl.id = 1
GO

EXEC pr_transacciones_cliente 4;

--Implemente un procedimiento que actualice el saldo de una cuenta en funcion de una transaccion realizada por un cliente
CREATE PROCEDURE dbo.inserta_transacc
	@cuenta_origen INT,
	@cuenta_destino INT,
	@tipo_transaccion_id INT,
	@monto MONEY,
	@user_id INT
AS
	SET NOCOUNT ON;
	INSERT INTO transacciones VALUES(@cuenta_origen,@cuenta_destino,@tipo_transaccion_id,@monto,GETDATE(),GETDATE(),NULL,NULL,@user_id,NULL,NULL)
	IF @tipo_transaccion_id = 1
		BEGIN
		UPDATE cuentas SET saldo = saldo + @monto WHERE id = @cuenta_destino
		END
	IF @tipo_transaccion_id = 2
		BEGIN
		UPDATE cuentas SET saldo = saldo - @monto WHERE id = @cuenta_origen
		END
	IF @tipo_transaccion_id = 3
		BEGIN
		UPDATE cuentas SET saldo = saldo + @monto WHERE id = @cuenta_destino
		UPDATE cuentas SET saldo = saldo - @monto WHERE id = @cuenta_origen
		END
	IF @tipo_transaccion_id = 4
		BEGIN
		UPDATE cuentas SET saldo = saldo - @monto WHERE id = @cuenta_origen
		END

GO

--FUNCIONES
--Función que calcula elsaldo total de un cliente sumando los saldos de sus cuentas

SELECT cl.nombre, sum(cu.saldo)
FROM clientes cl
INNER JOIN cuentas cu ON cl.id = cu.cliente_id
WHERE cl.id = 1
GROUP BY cl.nombre

CREATE FUNCTION dbo.fn_saldo_total_cliente (@cliente_id INT)
RETURNS MONEY
AS
BEGIN 
	DECLARE @suma_saldo INT
	SET @suma_saldo = (SELECT sum(cu.saldo)
								FROM clientes cl
								INNER JOIN cuentas cu ON cl.id = cu.cliente_id
								WHERE cl.id = @cliente_id
								GROUP BY cl.nombre);
	RETURN @suma_saldo
END

SELECT  cod_cliente, nombre, dbo.fn_saldo_total_cliente(id) AS 'Saldo Total' FROM clientes

--Funcion que toma la fecha de nacimiento y devuelve su edad
CREATE FUNCTION dbo.calcula_edad (@fecha_nacimiento DATE)
RETURNS INT
AS
BEGIN
DECLARE @edad INT
SET @edad = (SELECT DATEDIFF(YEAR,@fecha_nacimiento, GETDATE()))
RETURN @edad
END

SELECT dbo.calcula_edad('1990-11-12');

--PROCEDURE AND FUNCTIONS
--Procedimiento que usa una función para calcular el promedio de saldos de todas las cuentas de un cliente en específico
CREATE FUNCTION dbo.fn_promedio_saldo_cliente(@id_cliente INT)
RETURNS INT
AS
BEGIN
DECLARE @prom_saldo INT
SET @prom_saldo = (SELECT AVG(saldo) FROM cuentas WHERE cliente_id = @id_cliente)
RETURN @prom_saldo 
END


CREATE PROCEDURE dbo.pr_saldo_prom_cliente
AS

SET NOCOUNT ON;
SELECT id, nombre, email, dbo.fn_promedio_saldo_cliente(id) AS 'Promedio_Saldo' FROM clientes;

GO

EXEC dbo.pr_saldo_prom_cliente