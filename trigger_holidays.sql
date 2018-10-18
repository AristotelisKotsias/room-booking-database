DROP FUNCTION IF EXISTS holidays_weekends() CASCADE;

CREATE FUNCTION holidays_weekends() RETURNS trigger AS $pname$
BEGIN 
		IF NEW.booking_date IN (SELECT date
								FROM Holidays_weekends
								WHERE date = NEW.booking_date)
		THEN RAISE EXCEPTION 'Cannot book meeting on Holidays';
		END IF;
		RETURN NEW;
END;

$pname$ LANGUAGE plpgsql;

CREATE TRIGGER holidays_weekends
BEFORE INSERT ON bookings 
FOR EACH ROW 
EXECUTE PROCEDURE holidays_weekends(); 