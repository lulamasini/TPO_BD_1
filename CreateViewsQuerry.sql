--1
CREATE VIEW vw_coberturas as
SELECT ObraSocial.Sigla, ObraSocial.Nombre, Planes.NroPlan, Planes.NombrePlan, Estudios.IdEstudio, Estudios.Descripcion, Cobertura.Coberturas
FROM (((ObraSocial JOIN Planes ON ObraSocial.Sigla=Planes.Sigla) 
JOIN Coberturas ON Planes.Sigla=Cobertura.Sigla AND Planes.NroPlan=Cobertura.NroPlan) 
JOIN Estudios ON Estudios.IdEstudio=Coberturas.IdEstudio)
GO

--2
CREATE VIEW vw_medicos_activos AS
SELECT Medicos.Matricula, Medicos.Nombre, Medicos.Apellido, Medicos.Sexo 
FROM Medicos WHERE Medicos.Activo=1
GO

--3
CREATE VIEW vw_pacientes AS
SELECT Pacientes.DNI, Pacientes.Nombre, Pacientes.Apellido, Pacientes.Sexo, Pacientes.Nacimiento, ObraSocial.Descripcion, Afiliados.NroPlan,Afiliados.NroAfiliado
FROM ((Pacientes JOIN Afiliados ON Pacientes.DNI=Afiliados.DNI) JOIN ObraSocial ON Sigla.ObraSocial=Sigla.Afiliados)
GO

--4
CREATE VIEW vw_pacientes_sin_cobertura AS
SELECT Pacientes.DNI, Pacientes.Nombre, Pacientes.Apellido, Pacientes.Sexo, Pacientes.Nacimiento
FROM Pacientes LEFT OUTER JOIN Afiliados ON Pacientes.DNI = Afiliados.DNI
GO

--5
CREATE VIEW vw_total_medicos_sin_especialidades (Sexo, Cantidad) AS
SELECT Medicos.Sexo, Count(Medicos.Matricula)
FROM Medicos LEFT OUTER JOIN EspeMedi ON Medicos.Matricula=EspeMedi.Matricula
GROUP BY Medicos.Sexo
GO




