CREATE DATABASE OLAPEMPLOYEE;
USE OLAPEMPLOYEE;

CREATE TABLE D_VIAJES (
  ID_VIAJE INT,
  DIRECCION VARCHAR(1000),
  PRIMARY KEY (ID_VIAJE)
);

CREATE TABLE D_SUCURSAL (
  ID_SUCURSAL INT,
  PRIMARY KEY (ID_SUCURSAL)
);

CREATE TABLE D_TRABAJO (
  ID_TRABAJO INT,
  CARGO VARCHAR(1000),
  PRIMARY KEY (ID_TRABAJO)
);

CREATE TABLE D_EMPLEADOS (
  ID_EMPLEADO INT,
  NOMBRE VARCHAR(50),
  PRIMARY KEY (ID_EMPLEADO)
);

CREATE TABLE D_TIEMPO (
  ID_TIEMPO DATE,
  DIA VARCHAR(1000),
  MES INT,
  AÑO INT,
  TRIMESTRE INT,
  SEMESTRE INT,
  DIADESEMANA VARCHAR(1000),
  PRIMARY KEY (ID_TIEMPO)
);

CREATE TABLE H_EMPLEADO (
  ID_EMPLEADO INT,
  ID_SUCURSAL INT,
  ID_TRABAJO INT,
  ID_VIAJE INT,
  ID_TIEMPO DATE,
  NOMBREEMPLEADO VARCHAR(1000),
  PRIMARY KEY (ID_EMPLEADO),
  FOREIGN KEY (ID_TRABAJO) REFERENCES D_TRABAJO(ID_TRABAJO),
  FOREIGN KEY (ID_TIEMPO) REFERENCES D_TIEMPO(ID_TIEMPO),
  FOREIGN KEY (ID_EMPLEADO) REFERENCES D_EMPLEADOS(ID_EMPLEADO),
  FOREIGN KEY (ID_VIAJE) REFERENCES D_VIAJES(ID_VIAJE),
  FOREIGN KEY (ID_SUCURSAL) REFERENCES D_SUCURSAL(ID_SUCURSAL)
);
