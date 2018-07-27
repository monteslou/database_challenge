--select max(id)+1 from test2 limit 1

--ALTER SEQUENCE test2_id_seq 
--    INCREMENT 1
--    RESTART with (select max(id)+1 from test2 limit 1)

DELETE from test2
WHERE id in (select id from test2 order by id desc limit 1)