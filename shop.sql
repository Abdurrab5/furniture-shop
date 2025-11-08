-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2020 at 11:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `password` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `password`, `email_id`) VALUES
(170200970, 'Abdurrab', 123456, 'Abdurrab@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_name` varchar(256) NOT NULL,
  `username` varchar(50) NOT NULL,
  `image` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `p_name`, `username`, `image`, `price`, `qty`) VALUES
(4, 13, 'Sofa setaaa', 'Sana ', '<img src=\'http://127.0.0.1/shop/product/327067057_13-sofa-png-image-thumb.png\'', 20000, 0),
(5, 13, 'Sofa setaaa', 'Sana ', '<img src=\'http://127.0.0.1/shop/product/327067057_13-sofa-png-image-thumb.png\'', 20000, 0),
(37, 14, 'Tableqq', 'Abdurrab ', '<img src=\'http://127.0.0.1/shop/product/563557942_3-2-table-png-picture.png\'', 1000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `categories` varchar(256) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `categories`, `status`) VALUES
(1, 'table', 1),
(3, 'Sofa', 1),
(4, 'Cupboard', 1),
(5, 'Chair', 1),
(6, 'Bed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `fname`, `lname`, `username`, `password`, `email`, `address`, `phone`, `gender`) VALUES
(13, 'Abd', 'urrab', 'Abdurrab ', 123456, 'abdurrab5555@gmail.com', 'Swabi', 3469806607, 'male'),
(14, 'Sana', 'batti', 'Sana ', 123456, 'sana@Gmail.com', 'Swat', 3469806607, 'female'),
(15, 'Alam', 'zeb', 'Alam ', 123456, 'alamzaeb@gmail.com', 'Kotha swabi', 3469806607, 'male'),
(16, 'Rafiq', 'ktk', 'rafiq ', 123456, 'rafiqe@gmail.com', 'Karak', 3479815733, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `Id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`Id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(13, 6, 0, 9, 9000),
(14, 6, 1, 1, 1000),
(15, 7, 0, 1, 20000),
(16, 7, 1, 1, 3000),
(17, 8, 0, 50, 5000),
(18, 9, 13, 1, 20000),
(19, 10, 14, 1, 1000),
(20, 11, 17, 9, 9000),
(21, 12, 11, 50, 5000),
(22, 13, 13, 1, 20000),
(23, 14, 13, 1, 20000),
(24, 15, 15, 1, 3000),
(25, 16, 11, 50, 5000),
(26, 17, 14, 1, 1000),
(27, 17, 15, 1, 3000),
(28, 19, 11, 5, 5000),
(29, 19, 15, 1, 3000),
(30, 20, 11, 2, 5000),
(31, 20, 18, 5, 500),
(32, 21, 14, 3, 1000),
(33, 21, 14, 1, 1000),
(34, 22, 13, 5, 20000),
(35, 23, 11, 1, 5000),
(36, 24, 11, 1, 5000),
(37, 24, 14, 1, 1000),
(38, 24, 17, 1, 9000),
(39, 24, 11, 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing '),
(3, 'Shipped'),
(4, 'Canceled '),
(5, 'Complete ');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `title` text NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `categories_id`, `p_name`, `image`, `price`, `title`, `qty`, `status`) VALUES
(11, 5, 'Office chair', '200059678_23-office-chair-png-image-thumb.png', 5000, 'wheel office chair', 192, 1),
(13, 3, 'Sofa setaaa', '327067057_13-sofa-png-image-thumb.png', 20000, 'a good sofa set for you', 57, 1),
(14, 1, 'Tableqq', '563557942_3-2-table-png-picture.png', 1000, 'a table', 21, 1),
(15, 1, 'Table', '276041666_2-2-table-png-file-thumb.png', 3000, 'Cupboard for clothes', 43, 1),
(16, 6, 'Double bed', '173502604_2cd43b_9dfb0ccbec9b4ebf86b2d90223e51618_mv2.png', 8000, 'home sweet bed', 7, 1),
(17, 4, 'Cupboard wood', '266493055_Cupboard-Transparent-Background.png', 9000, 'Cupboard for clothes new', 198, 1),
(18, 5, 'Chair', '277425130_1-chair-png-image-thumb.png', 500, 'chair eeee', 48, 1),
(19, 6, 'Sigl bed', '881049262_2cd43b_46426f7ecabd442db701b15299a16ab2_mv2.png', 1000, 'home bed', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taborder`
--

CREATE TABLE `taborder` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(250) NOT NULL,
  `payment_status` varchar(250) NOT NULL,
  `order_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taborder`
--

INSERT INTO `taborder` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `payment_status`, `order_status`, `added_on`, `total_price`) VALUES
(7, 'Abdurrab ', 'Swabi', 'Kohat', 2500, 'COD', 'Success', 5, '2020-09-12 08:54:52', 23000),
(9, 'Abdurrab ', 'Swabi', 'Kohat', 2500, 'COD', 'pending', 1, '2020-09-12 09:19:03', 20000),
(10, 'Abdurrab ', 'Swabi', 'Kohat', 2500, 'COD', 'pending', 1, '2020-09-12 09:24:17', 1000),
(11, 'Sana ', 'Karach', 'karachi', 22223, 'COD', 'pending', 3, '2020-09-12 09:28:08', 81000),
(12, 'Sana ', 'Swabi', 'Kohat', 2500, 'COD', 'pending', 1, '2020-09-12 09:38:07', 250000),
(13, 'Sana ', 'Swabi', 'Kohat', 2500, 'COD', 'pending', 1, '2020-09-12 09:43:19', 20000),
(14, 'Sana ', 'Bazar shaheed', 'kalabat', 25200, 'COD', 'pending', 1, '2020-09-21 06:38:03', 20000),
(15, 'Sana ', 'Swabi', 'Kohat', 2500, 'COD', 'pending', 1, '2020-09-21 06:48:32', 3000),
(16, 'rafiq ', 'Varana', 'karak', 112233, 'COD', 'pending', 1, '2020-09-21 07:53:21', 250000),
(17, 'rafiq ', 'Viran', 'karak', 11122, 'COD', 'pending', 1, '2020-09-21 07:54:09', 4000),
(18, 'Sana ', 'Gohati', 'swabi', 44444, 'COD', 'pending', 1, '2020-09-22 04:18:38', 0),
(19, 'Sana ', 'Gohati', 'swabi', 44444, 'COD', 'pending', 1, '2020-09-22 04:42:51', 28000),
(20, 'Sana ', 'Gohati', 'swabi', 44444, 'COD', 'pending', 1, '2020-09-22 04:45:23', 12500),
(21, 'Abdurrab ', 'Varana', 'karak', 112233, 'COD', 'pending', 2, '2020-09-22 07:31:50', 4000),
(22, 'rafiq ', 'Viran', 'karak', 11122, 'COD', 'pending', 2, '2020-09-27 08:11:41', 100000),
(23, 'Abdurrab ', 'kalabat', 'swabi', 78945, 'COD', 'Success', 5, '2020-10-18 08:52:12', 5000),
(24, 'Abdurrab ', 'kalabat', 'swabi', 78945, 'COD', 'pending', 3, '2020-10-19 10:02:33', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`),
  ADD UNIQUE KEY `Username` (`username`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `taborder`
--
ALTER TABLE `taborder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `taborder`
--
ALTER TABLE `taborder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
