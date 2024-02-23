-- Extraer el apellido y el nombre de un empleado separados por comas
SELECT
    SUBSTR(NOMBRE, 1, INSTR(NOMBRE, ',', 1)-1) AS APELLIDOS,
    SUBSTR(NOMBRE, INSTR(NOMBRE, ',', 1)+1)    AS NOMBRE
FROM
    EMPLEADO
WHERE
    EMPLEADO_ID=10;