--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
from employees as emp
inner join salaries as sal on emp.emp_no=sal.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'
--wild cards between, like,in ,and, or , %
--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dm.dept_no, dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
from departments as dep
inner join dept_manager as dm on dep.dept_no=dm.dept_no
inner join employees as emp on emp.emp_no=dm.emp_no

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name
from employees
where first_name = 'Hercules' and last_name like 'B%'

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc

