/*
 * En esta tabla aparecen dos restricciones check una a nivel de columna para controlar que el sexo de un empleado
 * pueda tomar únicamente los valores V o M y otra a nivel de tabla que permite controlar que un empleado tenga
 * cumplidos 18 años cuando ingresa en la empresa.
*/
DROP TABLE EMPLEADO CASCADE CONSTRAINT;

CREATE TABLE EMPLEADO (
    ID_EMPLEADO NUMBER(4),
    NOMBRE VARCHAR2(50),
    SEXO CHAR CONSTRAINT CK_SEXO CHECK(SEXO IN('H', 'M')),
    NACIMIENTO DATE,
    FECHAINGRESO DATE,
    CONSTRAINT PK_EMPLEADO PRIMARY KEY (ID_EMPLEADO),
    CONSTRAINT MAYORIAEDAD CHECK((MONTHS_BETWEEN(FECHAINGRESO, NACIMIENTO)/12)>=18)
);