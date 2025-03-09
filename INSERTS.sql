INSERT ALL
    INTO Pais VALUES ('Venezuela', 'Venezuela', '+58')
    INTO Pais VALUES ('Colombia', 'Colombia', '+57')
    INTO Pais VALUES ('Argentina', 'Argentina', '+54')
    INTO Pais VALUES ('Italia', 'Italy', '+39')
    INTO Pais VALUES ('Alemania', 'Germany', '+49')
SELECT 1 FROM dual;

INSERT ALL
    INTO Ciudad VALUES ('Caracas', 'Caracas', '1060', 'Venezuela')
    INTO Ciudad VALUES ('Coro', 'Coro', '4101', 'Venezuela')
    INTO Ciudad VALUES ('Medellin', 'Medellin', '050005', 'Colombia')
    INTO Ciudad VALUES ('Cartagena', 'Cartagena', '13005', 'Colombia')
    INTO Ciudad VALUES ('Buenos Aires', 'Buenos Aires', 'B1043', 'Argentina')
    INTO Ciudad VALUES ('Mar de Plata', 'Mar de Plata', 'B1414', 'Argentina')
    INTO Ciudad VALUES ('Roma', 'Rome', '00127', 'Italia')
    INTO Ciudad VALUES ('Venecia', 'Venice', '30124', 'Italia')
    INTO Ciudad VALUES ('Berlin', 'Berlin', '10178', 'Alemania')
    INTO Ciudad VALUES ('Munich', 'Munich', '80336', 'Alemania')
SELECT 1 FROM dual;

INSERT ALL
    INTO Entrenador VALUES (001, 'Luis', 'Garcia', 4129916677, 'luis@ejemplo.com', 'M', '24/01/00', 'Coro')
    INTO Entrenador VALUES (002, 'Rafael', 'Contreras', 4242550835, 'rafael@ejemplo.com', 'M', '01/08/02', 'Caracas')
    INTO Entrenador VALUES (003, 'Marcel', 'Mendoza', 3001234567, 'marcel@ejemplo.com', 'M', '26/12/00', 'Medellin')
    INTO Entrenador VALUES (004, 'Julia', 'Gomez', 6012345678, 'julia@ejemplo.com', 'F', '12/02/05', 'Cartagena')
    INTO Entrenador VALUES (006, 'Facundo', 'Gimenez', 1112345678, 'facundo@ejemplo.com', 'M', '10/03/06', 'Buenos Aires')
    INTO Entrenador VALUES (007, 'Carmen', 'Ramos', 3511234567, 'carmen@ejemplo.com', 'F', '15/08/02', 'Mar de Plata')
    INTO Entrenador VALUES (008, 'Luca', 'Rossi', 3331234567, 'luca@ejemplo.com', 'M', '08/01/03', 'Roma')
    INTO Entrenador VALUES (009, 'Sofia', 'Bianchi', 0212345678, 'sofia@ejemplo.com', 'F', '10/01/00', 'Venecia')
    INTO Entrenador VALUES (010, 'Hans', 'Müller', 1711234567, 'hans@ejemplo.com', 'M', '24/01/00', 'Berlin')
    INTO Entrenador VALUES (011, 'Emma', 'Schmidt', 3012345678, 'emma@ejemplo.com', 'F', '24/01/00', 'Munich')
SELECT 1 FROM dual;


INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('Agumon', 'M', 'Valiente', 'Fuego', 'Llamarada', 'Rookie', 1200, 3500, 1500, 3000, 2800, 2000);

INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('Gabumon', 'M', 'Leal', 'Fuego', 'Llama Azul', 'Rookie', 1100, 3400, 1400, 2900, 2700, 1900);

INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('Palmon', 'F', 'Alegre', 'Naturaleza', 'Enredadera', 'Rookie', 1000, 3300, 1300, 2800, 2600, 1800);

INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('Patamon', 'M', 'Dulce', 'Viento', 'Aire Divino', 'Rookie', 1050, 3200, 1350, 2750, 2650, 1750);

INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('Gatomon', 'F', 'Fuerte', 'Luz', 'Golpe Divino', 'Champion', 1300, 4000, 1800, 3500, 3300, 2500);

INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('Devimon', 'M', 'Malvado', 'Oscuridad', 'Garra Infernal', 'Champion', 1400, 4200, 1900, 3600, 3400, 2600);

INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('Garurumon', 'M', 'Leal', 'Viento', 'Colmillo Helado', 'Champion', 1450, 4300, 2000, 3700, 3500, 2700);

INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('MetalGreymon', 'M', 'Valiente', 'Fuego', 'Misil Giga', 'Ultra', 1500, 5000, 2500, 4500, 4300, 3500);

INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('SaberLeomon', 'M', 'Salvaje', 'Tierra', 'Rugido Letal', 'Mega', 1600, 5500, 2700, 4800, 4600, 3700);

INSERT INTO Digimon (nombre, genero, naturaleza, tipo, habilidad_especial, forma, velocidad, puntos_vida, defensa, ataque, ataque_especial, defensa_especial)
VALUES ('Beelzemon', 'M', 'Rebelde', 'Oscuridad', 'Disparo Oscuro', 'Mega', 1700, 5800, 2900, 5000, 4800, 3900);


-- Inserts para Naturaleza
INSERT INTO Naturaleza (nombre, descripcion, beneficio, desventaja) 
VALUES ('Valiente', 'Siempre enfrenta el peligro', 'Mayor ataque', 'Menor defensa');

INSERT INTO Naturaleza (nombre, descripcion, beneficio, desventaja) 
VALUES ('Leal', 'Nunca traiciona a sus aliados', 'Mayor defensa', 'Menor velocidad');

INSERT INTO Naturaleza (nombre, descripcion, beneficio, desventaja) 
VALUES ('Alegre', 'Siempre está de buen ánimo', 'Mayor velocidad', 'Menor ataque');

INSERT INTO Naturaleza (nombre, descripcion, beneficio, desventaja) 
VALUES ('Dulce', 'Tiene un corazón puro', 'Mayor puntos de vida', 'Menor ataque especial');

INSERT INTO Naturaleza (nombre, descripcion, beneficio, desventaja) 
VALUES ('Fuerte', 'Siempre lucha hasta el final', 'Mayor defensa especial', 'Menor velocidad');

INSERT INTO Naturaleza (nombre, descripcion, beneficio, desventaja) 
VALUES ('Malvado', 'Busca la destrucción', 'Mayor ataque especial', 'Menor defensa');

INSERT INTO Naturaleza (nombre, descripcion, beneficio, desventaja) 
VALUES ('Salvaje', 'Difícil de controlar', 'Mayor velocidad', 'Menor defensa especial');

INSERT INTO Naturaleza (nombre, descripcion, beneficio, desventaja) 
VALUES ('Rebelde', 'No sigue órdenes fácilmente', 'Mayor ataque', 'Menor defensa especial');

-- Inserts para Habilidad_Esp
INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Llamarada', 'Ataque de fuego ardiente');

INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Llama Azul', 'Llamas azules con gran poder destructivo');

INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Enredadera', 'Ataque que atrapa al enemigo');

INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Aire Divino', 'Golpe de viento sagrado');

INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Golpe Divino', 'Ataque poderoso con luz sagrada');

INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Garra Infernal', 'Ataque de energía oscura y maligna');

INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Colmillo Helado', 'Mordida congelante que inmoviliza');

INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Misil Giga', 'Misiles potentes con gran impacto');

INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Rugido Letal', 'Un rugido que paraliza al enemigo');

INSERT INTO Habilidad_Esp (nombre, descripcion) 
VALUES ('Disparo Oscuro', 'Proyectil de energía oscura');

-- Inserts para Tipo_Digimon
INSERT INTO Tipo_Digimon (nombre, descripcion) 
VALUES ('Agua', 'Digimon con afinidad por el agua y el hielo');

INSERT INTO Tipo_Digimon (nombre, descripcion) 
VALUES ('Fuego', 'Digimon con ataques de fuego y lava');

INSERT INTO Tipo_Digimon (nombre, descripcion) 
VALUES ('Viento', 'Digimon con gran velocidad y ataques de aire');

INSERT INTO Tipo_Digimon (nombre, descripcion) 
VALUES ('Naturaleza', 'Digimon que controlan plantas y tierra');

INSERT INTO Tipo_Digimon (nombre, descripcion) 
VALUES ('Tierra', 'Digimon con resistencia superior');

INSERT INTO Tipo_Digimon (nombre, descripcion) 
VALUES ('Luz', 'Digimon sagrados con poderes divinos');

INSERT INTO Tipo_Digimon (nombre, descripcion) 
VALUES ('Oscuridad', 'Digimon malignos con habilidades destructivas');

-- Suponiendo que existen entrenadores con id_entrenador del 1 al 5

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (001, 'Agumon', NULL);

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (001, 'Gabumon', NULL);

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (001, 'Palmon', NULL);

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (001, 'Patamon', NULL);

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (001, 'Gatomon', NULL);

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (001, 'Devimon', NULL);

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (001, 'Garurumon', '24/01/00');

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (4, 'MetalGreymon', TO_DATE('2024-03-03', 'YYYY-MM-DD'));

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (5, 'SaberLeomon', TO_DATE('2024-03-08', 'YYYY-MM-DD'));

INSERT INTO Entrena (id_entrenador, nombre_digimon, fecha_liberacion) 
VALUES (5, 'Beelzemon', TO_DATE('2024-03-10', 'YYYY-MM-DD'));



SELECT *
FROM Entrenador;


SELECT *
FROM Entrena;


INSERT INTO Pais VALUES ('Venezuela', 'Venezuela', '+58');
INSERT INTO Ciudad VALUES ('Coro', 'Coro', '4101', 'Venezuela');
INSERT INTO Entrenador VALUES (001, 'Luis', 'Garcia', 4129916677, 'luis@ejemplo.com', 'M', '24/01/00', 'Coro');