--Employees can only book meetings for rooms assigned to their own team
DROP FUNCTION IF EXISTS insert_meeting() CASCADE;
CREATE FUNCTION insert_meeting() RETURNS trigger AS $pname$
BEGIN 	
		IF NEW.booker_id NOT IN (SELECT individual_id
								 FROM Individuals
								 	JOIN Teams ON Individuals.team_id = Teams.team_id
								 WHERE room_id = NEW.room_id)
		THEN RAISE EXCEPTION 'This room cannot be booked by this person/team!';
		END IF;
		RETURN NEW;
END;
$pname$ LANGUAGE plpgsql;
CREATE TRIGGER insert_meeting 
BEFORE INSERT ON bookings 
FOR EACH ROW 
EXECUTE PROCEDURE insert_meeting(); 