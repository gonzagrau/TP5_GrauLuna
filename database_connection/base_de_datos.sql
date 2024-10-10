CREATE TABLE SexoBiologico (
    id_sexo INT PRIMARY KEY,
    descripcion VARCHAR(50) UNIQUE
);
INSERT INTO SexoBiologico (id_sexo, descripcion)
VALUES
(1, 'Masculino'),
(2, 'Femenino');


CREATE TABLE Pacientes (
    id_paciente SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    fecha_nacimiento DATE,
    id_sexo INT,
    numero VARCHAR(10),
    calle VARCHAR(100),
    ciudad VARCHAR(100),
    FOREIGN KEY (id_sexo) REFERENCES SexoBiologico(id_sexo)
);



INSERT INTO Pacientes (id_paciente, nombre, fecha_nacimiento, id_sexo, numero, calle, ciudad)
VALUES
(DEFAULT, 'Luciana Gómez', '1991-07-12', 2, '121', 'Avenida Las Heras', 'Bs Aires'),
(DEFAULT, 'Ricardo López', '1984-03-22', 1, '434', 'Calle San Juan', 'Rosario'),
(DEFAULT, 'Clara Fernández', '1990-09-15', 2, '569', 'Calle San Juan', 'Rosario'),
(DEFAULT, 'Marcos Ramírez', '1983-11-10', 1, '250', 'Avenida Pellegrini', 'Santa Fe'),
(DEFAULT, 'Julieta Rodríguez', '1985-06-18', 2, '845', 'Calle Mitre', 'buenos aires'),
(DEFAULT, 'Santiago Pérez', '1979-02-09', 1, '1103', 'Calle Balcarce', 'Buenos aires'),
(DEFAULT, 'Florencia Álvarez', '1994-04-21', 2, '102', 'Calle San Martín', 'Cordoba'),
(DEFAULT, 'Esteban Muñoz', '1993-07-30', 1, '572', 'Avenida Colón', 'Córodba'),
(DEFAULT, 'Gabriela Vázquez', '1987-08-25', 2, '329', 'Calle Caseros', 'Mendzoa'),
(DEFAULT, 'Fernando García', '1990-01-14', 1, '688', 'Calle Moreno', 'Mendoza'),
(DEFAULT, 'María Luisa Torres', '1982-12-07', 2, '433', 'Calle Belgrano', 'Córdoba'),
(DEFAULT, 'Joaquín Castillo', '1995-03-29', 1, '251', 'Calle Rioja', 'Rosario'),
(DEFAULT, 'Micaela Gutiérrez', '1988-05-14', 2, '776', 'Avenida Sarmiento', 'Buenos Aires'),
(DEFAULT, 'Nicolás Morales', '1992-10-11', 1, '923', 'Calle Rivadavia', 'Buenos   Aires'),
(DEFAULT, 'Carolina Figueroa', '1985-09-05', 2, '135', 'Calle Rivadavia', 'Buenos Aires '),
(DEFAULT, 'Gustavo Suárez', '1978-07-23', 1, '311', 'Calle Independencia', 'Córdoba'),
(DEFAULT, 'Paula Medina', '1997-02-17', 2, '147', 'Avenida Colón', 'Córdoba'),
(DEFAULT, 'Agustín Romero', '1991-05-21', 1, '853', 'Calle 25 de Mayo', 'Buenos Aiers'),
(DEFAULT, 'Sofía Maldonado', '1994-12-18', 2, '492', 'Avenida Libertador', '  Buenos Aires'),
(DEFAULT, 'Facundo Paredes', '1983-06-16', 1, '610', 'Avenida Costanera', 'Rosario'),
(DEFAULT, 'Claudia Rojas', '1989-03-04', 2, '987', 'Calle Urquiza', 'Mendoza'),
(DEFAULT, 'Juan Pérez', '1987-09-13', 1, '3495', 'Avenida Libertador', 'Mendoza'), 
(DEFAULT, 'Juan Pérez', '1995-04-22', 1, '1289', 'Calle Mitre', 'Córdoba');


CREATE TABLE Especialidades (
    id_especialidad SERIAL PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE
);

INSERT INTO Especialidades (nombre) VALUES
('Pediatría'),
('Clínica General'),
('Cardiología'),
('Dermatología'),
('Neurología'),
('Ginecología'),
('Oftalmología'),
('Psicología'),
('Traumatología'),
('Endocrinología'),
('Oncología'),
('Odontología'),
('Cirugía General'),
('Ortopedia'),
('Urología');

CREATE TABLE Medicos (
    id_medico SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    especialidad_id INT,
    telefono VARCHAR(15),
    email VARCHAR(100),
	matricula INT,
    FOREIGN KEY (especialidad_id) REFERENCES Especialidades(id_especialidad)
);

INSERT INTO Medicos (nombre, especialidad_id, telefono, email, matricula) 
VALUES
('Dr. Carlos García', 1, '011-1234567', 'carlosgarcia@gmail.com', '12345'),
('Dra. Laura Fernández', 1, '011-6783456', 'laura.fernandez@medicos.com', '23456'),
('Dr. Pedro Ruiz', 1, '011-3459876', 'pedro.ruiz@medicos.com', '34567'),
('Dra. Gabriela Fernández', 2, '011-2345678', 'gabriela.fernandez@yahoo.com', '45678'),
('Dr. José Álvarez', 2, '011-3456789', 'jose.alvarez@gmail.com', '56789'),
('Dr. Martín Sánchez', 3, '011-3456789', 'martin.sanchez@outlook.com', '67890'),
('Dra. Carolina Méndez', 3, '011-1234568', 'carolina.mendez@outlook.com', '78901'),
('Dra. Lucía Rodríguez', 4, '011-4567890', 'lucia.rodriguez@hotmail.com', '89012'),
('Dr. Nicolás Gutiérrez', 4, '011-4567891', 'nicolas.gutierrez@yahoo.com', '90123'),
('Dra. Mónica Silva', 5, '011-2345670', 'monica.silva@gmail.com', '01234'),
('Dr. Andrés Vázquez', 6, '011-7890124', 'andres.vazquez@medicos.com', '12346'),
('Dra. Valentina López', 6, '011-6789012', 'valentina.lopez@gmail.com', '23457'),
('Dr. Sebastián Pérez', 7, '011-7890123', 'sebastianperez@yahoo.com', '34568'),
('Dra. Alicia Ramírez', 7, '011-9012346', 'alicia.ramirez@hotmail.com', '45679'),
('Dr. Mateo González', 9, '011-9012345', 'mateo.gonzalez@medicos.com', '56780'),
('Dra. Marta Ávila', 9, '011-6789013', 'marta.avila@outlook.com', '67891'),
('Dr. Pablo Martínez', 5, '011-5678901', 'pablo.martinez@medicos.com', '78902'),
('Dr. Juan Muñoz', 10, '011-1234569', 'juan.munoz@gmail.com', '89013');


CREATE TABLE Consultas (
    id_consulta SERIAL PRIMARY KEY,
    id_paciente INT,
    id_medico INT,
    fecha DATE,
    diagnostico TEXT,
    tratamiento TEXT,
	snomed_codigo BIGINT,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico),
	CONSTRAINT unique_consulta UNIQUE (fecha, id_medico, id_paciente, snomed_codigo)
    
);

INSERT INTO Consultas (fecha, id_medico, id_paciente, diagnostico, snomed_codigo)
VALUES
('2024-07-01', 1, 7, 'Asma', '195967001'), 
('2024-07-03', 2, 15, 'Gastritis', '233604007'), 
('2024-07-05', 3, 4, 'Presión arterial alta', '38341003'), 
('2024-07-06', 4, 12, 'Acné', '87276001'), 
('2024-07-09', 2, 5, 'Dolor abdominal', '21522001'),  
('2024-07-11', 8, 17, 'Trastorno de pánico', '31918002'), 
('2024-07-13', 7, 9, 'Glaucoma', '23986001'), 
('2024-07-15', 8, 11, 'Depresión', '35489007'), 
('2024-07-18', 9, 2, 'Fractura de brazo', '263204007'), 
('2024-07-20', 2, 19, 'Infección de garganta', '444814009'), 
('2024-07-25', 10, 13, 'Diabetes tipo 2', '44054006'),  
('2024-07-26', 8, 21, 'Dolor de cabeza crónico', '162873000'), 
('2024-07-27', 2, 10, 'Gripe', '6142004'), 
('2024-07-28', 4, 14, 'Acné severo', '24046008'), 
('2024-07-29', 3, 6, 'Hipertensión', '38341003'),  
('2024-07-30', 7, 20, 'Cataratas', '193570009'), 
('2024-08-01', 1, 8, 'Bronquitis', '32398004'),  
('2024-08-02', 9, 11, 'Luxación de hombro', '1806006'),  
('2024-08-03', 10, 19, 'Sinusitis', '36971009'), 
('2024-08-04', 9, 22, 'Fractura de pierna', '263204007'),  
('2024-08-05', 8, 18, 'Ansiedad', '48694002'), 
('2024-08-06', 9, 7, 'Luxación de hombro', '1806006'),  
('2024-08-07', 4, 9, 'Eccema', '43116000'), 
('2024-08-08', 3, 16, 'Dolor de pecho', '29857009'), 
('2024-08-09', 2, 3, 'Gastritis', '233604007'),  
('2024-08-10', 1, 12, 'Asma crónico', '195967001'),  
('2024-08-11', 10, 14, 'Infección de oído', '65363002'), 
('2024-08-12', 9, 15, 'Fractura de muñeca', '125605004'), 
('2024-08-13', 8, 17, 'Trastorno bipolar', '13746004'), 
('2024-08-14', 7, 4, 'Degeneración macular', '95695004'),  
('2024-08-15', 7, 5, 'Problemas de visión', '422587007'),  
('2024-08-16', 3, 18, 'Hipertensión arterial', '59621000'), 
('2024-08-17', 8, 10, 'Trastorno obsesivo-compulsivo', '19199006'), 
('2024-08-18', 9, 3, 'Fractura de tobillo', '81671005'), 
('2024-08-19', 8, 20, 'Depresión severa', '35489007'),  
('2024-08-20', 4, 9, 'Psoriasis', '9014002'),  
('2024-08-21', 8, 15, 'Trastorno bipolar', '13746004'),  
('2024-08-22', 9, 12, 'Luxación de codo', '1806006'), 
('2024-08-23', 1, 6, 'Bronquitis crónica', '32398004'), 
('2024-08-24', 2, 11, 'Gastritis crónica', '233604007'),  
('2024-08-25', 8, 19, 'Ansiedad generalizada', '48694002'), 
('2024-08-26', 4, 22, 'Dermatitis atópica', '43116000'),  
('2024-08-27', 8, 13, 'Trastorno de pánico', '31918002'), 
('2024-08-28', 7, 16, 'Cataratas', '193570009'),  
('2024-08-29', 3, 5, 'Dolor de pecho', '29857009'), 
('2024-08-30', 9, 18, 'Fractura de fémur', '263204007'),  
('2024-08-31', 10, 2, 'Infección de oído crónica', '65363002'), 
('2024-09-01', 1, 7, 'Asma severa', '195967001'),  
('2024-09-02', 9, 14, 'Fractura de muñeca', '125605004'),  
('2024-09-03', 8, 17, 'Trastorno bipolar grave', '13746004'),  
('2024-09-04', 2, 8, 'Sinusitis crónica', '36971009'), 
('2024-09-05', 4, 9, 'Dermatitis leve', '43116000'),  
('2024-09-06', 8, 11, 'Trastorno de ansiedad generalizada', '48694002'),  
('2024-09-07', 7, 15, 'Cataratas avanzadas', '193570009'), 
('2024-09-08', 9, 20, 'Fractura de clavícula', '263204007'), 
('2024-09-09', 2, 3, 'Infección de garganta crónica', '444814009'), 
('2024-09-10', 1, 18, 'Resfriado común', '82272006'),  
('2024-09-11', 8, 5, 'Dolor de cabeza tensional', '162873000'), 
('2024-09-12', 4, 22, 'Psoriasis grave', '9014002'),  
('2024-09-13', 8, 6, 'Depresión moderada', '35489007'),  
('2024-09-14', 9, 19, 'Luxación de hombro crónica', '1806006');  

CREATE TABLE Medicamentos (
    id_medicamento SERIAL PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE
);

INSERT INTO Medicamentos (nombre) VALUES
('Amoxicilina'),
('Omeprazol'),
('Losartán'),
('Hidrocortisona'),
('Férula'),
('Terapia cognitivo-conductual'),
('Colirio para glaucoma'),
('Sertralina'),
('Reposo absoluto'),
('Amoxicilina + ácido clavulánico'),
('Paracetamol'),
('Ibuprofeno'),
('Aspirina'),
('Atorvastatina'),
('Metformina'),
('Lisinopril'),
('Ciprofloxacino'),
('Diazepam'),
('Clonazepam'),
('Insulina');

CREATE TABLE Recetas (
    id_receta SERIAL PRIMARY KEY,
    fecha DATE,
    id_medico INT,
    id_paciente INT,
    id_medicamento INT,
    descripcion TEXT,
    FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico) ON DELETE CASCADE,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente) ON DELETE CASCADE,
    FOREIGN KEY (id_medicamento) REFERENCES Medicamentos(id_medicamento),
	CONSTRAINT unique_receta UNIQUE (fecha, id_medico, id_paciente, id_medicamento)
   
);


INSERT INTO Recetas (fecha, id_medico, id_paciente, id_medicamento, descripcion) 
VALUES
('2024-07-01', 1, 7, 1, 'Tomar 1 comprimido de Amoxicilina cada 12 horas por 7 días'),
('2024-07-03', 2, 15, 2, 'Tomar 1 comprimido de Omeprazol cada mañana por 14 días'),
('2024-07-05', 3, 4, 3, 'Tomar 1 comprimido de Losartán cada mañana indefinidamente'),
('2024-07-06', 4, 12, 4, 'Aplicar Hidrocortisona dos veces al día por 10 días'),
('2024-07-09', 9, 5, 5, 'Usar férula durante 3 semanas'),
('2024-07-11', 8, 17, 6, 'Terapia cognitivo-conductual 1 vez por semana durante 8 semanas'),
('2024-07-13', 7, 9, 7, 'Aplicar colirio para glaucoma una vez al día indefinidamente'),
('2024-07-15', 8, 11, 8, 'Tomar 1 comprimido de Sertralina cada noche por 6 meses'),
('2024-07-18', 9, 2, 9, 'Reposo absoluto por 6 semanas'),
('2024-07-20', 2, 19, 10, 'Tomar 1 comprimido de Amoxicilina + ácido clavulánico cada 12 horas por 10 días'),
('2024-07-25', 10, 13, 14, 'Tomar 1 comprimido de Atorvastatina cada mañana'),
('2024-07-26', 8, 21, 12, 'Tomar 1 comprimido de Ibuprofeno cada 8 horas por 5 días'),
('2024-07-27', 2, 10, 1, 'Tomar 1 comprimido de Amoxicilina cada 8 horas por 7 días'),
('2024-07-28', 4, 14, 4, 'Aplicar Hidrocortisona dos veces al día por 14 días'),
('2024-07-29', 3, 6, 3, 'Tomar 1 comprimido de Losartán cada mañana indefinidamente'),
('2024-07-30', 7, 20, 7, 'Aplicar colirio para glaucoma una vez al día'),
('2024-08-01', 1, 8, 1, 'Tomar 1 comprimido de Amoxicilina cada 12 horas por 5 días'),
('2024-08-02', 9, 11, 5, 'Usar férula durante 4 semanas'),
('2024-08-03', 10, 19, 10, 'Tomar 1 comprimido de Amoxicilina + ácido clavulánico cada 12 horas por 10 días'),
('2024-08-04', 9, 22, 5, 'Usar férula durante 6 semanas y fisioterapia'),
('2024-08-05', 8, 18, 8, 'Tomar 1 comprimido de Sertralina cada mañana por 3 meses'),
('2024-08-06', 9, 7, 9, 'Reposo absoluto por 6 semanas'),
('2024-08-07', 4, 9, 4, 'Aplicar Hidrocortisona 3 veces al día'),
('2024-08-08', 3, 16, 3, 'Tomar 1 comprimido de Losartán cada día por 1 año'),
('2024-08-09', 2, 3, 2, 'Tomar Omeprazol cada mañana por 1 mes'),
('2024-08-10', 1, 12, 11, 'Tomar 1 comprimido de Paracetamol cada 8 horas'),
('2024-08-11', 10, 14, 10, 'Tomar Amoxicilina + ácido clavulánico cada 12 horas por 5 días'),
('2024-08-12', 9, 15, 5, 'Usar férula durante 3 semanas y reposo'),
('2024-08-13', 8, 17, 8, 'Tomar 1 comprimido de Sertralina cada mañana por 6 meses'),
('2024-08-14', 7, 4, 7, 'Aplicar colirio para glaucoma cada noche');
