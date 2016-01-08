drop database IF EXISTS SUN CASCADE;
create database SUN;
use SUN;
CREATE TABLE PROJ_M(PNUM STRING,PNAME STRING,PTYPE STRING,BUDGET DOUBLE,CITY STRING,MGR STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0589/PROJ_M.csv' OVERWRITE INTO TABLE PROJ_M;
SELECT COUNT(*) FROM PROJ_M WHERE MGR = 'E5';