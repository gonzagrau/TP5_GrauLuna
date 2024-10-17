/* 10. Obtener todas las conultas médicas realizadas por el médico con 
ID igual a 3 en el mes de agosto de 2024 */ 

SELECT *
  FROM consultas
  WHERE id_medico = 3
  AND EXTRACT(MONTH FROM DATE(fecha)) = 8
  AND EXTRACT(YEAR FROM DATE(fecha)) = 2024;
