/*DELETE FROM Maul.Pais;
DELETE FROM Maul.Ciudad;
DELETE FROM Maul.Entrenador;
DELETE FROM Maul.Naturaleza;
DELETE FROM Maul.Habilidad_Esp;
DELETE FROM Maul.Tipo_Digimon;
DELETE FROM Maul.Digimon;
DELETE FROM Maul.Entrena;
DELETE FROM Maul.Digievoluciona;*/

-- Inserts para Pais
INSERT ALL
    INTO Maul.Pais VALUES ('Venezuela', 'Venezuela', '+58')
    INTO Maul.Pais VALUES ('Colombia', 'Colombia', '+57')
    INTO Maul.Pais VALUES ('Argentina', 'Argentina', '+54')
    INTO Maul.Pais VALUES ('Italia', 'Italy', '+39')
    INTO Maul.Pais VALUES ('Alemania', 'Germany', '+49')
SELECT 1 FROM dual;

--SELECT * FROM Maul.Pais;

-- Inserts para Ciudad
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

--SELECT * FROM Maul.Ciudad;

-- Inserts para Entrenador
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

--SELECT * FROM Maul.Entrenador;

-- Inserts para Naturaleza
INSERT ALL
    INTO Maul.Naturaleza VALUES ('Vacuna', 'Digimon protectores con afinidad a la justicia', 'Ventaja contra Virus', 'Debilidad contra Dato')
    INTO Maul.Naturaleza VALUES ('Virus', 'Digimon agresivos con alta capacidad ofensiva', 'Ventaja contra Dato', 'Debilidad contra Vacuna')
    INTO Maul.Naturaleza VALUES ('Dato', 'Digimon equilibrados orientados al orden', 'Ventaja contra Vacuna', 'Debilidad contra Virus')
    INTO Maul.Naturaleza VALUES ('Libre', 'Digimon sin alineación definida', 'Adaptabilidad', 'Sin bonificaciones fijas')
    INTO Maul.Naturaleza VALUES ('Variable', 'Digimon con atributos cambiantes', 'Versatilidad en combate', 'Inconsistencia estratégica')
    INTO Maul.Naturaleza VALUES ('Desconocido', 'Naturaleza no clasificable', 'Efectos impredecibles', 'Falta de sinergia')
SELECT 1 FROM dual;

--SELECT * FROM Maul.Naturaleza;

-- Inserts para Habilidad_Esp
INSERT ALL
    INTO Maul.Habilidad_Esp VALUES ('Llamarada', 'Ataque de fuego ardiente')
    INTO Maul.Habilidad_Esp VALUES ('Llama Azul', 'Llamas azules con gran poder destructivo')
    INTO Maul.Habilidad_Esp VALUES ('Enredadera', 'Ataque que atrapa al enemigo')
    INTO Maul.Habilidad_Esp VALUES ('Aire Divino', 'Golpe de viento sagrado')
    INTO Maul.Habilidad_Esp VALUES ('Garra Infernal', 'Ataque de energía oscura y maligna')
    INTO Maul.Habilidad_Esp VALUES ('Colmillo Helado', 'Mordida congelante que inmoviliza')
    INTO Maul.Habilidad_Esp VALUES ('Misil Giga', 'Misiles potentes con gran impacto')
    INTO Maul.Habilidad_Esp VALUES ('Rugido Letal', 'Un rugido que paraliza al enemigo')
    INTO Maul.Habilidad_Esp VALUES ('Disparo Oscuro', 'Proyectil de energía oscura')
    INTO Maul.Habilidad_Esp VALUES ('Mega Llama', 'Llamarada intensa que derrite materiales')
    INTO Maul.Habilidad_Esp VALUES ('Garra Dramática', 'Ataque definitivo con garras energéticas')
    INTO Maul.Habilidad_Esp VALUES ('Cañón Cero', 'Disparo de energía a temperatura cero absoluta')
    INTO Maul.Habilidad_Esp VALUES ('Puño Dinámico', 'Golpe potente con efecto sísmico')
    INTO Maul.Habilidad_Esp VALUES ('Pétalo Mortal', 'Tormenta de pétalos venenosos afilados')
    INTO Maul.Habilidad_Esp VALUES ('Espinas Venus', 'Espinas afiladas con veneno paralizante')
    INTO Maul.Habilidad_Esp VALUES ('Rayo Carmesí', 'Rayo de energía oscura destructivo')
SELECT 1 FROM dual;

--SELECT * FROM Maul.Habilidad_Esp;

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

--SELECT * FROM Maul.Tipo_Digimon;

-- Inserts para Digimon
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
    INTO Maul.Digimon VALUES ('Greymon', 'M', 'Vacuna', 'Fuego', 'Mega Llama', 'Champion', 1800, 4800, 2200, 4200, 3800, 3200)
    INTO Maul.Digimon VALUES ('WarGreymon', 'M', 'Vacuna', 'Fuego', 'Garra Dramática', 'Mega', 3200, 7500, 3500, 6800, 6200, 5800)
    INTO Maul.Digimon VALUES ('MetalGarurumon', 'M', 'Vacuna', 'Agua', 'Cañón Cero', 'Mega', 3100, 7300, 3400, 6600, 6100, 5600)
    INTO Maul.Digimon VALUES ('Togemon', 'F', 'Dato', 'Naturaleza', 'Puño Dinámico', 'Champion', 1500, 4000, 1800, 3500, 3200, 2800)
    INTO Maul.Digimon VALUES ('Lilymon', 'F', 'Dato', 'Naturaleza', 'Pétalo Mortal', 'Ultra', 2100, 5400, 2400, 4800, 4400, 4000)
    INTO Maul.Digimon VALUES ('Rosemon', 'F', 'Dato', 'Naturaleza', 'Espinas Venus', 'Mega', 2900, 6700, 3100, 6100, 5700, 5200)
    INTO Maul.Digimon VALUES ('Myotismon', 'M', 'Virus', 'Oscuridad', 'Rayo Carmesí', 'Ultra', 3200, 7100, 2800, 6700, 5800, 6000)
SELECT 1 FROM dual;

--SELECT * FROM Maul.Digimon;

-- Inserts para Digievoluciona

INSERT ALL
    INTO Maul.Digievoluciona VALUES ('Agumon', 'Greymon', 'Emocional')
    INTO Maul.Digievoluciona VALUES ('Gabumon', 'Garurumon', 'Emocional')
    INTO Maul.Digievoluciona VALUES ('Palmon', 'Togemon', 'Emocional')
    INTO Maul.Digievoluciona VALUES ('Patamon', 'Devimon', 'Oscuridad')
    INTO Maul.Digievoluciona VALUES ('Devimon', 'Myotismon', 'Oscuridad')
SELECT 1 FROM dual;

-- SELECT * FROM Maul.Digievoluciona;

-- Inserts para Entrena
INSERT ALL
    INTO Maul.Entrena VALUES (001, 'Agumon', NULL)
    INTO Maul.Entrena VALUES (001, 'Gabumon', NULL)
    INTO Maul.Entrena VALUES (001, 'Palmon', NULL)
    INTO Maul.Entrena VALUES (001, 'Patamon', NULL)
    INTO Maul.Entrena VALUES (001, 'Gatomon', NULL)
    INTO Maul.Entrena VALUES (001, 'MetalGreymon', NULL)
SELECT 1 FROM dual;

--SELECT * FROM Maul.Entrena;


/****************** CASOS DE PRUEBA PARA TRIGGERS *****************/

/*

-- Para el trigger de la edad de los entrenadores.
INSERT INTO Maul.Entrenador VALUES (012, 'Ana', 'Pinto', 4121111111, 'ana@ejemplo.com', 'F', '21/12/10', 'Caracas');

-- Para el trigger de maximo 6 digimones por entrenador, con este insert daria error ya que se insertaron 6 digimones a este entrenador.
INSERT INTO Maul.Entrena VALUES (001, 'Devimon', NULL);

-- Para liberar un Digimon se le detalla la fecha de liberacion, al insertar esta tupla se eliminara la tupla
-- que coincida con las primeras dos columnas y se insertara la que tenga la fecha de liberacion.
INSERT INTO Maul.Entrena VALUES (001, 'Agumon', '16/03/25');

*/