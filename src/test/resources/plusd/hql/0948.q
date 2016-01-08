set hive.ql.mode=hql;
drop database IF EXISTS HU CASCADE;
create database HU;
use HU;
CREATE TABLE V_WORKS3(EMPNUM STRING,PNUM STRING,HOURS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/V_WORKS3.csv' OVERWRITE INTO TABLE V_WORKS3;
CREATE TABLE V_WORKS2(EMPNUM STRING,PNUM STRING,HOURS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/V_WORKS2.csv' OVERWRITE INTO TABLE V_WORKS2;
CREATE TABLE V_WORKS1(EMPNUM STRING,PNUM STRING,HOURS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/V_WORKS1.csv' OVERWRITE INTO TABLE V_WORKS1;
CREATE TABLE VSTAFF3(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/VSTAFF3.csv' OVERWRITE INTO TABLE VSTAFF3;
CREATE TABLE UPDATE_VIEW9(EMPNAME STRING,CITY STRING,GRADE DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPDATE_VIEW9.csv' OVERWRITE INTO TABLE UPDATE_VIEW9;
CREATE TABLE UPDATE_VIEW8(EMPNUM STRING,EMPNAME STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPDATE_VIEW8.csv' OVERWRITE INTO TABLE UPDATE_VIEW8;
CREATE TABLE UPDATE_VIEW7(EMPNAME STRING,CITY STRING,GRADE DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPDATE_VIEW7.csv' OVERWRITE INTO TABLE UPDATE_VIEW7;
CREATE TABLE UPDATE_VIEW6(EMPNAME STRING,CITY STRING,GRADE DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPDATE_VIEW6.csv' OVERWRITE INTO TABLE UPDATE_VIEW6;
CREATE TABLE UPDATE_VIEW5(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPDATE_VIEW5.csv' OVERWRITE INTO TABLE UPDATE_VIEW5;
CREATE TABLE UPDATE_VIEW4(PNUM STRING,EMPNUM STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPDATE_VIEW4.csv' OVERWRITE INTO TABLE UPDATE_VIEW4;
CREATE TABLE UPDATE_VIEW3(EMPNUM STRING,PNUM STRING,HOURS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPDATE_VIEW3.csv' OVERWRITE INTO TABLE UPDATE_VIEW3;
CREATE TABLE UPDATE_VIEW2(HOURS DOUBLE,EMPNUM STRING,PNUM STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPDATE_VIEW2.csv' OVERWRITE INTO TABLE UPDATE_VIEW2;
CREATE TABLE UPDATE_VIEW1(CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPDATE_VIEW1.csv' OVERWRITE INTO TABLE UPDATE_VIEW1;
CREATE TABLE TESTREPORT(TESTNO STRING,RESULT STRING,TESTTYPE STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TESTREPORT.csv' OVERWRITE INTO TABLE TESTREPORT;
CREATE TABLE TEMP_SS(EMPNUM STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TEMP_SS.csv' OVERWRITE INTO TABLE TEMP_SS;
CREATE TABLE SUBSP(EMPNUM STRING,PNUM STRING,HOURS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/SUBSP.csv' OVERWRITE INTO TABLE SUBSP;
CREATE TABLE STAFF_WORKS_DESIGN(NAME STRING,COST DOUBLE,PROJECT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/STAFF_WORKS_DESIGN.csv' OVERWRITE INTO TABLE STAFF_WORKS_DESIGN;
CREATE TABLE STAFFV2_VIEW(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/STAFFV2_VIEW.csv' OVERWRITE INTO TABLE STAFFV2_VIEW;
CREATE TABLE STAFFV2(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/STAFFV2.csv' OVERWRITE INTO TABLE STAFFV2;
CREATE TABLE STAFFV1(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/STAFFV1.csv' OVERWRITE INTO TABLE STAFFV1;
CREATE TABLE STAFF2(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/STAFF2.csv' OVERWRITE INTO TABLE STAFF2;
CREATE TABLE SET_TEST(EMP1 STRING,EMP_AVG DOUBLE,EMP_MAX DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/SET_TEST.csv' OVERWRITE INTO TABLE SET_TEST;
CREATE TABLE MULTI_YEAR_OBSERV(CITY STRING,HIGH DOUBLE,LOW DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/MULTI_YEAR_OBSERV.csv' OVERWRITE INTO TABLE MULTI_YEAR_OBSERV;
CREATE TABLE EXTREME_TEMPS(YEAR_OBSERV DOUBLE,HIGH DOUBLE,LOW DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/EXTREME_TEMPS.csv' OVERWRITE INTO TABLE EXTREME_TEMPS;
CREATE TABLE DUP_COL(EMP1 STRING,PNO STRING,HOURS DOUBLE,HOURS_2 DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/DUP_COL.csv' OVERWRITE INTO TABLE DUP_COL;
CREATE TABLE DOMAIN_VIEW(EMPNUM STRING,PNUM STRING,HOURS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/DOMAIN_VIEW.csv' OVERWRITE INTO TABLE DOMAIN_VIEW;
CREATE TABLE CELSIUS_OBSERV(CITY STRING,YEAR_OBSERV DOUBLE,MIN_C DOUBLE,MAX_C DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/CELSIUS_OBSERV.csv' OVERWRITE INTO TABLE CELSIUS_OBSERV;
CREATE TABLE WORKS1(EMPNUM STRING,PNUM STRING,HOURS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/WORKS1.csv' OVERWRITE INTO TABLE WORKS1;
CREATE TABLE WORKS(EMPNUM STRING,PNUM STRING,HOURS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/WORKS.csv' OVERWRITE INTO TABLE WORKS;
CREATE TABLE WHICH_SCHEMA1(C1 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/WHICH_SCHEMA1.csv' OVERWRITE INTO TABLE WHICH_SCHEMA1;
CREATE TABLE VTABLE(COL1 DOUBLE,COL2 DOUBLE,COL3 DOUBLE,COL4 DOUBLE,COL5 DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/VTABLE.csv' OVERWRITE INTO TABLE VTABLE;
CREATE TABLE UPUNIQ(NUMKEY DOUBLE,COL2 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/UPUNIQ.csv' OVERWRITE INTO TABLE UPUNIQ;
CREATE TABLE TOKENS(PROG_NO DOUBLE,TOKEN_NO DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TOKENS.csv' OVERWRITE INTO TABLE TOKENS;
CREATE TABLE TMP(T1 STRING,T2 DOUBLE,T3 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TMP.csv' OVERWRITE INTO TABLE TMP;
CREATE TABLE TEXT80(TEXXT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TEXT80.csv' OVERWRITE INTO TABLE TEXT80;
CREATE TABLE TEXT512(TEXXT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TEXT512.csv' OVERWRITE INTO TABLE TEXT512;
CREATE TABLE TEXT256(TEXXT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TEXT256.csv' OVERWRITE INTO TABLE TEXT256;
CREATE TABLE TEXT240(TEXXT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TEXT240.csv' OVERWRITE INTO TABLE TEXT240;
CREATE TABLE TEXT132(TEXXT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TEXT132.csv' OVERWRITE INTO TABLE TEXT132;
CREATE TABLE TEXT1024(TEXXT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TEXT1024.csv' OVERWRITE INTO TABLE TEXT1024;
CREATE TABLE TEMP_S(EMPNUM STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TEMP_S.csv' OVERWRITE INTO TABLE TEMP_S;
CREATE TABLE TEMP_OBSERV(YEAR_OBSERV DOUBLE,CITY STRING,MAX_TEMP DOUBLE,MIN_TEMP DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/TEMP_OBSERV.csv' OVERWRITE INTO TABLE TEMP_OBSERV;
CREATE TABLE T8(COL1 STRING,COL2 STRING,COL3 STRING,COL4 STRING,COL5 STRING,COL6 STRING,COL7 STRING,COL8 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/T8.csv' OVERWRITE INTO TABLE T8;
CREATE TABLE T4(STR110 STRING,NUM6 DOUBLE,COL3 STRING,COL4 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/T4.csv' OVERWRITE INTO TABLE T4;
CREATE TABLE T240(STR240 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/T240.csv' OVERWRITE INTO TABLE T240;
CREATE TABLE T2000(STR110 STRING,STR120 STRING,STR130 STRING,STR140 STRING,STR150 STRING,STR160 STRING,STR170 STRING,STR180 STRING,STR190 STRING,STR200 STRING,STR210 STRING,STR216 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/T2000.csv' OVERWRITE INTO TABLE T2000;
CREATE TABLE T12(COL1 STRING,COL2 STRING,COL3 STRING,COL4 STRING,COL5 STRING,COL6 STRING,COL7 STRING,COL8 STRING,COL9 STRING,COL10 STRING,COL11 DOUBLE,COL12 DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/T12.csv' OVERWRITE INTO TABLE T12;
CREATE TABLE T118(STR118 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/T118.csv' OVERWRITE INTO TABLE T118;
CREATE TABLE T100(C1 STRING,C2 STRING,C3 STRING,C4 STRING,C5 STRING,C6 STRING,C7 STRING,C8 STRING,C9 STRING,C10 STRING,C11 STRING,C12 STRING,C13 STRING,C14 STRING,C15 STRING,C16 STRING,C17 STRING,C18 STRING,C19 STRING,C20 STRING,C21 STRING,C22 STRING,C23 STRING,C24 STRING,C25 STRING,C26 STRING,C27 STRING,C28 STRING,C29 STRING,C30 STRING,C31 STRING,C32 STRING,C33 STRING,C34 STRING,C35 STRING,C36 STRING,C37 STRING,C38 STRING,C39 STRING,C40 STRING,C41 STRING,C42 STRING,C43 STRING,C44 STRING,C45 STRING,C46 STRING,C47 STRING,C48 STRING,C49 STRING,C50 STRING,C51 STRING,C52 STRING,C53 STRING,C54 STRING,C55 STRING,C56 STRING,C57 STRING,C58 STRING,C59 STRING,C60 STRING,C61 STRING,C62 STRING,C63 STRING,C64 STRING,C65 STRING,C66 STRING,C67 STRING,C68 STRING,C69 STRING,C70 STRING,C71 STRING,C72 STRING,C73 STRING,C74 STRING,C75 STRING,C76 STRING,C77 STRING,C78 STRING,C79 STRING,C80 STRING,C81 STRING,C82 STRING,C83 STRING,C84 STRING,C85 STRING,C86 STRING,C87 STRING,C88 STRING,C89 STRING,C90 STRING,C91 STRING,C92 STRING,C93 STRING,C94 STRING,C95 STRING,C96 STRING,C97 STRING,C98 STRING,C99 STRING,C100 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/T100.csv' OVERWRITE INTO TABLE T100;
CREATE TABLE SV(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/SV.csv' OVERWRITE INTO TABLE SV;
CREATE TABLE STAFF4(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/STAFF4.csv' OVERWRITE INTO TABLE STAFF4;
CREATE TABLE STAFF3(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/STAFF3.csv' OVERWRITE INTO TABLE STAFF3;
CREATE TABLE STAFF1(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/STAFF1.csv' OVERWRITE INTO TABLE STAFF1;
CREATE TABLE STAFF(EMPNUM STRING,EMPNAME STRING,GRADE DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/STAFF.csv' OVERWRITE INTO TABLE STAFF;
CREATE TABLE SS(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/SS.csv' OVERWRITE INTO TABLE SS;
CREATE TABLE RR(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/RR.csv' OVERWRITE INTO TABLE RR;
CREATE TABLE QQ(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/QQ.csv' OVERWRITE INTO TABLE QQ;
CREATE TABLE PROJ1(PNUM STRING,PNAME STRING,PTYPE STRING,BUDGET DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/PROJ1.csv' OVERWRITE INTO TABLE PROJ1;
CREATE TABLE PROJ(PNUM STRING,PNAME STRING,PTYPE STRING,BUDGET DOUBLE,CITY STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/PROJ.csv' OVERWRITE INTO TABLE PROJ;
CREATE TABLE PP_7(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/PP_7.csv' OVERWRITE INTO TABLE PP_7;
CREATE TABLE PP_15(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/PP_15.csv' OVERWRITE INTO TABLE PP_15;
CREATE TABLE PP(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/PP.csv' OVERWRITE INTO TABLE PP;
CREATE TABLE P7(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/P7.csv' OVERWRITE INTO TABLE P7;
CREATE TABLE P15_7(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/P15_7.csv' OVERWRITE INTO TABLE P15_7;
CREATE TABLE P15_15(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/P15_15.csv' OVERWRITE INTO TABLE P15_15;
CREATE TABLE P15(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/P15.csv' OVERWRITE INTO TABLE P15;
CREATE TABLE P12(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/P12.csv' OVERWRITE INTO TABLE P12;
CREATE TABLE P1(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/P1.csv' OVERWRITE INTO TABLE P1;
CREATE TABLE OO(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/OO.csv' OVERWRITE INTO TABLE OO;
CREATE TABLE NN(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/NN.csv' OVERWRITE INTO TABLE NN;
CREATE TABLE NEXTKEY(KEYNUM DOUBLE,AUTHOR STRING,DOLLARS DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/NEXTKEY.csv' OVERWRITE INTO TABLE NEXTKEY;
CREATE TABLE MM2(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/MM2.csv' OVERWRITE INTO TABLE MM2;
CREATE TABLE MM(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/MM.csv' OVERWRITE INTO TABLE MM;
CREATE TABLE LONGINT(LONG_INT DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/LONGINT.csv' OVERWRITE INTO TABLE LONGINT;
CREATE TABLE LL(NUMTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/LL.csv' OVERWRITE INTO TABLE LL;
CREATE TABLE KK(FLOATTEST FLOAT) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/KK.csv' OVERWRITE INTO TABLE KK;
CREATE TABLE JJ_20(FLOATTEST FLOAT) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/JJ_20.csv' OVERWRITE INTO TABLE JJ_20;
CREATE TABLE JJ(FLOATTEST FLOAT) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/JJ.csv' OVERWRITE INTO TABLE JJ;
CREATE TABLE INT10(COL1 DOUBLE,COL2 DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/INT10.csv' OVERWRITE INTO TABLE INT10;
CREATE TABLE II(DOUBLETEST FLOAT) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/II.csv' OVERWRITE INTO TABLE II;
CREATE TABLE HH(SMALLTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/HH.csv' OVERWRITE INTO TABLE HH;
CREATE TABLE GG(REALTEST FLOAT) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/GG.csv' OVERWRITE INTO TABLE GG;
CREATE TABLE FLO15(COL1 FLOAT) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/FLO15.csv' OVERWRITE INTO TABLE FLO15;
CREATE TABLE FIPS1(FIPS_TEST STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/FIPS1.csv' OVERWRITE INTO TABLE FIPS1;
CREATE TABLE FF(INTTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/FF.csv' OVERWRITE INTO TABLE FF;
CREATE TABLE EE(INTTEST DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/EE.csv' OVERWRITE INTO TABLE EE;
CREATE TABLE ECCO(C1 STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/ECCO.csv' OVERWRITE INTO TABLE ECCO;
CREATE TABLE DEC15(COL1 DOUBLE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/DEC15.csv' OVERWRITE INTO TABLE DEC15;
CREATE TABLE DD(CHARTEST STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/DD.csv' OVERWRITE INTO TABLE DD;
CREATE TABLE CC(CHARTEST STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/CC.csv' OVERWRITE INTO TABLE CC;
CREATE TABLE BB(CHARTEST STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/BB.csv' OVERWRITE INTO TABLE BB;
CREATE TABLE BASE_TESTREPORT(TESTNO STRING,RESULT STRING,TESTTYPE STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/BASE_TESTREPORT.csv' OVERWRITE INTO TABLE BASE_TESTREPORT;
CREATE TABLE AA(CHARTEST STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH '_datapath_/plusd/0948/AA.csv' OVERWRITE INTO TABLE AA;
SELECT C5, C20, C35, C40, C55, C60, C75, C80, C90, C95, C100 FROM T100 WHERE C1 = 'ZA' AND C2 = 'ZB';