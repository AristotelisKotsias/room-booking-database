DROP FUNCTION IF EXISTS update_hours() CASCADE;

CREATE FUNCTION update_hours()
  RETURNS TRIGGER AS $pname$
BEGIN
  UPDATE Individuals
  SET meeting_hours = meeting_hours + NEW.hours_booked
  WHERE (Individuals.team_id = New.team_id OR Individuals.individual_id = NEW.invited_person_id_1 OR Individuals.individual_id = NEW.invited_person_id_2)
  AND Individuals.rank != 'external';
  RETURN NULL;
END;

$pname$ LANGUAGE plpgsql;

CREATE TRIGGER update_hours
AFTER INSERT ON Bookings
FOR EACH ROW
EXECUTE PROCEDURE update_hours();