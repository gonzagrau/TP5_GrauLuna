/* Obtener la cantidad de recetas emitidas por cada médico */ 

SELECT m.id_medico, nombre, COUNT(id_receta) AS cantidad
FROM medicos m LEFT JOIN recetas
ON m.id_medico = recetas.id_medico
GROUP BY m.id_medico, nombre
ORDER BY cantidad DESC;
