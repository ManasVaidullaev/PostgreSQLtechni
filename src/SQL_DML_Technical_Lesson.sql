create table students
(id serial primary key ,
 first_name varchar,
 last_name varchar,
 gender varchar,
 date_of_birth date,
 email varchar unique,
 course varchar,
 payment numeric,
 duration int);

insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
values ('Manas','Vaidullaev','male','1995-08-04','manas@gmail.com','Java',14000.00,9),
       ('Tom','Djackson','male','1990-05-04','tom@gmail.com','Java',12500.00,5),
       ('Liz','Heiberga','female','2000-8-5','liz@gmail.com','JS',10000.00,7),
       ('Abubakir','Kubanuchbekov','male','198-4-2','abu@gmail.com','JS',13500.00,8),
       ('Aizada','Abdrazakova','female','2002-4-18','aizada@gmail.com','Java',8500.00,3),
       ('Kanzhar','Malikov','male','1886-6-25','kanzhar@gmail.com','JS',18250.00,2),
       ('Danchik','Gafurov','male','2005-8-18','danchik@gmail.com','Java',5500.00,6),
       ('Munara','Mamadalieva','female','2005-4-20','munara@gmail.com','Java',1500.00,4);

insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
values ('munara','Mamadalieva','female','2005-4-20','munara1@gmail.com','Java',1500.00,4);

insert into students(last_name, gender, date_of_birth, email, course, payment, duration)
values ('Gafurov','male','2005-8-18','danchik155@gmail.com','Java',5500.00,6);


select first_name,last_name from students;
select first_name as name from students;
select concat(first_name,' ',last_name) as full_name from students;
select first_name,last_name,payment*students.duration as total_payment from students;
select first_name,last_name from students order by first_name desc;
select distinct course from students;
select *from students where course='Java';
select *from students where course='Java'and payment>10000;
select *from students where course='Java'or payment>10000;
select *from students limit 5;
select *from students offset 3;
select *from students fetch first 3 rows only ;
select *from students where payment in(10000,20000);
select *from students where gender not in ('male');
select *from students where payment between 10000 and 20000;
select *from students where last_name like '%ev';
select *from students where first_name ilike 'M%';--ignorcase
select course from students group by course;
select gender,count(gender)from students group by gender;
select gender,count(*)from students group by gender having count(gender)>4;

select course, count(*) from students group by course;
select  max(payment)from students;
select min(payment)from students;
select avg(payment)from students;
select round(avg(payment))from students;
select sum(payment)from students;
select coalesce(first_name,'hello')from students;

select now();
select now()-interval '1 year';
select now()+interval '5 days';
select now()::time;
select extract (year from now());
delete from students where first_name='munara';
delete from students where gender='female';

update students set course='Python' where course='JS';
update students set first_name='Zhanuzak' where first_name=null;

select *from students;

-- www.mockaroo.com
--