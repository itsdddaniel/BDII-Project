CREATE DATABASE OLAPAPI;
USE OLAPAPI;

CREATE TABLE D_VIDEOS (
  ID_VIDEO VARCHAR(1000),
  TITULO VARCHAR(1000),
  URL VARCHAR(1000),
  PRIMARY KEY (ID_VIDEO)
);

CREATE TABLE D_ESTADISTICAS (
  ID_ESTADISTICA VARCHAR(1000),
  VISTAS VARCHAR(1000),
  LIKES VARCHAR(1000),
  DISLIKES VARCHAR(1000),
  COMENTARIOS VARCHAR(1000),
  PUBLISHED VARCHAR(1000)
  PRIMARY KEY (ID_ESTADISTICA)
);

CREATE TABLE D_CANAL (
  ID_CANAL VARCHAR(1000),
  NOMBRE VARCHAR(50),
  PRIMARY KEY (ID_CANAL)
);

CREATE TABLE H_CANAL (
  H_ID_CANAL VARCHAR(1000),
  ID_ESTADISTICAS VARCHAR(1000),
  ID_VIDEOS VARCHAR(1000),
  PRIMARY KEY (H_ID_CANAL),
  FOREIGN KEY (H_ID_CANAL) REFERENCES D_CANAL(ID_CANAL),
  FOREIGN KEY (ID_VIDEOS) REFERENCES D_VIDEOS(ID_VIDEO),
  FOREIGN KEY (ID_ESTADISTICAS) REFERENCES D_ESTADISTICAS(ID_ESTADISTICA)
);



