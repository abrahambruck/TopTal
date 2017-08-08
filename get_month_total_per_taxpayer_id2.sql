--  @get_month_total_per_taxpayer_id2 1 2 
--
set scan on
set echo off
set veri off
column tp_document_number heading "Taxpayer ID" format 9999999999
column tp_taxpayer_name heading "Taxpayer Name" format A30
column "Monthly Total" format 99,999,999.99
select tp.tp_document_number, tp.tp_taxpayer_name, sum(ti.ti_payment_amount) AS "Monthly Total"
from   taxpayer_ind tp, tax_payment_ind ti
where  tp.tp_document_number = &1
and    tp.tp_document_number = ti.ti_document_number
and    ti_payment_date between '01-'||'&&2' and last_day('01-'||'&2')
group by tp.tp_document_number, tp.tp_taxpayer_name
/
