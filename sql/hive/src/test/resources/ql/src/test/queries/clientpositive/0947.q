drop database IF EXISTS HU CASCADE;
create database HU;
use HU;
CREATE TABLE T100(C1 STRING,C2 STRING,C3 STRING,C4 STRING,C5 STRING,C6 STRING,C7 STRING,C8 STRING,C9 STRING,C10 STRING,C11 STRING,C12 STRING,C13 STRING,C14 STRING,C15 STRING,C16 STRING,C17 STRING,C18 STRING,C19 STRING,C20 STRING,C21 STRING,C22 STRING,C23 STRING,C24 STRING,C25 STRING,C26 STRING,C27 STRING,C28 STRING,C29 STRING,C30 STRING,C31 STRING,C32 STRING,C33 STRING,C34 STRING,C35 STRING,C36 STRING,C37 STRING,C38 STRING,C39 STRING,C40 STRING,C41 STRING,C42 STRING,C43 STRING,C44 STRING,C45 STRING,C46 STRING,C47 STRING,C48 STRING,C49 STRING,C50 STRING,C51 STRING,C52 STRING,C53 STRING,C54 STRING,C55 STRING,C56 STRING,C57 STRING,C58 STRING,C59 STRING,C60 STRING,C61 STRING,C62 STRING,C63 STRING,C64 STRING,C65 STRING,C66 STRING,C67 STRING,C68 STRING,C69 STRING,C70 STRING,C71 STRING,C72 STRING,C73 STRING,C74 STRING,C75 STRING,C76 STRING,C77 STRING,C78 STRING,C79 STRING,C80 STRING,C81 STRING,C82 STRING,C83 STRING,C84 STRING,C85 STRING,C86 STRING,C87 STRING,C88 STRING,C89 STRING,C90 STRING,C91 STRING,C92 STRING,C93 STRING,C94 STRING,C95 STRING,C96 STRING,C97 STRING,C98 STRING,C99 STRING,C100 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/0947/T100.csv' OVERWRITE INTO TABLE T100;
SELECT C6, C16, C26, C36, C46, C56, C66, C76, C86, C96, C100 FROM T100 WHERE C1 = 'ZA' AND C2 = 'ZB';