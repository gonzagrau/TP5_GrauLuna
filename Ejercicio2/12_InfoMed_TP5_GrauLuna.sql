/* 12. Obtener el nombre de los medicamentos prescritos más de una vez
por el médico con ID igual a 2.*/

SELECT m.nombre, r.id_medico, COUNT(r.id_receta)
FROM medicamentos m JOIN recetas r 
ON r.id_medicamento = m.id_medicamento
WHERE r.id_medico = 2
GROUP BY m.nombre, r.id_medico
HAVING COUNT(r.id_receta) > 1;
