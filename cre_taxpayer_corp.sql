create table taxpayer_corp (
tc_cuit_number     number        not null,
tc_corp_name       varchar2(100) not null,
tc_start_date      date,
tc_website         varchar2(50),
tc_address_id      number,
tc_owner_id        number        not null,
constraint pk_taxpayer_corp primary key (tc_cuit_number),
constraint fk_taxpayer_corp_addr  foreign key (tc_address_id) references address_master(am_address_id)--,
--constraint fk_taxpayer_corp_owner foreign key (tc_owner_id)   references business_owner(bo_owner_id)
);