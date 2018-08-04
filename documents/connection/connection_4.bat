@echo off
title Postgres batch script!
for /l %%x in (31, 1, 40) do (
	echo %%x
	set PGPASSWORD=admin123
	cd C:\Program Files\PostgreSQL\10\bin
	psql -U administrador --host=localhost --dbname=challenge --port=5432 --file=C:\Users\lmontes\Documents\DBdocuments\database_challenge\documents\scripts\CALCULUS_FUNCTION.sql
)
exit