 # JOIN USING WITH GROUP BY FUNCTION ....

 -- 01. DISPLAY THE DEPARTMENTS THAT HAS THE HIGHEST NO OF STUDENTS...
       SELECT dept_name , count(student_id)
    -> FROM students s
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id
    -> GROUP BY dept_name
    -> ORDER BY count(student_id) DESC
    -> LIMIT 1;

-- 02. DISPLAY THE TOTAL FEE COLLECT IN EACH DEPARTMENT....
      SELECT dept_name , SUM(paid_fee) as total_collected
    -> FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id
    -> GROUP BY dept_name;

-- 03. DISPLAY THE NO.OF FACULTY MEMBERS IN EACH DEPARTMENT...
      SELECT dept_name , count(faculty_id) as total
    -> FROM faculty
    -> JOIN departments d
    -> ON faculty.dept_id = d.dept_id
    -> GROUP BY dept_name;

-- 04. DISPLAY THE AVG ATTENDANCE PERCENTAGE OF STUDENTS.....
        SELECT s.student_id, s.first_name,
    -> ROUND(
    -> SUM(CASE
    -> WHEN status = 'Present' THEN 1 else 0
    -> END) * 100.0/COUNT(*), 2) AS percentage_avg
    -> FROM students s
    -> JOIN attendannce a
    -> ON s.student_id = a.student_id
    -> GROUP BY s.student_id , s.first_name;

-- 05. DISPLAY ALL DEPT WHERE AVG FACULTY SALARY IS GRATER THAN 50000....
       SELECT dept_name,AVG(f.salary)
    -> FROM departments d
    -> JOIN faculty f
    -> ON d.dept_id = f.dept_id
    -> GROUP BY dept_name
    -> HAVING AVG(f.salary) > 50000;

-- 06. DISPLAY THE TOTAL NO.OF ENROLLMENTS FOR EACH COURSE......    
           SELECT course_name , count(e.enroll_id)
    -> FROM courses c
    -> JOIN enrollments e
    -> ON c.course_id = e.course_id
    -> GROUP BY course_name;

-- 07. DISPLAY THE COURSE WITH HIGHEST NO OF ENROLLMENTS......
        SELECT course_name , count(e.enroll_id) as total
    -> FROM courses c
    -> JOIN enrollments e
    -> ON c.course_id = e.course_id
    -> GROUP BY course_name
    -> ORDER BY total desc
    -> LIMIT 2;

-- 08. DISPLAY THE STUDENTS WHO PAID MORE THAN 50000 IN FESS.....
       SELECT s.student_id , s.first_name, f.paid_fee
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id
    -> WHERE f.paid_fee > 50000;

-- 09. DISPLAY THE TOTAL FEE COLLECTED FROM EACH STUDENTS....
               SELECT s.student_id , s.first_name, sum(f.paid_fee)
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id
    -> GROUP BY s.student_id , s.first_name;

-- 10. DISPLAY DEPT THAT HAVE MORE THAN 5 FACULTY MEMBERS......
           SELECT dept_name , count(f.faculty_id)
    -> FROM faculty f
    -> JOIN departments d
    -> ON f.dept_id = d.dept_id
    -> GROUP BY dept_name
    -> HAVING count(f.faculty_id) > 5;

-- #JOINS .......
-- 11. DISPLAY EACH STUDENT NAME ALONG WITH A DEPT NAME.....
        SELECT s.first_name , s.last_name , d.dept_name
    -> FROM students s
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id;

-- 12. DISPLAY EACH FACULTY MEMBER ALONG WITH THEIR DEPT NAME...
      SELECT faculty_name , dept_name
    -> FROM faculty f
    -> JOIN departments d
    -> ON f.dept_id = d.dept_id;

-- 13.DISPLAY EACH COURSE WITH ITS DEPT NAME.....
      SELECT course_name,dept_name
    -> FROM courses c
    -> JOIN departments d
    -> ON c.dept_id = d.dept_id;

-- 14. DISPLAY EACH STUDENTS NAME AND THE COURSES THEY ENROLLED IN....
        SELECT first_name , course_name
    -> FROM students s
    -> JOIN enrollments e
    -> ON s.student_id = e.student_id
    -> JOIN courses
    -> ON courses.course_id = e.course_id;

-- 15. DISPLAY EACH STUDENT NAME ALONG WITH TOTAL FEE AND PAID FEE.....
      SELECT first_name , total_fee, paid_fee
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id;

-- 16. DISPLAY STUDENTS WHO HAVE NOT ENROLLED IN ANY COURSE.......
        SELECT s.student_id , s.first_name
    -> FROM students s
    -> LEFT JOIN enrollments e
    -> ON s.student_id = e.student_id
    -> WHERE e.student_id is null;

-- 17. DISPLAY COURSES THAT NOT STUDENTS ENROLLED....
        SELECT course_name , c.course_id
    -> FROM courses c
    -> LEFT JOIN enrollments e
    -> ON c.course_id = e.course_id
    -> WHERE e.course_id is null;  

-- 18. DISPLAY FACULTY MEMBER WHO DO NOT BELONGS TO ANY DEPT.......
       SELECT faculty_name , faculty_id
    -> FROM faculty f
    -> LEFT JOIN departments d
    -> ON f.dept_id = d.dept_id
    -> WHERE d.dept_id is null;

-- 19. DISPLAY STUDENTS WHO STILL HAVE A DUE FEES GRATHER THAN 10000....
       SELECT first_name , last_name , f.due_fee
    -> FROM fees f
    -> LEFT JOIN students s
    -> ON f.student_id = s.student_id
    -> WHERE due_fee > 10000;

-- 20. DISPLAY EACH STUDENT NAME , COURSE NAME, ATTENDANCE STATUS..
        SELECT s.first_name , s.last_name , c.course_name, a.status
    -> FROM students s
    -> JOIN attendannce a
    -> ON s.student_id  = a.student_id
    -> JOIN courses c
    -> ON c.course_id = a.course_id
    -> JOIN enrollments e
    -> ON e.course_id = c.course_id;


                       