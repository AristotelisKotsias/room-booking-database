--You cannot create room bookings with more participants than spaces in a room
DROP FUNCTION IF EXISTS room_space() CASCADE;

CREATE FUNCTION room_space() RETURNS trigger AS $pname$
BEGIN 
		IF (SELECT room_space
			FROM Rooms
			WHERE Rooms.room_id = NEW.room_id) < NEW.participants
			THEN RAISE EXCEPTION 'Not enough space for all the participants!';
		END IF;
		RETURN NEW;
END;

$pname$ LANGUAGE plpgsql;

CREATE TRIGGER room_space
BEFORE INSERT ON Bookings 
FOR EACH ROW 
EXECUTE PROCEDURE room_space(); 