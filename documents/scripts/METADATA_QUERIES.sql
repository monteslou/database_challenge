
SELECT * FROM pg_catalog.pg_tables where schemaname ='public';


SELECT *
FROM information_schema.columns
WHERE table_schema = 'public'
 AND table_name   = 'challenge';
 
\q