
# Sistema de Gestión Bancaria con SQL Server

Proyecto académico/práctico en SQL Server que simula la estructura y operación básica de un sistema bancario. Incluye creación de base de datos, creación de registros, tablas relacionales, consultas SQL, funciones, procedimientos almacenados y generación de reportes transaccionales y estadísticos.

---

## Descripción

Este proyecto simula la operativa de un banco, permitiendo:
- Registrar clientes, empleados, cuentas, productos y transacciones.
- Realizar consultas analíticas y de control.
- Gestionar transacciones bancarias con control de saldo.
- Crear procedimientos almacenados y funciones para automatizar operaciones.

---

## Tecnologías Utilizadas

- **SQL Server Management Studio (SSMS)**
- **T-SQL**
- **Procedimientos almacenados**
- **Funciones escalares y de tabla**
- **Vistas**
- **Consultas de análisis y reporting**

---

## Estructura del Proyecto

```
/SQL/
 Create_database.sql              # Script de creación de base de datos y tablas
 Insert_fict_values.sql          # Script de creación de datos ficticios
 dsrp_querys.sql                  # Consultas de análisis y reporting sobre la base
 Funct_procedures_ex.sql          # Procedimientos almacenados y funciones definidas
```

---

## Contenido de los Archivos

### Create_database.sql
- Crea la base de datos `dsrp_banco`.
- Define tablas relacionales:
  - `clientes`
  - `empleados`
  - `cuentas`
  - `transacciones`
  - `productos`
  - `tipo_transacciones`
  - `tipo_atenciones`
  - `atenciones`
  - `sucursales`
- Incluye constraints de integridad referencial.

### Insert_fict_values.sql
-Inserta registros para todas las tablas creadas
-Para las tablas clientes, empleados, cuentas, sucursales, tipo_transacciones, tipo_atenciones y productos se crearon valores ficticios
-Para las tablas atenciones y transacciones se generaron valores aleatorios utilizando los valores de los registros ya creados

### dsrp_querys.sql
Contiene consultas SQL para:

- Análisis de clientes, empleados y transacciones.
- Reportes de atenciones, saldos, clientes sin transacciones.
- Estadísticas de uso de cuentas y tipos de transacción.
- Consultas con `GROUP BY`, `HAVING`, `JOINS`, subconsultas y `CASE`.
- Listados por filtros de fechas, montos y condiciones de negocio.

### Funct_procedures_ex.sql
Incluye:

- **Vistas**: consulta de total de clientes.
- **Funciones escalares**:
  - Edad de un cliente.
  - Suma de saldos por cliente.
  - Promedio de saldo de cuentas de un cliente.
- **Procedimientos almacenados**:
  - Consulta de transacciones por cliente.
  - Inserción de transacción con control de saldo según tipo.
  - Consulta del promedio de saldo por cliente usando función.

---

## Vista previa de consultas destacadas

- Total de clientes
- Cuentas con saldo mayor a un monto
- Atenciones por tipo y empleado
- Transacciones en los últimos 30 días
- Resumen de saldo por producto

---

## Cómo usar

1. Ejecutar `Create_database.sql` en SQL Server.
2. Ejecutar `Insert_fict_values.sql` para registrar valores en las tablas.
3. Ejecutar `Funct_procedures_ex.sql` para definir procedimientos y funciones.
4. Ejecutar `dsrp_querys.sql` para realizar consultas de análisis.
5. Probar llamadas a procedimientos y funciones para ver resultados.

---



