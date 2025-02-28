DROP TABLE Pais

CREATE TABLE Pais (
    nombre_ESP VARCHAR2(30) NOT NULL,
    nombre_EN VARCHAR2(30) NOT NULL,
    cod_area NUMBER(10) NOT NULL
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_nombre_pais_PK ON Pais(nombre_ESP) TABLESPACE repo_indices;
ALTER TABLE Pais ADD CONSTRAINT nombre_pais_PK PRIMARY KEY (nombre_ESP);

DROP TABLE Ciudad

CREATE TABLE Ciudad (
    nombre_ESP VARCHAR2(30) NOT NULL,
    nombre_EN VARCHAR2(30) NOT NULL,
    codigo_postal NUMBER(10) NOT NULL,
    pais VARCHAR2(30) NOT NULL,
    CONSTRAINT pais_ciudad_FK FOREIGN KEY (pais) REFERENCES Pais(nombre_ESP)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_nombre_ciudad_PK ON Ciudad(nombre_ESP) TABLESPACE repo_indices;
ALTER TABLE Ciudad ADD CONSTRAINT nombre_ciudad_PK PRIMARY KEY (nombre_ESP);

DROP TABLE Entrenador

CREATE TABLE Entrenador (
    id_entrenador NUMBER(10) NOT NULL,
    nombre VARCHAR2(25) NOT NULL,
    apellido VARCHAR2(25) NOT NULL,
    telefono NUMBER(20) NOT NULL,
    email VARCHAR2(30) UNIQUE NOT NULL,
    sexo VARCHAR2(1) NOT NULL CHECK (sexo IN ('M', 'F')),
    fecha_nacimiento DATE NOT NULL CHECK ((2025 - EXTRACT(YEAR FROM (fecha_nacimiento))) >= 18),
    ciudad_origen VARCHAR2(30) NOT NULL,
    fecha_liberacion DATE NOT NULL,
    CONSTRAINT ciudad_origen_FK FOREIGN KEY (ciudad_origen) REFERENCES Ciudad(nombre_ESP)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_entrenador_PK ON Entrenador(id_entrenador) TABLESPACE repo_indices;
CREATE INDEX ind_nombre_entrenador ON Entrenador(nombre) TABLESPACE repo_indices;
ALTER TABLE Entrenador ADD CONSTRAINT id_entrenador_PK PRIMARY KEY (id_entrenador);

INSERT INTO ENTRENADOR VALUES (100, 'Luis', 'Garcia', 04129916677, 'luis@ejemplo.com', 'M', '24/01/15', 'Coro', '05/01/22'); -- Dara Error por la edad del entrenador

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
    id_entrenador NUMBER(10) NOT NULL
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_nombre_digimon ON Digimon (nombre) TABLESPACE repo_indices;
ALTER TABLE Digimon ADD CONSTRAINT nombre_digimon_pk PRIMARY KEY (nombre);

CREATE TABLE Naturaleza(
    nombre VARCHAR(30),
    descripcion VARCHAR2(50),
    beneficio VARCHAR2(20),
    desventaja VARCHAR2(20)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_nombre_naturaleza ON Naturaleza (nombre) TABLESPACE repo_indices;
ALTER TABLE Naturaleza ADD CONSTRAINT nombre_naturaleza_pk PRIMARY KEY (nombre);

CREATE TABLE Habilidad_Esp(
    nombre VARCHAR2(20),
    descripcion VARCHAR2(50)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_nombre_habilidadEsp ON Habilidad_Esp (nombre) TABLESPACE repo_indices;
ALTER TABLE Habilidad_Esp ADD CONSTRAINT nombre_habilidadEsp_pk PRIMARY KEY (nombre);

CREATE TABLE Tipo_Digimon(
    nombre VARCHAR2(20),
    descripcion VARCHAR2(50)
)TABLESPACE repo_tablas;

CREATE UNIQUE INDEX ind_nombre_tipoDigimon ON Tipo_Digimon (nombre) TABLESPACE repo_indices;
ALTER TABLE Tipo_Digimon ADD CONSTRAINT nombre_tipoDigimon_pk PRIMARY KEY (nombre);

CREATE TABLE Digievoluciona(
    digimon_BASE VARCHAR2(30),
    digimon_EVO VARCHAR2(30),
    tipo_Evo VARCHAR2(30) UNIQUE,
    CONSTRAINT digievoluciona_base_fk FOREIGN KEY (digimon_BASE) REFERENCES Digimon (nombre),
    CONSTRAINT digievoluciona_evo_fk FOREIGN KEY (digimon_EVO) REFERENCES Digimon (nombre)
)TABLESPACE repo_tablas;

ALTER TABLE Digievoluciona ADD CONSTRAINT digievoluciona_pk PRIMARY KEY (digimon_BASE,digimon_EVO);

















/*********************************************************** TRIGGERS ***********************************************************/


CREATE OR REPLACE TRIGGER tr_max_digimon_entrenador
BEFORE INSERT ON Digimon
FOR EACH ROW
DECLARE
    Cantidad_Entrenador NUMBER;
BEGIN
    SELECT COUNT(*) INTO Cantidad_Entrenador FROM Digimon WHERE id_entrenador = :NEW.id_entrenador;

    IF Cantidad_Entrenador >= 6 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Un entrenador solo puede tener un maximo');
    END IF;
END;
/
