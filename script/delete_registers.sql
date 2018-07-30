
delete from test2 where id in (select id from challenge order by id desc limit 100000)

	
ALTER SEQUENCE challenge_id_seq 
    INCREMENT 1
    RESTART with 1000001
	