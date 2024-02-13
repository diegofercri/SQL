drop table CLIENTE cascade constraints;
create table CLIENTE (
    ID_Cliente number(10) constraint PK_Cliente primary key,
    DNI varchar2(9) constraint UQ_DNI_Cliente unique,
    Nombre varchar2(50),
    FechaAlta date default sysdate
);