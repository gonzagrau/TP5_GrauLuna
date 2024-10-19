/* 15. Obtener el nombre del paciente junto con la fecha de su última consulta y el
diagnóstico asociado.*/

CREATE VIEW ultima_consulta AS
  SELECT p.nombre, MAX(c.fecha) AS ultima_consulta, c.diagnostico
  FROM pacientes p
  JOIN consultas c ON p.id_paciente = c.id_paciente
  GROUP BY p.nombre, c.diagnostico;

