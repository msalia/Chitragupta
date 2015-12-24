-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2015 at 10:34 PM
-- Server version: 5.5.42-37.1
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pramukhc_chitragupta`
--

-- --------------------------------------------------------

--
-- Table structure for table `Profile`
--

CREATE TABLE IF NOT EXISTS `Profile` (
  `profile_id` int(6) unsigned NOT NULL,
  `first_name` varchar(30) NOT NULL DEFAULT '',
  `last_name` varchar(30) NOT NULL DEFAULT '',
  `phonenum` int(10) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `streetNum` varchar(255) NOT NULL DEFAULT '',
  `streetName` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL DEFAULT '',
  `postal_code` varchar(6) NOT NULL DEFAULT '',
  `seva` varchar(255) NOT NULL DEFAULT '',
  `mandal` varchar(255) NOT NULL DEFAULT '',
  `age` int(3) NOT NULL,
  `tshirtSize` varchar(11) NOT NULL DEFAULT '',
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Profile`
--

INSERT INTO `Profile` (`profile_id`, `first_name`, `last_name`, `phonenum`, `email`, `streetNum`, `streetName`, `city`, `postal_code`, `seva`, `mandal`, `age`, `tshirtSize`, `team_id`) VALUES
(1, 'Akhil', 'Patel', 2147483647, 'apatel09@gmail.com', '18', 'Sheringham Street', 'Brampton', 'L6Z2P4', 'Publications', 'Yuvak', 28, 'Medium', 1),
(2, 'Akshay', 'Suthar', 2147483647, 'akshay.suthar@gmail.com', '4', 'Festoon Place', 'Brampton', 'L6T4R4', 'IT/AV', 'Yuvak', 27, 'Small', 1),
(3, 'Anant', 'Patel', 2147483647, 'ant13_2000@yahoo.com', '123', 'No Where', 'Brampton', 'A1B2C3', 'Kitchen', 'Sanyukta', 40, 'Small', 2),
(4, 'Ankur', 'Patel', 2147483647, 'ankur.0216@gmail.com', '27', 'Mountland Road', 'Brampton', 'L6P2A7', 'Yuvak Karayakar', 'Yuvak', 30, 'Medium', 10),
(5, 'Bhaktesh', 'Mevawala', 2147483647, 'bjmbaps@gmail.com', '1018 - 700', 'Humberwood Blvd', 'Etobicoke', 'M9W7J4', 'Students Pravrutti Karyakar', 'Student', 22, 'Medium', 7),
(6, 'Bhavik', 'Jogi', 2147483647, 'bhavikjogi94@gmail.com', '714', 'Partington', 'Windsor', 'N9B2N7', 'Decoration', 'Student', 22, 'Medium', 8),
(7, 'Bhushan', 'Joshi', 2147483647, 'bhushannjoshi@gmail.com', '12', 'Amaranth Crescent', 'Brampton', 'L7A0L7', 'General', 'Sanyukta', 34, 'Large', 5),
(8, 'Bipin', 'Patel', 2147483647, 'bipeen2003@gmail.com', '3427', 'Chipley cresent', 'Mississauga', 'L4T2E3', 'Sayona, Mandir cleaning', 'Sanyukta', 41, 'Medium', 3),
(9, 'Chetan', 'Amin', 2147483647, 'jigo23in@yahoo.ca', '150', 'Duncanwoods Drive', 'Northyork', 'M9L2E3', 'Sampark Karyakar', 'Sanyukta', 39, 'Medium', 12),
(10, 'Chinmay', 'Matholia', 2147483647, 'T.chinmay@yahoo.com', '33', 'Windsor Drive', 'Ajax', 'L1T2Z4', 'Any and All', 'Yuvak', 28, 'Small', 3),
(11, 'Chintan', 'Inamdar', 2147483647, 'Chintan.inamdar@gmail.com', '15', 'Sugarcane Ave', 'Brampton', 'L6r3c8', 'Security', 'Sanyukta', 34, 'Large', 4),
(12, 'Chintan', 'Patel', 2147483647, 'chintan1910@yahoo.com', '32', 'Bluefin Crescent', 'Scarborough', 'M1H2L1', 'MC', 'Student', 21, 'Large', 8),
(13, 'Chintan', 'Patel', 2147483647, 'chintanpatel.mech60@gmail.com', '704 - 60', 'Stevenson Road', 'Etobicoke', 'M9V2B4', 'Catering', 'Student', 23, 'Large', 4),
(14, 'Chirag', 'Patel', 2147483647, 'chaps_patel@hotmail.com', '117 - 555', 'Brimoton Drive', 'Scarborough', 'M1H2E9', 'AV - EEHM', 'Sanyukta', 35, 'Medium', 10),
(15, 'Chirag', 'Patel', 2147483647, 'Patelchirag28@yahoo.ca', '92', 'Newington crescent', 'Brampton', 'L6P3E9', 'Kitchen', 'Sanyukta', 42, 'Medium', 2),
(16, 'Darpankumar', 'Patel', 2147483647, 'darpanpatel2908@gmail.com', '119 - 47', 'Deeffield Drive', 'Ottawa', 'K2G3R7', 'sabha vyavasta', 'Student', 24, 'Small', 14),
(17, 'Deepam', 'Patel', 2147483647, 'deepampatel77@gmail.com', '1508 - 20', 'Tuxedo Court', 'Scarborough', 'M1G3S5', 'Sometimes in kitchen', 'Student', 20, 'Small', 3),
(18, 'Deval', 'Bhavsar', 2147483647, 'devalcanada@gmail.com', '401 - 1901', 'Martin Grove Rd.', 'Toronto', 'M9V3T1', 'General', 'Student', 20, 'Medium', 16),
(19, 'Dhaval', 'Bhatt', 2147483647, 'dhaval.n.bhatt@gmail.com', '2324-700', 'Humberwood Blvd', 'Etobicoke', 'M9W7J4', 'Security', 'Sanyukta', 33, 'Large', 5),
(20, 'Dhruv', 'Patel', 2147483647, 'dhruv95@hotmail.com', '469', 'Oaktree Circle', 'Mississauga', 'L5W1V4', 'Decoration', 'Yuvak', 20, 'Small', 9),
(21, 'Dinesh', 'Sheta', 2147483647, 'shetadinesh@gmail.com', '81', 'Woodlot Cr', 'Toronto', 'M9W6T3', 'Kitchen', 'Sanyukta', 30, 'Medium', 9),
(22, 'Dipak', 'Nayi', 2147483647, 'dipsworld@gmail.com', '1001-49', 'Silver Stone Dr.', 'Etobicoke', 'M9V3G2', 'Kitchen', 'Student', 31, 'Large', 9),
(23, 'Dipak', 'Desai', 2147483647, 'djddesai@yahoo.com', '34', 'Long Branch Trail', 'Brampton', 'L6P3S4', 'Security', 'Sanyukta', 42, 'Large', 3),
(24, 'Dipesh', 'Patel', 2147483647, 'dip_apc@yahoo.co.in', '306 - 20', 'Sanagan Road', 'Etobicoke', 'M9V1R9', 'Sampark', 'Sanyukta', 31, 'Medium', 7),
(25, 'Gaurav', 'Patel', 2147483647, 'gaurav21may@gmail.com', '86', 'Archdekin Drive', 'Brampton', 'L6V1Y7', 'Cleanning', 'Sanyukta', 20, 'Medium', 16),
(26, 'Gautam', 'Patel', 2147483647, 'gautampatel3@gmail.com', '3', 'Glenhollow Avenue', 'Etobicoke', 'M9W6E8', 'Sabha Vyavastha', 'Sanyukta', 56, 'Large', 13),
(27, 'Hardik', 'Patel', 2147483647, 'tapu1989@yahoo.ca', '805', 'Dundalk Drive', 'Toronto', 'M1P4V2', 'Housekeeping', 'Sanyukta', 26, 'Small', 2),
(28, 'Hari', 'Lakhani', 2147483647, 'Harelakhani@gmail.com', '17', 'Matters court', 'Etobicoke', 'M9W7C6', 'Logistics', 'Yuvak', 25, 'Medium', 6),
(29, 'Harit', 'Patel', 2147483647, 'blue.dharmaj1983@gmail.com', '1105 - 40', 'Stevenson Road', 'Etobicoke', 'M9V2B2', 'Security', 'Sanyukta', 33, 'Medium', 7),
(30, 'Hem', 'Patel', 2147483647, 'hem1921@gmail.com', '64', 'Palleschi Drive', 'Brampton', 'L6P2R8', 'Bal RC', 'Yuvak', 21, 'Medium', 5),
(31, 'Hemant', 'Barot', 2147483647, 'Barot.hemant@gmail.com', '1001 - 20', 'Redgrave drive', 'Etobicoke', 'M9R3T8', 'Sumpark', 'Sanyukta', 41, 'Medium', 16),
(32, 'Hemant', 'Patel', 2147483647, 'patelhemant_prayosha@ymail.com', '308 - 45', 'Silverstone Drive', 'Etobicoke', 'M9V4B1', 'Sabha Vyavastha', 'Student', 29, 'Large', 8),
(33, 'Jaimeen', 'Patel', 2147483647, 'jaimeen10@gmail.com', '4162994088', '86 Archdekin Drive', 'Brampton', 'L6V1Y7', 'Housekeeping', 'Sanyukta', 20, 'Small', 8),
(34, 'Jainish', 'Patel', 2147483647, 'jainishpatel4292@gmail.com', '704 - 60', 'Stevenson Road', 'Etobicoke', 'M9V2B4', 'Ccatrering', 'Student', 23, 'Medium', 10),
(35, 'Jay', 'Patel', 2147483647, 'jay251995@gmail.com', '35', 'Viewcrest circle', 'Etobicoke', 'M9W7G6', 'Catering, Decoration', 'Student', 20, 'Large', 6),
(36, 'Jayesh', 'Amodra', 2147483647, 'jayesh.amodra@gmail.com', '19', 'Masseygrove Crescent', 'Etobicoke', 'M9V3E1', 'Sayona & Sanskrutik', 'Sanyukta', 33, 'Medium', 6),
(37, 'Jayesh', 'Gohil', 2147483647, 'jayeshgohils@gmail.com', '55 - 39', 'Lexington Ave', 'Etobicoke', 'M9V2G4', 'Bookstall, Sampark', 'Sanyukta', 33, 'Medium', 15),
(38, 'Jevil', 'Patel', 2147483647, 'jevilpatel@gmail.com', '16', 'Invitational Road', 'Brampton', 'L6P2H2', 'Yuvak Karyakar', 'Yuvak', 24, 'XXL', 11),
(39, 'Jignesh', 'Patel', 2147483647, 'j_t_patel@hotmail.com', '63', 'Unionville crescent', 'Brampton', 'L6P2Z4', 'as cultural PC and music team member.', 'Sanyukta', 38, 'Medium', 9),
(40, 'Kamlesh', 'Chauhan', 2147483647, 'kamleshchauhan173@gmail.com', '25', 'Westowanis Drive', 'Etobicoke', 'M9W0C3', 'Accounting', 'Student', 26, 'Medium', 7),
(41, 'Kashyap', 'Brahmbhatt', 2147483647, 'Jigs_brem@hotmail.com', '7319', 'Sigsbee drive', 'Mississauga', 'L4T3L6', 'Yuvak Karayakar', 'Yuvak', 28, 'Medium', 16),
(42, 'Kevin', 'Patel', 2147483647, 'patel.kevin509@gmail.com', '1508 - 20', 'Ttuxedo Court', 'Scarborough', 'M1G3S5', 'Student karyakar', 'Student', 22, 'Medium', 7),
(43, 'Kevin', 'Moradiya', 2147483647, 'Kevin.moradiya309@gmail.com', '119 - 47', 'Deerfield Drive', 'Ottawa', 'K2G3R7', 'Nirupan,pravachan,sabha sanchalan', 'Student', 24, 'Medium', 13),
(44, 'Kiran', 'Moradiya', 2147483647, 'kiranmoradiya_013@yahoo.co.in', '430', 'Mcmurchey Ave S', 'Brampton', 'L6Y2N4', 'Catering', 'Student', 26, 'Medium', 4),
(45, 'Kishan', 'Patel', 2147483647, 'kisupatel.patel1128@gmail.com', '308 - 45', 'Silverstone Drive', 'Etobicoke', 'M9V4B1', 'Sabha vyavastha', 'Student', 18, 'Medium', 4),
(46, 'Kunal', 'Dhakan', 2147483647, 'kdhakan89@gmail.com', '308 - 45', 'Silverstone drive', 'Etobicoke', 'M9V4B1', 'Kitchen', 'Student', 26, 'Medium', 10),
(47, 'Malak', 'Bhavsar', 2147483647, 'Malak4u@gmail.com', '8', 'Burtonwood Cres', 'Etobicoke', 'M9V3L8', 'Kishore RC', 'Yuvak', 26, 'Small', 14),
(48, 'Malav', 'Naik', 2147483647, 'malavnaik@yahoo.com', '24', 'Wallingford Court', 'Brampton', 'L6Y4V7', 'Sabha Vevastha', 'Sanyukta', 41, 'XXL', 11),
(49, 'Manthan', 'Patel', 2147483647, 'Manthanshekhadia@gmail', '6475755914', '35 Fountainhead Road', 'NorthYork', 'M3J2V7', 'IT', 'Student', 22, 'Small', 12),
(50, 'Meet', 'Patel', 2147483647, 'meetpatel333@gmail.com', '16 - 35', 'Cobden Court', 'Brantford', 'N3R0A3', 'Kishore RCT', 'Kishore', 20, 'Small', 7),
(51, 'Meet', 'Patel', 2147483647, 'milu_patel@yahoo.com', '518 - 1577', 'Lawrence Ave West', 'NorthYork', 'M6L1C4', 'Sabha Arrangement', 'Sanyukta', 43, 'Large', 14),
(52, 'Minkesh', 'Patel', 2147483647, 'minkesh@gmail.com', '204', 'Sherwood Road', 'Milton', 'L9T7C1', 'Yuvak Karyakar', 'Yuvak', 34, 'Medium', 8),
(53, 'Mitesh', 'Shah', 2147483647, 'unknown@gmail.com', '502', 'West Street', 'Brantford', 'N3R7B7', 'PC, kitchen', 'Sanyukta', 39, 'Small', 13),
(54, 'Nainesh', 'Amin', 2147483647, 'aminnj2001@yahoo.ca', '19', 'Barolo Road', 'Etobicoke', 'M9V4Z8', 'Any Place', 'Sanyukta', 46, 'Large', 6),
(55, 'Namresh', 'Patel', 2147483647, 'namreshpatel@gmail.com', '81', 'Woodlot Crescent', 'Etobicoke', 'M9W6T3', 'Kitchen', 'Student', 24, 'Medium', 9),
(56, 'Nayan', 'Brahmbhatt', 2147483647, 'Nayan.sbb@gmail.com', '11', 'Lynngrove way', 'Brampton', 'L6P 2N', 'PR', 'Sanyukta', 34, 'X-Large', 11),
(57, 'Niraj', 'Patel', 2147483647, 'nirajpatel1989@gmail.com', '915 - 430', 'McMurchy Avenue South', 'Brampton', 'L6Y2N4', 'Cleaning', 'Student', 26, 'Medium', 1),
(58, 'Nirjar', 'Vyas', 2147483647, 'nv_friend@yahoo.in', '23', 'Sophia Drive', 'Scarborough', 'M1H1Z3', 'General', 'Student', 26, 'Medium', 9),
(59, 'Nirmal', 'Panchal', 2147483647, 'nirmal7.panchal@gmail.com', '509 - 75', 'Charolais Blvd', 'Brampton', 'L6Y2R8', 'Catering', 'Student', 26, 'Medium', 10),
(60, 'Nishant', 'Patel', 2147483647, 'nishant.patel@creationtech.com', '22 - 475', 'Bramalea Road', 'Brampton', 'L6T2X2', 'Abhishek', 'Sanyukta', 37, 'Large', 12),
(61, 'Pankaj', 'Bhanderi', 2147483647, 'pankajbhanderi0411@gmail.com', '306 - 1150', 'Meadowlands Drive East', 'Ottawa', 'K2E6J4', 'Sabha Sanchalan', 'Student', 23, 'Small', 9),
(62, 'Pankaj', 'Modha', 2147483647, 'modhapankaj@gmail.com', '75', 'Temple Hill Road', 'Brampton', 'L6R3S1', 'Mandir Darshan', 'Sanyukta', 43, 'Large', 16),
(63, 'Paresh', 'Patel', 2147483647, 'meetusha31@gmail.com', '84', 'Newington Crescent', 'Brampton', 'L6P3G1', 'Sabha Vyavstha', 'Sanyukta', 46, 'X-Large', 4),
(64, 'Paresh', 'Patel', 2147483647, 'pareshias@gmail.com', '1507 - 60', 'Stevenson Road', 'Toronto', 'M9V2B4', 'IT', 'Student', 29, 'Medium', 12),
(65, 'Parth', 'Patel', 2147483647, 'parth95.patel@gmail.com', '81', 'Woodlot Crescent', 'Etobicoke', 'M9W6T3', 'Decoration, BK', 'Kishore', 20, 'Small', 6),
(66, 'Parth', 'Patel', 2147483647, 'parth4041@gmail.com', '119-47', 'Deer Field Drive', 'Ottawa', 'K2G3R7', 'Outreach karyakar', 'Student', 25, 'Small', 8),
(67, 'Piyush', 'Patel', 2147483647, 'prpatel2005@gmail.com', '25', 'Heatherglen Drive', 'Brampton', 'L6Y0W8', 'Yuvak Mandal', 'Yuvak', 28, 'Large', 13),
(68, 'Pradeep', 'Moradiya', 2147483647, 'pradeep.moradiya@gmail.com', '1018-700', 'Humberwood Blvd', 'Etobicoke', 'M9W7J4', 'Regional', 'Sanyukta', 32, 'Medium', 13),
(69, 'Prakash', 'Patel', 2147483647, 'spmpatel2001@yahoo.com', '5', 'Fitzgibson Street', 'Brampton', 'L6Y5Y5', 'Zone Leader', 'Sanyukta', 52, 'Medium', 5),
(70, 'Prashant', 'Patel', 2147483647, 'chinkupatel@yahoo.com', '41', 'Daden Oaks Drive', 'Brampton', 'L6P3R7', 'SNC', 'Sanyukta', 43, 'Large', 3),
(71, 'Priyank', 'Patel', 2147483647, 'priyankpatel21@gmail.com', '52', 'Darby Court', 'Scarborough', 'M1B5H4', 'Bal Sanchalak', 'Kishore', 20, 'Small', 1),
(72, 'Priyank', 'Patel', 2147483647, 'priyank4343@gmail.com', '345', 'Mill Street South', 'Brampton', 'L6Y2Y8', 'General', 'Student', 24, 'Medium', 14),
(73, 'Rajesh', 'Patel', 2147483647, 'rajeshheenamk@yahoo.com', '44', 'Woodlot Cr', 'Etobicoke', 'M9W6T3', 'Exam-Sampark', 'Sanyukta', 45, 'Medium', 6),
(74, 'Rajnikant', 'Patel', 2147483647, 'raypatel.22@gmail.com', '22', 'Springwood Heights Crescent', 'Brampton', 'L6P2C3', 'PR and PC', 'Sanyukta', 58, 'Medium', 2),
(75, 'Ramesh', 'Kanani', 2147483647, 'rameshkanani @hotmail. com', '113', 'Eastview Gate', 'Brampton', 'L6P2G7', 'Sayona', 'Sanyukta', 45, 'Medium', 5),
(76, 'Rinkesh', 'Patel', 2147483647, 'Rinkesh.19@gmail.com', '22', 'Silentpond Crescent', 'Brampton', 'L6V4P2', 'Account', 'Sanyukta', 41, 'Medium', 4),
(77, 'Riten', 'Patel', 2147483647, 'Ritenrpatel@yahoo.ca', '0', 'Arthur Trewin Street', 'Courtice', 'L1E0G5', 'Sampark', 'Sanyukta', 33, 'Medium', 15),
(78, 'Ritesh', 'Patel', 2147483647, 'patel.ritesh020@gmail.com', '26', 'Matthew Harrison street', 'Brampton', 'L6P3H1', 'Accounting', 'Yuvak', 31, 'Small', 4),
(79, 'Ritesh', 'Panchal', 2147483647, 'rit_panchal@hotmail.ca', '704 - 60', 'Stevenson Road', 'Etobicoke', 'M9V2B4', 'General', 'Student', 30, 'Medium', 6),
(80, 'Rupen', 'Brahmbhatt', 2147483647, 'pragatguruhari@yahoo.com', '125', 'Crystalview Crescent', 'Brampton', 'L6P2R8', 'SO', 'Sanyukta', 39, 'Medium', 13),
(81, 'Samir', 'Patel', 2147483647, 'Hetalrishi@yahoo.co.in', '80', 'Newington Crescent', 'Brampton', 'L6P3G1', 'Sampark Karyakar', 'Sanyukta', 40, 'X-Large', 2),
(82, 'Sandip', 'Patel', 2147483647, '73.sandip@gmail.com', '8', 'Burnstown Circle', 'Brampton', 'L6P3M1', 'Electrical, Sayona', 'Sanyukta', 42, 'Large', 11),
(83, 'Saurabh', 'Mehta', 2147483647, 'bramsrm@gmail.com', '37', 'Sonoma Way', 'Etobicoke', 'M9V 4Y', 'Karyakar', 'Sanyukta', 35, 'X-Large', 15),
(84, 'Saurabh', 'Patel', 2147483647, 'patel.srbh@gmail.com', '18', 'Jaffa Drive', 'Brampton', 'L6S4C5', 'Yuvak Sabha Sanchalak', 'Yuvak', 30, 'Medium', 12),
(85, 'Savan', 'Bhanderi', 2147483647, 'bsavan414@gmail.com', '57', 'Gunton Drive', 'Etobicoke', 'M9W3H3', 'Bookstall', 'Student', 20, 'Large', 15),
(86, 'Shailesh', 'Vithani', 2147483647, 'swas.baps@yahoo.ca', '15', 'Aintree Crescent', 'Brampton', 'L6T2T2', 'Sanchalak', 'Student', 25, 'Medium', 5),
(87, 'Sharad', 'Dhyani', 2147483647, 'sharaddhyani@gmail.com', '1577', 'Arcadia Square', 'Pickering', 'L1V6W6', 'Kishore Sanchalak', 'Yuvak', 23, 'XXL', 2),
(88, 'Shriman', 'Patel', 2147483647, 'Shrimanmpatel@yahoo.in', '8', 'Crystalview Crescent', 'Brampton', 'L6P2R7', 'Sabhavyavastha', 'Student', 24, 'Medium', 14),
(89, 'Sunil', 'Kansara', 2147483647, 'kansaras2003@yahoo.com', '64', 'Pomell Trail', 'Brampton', 'L6P3J6', 'Security', 'Sanyukta', 44, 'Medium', 14),
(90, 'Tejaskumar', 'Patel', 2147483647, 'Tejas.patel2006@yahoo.ca', '1110 - 120', 'Dundalk Dr', 'Scarborough', 'M1P4V9', 'Cleaning', 'Sanyukta', 34, 'Medium', 12),
(91, 'Trushal', 'Patel', 2147483647, 'ttp91@live.com', '704-60', 'Stevenson Road', 'Etobicoke', 'M9V2B4', 'Catering seva, Student sampark karyakar, Night Seva', 'Student', 24, 'Small', 14),
(92, 'Tushar', 'Soni', 2147483647, 'tusharsoni2007@gmail', '49 - 104', 'Silverstone Drive', 'Etobicoke', 'M9V3G2', 'Nilkanthvarni Abhishek', 'Sanyukta', 44, 'Large', 12),
(93, 'Umesh', 'Patel', 2147483647, 'umesh1967@hotmail.com', '26', 'Mulgrave Street', 'Brampton', 'L6P3H2', 'Sampark Karykar', 'Sanyukta', 47, 'Large', 2),
(94, 'Upendra', 'Patel', 2147483647, 'Satsangexam@yahoo.ca', '117', 'Bradstone Square', 'Scarborough', 'M1B1W1', 'Exam', 'Sanyukta', 46, 'Large', 16),
(95, 'Utkarsh', 'Patel', 2147483647, 'patelutkarsh87@gmail.com', '55', 'Seaside Circle', 'Brampton', 'L6R2G7', 'Kishore Sanchalak', 'Yuvak', 27, 'Medium', 15),
(96, 'Varun', 'Patel', 2147483647, 'Varun.patel@gmail.com', '3414', 'Chipley Crescent', 'Mississauga', 'L4T2E2', 'Decorations', 'Kishore', 20, 'Medium', 3),
(97, 'Varun', 'Patel', 2147483647, 'patelsmart25@gmail.com', '65', 'Watchman Road', 'Brampton', 'L6P2L6', 'Decoration', 'Kishore', 20, 'Small', 1),
(98, 'Vijay', 'Patel', 2147483647, 'vij_1875@yahoo.ca', '102', 'Crystalview cresent', 'Brampton', 'L6P2S2', 'Sabha vyavstha', 'Sanyukta', 43, 'Medium', 1),
(99, 'Vikram', 'Patel', 2147483647, 'just2vikram@gmail.com', '1401 - 45', 'Silverstone Drive', 'Toronto', 'M9V4B1', 'Catering', 'Student', 28, 'Medium', 10),
(100, 'Vimal', 'Patel', 2147483647, 'vimal.patel@gmail.com', '17', 'Mezzo Street', 'Brampton', 'L6P4C4', 'Sayona', 'Yuvak', 37, 'Small', 7),
(101, 'Vipul', 'Patel', 2147483647, 'v.apatel@yahoo.ca', '617 - 100', 'Dundalk Dr', 'Scarborough', 'M1P4V2', 'Cleaning', 'Sanyukta', 36, 'Large', 16),
(102, 'Vraj', 'Patel', 2147483647, 'vrajpatel_96@yahoo.com', '1208 - 45', 'Silverstone Drive', 'Toronto', 'M9V4B1', 'Decoration', 'Student', 19, 'Small', 15),
(103, 'Yashpal', 'Jadeja', 2147483647, 'yashpalsinh.jad@gmail.com', '495', 'Brimorton Drive', 'Scarborough', 'M1H2E7', 'General', 'Student', 19, 'Large', 11),
(104, 'Himanshu', 'Patel', 1234567890, '11himansu@gmail.com', '108', 'Stevenson Road', 'Etobicoke', 'M9V2B5', 'Kitchen', 'Sanyukta', 35, 'Medium', 13),
(105, 'Rishit', 'Patel', 2147483647, 'rishitpatel_2010@yahoo.com', '607 - 1901', 'Martin Grove Rd.', 'Etobicoke', 'M9V3T1', 'General', 'Sanyukta', 30, 'Medium', 1),
(106, 'Samir', 'Patel', 2147483647, 'samir5691@yahoo.com', '911 - 555', 'Brimorton Drive', 'Scarborough', 'M1H2E9', 'General', 'Yuvak', 23, 'Medium', 15),
(107, 'Dhruvit', 'Patel', 2147483647, 'dhruvit@hotmail.com', '35', 'Bloom Drive', 'Brampton', 'L6P3C3', 'General', 'Yuvak', 27, 'Large', 11),
(108, 'Jignesh', 'Patel', 2147483647, 'jignesh28@gmail.com', '65', 'Crystalview Crescent', 'Brampton', 'L6P2S3', 'Security', 'Sanyukta', 35, 'Large', 8),
(109, 'Bhargav', 'Parekh', 2147483647, 'parrekhbhargav25@gmail.com', '26', 'Toddville Road', 'Brampton', 'L6P3J2', 'General', 'Kishore', 18, 'Medium', 5),
(110, 'Indra', 'Darbar', 2147483647, 'isthakor@gmail.com', '403 - 1', 'Antrim Crescent', 'Scarborough', 'M1P4V2', 'General', 'Sanyukta', 28, 'Small', 11),
(111, 'Chintan', 'Patel', 2147483647, 'chintoo74@yahoo.co.in', '1202 - 555', 'Brimorton Drive', 'Scarborough', 'M1H2E9', 'General', 'Student', 25, 'Medium', 3),
(112, 'Nirav', 'Vasani', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 10),
(113, 'Batsman', 'One', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 1),
(114, 'Batsman', 'Two', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 2),
(115, 'Batsman', 'Three', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 3),
(116, 'Batsman', 'Four', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 4),
(117, 'Batsman', 'Five', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 5),
(118, 'Batsman', 'Six', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 6),
(119, 'Batsman', 'Seven', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 7),
(120, 'Batsman', 'Eight', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 8),
(121, 'Batsman', 'Nine', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 9),
(122, 'Batsman', 'Ten', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 10),
(123, 'Batsman', 'Eleven', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 11),
(124, 'Batsman', 'Twelve', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 12),
(125, 'Batsman', 'Thirteen', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 13),
(126, 'Batsman', 'Fourteen', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 14),
(127, 'Batsman', 'Fifteen', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 15),
(128, 'Batsman', 'Sixteen', 1234567890, 'unknown@gmail.com', '123', 'No Where', 'Toronto', 'A1B2C3', 'General', 'Sanyukta', 30, 'Medium', 16);

-- --------------------------------------------------------

--
-- Table structure for table `Stats`
--

CREATE TABLE IF NOT EXISTS `Stats` (
  `stat_id` int(6) unsigned NOT NULL,
  `profile_id` int(6) unsigned NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `matches_played` int(11) unsigned NOT NULL DEFAULT '0',
  `runs` int(6) unsigned NOT NULL DEFAULT '0',
  `balls_played` int(11) unsigned NOT NULL DEFAULT '0',
  `hundreds` int(3) unsigned NOT NULL DEFAULT '0',
  `fifties` int(3) unsigned NOT NULL DEFAULT '0',
  `highscore` int(4) unsigned NOT NULL DEFAULT '0',
  `overs_bowled` float unsigned NOT NULL DEFAULT '0',
  `runs_allowed` int(11) unsigned NOT NULL DEFAULT '0',
  `wickets` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Team`
--

CREATE TABLE IF NOT EXISTS `Team` (
  `team_id` int(6) unsigned NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `team_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Team`
--

INSERT INTO `Team` (`team_id`, `year`, `team_name`) VALUES
(1, 2015, 'Akshay''s 7'),
(2, 2015, 'Anant''s 7'),
(3, 2015, 'Chinmay''s 7'),
(4, 2015, 'Chintan''s 7'),
(5, 2015, 'Dhaval''s 7'),
(6, 2015, 'Hari''s 7'),
(7, 2015, 'Harit''s 7'),
(8, 2015, 'Hemant''s 7'),
(9, 2015, 'Jigz''s 7'),
(10, 2015, 'Kunal''s 7'),
(11, 2015, 'Malav''s 7'),
(12, 2015, 'Paresh''s 7'),
(13, 2015, 'Pradeep''s 7'),
(14, 2015, 'Trushal''s 7'),
(15, 2015, 'Utkarsh''s 7'),
(16, 2015, 'Vipuls''s 7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Profile`
--
ALTER TABLE `Profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `Stats`
--
ALTER TABLE `Stats`
  ADD PRIMARY KEY (`stat_id`), ADD KEY `PROFILE_STAT` (`profile_id`), ADD KEY `year` (`year`);

--
-- Indexes for table `Team`
--
ALTER TABLE `Team`
  ADD PRIMARY KEY (`team_id`), ADD KEY `year` (`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Profile`
--
ALTER TABLE `Profile`
  MODIFY `profile_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `Stats`
--
ALTER TABLE `Stats`
  MODIFY `stat_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Team`
--
ALTER TABLE `Team`
  MODIFY `team_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Stats`
--
ALTER TABLE `Stats`
ADD CONSTRAINT `PROFILE_STAT` FOREIGN KEY (`profile_id`) REFERENCES `Profile` (`profile_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
