/* 6. Obtener el nombre y la dirección de los pacientes 
que viven en Buenos Aires.*/
SELECT nombre, calle || ' ' || numero AS direccion
FROM pacientes
WHERE ciudad = 'Buenos Aires';
