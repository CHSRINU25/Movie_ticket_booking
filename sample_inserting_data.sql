INSERT INTO users (user_id, name, email, phone_number, password_hash, date_of_birth, created_at, updated_at, role, status) VALUES
(1, 'rajesh kumar', 'rajesh.kumar@example.com', '9876543210', 'hashedpassword1', '1990-05-15', NOW(), NOW(), 'customer', 'active'),
(2, 'sneha reddy', 'sneha.reddy@example.com', '9876543211', 'hashedpassword2', '1992-08-20', NOW(), NOW(), 'customer', 'active'),
(3, 'venkata krishna', 'venkata.krishna@example.com', '9876543212', 'hashedpassword3', '1988-12-30', NOW(), NOW(), 'customer', 'inactive'),
(4, 'anita varma', 'anita.varma@example.com', '9876543213', 'hashedpassword4', '1995-02-25', NOW(), NOW(), 'customer', 'active'),
(5, 'suresh nair', 'suresh.nair@example.com', '9876543214', 'hashedpassword5', '1985-11-10', NOW(), NOW(), 'admin', 'active'),
(6, 'priya dharshini', 'priya.dharshini@example.com', '9876543215', 'hashedpassword6', '1991-07-05', NOW(), NOW(), 'customer', 'banned'),
(7, 'arun vijay', 'arun.vijay@example.com', '9876543216', 'hashedpassword7', '1987-09-15', NOW(), NOW(), 'customer', 'active'),
(8, 'deepa balakrishnan', 'deepa.balakrishnan@example.com', '9876543217', 'hashedpassword8', '1993-04-22', NOW(), NOW(), 'customer', 'inactive'),
(9, 'karthik raghavan', 'karthik.raghavan@example.com', '9876543218', 'hashedpassword9', '1989-06-11', NOW(), NOW(), 'customer', 'active'),
(10, 'nisha menon', 'nisha.menon@example.com', '9876543219', 'hashedpassword10', '1994-03-30', NOW(), NOW(), 'customer', 'active');

INSERT INTO movies (movie_id, title, description, release_date, duration_minutes, rating, language, genre, director, cast, poster_url, trailer_url, created_at, updated_at) VALUES
(1, 'baahubali: the beginning', 'an epic action film that tells the story of two brothers.', '2015-07-10', 159, 8.0, 'telugu', 'action', 's.s. rajamouli', 'prabhas, rana daggubati', 'http://example.com/poster1.jpg', 'http://example.com/trailer1.mp4', NOW(), NOW()),
(2, 'arjun reddy', 'a passionate love story of a surgeon.', '2017-08-25', 180, 7.5, 'telugu', 'romance', 'sandeep reddy vanga', 'vijay deverakonda, shalini pandey', 'http://example.com/poster2.jpg', 'http://example.com/trailer2.mp4', NOW(), NOW()),
(3, 'super deluxe', 'a story intertwining multiple lives.', '2019-03-29', 140, 8.5, 'tamil', 'drama', 'thalapathy prabhu', 'vijay sethupathi, samantha akkineni', 'http://example.com/poster3.jpg', 'http://example.com/trailer3.mp4', NOW(), NOW()),
(4, 'vikram vedha', 'a cop and a gangster clash in a gripping narrative.', '2017-09-29', 150, 8.0, 'tamil', 'action', 'pushkar-gayathri', 'vikram, madhavan', 'http://example.com/poster4.jpg', 'http://example.com/trailer4.mp4', NOW(), NOW()),
(5, 'asanayakudu', 'a political thriller with unexpected twists.', '2019-12-20', 130, 7.0, 'telugu', 'thriller', 'krish', 'balakrishna', 'http://example.com/poster5.jpg', 'http://example.com/trailer5.mp4', NOW(), NOW()),
(6, 'kumbalangi nights', 'a story about brotherhood and love.', '2019-02-07', 150, 8.5, 'malayalam', 'drama', 'madhupal', 'fahadh faasil', 'http://example.com/poster6.jpg', 'http://example.com/trailer6.mp4', NOW(), NOW()),
(7, 'drishyam', 'a gripping tale of a father protecting his family.', '2013-12-19', 160, 8.2, 'malayalam', 'thriller', 'jeethu joseph', 'mohanlal', 'http://example.com/poster7.jpg', 'http://example.com/trailer7.mp4', NOW(), NOW()),
(8, 'oru naal koothu', 'a blend of humor and romance.', '2018-02-09', 120, 7.5, 'tamil', 'romantic comedy', 'sathyashiva', 'dinesh, niharika', 'http://example.com/poster8.jpg', 'http://example.com/trailer8.mp4', NOW(), NOW()),
(9, 'gauthamiputra satakarni', 'the story of a great warrior king.', '2017-01-12', 165, 8.0, 'telugu', 'historical', 'krish', 'nandamuri balakrishna', 'http://example.com/poster9.jpg', 'http://example.com/trailer9.mp4', NOW(), NOW()),
(10, 'manikarnika: the queen of jhansi', 'the life story of rani laxmi bai.', '2019-01-25', 148, 7.0, 'hindi', 'biography', 'kangana ranaut', 'kangana ranaut, ankita lokhande', 'http://example.com/poster10.jpg', 'http://example.com/trailer10.mp4', NOW(), NOW());

INSERT INTO cities (city_id, name, state, country, created_at, updated_at) VALUES
(1, 'hyderabad', 'telangana', 'india', NOW(), NOW()),
(2, 'chennai', 'tamil nadu', 'india', NOW(), NOW()),
(3, 'bengaluru', 'karnataka', 'india', NOW(), NOW()),
(4, 'thiruvananthapuram', 'kerala', 'india', NOW(), NOW()),
(5, 'coimbatore', 'tamil nadu', 'india', NOW(), NOW()),
(6, 'madurai', 'tamil nadu', 'india', NOW(), NOW()),
(7, 'visakhapatnam', 'andhra pradesh', 'india', NOW(), NOW()),
(8, 'mysore', 'karnataka', 'india', NOW(), NOW()),
(9, 'kottayam', 'kerala', 'india', NOW(), NOW()),
(10, 'warangal', 'telangana', 'india', NOW(), NOW());

INSERT INTO theaters (theater_id, name, location, total_screens, city_id, created_at, updated_at) VALUES
(1, 'sri lakshmi theaters', 'sultan bazar, hyderabad', 5, 1, NOW(), NOW()),
(2, 'pvr cinemas', 'burma bazar, chennai', 8, 2, NOW(), NOW()),
(3, 'inox', 'brigade road, bengaluru', 6, 3, NOW(), NOW()),
(4, 'sree theaters', 'chala road, thiruvananthapuram', 4, 4, NOW(), NOW()),
(5, 'priya cinemas', 'kumaraswamy layout, bengaluru', 7, 3, NOW(), NOW()),
(6, 'laxmi theaters', 'pallavaram, chennai', 3, 2, NOW(), NOW()),
(7, 'central theaters', 'vizag beach road, visakhapatnam', 5, 7, NOW(), NOW()),
(8, 'vishnu cinemas', 'rajendra nagar, hyderabad', 4, 1, NOW(), NOW()),
(9, 'sudharshan theaters', 'krishnagiri, coimbatore', 6, 5, NOW(), NOW()),
(10, 'golden theaters', 'mariyappa road, madurai', 5, 6, NOW(), NOW());

INSERT INTO screens (screen_id, theater_id, screen_number, capacity, created_at, updated_at) VALUES
(1, 1, 1, 200, NOW(), NOW()),
(2, 1, 2, 150, NOW(), NOW()),
(3, 1, 3, 300, NOW(), NOW()),
(4, 2, 1, 250, NOW(), NOW()),
(5, 2, 2, 200, NOW(), NOW()),
(6, 3, 1, 180, NOW(), NOW()),
(7, 4, 1, 100, NOW(), NOW()),
(8, 5, 1, 150, NOW(), NOW()),
(9, 6, 1, 200, NOW(), NOW()),
(10, 7, 1, 300, NOW(), NOW());

INSERT INTO seats (seat_id, screen_id, seat_number, seat_type, is_available, created_at, updated_at) VALUES
(1, 1, 'A1', 'regular', true, NOW(), NOW()),
(2, 1, 'A2', 'regular', true, NOW(), NOW()),
(3, 1, 'A3', 'premium', true, NOW(), NOW()),
(4, 1, 'B1', 'vip', true, NOW(), NOW()),
(5, 2, 'A1', 'regular', true, NOW(), NOW()),
(6, 2, 'A2', 'regular', true, NOW(), NOW()),
(7, 2, 'A3', 'premium', true, NOW(), NOW()),
(8, 2, 'B1', 'vip', true, NOW(), NOW()),
(9, 3, 'A1', 'regular', true, NOW(), NOW()),
(10, 3, 'A2', 'regular', true, NOW(), NOW());

INSERT INTO shows (show_id, movie_id, screen_id, start_time, end_time, price, created_at, updated_at) VALUES
(1, 1, 1, '2024-09-30 15:00:00', '2024-09-30 18:00:00', 250.00, NOW(), NOW()),
(2, 2, 2, '2024-09-30 18:00:00', '2024-09-30 21:00:00', 300.00, NOW(), NOW()),
(3, 3, 3, '2024-09-30 12:00:00', '2024-09-30 15:00:00', 400.00, NOW(), NOW()),
(4, 4, 1, '2024-09-30 19:00:00', '2024-09-30 22:00:00', 220.00, NOW(), NOW()),
(5, 5, 2, '2024-09-30 16:00:00', '2024-09-30 19:00:00', 350.00, NOW(), NOW()),
(6, 6, 1, '2024-09-30 13:00:00', '2024-09-30 16:00:00', 275.00, NOW(), NOW()),
(7, 7, 3, '2024-09-30 20:00:00', '2024-09-30 23:00:00', 200.00, NOW(), NOW()),
(8, 8, 1, '2024-09-30 11:00:00', '2024-09-30 14:00:00', 150.00, NOW(), NOW()),
(9, 9, 2, '2024-09-30 10:00:00', '2024-09-30 13:00:00', 300.00, NOW(), NOW()),
(10, 10, 3, '2024-09-30 17:00:00', '2024-09-30 20:00:00', 350.00, NOW(), NOW());

INSERT INTO bookings (booking_id, user_id, show_id, booking_time, total_price, status, payment_status, created_at, updated_at) VALUES
(1, 1, 1, NOW(), 500.00, 'confirmed', 'paid', NOW(), NOW()),
(2, 2, 2, NOW(), 300.00, 'confirmed', 'paid', NOW(), NOW()),
(3, 3, 3, NOW(), 400.00, 'cancelled', 'failed', NOW(), NOW()),
(4, 4, 4, NOW(), 220.00, 'confirmed', 'paid', NOW(), NOW()),
(5, 5, 5, NOW(), 350.00, 'confirmed', 'pending', NOW(), NOW()),
(6, 6, 6, NOW(), 275.00, 'cancelled', 'failed', NOW(), NOW()),
(7, 7, 7, NOW(), 200.00, 'confirmed', 'paid', NOW(), NOW()),
(8, 8, 8, NOW(), 150.00, 'confirmed', 'paid', NOW(), NOW()),
(9, 9, 9, NOW(), 300.00, 'confirmed', 'pending', NOW(), NOW()),
(10, 10, 10, NOW(), 350.00, 'confirmed', 'paid', NOW(), NOW());

INSERT INTO booking_seats (booking_seat_id, booking_id, seat_id, price, created_at, updated_at) VALUES
(1, 1, 1, 250.00, NOW(), NOW()),
(2, 1, 2, 250.00, NOW(), NOW()),
(3, 2, 5, 300.00, NOW(), NOW()),
(4, 2, 6, 300.00, NOW(), NOW()),
(5, 3, 9, 400.00, NOW(), NOW()),
(6, 4, 4, 220.00, NOW(), NOW()),
(7, 5, 10, 350.00, NOW(), NOW()),
(8, 6, 8, 275.00, NOW(), NOW()),
(9, 7, 7, 200.00, NOW(), NOW()),
(10, 8, 3, 150.00, NOW(), NOW());

INSERT INTO payments (payment_id, booking_id, amount, payment_method, payment_status, transaction_id, created_at, updated_at) VALUES
(1, 1, 500.00, 'credit_card', 'completed', 'txn123456', NOW(), NOW()),
(2, 2, 300.00, 'debit_card', 'completed', 'txn123457', NOW(), NOW()),
(3, 3, 400.00, 'paypal', 'failed', 'txn123458', NOW(), NOW()),
(4, 4, 220.00, 'upi', 'completed', 'txn123459', NOW(), NOW()),
(5, 5, 350.00, 'netbanking', 'pending', 'txn123460', NOW(), NOW()),
(6, 6, 275.00, 'credit_card', 'failed', 'txn123461', NOW(), NOW()),
(7, 7, 200.00, 'debit_card', 'completed', 'txn123462', NOW(), NOW()),
(8, 8, 150.00, 'paypal', 'completed', 'txn123463', NOW(), NOW()),
(9, 9, 300.00, 'upi', 'pending', 'txn123464', NOW(), NOW()),
(10, 10, 350.00, 'netbanking', 'completed', 'txn123465', NOW(), NOW());

INSERT INTO reviews (review_id, user_id, movie_id, rating, review_text, created_at, updated_at) VALUES
(1, 1, 1, 8.5, 'a fantastic epic that keeps you glued to your seat!', NOW(), NOW()),
(2, 2, 2, 7.5, 'a passionate and intense love story.', NOW(), NOW()),
(3, 3, 3, 9.0, 'an outstanding film with great performances.', NOW(), NOW()),
(4, 4, 4, 8.0, 'a gripping tale of morality.', NOW(), NOW()),
(5, 5, 5, 6.5, 'a decent political thriller.', NOW(), NOW()),
(6, 6, 6, 9.5, 'a beautiful portrayal of relationships.', NOW(), NOW()),
(7, 7, 7, 8.0, 'a suspenseful thriller with twists.', NOW(), NOW()),
(8, 8, 8, 7.0, 'a light-hearted romantic comedy.', NOW(), NOW()),
(9, 9, 9, 8.0, 'a powerful historical drama.', NOW(), NOW()),
(10, 10, 10, 6.0, 'a biopic that inspires.', NOW(), NOW());
