-- Online Car Rental System Database Schema
-- Database: car_rental

CREATE DATABASE IF NOT EXISTS `car_rental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `car_rental`;

-- --------------------------------------------------------
-- Table structure for table `users`
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(50) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Seed initial users (password for all is: 1234)
INSERT INTO `users` (`username`, `password`) VALUES
('admin', '$2y$12$aaJQ0p36ZfDD545Y20Mq8e4mfr9VwymGBayW3iOTsM48CLKEWf9r6'),
('srihitha', '$2y$12$aaJQ0p36ZfDD545Y20Mq8e4mfr9VwymGBayW3iOTsM48CLKEWf9r6'),
('p.srihitha', '$2y$12$aaJQ0p36ZfDD545Y20Mq8e4mfr9VwymGBayW3iOTsM48CLKEWf9r6')
ON DUPLICATE KEY UPDATE `password` = VALUES(`password`);

-- --------------------------------------------------------
-- Table structure for table `bookings`
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `bookings` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `user` VARCHAR(50) NOT NULL,
  `passenger_name` VARCHAR(100) NOT NULL,
  `car_name` VARCHAR(100) NOT NULL,
  `days` INT NOT NULL,
  `price_per_day` INT NOT NULL,
  `total_cost` INT NOT NULL,
  `booking_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
