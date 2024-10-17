/* Cantidadd de pacientes por serxo que viven en cada ciudad. */ 
SELECT ciudad, descripcion, COUNT(*) AS cantidad
  FROM pacientes JOIN sexobiologico
  ON pacientes.id_sexo = sexobiologico.id_sexo
  GROUP BY ciudad, descripcion;

