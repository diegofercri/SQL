-- Obtener los nombres y edades de los empleados cuya edad este sea mayor o igual que 40 y menor o igual que 50.

SELECT nombre,edad FROM empleado WHERE edad BETWEEN 40 AND 50;

-- Esa consulta la podíamos haber escrito también así:

SELECT nombre,edad FROM empleado WHERE edad>=40 AND edad<=50;