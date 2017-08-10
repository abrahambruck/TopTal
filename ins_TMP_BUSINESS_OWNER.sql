prompt Importing table TMP_BUSINESS_OWNER...
set feedback off
set define off
insert into TMP_BUSINESS_OWNER (TMP_ID, NO_OWNER_NAME, NO_DOB, NO_WEBSITE, NO_ADDRESS1, NO_ADDRESS2, NO_CITY, NO_STATE_PROV, NO_COUNTRY, NO_POSTAL_CODE, NO_EMAIL, NO_HOME_PHONE, NO_CELL_PHONE, NO_FAX, NO_OWNER_ID)
values (100, 'Owner One', to_date('01-08-2000', 'dd-mm-yyyy'), null, '123 Main', null, 'New York', 'NY', 'USA', '11111', '123$456.com', '789-521-2585', null, null, 7);

insert into TMP_BUSINESS_OWNER (TMP_ID, NO_OWNER_NAME, NO_DOB, NO_WEBSITE, NO_ADDRESS1, NO_ADDRESS2, NO_CITY, NO_STATE_PROV, NO_COUNTRY, NO_POSTAL_CODE, NO_EMAIL, NO_HOME_PHONE, NO_CELL_PHONE, NO_FAX, NO_OWNER_ID)
values (100, 'Owner Two', to_date('01-08-1994', 'dd-mm-yyyy'), null, '444 Fourth', null, 'Yew Nerk', 'TX', 'YSA', '22222', null, null, '745-654-8216', null, null);

prompt Done.
