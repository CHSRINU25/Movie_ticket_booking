-- Insert sample data into cities
INSERT INTO cities (name, state, country) VALUES
('Hyderabad', 'Telangana', 'India'),
('Chennai', 'Tamil Nadu', 'India'),
('Bengaluru', 'Karnataka', 'India'),
('Visakhapatnam', 'Andhra Pradesh', 'India'),
('Coimbatore', 'Tamil Nadu', 'India'),
('Mysuru', 'Karnataka', 'India'),
('Tirupati', 'Andhra Pradesh', 'India'),
('Madurai', 'Tamil Nadu', 'India'),
('Warangal', 'Telangana', 'India'),
('Kochi', 'Kerala', 'India');

-- Insert sample data into users
INSERT INTO users (name, email, phone_number, password_hash, date_of_birth, role, status) VALUES
('Ravi Kumar', 'ravi.kumar@example.com', '9876543210', 'hashedpassword1', '1990-05-15', 'customer', 'active'),
('Sita Rani', 'sita.rani@example.com', '8765432109', 'hashedpassword2', '1992-08-20', 'customer', 'active'),
('Anil Reddy', 'anil.reddy@example.com', '7654321098', 'hashedpassword3', '1988-11-30', 'admin', 'active'),
('Priya Nair', 'priya.nair@example.com', '6543210987', 'hashedpassword4', '1995-02-10', 'customer', 'inactive'),
('Vijay Sharma', 'vijay.sharma@example.com', '5432109876', 'hashedpassword5', '1985-04-05', 'customer', 'banned'),
('Meena Devi', 'meena.devi@example.com', '4321098765', 'hashedpassword6', '1991-12-25', 'customer', 'active'),
('Kiran Babu', 'kiran.babu@example.com', '3210987654', 'hashedpassword7', '1987-03-15', 'customer', 'active'),
('Lakshmi Subramanian', 'lakshmi.subramanian@example.com', '2109876543', 'hashedpassword8', '1980-07-20', 'customer', 'active'),
('Nitin Kumar', 'nitin.kumar@example.com', '1098765432', 'hashedpassword9', '1993-09-01', 'customer', 'active'),
('Sneha Rao', 'sneha.rao@example.com', '0987654321', 'hashedpassword10', '1989-01-30', 'customer', 'active');

-- Insert sample data into movies
INSERT INTO movies (title, description, release_date, duration_minutes, rating, language, genre, director, cast, poster_url, trailer_url) VALUES
('Baahubali: The Beginning', 'Epic action film about a royal battle.', '2015-07-10', 159, 8.0, 'Telugu', 'Action', 'S.S. Rajamouli', 'Prabhas, Rana Daggubati', 'url1', 'trailer1'),
('Arjun Reddy', 'A hot-headed surgeon falls in love.', '2017-06-09', 180, 7.8, 'Telugu', 'Romance', 'Sandeep Reddy Vanga', 'Vijay Deverakonda, Shalini Pandey', 'url2', 'trailer2'),
('Super Deluxe', 'A tale of interlinked stories.', '2019-03-29', 132, 8.1, 'Tamil', 'Drama', 'Thiagarajan Kumararaja', 'Vijay Sethupathi, Fahadh Faasil', 'url3', 'trailer3'),
('KGF Chapter 1', 'Story of a gangster rising in the KGF.', '2018-12-21', 156, 8.4, 'Kannada', 'Action', 'Prashanth Neel', 'Yash, Srinidhi Shetty', 'url4', 'trailer4'),
('Master', 'A professor takes on a juvenile school.', '2021-01-13', 179, 7.0, 'Tamil', 'Action', 'Lokesh Kanagaraj', 'Vijay, Vijay Sethupathi', 'url5', 'trailer5'),
('Mahanati', 'Biopic of actress Savitri.', '2018-05-09', 178, 8.2, 'Telugu', 'Biography', 'Nag Ashwin', 'Keerthy Suresh, Dulquer Salmaan', 'url6', 'trailer6'),
('Sye', 'A tale of rugby and rivalry.', '2004-11-22', 150, 7.0, 'Telugu', 'Sports', 'S.S. Rajamouli', 'Nithya Menen, Sudeep', 'url7', 'trailer7'),
('Eega', 'A man is reincarnated as a housefly.', '2012-07-06', 139, 7.7, 'Telugu', 'Fantasy', 'S.S. Rajamouli', 'Nani, Samantha', 'url8', 'trailer8'),
('Kushi', 'A romantic drama featuring love and sacrifice.', '2001-09-27', 155, 7.2, 'Telugu', 'Romance', 'Shiva Nirvana', 'Pawan Kalyan, Bhumika Chawla', 'url9', 'trailer9'),
('Drushyam', 'A suspense thriller about a family.', '2014-07-11', 137, 8.0, 'Telugu', 'Thriller', 'Jeethu Joseph', 'Venkatesh, Meena', 'url10', 'trailer10');

-- Insert sample data into theaters
INSERT INTO theaters (name, location, total_screens, city_id) VALUES
('PVR Cinemas', 'Banjara Hills', 6, 1),
('Inox', 'T. Nagar', 5, 2),
('Cinepolis', 'Koramangala', 4, 3),
('SVC Cinemas', 'Beach Road', 3, 4),
('Q Cinemas', 'RS Puram', 5, 5),
('Cineplex', 'Jayalakshmipuram', 4, 6),
('Sri Ramulu', 'Chittoor', 2, 7),
('Rohini Silver Screens', 'Madurai Main', 3, 8),
('Vijaya Mall', 'Warangal Town', 2, 9),
('Lohit Cinemas', 'Ernakulam', 5, 10);

-- Insert sample data into screens
INSERT INTO screens (theater_id, screen_number, capacity) VALUES
(1, 1, 150),
(1, 2, 120),
(2, 1, 180),
(2, 2, 160),
(3, 1, 200),
(3, 2, 140),
(4, 1, 100),
(5, 1, 130),
(6, 1, 110),
(7, 1, 80);

-- Insert sample data into seats
INSERT INTO seats (screen_id, seat_number, seat_type, is_available) VALUES
(1, 'A1', 'regular', true),
(1, 'A2', 'regular', true),
(1, 'B1', 'premium', true),
(1, 'B2', 'premium', false),
(2, 'C1', 'vip', true),
(2, 'C2', 'vip', false),
(3, 'D1', 'regular', true),
(4, 'E1', 'regular', true),
(5, 'F1', 'premium', true),
(6, 'G1', 'vip', false);

-- Insert sample data into shows
INSERT INTO shows (movie_id, screen_id, start_time, end_time, price) VALUES
(1, 1, '2023-10-01 18:00:00', '2023-10-01 21:00:00', 300.00),
(2, 2, '2023-10-02 19:00:00', '2023-10-02 22:00:00', 350.00),
(3, 3, '2023-10-03 20:00:00', '2023-10-03 22:00:00', 400.00),
(4, 4, '2023-10-04 17:00:00', '2023-10-04 19:30:00', 450.00),
(5, 5, '2023-10-05 18:30:00', '2023-10-05 21:00:00', 380.00),
(6, 6, '2023-10-06 16:00:00', '2023-10-06 18:30:00', 320.00),
(7, 7, '2023-10-07 19:30:00', '2023-10-07 21:00:00', 290.00),
(8, 8, '2023-10-08 20:00:

