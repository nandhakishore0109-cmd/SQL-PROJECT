# BASIC QUERIESS....

-- 1. DISPLAY ALL DETAILS OF ALL STUDENTS...
      SELECT * FROM students;

-- 2. DISPLAY THE first_name , last_name , email OF ALL STUDENTS...
      SELECT first_name, last_name , email
    -> from students;

-- 3. DISPLAY ALL STUDENTS WHO BELONGS TO 'ECE'...
       SELECT * FROM students
    -> JOIN departments
    -> ON students.dept_id = departments.dept_id
    -> WHERE dept_name = 'electronics & communication engineering';

-- 4. DISPLAY ALL FACULTY MEMBERS WHOSE SALARY IS GRATER THAN 50000...
      SELECT *
    -> FROM faculty
    -> WHERE salary > 50000;    

-- 5. DISPLAY ALL dept_name IN ASC ORDER...
       SELECT dept_name
    -> FROM departments
    -> ORDER BY dept_name ASC;

-- 6. DISPLAY THE FIRST 10 STUDENTS...
       SELECT * FROM students
    -> LIMIT 10;    

-- 7. DISPLAY ALL DISTINCT STATES FROM STUDENTS...
      SELECT DISTINCT state
    -> FROM students;

-- 8. DISPLAY STUDENTS WHOSE first_name STARTS WITH 'A'...
      SELECT * FROM
    -> students
    -> WHERE first_name LIKE 'A%';

-- 9. DISPLAY FACULTY MEMBERS WHOSE SALARY BETWEEN 40000 AND 60000
      SELECT * FROM
    -> faculty
    -> WHERE salary BETWEEN 40000 AND 60000;

-- 10. COUNT THE TOTAL NO.OF STUDENTS...
       SELECT COUNT(*) FROM
    -> students;  

-- 11. DISPLAY STUDENTS WHO JOINED AFTER 2023-06-01..
      SELECT *
    -> FROM students
    -> WHERE join_date > 2023-06-01;

-- 12. DISPLAY ALL FACULTY MEMBERS DESC ORDER OF SALARY...
      SELECT *
    -> FROM faculty
    -> ORDER BY salary DESC;

-- 13. DISPLAY ALL STUDENTS WHO BELONGS TO ANDHRA PRADESH...
       SELECT *
    -> FROM students
    -> WHERE state = 'Andhra Pradesh';

-- 14. DISPLAY ALL COURSES THAT HAVE 4 CREDITS...
       SELECT *
    -> FROM courses
    -> WHERE credits = 4;

-- 15. DISPLAY ALL STUDENTS WHOSE EMAIL CONTAINS "gmail"...
       SELECT *
    -> FROM students
    -> WHERE email LIKE "%@gmail.com";

 -- 16. DISPLAY ALL NAMES WHERE first_name ENDS WITH 'a' ....
       SELECT *
    -> FROM students
    -> WHERE first_name LIKE "%a";

-- 17. DISPLAY ALL FACULTY MEMBERS WHOSE salary IS NOT BETWEEN 40000 AND 60000...
       SELECT *
    -> FROM faculty
    -> WHERE salary NOT BETWEEN 40000 AND 60000;

-- 18. DISPLAY ALL STUDENTS WHOSE CITY IS EITHER 'HYD' OR 'VIJ'...
        SELECT *
    -> FROM students
    -> WHERE city = 'Hyderabad' OR city = 'Vijayawada';

-- 19. DISPLAY THE TOTAL NO.OF FACULTY MEMBERS...
        SElECT COUNT(*)
    -> FROM faculty;

-- 20. DISPLAY ALL COURSES ORDERED BY course_name IN ASC ...
       SELECT *
    -> FROM courses
    -> ORDER BY course_name ASC;                                                