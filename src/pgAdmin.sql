create table countries(id serial primary key,
                       country_name varchar not null,
                       country_location_continent varchar not null,
                       capitals_id int references capitals(id));


insert into countries(country_name,country_location_continent,capitals_id)
values('Kyrgyzstan','Evraziya',1),
      ('USA','Severnaya Amerika',2),
      ('Avstraliya','Avstraliya',3),
      ('Argentina','Yujnaya Amerika',4);



create table capitals(id serial primary key,
                      capital_name varchar not null,
                      population int not null);

insert into capitals(capital_name,population)
values ('Bishkek',1200000),
       ('Washington',27000000),
       ('Canberra',4200000),
       ('Buenos Aires',3250000);

create table person(id serial primary key,
                    first_name varchar not null,
                    last_name varchar not null,
                    age int not null,
                    email varchar unique,
                    jobs_id int references jobs(id));

insert into person(first_name,last_name,age,email,jobs_id)
values('Elena','Novikova',35,'novikova@gmail.com',2),
      ('Sergei','Ivanov',32,'sergei@mail.ru',4),
      ('Manas','Vaidullaev',28,'manas@gmail.com',3),
      ('Anastasiya','Mihailova',45,'mihailova.a@gmail.com',1);

create table jobs(id serial primary key,
                  jobs_name varchar not null);

insert into jobs(jobs_name)
values('Doctor'),
      ('Teacher'),
      ('Programmer'),
      ('Policeman');