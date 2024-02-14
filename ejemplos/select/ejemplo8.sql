-- Queremos obtener los nombres de los empleados sobre los que no tenemos almacenada su edad.

SELECT nombre
FROM empleado
WHERE edad IS NULL;