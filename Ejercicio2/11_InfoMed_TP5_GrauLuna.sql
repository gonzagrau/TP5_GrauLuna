/* 11. Obtener el nombre de los pacientes junto con la fecha y el diagnóstico de todas las consultas médicas realizadas en agosto del 2024.*/

SELECT c.id_consulta, p.nombre, c.fecha, c.diagnostico
  FROM consultas c JOIN pacientes p
  ON c.id_paciente = p.id_paciente
  WHERE EXTRACT(MONTH FROM DATE(fecha)) = 8
  AND EXTRACT(YEAR FROM DATE(fecha)) = 2024;
