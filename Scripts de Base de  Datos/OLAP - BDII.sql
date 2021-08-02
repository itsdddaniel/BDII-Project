CREATE DATABASE OLAP;
USE OLAP;

CREATE TABLE D_VIAJES (
  ID_VIAJE INT,
  DIRECCION VARCHAR(100),
  PRIMARY KEY (ID_VIAJE)
);

CREATE TABLE D_MARCA (
  ID_MARCA INT,
  NOMBRE VARCHAR (),
  PRIMARY KEY (ID_MARCA)
);

CREATE TABLE D_MEDIO_DE_TRANSPORTE (
  ID_TRABAJO INT,
  Cargo VARCHAR(50),
  PRIMARY KEY (ID_TRABAJO)
);

CREATE TABLE D_VEHÍCULO (
  ID_VEHICULO INT,
  PRIMARY KEY (ID_VEHICULO)
);

CREATE TABLE H_VEHICULO (
  ID_H_VEHÍCULO INT,
  ID_SUCURSAL INT,
  ID_MEDIO INT,
  ID_VIAJES INT,
  ID_TIEMPO INT,
  ID_VEHÍCULO INT,
  NOMBRECLIENTE Varchar(50),
  PRIMARY KEY (ID_H_VEHÍCULO)
);

CREATE TABLE D_TIEMPO (
  ID_TIEMPO DATE,
  DIA VARCHAR(100),
  MES INT,
  AÑO INT,
  TRIMESTRE INT,
  SEMESTRE INT,
  DIADESEMANA VARCHAR(20),
  PRIMARY KEY (ID_TIEMPO)
);
