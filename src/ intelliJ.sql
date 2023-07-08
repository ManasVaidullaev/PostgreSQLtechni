create table groups
(id serial primary key unique,
 group_name varchar not null ,
 date_of_start date not null,
 students_id int references students(id));

insert into groups(group_name, date_of_start, students_id)
values ('Java-10','2023-4-3',5),
       ('JS-10','03-04-2023',4),
       ('Java-11','01-07-2023',3),
       ('JS-11','01-07-2023',2),
       ('Java-10','03-04-2023',1);


create table students
(id serial primary key unique,
 name varchar not null ,
 email varchar unique);

insert into students(name, email)
values ('Manas','manas@gmail.com'),
       ('Abubakir','abu@gmail.com'),
       ('Kanzharbek','kanzhar@gmail.com'),
       ('Aizada','aizada@gmail.com'),
       ('Bilal','bilal@gmail.com');


create table doctors
(id serial primary key,
 first_name varchar not null ,
 last_name varchar,
 phone_number varchar unique,
 hospital_id int references hospitals(id));




insert into doctors(first_name, last_name, phone_number,hospital_id)
values ('Aibek','Tashtemirov','+996555455440',1),
       ('Aiza','Melis','+996777584586',2),
       ('Elena','','+996700102030',1);




create table hospitals
(id serial primary key ,
 hospital_name varchar not null ,
 adress varchar not null );

insert into hospitals(hospital_name, adress)
values ('Nacionalnyi gospital','Moskovskaya 124'),
       ('Ahunbaeva Bolnica','Togolok Moldo 25');

