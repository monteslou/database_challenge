DROP TABLE IF EXISTS challenge;
CREATE TABLE challenge(
	ID SERIAL PRIMARY KEY,
	YN VARCHAR(2),
	AGE SMALLINT,
	BIRTHDAY DATE,
	BOOL BOOL,
	CITY VARCHAR(30),
	CCNUMBER NUMERIC,
	DATE DATE,
	DIGIT NUMERIC,
	DOLLAR MONEY,
	FIRST VARCHAR(50),
	CHIFRE NUMERIC,
	NAME VARCHAR(50),
	LAST VARCHAR(50),
	PARAGRAPH TEXT,
	SENTENCE TEXT
);
\q