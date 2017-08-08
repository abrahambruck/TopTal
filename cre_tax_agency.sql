--  @cre_tax_agency
--
create table tax_agency (
ta_agency_number   number not null,
ta_contact_person  varchar2(50),
ta_address_id      number,
ta_no_employees    number,
constraint pk_tax_agency      primary key (ta_agency_number),
constraint fk_tax_agency_addr foreign key (ta_address_id)      references address_master(am_address_id)
);
