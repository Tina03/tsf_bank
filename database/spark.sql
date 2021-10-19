-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 10:15 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spark`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(11, 'Priyanka Sharma', 'Ruhi Shinde', 500, '2021-10-19 11:19:40'),
(12, 'Ishwar Katve', 'Priyanka Sharma', 1000, '2021-10-19 11:19:59'),
(13, 'Ishwar Katve', 'Jenny Winget', 2000, '2021-10-19 11:20:18'),
(14, 'Ruhi Shinde', 'Mahima Rathod', 2750, '2021-10-19 11:22:44'),
(15, 'Sankalp Surana', 'Rdhika Kulkarni', 250, '2021-10-19 12:50:39'),
(16, 'Shivraj Nair', 'Raunak Joshi', 1100, '2021-10-19 12:51:05'),
(17, 'Ishwar Katve', 'Raunak Joshi', 1500, '2021-10-19 12:57:53'),
(18, 'Ishaan Pujari', 'Shivraj Nair', 2000, '2021-10-19 12:59:19'),
(19, 'Sankalp Surana', 'Jenny Winget', 3000, '2021-10-19 13:01:19'),
(20, 'Rdhika Kulkarni', 'Sankalp Surana', 2000, '2021-10-19 13:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Priyanka Sharma', 'priya@gmail.com', 56500),
(2, 'Riya Sethi', 'riyus@gmail.com', 47800),
(3, 'Jenny Winget', 'wingjen@gmail.com', 10000),
(4, 'Ruhi Shinde', 'shinderuhi@gmail.com', 22750),
(5, 'Ishwar Katve', 'isKatwe@gmail.com', 45500),
(6, 'Ishaan Pujari', 'ishan@gmail.com', 10000),
(7, 'Mahima Rathod', 'mahi@gmail.com', 55770),
(8, 'Rdhika Kulkarni', 'radha@gmail.com', 1100),
(9, 'Shivraj Nair', 'shiv12@gmail.com', 55130),
(10, 'Sankalp Surana', 'surana@gmail.com', 41750),
(11, 'Raunak Joshi', 'raunak@gmail.com', 25150);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
