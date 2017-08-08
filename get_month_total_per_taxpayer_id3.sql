--  @get_month_total_per_taxpayer_id3 1 2 
--
set scan on
set echo off
set veri off
set paus off
set feed off
set autoprint on
column tp_cuit_number  heading "Taxpayer ID" format 9999999999
column tc_corp_name    heading "Taxpayer Name" format A30
column "Monthly Total" format  99,999,999.99
variable x refcursor 
begin
if &1 < 10000 then
  open :x for select tc.tc_cuit_number, tc.tc_corp_name, sum(ta.ta_payment_amount) AS "Monthly Total"
  from   taxpayer_corp tc, tax_payment_corp ta
  where  tc.tc_cuit_number = &1
  and    tc.tc_cuit_number = ta.ta_cuit_number
  and    ta_payment_date between '01-'||'&&2' and last_day('01-'||'&2')
  group by tc.tc_cuit_number, tc.tc_corp_name;
else
  open :x for select tp.tp_document_number, tp.tp_taxpayer_name, sum(ti.ti_payment_amount) AS "Monthly Total"
  from   taxpayer_ind tp, tax_payment_ind ti
  where  tp.tp_document_number = &1
  and    tp.tp_document_number = ti.ti_document_number
  and    ti_payment_date between '01-'||'&&2' and last_day('01-'||'&2')
  group by tp.tp_document_number, tp.tp_taxpayer_name;
end if;
end;
/
set feed on
set paus on

