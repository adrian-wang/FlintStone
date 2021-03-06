drop database IF EXISTS FLATER CASCADE;
create database FLATER;
use FLATER;
CREATE TABLE TRANSIENT(WINDOW_ID DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0789/TRANSIENT.csv' OVERWRITE INTO TABLE TRANSIENT;
SELECT * FROM TRANSIENT ORDER BY WINDOW_ID;
