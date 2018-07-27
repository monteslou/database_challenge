CREATE OR REPLACE FUNCTION process_emp_audit() RETURNS TRIGGER AS $emp_audit$
    BEGIN
	IF OLD.AGE != NEW.AGE THEN
		IF NEW.AGE%2 = 1 THEN
            DECLARE NEW.AGE := NEW.AGE-5
		ELSE
			 SET NEW.AGE = NEW.AGE+3
        END IF;
	END IF;
		
        --INSERT INTO AUDIT_tbl(STAMP, age) VALUES (NOW(), new.age);
        RETURN NULL; -- result is ignored since this is an AFTER trigger
    END;
$emp_audit$ LANGUAGE plpgsql;

DROP TRIGGER AUDIT_TRG ON TEST2
CREATE TRIGGER AUDIT_trg
    BEFORE UPDATE ON TEST2
    FOR EACH ROW
    --WHEN (OLD.balance IS DISTINCT FROM NEW.balance)
    EXECUTE PROCEDURE process_emp_audit();
	
	INSERT INTO TEST2(YN, AGE, BOOL, CITY, DOLLAR)
VALUES('Y', 78, true, 'bogota', '34.00'), ('Y', 45, false, 'chia', '340.00'),('N', 13, true, 'cajica', '84.00')