drop database IF EXISTS HU CASCADE;
create database HU;
use HU;
CREATE TABLE STAFF_WORKS_DESIGN(NAME STRING,COST DOUBLE,PROJECT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0396/STAFF_WORKS_DESIGN.csv' OVERWRITE INTO TABLE STAFF_WORKS_DESIGN;
SELECT COUNT(*),SUM(COST) FROM STAFF_WORKS_DESIGN;