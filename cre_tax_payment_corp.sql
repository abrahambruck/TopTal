--   @cre_tax_payment_corp
--
create table tax_payment_corp (
ta_tax_agency      number       not null,
ta_cuit_number     number       not null,
ta_tax_type        varchar2(10) not null,
ta_payment_date    date         not null,
ta_payment_amount  number       not null,
constraint pk_tax_payment_corp        primary key (ta_tax_agency,ta_cuit_number,ta_tax_type,ta_payment_date),
constraint fk_tax_payment_corp_cuit   foreign key (ta_cuit_number) references taxpayer_corp(tc_cuit_number),
constraint fk_tax_payment_corp_ttype  foreign key (ta_tax_type)    references tax_type(tt_tax_type),
constraint fk_tax_payment_corp_agency foreign key (ta_tax_agency)  references tax_agency(ta_agency_number)
);

