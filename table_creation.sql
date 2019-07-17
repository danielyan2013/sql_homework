create table departments(
	dept_no varchar() primary key,
	dept_name varchar() 
);

create table employees(
	emp int primary key,
	birth_date date,
	first_name varchar(),
	last_name varchar(),
	gender varchar(),
	hire_date date
);

create table dept_emp(
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no),
	from_date date,
	to_date date
);

create table dept_managers(
	foreign key dept_no references departments(dept_no),
	foreign key emp_no references employees(emp_no),
	from_date date,
	to_date date
)

create table titles (
	foreign key emp_no references employees(emp_no),
	title varchar(),
	from_date date,
	to_date date
)

create table salaries(
	foreign key emp_no references employees(emp_no),
	salary int,
	from_date date,
	to_date date
)