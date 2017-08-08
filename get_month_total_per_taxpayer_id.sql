--  @get_month_total_per_taxpayer_id
--
set scan on
set echo off
set veri off
column tp_document_number heading "Taxpayer ID" format 9999999999
column tp_taxpayer_name heading "Taxpayer Name" format A30
column "Monthly Total" format 99,999,999.99
undefine date
prompt Enter taxpayer_id as a number (12345):
prompt Enter date in MON-YY format:
select tp.tp_document_number, tp.tp_taxpayer_name, sum(ti.ti_payment_amount) AS "Monthly Total"
from   taxpayer_ind tp, tax_payment_ind ti
where  tp.tp_document_number = &taxpayer_id
and    tp.tp_document_number = ti.ti_document_number
and    ti_payment_date between '01-'||'&&date' and last_day('01-'||'&date')
group by tp.tp_document_number, tp.tp_taxpayer_name
/


