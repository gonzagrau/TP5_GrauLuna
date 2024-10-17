/* 13. Obtener el nombre de los pacientes junto con la cantidad total
de recetas que han recibido.*/

SELECT p.id_paciente, p.nombre, COUNT(r.id_receta) as cant_recetas
FROM pacientes p JOIN recetas r 
ON p.id_paciente = r.id_paciente
GROUP BY p.id_paciente, p.nombre;
