prompt Importing table BUSINESS_OWNER...
set feedback off
set define off

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (1, 47, 11111, 'Jon Johnny', to_date('01-08-2001', 'dd-mm-yyyy'), 5);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (2, 99, null, 'Baba Inda', to_date('01-08-1981', 'dd-mm-yyyy'), 4);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (2, 47, null, 'Baba Inda', to_date('01-11-2004', 'dd-mm-yyyy'), 6);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (1, 77, 11111, 'Jon Johnny', to_date('01-08-2001', 'dd-mm-yyyy'), 5);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (2, 74, null, 'Baba Inda', to_date('01-08-1981', 'dd-mm-yyyy'), 4);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (2, 88, null, 'Baba Inda', to_date('01-11-2004', 'dd-mm-yyyy'), 6);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (1, 88, 33333, 'Jon Johnny', to_date('01-08-2001', 'dd-mm-yyyy'), 5);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (4, 88, null, 'Eighty Eight', to_date('01-08-1981', 'dd-mm-yyyy'), 4);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (5, 77, null, 'Seventy Seven', to_date('01-11-2004', 'dd-mm-yyyy'), 6);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (6, 66, null, 'Sixty Six', to_date('01-08-2001', 'dd-mm-yyyy'), 5);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (6, 44, null, 'Sixty Six', to_date('01-08-1981', 'dd-mm-yyyy'), 4);

insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB, BO_ADDRESS_ID)
values (6, 222, null, 'Sixty Six', to_date('01-11-2004', 'dd-mm-yyyy'), 6);
prompt Done.
