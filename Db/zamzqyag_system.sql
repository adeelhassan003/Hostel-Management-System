-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2020 at 08:31 AM
-- Server version: 10.3.23-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zamzqyag_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `bed_id` int(11) NOT NULL,
  `bed_number` varchar(55) DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `rent` varchar(55) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`bed_id`, `bed_number`, `room_id`, `status`, `rent`, `remarks`, `timestamp`, `created_on`, `created_by`, `updated_by`) VALUES
(70, 'A', 45, 1, '8000', '', 1569303059, 1568308115, 1, 1),
(71, 'B', 45, 0, '8000', '', 1569305166, 1568308134, 1, 1),
(72, 'C', 45, 1, '8000', '', 1569303313, 1568308146, 1, 1),
(73, 'D', 45, 0, '8000', '', 1568308155, 1568308155, 1, 1),
(74, 'A', 46, 1, '8000', '', 1568526987, 1568308198, 1, 1),
(75, 'B', 46, 0, '8000', '', 1569842486, 1568308218, 1, 1),
(76, 'C', 46, 1, '8000', '', 1568638891, 1568308342, 1, 1),
(77, 'D', 46, 1, '8000', '', 1568831236, 1568308352, 1, 1),
(78, 'A', 47, 1, '9000', '', 1568375301, 1568308367, 1, 1),
(79, 'B', 47, 1, '9000', '', 1568530843, 1568308377, 1, 1),
(80, 'A', 48, 1, '8000', '', 1568529787, 1568308395, 1, 1),
(81, 'B', 48, 1, '8000', '', 1569304040, 1568308403, 1, 1),
(82, 'C', 48, 1, '8000', '', 1569505670, 1568308411, 1, 1),
(83, 'D', 48, 0, '8000', '', 1568308420, 1568308420, 1, 1),
(84, 'A', 49, 1, '7500', '', 1568832272, 1568308435, 1, 1),
(85, 'B', 49, 1, '7500', '', 1568832485, 1568308442, 1, 1),
(86, 'C', 49, 1, '7500', '', 1568832644, 1568308452, 1, 1),
(87, 'D', 49, 1, '7500', '', 1568832766, 1568308459, 1, 1),
(88, 'E', 49, 1, '7500', '', 1569842486, 1568308484, 1, 1),
(89, 'A', 50, 1, '7500', '', 1569563368, 1568308497, 1, 1),
(90, 'B', 50, 1, '7500', '', 1568526624, 1568308504, 1, 1),
(91, 'C', 50, 1, '7500', '', 1568526839, 1568308513, 1, 1),
(92, 'D', 50, 1, '7500', '', 1569560188, 1568308521, 1, 1),
(93, 'E', 50, 0, '7500', '', 1568830705, 1568308531, 1, 1),
(94, 'A', 51, 1, '7500', '', 1568373180, 1568308667, 1, 1),
(95, 'B', 51, 1, '7500', '', 1568527357, 1568308676, 1, 1),
(96, 'C', 51, 1, '7500', '', 1568528084, 1568308683, 1, 1),
(97, 'D', 51, 1, '7500', '', 1568529688, 1568308692, 1, 1),
(98, 'E', 51, 1, '7500', '', 1569506282, 1568308700, 1, 1),
(99, 'A', 52, 1, '7500', '', 1569695996, 1568308714, 1, 1),
(100, 'B', 52, 1, '7500', '', 1569314033, 1568308723, 1, 1),
(101, 'C', 52, 1, '7500', '', 1569314488, 1568308731, 1, 1),
(102, 'D', 52, 1, '7500', '', 1568831459, 1568308739, 1, 1),
(103, 'E', 52, 1, '7500', '', 1569408889, 1568308752, 1, 1),
(104, 'A', 53, 1, '8000', '', 1568743701, 1568308768, 1, 1),
(105, 'B', 53, 1, '8000', '', 1569059296, 1568308780, 1, 1),
(106, 'C', 53, 1, '8000', '', 1568743164, 1568308790, 1, 1),
(107, 'D', 53, 1, '8000', '', 1569059340, 1568308799, 1, 1),
(108, 'A', 54, 1, '8000', '', 1568374097, 1568308814, 1, 1),
(109, 'B', 54, 1, '8000', '', 1568374285, 1568308824, 1, 1),
(110, 'C', 54, 1, '8000', '', 1569306881, 1568308837, 1, 1),
(111, 'D', 54, 1, '8000', '', 1568374726, 1568308845, 1, 1),
(112, 'A', 55, 1, '8000', '', 1568474196, 1568308857, 1, 1),
(113, 'B', 55, 1, '8000', '', 1568475642, 1568308866, 1, 1),
(114, 'C', 55, 1, '8000', '', 1569562201, 1568308876, 1, 1),
(115, 'D', 55, 1, '8000', '', 1569305488, 1568308888, 1, 1),
(116, 'A', 57, 1, '9000', '2 Seater', 1568472746, 1568432749, 1, 1),
(117, 'B', 57, 1, '9000', '2 seater', 1569302495, 1568432775, 1, 1),
(118, 'A', 56, 1, '8000', '4 seater', 1568477130, 1568432837, 1, 1),
(119, 'B', 56, 1, '8000', '4 seater', 1568477512, 1568432858, 1, 1),
(120, 'C', 56, 1, '8000', '4 seater', 1568477898, 1568432874, 1, 1),
(121, 'D', 56, 1, '8000', '4 seater', 1569305888, 1568432905, 1, 1),
(122, 'A', 68, 1, '8000', '4 seater', 1568647271, 1568432930, 1, 1),
(123, 'B', 68, 1, '8000', '4 seater', 1569424832, 1568432948, 1, 1),
(124, 'C', 68, 1, '8000', '4 seater', 1569424274, 1568432972, 1, 1),
(125, 'D', 68, 1, '8000', '4 seater', 1569507676, 1568432989, 1, 1),
(126, 'A', 69, 1, '8000', '4 seater', 1568831378, 1568433021, 1, 1),
(127, 'B', 69, 1, '8000', '4 seater', 1569561948, 1568433041, 1, 1),
(128, 'C', 69, 1, '8000', '4 seater', 1569409453, 1568433057, 1, 1),
(129, 'D', 69, 0, '8000', '4 seater', 1568433076, 1568433076, 1, 1),
(130, 'A', 70, 1, '8000', '4 seater', 1568438107, 1568433107, 1, 1),
(131, 'B', 70, 1, '8000', '4 seater', 1568471796, 1568433123, 1, 1),
(132, 'C', 70, 1, '8000', '4 seater', 1569312799, 1568433163, 1, 1),
(133, 'D', 70, 1, '8000', '4 seater', 1569069568, 1568433183, 1, 1),
(134, 'A', 58, 1, '7500', '5 seater\r\nPartition of 3', 1568437090, 1568433220, 1, 1),
(135, 'C', 58, 0, '7500', '5 seater\r\nPartition of 3', 1569506138, 1568433255, 1, 1),
(136, 'B', 58, 1, '7500', '5 seater\r\nPartition of 3', 1569560943, 1568433278, 1, 1),
(137, 'A', 59, 1, '7500', '5 seater\r\nPartition of 3', 1568476340, 1568433296, 1, 1),
(138, 'B', 59, 1, '7500', '5 seater\r\nPartition of 2', 1568479517, 1568433319, 1, 1),
(139, 'A', 60, 1, '7500', '5 seater\r\nPartition of 3', 1568439006, 1568433340, 1, 1),
(140, 'B', 60, 1, '7500', '5 seater\r\nPartition of 3', 1568472119, 1568433355, 1, 1),
(141, 'C', 60, 1, '7500', '5 seater\r\nPartition of 3', 1568644500, 1568433374, 1, 1),
(142, 'A', 61, 1, '7500', '5 seater\r\nPartition of 2', 1568474971, 1568433391, 1, 1),
(143, 'B', 61, 1, '7500', '5 seater\r\nPartition of 2', 1569311410, 1568433417, 1, 1),
(144, 'A', 62, 1, '7500', '5 seater\r\nPartition of 3', 1568437819, 1568433456, 1, 1),
(145, 'B', 62, 0, '7500', '5 seater\r\nPartition of 3', 1569506282, 1568433473, 1, 1),
(146, 'C', 62, 1, '7500', '5 seater\r\nPartition of 3', 1568474367, 1568433491, 1, 1),
(147, 'A', 63, 1, '7500', '5 seater\r\nPartition of 2', 1569069936, 1568433511, 1, 1),
(148, 'B', 63, 0, '7500', '5 seater\r\nPartition of 2', 1568433530, 1568433530, 1, 1),
(149, 'A', 64, 1, '8000', '4 seater\r\nPartition of 2', 1568479218, 1568433574, 1, 1),
(150, 'B', 64, 1, '8000', '4 seater\r\nPartition of 2', 1568641926, 1568433593, 1, 1),
(151, 'A', 65, 1, '8000', '4 seater\r\nPartition of 2', 1569425821, 1568433650, 1, 1),
(152, 'B', 65, 1, '8000', '4 seater\r\nPartition of 2', 1568476776, 1568433675, 1, 1),
(153, 'A', 67, 0, '7500', '5 seater\r\nPartition of 2', 1569733798, 1568433694, 1, 1),
(154, 'B', 67, 1, '7500', '5 seater\r\nPartition of 2', 1568474009, 1568433711, 1, 1),
(155, 'A', 66, 0, '7500', '5 seater\r\nPartition of 3', 1569754994, 1568433730, 1, 1),
(156, 'B', 66, 0, '7500', '5 seater\r\nPartition of 3', 1569695996, 1568433752, 1, 1),
(157, 'C', 66, 1, '7500', '5 seater\r\nPartition of 3', 1568478213, 1568433769, 1, 1),
(158, 'A', 34, 1, '9000', '', 1568645238, 1568486768, 1, 1),
(159, 'B', 34, 1, '9000', '', 1569058400, 1568486783, 1, 1),
(160, 'A', 35, 0, '8000', '', 1569062011, 1568486795, 1, 1),
(161, 'B', 35, 1, '8000', '', 1569059568, 1568486804, 1, 1),
(162, 'C', 35, 1, '8000', '', 1569058854, 1568486813, 1, 1),
(163, 'D', 35, 1, '8000', '', 1569059069, 1568486833, 1, 1),
(164, 'A', 36, 1, '9000', '', 1568831042, 1568486854, 1, 1),
(165, 'B', 36, 1, '9000', '', 1569053832, 1568486864, 1, 1),
(166, 'A', 37, 1, '8500', '', 1569058055, 1568486882, 1, 1),
(167, 'B', 37, 1, '8500', '', 1569304321, 1568486893, 1, 1),
(168, 'C', 37, 0, '8500', '', 1568486905, 1568486905, 1, 1),
(169, 'A', 38, 1, '7500', '', 1568542113, 1568486924, 1, 1),
(170, 'B', 38, 1, '7500', '', 1569427463, 1568486932, 1, 1),
(171, 'C', 38, 0, '7500', '', 1569505081, 1568486941, 1, 1),
(172, 'D', 38, 1, '7500', '', 1569501668, 1568486949, 1, 1),
(173, 'E', 38, 1, '7500', '', 1569426547, 1568486957, 1, 1),
(174, 'A', 39, 1, '7500', '', 1569562628, 1568486972, 1, 1),
(175, 'B', 39, 1, '7500', '', 1569562930, 1568486981, 1, 1),
(176, 'C', 39, 0, '7500', '', 1570951861, 1568486989, 1, 1),
(177, 'D', 39, 0, '7500', '', 1568831887, 1568486997, 1, 1),
(178, 'E', 39, 0, '7500', '', 1568831707, 1568487008, 1, 1),
(179, 'A', 40, 1, '8500', '', 1568548614, 1568487028, 1, 1),
(180, 'B', 40, 1, '8500', '', 1568550687, 1568487035, 1, 1),
(181, 'C', 40, 1, '8500', '', 1569230252, 1568487044, 1, 1),
(182, 'A', 41, 1, '7500', '', 1569303652, 1568487059, 1, 1),
(183, 'B', 41, 1, '7500', '', 1569313153, 1568487069, 1, 1),
(184, 'C', 41, 1, '7500', '', 1568548820, 1568487087, 1, 1),
(185, 'D', 41, 1, '7500', '', 1568549161, 1568487101, 1, 1),
(186, 'E', 41, 0, '7500', '', 1569505148, 1568487111, 1, 1),
(187, 'A', 42, 1, '7500', '', 1569409114, 1568487128, 1, 1),
(188, 'B', 42, 0, '7500', '', 1568642453, 1568487135, 1, 1),
(189, 'C', 42, 1, '7500', '', 1568549725, 1568487142, 1, 1),
(190, 'D', 42, 0, '7500', '', 1569409189, 1568487166, 1, 1),
(191, 'E', 42, 1, '7500', '', 1569310591, 1568487176, 1, 1),
(192, 'A', 43, 1, '8000', '', 1569427661, 1568487217, 1, 1),
(193, 'B', 43, 1, '8000', '', 1569428350, 1568487227, 1, 1),
(194, 'C', 43, 1, '8000', '', 1569429265, 1568487235, 1, 1),
(195, 'D', 43, 1, '8000', '', 1569428538, 1568487243, 1, 1),
(196, 'A', 44, 1, '8000', '', 1568546124, 1568487981, 1, 1),
(197, 'B', 44, 1, '8000', '', 1568546505, 1568487995, 1, 1),
(198, 'C', 44, 1, '8000', '', 1568548143, 1568488003, 1, 1),
(199, 'D', 44, 1, '8000', '', 1568548377, 1568488012, 1, 1),
(200, 'A', 71, 1, '8000', '', 1569304640, 1569056679, 1, 1),
(201, 'B', 71, 1, '8000', '', 1569310163, 1569056716, 1, 1),
(202, 'C', 71, 1, '8000', '', 1569410175, 1569056745, 1, 1),
(203, 'D', 71, 1, '8000', '', 1569063976, 1569056774, 1, 1),
(204, 'A', 72, 1, '9000', '', 1569241728, 1569056927, 1, 1),
(205, 'B', 72, 1, '9000', '', 1569409745, 1569056950, 1, 1),
(206, 'A', 73, 1, '9000', '', 1569061723, 1569057001, 1, 1),
(207, 'B', 73, 1, '9000', '', 1569063680, 1569057025, 1, 1),
(208, 'A', 74, 1, '8500', '', 1569063056, 1569057118, 1, 1),
(209, 'B', 74, 0, '8500', '', 1569057148, 1569057148, 1, 1),
(210, 'C', 74, 0, '8500', '', 1569057176, 1569057176, 1, 1),
(211, 'A', 75, 1, '7500', '', 1569065592, 1569057522, 1, 1),
(212, 'B', 75, 1, '7500', '', 1569065235, 1569057686, 1, 1),
(213, 'C', 75, 1, '7000', '', 1569309127, 1569057714, 1, 1),
(215, 'E', 71, 1, '8000', 'sobhan ka bhai aya hai', 1569754994, 1569743714, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `code` char(3) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `name`, `code`, `created_on`, `created_by`, `timestamp`, `updated_by`) VALUES
(1, 'Andorran Peseta', 'ADP', 1519583748, 1, 1519583748, 1),
(2, 'United Arab Emirates Dirham', 'AED', 1519583748, 1, 1519583748, 1),
(3, 'Afghanistan Afghani', 'AFA', 1519583748, 1, 1519583748, 1),
(4, 'Albanian Lek', 'ALL', 1519583748, 1, 1519583748, 1),
(5, 'Netherlands Antillian Guilder', 'ANG', 1519583748, 1, 1519583748, 1),
(6, 'Angolan Kwanza', 'AOK', 1519583748, 1, 1519583748, 1),
(7, 'Argentine Peso', 'ARS', 1519583748, 1, 1519583748, 1),
(9, 'Australian Dollar', 'AUD', 1519583748, 1, 1519583748, 1),
(10, 'Aruban Florin', 'AWG', 1519583748, 1, 1519583748, 1),
(11, 'Barbados Dollar', 'BBD', 1519583748, 1, 1519583748, 1),
(12, 'Bangladeshi Taka', 'BDT', 1519583748, 1, 1519583748, 1),
(14, 'Bulgarian Lev', 'BGN', 1519583748, 1, 1519583748, 1),
(15, 'Bahraini Dinar', 'BHD', 1519583748, 1, 1519583748, 1),
(16, 'Burundi Franc', 'BIF', 1519583748, 1, 1519583748, 1),
(17, 'Bermudian Dollar', 'BMD', 1519583748, 1, 1519583748, 1),
(18, 'Brunei Dollar', 'BND', 1519583748, 1, 1519583748, 1),
(19, 'Bolivian Boliviano', 'BOB', 1519583748, 1, 1519583748, 1),
(20, 'Brazilian Real', 'BRL', 1519583748, 1, 1519583748, 1),
(21, 'Bahamian Dollar', 'BSD', 1519583748, 1, 1519583748, 1),
(22, 'Bhutan Ngultrum', 'BTN', 1519583748, 1, 1519583748, 1),
(23, 'Burma Kyat', 'BUK', 1519583748, 1, 1519583748, 1),
(24, 'Botswanian Pula', 'BWP', 1519583748, 1, 1519583748, 1),
(25, 'Belize Dollar', 'BZD', 1519583748, 1, 1519583748, 1),
(26, 'Canadian Dollar', 'CAD', 1519583748, 1, 1519583748, 1),
(27, 'Swiss Franc', 'CHF', 1519583748, 1, 1519583748, 1),
(28, 'Chilean Unidades de Fomento', 'CLF', 1519583748, 1, 1519583748, 1),
(29, 'Chilean Peso', 'CLP', 1519583748, 1, 1519583748, 1),
(30, 'Yuan (Chinese) Renminbi', 'CNY', 1519583748, 1, 1519583748, 1),
(31, 'Colombian Peso', 'COP', 1519583748, 1, 1519583748, 1),
(32, 'Costa Rican Colon', 'CRC', 1519583748, 1, 1519583748, 1),
(33, 'Czech Republic Koruna', 'CZK', 1519583748, 1, 1519583748, 1),
(34, 'Cuban Peso', 'CUP', 1519583748, 1, 1519583748, 1),
(35, 'Cape Verde Escudo', 'CVE', 1519583748, 1, 1519583748, 1),
(36, 'Cyprus Pound', 'CYP', 1519583748, 1, 1519583748, 1),
(40, 'Danish Krone', 'DKK', 1519583748, 1, 1519583748, 1),
(41, 'Dominican Peso', 'DOP', 1519583748, 1, 1519583748, 1),
(42, 'Algerian Dinar', 'DZD', 1519583748, 1, 1519583748, 1),
(43, 'Ecuador Sucre', 'ECS', 1519583748, 1, 1519583748, 1),
(44, 'Egyptian Pound', 'EGP', 1519583748, 1, 1519583748, 1),
(45, 'Estonian Kroon (EEK)', 'EEK', 1519583748, 1, 1519583748, 1),
(46, 'Ethiopian Birr', 'ETB', 1519583748, 1, 1519583748, 1),
(47, 'Euro', 'EUR', 1519583748, 1, 1519583748, 1),
(49, 'Fiji Dollar', 'FJD', 1519583748, 1, 1519583748, 1),
(50, 'Falkland Islands Pound', 'FKP', 1519583748, 1, 1519583748, 1),
(52, 'British Pound', 'GBP', 1519583748, 1, 1519583748, 1),
(53, 'Ghanaian Cedi', 'GHC', 1519583748, 1, 1519583748, 1),
(54, 'Gibraltar Pound', 'GIP', 1519583748, 1, 1519583748, 1),
(55, 'Gambian Dalasi', 'GMD', 1519583748, 1, 1519583748, 1),
(56, 'Guinea Franc', 'GNF', 1519583748, 1, 1519583748, 1),
(58, 'Guatemalan Quetzal', 'GTQ', 1519583748, 1, 1519583748, 1),
(59, 'Guinea-Bissau Peso', 'GWP', 1519583748, 1, 1519583748, 1),
(60, 'Guyanan Dollar', 'GYD', 1519583748, 1, 1519583748, 1),
(61, 'Hong Kong Dollar', 'HKD', 1519583748, 1, 1519583748, 1),
(62, 'Honduran Lempira', 'HNL', 1519583748, 1, 1519583748, 1),
(63, 'Haitian Gourde', 'HTG', 1519583748, 1, 1519583748, 1),
(64, 'Hungarian Forint', 'HUF', 1519583748, 1, 1519583748, 1),
(65, 'Indonesian Rupiah', 'IDR', 1519583748, 1, 1519583748, 1),
(66, 'Irish Punt', 'IEP', 1519583748, 1, 1519583748, 1),
(67, 'Israeli Shekel', 'ILS', 1519583748, 1, 1519583748, 1),
(68, 'Indian Rupee', 'INR', 1519583748, 1, 1519583748, 1),
(69, 'Iraqi Dinar', 'IQD', 1519583748, 1, 1519583748, 1),
(70, 'Iranian Rial', 'IRR', 1519583748, 1, 1519583748, 1),
(73, 'Jamaican Dollar', 'JMD', 1519583748, 1, 1519583748, 1),
(74, 'Jordanian Dinar', 'JOD', 1519583748, 1, 1519583748, 1),
(75, 'Japanese Yen', 'JPY', 1519583748, 1, 1519583748, 1),
(76, 'Kenyan Schilling', 'KES', 1519583748, 1, 1519583748, 1),
(77, 'Kampuchean (Cambodian) Riel', 'KHR', 1519583748, 1, 1519583748, 1),
(78, 'Comoros Franc', 'KMF', 1519583748, 1, 1519583748, 1),
(79, 'North Korean Won', 'KPW', 1519583748, 1, 1519583748, 1),
(80, '(South) Korean Won', 'KRW', 1519583748, 1, 1519583748, 1),
(81, 'Kuwaiti Dinar', 'KWD', 1519583748, 1, 1519583748, 1),
(82, 'Cayman Islands Dollar', 'KYD', 1519583748, 1, 1519583748, 1),
(83, 'Lao Kip', 'LAK', 1519583748, 1, 1519583748, 1),
(84, 'Lebanese Pound', 'LBP', 1519583748, 1, 1519583748, 1),
(85, 'Sri Lanka Rupee', 'LKR', 1519583748, 1, 1519583748, 1),
(86, 'Liberian Dollar', 'LRD', 1519583748, 1, 1519583748, 1),
(87, 'Lesotho Loti', 'LSL', 1519583748, 1, 1519583748, 1),
(89, 'Libyan Dinar', 'LYD', 1519583748, 1, 1519583748, 1),
(90, 'Moroccan Dirham', 'MAD', 1519583748, 1, 1519583748, 1),
(91, 'Malagasy Franc', 'MGF', 1519583748, 1, 1519583748, 1),
(92, 'Mongolian Tugrik', 'MNT', 1519583748, 1, 1519583748, 1),
(93, 'Macau Pataca', 'MOP', 1519583748, 1, 1519583748, 1),
(94, 'Mauritanian Ouguiya', 'MRO', 1519583748, 1, 1519583748, 1),
(95, 'Maltese Lira', 'MTL', 1519583748, 1, 1519583748, 1),
(96, 'Mauritius Rupee', 'MUR', 1519583748, 1, 1519583748, 1),
(97, 'Maldive Rufiyaa', 'MVR', 1519583748, 1, 1519583748, 1),
(98, 'Malawi Kwacha', 'MWK', 1519583748, 1, 1519583748, 1),
(99, 'Mexican Peso', 'MXP', 1519583748, 1, 1519583748, 1),
(100, 'Malaysian Ringgit', 'MYR', 1519583748, 1, 1519583748, 1),
(101, 'Mozambique Metical', 'MZM', 1519583748, 1, 1519583748, 1),
(102, 'Namibian Dollar', 'NAD', 1519583748, 1, 1519583748, 1),
(103, 'Nigerian Naira', 'NGN', 1519583748, 1, 1519583748, 1),
(104, 'Nicaraguan Cordoba', 'NIO', 1519583748, 1, 1519583748, 1),
(105, 'Norwegian Kroner', 'NOK', 1519583748, 1, 1519583748, 1),
(106, 'Nepalese Rupee', 'NPR', 1519583748, 1, 1519583748, 1),
(107, 'New Zealand Dollar', 'NZD', 1519583748, 1, 1519583748, 1),
(108, 'Omani Rial', 'OMR', 1519583748, 1, 1519583748, 1),
(109, 'Panamanian Balboa', 'PAB', 1519583748, 1, 1519583748, 1),
(110, 'Peruvian Nuevo Sol', 'PEN', 1519583748, 1, 1519583748, 1),
(111, 'Papua New Guinea Kina', 'PGK', 1519583748, 1, 1519583748, 1),
(112, 'Philippine Peso', 'PHP', 1519583748, 1, 1519583748, 1),
(113, 'Pakistan Rupee', 'PKR', 1519583748, 1, 1519583748, 1),
(114, 'Polish Zloty', 'PLN', 1519583748, 1, 1519583748, 1),
(116, 'Paraguay Guarani', 'PYG', 1519583748, 1, 1519583748, 1),
(117, 'Qatari Rial', 'QAR', 1519583748, 1, 1519583748, 1),
(118, 'Romanian Leu', 'RON', 1519583748, 1, 1519583748, 1),
(119, 'Rwanda Franc', 'RWF', 1519583748, 1, 1519583748, 1),
(120, 'Saudi Arabian Riyal', 'SAR', 1519583748, 1, 1519583748, 1),
(121, 'Solomon Islands Dollar', 'SBD', 1519583748, 1, 1519583748, 1),
(122, 'Seychelles Rupee', 'SCR', 1519583748, 1, 1519583748, 1),
(123, 'Sudanese Pound', 'SDP', 1519583748, 1, 1519583748, 1),
(124, 'Swedish Krona', 'SEK', 1519583748, 1, 1519583748, 1),
(125, 'Singapore Dollar', 'SGD', 1519583748, 1, 1519583748, 1),
(126, 'St. Helena Pound', 'SHP', 1519583748, 1, 1519583748, 1),
(127, 'Sierra Leone Leone', 'SLL', 1519583748, 1, 1519583748, 1),
(128, 'Somali Schilling', 'SOS', 1519583748, 1, 1519583748, 1),
(129, 'Suriname Guilder', 'SRG', 1519583748, 1, 1519583748, 1),
(130, 'Sao Tome and Principe Dobra', 'STD', 1519583748, 1, 1519583748, 1),
(131, 'Russian Ruble', 'RUB', 1519583748, 1, 1519583748, 1),
(132, 'El Salvador Colon', 'SVC', 1519583748, 1, 1519583748, 1),
(133, 'Syrian Potmd', 'SYP', 1519583748, 1, 1519583748, 1),
(134, 'Swaziland Lilangeni', 'SZL', 1519583748, 1, 1519583748, 1),
(135, 'Thai Baht', 'THB', 1519583748, 1, 1519583748, 1),
(136, 'Tunisian Dinar', 'TND', 1519583748, 1, 1519583748, 1),
(137, 'Tongan Paanga', 'TOP', 1519583748, 1, 1519583748, 1),
(138, 'East Timor Escudo', 'TPE', 1519583748, 1, 1519583748, 1),
(139, 'Turkish Lira', 'TRY', 1519583748, 1, 1519583748, 1),
(140, 'Trinidad and Tobago Dollar', 'TTD', 1519583748, 1, 1519583748, 1),
(141, 'Taiwan Dollar', 'TWD', 1519583748, 1, 1519583748, 1),
(142, 'Tanzanian Schilling', 'TZS', 1519583748, 1, 1519583748, 1),
(143, 'Uganda Shilling', 'UGX', 1519583748, 1, 1519583748, 1),
(144, 'US Dollar', 'USD', 1519583748, 1, 1519583748, 1),
(145, 'Uruguayan Peso', 'UYU', 1519583748, 1, 1519583748, 1),
(146, 'Venezualan Bolivar', 'VEF', 1519583748, 1, 1519583748, 1),
(147, 'Vietnamese Dong', 'VND', 1519583748, 1, 1519583748, 1),
(148, 'Vanuatu Vatu', 'VUV', 1519583748, 1, 1519583748, 1),
(149, 'Samoan Tala', 'WST', 1519583748, 1, 1519583748, 1),
(150, 'CommunautÃƒÂ© FinanciÃƒÂ¨re Africaine BEAC, Francs', 'XAF', 1519583748, 1, 1519583748, 1),
(151, 'Silver, Ounces', 'XAG', 1519583748, 1, 1519583748, 1),
(152, 'Gold, Ounces', 'XAU', 1519583748, 1, 1519583748, 1),
(153, 'East Caribbean Dollar', 'XCD', 1519583748, 1, 1519583748, 1),
(154, 'International Monetary Fund (IMF) Special Drawing Rights', 'XDR', 1519583748, 1, 1519583748, 1),
(155, 'CommunautÃƒÂ© FinanciÃƒÂ¨re Africaine BCEAO - Francs', 'XOF', 1519583748, 1, 1519583748, 1),
(156, 'Palladium Ounces', 'XPD', 1519583748, 1, 1519583748, 1),
(157, 'Comptoirs FranÃƒÂ§ais du Pacifique Francs', 'XPF', 1519583748, 1, 1519583748, 1),
(158, 'Platinum, Ounces', 'XPT', 1519583748, 1, 1519583748, 1),
(159, 'Democratic Yemeni Dinar', 'YDD', 1519583748, 1, 1519583748, 1),
(160, 'Yemeni Rial', 'YER', 1519583748, 1, 1519583748, 1),
(161, 'New Yugoslavia Dinar', 'YUD', 1519583748, 1, 1519583748, 1),
(162, 'South African Rand', 'ZAR', 1519583748, 1, 1519583748, 1),
(163, 'Zambian Kwacha', 'ZMK', 1519583748, 1, 1519583748, 1),
(164, 'Zaire Zaire', 'ZRZ', 1519583748, 1, 1519583748, 1),
(165, 'Zimbabwe Dollar', 'ZWD', 1519583748, 1, 1519583748, 1),
(166, 'Slovak Koruna', 'SKK', 1519583748, 1, 1519583748, 1),
(167, 'Armenian Dram', 'AMD', 1519583748, 1, 1519583748, 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `expense_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` varchar(55) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`expense_id`, `name`, `description`, `amount`, `created_on`, `timestamp`, `created_by`, `updated_by`, `month`, `year`) VALUES
(9, 'Raseed Parchi K liye bayana', '', '1000', 1568540137, 1568540137, 1, 1, 'August', 2019),
(10, 'Abbasi Karaya', '', '20000', 1568540207, 1568540207, 1, 1, 'August', 2019),
(11, 'Waqas expense', '', '11050', 1568540249, 1568540249, 1, 1, 'August', 2019),
(12, 'Pankha', '', '1050', 1568540269, 1568540269, 1, 1, 'August', 2019),
(13, '210 wale ko wapis kiye', '', '3000', 1568540291, 1568540291, 1, 1, 'August', 2019),
(14, 'Raseed k liye diye', '', '2000', 1568540314, 1568540314, 1, 1, 'August', 2019),
(15, 'Dhobi expenses', '', '3000', 1568540333, 1568540333, 1, 1, 'August', 2019),
(16, 'Chokidaar', '', '1000', 1568540372, 1568540372, 1, 1, 'August', 2019),
(17, 'Akhbaar wale', '', '610', 1568540415, 1568540415, 1, 1, 'August', 2019),
(18, 'Bijli ka meter repair', '', '1000', 1568540461, 1568540461, 1, 1, 'August', 2019),
(19, 'Safai wala', '', '150', 1568540480, 1568540480, 1, 1, 'August', 2019),
(20, 'Holder button', '', '150', 1568540504, 1568540504, 1, 1, 'August', 2019),
(22, 'Safai walay ka pocha', '', '150', 1568540527, 1568540527, 1, 1, 'August', 2019),
(23, 'Bijli ka samaan', '', '2000', 1568540533, 1568540533, 1, 1, 'August', 2019),
(24, 'Molvi Shabeer', '', '5000', 1568540557, 1568540557, 1, 1, 'August', 2019),
(27, 'Safai wala', '', '6000', 1568540594, 1568540594, 1, 1, 'August', 2019),
(28, 'bijli muramat mazdoori', '', '2000', 1568540951, 1568540951, 1, 1, 'August', 2019),
(29, 'capacitor of Fan', '', '120', 1568541016, 1568541016, 1, 1, 'August', 2019),
(31, 'dhobi ko diay', '', '5000', 1568541239, 1568541239, 1, 1, 'August', 2019),
(32, 'cook moeen', '', '500', 1568541628, 1568541628, 1, 1, 'August', 2019),
(33, 'Cook Haseeb', '', '4000', 1568541653, 1568541653, 1, 1, 'August', 2019),
(34, 'Cook Munner ', 'advance 1000\r\ndusra 1000', '2000', 1568541746, 1568541746, 1, 1, 'August', 2019),
(35, 'bijli ki taar', '', '1500', 1568541773, 1568541773, 1, 1, 'August', 2019),
(36, 'bijli muramat mazdoori', '', '2000', 1568541815, 1568541815, 1, 1, 'August', 2019),
(37, 'burhan ki naqad', 'naqad', '6000', 1568541843, 1568541887, 1, 1, 'August', 2019),
(38, 'tandoor pay kharcha', '', '3100', 1568541864, 1568541864, 1, 1, 'August', 2019),
(39, 'burhan ki tankhwa say baqaya', '', '1000', 1568541913, 1568541913, 1, 1, 'August', 2019),
(40, 'burhan k advance', '', '200', 1568541934, 1568541934, 1, 1, 'August', 2019),
(41, 'safai waly ko advance', '', '1000', 1568541966, 1568541966, 1, 1, 'August', 2019),
(42, 'capacitor of Fan', '', '160', 1568541989, 1568541989, 1, 1, 'August', 2019),
(43, 'tayyab ko diay', '', '500', 1568542056, 1568542056, 1, 1, 'August', 2019),
(44, 'photocopy', '', '80', 1568542075, 1568542075, 1, 1, 'August', 2019),
(45, 'bijli theek krwai', '', '500', 1568542105, 1568542105, 1, 1, 'August', 2019),
(46, 'safai wala rafaqat ka advance', '', '2000', 1568542130, 1568542130, 1, 1, 'August', 2019),
(47, 'welding darwaza', '', '400', 1568542151, 1568542151, 1, 1, 'August', 2019),
(48, 'bijli waly', 'bijli waly burhan', '400', 1568542189, 1568542189, 1, 1, 'August', 2019),
(49, 'photocopy likhai', '', '150', 1568542215, 1568542215, 1, 1, 'August', 2019),
(50, 'filter pani waly', '', '350', 1568542234, 1568542234, 1, 1, 'August', 2019),
(51, 'abbasi sahab ko kiraya dia', '', '133500', 1568542257, 1568542257, 1, 1, 'August', 2019),
(53, 'molvi khan muhammad', '', '600', 1568542310, 1568542310, 1, 1, 'August', 2019),
(54, 'pankhay mramat', '', '1500', 1568542332, 1568542332, 1, 1, 'August', 2019),
(55, 'capacitor of Fan', '', '100', 1568542360, 1568542360, 1, 1, 'August', 2019),
(57, 'abbasi sahb ko rant dia', '12-9-2019', '317500', 1568708045, 1570985305, 1, 1, 'September', 2019),
(62, 'mass expense all to zee', '\r\n1-9-2019', '139990', 1570952767, 1570986935, 1, 1, 'September', 2019),
(64, 'Dagar expense all to zee', 'without staff expense', '42870', 1570991849, 1570991849, 1, 1, 'September', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `id_type`
--

CREATE TABLE `id_type` (
  `id_type_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_type`
--

INSERT INTO `id_type` (`id_type_id`, `name`, `created_on`, `created_by`, `timestamp`, `updated_by`) VALUES
(4, 'CNIC', 1566998805, 1, 1566998805, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` int(11) NOT NULL DEFAULT 0,
  `module_name` varchar(55) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `module_title` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_name`, `created_on`, `created_by`, `timestamp`, `updated_by`, `module_title`) VALUES
(1, 'dashboard', 1520015400, 1, 1520015400, 1, 'Dashboard'),
(2, 'rooms', 1520015400, 1, 1520015400, 1, 'Rooms'),
(3, 'beds', 1520015400, 1, 1520015400, 1, 'Beds'),
(4, 'tenants', 1520015400, 1, 1520015400, 1, 'Tenants'),
(5, 'utility_bills', 1520015400, 1, 1520015400, 1, 'Utility Bills'),
(6, 'expenses', 1520015400, 1, 1520015400, 1, 'Expesnes'),
(7, 'staff', 1520015400, 1, 1520015400, 1, 'Staff'),
(8, 'staff_payroll', 1520015400, 1, 1520015400, 1, 'Staff Payroll'),
(9, 'generate_rent', 1520015400, 1, 1520015400, 1, 'Generate Rent'),
(10, 'rents', 1520015400, 1, 1520015400, 1, 'Rents'),
(11, 'account', 1520015400, 1, 1520015400, 1, 'Account'),
(12, 'settings', 1520015400, 1, 1520015400, 1, 'Settings');

-- --------------------------------------------------------

--
-- Table structure for table `profession`
--

CREATE TABLE `profession` (
  `profession_id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profession`
--

INSERT INTO `profession` (`profession_id`, `name`, `created_on`, `timestamp`, `created_by`, `updated_by`) VALUES
(55, 'Student', 1566998730, 1566998730, 1, 1),
(56, 'Employee', 1566998785, 1566998785, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_number` varchar(55) DEFAULT NULL,
  `floor` varchar(55) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_number`, `floor`, `remarks`, `timestamp`, `created_on`, `updated_by`, `created_by`) VALUES
(34, 'G1', 'Ground', '', 1568645178, 1567881643, 1, 1),
(35, 'G2', 'Ground', '', 1568645286, 1567881651, 1, 1),
(36, 'G3', 'Ground', '', 1568645308, 1567881657, 1, 1),
(37, 'G4', 'Ground', '', 1568645322, 1567881666, 1, 1),
(38, '101', '1st', '', 1567881718, 1567881718, 1, 1),
(39, '102', '1st', '', 1567881725, 1567881725, 1, 1),
(40, '103', '1st', '', 1567881734, 1567881734, 1, 1),
(41, '104', '1st', '', 1567881742, 1567881742, 1, 1),
(42, '105', '1st', '', 1567881749, 1567881749, 1, 1),
(43, '106', '1st', '', 1567881756, 1567881756, 1, 1),
(44, '107', '1st', '', 1567881762, 1567881762, 1, 1),
(45, '108', '1st', '', 1568299142, 1568299142, 1, 1),
(46, '109', '1st', '', 1568299158, 1568299158, 1, 1),
(47, '110', '1st', '', 1568299168, 1568299168, 1, 1),
(48, '201', '2nd', '', 1568299186, 1568299186, 1, 1),
(49, '202', '2nd', '', 1568299193, 1568299193, 1, 1),
(50, '203', '2nd', '', 1568299202, 1568299202, 1, 1),
(51, '204', '2nd', '', 1568299221, 1568299221, 1, 1),
(52, '205', '2nd', '', 1568299237, 1568299237, 1, 1),
(53, '206', '2nd', '', 1568299244, 1568299244, 1, 1),
(54, '207', '2nd', '', 1568299252, 1568299252, 1, 1),
(55, '208', '2nd', '', 1568299259, 1568299259, 1, 1),
(56, '209', '2nd', '4 seater', 1568432296, 1568432296, 1, 1),
(57, '210', '2nd', '2 Seater', 1568432322, 1568432322, 1, 1),
(58, '301-A', '3rd', 'Partition\r\n3 Seats', 1568432376, 1568432376, 1, 1),
(59, '301-B', '3rd', 'Partition\r\n2 Seats', 1568432396, 1568432396, 1, 1),
(60, '302-A', '3rd', 'Partition\r\n3 Seats', 1568432426, 1568432426, 1, 1),
(61, '302-B', '3rd', 'Partition\r\n2 Seats', 1568432446, 1568432446, 1, 1),
(62, '303-A', '3rd', 'Partition\r\n3 Seats', 1568432465, 1568432465, 1, 1),
(63, '303-B', '3rd', 'Partition\r\n2 Seats', 1568432481, 1568432481, 1, 1),
(64, '304-A', '3rd', 'Partition\r\n2 Seats', 1568432503, 1568432503, 1, 1),
(65, '304-B', '3rd', 'Partition\r\n2 Seats', 1568432519, 1568432519, 1, 1),
(66, '305-A', '3rd', 'Partition\r\n3 Seats', 1568432542, 1568432542, 1, 1),
(67, '305-B', '3rd', 'Partition\r\n2 Seats', 1568432562, 1568432562, 1, 1),
(68, '306', '3rd', '4 seater\r\n', 1568432581, 1568432581, 1, 1),
(69, '307', '3rd', '4 seater', 1568432596, 1568432596, 1, 1),
(70, '308', '3rd', '4 seater', 1568432613, 1568432613, 1, 1),
(71, '309', '3rd', '', 1569056493, 1569056493, 1, 1),
(72, '310', '3rd', '', 1569056515, 1569056515, 1, 1),
(73, 'GB1', 'basment', '', 1569057295, 1569056582, 1, 1),
(74, 'B3', 'basment', '', 1569057380, 1569056602, 1, 1),
(75, 'b6', 'basment', '', 1569057402, 1569056620, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `name`, `content`, `created_on`, `created_by`, `timestamp`, `updated_by`) VALUES
(1, 'system_name', 'Zam Zam Hostel', 1519579495, 1, 1519759752, 1),
(2, 'currency', 'PKR', 1519579495, 1, 1519759752, 1),
(3, 'timezone', 'Asia/Karachi', 1519579495, 1, 1519759752, 1),
(4, 'favicon', '16,16.png', 1519579495, 1, 1563473249, 1),
(5, 'tagline', 'Hostel Management System', 1519579495, 1, 1519759752, 1),
(6, 'address', 'Stadium Rd, Pindora<br>Rawalpindi', 1521785545, 1, 1521785545, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `role` varchar(55) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `mobile_number` varchar(55) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `name`, `role`, `timestamp`, `remarks`, `created_on`, `mobile_number`, `created_by`, `updated_by`, `status`) VALUES
(7, 'cook maneer', 'cook', 1568632849, '20000', 1568632849, '03075381445', 1, 1, 1),
(8, 'haji lateef sahb', 'manager', 1568879534, '', 1568879534, '03125978937', 1, 1, 1),
(9, 'rafaqat ali', 'safai ', 1569841653, '', 1568879674, '03405793130', 1, 1, 1),
(10, 'burhan ', 'manager', 1570951676, '', 1570951676, '031500892', 1, 1, 1),
(11, 'cook moean', 'dandori', 1570988246, '', 1570988246, '03170507007', 1, 1, 1),
(12, 'cook tariq', 'dandori', 1570988689, '', 1570988689, '03175788002', 1, 1, 1),
(13, 'wachman dobi', 'dobi  ', 1570989454, '', 1570989454, '03359700824', 1, 1, 1),
(14, 'hulper owase', 'halper', 1570990155, '', 1570990155, '03144103224', 1, 1, 1),
(15, 'Haji jamil', 'stuff', 1570990995, '', 1570990995, '03170507007', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_salary`
--

CREATE TABLE `staff_salary` (
  `staff_salary_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` varchar(55) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_salary`
--

INSERT INTO `staff_salary` (`staff_salary_id`, `staff_id`, `status`, `month`, `year`, `amount`, `timestamp`, `created_on`, `updated_by`, `created_by`) VALUES
(7, 7, 1, 'July', 2019, '18000', 1568880007, 1568880007, 1, 1),
(8, 8, 1, 'July', 2019, '14000', 1568880068, 1568880068, 1, 1),
(9, 9, 1, 'August', 2019, '10000', 1568880110, 1568880110, 1, 1),
(10, 10, 1, 'September', 2019, '6000', 1570987402, 1570951727, 1, 1),
(13, 11, 1, 'September', 2019, '7000', 1570988312, 1570988312, 1, 1),
(14, 12, 1, 'September', 2019, '6300', 1570988812, 1570988812, 1, 1),
(15, 7, 1, 'September', 2019, '20000', 1570989250, 1570989250, 1, 1),
(16, 13, 1, 'September', 2019, '12000', 1570989506, 1570989506, 1, 1),
(17, 9, 1, 'September', 2019, '11200', 1570989888, 1570989806, 1, 1),
(18, 14, 1, 'September', 2019, '11500', 1570990228, 1570990228, 1, 1),
(19, 15, 1, 'September', 2019, '10000', 1570991053, 1570991053, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `tenant_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `mobile_number` varchar(55) DEFAULT NULL,
  `id_number` varchar(55) DEFAULT NULL,
  `image_link` varchar(255) DEFAULT NULL,
  `profession_id` int(11) DEFAULT NULL,
  `emergency_person` varchar(55) DEFAULT NULL,
  `emergency_contact` varchar(55) DEFAULT NULL,
  `home_address` varchar(255) DEFAULT NULL,
  `bed_id` int(11) DEFAULT NULL,
  `extra_note` varchar(255) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `work_address` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `id_type_id` int(11) DEFAULT NULL,
  `bed_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`tenant_id`, `name`, `email`, `mobile_number`, `id_number`, `image_link`, `profession_id`, `emergency_person`, `emergency_contact`, `home_address`, `bed_id`, `extra_note`, `timestamp`, `status`, `created_on`, `work_address`, `created_by`, `updated_by`, `id_type_id`, `bed_number`) VALUES
(62, 'Sajid Abbas', 'sajidabbasbispisd@gmail.com', '03017448700', '220328631563', 'sajid_1568373180.jpeg', 56, 'Arshan Iqbal', '03037430728', 'Not Understandable<br>', 94, '', 1568373180, 1, 1568373180, '<br>', 1, 1, 4, 'A of 204'),
(63, 'Muhammad Zahid', 'noemail@zamzamhostel.com', '03168783866', '1310108989011', 'muhammad_1568373475.jpeg', 55, 'Ahwal Khan', '03009114831', 'Islam Kot, Abbotabadd<br>', 165, '', 1569053832, 1, 1568373475, '<br>', 1, 1, 4, 'B of G3'),
(64, 'Abdul Wahab Sajid', 'noemail1@zamzamhostel.com', '03499705688', '6110107397633', 'abdul_1568373878.jpeg', 55, 'Sajid Mehmood', '03005184654', 'Dhok Baba Fazal Dakhali Jand Najjar Tehsil Gujar Khan<br>', 0, '', 1568743616, 0, 1568373878, '<br>', 1, 1, 4, 'A of 206'),
(65, 'ShifaUllah', 'noemail2@zamzamhostel.com', '03416853653', '3440119180445', 'shifaullah_1568374096.jpeg', 56, 'Not Understandable', '03036844861', 'Not Understandable<br>', 108, '', 1568374097, 1, 1568374097, 'Shifa International Hospital<br>', 1, 1, 4, 'A of 207'),
(66, 'Muhammad Shair Joni', 'noemail3@zamzamhostel.com', '03017479799', '2220222593229', 'muhammad_1568374284.jpeg', 55, 'Malik Aashiq', '0344855351', 'Not Understandable<br>', 109, '', 1568374284, 1, 1568374284, 'Allama Iqbal Open University<br>', 1, 1, 4, 'B of 207'),
(67, 'Muhammad Amin', 'noemail4@zamzamhostel.com', '03369529060', '1410185075193', 'muhammad_1568374469.jpeg', 55, 'Rehmat Karim', '03329683609', 'Hira Banda hangu<br>', 0, '', 1569306837, 0, 1568374469, 'Preston University<br>', 1, 1, 4, 'C of 207'),
(68, 'Ghulam Nabi', 'noemail5@zamzamhostel.com', '03005346631', '3310422000013', 'ghulam_1568374726.jpeg', 55, 'Muhammad Buta', '03425148655', 'Shak Number 98 Tehsil Jaranwala Zila Faislabaad<br>', 111, '', 1568374726, 1, 1568374726, 'Shifa International Islamabad<br>', 1, 1, 4, 'D of 207'),
(69, 'Waleed Ahmed', 'noemail6@zamzamhostel.com', '03053247003', '4520699732313', 'waleed_1568375043.jpeg', 56, 'Abdul Latif', '03000810916', 'Not Understandable<br>', 181, '', 1569230252, 1, 1568375043, 'Shifa International Islamabad<br>', 1, 1, 4, 'C of 103'),
(70, 'Nasir Siddique', 'noemail7@zamzamhostel.com', '03121129005', '3710427805781', 'nasir_1568375301.jpeg', 55, 'Muhammad Siddique', '03165290911', 'Dhok Ghaghi, tehsil Jand Zila Attock Thana Aiman<br>', 78, '', 1568375301, 1, 1568375301, 'IMPGCC H-8-4<br>', 1, 1, 4, 'A of 110'),
(71, 'Basit Iqbal', 'noemail8@zamzamhostel.com', '03015402272', '3720153819039', 'basit_1568375473.jpeg', 56, 'Muhammad Iqbal', '03125050462', 'Daak Khana Khas, Farid Kar Zila Chakwaal<br>', 0, '', 1569220605, 0, 1568375473, 'Shifa International Islamabad<br>', 1, 1, 4, 'A of 108'),
(72, 'Muhammad Irfan', 'noemail9@zamzamhostel.com', '03319990073', '3810311263051', 'muhammad_1568375615.jpeg', 55, 'Ghulam Muhammad', '03458964244', 'Jaranwala tehsil - Not understandable<br>', 0, '', 1568830649, 0, 1568375615, '<br>', 1, 1, 4, 'A of 203'),
(73, 'AhsanUllah', 'noemail10@zamzamhostel.com', '03335408103', '3740272534723', 'ahsanullah_1568375828.jpeg', 56, 'Raja Muhammad Safeer', '03335408103', 'Not Understandable<br>', 126, '', 1568831378, 1, 1568375828, 'Telenor<br>', 1, 1, 4, 'A of 307'),
(74, 'Syed Shaheer Hussain', 'shaheerhassan@zamzamhostel.com', '03131919517', '1620236805447', 'syed_1568437090.jpg', 55, 'Syed Shahid Hussain', '03005722957', 'Muhalla saadat ismailiya, Dak khana khaas, Tehsil o zila sawabi<br>', 134, '', 1568437090, 1, 1568437090, '<br>', 1, 1, 4, 'A of 301-A'),
(75, 'Fawad Ahmad Abbasi', 'fawahahmad@zamzamhostel.com', '03428343957', '6110177768163', 'fawad_1568437818.jpg', 55, 'Fayaz Ahmad Abbasi', '03120000000', 'Zila Tehsil Abbotabad, Saproot Gaon Abassiyan<br>', 144, '', 1568437818, 1, 1568437818, '<br>', 1, 1, 4, 'A of 303-A'),
(76, 'Syed Ameer Ahsan ullah', 'ameer@zamzamhostel.com', '03159462927', '6110171320037', 'syed_1568438106.jpg', 55, 'Syed Ameer Mukhtiyar', '03159462927', 'Govt Primary School, Muhib bazda MArdan<br>', 130, '', 1568438106, 1, 1568438106, '<br>', 1, 1, 4, 'A of 308'),
(77, 'Zair Shah', 'zair@zamzamhostel.com', '03085475853', '1710280906849', 'zair_1568438435.jpg', 55, 'Ajmal Shah', '03459406471', 'Tehsil Tangi Zila Char sadda<br>', 0, '', 1569222812, 0, 1568438435, '<br>', 1, 1, 4, 'B of 301-A'),
(78, 'Sajjad Ali', 'sajjadali@zamzamhostel.com', '03452745918', '1234562156', 'sajjad_1568439006.jpg', 55, 'Sami Ullah', '03150918750', 'Chak 87, Tehsil o Zila Sahiwal<br>', 139, '', 1568439006, 1, 1568439006, '<br>', 1, 1, 4, 'A of 302-A'),
(79, 'Ahsan Zia', 'ahsanzia@zamzamhostel.com', '03004708787', '3650297417459', 'ahsan_1568471796.jpg', 55, 'Zia ul haq', '03009695536', 'Zila sahiwal<br>', 131, '', 1568471796, 1, 1568471796, '<br>', 1, 1, 4, 'B of 308'),
(80, 'Qasim Rasheed', 'qasimrashid@zamzamhostel.com', '03126919791', '3630291045341', 'qasim_1568472119.jpg', 55, 'Rasheed Ahmed', '0301 7454842', 'House 2212, soorat shah wala, multan<br>', 140, '', 1568472119, 1, 1568472119, '<br>', 1, 1, 4, 'B of 302-A'),
(81, 'Muhammad Afzal', 'muhammadafzal@zamzamhostel.com', '03045185463', '3730334289921', 'muhammad_1568472386.jpg', 55, 'Pervaiz', '03248900171', 'Zila Jehlum<br>', 0, '', 1569302904, 0, 1568472386, '<br>', 1, 1, 4, 'A of 304-B'),
(82, 'abdul rasheed', 'abdulrasheed@zamzamhostel.com', '03005925468', '1730159035961', 'abdul_1568472745.jpg', 55, 'Ghulam waqar', '03156566222', 'Phase 3, street 1, house 22, Siyat abad, peshawar<br>', 116, '', 1568472745, 1, 1568472745, '<br>', 1, 1, 4, 'A of 210'),
(83, 'Mujab ur rehman', 'muhiburrehman@zamzamhostel.com', '03045528011', '3740184287167', 'mhubi_1568472974.jpg', 55, 'Adnan Ahmad', '03025100036', 'Gujar khan<br>', 0, '01-09-2019', 1570951949, 0, 1568472974, '<br>', 1, 1, 4, 'C of 102'),
(84, 'muhammad irfan', 'muhammadirfan@zamzamhostel.com', '03458964244', '3810311263051', 'muhammad_1568473428.jpg', 55, 'Ghulam Muhammad', '03459990073', 'bakhar<br>', 98, '', 1569506282, 1, 1568473428, '<br>', 1, 1, 4, 'E of 204'),
(85, 'Basit Ali', 'basitali@zamzamhostel.com', '03111519315', '1620109414083', 'basit_1568474009.jpg', 55, 'Muhammad Qamar', '03118989110', 'Sawabi<br>', 154, '', 1568474009, 1, 1568474009, '<br>', 1, 1, 4, 'B of 305-B'),
(86, 'ahsan ullah', 'ahsanullah@zamzamhostel.com', '03338681161', '3220390859575', 'ahsan_1568474196.jpg', 56, 'Example', '123123', 'Muhallah eid gaah, ward number 5, Tehsil o zila Laiyah<br>', 112, '', 1568474196, 1, 1568474196, '<br>', 1, 1, 4, 'A of 208'),
(87, 'Muhammad Awais', 'mawais@zamzamhostel.com', '03006078983', '3820170773847', 'muhammad_1568474367.jpg', 55, 'Muhammad Anwar', '03006078983', 'Khushaab<br>', 146, '', 1568474367, 1, 1568474367, '<br>', 1, 1, 4, 'C of 303-A'),
(88, 'Muhammad Ramzan', 'ramzan@zamzamhostel.com', '03466622357', '4530296036267', 'muhammad_1568474546.jpg', 55, 'Khan Muhammad', '03449541531', 'Makan number F-1, Muhalla gawal mandi, rawalpindi<br>', 0, '', 1569311486, 0, 1568474546, '<br>', 1, 1, 4, 'C of 308'),
(89, 'Muhammad Usama', 'musama@zamzamhostel.com', '030241540931', '3820199508697', 'muhammad_1568474757.jpg', 55, 'Muhammad Uzair', '03086632589', 'Khushaab<br>', 0, '', 1568743939, 0, 1568474757, '<br>', 1, 1, 4, 'A of 305-A'),
(90, 'Inaam ul haq qureshi', 'qureshi@zamzamhostel.com', '03358405960', '3740233180141', 'inaam_1568474971.jpg', 55, 'Muhammad Zareef Qureshi', '03365358562', 'Rawalpindi<br>', 142, '', 1568474971, 1, 1568474971, '<br>', 1, 1, 4, 'A of 302-B'),
(91, 'Muhammad Amir Afzal', 'amirafzal@zamzamhostel.com', '03440531073', '8120282225705', 'muhammad_1568475137.jpg', 55, 'Muhammad Afzal', '03430531254', 'Azaad kashmir<br>', 0, '', 1569069526, 0, 1568475137, '<br>', 1, 1, 4, 'D of 308'),
(92, 'Ali ahsan', 'aliahsan@zamzamhostel.com', '03456138872', '4220103424481', 'ali_1568475642.jpg', 55, 'Abdul razzaq', '03102663915', 'Karachi<br>', 113, '', 1568475642, 1, 1568475642, '<br>', 1, 1, 4, 'B of 208'),
(93, 'Muhammad Kashif', 'muhammadkashif@zamzamhostel.com', '03465415492', '8210158707635', 'muhammad_1568476003.jpg', 55, 'Arif khan', '03453362704', 'azad kashmir<br>', 0, '', 1569506138, 0, 1568476003, '<br>', 1, 1, 4, 'C of 301-A'),
(94, 'kanyyi gee', 'confuji@zamzamhostel.com', '03154861522', '4510349632147', 'confu_1568476340.jpg', 55, 'Chanku ji', '03053515600', 'Sindh<br>', 137, '', 1569307180, 1, 1568476340, '<br>', 1, 1, 4, 'A of 301-B'),
(95, 'Naeem Hussain', 'naeem@zamzamhostel.com', '03420799127', '8120307703943', 'naeem_1568476541.jpg', 55, 'Gulzaib khan', '03419493698', 'Not understanable<br>', 0, '', 1569507063, 0, 1568476541, '<br>', 1, 1, 4, 'B of 305-A'),
(96, 'Riyaz Ahmed', 'riyazahmed@zamzamhostel.com', '03139166529', '3620221941565', 'riyaz_1568476776.jpg', 55, 'Tariq Ahmed', '03349443103', 'Sawabi<br>', 152, '', 1568476776, 1, 1568476776, '<br>', 1, 1, 4, 'B of 304-B'),
(97, 'M sajad', 'masajad@zamzamhsotel.com', '03335010620', '1410158732897', 'm_1568477130.jpg', 55, 'Shah Khalid', '03329666808', 'Hangu<br>', 118, '', 1568477130, 1, 1568477130, '<br>', 1, 1, 4, 'A of 209'),
(98, 'M amin', 'mamin@zamzamhsotel.com', '03369529060', '1410185075193', 'm_1568477511.jpg', 55, 'Sha kahlid', '03329666808', 'Hangu<br>', 119, '', 1568477511, 1, 1568477511, '<br>', 1, 1, 4, 'B of 209'),
(99, 'shan khalid', 'shankhalid@zamzamhostel.com', '03428980783', '1410185075193', 'shan_1568477898.jpg', 55, 'Zahid', '03360333966', 'Hangu<br>', 120, '', 1568477898, 1, 1568477898, '<br>', 1, 1, 4, 'C of 209'),
(100, 'Taimoor Shahzad', 'taimoor@zamzamhostel.com', '03124141732', '3720375833231', 'taimoor_1568478213.jpg', 55, 'Muhammad Khan', '03025187361', 'Bariyaan<br>', 157, '', 1568478213, 1, 1568478213, '<br>', 1, 1, 4, 'C of 305-A'),
(101, 'Faizan Ahmed', 'faizanahmed@zamzamhostel.com', '03129380985', '1620225022171', 'faizan_1568479217.jpg', 55, 'Riyaz Ahmed', '03139106529', 'Sawabi<br>', 149, '', 1568479217, 1, 1568479217, '<br>', 1, 1, 4, 'A of 304-A'),
(102, 'Asad Saeed Ahmed', 'asadsaeed@zamzamhostel.com', '03335152746', '3320299773971', 'asad_1568479517.jpg', 55, 'Hafiz Muhammad Ali', '03457947114', 'Jhang<br>', 138, '', 1568479517, 1, 1568479517, '<br>', 1, 1, 4, 'B of 301-B'),
(103, 'Muhammad Tariq Ansari', 'noemail11@zamzamhostel.com', '03366479996', '3210290449371', 'muhammad_1568526624.jpeg', 55, 'Abdul Rehman', '03336466984', 'Dera Ghazi Khan, Allahabad Kaloni, Makaan no 492, Gali no 3<br>', 90, '', 1568526624, 1, 1568526624, 'Allama Iqbal Open University<br>', 1, 1, 4, 'B of 203'),
(104, 'Tanveer Ahmed', 'noemail12@zamzamhostel.com', '03082415347', '3820177269797', 'tanveer_1568526839.jpeg', 55, 'Ghulam Muhammad', '03082415347', 'DakKhana Khas, Ochaali Tehsil, ZIla Khushaab<br>', 91, '', 1568526839, 1, 1568526839, '<br>', 1, 1, 4, 'C of 203'),
(105, 'Muhammad Wahab Asif', 'noemail13@zamzamhostel.com', '03215428675', '3730126616443', 'muhammad_1568526987.jpeg', 56, 'Muhammad Asif', '03168854625', 'Moon Light, Ghar Mehal, Dina, Jhelum<br>', 74, '', 1568526987, 1, 1568526987, '<br>', 1, 1, 4, 'A of 109'),
(106, 'Hamza Rabani', 'noemail14@zamzamhostel.com', '03490575741', '3720309235459', 'hamza_1568527198.jpeg', 55, 'Ghulam Jelani', '03082810763', 'Mohala Kashmiri House no 85, Tila Gang, Zila Chakwaal<br>', 150, 'moved from 205 to 304', 1568642036, 1, 1568527198, 'PMAS Arid University<br>', 1, 1, 4, 'B of 304-A'),
(107, 'Jafar Iqbal', 'munna_khan9214@yahoo.com', '03037433720', '3220315237769', 'jafar_1568527357.jpeg', 56, 'Khadam Hussain', '03447116300', 'DakKhana Laiya Tehsil Zila Laiya<br>', 95, '', 1568527357, 1, 1568527357, 'Nayatek<br>', 1, 1, 4, 'B of 204'),
(108, 'Ali Ahsan', 'noemail15@zamzamhostel.com', '03456138872', '4220103424481', 'ali_1568527671.jpeg', 56, 'Abdul Razaaq', '03102663915', 'House D12-4 Mohala Jatt Lasik Park 41, Karachi<br>', 0, '', 1569222286, 0, 1568527671, '<br>', 1, 1, 4, 'C of 208'),
(109, 'Ossama Ali', 'noemail16@zamzamhostel.com', '03060517669', '3720382548155', 'ossama_1568527826.jpeg', 55, 'Muhammad Ashraf Iqbal', '03060517669', 'Mohala Jhaatala, Tehsil Tila Gang, Zila Chakwaal<br>', 0, '', 1569313504, 0, 1568527826, 'Arid University<br>', 1, 1, 4, 'B of 205'),
(110, 'Adnan Rathor', 'noemail17@zamzamhostel.com', '03334153740', '8210342956701', 'irfan_1568528084.jpeg', 55, 'Muhammad Shokat Khan', '03334153740', 'Tehsil Mumtazabaad District Haweli Azad Kashmir<br>', 96, '', 1569313297, 1, 1568528084, 'Allama Iqbal Open University<br>', 1, 1, 4, 'C of 204'),
(111, 'Sameer Syed Khursheed', 'noemail18@zamzamhostel.com', '03008761242', '3220387626685', 'sameer_1568528241.jpeg', 55, 'Syed Ahmed', '03008761242', 'Al Noor Market, Laiya<br>', 0, '', 1569313722, 0, 1568528241, 'FUUAST Islamabad<br>', 1, 1, 4, 'C of 205'),
(112, 'Shahid Mehmood', 'shahid@zamzamhostel.com', '03470057648', '7150114837603', 'shahid_1568529392.jpeg', 55, 'Mushtaq Ahmed', '03135275529', 'District Gilgit<br>', 0, '', 1568744064, 0, 1568529392, '<br>', 1, 1, 4, 'D of 206'),
(113, 'Ikhlaq Ahmed', 'ikhlaq@zamzamhostel.com', '03555237740', '7150150786875', 'ikhlaq_1568529566.jpeg', 55, 'Nusrat Wali Khan', '03555237740', 'DaakKhana Zila Gilgit<br>', 0, '', 1569505148, 0, 1568529566, '<br>', 1, 1, 4, 'E of 104'),
(114, 'Bilal Hussain', 'bilalhussain@zamzamhostel.com', '03086762288', '3220302518355', 'bilal_1568529688.jpeg', 56, 'Noor Muhammad', '03086762288', 'Not Understandable<br>', 97, '', 1568529688, 1, 1568529688, '<br>', 1, 1, 4, 'D of 204'),
(115, 'Zeeshan Gul', 'zeeshan@zamzamhostel.com', '03171440656', '1730151303459', 'zeeshan_1568529787.jpeg', 55, 'Gul Faraz', '03339122673', 'House 3326, Mohala Baazdaran Qisa Khawani Bazaar Peshawer<br>', 80, '', 1568529833, 1, 1568529787, '<br>', 1, 1, 4, 'A of 201'),
(116, 'Adnan Shokat', 'adnan@zamzamhostel.com', '03419493698', '8240132423609', 'adnan_1568530000.jpeg', 55, 'Shokat Ali', '03465012696', 'Zila Kotli<br>', 0, '', 1569505845, 0, 1568530000, 'Degree College<br>', 1, 1, 4, 'E of 204'),
(117, 'Ahmed Hassan', 'ahmed@zamzamhostel.com', '03069882717', '3820176952311', 'ahmed_1568530135.jpeg', 55, 'Ahmed Khan', '03082415347', 'Daak Khana Khas, Ochaali Tehsil Zila Khushaab<br>', 0, '', 1568830744, 0, 1568530135, '<br>', 1, 1, 4, 'D of 203'),
(118, 'Changaiz Khan', 'changaiz@zamzamhostel.com', '03129293111', '1620208171247', 'changaiz_1568530262.jpeg', 55, 'Sair Wali Khan', '03150994269', 'Zila Sawabi<br>', 141, '', 1568644500, 1, 1568530262, '<br>', 1, 1, 4, 'C of 302-A'),
(119, 'Muhammad Hamaad', 'mhammad@zamzamhostel.com', '03319283623', '3610261429127', 'muhammad_1568530397.jpeg', 55, 'Muhammad Ashraf', '03028998455', 'Zila Khanewaal<br>', 0, '', 1568830705, 0, 1568530397, 'Preston University<br>', 1, 1, 4, 'E of 203'),
(120, 'Ahsanullah', 'malikahsan.isb@gmail.com', '03338681161', '3220390859575', 'ahsanullah_1568530557.jpeg', 56, 'Ghulam Rasool', '03338681161', 'Mohala Eid Gaah, Ward no 5 Tehsil Zila Laiya<br>', 0, '', 1569222376, 0, 1568530557, 'Punjab College<br>', 1, 1, 4, 'D of 208'),
(121, 'Kashif Mehmood', 'kashifmehmood@zamzamhostel.com', '03465732997', '3740140158243', 'kashif_1568530843.jpeg', 56, 'Muhammad Nadeem', '03465732997', 'Gaon Jo, Daak Khana Tehsil GujarKhan Zila Rawalpindi<br>', 79, '', 1568530843, 1, 1568530843, '<br>', 1, 1, 4, 'B of 110'),
(122, 'AzeemUllah', 'azeemullah@zamzamhostel.com', '03175788002', '715015239763', 'azeemullah_1568530990.jpeg', 55, 'Muhammad Ullah', '03175788002', 'Gilgit<br>', 0, '', 1568833090, 0, 1568530990, '<br>', 1, 1, 4, 'C of 108'),
(123, 'Muhammd Tariq Ansari', 'muhammadtariq@zamzamhostel.com', '03366479996', '3210290449371', 'muhammd_1568531156.jpeg', 55, 'Abdul Rehman', '03366479996', 'Allahabaad Qalooni Makaan no 492 Gali no 3 Dera Ghazi Khan<br>', 0, '', 1568644398, 0, 1568531156, 'Allama Iqbal Open University<br>', 1, 1, 4, 'D of 205'),
(124, 'Fayyaz Haider', 'fayyazhaider@zamzamhostel.com', '03421892935', '3720265719381', 'fayyaz_1568531745.jpeg', 55, 'Ghulam Haider', '03421892935', 'Tehsil Pind dadan Khan Zila Jhelum<br>', 0, '', 1568641808, 0, 1568531745, '<br>', 1, 1, 4, 'E of 205'),
(125, 'Raees Waqar Qureshi', 'waqarqureshi@zamzamhostel.com', '03005581581', '1730195796019', 'raees_1568532001.jpeg', 55, 'Waqar Ahmed Qureshi', '03219079645', 'Darmangi Garden Northern Homes street 1 House no 3 Wirsak Road Peshawer<br>', 88, '5-9-2019', 1569842486, 1, 1568532001, 'NUML<br>', 1, 1, 4, 'E of 202'),
(126, 'Malik Atif Mehmood', 'atifmehmood@zamzamhostel.com', '03420517896', '3730175341321', 'malik_1568532113.jpeg', 55, 'Malik Fazal Muhammad', '03335005692', 'Zila Chakwaal<br>', 82, '1-9-2019', 1569505670, 1, 1568532113, '<br>', 1, 1, 4, 'C of 201'),
(127, 'Najeeb Ullah', 'najeebullah@zamzamhostel.com', '03119148680', '1720151752773', 'najeeb_1568542113.jpg', 56, 'Muhammad Tahir', '03120589393', 'Zilla Noshera<br>', 169, '', 1568542113, 1, 1568542113, 'Web Planet<br>', 1, 1, 4, 'A of 101'),
(128, 'Muhammad Sohail', 'muhammadsohail@zamzamhostel.com', '03465012859', '8120346163717', 'muhammad_1568542864.jpg', 56, 'Muhammad Hussain', '03453808836', 'Azad Kashmir<br>', 204, '', 1569241728, 1, 1568542864, '<br>', 1, 1, 4, 'A of 310'),
(129, 'Ameer Nawaz Khan', 'ameernawazkhan@zamzamhostel.com', '03465790083', '3830259949023', 'ameer_1568543002.jpg', 56, 'Ahmed Nawaz Khan', '03465790083', 'Mianwali<br>', 166, '', 1569058055, 1, 1568543002, '<br>', 1, 1, 4, 'A of G4'),
(130, 'Ahsan Ullah', 'ahsanullah12@zamzamhostel.com', '03469586835', '7150374681055', 'ahsan_1568551736.jpg', 55, 'Shadat', '03428586787', 'KPK<br>', 0, '', 1568831608, 0, 1568544252, '<br>', 1, 1, 4, 'A of 104'),
(131, 'Raja Mubbashir Bashir', 'rajamubbashirbashir@zamzamhostel.com', '03453357627', '00000000000', 'raja_1568551552.jpg', 55, 'Raja Bashir Ahmed', '03485374858', 'Azad Kashmir<br>', 208, '', 1569063056, 1, 1568544418, '<br>', 1, 1, 4, 'A of B3'),
(132, 'Zakir Hussain Tenu', 'zakirhussaintenu@zamzamhostel.com', '03488030465', '00000000000', 'zakir_1568551520.jpg', 55, 'Abdul', '03337311626', 'Larkana<br>', 107, '', 1569059340, 1, 1568544583, '<br>', 1, 1, 4, 'D of 206'),
(133, 'Ishtiaq Anjum', 'ishtiaqanjum@zamzamhostel.com', '03400126329', '3420243216383', 'ishtiaq_1568551501.jpg', 55, 'Ghulam Nabi', '03446272763', 'Ghujrat<br>', 0, '', 1569505081, 0, 1568545055, '<br>', 1, 1, 4, 'C of 101'),
(134, 'Mian Muhammad Asif Chaudhry', 'mianmuhammadasifchaudhry@zamzamhostel.com', '03009568900', '6110181793751', 'mian_1568551481.jpg', 56, 'Hameed Uddin', '03445400156', 'Faisalabad<br>', 196, '', 1568551481, 1, 1568546124, '<br>', 1, 1, 4, 'A of 107'),
(135, 'Usman Khalid', 'usmankhalid@zamzamhostel.com', '03465742840', '3740182341449', 'usman_1568551455.jpg', 56, 'Khalid Hussain', '000000000', 'Rawalpindi<br>', 197, '', 1568551455, 1, 1568546505, '<br>', 1, 1, 4, 'B of 107'),
(136, 'Sajid Mehmood', 'sajidmehmood@zamzamhostel.com', '03005184654', '611011341575', 'sajid_1568551416.jpg', 56, 'Muhammad Akbar', '000000000', 'Rawalpindi<br>', 198, '', 1568551416, 1, 1568548143, '<br>', 1, 1, 4, 'C of 107'),
(137, 'Zain Ul Abdien', 'zainulabdien@zamzamhostel.com', '03144911703', '3710476705411', 'zain_1568551398.jpg', 55, 'Muhammad Qayuum', '03458661086', 'Attock<br>', 0, '', 1568642415, 0, 1568548233, '<br>', 1, 1, 4, 'A of 105'),
(138, 'Rehan Gul', 'rehangul@zamzamhostel.com', '03003298844', '451051453796', 'rehan_1568551384.jpg', 56, 'Allah Baksh', '03003299094', 'Sindh<br>', 105, '', 1569059296, 1, 1568548297, '<br>', 1, 1, 4, 'B of 206'),
(139, 'khalid Mehmood', 'khalidmehmood@zamzamhostel.com', '03470111918', '3460167165501', 'khalid_1568551372.jpg', 56, 'Muhammad Sadiq', '03026664406', 'Sialkot<br>', 199, '', 1568551372, 1, 1568548377, '<br>', 1, 1, 4, 'D of 107'),
(140, 'Muhammad Taimoor Akbar Khan', 'muhammadtaimoorakbarkhan@zamzamhostel.com', '03499434524', '3830224985727', 'muhammad_1568551357.jpg', 56, 'Muhammad Akbar Khan', '03444306141', 'Mianwali<br>', 0, '', 1568645582, 0, 1568548474, '<br>', 1, 1, 4, 'B of 4'),
(141, 'Hamid Rasool', 'hamidrasool@zamzamhostel.com', '03135485552', '3710570629405', 'hamid_1568551341.jpg', 56, 'Syed Rasool', '03105430271', 'Attock<br>', 179, '', 1568551341, 1, 1568548614, '<br>', 1, 1, 4, 'A of 103'),
(142, 'Muhammad Zahoor', 'muhammadzahoor@zamzamhostel.com', '03479541122', '3740182816383', 'muhammad_1568551326.jpg', 56, 'Muhammad Riaz', '03445290760', 'Gujar Khan<br>', 0, '', 1568743772, 0, 1568548718, '<br>', 1, 1, 4, 'D of 101'),
(143, 'Sohail Ahmed', 'sohailahmed@zamzamhostel.com', '03485330208', '7150132460573', 'sohail_1568551312.jpg', 55, 'Nusrat Wali Khan', '03470057648', 'Gilgit<br>', 184, '', 1568551312, 1, 1568548820, '<br>', 1, 1, 4, 'C of 104'),
(144, 'Naeem', 'naeem1@zamzamhostel.com', '03168482097', '4320747857633', 'naeem_1568551296.jpg', 55, 'Aman Ullah', '03133746011', 'Sindh<br>', 104, '', 1568743701, 1, 1568548950, '<br>', 1, 1, 4, 'A of 206'),
(145, 'Adil Hussain', 'adilhussain@zamzamhostel.com', '03045850508', '3770314506451', 'adil_1568551280.jpg', 55, 'Manzoor Hussain', '000000000', 'Chakwal<br>', 0, '', 1568642453, 0, 1568549024, '<br>', 1, 1, 4, 'B of 105'),
(146, 'Hassan Maskur', 'hassanmaskur@zamzamhostel.com', '03369816758', '1350398756881', 'hassan_1568551259.jpg', 55, 'Maskur Ahmed Sabar', '03111077796', 'Mansehra<br>', 0, '', 1568743325, 0, 1568549084, '<br>', 1, 1, 4, 'A of G3'),
(147, 'Waqas Alam', 'waqasalam@zamzamhostel.com', '03135869374', '7150182669505', 'waqas_1568551242.jpg', 55, 'Shahzada Alam', '000000000', 'Gilgit<br>', 185, '', 1568551242, 1, 1568549161, '<br>', 1, 1, 4, 'D of 104'),
(148, 'Ahmed Farooq', 'ahmedfarooq@zamzamhostel.com', '03420515071', '3740193873773', 'ahmed_1568551230.jpg', 55, 'Ghulam Farooq', '03005206426', 'Rawalpindi<br>', 87, '', 1568832766, 1, 1568549263, '<br>', 1, 1, 4, 'D of 202'),
(149, 'Waqar Ali', 'waqarali@zamzamhostel.com', '03023695047', '4340704346687', 'waqar_1568551217.jpg', 55, 'Abdul Satar', '03133746011', 'Sindh<br>', 106, '', 1568743164, 1, 1568549355, '<br>', 1, 1, 4, 'C of 206'),
(150, 'Rizwan Khalid', 'rizwankhalid@zamzamhostel.com', '03403118920', '3740170886681', 'rizwan_1568551198.jpg', 55, 'Khalid Hussain', '03459760606', 'Rawalpindi<br>', 86, '', 1568832644, 1, 1568549440, '<br>', 1, 1, 4, 'C of 202'),
(151, 'Muhammad Dawood', 'muhammaddawood@zamzamhostel.com', '03074455944', '7110206480655', 'muhammad_1568551170.jpg', 55, 'Not Readable', '03422836106', 'Skardu<br>', 189, '', 1568551170, 1, 1568549725, '<br>', 1, 1, 4, 'C of 105'),
(152, 'Faizan Mehmood', 'faizanmehmood@zamzamhostel.com', '03108367684', '7150120574337', 'faizan_1568551160.jpg', 55, 'Akbar Hussain', '000000000', 'Gilgit<br>', 0, '', 1568832523, 0, 1568549810, '<br>', 1, 1, 4, 'A of 106'),
(153, 'Shahbaz Hussain', 'shahbazhussain@zamzamhostel.com', '03467306923', '3220162660817', 'shahbaz_1568551147.jpg', 56, 'Haji Muhammad', '03458673457', 'Lilla<br>', 0, '', 1569409189, 0, 1568549913, '<br>', 1, 1, 4, 'D of 105'),
(154, 'Muhammad Bilal Khan', 'muhammadbilalkhan@zamzamhostel.com', '03077161140', '1620228895653', 'muhammad_1568551130.jpg', 55, 'Muhammad Tahir', '03018350759', 'Sawabi<br>', 77, '', 1568831236, 1, 1568549982, '<br>', 1, 1, 4, 'D of 109'),
(155, 'Aqib Mehmood', 'aqibmehmood@zamzamhostel.com', '03065339360', '3740134556463', 'aqib_1568551116.jpg', 55, 'Ameer Aslam', '03025100036', 'Rawalpindi<br>', 85, '', 1568832485, 1, 1568550071, '<br>', 1, 1, 4, 'B of 202'),
(156, 'Mehb Ur Rehman', 'mehburrehman@zamzamhostel.com', '03045528011', '3740184287167', 'mehb_1568551102.jpg', 55, 'Farooq Azam', '03025100036', 'Rawalpindi<br>', 84, '', 1568832272, 1, 1568550221, '<br>', 1, 1, 4, 'A of 202'),
(157, 'Muhammad Awais Raza', 'muhammadawaisraza@zamzamhostel.com', '03474599799', '8130240208857', 'muhammad_1568551082.jpg', 55, 'Allah Rakha', '03430590642', 'Azad Kashmir<br>', 158, '', 1568645238, 1, 1568550580, '<br>', 1, 1, 4, 'A of G1'),
(158, 'Umer Sheikh', 'umersheikh@zamzamhostel.com', '03345656625', '1350361959259', 'umer_1568551070.jpg', 55, 'Muhammad Ameen', '03185527853', 'Mansehra<br>', 180, '', 1568551070, 1, 1568550686, '<br>', 1, 1, 4, 'B of 103'),
(159, 'Muhammad Haasan', 'muhammadhaasan@zamzamhostel.com', '03353407843', '4230138346241', 'muhammad_1568551046.jpg', 56, 'Abdul Rauf', '03332340893', 'Karachi<br>', 164, '', 1568831042, 1, 1568550834, '<br>', 1, 1, 4, 'A of G3'),
(160, 'Shakeel Ahmed', 'shakeelahmed@zamzamhostel.com', '03013970613', '4340204751649', 'shakeel_1568551020.jpg', 55, 'Rehmat Ali', '000000000', 'Larkana<br>', 0, '', 1568831707, 0, 1568550908, '<br>', 1, 1, 4, 'E of 102'),
(161, 'mufta ur rehman', 'abcd65@abc.com', '03485248374', '1530225403665', 'mufta_1568638891.jpg', 55, 'Qazi Muhammad', '03495776594', 'gfhfghh<br>', 76, '', 1568638891, 1, 1568638891, '<br>', 1, 1, 4, 'C of 109'),
(162, 'Muhammad Adnan khan', 'abd@salkj.com', '192887', '3820188498817', 'muhammad_1568642193.jpg', 55, 'Muhammad Khan', '1287889', 'khushab<br>', 102, '', 1568831459, 1, 1568642193, '<br>', 1, 1, 4, 'D of 205'),
(163, 'Muhammad Nadeem', 'nadeem@nadeem.com', '03413370872', '3840193636543', 'muhammad_1568642336.jpg', 55, 'muhammad riaz', '03413370872', 'kotmomin<br>', 0, '', 1569313546, 0, 1568642336, 'Islamic uni<br>', 1, 1, 4, 'E of 205'),
(164, 'Muhammad Arslan Mushtaq', 'Arslan@jmal.com', '03081421562', '3510225015885', 'muhammad_1568647271.jpg', 55, 'M Mushtaq', '03048917528', 'khsor<br>', 122, '', 1568647271, 1, 1568647271, '<br>', 1, 1, 4, 'A of 306'),
(165, 'mati ur rehman', 'mati@zamzamhstel.com', '03400825279', '3730397988971', 'mati_1569058400.jpg', 55, 'Muhammad Shafique', '03035031026', 'Jehlum<br>', 159, '', 1569058400, 1, 1569058400, '<br>', 1, 1, 4, 'B of G1'),
(166, 'ahmed khan', 'zamzamhostel468868@gmail.com', '03327983209', '5450120718148', 'ahmed_1569058661.jpg', 55, 'm khan', '0825501178', 'balochistan<br>', 110, '', 1569306881, 1, 1569058661, '<br>', 1, 1, 4, 'C of 207'),
(167, 'anwar kamal', 'z2amzamhostel@gmail.com', '03144103224', '1540204281869', 'anwar_1569058854.jpg', 55, 'kamalodin', '03136339495', 'malakand<br>', 162, '', 1569058854, 1, 1569058854, '<br>', 1, 1, 4, 'C of G2'),
(168, 'mohammad  ubaid ishfaq', '4zamzamhostel@gmail.com', '03009136361', '1330282157201', 'mohammad_1569059068.jpg', 55, 'mohammad ishfaq', '03489314297', 'haripor<br>', 163, '', 1569059068, 1, 1569059068, '<br>', 1, 1, 4, 'D of G2'),
(169, 'mohammad salman', 'zam2zamhostel@gmail.com', '03341551884', '1730128288637', 'mohammad_1569059568.jpg', 55, 'shamshar khan', '03341551884', 'peshawar<br>', 161, '18-09-2019', 1569059869, 1, 1569059568, '<br>', 1, 1, 4, 'B of G2'),
(170, 'saeed ahamd', 'zamzammhostel@gmail.com', '03331228323', '4550231671091', 'saeed_1569061723.jpg', 55, 'shabir ahmad', '03331228323', 'murree<br>', 206, '1-5-2019', 1569061723, 1, 1569061723, '<br>', 1, 1, 4, 'A of GB1'),
(171, 'Adnan Abbasi', 'zamzkamhostel@gmail.com', '03005188423', '3740402691117', 'adnan_1569061963.jpg', 55, 'sed', '032154879', 'murree<br>', 0, '', 1569226530, 0, 1569061963, '<br>', 1, 1, 4, 'A of G2'),
(172, 'abdul reshad', 'zamzamahostel@gmail.com', '03085337426', '4520371301065', 'abdul_1569063680.jpg', 55, 'nur muhammad', '03085337426', 'Sindh<br>', 207, '1-04-2019', 1569063680, 1, 1569063680, '<br>', 1, 1, 4, 'B of GB1'),
(173, 'asaam arif', 'zamzakmhostel@gmail.com', '03109166586', '8230201781643', 'asim_1569063976.jpg', 55, 'mahammad arif khan', '03130057453', 'kashmir<br>', 203, '17-1-2019', 1569410237, 1, 1569063976, 'PMAS Arid University<br>', 1, 1, 4, 'D of 309'),
(174, 'hamaid ali', 'zamzamkhostel@gmail.com', '03109365360', '8230240573241', 'hamaid_1569064380.jpg', 55, 'mohammad ashiq', '03136506996', 'kashmir<br>', 0, '29-8-2019', 1569410134, 0, 1569064380, '<br>', 1, 1, 4, 'C of 309'),
(175, 'Muhammad Arslan Mushtaq', 'zamzamhjostel@gmail.com', '03081421562', '3510225015885', 'muhammad_1569064889.jpg', 55, 'muhammad mushtaq', '03048917528', 'qusar<br>', 0, '12-09-2019', 1569224135, 0, 1569064889, '<br>', 1, 1, 4, 'C of 306'),
(176, 'muhammad latif', 'zamzamhogstel@gmail.com', '03416834977', '1210339143139', 'muhammad_1569065235.jpg', 55, 'abdul reshaid', '03460515035', 'Dara ismail khan<br>', 212, '15-02-2019', 1569065235, 1, 1569065235, 'PMAS Arid University<br>', 1, 1, 4, 'B of b6'),
(177, 'Zeeshan Muatza', 'zamzamhonstel@gmail.com', '03416834977', '1210357067447', 'zeeshan_1569065592.jpg', 55, 'Gulam Muatza', '03460515035', 'Dara ismail khan<br>', 211, '', 1569065592, 1, 1569065592, 'PMAS Arid University<br>', 1, 1, 4, 'A of b6'),
(178, 'Hassan ALbina', 'zamzamhhostel@gmail.com', '03115531387', '7150180066177', 'hassan_1569069448.jpg', 55, 'Jan Muhammad', '03418825036', 'Gilgat<br>', 133, '10-09-2019', 1569069568, 1, 1569069448, 'PMAS Arid University<br>', 1, 1, 4, 'D of 308'),
(179, 'shfeiq ahmad', 'zamzamhoskltel@gmail.com', '03488030465', '432033483191', 'shfeiq_1569069936.jpg', 55, 'rafeq ahamd', '03488030468', 'Sindh<br>', 147, '18-902019', 1569069936, 1, 1569069936, 'PMAS Arid University<br>', 1, 1, 4, 'A of 303-B'),
(180, 'hassan sab', 'zamzamhoshtel@gmail.com', '03488030465', '4320334831931', 'hassan_1569070167.jpg', 55, 'Sab Khan', '03488040465', 'Sindh<br>', 0, '18-9-2019', 1569305133, 0, 1569070167, 'PMAS Arid University<br>', 1, 1, 4, 'B of 302-B'),
(181, 'Zain', 'zamzamhosatel@gmail.com', '03459760214', '3740117392827', 'zain_1569302494.jpg', 56, 'Zehaid', '03005184654', 'rawalpandi<br>', 117, '16-2-2015', 1569302494, 1, 1569302494, '<br>', 1, 1, 4, 'B of 210'),
(182, 'Madsar Aahmad', 'zamzaFmhostel@gmail.com', '03175788002', '7150152239763', 'madsar_1569303059.jpg', 55, 'Mustufa', '03005184654', 'Gilgat<br>', 70, '24-5-2018', 1569303059, 1, 1569303059, 'PMAS Arid University<br>', 1, 1, 4, 'A of 108'),
(183, 'Kalime ullah', 'zamezamhostel@gmail.com', '03175788002', '7150152239763', 'kalime_1569303313.jpg', 55, 'Muhammad ullah', '03175788002', 'Gilgat<br>', 72, '24-4-2019', 1569303313, 1, 1569303313, 'Shifa International Islamabad<br>', 1, 1, 4, 'C of 108'),
(184, 'Muhammad Ramzan', 'zaamzamhostel@gmail.com', '03045486998', '3810283058327', 'muhammad_1569303652.jpg', 55, 'Gulam Muhammad', '03484340650', 'Bakker<br>', 182, '3-3-2019', 1569303652, 1, 1569303652, 'PMAS Arid University<br>', 1, 1, 4, 'A of 104'),
(185, 'Ahtar Khan', 'zamzamjhostel@gmail.com', '03411359004', '344022657617', 'ahtar_1569304040.jpg', 55, 'Muhammad Azuam Khan', '0300771007', 'Sohabi<br>', 81, '3-8-2017', 1569304040, 1, 1569304040, '<br>', 1, 1, 4, 'B of 201'),
(186, 'Asif Nawaz', 'zamzramhostel@gmail.com', '03167580160', '3830255024805', 'asif_1569304321.jpg', 56, 'Ahmad Nawaz', '03465790083', 'Mianwali<br>', 167, '11-10-2018', 1569304321, 1, 1569304321, '<br>', 1, 1, 4, 'B of G4'),
(187, 'Hassan Ullah', 'zamzsamhostel@gmail.com', '03162279502', '8230283321141', 'hassan_1569304640.jpg', 55, 'Muhammad Aisaq', '03162279502', 'Azad Kashmir<br>', 200, '1-2-2019', 1569304640, 1, 1569304640, '<br>', 1, 1, 4, 'A of 309'),
(188, 'Ienum qurshie', 'zabmzamhostel@gmail.com', '03358405960', '3740233180141', 'ienum_1569304992.jpg', 56, 'zaraif Qurshie', '03365358562', 'rawalpandi<br>', 0, '13-2-2019', 1569311348, 0, 1569304992, '<br>', 1, 1, 4, 'B of 302-B'),
(189, 'Rashid Abbas', 'zamazamhostel@gmail.com', '03017448700', '3220382989447', 'rashid_1569305488.jpg', 55, 'Manzur Ahmad', '03037430728', 'Layai<br>', 115, '30-5-2018', 1569305488, 1, 1569305488, 'PMAS Arid University<br>', 1, 1, 4, 'D of 208'),
(190, 'zahid Gulam', 'zaymzamhostel@gmail.com', '03339683431', '1410165799967', 'zahid_1569305887.jpg', 55, 'Syid Gulam', '03339683431', 'banu<br>', 121, '10-9-2015', 1569305887, 1, 1569305887, 'PMAS Arid University<br>', 1, 1, 4, 'D of 209'),
(191, 'Skandar Alam', 'zamczamhostel@gmail.com', '03418825036', '7150180066177', 'skandar_1569306126.jpg', 55, 'Huss khan', '03418825036', 'Gilgat<br>', 132, '30-11-2018', 1569312799, 1, 1569306126, 'PMAS Arid University<br>', 1, 1, 4, 'C of 308'),
(192, 'Mahammad Murselin', 'zamzmamhostel@gmail.com', '03045411010', '3720163281063', 'mahammad_1569307682.jpg', 55, 'Amair Afsir', '03358092135', 'Cakwal<br>', 143, '15 days', 1569311410, 1, 1569307682, 'Islamic uni<br>', 1, 1, 4, 'B of 302-B'),
(193, 'Muhammad Zaheair', 'zamdzamhostel@gmail.com', '03008597934', '3110442105967', 'muhammad_1569308459.jpg', 55, 'Nasrullah Khan', '03332027297', 'Bakker<br>', 0, '19-9-2018', 1569842357, 0, 1569308459, 'PMAS Arid University<br>', 1, 1, 4, 'E of 202'),
(194, 'ahtiq ua Rahman', 'zamzamihostel@gmail.com', '03461931166', '3730280814373', 'ahtiq_1569308796.jpg', 55, 'Azhair Iqbal', '03461931166', 'Jalum<br>', 0, '4-9-2018', 1569695829, 0, 1569308796, 'PMAS Arid University<br>', 1, 1, 4, 'A of 205'),
(195, 'Ahatiq', 'zamzlamhostel@gmail.com', '03409055960', '1210357968571', 'ahatiq_1569309127.jpg', 55, 'Gulam Yassine', '03089060173', 'Dara ismail khan<br>', 213, '15-02-2019', 1569309127, 1, 1569309127, 'PMAS Arid University<br>', 1, 1, 4, 'C of b6'),
(196, 'Hamid ALI', 'zamrzamhostel@gmail.com', '03109365360', '8230240573241', 'hamid_1569310163.jpg', 55, 'Mahmmad Aishaq', '03136506996', 'Azad Kashmir<br>', 201, '29-8-2018', 1569310163, 1, 1569310163, '<br>', 1, 1, 4, 'B of 309'),
(197, 'Mahmmad Iqbal', 'zamzaHmhostel@gmail.com', '03144259666', '7110288580685', 'mahmmad_1569310591.jpg', 55, 'Naqy', '03144455944', 'balochistan<br>', 191, '2-9-2019', 1569310591, 1, 1569310591, 'PMAS Arid University<br>', 1, 1, 4, 'E of 105'),
(198, 'Siyad amair Assan ullah', 'zamzamnhostel@gmail.com', '03159462927', '1610171320037', 'siyad_1569311068.jpg', 55, 'sayid Mahtair', '03159462927', 'mardan<br>', 0, '12-8-2019', 1569311513, 0, 1569311068, 'PMAS Arid University<br>', 1, 1, 4, 'D of 306'),
(199, 'Ahlaq Ahmad', 'zamzuamhostel@gmail.com', '03175788002', '7150152239763', 'ahlaq_1569313153.jpg', 55, 'Muhammad ullah', '03175788002', 'Gilgat<br>', 183, '1-8-2019', 1569313153, 1, 1569313153, 'PMAS Arid University<br>', 1, 1, 4, 'B of 104'),
(200, 'Aqasih', 'zamwzamhostel@gmail.com', '03421892935', '3730284542331', 'aqasih_1569314033.jpg', 55, 'Mahammad Afzal', '03421892935', 'Jalum<br>', 100, '29-8-2018', 1569314033, 1, 1569314033, 'PMAS Arid University<br>', 1, 1, 4, 'B of 205'),
(201, 'Mahammad Auaab khver', 'zamzamyhostel@gmail.com', '03016473186', '3820113725957', 'mahammad_1569314488.jpg', 55, 'Mahammad Yaquab', '03006018786', 'Khsaab<br>', 101, '10-2-2019', 1569314488, 1, 1569314488, 'PMAS Arid University<br>', 1, 1, 4, 'C of 205'),
(202, 'Mahammad Zai', 'zamzhamhostel@gmail.com', '03421892935', '3820113725987', 'mahammad_1569408889.jpg', 55, 'kahwar', '03421892935', 'khusaab<br>', 103, '01-9-2019', 1569408889, 1, 1569408889, 'PMAS Arid University<br>', 1, 1, 4, 'E of 205'),
(203, 'AfzalSaba', 'zamzamhuostel@gmail.com', '03444403123', '7110217522771', 'afzalsaba_1569409114.jpg', 55, 'Akbar', '03444403123', 'Gilgat<br>', 187, '01-09-2019', 1569409114, 1, 1569409114, 'PMAS Arid University<br>', 1, 1, 4, 'A of 105'),
(204, 'Sufyan', 'zamztamhostel@gmail.com', '03425287908', '3730118048853', 'sufyan_1569409453.jpg', 55, 'jamshad Khan', '03425287908', 'Jalum<br>', 128, '1-9-2019', 1569409453, 1, 1569409453, 'PMAS Arid University<br>', 1, 1, 4, 'C of 307'),
(205, 'Adnan', 'zamzbamhostel@gmail.com', '03419493698', '8240132423609', 'adnan_1569409745.jpg', 55, 'Shokat', '03485374858', 'Azad Kashmir<br>', 205, '1-9-2019', 1569409745, 1, 1569409745, 'PMAS Arid University<br>', 1, 1, 4, 'B of 310'),
(206, 'Hamza', 'zamzamuhostel@gmail.com', '03439360438', '823026158699', 'hamza_1569410089.jpg', 55, 'Abdul Khalq', '03439360438', 'Azad Kashmir<br>', 202, '1-9-2019', 1569410175, 1, 1569410089, 'PMAS Arid University<br>', 1, 1, 4, 'C of 309'),
(207, 'sobhan', 'zamzajmhostel@gmail.com', '03495091618', '8120264015243', 'sobhan_1569423762.jpg', 55, 'Liaquat', '03495091618', 'Azad Kashmir<br>', 215, '1-9-2019', 1569754994, 1, 1569423762, 'PMAS Arid University<br>', 1, 1, 4, 'E of 309'),
(208, 'Asif Ruhsool', 'zamzamhkostel@gmail.com', '03336521539', '3730281978583', 'asif_1569424274.jpg', 56, 'Gulam yassan', '03336521539', 'rawalpindi<br>', 124, '1-9-2019', 1569424274, 1, 1569424274, '<br>', 1, 1, 4, 'C of 306'),
(209, 'Waquce', 'zamzalmhostel@gmail.com', '03450535440', '3310439804607', 'waquce_1569424832.jpg', 56, 'Fazal ahamad', '03450535440', 'Faslabad<br>', 123, '1-9-2019', 1569424832, 1, 1569424832, '<br>', 1, 1, 4, 'B of 306'),
(210, 'Humair', 'zamjzamhostel@gmail.com', '03346751565', '3240279940595', 'humair_1569425821.jpg', 55, 'Khald I', '03346751565', 'Sindh<br>', 151, '1-9-2019', 1569425821, 1, 1569425821, 'PMAS Arid University<br>', 1, 1, 4, 'A of 304-B'),
(211, 'Nasar', 'zamfzamhostel@gmail.com', '03111793129', '3440112683217', 'nasar_1569426547.jpg', 55, 'Amonullah', '03111793129', 'Jalum<br>', 173, '1-9-2019', 1569426547, 1, 1569426547, 'PMAS Arid University<br>', 1, 1, 4, 'E of 101'),
(212, 'ChaCha Gull', 'zamzahmhostel@gmail.com', '03058486375', '3120233102859', 'chacha_1569427463.jpg', 56, 'I no', '03058486375', 'Bakker<br>', 170, '1-9-2019', 1569427463, 1, 1569427463, '<br>', 1, 1, 4, 'B of 101'),
(213, 'Aleem Ullah', 'zamzatmhostel@gmail.com', '03170507007', '7150173176749', 'aleem_1569427660.jpg', 55, 'Rahim Ullah', '03159580774', 'Gilgat<br>', 192, '1-9-2019', 1569427660, 1, 1569427660, '<br>', 1, 1, 4, 'A of 106'),
(214, 'Umer Farooq', 'zamxzamhostel@gmail.com', '03453357627', '7150180066177', 'umer_1569428350.jpg', 55, 'Rahim Ullah', '03485374858', 'Gilgat<br>', 193, '1-9-2019', 1569428350, 1, 1569428350, '<br>', 1, 1, 4, 'B of 106'),
(215, 'Fazal Haq', 'zamzaWmhostel@gmail.com', '03159580774', '7150173176749', 'fazal_1569428538.jpg', 55, 'Rahim Ullah', '03175016187', 'Gilgat<br>', 195, '1-9-2019', 1569428538, 1, 1569428538, 'PMAS Arid University<br>', 1, 1, 4, 'D of 106'),
(216, 'Shahid Mehmood', 'zamzamlhostel@gmail.com', '03470057640', '7150114837603', 'shahid_1569429265.jpg', 55, 'Mehmood', '03470057648', 'Gilgat<br>', 194, '1-9-2019', 1569429265, 1, 1569429265, 'Islamic uni<br>', 1, 1, 4, 'C of 106'),
(217, 'Najebullah', 'zamNzamhostel@gmail.com', '03119148680', '1720151752773', 'najebullah_1569501668.jpg', 55, 'Tahair', '03119148680', 'Akber Poura<br>', 172, '1-9-2019', 1569501668, 1, 1569501668, 'PMAS Arid University<br>', 1, 1, 4, 'D of 101'),
(218, 'Abdullah', 'zamzawmhostel@gmail.com', '03169972484', '1610244893533', 'abdullah_1569507676.jpg', 55, 'sazada khan', '03169972484', 'mardan<br>', 125, '1-9-2019', 1569507676, 1, 1569507676, 'PMAS Arid University<br>', 1, 1, 4, 'D of 306'),
(219, 'mamtaz', 'zamzaymhostel@gmail.com', '03319283623', '3610261429127', 'mamtaz_1569560187.jpg', 55, 'Ashrif', '03319283623', 'Hanywal<br>', 92, '1-9-2019', 1569560187, 1, 1569560187, 'PMAS Arid University<br>', 1, 1, 4, 'D of 203'),
(220, 'Shafaqt ali', 'zamzaxmhostel@gmail.com', '03078477256', '8120250142187', 'shafaqt_1569560942.jpg', 55, 'Ashrif', '03078477256', 'Azad Kashmir<br>', 136, '1-9-2019', 1569560942, 1, 1569560942, 'PMAS Arid University<br>', 1, 1, 4, 'B of 301-A'),
(221, 'muhammad ASIF', 'zamzamh0ostel@gmail.com', '03359700824', '8230295974165', 'muhammad_1569561948.jpg', 55, 'Ashrif', '03000888058', 'Azad Kashmir<br>', 127, '5-09-2019', 1569561948, 1, 1569561948, 'PMAS Arid University<br>', 1, 1, 4, 'B of 307'),
(222, 'Ahmad  DEIN', 'zamyzamhostel@gmail.com', '03153901253', '4510214231127', 'ahmad_1569562201.jpg', 56, 'Atta mahammad', '03153901253', 'Sindh<br>', 114, '1-09-2019', 1569562201, 1, 1569562201, '<br>', 1, 1, 4, 'C of 208'),
(223, 'TOFEEQ', 'zamzaqmhostel@gmail.com', '0300888058', '1540204281869', 'tofeeq_1569562628.jpg', 55, 'rafeeq ahamd', '03365996650', 'Sindh<br>', 174, '1-9-2019', 1569562628, 1, 1569562628, 'PMAS Arid University<br>', 1, 1, 4, 'A of 102'),
(224, 'Naveed ahmad', 'zamzazmhostel@gmail.com', '03343545992', '4320252995739', 'naveed_1569562930.jpg', 55, 'Khadim hussain', '03343545992', 'Sindh<br>', 175, '1-9-2019', 1569562930, 1, 1569562930, 'PMAS Arid University<br>', 1, 1, 4, 'B of 102'),
(225, 'WASSI HAIDER', 'zamzamhrostel@gmail.com', '03225640604', '3430141402209', 'wassi_1569563368.jpg', 56, 'Zulfiqar', '03476661631', 'Hanywal<br>', 89, '23-09-2019', 1569563368, 1, 1569563368, '<br>', 1, 1, 4, 'A of 203'),
(226, 'Mahmmad Nadim', 'zamzamhmostel@gmail.com', '03359700824', '7150152239763', 'mahmmad_1569695728.jpg', 56, 'baber ', '03175016187', 'Dara ismail khan<br>', 99, '02-09-2019', 1569695996, 1, 1569695728, '<br>', 1, 1, 4, 'A of 205');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_rent`
--

CREATE TABLE `tenant_rent` (
  `tenant_rent_id` int(11) NOT NULL,
  `tenant_name` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` varchar(55) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `advance` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `invoice_number` bigint(20) DEFAULT NULL,
  `due_date` int(11) DEFAULT NULL,
  `tenant_mobile` varchar(50) DEFAULT NULL,
  `bed` varchar(50) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant_rent`
--

INSERT INTO `tenant_rent` (`tenant_rent_id`, `tenant_name`, `status`, `month`, `year`, `amount`, `timestamp`, `created_on`, `advance`, `updated_by`, `created_by`, `invoice_number`, `due_date`, `tenant_mobile`, `bed`, `tenant_id`) VALUES
(75, 'Sajid Abbas', 1, 'August', 2019, '7500', 1568552662, 1568551875, 7500, 1, 1, 2019083962, 1564977600, '03017448700', '#A of Room 204', 62),
(76, 'Muhammad Zahid', 1, 'August', 2019, '7500', 1568553241, 1568551875, 7500, 1, 1, 2019083263, 1564977600, '03168783866', '#A of Room 202', 63),
(77, 'Abdul Wahab Sajid', 1, 'August', 2019, '8000', 1568553231, 1568551875, 8000, 1, 1, 2019084064, 1564977600, '03499705688', '#A of Room 206', 64),
(78, 'ShifaUllah', 1, 'August', 2019, '8000', 1568552740, 1568551875, 8000, 1, 1, 2019085065, 1564977600, '03416853653', '#A of Room 207', 65),
(79, 'Muhammad Shair Joni', 1, 'August', 2019, '8000', 1568552710, 1568551875, 8000, 1, 1, 2019089666, 1564977600, '03017479799', '#B of Room 207', 66),
(80, 'Muhammad Amin', 1, 'August', 2019, '8000', 1568552730, 1568551875, 8000, 1, 1, 2019089267, 1564977600, '03369529060', '#C of Room 207', 67),
(81, 'Ghulam Nabi', 1, 'August', 2019, '8000', 1568552986, 1568551875, 8000, 1, 1, 2019089068, 1564977600, '03005346631', '#D of Room 207', 68),
(82, 'Waleed Ahmed', 1, 'August', 2019, '8000', 1568552950, 1568551875, 8000, 1, 1, 2019084069, 1564977600, '03053247003', '#B of Room 206', 69),
(83, 'Nasir Siddique', 1, 'August', 2019, '9000', 1568552878, 1568551875, 9000, 1, 1, 2019085270, 1564977600, '03121129005', '#A of Room 110', 70),
(84, 'Basit Iqbal', 1, 'August', 2019, '8000', 1568552888, 1568551875, 8000, 1, 1, 2019086271, 1564977600, '03015402272', '#A of Room 108', 71),
(85, 'Muhammad Irfan', 1, 'August', 2019, '7500', 1568552958, 1568551875, 7500, 1, 1, 2019086172, 1564977600, '03319990073', '#A of Room 203', 72),
(86, 'AhsanUllah', 1, 'August', 2019, '8000', 1568552975, 1568551875, 8000, 1, 1, 2019083273, 1564977600, '03335408103', '#C of Room 206', 73),
(87, 'Syed Shaheer Hussain', 1, 'August', 2019, '7500', 1568552634, 1568551875, 7500, 1, 1, 2019081874, 1564977600, '03131919517', '#A of Room 301-A', 74),
(88, 'Fawad Ahmad Abbasi', 1, 'August', 2019, '7500', 1568552994, 1568551875, 7500, 1, 1, 2019082375, 1564977600, '03428343957', '#A of Room 303-A', 75),
(89, 'Syed Ameer Ahsan ullah', 1, 'August', 2019, '8000', 1568552940, 1568551875, 8000, 1, 1, 2019085376, 1564977600, '03159462927', '#A of Room 308', 76),
(90, 'Zair Shah', 1, 'August', 2019, '7500', 1568552829, 1568551875, 7500, 1, 1, 2019086277, 1564977600, '03085475853', '#B of Room 301-A', 77),
(91, 'Sajjad Ali', 1, 'August', 2019, '7500', 1568552768, 1568551875, 7500, 1, 1, 2019089378, 1564977600, '03452745918', '#A of Room 302-A', 78),
(92, 'Ahsan Zia', 1, 'August', 2019, '8000', 1568552676, 1568551875, 8000, 1, 1, 2019084379, 1564977600, '03004708787', '#B of Room 308', 79),
(93, 'Qasim Rasheed', 1, 'August', 2019, '7500', 1568552691, 1568551875, 7500, 1, 1, 2019087880, 1564977600, '03126919791', '#B of Room 302-A', 80),
(94, 'Muhammad Afzal', 1, 'August', 2019, '8000', 1568552784, 1568551875, 8000, 1, 1, 2019081481, 1564977600, '03045185463', '#A of Room 304-B', 81),
(95, 'abdul rasheed', 1, 'August', 2019, '9000', 1568553260, 1568551875, 9000, 1, 1, 2019088182, 1564977600, '03005925468', '#A of Room 210', 82),
(96, 'Mhubi ur rehman', 1, 'August', 2019, '7500', 1568552839, 1568551875, 7500, 1, 1, 2019081083, 1564977600, '03045528011', '#A of Room 305-B', 83),
(97, 'muhammad irfan', 1, 'August', 2019, '7500', 1568552869, 1568551875, 7500, 1, 1, 2019084484, 1564977600, '03458964244', '#B of Room 303-A', 84),
(98, 'Basit Ali', 1, 'August', 2019, '7500', 1568552856, 1568551875, 7500, 1, 1, 2019085485, 1564977600, '03111519315', '#B of Room 305-B', 85),
(99, 'ahsan ullah', 1, 'August', 2019, '8000', 1568552720, 1568551875, 8000, 1, 1, 2019082786, 1564977600, '03338681161', '#A of Room 208', 86),
(100, 'Muhammad Awais', 1, 'August', 2019, '7500', 1568552754, 1568551875, 7500, 1, 1, 2019083387, 1564977600, '03006078983', '#C of Room 303-A', 87),
(101, 'Muhammad Ramzan', 1, 'August', 2019, '8000', 1568552798, 1568551875, 8000, 1, 1, 2019089588, 1564977600, '03466622357', '#C of Room 308', 88),
(102, 'Muhammad Usama', 1, 'August', 2019, '7500', 1568552809, 1568551875, 7500, 1, 1, 2019087789, 1564977600, '030241540931', '#A of Room 305-A', 89),
(103, 'Inaam ul haq qureshi', 1, 'August', 2019, '7500', 1568552819, 1568551875, 7500, 1, 1, 2019085290, 1564977600, '03358405960', '#A of Room 302-B', 90),
(104, 'Muhammad Amir Afzal', 1, 'August', 2019, '8000', 1568552847, 1568551875, 8000, 1, 1, 2019087091, 1564977600, '03440531073', '#D of Room 308', 91),
(105, 'Ali ahsan', 1, 'August', 2019, '8000', 1568553269, 1568551875, 8000, 1, 1, 2019086992, 1564977600, '03456138872', '#B of Room 208', 92),
(106, 'Muhammad Kashif', 1, 'August', 2019, '7500', 1568552900, 1568551875, 7500, 1, 1, 2019087193, 1564977600, '03465415492', '#C of Room 301-A', 93),
(107, 'Confu ji', 1, 'August', 2019, '7500', 1568552967, 1568551875, 7500, 1, 1, 2019085294, 1564977600, '03154861522', '#A of Room 301-B', 94),
(108, 'Naeem Hussain', 1, 'August', 2019, '7500', 1568553279, 1568551875, 7500, 1, 1, 2019089795, 1564977600, '03420799127', '#B of Room 305-A', 95),
(109, 'Riyaz Ahmed', 1, 'August', 2019, '8000', 1568553205, 1568551875, 8000, 1, 1, 2019086996, 1564977600, '03139166529', '#B of Room 304-B', 96),
(110, 'M sajad', 1, 'August', 2019, '8000', 1568553250, 1568551875, 8000, 1, 1, 2019084197, 1564977600, '03335010620', '#A of Room 209', 97),
(111, 'M amin', 1, 'August', 2019, '8000', 1568553195, 1568551875, 8000, 1, 1, 2019082098, 1564977600, '03369529060', '#B of Room 209', 98),
(112, 'shan khalid', 1, 'August', 2019, '8000', 1568553219, 1568551875, 8000, 1, 1, 2019082599, 1564977600, '03428980783', '#C of Room 209', 99),
(113, 'Taimoor Shahzad', 1, 'August', 2019, '7500', 1568553139, 1568551875, 7500, 1, 1, 20190877100, 1564977600, '03124141732', '#C of Room 305-A', 100),
(114, 'Faizan Ahmed', 1, 'August', 2019, '8000', 1568553129, 1568551875, 8000, 1, 1, 20190856101, 1564977600, '03129380985', '#A of Room 304-A', 101),
(115, 'Asad Saeed Ahmed', 1, 'August', 2019, '7500', 1568553110, 1568551875, 7500, 1, 1, 20190870102, 1564977600, '03335152746', '#B of Room 301-B', 102),
(116, 'Muhammad Tariq Ansari', 1, 'August', 2019, '7500', 1568553096, 1568551875, 7500, 1, 1, 20190843103, 1564977600, '03366479996', '#B of Room 203', 103),
(117, 'Tanveer Ahmed', 1, 'August', 2019, '7500', 1568553084, 1568551875, 7500, 1, 1, 20190828104, 1564977600, '03082415347', '#C of Room 203', 104),
(118, 'Muhammad Wahab Asif', 1, 'August', 2019, '8000', 1568553074, 1568551875, 8000, 1, 1, 20190869105, 1564977600, '03215428675', '#A of Room 109', 105),
(119, 'Hamza Rabani', 1, 'August', 2019, '7500', 1568553064, 1568551875, 7500, 1, 1, 20190821106, 1564977600, '03490575741', '#A of Room 205', 106),
(120, 'Jafar Iqbal', 1, 'August', 2019, '7500', 1568553054, 1568551875, 7500, 1, 1, 20190832107, 1564977600, '03037433720', '#B of Room 204', 107),
(121, 'Ali Ahsan', 1, 'August', 2019, '8000', 1568553042, 1568551875, 8000, 1, 1, 20190830108, 1564977600, '03456138872', '#C of Room 208', 108),
(122, 'Ossama Ali', 1, 'August', 2019, '7500', 1568553033, 1568551875, 7500, 1, 1, 20190878109, 1564977600, '03060517669', '#B of Room 205', 109),
(123, 'Irfan Rathor', 1, 'August', 2019, '7500', 1568552924, 1568551875, 7500, 1, 1, 20190847110, 1564977600, '03334153740', '#C of Room 204', 110),
(124, 'Sameer Syed Khursheed', 1, 'August', 2019, '7500', 1568553119, 1568551875, 7500, 1, 1, 20190850111, 1564977600, '03008761242', '#C of Room 205', 111),
(125, 'Shahid Mehmood', 1, 'August', 2019, '8000', 1568552912, 1568551875, 8000, 1, 1, 20190846112, 1564977600, '03470057648', '#D of Room 206', 112),
(126, 'Ikhlaq Ahmed', 1, 'August', 2019, '8000', 1568553014, 1568551875, 8000, 1, 1, 20190880113, 1564977600, '03555237740', '#B of Room 108', 113),
(127, 'Bilal Hussain', 1, 'August', 2019, '7500', 1568552649, 1568551875, 7500, 1, 1, 20190898114, 1564977600, '03086762288', '#D of Room 204', 114),
(128, 'Zeeshan Gul', 1, 'August', 2019, '8000', 1568553004, 1568551875, 8000, 1, 1, 20190863115, 1564977600, '03171440656', '#A of Room 201', 115),
(129, 'Adnan Shokat', 1, 'August', 2019, '7500', 1568553023, 1568551875, 7500, 1, 1, 20190814116, 1564977600, '03419493698', '#E of Room 204', 116),
(130, 'Ahmed Hassan', 1, 'August', 2019, '7500', 1568553167, 1568551875, 7500, 1, 1, 20190863117, 1564977600, '03069882717', '#D of Room 203', 117),
(132, 'Muhammad Hamaad', 1, 'August', 2019, '7500', 1568552066, 1568551876, 7500, 1, 1, 20190877119, 1564977600, '03319283623', '#E of Room 203', 119),
(133, 'Ahsanullah', 1, 'August', 2019, '8000', 1568552138, 1568551876, 8000, 1, 1, 20190883120, 1564977600, '03338681161', '#D of Room 208', 120),
(134, 'Kashif Mehmood', 1, 'August', 2019, '9000', 1568552551, 1568551876, 9000, 1, 1, 20190822121, 1564977600, '03465732997', '#B of Room 110', 121),
(135, 'AzeemUllah', 1, 'August', 2019, '8000', 1568552537, 1568551876, 8000, 1, 1, 20190831122, 1564977600, '03175788002', '#C of Room 108', 122),
(136, 'Muhammd Tariq Ansari', 1, 'August', 2019, '7500', 1568552316, 1568551876, 7500, 1, 1, 20190838123, 1564977600, '03366479996', '#D of Room 205', 123),
(137, 'Fayyaz Haider', 1, 'August', 2019, '7500', 1568552150, 1568551876, 7500, 1, 1, 20190877124, 1564977600, '03421892935', '#E of Room 205', 124),
(138, 'Raees Waqar Qureshi', 1, 'August', 2019, '8000', 1568552406, 1568551876, 8000, 1, 1, 20190811125, 1564977600, '03005581581', '#B of Room 109', 125),
(139, 'Malik Atif Mehmood', 1, 'August', 2019, '8000', 1568552417, 1568551876, 8000, 1, 1, 20190888126, 1564977600, '03420517896', '#B of Room 201', 126),
(140, 'Najeeb Ullah', 1, 'August', 2019, '7500', 1568552427, 1568551876, 7500, 1, 1, 2019089127, 1564977600, '03119148680', '#A of Room 101', 127),
(141, 'Muhammad Sohail', 1, 'August', 2019, '7500', 1568552395, 1568551876, 7500, 1, 1, 20190855128, 1564977600, '03465012859', '#B of Room 101', 128),
(142, 'Ameer Nawaz Khan', 1, 'August', 2019, '8500', 1568552282, 1568551876, 8500, 1, 1, 20190871129, 1564977600, '03465790083', '#A of Room 4', 129),
(143, 'Ahsan Ullah', 1, 'August', 2019, '7500', 1568552268, 1568551876, 7500, 1, 1, 20190875130, 1564977600, '03469586835', '#A of Room 104', 130),
(144, 'Raja Mubbashir Bashir', 1, 'August', 2019, '7500', 1568552078, 1568551876, 7500, 1, 1, 20190887131, 1564977600, '03453357627', '#B of Room 104', 131),
(145, 'Zakir Hussain Tenu', 1, 'August', 2019, '8000', 1568552245, 1568551876, 8000, 1, 1, 20190891132, 1564977600, '03488030465', '#A of Room 2', 132),
(146, 'Ishtiaq Anjum', 1, 'August', 2019, '7500', 1568552563, 1568551876, 7500, 1, 1, 20190849133, 1564977600, '03400126329', '#C of Room 101', 133),
(147, 'Mian Muhammad Asif Chaudhry', 1, 'August', 2019, '8000', 1568552197, 1568551876, 8000, 1, 1, 20190854134, 1564977600, '03009568900', '#A of Room 107', 134),
(148, 'Usman Khalid', 1, 'August', 2019, '8000', 1568552117, 1568551876, 8000, 1, 1, 20190826135, 1564977600, '03465742840', '#B of Room 107', 135),
(149, 'Sajid Mehmood', 1, 'August', 2019, '8000', 1568552104, 1568551876, 8000, 1, 1, 20190879136, 1564977600, '03005184654', '#C of Room 107', 136),
(150, 'Zain Ul Abdien', 1, 'August', 2019, '7500', 1568552128, 1568551876, 7500, 1, 1, 20190812137, 1564977600, '03144911703', '#A of Room 105', 137),
(151, 'Rehan Gul', 1, 'August', 2019, '8000', 1568552484, 1568551876, 8000, 1, 1, 20190854138, 1564977600, '03003298844', '#B of Room 2', 138),
(152, 'khalid Mehmood', 1, 'August', 2019, '8000', 1568552452, 1568551876, 8000, 1, 1, 20190811139, 1564977600, '03470111918', '#D of Room 107', 139),
(153, 'Muhammad Taimoor Akbar Khan', 1, 'August', 2019, '8500', 1568552440, 1568551876, 8500, 1, 1, 2019084140, 1564977600, '03499434524', '#B of Room 4', 140),
(154, 'Hamid Rasool', 1, 'August', 2019, '8500', 1568552624, 1568551876, 8500, 1, 1, 20190890141, 1564977600, '03135485552', '#A of Room 103', 141),
(155, 'Muhammad Zahoor', 1, 'August', 2019, '7500', 1568552610, 1568551876, 7500, 1, 1, 20190810142, 1564977600, '03479541122', '#D of Room 101', 142),
(156, 'Sohail Ahmed', 1, 'August', 2019, '7500', 1568552257, 1568551876, 7500, 1, 1, 20190894143, 1564977600, '03485330208', '#C of Room 104', 143),
(157, 'Naeem', 1, 'August', 2019, '8000', 1568552592, 1568551876, 8000, 1, 1, 2019081144, 1564977600, '03168482097', '#C of Room 2', 144),
(158, 'Adil Hussain', 1, 'August', 2019, '7500', 1568552498, 1568551876, 7500, 1, 1, 20190882145, 1564977600, '03045850508', '#B of Room 105', 145),
(159, 'Hassan Maskur', 1, 'August', 2019, '9000', 1568552513, 1568551876, 9000, 1, 1, 20190842146, 1564977600, '03369816758', '#A of Room 3', 146),
(160, 'Waqas Alam', 1, 'August', 2019, '7500', 1568552524, 1568551876, 7500, 1, 1, 20190865147, 1564977600, '03135869374', '#D of Room 104', 147),
(161, 'Ahmed Farooq', 1, 'August', 2019, '7500', 1568552578, 1568551876, 7500, 1, 1, 20190869148, 1564977600, '03420515071', '#A of Room 102', 148),
(162, 'Waqar Ali', 1, 'August', 2019, '8000', 1568552234, 1568551876, 8000, 1, 1, 20190891149, 1564977600, '03023695047', '#D of Room 2', 149),
(163, 'Rizwan Khalid', 1, 'August', 2019, '7500', 1568552222, 1568551876, 7500, 1, 1, 20190831150, 1564977600, '03403118920', '#B of Room 102', 150),
(164, 'Muhammad Dawood', 1, 'August', 2019, '7500', 1568552212, 1568551876, 7500, 1, 1, 20190811151, 1564977600, '03074455944', '#C of Room 105', 151),
(165, 'Faizan Mehmood', 1, 'August', 2019, '8000', 1568552298, 1568551876, 8000, 1, 1, 20190895152, 1564977600, '03108367684', '#A of Room 106', 152),
(166, 'Shahbaz Hussain', 1, 'August', 2019, '7500', 1568552384, 1568551876, 7500, 1, 1, 20190834153, 1564977600, '03467306923', '#D of Room 105', 153),
(167, 'Muhammad Bilal Khan', 1, 'August', 2019, '7500', 1568552374, 1568551876, 7500, 1, 1, 20190872154, 1564977600, '03077161140', '#E of Room 105', 154),
(168, 'Aqib Mehmood', 1, 'August', 2019, '7500', 1568552087, 1568551876, 7500, 1, 1, 20190897155, 1564977600, '03065339360', '#C of Room 102', 155),
(169, 'Mehb Ur Rehman', 1, 'August', 2019, '7500', 1568552353, 1568551876, 7500, 1, 1, 2019086156, 1564977600, '03045528011', '#D of Room 102', 156),
(170, 'Muhammad Awais Raza', 1, 'August', 2019, '9000', 1568552339, 1568551876, 9000, 1, 1, 20190833157, 1564977600, '03474599799', '#A of Room 1', 157),
(171, 'Umer Sheikh', 1, 'August', 2019, '8500', 1568552185, 1568551876, 8500, 1, 1, 20190875158, 1564977600, '03345656625', '#B of Room 103', 158),
(172, 'Muhammad Haasan', 1, 'August', 2019, '9000', 1568552162, 1568551876, 9000, 1, 1, 20190851159, 1564977600, '03353407843', '#B of Room 3', 159),
(173, 'Shakeel Ahmed', 1, 'August', 2019, '7500', 1568552471, 1568551876, 7500, 1, 1, 20190865160, 1564977600, '03013970613', '#E of Room 102', 160),
(174, 'Changaiz Khan', 1, 'August', 2019, '7500', 1568552035, 1568552035, 7500, 1, 1, 20190834118, 1564977600, '03129293111', '#B of Room 202', 118),
(177, 'Muhammad Awais Raza', 2, 'September', 2019, '9000', 1568637877, 1568637746, 6000, 1, 1, 20190976157, 1568952000, '03474599799', '#A of Room 1', 157),
(178, 'mufta ur rehman', 2, 'September', 2019, '8000', 1568639105, 1568639105, 5000, 1, 1, 2019096161, 1569816000, '03485248374', '#C of Room 109', 161),
(180, 'Muhammad Arslan Mushtaq', 1, 'September', 2019, '8000', 1568647400, 1568647400, 9000, 1, 1, 20190923164, 1568260800, '03081421562', '#A of Room 306', 164),
(181, 'Muhammad Zahid', 2, 'September', 2019, '9000', 1569053886, 1569053886, 7000, 1, 1, 2019092563, 1569384000, '03168783866', '#B of Room G3', 63),
(182, 'mati ur rehman', 1, 'September', 2019, '9000', 1569059980, 1569059980, 4000, 1, 1, 20190915165, 1568779200, '03400825279', '#B of Room G1', 165),
(183, 'anwar kamal', 1, 'September', 2019, '8000', 1569060069, 1569060069, 8000, 1, 1, 20190927167, 1568347200, '03144103224', '#C of Room G2', 167),
(186, 'mohammad salman', 2, 'September', 2019, '8000', 1569577030, 1569576905, 4000, 1, 1, 20190975169, 1568779200, '03341551884', '#B of Room G2', 169),
(187, 'AhsanUllah', 1, 'September', 2019, '8000', 1569678515, 1569678378, 5000, 1, 1, 2019099673, 1552107600, '03335408103', '#A of Room 307', 73),
(188, 'Hassan Ullah', 2, 'September', 2019, '8000', 1569682768, 1569678602, 7500, 1, 1, 20190925187, 1552107600, '03162279502', '#A of Room 309', 187),
(189, 'Muhammad Haasan', 2, 'September', 2019, '9000', 1569681974, 1569679337, 5000, 1, 1, 20190990159, 1552107600, '03353407843', '#A of Room G3', 159),
(190, 'Asif Nawaz', 2, 'September', 2019, '8500', 1569682508, 1569679510, 7000, 1, 1, 20190922186, 1562644800, '03167580160', '#B of Room G4', 186),
(191, 'Nasar', 1, 'September', 2019, '7500', 1569679633, 1569679633, 7500, 1, 1, 20190977211, 1552107600, '03111793129', '#E of Room 101', 211),
(192, 'Najeeb Ullah', 2, 'September', 2019, '7500', 1569682421, 1569679763, 5000, 1, 1, 20190979127, 1552107600, '03119148680', '#A of Room 101', 127),
(194, 'Ameer Nawaz Khan', 1, 'September', 2019, '8500', 1569680584, 1569680584, 6000, 1, 1, 20190937129, 1570593600, '03465790083', '#A of Room G4', 129),
(195, 'Zakir Hussain Tenu', 2, 'September', 2019, '8000', 1569682181, 1569681027, 7000, 1, 1, 20190987132, 1552107600, '03488030465', '#D of Room 206', 132),
(196, 'TOFEEQ', 2, 'September', 2019, '7500', 1569682136, 1569681209, 5000, 1, 1, 2019099223, 1547010000, '0300888058', '#A of Room 102', 223),
(197, 'Hamid Rasool', 2, 'September', 2019, '8500', 1569682040, 1569681555, 8000, 1, 1, 20190951141, 1547010000, '03135485552', '#A of Room 103', 141),
(198, 'Waleed Ahmed', 1, 'September', 2019, '8500', 1569681780, 1569681670, 8000, 1, 1, 2019094069, 1547010000, '03053247003', '#C of Room 103', 69),
(199, 'Umer Sheikh', 1, 'September', 2019, '8500', 1569681746, 1569681746, 8000, 1, 1, 20190994158, 1547010000, '03345656625', '#B of Room 103', 158),
(200, 'Naveed ahmad', 1, 'September', 2019, '7500', 1569683222, 1569683222, 6500, 1, 1, 20190989224, 1557374400, '03343545992', '#B of Room 102', 224),
(201, 'Waqas Alam', 2, 'September', 2019, '7500', 1569683323, 1569683323, 7500, 1, 1, 20190959147, 1547010000, '03135869374', '#D of Room 104', 147),
(202, 'Sohail Ahmed', 1, 'September', 2019, '7500', 1569683403, 1569683403, 7500, 1, 1, 20190937143, 1557374400, '03485330208', '#C of Room 104', 143),
(203, 'Ahlaq Ahmad', 1, 'September', 2019, '7500', 1569683695, 1569683695, 7500, 1, 1, 20190931199, 1557374400, '03175788002', '#B of Room 104', 199),
(204, 'Muhammad Ramzan', 1, 'September', 2019, '7500', 1569683814, 1569683814, 4300, 1, 1, 20190913184, 1552107600, '03045486998', '#A of Room 104', 184),
(205, 'Mahmmad Iqbal', 1, 'September', 2019, '7500', 1569683923, 1569683923, 6000, 1, 1, 20190935197, 1547010000, '03144259666', '#E of Room 105', 197),
(206, 'AfzalSaba', 1, 'September', 2019, '7500', 1569684033, 1569684033, 7500, 1, 1, 20190913203, 1552107600, '03444403123', '#A of Room 105', 203),
(207, 'Muhammad Dawood', 1, 'September', 2019, '7500', 1569684115, 1569684115, 6000, 1, 1, 20190931151, 1552107600, '03074455944', '#C of Room 105', 151),
(208, 'Fazal Haq', 1, 'September', 2019, '8000', 1569684651, 1569684651, 15500, 1, 1, 20190933215, 1552107600, '03159580774', '#D of Room 106', 215),
(209, 'Shahid Mehmood', 2, 'September', 2019, '8000', 1569684805, 1569684805, 9000, 1, 1, 20190963216, 1547010000, '03470057640', '#C of Room 106', 216),
(210, 'Aleem Ullah', 1, 'September', 2019, '8000', 1569685380, 1569685380, 8000, 1, 1, 20190953213, 1549688400, '03170507007', '#A of Room 106', 213),
(211, 'Sajid Mehmood', 2, 'September', 2019, '8000', 1569685453, 1569685453, 6000, 1, 1, 20190966136, 1547010000, '03005184654', '#C of Room 107', 136),
(212, 'khalid Mehmood', 1, 'September', 2019, '8000', 1569685517, 1569685517, 6000, 1, 1, 20190988139, 1547010000, '03470111918', '#D of Room 107', 139),
(213, 'Mian Muhammad Asif Chaudhry', 2, 'September', 2019, '8000', 1569685629, 1569685629, 6000, 1, 1, 20190975134, 1547010000, '03009568900', '#A of Room 107', 134),
(214, 'Usman Khalid', 1, 'September', 2019, '8000', 1569685686, 1569685686, 6000, 1, 1, 20190919135, 1547010000, '03465742840', '#B of Room 107', 135),
(215, 'Madsar Aahmad', 1, 'September', 2019, '8000', 1569685816, 1569685816, 8000, 1, 1, 20190969182, 1549688400, '03175788002', '#A of Room 108', 182),
(216, 'Raees Waqar Qureshi', 1, 'September', 2019, '8000', 1569688346, 1569688207, 8000, 1, 1, 20190928125, 1549688400, '03005581581', '#B of Room 109', 125),
(217, 'Muhammad Bilal Khan', 2, 'September', 2019, '8000', 1569688489, 1569688489, 5500, 1, 1, 20190915154, 1547010000, '03077161140', '#D of Room 109', 154),
(218, 'Muhammad Wahab Asif', 1, 'September', 2019, '8000', 1569688596, 1569688596, 4000, 1, 1, 20190984105, 1552107600, '03215428675', '#A of Room 109', 105),
(219, 'Nasir Siddique', 2, 'September', 2019, '9000', 1569688691, 1569688691, 8000, 1, 1, 2019094470, 1552107600, '03121129005', '#A of Room 110', 70),
(221, 'Malik Atif Mehmood', 2, 'September', 2019, '8000', 1569691591, 1569691591, 8500, 1, 1, 2019092126, 1547010000, '03420517896', '#C of Room 201', 126),
(222, 'Zeeshan Gul', 2, 'September', 2019, '8000', 1569691662, 1569691662, 5000, 1, 1, 20190952115, 1547010000, '03171440656', '#A of Room 201', 115),
(223, 'Ahtar Khan', 2, 'September', 2019, '8000', 1569691940, 1569691940, 5500, 1, 1, 20190972185, 1547010000, '03411359004', '#B of Room 201', 185),
(224, 'Rizwan Khalid', 1, 'September', 2019, '7500', 1569692213, 1569692213, 6000, 1, 1, 20190925150, 1547010000, '03403118920', '#C of Room 202', 150),
(225, 'Hamza Rabani', 2, 'September', 2019, '8000', 1569692325, 1569692325, 3500, 1, 1, 20190927106, 1547010000, '03490575741', '#B of Room 304-A', 106),
(226, 'Muhammad Zaheair', 1, 'September', 2019, '7500', 1569692422, 1569692422, 6000, 1, 1, 20190979193, 1547010000, '03008597934', '#E of Room 202', 193),
(227, 'Muhammad Tariq Ansari', 2, 'September', 2019, '7500', 1569692517, 1569692517, 7000, 1, 1, 20190945103, 1547010000, '03366479996', '#B of Room 203', 103),
(228, 'Tanveer Ahmed', 1, 'September', 2019, '7500', 1569692570, 1569692570, 7500, 1, 1, 20190914104, 1547010000, '03082415347', '#C of Room 203', 104),
(230, 'Bilal Hussain', 2, 'September', 2019, '7500', 1569693057, 1569693057, 10000, 1, 1, 20190959114, 1547010000, '03086762288', '#D of Room 204', 114),
(231, 'muhammad irfan', 2, 'September', 2019, '7500', 1569693469, 1569693469, 14500, 1, 1, 2019094284, 1547010000, '03458964244', '#E of Room 204', 84),
(232, 'Jafar Iqbal', 2, 'September', 2019, '7500', 1569693529, 1569693529, 7000, 1, 1, 20190931107, 1547010000, '03037433720', '#B of Room 204', 107),
(233, 'Adnan Rathor', 2, 'September', 2019, '7500', 1569693599, 1569693599, 7000, 1, 1, 20190971110, 1570593600, '03334153740', '#C of Room 204', 110),
(234, 'Muhammad Adnan khan', 1, 'September', 2019, '7500', 1569694201, 1569694201, 7500, 1, 1, 20190963162, 1547010000, '192887', '#D of Room 205', 162),
(235, 'Mahammad Zai', 1, 'September', 2019, '7500', 1569694268, 1569694268, 7500, 1, 1, 20190986202, 1547010000, '03421892935', '#E of Room 205', 202),
(236, 'mohammad  ubaid ishfaq', 2, 'September', 2019, '8000', 1569694518, 1569694518, 2000, 1, 1, 20190981168, 1547010000, '03009136361', '#D of Room G2', 168),
(237, 'Aqasih', 1, 'September', 2019, '7500', 1569694753, 1569694753, 7500, 1, 1, 20190929200, 1547010000, '03421892935', '#B of Room 205', 200),
(238, 'Mahmmad Nadim', 1, 'September', 2019, '7500', 1569696221, 1569696221, 7500, 1, 1, 20190955226, 1547010000, '03359700824', '#A of Room 205', 226),
(242, 'Ahmed Farooq', 1, 'September', 2019, '7500', 1569734666, 1569734666, 8500, 1, 1, 20190940148, 1547010000, '03420515071', '#D of Room 202', 148),
(243, 'Waqar Ali', 2, 'September', 2019, '8000', 1569734790, 1569734790, 8000, 1, 1, 20190989149, 1547010000, '03023695047', '#C of Room 206', 149),
(244, 'ShifaUllah', 2, 'September', 2019, '8000', 1569735364, 1569735364, 7000, 1, 1, 2019098365, 1547010000, '03416853653', '#A of Room 207', 65),
(245, 'Ghulam Nabi', 1, 'September', 2019, '8000', 1569735541, 1569735541, 8000, 1, 1, 201909168, 1547010000, '03005346631', '#D of Room 207', 68),
(246, 'Muhammad Shair Joni', 2, 'September', 2019, '8000', 1569735627, 1569735627, 9000, 1, 1, 2019095266, 1547010000, '03017479799', '#B of Room 207', 66),
(247, 'ahmed khan', 1, 'September', 2019, '8000', 1569735828, 1569735828, 8000, 1, 1, 20190964166, 1547010000, '03327983209', '#C of Room 207', 166),
(248, 'Ahmad  DEIN', 2, 'September', 2019, '8000', 1569735928, 1569735928, 7000, 1, 1, 20190985222, 1547010000, '03153901253', '#C of Room 208', 222),
(249, 'ahsan ullah', 2, 'September', 2019, '8000', 1569736533, 1569736533, 4000, 1, 1, 2019092086, 1549688400, '03338681161', '#A of Room 208', 86),
(250, 'M sajad', 1, 'September', 2019, '8000', 1569736877, 1569736877, 6500, 1, 1, 2019096797, 1547010000, '03335010620', '#A of Room 209', 97),
(251, 'shan khalid', 1, 'September', 2019, '8000', 1569736995, 1569736995, 8000, 1, 1, 2019092199, 1547010000, '03428980783', '#C of Room 209', 99),
(252, 'M amin', 2, 'September', 2019, '8000', 1569737059, 1569737059, 7000, 1, 1, 2019099598, 1547010000, '03369529060', '#B of Room 209', 98),
(253, 'zahid Gulam', 1, 'September', 2019, '8000', 1569737122, 1569737122, 7000, 1, 1, 20190961190, 1547010000, '03339683431', '#D of Room 209', 190),
(254, 'abdul rasheed', 2, 'September', 2019, '9000', 1569737205, 1569737205, 8000, 1, 1, 2019094282, 1547010000, '03005925468', '#A of Room 210', 82),
(255, 'kanyyi gee', 1, 'September', 2019, '7500', 1569737258, 1569737258, 8000, 1, 1, 2019092294, 1547010000, '03154861522', '#A of Room 301-B', 94),
(256, 'Asad Saeed Ahmed', 2, 'September', 2019, '7500', 1569737326, 1569737326, 7500, 1, 1, 20190950102, 1552107600, '03335152746', '#B of Room 301-B', 102),
(257, 'Shafaqt ali', 1, 'September', 2019, '7500', 1569737543, 1569737543, 8000, 1, 1, 20190943220, 1575867600, '03078477256', '#B of Room 301-A', 220),
(258, 'Changaiz Khan', 2, 'September', 2019, '7500', 1569737687, 1569737687, 5000, 1, 1, 20190942118, 1557374400, '03129293111', '#C of Room 302-A', 118),
(259, 'Sajjad Ali', 2, 'September', 2019, '7500', 1569737777, 1569737777, 2000, 1, 1, 2019093078, 1549688400, '03452745918', '#A of Room 302-A', 78),
(261, 'Qasim Rasheed', 2, 'September', 2019, '7500', 1569738010, 1569738010, 2000, 1, 1, 2019096480, 1568779200, '03126919791', '#B of Room 302-A', 80),
(262, 'Inaam ul haq qureshi', 2, 'September', 2019, '7500', 1569738078, 1569738078, 7000, 1, 1, 2019092290, 1552107600, '03358405960', '#A of Room 302-B', 90),
(263, 'Mahammad Murselin', 1, 'September', 2019, '7500', 1569738146, 1569738146, 4000, 1, 1, 2019099192, 1568779200, '03045411010', '#B of Room 302-B', 192),
(264, 'Fawad Ahmad Abbasi', 1, 'September', 2019, '7500', 1569738278, 1569738278, 8000, 1, 1, 2019094775, 1547010000, '03428343957', '#A of Room 303-A', 75),
(266, 'Faizan Ahmed', 1, 'September', 2019, '8000', 1569738903, 1569738903, 7500, 1, 1, 20190986101, 1547010000, '03129380985', '#A of Room 304-A', 101),
(267, 'shfeiq ahmad', 1, 'September', 2019, '7500', 1569739149, 1569739149, 6000, 1, 1, 20190990179, 1565323200, '03488030465', '#A of Room 303-B', 179),
(268, 'Riyaz Ahmed', 1, 'September', 2019, '8000', 1569739273, 1569739273, 7000, 1, 1, 201909996, 1547010000, '03139166529', '#B of Room 304-B', 96),
(269, 'Humair', 1, 'September', 2019, '8000', 1569739358, 1569739358, 5000, 1, 1, 20190922210, 1570593600, '03346751565', '#A of Room 304-B', 210),
(270, 'Basit Ali', 1, 'September', 2019, '7500', 1569739412, 1569739412, 16000, 1, 1, 2019096685, 1552107600, '03111519315', '#B of Room 305-B', 85),
(271, 'Abdullah', 1, 'September', 2019, '8000', 1570388740, 1569739558, 8000, 1, 1, 20190921218, 1552107600, '03169972484', '#D of Room 306', 218),
(272, 'Asif Ruhsool', 2, 'September', 2019, '8000', 1569739630, 1569739630, 7000, 1, 1, 20190972208, 1552107600, '03336521539', '#C of Room 306', 208),
(273, 'Waquce', 2, 'September', 2019, '8000', 1569739773, 1569739773, 7000, 1, 1, 20190934209, 1552107600, '03450535440', '#B of Room 306', 209),
(274, 'muhammad ASIF', 2, 'September', 2019, '8000', 1569739931, 1569739931, 7500, 1, 1, 20190932221, 1552107600, '03359700824', '#B of Room 307', 221),
(275, 'Sufyan', 2, 'September', 2019, '8000', 1569740085, 1569740085, 7500, 1, 1, 20190915204, 1547010000, '03425287908', '#C of Room 307', 204),
(277, 'Ahsan Zia', 1, 'September', 2019, '8000', 1569740394, 1569740394, 7500, 1, 1, 2019098779, 1547010000, '03004708787', '#B of Room 308', 79),
(278, 'Skandar Alam', 1, 'September', 2019, '8000', 1569740471, 1569740471, 8000, 1, 1, 20190936191, 1552107600, '03418825036', '#C of Room 308', 191),
(279, 'Hassan ALbina', 1, 'September', 2019, '8000', 1569740563, 1569740563, 5000, 1, 1, 20190928178, 1570593600, '03115531387', '#D of Room 308', 178),
(280, 'Hamza', 1, 'September', 2019, '8000', 1569740699, 1569740699, 7500, 1, 1, 20190925206, 1552107600, '03439360438', '#C of Room 309', 206),
(281, 'Hamid ALI', 2, 'September', 2019, '8000', 1569741781, 1569740778, 2500, 1, 1, 20190938196, 1570593600, '03109365360', '#B of Room 309', 196),
(282, 'Muhammad Sohail', 1, 'September', 2019, '9000', 1569753725, 1569753725, 7000, 1, 1, 20190932128, 1547010000, '03465012859', '#A of Room 310', 128),
(283, 'Adnan', 2, 'September', 2019, '9000', 1569753852, 1569753852, 8000, 1, 1, 20190989205, 1547010000, '03419493698', '#B of Room 310', 205),
(284, 'abdul reshad', 1, 'September', 2019, '9000', 1569753965, 1569753965, 7000, 1, 1, 20190994172, 1547010000, '03085337426', '#B of Room GB1', 172),
(285, 'saeed ahamd', 1, 'September', 2019, '9000', 1569754174, 1569754174, 7000, 1, 1, 20190965170, 1547010000, '03331228323', '#A of Room GB1', 170),
(286, 'Raja Mubbashir Bashir', 1, 'September', 2019, '8500', 1569754244, 1569754244, 6000, 1, 1, 20190918131, 1570593600, '03453357627', '#A of Room B3', 131),
(287, 'Ahatiq', 1, 'September', 2019, '7000', 1569754393, 1569754393, 8000, 1, 1, 2019098195, 1552107600, '03409055960', '#C of Room b6', 195),
(288, 'Zeeshan Muatza', 1, 'September', 2019, '7500', 1569754470, 1569754470, 7000, 1, 1, 20190953177, 1547010000, '03416834977', '#A of Room b6', 177),
(289, 'muhammad latif', 1, 'September', 2019, '7500', 1569754518, 1569754518, 7000, 1, 1, 20190935176, 1547010000, '03416834977', '#B of Room b6', 176),
(290, 'Naeem', 2, 'September', 2019, '8000', 1569754593, 1569754593, 5000, 1, 1, 20190999144, 1547010000, '03168482097', '#A of Room 206', 144),
(291, 'sobhan', 2, 'September', 2019, '8000', 1569755085, 1569755085, 7500, 1, 1, 20190998207, 1547010000, '03495091618', '#E of Room 309', 207),
(294, 'Sajid Abbas', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019103162, 1557460800, '03017448700', '#A of Room 204', 62),
(295, 'Muhammad Zahid', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 2019102363, 1557460800, '03168783866', '#B of Room G3', 63),
(296, 'ShifaUllah', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019106065, 1557460800, '03416853653', '#A of Room 207', 65),
(297, 'Muhammad Shair Joni', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019109866, 1557460800, '03017479799', '#B of Room 207', 66),
(298, 'Ghulam Nabi', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019107168, 1557460800, '03005346631', '#D of Room 207', 68),
(299, 'Waleed Ahmed', 0, 'October', 2019, '8500', 1570451681, 1570451681, 0, 1, 1, 2019106169, 1557460800, '03053247003', '#C of Room 103', 69),
(300, 'Nasir Siddique', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 2019105370, 1557460800, '03121129005', '#A of Room 110', 70),
(301, 'AhsanUllah', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019106973, 1557460800, '03335408103', '#A of Room 307', 73),
(302, 'Syed Shaheer Hussain', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019102474, 1557460800, '03131919517', '#A of Room 301-A', 74),
(303, 'Fawad Ahmad Abbasi', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019101775, 1557460800, '03428343957', '#A of Room 303-A', 75),
(304, 'Syed Ameer Ahsan ullah', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019103376, 1557460800, '03159462927', '#A of Room 308', 76),
(305, 'Sajjad Ali', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019109578, 1557460800, '03452745918', '#A of Room 302-A', 78),
(306, 'Ahsan Zia', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019103179, 1557460800, '03004708787', '#B of Room 308', 79),
(307, 'Qasim Rasheed', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019103280, 1557460800, '03126919791', '#B of Room 302-A', 80),
(308, 'abdul rasheed', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 2019101982, 1557460800, '03005925468', '#A of Room 210', 82),
(309, 'Mujab ur rehman', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019101983, 1557460800, '03045528011', '#C of Room 102', 83),
(310, 'muhammad irfan', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 201910984, 1557460800, '03458964244', '#E of Room 204', 84),
(311, 'Basit Ali', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019108285, 1557460800, '03111519315', '#B of Room 305-B', 85),
(312, 'ahsan ullah', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019107486, 1557460800, '03338681161', '#A of Room 208', 86),
(313, 'Muhammad Awais', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019102387, 1557460800, '03006078983', '#C of Room 303-A', 87),
(314, 'Inaam ul haq qureshi', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019102790, 1557460800, '03358405960', '#A of Room 302-B', 90),
(315, 'Ali ahsan', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019102692, 1557460800, '03456138872', '#B of Room 208', 92),
(316, 'kanyyi gee', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019105294, 1557460800, '03154861522', '#A of Room 301-B', 94),
(317, 'Riyaz Ahmed', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019109496, 1557460800, '03139166529', '#B of Room 304-B', 96),
(318, 'M sajad', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019108697, 1557460800, '03335010620', '#A of Room 209', 97),
(319, 'M amin', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019105498, 1557460800, '03369529060', '#B of Room 209', 98),
(320, 'shan khalid', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019106799, 1557460800, '03428980783', '#C of Room 209', 99),
(321, 'Taimoor Shahzad', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191020100, 1557460800, '03124141732', '#C of Room 305-A', 100),
(322, 'Faizan Ahmed', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191045101, 1557460800, '03129380985', '#A of Room 304-A', 101),
(323, 'Asad Saeed Ahmed', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191032102, 1557460800, '03335152746', '#B of Room 301-B', 102),
(324, 'Muhammad Tariq Ansari', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191078103, 1557460800, '03366479996', '#B of Room 203', 103),
(325, 'Tanveer Ahmed', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019106104, 1557460800, '03082415347', '#C of Room 203', 104),
(326, 'Muhammad Wahab Asif', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191099105, 1557460800, '03215428675', '#A of Room 109', 105),
(327, 'Hamza Rabani', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191078106, 1557460800, '03490575741', '#B of Room 304-A', 106),
(328, 'Jafar Iqbal', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191083107, 1557460800, '03037433720', '#B of Room 204', 107),
(329, 'Adnan Rathor', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191081110, 1557460800, '03334153740', '#C of Room 204', 110),
(330, 'Bilal Hussain', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191030114, 1557460800, '03086762288', '#D of Room 204', 114),
(331, 'Zeeshan Gul', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191078115, 1557460800, '03171440656', '#A of Room 201', 115),
(332, 'Changaiz Khan', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019107118, 1557460800, '03129293111', '#C of Room 302-A', 118),
(333, 'Kashif Mehmood', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 20191047121, 1557460800, '03465732997', '#B of Room 110', 121),
(334, 'Raees Waqar Qureshi', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191038125, 1557460800, '03005581581', '#E of Room 202', 125),
(335, 'Malik Atif Mehmood', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191042126, 1557460800, '03420517896', '#C of Room 201', 126),
(336, 'Najeeb Ullah', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019104127, 1557460800, '03119148680', '#A of Room 101', 127),
(337, 'Muhammad Sohail', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 20191056128, 1557460800, '03465012859', '#A of Room 310', 128),
(338, 'Ameer Nawaz Khan', 0, 'October', 2019, '8500', 1570451681, 1570451681, 0, 1, 1, 2019104129, 1557460800, '03465790083', '#A of Room G4', 129),
(339, 'Raja Mubbashir Bashir', 0, 'October', 2019, '8500', 1570451681, 1570451681, 0, 1, 1, 20191049131, 1557460800, '03453357627', '#A of Room B3', 131),
(340, 'Zakir Hussain Tenu', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191053132, 1557460800, '03488030465', '#D of Room 206', 132),
(341, 'Mian Muhammad Asif Chaudhry', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191061134, 1557460800, '03009568900', '#A of Room 107', 134),
(342, 'Usman Khalid', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191015135, 1557460800, '03465742840', '#B of Room 107', 135),
(343, 'Sajid Mehmood', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191066136, 1557460800, '03005184654', '#C of Room 107', 136),
(344, 'Rehan Gul', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191013138, 1557460800, '03003298844', '#B of Room 206', 138),
(345, 'khalid Mehmood', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191064139, 1557460800, '03470111918', '#D of Room 107', 139),
(346, 'Hamid Rasool', 0, 'October', 2019, '8500', 1570451681, 1570451681, 0, 1, 1, 20191025141, 1557460800, '03135485552', '#A of Room 103', 141),
(347, 'Sohail Ahmed', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191013143, 1557460800, '03485330208', '#C of Room 104', 143),
(348, 'Naeem', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191082144, 1557460800, '03168482097', '#A of Room 206', 144),
(349, 'Waqas Alam', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191054147, 1557460800, '03135869374', '#D of Room 104', 147),
(350, 'Ahmed Farooq', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191011148, 1557460800, '03420515071', '#D of Room 202', 148),
(351, 'Waqar Ali', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191099149, 1557460800, '03023695047', '#C of Room 206', 149),
(352, 'Rizwan Khalid', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191087150, 1557460800, '03403118920', '#C of Room 202', 150),
(353, 'Muhammad Dawood', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191087151, 1557460800, '03074455944', '#C of Room 105', 151),
(354, 'Muhammad Bilal Khan', 0, 'October', 2019, '8000', 1570950528, 1570451681, 0, 1, 1, 20191094154, 1557460800, '03077161140', '#D of Room 109', 154),
(355, 'Aqib Mehmood', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191093155, 1557460800, '03065339360', '#B of Room 202', 155),
(356, 'Mehb Ur Rehman', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191066156, 1557460800, '03045528011', '#A of Room 202', 156),
(357, 'Muhammad Awais Raza', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 20191052157, 1557460800, '03474599799', '#A of Room G1', 157),
(358, 'Umer Sheikh', 0, 'October', 2019, '8500', 1570451681, 1570451681, 0, 1, 1, 20191044158, 1557460800, '03345656625', '#B of Room 103', 158),
(359, 'Muhammad Haasan', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 20191094159, 1557460800, '03353407843', '#A of Room G3', 159),
(360, 'mufta ur rehman', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191014161, 1557460800, '03485248374', '#C of Room 109', 161),
(361, 'Muhammad Adnan khan', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191044162, 1557460800, '192887', '#D of Room 205', 162),
(362, 'Muhammad Arslan Mushtaq', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191015164, 1557460800, '03081421562', '#A of Room 306', 164),
(363, 'mati ur rehman', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 20191037165, 1557460800, '03400825279', '#B of Room G1', 165),
(364, 'ahmed khan', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191049166, 1557460800, '03327983209', '#C of Room 207', 166),
(365, 'anwar kamal', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191038167, 1557460800, '03144103224', '#C of Room G2', 167),
(366, 'mohammad  ubaid ishfaq', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191086168, 1557460800, '03009136361', '#D of Room G2', 168),
(367, 'mohammad salman', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191093169, 1557460800, '03341551884', '#B of Room G2', 169),
(368, 'saeed ahamd', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 20191065170, 1557460800, '03331228323', '#A of Room GB1', 170),
(369, 'abdul reshad', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 2019103172, 1557460800, '03085337426', '#B of Room GB1', 172),
(370, 'asaam arif', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191062173, 1557460800, '03109166586', '#D of Room 309', 173),
(371, 'muhammad latif', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191037176, 1557460800, '03416834977', '#B of Room b6', 176),
(372, 'Zeeshan Muatza', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191062177, 1557460800, '03416834977', '#A of Room b6', 177),
(373, 'Hassan ALbina', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191065178, 1557460800, '03115531387', '#D of Room 308', 178),
(374, 'shfeiq ahmad', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191088179, 1557460800, '03488030465', '#A of Room 303-B', 179),
(375, 'Zain', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 20191048181, 1557460800, '03459760214', '#B of Room 210', 181),
(376, 'Madsar Aahmad', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191086182, 1557460800, '03175788002', '#A of Room 108', 182),
(377, 'Kalime ullah', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191012183, 1557460800, '03175788002', '#C of Room 108', 183),
(378, 'Muhammad Ramzan', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191011184, 1557460800, '03045486998', '#A of Room 104', 184),
(379, 'Ahtar Khan', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191068185, 1557460800, '03411359004', '#B of Room 201', 185),
(380, 'Asif Nawaz', 0, 'October', 2019, '8500', 1570451681, 1570451681, 0, 1, 1, 20191083186, 1557460800, '03167580160', '#B of Room G4', 186),
(381, 'Hassan Ullah', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191040187, 1557460800, '03162279502', '#A of Room 309', 187),
(382, 'Rashid Abbas', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191081189, 1557460800, '03017448700', '#D of Room 208', 189),
(383, 'zahid Gulam', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191010190, 1557460800, '03339683431', '#D of Room 209', 190),
(384, 'Skandar Alam', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191084191, 1557460800, '03418825036', '#C of Room 308', 191),
(385, 'Mahammad Murselin', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 2019105192, 1557460800, '03045411010', '#B of Room 302-B', 192),
(386, 'Ahatiq', 0, 'October', 2019, '7000', 1570451681, 1570451681, 0, 1, 1, 20191063195, 1557460800, '03409055960', '#C of Room b6', 195),
(387, 'Hamid ALI', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191035196, 1557460800, '03109365360', '#B of Room 309', 196),
(388, 'Mahmmad Iqbal', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191014197, 1557460800, '03144259666', '#E of Room 105', 197),
(389, 'Ahlaq Ahmad', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191017199, 1557460800, '03175788002', '#B of Room 104', 199),
(390, 'Aqasih', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191073200, 1557460800, '03421892935', '#B of Room 205', 200),
(391, 'Mahammad Auaab khver', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191029201, 1557460800, '03016473186', '#C of Room 205', 201),
(392, 'Mahammad Zai', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191093202, 1557460800, '03421892935', '#E of Room 205', 202),
(393, 'AfzalSaba', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191071203, 1557460800, '03444403123', '#A of Room 105', 203),
(394, 'Sufyan', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191056204, 1557460800, '03425287908', '#C of Room 307', 204),
(395, 'Adnan', 0, 'October', 2019, '9000', 1570451681, 1570451681, 0, 1, 1, 20191054205, 1557460800, '03419493698', '#B of Room 310', 205),
(396, 'Hamza', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191021206, 1557460800, '03439360438', '#C of Room 309', 206),
(397, 'sobhan', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019108207, 1557460800, '03495091618', '#E of Room 309', 207),
(398, 'Asif Ruhsool', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191042208, 1557460800, '03336521539', '#C of Room 306', 208),
(399, 'Waquce', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191064209, 1557460800, '03450535440', '#B of Room 306', 209),
(400, 'Humair', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191082210, 1557460800, '03346751565', '#A of Room 304-B', 210),
(401, 'Nasar', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191034211, 1557460800, '03111793129', '#E of Room 101', 211),
(402, 'ChaCha Gull', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191051212, 1557460800, '03058486375', '#B of Room 101', 212),
(403, 'Aleem Ullah', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191023213, 1557460800, '03170507007', '#A of Room 106', 213),
(404, 'Umer Farooq', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 2019107214, 1557460800, '03453357627', '#B of Room 106', 214),
(405, 'Fazal Haq', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191016215, 1557460800, '03159580774', '#D of Room 106', 215),
(406, 'Shahid Mehmood', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191026216, 1557460800, '03470057640', '#C of Room 106', 216),
(407, 'Najebullah', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191045217, 1557460800, '03119148680', '#D of Room 101', 217),
(408, 'Abdullah', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191044218, 1557460800, '03169972484', '#D of Room 306', 218),
(409, 'mamtaz', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191060219, 1557460800, '03319283623', '#D of Room 203', 219),
(410, 'Shafaqt ali', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191034220, 1557460800, '03078477256', '#B of Room 301-A', 220),
(411, 'muhammad ASIF', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191072221, 1557460800, '03359700824', '#B of Room 307', 221),
(412, 'Ahmad  DEIN', 0, 'October', 2019, '8000', 1570451681, 1570451681, 0, 1, 1, 20191039222, 1557460800, '03153901253', '#C of Room 208', 222),
(413, 'TOFEEQ', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191059223, 1557460800, '0300888058', '#A of Room 102', 223),
(414, 'Naveed ahmad', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191050224, 1557460800, '03343545992', '#B of Room 102', 224),
(415, 'WASSI HAIDER', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191015225, 1557460800, '03225640604', '#A of Room 203', 225),
(416, 'Mahmmad Nadim', 0, 'October', 2019, '7500', 1570451681, 1570451681, 0, 1, 1, 20191092226, 1557460800, '03359700824', '#A of Room 205', 226);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `permissions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `user_type`, `timestamp`, `person_id`, `updated_by`, `created_by`, `created_on`, `status`, `permissions`) VALUES
(1, 'zamzamhostel@gmail.com', '$2y$10$5C7cKn51cf4zhkH55qk62uT/xNhK55hAcCzTN2z9OKFNPoWGwFzaq', 1, 1546669808, 0, 1, 1, 1546669808, 1, '1,2,3,4,5,6,7,8,9,10,11,12'),
(69, 'sajidabbasbispisd@gmail.com', '$2y$10$qqC51ezEjnbmZgNEUTcq6.4C6oyshaxaGqP9lShlPFcXGtOQZjdVK', 3, 1568373180, 62, 1, 1, 1568373180, 1, '10'),
(70, 'noemail@zamzamhostel.com', '$2y$10$PmPzvdg1eqdNW7cxmBTu2OBrYNn63OrPCebBNQISo7J0Blm77hN2G', 3, 1569053832, 63, 1, 1, 1568373475, 1, '10'),
(71, 'noemail1@zamzamhostel.com', '$2y$10$guCDLkpZs8IBDa2/C6hoCO3vYSklba11rc995FtG4Stc6V6/rNpUW', 3, 1568743616, 64, 1, 1, 1568373878, 0, '10'),
(72, 'noemail2@zamzamhostel.com', '$2y$10$vo6JRK.sVS9ilA360Th5R.vBQ.ZQKslPnjjZxgiSS/3.S.dY7FQTS', 3, 1568374097, 65, 1, 1, 1568374097, 1, '10'),
(73, 'noemail3@zamzamhostel.com', '$2y$10$nsE1eK9m3yUE52uNLUvY7.Oavu5jQTbYQ6fmXimREhLIq.LM11Kzm', 3, 1568374285, 66, 1, 1, 1568374285, 1, '10'),
(74, 'noemail4@zamzamhostel.com', '$2y$10$oDuejM.vZAKSCRi3iilJz.x62VuBu31nr4qI7i6BOr9RjFF5k7Dcm', 3, 1569306837, 67, 1, 1, 1568374469, 0, '10'),
(75, 'noemail5@zamzamhostel.com', '$2y$10$jgBvgjZ6p7R4kwBvJxQfFuQvmp7DfAPIe7QWmlAnU0P.LmmfjDWDG', 3, 1568374726, 68, 1, 1, 1568374726, 1, '10'),
(76, 'noemail6@zamzamhostel.com', '$2y$10$D41fuidYGkJIpPEFuhNP2.1Im0SWcGQfocvEz6aEttlerCkn..WfW', 3, 1569230252, 69, 1, 1, 1568375043, 1, '10'),
(77, 'noemail7@zamzamhostel.com', '$2y$10$zsg6xqeSHq.OxRYG.FAvIOsqrOORqlIzvgIY2rKXOx/FEqugjkhcu', 3, 1568375301, 70, 1, 1, 1568375301, 1, '10'),
(78, 'noemail8@zamzamhostel.com', '$2y$10$DTn/Ampt8xFW9pT6FMhRheyGxpb3.AG6UaTFs2ElG.4Ph4kwXlBr2', 3, 1569220605, 71, 1, 1, 1568375473, 0, '10'),
(79, 'noemail9@zamzamhostel.com', '$2y$10$pPPjC4C0XuQqx.s3wCTQ0uzyjqxSjjH.RzRpDiiOiVO8Yau5eTo/e', 3, 1568830649, 72, 1, 1, 1568375615, 0, '10'),
(80, 'noemail10@zamzamhostel.com', '$2y$10$Jc0NLAP4GAh.H0mKIYybK.3QSsW5c6.0.L2Hi28ZA9YWrApV8faGe', 3, 1568831378, 73, 1, 1, 1568375828, 1, '10'),
(81, 'shaheerhassan@zamzamhostel.com', '$2y$10$HVAhCy5/C6zYM8BW81hil.Sc2cA3T.MczrKYw4xKcWUaPcBc2EozO', 3, 1568437090, 74, 1, 1, 1568437090, 1, '10'),
(82, 'fawahahmad@zamzamhostel.com', '$2y$10$YQSFTgoPcTe4T2QyBx2NeOf2X9yv8rsSJTxMqZbGFHn3E2gumqdCO', 3, 1568437818, 75, 1, 1, 1568437818, 1, '10'),
(83, 'ameer@zamzamhostel.com', '$2y$10$HplBfxHY/2xz923YtHj0b.8OHGEm/xsM6ptz.5yY1wzRwSTtFGCIa', 3, 1568438107, 76, 1, 1, 1568438107, 1, '10'),
(84, 'zair@zamzamhostel.com', '$2y$10$Isvq0OC.Rd.VbiA842gBGOyEjOhAXZjV.OkyCun021AN09Q7dDBpq', 3, 1569222812, 77, 1, 1, 1568438435, 0, '10'),
(85, 'sajjadali@zamzamhostel.com', '$2y$10$mct8cj/dT8ccrLcI33qZJ.KOLQ2VtlyTLGRwOqBwj2lzRBH/aiY42', 3, 1568439006, 78, 1, 1, 1568439006, 1, '10'),
(86, 'ahsanzia@zamzamhostel.com', '$2y$10$Vrr/MEEmGD.K706zMs.bmu6NxVXVkOQT1IF5KxmfVJNia3.I6Y6L2', 3, 1568471796, 79, 1, 1, 1568471796, 1, '10'),
(87, 'qasimrashid@zamzamhostel.com', '$2y$10$Dax//LN7j71u7gKl8wgPAuHBNIjNbFYzOsg3UtZds6LwwpI96Oyna', 3, 1568472119, 80, 1, 1, 1568472119, 1, '10'),
(88, 'muhammadafzal@zamzamhostel.com', '$2y$10$N.S6vg9ihry7VDO9QcndiewVuGhPWpEzyuIr0MJnT/JWQGvejQ.ga', 3, 1569302904, 81, 1, 1, 1568472386, 0, '10'),
(89, 'abdulrasheed@zamzamhostel.com', '$2y$10$h0Xyp/LNh0zlBnFVcz1KYuwDVGNj5QXPfa9YtUsMf4Nco7kgOveXO', 3, 1568472745, 82, 1, 1, 1568472745, 1, '10'),
(90, 'muhiburrehman@zamzamhostel.com', '$2y$10$HmKXyTtgS0nKYFuFGvcTm.klS0pnbdujIi9r72CxFEijy6bBlJMuC', 3, 1570951949, 83, 1, 1, 1568472974, 0, '10'),
(91, 'muhammadirfan@zamzamhostel.com', '$2y$10$dm2Rv.muCGardxATeH8tDukYAY6p.69uP2pY3VaM5kSIf9TxEMq5C', 3, 1569506282, 84, 1, 1, 1568473428, 1, '10'),
(92, 'basitali@zamzamhostel.com', '$2y$10$I2.h9jYkGKUp1P0eDuk6DeLBFkFSybqBWNp.u1h/qJLwwEL4Dbjii', 3, 1568474009, 85, 1, 1, 1568474009, 1, '10'),
(93, 'ahsanullah@zamzamhostel.com', '$2y$10$.z96vzPxAppBNzowbfKiZuuAb.PtOKNOd0ChkdlTt.AjRhDKPDsti', 3, 1568474196, 86, 1, 1, 1568474196, 1, '10'),
(94, 'mawais@zamzamhostel.com', '$2y$10$ZxGL2nss9kWevT1MV/XsmeropUZv.X9hIrThtSOE5nF0cyJ2FadRm', 3, 1568474367, 87, 1, 1, 1568474367, 1, '10'),
(95, 'ramzan@zamzamhostel.com', '$2y$10$jWbCkD507NAw54GWxQTr6uI/cweRWAixU2tZRE4yzwPturuWkZYQi', 3, 1569311486, 88, 1, 1, 1568474546, 0, '10'),
(96, 'musama@zamzamhostel.com', '$2y$10$wmgaExs2hPDL.E2NAVTAVuVMeNPGOOOeRicBkK7yARgyQS7uisqpK', 3, 1568743939, 89, 1, 1, 1568474757, 0, '10'),
(97, 'qureshi@zamzamhostel.com', '$2y$10$iCIVMDSgsOCT/b3DhreuluGq/7/DKqhQVozdVoh0OdCbdINCpKN6e', 3, 1568474971, 90, 1, 1, 1568474971, 1, '10'),
(98, 'amirafzal@zamzamhostel.com', '$2y$10$ztPfOkUN3jQS5/KVWEbIoub0LhFV/zMPGc7S8LulXM2AXbVb6Yc3u', 3, 1569069526, 91, 1, 1, 1568475137, 0, '10'),
(99, 'aliahsan@zamzamhostel.com', '$2y$10$v1GEtkzVkTSP9cRQtTlg8OholV6yL/Jy8STJYwv3c38lagPUcVOu.', 3, 1568475642, 92, 1, 1, 1568475642, 1, '10'),
(100, 'muhammadkashif@zamzamhostel.com', '$2y$10$gRm.JTwC3o5WDtDbIr7kf.uHVXQviBpdJOMzfqLbmSQ.BHbmlAp36', 3, 1569506138, 93, 1, 1, 1568476003, 0, '10'),
(101, 'confuji@zamzamhostel.com', '$2y$10$dB7RboxDAComxEj2cYWFYO2/evqeOiPWumazwap7rYZ0xk5Sr9Rd6', 3, 1569307180, 94, 1, 1, 1568476340, 1, '10'),
(102, 'naeem@zamzamhostel.com', '$2y$10$W8jXT3WrUuh//GfkOcaxoeMFoEFhu62JNE/jXRPd1UVoyvtfTFi9G', 3, 1569507063, 95, 1, 1, 1568476541, 0, '10'),
(103, 'riyazahmed@zamzamhostel.com', '$2y$10$U.k.gqRabAq6oPUTM.XjrufrzoiVkZYE9fCzfIY7A6Gt1RjAJTggC', 3, 1568476776, 96, 1, 1, 1568476776, 1, '10'),
(104, 'masajad@zamzamhsotel.com', '$2y$10$T9MwStjwlkRbhwR.njwXWO7/8ymwMxgquaRK0s4hLjp1iecqaTi3m', 3, 1568477130, 97, 1, 1, 1568477130, 1, '10'),
(105, 'mamin@zamzamhsotel.com', '$2y$10$m/92lwsQjH3jx1weOf8Are4orBmRiLQhbQHJQK1jhWzgKjyFk08LC', 3, 1568477511, 98, 1, 1, 1568477511, 1, '10'),
(106, 'shankhalid@zamzamhostel.com', '$2y$10$1gA13LuSGlSzPBpbcONduu0YI.g6NwAj8NuItziHt2shgFpNePOFW', 3, 1568477898, 99, 1, 1, 1568477898, 1, '10'),
(107, 'taimoor@zamzamhostel.com', '$2y$10$b19TY603pa8PcMnLkvgJY.bPQ10xt9K09JskFWJ73z6RM5MSwQ0Y6', 3, 1568478213, 100, 1, 1, 1568478213, 1, '10'),
(108, 'faizanahmed@zamzamhostel.com', '$2y$10$2Qd1B9GOJP1QXzCPMcj4HOeQRh6jT4wnYDoV9PrCq1US0OdkQw.aW', 3, 1568479217, 101, 1, 1, 1568479217, 1, '10'),
(109, 'asadsaeed@zamzamhostel.com', '$2y$10$2J7UhHqz.HAkFgGJUdWD7.8dATr31R4dCSrhFyF7uqLm3pgjbgV6K', 3, 1568479517, 102, 1, 1, 1568479517, 1, '10'),
(110, 'noemail11@zamzamhostel.com', '$2y$10$9akwZgeBBg4SGltQpBLoe.zF.XX.u6123GEa0mM8fOmLTmFBm8Rg2', 3, 1568526624, 103, 1, 1, 1568526624, 1, '10'),
(111, 'noemail12@zamzamhostel.com', '$2y$10$8HbfxAsCBr9eLxdRxbQcFuX8mcbtQvjNkIm2WlR9nTCcHE0bbtX6.', 3, 1568526839, 104, 1, 1, 1568526839, 1, '10'),
(112, 'noemail13@zamzamhostel.com', '$2y$10$5hY1Yfio.Z.lu67dg640Suj/EYTYCZN1z6dxnWNaEDSG82XuptdBa', 3, 1568526987, 105, 1, 1, 1568526987, 1, '10'),
(113, 'noemail14@zamzamhostel.com', '$2y$10$lAATA0bzJ66N05j4KPIbVeBPQvKHsHhc1nRDrQyk4zqfTukseo/NW', 3, 1568642036, 106, 1, 1, 1568527198, 1, '10'),
(114, 'munna_khan9214@yahoo.com', '$2y$10$QngkjK0HhhUZktq06eDjnu16DmNdxso25rXyePjDMVVscEdniEApa', 3, 1568527357, 107, 1, 1, 1568527357, 1, '10'),
(115, 'noemail15@zamzamhostel.com', '$2y$10$PrIuQEBKovlSDIyv1MtcnOJmDgS.oxr/pML3XZtwk51JqW9wDSiIG', 3, 1569222286, 108, 1, 1, 1568527671, 0, '10'),
(116, 'noemail16@zamzamhostel.com', '$2y$10$A0F4Ajrv1WCnCWeVm54yvOU.TIj1thHYlFsUiDhg9NJ2mBFznYuTK', 3, 1569313504, 109, 1, 1, 1568527826, 0, '10'),
(117, 'noemail17@zamzamhostel.com', '$2y$10$2FxozUWGF3Et9qrN6647eObK4ZSgweMRmpKyoGg2IvkhveKzGosOi', 3, 1569313297, 110, 1, 1, 1568528084, 1, '10'),
(118, 'noemail18@zamzamhostel.com', '$2y$10$/Cm63xaFujFk3bDCKL0dNe9h8Q7aSSSkfGd1GFJH.bV7sQ3Lks49C', 3, 1569313722, 111, 1, 1, 1568528241, 0, '10'),
(119, 'shahid@zamzamhostel.com', '$2y$10$PYKlzItPa.n.MWFrldxFfOHmUUJ5rR6MckcKlhOICx95NIL125J/C', 3, 1568744064, 112, 1, 1, 1568529392, 0, '10'),
(120, 'ikhlaq@zamzamhostel.com', '$2y$10$EIwcC.k05W5Du.9fODHZzONamZauB5luqDw8g1v2eqfHhGWKqL.T.', 3, 1569505148, 113, 1, 1, 1568529566, 0, '10'),
(121, 'bilalhussain@zamzamhostel.com', '$2y$10$gwQSJSnybM3ARR9INWzOiuEus9MPw10xYKKO8Eu4IcshGFI6HEhnu', 3, 1568529688, 114, 1, 1, 1568529688, 1, '10'),
(122, 'zeeshan@zamzamhostel.com', '$2y$10$jrwZUFQ1vCiEAbM3IAIV.O6nFmOfQZHUn5WDJJdbkpQUDdO9jhbRe', 3, 1568529833, 115, 1, 1, 1568529787, 1, '10'),
(123, 'adnan@zamzamhostel.com', '$2y$10$wHZDwE83QV7kHZf09y7GyuoTaBWWDVAeitefqZwVafBfj9buUbJ9e', 3, 1569505845, 116, 1, 1, 1568530000, 0, '10'),
(124, 'ahmed@zamzamhostel.com', '$2y$10$D0UaJ7/AyQ0dhTOMYJtg6ent8oT15BKjS0nJQijZH5XbYeeWaQktm', 3, 1568830744, 117, 1, 1, 1568530135, 0, '10'),
(125, 'changaiz@zamzamhostel.com', '$2y$10$FeUwk6zH.yqyyfe7799L5eXxz6km7nKPeW6WIRONQp6ZU/FvZBQpq', 3, 1568644500, 118, 1, 1, 1568530262, 1, '10'),
(126, 'mhammad@zamzamhostel.com', '$2y$10$fupXWGlE5mT65LmQ.XMLH.yKC1jJzC7oq0HZzZwdZ.A3VcgcHM.ZW', 3, 1568830705, 119, 1, 1, 1568530397, 0, '10'),
(127, 'malikahsan.isb@gmail.com', '$2y$10$tiH2roJj4lUm9a/X1kW69.JHUX9KrXYaQAh7RRgAJwk/nYejyANxm', 3, 1569222376, 120, 1, 1, 1568530557, 0, '10'),
(128, 'kashifmehmood@zamzamhostel.com', '$2y$10$zaglHDMwLxsE2/hDIEquhuSu8p4cvN0Fk9Z5yPc9634PIJ8lSfpna', 3, 1568530843, 121, 1, 1, 1568530843, 1, '10'),
(129, 'azeemullah@zamzamhostel.com', '$2y$10$sIDAzSOMrD8V118ald5SkeAWC3IjUcuMc7R.4ya8UIiLvo4iQ6eXC', 3, 1568833090, 122, 1, 1, 1568530990, 0, '10'),
(130, 'muhammadtariq@zamzamhostel.com', '$2y$10$A1qDvH8O0jxQVRMRRLET6O1n4lpSQYk8zuVA0eOVGDw/065fpXZrm', 3, 1568644398, 123, 1, 1, 1568531156, 0, '10'),
(131, 'fayyazhaider@zamzamhostel.com', '$2y$10$u6ArkLH3Ukr.2.HiagEh9.itlJ/jm8iuBMVguWv/N949b8hshNBJy', 3, 1568641808, 124, 1, 1, 1568531745, 0, '10'),
(132, 'waqarqureshi@zamzamhostel.com', '$2y$10$QmD7.w3oBG8N2cXvz/conuoMMgmS3VPYCWXUM7iI6WhB886sScbi6', 3, 1569842486, 125, 1, 1, 1568532001, 1, '10'),
(133, 'atifmehmood@zamzamhostel.com', '$2y$10$KUULjFYzpDbRW3pm1SwSJuEJaDCZ7x4SHUPRbXskemboyZcZ3j5zC', 3, 1569505670, 126, 1, 1, 1568532113, 1, '10'),
(134, 'najeebullah@zamzamhostel.com', '$2y$10$00Pu8PMqNPJle07LExI97OCbRnWWz/v4CC27i.SJ9fEm8UFs4ZKbW', 3, 1568542113, 127, 1, 1, 1568542113, 1, '10'),
(135, 'muhammadsohail@zamzamhostel.com', '$2y$10$MMjDUwLefuTW.SQYRct10uTyGfSXXkf3Uuqdde51oU4WiijJ81iXO', 3, 1569241728, 128, 1, 1, 1568542864, 1, '10'),
(136, 'ameernawazkhan@zamzamhostel.com', '$2y$10$TBRpd/yAe.I7OXNJ1DAPJeN9I6AYlkxZJlbHG2QtbXUesJiCMuAcW', 3, 1569058055, 129, 1, 1, 1568543002, 1, '10'),
(137, 'ahsanullah12@zamzamhostel.com', '$2y$10$f0Bz2uIYnB/GLXczYED6YeCowMJEam/47OQVy2Cap8ZJahJXX4J5O', 3, 1568831608, 130, 1, 1, 1568544252, 0, '10'),
(138, 'rajamubbashirbashir@zamzamhostel.com', '$2y$10$P7X89Z8Cr80Nh0.85U1R1.A6HVyC9rFC1QbuynojjEZT7q.urdLNq', 3, 1569063056, 131, 1, 1, 1568544418, 1, '10'),
(139, 'zakirhussaintenu@zamzamhostel.com', '$2y$10$ZcKLxeB5h2fnBXWurVEML.56Fal8T5qojqdxR4.A599EO2Y27rnFq', 3, 1569059340, 132, 1, 1, 1568544584, 1, '10'),
(140, 'ishtiaqanjum@zamzamhostel.com', '$2y$10$EAP797/e6b3BcDCMIIfs3O9hN3TC4BHvgcfqguJ0xAn2mQUqnWsCu', 3, 1569505081, 133, 1, 1, 1568545055, 0, '10'),
(141, 'mianmuhammadasifchaudhry@zamzamhostel.com', '$2y$10$Zc4g6aevV7J9LmTn9SpUCuJcJ0d6Eal5VPCNbVUqTQBYFcV3/ECVu', 3, 1568546124, 134, 1, 1, 1568546124, 1, '10'),
(142, 'usmankhalid@zamzamhostel.com', '$2y$10$wJW0IO8y.QMc.u9wYf9FE.lYS7O9p27cAj99nuH/6bcOK8tQRAzV2', 3, 1568546505, 135, 1, 1, 1568546505, 1, '10'),
(143, 'sajidmehmood@zamzamhostel.com', '$2y$10$KI4263BSRiKfclz/b7kB6e/Gr9/k2Pv26VL3prGiowomugSM95w8y', 3, 1568548143, 136, 1, 1, 1568548143, 1, '10'),
(144, 'zainulabdien@zamzamhostel.com', '$2y$10$9CMpeSSkNV6Im6EiPVJmAO56jViFyLtaPH1Orns9n9fkYP7L/9E3a', 3, 1568642415, 137, 1, 1, 1568548233, 0, '10'),
(145, 'rehangul@zamzamhostel.com', '$2y$10$D8SCQJxGIe8Nk9HjQegkzeAPgRQIeqk5fib.c3nioW0mgq/6z8CB2', 3, 1569059296, 138, 1, 1, 1568548297, 1, '10'),
(146, 'khalidmehmood@zamzamhostel.com', '$2y$10$.OVKQ2kKoYtWWDsnPzX1T./6VLA.Mb2lUpdhYLspbgUkvAsqogPUi', 3, 1568548377, 139, 1, 1, 1568548377, 1, '10'),
(147, 'muhammadtaimoorakbarkhan@zamzamhostel.com', '$2y$10$VV1mAsetBhjkwck8gjp8Q.bFScQcn.NYXW/RTMv/V.xoHlW3XGpZ.', 3, 1568645582, 140, 1, 1, 1568548474, 0, '10'),
(148, 'hamidrasool@zamzamhostel.com', '$2y$10$WEIgza3X/ZmRnNtfpyL1HORPIWSLpbb1fVlzciIYAvRUJzVXpnZfe', 3, 1568548614, 141, 1, 1, 1568548614, 1, '10'),
(149, 'muhammadzahoor@zamzamhostel.com', '$2y$10$ad3ce2hA4Is8p5cKs3VUoOm6OTldLi4gIjS8hCnS05cOYyH9D6Lim', 3, 1568743772, 142, 1, 1, 1568548718, 0, '10'),
(150, 'sohailahmed@zamzamhostel.com', '$2y$10$Gp1PTODkiPZHpMa0OtPjRuqbOaBibHFKFTvQ3IBvBDDImjyQXpcP.', 3, 1568548820, 143, 1, 1, 1568548820, 1, '10'),
(151, 'naeem1@zamzamhostel.com', '$2y$10$UqnRjB5YBnNHLt.skGHoluGlcN/bhbEN2k7seACpSKxo3jx/Up1He', 3, 1568743701, 144, 1, 1, 1568548950, 1, '10'),
(152, 'adilhussain@zamzamhostel.com', '$2y$10$oY5mdPt1HeFkLuSg0Y.7d.819MJT65r4cDMDidQYLwDKRKvonHPR6', 3, 1568642453, 145, 1, 1, 1568549024, 0, '10'),
(153, 'hassanmaskur@zamzamhostel.com', '$2y$10$gGZetQh8NIvBUSHVFplWa.oYzfeME9jhp.h.GD2zga/g6Vyfygt9O', 3, 1568743325, 146, 1, 1, 1568549084, 0, '10'),
(154, 'waqasalam@zamzamhostel.com', '$2y$10$XZcZPBtP7O4MsHbbqE.N5.hTkt7z88RWU.MqhlStc/bx0vc0b37qe', 3, 1568549161, 147, 1, 1, 1568549161, 1, '10'),
(155, 'ahmedfarooq@zamzamhostel.com', '$2y$10$viId6V7tModa1Efcs2feG.F/OVsfg69H8qsL061pU4eYPeDObTFbW', 3, 1568832766, 148, 1, 1, 1568549263, 1, '10'),
(156, 'waqarali@zamzamhostel.com', '$2y$10$iHCzqCtz9HA5ziyViKWBbeS7tYeEtLorQjutiQ8fb3CEE4W33zhr2', 3, 1568743164, 149, 1, 1, 1568549355, 1, '10'),
(157, 'rizwankhalid@zamzamhostel.com', '$2y$10$egDHxeoVKVhTW/ideHmO5.2fNPkQNm.LdPZ34OlO8Dr9d3pSo7g/a', 3, 1568832644, 150, 1, 1, 1568549440, 1, '10'),
(158, 'muhammaddawood@zamzamhostel.com', '$2y$10$YPILwsNz9FK447zxbYFyn.HbHgvDVEeBCDp9WZozHd7s/sFa8IUj2', 3, 1568549725, 151, 1, 1, 1568549725, 1, '10'),
(159, 'faizanmehmood@zamzamhostel.com', '$2y$10$AmaViI9Mq8zuCiYgjH3GH.UQKnIIheUrZZ5jBICVFOCceyUyeNtvK', 3, 1568832523, 152, 1, 1, 1568549810, 0, '10'),
(160, 'shahbazhussain@zamzamhostel.com', '$2y$10$smhwLiErU0NPS5UZLmfeJujmpdlbAu4nWEI7Gjl6cMHWHnkMgYiZ6', 3, 1569409189, 153, 1, 1, 1568549913, 0, '10'),
(161, 'muhammadbilalkhan@zamzamhostel.com', '$2y$10$7A2AwuUW81KzEucG.hP37.mRp7qqPaLXUaW27Tx.tEf7Y0zha299u', 3, 1568831236, 154, 1, 1, 1568549982, 1, '10'),
(162, 'aqibmehmood@zamzamhostel.com', '$2y$10$diMVfFVkf66rleuyPqNKhOSgxCggPu6VrjKYY5GlWuDea7MmN5Oke', 3, 1568832485, 155, 1, 1, 1568550071, 1, '10'),
(163, 'mehburrehman@zamzamhostel.com', '$2y$10$/cdWHDjNY3Bi5iZqttSNlu9mP3GD0rj3c/0PiOT0x8uHxWp9CopBi', 3, 1568832272, 156, 1, 1, 1568550221, 1, '10'),
(164, 'muhammadawaisraza@zamzamhostel.com', '$2y$10$B6C9564iHKHwNArmB2WCkOo1lWaEaL10pb.MOEAYuM6acdwhWJeYy', 3, 1568645238, 157, 1, 1, 1568550580, 1, '10'),
(165, 'umersheikh@zamzamhostel.com', '$2y$10$VYe3dHvU2L9UZSzEu4bnluhkU4U4gkLWKHvaVHHBu614Gn7NjOcF6', 3, 1568550687, 158, 1, 1, 1568550687, 1, '10'),
(166, 'muhammadhaasan@zamzamhostel.com', '$2y$10$.71SXXdh2lBRLAV25tmdn.SevO7Vp9QAcHIN0XEHT6EDMyxlIa.Ye', 3, 1568831042, 159, 1, 1, 1568550834, 1, '10'),
(167, 'shakeelahmed@zamzamhostel.com', '$2y$10$y9sqNMiruz6ZJXv1CcFTY.ccFK5rBMQmEC/8SqwoDiRbT4JVkZfpy', 3, 1568831707, 160, 1, 1, 1568550908, 0, '10'),
(168, 'abc@abc.com', '$2y$10$6hXt9JtuGR.zp.pXTP53xuZDILRBtTt5t/axMY0AfH9sKG7I0VMdi', 2, 1568632849, 7, 1, 1, 1568632849, 1, NULL),
(169, 'abcd65@abc.com', '$2y$10$X/PkVlveoatFFwBjR0G17upTQ6wSXKHRDRAIWAQOVx5T998Er4cWq', 3, 1568638891, 161, 1, 1, 1568638891, 1, '10'),
(170, 'abd@salkj.com', '$2y$10$16IiZS15TY3LADeAtXrwuOidwPy8sLZ0m.VozHUOyspoR.gr55nEm', 3, 1568831459, 162, 1, 1, 1568642193, 1, '10'),
(171, 'nadeem@nadeem.com', '$2y$10$l4Ime8s6XVmZ7YXShXXGN.fkwaCC.ydkQ7mybbGvgyl/K9fByqnFO', 3, 1569313546, 163, 1, 1, 1568642336, 0, '10'),
(172, 'Arslan@jmal.com', '$2y$10$a5uDJXalCQKDewHVbMyIZeqnFttUH0Wd0ei4Dmr0FYzqEOH0G/C46', 3, 1568647271, 164, 1, 1, 1568647271, 1, '10'),
(173, 'tnabbasionlyone@gmail.com', '$2y$10$NOIsnKZH/RZnnZdebqOtWe1EzG2qMFewpzCJCENh6gU6.cMtiAoSO', 2, 1568879534, 8, 1, 1, 1568879534, 1, NULL),
(174, 'khan.irshadkhan55@gmail.com', '$2y$10$MED8QlAGdKsKi1vTHWqsaOPkBWlhCDk16l5r1Ru4wbkuJEGZUZPIa', 2, 1569841653, 9, 1, 1, 1568879674, 1, NULL),
(175, 'mati@zamzamhstel.com', '$2y$10$Gred8aYAGXjKe6X4xXD2OeVBJmqwP8t0JHVCKJFwCaUMAqYgtaStO', 3, 1569058400, 165, 1, 1, 1569058400, 1, '10'),
(176, 'zamzamhostel468868@gmail.com', '$2y$10$GVtF4sspcHPADB3wz1LamesScWNn72Ijhej1zXtE62spRw66K07g6', 3, 1569306881, 166, 1, 1, 1569058661, 1, '10'),
(177, 'z2amzamhostel@gmail.com', '$2y$10$NTHwkYPYV4UQoV0JBvNeGeDKHrJuJbHDuxm.hS.lEolukh7d3TwbO', 3, 1569058854, 167, 1, 1, 1569058854, 1, '10'),
(178, '4zamzamhostel@gmail.com', '$2y$10$Cg.x1IsoFbu/dzVgYuOGZOTh7BNIZGgDfPF4F4F2Clixcuz8Jayxu', 3, 1569059069, 168, 1, 1, 1569059069, 1, '10'),
(179, 'zam2zamhostel@gmail.com', '$2y$10$qotwwRdVSlhUMKQ/Mki3IeEpB/e.kE67N8oTzHQE4MKdAaLy0kbjm', 3, 1569059869, 169, 1, 1, 1569059568, 1, '10'),
(180, 'zamzammhostel@gmail.com', '$2y$10$FImeR3dFj/1fqnpsiUK5PuOykSBVhdd9K/Hf.5eZhubWfMvpiCthi', 3, 1569061723, 170, 1, 1, 1569061723, 1, '10'),
(181, 'zamzkamhostel@gmail.com', '$2y$10$pG3xrTNlkYioE8yEXl61hOnnahwb5MADpDeO1WI3I2VOZumcOGB2.', 3, 1569226530, 171, 1, 1, 1569061963, 0, '10'),
(182, 'zamzamahostel@gmail.com', '$2y$10$pmZm1DAWDJfmnSpUxa2q4.x.Dn6U45hbuRy1ANz3Lsg.NfmfUrIia', 3, 1569063680, 172, 1, 1, 1569063680, 1, '10'),
(183, 'zamzakmhostel@gmail.com', '$2y$10$9PF2Aj/GwDR9zls9sUt6cOEvi5QPeOoACjSNiJf39ZJ3iAiSHFj/y', 3, 1569410237, 173, 1, 1, 1569063976, 1, '10'),
(184, 'zamzamkhostel@gmail.com', '$2y$10$6zlMqktFX7f0bXOwTYrRzum21sRuP3j/9ERtReHm9tF1WN5.WhZge', 3, 1569410134, 174, 1, 1, 1569064380, 0, '10'),
(185, 'zamzamhjostel@gmail.com', '$2y$10$xFt3JiijSQ7EzyGjlborie92/3vghp3hlp3OTP4Tg/nvQV742VRpS', 3, 1569224135, 175, 1, 1, 1569064890, 0, '10'),
(186, 'zamzamhogstel@gmail.com', '$2y$10$CPbB2QpxRl9pQ/P9YPR57.lDvS4Hbc16xzSBe0d1HtBk7W.bDzeS.', 3, 1569065235, 176, 1, 1, 1569065235, 1, '10'),
(187, 'zamzamhonstel@gmail.com', '$2y$10$k2xlDStMb0C4km1VFd1z7ucSya0NTjj53I2komYyTlx5VHr2h7vBu', 3, 1569065592, 177, 1, 1, 1569065592, 1, '10'),
(188, 'zamzamhhostel@gmail.com', '$2y$10$vnThwny9jaWJrWrGIUg7fe1t/X/wOzVKHYOWpRJuUEBwQz8TqZ32C', 3, 1569069568, 178, 1, 1, 1569069448, 1, '10'),
(189, 'zamzamhoskltel@gmail.com', '$2y$10$bGNOAUExWoXur8zn49TMFe9DHEeU2FKSHhWkXSvki/1yoABj.3Gsq', 3, 1569069936, 179, 1, 1, 1569069936, 1, '10'),
(190, 'zamzamhoshtel@gmail.com', '$2y$10$PxZxpoVtD7NEi4QgMn.g7u9e4el/NPHXly5pUi7rUB6ugSZ7u.I1G', 3, 1569305133, 180, 1, 1, 1569070167, 0, '10'),
(191, 'zamzamhosatel@gmail.com', '$2y$10$aP2PjKdKiAR3TjrLskbne.aARDzHxp.W1B/Fw0Bxf72mL8lrsMebW', 3, 1569302495, 181, 1, 1, 1569302495, 1, '10'),
(192, 'zamzaFmhostel@gmail.com', '$2y$10$ewcICaA.zddyt9qmXJZo9.qH7iR67T2v.d0T730CPchlaNxXDiOpq', 3, 1569303059, 182, 1, 1, 1569303059, 1, '10'),
(193, 'zamezamhostel@gmail.com', '$2y$10$pnbbGR.DcrGIltX6Vf5KmOMH6Y9V1GC941CnX7W3iSZP9B/VFKc7q', 3, 1569303313, 183, 1, 1, 1569303313, 1, '10'),
(194, 'zaamzamhostel@gmail.com', '$2y$10$bWP1TPbe5YMC9w/tXd8QI.HdwgaZ5dQPyA3qiUWdppIt/EL5yxvLW', 3, 1569303652, 184, 1, 1, 1569303652, 1, '10'),
(195, 'zamzamjhostel@gmail.com', '$2y$10$MhAQFBl8DV7zKDO98FYiE.vvNL9wLP6LrlMlPuYqBMVVqKcLTQ1Uu', 3, 1569304040, 185, 1, 1, 1569304040, 1, '10'),
(196, 'zamzramhostel@gmail.com', '$2y$10$xeZ/C51qRjXFPB/N.IE4A.o2hXdGKsGMFLRLJLhapjIddr2ZqjVhC', 3, 1569304321, 186, 1, 1, 1569304321, 1, '10'),
(197, 'zamzsamhostel@gmail.com', '$2y$10$m3LpxkwCYK4LGRRwB33aY./9Wf3.Fr9UUvlQcU6q.WTilJa1DAOYW', 3, 1569304640, 187, 1, 1, 1569304640, 1, '10'),
(198, 'zabmzamhostel@gmail.com', '$2y$10$.zyLfsHLr6cd2UgE5cH61OCe49ep6M4622MFEs7O.OwKhxquP5v7a', 3, 1569311348, 188, 1, 1, 1569304992, 0, '10'),
(199, 'zamazamhostel@gmail.com', '$2y$10$jMnmvo2drXfnzeb5WQFGZ.FxLxALNPMlY2Jj2zqhkTsshhrum/5pG', 3, 1569305488, 189, 1, 1, 1569305488, 1, '10'),
(200, 'zaymzamhostel@gmail.com', '$2y$10$nwy.fvOR9nJzV5bfHwy.zeYaIm3M5Anakc.N2bLUdeIEa64SmNDk6', 3, 1569305888, 190, 1, 1, 1569305888, 1, '10'),
(201, 'zamczamhostel@gmail.com', '$2y$10$rPiqNMkJggC8Vm9PhAWja.VENozFnl/pMBT4ZZafi6ONq9TteZ/ga', 3, 1569312799, 191, 1, 1, 1569306127, 1, '10'),
(202, 'zamzmamhostel@gmail.com', '$2y$10$5auEXZY4tHt.nAJSMT6te.KoCYyNkyul5ANQDpMAWE7jWsEjNC1zS', 3, 1569311410, 192, 1, 1, 1569307682, 1, '10'),
(203, 'zamdzamhostel@gmail.com', '$2y$10$Fb4aAZigOzurSR2W2dR84O4vYs1lyZ3VcAPaGwu.9RUoIUWTWfe1G', 3, 1569842357, 193, 1, 1, 1569308460, 0, '10'),
(204, 'zamzamihostel@gmail.com', '$2y$10$1SW2SMLiCvWjLPZEMOGS6e0vulsbIe4.aY6wT9Y2SnlZtAenJ5K5a', 3, 1569695829, 194, 1, 1, 1569308796, 0, '10'),
(205, 'zamzlamhostel@gmail.com', '$2y$10$mJZ93PXn4E3QfC39SFzPzeIUfdCBtSxrJHs03d40OgzsxqMIRgVH6', 3, 1569309127, 195, 1, 1, 1569309127, 1, '10'),
(206, 'zamrzamhostel@gmail.com', '$2y$10$AGolWM9Uiv7noHrgdKtdfeyfj5itos6qx8u6HpPjvidI4IOoxeeB6', 3, 1569310163, 196, 1, 1, 1569310163, 1, '10'),
(207, 'zamzaHmhostel@gmail.com', '$2y$10$YsxeeHyRDrbseniFixbyPuK0SHt8pLj.GwNUME/plD9ZbZKrN/Iji', 3, 1569310591, 197, 1, 1, 1569310591, 1, '10'),
(208, 'zamzamnhostel@gmail.com', '$2y$10$QKh5lYW5CeHDDg0go1YATOKP/Jajaox7/hBAQ61R8ZGEpkaumIdBi', 3, 1569311513, 198, 1, 1, 1569311069, 0, '10'),
(209, 'zamzuamhostel@gmail.com', '$2y$10$H37j6Ps/m17sNuaEBHdn8OSy6S0FAToEdzgVn7pAxtH7J9x1gsY/u', 3, 1569313153, 199, 1, 1, 1569313153, 1, '10'),
(210, 'zamwzamhostel@gmail.com', '$2y$10$LoU9ckkgvOrZbhP9lkFwQOaXO5aybWLn9vKbJhf024yq6yU60EvRu', 3, 1569314033, 200, 1, 1, 1569314033, 1, '10'),
(211, 'zamzamyhostel@gmail.com', '$2y$10$Gt2.6g.m/A34nfsL8MVWYe00nX7iXPcNod0hqYJD6yj6TniQ218eO', 3, 1569314488, 201, 1, 1, 1569314488, 1, '10'),
(212, 'zamzhamhostel@gmail.com', '$2y$10$Zz2YubeBClQBNYrzXzau7.9gKz/5kwxzZuR2opCnwNJcEGaNaAGme', 3, 1569408889, 202, 1, 1, 1569408889, 1, '10'),
(213, 'zamzamhuostel@gmail.com', '$2y$10$DOyzec1K5.LR8pkEkkPHIOly9d.9QW6oNtRX47JdPxt5lWjhuUvJi', 3, 1569409114, 203, 1, 1, 1569409114, 1, '10'),
(214, 'zamztamhostel@gmail.com', '$2y$10$TX12hH/Ggkc7e6H/4GHXLOxHRSfUv18jCwmZkqz4JUYzplR2hefZi', 3, 1569409453, 204, 1, 1, 1569409453, 1, '10'),
(215, 'zamzbamhostel@gmail.com', '$2y$10$xePFEMmQQVkIUywC0Kt6/uoPhck2twTRNPb1eBlFlcq5dHd334sR6', 3, 1569409745, 205, 1, 1, 1569409745, 1, '10'),
(216, 'zamzamuhostel@gmail.com', '$2y$10$rbAhnBnwXZh9O29JGmP1Vem61B6HyuLKBNkpAk5GqXNQdK5RxCjFm', 3, 1569410175, 206, 1, 1, 1569410089, 1, '10'),
(217, 'zamzajmhostel@gmail.com', '$2y$10$7foEDBiGxYx1MceLb7fLtePINV6zYx0ZmjWCi4EEazpJUS/l6CS1a', 3, 1569754994, 207, 1, 1, 1569423762, 1, '10'),
(218, 'zamzamhkostel@gmail.com', '$2y$10$7nVhIMF2FasZKgzzm9J2W.uUgP491YwDF6CpelZFe9ObooCvaXvs2', 3, 1569424274, 208, 1, 1, 1569424274, 1, '10'),
(219, 'zamzalmhostel@gmail.com', '$2y$10$ZDaSA/LvsLnZsC06idsZTOjG8R8gGA2/QVN3QwXJLNOEPT4Un1HMe', 3, 1569424832, 209, 1, 1, 1569424832, 1, '10'),
(220, 'zamjzamhostel@gmail.com', '$2y$10$PZTVWop68.uv2RRFiuhAEu/HwPXC54yakAWPksKWRlbM2hZ5VFbTG', 3, 1569425821, 210, 1, 1, 1569425821, 1, '10'),
(221, 'zamfzamhostel@gmail.com', '$2y$10$Ycbwu4cmtiQsK.KToUU.9.StkpTfUG3ONZ6zG78fuNbK3oPrev/cq', 3, 1569426547, 211, 1, 1, 1569426547, 1, '10'),
(222, 'zamzahmhostel@gmail.com', '$2y$10$qI8Vhk8v9V0/dQiDDbiNXOQE6ZmLMIM0kIGI/7zmKRAT7tbiXzj1W', 3, 1569427463, 212, 1, 1, 1569427463, 1, '10'),
(223, 'zamzatmhostel@gmail.com', '$2y$10$2KR51HPbzH0XAG2mfIQCi.eHGN5ZdtpDe7qOhE0HNBc.hJ/VvJS7q', 3, 1569427661, 213, 1, 1, 1569427661, 1, '10'),
(224, 'zamxzamhostel@gmail.com', '$2y$10$72tofoy2VcKjcr8HMN9zjOvxeiB8csnIVdO0a8sDbLRCQOwVdYXOG', 3, 1569428350, 214, 1, 1, 1569428350, 1, '10'),
(225, 'zamzaWmhostel@gmail.com', '$2y$10$Sg/UzUl7/L1wQj.8nuTca.y4jgazhJZA3zjRMH5htUPeqh.2dn5wG', 3, 1569428538, 215, 1, 1, 1569428538, 1, '10'),
(226, 'zamzamlhostel@gmail.com', '$2y$10$LFeFs4ldIrjw4rHMT0mO2OTNwbCU8fg3TTuyltTO4n8u3EIfAsNdG', 3, 1569429265, 216, 1, 1, 1569429265, 1, '10'),
(227, 'zamNzamhostel@gmail.com', '$2y$10$nsPHMnodLQk0QR3j9V6kv.i5LofvhrbP/fgdaBUw7DG6S46UrN/Vq', 3, 1569501668, 217, 1, 1, 1569501668, 1, '10'),
(228, 'zamzawmhostel@gmail.com', '$2y$10$x/FfEoO8IohzYWlY0h7qVufWvYnPnoM2Ja6jL9zq7Bqy3xPLnbxcm', 3, 1569507676, 218, 1, 1, 1569507676, 1, '10'),
(229, 'zamzaymhostel@gmail.com', '$2y$10$86W757WNASUmEo3O5CtnYe54cyN3WPinsnJ2Ur6xrXwj12RY4Jt/y', 3, 1569560188, 219, 1, 1, 1569560188, 1, '10'),
(230, 'zamzaxmhostel@gmail.com', '$2y$10$y9497.Il2DEZD4N9h1vcgO1WftfI0fGQ4/ItvJlq6vgz1aqiSNzlm', 3, 1569560943, 220, 1, 1, 1569560943, 1, '10'),
(231, 'zamzamh0ostel@gmail.com', '$2y$10$t.N5np7Buqlt7fYSoD5Bp.LmWKQJCAln0RdgAi0xtTbXQAu7PB/1m', 3, 1569561948, 221, 1, 1, 1569561948, 1, '10'),
(232, 'zamyzamhostel@gmail.com', '$2y$10$xyH6Zixr5yfVayeYGwcHHuZyXSfmMQSTgc9nfaLd8IKVKJXkyFj.2', 3, 1569562201, 222, 1, 1, 1569562201, 1, '10'),
(233, 'zamzaqmhostel@gmail.com', '$2y$10$l32d4zJ8TzJhvW2CDTjLQ.UhJAzqlnBThyyXjjuUQ6QjQhaOE4HWi', 3, 1569562628, 223, 1, 1, 1569562628, 1, '10'),
(234, 'zamzazmhostel@gmail.com', '$2y$10$S9pB8b.Y.XsnZGbis4K71.wtYnKjHC6.50uUv53o4LQyjhifJPxy6', 3, 1569562930, 224, 1, 1, 1569562930, 1, '10'),
(235, 'zamzamhrostel@gmail.com', '$2y$10$XFXKPw1bpZIBawf5xrjxB./MBGzJu8YUfIahrX46.LGURAxBsAcEi', 3, 1569563368, 225, 1, 1, 1569563368, 1, '10'),
(236, 'zamzamhmostel@gmail.com', '$2y$10$HDM7RqzFigMxNb2PlemFvehT9oxMAQ6Ex1kj6xgRrXvYoKWd/h.Ry', 3, 1569695996, 226, 1, 1, 1569695728, 1, '10'),
(237, 'zamzamhaostel@gmail.com', '$2y$10$KsbNmUnY6P9xjMfc0R478Ooa99BxJ./D6HqWyj324YD6WSm9abC/W', 2, 1570951676, 10, 1, 1, 1570951676, 1, NULL),
(238, 'zamzaemhostel@gmail.com', '$2y$10$p9PgPCMCtUQ8/7naQCQo4etjgE5SIbmlujC0MJKfP7ijbT5e7kGDK', 2, 1570988246, 11, 1, 1, 1570988246, 1, NULL),
(239, 'zamzoamhostel@gmail.com', '$2y$10$Nn6L1XN3UtYlOd/.ePN0LucAN3RYWIXEcaQM/ZFXI0PDswLrOzTH2', 2, 1570988689, 12, 1, 1, 1570988689, 1, NULL),
(240, 'zamtzamhostel@gmail.com', '$2y$10$idXAem1H/2Ubwj3Xg5iUXOfTJJ/j0mgfO4v0wQdTT8PH4uKwpe8iy', 2, 1570989454, 13, 1, 1, 1570989454, 1, NULL),
(241, 'znamzamhostel@gmail.com', '$2y$10$1/fKiXNNbDzFOt9GwDbos.3tV4H1jSgwmIcVJrzPcqo//G7ppspoa', 2, 1570990155, 14, 1, 1, 1570990155, 1, NULL),
(242, 'zamqzamhostel@gmail.com', '$2y$10$xZ3tVlBPHdPTOP9Sm.90ee8MokbpzZVwb2FTpvNtvWZvj/j75HLie', 2, 1570990996, 15, 1, 1, 1570990996, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `utility_bill`
--

CREATE TABLE `utility_bill` (
  `utility_bill_id` int(11) NOT NULL,
  `utility_bill_category_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` varchar(55) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility_bill`
--

INSERT INTO `utility_bill` (`utility_bill_id`, `utility_bill_category_id`, `status`, `month`, `year`, `amount`, `timestamp`, `created_on`, `updated_by`, `created_by`) VALUES
(5, 5, 1, 'August', 2019, '66670', 1568541419, 1568541419, 1, 1),
(6, 5, 1, 'August', 2019, '38000', 1568541525, 1568541525, 1, 1),
(7, 6, 1, 'August', 2019, '27600', 1568542029, 1568542029, 1, 1),
(8, 7, 1, 'August', 2019, '6000', 1568632307, 1568632307, 1, 1),
(9, 5, 1, 'September', 2019, '89000', 1570985837, 1568997029, 1, 1),
(10, 5, 1, 'September', 2019, '37100', 1568997159, 1568997159, 1, 1),
(11, 6, 1, 'September', 2019, '33810', 1570986119, 1570986119, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `utility_bill_category`
--

CREATE TABLE `utility_bill_category` (
  `utility_bill_category_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility_bill_category`
--

INSERT INTO `utility_bill_category` (`utility_bill_category_id`, `name`, `created_on`, `created_by`, `timestamp`, `updated_by`) VALUES
(5, 'elc bil', 1568541379, 1, 1569847242, 1),
(6, 'Gas bil', 1568542007, 1, 1569846924, 1),
(7, 'Water', 1568632268, 1, 1569847207, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`bed_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `id_type`
--
ALTER TABLE `id_type`
  ADD PRIMARY KEY (`id_type_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `profession`
--
ALTER TABLE `profession`
  ADD PRIMARY KEY (`profession_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `staff_salary`
--
ALTER TABLE `staff_salary`
  ADD PRIMARY KEY (`staff_salary_id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`tenant_id`);

--
-- Indexes for table `tenant_rent`
--
ALTER TABLE `tenant_rent`
  ADD PRIMARY KEY (`tenant_rent_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `utility_bill`
--
ALTER TABLE `utility_bill`
  ADD PRIMARY KEY (`utility_bill_id`);

--
-- Indexes for table `utility_bill_category`
--
ALTER TABLE `utility_bill_category`
  ADD PRIMARY KEY (`utility_bill_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `bed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `id_type`
--
ALTER TABLE `id_type`
  MODIFY `id_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profession`
--
ALTER TABLE `profession`
  MODIFY `profession_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `staff_salary`
--
ALTER TABLE `staff_salary`
  MODIFY `staff_salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `tenant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `tenant_rent`
--
ALTER TABLE `tenant_rent`
  MODIFY `tenant_rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `utility_bill`
--
ALTER TABLE `utility_bill`
  MODIFY `utility_bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `utility_bill_category`
--
ALTER TABLE `utility_bill_category`
  MODIFY `utility_bill_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
