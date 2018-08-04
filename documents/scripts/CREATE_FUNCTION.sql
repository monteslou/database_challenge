DROP FUNCTION IF EXISTS calculus;
CREATE FUNCTION calculus()
RETURNS TABLE(name TEXT, value BIGINT) AS $$
BEGIN
CREATE TEMPORARY TABLE temp_table (name TEXT, value BIGINT) ON COMMIT DROP;
INSERT INTO temp_table(name, value) VALUES('maximum', (SELECT MAX(CCNUMBER) FROM challenge)),
('minimum', (SELECT MIN(CCNUMBER) FROM challenge)), ('mean', (SELECT AVG(CCNUMBER) FROM challenge)),
('mode', (SELECT ccnumber FROM challenge GROUP BY ccnumber ORDER BY COUNT(id) LIMIT 1)),
('median', (SELECT ccnumber FROM challenge WHERE id=(SELECT MAX(id)/2 FROM challenge)));

RETURN query select * from temp_table;
END;$$
LANGUAGE plpgsql;

select calculus();
\q