-- Seleccionar los nombres de los empleados cuya tercera letra sea una C. (Cuidado porque se distinguen entre mayúsculas y minúsculas).

SELECT NOMBRE
FROM EMPLEADO
WHERE
    NOMBRE LIKE '__C%'
    OR NOMBRE LIKE '__c%';