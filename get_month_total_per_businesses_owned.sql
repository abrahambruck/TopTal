--  @get_month_total_per_businesses_owned 'Jon Johnny' AUG-17
--
set scan on
set echo off
set veri off
set paus off
set feed off
set autoprint on
column bo_cuit_number  heading "CUIT Number"   format 9999999999
column bo_owner_name   heading "Owner Name"    format A30
column bo_corp_name    heading "Company Name" format A30
column "Monthly Total" format  99,999,999.99
select bo.bo_owner_name, bo.bo_cuit_number, bo.bo_corp_name, sum(ta.ta_payment_amount) AS "Monthly Total"
  from   v_businesses_owned bo, tax_payment_corp ta
  where  (bo.bo_owner_name = '&1' or '&1' = '' or '&1' IS NULL)
  and    bo.bo_cuit_number = ta.ta_cuit_number
  and    ta_payment_date between '01-'||'&&2' and last_day('01-'||'&2')
  group by bo.bo_owner_name, bo.bo_cuit_number, bo.bo_corp_name
  order by bo.bo_owner_name, bo.bo_cuit_number, bo.bo_corp_name
/
set feed on
set paus on
