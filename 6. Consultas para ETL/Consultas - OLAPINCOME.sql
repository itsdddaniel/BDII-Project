/*CONSULTAS PARA LA OLAP - INCOME*/

/* D_TIEMPO */
SELECT CONVERT(DATE, Viaje.Fecha) ID_TIEMPO, DATEPART(YEAR, Viaje.Fecha) año, 
DATEPART(MONTH, Viaje.Fecha) mes, DATEPART(WEEK, Viaje.Fecha) semana,
DATEPART(QUARTER, Viaje.Fecha) trimestre, (DATEPART(QUARTER,Viaje.Fecha)/3)+1 semestre, DATEPART(WEEKDAY, Viaje.Fecha) Dia_Semana
FROM Viaje
GROUP BY Viaje.Fecha;

/* D_VIAJES */
SELECT id,DireccionDeDestino
FROM Viaje;

/* D_SUCURSAL */
SELECT id
FROM Sucursal;

/* D_EMPLEADOS */
SELECT id, nombre
FROM Empleados;

/* D_MEDIO_DE_TRANSPORTE */
SELECT id, Medio, Carga
FROM MedioDeTransporte;

/* TABLA H_INGRESOS */
SELECT Empleados.id AS 'ID_INGRESOS', Sucursal.id AS 'ID_SUCURSAL', Empleados.id AS 'ID_EMPLEADO', MedioDeTransporte.id AS 'ID_MEDIO', Viaje.id AS 'ID_VIAJE', CONVERT(varchar, Viaje.Fecha) AS [ID_TIEMPO], Trabajo.Salario AS 'INGRESO' FROM Empleados JOIN Trabajo ON Empleados.Trabajo = Trabajo.id JOIN Sucursal ON Empleados.Sucursal = Sucursal.id JOIN Viaje ON Empleados.id = Viaje.Conductor JOIN Vehiculo ON Viaje.Vehiculo = Vehiculo.id JOIN MedioDeTransporte ON Vehiculo.MedioDeTransporte = MedioDeTransporte.id;