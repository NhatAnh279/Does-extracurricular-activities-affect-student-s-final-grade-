
CREATE TABLE student_performance (
    school VARCHAR(10),
    sex ENUM('F','M'),
    age INT,
    address ENUM('U','R'),
    famsize ENUM('LE3', 'GT3'),
    Pstatus ENUM('T', 'A'),
    Medu INT,
    Fedu INT,
    Mjob VARCHAR(15),
    Fjob VARCHAR(15),
    reason VARCHAR(15),
    guardian ENUM('mother', 'father', 'other'),
    traveltime INT,
    studytime INT,
    failures INT,
    schoolsup ENUM('yes', 'no'),
    famsup ENUM('yes', 'no'),
    paid ENUM('yes', 'no'),
    activities ENUM('yes', 'no'),
    nursery ENUM('yes', 'no'),
    higher ENUM('yes', 'no'),
    internet ENUM('yes', 'no'),
    romantic ENUM('yes', 'no'),
    famrel INT,
    freetime INT,
    goout INT,
    Dalc INT,
    Walc INT,
    health INT, 
    absences INT,
    G1 INT,
    G2 INT,
    G3 INT
);

SET GLOBAL local_infile = 'ON';
USE new_schema;
LOAD DATA LOCAL INFILE 'C:/Users/Admin/Downloads/student-mat.csv'
INTO TABLE student_performance
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT COUNT(*)
FROM student_performance



