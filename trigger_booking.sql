--Externals cannot book a room
DROP FUNCTION IF EXISTS insert_booking() CASCADE;

CREATE FUNCTION insert_booking() RETURNS trigger AS $pname$
BEGIN 
		IF NEW.booker_id IN (SELECT individual_id
						   	 FROM Individuals
						     WHERE rank = 'external')
		THEN RAISE EXCEPTION 'External participants cannot book a room!';
		END IF;
		RETURN NEW;
END;

$pname$ LANGUAGE plpgsql;

CREATE TRIGGER insert_booking
BEFORE INSERT ON bookings 
FOR EACH ROW 
EXECUTE PROCEDURE insert_booking(); 