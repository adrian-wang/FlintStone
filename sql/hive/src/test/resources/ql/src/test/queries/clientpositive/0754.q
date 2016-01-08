drop database IF EXISTS HU CASCADE;
create database HU;
use HU;
CREATE TABLE VSTAFF3(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0754/VSTAFF3.csv' OVERWRITE INTO TABLE VSTAFF3;
CREATE TABLE STAFF3(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0754/STAFF3.csv' OVERWRITE INTO TABLE STAFF3;
drop database IF EXISTS FLATER CASCADE;
create database FLATER;
use FLATER;
CREATE TABLE STAFF66(SALARY DOUBLE,EMPNAME STRING,GRADE DOUBLE,EMPNUM STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0754/STAFF66.csv' OVERWRITE INTO TABLE STAFF66;
SELECT EMPNUM, EMPNAME, SALARY FROM HU.STAFF3 NATURAL LEFT OUTER JOIN STAFF66 WHERE EMPNUM > 'E1' ORDER BY EMPNUM ASC;