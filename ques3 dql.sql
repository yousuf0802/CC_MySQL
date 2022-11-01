create database employee1;
use employee1;
create table staff(
staff_id int(11) primary key,
staff_name varchar(25),
supervisor_id int(11),
salary BIGINT(20),
join_date DATE,
dept_id INT(11)
);

create table department(
dept_id INT(11),
dept_name varchar(25)
);

Insert into staff values(3,'priya',11,2000,'2022-09-10',11),(2,'ani',11,2000,'2022-09-10',11);

select avg(salary) from staff where dept_id=11;

SELECT staff_id,staff_name,salary,dept_id;
