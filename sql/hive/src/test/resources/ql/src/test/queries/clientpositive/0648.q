drop database IF EXISTS FLATER CASCADE;
create database FLATER;
use FLATER;
CREATE TABLE NAMGRP2(EMPNUM DOUBLE,NAME STRING,GRP DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0648/NAMGRP2.csv' OVERWRITE INTO TABLE NAMGRP2;
SELECT EMPNUM FROM NAMGRP2 WHERE NAME = 'MARY' AND GRP = 20;
