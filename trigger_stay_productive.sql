--Employees should'nt have more than 8 hours of meetings per week
DROP FUNCTION IF EXISTS stay_productive() CASCADE;

CREATE FUNCTION stay_productive() RETURNS trigger AS $pname$
BEGIN 
		IF (SELECT SUM(hours_booked) + NEW.hours_booked 
		    FROM Bookings --,Individuals
            WHERE week = NEW.week AND team_id = NEW.team_id ) >= 8
            /*week = NEW.week AND team_id = NEW.team_id Individuals.rank = 'employee') >= 8

            WHERE NEW.team_id IN (
            	SELECT team_id
            	FROM Individuals
            	WHERE Individuals.team_id = NEW.team_id and Individuals.rank = 'employee') AND week = NEW.week) >= 8*/
		THEN RAISE EXCEPTION 'Employees can attend at most 8hours of meetings per week!';
		END IF;
		RETURN NEW;
END;

$pname$ LANGUAGE plpgsql;

CREATE TRIGGER stay_productive
BEFORE INSERT ON bookings 
FOR EACH ROW 
EXECUTE PROCEDURE stay_productive(); 