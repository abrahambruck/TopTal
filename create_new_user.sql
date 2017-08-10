-- conn sys/Google18 as sysdba
alter session set "_ORACLE_SCRIPT"=true;
create user abraham identified by bruck;
grant dba to abraham;
create user eduardo identified by luttner;
grant dba to eduardo;
conn abraham/bruck

 
