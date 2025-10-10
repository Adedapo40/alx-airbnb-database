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
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM Booking
GROUP BY property_id
ORDER BY booking_rank;
