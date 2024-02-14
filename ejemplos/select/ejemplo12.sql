-- Obtener el nombre de los empleados hospedados en ‘CRAMMER’ con una subconsulta

SELECT
    NOMBRE
FROM
    EMPLEADO
WHERE
    ALOJAMIENTO=(
        SELECT
            ALOJAMIENTO_ID
        FROM
            ALOJAMIENTO
        WHERE
            ALOJAMIENTO='CRAMMER'
    );