--  @get_month_total_per_taxpayer_id3 22222 'AUG-17' ''
--  @get_month_total_per_taxpayer_id3 74 'AUG-17' ''
--  @get_month_total_per_taxpayer_id3 '' 'AUG-17' 'T'
--  @get_month_total_per_taxpayer_id3 '' 'AUG-17' 'C'
--
set scan on
set echo off
set veri off
set paus off
set feed off
set autoprint on
column tc_cuit_number  heading "CUIT Number"   format 9999999999
column tc_corp_name    heading "Company Name" format A30
column tp_document_number  heading "Taxpayer ID"   format 9999999999
column tp_taxpayer_name    heading "Taxpayer Name" format A30
column Month           heading "Month"         format A6
column "Monthly Total" format  99,999,999.99
ttitle "Monthly Total Tax Paid"
break on Month
variable x refcursor 
begin
if '&1' < 10000 or '&3' = 'C' then

  open :x for select '&2' as Month, tc.tc_cuit_number, tc.tc_corp_name, sum(ta.ta_payment_amount) AS "Monthly Total"
  from   taxpayer_corp tc, tax_payment_corp ta
  where  (tc.tc_cuit_number = '&1' or '&1' IS NULL)
  and    tc.tc_cuit_number = ta.ta_cuit_number
  and    ta_payment_date between '01-'||'&2' and last_day('01-'||'&2')
  group by tc.tc_cuit_number, tc.tc_corp_name;

end if;
if '&1' >= 10000 or '&3' = 'T' then
  open :x for select '&2' as Month, tp.tp_document_number, tp.tp_taxpayer_name, sum(ti.ti_payment_amount) AS "Monthly Total"
  from   taxpayer_ind tp, tax_payment_ind ti
  where  (tp.tp_document_number = '&1' or '&1' IS NULL)
  and    tp.tp_document_number = ti.ti_document_number
  and    ti_payment_date between '01-'||'&2' and last_day('01-'||'&2')
  group by tp.tp_document_number, tp.tp_taxpayer_name;
end if;
    DBMS_OUTPUT.PUT_LINE('==================================================================================');
	DBMS_OUTPUT.PUT_LINE('===== ****** NOTE ****** =========================================================');
    DBMS_OUTPUT.PUT_LINE('==================================================================================');
    DBMS_OUTPUT.PUT_LINE('Parameters were not properly entered ...');
	DBMS_OUTPUT.PUT_LINE('First parameter must be a Taxpayer Number or ''''');
	DBMS_OUTPUT.PUT_LINE('Second parameter must be a Month Year in MON-YY format');
	DBMS_OUTPUT.PUT_LINE('Third parameter must be ''T'' for Taxpayer individual or ''C'' for Company or ''''');
	DBMS_OUTPUT.PUT_LINE('==================================================================================');
end;
/
set feed on
set paus on

