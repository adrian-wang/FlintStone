drop database IF EXISTS SUN CASCADE;
create database SUN;
use SUN;
CREATE TABLE STAFF14(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0536/STAFF14.csv' OVERWRITE INTO TABLE STAFF14;
SELECT EMPNAME FROM STAFF14 WHERE EMPNAME = 'SUN';