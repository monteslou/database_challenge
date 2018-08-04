@echo off
set PGPASSWORD=admin123
cd C:\Program Files\PostgreSQL\10\bin
psql -U administrador -h 172.17.228.105 -p 5432 -d challenge -1 -f C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\out\outfile.sql
pause