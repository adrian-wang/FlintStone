drop database IF EXISTS FLATER CASCADE;
create database FLATER;
use FLATER;
CREATE TABLE WORKWEEK(EMPNUM STRING,HOURS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0709/WORKWEEK.csv' OVERWRITE INTO TABLE WORKWEEK;
SELECT COUNT(*), MAX(EMPNUM), MIN(EMPNUM), AVG(HOURS) FROM WORKWEEK;
