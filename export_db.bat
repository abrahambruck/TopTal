cd \Users\Public
exp abraham/bruck@orcl full=y file=\Users\Public\myexp.dmp
expdp abraham/bruck@orcl content=ALL FULL=Y directory=dmpdir dumpfile=oraTopTal.dmp NOLOGFILE=YES
