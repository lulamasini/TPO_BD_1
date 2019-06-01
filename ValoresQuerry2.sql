INSERT INTO Especialidades (Descripcion) VALUES ('Oncologia');
INSERT INTO Especialidades (Descripcion) VALUES ('Nutricion');
INSERT INTO Especialidades (Descripcion) VALUES ('Psiquiatria');
INSERT INTO Especialidades (Descripcion) VALUES ('Oftalmologia');

INSERT INTO Medicos (Matricula, Apellido, Nombre, Sexo, Nacimiento, Activo) VALUES (000011,'Lopez','Anibal','m','1/3/1980',1);
INSERT INTO Medicos (Matricula, Apellido, Nombre, Sexo, Nacimiento, Activo) VALUES (044025,'Castillo','Daniela','f','7/6/1979',1);
INSERT INTO Medicos (Matricula, Apellido, Nombre, Sexo, Nacimiento, Activo) VALUES (485920,'Pepe','Santiago','m','1/2/1929',0);
INSERT INTO Medicos (Matricula, Apellido, Nombre, Sexo, Nacimiento, Activo) VALUES (075001,'Kilmer','Paulina','f','22/8/1989',1);
INSERT INTO Medicos (Matricula, Apellido, Nombre, Sexo, Nacimiento, Activo) VALUES (000781,'Ramirez','Julia','f','1/2/1942',0);

INSERT INTO Estudios (Descripcion) VALUES ('EcoDoppler cardiaco.');
INSERT INTO Estudios (Descripcion) VALUES ('Ergometria.');
INSERT INTO Estudios (Descripcion) VALUES ('Antropometria.');
INSERT INTO Estudios (Descripcion) VALUES ('Tomografia craneal');
INSERT INTO Estudios (Descripcion) VALUES ('Ecografia abdominal');
INSERT INTO Estudios (Descripcion) VALUES ('Analisis de Sangre completo');
INSERT INTO Estudios (Descripcion) VALUES ('Transfusion de plaquetas.');
INSERT INTO Estudios (Descripcion) VALUES ('Consulta.');

INSERT INTO Institutos (RazonSocial, Vigente) VALUES ('Clinica Moguillansky',1);
INSERT INTO Institutos (RazonSocial, Vigente) VALUES ('Hospital Aleman',1);
INSERT INTO Institutos (RazonSocial, Vigente) VALUES ('Clinica Santa Catalina',0);
INSERT INTO Institutos (RazonSocial, Vigente) VALUES ('Hospital Britanico',1);
INSERT INTO Institutos (RazonSocial, Vigente) VALUES ('Sanatorio Rio Cuarto',0);
INSERT INTO Institutos (RazonSocial, Vigente) VALUES ('Hospital Italiano',1);

INSERT INTO ObraSocial (Sigla, Nombre, Categoria) VALUES ('OC','OSECAC','os');
INSERT INTO ObraSocial (Sigla, Nombre, Categoria) VALUES ('IN','Instituto','os');
INSERT INTO ObraSocial (Sigla, Nombre, Categoria) VALUES ('GA','Galeno','pp');
INSERT INTO ObraSocial (Sigla, Nombre, Categoria) VALUES ('OM','Omint','pp');
INSERT INTO ObraSocial (Sigla, Nombre, Categoria) VALUES ('SW','Swiss Medical','pp');
INSERT INTO ObraSocial (Sigla, Nombre, Categoria) VALUES ('UB','Obra Social de la UBA','os');

INSERT INTO Pacientes (DNI, Apellido, Nombre, Sexo, Nacimiento, Telefono) VALUES (15151515,'Lopez','Agustin', 'm','1/2/1989','+54355406879');
INSERT INTO Pacientes (DNI, Apellido, Nombre, Sexo, Nacimiento, Telefono) VALUES (12347778,'Augusto','Ailen', 'f','1/7/1998','+54528606829');
INSERT INTO Pacientes (DNI, Apellido, Nombre, Sexo, Nacimiento, Telefono) VALUES (40415868,'Pavloski','Boris', 'm','1/9/1979','+54354406879');
INSERT INTO Pacientes (DNI, Apellido, Nombre, Sexo, Nacimiento, Telefono) VALUES (12878798,'Carolio','Carolina', 'f','12/7/1949','+54344875379');
INSERT INTO Pacientes (DNI, Apellido, Nombre, Sexo, Nacimiento, Telefono) VALUES (12751498,'Maggi','Sulivan', 'm','12/2/1987','+5435498879');
INSERT INTO Pacientes (DNI, Apellido, Nombre, Sexo, Nacimiento, Telefono) VALUES (75345698,'Grande','Ariana', 'f','1/8/1979','+5435806639');

INSERT INTO EspeMedi (IdEspecialidad, Matricula) VALUES (0,000011)
INSERT INTO EspeMedi (IdEspecialidad, Matricula) VALUES (1,044025)
INSERT INTO EspeMedi (IdEspecialidad, Matricula) VALUES (2,485920)
INSERT INTO EspeMedi (IdEspecialidad, Matricula) VALUES (3,075001)
INSERT INTO EspeMedi (IdEspecialidad, Matricula) VALUES (4,000781)
INSERT INTO EspeMedi (IdEspecialidad, Matricula) VALUES (5,000001)

INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (0,5)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (1,0)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (2,0)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (3,0)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (4,3)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (5,2)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (5,4)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (5,5)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (6,2)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (6,3)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (7,0)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (7,1)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (7,2)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (7,3)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (7,4)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (7,5)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (8,0)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (8,1)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (8,2)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (9,0)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (9,1)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (9,2)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (9,3)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (9,4)
INSERT INTO EstuEspe (IdEstudio, IdEspecialidad) VALUES (9,5)

INSERT INTO Planes (Sigla,Descripcion) VALUES ('OS', '310')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('OS', '210')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('OS', '410')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('UC', 'Docentes')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('UC', 'Directivos')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('OC', 'Empleados')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('OC', 'Gerenciales')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('IN', 'Basico')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('IN', 'Jerarquicos')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('GA', 'Bronce')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('GA', 'Plata')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('GA', 'Oro')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('OM', 'Vos')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('OM', 'AltoPlan')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('SW', 'Suizo')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('SW', 'Suizo Premium')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('SW', 'Suizo VIP')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('UB', 'Academicos')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('UB', 'Decanato')
INSERT INTO Planes (Sigla,Descripcion) VALUES ('UB', 'Anexos')

INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (0,0,50)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (1,0,70)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (2,0,90)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (3,0,80)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (9,0,500)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (4,1,800)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (7,1,250)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (6,1,150)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (9,1,450)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (0,2,200)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (8,2,250)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (9,2,300)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (1,3,450)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (2,3,240)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (3,3,100)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (9,3,800)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (0,4,500)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (1,4,780)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (2,4,920)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (3,4,820)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (9,4,500)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (4,5,800)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (5,5,250)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (6,5,150)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (9,5,450)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (7,6,200)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (8,6,250)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (9,6,300)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (7,7,200)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (8,7,250)
INSERT INTO Precios (IdEstudio,IdInstituto,Precio) VALUES (9,7,300)

--En la tabla coberturas falta el campo "coberturas", lo cuento como un INTEGER con valores del 0 al 100, representando porcentaje
--INSERT INTO Coberturas(IdEstudio,Sigla,NroPlan,Cobertura) VALUES (9,"OS",)
--Voy a dejar esto por un momento porque no sé si los planes tienen un número único en toda la tabla o sólo en los planes de la obra social.
--Pasa lo mismo con la tabla AFILIADOS

--Tabla Registros-- 
--Tambien la voy a dejar comentada, porque después hay que verificar que los pacientes sean socios de esas obras sociales.--
--Habría que hacer un registro para cada paciente para que sea logica su presencia en el sistema, pero no es fundamental

-- INSERT INTO Registros (Fecha, DNI, IdEstudio,IdInstituto, Matricula, Sigla) VALUES (21/05/2019, 15151515,9,1,000011,'OS')
-- INSERT INTO Registros (Fecha, DNI, IdEstudio,IdInstituto, Matricula, Sigla) VALUES (20/05/2019, 12347778,9,2,044025,'UC')
-- INSERT INTO Registros (Fecha, DNI, IdEstudio,IdInstituto, Matricula, Sigla) VALUES (10/05/2019, 40415868,0,2,000001,'GA')