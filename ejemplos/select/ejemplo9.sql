-- Obtener los nombres y edad de todos los empleados cuya edad es 22, 23, 25, o 35 años.

SELECT nombre,edad
FROM empleado
WHERE edad IN (22, 23, 25, 35)
ORDER BY edad;