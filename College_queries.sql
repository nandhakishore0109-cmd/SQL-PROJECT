# COLLEGE QUERIES...

-- JOINS

--01. DISPLAY COURSE WITH FACULTY NAME...
     SELECT c.course_name, f.faculty_name
    -> FROM courses c
    -> JOIN faculty f
    -> ON c.dept_id = f.dept_id;

-- 02. DISPLAY FACULTY TEACHING COURSES..
           SELECT f.faculty_id , f.faculty_name, c.course_name
    -> FROM faculty f
    -> JOIN departments d
    -> ON d.dept_id = f.dept_id
    -> JOIN courses c
    -> ON c.dept_id = d.dept_id;

-- 03. DISPLAY NO.OF COURSES HANDLED BY FACULTY....
        SELECT f.faculty_name , count(c.course_id) as total
    -> FROM courses c
    -> JOIN faculty f
    -> ON c.dept_id = f.dept_id
    -> GROUP BY f.faculty_name;

-- 04. DISPLAY STUDENTS AND THEIR SEMESTERS..
        SELECT s.first_name , c.semester
    -> FROM students s
    -> JOIN enrollments e
    -> ON s.student_id = e.student_id
    -> JOIN courses c
    -> ON e.course_id = c.course_id;

--05. DISPLAY ALL FACULTY EVEN IF NO COURSES ASSIGNES..
        SELECT f.faculty_name , c.course_name
    -> FROM faculty f
    -> JOIN departments d
    -> ON f.dept_id = d.dept_id
    -> JOIN courses c
    -> ON d.dept_id = c.dept_id;

-- 06. DISPLAY STUDENTS WITH DEPT AND FACULTY...
       SELECT s.first_name , f.faculty_name , d.dept_name
    -> FROM students s
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id
    -> JOIN faculty f
    -> ON d.dept_id = f.dept_id;

-- 07. DISPLAY COURSE CREDITS WITH FACULTY......
       SELECT c.course_name , c.credits, f.faculty_name
    -> FROM courses c
    -> JOIN departments d
    -> ON c.dept_id = d.dept_id
    -> JOIN faculty f
    -> ON d.dept_id = f.dept_id;

-- 08. DISPLAY STUDENT , FACULTY AND COURSE....
       SELECT s.first_name,c.course_name,f.faculty_name
    -> FROM students s
    -> JOIN enrollments e
    -> ON s.student_id = e.student_id
    -> JOIN courses c
    -> ON e.course_id = c.course_id
    -> JOIN departments d
    -> ON c.dept_id = d.dept_id
    -> JOIN faculty f
    -> ON f.dept_id = d.dept_id;

-- 09. DISPLAY COMPLETE COLLEGE INFORMATION.....
         SELECT s.first_name, f.faculty_name , c.course_name,d.dept_name
    -> FROM students s
    -> JOIN enrollments e
    -> ON s.student_id = e.student_id
    -> JOIN courses c
    -> ON e.course_id = c.course_id
    -> JOIN departments d
    -> ON c.dept_id = d.dept_id
    -> JOIN faculty f
    -> ON d.dept_id = f.dept_id;  


-- AGGREGATIONS....

-- 10. MINIMUM CREDITS.....
       SELECT MIN(credits) FROM courses;

-- GROUP BY & AGGREGATIONS......

-- 11. DISPPLAY FACULTY TEACHING MORE THAN 2 COURSES...
      SELECT f.faculty_name,f.faculty_id , count(course_id) as teaching_sub
    -> FROM faculty f
    -> JOIN departments d
    -> ON f.dept_id = d.dept_id
    -> JOIN courses c
    -> ON d.dept_id = c.dept_id
    -> GROUP BY f.faculty_name , f.faculty_id
    -> HAVING count(course_id) > 2;

-- JOINS & AGGREGATE......

-- 12. DISPLAY AVG PAID_FEE DEPARTMENT WISE...
        SELECT d.dept_name , AVG(f.paid_fee) as average
    -> FROM departments d
    -> JOIN students s
    -> ON d.dept_id = s.dept_id
    -> JOIN fees f
    -> ON s.student_id = f.student_id
    -> GROUP BY d.dept_name;

-- 13. DISPLAY TOTAL CREDITS FACULTY WISE......
       SELECT f.faculty_name , SUM(c.credits) as total
    -> FROM faculty f
    -> JOIN  departments d
    -> ON f.dept_id = d.dept_id
    -> JOIN courses c
    -> ON d.dept_id = c.dept_id
    -> GROUP BY f.faculty_name;

-- 14. DISPLAY STUDENTS ENROLLED IN EACH COURSE.......
       SELECT s.student_id , s.first_name , count(c.course_id) as total
    -> FROM students s
    -> JOIN courses c
    -> ON s.dept_id = c.dept_id
    -> GROUP BY s.student_id , s.first_name;


-- INTERVIEW QUESTIONS.....

-- 15. DISPLAY STUDENT COUNT DEPARTMENT WISE....
       SELECT d.dept_name , count(s.student_id)
    -> FROM departments d
    -> JOIN students s
    -> ON d.dept_id = s.dept_id
    -> GROUP BY d.dept_name;

-- 16. DISPLAY HIGHEST PAID_FEE IN DEPARTMENT WISE......
          SELECT d.dept_name , MAX(f.paid_fee) as highest
    -> FROM departments d
    -> JOIN students s
    -> ON d.dept_id = s.dept_id
    -> JOIN fees f
    -> ON s.student_id = f.student_id
    -> GROUP BY d.dept_name;

-- 17. DISPLAY FACULTY TEACHING MAXIMUM COURSES.....
       SELECT f.faculty_name , MAX(c.course_id) as highest
    -> FROM faculty f
    -> JOIN departments d
    -> ON f.dept_id = d.dept_id
    -> JOIN courses c
    -> ON d.dept_id = c.dept_id
    -> GROUP BY f.faculty_name;

-- 18. DISPLAY STUDENTS ENROLLED IN MORE THAN ONE COURSE.....
        SELECT s.first_name , count(c.course_id)
    -> FROM students s
    -> JOIN courses c
    -> ON s.dept_id = c.dept_id
    -> GROUP BY s.first_name
    -> HAVING count(c.course_id) > 1;

-- 19. DISPLAY TOP 3 OLDEST STUDENTS...
     SELECT s.student_id, s.first_name , date_of_birth
    -> FROM students s
    -> ORDER BY date_of_birth ASC
    -> limit 3;
    
        

            



                


      
    
                     