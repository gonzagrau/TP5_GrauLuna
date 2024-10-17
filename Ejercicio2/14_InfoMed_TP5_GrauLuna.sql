/* 14. Obtener el nombre del medicamento más recetado junto con la cantidad de recetas
emitidas para ese medicamento.*/

CREATE TABLE ultima_consulta AS
SELECT p.nombre, MAX(c.fecha) AS ultima_consulta, c.diagnostico
FROM pacientes p
JOIN consultas c ON p.id_paciente = c.id_paciente
GROUP BY p.nombre, c.diagnostico;

