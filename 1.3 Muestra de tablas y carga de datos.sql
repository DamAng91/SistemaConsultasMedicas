USE SIST_CONSULTAS;

SHOW TABLES;

DESC Practica;
INSERT INTO Practica(descripcion,stock_actual)
VALUES 
	("Alergia", 50),
	("Andrología", 50),
    ("Cardiología", 50),
    ("Cirugía", 50),
    ("Dermatología", 50),
    ("Diabetología", 50),
    ("Electrofisiología", 50),
    ("Fertilidad", 50),
    ("Gastroenterología", 50),
    ("Genética Médica", 50),
    ("Geriatría", 50),
    ("Ginecología", 50),
    ("Hematología", 50),
    ("Hemodinamia", 50),
    ("Infectología", 50),
    ("Mastología", 50),
    ("Nefrología", 50),
    ("Neumonología", 50),
    ("Neuro ortopedia pediatrico", 50),
    ("Neurología", 50),
    ("Nutricion", 50),
    ("Obstetricia", 50),
    ("Oftalmología", 50),
    ("Oncología", 50),
    ("Ortopedia", 50),
    ("Otorrinolaringologia", 50),
    ("Patologia mamaria", 50),
    ("Proctologia", 50),
    ("Reumatologia",50),
    ("Urologia", 50);
SELECT *FROM Practica;

DESC Medicos;
INSERT INTO Medicos(legajo_medico, nombre, apellido, sueldo, fecha_ingreso)
VALUES 
	(10110, "Juan", "Perez", 312054.02, '1998-05-24'),
    (11561, "Isabel", "Lopez", 213564.65, '2015-07-01'),
    (15456, "Roberto", "Rodriguez", 124545.98, '2016-02-09'),
    (11246, "Luciana", "Figueroa", 351054.51, '2011-04-10'),
    (16487, "Fernanda", "Sanchez", 253564.57, '2017-04-01'),
    (17576, "Lucas", "Ludueña", 124530.05, '2018-02-14'),
    (15471, "Fernando", "Robles", 193454.29, '2014-12-01');
SELECT *FROM Medicos;

DESC Localidades;
INSERT INTO Localidades (nombre_local)
VALUE ("Abasto"), ("Agronomia"), ("Almagro"), ("Balvanera"), ("Barracas"), ("Barrio Norte"), ("Belgrano"), ("Boedo"), ("Caballito"),
("Chacarita"), ("Coghlan"), ("Colegiales"), ("Constitucion"), ("Flores"), ("Floresta"), ("La Boca"), ("Liniers"), ("Mataderos"), 
("Monte Castro"), ("Montserrat"), ("Pompeya"), ("Nuñez"), ("Palermo"), ("Parque Patricios"), ("Paternal"), ("Puerto Madero"), ("Recoleta"),
("Retiro"), ("Saavedra"), ("Villa Crespo"), ("Villa del Parque"), ("Villa Devoto"), ("Villa General Mitre"), ("Villa Lugano"), ("Villa Ortuzar"), ("Villa Pueyrredon"),
("Villa Riachuelo"), ("Villa Santa Rita"), ("Villa Soldati"), ("Villa Urquiza");
SELECT *FROM Localidades;

DESC Pacientes;
INSERT INTO Pacientes (cod_paciente, cod_padre, fecha_alta, cod_localidad, domicilio,nombre_apellido,edad)
VALUE 
	(101, NULL, '2002-06-24 14:54:34', 1, "Av San Juan 1456", "David Lopez", 57),
    (102, NULL, '2010-04-14 09:35:27', 5, "Nicaragua 4789", "Teresa Rogers", 81),
    (103, NULL,'2005-10-13 16:04:11', 12, "Florida 203", "Jhon Smith", 74),
    (104, NULL,'2019-03-21 20:45:06', 9, "Lavalle 1034", "Martin Watkins", 21),
    (105, NULL,'2011-09-25 11:47:51', 11, "Juncal 2456", "Emma Watson", 32),
    (106, NULL,'2006-11-17 19:34:15', 7, "Carlos Pelegrini 1224", "Javier Pastore", 41),
    (107, NULL,'2005-12-25 00:54:21', 13, "Sarmiento 3287", "Charlotte Hanks", 19),
    (108, NULL,'2012-01-23 14:09:34', 1, "Beruti 2951", "Emily Torne", 26),
    (109, NULL,'2014-02-17 14:45:24', 6, "Av Jujuy 915", "David Ludueña", 47),
    (110, 101, '2005-12-29 11:41:18', 4, "Carapachay 1069", "Jonathan Lopez", 29),
    (111, 101, '2006-10-02 16:15:23', 9, "Suipacha 1542", "Sofia Lopez", 25),
    (112, NULL,'2016-01-12 19:24:46', 15, "Av. Carabobo 2541", "Julieta Ortega", 47),
    (113, 102, '2018-11-21 20:21:57', 13, "Av San Juan 2541", "Ricardo Adebayor", 61),
    (114, NULL, '2017-10-30 01:32:24', 22, "Ayacucho 47", "Mercedes Monroe", 57),
    (115, 113, '2017-04-09 09:20:33', 7, "Sarmiento 1456", "Florencia Adebayor", 35),
    (116, 103, '2012-09-24 14:52:24', 3, "Azcuenaga 987", "Damian Smith", 21),
    (117, NULL, '2014-11-21 13:05:13', 5, "Av Libertador 458", "Brisa Gallo", 65),
    (118, NULL, '2018-06-18 15:59:47', 7, "Anchorena 613", "Angelica Vivas", 36),
    (119, NULL,'2013-09-12 17:09:21', 14, "Mendona 2478", "Daniel Cunsolo", 44),
    (120, 109, '2014-10-16 10:04:19', 9, "Sanchez de Loria 1241", "Luciana Ludueña", 15),
    (121, NULL,'2015-07-02 18:41:34', 16, "Av Entre Rios 1579", "Matias Matos", 17),
    (122, 112,'2017-10-23 17:13:07', 12, "Pucara 3269", "Gaston Aizpurua", 9);
SELECT *FROM Pacientes;

DESC Consultas;
INSERT INTO Consultas(legajo_medico, cod_paciente, fecha_consulta, costo_total)
VALUES
	(10110, 102, '2019-09-25 11:47:51', 5050.00),
	(15471, 111, '2019-01-26 10:21:36', 1210.25),
    (16487, 120, '2019-02-07 16:17:25', 21120.50),
    (11561, 107, '2010-02-13 17:13:11', 750.70),
    (11246, 103, '2009-01-03 09:24:30', 2550.65),
    (17576, 109, '2019-03-12 20:36:49', 2200.50),
    (15456, 122, '2018-10-02 21:07:11', 650.75),
    (16487, 119, '2019-12-07 08:25:14', 8880.25),
    (10110, 115, '2019-05-08 12:48:42', 550.00),
    (10110, 110, '2011-11-20 21:59:21', 9025.00),
    (15471, 117, '2016-10-02 12:12:12', 1220.50),
	(11246, 113, '2019-09-13 20:57:21', 7665.50),
    (17576, 104, '2019-06-09 02:18:24', 1050.75),
    (15456, 114, '2019-07-12 00:07:11', 24575.75),
    (10110, 101, '2015-01-01 01:25:14', 18700.00),
    (15471, 105, '2019-09-26 13:32:18', 5230.00),
	(17576, 122, '2018-01-26 10:21:36', 1270.00),
    (16487, 112, '2016-02-07 16:17:25', 2120.50),
    (11561, 110, '2009-02-13 17:13:11', 750.70),
    (11246, 121, '2017-01-03 09:24:30', 2000.50),
    (16487, 108, '2014-03-12 20:36:49', 2200.50),
	(15456, 121, '2022-07-18 20:36:49', 5063.50),
	(17576, 118, '2022-07-18 20:36:49', 3879.25),
	(16487, 106, '2022-07-18 20:36:49', 4575.00),
	(15456, 116, '2022-07-18 00:07:11', 4785.75);
SELECT *FROM Consultas;
    
DESC Consultas_x_Practicas;
INSERT INTO Consultas_x_Practicas(nro_consulta, cod_practica,cantidad)
VALUES (1, 1, 1), (2, 15, 1), (3, 23, 1), (4, 30, 1), (5, 24, 1), (6, 17, 1), (7, 8, 1),
	(8, 11, 1), (9, 15, 1), (10, 7, 1), (11, 24, 1), (12, 10, 1), (13, 14, 1), (14, 19, 1),
    (15, 11, 1), (16, 10, 1), (22, 21, 1), (23, 15, 1), (24, 19, 1), (25, 19, 1) ;
SELECT *FROM Consultas_x_Practicas;