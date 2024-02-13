/* 
 * Las siguientes definiciones de tablas corresponderían a un esquema en el cual una persona puede tener varias aficiones
 * y una afición puede ser compartida por varias personas.
*/

drop table PERSONA cascade constraint;
drop table AFICION cascade constraint;
drop table PERSONA_AFICION cascade constraint;

create table PERSONA (
    ID_Persona number(4),
    Nombre varchar2(50),
    constraint PK_Persona primary key (ID_Persona)
);

create table AFICION (
    ID_Aficion number(4),
    Descripcion varchar2(50),
    constraint PK_Aficion primary key (ID_Aficion)
);

create table PERSONA_AFICION (
    ID_Persona number(4),
    ID_Aficion number(4),
    constraint PK_Persona_Aficion primary key (ID_Persona, ID_Aficion),
    constraint FK_Persona foreign key (ID_Persona) references PERSONA(ID_Persona), 
    constraint FK_Aficion foreign key (ID_Aficion) references AFICION(ID_Aficion)
);