# SUBQUERIES USING COLLEGE_MANAGEMENT_SYSTEM

-- O1. DISPLAY THE STUDENTS WHO BELONGS TO COMPUTER SCIENCE DEPT....
       SELECT *
    -> FROM students
    -> WHERE dept_id = (
    -> SELECT dept_id
    -> FROM departments
    -> WHERE dept_name = 'Computer Science Engineering'
    -> );

-- 02. DISPLAY THE STUDENTS WHO PAID HIGHEST FEES....
          SELECT s.student_id , s.first_name, f.paid_fee
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id
    -> WHERE f.paid_fee = (
    -> SELECT MAX(paid_fee)
    -> FROM fees
    -> );   

-- 03.  DISPLAY THE STUDENTS WHO PAID HIGHEST FEES...
          SELECT s.first_name , f.paid_fee
    -> FROM students s
    -> JOIN fees f
    -> WHERE paid_fee = (
    -> SELECT min(paid_fee)
    -> FROM fees);

-- 04. DISPLAY STUDENTS WHO PAID_FEE IS GRATER THAN THE AVERAGE PAID_FEE....
       SELECT s.first_name, f.paid_fee
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id
    -> WHERE paid_fee > (
    -> SELECT AVG(paid_fee)
    -> FROM fees);

-- 05. DISPLAY STUDENTS WHO DUE_FEE IS GRATHER THAN THE AVG DUE_FEE....
       
mysql> SELECT s.first_name,f.due_fee
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id
    -> WHERE due_fee > (
    -> SELECT AVG(due_fee) as due
    -> FROM fees);

-- 06. DISPLAY COURSES OFFERED BY THE ECE DEPT...
      SELECT course_name
    -> FROM courses
    -> WHERE dept_id = (
    -> SELECT dept_id
    -> FROM departments
    -> WHERE dept_name = 'Electronics & Communication');

-- 07. DISPLAY FACULTY MEMBERS WHO BELONGS TO MECHANICAL ENGINEERING....
          SELECT faculty_name
    -> FROM faculty
    -> WHERE dept_id = (
    -> SELECT dept_id
    -> FROM departments
    -> WHERE dept_name = 'Mechanical Engineering' );

-- 08. DISPLAY STUDENTS WHO BELONGS TO THE DEPARTMENT HOD IS DR.Rmaesh Kumar....
      SELECT first_name , last_name , student_id
    -> FROM students
    -> WHERE dept_id = (
    -> SELECT dept_id
    -> FROM departments
    -> WHERE hod_name = 'Dr. Ramesh Kumar' );

-- 09. DISPLAY DEPARTMENTS THAT HAVE ATLEAST ON STUDENT......
       SELECT dept_name
    -> FROM departments
    -> WHERE dept_id IN (
    -> SELECT dept_id
    -> FROM students);

-- 10. DISPLAY DEPARTMENTS THAT HAVE NO ONE STUDENT.
      SELECT dept_name
    -> FROM departments
    -> WHERE dept_id NOT IN (
    -> SELECT dept_id
    -> FROM students );


-- CASE&WHEN STATEMENTS QUERIES....
    
--11. FEES CATEGORY :DISPLAY STUDENT NAME PAID FEE FEE CATEGORY RULES paid_fee >= 50000 = high, paid_fee >= 30000 then medium otherwise low    
      SELECT s.first_name, f.paid_fee,
    -> CASE
    -> WHEN f.paid_fee >= 50000 THEN 'High'
    -> WHEN f.paid_fee >= 30000 THEN 'Medium'
    -> ELSE 'Medium'
    -> END AS fee_category
    -> FROM students s
    -> JOIN fees f
    -> ON s.student_id = f.student_id;

--12. 

        



                 