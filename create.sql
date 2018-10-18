DROP DATABASE IF EXISTS rb_kotsias;
CREATE DATABASE rb_kotsias;
\c rb_kotsias


DROP TABLE IF EXISTS Rooms CASCADE;
CREATE TABLE Rooms (
  room_id SERIAL PRIMARY KEY,
  room_name VARCHAR(255),
  room_cost INT NOT NULL,
  room_space INT,
  CONSTRAINT CHK_space CHECK (room_space > 0)
);


DROP TABLE IF EXISTS Teams CASCADE;
CREATE TABLE Teams (
  team_id SERIAL PRIMARY KEY,
  room_id INT REFERENCES Rooms(room_id),
  team_name VARCHAR(255)
);

DROP TABLE IF EXISTS Holidays_weekends CASCADE;
CREATE TABLE Holidays_weekends (
  date DATE
);


DROP TABLE IF EXISTS Individuals CASCADE;
CREATE TABLE Individuals (
  individual_id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  rank VARCHAR(255) NOT NULL,
  team_id INT
);


DROP TABLE IF EXISTS Bookings CASCADE;
CREATE TABLE Bookings (
  --Invite other ppl => maybe invite the whole other team only when u are a managet. bulletpoint 1
	booking_id SERIAL PRIMARY KEY,
  booker_id INT REFERENCES Individuals(individual_id),
	team_id INT,
	room_id INT,
	participants INT,                             --Number of people attending the meeting
  week INT,                                     --Number of week that the meeting takes place (1<=weeks<=52)
	hours_booked INT,														  --Indicates how many hours a room has been booked
	booking_date DATE NOT NULL,										--Indicates the date a room has been booked
	start TIME,																		--Indicates from what hour until what hour the room is booked
	finish TIME,	
  invited_person_id_1 INT,
  invited_person_id_2 INT,
  CONSTRAINT CHK_hour CHECK (hours_booked <= 8),
  CONSTRAINT CHK_week CHECK (week BETWEEN 1 AND 52),																	
	CONSTRAINT CHK_date CHECK (booking_date BETWEEN '2018-01-01' AND '2018-12-31'),
	CONSTRAINT CHK_hours CHECK (start >= '08:00:00' AND finish <= '17:00:00')
);

