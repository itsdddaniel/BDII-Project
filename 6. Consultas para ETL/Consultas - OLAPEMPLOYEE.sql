/*CONSULTAS PARA LA OLAP - EMPLOYEE*/

/* TABLA D_TIEMPO */
SELECT CONVERT(DATE, Viaje.Fecha) ID_TIEMPO, DATEPART(YEAR, Viaje.Fecha) año, 
DATEPART(MONTH, Viaje.Fecha) mes, DATEPART(WEEK, Viaje.Fecha) semana,
DATEPART(QUARTER, Viaje.Fecha) trimestre, (DATEPART(QUARTER,Viaje.Fecha)/3)+1 semestre, DATEPART(WEEKDAY, Viaje.Fecha) Dia_Semana
FROM Viaje
GROUP BY Viaje.Fecha;

/* TABLA D_VIAJES */
SELECT id,DireccionDeDestino
FROM Viaje;

/* TABLA D_SUCURSAL */
SELECT id
FROM Sucursal;

/* TABLA D_EMPLEADOS */
SELECT id, nombre
FROM Empleados;

/* TABLA D_TRABAJO */
SELECT id, Cargo
FROM Trabajo;

/* TABLA H_EMPLOYEE */
SELECT Empleados.id AS 'ID_EMPLEADO', Trabajo.id AS 'ID_TRABAJO', Sucursal.id AS 'ID_SUCURSAL', Viaje.id AS 'ID_VIAJE', CONVERT(varchar, Viaje.Fecha) AS [ID_TIEMPO], Empleados.Nombre AS 'NOMBRECLIENTE' FROM Empleados JOIN Trabajo ON Empleados.Trabajo = Trabajo.id JOIN Sucursal ON Empleados.Sucursal = Sucursal.id JOIN Viaje ON Empleados.id = Viaje.Conductor;
