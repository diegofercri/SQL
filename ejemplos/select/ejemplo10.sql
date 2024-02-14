/*
 * Supongamos que queremos obtener el nombre del empleado y el nombre del alojamiento en el que están hospedados.
 * Para obtener esta información se necesitan la tabla empleado y la tabla alojamiento.
*/

SELECT nombre,alojamiento.alojamiento
FROM empleado,alojamiento
WHERE empleado.alojamiento=alojamiento_id;

/*
 * Podemos escribir esta misma consulta mediante lo que comúnmente se denomina “Inner Join”,
 * haciendo uso del operador Join. La consulta anterior se escribiría así:
*/

SELECT nombre,alojamiento.alojamiento
FROM empleado JOIN alojamiento 
ON empleado.alojamiento=alojamiento_id;