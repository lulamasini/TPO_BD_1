INSERT INTO Especialidades (Descripcion) VALUES ('Cardiologia');
INSERT INTO Especialidades (Descripcion) VALUES ('Pediatria');

INSERT INTO Medicos (Matricula, Apellido, Nombre, Sexo, Nacimiento, Activo) VALUES (000001,'Jhonson','James','m','1/2/1999',1);
INSERT INTO Medicos (Matricula, Apellido, Nombre, Sexo, Nacimiento, Activo) VALUES (009876,'Redman','Axel','m','7/2/1979',0);
INSERT INTO Medicos (Matricula, Apellido, Nombre, Sexo, Nacimiento, Activo) VALUES (123456,'Torres','Julieta','f','7/21/1986',1);

INSERT INTO Estudios (Descripcion) VALUES ('Estudio de fondo de ojos.');
INSERT INTO Estudios (Descripcion) VALUES ('Estudio de soplo de corazon.');

INSERT INTO Institutos (RazonSocial, Vigente) VALUES ('Instituto oftalmologo de cordoba',0);
INSERT INTO Institutos (RazonSocial, Vigente) VALUES ('Instituto deportivo parodi',1);

INSERT INTO ObraSOcial (Sigla, Nombre, Categoria) VALUES ('OS','OSDE','pp');
INSERT INTO ObraSOcial (Sigla, Nombre, Categoria) VALUES ('UC','UCRE','os');

INSERT INTO Pacientes (DNI, Apellido, Nombre, Sexo, Nacimiento, Telefono) VALUES ('12345698','Gimenez','La mona', 'm','1/2/1999','+54358606879');
INSERT INTO Pacientes (DNI, Apellido, Nombre, Sexo, Nacimiento, Telefono) VALUES ('54987111','White','Walter', 'm','3/10/1985','1/*  */1987653156');
INSERT INTO Pacientes (DNI, Apellido, Nombre, Sexo, Nacimiento, Telefono) VALUES ('42365180','White','SKyler', 'f','1/31/2001','27398764235');


