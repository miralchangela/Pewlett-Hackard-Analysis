--- retirement titles table created

SELECT em.emp_no , em.first_name , em.last_name,
tl.title , tl.from_date, tl.to_date
INTO retirement_titles
FROM employees AS em 
INNER JOIN titles as tl
ON tl.emp_no = em.emp_no
WHERE em.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY em.emp_no ASC;


---- table of retirement title

SELECT * FROM retirement_titles;

-- there are duplicates entries shown in table, 
-- using DISTRICT ON method remove it.

SELECT DISTINCT ON (emp_no) emp_no , first_name , last_name , title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01';

-- data table of unique title

select * from unique_titles;

--  retrieve the number of employees 
-- by their most recent job title who are about to retire.


SELECT COUNT(title) , title
INTO retiring_titles
FROM unique_titles
GROUP by title
ORDER by COUNT(title) DESC;

--- data table of retiring titles

select * from retiring_titles;

SELECT DISTINCT ON (em.emp_no) em.emp_no , em.first_name , em.last_name ,
em.birth_date ,de.from_date , de.to_date , tl.title
INTO mentorship_eligibilty
From employees AS em
INNER JOIN dept_emp AS de
ON de.emp_no = em.emp_no
INNER JOIN titles as tl
ON tl.emp_no = de.emp_no
WHERE (de.to_date = '9999-01-01') 
AND (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY em.emp_no ASC;


