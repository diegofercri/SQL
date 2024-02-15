-- Obtener los nombres y edades de los empleados cuya edad este sea mayor o igual que 40 y menor o igual que 50.

SELECT
    NOMBRE,
    EDAD
FROM
    EMPLEADO
WHERE
    EDAD BETWEEN 40 AND 50;

-- Esa consulta la podíamos haber escrito también así:

SELECT
    NOMBRE,
    EDAD
FROM
    EMPLEADO
WHERE
    EDAD>=40
    AND EDAD<=50;