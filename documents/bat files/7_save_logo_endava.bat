@echo off
set PGPASSWORD=admin123
cd C:\Program Files\PostgreSQL\10\bin
psql -U administrador --host=localhost --dbname=challenge --port=5432 --file=C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\scripts\INSERT_LOGO.sql --output=C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\out\INSERT_LOGO_Output.txt
pause