drop database IF EXISTS hive CASCADE;
create database hive;
use hive;
CREATE TABLE SUPPLIER(S_SUPPKEY INT,S_NAME STRING,S_ADDRESS STRING,S_NATIONKEY INT,S_PHONE STRING,S_ACCTBAL DOUBLE,S_COMMENT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/tpch/supplier.tbl' OVERWRITE INTO TABLE SUPPLIER;
CREATE TABLE REGION(R_REGIONKEY INT,R_NAME STRING,R_COMMENT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/tpch/region.tbl' OVERWRITE INTO TABLE REGION;
CREATE TABLE PARTSUPP(PS_PARTKEY INT,PS_SUPPKEY INT,PS_AVAILQTY INT,PS_SUPPLYCOST DOUBLE,PS_COMMENT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/tpch/partsupp.tbl' OVERWRITE INTO TABLE PARTSUPP;
CREATE TABLE PART(P_PARTKEY INT,P_NAME STRING,P_MFGR STRING,P_BRAND STRING,P_TYPE STRING,P_SIZE INT,P_CONTAINER STRING,P_RETAILPRICE DOUBLE,P_COMMENT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/tpch/part.tbl' OVERWRITE INTO TABLE PART;
CREATE TABLE ORDERS(O_ORDERKEY INT,O_CUSTKEY INT,O_ORDERSTATUS STRING,O_TOTALPRICE DOUBLE,O_ORDERDATE DATE,O_ORDERPRIORITY STRING,O_CLERK STRING,O_SHIPPRIORITY INT,O_COMMENT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/tpch/orders.tbl' OVERWRITE INTO TABLE ORDERS;
CREATE TABLE NATION(N_NATIONKEY INT,N_NAME STRING,N_REGIONKEY INT,N_COMMENT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/tpch/nation.tbl' OVERWRITE INTO TABLE NATION;
CREATE TABLE LINEITEM(L_ORDERKEY INT,L_PARTKEY INT,L_SUPPKEY INT,L_LINENUMBER INT,L_QUANTITY DOUBLE,L_EXTENDEDPRICE DOUBLE,L_DISCOUNT DOUBLE,L_TAX DOUBLE,L_RETURNFLAG STRING,L_LINESTATUS STRING,L_SHIPDATE DATE,L_COMMITDATE DATE,L_RECEIPTDATE DATE,L_SHIPINSTRUCT STRING,L_SHIPMODE STRING,L_COMMENT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/tpch/lineitem.tbl' OVERWRITE INTO TABLE LINEITEM;
CREATE TABLE CUSTOMER(C_CUSTKEY INT,C_NAME STRING,C_ADDRESS STRING,C_NATIONKEY INT,C_PHONE STRING,C_ACCTBAL DOUBLE,C_MKTSEGMENT STRING,C_COMMENT STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'src/test/resources/plusd/tpch/customer.tbl' OVERWRITE INTO TABLE CUSTOMER;
select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#12' and p_container in ('SM CASE', 'SM BOX', 'SM PACK', 'SM PKG') and l_quantity >= 1 and l_quantity <= 1 + 10 and p_size between 1 and 5 and l_shipmode in ('AIR', 'AIR REG') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#23' and p_container in ('MED BAG', 'MED BOX', 'MED PKG', 'MED PACK') and l_quantity >= 10 and l_quantity <= 10 + 10 and p_size between 1 and 10 and l_shipmode in ('AIR', 'AIR REG') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#34' and p_container in ('LG CASE', 'LG BOX', 'LG PACK', 'LG PKG') and l_quantity >= 20 and l_quantity <= 20 + 10 and p_size between 1 and 15 and l_shipmode in ('AIR', 'AIR REG') and l_shipinstruct = 'DELIVER IN PERSON' );
