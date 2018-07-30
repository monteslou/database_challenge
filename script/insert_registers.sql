
create or replace function add_data(n int)
returns void as $$
declare 
l_yn varchar[] := '{Y,N}';
v_yn varchar ;
v_age smallint;

v_birthday date;
v_bool boolean;

l_city varchar[] := '{Bogota, Medellin, Cali, Girardot, Chia, Zipaquira, Cajica, Pasto, Armenia, Melgar, Mompox, Cartagena, Barranquilla}';
v_city varchar;
v_ccnumber numeric;
v_date date ;
v_digit numeric;
v_dollar money;
l_first varchar[] := '{Juan,Vanessa,David,Oscar,Andres,Michael,Laura,Brenda,Camila,Paola,Raul}';
v_first varchar;
v_chifre numeric;
l_name varchar[] := '{Juan,Vanessa,David,Oscar,Andres,Michael,Laura,Brenda,Camila,Paola,Raul}';
v_name varchar;
l_last varchar[] := '{Rodriguez,Montes,Hernandez,Ruiz,Mendez,Perez,Suarez,Castillo,Cardenas,Crovo,Kroos}';
v_last varchar;
l_paragraph text[] := '{gregre,ggwegewgwe,gwegwegweg,ascvasd,gwegwe,gwergwe,fqwefwqefqw,gwegwegew,fwefgwe,qwrqwrqw}';
v_paragraph text;
l_sentence text[] := '{gregre,ggwegewgwe,gwegwegweg,ascvasd,gwegwe,gwergwe,fqwefwqefqw,gwegwegew,fwefgwe,qwrqwrqw}';
v_sentence text;

Begin
for i in 1..n loop
declare
v_yn varchar(2) := l_yn[(select (random()+1) :: integer)];
 v_age smallint := (select (random()*(65-18) +18) :: integer);
 v_bool boolean := (select random() :: integer);
 v_city varchar := l_city[(select (random()*12+1) :: integer)];
 v_birthday date := (select (random()*('2000-12-31' :: date - '1953-01-01' :: date) ):: integer + '1953-01-01' :: date);
 v_ccnumber numeric := (select (random()*(6380000000000000-30000000000000)+30000000000000) :: numeric);
 v_date date := (select (random()*('2000-12-31' :: date - '1953-01-01' :: date) ):: integer + '1953-01-01' :: date);
 v_digit numeric := (select (random()*(99999800000000000000-3)+3) :: numeric);
 v_dollar money := (select (random()*(10000.00-0.01)+0.01) :: numeric :: money);
 v_first varchar := l_first[(select (random()*10+1) :: integer)];
 v_chifre numeric := (select (random()*(900717000000+900717000000)-900717000000) :: numeric);
 v_name varchar := l_name[(select (random()*10+1) :: integer)];
 v_last varchar := l_last[(select (random()*10+1) :: integer)];
 v_paragraph text := l_paragraph[(select (random()*9+1) :: integer)];
 v_sentence text := l_sentence[(select (random()*9+1) :: integer)];
begin
insert into test2(yn,age,birthday,bool,city,ccnumber,date,digit,dollar,first,chifre,name,last,paragraph,sentence)
	values(v_yn,v_age,v_birthday,v_bool,
		   v_city,v_ccnumber,v_date,v_digit,v_dollar,v_first,v_chifre,v_name,v_last,v_paragraph,v_sentence);
		   end;
		   end loop;
	begin
		update test2 set trg = id +100 where trg is null;
	end;
end;$$
LANGUAGE plpgsql;

select add_data(100000);