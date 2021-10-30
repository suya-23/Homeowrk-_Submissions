-- Select all the employees who were born between January 1, 1952 and December 31, 1955 and their titles and title date ranges
-- Order the results by emp_no

select employees.first_name, titles.title, titles.from_date,titles.to_date from employees JOIN titles ON employees.emp_no = titles.emp_no
WHERE birth_date between '1952-1-1' AND '1955-12-31';


-- Select only the current title for each employee
select employees.first_name, titles.title, from employees JOIN titles ON employees.emp_no = titles.emp_no
WHERE employees.birth_date between '1952-1-1' AND '1955-12-31';

-- Count the total number of employees about to retire by their current job title

SELECT titles.title, COUNT(*)  FROM titles JOIN titles ON employees.emp_no = titles.emp_no
WHERE employees.birth_date between '1952-1-1' AND '1955-12-31' GROUP BY titles.title;


-- Count the total number of employees per department
SELECT dept_emp.emp_no, COUNT(*)  FROM dept_emp JOIN departments ON dept_emp.dept_no = departments.dept_no GROUP BY departments.dept_name;


-- Bonus: Find the highest salary per department and department manager

