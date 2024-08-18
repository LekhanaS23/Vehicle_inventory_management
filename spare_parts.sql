-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 06:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spare_parts`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(1, 'Electric_parts'),
(2, 'Metal_parts'),
(3, 'Rubber_parts'),
(4, 'Tranmission_parts');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(1, 'Vaishnavi', 'G', '7406751843'),
(2, 'Ram', 'S', '8050399259'),
(3, 'Gagan', 'S', '9980631823'),
(4, 'Indu', 'K V', '8088072712'),
(5, 'Mr', 'Stark', '9060842578');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `LOCATION_ID`) VALUES
(1, 'Admin', '', 'Male', 'admin@spareparts.in', '9060842578', 1, 2),
(2, 'Elena', 'James', 'Female', 'elenajames@gmail.com', '7406751843', 1, 1),
(3, 'Dheekhsa', 'S', 'Female', 'dheekshas@yahoomail.com', '8050399259', 2, 4),
(4, 'Indira', 'Dev', 'Male', 'indira@gmail.com', '6969696969', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(1, 'Bangalore', 'Gottigere'),
(2, 'Bangalore', 'Arekere'),
(3, 'Bangalore', 'Koramangala'),
(4, 'Bangalore', 'MG Road'),
(5, 'Ramanagara', 'Kanakapura'),
(6, 'Ramanagara', 'Satnur'),
(7, 'Mysore', 'Nanjangud'),
(8, 'Mysore', 'Nanjangud');


-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) DEFAULT NULL,
  `ON_HAND` int(250) NOT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`) VALUES
(1001, '1', 'wires', '', 1, 1, 300, 4, 19, ''),
(1002, '2', 'headlights', '', 1, 1, 2500, 1, 17, ''),
(1003, '2', 'headlights', '', 1, 1, 2500, 1, 17, ''),
(1004, '3', 'starters', '', 1, 1, 500, 1, 18, ''),
(1005, '3', 'starters', '', 1, 1, 500, 1, 18, ''),
(1006, '3', 'starters', '', 1, 1, 500, 1, 18, ''),
(1007, '4', 'fuel injection pipes', '', 1, 1, 700, 3, 17, ''),
(1008, '4', 'fuel injection pipes', '', 1, 1, 700, 3, 17, ''),
(1009, '4', 'fuel injection pipes', '', 1, 1, 700, 3, 17, ''),
(1010, '4', 'fuel injection pipes', '', 1, 1, 700, 3, 17, ''),
(1011, '5', 'gears', '', 1, 1, 3500, 4, 19, ''),
(1012, '5', 'gears', '', 1, 1, 3500, 4, 19, ''),
(1013, '5', 'gears', '', 1, 1, 3500, 4, 19, ''),
(1014, '5', 'gears', '', 1, 1, 3500, 4, 19, ''),
(1015, '5', 'gears', '', 1, 1, 3500, 4, 19, ''),
(1016, '6', 'U-J cross', '', 1, 1, 1500, 4, 17, ''),
(1017, '6', 'U-J cross', '', 1, 1, 1500, 4, 17, ''),
(1018, '6', 'U-J cross', '', 1, 1, 1500, 4, 17, ''),
(1019, '6', 'U-J cross', '', 1, 1, 1500, 4, 17, ''),
(1020, '6', 'U-J cross', '', 1, 1, 1500, 4, 17, ''),
(1021, '6', 'U-J cross', '', 1, 1, 1500, 4, 17, ''),
(1022, '7', 'Engine mountings', '', 1, 1, 1200, 3, 19, ''),
(1023, '7', 'Engine mountings', '', 1, 1, 1200, 3, 19, ''),
(1024, '7', 'Engine mountings', '', 1, 1, 1200, 3, 19, ''),
(1025, '7', 'Engine mountings', '', 1, 1, 1200, 3, 19, ''),
(1026, '7', 'Engine mountings', '', 1, 1, 1200, 3, 19, ''),
(1027, '7', 'Engine mountings', '', 1, 1, 1200, 3, 19, ''),
(1028, '7', 'Engine mountings', '', 1, 1, 1200, 3, 19, ''),
(1029, '8', 'Nuts', '', 1, 1, 150, 2, 18, ''),
(1030, '8', 'Nuts', '', 1, 1, 150, 2, 18, ''),
(1031, '8', 'Nuts', '', 1, 1, 150, 2, 18, ''),
(1032, '8', 'Nuts', '', 1, 1, 150, 2, 18, ''),
(1033, '8', 'Nuts', '', 1, 1, 150, 2, 18, ''),
(1034, '8', 'Nuts', '', 1, 1, 150, 2, 18, ''),
(1035, '8', 'Nuts', '', 1, 1, 150, 2, 18, ''),
(1036, '8', 'Nuts', '', 1, 1, 150, 2, 18, ''),
(1037, '9', 'T-bolts', '', 1, 1, 130, 2, 17, ''),
(1038, '9', 'T-bolts', '', 1, 1, 130, 2, 17, ''),
(1039, '9', 'T-bolts', '', 1, 1, 130, 2, 17, ''),
(1040, '9', 'T-bolts', '', 1, 1, 130, 2, 17, ''),
(1041, '9', 'T-bolts', '', 1, 1, 130, 2, 17, ''),
(1042, '9', 'T-bolts', '', 1, 1, 130, 2, 17, ''),
(1043, '9', 'T-bolts', '', 1, 1, 130, 2, 17, ''),
(1044, '9', 'T-bolts', '', 1, 1, 130, 2, 17, ''),
(1045, '9', 'T-bolts', '', 1, 1, 130, 2, 17, ''),
(1046, '9', 'T-bolts', '', 1, 1, 130, 2, 17, '');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(1, 'TATA', 1, '9873647484'),
(2, 'TOYOTA', 3, '9873654783'),
(3, 'Mahindra', 6, '8765904753'),
(4, 'Suziki', 1, '8973645632');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`) VALUES
(1, 2, '1', '2,500.00', '267.86', '2,232.14', '267.86', '2,500.00', '2500', '2020-11-11 04:15 am', '111141641'),
(2, 1, '2', '', '', '', '', '2,800.00', '2800', '<br />\r\n<b>Notice</b>:  Undefined variable: today ', '111151334');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`) VALUES
(1, '111141641', 'headlights', '1', '2500', 'Lekhana', 'Manager'),
(2, '111151334', 'wires', '1', '300', 'Lekhana', 'Manager'),
(3, '111151334', 'headlights', '1', '2500', 'Lekhana', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'admin1', '6C7CA345F63F835CB353FF15BD6C5E052EC08E7A', 1),
(2, 2, 'admin2', '315F166C5ACA63A157F7D41007675CB44A948B33', 1),
(3, 3, 'admin3', '33AAB3C7F01620CADE108F488CFD285C0E62C1EC', 2),
(4, 4, 'admin4', 'EA053D11A8AAD1CCF8C18F9241BAEB9EC47E5D64', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1047;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`TRANS_D_ID`) REFERENCES `transaction_details` (`TRANS_D_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
