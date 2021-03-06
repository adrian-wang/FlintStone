drop database IF EXISTS HU CASCADE;
create database HU;
use HU;
CREATE TABLE STAFFV1(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0392/STAFFV1.csv' OVERWRITE INTO TABLE STAFFV1;
SELECT COUNT(*) FROM STAFFV1;
