-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2022 at 04:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `level` varchar(250) NOT NULL,
  `gender` enum('P','L') NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `name`, `image`, `address`, `level`, `gender`, `age`, `phone`, `email`, `password`) VALUES
(4, 'Admin', 'img-1648728713268.jpg', 'Jakarta', 'Admin', 'P', 18, '0821833127623', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name`, `image`, `description`) VALUES
(8, 'AI', 'img-1648729967705.jpg', 'sjhddbnsadbsmnsd'),
(9, 'Networking', 'img-1648730167261.jpg', 'gggcsfdvbhdsbvsudbj'),
(10, 'Graphic Design', 'img-1648730246247.png', 'mngshajdnsasdvadgbhadj'),
(11, 'IoT', 'img-1648730294877.jpg', 'adshbdsashabdas'),
(12, 'Game Development', 'img-1648730366058.jpg', 'dshdsbhdsbhsdha'),
(13, 'Coding', 'img-1648730430354.jpg', 'bsdabsjsdvasbja');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id_class` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id_class`, `id_category`, `name`, `image`, `description`, `price`) VALUES
(10, 13, 'JavaScript', 'img-1648730759288.jpg', 'bsdabsjsdvasbja', 100000),
(12, 9, 'Cloud', 'img-1648730947438.jpg', 'dghsdbsnjnds', 90000);

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `id_mentor` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL,
  `level` varchar(200) NOT NULL,
  `gender` enum('P','L') NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`id_mentor`, `name`, `image`, `level`, `gender`, `phone`, `address`, `age`, `email`, `password`) VALUES
(3, 'Franklyn', 'img-1648731790020.jpg', 'Mentor', 'L', '08238823631', 'Jakarta', '20', 'franklyn@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL,
  `level` varchar(255) NOT NULL,
  `gender` enum('P','L') NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `image`, `level`, `gender`, `phone`, `address`, `age`, `email`, `password`) VALUES
(5, 'Kim Soo Hyun', 'img-1648732207169.jpg', 'User', 'L', '082328831', 'Jakarta', 20, 'kim@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id_class`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`id_mentor`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id_mentor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
