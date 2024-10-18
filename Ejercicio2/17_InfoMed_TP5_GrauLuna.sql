SELECT m.nombre, COUNT(r.id_receta) AS total_recetas, med.nombre AS nombre_medico, p.nombre AS nombre_paciente
FROM Recetas r
JOIN Medicamentos m ON r.id_medicamento = m.id_medicamento
JOIN Medicos med ON r.id_medico = med.id_medico
JOIN Pacientes p ON r.id_paciente = p.id_paciente
GROUP BY m.nombre, med.nombre, p.nombre
ORDER BY total_recetas DESC;