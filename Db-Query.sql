CREATE SEQUENCE CUSTOMER_ID_GENERATOR 
    START WITH 400000 
    INCREMENT BY 1 
    MAXVALUE 999999 
    NOCYCLE;

CREATE SEQUENCE ACCOUNT_NO_GENERATOR 
    START WITH 10000000000 
    INCREMENT BY 1 
    MAXVALUE 99999999999 
    NOCYCLE;

CREATE SEQUENCE TRANSACTION_NO_GENERATOR 
    START WITH 1000 
    INCREMENT BY 1 
    MAXVALUE 9999999999999999 
    NOCYCLE;

CREATE TABLE BANK_PROFILE_TBL(
    ACCOUNT_NO NUMBER(11),
    NAME VARCHAR2(256),
    DOB DATE,
    PHONE_NO VARCHAR2(13),
    EMAIL VARCHAR2(75),
    PROOF_ID VARCHAR2(20),
    GENDER VARCHAR2(10),
    ACCOUNT_TYPE VARCHAR2(10),
    BALANCE NUMBER(18,2),
    CONSTRAINT ACCOUNT_NO_PRMY_CONST PRIMARY KEY(ACCOUNT_NO),
    CONSTRAINT PHONE_NO_UNIQ_CONST UNIQUE(PHONE_NO),
    CONSTRAINT EMAIL_UNIQ_CONST UNIQUE(EMAIL),
    CONSTRAINT GENDER_CHK_CONST CHECK(GENDER IN ('male', 'female')),
    CONSTRAINT ACCOUNT_TYPE_CHK_CONST CHECK(ACCOUNT_TYPE IN ('savings', 'current'))
);

CREATE TABLE BANK_TRANSACTION_TBL(
    ACCOUNT_NO NUMBER(11),
    CUSTOMER_ID NUMBER(6),
    PASSWORD VARCHAR2(20),
    PIN NUMBER(4),
    BANKING_TYPE VARCHAR2(20),
    CONSTRAINT ACCOUNT_NO_FRGN_CONST FOREIGN KEY(ACCOUNT_NO) REFERENCES BANK_PROFILE_TBL(ACCOUNT_NO),
    CONSTRAINT ACCOUNT_NO_UNIQ_CONST UNIQUE(ACCOUNT_NO),
    CONSTRAINT CUSTOMER_ID_PRMY_CONST PRIMARY KEY(CUSTOMER_ID),
    CONSTRAINT BANKING_TYPE_CHK_CONST CHECK(BANKING_TYPE IN ('corporate', 'retail'))
);

CREATE TABLE BANK_ADDRESS_TBL(
    ACCOUNT_NO NUMBER(11),
    DOOR_NUMBER VARCHAR2(20),
    STREET_NAME VARCHAR2(50),
    LOCATION VARCHAR2(100),
    CITY VARCHAR2(50),
    STATE VARCHAR2(50),
    COUNTRY VARCHAR2(50),
    PINCODE NUMBER(10),
    ADDRESS_TYPE VARCHAR2(20),
    CONSTRAINT ACCOUNT_NO_ADD_FRGN_CONST FOREIGN KEY(ACCOUNT_NO) REFERENCES BANK_PROFILE_TBL(ACCOUNT_NO),
    CONSTRAINT ADDRESS_TYPE_CHK_CONST CHECK(ADDRESS_TYPE IN ('communication', 'permanent'))
);

CREATE TABLE BANK_TRANSACTION_DETAILS_TBL(
    ACCOUNT_NO NUMBER(11),
    TRANSACTION_ID VARCHAR2(20),
    TYPE VARCHAR2(20),
    AMOUNT NUMBER(18,2),
    BALANCE NUMBER(18,2),
    DATE_TRANS DATE,
    CONSTRAINT ACCOUNT_NO_TRANS_FRGN_CONST FOREIGN KEY(ACCOUNT_NO) REFERENCES BANK_PROFILE_TBL(ACCOUNT_NO)
);

DROP TABLE BANK_TRANSACTION_DETAILS_TBL;
DROP TABLE BANK_ADDRESS_TBL;
DROP TABLE BANK_TRANSACTION_TBL;
DROP TABLE BANK_PROFILE_TBL;
DROP SEQUENCE ACCOUNT_NO_GENERATOR;
DROP SEQUENCE CUSTOMER_ID_GENERATOR;
DROP SEQUENCE TRANSACTION_NO_GENERATOR;
