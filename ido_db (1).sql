-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2025 at 06:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ido_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Category_ID` int(11) NOT NULL,
  `Type_of_Category` varchar(100) DEFAULT NULL,
  `Category_name` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contain`
--

CREATE TABLE `contain` (
  `Category_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `related_type` varchar(50) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productquotation`
--

CREATE TABLE `productquotation` (
  `Product_ID` int(11) NOT NULL,
  `Qutation_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `type_of_product` varchar(100) DEFAULT NULL,
  `amount_of_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provide`
--

CREATE TABLE `provide` (
  `Supplier_ID` int(11) NOT NULL,
  `Qutation_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `Qutation_Id` int(11) NOT NULL,
  `Description` text DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submit`
--

CREATE TABLE `submit` (
  `User_ID` int(11) NOT NULL,
  `Qutation_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supplier_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Full_name` varchar(255) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `Role`, `Full_name`, `Email`, `Phone`, `password`) VALUES
(1, 'Admin', 'Alice Cohen', 'alice@example.com', '050-1234567', '$2b$10$I.FRPXKZk/oFIEM70j4J0OAT9vk4NV4kdVXRdk.JF1lSt1sDi0VMq'),
(2, 'Viewer', 'aviv dahan', 'aaa@ddd.co.il', '0521234567', '$2b$10$MRBGkCNdUqSiLJMxZxp71OiJ/L4.C88.2H32a16QXhHXv2hZR8Pn2'),
(3, 'Viewer', 'emanuel1000', 'dror44@gmail.com', '0521234567', '$2b$10$v9UgTvobuwiJiPfY.vqLhe8Uf4hKJy9lxcYhA6yCpxVG9hrjD3.hO'),
(4, 'Customer', 'Niv Dahan', 'nivdahan@example.com', '0541234567', '$2b$10$GKn./WlIMgLDR.LKXS2a3.JOG21FF3t7WvD5lTf0O.6BeiZoQ0hhC'),
(5, 'Customer', 'Shira Levi', 'shira.levi@gmail.com', '0537654321', '$2b$10$NbSw2QkNAhqrXflxGLxX4udojNy6JjgJjxKriZkhHXkPK4316OS3S'),
(6, 'Customer', 'aviv aviv', 'dede21@gmail.com', '0521234567', '$2b$10$byTmrLT3q6epSWQWC7.M4.88sSrATvivb3LSzBFwgQ79tTt/zO4Zu'),
(7, 'Customer', 'Amir Der', 'amirder@gmail.com', '0521234567', '$2b$10$vloak06KrDTq.XgZfmjgV.W86tDfuZhOF351rApnay4b.G2iqY2s2'),
(8, 'Customer', 'Abc Abce', 'abc12@gmail.com', '0541234567', '$2b$10$/QnvfNZ/7/gTQRgM5eppa.fhEk7J8xAAWDJdkPmTaKBLmruWYC1P2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `contain`
--
ALTER TABLE `contain`
  ADD PRIMARY KEY (`Category_ID`,`Product_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productquotation`
--
ALTER TABLE `productquotation`
  ADD PRIMARY KEY (`Product_ID`,`Qutation_Id`),
  ADD KEY `Qutation_Id` (`Qutation_Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `provide`
--
ALTER TABLE `provide`
  ADD PRIMARY KEY (`Supplier_ID`,`Qutation_Id`),
  ADD KEY `Qutation_Id` (`Qutation_Id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`Qutation_Id`);

--
-- Indexes for table `submit`
--
ALTER TABLE `submit`
  ADD PRIMARY KEY (`User_ID`,`Qutation_Id`),
  ADD KEY `Qutation_Id` (`Qutation_Id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submit`
--
ALTER TABLE `submit`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contain`
--
ALTER TABLE `contain`
  ADD CONSTRAINT `contain_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `categories` (`Category_ID`),
  ADD CONSTRAINT `contain_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `productquotation`
--
ALTER TABLE `productquotation`
  ADD CONSTRAINT `productquotation_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `productquotation_ibfk_2` FOREIGN KEY (`Qutation_Id`) REFERENCES `quotation` (`Qutation_Id`);

--
-- Constraints for table `provide`
--
ALTER TABLE `provide`
  ADD CONSTRAINT `provide_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`),
  ADD CONSTRAINT `provide_ibfk_2` FOREIGN KEY (`Qutation_Id`) REFERENCES `quotation` (`Qutation_Id`);

--
-- Constraints for table `submit`
--
ALTER TABLE `submit`
  ADD CONSTRAINT `submit_ibfk_2` FOREIGN KEY (`Qutation_Id`) REFERENCES `quotation` (`Qutation_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
