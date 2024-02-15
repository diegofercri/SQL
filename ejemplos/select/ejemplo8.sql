-- Queremos obtener los nombres de los empleados sobre los que no tenemos almacenada su edad.

SELECT
    NOMBRE
FROM
    EMPLEADO
WHERE
    EDAD IS NULL;