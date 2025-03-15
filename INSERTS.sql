INSERT ALL
    INTO Pais VALUES ('Venezuela', 'Venezuela', '+58')
    INTO Pais VALUES ('Colombia', 'Colombia', '+57')
    INTO Pais VALUES ('Argentina', 'Argentina', '+54')
    INTO Pais VALUES ('Italia', 'Italy', '+39')
    INTO Pais VALUES ('Alemania', 'Germany', '+49')
SELECT 1 FROM dual;

SELECT * FROM Pais;

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

SELECT * FROM Ciudad;

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

SELECT * FROM Entrenador;

INSERT ALL
    INTO Digimon VALUES ('Agumon', 'M', 'Valiente', 'Fuego', 'Llamarada', 'Rookie', 1200, 3500, 1500, 3000, 2800, 2000)
    INTO Digimon VALUES ('Gabumon', 'M', 'Leal', 'Fuego', 'Llama Azul', 'Rookie', 1100, 3400, 1400, 2900, 2700, 1900)
    INTO Digimon VALUES ('Palmon', 'F', 'Alegre', 'Naturaleza', 'Enredadera', 'Rookie', 1000, 3300, 1300, 2800, 2600, 1800)
    INTO Digimon VALUES ('Patamon', 'M', 'Dulce', 'Viento', 'Aire Divino', 'Rookie', 1050, 3200, 1350, 2750, 2650, 1750)
    INTO Digimon VALUES ('Gatomon', 'F', 'Fuerte', 'Luz', 'Golpe Divino', 'Champion', 1300, 4000, 1800, 3500, 3300, 2500)
    INTO Digimon VALUES ('Devimon', 'M', 'Malvado', 'Oscuridad', 'Garra Infernal', 'Champion', 1400, 4200, 1900, 3600, 3400, 2600)
    INTO Digimon VALUES ('Garurumon', 'M', 'Leal', 'Viento', 'Colmillo Helado', 'Champion', 1450, 4300, 2000, 3700, 3500, 2700)
    INTO Digimon VALUES ('MetalGreymon', 'M', 'Valiente', 'Fuego', 'Misil Giga', 'Ultra', 1500, 5000, 2500, 4500, 4300, 3500)
    INTO Digimon VALUES ('SaberLeomon', 'M', 'Salvaje', 'Tierra', 'Rugido Letal', 'Mega', 1600, 5500, 2700, 4800, 4600, 3700)
    INTO Digimon VALUES ('Beelzemon', 'M', 'Rebelde', 'Oscuridad', 'Disparo Oscuro', 'Mega', 1700, 5800, 2900, 5000, 4800, 3900)
SELECT 1 FROM dual;


-- Inserts para Naturaleza
INSERT ALL
    INTO Naturaleza VALUES ('Valiente', 'Siempre enfrenta el peligro', 'Mayor ataque', 'Menor defensa')
    INTO Naturaleza VALUES ('Leal', 'Nunca traiciona a sus aliados', 'Mayor defensa', 'Menor velocidad')
    INTO Naturaleza VALUES ('Alegre', 'Siempre está de buen ánimo', 'Mayor velocidad', 'Menor ataque')
    INTO Naturaleza VALUES ('Dulce', 'Tiene un corazón puro', 'Mayor puntos de vida', 'Menor ataque especial')
    INTO Naturaleza VALUES ('Fuerte', 'Siempre lucha hasta el final', 'Mayor defensa especial', 'Menor velocidad')
    INTO Naturaleza VALUES ('Malvado', 'Busca la destrucción', 'Mayor ataque especial', 'Menor defensa')
    INTO Naturaleza VALUES ('Salvaje', 'Difícil de controlar', 'Mayor velocidad', 'Menor defensa especial')
    INTO Naturaleza VALUES ('Rebelde', 'No sigue órdenes fácilmente', 'Mayor ataque', 'Menor defensa especial')
SELECT 1 FROM dual;

-- Inserts para Habilidad_Esp
INSERT ALL
    INTO Habilidad_Esp VALUES ('Llamarada', 'Ataque de fuego ardiente')
    INTO Habilidad_Esp VALUES ('Llama Azul', 'Llamas azules con gran poder destructivo')
    INTO Habilidad_Esp VALUES ('Enredadera', 'Ataque que atrapa al enemigo')
    INTO Habilidad_Esp VALUES ('Aire Divino', 'Golpe de viento sagrado')
    INTO Habilidad_Esp VALUES ('Golpe Divino', 'Ataque poderoso con luz sagrada')
    INTO Habilidad_Esp VALUES ('Garra Infernal', 'Ataque de energía oscura y maligna')
    INTO Habilidad_Esp VALUES ('Colmillo Helado', 'Mordida congelante que inmoviliza')
    INTO Habilidad_Esp VALUES ('Misil Giga', 'Misiles potentes con gran impacto')
    INTO Habilidad_Esp VALUES ('Rugido Letal', 'Un rugido que paraliza al enemigo')
    INTO Habilidad_Esp VALUES ('Disparo Oscuro', 'Proyectil de energía oscura')
SELECT 1 FROM dual;

-- Inserts para Tipo_Digimon
INSERT ALL
    INTO Tipo_Digimon VALUES ('Agua', 'Digimon con afinidad por el agua y el hielo')
    INTO Tipo_Digimon VALUES ('Fuego', 'Digimon con ataques de fuego y lava')
    INTO Tipo_Digimon VALUES ('Viento', 'Digimon con gran velocidad y ataques de aire')
    INTO Tipo_Digimon VALUES ('Naturaleza', 'Digimon que controlan plantas y tierra')
    INTO Tipo_Digimon VALUES ('Tierra', 'Digimon con resistencia superior')
    INTO Tipo_Digimon VALUES ('Luz', 'Digimon sagrados con poderes divinos')
    INTO Tipo_Digimon VALUES ('Oscuridad', 'Digimon malignos con habilidades destructivas')
SELECT 1 FROM dual;

-- Suponiendo que existen entrenadores con id_entrenador del 1 al 5

INSERT ALL
    INTO Entrena VALUES (001, 'Agumon', NULL)
    INTO Entrena VALUES (001, 'Gabumon', NULL)
    INTO Entrena VALUES (001, 'Palmon', NULL)
    INTO Entrena VALUES (001, 'Patamon', NULL)
    INTO Entrena VALUES (001, 'Gatomon', NULL)
    INTO Entrena VALUES (001, 'Devimon', NULL)
    INTO Entrena VALUES (001, 'Garurumon', '24/01/2025')
    INTO Entrena VALUES (4, 'MetalGreymon', '03/03/2025')
    INTO Entrena VALUES (5, 'SaberLeomon', '08/03/2025')
    INTO Entrena VALUES (5, 'Beelzemon', '10/03/2025')
SELECT 1 FROM dual;