-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 08:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avirat_techno`
--

-- --------------------------------------------------------

--
-- Table structure for table `bom_master`
--

CREATE TABLE `bom_master` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `application_no` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item_group_master`
--

CREATE TABLE `item_group_master` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `under` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_group_master`
--

INSERT INTO `item_group_master` (`id`, `group_name`, `under`, `created`, `updated`) VALUES
(1, 'Primary', '1', '2022-02-09 11:33:27', '2022-02-09 16:18:19'),
(2, 'Bright Bar', '1', '2022-02-09 16:31:15', '2022-02-09 16:33:11'),
(3, 'End Piece ', '1', '2022-02-09 16:32:15', '2022-07-03 09:36:02'),
(4, 'Rod ', '1', '2022-02-09 16:32:40', '2022-07-03 09:25:12'),
(9, 'vfdvdfv', '2', '2022-07-17 06:13:48', '2022-07-17 06:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `cut_length` varchar(255) NOT NULL,
  `cut_length_unit` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `base_path_no` varchar(255) NOT NULL,
  `base_length` varchar(255) NOT NULL,
  `base_length_unit` varchar(255) NOT NULL,
  `base_final_length` varchar(255) NOT NULL,
  `base_final_length_unit` varchar(255) NOT NULL,
  `pkg_size` varchar(255) NOT NULL,
  `item_unit` varchar(255) NOT NULL,
  `application_no` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`id`, `code`, `name`, `type`, `cut_length`, `cut_length_unit`, `short_name`, `group`, `base_path_no`, `base_length`, `base_length_unit`, `base_final_length`, `base_final_length_unit`, `pkg_size`, `item_unit`, `application_no`, `created`, `updated`) VALUES
(1, 'e32e3', 'cdscdsc', 'dcc', '2', 'Unit', 'ddddv', '4', 'cdscds', '1', '1', '1', '1', '1', '1', 'ccdce32', '2022-06-15 16:13:52', '2022-06-15 16:13:52'),
(2, '146864', 'hj  vbvbvdvbd~', 'dddfvd', '100', '3', 'fdmb', '4', 'dscdsc', '50', '3', '49', '2', '500', '3', '65645', '2022-07-03 10:11:58', '2022-07-03 10:11:58'),
(4, 'Repudiandae itaque N', 'Steel Reyes', 'Quibusdam ab sunt ne', '57', '1', 'James Stanton', '4', 'Odio in dolore volup', '62', '4', '95', '3', '63', 'Unit', 'Atque eveniet dolor', '2022-07-17 06:16:47', '2022-07-17 06:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `jobwork_inward`
--

CREATE TABLE `jobwork_inward` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `challan_no` varchar(255) NOT NULL,
  `challan_date` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `process` varchar(255) NOT NULL,
  `final_item_code` varchar(255) NOT NULL,
  `pcs` varchar(255) NOT NULL,
  `total_pcs` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `material_issue`
--

CREATE TABLE `material_issue` (
  `id` int(11) NOT NULL,
  `challen_no` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `wo_no` varchar(255) NOT NULL,
  `wo_date` varchar(255) NOT NULL,
  `issue_by` varchar(25) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `bundle_no` varchar(255) NOT NULL,
  `process` varchar(255) NOT NULL,
  `final_item_code` varchar(255) NOT NULL,
  `pcs` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `total_pcs` varchar(255) NOT NULL,
  `total_qty` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material_issue`
--

INSERT INTO `material_issue` (`id`, `challen_no`, `date`, `item`, `wo_no`, `wo_date`, `issue_by`, `remark`, `item_name`, `bundle_no`, `process`, `final_item_code`, `pcs`, `qty`, `total_pcs`, `total_qty`, `status`, `created`, `updated`) VALUES
(1, '123', '19-06-2020', 'csdcsd', '123454', '', 'admin', 'dsadadasd', 'asddasda', '53545', 'cscss', '565', '10', '5', '15', '50', '1', '2022-06-19 07:35:46', '2022-06-19 08:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `process_master`
--

CREATE TABLE `process_master` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `process_name` text NOT NULL,
  `next_process` text NOT NULL,
  `short_name` text NOT NULL,
  `short_code` text NOT NULL,
  `status` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `process_opening`
--

CREATE TABLE `process_opening` (
  `id` int(11) NOT NULL,
  `challen_no` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `bundle_no` varchar(255) NOT NULL,
  `process` varchar(255) NOT NULL,
  `final_item_code` varchar(255) NOT NULL,
  `pcs` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `total_pcs` varchar(255) NOT NULL,
  `total_qty` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `driver` varchar(255) NOT NULL,
  `truck_no` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `delivery_location` varchar(255) NOT NULL,
  `challan_no` varchar(255) NOT NULL,
  `challan_date` varchar(255) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `bill_date` varchar(255) NOT NULL,
  `lorry_no` varchar(255) NOT NULL,
  `lorry_date` varchar(255) NOT NULL,
  `bill_amount` varchar(255) NOT NULL,
  `gstper` varchar(255) NOT NULL,
  `gst` float NOT NULL,
  `sgstper` varchar(255) NOT NULL,
  `sgst` float NOT NULL,
  `cgstper` varchar(255) NOT NULL,
  `cgst` float NOT NULL,
  `igstper` varchar(255) NOT NULL,
  `igst` float NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `pcs` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `total_weight` varchar(255) NOT NULL,
  `total_pcs` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `ledger` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `desktop_code` varchar(255) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `units_master`
--

CREATE TABLE `units_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `decimal` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `units_master`
--

INSERT INTO `units_master` (`id`, `name`, `symbol`, `decimal`, `created`, `updated`) VALUES
(1, 'dscssdc', 'cdc', '52.2', '2022-06-15 16:12:42', '2022-06-15 16:12:42'),
(2, 'Nomlanga Murray', '526', 'Aliquid voluptate cu', '2022-06-26 07:01:07', '2022-06-26 07:01:23'),
(3, 'sdcdsc', 'cdcc', 'dcdsscds', '2022-07-03 10:09:56', '2022-07-03 10:09:56'),
(4, 'cdccs', 'cdcsccdcc', '312', '2022-07-17 06:14:15', '2022-07-17 06:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mobile` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `mobile`, `password`, `image`, `type`, `created`, `updated`) VALUES
(1, 'Ravi', 'Kushwah', 'Ravi@gmail.com', 'RSHSOFTTECH', '', '123', 'assets/upload/profile1654707052.jpg', 'Super Admin', '2022-06-08 16:26:00', '2022-06-08 16:50:52'),
(2, 'Drew', 'Riggs', 'sytybedabu@mailinator.com', 'qehihum', '8569584585', '123', 'assets/upload/profile1656834449.png', 'Super User', '2022-07-03 07:47:29', '2022-07-03 07:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `workorder`
--

CREATE TABLE `workorder` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `process` varchar(255) NOT NULL,
  `valid_from` varchar(255) NOT NULL,
  `valid_to` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `process1` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total_rate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bom_master`
--
ALTER TABLE `bom_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_group_master`
--
ALTER TABLE `item_group_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_master`
--
ALTER TABLE `item_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobwork_inward`
--
ALTER TABLE `jobwork_inward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_issue`
--
ALTER TABLE `material_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process_master`
--
ALTER TABLE `process_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process_opening`
--
ALTER TABLE `process_opening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units_master`
--
ALTER TABLE `units_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ledger` (`name`,`symbol`,`decimal`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workorder`
--
ALTER TABLE `workorder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bom_master`
--
ALTER TABLE `bom_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_group_master`
--
ALTER TABLE `item_group_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item_master`
--
ALTER TABLE `item_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobwork_inward`
--
ALTER TABLE `jobwork_inward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material_issue`
--
ALTER TABLE `material_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `process_master`
--
ALTER TABLE `process_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `process_opening`
--
ALTER TABLE `process_opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units_master`
--
ALTER TABLE `units_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `workorder`
--
ALTER TABLE `workorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
