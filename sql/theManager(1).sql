-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2022 at 06:26 PM
-- Server version: 10.3.24-MariaDB-2
-- PHP Version: 7.4.26

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
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `added_on`) VALUES
(1, 'a', '2022-05-16 16:25:50'),
(3, 'hj', '2022-05-16 16:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `auditors`
--

CREATE TABLE `auditors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auditors`
--

INSERT INTO `auditors` (`id`, `name`, `added_on`) VALUES
(1, 'chagan', '2022-05-16 15:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `clientList`
--

CREATE TABLE `clientList` (
  `id` int(11) NOT NULL,
  `fileNo` varchar(255) DEFAULT NULL,
  `year` varchar(255) NOT NULL,
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
  `gg` varchar(255) DEFAULT NULL,
  `lol` varchar(255) DEFAULT NULL,
  `wife name` varchar(255) DEFAULT NULL,
  `feni` varchar(255) DEFAULT NULL,
  `fads` varchar(255) DEFAULT NULL,
  `asdf` varchar(255) DEFAULT NULL,
  `asr` varchar(255) DEFAULT NULL,
  `hh` varchar(255) DEFAULT NULL,
  `bg` varchar(255) DEFAULT NULL,
  `qw` varchar(255) DEFAULT NULL,
  `adf` varchar(255) DEFAULT NULL,
  `fNum` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientList`
--

INSERT INTO `clientList` (`id`, `fileNo`, `year`, `name`, `email`, `loginMobile`, `reference`, `status`, `acc`, `audit`, `ITR`, `GST`, `TDS`, `PAN`, `aadhar`, `dob`, `contact`, `groupName`, `adharPanLink`, `onlineNotice`, `gg`, `lol`, `wife name`, `feni`, `fads`, `asdf`, `asr`, `hh`, `bg`, `qw`, `adf`, `fNum`) VALUES
(1, '16', '2021-22', 'Vijay Electronics (Sonalben Dangar)', 'None', 'None', 'None', 'Trust', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AFRPD3502J', '977820601575', '1978/09/10 ', '9824391240', 'gg1', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '41', '2021-22', 'Rameshwar Polymers', 'None', 'None', 'Rameshwar', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'None', 'None', 'None', '9824415880', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '42', '2021-22', 'Radhe Krishna Polymers', 'None', 'None', 'Rameshwar', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'None', 'None', 'None', '9824415880', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '108', '2021-22', 'Maruti Colors', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAPPH6863F', '727620789352', '1976/05/05 ', '9825221288', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '115', '2021-22', 'Janki Infotech', 'None', 'None', 'None', 'P', 'No', 'No', 'Yes', 'Yes', 'No', 'AJZPR1924Q', '448769051765', '1984/03/28 ', '9033318945', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '117', '2021-22', 'Balaji Sales Agency', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AANFB0695F', 'N.A.', '2013/08/01 ', '9879295409', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '130', '2021-22', 'Anilbhai H Bhut', 'None', 'None', 'Pearl', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AFHPB9145D', '661773801603', '1976/12/05 ', '9825613181', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '132', '2021-22', 'Punitbhai H Bhut', 'None', 'None', 'Pearl', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'APIPB1726P', '602611612450', '1982/03/10 ', '9825613181', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '157', '2021-22', 'Mahesh V. Akabari (Polite Plastics)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AEZPA4751P', '476216114810', '1982/10/12 ', '9824230031', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '164', '2021-22', 'Smart Lock International', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'None', 'N.A.', 'None', 'None', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '176', '2021-22', 'Anil Keraliya (Shreeji Eyewear)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AMFPK0292D', '804764841197', '1964/05/20 ', '9824850261', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '179', '2021-22', 'Krishna Automobiles', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAKFK3030C', 'N.A.', '01/04/2010', '9825215343', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '205', '2021-22', 'E. M. F. Controles', 'None', 'None', 'None', 'F', 'No', 'Yes', 'Yes', 'Yes', 'No', 'AAAFE5191J', 'N.A.', '28/06/1982', '', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '211', '2021-22', 'Subhash Dhirubhai Rathod Nandakishor Cons.', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'APIPR6716B', '548713456363', '1990/09/11 ', '9824820086', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '218', '2021-22', 'Prashant Construction & Builders Hiralal Dangar', 'None', 'None', 'None', 'P', 'No', 'No', 'Yes', 'Yes', 'No', 'AIIPD4773H', '337152738540', '1977/04/17 ', 'None', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '248', '2021-22', 'Neo Polymers', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAHFN4287B', 'N.A.', '23/09/2009', '9879506804', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '251', '2021-22', 'Jentibhai M Dnagar (Vijay Ele. Store)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'None', '200664127156', 'None', '9824391240', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '255', '2021-22', 'Balaji Tractors', 'None', 'None', 'Balaji Tractor', 'F', 'No', 'Yes', 'Yes', 'Yes', 'No', 'AAJFB9170F', 'N.A.', '03/05/2010', '', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '266', '2021-22', 'Shree ambika Casting', 'None', 'None', 'Ajay Gajera', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ADGFS6120E', 'N.A.', '26/01/2017', '', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '290', '2021-22', 'Kalpeshbhai Rameshbhai Sagapariya', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'CKKPS8104F', '581096957045', '18/08/1982', '9558141240', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '303', '2021-22', 'Aastha immitation', 'None', 'None', 'Lunagariya Family', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AASFA3116B', 'N.A.', '2010/10/07 ', '9376746000', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '340', '2021-22', 'Karan Construction', 'None', 'None', 'Karan Cons', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAJFK5921F', 'N.A.', '2009/01/01 ', '9879183557', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '360', '2021-22', 'Puja Electronics (Kalpesh Sonara)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'CCEPS9443K', '930851819935', '1986/02/11 ', '9377115162', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '374', '2021-22', 'Chetan Bhanubhai Mehta', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AIOPM1737C', '622792175059', '1976/11/05 ', '9227601170', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '375', '2021-22', 'Rajvi Enterprise', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', '12.08.2021', 'No', 'AQXPM7950L', '592756277203', '13/10/1983', '9998949999', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '423', '2021-22', 'Nirmal Medical Agency', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAEFN4023G', 'N.A.', '29/10/2003', '9825643283', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '431', '2021-22', 'Jaysun Rubber Industries', 'None', 'None', 'Jaysun Rubber', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAIFJ5703H', 'N.A.', '24/03/2012', '9898075765', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '437', '2021-22', 'Mayur Kalavadiya (Shree Petro)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AYJPK7313B', '936418226664', '1987/05/07 ', '9727310070', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '463', '2021-22', 'Sunrise Glass Industries', 'None', 'None', 'Sunrise Glass', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AITPB1732D', '818995513861', '1977/02/25 ', '9824114237', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '548', '2021-22', 'Jaybhole Securty Service', 'None', 'None', 'Bhavesh Sojitra', 'P', 'No', 'No', 'Yes', 'Yes', 'No', 'AALPZ1594M', '205961992675', '1968/10/25 ', '9824906251', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '558', '2021-22', 'Ashokbhai Karshanbhai Vasoya  (Bhumi oranament)', 'None', 'None', 'Bhumi Ornaments', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAZPV4251F', '364472651326', '25/07/1961', '9377721823', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '616', '2021-22', 'Kalpesh B Gajera', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ASMPG8975E', '796740776224', '11/06/1983', '9428701212', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '716', '2021-22', 'Khimjibhai Panchabhai Daki', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ALGPD9792F', '207372318404', '1984/12/17 ', '9726788684', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '718', '2021-22', 'Ansh immitation (Manojbhai Rank)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'APWPR0029K', '725253141310', '1986/10/28 ', '8488000018', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '754', '2021-22', 'Unique Poly Plast', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAEFU5674L', 'N.A.', '22/02/2016', '9825115957', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '766', '2021-22', 'Bharat Sales ', 'None', 'None', 'None', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AAQFB4438F', 'N.A.', '01/04/2016', '', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '799', '2021-22', 'HBH Polymers ', 'None', 'None', 'None', 'F', 'No', 'Yes', 'Yes', 'Yes', 'No', 'AAJFH6366H', 'N.A.', '16/08/2016', '', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '813', '2021-22', 'Speed Technology', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AJOPM9809N', 'None', '22/05/1981', 'None', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '824', '2021-22', 'Shaileshbhai Karshanbhai Kaneriya', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ASTPK6004B', 'None', '01/01/1978', '9428700368', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '825', '2021-22', 'Shree Raj Kitchen Products (Pradipbhai R Raiyani)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'AFWPR6517A', '765159364149', '31/12/1978', 'None', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '826', '2021-22', 'Shailesh Rathod (Nandkishor Cons)', 'None', 'None', 'Shailesh Rathod', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'BOTPR1364G', '236519503368', '1985/02/10 ', 'None', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '864', '2021-22', 'Sun Metal Cast', 'None', 'None', 'Vinu Kaka', 'F', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ACUFS2332K', 'N.A.', '06/12/2021', '7600564717', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '929', '2021-22', 'Sagar Virjibhai Parsana ', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'BJCPP2113F', '474819624502', '1986/05/30 ', '8320034584', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '953', '2021-22', 'Raj Maheshbhai Agravat', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ATRPA7260Q', '312820331259', '15/05/1992', '8530060779', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '979', '2021-22', 'Kailashbhai R Monpara (Madhv jewels)', 'None', 'None', 'None', 'P', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'ALAPM8060F', '850383094773', '27/4/1974', 'None', 'None', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientListField`
--

CREATE TABLE `clientListField` (
  `id` int(11) NOT NULL,
  `fieldName` varchar(255) NOT NULL,
  `displayName` varchar(255) NOT NULL,
  `fieldType` varchar(255) NOT NULL,
  `fieldOpt` varchar(255) DEFAULT NULL,
  `mdiIcon` varchar(255) NOT NULL DEFAULT 'mdi-network-question'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientListField`
--

INSERT INTO `clientListField` (`id`, `fieldName`, `displayName`, `fieldType`, `fieldOpt`, `mdiIcon`) VALUES
(12, 'fileNo', 'File Number', 'text', '', ''),
(13, 'year', 'Year', 'text', '', ''),
(14, 'name', 'Client Name', 'text', '', ''),
(15, 'email', 'Client E-mail', 'text', '', ''),
(16, 'loginMobile', 'Login Mobile', 'text', '', ''),
(17, 'reference', 'Reference', 'text', '', ''),
(18, 'status', 'Status', 'select', 'Personal,Partership Ferm,Trust,PVT. LTD.,AOP', ''),
(19, 'acc', 'Account', 'select', 'Yes,No', ''),
(20, 'audit', 'Audit', 'select', 'Yes,No', ''),
(21, 'ITR', 'ITR', 'select', 'Yes,No', ''),
(22, 'GST', 'GST', 'select', 'Yes,No', ''),
(23, 'TDS', 'TDS', 'select', 'Yes,No', ''),
(24, 'PAN', 'PAN', 'text', '', ''),
(25, 'aadhar', 'Aadhar', 'text', '', ''),
(26, 'dob', 'Date of Birth', 'text', '', ''),
(27, 'contact', 'Contact', 'text', '', ''),
(28, 'groupName', 'Group Name', 'text', '', ''),
(29, 'adharPanLink', 'Aadhar Pan Link', 'select', 'Yes,No', ''),
(30, 'onlineNotice', 'Online Notice', 'select', 'Yes,No', '');

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
  `date` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `uname`, `date`, `action`) VALUES
(1, 'vijay', '2022-05-14 17:28:35', 'vijay updated [\"55\", \"2021-22\", \"Nilesh N.  Parmar Chamunda Bag\", \"None\", \"None\", \"None\", \"PVT. LTD.\", \"Yes\", \"Yes\", \"Yes\", \"Yes\", \"No\", \"ASSPP1298H\", \"732938555314\", \"1977/08/23 \", \"9824237584\", \"None\", \"Yes\", \"No\"] in Client Database'),
(2, 'vijay', '2022-05-14 17:52:48', 'vijay deleted Aum Imitation from Client database'),
(3, 'vijay', '2022-05-16 11:10:58', 'vijay updated [\"16\", \"2022-23\", \"Vijay Electronics (Sonalben Dangar)\", \"None\", \"None\", \"None\", \"Trust\", \"Yes\", \"Yes\", \"Yes\", \"Yes\", \"No\", \"AFRPD3502J\", \"977820601575\", \"1978/09/10 \", \"9824391240\", \"gg1\", \"Yes\", \"No\"] in Client Database'),
(4, 'vijay', '2022-05-16 11:11:17', 'vijay updated [\"16\", \"2021-22\", \"Vijay Electronics (Sonalben Dangar)\", \"None\", \"None\", \"None\", \"Trust\", \"Yes\", \"Yes\", \"Yes\", \"Yes\", \"No\", \"AFRPD3502J\", \"977820601575\", \"1978/09/10 \", \"9824391240\", \"gg1\", \"Yes\", \"No\"] in Client Database'),
(5, 'vijay', '2022-05-16 13:40:37', 'vijay inserted field \"lol\" in colum database - (\"fNum\",\"lol\",\"text\",\"\",\"\")'),
(6, 'vijay', '2022-05-16 15:13:29', 'vijay updated [\"16\", \"2022-23\", \"Vijay Electronics (Sonalben Dangar)\", \"None\", \"None\", \"None\", \"Trust\", \"Yes\", \"Yes\", \"Yes\", \"Yes\", \"No\", \"AFRPD3502J\", \"977820601575\", \"1978/09/10 \", \"9824391240\", \"gg1\", \"Yes\", \"No\"] in Client Database'),
(7, 'vijay', '2022-05-16 15:13:45', 'vijay updated [\"16\", \"2021-22\", \"Vijay Electronics (Sonalben Dangar)\", \"None\", \"None\", \"None\", \"Trust\", \"Yes\", \"Yes\", \"Yes\", \"Yes\", \"No\", \"AFRPD3502J\", \"977820601575\", \"1978/09/10 \", \"9824391240\", \"gg1\", \"Yes\", \"No\"] in Client Database');

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
(2, 'jaydev', 'jaydev*123', 'regular'),
(3, 'vijay', 'vijay', 'master');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auditors`
--
ALTER TABLE `auditors`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auditors`
--
ALTER TABLE `auditors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clientList`
--
ALTER TABLE `clientList`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `clientListField`
--
ALTER TABLE `clientListField`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
