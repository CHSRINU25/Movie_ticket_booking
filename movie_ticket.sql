create database online_movie_ticket_booking;
use movie_ticket_booking;

create table users (
    user_id bigint auto_increment primary key,
    name varchar(100) not null,
    email varchar(255) unique not null,
    phone_number varchar(15) unique not null,
    password_hash varchar(255) not null,
    date_of_birth date,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp,
    role enum('customer', 'admin') default 'customer',
    status enum('active', 'inactive', 'banned') default 'active'
);

create table movies (
    movie_id bigint auto_increment primary key,
    title varchar(255) not null,
    description text,
    release_date date not null,
    duration_minutes smallint not null,
    rating decimal(3, 2) check (rating >= 0 and rating <= 10),
    language varchar(50),
    genre varchar(100),
    director varchar(100),
    cast text,
    poster_url varchar(500),
    trailer_url varchar(500),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table cities (
    city_id bigint auto_increment primary key,
    name varchar(100) not null unique,
    state varchar(100) not null,
    country varchar(100) not null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table theaters (
    theater_id bigint auto_increment primary key,
    name varchar(255) not null,
    location varchar(255) not null,
    total_screens int not null,
    city_id bigint not null,
    foreign key (city_id) references cities(city_id) on delete cascade,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table screens (
    screen_id bigint auto_increment primary key,
    theater_id bigint not null,
    screen_number int not null,
    capacity int not null,
    foreign key (theater_id) references theaters(theater_id) on delete cascade,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table seats (
    seat_id bigint auto_increment primary key,
    screen_id bigint not null,
    seat_number varchar(10) not null,
    seat_type enum('regular', 'premium', 'vip') not null,
    is_available boolean default true,
    foreign key (screen_id) references screens(screen_id) on delete cascade,
    unique (screen_id, seat_number),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table shows (
    show_id bigint auto_increment primary key,
    movie_id bigint not null,
    screen_id bigint not null,
    start_time timestamp not null,
    end_time timestamp not null,
    price decimal(10, 2) not null,
    foreign key (movie_id) references movies(movie_id) on delete cascade,
    foreign key (screen_id) references screens(screen_id) on delete cascade,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp,
    check (start_time < end_time)
);

create table bookings (
    booking_id bigint auto_increment primary key,
    user_id bigint not null,
    show_id bigint not null,
    booking_time timestamp default current_timestamp,
    total_price decimal(10, 2) not null,
    status enum('confirmed', 'cancelled') default 'confirmed',
    payment_status enum('pending', 'paid', 'failed') default 'pending',
    foreign key (user_id) references users(user_id) on delete cascade,
    foreign key (show_id) references shows(show_id) on delete cascade,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table booking_seats (
    booking_seat_id bigint auto_increment primary key,
    booking_id bigint not null,
    seat_id bigint not null,
    price decimal(10, 2) not null,
    foreign key (booking_id) references bookings(booking_id) on delete cascade,
    foreign key (seat_id) references seats(seat_id) on delete cascade,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table payments (
    payment_id bigint auto_increment primary key,
    booking_id bigint not null,
    amount decimal(10, 2) not null,
    payment_method enum('credit_card', 'debit_card', 'paypal', 'upi', 'netbanking') not null,
    payment_status enum('pending', 'completed', 'failed') default 'pending',
    transaction_id varchar(255) unique,
    foreign key (booking_id) references bookings(booking_id) on delete cascade,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table reviews (
    review_id bigint auto_increment primary key,
    user_id bigint not null,
    movie_id bigint not null,
    rating decimal(3, 2) check (rating >= 0 and rating <= 10),
    review_text text,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp,
    foreign key (user_id) references users(user_id) on delete cascade,
    foreign key (movie_id) references movies(movie_id) on delete cascade
);

create index idx_show_time on shows (start_time, end_time);
create index idx_booking_user on bookings (user_id, show_id);
create index idx_payment_booking on payments (booking_id, payment_status);
create index idx_seat_availability on seats (screen_id, seat_number, is_available);

