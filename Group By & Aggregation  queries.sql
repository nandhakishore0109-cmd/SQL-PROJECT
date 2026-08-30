-- LEVEL-2 QUERIES....


-- 01. DISPLAY THE MAX SALARY OF FACULTY MEMBERS...
      SELECT MAX(salary) FROM
    -> faculty;

-- 02. DISPLAY THE MIN SALARY OF FACULTY MEMBERS...
     SELECT MIN(salary) FROM
    -> faculty;    

-- 03. DISPLAY THE AVG FACULTY SALARY...
     SELECT AVG(salary) FROM
    -> faculty;


-- 04. DISPLAY  THE TOTAL FEES COLLECTED...
         SELECT SUM(total_fee)
    -> FROM fees;

-- 05. DISPLAY THE NO.OF STUDENTS IN EACH DEPT...
        SELECT dept_name, count(*)
    -> FROM students
    -> JOIN departments
    -> ON students.dept_id = departments.dept_id
    -> GROUP BY dept_name;

-- 06. DISPLAY THE AVG FACULTY SALARY IN EACH DEPT...
         SELECT dept_name , AVG(salary) as avg_salary
    -> FROM faculty
    -> JOIN departments d
    -> ON faculty.dept_id = d.dept_id
    -> GROUP BY dept_name;

-- 07. DISPLAY THE TOTAL NO.OF COURSES IN EACH DEPT...
       SELECT dept_name , COUNT(course_id)
    -> FROM courses c
    -> JOIN departments d
    -> ON c.dept_id = d.dept_id
    -> GROUP BY dept_name;

-- 08. DISPLAY HIGHEST FEE PAID BY STUDENT..
        SELECT MAX(paid_fee) as highest_paid
    -> FROM fees;    

-- 09. DISPLAY THE LOWEST FEE PAID BY A STUDENT...
        SELECT MIN(paid_fee) as lowest_paid
    -> FROM fees;

-- 10. DISPLAY DEPARTMENTS HAVING MORE THAN 10 STUDENTS..
       SELECT dept_name , count(*) as total
    -> FROM students s
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id
    -> GROUP BY dept_name
    -> HAVING COUNT(*) > 10;