prompt Importing table TAX_PAYMENT_CORP...
set feedback off
set define off
insert into TAX_PAYMENT_CORP (TA_TAX_AGENCY, TA_CUIT_NUMBER, TA_TAX_TYPE, TA_PAYMENT_DATE, TA_PAYMENT_AMOUNT)
values (161, 47, 'RE', to_date('01-08-2017', 'dd-mm-yyyy'), 666.55);

insert into TAX_PAYMENT_CORP (TA_TAX_AGENCY, TA_CUIT_NUMBER, TA_TAX_TYPE, TA_PAYMENT_DATE, TA_PAYMENT_AMOUNT)
values (161, 47, 'AP', to_date('01-08-2017', 'dd-mm-yyyy'), 995.21);

insert into TAX_PAYMENT_CORP (TA_TAX_AGENCY, TA_CUIT_NUMBER, TA_TAX_TYPE, TA_PAYMENT_DATE, TA_PAYMENT_AMOUNT)
values (161, 47, 'GI', to_date('01-08-2017', 'dd-mm-yyyy'), 5.21);

insert into TAX_PAYMENT_CORP (TA_TAX_AGENCY, TA_CUIT_NUMBER, TA_TAX_TYPE, TA_PAYMENT_DATE, TA_PAYMENT_AMOUNT)
values (161, 47, 'AP', to_date('02-08-2017', 'dd-mm-yyyy'), 45.21);

insert into TAX_PAYMENT_CORP (TA_TAX_AGENCY, TA_CUIT_NUMBER, TA_TAX_TYPE, TA_PAYMENT_DATE, TA_PAYMENT_AMOUNT)
values (160, 74, 'RE', to_date('03-08-2017', 'dd-mm-yyyy'), 773.79);

insert into TAX_PAYMENT_CORP (TA_TAX_AGENCY, TA_CUIT_NUMBER, TA_TAX_TYPE, TA_PAYMENT_DATE, TA_PAYMENT_AMOUNT)
values (160, 74, 'SD', to_date('03-08-2017', 'dd-mm-yyyy'), 473.69);

insert into TAX_PAYMENT_CORP (TA_TAX_AGENCY, TA_CUIT_NUMBER, TA_TAX_TYPE, TA_PAYMENT_DATE, TA_PAYMENT_AMOUNT)
values (160, 74, 'AP', to_date('03-08-2017', 'dd-mm-yyyy'), 73.69);

insert into TAX_PAYMENT_CORP (TA_TAX_AGENCY, TA_CUIT_NUMBER, TA_TAX_TYPE, TA_PAYMENT_DATE, TA_PAYMENT_AMOUNT)
values (160, 74, 'GI', to_date('03-08-2017', 'dd-mm-yyyy'), 3573.69);

prompt Done.
