drop database IF EXISTS CTS1 CASCADE;
create database CTS1;
use CTS1;
CREATE TABLE STAFFA(HOURS DOUBLE,SALARY DOUBLE,EMPNUM STRING,PNUM DOUBLE,EMPNAME STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0894/STAFFA.csv' OVERWRITE INTO TABLE STAFFA;
CREATE TABLE STAFF1(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0894/STAFF1.csv' OVERWRITE INTO TABLE STAFF1;
SELECT * FROM STAFF1 NATURAL FULL OUTER JOIN STAFFA ORDER BY EMPNUM, EMPNAME, GRADE, PNUM;
