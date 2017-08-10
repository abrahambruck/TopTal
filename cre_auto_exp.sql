--  @cre_auto_bu
--
conn sys/manager@orcl as sysdba
BEGIN
  dbms_scheduler.drop_job(job_name => 'EXP_AB');
EXCEPTION WHEN others THEN
  null;
END;
/
BEGIN
DBMS_SCHEDULER.create_job (
job_name => 'EXP_AB',
job_type => 'executable',
job_action => 'exp abraham/bruck@orcl full=y file=%HOMEPATH%\myexp.dmp',
start_date => SYSTIMESTAMP,
repeat_interval => 'FREQ=HOURLY; INTERVAL=2;',
end_date => NULL,
enabled => TRUE,
comments => 'export_db_every_2 hours');
END;
/
BEGIN 
DBMS_SCHEDULER.RUN_JOB('EXP_AB');
END;
/
conn abraham/bruck@orcl
