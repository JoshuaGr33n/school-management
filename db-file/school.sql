-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 03, 2020 at 04:44 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_type` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `mark` int(11) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `attendance_type`, `student_id`, `teacher_id`, `class_id`, `section_id`, `attendance_date`, `mark`) VALUES
(1, 2, 0, 1, 0, 0, '2019-01-02', 1),
(2, 2, 1, 1, 0, 0, '2019-01-10', 1),
(3, 1, 1, 0, 1, 2, '2020-01-14', 1),
(4, 1, 1, 0, 1, 2, '2020-01-01', 1),
(5, 2, 0, 2, 0, 0, '2020-01-01', 1),
(6, 2, 0, 12, 0, 0, '2020-01-01', 2),
(7, 2, 0, 13, 0, 0, '2020-01-01', 3),
(8, 2, 0, 2, 0, 0, '2020-01-01', 1),
(9, 2, 0, 12, 0, 0, '2020-01-01', 2),
(10, 2, 0, 13, 0, 0, '2020-01-01', 2),
(11, 2, 0, 2, 0, 0, '2020-01-01', 1),
(12, 2, 0, 12, 0, 0, '2020-01-01', 2),
(13, 2, 0, 13, 0, 0, '2020-01-01', 2),
(14, 2, 0, 2, 0, 0, '2020-01-01', 1),
(15, 2, 0, 12, 0, 0, '2020-01-01', 2),
(16, 2, 0, 13, 0, 0, '2020-01-01', 2),
(17, 1, 1, 0, 1, 2, '2020-02-04', 3),
(18, 2, 0, 2, 0, 0, '2020-01-03', 1),
(19, 2, 0, 12, 0, 0, '2020-01-03', 3),
(20, 2, 0, 13, 0, 0, '2020-01-03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL,
  `numeric_name` varchar(255) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `numeric_name`) VALUES
(1, 'Jss One', '01'),
(2, 'Jss Two', '02'),
(3, 'Jss Three', '03'),
(4, 'Sss One', '04'),
(5, 'Sss Two', '05'),
(6, 'Sss Three', '06');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `expenses_id` int(11) NOT NULL AUTO_INCREMENT,
  `expenses_name` varchar(255) NOT NULL,
  `expenses_amount` varchar(255) NOT NULL,
  `expenses_name_id` int(11) NOT NULL,
  PRIMARY KEY (`expenses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expenses_id`, `expenses_name`, `expenses_amount`, `expenses_name_id`) VALUES
(1, 'book', '10000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses_name`
--

DROP TABLE IF EXISTS `expenses_name`;
CREATE TABLE IF NOT EXISTS `expenses_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses_name`
--

INSERT INTO `expenses_name` (`id`, `date`, `name`, `total_amount`) VALUES
(1, '2020-01-01', 'Book Fee', '10000.00');

-- --------------------------------------------------------

--
-- Table structure for table `marksheet`
--

DROP TABLE IF EXISTS `marksheet`;
CREATE TABLE IF NOT EXISTS `marksheet` (
  `marksheet_id` int(11) NOT NULL AUTO_INCREMENT,
  `marksheet_name` varchar(255) NOT NULL,
  `marksheet_date` date NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`marksheet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marksheet`
--

INSERT INTO `marksheet` (`marksheet_id`, `marksheet_name`, `marksheet_date`, `class_id`) VALUES
(1, 'Physics', '2020-01-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `marksheet_student`
--

DROP TABLE IF EXISTS `marksheet_student`;
CREATE TABLE IF NOT EXISTS `marksheet_student` (
  `marksheet_student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `obtain_mark` varchar(255) NOT NULL,
  `marksheet_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`marksheet_student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marksheet_student`
--

INSERT INTO `marksheet_student` (`marksheet_student_id`, `student_id`, `subject_id`, `obtain_mark`, `marksheet_id`, `class_id`, `section_id`) VALUES
(1, 1, 1, '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `paid_amount` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `payment_name_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `paid_amount`, `status`, `payment_type`, `payment_date`, `class_id`, `section_id`, `student_id`, `payment_name_id`) VALUES
(1, '', 0, 0, '0000-00-00', 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_name`
--

DROP TABLE IF EXISTS `payment_name`;
CREATE TABLE IF NOT EXISTS `payment_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_name`
--

INSERT INTO `payment_name` (`id`, `name`, `start_date`, `end_date`, `total_amount`, `type`) VALUES
(1, 'School Fees', '2020-01-15', '2020-04-21', '10,000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_name`, `class_id`, `teacher_id`) VALUES
(1, 'A', 3, 1),
(2, 'B', 1, 13),
(3, 'C', 1, 2),
(4, 'A', 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `register_date` date NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `age` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `register_date`, `class_id`, `section_id`, `fname`, `lname`, `image`, `age`, `dob`, `contact`, `email`, `address`, `city`, `country`) VALUES
(1, '2020-01-06', 1, 2, 'Divine', 'Oleru', 'assets/images/students/10738362625e3325f82426b.jpg', '4', '2020-01-21', '1234', 'divine@gmail.com', 'Lagos', 'Lagos', 'Nigeria');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `total_mark` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `total_mark`, `class_id`, `teacher_id`) VALUES
(1, 'Physics', '100', 1, 2),
(2, 'Mathematics', '70', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `register_date` date NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `job_type` int(11) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `register_date`, `fname`, `lname`, `image`, `date_of_birth`, `age`, `contact`, `email`, `address`, `city`, `country`, `job_type`) VALUES
(2, '2020-01-07', 'Joshua', 'Green', 'assets/images/teachers/20257718105e38412b8f76f.jpg', '2020-01-06', '40', '09865', 'jo@yahoo.com', 'Festac', 'Lagos', 'Nigeria', 1),
(12, '2020-01-07', 'Mark', 'John', 'assets/images/teachers/1924881635e32f6fbd7bdd.jpg', '2020-01-06', '34', '09865', 'mark@yahoo.com', 'Lagos', 'Lagos', 'Nigeria', 2),
(13, '2020-01-14', 'Jonathan', 'Lex', 'assets/images/teachers/21025974085e32f78b38f08.jpg', '2020-01-07', '23', '09865', 'jonathan@gmail.com', 'Lagos', 'Lagos', 'Nigeria', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fname`, `lname`, `email`) VALUES
(1, 'adminJoshua', '5f4dcc3b5aa765d61d8327deb882cf99', 'Osondu', 'Oleru', 'osondu@gmail.com'),
(2, 'james', '123', 'John', 'Mike', 'john@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
