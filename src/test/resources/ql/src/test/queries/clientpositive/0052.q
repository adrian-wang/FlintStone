drop database IF EXISTS SUN CASCADE;
create database SUN;
use SUN;
CREATE TABLE EXPERIENCE(EXP_NAME STRING,BTH_DATE DOUBLE,WK_DATE DOUBLE,DESCR STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0052/EXPERIENCE.csv' OVERWRITE INTO TABLE EXPERIENCE;
SELECT COUNT(*) FROM EXPERIENCE;