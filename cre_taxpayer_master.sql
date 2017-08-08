--   @cre_tax_payment_corp
--
create table tax_payment_corp (
tp_tax_agency      number       not null,
tp_cuit_number     number       not null,
tp_tax_type        varchar2(10) not null,
tp_payment_date    date         not null,
tp_payment_amount  number       not null,
constraint pk_tax_payment primary key (tp_tax_agency,tp_cuit_number,tp_tax_type,tp_payment_date),
constraint fk_tp_tax_agency foreign key (tp_taxpayer_number) references taxpayer_corp(tp_cuit_number)
);

