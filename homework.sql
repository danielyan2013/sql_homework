select employees.emp_no, last_name, first_name, gender, salary from employees , salaries where employees.emp_no = salaries.emp_no;

select * from employees where hire_date between '01/01/1986' and '12/31/1986';

select departments.dept_no, dept_name, employees.emp_no, last_name, first_name, from_date, to_date 
from dept_manager, departments, employees where departments.dept_no = dept_manager.dept_no and dept_manager.emp_no = employees.emp_no;

select employees.emp_no, last_name, first_name, dept_name from employees, departments, dept_emp where employees.emp_no = dept_emp.emp_no and dept_emp.dept_no = departments.dept_no;

select * from employees where first_name = 'Hercules' and last_name = 'B%';

select employees.emp_no, last_name, first_name, dept_name from employees, departments, dept_emp where employees.emp_no = dept_emp.emp_no and dept_emp.dept_no = departments.dept_no and dept_name = 'Sales';

select employees.emp_no, last_name, first_name, dept_name from employees, departments, dept_emp where employees.emp_no = dept_emp.emp_no and dept_emp.dept_no = departments.dept_no and (dept_name = 'Sales' or dept_name = 'Development');

select last_name, count(last_name) from employees group by last_name order by count(last_name) desc;