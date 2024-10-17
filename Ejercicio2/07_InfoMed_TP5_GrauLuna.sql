/* 7. Cantidad de pacientes que viven en cada ciudad. */ 

SELECT ciudad, COUNT(*) AS cantidad
  FROM pacientes
  GROUP BY ciudad
  ORDER BY cantidad DESC;
