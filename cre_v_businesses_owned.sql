--  @cre_v_businesses_owned
--
create or replace view v_businesses_owned
as
select bo.bo_owner_name, bo.bo_cuit_number, tc.tc_corp_name AS bo_corp_name
from   business_owner bo, taxpayer_corp tc
where  bo.bo_cuit_number = tc.tc_cuit_number
order by bo.bo_cuit_number, bo.bo_owner_name
;