--create tables in sql
--table is emloyee and department
begin
execute immediate 'drop table employees cascade constrants';
exception 
 when others then null;
end;
/

begin
execute immediate 'drop table departments cascade constrants';
exception 
 when others then null;
end;
/
create table departments(
dept_id number primary key,
dept_name varchar2(100) not null,
location varchar2(100)

);
--this is creation of table colled employee
 create table employees( 
 emp_id number primary key,
 first_name varchar2(50) not null,
 last_name varchar2(50) not null,
 salary number(10,2) not null,
 commission_pct number(4,2), 
 hire_date date not null,
 dept_id number,
 constraint fk_emp_dept foreign key (dept_id) references departments(dept_id)
 )
;
--insertion of sample data
insert into departmentS values(10, 'administration','BYUMBA');
insert into departmentS values(20, 'IT','KIGALI');
insert into departmentS values(30, 'SALES','KAMPALA');
insert into departmentS values(40, 'FINANCE','MUSANZE');

SELECT * FROM DEPARTMENTS;

--INSERT INTO EMPLOYEES TABLE 
insert into employees values(100, 'senga', 'iraguha', 5000, 0.10, TO_DATE('2015-06-15', 'YYYY-MM-DD'),10);
insert into employees values(101,'NIYIGENA','KELIA', 6000, 0.20, to_date('2021-06-01', 'YYYY-MM-DD'),20);
insert into employees values(102,'JOHN','MUGISHA', 3000, NULL, to_date('2023-04-04', 'YYYY-MM-DD'),20);
insert into employees values(103,'DAVIDE','MUHIRE', 8000, 0.15, to_date('2019-09-20', 'YYYY-MM-DD'),30);
insert into employees values(104,'KEVN','KSNNY', 7000, NULL, to_date('2025-05-09', 'YYYY-MM-DD'),40);
SELECT * FROM EMPLOYEES;









