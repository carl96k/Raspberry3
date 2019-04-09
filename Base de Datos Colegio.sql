create table aulas(
  cod_aula number(11) constraint aulas_pk primary key,
  descripcion varchar2(50)
);

insert into aulas(cod_aula, descripcion)
                  VALUES (1,'Aula de Teoria');
insert into aulas VALUES (2,'Aula de Informática');
insert into aulas VALUES (3,'Taller de Hardware´s');
insert into aulas values (4,'Sala de Servidores');
insert into aulas values (5,'Informatica General');

-----------------------------------------------------------------
create table materiales(
  cod_material number(11),
  nombre varchar2(20),
  cod_aula number(11),
  cantidad number (3),
  constraint materiales_Pk PRIMARY KEY (cod_material,cod_aula),
  constraint materiales_Fk foreign key (cod_aula) references aulas
);

insert into materiales(cod_material, nombre, cod_aula,cantidad)
                      VALUES (1,'Pizarra',1,2);
insert into materiales VALUES (2,'Proyector',1,1);
insert into materiales VALUES (3,'Router',1,1);
insert into materiales VALUES (4,'Ordenador',2,25);
insert into materiales VALUES (1,'Pizarras',2,2);
insert into materiales VALUES (2,'Proyector',2,1);
insert into materiales VALUES (3,'Router',2,2);
insert into materiales VALUES (5,'Servidores',4,3);
insert into materiales VALUES (1,'Pizarras',3,2);
insert into materiales VALUES (2,'Proyector',3,1);
insert into materiales VALUES (3,'Router',3,1);
insert into materiales VALUES (4,'Ordenador',3,10);
insert into materiales VALUES (6,'Multimetro digital',3,4);
insert into materiales VALUES (4,'Ordenador',5,40);
insert into materiales VALUES (1,'Pizarra',5,2);
insert into materiales VALUES (3,'Router',5,1);

------------------------------------------------------------------------
create table horarios(
  cod_aula    number(11),
  dia_semana  char CONSTRAINT horarios_ck1 CHECK(dia_semana IN ('L','M','X','J','V')),
  hora_inicio time,
  hora_fin    time,
  cod_modulo number(11),
  cod_curso number(11),

 constraint horarios_Pk primary key (cod_aula,dia_semana,hora_inicio,cod_modulo,cod_curso),
 constraint horarios_Fk foreign key (cod_aula) references aulas,
 constraint horarios_Fk2 foreign key (cod_modulo) references modulos
);

insert into horarios(cod_aula, dia_semana, hora_inicio, hora_fin,cod_modulo,cod_curso)
                     VALUES(2,'L','8:15','9:10',5,1);
insert into horarios VALUES(2,'L','9:10','10:05',5,1);
insert into horarios VALUES(2,'L','10:05','11:00',2,1);
insert into horarios VALUES(2,'L','11:30','12:25',2,1);
insert into horarios VALUES(1,'L','12:25','13:20',4,1);
insert into horarios VALUES(1,'L','13:20','14:15',4,1);
insert into horarios VALUES(2,'M','8:15','9:10',2,1);
insert into horarios VALUES(2,'M','9:10','10:05',2,1);
insert into horarios VALUES(2,'M','10:05','11:00',1,1);
insert into horarios VALUES(2,'M','11:30','12:25',1,1);
insert into horarios VALUES(3,'M','12:25','13:20',3,1);
insert into horarios VALUES(3,'M','13:20','14:15',3,1);
insert into horarios VALUES(1,'X','8:15','9:10',1,1);
insert into horarios VALUES(1,'X','9:10','10:05',1,1);
insert into horarios VALUES(2,'X','10:05','11:00',2,1);
insert into horarios VALUES(2,'X','11:30','12:25',2,1);
insert into horarios VALUES(1,'X','12:25','13:20',5,1);
insert into horarios VALUES(1,'X','13:20','14:15',5,1);
insert into horarios VALUES(1,'J','8:15','9:10',6,1);
insert into horarios VALUES(1,'J','9:10','10:05',2,1);
insert into horarios VALUES(2,'J','10:05','11:00',1,1);
insert into horarios VALUES(2,'J','11:30','12:25',1,1);
insert into horarios VALUES(2,'J','12:25','13:20',5,1);
insert into horarios VALUES(2,'J','13:20','14:15',5,1);
insert into horarios VALUES(1,'V','8:15','9:10',6,1);
insert into horarios VALUES(1,'V','9:10','10:05',6,1);
insert into horarios VALUES(2,'V','10:05','11:00',4,1);
insert into horarios VALUES(2,'V','11:30','12:25',4,1);
insert into horarios VALUES(1,'V','12:25','13:20',2,1);
insert into horarios VALUES(1,'V','13:20','14:15',3,1);
--
insert into horarios(cod_aula, dia_semana, hora_inicio, hora_fin,cod_modulo,cod_curso)
                     VALUES(05,'L','8:15','9:10',10,2);
insert into horarios VALUES(05,'L','9:10','10:05',7,2);
insert into horarios VALUES(01,'L','10:05','11:00',7,2);
insert into horarios VALUES(01,'L','11:30','12:25',11,2);
insert into horarios VALUES(02,'L','12:25','13:20',12,2);
insert into horarios VALUES(02,'L','13:20','14:15',12,2);
insert into horarios VALUES(01,'M','8:15','9:10',9,2);
insert into horarios VALUES(01,'M','9:10','10:05',8,2);
insert into horarios VALUES(01,'M','10:05','11:00',8,2);
insert into horarios VALUES(01,'M','11:30','12:25',7,2);
insert into horarios VALUES(02,'M','12:25','13:20',10,2);
insert into horarios VALUES(02,'M','13:20','14:15',10,2);
insert into horarios VALUES(02,'X','8:15','9:10',11,2);
insert into horarios VALUES(02,'X','9:10','10:05',11,2);
insert into horarios VALUES(01,'X','10:05','11:00',12,2);
insert into horarios VALUES(01,'X','11:30','12:25',12,2);
insert into horarios VALUES(02,'X','12:25','13:20',8,2);
insert into horarios VALUES(02,'X','13:20','14:15',8,2);
insert into horarios VALUES(02,'J','8:15','9:10',8,2);
insert into horarios VALUES(02,'J','9:10','10:05',8,2);
insert into horarios VALUES(01,'J','10:05','11:00',11,2);
insert into horarios VALUES(01,'J','11:30','12:25',11,2);
insert into horarios VALUES(05,'J','12:25','13:20',10,2);
insert into horarios VALUES(05,'J','13:20','14:15',10,2);
insert into horarios VALUES(02,'V','8:15','9:10',11,2);
insert into horarios VALUES(02,'V','9:10','10:05',11,2);
insert into horarios VALUES(01,'V','10:05','11:00',8,2);
insert into horarios VALUES(01,'V','11:30','12:25',12,2);
insert into horarios VALUES(02,'V','12:25','13:20',9,2);
insert into horarios VALUES(02,'V','13:20','14:15',9,2);


------------------------------------------------------------------
create table cursos (
  id_curso     number(11),
  fecha_inicio timestamp,
  fecha_fin    timestamp,
  constraint cursos_Pk primary key (cod_curso,fecha_inicio)
);
insert into cursos (id_curso,fecha_inicio,fecha_fin)
                  values (1,TO_DATE('15/09/2018','dd/mm/yyyy'),TO_DATE('23/06/2019'));
insert into cursos values (2,TO_DATE('15/09/2018'),TO_DATE('23/06/2019');


------------------------------------------------------------------
create table profesores (
  id_profesor int(11) constraint profesores_pk primary key,
  nombre varchar2(15),
  apellido1 varchar2(25),
  apellido2 varchar2(25)
);

insert into profesores (id_profesor, nombre, apellido1, apellido2)
                       values (1,'Jorge','Sanchez','Asenjo');
insert into profesores values (2,'Mari Cruz','Ferrero','Eustaquio');
insert into profesores values (3,'Noelia','Rubio','Martin');
insert into profesores values (4,'Amador','Aparicio','de la Fuente');
insert into profesores values (5,'Jose Ignacio','Garcia','Allende');



------------------------------------------------------------------
create table alumnos(
  id_alumno number(11) constraint alumnos_pk primary key,
  nombre varchar2(15),
  apellido1 varchar2(25),
  apellido2 varchar2(25)
);

insert into alumnos (id_alumno, nombre, apellido1, apellido2)
                    values (1,'Carlos','Arconada','Garcia');
insert into alumnos values(2,'David','Franco','Laguerza');
insert into alumnos values(3,'Sonia','Rivero','Pacheco');
insert into alumnos values(4,'David','Martin','Ruiz');
insert into alumnos values(5,'Pedro','Marin','Pamplet');
insert into alumnos values(6,'Victor','Perez','Valdivieso');
insert into alumnos values(7,'Jon','Garcia','Diaz');
insert into alumnos values(8,'Jaime','Dominguez','Gutierrez');
insert into alumnos values(9,'Gonzalo','Tudela','Sanchez');
insert into alumnos values(10,'Maria','Jimenez','Navarro');
insert into alumnos values(11,'Juan','Torres','Vazquez');
insert into alumnos values(12,'Sergio','Rivero','Ruiz');
insert into alumnos values(13,'Martina','Tejedor','Pacheco');
insert into alumnos values(14,'Tirso','Blanco','Molina');
insert into alumnos values(15,'Marisa','Alvarez','Suarez');
insert into alumnos values(16,'Cesar','Muñoz','Lopez');
insert into alumnos values(17,'Esther','Labajo','Ramos');
insert into alumnos values(18,'Pepe','Torres','Gil');

----------------------------------------------------------------
create table matricular(
  id_alumno number(11),
  cod_modulo number(11),
  id_curso number(11),

constraint matricular_Pk primary key (id_alumno,cod_modulo,id_curso),
constraint matricular_Fk foreign key (id_alumno) references alumnos,
constraint matricular_Fk2 foreign key (cod_modulo,id_curso) references modulos
;

insert into matricular (id_alumno,cod_modulo,id_curso)
                       values(1,1,1);
insert into matricular values (1,2,1);
insert into matricular values (1,3,1);
insert into matricular values (1,4,1);
insert into matricular values (1,5,1);
insert into matricular values (1,6,1);
insert into matricular values (2,1,1);
insert into matricular values (2,2,1);
insert into matricular values (2,3,1);
insert into matricular values (2,4,1);
insert into matricular values (2,5,1);
insert into matricular values (2,6,1);
insert into matricular values (3,1,1);
insert into matricular values (3,2,1);
insert into matricular values (3,3,1);
insert into matricular values (3,4,1);
insert into matricular values (3,5,1);
insert into matricular values (3,6,1);
insert into matricular values (4,1,1);
insert into matricular values (4,2,1);
insert into matricular values (4,3,1);
insert into matricular values (4,4,1);
insert into matricular values (4,5,1);
insert into matricular values (4,6,1);
insert into matricular values (5,1,1);
insert into matricular values (5,3,1);
insert into matricular values (5,4,1);
insert into matricular values (5,5,1);
insert into matricular values (5,6,1);
insert into matricular values (6,1,1);
insert into matricular values (6,2,1);
insert into matricular values (6,3,1);
insert into matricular values (6,4,1);
insert into matricular values (6,5,1);
insert into matricular values (6,6,1);
insert into matricular values (7,1,1);
insert into matricular values (7,2,1);
insert into matricular values (7,3,1);
insert into matricular values (7,4,1);
insert into matricular values (7,5,1);
insert into matricular values (7,6,1);
insert into matricular values (8,1,1);
insert into matricular values (8,3,1);
insert into matricular values (8,4,1);
insert into matricular values (9,5,1);
insert into matricular values (9,6,1);
insert into matricular values (9,1,1);
insert into matricular values (10,2,1);
insert into matricular values (10,3,1);
insert into matricular values (10,4,1);
insert into matricular values (10,5,1);
insert into matricular values (10,6,1);
----
insert into matricular values (11,7,2);
insert into matricular values (11,8,2);
insert into matricular values (11,9,2);
insert into matricular values (11,10,2);
insert into matricular values (11,12,2);
insert into matricular values (12,7,2);
insert into matricular values (12,8,2);
insert into matricular values (12,9,2);
insert into matricular values (12,10,2);
insert into matricular values (12,11,2);
insert into matricular values (12,12,2);
insert into matricular values (13,7,2);
insert into matricular values (13,8,2);
insert into matricular values (13,9,2);
insert into matricular values (13,10,2);
insert into matricular values (13,11,2;
insert into matricular values (13,12,2);
insert into matricular values (14,7,2);
insert into matricular values (14,8,2);
insert into matricular values (14,9,2);
insert into matricular values (14,10,2);
insert into matricular values (14,11,2);
insert into matricular values (14,12,2);
insert into matricular values (15,7,2);
insert into matricular values (15,8,2);
insert into matricular values (15,9,2);
insert into matricular values (15,10,2);
insert into matricular values (15,12,2);
insert into matricular values (16,8,2);
insert into matricular values (16,9,2);
insert into matricular values (16,10,2);
insert into matricular values (16,11,2);
insert into matricular values (16,12,2);
insert into matricular values (16,6,2);
insert into matricular values (17,7,2);
insert into matricular values (17,8,2);
insert into matricular values (17,9,2);
insert into matricular values (17,10,2);
insert into matricular values (17,11,2);
insert into matricular values (17,12,2);
insert into matricular values (18,7,2);
insert into matricular values (18,8,2);
insert into matricular values (18,9,2);
insert into matricular values (18,10,2);
insert into matricular values (18,11,2);
insert into matricular values (18,12,2);
insert into matricular values (18,1,2);
insert into matricular values (18,2,2);



---------------------------------------------------------------
create table modulos (
  cod_modulo number(11) constraint modulos_pk primary key,
  nombre varchar2(40),
  id_curso number(11) constraint modulos_nnl not null,
  fecha_inicio timestamp constraint modulos_nnl not null,
  id_profesor int(11) constraint modulos_nnl2 not null,

  constraint modulos_Fk2 foreign key (id_profesor) references profesores,
  constraint modulos_Fk3 foreign key (id_curso,fecha_inicio) references cursos
);

insert into modulos (cod_modulo,nombre,id_curso,fecha_inicio,id_profesor)
            values (1,'Bases de Datos',1,to_date('15/09/2018'),1);
insert into modulos values(2,'Implantacion de Sistemas Operativos',1,to_date('15/09/2018'),3);
insert into modulos values(3,'Fundamentos Hardware',1,to_date('15/09/2018'),4);
insert into modulos values(4,'Lenguaje de Marcas',1,to_date('15/09/2018'),1);
insert into modulos values(5,'Planificacion y Administracion de Redes',1,to_date('15/09/2018'),4);
insert into modulos values(6,'Formacion y Orientacion Laboral',1,to_date('15/09/2018'),2);
insert into modulos values(7,'Empresa iniciativa emprendedora',2,to_date('15/09/2018'),2);
insert into modulos values(8,'Ampliacion de Sistemas Operativos',2,to_date('15/09/2018'),5);
insert into modulos values(9,'Administración de Base de Datos',2,to_date('15/09/2018'),1);
insert into modulos values(10,'Implementacion de aplicaciones web',2,to_date('15/09/2018'),1);
insert into modulos values(11,'Servicios de Red a Internet',2,to_date('15/09/2018'),4);
insert into modulos values(12,'Seguridad y Alta disponibilidad',2,to_date('15/09/2018'),4);



---------------------------------------------------------------
create table tareas (
  cod_modulo number(11),
  id_curso number(11),
  cod_tarea number(11),
  titulo varchar2(40),
  descripcion varchar2(60),

  constraint tareas_Pk PRIMARY KEY (cod_modulo,id_curso,cod_tarea),
  constraint tareas_Fk foreign key (cod_modulo) references modulos
);

insert into tareas(cod_modulo,id_curso, cod_tarea, titulo, descripcion)
                   VALUES(1,1,1,'BdD Natacion','Crear una serie de tablas para competiciones de natacion');
insert into tareas values(1,2,1,'Consultas SQL','Conectar con la base de datos Alumnos y realizar los ejercicios');
insert into tareas values(1,3,1,'Esquema Ent-Rel','Realiza el esquema entidad-relacion de los campeonatos de futbol');
insert into tareas values(2,1,1,'Sistemas Operativos','Conectar con la base de datos Alumnos y realizar los ejercicios');
insert into tareas values(2,2,1,'Particiones','Realizar una serie de particiones para poder instalar varios sistemas operativos');
insert into tareas values(2,3,1,'Procesador','Calcula la prioridad del procesador en realizar estos procesos');
insert into tareas values(3,1,1,'Arduino','Expliar todos los componentes de Arduino');
insert into tareas values(3,2,1,'Led','Enciende un led de manera progresiva con una LDR');
insert into tareas values(3,3,1,'Pantalla LCD','Consigue sacar por pantalla los valores que mida un sensor de humedad y temperatura');


-----------------------------------------------------

create table notas(
  id_alumno number(11),
  cod_tarea number(11),
  cod_modulo number(11),
  id_curso number(11),
  nota number(2,1),
  constraint notas_pk primary key (id_alumno,cod_tarea,cod_modulo,id_curso),
  constraint notas_fk1 foreign key (id_alumno) references alumnos,
  constraint notas_fk2 foreign key (cod_tarea,cod_modulo,id_curso) references tareas
);

insert into notas(id_alumno, cod_tarea,cod_modulo,id_curso, nota)
                  VALUES(1,1,1,1,6.7);
insert into notas values(1,2,1,1,1.7);
insert into notas values(1,3,1,1,9.2);
insert into notas values(1,1,2,1,8.5);
insert into notas values(1,2,2,1,5.4);
insert into notas values(1,3,2,1,9.2);
insert into notas values(1,1,3,1,8.5);
insert into notas values(1,2,3,1,5.4);
insert into notas values(1,3,3,1,8.5);
insert into notas values(2,1,1,1,8.7);
insert into notas values(2,2,1,1,1.7);
insert into notas values(2,3,1,1,9.2);
insert into notas values(2,1,2,1,7.5);
insert into notas values(2,2,2,1,3.4);
insert into notas values(2,3,2,1,8.6);
insert into notas values(2,1,3,1,8.5);
insert into notas values(2,2,3,1,5.4);
insert into notas values(2,3,3,1,8.5);
insert into notas values(3,1,1,1,8.7);
insert into notas values(3,2,1,1,5.7);
insert into notas values(3,3,1,1,9.2);
insert into notas values(3,1,2,1,7.5);
insert into notas values(3,2,2,1,3.3);
insert into notas values(3,3,2,1,8.6);
insert into notas values(3,1,3,1,7.5);
insert into notas values(3,2,3,1,5.4);
insert into notas values(3,3,3,1,2.5);
insert into notas values(4,1,1,1,8.7);
insert into notas values(4,2,1,1,1.7);
insert into notas values(4,3,1,1,9.2);
insert into notas values(4,1,2,1,6.5);
insert into notas values(4,2,2,1,3.4);
insert into notas values(4,3,2,1,7.4);
insert into notas values(4,1,3,1,8.5);
insert into notas values(4,2,3,1,3.4);
insert into notas values(4,3,3,1,1.5);
insert into notas values(5,1,1,1,8.7);
insert into notas values(5,2,1,1,1.7);
insert into notas values(5,3,1,1,9.2);
insert into notas values(5,1,2,1,7.5);
insert into notas values(5,2,2,1,3.4);
insert into notas values(5,3,2,1,5.6);
insert into notas values(5,11,3,1,3.5);
insert into notas values(5,2,3,1,7.4);
insert into notas values(5,3,3,1,8.5);
insert into notas values(6,1,1,1,8.7);
insert into notas values(6,2,1,1,1.7);
insert into notas values(6,3,1,1,9.2);
insert into notas values(6,1,2,1,9.5);
insert into notas values(6,2,2,1,6.4);
insert into notas values(6,3,2,1,8.6);
insert into notas values(6,1,3,1,5.5);
insert into notas values(6,2,3,1,5.4);
insert into notas values(6,3,3,1,3.5);
insert into notas values(7,1,1,1,8.7);
insert into notas values(7,2,1,1,6.3);
insert into notas values(7,3,1,1,8.2);
insert into notas values(7,1,2,1,7.5);
insert into notas values(7,2,2,1,3.4);
insert into notas values(7,3,2,1,8.6);
insert into notas values(7,1,3,1,0.5);
insert into notas values(7,2,3,1,7.4);
insert into notas values(7,3,3,1,8.5);
insert into notas values(8,1,1,1,8.7);
insert into notas values(8,2,1,1,1.7);
insert into notas values(8,3,1,1,9.2);
insert into notas values(8,1,2,1,7.5);
insert into notas values(8,2,2,1,3.4);
insert into notas values(8,3,2,1,8.6);
insert into notas values(8,1,3,1,8.5);
insert into notas values(8,2,3,1,5.4);
insert into notas values(8,3,3,1,8.5);
insert into notas values(9,1,1,1,9.7);
insert into notas values(9,2,1,1,6.7);
insert into notas values(9,3,1,1,9.2);
insert into notas values(9,1,2,1,7.5);
insert into notas values(9,2,2,1,3.7);
insert into notas values(9,3,2,1,8.6);
insert into notas values(9,1,3,1,7.5);
insert into notas values(9,2,3,1,9.2);
insert into notas values(9,3,3,1,6.5);
insert into notas values(10,1,1,1,8.7);
insert into notas values(10,2,1,1,5.7);
insert into notas values(10,3,1,1,9.2);
insert into notas values(10,1,2,1,.5);
insert into notas values(10,2,2,1,3.4);
insert into notas values(10,3,2,1,4.6);
insert into notas values(10,1,3,1,5.5);
insert into notas values(10,2,3,1,5.8);
insert into notas values(10,3,3,1,8.5);
                                                      
                                                      
--2.4.5 Consultas en MariaDB:
--1
select * from horarios where id_curso=1;
--2
select * from horarios where id_curso=2;
--3
select T.titulo,T.descripcion,A.nombre,A.apellido1,A.apellido2,N.nota
from tareas T,alumnos A, notas N
where T.cod_tarea=N.cod_tarea and N.id_alumno=A.id_alumno;
--4
select A.nombre,A.apellido1,A.apellido2,avg(nota) as Media,count(*) as Tareas
from alumnos A, tareas T, notas N
where A.id_alumno=N.id_alumno and T.cod_tarea=N.cod_tarea
group by  A.nombre,A.apellido1,A.apellido2;

--Creamos las vistas:
--1
create view horario_1 as select * from horarios where id_curso=1;
--2
create view horario_2 as select * from horarios where id_curso=2;
--3
create view tareas_notas as
select T.titulo,T.descripcion,A.nombre,A.apellido1,A.apellido2,N.nota
from tareas T,alumnos A, notas N
where T.cod_tarea=N.cod_tarea and N.id_alumno=A.id_alumno;
--4
create view media_notas as 
select A.nombre,A.apellido1,A.apellido2,avg(nota) as Media,count(*) as Tareas
from alumnos A, tareas T, notas N
where A.id_alumno=N.id_alumno and T.cod_tarea=N.cod_tarea
group by  A.nombre,A.apellido1,A.apellido2;     
