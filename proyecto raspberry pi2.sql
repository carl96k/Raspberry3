create table profesores(
  id_profesor number(10) constraint profesores_pk primary key,
  nombre varchar2(15) constraint profesores_nnl not null,
  apellido1 varchar2(25)constraint profesores_nn2 not null ,
  apellido2 varchar2(25) constraint profesores_nn3 not null
);

create table alumnos(
  id_alumno number(10) constraint alumnos_pk primary key,
  nombre varchar2(15) constraint alumnos_nnl not null,
  apellido1 varchar2(25) constraint alumnos_nn2 not null,
  apellido2 varchar2(25)constraint alumnos_nn3 not null,
  curso_escolar varchar2(9)
);

create table modulos(
  cod_modulo number(10) constraint modulos_pk primary key,
  nombre varchar2(40) constraint modulos_nnl not null,
  dia_semana char(9),
  hora_inicio timestamp,
  hora_fin timestamp,
  curso number(1),
  id_profesor number(8) constraint modulos_fk1 references profesores (id_profesor),
  id_alumno number(8) constraint modulos_fk2 references alumnos (id_alumno)
);

create table tareas(
  cod_tarea number(10) constraint tareas_pk primary key,
  titulo varchar2(40),
  descripcion varchar2(60),
  cod_modulo number(10)
  constraint tareas_fk references modulos (cod_modulo)
);

create table notas(
  id_alumno number(10),
  cod_tarea number(10),
  nota number(2,1),
  constraint notas_pk primary key (id_alumno,cod_tarea)
  constraint notas_fk1 references alumnos (id_alumno)
  constraint notas_fk2 references tareas (cod_tarea)
);

create table aulas(
  cod_aula number(10) constraint aulas_pk primary key,
  descripcion varchar2(20),
  cod_modulo number(10)
  constraint aulas_fk references modulos (cod_modulo)
);

create table materiales(
  cod_material number(10) constraint materiales_pk PRIMARY KEY,
  nombre varchar2(20) constraint materiales_nnl not null,
  cod_aula number(10)
  constraint materiales_fk references aulas (cod_aula)
);


