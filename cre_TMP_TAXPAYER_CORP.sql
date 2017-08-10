--  @cre_TMP_TAXPAYER_CORP
--
create table TMP_TAXPAYER_CORP
(
tmp_id             number        not null,
nc_corp_name       varchar2(100) not null,
nc_start_date      date,
nc_website         varchar2(50),
nc_address1        varchar2(50),
nc_address2        varchar2(50),
nc_city            varchar2(50),
nc_state_prov      varchar2(50),
nc_country         varchar2(50),
nc_postal_code     varchar2(10),
nc_email           varchar2(40),
nc_home_phone      varchar2(15),
nc_cell_phone      varchar2(15),
nc_fax             varchar2(15),
nc_owner_id        number        not null
);

