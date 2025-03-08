-- Insertar datos en la tabla Digimon
INSERT INTO Digimon VALUES 
    ('Gabumon', 'M', 'Viento', 'Fuego', 'Llamas Azules', 'Rookie', 450, 1800, 350, 750, 550, 450, 2);

INSERT INTO Digimon VALUES 
    ('Patamon', 'M', 'Luz', 'Viento', 'Aire Divino', 'Rookie', 480, 1600, 400, 700, 500, 500, 3);

INSERT INTO Digimon VALUES 
    ('Gatomon', 'F', 'Luz', 'Luz', 'Garra Relámpago', 'Champion', 600, 2500, 500, 1000, 800, 700, 4);

INSERT INTO Digimon VALUES 
    ('Tentomon', 'M', 'Tierra', 'Tierra', 'Electroshock', 'Rookie', 420, 1700, 370, 720, 520, 470, 5);



-- Insertar datos en la tabla Naturaleza
INSERT INTO Naturaleza VALUES 
    ('Agua', 'Buena defensa pero débil contra Electricidad', 'Defensa alta', 'Débil contra Electricidad');

INSERT INTO Naturaleza VALUES 
    ('Viento', 'Gran velocidad pero baja defensa', 'Velocidad alta', 'Baja defensa');

INSERT INTO Naturaleza VALUES 
    ('Tierra', 'Equilibrado con buena resistencia', 'Resistencia alta', 'Lento');

INSERT INTO Naturaleza VALUES 
    ('Luz', 'Poderosos ataques especiales pero baja resistencia', 'Ataques especiales fuertes', 'Baja resistencia');


INSERT INTO Habilidad_Esp VALUES 
    ('Llamas Azules', 'Ataque de fuego con energía azul');

INSERT INTO Habilidad_Esp VALUES 
    ('Aire Divino', 'Ataque de luz purificadora');

INSERT INTO Habilidad_Esp VALUES 
    ('Garra Relámpago', 'Ataque rápido y eléctrico');

INSERT INTO Habilidad_Esp VALUES 
    ('Electroshock', 'Descarga eléctrica contra el enemigo');



-- Insertar datos en la tabla Tipo_Digimon
INSERT INTO Tipo_Digimon VALUES 
    ('Agua', 'Digimon con habilidades basadas en agua');

INSERT INTO Tipo_Digimon VALUES 
    ('Viento', 'Digimon ágiles y rápidos');

INSERT INTO Tipo_Digimon VALUES 
    ('Tierra', 'Digimon con gran resistencia');

INSERT INTO Tipo_Digimon VALUES 
    ('Luz', 'Digimon con habilidades sagradas');



-- Insertar datos en la tabla Digievoluciona
INSERT INTO Digievoluciona VALUES 
    ('Agumon', 'Greymon', 'Evolución Normal');

INSERT INTO Digievoluciona VALUES 
    ('Gabumon', 'Garurumon', 'Evolución Normal');

INSERT INTO Digievoluciona VALUES 
    ('Patamon', 'Angemon', 'Evolución Normal');

INSERT INTO Digievoluciona VALUES 
    ('Gatomon', 'Angewomon', 'Evolución Normal');

INSERT INTO Digievoluciona VALUES 
    ('Tentomon', 'Kabuterimon', 'Evolución Normal');

INSERT INTO Digievoluciona VALUES 
    ('Greymon', 'MetalGreymon', 'Evolución Perfecta');

INSERT INTO Digievoluciona VALUES 
    ('Garurumon', 'WereGarurumon', 'Evolución Perfecta');

INSERT INTO Digievoluciona VALUES 
    ('Angemon', 'MagnaAngemon', 'Evolución Perfecta');

INSERT INTO Digievoluciona VALUES 
    ('Angewomon', 'Ophanimon', 'Evolución Mega');

INSERT INTO Digievoluciona VALUES 
    ('MetalGreymon', 'WarGreymon', 'Evolución Mega');

INSERT INTO Digievoluciona VALUES 
    ('WereGarurumon', 'MetalGarurumon', 'Evolución Mega');

INSERT INTO Digievoluciona VALUES 
    ('Kabuterimon', 'MegaKabuterimon', 'Evolución Perfecta');

INSERT INTO Entrenador (id_entrenador, nombre, apellido, telefono, email, sexo, fecha_nacimiento, ciudad_origen)
VALUES (1, 'Carlos', 'Ramírez', 5551234567, 'carlos.ramirez@mail.com', 'M', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'Madrid');

INSERT INTO Entrenador (id_entrenador, nombre, apellido, telefono, email, sexo, fecha_nacimiento, ciudad_origen)
VALUES (2, 'Laura', 'Fernández', 5559876543, 'laura.fernandez@mail.com', 'F', TO_DATE('1990-09-22', 'YYYY-MM-DD'), 'Barcelona');

INSERT INTO Entrenador (id_entrenador, nombre, apellido, telefono, email, sexo, fecha_nacimiento, ciudad_origen)
VALUES (3, 'Miguel', 'López', 5557654321, 'miguel.lopez@mail.com', 'M', TO_DATE('1982-03-10', 'YYYY-MM-DD'), 'Valencia');

INSERT INTO Entrenador (id_entrenador, nombre, apellido, telefono, email, sexo, fecha_nacimiento, ciudad_origen)
VALUES (4, 'Ana', 'García', 5553456789, 'ana.garcia@mail.com', 'F', TO_DATE('2014-12-05', 'YYYY-MM-DD'), 'Sevilla');

INSERT INTO Entrenador (id_entrenador, nombre, apellido, telefono, email, sexo, fecha_nacimiento, ciudad_origen)
VALUES (5, 'David', 'Martínez', 5552345678, 'david.martinez@mail.com', 'M', TO_DATE('1988-07-19', 'YYYY-MM-DD'), 'Bilbao');





CREATE OR REPLACE TRIGGER tr_entrenador_edad
BEFORE INSERT ON Entrenador
FOR EACH ROW
BEGIN
    IF (EXTRACT(YEAR FROM (SYSDATE)) - EXTRACT(YEAR FROM (:NEW.fecha_nacimiento)) < 18) 
    THEN
        RAISE_APPLICATION_ERROR(-20001,'Los Entrenadores deben ser mayor de edad...');
    END IF;
END;
/

SELECT *
FROM Entrenador;

SELECT SYSDATE
FROM DUAL;


INSERT INTO Pais VALUES ('Venezuela', 'Venezuela', '+58');
INSERT INTO Ciudad VALUES ('Coro', 'Coro', '4101', 'Venezuela');
INSERT INTO Entrenador VALUES (001, 'Luis', 'Garcia', 4129916677, 'luis@ejemplo.com', 'M', '24/01/00', 'Coro');