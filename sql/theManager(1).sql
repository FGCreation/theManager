-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2022 at 09:57 AM
-- Server version: 10.3.22-MariaDB-1
-- PHP Version: 7.3.15-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theManager`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientList`
--

CREATE TABLE `clientList` (
  `id` int(11) NOT NULL,
  `fileNo` varchar(255) DEFAULT NULL,
  `year` varchar(255) NOT NULL DEFAULT '2021-22',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `loginMobile` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `acc` varchar(255) DEFAULT NULL,
  `audit` varchar(255) DEFAULT NULL,
  `ITR` varchar(255) DEFAULT NULL,
  `GST` varchar(255) DEFAULT NULL,
  `TDS` varchar(255) DEFAULT NULL,
  `PAN` varchar(255) DEFAULT NULL,
  `aadhar` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `adharPanLink` varchar(255) DEFAULT NULL,
  `onlineNotice` varchar(255) DEFAULT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientList`
--

INSERT INTO `clientList` (`id`, `fileNo`, `year`, `name`, `email`, `loginMobile`, `reference`, `status`, `acc`, `audit`, `ITR`, `GST`, `TDS`, `PAN`, `aadhar`, `dob`, `contact`, `groupName`, `adharPanLink`, `onlineNotice`, `dateTime`) VALUES
(1, '16', '2021-22', 'Vijay Electronics (Sonalben Dangar)', 'None', 'None', 'None', 'Trust', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AFRPD3502J', '977820601575', '1978/09/10 ', '9824391240', '2', 'Yes', 'No', '2022-04-26 20:21:38'),
(2, '25', '2021-22', 'Rajeshbhai N Rathod', 'None', 'None', 'Rajubhai', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AGEPR3581R', '624300713144', '1975/07/30 ', '9825153450', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(3, '41', '2021-22', 'Rameshwar Polymers', 'None', 'None', 'Rameshwar', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'None', 'None', 'None', '9824415880', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(4, '42', '2021-22', 'Radhe Krishna Polymers', 'None', 'None', 'Rameshwar', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'None', 'None', 'None', '9824415880', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(5, '54', '2021-22', 'Nilesh N.  Parmar (Chamunda Bag)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ASSPP1298H', '732938555314', '1977/08/23 ', '9824237584', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(6, '102', '2021-22', 'Aum Imitation', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ABAFA0247Q', 'N.A.', '2014/04/01 ', '9879024240', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(7, '108', '2021-22', 'Maruti Colors', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAPPH6863F', '727620789352', '1976/05/05 ', '9825221288', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(8, '115', '2021-22', 'Janki Infotech', 'None', 'None', 'None', 'P', 'No', 'No', 'Yes', 'Yes', 'No', 'AJZPR1924Q', '448769051765', '1984/03/28 ', '9033318945', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(9, '117', '2021-22', 'Balaji Sales Agency', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AANFB0695F', 'N.A.', '2013/08/01 ', '9879295409', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(10, '130', '2021-22', 'Anilbhai H Bhut', 'None', 'None', 'Pearl', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AFHPB9145D', '661773801603', '1976/12/05 ', '9825613181', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(11, '132', '2021-22', 'Punitbhai H Bhut', 'None', 'None', 'Pearl', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'APIPB1726P', '602611612450', '1982/03/10 ', '9825613181', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(12, '157', '2021-22', 'Mahesh V. Akabari (Polite Plastics)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AEZPA4751P', '476216114810', '1982/10/12 ', '9824230031', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(13, '164', '2021-22', 'Smart Lock International', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'None', 'N.A.', 'None', 'None', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(14, '176', '2021-22', 'Anil Keraliya (Shreeji Eyewear)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AMFPK0292D', '804764841197', '1964/05/20 ', '9824850261', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(15, '179', '2021-22', 'Krishna Automobiles', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAKFK3030C', 'N.A.', '01/04/2010', '9825215343', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(16, '205', '2021-22', 'E. M. F. Controles', 'None', 'None', 'None', 'F', 'No', 'Yes', 'Yes', 'Yes', 'No', 'AAAFE5191J', 'N.A.', '28/06/1982', '', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(17, '211', '2021-22', 'Subhash Dhirubhai Rathod Nandakishor Cons.', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'APIPR6716B', '548713456363', '1990/09/11 ', '9824820086', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(18, '218', '2021-22', 'Prashant Construction & Builders Hiralal Dangar', 'None', 'None', 'None', 'P', 'No', 'No', 'Yes', 'Yes', 'No', 'AIIPD4773H', '337152738540', '1977/04/17 ', 'None', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(19, '248', '2021-22', 'Neo Polymers', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAHFN4287B', 'N.A.', '23/09/2009', '9879506804', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(20, '251', '2021-22', 'Jentibhai M Dnagar (Vijay Ele. Store)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'None', '200664127156', 'None', '9824391240', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(21, '255', '2021-22', 'Balaji Tractors', 'None', 'None', 'Balaji Tractor', 'F', 'No', 'Yes', 'Yes', 'Yes', 'No', 'AAJFB9170F', 'N.A.', '03/05/2010', '', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(22, '266', '2021-22', 'Shree ambika Casting', 'None', 'None', 'Ajay Gajera', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ADGFS6120E', 'N.A.', '26/01/2017', '', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(23, '290', '2021-22', 'Kalpeshbhai Rameshbhai Sagapariya', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'CKKPS8104F', '581096957045', '18/08/1982', '9558141240', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(24, '303', '2021-22', 'Aastha immitation', 'None', 'None', 'Lunagariya Family', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AASFA3116B', 'N.A.', '2010/10/07 ', '9376746000', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(25, '340', '2021-22', 'Karan Construction', 'None', 'None', 'Karan Cons', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAJFK5921F', 'N.A.', '2009/01/01 ', '9879183557', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(26, '360', '2021-22', 'Puja Electronics (Kalpesh Sonara)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'CCEPS9443K', '930851819935', '1986/02/11 ', '9377115162', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(27, '374', '2021-22', 'Chetan Bhanubhai Mehta', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AIOPM1737C', '622792175059', '1976/11/05 ', '9227601170', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(28, '375', '2021-22', 'Rajvi Enterprise', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', '12.08.2021', 'No', 'AQXPM7950L', '592756277203', '13/10/1983', '9998949999', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(29, '423', '2021-22', 'Nirmal Medical Agency', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAEFN4023G', 'N.A.', '29/10/2003', '9825643283', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(30, '431', '2021-22', 'Jaysun Rubber Industries', 'None', 'None', 'Jaysun Rubber', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAIFJ5703H', 'N.A.', '24/03/2012', '9898075765', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(31, '437', '2021-22', 'Mayur Kalavadiya (Shree Petro)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AYJPK7313B', '936418226664', '1987/05/07 ', '9727310070', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(32, '463', '2021-22', 'Sunrise Glass Industries', 'None', 'None', 'Sunrise Glass', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AITPB1732D', '818995513861', '1977/02/25 ', '9824114237', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(33, '548', '2021-22', 'Jaybhole Securty Service', 'None', 'None', 'Bhavesh Sojitra', 'P', 'No', 'No', 'Yes', 'Yes', 'No', 'AALPZ1594M', '205961992675', '1968/10/25 ', '9824906251', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(34, '558', '2021-22', 'Ashokbhai Karshanbhai Vasoya  (Bhumi oranament)', 'None', 'None', 'Bhumi Ornaments', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAZPV4251F', '364472651326', '25/07/1961', '9377721823', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(35, '616', '2021-22', 'Kalpesh B Gajera', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ASMPG8975E', '796740776224', '11/06/1983', '9428701212', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(36, '716', '2021-22', 'Khimjibhai Panchabhai Daki', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ALGPD9792F', '207372318404', '1984/12/17 ', '9726788684', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(37, '718', '2021-22', 'Ansh immitation (Manojbhai Rank)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'APWPR0029K', '725253141310', '1986/10/28 ', '8488000018', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(38, '754', '2021-22', 'Unique Poly Plast', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAEFU5674L', 'N.A.', '22/02/2016', '9825115957', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(39, '766', '2021-22', 'Bharat Sales ', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAQFB4438F', 'N.A.', '01/04/2016', '', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(40, '799', '2021-22', 'HBH Polymers ', 'None', 'None', 'None', 'F', 'No', 'Yes', 'Yes', 'Yes', 'No', 'AAJFH6366H', 'N.A.', '16/08/2016', '', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(41, '813', '2021-22', 'Speed Technology', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AJOPM9809N', 'None', '22/05/1981', 'None', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(42, '824', '2021-22', 'Shaileshbhai Karshanbhai Kaneriya', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ASTPK6004B', 'None', '01/01/1978', '9428700368', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(43, '825', '2021-22', 'Shree Raj Kitchen Products (Pradipbhai R Raiyani)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AFWPR6517A', '765159364149', '31/12/1978', 'None', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(44, '826', '2021-22', 'Shailesh Rathod (Nandkishor Cons)', 'None', 'None', 'Shailesh Rathod', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'BOTPR1364G', '236519503368', '1985/02/10 ', 'None', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(45, '864', '2021-22', 'Sun Metal Cast', 'None', 'None', 'Vinu Kaka', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ACUFS2332K', 'N.A.', '06/12/2021', '7600564717', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(46, '929', '2021-22', 'Sagar Virjibhai Parsana ', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'BJCPP2113F', '474819624502', '1986/05/30 ', '8320034584', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(47, '953', '2021-22', 'Raj Maheshbhai Agravat', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ATRPA7260Q', '312820331259', '15/05/1992', '8530060779', 'None', 'Yes', 'No', '2022-04-26 20:21:38'),
(48, '979', '2021-22', 'Kailashbhai R Monpara (Madhv jewels)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ALAPM8060F', '850383094773', '27/4/1974', 'None', 'None', 'Yes', 'No', '2022-04-26 20:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `clientListField`
--

CREATE TABLE `clientListField` (
  `id` int(11) NOT NULL,
  `fieldName` varchar(255) NOT NULL,
  `fieldType` varchar(255) NOT NULL,
  `fieldOpt` varchar(255) DEFAULT NULL,
  `mdiIcon` varchar(255) NOT NULL DEFAULT 'mdi-network-question'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `refName` varchar(255) NOT NULL,
  `mobNum` varchar(255) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `groupName`, `refName`, `mobNum`, `dateTime`) VALUES
(1, 'gg1', 'mm', '123', '2022-04-26 20:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'vijay', 'vijay*123', 'master'),
(2, 'jaydev', 'jaydev*123', 'regular');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientList`
--
ALTER TABLE `clientList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientListField`
--
ALTER TABLE `clientListField`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
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
-- AUTO_INCREMENT for table `clientList`
--
ALTER TABLE `clientList`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `clientListField`
--
ALTER TABLE `clientListField`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
