/* 1. cuando se realizan consultas sobre la tabla paciente 
agrupando por ciudad los tiempos de respuesta son demasiado largos.
Proponer mediante una query sql una solución a este problema.*/
CREATE INDEX IF NOT EXISTS idx_ciudades 
ON pacientes (ciudad);
