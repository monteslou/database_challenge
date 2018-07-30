
delete from test2 where id in (select id from test2 order by id desc limit 100000)

	
ALTER SEQUENCE test2_id_seq 
    INCREMENT 1
    RESTART with 1000001
	