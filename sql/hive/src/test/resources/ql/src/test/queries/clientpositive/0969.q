drop database IF EXISTS SUN CASCADE;
create database SUN;
use SUN;
CREATE TABLE SIZ1_F(F1 STRING,F2 STRING,F3 DOUBLE,F4 STRING,F5 DOUBLE,F6 STRING,R1 STRING,R2 DOUBLE,R3 DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0969/SIZ1_F.csv' OVERWRITE INTO TABLE SIZ1_F;
SELECT COUNT(*) FROM SIZ1_F WHERE F1 = 'E1';