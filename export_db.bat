rem export_db.bat
rem 
cd \Users\Public
exp abraham/bruck@oraTopTal full=y file=\Users\Public\myexp.dmp
del \Users\Public\oraTopTal.dmp
expdp abraham/bruck@oraTopTal content=ALL FULL=Y directory=dmpdir dumpfile=oraTopTal.dmp NOLOGFILE=YES
