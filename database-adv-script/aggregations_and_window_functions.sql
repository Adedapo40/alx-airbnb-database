SELECT 
    Users.user_id,
    Users.first_name,
    COUNT(Booking.booking_id) AS total_bookings
FROM Users 
JOIN Booking
    ON     Users.user_id = Booking.user_id
GROUP BY     Users.user_id, Users.first_name
ORDER BY total_bookings DESC;



SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number
FROM Booking
GROUP BY property_id
ORDER BY row_number;
