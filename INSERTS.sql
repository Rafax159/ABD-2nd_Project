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