
SELECT * FROM Users
INNER JOIN Booking
ON Users.user_id = Booking.user_id;

SELECT * FROM Users
LEFT JOIN Booking
ON Users.user_id = Booking.user_id;

SELECT * FROM Users
FULL OUTER JOIN Booking
ON Users.user_id = Booking.user_id;
ORDER BY Booking.booking_id DESC;
