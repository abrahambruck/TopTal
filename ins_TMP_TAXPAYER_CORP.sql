prompt Importing table TMP_TAXPAYER_CORP...
set feedback off
set define off
insert into TMP_TAXPAYER_CORP (TMP_ID, NC_CORP_NAME, NC_START_DATE, NC_WEBSITE, NC_ADDRESS1, NC_ADDRESS2, NC_CITY, NC_STATE_PROV, NC_COUNTRY, NC_POSTAL_CODE, NC_EMAIL, NC_HOME_PHONE, NC_CELL_PHONE, NC_FAX, NC_OWNER_ID)
values (100, 'Corp One', to_date('01-08-2016', 'dd-mm-yyyy'), null, '444 West Ave', null, 'Jersey City', 'NJ', 'USA', '85214', 'email@yahoo.com', '854-569-5214', null, null, 7);

prompt Done.
