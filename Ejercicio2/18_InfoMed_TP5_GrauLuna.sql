SELECT Medicos.nombre AS nombre_medico, COUNT(DISTINCT Consultas.id_paciente) AS total_pacientes
FROM Medicos
LEFT JOIN Consultas ON Consultas.id_medico = Medicos.id_medico
GROUP BY Medicos.nombre
ORDER BY total_pacientes DESC;