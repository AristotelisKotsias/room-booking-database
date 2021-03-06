\c rb_kotsias

INSERT INTO Rooms(room_name, room_cost, room_space)
VALUES('Red', 3, 5);
INSERT INTO Rooms(room_name, room_cost, room_space)
VALUES('Orange', 6, 10);
INSERT INTO Rooms(room_name, room_cost, room_space)
VALUES('Pink', 9, 15);
INSERT INTO Rooms(room_name, room_cost, room_space)
VALUES('Yellow', 12, 25);
INSERT INTO Rooms(room_name, room_cost, room_space)
VALUES('Green', 15, 30);
INSERT INTO Rooms(room_name, room_cost, room_space)
VALUES('Black', 18, 35);


INSERT INTO Teams(room_id,team_name)
VALUES(1, 'One');
INSERT INTO Teams(room_id,team_name)
VALUES(2, 'Two');
INSERT INTO Teams(room_id,team_name)
VALUES(3, 'Three');
INSERT INTO Teams(room_id,team_name)
VALUES(4, 'Four');
INSERT INTO Teams(room_id,team_name)
VALUES(5, 'Five');
INSERT INTO Teams(room_id,team_name)
VALUES(6, 'Six');
INSERT INTO Teams(room_id,team_name)
VALUES(1, 'Seven');


INSERT INTO Holidays_weekends(date)
VALUES('2018-01-01');
INSERT INTO Holidays_weekends(date)
VALUES('2018-01-06');
INSERT INTO Holidays_weekends(date)
VALUES('2018-03-30');
INSERT INTO Holidays_weekends(date)
VALUES('2018-05-27');
INSERT INTO Holidays_weekends(date)
VALUES('2018-06-06');
INSERT INTO Holidays_weekends(date)
VALUES('2018-06-23');
INSERT INTO Holidays_weekends(date)
VALUES('2018-10-11');
INSERT INTO Holidays_weekends(date)
VALUES('2018-12-31');


INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Aristotelis', 'Kotsias', 'manager', 1, 0);
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Nick', 'Koulis', 'employee', 1, 0);
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('John', 'Jovanni', 'employee', 1, 0);
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Vassilis', 'Korboss', 'manager', 2, 0);
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Alexander', 'Christel','employee', 2, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Karita', 'Vera', 'employee', 2, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Yolanda', 'Young', 'manager', 3, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Michael', 'Dawson', 'employee', 3, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Jessie', 'Carrol', 'employee', 3, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Hommer', 'Green', 'manager', 4, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Lester', 'Little', 'employee', 4, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Iris', 'Sander', 'employee', 4, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Haris', 'Pilton', 'manager', 5, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Nicole', 'Anniston', 'employee', 5 , 0);
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Thomas', 'More', 'employee', 5, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Ammy', 'Man', 'manager', 6 , 0);
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Luke', 'Sharp', 'employee', 6 , 0);
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Elen', 'Monaris', 'employee', 6 , 0);
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Tim', 'Loren', 'manager', 7, 0);
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Riley', 'Reid', 'external', NULL, 0 );
INSERT INTO Individuals(first_name, last_name, rank, team_id, meeting_hours)
VALUES('Evan', 'Scots', 'external', NULL, 0 );


----
/*INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(1,1,1,5,1,4,'2018-02-01','08:00:00','12:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish,invited_person_id_1,invited_person_id_2)
VALUES(5,2,2,5,1,7,'2018-02-01','14:00:00','17:00:00', NULL, NULL);*/
----

INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(1,1,1,5,1,4,'2018-02-01','08:00:00','12:00:00', 4, 5);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(3,1,1,3,51,6,'2018-01-05', '10:00:00','12:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(2,1,1,5,2,4,'2018-03-05', '13:00:00','15:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(4,2,2,7,1,2,'2018-07-10', '15:00:00', '17:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(5,2,2,10,5,8,'2018-09-01', '08:00:00', '17:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(4,2,2,3,17,2,'2018-01-25', '10:00:00', '12:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(7,3,3,10,12,4,'2018-08-10', '13:00:00', '17:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(9,3,3,15,5,1,'2018-11-01', '10:00:00', '11:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(8,3,3,11,9,2,'2018-12-12', '11:00:00', '13:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(11,4,4,13,10,3, '2018-06-09', '09:00:00', '13:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(11,4,4,15,1,8,'2018-09-25', '08:00:00', '17:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(15,5,5,23,29,1,'2018-03-19', '12:00:00', '13:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(14,5,5,4,33,2,'2018-10-10', '10:00:00', '12:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(17,6,6,27,50,1,'2018-10-08', '12:00:00', '13:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(18,6,6,30,9,3,'2018-11-01', '14:00:00', '17:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(18,6,6,17,2,1,'2018-06-10', '08:00:00', '09:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(5,2,2,4,37,2, '2018-05-29', '10:00:00', '12:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(1,1,1,5,22,6, '2018-11-11', '08:00:00', '14:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(8,3,3,7,49,1,'2018-02-19', '12:00:00', '13:00:00', NULL, NULL);
INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
VALUES(19,7,1,1,48,1,'2018-02-19', '12:00:00', '13:00:00', NULL, NULL);
--INSERT INTO Bookings(booker_id, team_id, room_id, participants, week, hours_booked, booking_date, start, finish, invited_person_id_1,invited_person_id_2)
--VALUES(19,NULL,NULL,NULL,NULL,NULL, NULL, NULL, NULL, NULL, NULL);