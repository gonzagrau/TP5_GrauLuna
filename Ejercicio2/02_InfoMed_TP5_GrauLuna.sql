/* 2. Se tiene la fecha de nacimiento de los pacientes.
Se desea calcular la edad de los pacientes y almacenarla 
de forma dinámica en el sistema ya que es un valor típicamente consultado
junto con otra información relevante del paciente.*/

ALTER TABLE pacientes
ADD COLUMN IF NOT EXISTS edad INT;

UPDATE pacientes
SET edad = EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento));

CREATE INDEX IF NOT EXISTS idx_edades
ON pacientes (edad); 
