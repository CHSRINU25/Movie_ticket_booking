-- Basic Queries
SELECT * FROM movies WHERE release_date <= CURRENT_DATE;  -- Get all available movies

SELECT * FROM movies WHERE title = 'Arjun Reddy';  -- Find a movie by title

SELECT * FROM theaters WHERE city_id = (SELECT city_id FROM cities WHERE name = 'Hyderabad');  -- List all theaters in Hyderabad

SELECT * FROM shows WHERE movie_id = (SELECT movie_id FROM movies WHERE title = 'Baahubali: The Beginning');  -- Get show timings for Baahubali

SELECT s.seat_number, s.seat_type 
FROM seats s 
JOIN screens sc ON s.screen_id = sc.screen_id 
WHERE sc.screen_id = (SELECT screen_id FROM shows WHERE show_id = 1) AND s.is_available = TRUE;  -- Check availability of seats for specific show

-- Intermediate Queries
SELECT COUNT(*) AS total_screens FROM screens WHERE theater_id = (SELECT theater_id FROM theaters WHERE name = 'PVR Cinemas');  -- Total screens in PVR Cinemas

SELECT * FROM bookings WHERE user_id = (SELECT user_id FROM users WHERE name = 'Ravi Kumar');  -- Find all bookings by Ravi Kumar

SELECT SUM(b.total_price) AS total_revenue 
FROM bookings b 
WHERE b.show_id IN (SELECT show_id FROM shows WHERE movie_id = (SELECT movie_id FROM movies WHERE title = 'Baahubali: The Beginning'));  -- Total revenue from Baahubali

SELECT r.rating, r.review_text, u.name 
FROM reviews r 
JOIN users u ON r.user_id = u.user_id 
WHERE r.movie_id = (SELECT movie_id FROM movies WHERE title = 'Baahubali: The Beginning');  -- List all reviews for Baahubali

SELECT sh.start_time, sh.end_time, m.title 
FROM shows sh 
JOIN bookings b ON sh.show_id = b.show_id 
JOIN movies m ON sh.movie_id = m.movie_id 
WHERE b.user_id = (SELECT user_id FROM users WHERE name = 'Ravi Kumar') AND b.status = 'confirmed';  -- Upcoming shows for Ravi Kumar

-- Advanced Queries
SELECT title, rating FROM movies WHERE genre = 'Action' AND rating >= 7.5 ORDER BY rating DESC LIMIT 5;  -- Top-rated Action movies

SELECT sh.show_id, COUNT(bs.booking_seat_id) AS booked_seats 
FROM shows sh 
LEFT JOIN bookings b ON sh.show_id = b.show_id 
LEFT JOIN booking_seats bs ON b.booking_id = bs.booking_id 
GROUP BY sh.show_id;  -- Count of seats booked for each show

SELECT u.name, COUNT(b.booking_id) AS booking_count 
FROM users u 
JOIN bookings b ON u.user_id = b.user_id 
GROUP BY u.user_id 
ORDER BY booking_count DESC LIMIT 5;  -- Users with most bookings

SELECT b.booking_id, b.total_price, b.booking_time, u.name AS user_name, sh.start_time, m.title 
FROM bookings b 
JOIN users u ON b.user_id = u.user_id 
JOIN shows sh ON b.show_id = sh.show_id 
JOIN movies m ON sh.movie_id = m.movie_id 
WHERE b.booking_id = 1;  -- Detailed info for a specific booking

SELECT s.seat_number, s.seat_type 
FROM seats s 
JOIN screens sc ON s.screen_id = sc.screen_id 
JOIN shows sh ON sc.screen_id = sh.screen_id 
WHERE sh.show_id = 1 AND s.is_available = TRUE;  -- Available seats for a specific show

SELECT * FROM payments WHERE booking_id = 1;  -- Payments for a specific booking

SELECT * FROM movies WHERE release_date >= DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR);  -- Movies released in the last year

SELECT COUNT(*) AS active_users FROM users WHERE status = 'active';  -- Count of active users

SELECT AVG(r.rating) AS average_rating FROM reviews WHERE movie_id = (SELECT movie_id FROM movies WHERE title = 'Baahubali: The Beginning');  -- Average rating for Baahubali

SELECT m.title, SUM(b.total_price) AS total_revenue 
FROM movies m 
JOIN shows sh ON m.movie_id = sh.movie_id 
JOIN bookings b ON sh.show_id = b.show_id 
GROUP BY m.movie_id 
ORDER BY total_revenue DESC LIMIT 1;  -- Highest-grossing movie based on bookings

SELECT DISTINCT u.name FROM users u 
JOIN bookings b ON u.user_id = b.user_id 
WHERE b.show_id IN (SELECT show_id FROM shows WHERE start_time >= NOW());  -- Users who booked upcoming shows

SELECT m.title, COUNT(r.review_id) AS review_count 
FROM movies m 
LEFT JOIN reviews r ON m.movie_id = r.movie_id 
GROUP BY m.movie_id 
HAVING review_count > 0 ORDER BY review_count DESC;  -- Movies with the most reviews

SELECT m.title, AVG(r.rating) AS average_rating 
FROM movies m 
JOIN reviews r ON m.movie_id = r.movie_id 
GROUP BY m.movie_id 
HAVING average_rating >= 8.0;  -- Movies with an average rating of 8 or higher

SELECT b.user_id, SUM(b.total_price) AS total_spent 
FROM bookings b 
GROUP BY b.user_id 
ORDER BY total_spent DESC LIMIT 1;  -- User who spent the most on bookings

SELECT COUNT(DISTINCT booking_id) AS total_bookings 
FROM bookings WHERE booking_time BETWEEN '2023-01-01' AND '2023-12-31';  -- Total bookings in 2023

