--Regla sigla
--Regla dni

--Regla Categoria
ALTER TABLE ObraSocial
    ADD CONSTRAINT regla_ObraSocial_categoria CHECK (Categoria IN ('os', 'pp'));
--Regla sexo
ALTER TABLE Pacientes
    ADD CONSTRAINT regla_pacientes_sexo CHECK (Sexo IN ('f','m'));
ALTER TABLE Medicos
    ADD CONSTRAINT regla_pacientes_sexo CHECK (Sexo IN ('f','m'));

--Regla fecha de estudio
--Regla fecha de nacimiento

--Regla NroPlan
ALTER TABLE Planes
    ADD CONSTRAINT check_Plan_NroPlan CHECK (NroPlan <= 12);
ALTER TABLE Afiliados
    ADD CONSTRAINT check_Afiliados_NroPlan CHECK (NroPlan <= 12);
ALTER TABLE Coberturas
    ADD CONSTRAINT check_Coberturas_NroPlan CHECK (NroPlan <= 12)
     
--Regla Precio
ALTER TABLE Precios
    ADD CONSTRAINT check_Precios_Precio CHECK (Precio >= $0 AND Precio <= $8000);

--Regla CObertura
--Regla estado
ALTER TABLE Medicos
    ADD CONSTRAINT check_Medicos_Activo CHECK (Activo IN (1,0));