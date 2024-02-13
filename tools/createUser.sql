create user &&usuario identified by Azarquiel2023
default tablespace sampleschema
quota 10M on sampleschema;
grant connect,resource to &usuario;
