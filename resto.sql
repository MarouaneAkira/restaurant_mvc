-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 10:20 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `userid` int(11) NOT NULL,
  `mealid` int(11) NOT NULL,
  `TotalPrice` float NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`userid`, `mealid`, `TotalPrice`, `Quantity`) VALUES
(7, 1, 30, 10),
(7, 1, 45, 15),
(7, 1, 60, 20),
(7, 1, 90, 30),
(7, 2, 55, 10),
(7, 2, 55, 10),
(7, 1, 3, 1),
(7, 1, 6, 2),
(7, 1, 6, 2),
(39, 2, 11, 2),
(39, 3, 12.5, 1),
(7, 1, 45, 15),
(7, 1, 15, 5),
(7, 1, 45, 15),
(7, 1, 6, 2),
(7, 1, 6, 2),
(7, 1, 6, 2),
(7, 6, 5.8, 2),
(7, 1, 6393, 2131),
(7, 1, 6, 2),
(7, 1, 6, 2),
(7, 4, 13.5, 2),
(7, 1, 9, 3),
(7, 1, 3, 1),
(7, 1, 9, 3),
(7, 1, 6, 2),
(7, 1, 45, 15),
(7, 2, 82.5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`id`, `name`, `password`) VALUES
(1, 'marouane', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'marouane', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `Id` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Description` varchar(225) NOT NULL,
  `Photo` varchar(225) NOT NULL,
  `QuantityInStock` int(11) NOT NULL,
  `BuyPrice` float NOT NULL,
  `SalePrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`Id`, `Name`, `Description`, `Photo`, `QuantityInStock`, `BuyPrice`, `SalePrice`) VALUES
(1, 'Coca-Cola', 'Mmmm, le Coca-Cola avec 10 morceaux de sucres et tout plein de caféine !', 'coca.jpg', 72, 0.6, 3),
(2, 'Bagel Thon', 'Notre bagel est constitué d\'un pain moelleux avec des grains de sésame et du thon albacore, accompagné de feuilles de salade fraîche du jour  et d\'une sauce renversante :-)', 'bagel_thon.jpg', 18, 2.75, 5.5),
(3, 'Bacon Cheeseburger', 'Ce délicieux cheeseburger contient un steak haché viande française de 150g ainsi que d\'un buns grillé juste comme il faut, le tout accompagné de frites fraîches maison !', 'bacon_cheeseburger.jpg', 14, 6, 12.5),
(4, 'Carrot Cake', 'Le carrot cake maison ravira les plus gourmands et les puristes : tous les ingrédients sont naturels !\r\nÀ consommer sans modération', 'carrot_cake.jpg', 9, 3, 6.75),
(5, 'Donut Chocolat', 'Les donuts sont fabriqués le matin même et sont recouvert d\'une délicieuse sauce au chocolat !', 'chocolate_donut.jpg', 16, 3, 6.2),
(6, 'Dr. Pepper', 'Son goût sucré avec de l\'amande vous ravira !', 'drpepper.jpg', 53, 0.5, 2.9),
(7, 'Milkshake', 'Notre milkshake bien crémeux contient des morceaux d\'Oréos et est accompagné de crème chantilly et de smarties en guise de topping. Il éblouira vos papilles !', 'milkshake.jpg', 12, 2, 5.35);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `userid` int(11) NOT NULL,
  `mealid` varchar(255) NOT NULL,
  `qte` int(11) NOT NULL,
  `totalprice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`userid`, `mealid`, `qte`, `totalprice`) VALUES
(0, '1', 119, 357),
(7, '1', 119, 357),
(7, '2', 20, 110),
(7, '1', 119, 357),
(7, '2', 20, 110),
(7, '1', 119, 357),
(7, '2', 20, 110),
(7, '1', 121, 363),
(7, '2', 20, 110),
(7, '1', 121, 363),
(7, '2', 20, 110),
(7, '6', 2, 5.8),
(7, '1', 2252, 6756),
(7, '2', 20, 110),
(7, '6', 2, 5.8),
(7, '1', 2254, 6762),
(7, '2', 20, 110),
(7, '6', 2, 5.8),
(7, '1', 2256, 6768),
(7, '2', 20, 110),
(7, '4', 2, 13.5),
(7, '6', 2, 5.8),
(7, '1', 2259, 6777),
(7, '2', 20, 110),
(7, '4', 2, 13.5),
(7, '6', 2, 5.8),
(7, '1', 2265, 6795),
(7, '2', 20, 110),
(7, '4', 2, 13.5),
(7, '6', 2, 5.8),
(7, '1', 2280, 6840),
(7, '2', 20, 110),
(7, '4', 2, 13.5),
(7, '6', 2, 5.8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `address`, `password`) VALUES
(6, 'gkgkgkg', 'kgkgkg', 'kgkjgkgkj', 'gkjgjkgjkg', 'kjgkjgkjgk'),
(7, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(11, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(12, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(14, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(15, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(16, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(17, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(18, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(19, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(21, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(22, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(23, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(24, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(25, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(26, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(27, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(28, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(29, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(30, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(31, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(32, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(33, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(34, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(35, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(36, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(37, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(38, 'kjdsbfkjs', 'djhljshd', 'marouane', 'ldfhvldskh', 'e10adc3949ba59abbe56e057f20f883e'),
(39, 'said', 'saleh', 'said.saleh@gmail.com', '1, chari3 chjar, sbata, casablanca 20354', '8f8c5d77596088262955d4e388f11c6e'),
(40, 'said', 'saleh', 'said.saleh@gmail.com', '1, chari3 chjar, sbata, casablanca, 20345 ', '8f8c5d77596088262955d4e388f11c6e'),
(41, 'said', 'saleh', 'said.saleh@gmail.com', '1, chari3 chjar, sbata, casablanca, 20345 ', '8f8c5d77596088262955d4e388f11c6e'),
(42, 'said', 'saleh', 'said.saleh@gmail.com', '1, chari3 chjar, sbata, casa, 20452', '8f8c5d77596088262955d4e388f11c6e'),
(43, 'said', 'saleh', 'said.saleh@gmail.com', '1, chari3 chjar, sbata, casa, 20452', '8f8c5d77596088262955d4e388f11c6e'),
(44, 'said', 'saleh', 'said.saleh@gmail.com', '1, chari3 chjar, sbata, casa, 20452', '8f8c5d77596088262955d4e388f11c6e'),
(45, 'fklzajg', 'geklajgmalekjg', 'gkjaglkj@glkeajg.lkznab', 'glakejgljagùj', '96e79218965eb72c92a549dd5a330112');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `mealid` (`mealid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meal`
--
ALTER TABLE `meal`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`mealid`) REFERENCES `meal` (`Id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
