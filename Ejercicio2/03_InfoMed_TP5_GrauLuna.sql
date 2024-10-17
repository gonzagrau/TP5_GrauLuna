/* 3. La paciente, “Luciana Gómez”, ha cambiado de dirección.
Antes vivía en “Avenida Las Heras 121” en “Buenos Aires”, pero ahora vive
en “Calle Corrientes 500” en “Buenos Aires”.
Actualizar la dirección de este paciente en la base de datos.*/

UPDATE pacientes
SET calle = 'Calle Corrientes', numero = 500
WHERE nombre = 'Luciana Gómez';
