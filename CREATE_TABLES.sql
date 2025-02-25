


































































































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