create table taxpayer_ind (
tp_document_number number        not null,
tp_taxpayer_name   varchar2(100) not null,
tp_dob             date,
tp_address_id      number,
constraint pk_taxpayer_ind primary key (tp_document_number),
constraint fk_taxpayer_ind foreign key (tp_address_id) references address_master(am_address_id)
);