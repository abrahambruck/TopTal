prompt Importing table TAX_TYPE...
set feedback off
set define off
insert into TAX_TYPE (TT_TAX_TYPE, TT_TAX_DESC)
values ('SD', 'Stamp Duty');

insert into TAX_TYPE (TT_TAX_TYPE, TT_TAX_DESC)
values ('RE', 'Real Estate');

insert into TAX_TYPE (TT_TAX_TYPE, TT_TAX_DESC)
values ('AP', 'Automotive Patent');

insert into TAX_TYPE (TT_TAX_TYPE, TT_TAX_DESC)
values ('GI', 'Gross Income');

prompt Done.
