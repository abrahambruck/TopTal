-- conn sys/manager as sysdba
alter session set "_ORACLE_SCRIPT"=true;
create user abraham identified by bruck;
grant dba to abraham;
create user zoltan identified by varadi;
grant dba to zoltan;
conn abraham/bruck
