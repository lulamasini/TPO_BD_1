--Regla sigla
ALTER TABLE Planes 
    ADD CONSTRAINT regla_Planes_sigla CHECK( Sigla NOT like '%[0-9]%');
    
--Regla dni
ALTER TABLE Pacientes
    ADD CONSTRAINT regla_Pacientes_dni CHECK(isnumeric(DNI));

--Regla Categoria
ALTER TABLE ObraSocial
    ADD CONSTRAINT regla_ObraSocial_categoria CHECK (Categoria IN ('os', 'pp'));
                                                                  
--Regla sexo
ALTER TABLE Pacientes
    ADD CONSTRAINT regla_Pacientes_sexo CHECK (Sexo IN ('f','m'));
ALTER TABLE Medicos
    ADD CONSTRAINT regla_Pacientes_sexo CHECK (Sexo IN ('f','m'));

--Regla fecha de estudio(mañana le voy a preguntar bien al profesor)
ALTER TABLE Registros 
    ADD CONSTRAINT regla_Registros_fechaEstudio CHECK ( datediff(dd,Fecha,getdate())>1 AND abs(datediff(dd,Fecha,getdate())-30)<31);                                                         
                                                        
--Regla fecha de nacimiento("")
ALTER TABLE Pacientes 
    ADD CONSTRAINT regla_pacientes_Nacimiento CHECK (20<cast(datediff(dd, Nacimiento ,GETDATE()) / 365.25 as int)< 80);                                                                 

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
