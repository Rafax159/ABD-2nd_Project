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
CREATE USER Maul IDENTIFIED BY 12345 DEFAULT TABLESPACE usuarios_esquema; -- > Este usuario es donde se apuntara todo el esquema de la BD

ALTER USER Maul QUOTA UNLIMITED ON repo_tablas;
ALTER USER Maul QUOTA UNLIMITED ON repo_indices;
ALTER USER Maul QUOTA UNLIMITED ON usuarios_esquema;

CREATE ROLE Registrador;
CREATE ROLE Moderador;
CREATE ROLE Administrador;

GRANT INSERT, UPDATE, SELECT ON Maul.Entrenador TO Registrador; -- > Para hacer los UPDATE con WHERE
GRANT INSERT, UPDATE, SELECT ON Maul.Digimon TO Registrador;

GRANT SELECT ON Maul.Pais TO Moderador;
GRANT SELECT ON Maul.Ciudad TO Moderador;
GRANT SELECT ON Maul.Entrenador TO Moderador;
GRANT SELECT ON Maul.Digimon TO Moderador;
GRANT SELECT ON Maul.Naturaleza TO Moderador;
GRANT SELECT ON Maul.Habilidad_Esp TO Moderador;
GRANT SELECT ON Maul.Tipo_Digimon TO Moderador;
GRANT SELECT ON Maul.Digievoluciona TO Moderador;
GRANT SELECT ON Maul.Entrena TO Moderador;

GRANT INSERT, UPDATE, DELETE, SELECT ON Maul.Pais TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Maul.Ciudad TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Maul.Entrenador TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Maul.Digimon TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Maul.Naturaleza TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Maul.Habilidad_Esp TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Maul.Tipo_Digimon TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Maul.Digievoluciona TO Administrador;
GRANT INSERT, UPDATE, DELETE, SELECT ON Maul.Entrena TO Administrador;

GRANT CREATE SESSION, Registrador TO Revan;
GRANT CREATE SESSION, Moderador TO Nihilus;
GRANT CREATE SESSION, Administrador TO Vader;

--DROP USER Revan;
--DROP USER Nihilus;
--DROP USER Vader;
--DROP USER Maul;

--DROP ROLE Registrador;
--DROP ROLE Moderador;
--DROP ROLE Administrador;

/**************** CREACION DEL ESQUEMA ******************/

CREATE TABLE Maul.Pais (
    nombre_ESP VARCHAR2(30) NOT NULL,
    nombre_EN VARCHAR2(30) NOT NULL,
    cod_area VARCHAR2(10) NOT NULL
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX Maul.ind_nombre_pais_indx ON Maul.Pais(nombre_ESP) TABLESPACE repo_indices;
ALTER TABLE Maul.Pais ADD CONSTRAINT nombre_pais_PK PRIMARY KEY (nombre_ESP);


CREATE TABLE Maul.Ciudad (
    nombre_ESP VARCHAR2(30) NOT NULL,
    nombre_EN VARCHAR2(30) NOT NULL,
    codigo_postal VARCHAR2(10) NOT NULL,
    pais VARCHAR2(30) NOT NULL,
    CONSTRAINT pais_ciudad_FK FOREIGN KEY (pais) REFERENCES Maul.Pais(nombre_ESP)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX Maul.ind_nombre_ciudad_indx ON Maul.Ciudad(nombre_ESP) TABLESPACE repo_indices;
ALTER TABLE Maul.Ciudad ADD CONSTRAINT nombre_ciudad_PK PRIMARY KEY (nombre_ESP);


CREATE TABLE Maul.Entrenador (
    id_entrenador NUMBER(10) NOT NULL,
    nombre VARCHAR2(25) NOT NULL,
    apellido VARCHAR2(25) NOT NULL,
    telefono NUMBER(20) NOT NULL,
    email VARCHAR2(30) UNIQUE NOT NULL,
    sexo VARCHAR2(1) NOT NULL CHECK (sexo IN ('M', 'F')),
    fecha_nacimiento DATE NOT NULL,
    ciudad_origen VARCHAR2(20) NOT NULL,
    CONSTRAINT ciudad_origen_FK FOREIGN KEY (ciudad_origen) REFERENCES Maul.Ciudad(nombre_ESP)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX Maul.ind_entrenador_indx ON Maul.Entrenador(id_entrenador) TABLESPACE repo_indices;
CREATE INDEX Maul.ind_nombre_entrenador ON Maul.Entrenador(nombre) TABLESPACE repo_indices;
ALTER TABLE Maul.Entrenador ADD CONSTRAINT id_entrenador_PK PRIMARY KEY (id_entrenador);

CREATE TABLE Maul.Naturaleza(
    nombre VARCHAR(30) NOT NULL CHECK (nombre IN ('Vacuna', 'Dato', 'Virus', 'Libre', 'Variable', 'Desconocido')),
    descripcion VARCHAR2(50),
    beneficio VARCHAR2(30),
    desventaja VARCHAR2(30)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX Maul.nombre_Naturaleza_indx ON Maul.Naturaleza (nombre) TABLESPACE repo_indices;
ALTER TABLE Maul.Naturaleza ADD CONSTRAINT nombre_naturaleza_pk PRIMARY KEY (nombre);


CREATE TABLE Maul.Habilidad_Esp(
    nombre VARCHAR2(20),
    descripcion VARCHAR2(50)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX Maul.nombre_HabilidadEsp_indx ON Maul.Habilidad_Esp (nombre) TABLESPACE repo_indices;
ALTER TABLE Maul.Habilidad_Esp ADD CONSTRAINT nombre_habilidadEsp_pk PRIMARY KEY (nombre);

CREATE TABLE Maul.Tipo_Digimon(
    nombre VARCHAR2(20),
    descripcion VARCHAR2(50)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX Maul.nombre_TipoDigimon_indx ON Maul.Tipo_Digimon (nombre) TABLESPACE repo_indices;
ALTER TABLE Maul.Tipo_Digimon ADD CONSTRAINT nombre_tipoDigimon_pk PRIMARY KEY (nombre);

CREATE TABLE Maul.Digimon(
    nombre VARCHAR2(30) NOT NULL,
    genero VARCHAR2(1) NOT NULL CHECK (genero='M' OR genero='F'),
    naturaleza VARCHAR2(20) NOT NULL CHECK (naturaleza IN ('Vacuna', 'Dato', 'Virus', 'Libre', 'Variable', 'Desconocido')),
    tipo VARCHAR2(20) NOT NULL CHECK (tipo IN ('Agua','Fuego','Viento','Naturaleza','Tierra','Luz','Oscuridad')),
    habilidad_especial VARCHAR2(20) NOT NULL,
    forma VARCHAR2(20) NOT NULL CHECK (forma IN ('In Training','Rookie','Champion','Ultra','Mega','Brust','Armor','Matrix','Spirit')),
    velocidad NUMBER(4) NOT NULL CHECK (velocidad>=0 AND velocidad<=9999),
    puntos_vida NUMBER(4) NOT NULL CHECK (puntos_vida>=0 AND puntos_vida<=9999),
    defensa NUMBER(4) NOT NULL CHECK (defensa>=0 AND defensa<=9999),
    ataque NUMBER(4) NOT NULL CHECK (ataque>=0 AND ataque<=9999),
    ataque_especial NUMBER(4) NOT NULL CHECK (ataque_especial>=0 AND ataque_especial<=9999),
    defensa_especial NUMBER(4) NOT NULL CHECK (defensa_especial>=0 AND defensa_especial<=9999),
    CONSTRAINT Digimon_Naturaleza_fk FOREIGN KEY (naturaleza) REFERENCES Maul.Naturaleza(nombre),
    CONSTRAINT Digimon_tipo_fk FOREIGN KEY (tipo) REFERENCES Maul.Tipo_Digimon(nombre),
    CONSTRAINT Digimon_Habilidad_fk FOREIGN KEY (habilidad_especial) REFERENCES Maul.Habilidad_Esp(nombre)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX Maul.nombre_Digimon_indx ON Maul.Digimon (nombre) TABLESPACE repo_indices;
ALTER TABLE Maul.Digimon ADD CONSTRAINT nombre_digimon_pk PRIMARY KEY (nombre);

CREATE TABLE Maul.Digievoluciona(
    digimon_BASE VARCHAR2(30),
    digimon_EVO VARCHAR2(30),
    tipo_Evo VARCHAR2(30),
    CONSTRAINT digievoluciona_base_fk FOREIGN KEY (digimon_BASE) REFERENCES Maul.Digimon (nombre),
    CONSTRAINT digievoluciona_evo_fk FOREIGN KEY (digimon_EVO) REFERENCES Maul.Digimon (nombre),
    CONSTRAINT unq_evo_digimon UNIQUE (digimon_BASE, tipo_Evo)
)TABLESPACE repo_tablas;

ALTER TABLE Maul.Digievoluciona ADD CONSTRAINT digievoluciona_pk PRIMARY KEY (digimon_BASE,digimon_EVO);

CREATE TABLE Maul.Entrena(
    id_entrenador NUMBER(10),
    nombre_digimon VARCHAR2(30),
    fecha_liberacion DATE,
    CONSTRAINT entrena_idEnt_fk FOREIGN KEY (id_entrenador) REFERENCES Maul.Entrenador (id_entrenador),
    CONSTRAINT entrena_nombreDigi_fk FOREIGN KEY (nombre_digimon) REFERENCES Maul.Digimon (nombre)
)TABLESPACE repo_tablas;

ALTER TABLE Maul.Entrena ADD CONSTRAINT entrena_pk PRIMARY KEY (id_entrenador,nombre_digimon);

--TRIGGER--

-- Maximo de Digimon

CREATE OR REPLACE TRIGGER trg_max_digimones
BEFORE INSERT OR UPDATE ON Maul.Entrena
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Maul.Entrena
    WHERE id_entrenador = :NEW.id_entrenador
          AND fecha_liberacion IS NULL;

    IF :NEW.fecha_liberacion IS NULL THEN
        IF v_count > 6 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Un entrenador no puede tener más de 6 digimones activos.');
        END IF;
    END IF;
END;
/

-- Validacion de Edad

CREATE OR REPLACE TRIGGER tr_entrenador_edad
BEFORE INSERT ON Maul.Entrenador
FOR EACH ROW
BEGIN
    IF (EXTRACT(YEAR FROM (SYSDATE)) - EXTRACT(YEAR FROM (:NEW.fecha_nacimiento)) < 18) THEN
        RAISE_APPLICATION_ERROR(-20001,'Los Entrenadores deben ser mayor de edad...');
    END IF;
END;
/

-- Validacion de entrena y liberarion

CREATE OR REPLACE TRIGGER trg_verifica_entrena
BEFORE INSERT ON Entrena
FOR EACH ROW
DECLARE
    v_count NUMBER;
    v_fecha DATE;
BEGIN
    -- Verificar si ya existe la clave primaria en la tabla
    SELECT COUNT(*), MAX(fecha_liberacion)
    INTO v_count, v_fecha
    FROM Entrena
    WHERE id_entrenador = :NEW.id_entrenador
    AND nombre_digimon = :NEW.nombre_digimon;

    -- Si existe un registro con la misma PK y la fecha_liberacion está en NULL
    IF v_count > 0 AND v_fecha IS NULL AND :NEW.fecha_liberacion IS NOT NULL THEN
        -- Eliminar el registro anterior
        DELETE FROM Entrena
        WHERE id_entrenador = :NEW.id_entrenador
        AND nombre_digimon = :NEW.nombre_digimon;

        -- Insertar el nuevo registro (se permite la inserción)
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

