CREATE TABLE Especialidades (
    IdEspecialidad smallint identity,
    Descripcion varchar(100) not null,
    constraint Estudio_pk primary key(IdEspecialidad)
);
CREATE TABLE Medicos(
    Matricula INT NOT NULL,
    Apellido VARCHAR(50) NOT null,
    Nombre VARCHAR(100) NOT null,
    Sexo CHAR(1) NOT null,
    Nacimiento DATE NOT null,
    Activo BIT NOT NULL,
    CONSTRAINT Medicos_pk PRIMARY KEY (Matricula)
);
CREATE TABLE Estudios(
    IdEstudio INT IDENTITY,
    Descripcion VARCHAR (100) NOT NULL,
    CONSTRAINT Estudios_pk PRIMARY KEY (IdEstudio)
);
CREATE TABLE Institutos (
    IdInstituto INT IDENTITY,
    RazonSocial VARCHAR(100) NOT NULL,
    Vigente BIT NOT NULL,
    CONSTRAINT Institutos_pk PRIMARY KEY (IdInstituto)
);
CREATE TABLE ObraSocial(
    Sigla CHAR(2) NOT NULL,
    NOmbre VARCHAR(50) NOT NULL,
    Categoria CHAR(2),
    CONSTRAINT ObraSocial_pk PRIMARY KEY (Sigla)
);
CREATE TABLE Pacientes(
    DNI INT NOT NULL,
    Apellido VARCHAR(50) NOT null,
    Nombre VARCHAR(100) NOT null,
    Sexo CHAR(1) NOT null,
    Nacimiento DATE NOT null,
    Telefono VARCHAR(15),
    CONSTRAINT Pacientes_pk PRIMARY KEY (DNI)
);


CREATE TABLE EspeMedi (
    IdEspecialidad smallint NOT NULL,
    Matricula int NOT NULL
);
CREATE TABLE EstuEpe (
    IdEstudio INT NOT NULL,
    IdEspecialidad SMALLINT NOT NULL,
);
CREATE TABLE Precios (
    IdEstudio INT NOT NULL,
    IdInstituto INT NOT NULL,
    Precio MONEY NOT NULL,
    CONSTRAINT Precios_pk_Instituto_Estudio PRIMARY KEY (IdInstituto, IdEstudio)
);
CREATE TABLE Coberturas (
    IdEstudio INT NOT NULL,
    Sigla CHAR(2) NOT NULL,
    NroPlan SMALLINT IDENTITY NOT NULL
);

CREATE TABLE Planes(
    Sigla CHAR(2) NOT NULL,
    NroPlan SMALLINT IDENTITY NOT NULL,
    NombrePLan VARCHAR(50) NOT NULL,
    CONSTRAINT Planes_pk_sigla_nro PRIMARY KEY (Sigla, NroPLan)
);
CREATE TABLE Afiliados(
    IdAfiliado INT IDENTITY,
    DNI INT NOT NULL,
    Sigla CHAR(2) NOT NULL,
    NroPlan SMALLINT NOT NULL,
    CONSTRAINT Afiliados_pk PRIMARY KEY (IdAfiliado)
);
CREATE TABLE Registros(
    IdRegistro INT IDENTITY,
    Fecha DATE,
    DNI INT NOT NULL,
    IdEstudio INT NOT NULL, 
    IdINstituto INT NOT NULL,
    Matricula INT NOT NULL,
    Sigla CHAR(2) NOT NULL,
    CONSTRAINT Registros_pk PRIMARY KEY (IdRegistro)
);

-- CLAVES FORANEAS
--Espemedi
ALTER TABLE EspeMedi
    ADD CONSTRAINT EspeMedi_fk_especialidad FOREIGN KEY (IdEspecialidad) REFERENCES Especialidades;
ALTER TABLE EspeMedi 
    ADD CONSTRAINT EspeMedi_fk_Matricula FOREIGN KEY (Matricula) REFERENCES MEDICOS;
--EstuEpe
ALTER TABLE EstuEpe
    ADD CONSTRAINT EstuEpe_fk_Estudios FOREIGN KEY (IdEstudio) REFERENCES Estudios;
ALTER TABLE EstuEpe
    ADD CONSTRAINT EstuEpe_fk_Especialidades FOREIGN KEY (IdEspecialidad) REFERENCES Especialidades;
--Coberturas
ALTER TABLE Coberturas  
    ADD CONSTRAINT Coberturas_fk_sigla_nro FOREIGN KEY (Sigla, NroPlan) REFERENCES Planes (Sigla, NroPlan);
ALTER TABLE Coberturas 
    ADD CONSTRAINT Coberturas_fk_Estudios FOREIGN KEY (IdEstudio) REFERENCES Estudios;
--Planes
ALTER TABLE Planes
    ADD CONSTRAINT PLanes_fk_ObraSocial FOREIGN KEY (Sigla) REFERENCES ObraSocial;
--Afiliados
ALTER TABLE Afiliados  
    ADD CONSTRAINT Afiliados_fk_planes_NroPlan_Sigla FOREIGN KEY (Sigla, NroPlan) REFERENCES Planes (Sigla, NroPlan);
ALTER TABLE Afiliados 
    ADD CONSTRAINT Afiliados_fk_Pacientes FOREIGN KEY (DNI) REFERENCES Pacientes;
--Precios
ALTER TABLE Precios
    ADD CONSTRAINT Precios_fk_Estudios FOREIGN KEY (IdEstudio) REFERENCES Estudios;
ALTER TABLE Precios
    ADD CONSTRAINT Precios_fk_Institutos FOREIGN KEY (IdINstituto) REFERENCES Institutos;
--Registros
ALTER TABLE Registros
    ADD CONSTRAINT Registros_fk_Pacientes FOREIGN KEY (DNI) REFERENCES Pacientes;
ALTER TABLE Registros
    ADD CONSTRAINT Registros_fk_Medicos FOREIGN KEY (Matricula) REFERENCES Medicos;
ALTER TABLE Registros /*Y la referenciamos aca*/
    ADD CONSTRAINT Registros_fk_Precios FOREIGN KEY (IdInstituto, IdEstudio) REFERENCES Precios (IdInstituto, IdEstudio);
ALTER TABLE Registros
    ADD CONSTRAINT Registros_fk_ObraSocial FOREIGN KEY (Sigla) REFERENCES ObraSocial;

