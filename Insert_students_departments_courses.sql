-- INSERT INTO DEPARTMENTS TABLE...
 
        INSERT INTO departments (dept_id, dept_name, hod_name, building_no) VALUES
    -> (1, 'Computer Science Engineering', 'Dr. Ramesh Kumar', 101),
    -> (2, 'Electronics & Communication Engineering', 'Dr. S. Priya', 102),
    -> (3, 'Electrical & Electronics Engineering', 'Dr. V. Srinivas', 103),
    -> (4, 'Mechanical Engineering', 'Dr. K. Anil Kumar', 104),
    -> (5, 'Civil Engineering', 'Dr. M. Lakshmi', 105),
    -> (6, 'Information Technology', 'Dr. P. Rajesh', 106),
    -> (7, 'Artificial Intelligence & Data Science', 'Dr. N. Kavitha', 107),
    -> (8, 'Master of Business Administration', 'Dr. A. Sudhakar', 108),
    -> (9, 'Mathematics', 'Dr. G. Shalini', 109),
    -> (10, 'Physics', 'Dr. T. Narayana Rao', 110);

-- INSERT INTO STUDENTS TABLE...

    INSERT INTO students
(first_name, last_name, gender, date_of_birth, email, phone_num, address, city, state, join_date, dept_id)
VALUES
('Aarav','Sharma','Male','2004-01-15','aarav.sharma1@gmail.com','9000000001','House No.1, MG Road','Hyderabad','Telangana','2023-07-10',1),

('Vivaan','Reddy','Male','2004-02-18','vivaan.reddy2@gmail.com','9000000002','House No.2, Gandhi Nagar','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Aditya','Kumar','Male','2003-03-20','aditya.kumar3@gmail.com','9000000003','House No.3, Ashok Nagar','Visakhapatnam','Andhra Pradesh','2023-07-10',3),

('Sai','Krishna','Male','2004-04-05','sai.krishna4@gmail.com','9000000004','House No.4, Main Road','Warangal','Telangana','2023-07-10',4),

('Rahul','Verma','Male','2003-05-11','rahul.verma5@gmail.com','9000000005','House No.5, Park Street','Guntur','Andhra Pradesh','2023-07-10',5),

('Sneha','Rao','Female','2004-06-09','sneha.rao6@gmail.com','9000000006','House No.6, Lake View','Hyderabad','Telangana','2023-07-10',6),

('Priya','Patel','Female','2003-07-14','priya.patel7@gmail.com','9000000007','House No.7, Green Park','Nellore','Andhra Pradesh','2023-07-10',7),

('Ananya','Singh','Female','2004-08-21','ananya.singh8@gmail.com','9000000008','House No.8, Temple Road','Kurnool','Andhra Pradesh','2023-07-10',8),

('Kiran','Naidu','Male','2003-09-30','kiran.naidu9@gmail.com','9000000009','House No.9, Market Road','Tirupati','Andhra Pradesh','2023-07-10',9),

('Pooja','Mehta','Female','2004-10-10','pooja.mehta10@gmail.com','9000000010','House No.10, Ring Road','Karimnagar','Telangana','2023-07-10',10),

('Rohit','Yadav','Male','2003-11-12','rohit.yadav11@gmail.com','9000000011','House No.11, Colony Road','Hyderabad','Telangana','2023-07-10',1),

('Deepika','Joshi','Female','2004-12-08','deepika.joshi12@gmail.com','9000000012','House No.12, Station Road','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Arjun','Gupta','Male','2003-01-25','arjun.gupta13@gmail.com','9000000013','House No.13, Beach Road','Visakhapatnam','Andhra Pradesh','2023-07-10',3),

('Harsha','Reddy','Male','2004-02-16','harsha.reddy14@gmail.com','9000000014','House No.14, College Road','Warangal','Telangana','2023-07-10',4),

('Keerthana','Iyer','Female','2003-03-27','keerthana.iyer15@gmail.com','9000000015','House No.15, Airport Road','Guntur','Andhra Pradesh','2023-07-10',5),

('Nikhil','Mishra','Male','2004-04-19','nikhil.mishra16@gmail.com','9000000016','House No.16, Hill View','Hyderabad','Telangana','2023-07-10',6),

('Divya','Chowdary','Female','2003-05-29','divya.chowdary17@gmail.com','9000000017','House No.17, Church Street','Nellore','Andhra Pradesh','2023-07-10',7),

('Manoj','Rao','Male','2004-06-17','manoj.rao18@gmail.com','9000000018','House No.18, Railway Colony','Kurnool','Andhra Pradesh','2023-07-10',8),

('Bhavana','Shah','Female','2003-07-13','bhavana.shah19@gmail.com','9000000019','House No.19, New Colony','Tirupati','Andhra Pradesh','2023-07-10',9),

('Sandeep','Kumar','Male','2004-08-09','sandeep.kumar20@gmail.com','9000000020','House No.20, Vivekananda Nagar','Karimnagar','Telangana','2023-07-10',10),

('Lavanya','Reddy','Female','2003-09-11','lavanya.reddy21@gmail.com','9000000021','House No.21, Housing Board','Hyderabad','Telangana','2023-07-10',1),

('Varun','Patel','Male','2004-10-22','varun.patel22@gmail.com','9000000022','House No.22, Bus Stand Road','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Meghana','Naik','Female','2003-11-05','meghana.naik23@gmail.com','9000000023','House No.23, Teachers Colony','Visakhapatnam','Andhra Pradesh','2023-07-10',3),

('Akash','Rathod','Male','2004-12-01','akash.rathod24@gmail.com','9000000024','House No.24, Old Town','Warangal','Telangana','2023-07-10',4),

('Sowmya','Rani','Female','2003-06-24','sowmya.rani25@gmail.com','9000000025','House No.25, Indira Nagar','Guntur','Andhra Pradesh','2023-07-10',5);
INSERT INTO students
(first_name, last_name, gender, date_of_birth, email, phone_num, address, city, state, join_date, dept_id)
VALUES
('Rakesh','Naidu','Male','2003-07-18','rakesh.naidu26@gmail.com','9000000026','House No.26, Gandhi Colony','Hyderabad','Telangana','2023-07-10',6),

('Swathi','Reddy','Female','2004-08-11','swathi.reddy27@gmail.com','9000000027','House No.27, RTC Colony','Vijayawada','Andhra Pradesh','2023-07-10',7),

('Karthik','Varma','Male','2003-09-09','karthik.varma28@gmail.com','9000000028','House No.28, Beach Road','Visakhapatnam','Andhra Pradesh','2023-07-10',8),

('Nandini','Sharma','Female','2004-10-15','nandini.sharma29@gmail.com','9000000029','House No.29, Lake View','Warangal','Telangana','2023-07-10',9),

('Ajay','Kumar','Male','2003-11-21','ajay.kumar30@gmail.com','9000000030','House No.30, Ring Road','Guntur','Andhra Pradesh','2023-07-10',10),

('Tejaswi','Patel','Female','2004-12-05','tejaswi.patel31@gmail.com','9000000031','House No.31, Green Park','Hyderabad','Telangana','2023-07-10',1),

('Suresh','Yadav','Male','2003-01-30','suresh.yadav32@gmail.com','9000000032','House No.32, New Colony','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Harini','Rao','Female','2004-02-17','harini.rao33@gmail.com','9000000033','House No.33, MG Road','Visakhapatnam','Andhra Pradesh','2023-07-10',3),


('Vinay','Reddy','Male','2003-03-12','vinay.reddy34@gmail.com','9000000034','House No.34, Main Road','Warangal','Telangana','2023-07-10',4),

('Aishwarya','Gupta','Female','2004-04-08','aishwarya.gupta35@gmail.com','9000000035','House No.35, Ashok Nagar','Guntur','Andhra Pradesh','2023-07-10',5),

('Mahesh','Singh','Male','2003-05-16','mahesh.singh36@gmail.com','9000000036','House No.36, Temple Road','Hyderabad','Telangana','2023-07-10',6),

('Bhargavi','Naik','Female','2004-06-13','bhargavi.naik37@gmail.com','9000000037','House No.37, Church Street','Nellore','Andhra Pradesh','2023-07-10',7),

('Tarun','Chowdary','Male','2003-07-27','tarun.chowdary38@gmail.com','9000000038','House No.38, Station Road','Kurnool','Andhra Pradesh','2023-07-10',8),

('Sindhu','Iyer','Female','2004-08-22','sindhu.iyer39@gmail.com','9000000039','House No.39, Airport Road','Tirupati','Andhra Pradesh','2023-07-10',9),

('Praveen','Joshi','Male','2003-09-14','praveen.joshi40@gmail.com','9000000040','House No.40, Park Street','Karimnagar','Telangana','2023-07-10',10),

('Keerthi','Mishra','Female','2004-10-03','keerthi.mishra41@gmail.com','9000000041','House No.41, Vivekananda Nagar','Hyderabad','Telangana','2023-07-10',1),

('Lokesh','Patil','Male','2003-11-08','lokesh.patil42@gmail.com','9000000042','House No.42, Housing Board','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Sravani','Rathod','Female','2004-12-12','sravani.rathod43@gmail.com','9000000043','House No.43, Old Town','Visakhapatnam','Andhra Pradesh','2023-07-10',3),

('Naveen','Verma','Male','2003-01-19','naveen.verma44@gmail.com','9000000044','House No.44, Teachers Colony','Warangal','Telangana','2023-07-10',4),

('Pavani','Shah','Female','2004-02-28','pavani.shah45@gmail.com','9000000045','House No.45, College Road','Guntur','Andhra Pradesh','2023-07-10',5),

('Chaitanya','Reddy','Male','2003-03-25','chaitanya.reddy46@gmail.com','9000000046','House No.46, Indira Nagar','Hyderabad','Telangana','2023-07-10',6),

('Anusha','Kumari','Female','2004-04-14','anusha.kumari47@gmail.com','9000000047','House No.47, Bus Stand Road','Vijayawada','Andhra Pradesh','2023-07-10',7),

('Rohith','Naidu','Male','2003-05-09','rohith.naidu48@gmail.com','9000000048','House No.48, Market Road','Visakhapatnam','Andhra Pradesh','2023-07-10',8),

('Madhuri','Rani','Female','2004-06-18','madhuri.rani49@gmail.com','9000000049','House No.49, Railway Colony','Warangal','Telangana','2023-07-10',9),

('Dinesh','Kumar','Male','2003-07-06','dinesh.kumar50@gmail.com','9000000050','House No.50, Hill View','Guntur','Andhra Pradesh','2023-07-10',10);
INSERT INTO students
(first_name, last_name, gender, date_of_birth, email, phone_num, address, city, state, join_date, dept_id)
VALUES
('Abhishek','Reddy','Male','2003-08-15','abhishek.reddy51@gmail.com','9000000051','House No.51, SR Nagar','Hyderabad','Telangana','2023-07-10',1),

('Neha','Sharma','Female','2004-09-12','neha.sharma52@gmail.com','9000000052','House No.52, Benz Circle','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Surya','Kumar','Male','2003-10-20','surya.kumar53@gmail.com','9000000053','House No.53, MVP Colony','Visakhapatnam','Andhra Pradesh','2023-07-10',3),

('Likitha','Naidu','Female','2004-11-18','likitha.naidu54@gmail.com','9000000054','House No.54, Hanamkonda','Warangal','Telangana','2023-07-10',4),

('Gopi','Krishna','Male','2003-12-10','gopi.krishna55@gmail.com','9000000055','House No.55, Brodipet','Guntur','Andhra Pradesh','2023-07-10',5),

('Siri','Rao','Female','2004-01-22','siri.rao56@gmail.com','9000000056','House No.56, Dilsukhnagar','Hyderabad','Telangana','2023-07-10',6),

('Vamsi','Patel','Male','2003-02-14','vamsi.patel57@gmail.com','9000000057','House No.57, Auto Nagar','Vijayawada','Andhra Pradesh','2023-07-10',7),

('Shreya','Gupta','Female','2004-03-08','shreya.gupta58@gmail.com','9000000058','House No.58, Gajuwaka','Visakhapatnam','Andhra Pradesh','2023-07-10',8),

('Kishore','Yadav','Male','2003-04-19','kishore.yadav59@gmail.com','9000000059','House No.59, Kazipet','Warangal','Telangana','2023-07-10',9),

('Navya','Iyer','Female','2004-05-11','navya.iyer60@gmail.com','9000000060','House No.60, Arundelpet','Guntur','Andhra Pradesh','2023-07-10',10),

('Prasad','Varma','Male','2003-06-16','prasad.varma61@gmail.com','9000000061','House No.61, Kukatpally','Hyderabad','Telangana','2023-07-10',1),

('Deepthi','Naik','Female','2004-07-07','deepthi.naik62@gmail.com','9000000062','House No.62, Patamata','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Ravi','Chowdary','Male','2003-08-28','ravi.chowdary63@gmail.com','9000000063','House No.63, NAD Junction','Visakhapatnam','Andhra Pradesh','2023-07-10',3),

('Niharika','Joshi','Female','2004-09-09','niharika.joshi64@gmail.com','9000000064','House No.64, Subedari','Warangal','Telangana','2023-07-10',4),

('Manikanth','Shah','Male','2003-10-13','manikanth.shah65@gmail.com','9000000065','House No.65, Lakshmipuram','Guntur','Andhra Pradesh','2023-07-10',5),

('Aparna','Mishra','Female','2004-11-25','aparna.mishra66@gmail.com','9000000066','House No.66, Ameerpet','Hyderabad','Telangana','2023-07-10',6),

('Srinivas','Patil','Male','2003-12-05','srinivas.patil67@gmail.com','9000000067','House No.67, Governorpet','Vijayawada','Andhra Pradesh','2023-07-10',7),

('Harika','Verma','Female','2004-01-29','harika.verma68@gmail.com','9000000068','House No.68, Seethammadhara','Visakhapatnam','Andhra Pradesh','2023-07-10',8),

('Charan','Reddy','Male','2003-02-21','charan.reddy69@gmail.com','9000000069','House No.69, Nakkalagutta','Warangal','Telangana','2023-07-10',9),

('Jyothi','Kumari','Female','2004-03-30','jyothi.kumari70@gmail.com','9000000070','House No.70, Pattabhipuram','Guntur','Andhra Pradesh','2023-07-10',10),

('Santosh','Naidu','Male','2003-04-17','santosh.naidu71@gmail.com','9000000071','House No.71, LB Nagar','Hyderabad','Telangana','2023-07-10',1),

('Bhavya','Rani','Female','2004-05-26','bhavya.rani72@gmail.com','9000000072','House No.72, One Town','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Mohan','Singh','Male','2003-06-09','mohan.singh73@gmail.com','9000000073','House No.73, Maddilapalem','Visakhapatnam','Andhra Pradesh','2023-07-10',3),

('Anjali','Patel','Female','2004-07-20','anjali.patel74@gmail.com','9000000074','House No.74, Hunter Road','Warangal','Telangana','2023-07-10',4),

('Kiran','Rao','Male','2003-08-12','kiran.rao75@gmail.com','9000000075','House No.75, Amaravathi Road','Guntur','Andhra Pradesh','2023-07-10',5);
INSERT INTO students
(first_name, last_name, gender, date_of_birth, email, phone_num, address, city, state, join_date, dept_id)
VALUES
('Teja','Kumar','Male','2004-09-15','teja.kumar76@gmail.com','9000000076','House No.76, Jubilee Hills','Hyderabad','Telangana','2023-07-10',6),

('Sowjanya','Reddy','Female','2003-10-08','sowjanya.reddy77@gmail.com','9000000077','House No.77, Moghalrajpuram','Vijayawada','Andhra Pradesh','2023-07-10',7),

('Pranav','Naidu','Male','2004-11-21','pranav.naidu78@gmail.com','9000000078','House No.78, Akkayyapalem','Visakhapatnam','Andhra Pradesh','2023-07-10',8),

('Reshma','Sharma','Female','2003-12-13','reshma.sharma79@gmail.com','9000000079','House No.79, Kishanpura','Warangal','Telangana','2023-07-10',9),

('Vijay','Patel','Male','2004-01-24','vijay.patel80@gmail.com','9000000080','House No.80, Brindavan Gardens','Guntur','Andhra Pradesh','2023-07-10',10),

('Akhil','Rao','Male','2003-02-16','akhil.rao81@gmail.com','9000000081','House No.81, Miyapur','Hyderabad','Telangana','2023-07-10',1),

('Keerthana','Naidu','Female','2004-03-11','keerthana.naidu82@gmail.com','9000000082','House No.82, Kanuru','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Pavan','Reddy','Male','2003-04-28','pavan.reddy83@gmail.com','9000000083','House No.83, Dwaraka Nagar','Visakhapatnam','Andhra Pradesh','2023-07-10',3),

('Sushmitha','Iyer','Female','2004-05-09','sushmitha.iyer84@gmail.com','9000000084','House No.84, Hanamkonda','Warangal','Telangana','2023-07-10',4),

('Rohit','Verma','Male','2003-06-22','rohit.verma85@gmail.com','9000000085','House No.85, Kothapet','Guntur','Andhra Pradesh','2023-07-10',5),

('Naveena','Joshi','Female','2004-07-14','naveena.joshi86@gmail.com','9000000086','House No.86, Uppal','Hyderabad','Telangana','2023-07-10',6),

('Sai','Chowdary','Male','2003-08-05','sai.chowdary87@gmail.com','9000000087','House No.87, Benz Circle','Vijayawada','Andhra Pradesh','2023-07-10',7),

('Harshitha','Patil','Female','2004-09-17','harshitha.patil88@gmail.com','9000000088','House No.88, Lawsons Bay','Visakhapatnam','Andhra Pradesh','2023-07-10',8),

('Karthik','Mishra','Male','2003-10-30','karthik.mishra89@gmail.com','9000000089','House No.89, Kazipet','Warangal','Telangana','2023-07-10',9),

('Meghana','Singh','Female','2004-11-12','meghana.singh90@gmail.com','9000000090','House No.90, Vidyanagar','Guntur','Andhra Pradesh','2023-07-10',10),

('Aravind','Kumar','Male','2003-12-03','aravind.kumar91@gmail.com','9000000091','House No.91, Hitech City','Hyderabad','Telangana','2023-07-10',1),

('Lasya','Reddy','Female','2004-01-26','lasya.reddy92@gmail.com','9000000092','House No.92, Bhavanipuram','Vijayawada','Andhra Pradesh','2023-07-10',2),

('Nitin','Gupta','Male','2003-02-18','nitin.gupta93@gmail.com','9000000093','House No.93, MVP Colony','Visakhapatnam','Andhra Pradesh','2023-07-10',3),

('Pallavi','Naik','Female','2004-03-07','pallavi.naik94@gmail.com','9000000094','House No.94, Hunter Road','Warangal','Telangana','2023-07-10',4),

('Yash','Shah','Male','2003-04-15','yash.shah95@gmail.com','9000000095','House No.95, Brodipet','Guntur','Andhra Pradesh','2023-07-10',5),

('Anusha','Patel','Female','2004-05-21','anusha.patel96@gmail.com','9000000096','House No.96, KPHB Colony','Hyderabad','Telangana','2023-07-10',6),

('Manoj','Rathod','Male','2003-06-08','manoj.rathod97@gmail.com','9000000097','House No.97, Patamata','Vijayawada','Andhra Pradesh','2023-07-10',7),

('Divya','Rao','Female','2004-07-19','divya.rao98@gmail.com','9000000098','House No.98, Gopalapatnam','Visakhapatnam','Andhra Pradesh','2023-07-10',8),

('Ramesh','Yadav','Male','2003-08-11','ramesh.yadav99@gmail.com','9000000099','House No.99, Nakkalagutta','Warangal','Telangana','2023-07-10',9),

('Kavya','Krishna','Female','2004-09-25','kavya.krishna100@gmail.com','9000000100','House No.100, Arundelpet','Guntur','Andhra Pradesh','2023-07-10',10);


-- INSERT INTO COURSES TABLE....

  INSERT INTO courses (course_name, code, credits, semester, dept_id) VALUES
('Programming in C', 1001, '4', '1', 1),
('Data Structures', 1002, '4', '2', 1),
('Database Management Systems', 1003, '4', '3', 1),
('Operating Systems', 1004, '4', '4', 1),
('Computer Networks', 1005, '4', '5', 1),

('Digital Electronics', 2001, '4', '1', 2),
('Microprocessors', 2002, '4', '3', 2),
('Digital Signal Processing', 2003, '4', '5', 2),

('Electrical Circuits', 3001, '4', '1', 3),
('Power Systems', 3002, '4', '4', 3),

('Engineering Mechanics', 4001, '4', '1', 4),
('Thermodynamics', 4002, '4', '3', 4),

('Structural Analysis', 5001, '4', '2', 5),
('Concrete Technology', 5002, '4', '5', 5),

('Python Programming', 6001, '4', '1', 6),
('Web Technologies', 6002, '4', '4', 6),

('Machine Learning', 7001, '4', '5', 7),
('Artificial Intelligence', 7002, '4', '6', 7),
('Data Mining', 7003, '4', '7', 7),

('Principles of Management', 8001, '3', '1', 8),
('Financial Management', 8002, '3', '3', 8),

('Engineering Mathematics-I', 9001, '4', '1', 9),
('Engineering Mathematics-II', 9002, '4', '2', 9),

('Engineering Physics', 10001, '4', '1', 10),
('Applied Physics', 10002, '4', '2', 10);