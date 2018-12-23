-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 01:31 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `un` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`un`, `pw`, `email`) VALUES
('admin', 'admin123', '');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `un` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` longtext NOT NULL,
  `rent_price` decimal(10,0) NOT NULL,
  `date_a` date NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `type` varchar(200) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`un`, `name`, `email`, `address`, `rent_price`, `date_a`, `phone_no`, `type`, `image`) VALUES
('', 'ass', 'dasasd@asasasd.com', 'adfasd', '1236548', '2018-12-26', '123456789012', '', 0x696d672f31345f5f313534343138363639335f36333139322e6a7067),
('78855', '8558', '85858@mgmd.coom', 'fsf8585', '15200', '2018-12-12', '1256363', 'Apartment_For_Sell', 0x696d672f31345f5f313534343138363639335f36333139322e6a7067),
('akash', 'akash', 'ashas@aams.com', 'dhaka', '123456789', '2012-01-18', '123456789456', 'Apartment_For_Sell', 0x696d672f322e6a7067),
('asdsd', 'adfdsf', 'dfsdf@sfdf.dcdf', 'fdfdf', '123456', '2012-01-15', '525252525252', 'Office', 0x696d672f322e6a7067),
('jj', 'asj', 'asda@gma.com', 'asasd', '123456', '2012-01-19', '12345678912', 'Family', 0x696d672f382e6a7067),
('kkk', 'jamj', 'jakk@k.com', 'ssd', '12365', '2018-12-20', '123456', 'Bechalor', 0x696d672f31345f5f313534343138363639335f36333139322e6a7067),
('man', 'mnaus', 'manu@ga.xom', 'dhaka', '123456', '2014-12-18', '123456789123', 'Apartment_For_Sell', 0x696d672f392e6a7067),
('mn', 'man', 'afasdsd@gmail.com', 'kka', '12563', '2018-12-21', '123456', 'Bechalor', 0x696d672f31345f5f313534343138363639335f36333139322e6a7067),
('nan', 'najka', 'kasfa@gmai.com', 'adasdasd', '123456', '2012-01-19', '123456789123', 'Family', 0x696d672f31345f5f313534343138363639335f36333139322e6a7067),
('naw', 'Nawroz', 'nawroz.mians@gmail.com', 'Dhaka Cantonment', '1000000', '2018-12-14', '01258963585', '', 0x696d672f322e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `regi`
--

CREATE TABLE `regi` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `un` varchar(10) CHARACTER SET latin1 NOT NULL,
  `address` longtext NOT NULL,
  `phone_no` varchar(14) NOT NULL,
  `pw` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regi`
--

INSERT INTO `regi` (`id`, `name`, `email`, `un`, `address`, `phone_no`, `pw`) VALUES
(5, 'Nawroz', 'nawroz.mians@gmail.com', '', 'Dhaka', '4586259685', ''),
(6, 'Nawroz', 'nawroz.mians@gmail.com', '', 'Dhaka', '4586259685', ''),
(7, 'Fairuz', 'fairuz@gmail.com', '', 'Dhaka', '01253694', ''),
(8, 'maruf', 'mn@gmail.com', 'mn', 'Dhaha', '123456', '123456'),
(9, 'maruf', 'md.marufmf555@yahoo.com', 'mnd', 'Dhaha', '123456', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'maruf', 'md.marufmf555@yahoo.com', 'mnd', 'Dhaha', '123456', 'e10adc3949ba59abbe56e057f20f883e'),
(11, 'maruf', 'md.marufmf555@yahoo.com', 'mnd', 'Dhaha', '123456', 'e10adc3949ba59abbe56e057f20f883e'),
(12, 'Raihun', 'aaa@ggg.com', 'ra', 'adasdasd', '123456', 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'Fagun', 'afasdsd@gmail.com', 'fagun', 'Ashasj', '1234567', 'e10adc3949ba59abbe56e057f20f883e'),
(15, 'Nawroz', 'nawroz.mians@gmail.com', 'naw', 'Dhaka Cant.', '4586259685', '25d55ad283aa400af464c76d713c07ad'),
(16, 'najs', 'jaad@ks.cpom', '8588', 'asdasdasd', '12356885252', 'e10adc3949ba59abbe56e057f20f883e'),
(18, 'Nawroz Shah', 'nawroz@gmail.com', 'nawroz', 'Dhaka', '01761867763', '25f9e794323b453885f5181f1b624d0b'),
(19, 'sd', 'sds@df.com', 'sdsd', 'zdsf', '88017618677', 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'sd', 'sad@gma.com', 'sds', 'csd', '+880176158563', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`un`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`un`);

--
-- Indexes for table `regi`
--
ALTER TABLE `regi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `regi`
--
ALTER TABLE `regi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
