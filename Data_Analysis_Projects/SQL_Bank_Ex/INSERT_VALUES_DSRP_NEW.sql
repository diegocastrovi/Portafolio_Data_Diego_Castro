USE dsrp_banco_new
GO

--INSERT VALUES CREATED 

INSERT INTO sucursales (nombre, direccion, descripcion)
VALUES 
('Sucursal Lima Centro', 'Av. Abancay 345, Cercado de Lima', 'Sucursal principal en el centro de Lima'),
('Sucursal Miraflores', 'Av. Larco 890, Miraflores', 'Sucursal en zona comercial y turística'),
('Sucursal San Isidro', 'Av. Javier Prado 1230, San Isidro', 'Sucursal en distrito financiero'),
('Sucursal La Molina', 'Av. La Molina 456, La Molina', 'Sucursal residencial de alto flujo'),
('Sucursal Callao', 'Av. Saenz Peña 987, Callao', 'Sucursal cercana al puerto y aeropuerto'),
('Sucursal Surco', 'Av. Caminos del Inca 670, Santiago de Surco', 'Sucursal con atención especializada en créditos'),
('Sucursal San Miguel', 'Av. La Marina 1300, San Miguel', 'Sucursal para zona universitaria y comercial'),
('Sucursal Chorrillos', 'Av. Defensores del Morro 550, Chorrillos', 'Sucursal cercana a zona de playas'),
('Sucursal Lince', 'Av. Arequipa 2500, Lince', 'Sucursal de atención rápida y trámites'),
('Sucursal Ate', 'Av. Nicolás Ayllón 980, Ate', 'Sucursal estratégica en zona industrial');

INSERT INTO tipo_atenciones (nombre, descripcion)
VALUES
('Apertura de Cuenta', 'Atención para apertura de cuentas de ahorro, corriente o CTS'),
('Solicitud de Crédito', 'Asesoría y trámite de créditos personales, vehiculares o hipotecarios'),
('Bloqueo de Tarjeta', 'Atención para bloqueo de tarjeta por pérdida, robo o uso no autorizado'),
('Consultas Generales', 'Atención para consultas sobre productos, servicios y requisitos'),
('Actualización de Datos', 'Modificación de datos personales, de contacto o documentación');

INSERT INTO productos (nombre, descripcion)
VALUES
('Cuenta de Ahorro', 'Cuenta bancaria que permite ahorrar dinero y generar intereses mensuales.'),
('Cuenta Corriente', 'Cuenta bancaria para operaciones diarias con chequera y línea de sobregiro.'),
('Tarjeta de Crédito Clásica', 'Tarjeta de crédito con límite básico y promociones nacionales.'),
('Tarjeta de Crédito Oro', 'Tarjeta de crédito con beneficios premium y programa de puntos.'),
('Cuenta CTS', 'Cuenta bancaria para depósito de compensación por tiempo de servicios.');

INSERT INTO tipo_transacciones (nombre, descripcion)
VALUES
('Depósito en Efectivo', 'Ingreso de dinero en efectivo a una cuenta bancaria.'),
('Retiro en Ventanilla', 'Retiro de dinero en efectivo realizado en sucursal.'),
('Transferencia a Terceros', 'Transferencia de fondos a cuentas de otros clientes del banco.'),
('Pago de Servicios', 'Pago de servicios como luz, agua, teléfono o internet.');


INSERT INTO clientes (cod_cliente, nombre, numero_documento, genero, fecha_nacimiento, direccion, telefono, email, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by)
VALUES
('C00001', 'Luis Fernández', '47652873101', 'M', '1985-04-12', 'Av. Brasil 123, Lima', '999123456', 'lfernandez@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00002', 'María Gómez', '52764829102', 'F', '1990-07-24', 'Jr. Moquegua 456, Callao', '999234567', 'mgomez@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00003', 'Carlos Paredes', '56387910203', 'M', '1982-12-05', 'Av. Colonial 789, Lima', '999345678', 'cparedes@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00004', 'Lucía Rojas', '49832764104', 'F', '1995-03-18', 'Jr. Ayacucho 321, Miraflores', '999456789', 'lrojas@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00005', 'Pedro Salas', '57891653005', 'M', '1988-11-30', 'Av. Benavides 555, Surco', '999567890', 'psalas@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00006', 'Rosa Campos', '51324897006', 'F', '1991-06-09', 'Calle Colón 654, San Isidro', '999678901', 'rcampos@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00007', 'Miguel Torres', '49673821907', 'M', '1987-01-22', 'Av. Canadá 778, San Borja', '999789012', 'mtorres@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00008', 'Ana Morales', '58947361008', 'F', '1993-09-15', 'Av. Faucett 232, Callao', '999890123', 'amorales@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00009', 'Javier Ramírez', '51468902709', 'M', '1984-08-11', 'Jr. Cuzco 100, Breña', '999901234', 'jramirez@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00010', 'Elena Mendoza', '52730981510', 'F', '1996-02-02', 'Av. La Marina 950, San Miguel', '999012345', 'emendoza@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00011', 'Andrés Chávez', '48761230911', 'M', '1990-10-27', 'Av. Salaverry 300, Jesús María', '999111222', 'achavez@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00012', 'Sofía Ruiz', '57890261412', 'F', '1992-05-05', 'Jr. Ancash 445, Lima', '999222333', 'sruiz@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00013', 'Henry Cárdenas', '53497821313', 'M', '1986-03-20', 'Av. Javier Prado 500, La Molina', '999333444', 'hcardenas@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00014', 'Karina León', '52347189014', 'F', '1994-07-29', 'Calle Los Pinos 150, Miraflores', '999444555', 'kleon@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00015', 'Oscar Valverde', '59832761415', 'M', '1989-11-18', 'Av. Tomas Valle 600, Los Olivos', '999555666', 'ovalverde@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00016', 'Natalia Aguirre', '50789132616', 'F', '1991-04-06', 'Av. El Polo 230, Surco', '999666777', 'naguirre@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00017', 'Felipe Hurtado', '57632148917', 'M', '1985-09-13', 'Av. San Luis 880, San Borja', '999777888', 'fhurtado@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00018', 'Camila Vargas', '58920374118', 'F', '1997-12-01', 'Jr. Loreto 212, Lima', '999888999', 'cvargas@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00019', 'Víctor Peña', '51420367819', 'M', '1990-08-08', 'Av. Universitaria 4500, San Miguel', '999999000', 'vpena@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL),
('C00020', 'Valeria Castro', '59981237020', 'F', '1995-05-21', 'Av. El Sol 321, La Molina', '999000111', 'vcastro@mail.com', GETDATE(), NULL, NULL, 1, NULL, NULL);

INSERT INTO empleados (sucursal_id, supervisor_id, nombre, numero_documento, genero, fecha_nacimiento, direccion, telefono, email, email_institucional, puesto, salario, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by)
VALUES
(1, NULL, 'Carlos Vidal', '40123123123', 'M', '1980-03-05', 'Av. Brasil 100', '999123001', 'cvidal@banco.com', 'cvidal@dsrp.pe', 'Supervisor', 9500, GETDATE(), NULL, NULL, 1, NULL, NULL),
(1, 1, 'Ana Quispe', '40123123124', 'F', '1990-06-18', 'Av. Brasil 102', '999123002', 'aquispe@banco.com', 'aquispe@dsrp.pe', 'Asesor', 4500, GETDATE(), NULL, NULL, 1, NULL, NULL),
(1, 1, 'Luis Torres', '40123123125', 'M', '1988-07-23', 'Av. Brasil 104', '999123003', 'ltorres@banco.com', 'ltorres@dsrp.pe', 'Asesor', 4700, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Sucursal 2
(2, NULL, 'Mónica Paredes', '40123123126', 'F', '1982-08-09', 'Av. Larco 200', '999123004', 'mparedes@banco.com', 'mparedes@dsrp.pe', 'Supervisor', 9600, GETDATE(), NULL, NULL, 1, NULL, NULL),
(2, 4, 'Víctor Ramos', '40123123127', 'M', '1991-04-10', 'Av. Larco 202', '999123005', 'vramos@banco.com', 'vramos@dsrp.pe', 'Asesor', 4600, GETDATE(), NULL, NULL, 1, NULL, NULL),
(2, 4, 'Daniela Salas', '40123123128', 'F', '1989-01-30', 'Av. Larco 204', '999123006', 'dsalas@banco.com', 'dsalas@dsrp.pe', 'Asesor', 4700, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Sucursal 3
(3, NULL, 'Pedro Cárdenas', '40123123129', 'M', '1985-05-19', 'Av. Javier Prado 300', '999123007', 'pcardenas@banco.com', 'pcardenas@dsrp.pe', 'Supervisor', 9400, GETDATE(), NULL, NULL, 1, NULL, NULL),
(3, 7, 'Lucero Vargas', '40123123130', 'F', '1992-12-12', 'Av. Javier Prado 302', '999123008', 'lvargas@banco.com', 'lvargas@dsrp.pe', 'Asesor', 4600, GETDATE(), NULL, NULL, 1, NULL, NULL),
(3, 7, 'Renzo Gallardo', '40123123131', 'M', '1990-02-20', 'Av. Javier Prado 304', '999123009', 'rgallardo@banco.com', 'rgallardo@dsrp.pe', 'Asesor', 4700, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Sucursal 4
(4, NULL, 'Sandra López', '40123123132', 'F', '1983-11-04', 'Av. La Molina 400', '999123010', 'slopez@banco.com', 'slopez@dsrp.pe', 'Supervisor', 9500, GETDATE(), NULL, NULL, 1, NULL, NULL),
(4, 10, 'Héctor García', '40123123133', 'M', '1989-09-28', 'Av. La Molina 402', '999123011', 'hgarcia@banco.com', 'hgarcia@dsrp.pe', 'Asesor', 4600, GETDATE(), NULL, NULL, 1, NULL, NULL),
(4, 10, 'Paola Ruiz', '40123123134', 'F', '1993-08-06', 'Av. La Molina 404', '999123012', 'pruiz@banco.com', 'pruiz@dsrp.pe', 'Asesor', 4650, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Sucursal 5
(5, NULL, 'Gustavo Zegarra', '40123123135', 'M', '1980-12-01', 'Av. Saenz Peña 500', '999123013', 'gzegarra@banco.com', 'gzegarra@dsrp.pe', 'Supervisor', 9700, GETDATE(), NULL, NULL, 1, NULL, NULL),
(5, 13, 'Carmen Bravo', '40123123136', 'F', '1991-07-07', 'Av. Saenz Peña 502', '999123014', 'cbravo@banco.com', 'cbravo@dsrp.pe', 'Asesor', 4700, GETDATE(), NULL, NULL, 1, NULL, NULL),
(5, 13, 'Diego Ramos', '40123123137', 'M', '1988-03-13', 'Av. Saenz Peña 504', '999123015', 'dramos@banco.com', 'dramos@dsrp.pe', 'Asesor', 4600, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Sucursal 6
(6, NULL, 'Natalia Herrera', '40123123138', 'F', '1985-06-10', 'Av. Caminos del Inca 600', '999123016', 'nherrera@banco.com', 'nherrera@dsrp.pe', 'Supervisor', 9400, GETDATE(), NULL, NULL, 1, NULL, NULL),
(6, 16, 'Óscar Morales', '40123123139', 'M', '1990-02-02', 'Av. Caminos del Inca 602', '999123017', 'omorales@banco.com', 'omorales@dsrp.pe', 'Asesor', 4500, GETDATE(), NULL, NULL, 1, NULL, NULL),
(6, 16, 'Carla Navarro', '40123123140', 'F', '1989-09-19', 'Av. Caminos del Inca 604', '999123018', 'cnavarro@banco.com', 'cnavarro@dsrp.pe', 'Asesor', 4600, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Sucursal 7
(7, NULL, 'Roberto Alarcón', '40123123141', 'M', '1982-11-30', 'Av. La Marina 1000', '999123019', 'ralarcon@banco.com', 'ralarcon@dsrp.pe', 'Supervisor', 9500, GETDATE(), NULL, NULL, 1, NULL, NULL),
(7, 19, 'Sofía Mendoza', '40123123142', 'F', '1993-03-25', 'Av. La Marina 1002', '999123020', 'smendoza@banco.com', 'smendoza@dsrp.pe', 'Asesor', 4550, GETDATE(), NULL, NULL, 1, NULL, NULL),
(7, 19, 'Álvaro Reyes', '40123123143', 'M', '1989-07-14', 'Av. La Marina 1004', '999123021', 'areyes@banco.com', 'areyes@dsrp.pe', 'Asesor', 4700, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Sucursal 8
(8, NULL, 'Verónica Lazo', '40123123144', 'F', '1987-10-10', 'Av. Defensores del Morro 500', '999123022', 'vlazo@banco.com', 'vlazo@dsrp.pe', 'Supervisor', 9600, GETDATE(), NULL, NULL, 1, NULL, NULL),
(8, 22, 'Manuel Córdova', '40123123145', 'M', '1991-04-04', 'Av. Defensores del Morro 502', '999123023', 'mcordova@banco.com', 'mcordova2@dsrp.pe', 'Asesor', 4500, GETDATE(), NULL, NULL, 1, NULL, NULL),
(8, 22, 'Camila León', '40123123146', 'F', '1995-09-05', 'Av. Defensores del Morro 504', '999123024', 'cleon@banco.com', 'cleon@dsrp.pe', 'Asesor', 4600, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Sucursal 9
(9, NULL, 'Daniel Chávez', '40123123147', 'M', '1984-05-22', 'Av. Arequipa 2500', '999123025', 'dchavez@banco.com', 'dchavez@dsrp.pe', 'Supervisor', 9400, GETDATE(), NULL, NULL, 1, NULL, NULL),
(9, 25, 'Marina Poma', '40123123148', 'F', '1992-11-18', 'Av. Arequipa 2502', '999123026', 'mpoma@banco.com', 'mpoma@dsrp.pe', 'Asesor', 4550, GETDATE(), NULL, NULL, 1, NULL, NULL),
(9, 25, 'José Barrios', '40123123149', 'M', '1989-06-28', 'Av. Arequipa 2504', '999123027', 'jbarrios@banco.com', 'jbarrios@dsrp.pe', 'Asesor', 4700, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Sucursal 10
(10, NULL, 'Alejandra Pérez', '40123123150', 'F', '1986-09-30', 'Av. Nicolás Ayllón 900', '999123028', 'aperez@banco.com', 'aperez@dsrp.pe', 'Supervisor', 9500, GETDATE(), NULL, NULL, 1, NULL, NULL),
(10, 28, 'Sandro Quiroz', '40123123151', 'M', '1991-02-11', 'Av. Nicolás Ayllón 902', '999123029', 'squiroz@banco.com', 'squiroz@dsrp.pe', 'Asesor', 4600, GETDATE(), NULL, NULL, 1, NULL, NULL),
(10, 28, 'Rocío Salazar', '40123123152', 'F', '1990-12-17', 'Av. Nicolás Ayllón 904', '999123030', 'rsalazar@banco.com', 'rsalazar@dsrp.pe', 'Asesor', 4700, GETDATE(), NULL, NULL, 1, NULL, NULL),

-- Empleados extra 
(2, 4, 'Kevin Gonzales', '40123123153', 'M', '1992-04-13', 'Av. Larco 212', '999123031', 'kgonzales@banco.com', 'kgonzales@dsrp.pe', 'Asesor', 4650, GETDATE(), NULL, NULL, 1, NULL, NULL),
(3, 7, 'Vanessa Rojas', '40123123154', 'F', '1991-11-11', 'Av. Javier Prado 312', '999123032', 'vrojas@banco.com', 'vrojas@dsrp.pe', 'Asesor', 4700, GETDATE(), NULL, NULL, 1, NULL, NULL),
(6, 16, 'Alan Zambrano', '40123123155', 'M', '1988-07-16', 'Av. Caminos del Inca 606', '999123033', 'azambrano@banco.com', 'azambrano@dsrp.pe', 'Asesor', 4600, GETDATE(), NULL, NULL, 1, NULL, NULL),
(8, 22, 'Melissa Ramírez', '40123123156', 'F', '1993-03-27', 'Av. Defensores del Morro 506', '999123034', 'mramirez@banco.com', 'mramirez@dsrp.pe', 'Asesor', 4550, GETDATE(), NULL, NULL, 1, NULL, NULL),
(9, 25, 'Hugo Beltrán', '40123123157', 'M', '1989-09-03', 'Av. Arequipa 2506', '999123035', 'hbeltran@banco.com', 'hbeltran@dsrp.pe', 'Asesor', 4700, GETDATE(), NULL, NULL, 1, NULL, NULL);


--Generando valores aleatorios de atenciones
DECLARE @contador INT = 1;
DECLARE @cantidad_total INT = 100;

WHILE @contador <= @cantidad_total
BEGIN
    INSERT INTO atenciones (cliente_id, empleado_id, tipo_atencion_id, fecha_atencion, estado, calificacion, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by)
    SELECT 
        (SELECT TOP 1 id FROM clientes ORDER BY NEWID()),               -- cliente random
        (SELECT TOP 1 id FROM empleados ORDER BY NEWID()),              -- empleado random
        (SELECT TOP 1 id FROM tipo_atenciones ORDER BY NEWID()),        -- tipo atención random
        DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 900, '2023-01-01'),       -- fecha random
        estado_random,                                                  -- estado random
        CASE WHEN estado_random = 'Atendido' 
             THEN (ABS(CHECKSUM(NEWID())) % 5) + 1 
             ELSE NULL END,                                             -- calificación solo si Atendido
        GETDATE(), NULL, NULL, 1, NULL, NULL
    FROM (
        SELECT TOP 1 estado_random 
        FROM (VALUES ('Atendido'), ('En proceso'), ('Cancelado')) AS estados(estado_random)
        ORDER BY NEWID()
    ) AS estado;

    SET @contador += 1;
END
GO


--Generando valores aleatorios de productos


DECLARE @cliente_id INT = 1;
DECLARE @producto_id INT;
DECLARE @contador INT;
DECLARE @no_cuenta NVARCHAR(50);
DECLARE @no_tarjeta NVARCHAR(50);
DECLARE @cod_interbancario NVARCHAR(75);
DECLARE @limite_cred MONEY;
DECLARE @saldo MONEY;

WHILE @cliente_id <= 20
BEGIN
    SET @contador = 1;

    WHILE @contador <= 2
    BEGIN
        -- Producto random
        SELECT TOP 1 @producto_id = id FROM productos ORDER BY NEWID();

        -- Generar número de cuenta único
        WHILE 1=1
        BEGIN
            SET @no_cuenta = CAST(ABS(CHECKSUM(NEWID())) % 900000000 + 100000000 AS NVARCHAR(50));
            IF NOT EXISTS (SELECT 1 FROM cuentas WHERE no_cuenta = @no_cuenta)
                BREAK;
        END

        -- Generar número de tarjeta único
        WHILE 1=1
        BEGIN
            SET @no_tarjeta = CAST(ABS(CHECKSUM(NEWID())) % 9000000000000000 + 4000000000000000 AS NVARCHAR(50));
            IF NOT EXISTS (SELECT 1 FROM cuentas WHERE no_tarjeta = @no_tarjeta)
                BREAK;
        END

        -- Si es tarjeta de crédito (productos 3 y 4)
        IF @producto_id IN (3, 4)
        BEGIN
            SET @cod_interbancario = NULL;
            SET @limite_cred = (ABS(CHECKSUM(NEWID())) % 5000) + 500;  -- límite entre 500 y 5500
            SET @saldo = (ABS(CHECKSUM(NEWID())) % (CAST(@limite_cred AS INT) + 1)); -- saldo entre 0 y límite
        END
        ELSE
        BEGIN
            SET @cod_interbancario = CONCAT('CCI', @no_cuenta);
            SET @limite_cred = NULL;
            SET @saldo = (ABS(CHECKSUM(NEWID())) % 10000) + 100; -- saldo entre 100 y 10100
        END

        -- Insertar cuenta
        INSERT INTO cuentas (cliente_id, producto_id, no_tarjeta, no_cuenta, cod_interbancario, saldo, limite_cred, estado, tea, trea, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by)
        VALUES (
            @cliente_id,
            @producto_id,
            @no_tarjeta,
            @no_cuenta,
            @cod_interbancario,
            @saldo,
            @limite_cred,
            1,
            ROUND(RAND() * 30 + 10, 2),               -- TEA entre 10 y 40%
            ROUND(RAND() * 25 + 8, 2),                -- TREA entre 8 y 33%
            GETDATE(), NULL, NULL, 1, NULL, NULL
        );

        SET @contador += 1;
    END

    SET @cliente_id += 1;
END
GO

--Generando valores aleatorios de transacciones
DECLARE @contador INT = 1;
DECLARE @cantidad_total INT = 100;
DECLARE @cuenta_origen_id INT;
DECLARE @cuenta_destino_id INT;
DECLARE @tipo_transaccion_id INT;
DECLARE @monto MONEY;
DECLARE @saldo_origen MONEY;
DECLARE @nombre_tipo NVARCHAR(100);

WHILE @contador <= @cantidad_total
BEGIN
    -- Elegir tipo de transacción aleatoria
    SELECT TOP 1 
        @tipo_transaccion_id = id, 
        @nombre_tipo = nombre 
    FROM tipo_transacciones 
    ORDER BY NEWID();

    -- Monto aleatorio entre 10 y 1000
    SET @monto = (ABS(CHECKSUM(NEWID())) % 991) + 10;

    -- Transacción según tipo
    IF @nombre_tipo = 'Depósito en Efectivo'
    BEGIN
        -- Solo cuenta destino
        SELECT TOP 1 @cuenta_destino_id = id FROM cuentas ORDER BY NEWID();

        -- Insertar y actualizar saldo
        INSERT INTO transacciones (cuenta_origen_id, cuenta_destino_id, tipo_transaccion_id, monto, fecha_transaccion, created_at, created_by)
        VALUES (NULL, @cuenta_destino_id, @tipo_transaccion_id, @monto, DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 900, '2023-01-01'), GETDATE(), 1);

        UPDATE cuentas SET saldo = saldo + @monto WHERE id = @cuenta_destino_id;
    END

    ELSE IF @nombre_tipo = 'Retiro en Ventanilla'
    BEGIN
        -- Solo cuenta origen
        SELECT TOP 1 @cuenta_origen_id = id, @saldo_origen = saldo FROM cuentas ORDER BY NEWID();

        -- Si saldo permite la operación
        IF @saldo_origen >= @monto
        BEGIN
            INSERT INTO transacciones (cuenta_origen_id, cuenta_destino_id, tipo_transaccion_id, monto, fecha_transaccion, created_at, created_by)
            VALUES (@cuenta_origen_id, NULL, @tipo_transaccion_id, @monto, DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 900, '2023-01-01'), GETDATE(), 1);

            UPDATE cuentas SET saldo = saldo - @monto WHERE id = @cuenta_origen_id;
        END
    END

    ELSE -- Transferencias normales
    BEGIN
        -- Elegir cuenta origen y cuenta destino distintas con saldo disponible
        SELECT TOP 1 @cuenta_origen_id = id, @saldo_origen = saldo FROM cuentas ORDER BY NEWID();

        IF @saldo_origen >= @monto
        BEGIN
            SELECT TOP 1 @cuenta_destino_id = id FROM cuentas WHERE id <> @cuenta_origen_id ORDER BY NEWID();

            INSERT INTO transacciones (cuenta_origen_id, cuenta_destino_id, tipo_transaccion_id, monto, fecha_transaccion, created_at, created_by)
            VALUES (@cuenta_origen_id, @cuenta_destino_id, @tipo_transaccion_id, @monto, DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 900, '2023-01-01'), GETDATE(), 1);

            UPDATE cuentas SET saldo = saldo - @monto WHERE id = @cuenta_origen_id;
            UPDATE cuentas SET saldo = saldo + @monto WHERE id = @cuenta_destino_id;
        END
    END

    SET @contador += 1;
END
GO
