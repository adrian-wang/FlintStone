drop database IF EXISTS CTS1 CASCADE;
create database CTS1;
use CTS1;
CREATE TABLE TEMP1426(SALARY DOUBLE,EMPNAME STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0856/TEMP1426.csv' OVERWRITE INTO TABLE TEMP1426;
SELECT * FROM CTS1.TEMP1426 ORDER BY EMPNAME;
