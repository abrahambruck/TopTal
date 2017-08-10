-- conn sys/manager as sysdba
alter session set "_ORACLE_SCRIPT"=true;
create user abraham identified by bruck;
grant dba to abraham;
conn abraham/bruck

 
