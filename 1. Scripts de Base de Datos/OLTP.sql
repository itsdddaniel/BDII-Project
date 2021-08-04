CREATE DATABASE OLTP;
USE OLTP;

CREATE TABLE Trabajo (
  id INT NOT NULL IDENTITY,
  Cargo VARCHAR(1000),
  Salario VARCHAR(1000),
  PRIMARY KEY (id)
);

CREATE TABLE Sucursal (
  id INT NOT NULL IDENTITY,
  Direccion VARCHAR(1000),
  PRIMARY KEY (id)
);

CREATE TABLE Cliente (
  id INT NOT NULL IDENTITY,
  Nombre VARCHAR(1000),
  Telefono VARCHAR(1000),
  Email VARCHAR(1000),
  PRIMARY KEY (id)
);

CREATE TABLE MedioDeTransporte (
  id INT NOT NULL IDENTITY,
  Medio VARCHAR(1000),
  Carga VARCHAR(1000),
  PRIMARY KEY (id)
);

CREATE TABLE MarcaDeVehiculo (
  id INT NOT NULL IDENTITY,
  Nombre VARCHAR(1000),
  País VARCHAR(1000),
  PRIMARY KEY (id)
);

CREATE TABLE Empleados (
  id INT NOT NULL IDENTITY,
  NumeroDeIdentidad VARCHAR(1000),
  Trabajo INT,
  Sucursal INT,
  Nombre VARCHAR(1000),
  FechaDeNacimiento VARCHAR(1000),
  Telefono VARCHAR(1000),
  Rating INT,
  PRIMARY KEY (id),
  FOREIGN KEY (Sucursal) REFERENCES Sucursal(id),
  FOREIGN KEY (Trabajo) REFERENCES Trabajo(id)
);

CREATE TABLE Vehiculo (
  id INT NOT NULL IDENTITY,
  Placa VARCHAR(1000),
  MedioDeTransporte INT,
  Marca INT,
  Año VARCHAR(1000),
  Modelo VARCHAR(1000),
  PRIMARY KEY (id),
  FOREIGN KEY (MedioDeTransporte) REFERENCES MedioDeTransporte(id),
  FOREIGN KEY (Marca) REFERENCES MarcaDeVehiculo(id)
);
CREATE TABLE Viaje (
  id INT NOT NULL IDENTITY,
  Cliente INT,
  Conductor INT,
  Estado INT,
  Monto FLOAT,
  Fecha VARCHAR(1000),
  DireccionDeDestino VARCHAR(1000),
  Vehiculo INT,
  Sucursal INT,
  PRIMARY KEY (id),
  FOREIGN KEY (Conductor) REFERENCES Empleados(id),
  FOREIGN KEY (Vehiculo) REFERENCES Vehiculo(id),
  FOREIGN KEY (Cliente) REFERENCES Cliente(id),
  FOREIGN KEY (Sucursal) REFERENCES Sucursal(id)
);

CREATE TABLE EstadoDeViaje (
  id INT NOT NULL IDENTITY,
  Estado INT,
  FOREIGN KEY (id) REFERENCES Viaje(id)
); 