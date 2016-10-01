-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2016 at 05:40 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ues`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(400) NOT NULL,
  `c_address` varchar(600) NOT NULL,
  `c_phone` varchar(100) NOT NULL,
  `c_login_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `c_address`, `c_phone`, `c_login_id`) VALUES
(1, 'Brandix pvt Ltd', 'ratmalana,katubedda', '012342934', 2),
(2, 'hatton national bank', 'havlock rd, colombo 01', '0119392492', 3),
(3, 'Virtusa corporation', 'dematagode, colombo 07', '0119392492', 4),
(4, 'Navantis IT', 'navantis road, colombo 04', '018393293', 5),
(5, 'Regens Motors Pvt Ltd', 'delkada road, colombo 8', '0113493229', 6),
(6, 'TrueCoderz', 'katubedda, moratuwa', '0712480969', 7),
(7, 'nimesha jina', 'wehhs,sfsidfsi', '0712480969', 8);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(400) NOT NULL,
  `emp_designation` varchar(400) NOT NULL,
  `emp_tp` varchar(10) NOT NULL,
  `emp_email` varchar(400) NOT NULL,
  `emp_descrip` varchar(600) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_designation`, `emp_tp`, `emp_email`, `emp_descrip`) VALUES
(1, 'Ranga Madushanka    ', 'senior analyst', '071244239', 'ranga@gmail.com', 'motivated with 7yrs plus experience.');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_date` varchar(400) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `product_id`, `order_date`, `customer_id`, `quantity`) VALUES
(15, 8, '2016-5-6', 1, 70),
(16, 8, '2016-5-6', 1, 80),
(17, 8, '2016-5-6', 1, 50),
(18, 5, '2016-5-6', 1, 100),
(19, 19, '2016-5-6', 1, 150),
(20, 19, '2016-5-6', 1, 120),
(21, 8, '2016-5-6', 1, 0),
(22, 9, '2016-5-6', 1, 30),
(23, 19, '2016-5-6', 1, 10),
(24, 19, '2016-5-6', 1, 10),
(25, 8, '2016-5-6', 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(600) NOT NULL,
  `s_quantity` int(11) NOT NULL,
  `s_price` int(11) NOT NULL,
  `s_min_level` int(11) NOT NULL,
  `s_max_level` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`s_id`, `s_name`, `s_quantity`, `s_price`, `s_min_level`, `s_max_level`, `sup_id`) VALUES
(5, 'Spocket 100G', 445, 9000, 500, 100, 1),
(6, 'Chain G234', 620, 2100, 600, 100, 2),
(7, 'Gear Box Toyota', 900, 34000, 700, 100, 1),
(8, 'Chain 34R', 196, 3400, 300, 100, 2),
(9, 'Ranger Spocket 100r', 170, 45000, 400, 23, 2),
(10, 'Viper 78X', 500, 2500, 20, 350, 1),
(18, 'Alto Car Spocket', 230, 23000, 100, 700, 1),
(19, 'ASP alto sport car', 10, 34000, 100, 700, 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(600) NOT NULL,
  `sup_address` varchar(600) NOT NULL,
  `sup_phone` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sup_id`, `sup_name`, `sup_address`, `sup_phone`) VALUES
(1, 'HonkKong Vanity pvt Ltd', 'jason Rd, China', '043238923'),
(2, 'Ration Captains pvt Ltd', 'debian Road, UK', '03293223');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(400) NOT NULL,
  `password` varchar(400) NOT NULL,
  `u_role` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `u_role`, `remember_token`) VALUES
(1, 'admin', '$2y$10$v79UmmponmvyJRbgeJDqjO/0DWAcj.ulWnzSOva9Wl1biVbts67Wi', 'admin', 'Ls1Ig6sO9wTMgYDZauKgjPdU6NB2KWkexzf3g4kn4IKE8qBXlMOst4kE6iLU'),
(2, 'cus', '$2y$10$hAX0Hj5V4PiFf5i7S.hZUeVQar1F7FNRKEPfwCZPjLtXbC.1/FwTW', 'customer', 'VfGGZDbGJEh13mCEBKYJhzIrJ5OfPGzz0Bo5VTJCr1urxcdwvOOgpYynuIMd'),
(3, 'hatton', '$2y$10$8J12O7vpFMtrGkvcJSDhF.Y68K0c25N5Qm5zJI/7bxfILgiSngyZS', 'customer', NULL),
(4, 'virtusan', '$2y$10$hAX0Hj5V4PiFf5i7S.hZUeVQar1F7FNRKEPfwCZPjLtXbC.1/FwTW', 'customer', 'difTNeQJKVDGXAYS8M69YkXT9nFLR3cL1fhm3BtCPB57popqlS4bxJSkCU28'),
(5, 'navantis', '$2y$10$JicHq3zOfWEduxlvcAwmquo/U9rYghLV/jeTBPr/OKjxgXnT/rvpS', 'customer', NULL),
(6, 'ranger', '$2y$10$V.Zbw.v6wyJFcVqp8FGtoO/O4dNcYF58euIncho2s/QkmkHnRjgoW', 'customer', '3nKqtDgh0HaogCfxh2Tp8Oh82RFDVThagTEDwxXYC2aDnb3UFm1tSuud4AcG'),
(7, 'truecoders', '$2y$10$.i8g3aU4eO0pwkDI4RUCqeu1gCfVTlItHgyIsJD.i7Wqz3kWqXqFi', 'customer', 'eUfnTLcicXBSwkNNNElq1nDvQ7vplYK4OnWCrJFvLmVw94Mjl1eO6gI3vkBW'),
(8, 'helloworld', '$2y$10$BcHTPsnOTDJiFUVUqc3TQuy2SO.73MA8LbmEmaIT9OMJI4Hi.GPue', 'customer', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`), ADD KEY `c_login_id` (`c_login_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`), ADD KEY `customer_id` (`customer_id`), ADD KEY `product_id` (`product_id`,`customer_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`s_id`), ADD KEY `sup_id` (`sup_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
ADD CONSTRAINT `log_id TO Customer` FOREIGN KEY (`c_login_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
ADD CONSTRAINT `customer_id TO order` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `stock_id TO order` FOREIGN KEY (`product_id`) REFERENCES `stock` (`s_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
ADD CONSTRAINT `sup_id TO stock` FOREIGN KEY (`sup_id`) REFERENCES `supplier` (`sup_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
