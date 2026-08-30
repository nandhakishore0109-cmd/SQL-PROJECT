-- WINDOW FUNCTION QUERIES....

--01. DISPLAY EVERY STUDENTS NAME , PAID FEE AND AVG PAID FEE....
      SELECT s.first_name , f.paid_fee,
    -> AVG(f.paid_fee) OVER() as average
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id;

--02. DISPLAY EVERY COURSE NAME AND CREITS AND AVG CREDITS....
        SELECT c.course_name , credits,
    -> AVG(credits) over()as average
    -> FROM courses c;

--03. DISPLAY EVERY STUDENTS NAME ,DEPT NAME ,PAID FEE AND AVG PAIDFEE PER DEPT.....
      SELECT s.first_name , d.dept_name , f.paid_fee,
    -> AVG(f.paid_fee) OVER(partition by d.dept_name) as avg
    -> FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id;

--04. DISPLAY EVERY STUDENTS NAME, DEPT NAME , PAID FEE, MAX PAID FEE IN THEIR DEPT....
         SELECT s.first_name , d.dept_name, f.paid_fee,
    -> MAX(f.paid_fee) OVER(partition by d.dept_name) as max
    -> FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id;

--05. DISPLAY EVERY STUDENTS NAME, DEPT NAME , PAID FEE, MIN PAID FEE IN THEIR DEPT....
       SELECT s.first_name , d.dept_name, f.paid_fee,
    -> MIN(f.paid_fee) OVER(partition by d.dept_name) as MIN
    ->  FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id;

--06.  DISPLAY EVERY STUDENTS NAME, DEPT NAME , PAID FEE, TOTAL COLLECTED PAID FEE IN THEIR DEPT....     
      SELECT s.first_name , d.dept_name, f.paid_fee,
    -> SUM(f.paid_fee) OVER(partition by d.dept_name) as total
    -> FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id;

--07. DISPLAY EVERY COURSE WITH ITS DEPT WISE AVG CREDITS....
    SELECT c.course_name , c.course_id ,
    -> AVG(c.credits) over(partition by d.dept_name)
    -> FROM courses c
    -> JOIN departments d
    -> ON c.dept_id = d.dept_id;

--08. ASSIGN A ROW NUMBER FOR STUDENT NAME , PAIDFEE BASED ON HIGH TO LOW....
      SELECT s.first_name ,f.paid_fee,
    -> ROW_NUMBER() OVER(order by f.paid_fee desc) as new
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id;

--09. DISPLAY EVERY STUDENT WITH NAME, DEPT_ID , PAID FEE,DEPT WISE ROW NUMBER, HIGH PAID FEE FIRST...
      SELECT d.dept_id, s.first_name, f.paid_fee,
    -> ROW_NUMBER() OVER(partition by d.dept_id order by f.paid_fee desc) as new
    -> FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id;

--10. DISPLAY EVERY COURSE WITH COURSE NAME , DEPT_ID , CREDITS DEPT WISE ROW NUMBER FROM DESC..
      SELECT c.course_name, d.dept_id, c.credits,
    -> ROW_NUMBER() OVER(partition by d.dept_id order by c.credits desc) as new_row
    -> FROM courses c
    -> JOIN departments d
    -> ON c.dept_id = d.dept_id;

--11. DISPLAY EVERY STUDENTS NAME, PAIDFEE, RANK BASED ON PAID FEE DESC...
    SELECT s.first_name, f.paid_fee,
    -> RANK() OVER(order by f.paid_fee desc) as new_rank
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id;

--12. DISPLAY EVERY STUDENTS NAME, DEPT_ID, PAID FEE, DEPT WISE RANK FROM HIGH..
       SELECT s.first_name, d.dept_id ,f.paid_fee,
    -> RANK() OVER(partition by dept_id order by f.paid_fee desc) as new_rank
    -> FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id;  

--13. DISPLAY EVERY COURSE NAME, CREDITS RANK BASED ON CREDITS HIGH...
      SELECT c.course_name , c.credits ,
    -> DENSE_RANK() OVER(order by c.credits desc) as new_rank
    -> FROM courses c;

--14. DISPLAY EVERY STUDENTIS NAME,PAIDFEE,PREVIOUS PAID FEE....
      SELECT s.first_name, f.paid_fee,
    -> LAG(f.paid_fee) OVER(order by s.student_id) as lag_new
    ->  FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id;

--15. DISPLAY EVERY STUDENT NAME ,PAIDFEE NEXT STUDENTS PAID FEE.....
          SELECT s.first_name, f.paid_fee,
    -> LEAD(f.paid_fee) OVER(order by s.student_id) as lead_new
    -> FROM fees f
    -> JOIN students s
    ->  ON f.student_id = s.student_id;

--16. DISPLAY STUDENT NAME,PAID FEE, PREVIOUS FEE AND DIFFERENCE BETWEEN CUREENT FEE AND PREVIOUS FEE...
      SELECT s.first_name, f.paid_fee,
    -> f.paid_fee - LAG(f.paid_fee) OVER(order by s.student_id) as lag_new
    -> FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id;      

--17. DISPLAY STUDENT NAME, DEPT_ID, PAID FEE FIND DEPT WISE RUNNIN TOTAL OF PAID FEE......
      SELECT s.first_name,d.dept_id,f.paid_fee,
    -> SUM(f.paid_fee)  over(partition by dept_id order by s.student_id) as running
    -> FROM fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id;

--18. DISPLAY COURSE NAME, CREDITS, RUNNING TOTAL OF CREDITS....
         SELECT c.course_name , credits,
    -> SUM(credits) OVER(order by course_id) as running
    -> FROM courses c;

--19. DISPLAY COURSE NAME , DEPT ID, CREDITS DEPT WISE RUNNING TOTAL OF CREDITS.......# change the columns using alias from other table like adapt
       SELECT c.course_name,c.dept_id,c.credits,
    -> SUM(c.credits) OVER(partition by c.dept_id order by c.course_id) as running
    -> FROM courses c;





                                         
        