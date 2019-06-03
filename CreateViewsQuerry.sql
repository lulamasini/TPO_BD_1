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

--6 Chequear
CREATE VIEW vw_afiliados_con_una_cobertura AS
SELECT Pacientes.Nombre, Pacientes.Apellido, Afiliados.Sigla, Afiliados.NroPlan, Afiliados.NroAfiliado
FROM Pacientes JOIN Afiliados ON Pacientes.DNI=AfiliadosDNI
WHERE Count(Afiliados.DNI) < 2
GO

--7 Chequear
CREATE VIEW vw_cantidad_estudios_por_medico AS
SELECT Medicos.Matricula, Medicos.Nombre, Medicos.Apellido, Count (Registros.Matricula) AS CantEstudios
FROM Medicos JOIN Registros ON Medicos.Matricula = Registros.Matricula
--GROUP BY Medicos.Matricula
GO

--8 Recontra chequear
CREATE VIEW vw_registros_de_estudios AS
SELECT Pacientes.DNI, Pacientes.Nombre, Pacientes.Apellido, Registros.IdEstudio, Estudios.Descripcion AS DescEstudio, Institutos.RazonSocial AS Instituto, Medicos.Matricula AS MatriculaSolicitante, Medicos.Apellido AS ApellidoSolicitante, Registros.Fecha AS FechaRealizado, ObraSocial.Nombre AS ObraSocial
FROM (((((Pacientes JOIN Registros ON Pacientes.DNI = Registros.DNI) 
JOIN Medicos ON Registros.Matricula=Medicos.Matricula) 
JOIN Institutos ON Institutos.IdInstituto = Registros.IdInstituto) 
JOIN Estudios ON Registros.IdEstudio=Estudios.IdEstudio) 
JOIN ObraSocial ON Registros.Sigla=ObraSocial.Sigla)
GO

--9
CREATE VIEW vw_estudios_sin_cobertura AS
Select Estudios.IdEstudio, Estudios.Descripcion
FROM Estudios LEFT OUTER JOIN Coberturas ON Estudios.IdEstudio = Coberturas.IdEstudio
GO

--10 Chequear después de ver cómo se guarda el número de plan, quizá el AND está de más
-- Quizá también podés hacerlo con operadores IN y NOT IN
CREATE VIEW  vw_planes_sin_cobertura AS
SELECT Planes.NombrePlan, ObraSocial.Nombre
FROM Planes LEFT OUTER JOIN Coberturas ON Planes.NroPlan = Coberturas.NroPlan AND Planes.Sigla = Coberturas.Sigla 
GO

--11 Chequear cálculo de monto cubierto según cómo se almacene la Cobertura
-- También verificar si el número de plan modifica algo (Creo que no)
/* CREATE VIEW vw_tabla_de_precios AS
SELECT Estudios.NombreEstudio, ObraSocial.Nombre AS NombObraSocial, Planes.NombrePlan, Instituto.RazonSocial AS Instituto, Precios.Precio AS PrecioEstudio, Coberturas.Cobertura AS PorcentajeCubierto,  (Coberturas.Cobertura*100)/Precios.Precio AS MontoCubierto
FROM (((((Estudios JOIN Coberturas ON Estudios.IdEstudio = Coberturas.IdEstudio) 
JOIN ObraSocial ON Coberturas.Sigla=ObraSocial.Sigla)
JOIN Planes ON Planes.IdPlan = Coberturas.IdPlan)
JOIN Precios ON Precios.IdEstudio = Estudios.IdEstudio)
JOIN Institutos ON Precios.IdInstituto = Institutos.IdInstituto)
GO */

--12
CREATE VIEW vw_estudios_a_prepagas AS 
SELECT Registros.IdEstudio, Estudios.Descripcion AS NombreEstudio, ObraSocial.Nombre AS Prepaga
FROM ((Registros JOIN Estudios ON Registros.IdEstudio = Estudios.IdEstudio)
JOIN ObraSocial ON Registros.Sigla=ObraSocial.Sigla)
WHERE ObraSocial.Categoria = "pp" AND abs(DateDiff(dd, Registros.Fecha,getDate())) <=45
GO

--13 Chequear
CREATE VIEW vw_estudios_por_mes AS
SELECT Pacientes.Sexo, Estudios.Descripcion AS Estudio, Count(Registros.DNI) AS CantRealizados
FROM ((Pacientes JOIN Registros ON Pacientes.DNI = Registros.DNI) 
JOIN Estudios ON Estudios.IdEstudio = Registros.IdEstudio)
WHERE abs(DateDiff(y, Registros.Fecha, getDate())) <1
GROUP BY Pacientes.Sexo, Estudios.IdEstudio, DATENAME(m, Registros.Fecha)
GO

--14
CREATE VIEW  vw_estudios_por_instituto AS
SELECT Registros.IdInstituto, Institutos.RazonSocial AS Instituto, Count(Registros.IdInstituto) AS CantEstudios
FROM Registros JOIN Institutos ON Registros.IdInstituto = Instituto.IdInstituto
WHERE abs(DateDiff(dd,Registros.Fecha, getDate()))<15
GROUP BY datepart(wk, registros.Fecha)
GO