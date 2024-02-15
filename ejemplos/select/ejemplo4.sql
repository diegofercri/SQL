-- Obtener el nombre y edad para aquellos empleados que tengan más de 40 años ordenados de mayor a menor edad.

SELECT
    NOMBRE,
    EDAD
FROM
    EMPLEADO
WHERE
    EDAD>40
ORDER BY
    EDAD DESC;