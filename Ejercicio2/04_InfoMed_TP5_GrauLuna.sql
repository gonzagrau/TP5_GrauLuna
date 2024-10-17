/* 4. Seleccionar el nombre y la matrícula de cada médico cuya 
especialidad sea identificada por el id 4.*/

SELECT m.nombre, m.matricula, e.nombre
FROM medicos m JOIN especialidades e
ON m.especialidad_id = e.id_especialidad
WHERE e.id_especialidad = 4;
