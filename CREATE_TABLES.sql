CREATE TABLE Pais (
nombre_ESP VARCHAR2(30) NOT NULL,
nombre_EN VARCHAR2(30) NOT NULL,
cod_area NUMBER(10) NOT NULL
)TABLESPACE repo_tablas;
CREATE UNIQUE INDEX ind_nombre_pais_PK ON Pais(nombre_ESP, nombre_EN) TABLESPACE repo_indices;
ALTER TABLE Pais ADD CONSTRAINT nombre_pais_PK (nombre_ESP, nombre_EN);

CREATE TABLE Ciudad (
nombre_ESP VARCHAR2(30) NOT NULL,
nombre_EN VARCHAR2(30) NOT NULL,
codigo_postal NUMBER(10) NOT NULL,
pais VARCHAR2(30) NOT NULL,
CONSTRAINT pais_ciudad_FK FOREIGN KEY (pais) REFERENCES Pais(nombre_ESP)
)TABLESPACE repo_tablas;
CREATE UNIQUE INDEX ind_nombre_ciudad_PK ON Ciudad(nombre_ESP, nombre_EN) TABLESPACE repo_indices;
ALTER TABLE Ciudad ADD CONSTRAINT nombre_ciudad_PK (nombre_ESP, nombre_EN);

CREATE TABLE Entrenador (
id_entrenador NUMBER(10) NOT NULL,
nombre VARCHAR2(25) NOT NULL,
apellido VARCHAR2(25) NOT NULL,
telefono NUMBER(20) NOT NULL,
email VARCHAR2(30) UNIQUE NOT NULL,
sexo VARCHAR2(1) NOT NULL,
fecha_nacimiento DATE NOT NULL,
ciudad_origen VARCHAR2(20) NOT NULL,
fecha_liberacion DATE NOT NULL,
CONSTRAINT ciudad_origen_FK FOREIGN KEY (ciudad_origen) REFERENCES Ciudad(nombre_ESP)
)TABLESPACE repo_tablas;
CREATE UNIQUE INDEX ind_entrenador_PK ON Entrenador(id_entrenador) TABLESPACE repo_indices;
CREATE INDEX ind_nombre_entrenador ON Entrenador(nombre) TABLESPACE repo_indices;
ALTER TABLE Entrenador ADD CONSTRAINT id_entrenador_PK PRIMARY KEY (id_entrenador);


