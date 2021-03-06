drop database IF EXISTS CTS1 CASCADE;
create database CTS1;
use CTS1;
CREATE TABLE STAFFB(SALARY DOUBLE,EMPNAME STRING,HOURS DOUBLE,PNUM STRING,CITY STRING,SEX STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0802/STAFFB.csv' OVERWRITE INTO TABLE STAFFB;
SELECT SALARY, EMPNAME, HOURS, CITY FROM CTS1.STAFFb WHERE NULLIF(SALARY,HOURS) IS NULL ORDER BY EMPNAME;
