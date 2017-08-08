--  @cre_TMP_BUSINESS_OWNER
--
create table TMP_BUSINESS_OWNER
(
tmp_id             number        not null,
no_owner_name      varchar2(100) not null,
no_dob             date,
no_website         varchar2(50),
no_address1        varchar2(50),
no_address2        varchar2(50),
no_city            varchar2(50),
no_state_prov      varchar2(50),
no_country         varchar2(50),
no_postal_code     varchar2(10),
no_email           varchar2(40),
no_home_phone      varchar2(15),
no_cell_phone      varchar2(15),
no_fax             varchar2(15)
);