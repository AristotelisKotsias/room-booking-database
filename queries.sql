/*SELECT *
FROM Individuals;

\echo updated!?!?!
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(1,1,1,5,19,4,'2018-02-01','13:00:00','15:00:00', NULL, NULL);


SELECT *
FROM Individuals;*/


\echo ** Q1: What is the name of the manager of team number 3 **
SELECT first_name, last_name
FROM Individuals
WHERE team_id = 3 AND rank = 'manager';

\echo ** Q2: Print out the booking(s) on 2018-06-09 **
SELECT team_id, room_id, booking_date, start, finish
FROM Bookings
WHERE booking_date = '2018-06-09';

\echo ** Q3: Print the names of the managers of each team **
SELECT team_id, first_name, last_name
FROM Individuals
WHERE rank = 'manager'
ORDER BY team_id;

\echo ** Q1: Total usage hours for each room **
SELECT room_name, SUM(hours_booked) AS total_hours_booked
FROM Bookings
	JOIN Rooms ON Bookings.room_id = Rooms.room_id
GROUP BY room_name
ORDER BY room_name;

\echo ** Q2: Usage by team
SELECT team_name, SUM(hours_booked) AS total_hours_per_team
FROM Bookings
	JOIN Teams ON Bookings.team_id = Teams.team_id
GROUP BY team_name	
ORDER BY team_name;

\echo ** Q3: Rank employees by most/least time spent in meetings **
SELECT first_name, last_name, meeting_hours
FROM Individuals
WHERE Individuals.rank != 'external'
ORDER BY (meeting_hours) DESC;

\echo ** Q4: Book a room at a certain time for a certain group of employees **
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(2,1,1,5,17,4,'2018-09-01','08:00:00','12:00:00', NULL, NULL);

\echo ** Q5: Delete a room booking **
DELETE FROM Bookings
WHERE booking_id = 21;

\echo ** Q6: Expense of the room bookings over a year 
SELECT SUM(room_cost) AS annual_cost
FROM Rooms
	JOIN Bookings ON Rooms.room_id = Bookings.room_id
WHERE Bookings.booking_date BETWEEN '2018-01-01' AND '2018-12-31';