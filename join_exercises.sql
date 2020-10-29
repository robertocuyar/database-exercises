USE employees;
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS 'Salary'
FROM employees as e

         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON dm.dept_no = d.dept_no
         JOIN salaries s on dm.emp_no = s.emp_no

WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', de.dept_name AS 'Department Name'
FROM employees as e
JOIN dept_emp AS d
ON e.emp_no = d.emp_no
JOIN departments as de
ON d.dept_no = de.dept_no
WHERE d.to_date = '9999-01-01';



