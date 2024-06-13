-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 12:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(51, 'Sandwich', '80', 'food-4.png', 1),
(52, 'Hot Dog', '150', 'food-3.png', 2),
(53, 'Margherita Pizza', '300', 'food-2.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(100) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `pass`) VALUES
('admin27@gmail.com', '272002');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(10) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`) VALUES
(1, 'Muskansaini', '7717399046', 'sainimuskan731@gmail.com', 'cash on delivery', 'i2/60', 'Sant nagar', 'Amritsar', 'Punjab', 'India', 143501, 'pizza (1) ', '90'),
(2, 'Manorma', '7888654321', 'isha@gmail.com', 'credit cart', 'i2/60', 'Majitha road', 'Amritsar', 'Punjab', 'India', 143501, 'Margherita Pizza (1) , Hot Dog (1) ', '450'),
(3, 'mehak', '7717356790', 'mehak@gmail.com', 'paypal', '25/bb', 'batala road', 'Amritsar', 'Punjab', 'India', 143501, 'Margherita Pizza (1) , Hot Dog (1) ', '450'),
(4, 'Rozy', '7789654322', 'Rozy@gmail.com', 'cash on delivery', 'i2/60', 'Sant nagar', 'Amritsar', 'Punjab', 'India', 143501, 'Margherita Pizza (3) , Hot Dog (2) , Burger (1) ', '1290'),
(5, 'yuvraj', '7717399046', 'yuvraj@gmail.com', 'cash on delivery', '25/bb', 'batala road', 'Amritsar', 'Punjab', 'India', 143501, 'Margherita Pizza (1) , Sandwich (2) , Spicy Burger (1) ', '580');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(3, 'Margherita Pizza', '300', 'food-2.png'),
(4, 'Hot Dog', '150', 'food-3.png'),
(5, 'Sandwich', '80', 'food-4.png'),
(6, 'Drinks', '70', 'food-5.png'),
(7, 'French fries', '160', 'food-6.png'),
(9, 'Spicy Burger', '120', 'home-img-2.png'),
(12, 'Desert', '100', 'dessert-4.png'),
(13, 'Shakes', '80', 'dessert-1.png'),
(15, 'Coffee', '40', 'drink-2.png'),
(16, 'Juices', '40', 'drink-1.png'),
(17, 'Noodles', '60', 'dish-1.png'),
(18, 'Ice-Cream', '30', 'dessert-5.png');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int(12) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `number`, `pass`) VALUES
('Muskansaini', 'muskansainicse893@gmail.com', 2147483647, '1234'),
('ghg', 'ghg@gmail.com', 2147483647, '1234'),
('yuvraj', 'yuvraj@gmail.com', 2147483647, 'uv12'),
('diya', 'diya@gmail.com', 2147483647, '2523'),
('Muskansaini', 'sainimuskan731@gmail.com', 2147483647, '678'),
('Muskansaini', 'muskansainicse893@gmail.com', 2147483647, '123'),
('Muskan saini', 'admin28@gmail.com', 123, '123'),
('isha', 'isha@gmail.com', 2147483647, 'isha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
