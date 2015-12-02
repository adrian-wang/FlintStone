drop database IF EXISTS FLATER CASCADE;
create database FLATER;
use FLATER;
CREATE TABLE WEIRDPAD(NAAM STRING,SPONSOR STRING,PADCHAR STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0699/WEIRDPAD.csv' OVERWRITE INTO TABLE WEIRDPAD;
SELECT TRIM (LEADING FROM B.NAAM)  FROM WEIRDPAD A, WEIRDPAD B WHERE TRIM (BOTH 'B' FROM A.NAAM) = TRIM (BOTH 'X' FROM B.SPONSOR);