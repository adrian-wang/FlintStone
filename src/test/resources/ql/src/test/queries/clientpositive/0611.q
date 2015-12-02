drop database IF EXISTS SUN CASCADE;
create database SUN;
use SUN;
CREATE TABLE MID1(P_KEY DOUBLE,F_KEY DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0611/MID1.csv' OVERWRITE INTO TABLE MID1;
SELECT MAX(F_KEY),MIN(F_KEY),MAX(P_KEY),MIN(P_KEY) FROM MID1;