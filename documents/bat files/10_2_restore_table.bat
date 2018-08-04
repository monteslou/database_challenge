@echo off
set PGPASSWORD=admin123
cd C:\Program Files\PostgreSQL\10\bin
pg_restore -U administrador --host=localhost --dbname=postgres --port=5432 --table=challenge C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\out\outfile.sql > C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\out\onetable.sql
pause