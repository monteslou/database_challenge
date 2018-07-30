CREATE OR REPLACE FUNCTION process_emp_audit() RETURNS TRIGGER AS $emp_audit$
    BEGIN
		IF NEW.AGE%2 = 1 THEN
            NEW.AGE := NEW.AGE-5;
		ELSE
			 NEW.AGE := NEW.AGE+3;
        END IF;
		RETURN NEW;
    END;
$emp_audit$ LANGUAGE plpgsql;

DROP TRIGGER AUDIT_TRG ON TEST2;
CREATE TRIGGER AUDIT_trg
    BEFORE UPDATE ON TEST2
    FOR EACH ROW
    WHEN (OLD.age IS DISTINCT FROM NEW.age)
    EXECUTE PROCEDURE process_emp_audit();
	
	INSERT INTO TEST2(YN, AGE, BOOL, CITY, DOLLAR)
VALUES('Y', 78, true, 'bogota', '34.00'), ('Y', 45, false, 'chia', '340.00'),('N', 13, true, 'cajica', '84.00');

UPDATE TEST2 SET AGE=39 WHERE id=999999;