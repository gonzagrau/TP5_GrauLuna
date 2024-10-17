/* 5. Puede pasar que haya inconsistencias en la forma en la que están
escritos los nombres de las ciudades, ¿cómo se corrige esto?
Agregar la query correspondiente.*/

CREATE EXTENSION IF NOT EXISTS pg_trgm;

UPDATE pacientes
SET ciudad = 'Buenos Aires'
WHERE similarity(ciudad, 'Buenos Aires') > 0.3;

UPDATE pacientes
SET ciudad = 'Rosario'
WHERE similarity(ciudad, 'Rosario') > 0.3;

UPDATE pacientes
SET ciudad = 'Sante Fé'
WHERE similarity(ciudad, 'Sante Fé') > 0.3;

UPDATE pacientes
SET ciudad = 'Córdoba'
WHERE similarity(ciudad, 'Córdoba') > 0.3;

UPDATE pacientes
SET ciudad = 'Mendoza'
WHERE similarity(ciudad, 'Mendoza') > 0.3;
