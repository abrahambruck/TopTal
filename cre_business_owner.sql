--  @cre_business_owner
--
create table business_owner (
bo_owner_id        number    not null,
bo_cuit_number     number    not null,
bo_taxpayer_number number,
bo_owner_name      varchar2(100),
bo_dob             date,
bo_address_id      number,
constraint pk_business_owner       primary key (bo_owner_id, bo_cuit_number),
constraint fk_business_owner_tp_no foreign key (bo_taxpayer_number) references taxpayer_ind(tp_document_number),
constraint fk_business_owner_cuit  foreign key (bo_cuit_number)     references taxpayer_corp(tc_cuit_number),
constraint fk_business_owner_addr  foreign key (bo_address_id)      references address_master(am_address_id)
);

