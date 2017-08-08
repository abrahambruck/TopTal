--  @cre_auto_bu
--
--conn sys/manager@orcl as sysdba
BEGIN
  dbms_scheduler.drop_job(job_name => 'EXP_DB');
EXCEPTION WHEN others THEN
  null;
END;
/
BEGIN
DBMS_SCHEDULER.create_job (
job_name => 'EXP_DB',
job_type => 'executable',
job_action => 'expdp abraham/bruck@orcl content=ALL FULL=Y dumpfile=oraTopTal.dmp',
start_date => SYSTIMESTAMP,
repeat_interval => 'FREQ=HOURLY; INTERVAL=2;',
end_date => NULL,
enabled => TRUE,
comments => 'export_db_every_2 hours');
END;
/
--BEGIN 
--DBMS_SCHEDULER.RUN_JOB('EXP_DB');
--END;
--/
conn abraham/bruck@orcl
