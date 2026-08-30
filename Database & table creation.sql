-- DATABASE CREATION AND USE DATABASE...
CREATE DATABASE student_management_system;
USE  student_management_system;

--TABLES CREATION(departments,students,faculty,courses,enrollments,attendance,fees)
#DEPARTMENTS TABLE....

       CREATE TABLE departments (
    -> dept_id int primary key,
    -> dept_name varchar(255),
    -> hod_name varchar(255),
    -> building_no int
    -> );

 #STUDENTS TABLE....

        CREATE TABLE students(
    -> student_id int primary key auto_increment,
    -> first_name varchar(255),
    -> last_name varchar(255),
    -> gender varchar(10),
    -> date_of_birth date,
    -> email varchar(255),
    -> phone_num int unique key,
    -> address varchar(255) unique key,
    -> city varchar(255),
    -> state varchar(255),
    -> join_date date,
    -> dept_id int,
    -> foreign key(dept_id) references departments(dept_id)
    ->    );

#FACULTY TABLE...
    
    CREATE TABLE faculty (
    -> faculty_id int primary key auto_increment,
    -> faculty_name varchar(255),
    -> gender varchar(10),
    -> email varchar(255) unique key,
    -> phone int unique key,
    -> designation varchar(255),
    -> salary int,
    -> joining_date date,
    -> dept_id int,
    -> foreign key(dept_id) references departments(dept_id)
    -> );

#COURSES TABLE...

   
       CREATE TABLE courses (
    -> course_id int primary key auto_increment,
    -> course_name varchar(255),
    -> code int,
    -> credits varchar(255),
    -> semester varchar(30),
    -> dept_id int,
    -> foreign key(dept_id) references departments(dept_id)
    -> );

#ENROLLMENTS TABLE....

       CREATE TABLE enrollments (
    -> enroll_id int auto_increment,
    -> student_id int,
    -> course_id int,
    -> faculty_id int,
    -> enroll_date date,
    -> academic_year date,
    -> semester varchar(20),
    -> grade varchar(10),
    -> foreign key(student_id) references students(student_id),
    -> foreign key(course_id) references courses(course_id),
    -> foreign key(faculty_id) references faculty(faculty_id),
    -> primary key(enroll_id, student_id,course_id,faculty_id)
    -> );

#ATTENDANCE TABLE....

     CREATE TABLE attendannce (
    -> attend_id int primary key,
    -> student_id int,
    -> course_id int,
    -> attend_date date,
    -> status varchar(255),
    -> foreign key(student_id) references students(student_id),
    -> foreign key(course_id) references courses(course_id)
    -> );

 #FEES TABLE....

     CREATE TABLE fees (
    -> fee_id int auto_increment,
    -> student_id int,
    -> total_fee int,
    -> paid_fee int,
    -> due_fee int,
    -> payment_date date,
    -> status varchar(255),
    -> foreign key (student_id) references students(student_id),
    -> primary key(fee_id, student_id)
    -> );   


    -- DESCRIBE ALL TABLES...

    
    mysql> desc fees;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| fee_id       | int          | NO   | PRI | NULL    | auto_increment |
| student_id   | int          | NO   | PRI | NULL    |                |
| total_fee    | int          | YES  |     | NULL    |                |
| paid_fee     | int          | YES  |     | NULL    |                |
| due_fee      | int          | YES  |     | NULL    |                |
| payment_date | date         | YES  |     | NULL    |                |
| status       | varchar(255) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)

mysql> desc departments;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| dept_id     | int          | NO   | PRI | NULL    |       |
| dept_name   | varchar(255) | YES  |     | NULL    |       |
| hod_name    | varchar(255) | YES  |     | NULL    |       |
| building_no | int          | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc students;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| student_id    | int          | NO   | PRI | NULL    | auto_increment |
| first_name    | varchar(255) | YES  |     | NULL    |                |
| last_name     | varchar(255) | YES  |     | NULL    |                |
| gender        | varchar(10)  | YES  |     | NULL    |                |
| date_of_birth | date         | YES  |     | NULL    |                |
| email         | varchar(255) | YES  |     | NULL    |                |
| phone_num     | varchar(15)  | YES  | UNI | NULL    |                |
| address       | varchar(255) | YES  | UNI | NULL    |                |
| city          | varchar(255) | YES  |     | NULL    |                |
| state         | varchar(255) | YES  |     | NULL    |                |
| join_date     | date         | YES  |     | NULL    |                |
| dept_id       | int          | YES  | MUL | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
12 rows in set (0.00 sec)

mysql> desc courses;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| course_id   | int          | NO   | PRI | NULL    | auto_increment |
| course_name | varchar(255) | YES  |     | NULL    |                |
| code        | int          | YES  |     | NULL    |                |
| credits     | varchar(255) | YES  |     | NULL    |                |
| semester    | varchar(30)  | YES  |     | NULL    |                |
| dept_id     | int          | YES  | MUL | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> desc enrollments;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| enroll_id     | int         | NO   | PRI | NULL    | auto_increment |
| student_id    | int         | NO   | PRI | NULL    |                |
| course_id     | int         | NO   | PRI | NULL    |                |
| faculty_id    | int         | NO   | PRI | NULL    |                |
| enroll_date   | date        | YES  |     | NULL    |                |
| academic_year | date        | YES  |     | NULL    |                |
| semester      | varchar(20) | YES  |     | NULL    |                |
| grade         | varchar(10) | YES  |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> desc attendannce;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| attend_id   | int          | NO   | PRI | NULL    |       |
| student_id  | int          | YES  | MUL | NULL    |       |
| course_id   | int          | YES  | MUL | NULL    |       |
| attend_date | date         | YES  |     | NULL    |       |
| status      | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc faculty;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| faculty_id   | int          | NO   | PRI | NULL    | auto_increment |
| faculty_name | varchar(255) | YES  |     | NULL    |                |
| gender       | varchar(10)  | YES  |     | NULL    |                |
| email        | varchar(255) | YES  | UNI | NULL    |                |
| phone        | varchar(15)  | YES  | UNI | NULL    |                |
| designation  | varchar(255) | YES  |     | NULL    |                |
| salary       | int          | YES  |     | NULL    |                |
| joining_date | date         | YES  |     | NULL    |                |
| dept_id      | int          | YES  | MUL | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
9 rows in set (0.00 sec)
