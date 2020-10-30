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

SELECT t.title AS 'Title', COUNT(de.dept_no) AS COUNT
FROM titles AS t
JOIN dept_emp de on t.emp_no = de.emp_no
WHERE t.to_date = '9999-01-01' AND de.dept_no = 'd009'AND de.to_date = '9999-01-01'
GROUP BY (t.title);

SELECT * FROM dept_emp d
JOIN employees e on d.emp_no = e.emp_no
JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.dept_no = 'd009'
ORDER BY dm.to_date DESC;

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

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
       de.dept_name AS 'Department Name',
       CONCAT(m.first_name, ' ', m.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_emp AS d
ON e.emp_no = d.emp_no
JOIN departments as de
ON d.dept_no = de.dept_no
JOIN dept_manager dm on de.dept_no = dm.dept_no
JOIN employees m on m.emp_no = dm.emp_no
WHERE d.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';





