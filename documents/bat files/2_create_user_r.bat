@echo off
set PGPASSWORD=admin123
cd C:\Program Files\PostgreSQL\10\bin
psql -U administrador --host=localhost --dbname=postgres --port=5432 --file=C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\scripts\USER_R.sql --output=C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\out\CREATE_USER_R_Output.txt
pause