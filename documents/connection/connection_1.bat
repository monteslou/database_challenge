@echo off
title Postgres batch script!
for /l %%x in (1, 1, 10) do (
	echo %%x
	set PGPASSWORD=admin123
	cd C:\Program Files\PostgreSQL\10\bin
	psql -U administrador --host=localhost --dbname=challenge --port=5432 --file=C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\scripts\CALCULUS_FUNCTION.sql --output=C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\out\CALCULUS_FUNCTION_Output.txt
)
exit