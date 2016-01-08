drop database IF EXISTS HU CASCADE;
create database HU;
use HU;
CREATE TABLE II(DOUBLETEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0237/II.csv' OVERWRITE INTO TABLE II;
SELECT * FROM II WHERE DOUBLETEST > 123456.123450 and DOUBLETEST < 123456.123462;