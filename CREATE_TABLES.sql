/**************** CREACION DEL REPOSITORIO ***************/

CREATE TABLESPACE repo_tablas DATAFILE 'df_tablas_digi.DFB' SIZE 500M;
CREATE TABLESPACE repo_indices DATAFILE 'df_indices_digi.DFB' SIZE 500M;
CREATE TABLESPACE usuarios_esquema DATAFILE 'df_usuarios_esq.DFB' SIZE 500M;


CREATE USER usuarioChimbo IDENTIFIED BY 789;


DROP TABLESPACE repo_tablas INCLUDING CONTENTS AND DATAFILES;
DROP TABLESPACE repo_indices INCLUDING CONTENTS AND DATAFILES;
DROP TABLESPACE usuarios_esquema INCLUDING CONTENTS AND DATAFILES;

/*********************** USUARIOS Y ROLES ******************************/

ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

CREATE USER Revan IDENTIFIED BY 12345 DEFAULT TABLESPACE usuarios_esquema;
CREATE USER Nihilus IDENTIFIED BY 12345 DEFAULT TABLESPACE usuarios_esquema;
CREATE USER Vader IDENTIFIED BY 12345 DEFAULT TABLESPACE usuarios_esquema;

CREATE ROLE Registrador;
CREATE ROLE Moderador;
CREATE ROLE Administrador;

GRANT INSERT, UPDATE, SELECT ON Entrenador TO Registrador;
GRANT INSERT, UPDATE, SELECT ON Digimon TO Registrador;

GRANT SELECT ON Pais TO Moderador;
GRANT SELECT ON Ciudad TO Moderador;
GRANT SELECT ON Entrenador TO Moderador;
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

--DROP ROLE Registrador;
--DROP ROLE Moderador;
--DROP ROLE Administrador;

--DROP USER Revan;
--DROP USER Nihilus;
--DROP USER Vader;
--DROP USER usuarioChimbo;

--CONNECT SUPER_USUARIO/12345;

/**************** CREACION DEL ESQUEMA ******************/

CREATE TABLE usuarioChimbo.Pais (
    nombre_ESP VARCHAR2(30) NOT NULL,
    nombre_EN VARCHAR2(30) NOT NULL,
    cod_area VARCHAR2(10) NOT NULL
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX usuarioChimbo.ind_nombre_pais_indx ON usuarioChimbo.Pais(nombre_ESP) TABLESPACE repo_indices;
ALTER TABLE usuarioChimbo.Pais ADD CONSTRAINT nombre_pais_PK PRIMARY KEY (nombre_ESP);


CREATE TABLE usuarioChimbo.Ciudad (
    nombre_ESP VARCHAR2(30) NOT NULL,
    nombre_EN VARCHAR2(30) NOT NULL,
    codigo_postal VARCHAR2(10) NOT NULL,
    pais VARCHAR2(30) NOT NULL,
    CONSTRAINT pais_ciudad_FK FOREIGN KEY (pais) REFERENCES usuarioChimbo.Pais(nombre_ESP)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX usuarioChimbo.ind_nombre_ciudad_indx ON usuarioChimbo.Ciudad(nombre_ESP) TABLESPACE repo_indices;
ALTER TABLE usuarioChimbo.Ciudad ADD CONSTRAINT nombre_ciudad_PK PRIMARY KEY (nombre_ESP);


CREATE TABLE usuarioChimbo.Entrenador (
    id_entrenador NUMBER(10) NOT NULL,
    nombre VARCHAR2(25) NOT NULL,
    apellido VARCHAR2(25) NOT NULL,
    telefono NUMBER(20) NOT NULL,
    email VARCHAR2(30) UNIQUE NOT NULL,
    sexo VARCHAR2(1) NOT NULL CHECK (sexo IN ('M', 'F')),
    fecha_nacimiento DATE NOT NULL,
    ciudad_origen VARCHAR2(20) NOT NULL,
    CONSTRAINT ciudad_origen_FK FOREIGN KEY (ciudad_origen) REFERENCES usuarioChimbo.Ciudad(nombre_ESP)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX usuarioChimbo.ind_entrenador_indx ON usuarioChimbo.Entrenador(id_entrenador) TABLESPACE repo_indices;
CREATE INDEX usuarioChimbo.ind_nombre_entrenador ON usuarioChimbo.Entrenador(nombre) TABLESPACE repo_indices;
ALTER TABLE usuarioChimbo.Entrenador ADD CONSTRAINT id_entrenador_PK PRIMARY KEY (id_entrenador);

CREATE TABLE usuarioChimbo.Naturaleza(
    nombre VARCHAR(30) NOT NULL CHECK (nombre IN ('Vacuna','Dato','Virus','Libre','Variable','Desconocido')),
    descripcion VARCHAR2(50),
    beneficio VARCHAR2(30),
    desventaja VARCHAR2(30)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX usuarioChimbo.nombre_Naturaleza_indx ON usuarioChimbo.Naturaleza (nombre) TABLESPACE repo_indices;
ALTER TABLE usuarioChimbo.Naturaleza ADD CONSTRAINT nombre_naturaleza_pk PRIMARY KEY (nombre);


CREATE TABLE usuarioChimbo.Habilidad_Esp(
    nombre VARCHAR2(20),
    descripcion VARCHAR2(50)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX usuarioChimbo.nombre_HabilidadEsp_indx ON usuarioChimbo.Habilidad_Esp (nombre) TABLESPACE repo_indices;
ALTER TABLE usuarioChimbo.Habilidad_Esp ADD CONSTRAINT nombre_habilidadEsp_pk PRIMARY KEY (nombre);


CREATE TABLE usuarioChimbo.Tipo_Digimon(
    nombre VARCHAR2(20),
    descripcion VARCHAR2(50)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX usuarioChimbo.nombre_TipoDigimon_indx ON usuarioChimbo.Tipo_Digimon (nombre) TABLESPACE repo_indices;
ALTER TABLE usuarioChimbo.Tipo_Digimon ADD CONSTRAINT nombre_tipoDigimon_pk PRIMARY KEY (nombre);

CREATE TABLE usuarioChimbo.Digimon(
    nombre VARCHAR2(30) NOT NULL,
    genero VARCHAR2(1) NOT NULL CHECK (genero='M' OR genero='F'),
    naturaleza VARCHAR2(20) NOT NULL CHECK (naturaleza IN ('Vacuna','Dato','Virus','Libre','Variable','Desconocido')),
    tipo VARCHAR2(20) NOT NULL CHECK (tipo IN ('Agua','Fuego','Viento','Naturaleza','Tierra','Luz','Oscuridad')),
    habilidad_especial VARCHAR2(20) NOT NULL,
    forma VARCHAR2(20) NOT NULL CHECK (forma IN ('In Training','Rookie','Champion','Ultra','Mega','Brust','Armor','Matrix','Spirit')),
    velocidad NUMBER(4) NOT NULL CHECK (velocidad>=0 AND velocidad<=9999),
    puntos_vida NUMBER(4) NOT NULL CHECK (puntos_vida>=0 AND puntos_vida<=9999),
    defensa NUMBER(4) NOT NULL CHECK (defensa>=0 AND defensa<=9999),
    ataque NUMBER(4) NOT NULL CHECK (ataque>=0 AND ataque<=9999),
    ataque_especial NUMBER(4) NOT NULL CHECK (ataque_especial>=0 AND ataque_especial<=9999),
    defensa_especial NUMBER(4) NOT NULL CHECK (defensa_especial>=0 AND defensa_especial<=9999),
    CONSTRAINT Digimon_Naturaleza_fk FOREIGN KEY (naturaleza) REFERENCES usuarioChimbo.Naturaleza(nombre),
    CONSTRAINT Digimon_tipo_fk FOREIGN KEY (tipo) REFERENCES usuarioChimbo.Tipo_Digimon(nombre),
    CONSTRAINT Digimon_Habilidad_fk FOREIGN KEY (habilidad_especial) REFERENCES usuarioChimbo.Habilidad_Esp(nombre)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX usuarioChimbo.nombre_Digimon_indx ON usuarioChimbo.Digimon (nombre) TABLESPACE repo_indices;
ALTER TABLE usuarioChimbo.Digimon ADD CONSTRAINT nombre_digimon_pk PRIMARY KEY (nombre);


CREATE TABLE usuarioChimbo.Digievoluciona(
    digimon_BASE VARCHAR2(30),
    digimon_EVO VARCHAR2(30),
    tipo_Evo VARCHAR2(30) CHECK (tipo_Evo IN ('Entrenamiento','Digi-Egg','Emocional','Oscuridad')),
    CONSTRAINT digievoluciona_base_fk FOREIGN KEY (digimon_BASE) REFERENCES usuarioChimbo.Digimon (nombre),
    CONSTRAINT digievoluciona_evo_fk FOREIGN KEY (digimon_EVO) REFERENCES usuarioChimbo.Digimon (nombre),
    CONSTRAINT uni_digimonBase_type UNIQUE (digimon_BASE,tipo_Evo)
)TABLESPACE repo_tablas;

ALTER TABLE usuarioChimbo.Digievoluciona ADD CONSTRAINT digievoluciona_pk PRIMARY KEY (digimon_BASE,digimon_EVO);


CREATE TABLE usuarioChimbo.Entrena(
    id_entrenador NUMBER(10),
    nombre_digimon VARCHAR2(30),
    fecha_liberacion DATE,

    CONSTRAINT entrena_idEnt_fk FOREIGN KEY (id_entrenador) REFERENCES usuarioChimbo.Entrenador (id_entrenador),
    CONSTRAINT entrena_nombreDigi_fk FOREIGN KEY (nombre_digimon) REFERENCES usuarioChimbo.Digimon (nombre)
)TABLESPACE repo_tablas;

ALTER TABLE usuarioChimbo.Entrena ADD CONSTRAINT entrena_pk PRIMARY KEY (id_entrenador,nombre_digimon);


--TRIGGER--
CREATE OR REPLACE TRIGGER usuarioChimbo.trg_max_digimones
BEFORE INSERT OR UPDATE ON usuarioChimbo.Entrena
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Entrena
    WHERE id_entrenador = :NEW.id_entrenador
          AND fecha_liberacion IS NULL;

    IF :NEW.fecha_liberacion IS NULL THEN
        IF v_count >= 6 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Un entrenador no puede tener más de 6 digimones activos.');
        END IF;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER usuarioChimbo.tr_entrenador_edad
BEFORE INSERT ON usuarioChimbo.Entrenador
FOR EACH ROW
BEGIN
    IF (EXTRACT(YEAR FROM (SYSDATE)) - EXTRACT(YEAR FROM (:NEW.fecha_nacimiento)) < 18) THEN
        RAISE_APPLICATION_ERROR(-20001,'Los Entrenadores deben ser mayor de edad...');
    END IF;
END;
/

--DROP TRIGGER tr_entrenador_edad;
--DROP TRIGGER tr_max_digimones;

DROP TABLE usuarioChimbo.Pais;
DROP TABLE usuarioChimbo.Ciudad;
DROP TABLE usuarioChimbo.Entrenador;
DROP TABLE usuarioChimbo.Naturaleza;
DROP TABLE usuarioChimbo.Digimon;
DROP TABLE usuarioChimbo.Habilidad_Esp;
DROP TABLE usuarioChimbo.Tipo_Digimon;
DROP TABLE usuarioChimbo.Digievoluciona;
DROP TABLE usuarioChimbo.Entrena;