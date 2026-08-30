-- LIKE OPERATOR QUERIES AS PER CLG PROJECT DOC....

--01. DISPLAY STUDENT NAMES START WITH 'A'......
       SELECT first_name
    -> FROM students
    -> WHERE first_name like 'A%';

--02. DISAPLY STUDENT NAMES ENDING WITH 'A'....
        SELECT  last_name
    -> FROM students
    -> WHERE last_name like '%a' ;    

--03. DISPLAY STUDENT NAMES CONTAINING 'an'....
      SELECT first_name , last_name
    -> FROM students
    -> WHERE first_name or last_name like '%an%';

--04. DISPLAY STUDENT NAMES SECOND LETTER WITH 'O'......
      SELECT first_name
    -> FROM students
    -> WHERE first_name like '_o%';

--05. DISPLAY STUDENT NAMES START WITH 'S' AND END WITH 'A'.....
       SELECT first_name
    -> FROM students
    -> WHERE first_name like 'S%a';

--06. DISPLAY STUDENT NAMES EXACTLY 5 CHAR...
      SELECT first_name
    -> FROM students
    -> WHERE first_name like '_____';

--07. DISPLAY STUDENT NMAES WITH 6 CHARS...
         SELECT first_name
    -> FROM students
    -> WHERE first_name like '______';

--08. DISPLAY MAIL ENDING WITH GMAIL.COM....
       SELECT email
    -> FROM students
    -> WHERE email like '%gmail.com';

--09. DISPLAY MAIL STARTING WITH 'STUDENT'....
    SELECT email
    -> FROM students
    -> WHERE email like 'student%';

-- 10. DISPLAY DEPARTMENT NAMES START WITH 'C'....
      SELECT dept_name
    -> FROM departments
    -> WHERE dept_name like 'c%';

-- 11. DISPLAY DEPARTMENT NAMES END WITH 'E'.....
       SELECT dept_name
    -> FROM departments
    -> WHERE dept_name like '%e';

--12. DISPLAY FACULTY NAME CONTAING 'RA'.....
      SELECT faculty_name
    -> FROM faculty
    -> WHERE faculty_name like '%ra%';

--13. DISPLAY FACULTY NAMES STARTING WITH 'DR' ........
       SELECT faculty_name
    -> FROM faculty
    -> WHERE faculty_name like 'DR%';

--14. DISPLAY DESIGNATION END WITH 'PROFESSOR'....
        SELECT designation
    -> FROM faculty
    -> WHERE designation like '%professor';

--15. DISAPLAY COURSES NAMES CONTAINING 'DATA'...
       SELECT course_name
    -> FROM courses
    -> WHERE course_name like '%data%';

--16. COURSE NAME START WITH 'WEB'....
        SELECT course_name
    -> FROM courses
    -> WHERE course_name like 'Web%';

--17. COURSE NAME END WITH 'SYSTEM'.....
      SELECT course_name
    -> FROM courses
    -> WHERE course_name like '%system';

--18. STUDENT NAME WHOSE THIRD LETTER IS 'N'......
      SELECT first_name
    -> FROM students
    -> WHERE first_name like '__n%';

--19. STUDENT NAME START WITH ANY LETTER BUT END WITH 'N'.......
       SELECT first_name
    -> FROM students
    -> WHERE first_name like '%n';
                


                          