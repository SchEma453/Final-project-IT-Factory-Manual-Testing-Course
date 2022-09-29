-- Creare baza de date orangehrm  
create database orangeHRM; 
use orangeHRM;
-- creare tabel users si coloana user_id ca si cheie primara cu proprietatile auto-increment si integer (numeric) 
create table users (
user_id int primary key auto_increment
);
select * from Users; 
desc users; 

-- modificare nume tabel utilizand instructiunea alter care modifica structura unui coloane din tabel,
alter table users rename to employees; 

-- adaugare coloane in tabel folosing instructiunea alter 
alter table employees add column employee_name varchar (25) not null;
alter table employees add column username varchar (25) not null;
alter table employees add column user_role varchar (25) not null;
select * from employees;
desc employees;

alter table employees add column birthday date;
-- stergere coloana folosing instructiunea drop 
alter table employees drop column birthday;  

-- inserare valori in coloanele tabelului folosing instructiunea insert into 
insert into employees (user_id, employee_name, username, user_role) 
values ('1','Fiona Grace', 'gracefyn', 'ess'),
('2','Thomas Dominic', 'thmdom', 'ess'),
('3','Alice Davidsonn', 'davalis', 'admin'),
('4','Daiana Cecil', 'dacecil', 'ess'),
('5', 'Jameson Dan', 'danjm', 'ess'),
('6','Jasmine White', 'whjas', 'admin'),
('7', 'Jameson Joe', 'joejam', 'admin'),
('8', 'Kevin Chase', 'kevch', 'ess'),
('9', 'Jordan Cassy', 'casjor', 'ess'),
('10', 'Anderson Linda', 'andlin', 'ess');
select * from employees;
desc employees;

-- extragere informatii din tabel ulilizand instructiunea select 
select username from employees;
select * from employees where user_role = 'admin'; 
select * from employees where employee_name in ('Jameson Joe');
select * from employees where user_role not in ('ess');

-- adaugare coloane in tabel folosing instructiunea alter 
alter table employees add column joining_date date;
alter table employees add column age int; 

-- adaugare de valori coloanelor nou formate folosing instructiunea update 
update employees set age = '35', joining_date = '2019-06-20' where user_id = '1';
update employees set age = '39', joining_date = '2020-03-10' where user_id = '2';
update employees set age = '29', joining_date = '2018-02-11' where user_id = '3';
update employees set age = '33', joining_date = '2019-01-04' where user_id = '4';
update employees set age = '38', joining_date = '2017-08-16' where user_id = '5';
update employees set age = '32', joining_date = '2018-09-25' where user_id = '6';
update employees set age = '35', joining_date = '2020-07-23' where user_id = '7';
update employees set age = '30', joining_date = '2021-03-21' where user_id = '8';
update employees set age = '35', joining_date = '2021-02-19' where user_id = '9';
update employees set age = '28', joining_date = '2022-05-10' where user_id = '10';
select * from employees;

-- extragere informatii din tabel ulilizand instructiunea select 
select * from employees where age != 35;
select * from employees where age between 25 and 35;
select * from employees where joining_date between '2018-02-11' and '2019-01-04';
select * from employees where age not in (25, 35);
select * from employees where username like '%mo';
select * from employees where username like 'da%';
select * from employees where username like '%y%';
select * from employees where employee_name like '%j%';
select * from employees where joining_date like '2018%';
select * from employees where joining_date like '202%';  
select * from employees where joining_date like '%07%';
select * from employees where joining_date like '%-02-%';
select * from employees where age like '2%';
select * from employees where username like '%om%' and age like '%3%';
select * from employees where username like 'om%' or age like '3%';
select * from employees where age like '2%' or joining_date like '%2018%';
select * from employees where age like '%5' or joining_date like '%-23-%' 
and user_role = "ess";
select * from employees where (age like '2%' or joining_date like '%-20-%' )
and user_role = "admin";

-- crearea unui nou tabel si legarea acestuia la primul tabel printr-o cheie secundara 
create table jobs (
userid_job int not null auto_increment,
job_title varchar(45) not null,
work_shift varchar(10) not null,
working_hours int not null,
currency varchar(10) not null, 
salary int not null,
user_id int not null,
primary key (user_id),
constraint fk_jobs_employees foreign key (user_id) references employees (user_id)
);
select * from employees;
select * from jobs;
-- steregere coloana din tabel utilizand comanda drop
alter table jobs drop column work_shift; 

-- adaugarea in tabelul jobs a unor valori pentru un anumit user id si stergerea acestora
insert into jobs (job_title, work_shift, working_hours, currency, salary, user_id)
values ('HR manager','daytime', '8', 'USD', '4000', '4'); 
delete from jobs where user_id = 1;
delete from jobs where user_id = 4;
delete from jobs where user_id = 3;
select * from employees;
select * from jobs;


-- adugare de date in tabelul jobs utilizand comanda insert 
insert into jobs (job_title, working_hours, currency, salary, user_id)
values ('HR manager', '8',  'USD', '4000', '3'),
('software developer', '8', 'USD', '7200', '4'),
('database administrator', '10', 'USD', '9000', '1'),
('IT project manager', '9', 'GBP', '13000', '9'),
('QA specialist', '8', 'EUR', '5000', '6'),
('QA tester', '8', 'USD' , '3500', '5'),
('web developer', '9', 'GBP','7500', '8'),
('HR manager', '8', 'EUR', '4500', '2'),
('business analyst', '8', 'USD', '5300', '10'),
('systems analyst', '6', 'CAD', '5700', '7');
select * from employees;
select * from jobs;

-- extragere date din tabele utilizand comanda join 
select * from employees cross join jobs;
select * from jobs inner join employees on employees.user_id = jobs.user_id;
select * from employees left join jobs on employees.user_id = jobs.user_id; 
select * from employees right join jobs on employees.user_id = jobs.user_id; 
select * from employees right join jobs on employees.user_id = jobs.user_id where currency = 'GBP'; 
select * from jobs left join employees on employees.user_id = jobs.user_id where currency = 'USD' and salary = '5300' or age like '2%';
select * from employees inner join jobs on employees.user_id = jobs.user_id where user_role = 'ess' or salary like '%40%';
select * from employees inner join jobs on employees.user_id = jobs.user_id where joining_date like '%2020%' and working_hours = '8'; 
select * from employees cross join jobs on employees.user_id = jobs.user_id where job_title like '%QA%' and joining_date like '%-09-%'; 
select * from employees right join jobs on employees.user_id = jobs.user_id order by salary desc limit 2;
select employee_name, job_title, salary from employees cross join jobs on employees.user_id = jobs.user_id;
select user_role, job_title from employees left join jobs on employees.user_id = jobs.user_id;
select username, salary, currency from employees inner join jobs on employees.user_id = jobs.user_id;

-- sortarea datelor utilizand comanda order by, group by, limit
select * from employees order by age desc limit 1;
select * from jobs order by salary desc limit 3;
select * from employees order by age limit 1;
select min(salary) from jobs;
select AVG(salary) from jobs;
select AVG(age) from employees;
select AVG(salary) from jobs group by currency;
SELECT COUNT(WORKING_hours) FROM jobs GROUP BY job_title HAVING count(salary)<5000;
select employee_name, age from employees group by age <35;
select job_title, currency from jobs group by currency = 'eur';
select working_hours as working_time from jobs;
select * from employees limit 3;
