--   @cre_tax_payment_ind
--
create table tax_payment_ind (
ti_tax_agency      number       not null,
ti_document_number number       not null,
ti_tax_type        varchar2(10) not null,
ti_payment_date    date         not null,
ti_payment_amount  number       not null,
constraint pk_tax_payment_ind        primary key (ti_tax_agency,ti_document_number,ti_tax_type,ti_payment_date),
constraint fk_tax_payment_ind_doc_no foreign key (ti_document_number) references taxpayer_ind(tp_document_number),
constraint fk_tax_payment_ind_ttype  foreign key (ti_tax_type)        references tax_type(tt_tax_type),
constraint fk_tax_payment_ind_agency foreign key (ti_tax_agency)      references tax_agency(ta_agency_number)
);



