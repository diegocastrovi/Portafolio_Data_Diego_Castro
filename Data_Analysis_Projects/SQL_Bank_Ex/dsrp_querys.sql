USE dsrp_banco_new
GO

SELECT * FROM clientes;
SELECT * FROM atenciones;
SELECT * FROM cuentas;
SELECT * FROM productos;
SELECT * FROM sucursales;
SELECT * FROM tipo_atenciones;
SELECT * FROM tipo_transacciones;
SELECT * FROM empleados;
SELECT * FROM transacciones;


--Encontrar el nombre y el correo de todos los clientes cuyo nombre incluye una 'a'

SELECT nombre, email
FROM clientes
WHERE nombre LIKE '%a%'

--Encontrar el nombre y el correo de todos los clientes cuyo nombre Termine en una 'a'
SELECT nombre, email
FROM clientes
WHERE nombre LIKE '%a'

--Lista los nombres de los clientes y la cantidad	de cuentas que tienen cada uno

SELECT cl.nombre AS 'Cliente' , COUNT(cu.cliente_id) AS 'No. Cuentas'
FROM clientes cl 
INNER JOIN cuentas cu ON cl.id = cu.cliente_id
GROUP BY cl.nombre
ORDER BY 2 DESC;


--Lista de empleados con su nombre y sucursal a la que están asignados
SELECT e.nombre, s.nombre
FROM empleados e
INNER JOIN sucursales s ON e.sucursal_id = s.id


--Cuentas y transacciones
--Lista de cuentas con saldo mayor a $5000

SELECT *
FROM cuentas 
WHERE saldo>5000
ORDER BY saldo DESC

--Lista de transacciones realizadas las ultimas 2 semanas

SELECT *
FROM transacciones
WHERE DATEDIFF ( day , GETDATE(), fecha_transaccion ) <=14;

--Lista de cuentas sin transacciones
SELECT id, no_cuenta
FROM cuentas 
WHERE id NOT IN (SELECT cuenta_origen_id FROM transacciones) AND id NOT IN (SELECT cuenta_destino_id FROM transacciones);

--Atenciones y tipos de atencion
--Cantidad de atenciones realizadas por cada tipo de atencion

SELECT * FROM atenciones
SELECT * FROM tipo_atenciones

SELECT ta.id , ta.nombre as 'Tipo_atencion', ta.descripcion, COUNT(a.id) AS	'atenciones_realizadas' 
FROM tipo_atenciones ta
INNER JOIN atenciones a ON ta.id = a.tipo_atencion_id
GROUP BY ta.nombre, ta.descripcion, ta.id 


--Cantidad de atenciones realizadas por cada tipo de atencion pero que tengan más de 20 atenciones

SELECT ta.id , ta.nombre as 'Tipo_atencion', ta.descripcion, COUNT(a.id) AS	'atenciones_realizadas' 
FROM tipo_atenciones ta
INNER JOIN atenciones a ON ta.id = a.tipo_atencion_id
GROUP BY ta.nombre, ta.descripcion, ta.id 
HAVING COUNT(a.id)>=20

--Muestra los detalles de las atenciones completadas incluyendo el tipo de atencioon, el nombre del cliente, del empleado
-- nombre de la sucursal y el supervisor a cargo
SELECT 
c.nombre as 'Cliente', 
e.nombre as 'Empleado',
CASE 
	WHEN es.nombre IS NULL  
		THEN 'No tiene supervisor' 
	ELSE es.nombre 
END as 'Supervisor',

s.nombre as 'Sucursal',
ta.nombre as 'tipo_atencion',
a.fecha_atencion,
a.estado,
CASE 
	WHEN a.calificacion IS NULL  
		THEN 'No tiene Calificación' 
	ELSE CAST(a.calificacion AS VARCHAR(5))
END AS 'Calificacion'

FROM atenciones a
INNER JOIN tipo_atenciones ta ON ta.id = a.tipo_atencion_id
INNER JOIN clientes c ON a.cliente_id=c.id
INNER JOIN empleados e ON e.id = a.empleado_id
LEFT JOIN empleados es ON es.id = e.supervisor_id
INNER JOIN sucursales s ON s.id = e.sucursal_id
WHERE a.estado = 'Atendido'


--Encuentre las atenciones que un empleado en específico tiene pendientes

SELECT 
c.nombre as 'Cliente', 
e.nombre as 'Empleado',
CASE 
	WHEN es.nombre IS NULL  
		THEN 'No tiene supervisor' 
	ELSE es.nombre 
END as 'Supervisor',

s.nombre as 'Sucursal',
ta.nombre as 'tipo_atencion',
a.id as 'Atencion_id',
a.fecha_atencion,
a.estado,
CASE 
	WHEN a.calificacion IS NULL  
		THEN 'No tiene calificacion' 
	ELSE CAST(a.calificacion AS VARCHAR(10))
END AS 'Calificacion'

FROM atenciones a
INNER JOIN tipo_atenciones ta ON ta.id = a.tipo_atencion_id
INNER JOIN clientes c ON a.cliente_id=c.id
INNER JOIN empleados e ON e.id = a.empleado_id
LEFT JOIN empleados es ON es.id = e.supervisor_id
INNER JOIN sucursales s ON s.id = e.sucursal_id
WHERE a.estado = 'En proceso' AND e.id = 10;  --Buscando las atenciones pendientes del empleado 11

-- Estadísticas financieras

-- Calcula el saldo total en todas las cuentas

SELECT SUM(saldo) AS 'Saldo_total_cuentas'
FROM cuentas

--Encuentre la cuenta con el saldo más alto y el más bajo

--Forma 1
SELECT TOP 1 no_cuenta, saldo FROM cuentas ORDER BY saldo DESC 
SELECT TOP 1 no_cuenta, saldo FROM cuentas ORDER BY saldo ASC

--Forma 2, en caso que haya 2 cuentas con el mismo saldo max o min, tendriamos que mostrar todas las cuentas con ese saldo

SELECT no_cuenta, saldo
FROM cuentas
WHERE saldo = (SELECT MAX(saldo) FROM cuentas)

SELECT no_cuenta, saldo
FROM cuentas
WHERE saldo = (SELECT MIN(saldo) FROM cuentas)

--Calcula el promedio de saldos	en todas las cuentas de cada cliente
SELECT cl.nombre, AVG(saldo) AS 'Promedio de saldo'
FROM cuentas cu
INNER JOIN  clientes cl ON cu.cliente_id = cl.id
GROUP BY cl.nombre 


--Listado de clientes:
--Consulta el nombre, número de documento y correo de todos los clientes ordenados por fecha de nacimiento, de mayor a menor.
SELECT * FROM clientes;

SELECT nombre, numero_documento, email, fecha_nacimiento
FROM clientes
ORDER BY fecha_nacimiento

--Sucursales por orden alfabético:
--Obtén el nombre y dirección de todas las sucursales ordenadas alfabéticamente.

SELECT  nombre, direccion
FROM sucursales
ORDER BY  nombre

--Productos de crédito:
--Muestra los nombres y descripciones de todos los productos cuyo nombre contenga la palabra 'Crédito'.

SELECT nombre
FROM productos
WHERE nombre like '%Crédito%'

-- Atenciones por cliente:
--Muestra el nombre del cliente y la cantidad total de atenciones que ha recibido.

SELECT cl.nombre, COUNT(a.id) AS 'Cantidad de atenciones'
FROM clientes cl
INNER JOIN atenciones a ON a.cliente_id = cl.id
GROUP BY cl.nombre

--Transacciones por tipo:
--Obtén la cantidad total de transacciones agrupadas por tipo de transacción.
SELECT tt.nombre, COUNT(t.id) AS 'Cantidad de transacciones'
FROM transacciones t
INNER JOIN tipo_transacciones tt ON t.tipo_transaccion_id = tt.id
GROUP BY tt.nombre

--Saldo total por cliente:
--Para cada cliente, consulta su nombre y el saldo total de todas sus cuentas.

SELECT cl.nombre, SUM(c.saldo) AS 'Saldo total por cliente'
FROM cuentas c
INNER JOIN clientes cl ON c.cliente_id = cl.id
GROUP BY cl.nombre

-- Promedio de calificación de atenciones:
--Calcula el promedio de calificación de las atenciones realizadas por cada empleado.
SELECT	e.nombre, AVG(a.calificacion) AS 'Calificacion promedio' 
FROM atenciones a 
INNER JOIN empleados e ON a.empleado_id = e.id
GROUP BY e.nombre

--Clientes con más de 3 atenciones:
--Obtén los nombres de los clientes que hayan recibido más de 3 atenciones.

SELECT cl.nombre AS 'Cliente' , COUNT(a.id) AS 'Numero de atenciones'
FROM clientes cl 
INNER JOIN atenciones a ON a.cliente_id = cl.id
GROUP BY  cl.nombre
HAVING COUNT(a.id) > 3;

--Encuentra a los empleados que han atendido 1 o más clientes el ultimo mes
SELECT e.nombre AS 'Empleado', COUNT(a.id) as 'Numero_atenciones'
FROM empleados e
INNER JOIN atenciones a ON a.empleado_id = e.id
--WHERE MONTH(a.fecha_atencion) = MONTH(GETDATE()) AND YEAR(a.fecha_atencion) = YEAR(GETDATE())
WHERE DATEDIFF(DAY, a.fecha_atencion, GETDATE()) <= 30
GROUP BY e.nombre
HAVING COUNT(a.id) > 0


--Encuentra las cuentas que han tenido transacciones en los ultimos 100 días
SELECT cu.*
FROM cuentas cu
INNER JOIN transacciones t ON cu.id = t.cuenta_origen_id
WHERE DATEDIFF(DAY,t.fecha_transaccion,GETDATE()) <= 100

--Empleados supervisores:
-- Consulta los nombres de los empleados que son supervisores de otros empleados.
SELECT  DISTINCT es.nombre AS 'Supervisor'
FROM empleados e
INNER JOIN empleados es ON e.supervisor_id = es.id

-- Top 5 cuentas con mayor saldo:
--Muestra las 5 cuentas con mayor saldo actual y su número de cuenta.
SELECT TOP 5 saldo, no_cuenta
FROM cuentas
ORDER BY saldo DESC

--Clientes sin transacciones en sus cuentas:
--Lista los nombres de los clientes que no han realizado ninguna transacción en sus cuentas.

SELECT cl.nombre, t.id
FROM clientes cl
LEFT JOIN  cuentas cu ON cl.id = cu.cliente_id
LEFT JOIN transacciones t ON cu.cliente_id = t.cuenta_destino_id or cu.cliente_id = t.cuenta_origen_id

WHERE t.id is Null


--Resumen de saldo por tipo de producto:
--Muestra cuánto dinero hay acumulado en total en cada tipo de producto.

SELECT p.nombre , sum(c.saldo) AS 'Saldo por producto'
FROM productos p
INNER JOIN cuentas c ON c.producto_id = p.id
GROUP BY p.nombre
-- Estado de cuentas con CASE:
--Crea una consulta que liste el número de cuenta y un campo adicional llamado estado_cuenta:

--'Al día' si saldo > 0

--'En rojo' si saldo <= 0

SELECT 
	no_cuenta,
	CASE
		WHEN saldo > 0 THEN 'Al día'
		WHEN saldo <= 0 THEN 'En rojo'
	END AS 'Estado de cuenta'
FROM cuentas 


--Transacciones entre cuentas propias:
--Lista todas las transacciones donde cuenta_origen y cuenta_destino pertenecen al mismo cliente.

SELECT t.id AS transaccion_id,
       t.fecha_transaccion,
       t.monto,
       t.tipo_transaccion_id,
       c1.cliente_id AS cliente_origen,
       c2.cliente_id AS cliente_destino
FROM transacciones t
INNER JOIN cuentas c1 ON c1.id = t.cuenta_origen_id
INNER JOIN cuentas c2 ON c2.id = t.cuenta_destino_id
WHERE c1.cliente_id = c2.cliente_id
ORDER BY t.fecha_transaccion DESC;

