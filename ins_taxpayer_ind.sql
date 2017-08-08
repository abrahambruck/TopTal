prompt Importing table TAXPAYER_IND...
set feedback off
set define off
insert into TAXPAYER_IND (TP_DOCUMENT_NUMBER, TP_TAXPAYER_NAME, TP_DOB, TP_ADDRESS_ID)
values (11111, 'Juan Won', to_date('01-08-1994', 'dd-mm-yyyy'), 3);

insert into TAXPAYER_IND (TP_DOCUMENT_NUMBER, TP_TAXPAYER_NAME, TP_DOB, TP_ADDRESS_ID)
values (22222, 'Tuly Tutu', to_date('01-08-1978', 'dd-mm-yyyy'), 2);

insert into TAXPAYER_IND (TP_DOCUMENT_NUMBER, TP_TAXPAYER_NAME, TP_DOB, TP_ADDRESS_ID)
values (33333, 'Thunder Thor', to_date('01-08-1777', 'dd-mm-yyyy'), 1);

prompt Done.
