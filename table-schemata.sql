drop table employees

create table employees(
	emp_no int primary key,
	emp_title_id varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	foreign key (emp_title_id) references titles(title_id)
);

select * from employees

drop table salaries

create table salaries(
	emp_no serial,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);

select * from salaries

drop table departments

create table departments(
	dept_no varchar primary key,
	dept_name varchar
);

select * from departments

drop table dept_emp

create table dept_emp(
	emp_no int,
	dept_no varchar not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

select * from dept_emp

drop table dept_manager

create table dept_manager(
	dept_no varchar not null,
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_manager

drop table titles

create table titles(
	title_id varchar primary key,
	title varchar
);

select * from titles
