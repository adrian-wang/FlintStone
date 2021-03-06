drop database IF EXISTS CTS1 CASCADE;
create database CTS1;
use CTS1;
CREATE TABLE STAFFB(SALARY DOUBLE,EMPNAME STRING,HOURS DOUBLE,PNUM STRING,CITY STRING,SEX STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0855/STAFFB.csv' OVERWRITE INTO TABLE STAFFB;
SELECT NULLIF (EMPNAME,CITY), SALARY FROM CTS1.STAFFb WHERE SEX = 'M' AND PNUM NOT IN ('P1','P2','P3','P5','P7') AND (EMPNAME <> CITY OR EMPNAME IS NULL OR CITY IS NULL) ORDER BY PNUM;
