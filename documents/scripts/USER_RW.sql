REVOKE ALL PRIVILEGES ON SCHEMA public FROM joan;
DROP ROLE joan;
CREATE USER joan WITH ENCRYPTED PASSWORD 'joan123';
GRANT SELECT ON ALL TABLES IN SCHEMA public TO joan;
GRANT INSERT ON ALL TABLES IN SCHEMA public TO joan;
\q