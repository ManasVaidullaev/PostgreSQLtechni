Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Пароль пользователя postgres:
psql (15.3)
ПРЕДУПРЕЖДЕНИЕ: Кодовая страница консоли (866) отличается от основной
                страницы Windows (1251).
                8-битовые (русские) символы могут отображаться некорректно.
                Подробнее об этом смотрите документацию psql, раздел
                "Notes for Windows users".
Введите "help", чтобы получить справку.

    postgres=#  create table car_brands
    (id serial primary key,
    brand_name varchar not null);
CREATE TABLE
    postgres=# insert into car_brands(brand_name)
    values('Honda'),
          ('Toyota'),
          ('Mercedes-Benz'),
          ('BMW');
INSERT 0 4


    postgres=# create table cars
    (id serial primary key,
    cars_name varchar not null,
    date_of_issue date not null,
    transmission varchar not null,
    car_brands_id int references car_brands(id));
CREATE TABLE

    postgres=#  insert into cars(cars_name,date_of_issue,transmission,car_brands_id)
    values('Accord','1-5-2018','Automatically',1),
          ('M6','5-8-2004','Mechanic',4),
          ('S500','1-5-2019','Mechanic',3),
          ('Camry_70','1-5-2020','Automatically',2);
INSERT 0 4