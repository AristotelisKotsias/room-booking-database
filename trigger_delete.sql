DROP FUNCTION IF EXISTS delete_meeting() CASCADE;

CREATE FUNCTION delete_meeting()
  RETURNS TRIGGER AS $pname$
BEGIN
  DELETE FROM Bookings
  WHERE Bookings.booking_id = OLD.booking_id;
  RETURN NEW;
END;

$pname$ LANGUAGE plpgsql;

CREATE TRIGGER delete_meeting
AFTER DELETE ON Bookings
FOR EACH ROW
EXECUTE PROCEDURE delete_meeting();