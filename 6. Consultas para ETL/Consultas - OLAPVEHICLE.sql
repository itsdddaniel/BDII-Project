/*CONSULTAS PARA LA OLAP - VEHICLE*/

/* TABLA D_VEHICLE */
SELECT id,Modelo FROM dbo.Vehiculo;

/* TABLA D_MARCA */
SELECT id,Nombre FROM dbo.MarcaDeVehiculo;

/* TABLA D_MEDIO_DE_TRANSPORTE */
SELECT id,Carga FROM dbo.MedioDeTransporte;

/* TABLA D_VIAJES */
SELECT id,DireccionDeDestino FROM dbo.Viaje;

/* TABLA D_TIEMPO */
SELECT id, CONVERT(varchar, Viaje.Fecha) AS [Fecha] FROM dbo.Viaje;

/* TABLA H_VEHICULO */
SELECT Vehiculo.id AS 'ID_H_VEHICULO', MarcaDeVehiculo.id AS 'ID_MARCA', MedioDeTransporte.id AS 'ID_MEDIO', Viaje.id AS 'ID_VIAJES', CONVERT(varchar, Viaje.Fecha) AS [ID_TIEMPO], Vehiculo.id AS 'ID_VEHICULO', Cliente.Nombre AS 'NOMBRECLIENTE' FROM dbo.Vehiculo JOIN Viaje ON Vehiculo = Vehiculo.id JOIN MarcaDeVehiculo ON MarcaDeVehiculo.id = Marca JOIN MedioDeTransporte ON MedioDeTransporte.id = MedioDeTransporte JOIN Cliente ON Viaje.Cliente = Cliente.id;