DROP FUNCTION IF EXISTS meetings_clash() CASCADE;

CREATE FUNCTION meetings_clash() RETURNS TRIGGER AS $pname$
BEGIN
  IF NEW.booking_date IN (SELECT booking_date
                          FROM Bookings
                          WHERE booking_date = NEW.booking_date AND room_id = NEW.room_id AND 
                          ((NEW.start BETWEEN start AND finish)OR(NEW.finish BETWEEN start AND finish)))
                                                                  --   start = NEW.start AND finish = NEW.finish)                                                                 
  THEN RAISE EXCEPTION 'Meetings clash, book another time.';
  END IF;
  RETURN NEW;
END;

$pname$ LANGUAGE plpgsql;

CREATE TRIGGER meetings_clash
BEFORE INSERT ON Bookings
FOR EACH ROW
EXECUTE PROCEDURE meetings_clash();