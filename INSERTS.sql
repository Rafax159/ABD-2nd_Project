INSERT ALL
    INTO Maul.Pais VALUES ('Venezuela', 'Venezuela', '+58')
    INTO Maul.Pais VALUES ('Colombia', 'Colombia', '+57')
    INTO Maul.Pais VALUES ('Argentina', 'Argentina', '+54')
    INTO Maul.Pais VALUES ('Italia', 'Italy', '+39')
    INTO Maul.Pais VALUES ('Alemania', 'Germany', '+49')
SELECT 1 FROM dual;

SELECT * FROM Maul.Pais;

INSERT ALL
    INTO Maul.Ciudad VALUES ('Caracas', 'Caracas', '1060', 'Venezuela')
    INTO Maul.Ciudad VALUES ('Coro', 'Coro', '4101', 'Venezuela')
    INTO Maul.Ciudad VALUES ('Medellin', 'Medellin', '050005', 'Colombia')
    INTO Maul.Ciudad VALUES ('Cartagena', 'Cartagena', '13005', 'Colombia')
    INTO Maul.Ciudad VALUES ('Buenos Aires', 'Buenos Aires', 'B1043', 'Argentina')
    INTO Maul.Ciudad VALUES ('Mar de Plata', 'Mar de Plata', 'B1414', 'Argentina')
    INTO Maul.Ciudad VALUES ('Roma', 'Rome', '00127', 'Italia')
    INTO Maul.Ciudad VALUES ('Venecia', 'Venice', '30124', 'Italia')
    INTO Maul.Ciudad VALUES ('Berlin', 'Berlin', '10178', 'Alemania')
    INTO Maul.Ciudad VALUES ('Munich', 'Munich', '80336', 'Alemania')
SELECT 1 FROM dual;

SELECT * FROM Maul.Ciudad;

INSERT ALL
    INTO Maul.Entrenador VALUES (001, 'Luis', 'Garcia', 4129916677, 'luis@ejemplo.com', 'M', '24/01/00', 'Coro')
    INTO Maul.Entrenador VALUES (002, 'Rafael', 'Contreras', 4242550835, 'rafael@ejemplo.com', 'M', '01/08/02', 'Caracas')
    INTO Maul.Entrenador VALUES (003, 'Marcel', 'Mendoza', 3001234567, 'marcel@ejemplo.com', 'M', '26/12/00', 'Medellin')
    INTO Maul.Entrenador VALUES (004, 'Julia', 'Gomez', 6012345678, 'julia@ejemplo.com', 'F', '12/02/05', 'Cartagena')
    INTO Maul.Entrenador VALUES (006, 'Facundo', 'Gimenez', 1112345678, 'facundo@ejemplo.com', 'M', '10/03/06', 'Buenos Aires')
    INTO Maul.Entrenador VALUES (007, 'Carmen', 'Ramos', 3511234567, 'carmen@ejemplo.com', 'F', '15/08/02', 'Mar de Plata')
    INTO Maul.Entrenador VALUES (008, 'Luca', 'Rossi', 3331234567, 'luca@ejemplo.com', 'M', '08/01/03', 'Roma')
    INTO Maul.Entrenador VALUES (009, 'Sofia', 'Bianchi', 0212345678, 'sofia@ejemplo.com', 'F', '10/01/00', 'Venecia')
    INTO Maul.Entrenador VALUES (010, 'Hans', 'Müller', 1711234567, 'hans@ejemplo.com', 'M', '24/01/00', 'Berlin')
    INTO Maul.Entrenador VALUES (011, 'Emma', 'Schmidt', 3012345678, 'emma@ejemplo.com', 'F', '24/01/00', 'Munich')
SELECT 1 FROM dual;

SELECT * FROM Maul.Entrenador;

-- Inserts para Naturaleza
INSERT ALL
    INTO Maul.Naturaleza VALUES ('Vacuna', 'Digimon protectores con afinidad a la justicia', 'Ventaja contra Virus', 'Debilidad contra Dato')
    INTO Maul.Naturaleza VALUES ('Virus', 'Digimon agresivos con alta capacidad ofensiva', 'Ventaja contra Dato', 'Debilidad contra Vacuna')
    INTO Maul.Naturaleza VALUES ('Dato', 'Digimon equilibrados orientados al orden', 'Ventaja contra Vacuna', 'Debilidad contra Virus')
    INTO Maul.Naturaleza VALUES ('Libre', 'Digimon sin alineación definida', 'Adaptabilidad', 'Sin bonificaciones fijas')
    INTO Maul.Naturaleza VALUES ('Variable', 'Digimon con atributos cambiantes', 'Versatilidad en combate', 'Inconsistencia estratégica')
    INTO Maul.Naturaleza VALUES ('Desconocido', 'Naturaleza no clasificable', 'Efectos impredecibles', 'Falta de sinergia')
SELECT 1 FROM dual;

SELECT * FROM Maul.Naturaleza;

-- Inserts para Habilidad_Esp
INSERT ALL
    INTO Maul.Habilidad_Esp VALUES ('Llamarada', 'Ataque de fuego ardiente')
    INTO Maul.Habilidad_Esp VALUES ('Llama Azul', 'Llamas azules con gran poder destructivo')
    INTO Maul.Habilidad_Esp VALUES ('Enredadera', 'Ataque que atrapa al enemigo')
    INTO Maul.Habilidad_Esp VALUES ('Aire Divino', 'Golpe de viento sagrado')
    INTO Maul.Habilidad_Esp VALUES ('Golpe Divino', 'Ataque poderoso con luz sagrada')
    INTO Maul.Habilidad_Esp VALUES ('Garra Infernal', 'Ataque de energía oscura y maligna')
    INTO Maul.Habilidad_Esp VALUES ('Colmillo Helado', 'Mordida congelante que inmoviliza')
    INTO Maul.Habilidad_Esp VALUES ('Misil Giga', 'Misiles potentes con gran impacto')
    INTO Maul.Habilidad_Esp VALUES ('Rugido Letal', 'Un rugido que paraliza al enemigo')
    INTO Maul.Habilidad_Esp VALUES ('Disparo Oscuro', 'Proyectil de energía oscura')
SELECT 1 FROM dual;

SELECT * FROM Mual.Habilidad_Esp;

-- Inserts para Tipo_Digimon
INSERT ALL
    INTO Maul.Tipo_Digimon VALUES ('Agua', 'Digimon con afinidad por el agua y el hielo')
    INTO Maul.Tipo_Digimon VALUES ('Fuego', 'Digimon con ataques de fuego y lava')
    INTO Maul.Tipo_Digimon VALUES ('Viento', 'Digimon con gran velocidad y ataques de aire')
    INTO Maul.Tipo_Digimon VALUES ('Naturaleza', 'Digimon que controlan plantas y tierra')
    INTO Maul.Tipo_Digimon VALUES ('Tierra', 'Digimon con resistencia superior')
    INTO Maul.Tipo_Digimon VALUES ('Luz', 'Digimon sagrados con poderes divinos')
    INTO Maul.Tipo_Digimon VALUES ('Oscuridad', 'Digimon malignos con habilidades destructivas')
SELECT 1 FROM dual;

SELECT * FROM Maul.Tipo_Digimon;

INSERT ALL
    INTO Maul.Digimon VALUES ('Agumon', 'M', 'Vacuna', 'Fuego', 'Llamarada', 'Rookie', 1200, 3500, 1500, 3000, 2800, 2000)
    INTO Maul.Digimon VALUES ('Gabumon', 'M', 'Vacuna', 'Fuego', 'Llama Azul', 'Rookie', 1100, 3400, 1400, 2900, 2700, 1900)
    INTO Maul.Digimon VALUES ('Palmon', 'F', 'Dato', 'Naturaleza', 'Enredadera', 'Rookie', 1000, 3300, 1300, 2800, 2600, 1800)
    INTO Maul.Digimon VALUES ('Patamon', 'M', 'Libre', 'Viento', 'Aire Divino', 'Rookie', 1050, 3200, 1350, 2750, 2650, 1750)
    INTO Maul.Digimon VALUES ('Gatomon', 'F', 'Vacuna', 'Luz', 'Garra Infernal', 'Champion', 1300, 4000, 1800, 3500, 3300, 2500)
    INTO Maul.Digimon VALUES ('Devimon', 'M', 'Virus', 'Oscuridad', 'Colmillo Helado', 'Champion', 1400, 4200, 1900, 3600, 3400, 2600)
    INTO Maul.Digimon VALUES ('Garurumon', 'M', 'Dato', 'Viento', 'Misil Giga', 'Champion', 1450, 4300, 2000, 3700, 3500, 2700)
    INTO Maul.Digimon VALUES ('MetalGreymon', 'M', 'Virus', 'Fuego', 'Rugido Letal', 'Ultra', 1500, 5000, 2500, 4500, 4300, 3500)
    INTO Maul.Digimon VALUES ('SaberLeomon', 'M', 'Vacuna', 'Tierra', 'Disparo Oscuro', 'Mega', 1600, 5500, 2700, 4800, 4600, 3700)
SELECT 1 FROM dual;

SELECT * FROM Maul.Digimon;

-- Suponiendo que existen entrenadores con id_entrenador del 1 al 5

INSERT ALL
    INTO Maul.Entrena VALUES (001, 'Agumon', NULL)
    INTO Maul.Entrena VALUES (001, 'Gabumon', NULL)
    INTO Maul.Entrena VALUES (001, 'Palmon', NULL)
    INTO Maul.Entrena VALUES (001, 'Patamon', NULL)
    INTO Maul.Entrena VALUES (001, 'Gatomon', NULL)
    INTO Maul.Entrena VALUES (001, 'Devimon', NULL)
    INTO Maul.Entrena VALUES (004, 'MetalGreymon', '03/03/2025')
    INTO Maul.Entrena VALUES (005, 'SaberLeomon', '08/03/2025')
    INTO Maul.Entrena VALUES (005, 'Beelzemon', '10/03/2025')
SELECT 1 FROM dual;

SELECT * FROM Maul.Entrena;