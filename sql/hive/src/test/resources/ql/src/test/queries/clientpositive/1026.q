drop database IF EXISTS MCGINN CASCADE;
create database MCGINN;
use MCGINN;
CREATE TABLE TABLEFGHIJKLMNOPQ19(COL2 DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/1026/TABLEFGHIJKLMNOPQ19.csv' OVERWRITE INTO TABLE TABLEFGHIJKLMNOPQ19;
SELECT COL2                 FROM  TABLEFGHIJKLMNOPQ19;
