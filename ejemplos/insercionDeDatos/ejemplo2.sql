/*
 * Si no quisiéramos dar valores a todas las columnas especificamos en la sentencia sobre que
 * columnas queremos añadir valores. Supongamos que el médico todavía no tiene decidido el
 * precio para el acto médico ‘ACTOMEDICO2’. En este caso la inserción la haríamos así:
*/

INSERT INTO ACTOMEDICO (
    ID_ACTOMEDICO,
    DESCRIPCION
) VALUES (
    2,
    'Acto Medico 2'
);

/* Tambien se puede hacer de esta forma, aunque no es una buena pracica, ya que estamos
 * asumiendo que el orden de columanas es el correcto y puede que en ocasiones no sea asi
*/

INSERT INTO ACTOMEDICO VALUES (
    4,
    'Acto Medico 4',
    NULL
);