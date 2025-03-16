INSERT ALL
    INTO usuarioChimbo.Pais VALUES ('Venezuela', 'Venezuela', '+58')
    INTO usuarioChimbo.Pais VALUES ('Colombia', 'Colombia', '+57')
    INTO usuarioChimbo.Pais VALUES ('Argentina', 'Argentina', '+54')
    INTO usuarioChimbo.Pais VALUES ('Italia', 'Italy', '+39')
    INTO usuarioChimbo.Pais VALUES ('Alemania', 'Germany', '+49')
SELECT 1 FROM dual;

--ALTER USER SYSTEM QUOTA UNLIMITED ON REPO_TABLAS;

--ALTER USER SYSTEM DEFAULT TABLESPACE REPO_TABLAS;

ALTER USER usuarioChimbo QUOTA UNLIMITED ON repo_tablas;
ALTER USER usuarioChimbo QUOTA UNLIMITED ON repo_indices;

INSERT ALL
    INTO usuarioChimbo.Ciudad VALUES ('Caracas', 'Caracas', '1060', 'Venezuela')
    INTO usuarioChimbo.Ciudad VALUES ('Coro', 'Coro', '4101', 'Venezuela')
    INTO usuarioChimbo.Ciudad VALUES ('Medellin', 'Medellin', '050005', 'Colombia')
    INTO usuarioChimbo.Ciudad VALUES ('Cartagena', 'Cartagena', '13005', 'Colombia')
    INTO usuarioChimbo.Ciudad VALUES ('Buenos Aires', 'Buenos Aires', 'B1043', 'Argentina')
    INTO usuarioChimbo.Ciudad VALUES ('Mar de Plata', 'Mar de Plata', 'B1414', 'Argentina')
    INTO usuarioChimbo.Ciudad VALUES ('Roma', 'Rome', '00127', 'Italia')
    INTO usuarioChimbo.Ciudad VALUES ('Venecia', 'Venice', '30124', 'Italia')
    INTO usuarioChimbo.Ciudad VALUES ('Berlin', 'Berlin', '10178', 'Alemania')
    INTO usuarioChimbo.Ciudad VALUES ('Munich', 'Munich', '80336', 'Alemania')
SELECT 1 FROM dual;

INSERT ALL
    INTO usuarioChimbo.Entrenador VALUES (001, 'Luis', 'Garcia', 4129916677, 'luis@ejemplo.com', 'M', '24/01/00', 'Coro')
    INTO usuarioChimbo.Entrenador VALUES (002, 'Rafael', 'Contreras', 4242550835, 'rafael@ejemplo.com', 'M', '01/08/02', 'Caracas')
    INTO usuarioChimbo.Entrenador VALUES (003, 'Marcel', 'Mendoza', 3001234567, 'marcel@ejemplo.com', 'M', '26/12/00', 'Medellin')
    INTO usuarioChimbo.Entrenador VALUES (004, 'Julia', 'Gomez', 6012345678, 'julia@ejemplo.com', 'F', '12/02/05', 'Cartagena')
    INTO usuarioChimbo.Entrenador VALUES (006, 'Facundo', 'Gimenez', 1112345678, 'facundo@ejemplo.com', 'M', '10/03/06', 'Buenos Aires')
    INTO usuarioChimbo.Entrenador VALUES (007, 'Carmen', 'Ramos', 3511234567, 'carmen@ejemplo.com', 'F', '15/08/02', 'Mar de Plata')
    INTO usuarioChimbo.Entrenador VALUES (008, 'Luca', 'Rossi', 3331234567, 'luca@ejemplo.com', 'M', '08/01/03', 'Roma')
    INTO usuarioChimbo.Entrenador VALUES (009, 'Sofia', 'Bianchi', 0212345678, 'sofia@ejemplo.com', 'F', '10/01/00', 'Venecia')
    INTO usuarioChimbo.Entrenador VALUES (010, 'Hans', 'Müller', 1711234567, 'hans@ejemplo.com', 'M', '24/01/00', 'Berlin')
    INTO usuarioChimbo.Entrenador VALUES (011, 'Emma', 'Schmidt', 3012345678, 'emma@ejemplo.com', 'F', '24/01/00', 'Munich')
SELECT 1 FROM dual;

INSERT ALL
    INTO usuarioChimbo.Digimon VALUES ('Agumon', 'M', 'Vacuna', 'Fuego', 'Llamarada', 'Rookie', 1200, 3500, 1500, 3000, 2800, 2000)
    INTO usuarioChimbo.Digimon VALUES ('Gabumon', 'M', 'Vacuna', 'Fuego', 'Llama Azul', 'Rookie', 1100, 3400, 1400, 2900, 2700, 1900)
    INTO usuarioChimbo.Digimon VALUES ('Palmon', 'F', 'Dato', 'Naturaleza', 'Enredadera', 'Rookie', 1000, 3300, 1300, 2800, 2600, 1800)
    INTO usuarioChimbo.Digimon VALUES ('Patamon', 'M', 'Libre', 'Viento', 'Aire Divino', 'Rookie', 1050, 3200, 1350, 2750, 2650, 1750)
    INTO usuarioChimbo.Digimon VALUES ('Gatomon', 'F', 'Vacuna', 'Luz', 'Garra Infernal', 'Champion', 1300, 4000, 1800, 3500, 3300, 2500)
    INTO usuarioChimbo.Digimon VALUES ('Devimon', 'M', 'Virus', 'Oscuridad', 'Colmillo Helado', 'Champion', 1400, 4200, 1900, 3600, 3400, 2600)
    INTO usuarioChimbo.Digimon VALUES ('Garurumon', 'M', 'Dato', 'Viento', 'Misil Giga', 'Champion', 1450, 4300, 2000, 3700, 3500, 2700)
    INTO usuarioChimbo.Digimon VALUES ('MetalGreymon', 'M', 'Virus', 'Fuego', 'Rugido Letal', 'Ultra', 1500, 5000, 2500, 4500, 4300, 3500)
    INTO usuarioChimbo.Digimon VALUES ('SaberLeomon', 'M', 'Vacuna', 'Tierra', 'Disparo Oscuro', 'Mega', 1600, 5500, 2700, 4800, 4600, 3700)
SELECT 1 FROM dual;

INSERT ALL
    INTO usuarioChimbo.Naturaleza VALUES ('Vacuna', 'Digimon protectores con afinidad a la justicia', 'Ventaja contra Virus', 'Debilidad contra Dato')
    INTO usuarioChimbo.Naturaleza VALUES ('Virus', 'Digimon agresivos con alta capacidad ofensiva', 'Ventaja contra Dato', 'Debilidad contra Vacuna')
    INTO usuarioChimbo.Naturaleza VALUES ('Dato', 'Digimon equilibrados orientados al orden', 'Ventaja contra Vacuna', 'Debilidad contra Virus')
    INTO usuarioChimbo.Naturaleza VALUES ('Libre', 'Digimon sin alineación definida', 'Adaptabilidad', 'Sin bonificaciones fijas')
    INTO usuarioChimbo.Naturaleza VALUES ('Variable', 'Digimon con atributos cambiantes', 'Versatilidad en combate', 'Inconsistencia estratégica')
    INTO usuarioChimbo.Naturaleza VALUES ('Desconocido', 'Naturaleza no clasificable', 'Efectos impredecibles', 'Falta de sinergia')
SELECT 1 FROM dual;

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

INSERT ALL
    INTO usuarioChimbo.Tipo_Digimon VALUES ('Agua', 'Digimon con afinidad por el agua y el hielo')
    INTO usuarioChimbo.Tipo_Digimon VALUES ('Fuego', 'Digimon con ataques de fuego y lava')
    INTO usuarioChimbo.Tipo_Digimon VALUES ('Viento', 'Digimon con gran velocidad y ataques de aire')
    INTO usuarioChimbo.Tipo_Digimon VALUES ('Naturaleza', 'Digimon que controlan plantas y tierra')
    INTO usuarioChimbo.Tipo_Digimon VALUES ('Tierra', 'Digimon con resistencia superior')
    INTO usuarioChimbo.Tipo_Digimon VALUES ('Luz', 'Digimon sagrados con poderes divinos')
    INTO usuarioChimbo.Tipo_Digimon VALUES ('Oscuridad', 'Digimon malignos con habilidades destructivas')
SELECT 1 FROM dual;

INSERT ALL
    INTO usuarioChimbo.Entrena VALUES (001, 'Agumon', NULL)
    INTO usuarioChimbo.Entrena VALUES (001, 'Gabumon', NULL)
    INTO usuarioChimbo.Entrena VALUES (001, 'Palmon', NULL)
    INTO usuarioChimbo.Entrena VALUES (001, 'Patamon', NULL)
    INTO usuarioChimbo.Entrena VALUES (001, 'Gatomon', NULL)
    INTO usuarioChimbo.Entrena VALUES (001, 'Devimon', NULL)
    INTO usuarioChimbo.Entrena VALUES (001, 'Garurumon', '24/01/2025')
    INTO usuarioChimbo.Entrena VALUES (4, 'MetalGreymon', '03/03/2025')
    INTO usuarioChimbo.Entrena VALUES (5, 'SaberLeomon', '08/03/2025')
    INTO usuarioChimbo.Entrena VALUES (5, 'Beelzemon', '10/03/2025')
SELECT 1 FROM dual;
