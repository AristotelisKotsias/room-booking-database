DROP FUNCTION IF EXISTS insert_meeting() CASCADE;

CREATE FUNCTION insert_meeting() RETURNS trigger AS $pname$
BEGIN 
		IF NEW.team_id NOT IN (SELECT team_id
						   	   FROM Teams
						       WHERE team_id = NEW.team_id AND room_id = NEW.room_id)
		THEN RAISE EXCEPTION 'This room cannot be booked by this person/team!';
		END IF;
		RETURN NEW;
END;

$pname$ LANGUAGE plpgsql;

CREATE TRIGGER insert_meeting 
BEFORE INSERT ON bookings 
FOR EACH ROW 
EXECUTE PROCEDURE insert_meeting(); 