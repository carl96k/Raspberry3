create table aulas(
  cod_aula number(3) constraint aulas_pk primary key,
  descripcion varchar2(50)
);

insert into aulas(cod_aula, descripcion)
                  VALUES (01,'Aula de Teoria');
insert into aulas VALUES (02,'Aula de Informática');
insert into aulas VALUES (03,'Taller de Hardware´s');
insert into aulas values (04,'Sala de Servidores');
insert into aulas values (05,'Informatica General');

-----------------------------------------------------------------
create table materiales(
  cod_material number(10),
  nombre varchar2(20),
  cod_aula number(10),
  cantidad number (3),
  constraint materiales_Pk PRIMARY KEY (cod_material,cod_aula),
  constraint materiales_Fk foreign key (cod_aula) references aulas
);

insert into materiales(cod_material, nombre, cod_aula,cantidad)
                      VALUES (1,'Pizarra',01,2);
insert into materiales VALUES (2,'Proyector',01,1);
insert into materiales VALUES (3,'Router',01,1);
insert into materiales VALUES (4,'Ordenador',02,25);
insert into materiales VALUES (1,'Pizarras',02,2);
insert into materiales VALUES (2,'Proyector',02,1);
insert into materiales VALUES (3,'Router',02,2);
insert into materiales VALUES (5,'Servidores',04,3);
insert into materiales VALUES (1,'Pizarras',03,2);
insert into materiales VALUES (2,'Proyector',03,1);
insert into materiales VALUES (3,'Router',03,1);
insert into materiales VALUES (4,'Ordenador',03,10);
insert into materiales VALUES (6,'Multimetro digital',03,4);
insert into materiales VALUES (4,'Ordenador',05,40);
insert into materiales VALUES (1,'Pizarra',05,2);
insert into materiales VALUES (3,'Router',05,1);

------------------------------------------------------------------------
create table horarios(
  cod_aula    number(3),
  dia_semana  char,
  hora_inicio time,
  hora_fin    time,
  cod_modulo number(10),

 constraint horarios_Pk primary key (cod_aula,dia_semana,hora_inicio,cod_modulo),
 constraint horarios_Fk foreign key (cod_aula) references aulas,
 constraint horarios_Fk2 foreign key (cod_modulo) references modulos
);

insert into horarios(cod_aula, dia_semana, hora_inicio, hora_fin,cod_modulo)
                     VALUES(02,'L','8:15','9:10',5);
insert into horarios VALUES(02,'L','9:10','10:05',5);
insert into horarios VALUES(02,'L','10:05','11:00',2);
insert into horarios VALUES(02,'L','11:30','12:25',2);
insert into horarios VALUES(01,'L','12:25','13:20',4);
insert into horarios VALUES(01,'L','13:20','14:15',4);
insert into horarios VALUES(02,'M','8:15','9:10',2);
insert into horarios VALUES(02,'M','9:10','10:05',2);
insert into horarios VALUES(02,'M','10:05','11:00',1);
insert into horarios VALUES(02,'M','11:30','12:25',1);
insert into horarios VALUES(03,'M','12:25','13:20',3);
insert into horarios VALUES(03,'M','13:20','14:15',3);
insert into horarios VALUES(01,'X','8:15','9:10',1);
insert into horarios VALUES(01,'X','9:10','10:05',1);
insert into horarios VALUES(02,'X','10:05','11:00',2);
insert into horarios VALUES(02,'X','11:30','12:25',2);
insert into horarios VALUES(01,'X','12:25','13:20',5);
insert into horarios VALUES(01,'X','13:20','14:15',5);
insert into horarios VALUES(01,'J','8:15','9:10',6);
insert into horarios VALUES(01,'J','9:10','10:05',2);
insert into horarios VALUES(02,'J','10:05','11:00',1);
insert into horarios VALUES(02,'J','11:30','12:25',1);
insert into horarios VALUES(02,'J','12:25','13:20',5);
insert into horarios VALUES(02,'J','13:20','14:15',5);
insert into horarios VALUES(01,'V','8:15','9:10',6);
insert into horarios VALUES(01,'V','9:10','10:05',6);
insert into horarios VALUES(02,'V','10:05','11:00',4);
insert into horarios VALUES(02,'V','11:30','12:25',4);
insert into horarios VALUES(01,'V','12:25','13:20',2);
insert into horarios VALUES(01,'V','13:20','14:15',3);
--
insert into horarios(cod_aula, dia_semana, hora_inicio, hora_fin,cod_modulo)
                     VALUES(05,'L','8:15','9:10',10);
insert into horarios VALUES(05,'L','9:10','10:05',7);
insert into horarios VALUES(01,'L','10:05','11:00',7);
insert into horarios VALUES(01,'L','11:30','12:25',11);
insert into horarios VALUES(02,'L','12:25','13:20',12);
insert into horarios VALUES(02,'L','13:20','14:15',12);
insert into horarios VALUES(01,'M','8:15','9:10',9);
insert into horarios VALUES(01,'M','9:10','10:05',8);
insert into horarios VALUES(01,'M','10:05','11:00',8);
insert into horarios VALUES(01,'M','11:30','12:25',7);
insert into horarios VALUES(02,'M','12:25','13:20',10);
insert into horarios VALUES(02,'M','13:20','14:15',10);
insert into horarios VALUES(02,'X','8:15','9:10',11);
insert into horarios VALUES(02,'X','9:10','10:05',11);
insert into horarios VALUES(01,'X','10:05','11:00',12);
insert into horarios VALUES(01,'X','11:30','12:25',12);
insert into horarios VALUES(02,'X','12:25','13:20',8);
insert into horarios VALUES(02,'X','13:20','14:15',8);
insert into horarios VALUES(02,'J','8:15','9:10',8);
insert into horarios VALUES(02,'J','9:10','10:05',8);
insert into horarios VALUES(01,'J','10:05','11:00',11);
insert into horarios VALUES(01,'J','11:30','12:25',11);
insert into horarios VALUES(05,'J','12:25','13:20',10);
insert into horarios VALUES(05,'J','13:20','14:15',10);
insert into horarios VALUES(02,'V','8:15','9:10',11);
insert into horarios VALUES(02,'V','9:10','10:05',11);
insert into horarios VALUES(01,'V','10:05','11:00',8);
insert into horarios VALUES(01,'V','11:30','12:25',12);
insert into horarios VALUES(02,'V','12:25','13:20',9);
insert into horarios VALUES(02,'V','13:20','14:15',9);


------------------------------------------------------------------
create table cursos (
  id_curso     number(2),
  fecha_inicio timestamp,
  fecha_fin    timestamp,
  constraint cursos_Pk primary key (id_curso,fecha_inicio)
);
insert into cursos (id_curso,fecha_inicio,fecha_fin)
                  values (1,TO_DATE('15/09/2018'),TO_DATE('23/06/2019'));
insert into cursos values (2,TO_DATE('15/09/2018'),TO_DATE('23/06/2019');


------------------------------------------------------------------
create table profesores (
  id_profesor int(8) constraint profesores_pk primary key,
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
  id_alumno number(10) constraint alumnos_pk primary key,
  nombre varchar2(15),
  apellido1 varchar2(25),
  apellido2 varchar2(25),
  curso_escolar varchar2(9)
);

insert into alumnos (id_alumno, nombre, apellido1, apellido2, curso_escolar)
                    values (1,'Carlos','Arconada','Garcia','1º');
insert into alumnos values(2,'David','Franco','Laguerza','1º');
insert into alumnos values(3,'Sonia','Rivero','Pacheco','1º');
insert into alumnos values(4,'David','Martin','Ruiz','1º');
insert into alumnos values(5,'Pedro','Marin','Pamplet','1º');
insert into alumnos values(6,'Victor','Perez','Valdivieso','1º');
insert into alumnos values(7,'Jon','Garcia','Diaz','1º');
insert into alumnos values(8,'Jaime','Dominguez','Gutierrez','1º');
insert into alumnos values(9,'Gonzalo','Tudela','Sanchez','1º');
insert into alumnos values(10,'Maria','Jimenez','Navarro','1º');
insert into alumnos values(11,'Juan','Torres','Vazquez','2º');
insert into alumnos values(12,'Sergio','Rivero','Ruiz','2º');
insert into alumnos values(13,'Martina','Tejedor','Pacheco','2º');
insert into alumnos values(14,'Tirso','Blanco','Molina','2º');
insert into alumnos values(15,'Marisa','Alvarez','Suarez','2º');
insert into alumnos values(16,'Cesar','Muñoz','Lopez','2º');
insert into alumnos values(17,'Esther','Labajo','Ramos','2º');
insert into alumnos values(18,'Pepe','Torres','Gil','2º');

----------------------------------------------------------------
create table matricular(
  id_alumno number(10),
  cod_modulo number(10,

constraint matricular_Pk primary key (id_alumno,cod_modulo),
constraint matricular_Fk foreign key (id_alumno) references alumnos,
constraint matricular_Fk2 foreign key (cod_modulo) references modulos
;

insert into matricular (id_alumno,cod_modulo)
                        values(1,1);
insert into matricular values (1,2);
insert into matricular values (1,3);
insert into matricular values (1,4);
insert into matricular values (1,5);
insert into matricular values (1,6);
insert into matricular values (2,1);
insert into matricular values (2,2);
insert into matricular values (2,3);
insert into matricular values (2,4);
insert into matricular values (2,5);
insert into matricular values (2,6);
insert into matricular values (3,1);
insert into matricular values (3,2);
insert into matricular values (3,3);
insert into matricular values (3,4);
insert into matricular values (3,5);
insert into matricular values (3,6);
insert into matricular values (4,1);
insert into matricular values (4,2);
insert into matricular values (4,3);
insert into matricular values (4,4);
insert into matricular values (4,5);
insert into matricular values (4,6);
insert into matricular values (5,1);
insert into matricular values (5,3);
insert into matricular values (5,4);
insert into matricular values (5,5);
insert into matricular values (5,6);
insert into matricular values (6,1);
insert into matricular values (6,2);
insert into matricular values (6,3);
insert into matricular values (6,4);
insert into matricular values (6,5);
insert into matricular values (6,6);
insert into matricular values (7,1);
insert into matricular values (7,2);
insert into matricular values (7,3);
insert into matricular values (7,4);
insert into matricular values (7,5);
insert into matricular values (7,6);
insert into matricular values (8,1);
insert into matricular values (8,3);
insert into matricular values (8,4);
insert into matricular values (9,5);
insert into matricular values (9,6);
insert into matricular values (9,1);
insert into matricular values (10,2);
insert into matricular values (10,3);
insert into matricular values (10,4);
insert into matricular values (10,5);
insert into matricular values (10,6);


---------------------------------------------------------------
create table modulos (
  cod_modulo number(10) constraint modulos_pk primary key,
  nombre varchar2(40) constraint modulos_nnl not null,
  id_curso number(4),
  fecha_inicio timestamp,
  id_profesor int(8),

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
  cod_modulo number(10),
  cod_tarea number(10,6),
  titulo varchar2(40),
  descripcion varchar2(60),

  constraint tareas_Pk PRIMARY KEY (cod_modulo,cod_tarea),
  constraint tareas_Fk foreign key (cod_modulo) references modulos
);

insert into tareas(cod_modulo, cod_tarea, titulo, descripcion)
                   VALUES(1,1.1,'BdD Natacion','Crear una serie de tablas para solventar las competiciones de natacion');
insert into tareas values(1,1.2,'Consultas SQL','Conectar con la base de datos Alumnos y realizar los ejercicios');
insert into tareas values(1,1.3,'Esquema Ent-Rel','Realiza el esquema entidad-relacion de los campeonatos de futbol');
insert into tareas values(2,1.1,'Sistemas Operativos','Conectar con la base de datos Alumnos y realizar los ejercicios');
insert into tareas values(2,1.2,'Particiones','Realizar una serie de particiones para poder instalar varios sistemas operativos');
insert into tareas values(2,1.3,'Procesador','Calcula la prioridad del procesador en realizar estos procesos');
insert into tareas values(3,1.1,'Arduino','Expliar todos los componentes de Arduino');
insert into tareas values(3,1.2,'Led','Enciende un led de manera progresiva con una LDR');
insert into tareas values(3,1.3,'Pantalla LCD','Consigue sacar por pantalla los valores que mida un sensor de humedad y temperatura');


-----------------------------------------------------

create table notas(
  id_alumno number(10),
  cod_tarea number(10),
  cod_modulo number(10),
  nota number(2,1),
  constraint notas_pk primary key (id_alumno,cod_tarea,cod_modulo),
  constraint notas_fk1 foreign key (id_alumno) references alumnos,
  constraint notas_fk2 foreign key (cod_tarea,cod_modulo) references tareas
);

insert into notas(id_alumno, cod_tarea,cod_modulo, nota)
                  VALUES(1,1.1,1,6.7);
insert into notas values(1,1.2,1,1.7);
insert into notas values(1,1.3,1,9.2);
insert into notas values(1,1.1,2,8.5);
insert into notas values(1,1.2,2,5.4);
insert into notas values(1,1.3,2,9.2);
insert into notas values(1,1.1,3,8.5);
insert into notas values(1,1.2,3,5.4);
insert into notas values(1,1.3,3,8.5);
insert into notas values(2,1.1,1,8.7);
insert into notas values(2,1.2,1,1.7);
insert into notas values(2,1.3,1,9.2);
insert into notas values(2,1.1,2,7.5);
insert into notas values(2,1.2,2,3.4);
insert into notas values(2,1.3,2,8.6);
insert into notas values(2,1.1,3,8.5);
insert into notas values(2,1.2,3,5.4);
insert into notas values(2,1.3,3,8.5);
insert into notas values(3,1.1,1,8.7);
insert into notas values(3,1.2,1,5.7);
insert into notas values(3,1.3,1,9.2);
insert into notas values(3,1.1,2,7.5);
insert into notas values(3,1.2,2,3.3);
insert into notas values(3,1.3,2,8.6);
insert into notas values(3,1.1,3,7.5);
insert into notas values(3,1.2,3,5.4);
insert into notas values(3,1.3,3,2.5);
insert into notas values(4,1.1,1,8.7);
insert into notas values(4,1.2,1,1.7);
insert into notas values(4,1.3,1,9.2);
insert into notas values(4,1.1,2,6.5);
insert into notas values(4,1.2,2,3.4);
insert into notas values(4,1.3,2,7.4);
insert into notas values(4,1.1,3,8.5);
insert into notas values(4,1.2,3,3.4);
insert into notas values(4,1.3,3,1.5);
insert into notas values(5,1.1,1,8.7);
insert into notas values(5,1.2,1,1.7);
insert into notas values(5,1.3,1,9.2);
insert into notas values(5,1.1,2,7.5);
insert into notas values(5,1.2,2,3.4);
insert into notas values(5,1.3,2,5.6);
insert into notas values(5,1.1,3,3.5);
insert into notas values(5,1.2,3,7.4);
insert into notas values(5,1.3,3,8.5);
insert into notas values(6,1.1,1,8.7);
insert into notas values(6,1.2,1,1.7);
insert into notas values(6,1.3,1,9.2);
insert into notas values(6,1.1,2,9.5);
insert into notas values(6,1.2,2,6.4);
insert into notas values(6,1.3,2,8.6);
insert into notas values(6,1.1,3,5.5);
insert into notas values(6,1.2,3,5.4);
insert into notas values(6,1.3,3,3.5);
insert into notas values(7,1.1,1,8.7);
insert into notas values(7,1.2,1,6.3);
insert into notas values(7,1.3,1,8.2);
insert into notas values(7,1.1,2,7.5);
insert into notas values(7,1.2,2,3.4);
insert into notas values(7,1.3,2,8.6);
insert into notas values(7,1.1,3,0.5);
insert into notas values(7,1.2,3,7.4);
insert into notas values(7,1.3,3,8.5);
insert into notas values(8,1.1,1,8.7);
insert into notas values(8,1.2,1,1.7);
insert into notas values(8,1.3,1,9.2);
insert into notas values(8,1.1,2,7.5);
insert into notas values(8,1.2,2,3.4);
insert into notas values(8,1.3,2,8.6);
insert into notas values(8,1.1,3,8.5);
insert into notas values(8,1.2,3,5.4);
insert into notas values(8,1.3,3,8.5);
insert into notas values(9,1.1,1,9.7);
insert into notas values(9,1.2,1,6.7);
insert into notas values(9,1.3,1,9.2);
insert into notas values(9,1.1,2,7.5);
insert into notas values(9,1.2,2,3.7);
insert into notas values(9,1.3,2,8.6);
insert into notas values(9,1.1,3,7.5);
insert into notas values(9,1.2,3,9.2);
insert into notas values(9,1.3,3,6.5);
insert into notas values(10,1.1,1,8.7);
insert into notas values(10,1.2,1,5.7);
insert into notas values(10,1.3,1,9.2);
insert into notas values(10,1.1,2,7.5);
insert into notas values(10,1.2,2,3.4);
insert into notas values(10,1.3,2,4.6);
insert into notas values(10,1.1,3,5.5);
insert into notas values(10,1.2,3,5.8);
insert into notas values(10,1.3,3,8.5);
