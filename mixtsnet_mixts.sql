-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 02:38 PM
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
-- Database: `mixtsnet_mixts`
--

-- --------------------------------------------------------

--
-- Table structure for table `chattable`
--

CREATE TABLE `chattable` (
  `chatTableID` int(11) NOT NULL,
  `chatServiceRequestID` int(11) NOT NULL,
  `chatTableUserID` int(11) NOT NULL,
  `chatTableTechID` int(11) NOT NULL,
  `chatTableTime` datetime NOT NULL DEFAULT current_timestamp(),
  `chatTableMsgBudy` text DEFAULT NULL,
  `chatTableMsgStatus` tinyint(4) NOT NULL DEFAULT 0,
  `chatTableMsgIssuedBy` int(11) NOT NULL,
  `chatTableMsgReadTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactUsID` int(6) UNSIGNED NOT NULL,
  `contactUsUserID` int(11) NOT NULL,
  `contactUsName` varchar(255) NOT NULL,
  `contactUsEmail` varchar(255) DEFAULT NULL,
  `contactUsPhoneNum` varchar(10) DEFAULT NULL,
  `contactUsDate` varchar(255) NOT NULL,
  `contactUsSbj` varchar(255) NOT NULL,
  `contactUsMsgTxt` mediumtext NOT NULL,
  `contactUsReadStatus` tinyint(4) NOT NULL DEFAULT 0,
  `contactUsAttachPath` varchar(255) NOT NULL DEFAULT '0',
  `contactUsHasAttach` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contactUsID`, `contactUsUserID`, `contactUsName`, `contactUsEmail`, `contactUsPhoneNum`, `contactUsDate`, `contactUsSbj`, `contactUsMsgTxt`, `contactUsReadStatus`, `contactUsAttachPath`, `contactUsHasAttach`) VALUES
(1, 0, 'Feras', 'hedi@test.test', '0799999999', '16-03-2024 17:43', 'test', '  https://unsplash.com/photos/3NvRkNaiHtc', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `duepaymentstotechnicians`
--

CREATE TABLE `duepaymentstotechnicians` (
  `duePaymentsToTechniciansID` int(11) NOT NULL,
  `duePaymentsToTechniciansTechID` int(11) NOT NULL,
  `duePaymentsToTechniciansServiceRequetID` int(11) NOT NULL,
  `duePaymentsToTechniciansValue` decimal(11,2) NOT NULL,
  `duePaymentsToTechniciansDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `duePaymentsToTechniciansPayedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `duepaymentstotechnicians`
--

INSERT INTO `duepaymentstotechnicians` (`duePaymentsToTechniciansID`, `duePaymentsToTechniciansTechID`, `duePaymentsToTechniciansServiceRequetID`, `duePaymentsToTechniciansValue`, `duePaymentsToTechniciansDate`, `duePaymentsToTechniciansPayedDate`) VALUES
(6, 10, 22, 12.00, '2024-05-23 11:31:24', '0000-00-00 00:00:00'),
(7, 9, 27, 9.00, '2024-05-23 14:16:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `login_activity`
--

CREATE TABLE `login_activity` (
  `logAct_ID` int(11) NOT NULL,
  `logAct_userID` int(11) NOT NULL,
  `logAct_date` varchar(255) NOT NULL,
  `logAct_success` tinyint(4) NOT NULL,
  `logAct_TimeStamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_activity`
--

INSERT INTO `login_activity` (`logAct_ID`, `logAct_userID`, `logAct_date`, `logAct_success`, `logAct_TimeStamp`) VALUES
(40, 7, '16-04-2024 19:18', 1, '2024-04-16 18:18:04'),
(41, 7, '17-04-2024 12:38', 1, '2024-04-17 11:38:25'),
(44, 9, '22-05-2024 02:26', 1, '2024-05-22 01:26:24'),
(45, 10, '22-05-2024 02:52', 1, '2024-05-22 01:52:26'),
(46, 9, '23-05-2024 14:24', 1, '2024-05-23 13:24:01'),
(47, 10, '23-05-2024 14:30', 1, '2024-05-23 13:30:26'),
(48, 9, '23-05-2024 14:31', 1, '2024-05-23 13:31:08'),
(49, 9, '23-05-2024 16:16', 1, '2024-05-23 16:16:29'),
(50, 10, '23-05-2024 16:17', 1, '2024-05-23 16:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `mainservice`
--

CREATE TABLE `mainservice` (
  `mainServiceId` int(11) NOT NULL,
  `mainServiceName` varchar(255) NOT NULL,
  `mainServiceDescription` varchar(255) NOT NULL,
  `mainServiceStatus` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mainservice`
--

INSERT INTO `mainservice` (`mainServiceId`, `mainServiceName`, `mainServiceDescription`, `mainServiceStatus`) VALUES
(1, 'Computer health', '', 1),
(2, 'download programs', '', 1),
(3, 'Drivers', '', 1),
(4, 'Technical consulting', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_data`
--

CREATE TABLE `password_reset_data` (
  `passReset_ID` int(11) NOT NULL,
  `passReset_userID` int(11) NOT NULL,
  `passReset_email` varchar(255) NOT NULL,
  `passReset_token` varchar(255) NOT NULL,
  `passReset_selector` varchar(255) NOT NULL,
  `passReset_expires` varchar(255) NOT NULL,
  `passReset_userType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentpercentagefortech`
--

CREATE TABLE `paymentpercentagefortech` (
  `PaymentPercentageForTechID` int(11) NOT NULL,
  `PaymentPercentageForTechValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `paymentpercentagefortech`
--

INSERT INTO `paymentpercentagefortech` (`PaymentPercentageForTechID`, `PaymentPercentageForTechValue`) VALUES
(1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requestunderreview`
--

CREATE TABLE `requestunderreview` (
  `requestUnderReviewID` int(11) NOT NULL,
  `requestUnderReviewRequestID` int(11) NOT NULL,
  `requestUnderReviewMsg` mediumtext NOT NULL,
  `requestUnderReviewStatus` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servicerequests`
--

CREATE TABLE `servicerequests` (
  `serviceRequestID` int(11) NOT NULL,
  `serviceRequestUserID` int(11) NOT NULL,
  `serviceRequestTechID` int(11) NOT NULL,
  `serviceRequestMainName` varchar(255) NOT NULL,
  `serviceRequestSubName` varchar(255) NOT NULL,
  `serviceRequestPrice` decimal(10,2) NOT NULL,
  `serviceRequestPaymentStatus` tinyint(4) NOT NULL,
  `serviceRequestTicketStatus` tinyint(4) NOT NULL,
  `serviceRequestTicketBody` longtext NOT NULL,
  `serviceRequestFolder` varchar(255) DEFAULT NULL,
  `serviceRequestCreateDate` varchar(255) NOT NULL,
  `serviceRequestAcceptDate` varchar(255) DEFAULT NULL,
  `serviceRequestCompleteDate` varchar(255) DEFAULT NULL,
  `serviceRequestClosedDate` varchar(255) DEFAULT NULL,
  `serviceRequestSupportLink` varchar(255) DEFAULT NULL,
  `serviceRequestPaidToTech` tinyint(4) NOT NULL DEFAULT 0,
  `serviceRequestDeviceInfo` varchar(255) DEFAULT NULL,
  `serviceRequestUnderReviewDate` varchar(255) DEFAULT NULL,
  `serviceRequestToken` varchar(255) NOT NULL,
  `serviceRequestTransactionID` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `servicerequests`
--

INSERT INTO `servicerequests` (`serviceRequestID`, `serviceRequestUserID`, `serviceRequestTechID`, `serviceRequestMainName`, `serviceRequestSubName`, `serviceRequestPrice`, `serviceRequestPaymentStatus`, `serviceRequestTicketStatus`, `serviceRequestTicketBody`, `serviceRequestFolder`, `serviceRequestCreateDate`, `serviceRequestAcceptDate`, `serviceRequestCompleteDate`, `serviceRequestClosedDate`, `serviceRequestSupportLink`, `serviceRequestPaidToTech`, `serviceRequestDeviceInfo`, `serviceRequestUnderReviewDate`, `serviceRequestToken`, `serviceRequestTransactionID`) VALUES
(22, 9, 10, 'Download softwares', 'Download adobe softwares ', 20.00, 1, 4, 'xdtcfvgyuhbijnkm', '', '22-05-2024 02:26', '22-05-2024 02:52', '2024-05-22 01:52:44', '2024-05-23 13:31:24', NULL, 0, 'ertytrew', NULL, 'U9T1716333997', '8Y349106HA5283809'),
(27, 9, 9, 'download programs', 'Download antivirus', 15.00, 1, 4, 'efrghtyjtujytgf', '', '23-05-2024 14:33', '23-05-2024 14:35', '2024-05-23 13:35:36', '2024-05-23 16:16:40', NULL, 0, 'werfgth', NULL, 'U9T1716463987', '7K1937721N379721W'),
(28, 9, 10, 'download programs', 'Download Photoshop', 5.00, 1, 3, 'bgnhfmjku', '', '23-05-2024 14:34', '23-05-2024 16:17', '2024-05-23 16:17:31', NULL, NULL, 0, 'sdfgbnhm', NULL, 'U9T1716464072', '9L05061740033454H');

-- --------------------------------------------------------

--
-- Table structure for table `subservice`
--

CREATE TABLE `subservice` (
  `subServiceId` int(11) NOT NULL,
  `mainServiceID` int(11) NOT NULL,
  `subServiceName` varchar(255) NOT NULL,
  `subServiceDescription` varchar(255) NOT NULL,
  `subServiceStatus` tinyint(4) NOT NULL DEFAULT 0,
  `subServicePrice` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subservice`
--

INSERT INTO `subservice` (`subServiceId`, `mainServiceID`, `subServiceName`, `subServiceDescription`, `subServiceStatus`, `subServicePrice`) VALUES
(1, 1, 'Improving computer performance', 'The maintenance technician will check your computer for poor performance problems and will follow technical procedures that will in turn improve the device’s performance and make it faster.', 1, 5.00),
(2, 1, 'Scan and remove viruses and malware', 'Your device will be scanned and any viruses or malware on your device will be detected and it will be removed and cleaned.', 1, 5.00),
(3, 1, 'Download an antivirus to scan and remove viruses and malware', 'An anti-virus program will be downloaded to protect your device. It will also scan your device, detect any viruses in your device, and remove them.', 1, 15.00),
(4, 1, 'Recover lost and deleted files', 'The maintenance technician will return the lost files and photos that were deleted by mistake.', 1, 8.00),
(5, 2, 'Download antivirus', 'Download an anti-virus program to protect your device from viruses.', 1, 15.00),
(6, 2, 'Download all Adobe software', 'Download all original Adobe programs, including (Photoshop, Premiere, and others) for life.', 1, 20.00),
(7, 2, 'Download Photoshop', 'Download the original Adobe Photoshop program for life.', 1, 5.00),
(8, 2, 'Download office 2016 programs', 'Download Office 2016 programs such as (Word, Powerpoint, Excel and others) for life', 1, 25.00),
(9, 2, 'Download office 2019 programs', 'Download office 2019 programs such as (Word, Powerpoint, Excel and others) for life.', 1, 35.00),
(10, 2, 'Download office 365 programs', 'Download the latest versions of office programs such as (Word, Powerpoint, Excel, etc.) for life.', 1, 60.00),
(11, 3, 'Adjust the printer and solve its problems', 'All software problems related to the printer will be corrected and resolved', 1, 5.00),
(12, 3, 'Drivers of sound card', 'A sound card driver will be downloaded to solve the sound problem.', 1, 5.00),
(13, 3, 'Drivers of graphics card', 'A graphics card definition will be downloaded to solve problems related to screen performance.', 1, 5.00),
(14, 4, 'Technical consultation (15 minutes)', 'An expert maintenance technician specialized in the field of technology will meet with you to answer all your technical inquiries and inquiries', 1, 8.00);

-- --------------------------------------------------------

--
-- Table structure for table `techreview`
--

CREATE TABLE `techreview` (
  `techReviewID` int(11) NOT NULL,
  `techReviewUserID` int(11) NOT NULL,
  `techReviewTechID` int(11) NOT NULL,
  `techReviewRequestID` int(11) NOT NULL,
  `techReviewDate` varchar(255) NOT NULL,
  `techReviewValue` int(11) NOT NULL,
  `techReviewTXT` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techreview`
--

INSERT INTO `techreview` (`techReviewID`, `techReviewUserID`, `techReviewTechID`, `techReviewRequestID`, `techReviewDate`, `techReviewValue`, `techReviewTXT`) VALUES
(4, 9, 10, 22, '23-05-2024 14:31', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `techvalues`
--

CREATE TABLE `techvalues` (
  `techValues_id` int(11) NOT NULL,
  `techValues_techID` int(11) NOT NULL,
  `techValues_homeTech` tinyint(4) NOT NULL DEFAULT 0,
  `techValues_onlineTech` tinyint(4) NOT NULL DEFAULT 0,
  `techValues_haveCar` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techvalues`
--

INSERT INTO `techvalues` (`techValues_id`, `techValues_techID`, `techValues_homeTech`, `techValues_onlineTech`, `techValues_haveCar`) VALUES
(1, 10, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_firstName` varchar(255) NOT NULL,
  `user_lastName` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phoneNumber` varchar(255) NOT NULL,
  `user_passHash` varchar(255) NOT NULL,
  `user_cvPath` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) NOT NULL,
  `user_isActive` tinyint(4) NOT NULL,
  `user_regDate` varchar(255) NOT NULL,
  `user_verificationKey` varchar(255) DEFAULT NULL,
  `user_photoPath` varchar(255) DEFAULT NULL,
  `user_failedLoginAttempts` int(11) DEFAULT NULL,
  `user_failedLoginAttemptDate` varchar(255) DEFAULT NULL,
  `user_country` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  `user_dateOfBirth` varchar(255) DEFAULT NULL,
  `user_gender` varchar(10) DEFAULT NULL,
  `user_Token` varchar(255) NOT NULL DEFAULT '0',
  `user_isAdmin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_firstName`, `user_lastName`, `user_email`, `user_phoneNumber`, `user_passHash`, `user_cvPath`, `user_type`, `user_isActive`, `user_regDate`, `user_verificationKey`, `user_photoPath`, `user_failedLoginAttempts`, `user_failedLoginAttemptDate`, `user_country`, `user_city`, `user_dateOfBirth`, `user_gender`, `user_Token`, `user_isAdmin`) VALUES
(0, 'null', 'null', 'null', '0000000000', '0', NULL, '0', 0, '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, '0', 0),
(7, 'Hedi', 'hassan', 'hedihasan@gmail.com', '0797548965', '$2y$10$CyPOMRsqDuPDkAZFDD6xduTFJHp9zAY3DN3U.PK0Ci7lJyIonS7GC', NULL, 'technician', 2, '16-04-2024 19:16', 'db86bd63dc511ab0c0a77745b80ce87f5be1e3c6', NULL, 0, NULL, NULL, NULL, NULL, NULL, '$2y$10$uEUYbBjYdKnZrny5HYTGqeA371mtPmfHvj3zmGsy.6P1Z8bibgB/W$2y$10$Rs9xulURE9Mmd0CObTEdzesrTbLlX9N0Y1nmOGDgH7nHLp5/1Vnfe', 1),
(8, 'amr', 'zfdsad', 'amrojalal22@gmail.com', '0798542357', '$2y$10$P/SzGa.ms9QlWyIET10gBuqNDssFb3VPuc0s73Zned82uM.1zyj.2', NULL, 'techn', 2, '04-05-2024 23:04', 'ea4cebc131f746570de8a2c9569db1f9b9b113e0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 0),
(9, 'amro', 'amro', 'amro00@gmail.com', '987654321', '$2y$10$9yQZPDcC4Dae7QKlaSg6Yer9RK3tHKRD3Qqc1L9934oRlW/VAGo8S', NULL, 'user', 1, '22-05-2024 02:26', '3f3e9edd4430de92b788ad5c5b3321c4f67b6905', NULL, 0, NULL, NULL, NULL, NULL, NULL, '$2y$10$TGAXehhTY0O95HDKesOLgO/ScbRkxdzCDOR/zY8x1j/6TDBiniiOu$2y$10$jTR0Fo6oRWD9DANsVklbJeWr2ZmwLCTytAqL8gieYsjm548/tA0PO', 0),
(10, 'kara', 'kara', 'kara@gmail.com', '234567899', '$2y$10$VEea8v0jXlMMTBbmaCWCZuOQcQEj58m9gZIwwf48JGodb8rJOpAS6', 'profiles/techProfile/4d9fc13aa217801ed50b563476f6b36b9374101c/4d9fc13aa217801ed50b563476f6b36b9374101c-664d339d1205d3.14818228.pdf', 'technician', 2, '22-05-2024 02:51', '013f9f05cda87b9c16f3c370383786137f7da72e', NULL, 0, '23-05-2024 16:17', NULL, NULL, NULL, NULL, '$2y$10$TAn.DY1gwEbyTzxTlcPgB.J15GeNMYRSwIC34W5FU32fYxqrERpiK$2y$10$vrDGZngMgfOUsns27lhlteaGpT.gtaCGDVkbrZVor6TQeCmNf5R5S', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chattable`
--
ALTER TABLE `chattable`
  ADD PRIMARY KEY (`chatTableID`),
  ADD KEY `chatServiceRequestID` (`chatServiceRequestID`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactUsID`),
  ADD KEY `contactUsUserID` (`contactUsUserID`);

--
-- Indexes for table `duepaymentstotechnicians`
--
ALTER TABLE `duepaymentstotechnicians`
  ADD PRIMARY KEY (`duePaymentsToTechniciansID`),
  ADD KEY `duePaymentsToTechniciansServiceRequetID` (`duePaymentsToTechniciansServiceRequetID`);

--
-- Indexes for table `login_activity`
--
ALTER TABLE `login_activity`
  ADD PRIMARY KEY (`logAct_ID`),
  ADD KEY `logAct_userID` (`logAct_userID`);

--
-- Indexes for table `mainservice`
--
ALTER TABLE `mainservice`
  ADD PRIMARY KEY (`mainServiceId`);

--
-- Indexes for table `password_reset_data`
--
ALTER TABLE `password_reset_data`
  ADD PRIMARY KEY (`passReset_ID`),
  ADD KEY `passReset_userID` (`passReset_userID`);

--
-- Indexes for table `paymentpercentagefortech`
--
ALTER TABLE `paymentpercentagefortech`
  ADD PRIMARY KEY (`PaymentPercentageForTechID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestunderreview`
--
ALTER TABLE `requestunderreview`
  ADD PRIMARY KEY (`requestUnderReviewID`);

--
-- Indexes for table `servicerequests`
--
ALTER TABLE `servicerequests`
  ADD PRIMARY KEY (`serviceRequestID`),
  ADD KEY `serviceRequestUserID` (`serviceRequestUserID`),
  ADD KEY `serviceRequestTechID` (`serviceRequestTechID`);

--
-- Indexes for table `subservice`
--
ALTER TABLE `subservice`
  ADD PRIMARY KEY (`subServiceId`),
  ADD KEY `mainServiceID` (`mainServiceID`);

--
-- Indexes for table `techreview`
--
ALTER TABLE `techreview`
  ADD PRIMARY KEY (`techReviewID`),
  ADD KEY `techReview_ibfk_2` (`techReviewTechID`),
  ADD KEY `techReview_ibfk_3` (`techReviewUserID`),
  ADD KEY `techReview_ibfk_1` (`techReviewRequestID`);

--
-- Indexes for table `techvalues`
--
ALTER TABLE `techvalues`
  ADD PRIMARY KEY (`techValues_id`),
  ADD KEY `techValues_techID` (`techValues_techID`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chattable`
--
ALTER TABLE `chattable`
  MODIFY `chatTableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactUsID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `duepaymentstotechnicians`
--
ALTER TABLE `duepaymentstotechnicians`
  MODIFY `duePaymentsToTechniciansID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_activity`
--
ALTER TABLE `login_activity`
  MODIFY `logAct_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `mainservice`
--
ALTER TABLE `mainservice`
  MODIFY `mainServiceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `password_reset_data`
--
ALTER TABLE `password_reset_data`
  MODIFY `passReset_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paymentpercentagefortech`
--
ALTER TABLE `paymentpercentagefortech`
  MODIFY `PaymentPercentageForTechID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requestunderreview`
--
ALTER TABLE `requestunderreview`
  MODIFY `requestUnderReviewID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicerequests`
--
ALTER TABLE `servicerequests`
  MODIFY `serviceRequestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subservice`
--
ALTER TABLE `subservice`
  MODIFY `subServiceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `techreview`
--
ALTER TABLE `techreview`
  MODIFY `techReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `techvalues`
--
ALTER TABLE `techvalues`
  MODIFY `techValues_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chattable`
--
ALTER TABLE `chattable`
  ADD CONSTRAINT `chatTable_ibfk_1` FOREIGN KEY (`chatServiceRequestID`) REFERENCES `servicerequests` (`serviceRequestID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contactus`
--
ALTER TABLE `contactus`
  ADD CONSTRAINT `contactUs_ibfk_1` FOREIGN KEY (`contactUsUserID`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `duepaymentstotechnicians`
--
ALTER TABLE `duepaymentstotechnicians`
  ADD CONSTRAINT `duePaymentsToTechnicians_ibfk_1` FOREIGN KEY (`duePaymentsToTechniciansServiceRequetID`) REFERENCES `servicerequests` (`serviceRequestID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login_activity`
--
ALTER TABLE `login_activity`
  ADD CONSTRAINT `login_activity_ibfk_1` FOREIGN KEY (`logAct_userID`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `password_reset_data`
--
ALTER TABLE `password_reset_data`
  ADD CONSTRAINT `password_reset_data_ibfk_1` FOREIGN KEY (`passReset_userID`) REFERENCES `user_table` (`user_id`);

--
-- Constraints for table `servicerequests`
--
ALTER TABLE `servicerequests`
  ADD CONSTRAINT `serviceRequests_ibfk_1` FOREIGN KEY (`serviceRequestUserID`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `serviceRequests_ibfk_2` FOREIGN KEY (`serviceRequestTechID`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subservice`
--
ALTER TABLE `subservice`
  ADD CONSTRAINT `subService_ibfk_1` FOREIGN KEY (`mainServiceID`) REFERENCES `mainservice` (`mainServiceId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `techreview`
--
ALTER TABLE `techreview`
  ADD CONSTRAINT `techReview_ibfk_1` FOREIGN KEY (`techReviewRequestID`) REFERENCES `servicerequests` (`serviceRequestID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `techReview_ibfk_2` FOREIGN KEY (`techReviewTechID`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `techReview_ibfk_3` FOREIGN KEY (`techReviewUserID`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `techvalues`
--
ALTER TABLE `techvalues`
  ADD CONSTRAINT `techValues_ibfk_1` FOREIGN KEY (`techValues_techID`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
