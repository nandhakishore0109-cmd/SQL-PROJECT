-- UPDATE QUERIES USING CLG-DOC....

--01. UPDATE'S STUDENT EMAIL....
      UPDATE students
    -> SET email = 'nandhakishore@pace.ac.in'
    -> WHERE student_id = 1;

-- 02. INCREASE '1000' FEE FOR CSE DEPT....
       UPDATE fees f
    -> JOIN students s
    -> ON f.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id
    -> SET total_fee = total_fee + 1000
    -> WHERE dept_name = 'Computer Science Engineering';

--03. UPDATE DEPARTMENT NAME
      UPDATE departments
    -> SET dept_name = 'ECE'
    -> WHERE dept_name = 'Electronice & Communication Engineering' ;

--04. UPDATE FACULTY DESIGNATION...
      UPDATE faculty
    -> SET designation = 'professor'
    -> WHERE designation = 'Professor';

--05. UPDATE COURSE CREDITS...
       UPDATE courses
    -> SET credits = 7
    -> WHERE course_id = 10;

--06. UPDATE GRADE OF A STUDENT...
      UPDATE enrollments
    -> SET grade = 'E'
    -> WHERE student_id = 1;

--07. UPDATE ALL STUDENTS FROM CSE TO ECE.....
        UPDATE students
    -> SET dept_id = (
    -> SELECT dept_id
    -> FROM departments
    -> WHERE dept_name = 'Computer Science Engineering' )
    -> WHERE dept_id = (
    -> SELECT dept_id
    -> FROM departments
    -> WHERE dept_name = 'ECE');       

-- 08. UPDATE THE DESIGNATION OF FACULTY WORKING IN CSE DEPT...
       UPDATE faculty
    -> JOIN departments d
    -> ON faculty.dept_id = d.dept_id
    -> SET designation = 'New'
    -> WHERE dept_name = 'Computer Science Engineering';
    

-- DELETE OPERATION BY USING COLLEGE DOCUMENT......

-- 09. DELETE ONE STUDENT...
        DELETE FROM enrollments
    -> WHERE enroll_id = 10;   # we cant delete parent tables because used relationship 

--10.  DELETE STUDENTS OLDER THAN 25...
       DELETE FROM students
    -> WHERE age>25;

--11. DELLETE ENROLLMENTS OF STUDENTS IN THE CSE DEPT.....
           DELETE e
    -> FROM enrollments e
    -> JOIN students s
    -> ON e.student_id = s.student_id
    -> JOIN departments d
    -> ON s.dept_id = d.dept_id
    -> WHERE dept_name = 'Computer Science Engineering';

--12. DELETE FACULTY NOT TEACHING ANY COURSES......
      DELETE f
    -> FROM faculty f
    -> LEFT JOIN courses c
    -> ON f.dept_id = c.dept_id
    -> WHERE c.course_id is null ;

--13. DELETE STUDENTS WHOSE GRADE IS FAIL...
      DELETE s
    -> FROM enrollments e
    -> JOIN students s
    -> ON e.student_id = s.student_id
    -> WHERE e.grade = 'Fail';        
         

     