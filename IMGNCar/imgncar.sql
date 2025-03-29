-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2025 at 08:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imgncar`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `BookingId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `CarId` int(11) NOT NULL,
  `PickupLocation` longtext NOT NULL,
  `PickupDatetime` date NOT NULL,
  `DropoffLocation` longtext NOT NULL,
  `DropoffDatetime` date NOT NULL,
  `BookingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `RentalDays` int(11) NOT NULL,
  `TotalRentalPrice` decimal(10,2) NOT NULL,
  `BookingStatus` longtext NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`BookingId`, `UserId`, `CarId`, `PickupLocation`, `PickupDatetime`, `DropoffLocation`, `DropoffDatetime`, `BookingDate`, `RentalDays`, `TotalRentalPrice`, `BookingStatus`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 1, 3, 'Shah Alam HQ', '2025-03-29', '', '2025-04-01', '2025-03-27 12:22:09', 3, 270.00, 'Pending', '2025-03-27 12:22:09.664915', '2025-03-27 12:22:09.664915'),
(2, 2, 3, 'Shah Alam HQ', '2025-03-29', '', '2025-03-30', '2025-03-27 12:22:41', 1, 90.00, 'Pending', '2025-03-27 12:22:41.723159', '2025-03-27 12:22:41.723159'),
(3, 4, 1, 'Ampang Branch', '2025-04-02', '', '2025-04-04', '2025-03-27 12:28:12', 2, 241.00, 'Pending', '2025-03-27 12:28:12.533904', '2025-03-27 12:28:12.533905'),
(4, 3, 4, 'Rawang Branch', '2025-04-05', '', '2025-04-06', '2025-03-27 12:39:35', 1, 350.00, 'Pending', '2025-03-27 12:39:35.471014', '2025-03-27 12:39:35.471014');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `CarId` int(11) NOT NULL,
  `Make` longtext NOT NULL,
  `Model` longtext NOT NULL,
  `Year` smallint(6) NOT NULL,
  `Category` longtext NOT NULL,
  `TransmissionType` longtext NOT NULL,
  `NumberOfPassengers` tinyint(3) UNSIGNED NOT NULL,
  `NumberOfBags` tinyint(3) UNSIGNED NOT NULL,
  `Color` longtext NOT NULL,
  `Mileage` int(11) NOT NULL,
  `RegistrationNumber` longtext NOT NULL,
  `DailyRate` decimal(10,2) NOT NULL,
  `AvailabilityStatus` tinyint(1) NOT NULL,
  `ImageUrl` longtext NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`CarId`, `Make`, `Model`, `Year`, `Category`, `TransmissionType`, `NumberOfPassengers`, `NumberOfBags`, `Color`, `Mileage`, `RegistrationNumber`, `DailyRate`, `AvailabilityStatus`, `ImageUrl`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'Toyota', 'Vios', 2020, 'Sedan', 'Automatic', 4, 2, 'White', 30000, 'ABC1234', 120.50, 1, 'vios.jpg', '2025-03-26 09:11:41.501966', '2025-03-26 09:11:41.502000'),
(2, 'Honda', 'Civic', 2021, 'Sedan', 'Automatic', 5, 3, 'Black', 25000, 'XYZ5678', 140.00, 1, 'civic.jpg', '2025-03-26 10:24:10.285735', '2025-03-26 10:24:10.285735'),
(3, 'Proton', 'Saga', 2019, 'Sedan', 'Manual', 4, 2, 'Red', 40000, 'MYS1111', 90.00, 1, 'Saga.jpg', '2025-03-26 10:26:31.010492', '2025-03-26 10:26:31.010492'),
(4, 'BMW', '3 Series', 2022, 'Sedan', 'Automatic', 5, 3, 'Blue', 15000, 'BMW3333', 350.00, 1, 'BMW3.png', '2025-03-26 10:26:42.813201', '2025-03-26 10:26:42.813201'),
(5, 'Perodua', 'Myvi', 2018, 'Hatchback', 'Automatic', 5, 2, 'Yellow', 45000, 'MYV8888', 80.00, 1, 'Myvi.jpg', '2025-03-26 10:26:53.001496', '2025-03-26 10:26:53.001497'),
(6, 'Mazda', 'CX-5', 2021, 'SUV', 'Automatic', 5, 4, 'Silver', 20000, 'MZD5555', 180.00, 1, 'Cx5.jpg', '2025-03-26 10:27:02.970429', '2025-03-26 10:27:02.970429'),
(7, 'Nissan', 'Almera', 2020, 'Sedan', 'Automatic', 5, 3, 'Grey', 30000, 'ALM9999', 100.00, 1, 'almera.png', '2025-03-26 10:27:10.327711', '2025-03-26 10:27:10.327712'),
(8, 'Mercedes-Benz', 'E-Class', 2022, 'Luxury', 'Automatic', 5, 4, 'White', 10000, 'MBE0001', 400.00, 0, 'eclass.jpg', '2025-03-26 10:27:19.135473', '2025-03-26 10:27:19.135473'),
(9, 'Tesla', 'Model 3', 2022, 'Electric', 'Automatic', 5, 3, 'Midnight Silver', 12000, 'TSL3333', 450.00, 1, 'model3.jpg', '2025-03-26 10:27:25.189512', '2025-03-26 10:27:25.189513'),
(10, 'Ford', 'Ranger', 2021, 'Pickup', 'Automatic', 5, 4, 'Orange', 35000, 'FRD7777', 200.00, 1, 'ranger.jpg', '2025-03-26 10:27:29.308092', '2025-03-26 10:27:29.308092');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `FeedbackId` int(11) NOT NULL,
  `BookingId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `OverallSatisfaction` tinyint(3) UNSIGNED NOT NULL,
  `CarConditionRating` tinyint(3) UNSIGNED NOT NULL,
  `PickupProcessRating` tinyint(3) UNSIGNED NOT NULL,
  `DropoffProcessRating` tinyint(3) UNSIGNED NOT NULL,
  `CustomerServiceRating` tinyint(3) UNSIGNED NOT NULL,
  `Comments` longtext NOT NULL,
  `WouldRentAgain` tinyint(1) NOT NULL,
  `WouldRecommend` tinyint(1) NOT NULL,
  `FeedbackSubmissionDate` datetime(6) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`FeedbackId`, `BookingId`, `UserId`, `OverallSatisfaction`, `CarConditionRating`, `PickupProcessRating`, `DropoffProcessRating`, `CustomerServiceRating`, `Comments`, `WouldRentAgain`, `WouldRecommend`, `FeedbackSubmissionDate`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 1, 1, 4, 4, 5, 4, 5, 'Nice. I love it', 1, 1, '2025-03-28 10:38:50.208935', '2025-03-28 10:38:50.251253', '2025-03-28 10:38:50.251253'),
(2, 1, 1, 3, 3, 3, 4, 5, 'Meh, the Car condition was not very pleasant', 0, 0, '2025-03-28 17:43:44.512544', '2025-03-28 17:43:44.557426', '2025-03-28 17:43:44.557426');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DateOfBirth` datetime(6) DEFAULT NULL,
  `RegistrationDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Username`, `PasswordHash`, `Email`, `PhoneNumber`, `FirstName`, `LastName`, `DateOfBirth`, `RegistrationDate`) VALUES
(2, 'Shahmir', 'imaginerich', 'Imagine@gmail.com', '0164224619', 'Shahmir', 'Haqimi', '2000-01-01 00:00:00.000000', '2025-03-27 14:40:36.329153'),
(3, 'Imagine2', 'adadadadad', 'shahmirhaqimi@gmail.com', '0164224619', 'Imagine', 'Rich', '2002-12-11 16:00:00.000000', '2025-03-27 19:16:43.651243'),
(4, 'chama', 'chamachama', 'chama@gmail.com', '019198292', 'Chama de Chama', 'de Chama', '1999-12-11 16:00:00.000000', '2025-03-28 08:15:01.039115'),
(5, 'Dolly', '00000000', 'Dolly@gmail.com', '0192938292', 'Wong', 'Qing', '2001-03-07 16:00:00.000000', '2025-03-28 22:42:13.317355');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20250326085608_InitialCreate', '7.0.2'),
('20250326121919_AddUsersTable', '7.0.2'),
('20250326153701_RemoveLocationIdFromCars', '7.0.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CarId`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`FeedbackId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `CarId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `FeedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
