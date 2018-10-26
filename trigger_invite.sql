-- External participants can also be added to room bookings (assumed that only managers can invite people)
DROP FUNCTION IF EXISTS invite() CASCADE;
CREATE FUNCTION invite() RETURNS trigger AS $pname$
BEGIN 
		IF NEW.booker_id NOT IN (SELECT individual_id
						   	 	 FROM Individuals
						     	 WHERE rank = 'manager') 
			AND (NEW.invited_person_id_1 IS NOT NULL OR NEW.invited_person_id_2 IS NOT NULL)
		THEN RAISE EXCEPTION 'Only managers can invite people to meetings';
		END IF;
		RETURN NEW;
END;
$pname$ LANGUAGE plpgsql;
CREATE TRIGGER invite
BEFORE INSERT ON bookings 
FOR EACH ROW 
EXECUTE PROCEDURE invite(); 