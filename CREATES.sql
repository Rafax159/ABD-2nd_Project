/**************** CREACION DEL REPOSITORIO ***************/

CREATE TABLESPACE repo_tablas DATAFILE 'df_tablas_digi.DFB' SIZE 500M;
CREATE TABLESPACE repo_indices DATAFILE 'df_indices_digi.DFB' SIZE 500M;
CREATE TABLESPACE usuarios_esquema DATAFILE 'df_usuarios_esq.DFB' SIZE 500M;

--DROP TABLESPACE repo_tablas INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE repo_indices INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE usuarios_esquema INCLUDING CONTENTS AND DATAFILES;

/*********************** USUARIOS Y ROLES ******************************/

ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

CREATE USER Revan IDENTIFIED BY 12345 DEFAULT TABLESPACE usuarios_esquema;
CREATE USER Nihilus IDENTIFIED BY 12345 DEFAULT TABLESPACE usuarios_esquema;
CREATE USER Vader IDENTIFIED BY 12345 DEFAULT TABLESPACE usuarios_esquema;

CREATE ROLE Registrador;
CREATE ROLE Moderador;
CREATE ROLE Administrador;

GRANT INSERT, UPDATE ON Entrenador TO Registrador;
GRANT INSERT, UPDATE ON Digimon TO Registrador;

GRANT SELECT ON Pais TO Moderador;
GRANT SELECT ON Ciudad TO Moderador;
GRANT SELECT ON Entranador TO Moderador;
GRANT SELECT ON Digimon TO Moderador;
GRANT SELECT ON Naturaleza TO Moderador;
GRANT SELECT ON Habilidad_Esp TO Moderador;
GRANT SELECT ON Tipo_Digimon TO Moderador;
GRANT SELECT ON Digievoluciona TO Moderador;
GRANT SELECT ON Entrena TO Moderador;

GRANT INSERT, UPDATE, DELETE, SELECT ON Pais TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Ciudad TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Entrenador TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Digimon TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Naturaleza TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Habilidad_Esp TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Tipo_Digimon TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Digievoluciona TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Entrena TO Administrador;

GRANT CREATE SESSION, Registrador TO Revan;
GRANT CREATE SESSION, Moderador TO Nihilus;
GRANT CREATE SESSION, Administrador TO Vader;


CONNECT SUPER_USUARIO/12345;

INSERT INTO SUPER_USUARIO.ENTRENADOR VALUES (002, 'Rafael', 'Contreras', 4242550835, 'rafael@ejemplo.com', 'M', '01/08/02', 'Caracas');

/**************** CREACION DEL ESQUEMA ******************/

CREATE TABLE Pais (
    nombre_ESP VARCHAR2(30) NOT NULL,
    nombre_EN VARCHAR2(30) NOT NULL,
    cod_area VARCHAR2(10) NOT NULL
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_nombre_pais_indx ON Pais(nombre_ESP) TABLESPACE repo_indices;
ALTER TABLE Pais ADD CONSTRAINT nombre_pais_PK PRIMARY KEY (nombre_ESP);


CREATE TABLE Ciudad (
    nombre_ESP VARCHAR2(30) NOT NULL,
    nombre_EN VARCHAR2(30) NOT NULL,
    codigo_postal VARCHAR2(10) NOT NULL,
    pais VARCHAR2(30) NOT NULL,
    CONSTRAINT pais_ciudad_FK FOREIGN KEY (pais) REFERENCES Pais(nombre_ESP)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_nombre_ciudad_indx ON Ciudad(nombre_ESP) TABLESPACE repo_indices;
ALTER TABLE Ciudad ADD CONSTRAINT nombre_ciudad_PK PRIMARY KEY (nombre_ESP);


CREATE TABLE Entrenador (
    id_entrenador NUMBER(10) NOT NULL,
    nombre VARCHAR2(25) NOT NULL,
    apellido VARCHAR2(25) NOT NULL,
    telefono NUMBER(20) NOT NULL,
    email VARCHAR2(30) UNIQUE NOT NULL,
    sexo VARCHAR2(1) NOT NULL CHECK (sexo IN ('M', 'F')),
    fecha_nacimiento DATE NOT NULL,
    ciudad_origen VARCHAR2(20) NOT NULL,
    CONSTRAINT ciudad_origen_FK FOREIGN KEY (ciudad_origen) REFERENCES Ciudad(nombre_ESP)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_entrenador_indx ON Entrenador(id_entrenador) TABLESPACE repo_indices;
CREATE INDEX ind_nombre_entrenador ON Entrenador(nombre) TABLESPACE repo_indices;
ALTER TABLE Entrenador ADD CONSTRAINT id_entrenador_PK PRIMARY KEY (id_entrenador);


CREATE TABLE Digimon(
    nombre VARCHAR2(30) NOT NULL,
    genero VARCHAR2(1) NOT NULL CHECK (genero='M' OR genero='F'),
    naturaleza VARCHAR2(20) NOT NULL,
    tipo VARCHAR2(20) NOT NULL CHECK (tipo IN ('Agua','Fuego','Viento','Naturaleza','Tierra','Luz','Oscuridad')),
    habilidad_especial VARCHAR2(20) NOT NULL,
    forma VARCHAR2(20) NOT NULL CHECK (forma IN ('In Training','Rookie','Champion','Ultra','Mega','Brust','Armor','Matrix','Spirit')),
    velocidad NUMBER(4) NOT NULL CHECK (velocidad>=0 AND velocidad<=9999),
    puntos_vida NUMBER(4) NOT NULL CHECK (puntos_vida>=0 AND puntos_vida<=9999),
    defensa NUMBER(4) NOT NULL CHECK (defensa>=0 AND defensa<=9999),
    ataque NUMBER(4) NOT NULL CHECK (ataque>=0 AND ataque<=9999),
    ataque_especial NUMBER(4) NOT NULL CHECK (ataque_especial>=0 AND ataque_especial<=9999),
    defensa_especial NUMBER(4) NOT NULL CHECK (defensa_especial>=0 AND defensa_especial<=9999),
    CONSTRAINT Digimon_Naturaleza_fk FOREIGN KEY (naturaleza) REFERENCES Naturaleza(nombre),
    CONSTRAINT Digimon_tipo_fk FOREIGN KEY (tipo) REFERENCES Tipo_Digimon(nombre),
    CONSTRAINT Digimon_Habilidad_fk FOREIGN KEY (habilidad_especial) REFERENCES Habilidad_Esp(nombre)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX nombre_Digimon_indx ON Digimon (nombre) TABLESPACE repo_indices;
ALTER TABLE Digimon ADD CONSTRAINT nombre_digimon_pk PRIMARY KEY (nombre);


CREATE TABLE Naturaleza(
    nombre VARCHAR(30),
    descripcion VARCHAR2(50),
    beneficio VARCHAR2(20),
    desventaja VARCHAR2(20)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX nombre_Naturaleza_indx ON Naturaleza (nombre) TABLESPACE repo_indices;
ALTER TABLE Naturaleza ADD CONSTRAINT nombre_naturaleza_pk PRIMARY KEY (nombre);


CREATE TABLE Habilidad_Esp(
    nombre VARCHAR2(20),
    descripcion VARCHAR2(50)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX nombre_HabilidadEsp_indx ON Habilidad_Esp (nombre) TABLESPACE repo_indices;
ALTER TABLE Habilidad_Esp ADD CONSTRAINT nombre_habilidadEsp_pk PRIMARY KEY (nombre);


CREATE TABLE Tipo_Digimon(
    nombre VARCHAR2(20),
    descripcion VARCHAR2(50)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX nombre_TipoDigimon_indx ON Tipo_Digimon (nombre) TABLESPACE repo_indices;
ALTER TABLE Tipo_Digimon ADD CONSTRAINT nombre_tipoDigimon_pk PRIMARY KEY (nombre);


CREATE TABLE Digievoluciona(
    digimon_BASE VARCHAR2(30),
    digimon_EVO VARCHAR2(30),
    tipo_Evo VARCHAR2(30) UNIQUE,
    CONSTRAINT digievoluciona_base_fk FOREIGN KEY (digimon_BASE) REFERENCES Digimon (nombre),
    CONSTRAINT digievoluciona_evo_fk FOREIGN KEY (digimon_EVO) REFERENCES Digimon (nombre)
)TABLESPACE repo_tablas;

ALTER TABLE Digievoluciona ADD CONSTRAINT digievoluciona_pk PRIMARY KEY (digimon_BASE,digimon_EVO);


--TRIGGER--


/* CREATE OR REPLACE TRIGGER tr_max_digimon_entrenador
BEFORE INSERT ON Digimon
FOR EACH ROW
DECLARE
    Cantidad_Entrenador NUMBER;
BEGIN
    SELECT COUNT(*) INTO Cantidad_Entrenador FROM Digimon WHERE id_entrenador = :NEW.id_entrenador;

    IF Cantidad_Entrenador >= 6 THEN
        RAISE_APPLICATION_ERROR(-20001,'Un entrenador solo puede tener un maximo de hasta 6 Digimons');
    END IF;
END;
/ */

CREATE OR REPLACE TRIGGER tr_entrenador_edad
BEFORE INSERT ON Entrenador
FOR EACH ROW
BEGIN
    IF (EXTRACT(YEAR FROM (SYSDATE)) - EXTRACT(YEAR FROM (:NEW.fecha_nacimiento)) < 18) THEN
        RAISE_APPLICATION_ERROR(-20001,'Los Entrenadores deben ser mayor de edad...');
    END IF;
END;
/

--DROP TRIGGER tr_entrenador_edad;
--DROP TRIGGER tr_max_digimon_entrenador;

/* DROP TABLE Ciudad;
DROP TABLE Pais;
DROP TABLE Naturaleza;
DROP TABLE Entrenador;
DROP TABLE Digimon;
DROP TABLE Habilidad_Esp;
DROP TABLE Tipo_Digimon;
DROP TABLE Digievoluciona; 
*/

