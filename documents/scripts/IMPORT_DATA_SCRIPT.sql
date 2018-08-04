\copy challenge from 'C:/Users/lmontes/Documents/DBdocuments/database_challenge/documents/demofile.csv' DELIMITER ',' CSV;

ALTER SEQUENCE challenge_id_seq 
    INCREMENT 1
    RESTART with 1000001;
\q