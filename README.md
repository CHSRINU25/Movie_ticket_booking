🎬 Online Movie Ticket Booking System

Welcome to the Online Movie Ticket Booking System repository! This project implements a comprehensive database schema designed for managing movie bookings, users, and theaters. The provided SQL scripts allow you to create and populate the database, as well as execute various queries for efficient data retrieval.

📁 Repository Structure

This repository contains the following files:

1. movie_ticket_booking.sql
   - Description: Defines the complete database schema for the Online Movie Ticket Booking System.
   - Contents:
     - Creation of tables: 'users','movies','cities','theatres','screens','seats','shows','bookings','booking_seats','payments','reviews' and associated relationships.
     - Constraints, indexes, and data types are carefully selected for optimal performance and integrity.
     - Usage: Execute this file in your SQL environment to create the necessary database structure.

2. sample_inserting_data.sql
   - Description: Contains SQL commands to insert sample data into the database.
   - Contents:
     - Inserts for users,movies,cities,theatres,screens,seats,shows,bookings,booking_seats,payments,reviews.
     - This sample data is essential for testing and demonstrates the functionality of the database.
   - Usage: Run this file after executing `movie_ticket_booking.sql` to populate the database with sample entries.

3. queries.sql
   - Description: A collection of SQL queries designed to interact with the database effectively.
   - Contents:
     - Basic queries for retrieving available movies and shows.
     - Intermediate queries for analyzing user bookings and revenue.
     - Advanced queries utilizing nested subqueries for in-depth data analysis.
   -Usage: Use this file to run various queries against the populated database, enabling exploration of data and functionality.

 🚀 Getting Started

 Prerequisites

- Database Management System: Ensure you have a SQL database management system (e.g., MySQL, PostgreSQL) installed on your machine.
- SQL Knowledge: Familiarity with SQL commands and database management concepts.

Installation Steps

1. Clone the Repository:
   bash
   git clone https://github.com/CHSRINU25/Movie-ticket-booking.git
   cd online-movie-ticket-booking
