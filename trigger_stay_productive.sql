--Employees should'nt have more than 8 hours of meetings per week
DROP FUNCTION IF EXISTS stay_productive() CASCADE;

CREATE FUNCTION stay_productive() RETURNS trigger AS $pname$
BEGIN 
		IF (SELECT SUM(hours_booked) + NEW.hours_booked 
		    FROM Bookings
                  JOIN Individuals ON Bookings.team_id = Individuals.team_id
                WHERE rank = 'employee' AND week = NEW.week AND Bookings.team_id = NEW.team_id ) > 8
		THEN RAISE EXCEPTION 'Employees can attend at most 8hours of meetings per week!';
		END IF;
		RETURN NEW;
END;

$pname$ LANGUAGE plpgsql;

CREATE TRIGGER stay_productive
BEFORE INSERT ON bookings 
FOR EACH ROW 
EXECUTE PROCEDURE stay_productive(); 