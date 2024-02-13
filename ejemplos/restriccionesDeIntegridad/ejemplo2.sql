drop table CLIENTE cascade constraints;
create table CLIENTE (
    ID_Cliente number(10),
    DNI varchar2(9),
    Nombre varchar2(50),
    FechaAlta date default sysdate,
    constraint PK_Cliente primary key (ID_Cliente),
    constraint UQ_DNI_Cliente unique (DNI)
);