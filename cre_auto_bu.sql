--  @cre_auto_bu.sql
--
CREATE or replace DIRECTORY dmpdir AS 'C:\Users\Public';
-- SELECT directory_path FROM dba_directories WHERE directory_name = 'DMPDIR';
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
job_action => 'C:\Windows\system32\cmd.exe /c c:\Users\Public\export_db.bat',
start_date => SYSTIMESTAMP,
repeat_interval => 'FREQ=HOURLY; INTERVAL=2;',
end_date => NULL,
enabled => TRUE,
comments => 'export_db_every 2 hour');
END;
/
BEGIN 
DBMS_SCHEDULER.RUN_JOB('EXP_DB');
END;
/

