USE SIST_CONSULTAS;

CREATE TABLE Localidades (
cod_localidad INT PRIMARY KEY AUTO_INCREMENT,
nombre_local VARCHAR(40) 
);

CREATE TABLE Pacientes (
cod_paciente INT PRIMARY KEY,
cod_padre INT NULL,
cod_localidad INT NOT NULL, 
CONSTRAINT FK_PadrePaciente FOREIGN KEY (cod_padre) REFERENCES Pacientes (cod_paciente),
CONSTRAINT FK_LocalidadPaciente FOREIGN KEY (cod_localidad) REFERENCES Localidades(cod_localidad),
fecha_alta DATETIME NOT NULL,
domicilio VARCHAR(50),
nombre_apellido VARCHAR(100) NOT NULL,
edad INT NOT NULL
);

CREATE TABLE Medicos(
legajo_medico INT PRIMARY KEY UNIQUE,
nombre VARCHAR (50),
apellido VARCHAR(50),
sueldo DECIMAL (8,2),
fecha_ingreso DATE
);

CREATE TABLE Consultas (
nro_consulta INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
legajo_medico INT NOT NULL,
cod_paciente INT NOT NULL,
CONSTRAINT FK_MedicoConsulta FOREIGN KEY (legajo_medico) REFERENCES Medicos(legajo_medico),
CONSTRAINT FK_PacienteConsulta FOREIGN KEY (cod_paciente) REFERENCES Pacientes(cod_paciente),
fecha_consulta DATETIME NOT NULL,
costo_total DECIMAL(8,2) NOT NULL
);

CREATE TABLE Practica(
cod_practica INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
descripcion VARCHAR(150),
stock_actual INT
);

CREATE TABLE Consultas_x_Practicas(
nro_consulta INT NOT NULL,
cod_practica INT NOT NULL,
CONSTRAINT FK_ConsultaConsultaPractica FOREIGN KEY (nro_consulta) REFERENCES Consultas (nro_consulta),
CONSTRAINT FK_PracticaConsultaPractica FOREIGN KEY (cod_practica) REFERENCES Practica (cod_practica),
cantidad INT
);






