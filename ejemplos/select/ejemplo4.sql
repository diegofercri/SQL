-- Obtener el nombre y edad para aquellos empleados que tengan más de 40 años ordenados de mayor a menor edad.

SELECT nombre,edad FROM empleado WHERE edad>40 ORDER BY edad DESC;