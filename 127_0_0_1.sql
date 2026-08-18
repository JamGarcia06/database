-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2026 at 06:43 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--
CREATE DATABASE IF NOT EXISTS `food_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` enum('admin') NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Administrator', 'admin@gmail.com', 'admin123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` enum('available','unavailable') NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `food_name`, `description`, `price`, `quantity`, `status`) VALUES
(2, 'Adobo', 'yeah', '50.00', 0, 'available'),
(3, 'lechon', 'shesh', '50.00', 1, 'unavailable'),
(4, 'kinilaw', 'isda', '50.00', 10, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `reservation_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Pending','Approved','Reservation') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `user_id`, `food_id`, `quantity`, `reservation_time`, `status`) VALUES
(1, 123, 2, 1, '2026-08-17 09:48:36', 'Pending'),
(2, 123, 2, 1, '2026-08-17 09:52:01', 'Pending'),
(3, 123, 2, 1, '2026-08-17 09:52:31', 'Pending'),
(4, 1, 2, 1, '2026-08-17 12:55:12', ''),
(5, 1, 2, 1, '2026-08-17 12:57:23', ''),
(6, 1, 2, 3, '2026-08-17 10:15:00', 'Pending'),
(7, 1, 2, 1, '2026-08-17 10:28:27', 'Pending'),
(8, 1, 2, 1, '2026-08-17 13:18:15', 'Approved'),
(9, 1, 2, 1, '2026-08-17 05:28:31', 'Pending'),
(10, 1, 2, 52, '2026-08-17 06:25:13', 'Pending'),
(11, 1, 2, 34, '2026-08-17 06:59:55', 'Pending'),
(12, 1, 4, 2, '2026-08-17 13:17:15', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` enum('user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'User', 'user@gmail.com', 'user123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `itadoriyuji912067`
--
CREATE DATABASE IF NOT EXISTS `itadoriyuji912067` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `itadoriyuji912067`;

-- --------------------------------------------------------

--
-- Table structure for table `adminaccs`
--

CREATE TABLE `adminaccs` (
  `AdminID` int(6) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `ProfilePic` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Sex` varchar(100) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `ContactNumber` varchar(100) NOT NULL,
  `Birthday` varchar(100) NOT NULL,
  `DateHired` varchar(100) NOT NULL,
  `Salary` varchar(100) NOT NULL,
  `EmployeeStatus` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminaccs`
--

INSERT INTO `adminaccs` (`AdminID`, `Username`, `Password`, `Position`, `ProfilePic`, `Email`, `Address`, `Sex`, `Fullname`, `ContactNumber`, `Birthday`, `DateHired`, `Salary`, `EmployeeStatus`, `Department`) VALUES
(1, 'Thomas Ebonia', 'karkaton', 'System Administrator', '1772821807_STOP_BANNING_ACE_NK.png', '', '', '', '', '', '', '', '', '', 'Administration'),
(3, 'Admin King', 'Sigmaboi', 'HR Manager', '', 'rizzler67@gmail.com', '', '', 'Admin king', '', '', '', '', '', 'Administration'),
(8, 'Furina De Fontaine', 'unlimitedCAKEWORKS', 'CHRO', '', 'banarlecchino@gmail.com', '', '', 'Furina De Fontaine', '', '', '', '', '', 'Administration'),
(11, 'Hu tao', '444444', 'HR Manager', '', 'qiqisimp@gmail.com', '', '', 'Hu Tao', '', '', '', '', '', 'Administration'),
(12, 'Alfred Epstein', 'ryedryf', 'HR Employer', '', 'islander@gmail.com', '', '', 'Alfred Epstein', '', '', '', '', '', 'Administration'),
(13, 'rtgrt', 'rtrtr', 'System Administrator', '', 'trtrtrtr', '', '', 'trtrt', '', '', '', '', '', 'Administration');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Fullname` varchar(100) NOT NULL,
  `eID` int(11) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `TimeIn` time(6) NOT NULL,
  `TimeOut` time(6) NOT NULL,
  `DateIssued` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Fullname`, `eID`, `DepartmentName`, `TimeIn`, `TimeOut`, `DateIssued`) VALUES
('Thomas Ebonia', 1, 'Administration', '07:00:00.000000', '16:00:00.000000', '2026-03-21 11:43:36.817555'),
('Furina De Fontaine', 8, 'Administration', '08:31:45.000000', '17:21:45.000000', '2026-03-21 11:43:36.817555'),
('Thomas Ebonia', 1, 'Administration', '07:03:45.000000', '18:02:45.000000', '2026-03-21 11:43:36.817555'),
('Admin King', 3, 'Administration', '07:34:56.000000', '17:45:34.000000', '2026-03-21 11:43:36.817555'),
('Hu tao', 11, 'Administration', '07:21:13.000000', '16:59:32.000000', '2026-03-21 11:43:36.817555'),
('Thomas Ebonia', 29, 'Administration', '07:47:00.000000', '19:47:00.000000', '2026-03-21 11:48:43.314084'),
('Thomas Ebonia', 29, 'Administration', '07:47:00.000000', '19:47:00.000000', '2026-03-21 11:49:21.489140'),
('Thomas Ebonia', 29, 'Administration', '07:47:00.000000', '19:47:00.000000', '2026-03-21 11:49:23.168899'),
('Thomas Ebonia', 29, 'Administration', '07:52:00.000000', '19:53:00.000000', '2026-03-21 11:52:45.000000'),
('Furina De Fontiane', 28, 'Administration', '09:52:00.000000', '19:53:00.000000', '2026-03-21 12:03:39.000000'),
('Thomas Ebonia', 29, 'Administration', '09:40:00.000000', '21:40:00.000000', '2026-03-21 13:40:34.000000'),
('Admin King', 27, 'Administration', '07:40:00.000000', '19:40:00.000000', '2026-03-21 13:54:42.000000'),
('Sam Williams', 43, 'IT', '10:34:00.000000', '22:34:00.000000', '2026-03-21 14:34:36.000000');

-- --------------------------------------------------------

--
-- Table structure for table `availablepositions`
--

CREATE TABLE `availablepositions` (
  `RoleID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `RoleName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `availablepositions`
--

INSERT INTO `availablepositions` (`RoleID`, `DepartmentID`, `RoleName`) VALUES
(1, 5, 'Head Chef'),
(2, 5, 'Culinary Assistant'),
(3, 5, 'Sous Chef'),
(4, 6, 'Utility Manager'),
(5, 2, 'Housekeeping Head'),
(6, 3, 'Security Guard'),
(7, 1, 'Cybersecurity Specialist'),
(8, 6, 'Private Electrician'),
(9, 1, 'testbot'),
(10, 7, 'Fart Smeller'),
(11, 7, 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `deletedaccs`
--

CREATE TABLE `deletedaccs` (
  `deletedID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Reason` text DEFAULT NULL,
  `DateDeleted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deletedaccs`
--

INSERT INTO `deletedaccs` (`deletedID`, `EmployeeID`, `Username`, `Reason`, `DateDeleted`) VALUES
(1, 15, 'testbot', 'skibiidi', '2026-03-17 15:03:54'),
(2, 31, 'testbot', 'ambatukam', '2026-03-17 15:16:02'),
(3, 30, 'testbot', 'sd', '2026-03-17 15:18:45'),
(4, 25, 'testbot', 's', '2026-03-17 15:19:04'),
(8, 45, 'Sam Williams', 'test', '2026-03-21 15:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `DepartmentHead1` varchar(100) NOT NULL,
  `DepartmentHead2` varchar(100) NOT NULL,
  `DeptPerformance` varchar(100) NOT NULL,
  `EmployeeCount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `DepartmentHead1`, `DepartmentHead2`, `DeptPerformance`, `EmployeeCount`) VALUES
(1, 'IT', '', '', '', 2),
(2, 'Housekeeping', '', '', '', 0),
(3, 'Security', '', '', '', 2),
(4, 'Recreational', '', '', '', 0),
(5, 'Food and Beverage', '', '', '', 2),
(6, 'Maintenance', '', '', '', 2),
(7, 'Customer Service', '', '', '', 2),
(8, 'Sales Department', '', '', '', 0),
(9, 'HR', '', '', '', 0),
(10, 'Inventory', '', '', '', 0),
(11, 'Administration', '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `employeeaccs`
--

CREATE TABLE `employeeaccs` (
  `EmployeeID` int(6) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `DepartmentID` int(6) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `ProfilePic` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Sex` varchar(100) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `ContactNumber` varchar(100) NOT NULL,
  `Birthday` varchar(100) NOT NULL,
  `DateHired` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `SalaryHour` varchar(100) NOT NULL,
  `EmployeeStatus` varchar(100) NOT NULL,
  `Hierarchy` varchar(100) NOT NULL,
  `RecruitID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeeaccs`
--

INSERT INTO `employeeaccs` (`EmployeeID`, `Username`, `DepartmentID`, `DepartmentName`, `Password`, `Position`, `ProfilePic`, `Email`, `Address`, `Sex`, `Fullname`, `ContactNumber`, `Birthday`, `DateHired`, `SalaryHour`, `EmployeeStatus`, `Hierarchy`, `RecruitID`) VALUES
(5, ' 随机员工', 6, '', 'deo67', 'Utility Manager', '', ' 随机员工@gmail.com', '', '', ' 随机员工', '', '', '', '200', '', 'employee', NULL),
(6, 'batu khan', 3, '', 'amba23', 'Security Guard', '1774028380_amba.jpg', 'batukhanooooooo@gmail.com', 'sagada, ambasing', 'Male', 'am batu khan', '08392093920', '04/23/1987', '', '175', '', 'employee', NULL),
(7, 'Escoffier', 5, '', 'FurinaSimp99', 'Head Chef', '', 'N/A', '', '', 'Escoffier Augusta', '', '', '', '500', '', 'employee', NULL),
(8, 'RandomEmployee', 1, '', 'maccarino', 'Cybersecurity Specialist', '', 'RandomEmployee@gmail.com', '', '', 'RandomEmployee', '', '', '', '450', '', 'employee', NULL),
(9, 'Reymar Denore', 7, '', 'sonicfan1000000', 'Fart Smeller', '', 'roxxer@gmail.com', '', '', 'Reymar Denore', '', '', '', '', '', 'employee', NULL),
(10, 'Romron Gramsay', 5, '', 'wheresdasamblauce', 'Culinary Assistant', 'default.jpg', 'daet@gmail.com', '', '', 'Romron Gramsay', '', '', '', '', '', 'employee', NULL),
(11, 'v', 6, '', 'v', 'Private Electrician', '', 'v@gmail.com', '', '', 'v', '', '', '', '', '', '', NULL),
(14, 'testbot', 1, '', 'testbot', 'testbot', '', 'testbot@gmail.com', '', '', 'testbot', '', '', '', '', '', '', NULL),
(27, 'Admin King', 11, '', 'Sigmaboi', 'HR Manager', '1773409533_1773409465_download.jpg', 'rizzler67@gmail.com', 'asasa', 'Male', 'Admin King', '08739867263', '', '', '', '', 'admin', NULL),
(28, 'Furina De Fontaine', 11, '', 'unlimitedCAKEWORKS', 'CHRO', '1774091490_id picture ni furina.webp', 'banarlecchino@gmail.com', 'Opera Ecleise', 'Female', 'Furina De Fontaine', 'N/A', '10/13/1523', '', '', '', 'admin', NULL),
(29, 'Thomas Ebonia', 11, '', 'karkaton', 'System Administrator', '1773409726_STOP_BANNING_ACE_NK.png', 'thomaseboniaofficial@gmail.com', 'Molugan, El salvador City', 'Male', 'Ebonia, John Thomas Torres', '09355175226', '09/13/2005', '', '650', '', 'admin', NULL),
(32, 'skwedward', 7, '', 'ihateeveryone', 'Receptionist', '', 'skwedward@gmail.com', '', '', 'Skwedward tentakols', '', '', '2026-03-20 15:01:22', '', '', 'employee', NULL),
(40, 'snsaed', 3, '', 'kGH6&%jhU', 'Security Guard', '', 'snsaed@gmail.com', '', '', 'snsaed', '', '', '2026-03-20 20:17:56', '', '', 'employee', 13);

--
-- Triggers `employeeaccs`
--
DELIMITER $$
CREATE TRIGGER `employee_delete` AFTER DELETE ON `employeeaccs` FOR EACH ROW BEGIN
    UPDATE departments
    SET EmployeeCount = EmployeeCount - 1
    WHERE DepartmentID = OLD.DepartmentID;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `employee_insert` AFTER INSERT ON `employeeaccs` FOR EACH ROW BEGIN
    UPDATE departments
    SET EmployeeCount = EmployeeCount + 1
    WHERE DepartmentID = NEW.DepartmentID;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `interfacedata`
--

CREATE TABLE `interfacedata` (
  `AdminID` int(11) NOT NULL,
  `DateIssued` varchar(100) NOT NULL,
  `EmployeesOnLeave` int(11) NOT NULL,
  `CustomerSatisfaction` int(11) NOT NULL,
  `Productivity` varchar(10) NOT NULL,
  `Workload` int(11) NOT NULL,
  `Manpower` int(11) NOT NULL,
  `ProjectsOnQueue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interfacedata`
--

INSERT INTO `interfacedata` (`AdminID`, `DateIssued`, `EmployeesOnLeave`, `CustomerSatisfaction`, `Productivity`, `Workload`, `Manpower`, `ProjectsOnQueue`) VALUES
(1, '03/04/2026', 7, 0, '10%', 3, 3, 4),
(3, '03/04/2026', 7, 0, '10%', 3, 3, 2),
(8, '03/04/2026', 7, 0, '10%', 3, 3, 0),
(11, '03/04/2026', 7, 0, '10%', 3, 3, 1),
(12, '03/04/2026', 7, 0, '10%', 3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leaverequests`
--

CREATE TABLE `leaverequests` (
  `leaveID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `leaveType` varchar(50) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `reason` text DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','declined') DEFAULT 'pending',
  `dateRequested` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leaverequests`
--

INSERT INTO `leaverequests` (`leaveID`, `employeeID`, `leaveType`, `startDate`, `endDate`, `reason`, `attachment`, `status`, `dateRequested`) VALUES
(1, 6, 'goon leavign', '2026-03-20', '2026-03-21', 'ohhh ambatukam ahhhhhhhhhhh', '', 'declined', '2026-03-20 04:30:36'),
(2, 6, 'goon emergency', '2026-03-20', '2026-03-21', 'but am batukaaaaaaaaaaa', '', 'declined', '2026-03-20 04:30:36'),
(3, 6, 'Sick', '2026-03-21', '2026-03-22', 'fdfdf', NULL, 'approved', '2026-03-21 10:09:41'),
(4, 28, 'Vacation', '2026-03-21', '2026-03-22', 'Vacation ofc', NULL, 'pending', '2026-03-21 10:52:55'),
(5, 6, 'Sick', '2026-03-21', '2026-03-28', 'tyuhjh', NULL, 'pending', '2026-03-21 13:44:41'),
(6, 6, 'Sick', '2026-03-21', '2026-03-28', 'fdrhfgjhfgjhcgjkg', NULL, 'declined', '2026-03-21 13:45:43'),
(7, 6, 'Vacation', '2026-03-07', '2026-03-28', 'no reaon', NULL, 'declined', '2026-03-21 13:56:00'),
(8, 6, 'Vacation', '2026-03-01', '2026-03-31', 'no reason hahahahahahha', NULL, 'declined', '2026-03-21 14:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `MessageID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `SenderID` int(11) NOT NULL,
  `ReceiverID` int(11) NOT NULL,
  `Message` varchar(400) NOT NULL,
  `Attachment` varchar(250) DEFAULT NULL,
  `Status` varchar(50) NOT NULL,
  `DateSent` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`MessageID`, `Title`, `SenderID`, `ReceiverID`, `Message`, `Attachment`, `Status`, `DateSent`) VALUES
(1, 'rfyhtuhfgj', 6, 5, '6 7', '\"67.png\"', 'read', '2026-03-11 16:00:00'),
(2, 'rdikrkjhktd', 11, 9, 'slgbug;jfkglcg;skebtgo;sbnjdsrujtgnf;zgjndzruhys;rngydjkflgdlizhyzthdujhtyujtyu', '', 'unread', '2026-03-11 16:00:00'),
(3, 'yrdyrhjxfkyuk', 14, 29, 'srgfdsgdfg', '', 'unread', '0000-00-00 00:00:00'),
(4, 'Romron gramsay is being such a d**k right now', 9, 29, 'i couldve just beat that guy but i\'ll just report his crimes to HR instead. he cooked my pet rat. that\'s just unacceptable! inang bunak na yan', '', 'unread', '2026-03-21 14:53:59'),
(5, '', 29, 6, 'Disciplinary Action: Excellent\nReason: Outstanding performance and perfect score.\nSeverity: Low', '', '', '0000-00-00 00:00:00'),
(6, 'HR Performance Notification', 29, 10, '⚠ Disciplinary Action: Warning\nReason: \nSeverity: Low', '', 'Unread', '2026-03-20 13:57:17'),
(44, 'HR Performance Notification', 29, 11, '🎉 Recognition: Excellent\nReason: Outstanding performance and perfect score.\nKeep up the good work!', '', 'Unread', '2026-03-20 14:10:45'),
(45, 'HR Performance Notification', 29, 14, '⚠ Disciplinary Action: Suspension\nReason: Severely low performance detected.\nSeverity: High', '', 'Unread', '2026-03-20 14:10:48'),
(46, 'HR Performance Notification', 29, 10, '⚠ Disciplinary Action: Warning\nReason: \nSeverity: Low', '', 'Unread', '2026-03-20 14:10:52'),
(50, 'cooking rat incident', 10, 29, 'reymar so overreacting lmao its just a pet rat.', '', 'unread', '2026-03-20 14:26:17'),
(51, 'HR Performance Notification', 29, 6, '🎉 Recognition: Excellent\nReason: Outstanding performance and perfect score.\nKeep up the good work!', '', 'Unread', '2026-03-20 14:32:31'),
(52, 'HR Performance Notification', 29, 14, '⚠ Disciplinary Action: Final Warning\nReason: Performance below acceptable threshold.\nSeverity: Medium', '', 'Unread', '2026-03-20 14:32:44'),
(53, 'HR Performance Notification', 29, 6, 'Score Update\nPerformance: -1, Credit: -1\nReason: dont leave just to goon bruh', '', 'Unread', '2026-03-20 15:05:47'),
(54, 'HR Performance Notification', 29, 6, 'Score Update\nPerformance: No change, Credit: No change\nReason: ', '', 'Unread', '2026-03-20 15:06:07'),
(55, 'HR Performance Notification', 29, 6, 'Score Update\nPerformance: +1, Credit: +1\nReason: d', '', 'Unread', '2026-03-20 15:09:12'),
(56, 'HR Performance Notification', 29, 6, 'Score Update\nPerformance: -1, Credit: -1\nReason: dont leave just to goon bruh', '', 'Unread', '2026-03-20 15:10:14'),
(68, 'HR Leave Response', 29, 6, 'No reason provided', '', 'unread', '2026-03-20 09:36:03'),
(69, 'HR Leave Response', 29, 6, 'No reason provided', '', 'unread', '2026-03-20 09:37:07'),
(70, 'HR Leave Response', 29, 6, 'No reason provided', '', 'unread', '2026-03-20 09:39:57'),
(71, 'HR Leave Response', 29, 6, 'No reason provided', '', 'unread', '2026-03-20 09:48:04'),
(72, 'HR Performance Notification', 29, 6, 'Score Update\nPerformance: No change, Credit: No change\nReason: ', '', 'unread', '2026-03-20 16:50:16'),
(73, 'dfsdfs', 6, 29, 'dfsdfss', NULL, 'unread', '2026-03-20 16:28:44'),
(75, 'message test', 6, 11, 'message test', NULL, 'unread', '2026-03-20 16:56:46'),
(76, 'cry thunder', 6, 10, 'wewe', '1774074432_ioweyhp5wayoaw49yo9tyapohpdr6t8a4e.png', 'unread', '2026-03-20 23:27:12'),
(77, 'skibidi', 10, 6, 'amba tu bastinyanat', '1774075782_isugakubutimadeiteasiertosing.txt', 'unread', '2026-03-20 23:49:42'),
(78, 'Re: skibidi', 6, 10, 'fgsdfgfg', '1774081220_whenarguscatchyou.webp', 'unread', '2026-03-21 01:20:20'),
(79, 'Re: skibidi', 6, 10, 'hahahaha', '1774081749_amba.jpg', 'unread', '2026-03-21 01:29:09'),
(80, 'fgaseygryhsdt', 6, 11, 'hsthsfhsfhrtgh', '1774081785_amba.jpg', 'unread', '2026-03-21 01:29:45'),
(81, 'Re: skibidi', 6, 10, 'sd', '1774081917_amba.jpg', 'unread', '2026-03-21 01:31:57'),
(82, 'Re: skibidi', 6, 10, '232323', '1774083163_amba.jpg', 'unread', '2026-03-21 01:52:43'),
(83, 'Re: skibidi', 6, 10, 'ahdiohsaoidafaf', '1774083178_amba.jpg', 'unread', '2026-03-21 01:52:58'),
(84, 'HR Leave Response', 29, 6, 'thats more like it', NULL, 'unread', '2026-03-21 03:10:14'),
(85, 'HR Leave Response', 29, 6, 'thats more like it', NULL, 'unread', '2026-03-21 03:10:55'),
(86, 'HR Leave Response', 29, 6, 'No reason provided', NULL, 'unread', '2026-03-21 03:12:24'),
(87, 'HR Leave Response', 29, 6, 'No reason provided', NULL, 'unread', '2026-03-21 03:12:29'),
(88, 'HR Leave Response', 29, 6, 'thats more like it', NULL, 'unread', '2026-03-21 03:18:33'),
(89, 'HR Leave Response', 29, 6, 'No reason provided', NULL, 'unread', '2026-03-21 03:18:39'),
(90, 'HR Leave Response', 29, 6, 'No reason provided', NULL, 'unread', '2026-03-21 03:18:41'),
(91, 'HR Leave Response', 29, 6, 'No reason provided', NULL, 'unread', '2026-03-21 03:18:43'),
(94, 'No Title', 29, 10, 'asde', '', 'unread', '2026-03-21 06:27:43'),
(95, 'Re: dfsdfs', 29, 32, 'r', '', 'unread', '2026-03-21 06:34:47'),
(96, 'HR Leave Response', 29, 6, 'absurd', NULL, 'unread', '2026-03-21 06:46:00'),
(97, 'HR Performance Notification', 29, 10, 'Score Update\nPerformance: -1, Credit: -1\nReason: hazard', NULL, 'unread', '2026-03-21 13:46:24'),
(98, 'HR Leave Response', 29, 6, 'absurd', NULL, 'unread', '2026-03-21 06:56:19'),
(99, 'HR Performance Notification', 29, 6, 'Score Update\nPerformance: -1, Credit: -1\nReason: hazard', NULL, 'unread', '2026-03-21 13:56:41'),
(100, 'HR Leave Response', 29, 6, 'how absurd', NULL, 'unread', '2026-03-21 07:52:37'),
(101, 'HR Performance Notification', 29, 10, 'Score Update\nPerformance: -1, Credit: -1\nReason: thats a biohazard bro', NULL, 'unread', '2026-03-21 15:00:21'),
(102, 'HR Performance Notification', 29, 10, 'Score Update\nPerformance: +2, Credit: +2\nReason: re', NULL, 'unread', '2026-03-21 15:04:03'),
(103, 'HR Performance Notification', 29, 10, 'Score Update\nPerformance: -2, Credit: -2\nReason: Biohazard', NULL, 'unread', '2026-03-21 15:05:18'),
(104, 'HR Performance Notification', 29, 10, 'Score Update\nPerformance: +2, Credit: +2\nReason: g', NULL, 'unread', '2026-03-21 15:10:37'),
(105, 'HR Performance Notification', 29, 10, 'Score Update\nPerformance: -2, Credit: -2\nReason: hazard bruhhh', NULL, 'unread', '2026-03-21 15:12:16'),
(106, 'HR Performance Notification', 29, 10, '⚠ Disciplinary Action: Warning\nReason: Consistent good performance.\nSeverity: Medium', NULL, 'unread', '2026-03-21 15:12:21'),
(107, 'HR Performance Notification', 29, 10, 'Score Update\nPerformance: +2, Credit: +2\nReason: q', NULL, 'unread', '2026-03-21 15:14:41'),
(108, 'HR Performance Notification', 29, 10, 'Score Update\nPerformance: -2, Credit: -2\nReason: hazard', NULL, 'unread', '2026-03-21 15:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `operationsdata`
--

CREATE TABLE `operationsdata` (
  `DateIssued` varchar(100) NOT NULL,
  `EmployeesOnLeave` int(100) NOT NULL,
  `Productivity` varchar(10) NOT NULL,
  `CustomerSatisfaction` int(100) NOT NULL,
  `Workload` int(100) NOT NULL,
  `Manpower` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operationsdata`
--

INSERT INTO `operationsdata` (`DateIssued`, `EmployeesOnLeave`, `Productivity`, `CustomerSatisfaction`, `Workload`, `Manpower`) VALUES
('03/04/2026', 7, '10%', 0, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `Payroll_ID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `hoursWorked` int(100) NOT NULL,
  `latehours` int(100) NOT NULL,
  `Absences` int(11) NOT NULL,
  `payperiodstart` varchar(100) NOT NULL,
  `payperiodend` varchar(100) NOT NULL,
  `Grosspay` int(100) NOT NULL,
  `Deductions` int(100) NOT NULL,
  `TotalPay` int(100) NOT NULL,
  `DateGenerated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`Payroll_ID`, `EmployeeID`, `Address`, `hoursWorked`, `latehours`, `Absences`, `payperiodstart`, `payperiodend`, `Grosspay`, `Deductions`, `TotalPay`, `DateGenerated`) VALUES
(9, 5, '', 75, 5, 0, '02/01/2026', '02/16/2026', 15000, 75, 13999, '0000-00-00 00:00:00'),
(10, 7, '', 75, 5, 0, '02/01/2026', '02/16/2026', 37500, 75, 34999, '0000-00-00 00:00:00'),
(11, 8, '', 75, 5, 1, '02/01/2026', '02/01/2026', 33750, 75, 29812, '0000-00-00 00:00:00'),
(12, 6, '', 109, 3, 1, '03/01/26', '03/15/26', 16350, 0, 15082, '2026-03-16 15:42:09'),
(13, 5, '', 120, 0, 0, '03/01/26', '03/15/26', 24000, 0, 24000, '2026-03-16 15:45:40'),
(14, 8, '', 110, 2, 1, '03/01/26', '03/16/26', 49500, 0, 46125, '2026-03-16 15:51:13'),
(15, 5, '', 125, 2, 1, '2026-03-21', '2026-03-28', 25000, 0, 23349, '2026-03-21 13:41:21'),
(16, 5, '', 40, 4, 1, '2026-03-21', '2026-03-28', 8000, 0, 6799, '2026-03-21 13:44:12'),
(17, 6, '', 40, 3, 1, '2026-03-21', '2026-03-31', 7000, 0, 6123, '2026-03-21 13:55:28'),
(18, 5, '', 75, 5, 1, '2026-03-15', '2026-03-31', 15000, 0, 13245, '2026-03-21 14:44:26'),
(21, 29, '', 100, 0, 0, '2026-08-12', '2026-08-31', 65000, 0, 65000, '2026-08-12 08:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `EmployeeID` int(11) NOT NULL,
  `DaysPresent` int(100) NOT NULL,
  `CreditScore` int(100) NOT NULL,
  `PerformanceRating` int(100) NOT NULL,
  `LeaveAcceptance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`EmployeeID`, `DaysPresent`, `CreditScore`, `PerformanceRating`, `LeaveAcceptance`) VALUES
(5, 18, 10, 10, 'Allowed'),
(6, 19, 8, 8, 'Allowed'),
(7, 24, 10, 9, 'Allowed'),
(8, 21, 8, 7, 'Allowed'),
(9, 27, 10, 10, 'Allowed'),
(10, 28, 4, 6, 'Allowed'),
(11, 26, 10, 10, 'Allowed'),
(14, 6, 3, 2, 'Denied'),
(27, 27, 10, 9, 'Allowed'),
(28, 29, 10, 10, 'Allowed'),
(29, 30, 10, 10, 'Allowed'),
(32, 0, 10, 10, 'Allowed'),
(40, 0, 10, 10, 'Allowed');

-- --------------------------------------------------------

--
-- Table structure for table `recruitvalidation`
--

CREATE TABLE `recruitvalidation` (
  `RecruitID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `AppliedPosition` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `Compositor` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruitvalidation`
--

INSERT INTO `recruitvalidation` (`RecruitID`, `Username`, `Password`, `AppliedPosition`, `Email`, `Fullname`, `DepartmentName`, `Compositor`) VALUES
(1, ' 随机员工', 'deo67', 'Utility Manager', ' 随机员工@gmail.com', ' 随机员工', '6', NULL),
(2, 'Furina De Fontaine', 'unlimitedCAKEWORKS', 'CHRO', 'banarlecchino@gmail.com', 'Furina De Fontaine', '11', NULL),
(3, 'batu khan', 'amba23', 'Security Guard', 'batukhanooooooo@gmail.com', 'an batu khan ', '3', NULL),
(4, 'Romron Gramsay', 'wheresdasamblauce', 'Culinary Assistant', 'daet@gmail.com', 'Romron Gramsay', '5', NULL),
(5, 'Escoffier', 'FurinaSimp99', 'Head Chef', 'N/A', 'Escoffier Augusta', '5', NULL),
(6, 'RandomEmployee', 'maccarino', 'Cybersecurity Specialist', 'RandomEmployee@gmail.com', 'RandomEmployee', '1', NULL),
(7, 'Admin King', 'Sigmaboi', 'HR Manager', 'rizzler67@gmail.com', 'Admin King', '11', NULL),
(8, 'Reymar Denore', 'sonicfan1000000', 'Fart Smeller', 'roxxer@gmail.com', 'Reymar Denore', '7', NULL),
(9, 'skwedward', 'ihateeveryone', 'Receptionist', 'skwedward@gmail.com', 'Skwedward tentakols', '7', NULL),
(10, 'testbot', 'testbot', 'testbot', 'testbot@gmail.com', 'testbot', '1', NULL),
(11, 'Thomas Ebonia', 'karkaton', 'System Administrator', 'thomaseboniaofficial@gmail.com', 'Ebonia, John Thomas Torres', '11', NULL),
(12, 'v', 'v', 'Private Electrician', 'v@gmail.com', 'v', '6', NULL),
(13, 'Snsaed', 'kGH6&%jhU', 'Security Guard', 'snsaed@gmail.com', 'snsaed', '3', NULL),
(14, 'Sam Williams', 'qqQQ11!!', 'IT Officer', 'samwilliams@gmail.com', 'Sam Williams', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `validatetermination`
--

CREATE TABLE `validatetermination` (
  `EmployeeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `validatetermination`
--

INSERT INTO `validatetermination` (`EmployeeID`) VALUES
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(14),
(27),
(28),
(29);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_employee_attendance_report`
-- (See below for the actual view)
--
CREATE TABLE `vw_employee_attendance_report` (
`eID` int(11)
,`Fullname` varchar(100)
,`Username` varchar(100)
,`Position` varchar(100)
,`DepartmentName` varchar(100)
,`TimeIn` time(6)
,`TimeOut` time(6)
,`DateIssued` timestamp(6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_payroll_employee_report`
-- (See below for the actual view)
--
CREATE TABLE `vw_payroll_employee_report` (
`Payroll_ID` int(11)
,`EmployeeID` int(11)
,`Address` varchar(100)
,`hoursWorked` int(100)
,`latehours` int(100)
,`Absences` int(11)
,`payperiodstart` varchar(100)
,`payperiodend` varchar(100)
,`Grosspay` int(100)
,`Deductions` int(100)
,`TotalPay` int(100)
,`DateGenerated` timestamp
,`Username` varchar(100)
,`Fullname` varchar(100)
,`Position` varchar(100)
,`DepartmentName` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_employee_attendance_report`
--
DROP TABLE IF EXISTS `vw_employee_attendance_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_employee_attendance_report`  AS SELECT `a`.`eID` AS `eID`, `e`.`Fullname` AS `Fullname`, `e`.`Username` AS `Username`, `e`.`Position` AS `Position`, `d`.`DepartmentName` AS `DepartmentName`, `a`.`TimeIn` AS `TimeIn`, `a`.`TimeOut` AS `TimeOut`, `a`.`DateIssued` AS `DateIssued` FROM ((`attendance` `a` left join `employeeaccs` `e` on(`a`.`eID` = `e`.`EmployeeID`)) left join `departments` `d` on(`e`.`DepartmentID` = `d`.`DepartmentID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_payroll_employee_report`
--
DROP TABLE IF EXISTS `vw_payroll_employee_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_payroll_employee_report`  AS SELECT `p`.`Payroll_ID` AS `Payroll_ID`, `p`.`EmployeeID` AS `EmployeeID`, `p`.`Address` AS `Address`, `p`.`hoursWorked` AS `hoursWorked`, `p`.`latehours` AS `latehours`, `p`.`Absences` AS `Absences`, `p`.`payperiodstart` AS `payperiodstart`, `p`.`payperiodend` AS `payperiodend`, `p`.`Grosspay` AS `Grosspay`, `p`.`Deductions` AS `Deductions`, `p`.`TotalPay` AS `TotalPay`, `p`.`DateGenerated` AS `DateGenerated`, `e`.`Username` AS `Username`, `e`.`Fullname` AS `Fullname`, `e`.`Position` AS `Position`, `d`.`DepartmentName` AS `DepartmentName` FROM ((`payroll` `p` left join `employeeaccs` `e` on(`p`.`EmployeeID` = `e`.`EmployeeID`)) left join `departments` `d` on(`e`.`DepartmentID` = `d`.`DepartmentID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminaccs`
--
ALTER TABLE `adminaccs`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `availablepositions`
--
ALTER TABLE `availablepositions`
  ADD PRIMARY KEY (`RoleID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `deletedaccs`
--
ALTER TABLE `deletedaccs`
  ADD PRIMARY KEY (`deletedID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `employeeaccs`
--
ALTER TABLE `employeeaccs`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD UNIQUE KEY `UniqueToothpaste` (`Email`),
  ADD KEY `DepartmentID` (`DepartmentID`),
  ADD KEY `Username` (`Username`),
  ADD KEY `fk_employeeaccs_recruitvalidation` (`RecruitID`);

--
-- Indexes for table `interfacedata`
--
ALTER TABLE `interfacedata`
  ADD KEY `AdminID` (`AdminID`),
  ADD KEY `DateIssued` (`DateIssued`);

--
-- Indexes for table `leaverequests`
--
ALTER TABLE `leaverequests`
  ADD PRIMARY KEY (`leaveID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`MessageID`),
  ADD KEY `RecieverID` (`ReceiverID`),
  ADD KEY `SenderID` (`SenderID`);

--
-- Indexes for table `operationsdata`
--
ALTER TABLE `operationsdata`
  ADD PRIMARY KEY (`DateIssued`,`EmployeesOnLeave`,`Productivity`,`CustomerSatisfaction`,`Workload`,`Manpower`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`Payroll_ID`),
  ADD KEY `employeepayroll` (`EmployeeID`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `recruitvalidation`
--
ALTER TABLE `recruitvalidation`
  ADD PRIMARY KEY (`RecruitID`),
  ADD UNIQUE KEY `UniqueEmail` (`Email`),
  ADD UNIQUE KEY `recruitvalidation_combo` (`Username`,`Password`,`AppliedPosition`,`Email`,`Fullname`,`DepartmentName`);

--
-- Indexes for table `validatetermination`
--
ALTER TABLE `validatetermination`
  ADD KEY `fk_validatetermination_employeeaccs` (`EmployeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminaccs`
--
ALTER TABLE `adminaccs`
  MODIFY `AdminID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `availablepositions`
--
ALTER TABLE `availablepositions`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deletedaccs`
--
ALTER TABLE `deletedaccs`
  MODIFY `deletedID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employeeaccs`
--
ALTER TABLE `employeeaccs`
  MODIFY `EmployeeID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `leaverequests`
--
ALTER TABLE `leaverequests`
  MODIFY `leaveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `MessageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `Payroll_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `recruitvalidation`
--
ALTER TABLE `recruitvalidation`
  MODIFY `RecruitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `availablepositions`
--
ALTER TABLE `availablepositions`
  ADD CONSTRAINT `availablepositions_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `employeeaccs`
--
ALTER TABLE `employeeaccs`
  ADD CONSTRAINT `fk_employeeaccs_recruitvalidation` FOREIGN KEY (`RecruitID`) REFERENCES `recruitvalidation` (`RecruitID`);

--
-- Constraints for table `interfacedata`
--
ALTER TABLE `interfacedata`
  ADD CONSTRAINT `AdminID` FOREIGN KEY (`AdminID`) REFERENCES `adminaccs` (`AdminID`),
  ADD CONSTRAINT `interfacedata_ibfk_1` FOREIGN KEY (`DateIssued`) REFERENCES `operationsdata` (`DateIssued`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leaverequests`
--
ALTER TABLE `leaverequests`
  ADD CONSTRAINT `leaverequests_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employeeaccs` (`EmployeeID`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`ReceiverID`) REFERENCES `employeeaccs` (`EmployeeID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`SenderID`) REFERENCES `employeeaccs` (`EmployeeID`);

--
-- Constraints for table `payroll`
--
ALTER TABLE `payroll`
  ADD CONSTRAINT `employeepayroll` FOREIGN KEY (`EmployeeID`) REFERENCES `employeeaccs` (`EmployeeID`) ON DELETE CASCADE;

--
-- Constraints for table `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `userid` FOREIGN KEY (`EmployeeID`) REFERENCES `employeeaccs` (`EmployeeID`) ON DELETE CASCADE;

--
-- Constraints for table `validatetermination`
--
ALTER TABLE `validatetermination`
  ADD CONSTRAINT `fk_validatetermination_employeeaccs` FOREIGN KEY (`EmployeeID`) REFERENCES `employeeaccs` (`EmployeeID`) ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"storedprocedure\",\"table\":\"salesperson\"},{\"db\":\"storedprocedure\",\"table\":\"sales\"},{\"db\":\"storedprocedure\",\"table\":\"john_thomas_ebonia___sales\"},{\"db\":\"storedprocedure\",\"table\":\"john_thomas_ebonia___salesperson\"},{\"db\":\"storedprocedure\",\"table\":\"product\"},{\"db\":\"storedprocedure\",\"table\":\"john_thomas_ebonia___product\"},{\"db\":\"itadoriyuji912067\",\"table\":\"attendance\"},{\"db\":\"itadoriyuji912067\",\"table\":\"payroll\"},{\"db\":\"itadoriyuji912067\",\"table\":\"operationsdata\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-08-18 04:43:08', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `storedprocedure`
--
CREATE DATABASE IF NOT EXISTS `storedprocedure` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `storedprocedure`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` varchar(9) DEFAULT NULL,
  `Product` varchar(10) DEFAULT NULL,
  `UnitPrice` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `Product`, `UnitPrice`) VALUES
('P001', 'Laptop', '850'),
('P002', 'Printer', '120'),
('P003', 'Smartphone', '600'),
('P004', 'Monitor', '200');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `TransactionID` varchar(13) DEFAULT NULL,
  `Date` varchar(9) DEFAULT NULL,
  `SalespersonID` varchar(13) DEFAULT NULL,
  `ProductID` varchar(9) DEFAULT NULL,
  `Region` varchar(6) DEFAULT NULL,
  `UnitsSold` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`TransactionID`, `Date`, `SalespersonID`, `ProductID`, `Region`, `UnitsSold`) VALUES
('T001', '1/5/2025', 'SP001', 'P001', 'North', '5'),
('T002', '1/6/2025', 'SP002', 'P002', 'South', '3'),
('T003', '1/7/2025', 'SP003', 'P003', 'East', '8'),
('T004', '1/7/2025', 'SP004', 'P004', 'West', '6'),
('T005', '1/8/2025', 'SP005', 'P001', 'North', '4'),
('T006', '1/8/2025', 'SP006', 'P002', 'East', '2'),
('T007', '1/9/2025', 'SP007', 'P003', 'South', '10'),
('T008', '1/9/2025', 'SP008', 'P004', 'West', '7'),
('T009', '1/10/2025', 'SP009', 'P001', 'East', '3'),
('T010', '1/10/2025', 'SP010', 'P003', 'North', '6');

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `SalespersonID` varchar(13) DEFAULT NULL,
  `SalesPerson` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`SalespersonID`, `SalesPerson`) VALUES
('SP001', 'Maria Santos'),
('SP002', 'John Reyes'),
('SP003', 'Anna Cruz'),
('SP004', 'Paul Chan'),
('SP005', 'Sarah Kim'),
('SP006', 'Chris Yap'),
('SP007', 'Jane Doe'),
('SP008', 'Mark Cruz'),
('SP009', 'Lily Tan'),
('SP010', 'Alex Wong');
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
