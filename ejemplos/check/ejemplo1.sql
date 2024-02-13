/*
 * En esta tabla aparecen dos restricciones check una a nivel de columna para controlar que el sexo de un empleado
 * pueda tomar únicamente los valores V o M y otra a nivel de tabla que permite controlar que un empleado tenga
 * cumplidos 18 años cuando ingresa en la empresa.
*/
drop table EMPLEADO cascade constraint;

create table EMPLEADO (
    ID_Empleado number(4),
    Nombre varchar2(50),
    Sexo char constraint CK_Sexo check(sexo in('H','M')),
    Nacimiento date,
    FechaIngreso date,
    constraint PK_Empleado primary key (ID_Empleado),
    constraint MayoriaEdad check((MONTHS_BETWEEN(FechaIngreso,Nacimiento)/12)>=18)
);