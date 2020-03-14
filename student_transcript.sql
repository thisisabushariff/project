-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 12:24 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_transcript`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `Code` varchar(7) NOT NULL,
  `Title` text NOT NULL,
  `CreditUnit` int(20) NOT NULL,
  `Semester` text NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `Code`, `Title`, `CreditUnit`, `Semester`, `Status`) VALUES
(1, 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'FIRST', 'CORE'),
(2, 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'FIRST', 'CORE'),
(3, 'STA1311', 'PROBABILITY I', 3, 'FIRST', 'CORE'),
(4, 'PHY1310', 'GENERAL PHYSICS I', 3, 'FIRST', 'CORE'),
(5, 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'FIRST', 'CORE'),
(6, 'GSP1201', 'USE OF ENGLISH I', 2, 'FIRST', 'CORE'),
(7, 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'FIRST', 'ELECTIVE'),
(8, 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'SECOND', 'CORE'),
(9, 'CSC1211', 'INTRODUCTION TO ICT', 2, 'SECOND', 'CORE'),
(10, 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'SECOND', 'CORE'),
(11, 'PHY1320', 'GENERAL PHYSICS II', 3, 'SECOND', 'CORE'),
(12, 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'SECOND', 'CORE'),
(13, 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'SECOND', 'CORE'),
(14, 'GSP1206', 'LIBRARY SKILLS', 2, 'SECOND', 'CORE'),
(15, 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'SECOND', 'CORE'),
(16, 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'FIRST', 'CORE'),
(17, 'CSC2203', 'DISCRETE STRUCTURES', 2, 'FIRST', 'CORE'),
(18, 'CSC2305', 'OPERATING SYSTEMS I', 3, 'FIRST', 'CORE'),
(19, 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'FIRST', 'CORE'),
(20, 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'FIRST', 'CORE'),
(21, 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'FIRST', 'CORE'),
(22, 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'FIRST', 'CORE'),
(23, 'MTH2201', 'LINEAR ALGEBRA I', 2, 'FIRST', 'CORE'),
(24, 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'SECOND', 'CORE'),
(25, 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'SECOND', 'CORE'),
(26, 'CSC2206', 'COMPUTER HARDWARE', 2, 'SECOND', 'CORE'),
(27, 'CSC2308', 'DATA MANAGEMENT I', 3, 'SECOND', 'CORE'),
(28, 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'SECOND', 'CORE'),
(29, 'CSC3209', 'FORMAL METHODS AND SOFTWARE DEVELOPMENT', 2, 'FIRST', 'CORE'),
(30, 'CSC3305', 'COMPUTER ARCHITECTURE I', 3, 'FIRST', 'CORE'),
(31, 'CSC3413', 'SURVEY OF PROGRAMMING LANGUAGES', 4, 'FIRST', 'CORE'),
(32, 'CSC3301', 'STRUCTURED PROGRAMMING', 3, 'FIRST', 'CORE'),
(33, 'CSC3311', 'ALGORITHMS AND COMPLEXITY ANALYSIS', 3, 'FIRST', 'CORE'),
(34, 'CSC3303', 'OBJECT ORIENTED PROGRAMMING', 3, 'FIRST', 'CORE'),
(35, 'GSP3201', 'ENTREPRENUERSHIP EDUCATION', 2, 'FIRST', 'CORE'),
(36, 'CSC3600', 'SIWES', 6, 'SECOND', 'CORE'),
(37, 'CSC4401', 'SOFTWARE ENGINEERING', 4, 'FIRST', 'CORE'),
(38, 'CSC4303', 'NET-CENTRIC COMPUTING', 3, 'FIRST', 'CORE'),
(39, 'CSC4305', 'ARTIFICIAL INTELLIGENCE', 3, 'FIRST', 'CORE'),
(40, 'CSC4207', 'ORGANIZATION OF PROGRAMMING LANGUAGES', 2, 'FIRST', 'CORE'),
(41, 'CSC4311', 'COMPUTER ARCHITETURE II', 3, 'FIRST', 'CORE'),
(42, 'CSC4309', 'OPERATING SYSTEMS II', 3, 'FIRST', 'CORE'),
(43, 'GSP4201', 'ENTREPRENEURSHIP EDUCATIONAL SKILLS', 2, 'FIRST', 'CORE'),
(44, 'CSC4319', 'FORMAL MODELS OF COMPUTATION', 3, 'FIRST', 'ELECTIVE'),
(45, 'CSC4315', 'COMPUTER GRAPHICS AND VISUALIZATION', 3, 'FIRST', 'ELECTIVE'),
(46, 'CSC4206', 'HUMAN COMPUTER INTERFACE', 2, 'SECOND', 'CORE'),
(47, 'CSC4302', 'DATA MANAGEMENT II', 3, 'SECOND', 'CORE'),
(48, 'CSC4304', 'COMPUTER NETWORKS/COMMUNICATION', 3, 'SECOND', 'CORE'),
(49, 'CSC4308', 'COMPILER CONSTRUCTION', 3, 'SECOND', 'CORE'),
(50, 'CSC4600', 'PROJECT', 6, 'SECOND', 'CORE'),
(51, 'CSC4316', 'PROJECT MANAGEMENT', 3, 'SECOND', 'ELECTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `level1first`
--

CREATE TABLE `level1first` (
  `Level1_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level1first`
--

INSERT INTO `level1first` (`Level1_id`, `RegNo`, `Name`, `courses`, `Session`, `Semester`, `Level`) VALUES
(1, '', '', 'CSC1201   MTH1301   STA1311   PHY1310  PHY1170   GSP1201   ICT1303', '', '', '100'),
(2, 'UG16CSC002', 'MUSA BALARABE IBRAHIM ', '       56              45              43             41               67              57              42', '2016/2017', 'FIRST', '100'),
(3, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '       47              58              54             37               73              43              29', '2016/2017', 'FIRST', '100'),
(4, 'UG16CSC005', 'KHALIL SANUSI ADO', '       23              47              49             56               54              39              37', '2016/2017', 'FIRST', '100'),
(5, 'UG15CSC006', 'SUNUSI ADO BUBA', '       61              65              55             45               45              43              53', '2016/2017', 'FIRST', '100'),
(6, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '       71              49              95             57               63              64              61', '2016/2017', 'FIRST', '100'),
(7, 'UG16CSC008', 'ISA HARUNA NURA', '       56              0                 42             62               0               10              50', '2016/2017', 'FIRST', '100'),
(8, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '       67              0                63             30               50              54              58', '2016/2017', 'FIRST', '100'),
(9, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '       49              58              56             80               80              60              65', '2016/2017', 'FIRST', '100'),
(10, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '       22              67              56             47               78              78              98', '2016/2017', 'FIRST', '100'),
(11, 'UG16CSC013', 'FAREEDA ADO SHEHU', '       0                47              17             23               53              58              19', '2016/2017', 'FIRST', '100'),
(12, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '       73              71              87              83               0               20              71', '2016/2017', 'FIRST', '100'),
(13, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '       86              78              75              67              90              92              74       ', '2016/2017', 'FIRST', '100'),
(14, 'UG16CSC017', 'VICTOR YEMI OLU', '       53              87              76              49              67              32              82       ', '2016/2017', 'FIRST', '100'),
(15, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '       34              64              62              52              55              72              78       ', '2016/2017', 'FIRST', '100'),
(16, 'UG16CSC019', 'BABATUNDE FEMI', '       73              67              97              84              81              61              68       ', '2016/2017', 'FIRST', '100'),
(17, 'UG16CSC020', 'TAIWO ALAKE OLA', '       72              87              83              78              18              67              64       ', '2016/2017', 'FIRST', '100'),
(18, 'UG16CSC023', 'NOOR ABDULHAMEED', '       43              56              55              58              67              68              78       ', '2016/2017', 'FIRST', '100'),
(19, 'UG16CSC023', 'ABDULQAHAR ABUBAKAR', '       64              62              68              63              79              90              71       ', '2016/2017', 'FIRST', '100'),
(20, 'UG16CSC028', 'SANI ABUBAKAR', '       35              78              89              67              47              49              46       ', '2016/2017', 'FIRST', '100'),
(21, 'UG16CSC030', 'MAIMUNATU KHALIL', '       45              55              53              57              47              46              13       ', '2016/2017', 'FIRST', '100'),
(22, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '       12              47              46              54              55              37              26       ', '2015/2016', 'FIRST', '100'),
(23, 'UG16CSC034', 'HAFSAT BADAMASI', '       48              49              51              41              89              13              52       ', '2016/2017', 'FIRST', '100');

-- --------------------------------------------------------

--
-- Table structure for table `level1second`
--

CREATE TABLE `level1second` (
  `Level1_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level1second`
--

INSERT INTO `level1second` (`Level1_id`, `RegNo`, `Name`, `courses`, `Session`, `Semester`, `Level`) VALUES
(1, '', '', 'CSC1302   CSC1211   MTH1302   PHY1320   PHY1180   MTH1303   GSP1206   GSP1202', '', '', '100'),
(2, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '       37              72              54              49              35              63              70              50', '2016/2017', 'SECOND', '100'),
(3, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '       90              40              37              48              46              39              51              45', '2016/2017', 'SECOND', '100'),
(4, 'UG16CSC005', 'KHALIL SUNUSI ADO', '       63              76              54              49              98              58              55              95               ', '2016/2017', 'SECOND', '100'),
(5, 'UG16CSC006', 'SUNUSI ADO BUBA', '       71              55              59              49              90              90              67              64    ', '2016/2017', 'SECOND', '100'),
(6, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '       47              67              77              87              47              55              50              58    ', '2016/2017', 'SECOND', '100'),
(7, 'UG16CSC008', 'ISA HARUNA NURA', '       71              46              57              62              52              50              53              73    ', '2016/2017', 'SECOND', '100'),
(8, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '       13              46              47              39              59              29              49              46', '2016/2017', 'SECOND', '100'),
(9, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '       65              53              58              51              89              64              64               0    ', '2016/2017', 'SECOND', '100'),
(10, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '       47              41              31              90               0               46              48              45    ', '2016/2017', 'SECOND', '100'),
(11, 'UG16CSC013', 'FAREEDA ADO SHEHU', '       49              52              12               0               71              25              45              46    ', '2016/2017', 'SECOND', '100'),
(12, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '       23               0               90              97              97              77              75              70', '2016/2017', 'SECOND', '100'),
(13, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '       76              71              79              69              87              83              73              68       ', '2016/2017', 'SECOND', '100'),
(14, 'UG16CSC017', 'VICTOR YEMI OLU', '       91              64              63              57              64              87              75              70       ', '2015/2016', 'SECOND', '100'),
(15, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '       81              67              69              65              63              51              54              58       ', '2016/2017', 'SECOND', '100'),
(16, 'UG16CSC019', 'BABATUNDE FEMI', '       75              67              57              84              88              59              90              70       ', '2016/2017', 'SECOND', '100'),
(17, 'UG16CSC020', 'TAIWO ALAKE OLA', '       56              86              97              87              43              67              87              73       ', '2016/2017', 'SECOND', '100'),
(18, 'UG16CSC023', 'NOOR ABDULHAMEED', '       12              72              62              65              85              89              39              33       ', '2016/2017', 'SECOND', '100'),
(19, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '       93              76              70              82              82              79              69              60       ', '2016/2017', 'SECOND', '100'),
(20, 'UG16CSC028', 'SANI ABUBAKAR', '       13              23              37              47              46              48              51              41       ', '2016/2017', 'SECOND', '100'),
(21, 'UG16CSC030', 'MAIMUNATU KHALIL', '       18              58              54              54              66              68              55              46       ', '2016/2017', 'SECOND', '100'),
(22, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '       26              67              23              21              63              47              44              49       ', '2015/2016', 'SECOND', '100'),
(23, 'UG16CSC034', 'HAFSAT BADAMASI', '       46              55              49              47              77              48              43              72       ', '2016/2017', 'SECOND', '100');

-- --------------------------------------------------------

--
-- Table structure for table `level2first`
--

CREATE TABLE `level2first` (
  `Level2_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level2first`
--

INSERT INTO `level2first` (`Level2_id`, `RegNo`, `Name`, `courses`, `Session`, `Semester`, `Level`) VALUES
(1, '', '', 'CSC2301   CSC2203   CSC2305   CSC2307   CSC2311   CSC2209   GSP2207   MTH2201', '', '', '200'),
(3, 'UG15CSC003', 'HARUNA SURAJU', '       48              57              52              50              49              68              60              47       ', '2015/2016', 'FIRST', '200'),
(4, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '       12              43              48              45              49              47              46              0       ', '2015/2016', 'FIRST', '200'),
(5, 'UG15CSC005', 'TASIU DANLADI BALA', '       72              89              80              83              64              60              65              67       ', '2015/2016', 'FIRST', '200'),
(6, 'UG15CSC007', 'AHMAD MUHAMMAD', '       53              57              51              78              88              46              48              0       ', '2015/2016', 'FIRST', '200'),
(7, 'UG15CSC008', 'AYODELE EMMANUEL', '       23              45              17              47              46              34              31              54       ', '2015/2016', 'FIRST', '200'),
(8, 'UG15CSC009', 'FEMI BABATUNDE SAN', '       53              47              52              50              59              45              55              48       ', '2015/2016', 'FIRST', '200'),
(9, 'UG15CSC010', 'FIRDAUSI BALARABE', '       46              48              45              49              56              56              46              47       ', '2015/2016', 'FIRST', '200'),
(10, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '       48              45              17              53              49              0               37              55       ', '2015/2016', 'FIRST', '200'),
(11, 'UG15CSC014', 'NAFISATU ABDULLAHI', '       67              78              56              48              90              40              59              63       ', '2015/2016', 'FIRST', '200'),
(12, 'UG15CSC015', 'JAMILU DANLAMI IDI', '       34              48              45              23              56              49              12              52       ', '2015/2016', 'FIRST', '200'),
(13, 'UG15CSC017', 'YUSUF MUHAMMAD', '       51              48              48              38              53              53              47              49       ', '2015/2016', 'FIRST', '200'),
(14, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '       78              69              56              53              75              67              77              48       ', '2015/2016', 'FIRST', '200'),
(15, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '       54              49              56              46              67              63              48              64       ', '2015/2016', 'FIRST', '200'),
(16, 'UG15CSC001', 'USMAN  IBRAHIM SANI', '       67              63              53              56              76              71              77              45       ', '2015/2016', 'FIRST', '200');

-- --------------------------------------------------------

--
-- Table structure for table `level2second`
--

CREATE TABLE `level2second` (
  `Level2_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level2second`
--

INSERT INTO `level2second` (`Level2_id`, `RegNo`, `Name`, `courses`, `Session`, `Semester`, `Level`) VALUES
(1, '', '', 'CSC2302   CSC2204   CSC2206   CSCS2308   GSP2208  ', '', '', '200'),
(2, 'UG15CSC001', 'USMAN  IBRAHIM', '       47              56              55              90              90       ', '2015/2016', 'SECOND', '200'),
(3, 'UG15CSC003', 'HARUNA SURAJU', '       41              23              65              60              34       ', '2015/2016', 'SECOND', '200'),
(4, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '       10              51              48              43              39       ', '2015/2016', 'SECOND', '200'),
(5, 'UG15CSC005', 'TASIU DANLADI BALA', '       67              96              75              71              60       ', '2015/2016', 'SECOND', '200'),
(6, 'UG15CSC007', 'AHMAD MUHAMMAD', '       50              40              60              55              57       ', '2015/2016', 'SECOND', '200'),
(7, 'UG15CSC008', 'AYODELE EMMANUEL', '       54              47              27              23              49       ', '2015/2016', 'SECOND', '200'),
(8, 'UG15CSC009', 'FEMI BABATUNDE SAN', '       47              65              54              46              87       ', '2015/2016', 'SECOND', '200'),
(9, 'UG15CSC010', 'FIRDAUSI BALARABE', '       47              57              18              19              45       ', '2015/2016', 'SECOND', '200'),
(10, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '       23              52              49              15              45       ', '2015/2016', 'SECOND', '200'),
(11, 'UG15CSC014', 'NAFISATU ABDULLAHI', '       63              56              58              90              98       ', '2015/2016', 'SECOND', '200'),
(12, 'UG15CSC015', 'JAMILU DANLAMI IDI', '       34              54              47              26              78       ', '2015/2016', 'SECOND', '200'),
(13, 'UG15CSC017', 'YUSUF MUHAMMAD', '       49              57              48              54              43       ', '2015/2016', 'SECOND', '200'),
(14, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '       88              83              63              67              57       ', '2015/2016', 'SECOND', '200'),
(17, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '       62              65              45              49              19       ', '2015/2016', 'SECOND', '200');

-- --------------------------------------------------------

--
-- Table structure for table `level3first`
--

CREATE TABLE `level3first` (
  `Level3_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level3first`
--

INSERT INTO `level3first` (`Level3_id`, `RegNo`, `Name`, `courses`, `Session`, `Semester`, `Level`) VALUES
(1, '', '', 'CSC3209  CSC3305  CSC3415  CSC3301  CSC3311  CSC3303  GSP3201', '', '', '300');

-- --------------------------------------------------------

--
-- Table structure for table `level3second`
--

CREATE TABLE `level3second` (
  `Level3_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level3second`
--

INSERT INTO `level3second` (`Level3_id`, `RegNo`, `Name`, `courses`, `Session`, `Semester`, `Level`) VALUES
(1, '', '', 'CSC3600', '', '', '300');

-- --------------------------------------------------------

--
-- Table structure for table `level4first`
--

CREATE TABLE `level4first` (
  `Level4_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level4first`
--

INSERT INTO `level4first` (`Level4_id`, `RegNo`, `Name`, `courses`, `Session`, `Semester`, `Level`) VALUES
(1, '', '', 'CSC4401  CSC4303  CSC4305  CSC4207  CSC4311  CSC4309  GSP4201', '', '', '400');

-- --------------------------------------------------------

--
-- Table structure for table `level4second`
--

CREATE TABLE `level4second` (
  `Level4_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level4second`
--

INSERT INTO `level4second` (`Level4_id`, `RegNo`, `Name`, `courses`, `Session`, `Semester`, `Level`) VALUES
(1, '', '', 'CSC4206  CSC4302  CSC4304  CSC4308  CSC4600', '', '', '400');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_ID` int(11) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_ID`, `Username`, `Password`) VALUES
(1, 'shariff', '1122');

-- --------------------------------------------------------

--
-- Table structure for table `result_details`
--

CREATE TABLE `result_details` (
  `Result_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Level` text NOT NULL,
  `GPA` double NOT NULL,
  `TCR` int(11) NOT NULL,
  `TPE` int(11) NOT NULL,
  `TCE` int(11) NOT NULL,
  `CGPA` varchar(4) NOT NULL,
  `CarryOverCourses` text NOT NULL,
  `Semester` text NOT NULL,
  `Session` text NOT NULL,
  `Remarks` text NOT NULL,
  `Programme` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_details`
--

INSERT INTO `result_details` (`Result_id`, `RegNo`, `Name`, `Level`, `GPA`, `TCR`, `TPE`, `TCE`, `CGPA`, `CarryOverCourses`, `Semester`, `Session`, `Remarks`, `Programme`) VALUES
(1, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', 1.29, 17, 22, 8, '', 'STA1311, PHY1310, ICT1303, ', 'FIRST', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(2, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', 2.47, 19, 47, 13, '1.92', 'CSC1302, MTH1302, ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(3, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', 1.59, 17, 27, 9, '', 'PHY1310, GSP1201, ICT1303, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(4, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', 1.74, 19, 33, 11, '1.67', 'CSC1211, MTH1302, MTH1303, ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(5, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', 1.41, 17, 24, 12, '', 'CSC1201, GSP1201, ICT1303, ', 'FIRST', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(6, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', 1.26, 19, 24, 10, '1.33', 'MTH1302, PHY1320, MTH1303, ', 'SECOND', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(7, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', 2.71, 17, 46, 15, '', 'GSP1201, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(8, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', 3.79, 19, 72, 19, '3.28', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(9, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', 3.76, 17, 64, 17, '', '', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(10, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', 3.37, 19, 64, 19, '3.56', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(11, 'UG16CSC008', 'ISA HARUNA NURA', '100', 1.59, 17, 27, 8, '', 'MTH1301, PHY1310, PHY1170, GSP1201 ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(12, 'UG16CSC008', 'ISA HARUNA NURA', '100', 3.58, 19, 68, 19, '2.64', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(13, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', 2.24, 17, 38, 11, '', 'PHY1310, MTH1301(absent), ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(14, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', 1.11, 19, 21, 10, '1.64', 'CSC1302, PHY1320, MTH1303, ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(15, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', 3.65, 17, 62, 17, '', '', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(16, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', 3.21, 19, 61, 17, '3.42', 'GSP1202(absent)', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(17, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', 0, 17, 57, 15, '', 'CSC1201, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(18, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', 1.21, 19, 23, 13, '2.22', 'MTH1302, PHY1320, MTH1303(absent)', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(19, 'UG16CSC013', 'FAREEDA ADO SHEHU', '100', 0.88, 17, 15, 6, '', 'STA1311, PHY1310, ICT1303, CSC1201(absent)', 'FIRST', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(20, 'UG16CSC013', 'FAREEDA ADO SHEHU', '100', 1.32, 19, 25, 10, '1.11', 'MTH1302, PHY1320(absent), MTH1303', 'SECOND', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(21, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', 4.12, 17, 70, 14, '', 'GSP1201, PHY1170(absent), ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(22, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', 3.68, 19, 70, 14, '3.89', 'CSC1302, CSC1211(absent), ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(23, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', 4.82, 17, 82, 19, '', '', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(24, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', 4.74, 19, 90, 19, '4.78', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(25, 'UG16CSC017', 'VICTOR YEMI OLU', '100', 3.59, 17, 61, 15, '', 'GSP1201, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(26, 'UG16CSC017', 'VICTOR YEMI OLU', '100', 4.37, 19, 83, 19, '4.00', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(27, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', 3.59, 17, 61, 15, '', 'CSC1201, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(28, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', 3.79, 19, 72, 19, '3.69', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(29, 'UG16CSC019', 'BABATUNDE FEMI', '100', 4.53, 17, 77, 17, '', '', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(30, 'UG16CSC019', 'BABATUNDE FEMI', '100', 4.26, 19, 81, 19, '4.39', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(31, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', 4.41, 17, 75, 16, '', 'PHY1170, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(32, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', 4.26, 19, 81, 18, '4.33', 'PHY1180, ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(33, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', 3.18, 17, 54, 15, '', 'CSC1201, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(34, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', 2.84, 19, 54, 12, '3.00', 'CSC1302, GSP1206, GSP1202, ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(35, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', 4.35, 17, 74, 17, '', '', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(36, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', 4.79, 19, 91, 19, '4.58', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(37, 'UG16CSC028', 'SANI ABUBAKAR', '100', 3.18, 17, 54, 15, '', 'CSC1201, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(38, 'UG16CSC028', 'SANI ABUBAKAR', '100', 1.05, 19, 20, 9, '2.06', 'CSC1302, CSC1211, MTH1302, GSP1202, ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(39, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', 2.18, 17, 37, 14, '', 'ICT1303, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(40, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', 2.63, 19, 50, 16, '2.42', 'CSC1302, ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(41, 'UG15CSC001', 'USMAN IBRAHIM', '200', 3.65, 20, 73, 18, '', 'MTH2201, ', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(42, 'UG15CSC001', 'USMAN IBRAHIM', '200', 3.58, 12, 43, 15, '3.63', '', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(43, 'UG15CSC003', 'HARUNA SURAJU', '200', 2.8, 20, 56, 20, '', '', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(44, 'UG15CSC003', 'HARUNA SURAJU', '200', 1.67, 12, 20, 5, '2.38', 'CSC2302, CSC2204, GSP2208, ', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(45, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', 1.3, 20, 26, 13, '', 'CSC2301, CSC2203, MTH2201(absent), ', 'FIRST', '2015/2016', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(46, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', 0.83, 12, 10, 4, '1.13', 'CSC2302, CSC2308, GSP2208, ', 'SECOND', '2015/2016', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(47, 'UG15CSC005', 'TASIU DANLADI BALA', '200', 4.55, 20, 91, 20, '', '', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(48, 'UG15CSC005', 'TASIU DANLADI BALA', '200', 4.58, 12, 55, 12, '4.56', '', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(49, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', 3.1, 20, 62, 18, '', 'MTH2201(absent), ', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(50, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', 2.67, 12, 32, 10, '2.94', 'CSC2204, ', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(51, 'UG15CSC008', 'AYODELE EMMANUEL', '200', 1.1, 20, 22, 10, '', 'CSC2301, CSC2305, CSC2209, GSP2207, ', 'FIRST', '2015/2016', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(52, 'UG15CSC008', 'AYODELE EMMANUEL', '200', 1.42, 12, 17, 7, '1.22', 'CSC2206, CSC2308, ', 'SECOND', '2015/2016', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(53, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', 2.7, 20, 54, 20, '', '', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(54, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', 3, 12, 36, 12, '2.81', '', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(55, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', 2.25, 20, 45, 20, '', '', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(56, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', 1.33, 12, 16, 7, '1.91', 'CSC2206, CSC2308, ', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(57, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', 1.55, 20, 31, 13, '', 'CSC2305, CSC2209, GSP2207, ', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(58, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', 1.17, 12, 14, 6, '1.41', 'CSC2302, CSC2308, ', 'SECOND', '2015/2016', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(59, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', 1.41, 17, 24, 10, '', 'CSC1201, GSP1201, ICT1303, ', 'FIRST', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(60, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', 1.16, 19, 22, 8, '1.28', 'CSC1302, MTH1302, PHY1320, GSP1206, ', 'SECOND', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(61, 'UG16CSC034', 'HAFSAT BADAMASI', '100', 1.94, 17, 33, 12, '', 'PHY1310, GSP1201, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(62, 'UG16CSC034', 'HAFSAT BADAMASI', '100', 2.37, 19, 45, 17, '2.17', 'GSP1206, ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(63, 'UG12CSC059', 'AMINA ISHAQ SHARIFF', 'S01', 3, 10, 30, 10, '', '', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(64, 'UG12CSC059', 'AMINA ISHAQ SHARIFF', 'S01', 2.38, 8, 19, 8, '2.72', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(65, 'UG12CSC065', 'ABDULLAHI HARUNA', 'S01', 2.1, 10, 21, 8, '', 'MTH2201, ', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(66, 'UG12CSC065', 'ABDULLAHI HARUNA', 'S01', 1.67, 9, 15, 6, '1.89', 'CSC4315(absent), ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(67, 'UG12CSC013', 'NURA JALIGE BALA', 'S02', 2.25, 12, 27, 12, '', '', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(68, 'UG12CSC013', 'NURA JALIGE BALA', 'S02', 2.4, 15, 36, 12, '2.33', 'CSC4308(absent), ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(69, 'UG12CSC034', 'BINTA ISHAQ SUNUSI', 'S02', 2.88, 8, 23, 8, '', '', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(70, 'UG12CSC034', 'BINTA ISHAQ SUNUSI', 'S02', 3, 6, 18, 4, '2.93', 'CSC2204, ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(71, 'UG13CSC019', 'BINTA ISHAQ SUNUSI', 'S01', 2.9, 10, 29, 13, '', '', 'FIRST', '', '', 'B.Sc. COMPUTER SCIENCE'),
(72, 'UG13CSC019', 'BINTA ISHAQ SUNUSI', 'S01', 3, 6, 18, 6, '2.94', '', 'SECOND', '', '', 'B.Sc. COMPUTER SCIENCE'),
(73, 'UG13CSC067', 'SUNUSI HASSAN IDI', 'S02', 2.33, 9, 21, 9, '', '', 'FIRST', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(74, 'UG13CSC067', 'SUNUSI HASSAN IDI', 'S02', 1.75, 8, 14, 5, '2.06', 'CSC2308(absent), ', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(75, 'UG15CSC039', 'FEMI BABATUNDE SAN', '300', 1.15, 20, 23, 7, '', 'CSC3413, CSC3301, CSC3311, CSC3303, ', 'FIRST', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(76, 'UG15CSC039', 'FEMI BABATUNDE SAN', '300', 2, 6, 12, 6, '1.35', '', 'SECOND', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(77, 'UG15CSC045', 'DELE SOLOMON ADE', '300', 1.07, 15, 16, 8, '', 'CSC3413, CSC3311, ', 'FIRST', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(78, 'UG15CSC045', 'DELE SOLOMON ADE', '300', 2, 6, 12, 6, '1.33', '', 'SECOND', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(79, 'UG14CSC037', 'AYODELE EMMANUEL', '300', 1.05, 22, 23, 9, '', 'CSC3413, CSC3311, CSC3303, CSC3301, ', 'FIRST', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(80, 'UG14CSC037', 'AYODELE EMMANUEL', '300', 3, 6, 18, 6, '1.46', '', 'SECOND', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(81, 'UG13CSC038', 'MAIMUNATU KHALIL', 'S01', 1.37, 19, 26, 10, '', 'CSC3305, CSC3413, CSC3209, ', 'FIRST', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(82, 'UG13CSC038', 'MAIMUNATU KHALIL', 'S01', 4, 6, 24, 6, '2.00', '', 'SECOND', '2016/2017', '', 'B.Sc. COMPUTER SCIENCE'),
(83, 'UG13CSC047', 'MAIMUNATU ABUBAKAR', '300', 1.29, 14, 18, 9, '', 'STA1311, CSC1211, ', 'FIRST', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(84, 'UG13CSC047', 'MAIMUNATU ABUBAKAR', '300', 1, 12, 12, 6, '1.15', 'CSC2308, CSC2302, ', 'SECOND', '2016/2017', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(85, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', 3.3, 20, 66, 18, '', 'CSC2209, ', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(86, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', 4.08, 12, 49, 12, '3.59', '', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(87, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', 1.45, 20, 29, 12, '', 'CSC2301, CSC2307, GSP2207, ', 'FIRST', '2015/2016', 'On Probation', 'B.Sc. COMPUTER SCIENCE'),
(88, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', 1.67, 12, 20, 6, '1.53', 'CSC2302, CSC2308, ', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(89, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', 2.1, 20, 42, 17, '', 'CSC2307, ', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(90, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', 2.08, 12, 25, 10, '2.09', 'GSP2208, ', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(91, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', 3.9, 20, 78, 20, '', '', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(92, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', 4.25, 12, 51, 12, '4.03', '', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(93, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', 3, 20, 60, 20, '', '', 'FIRST', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE'),
(94, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', 2.5, 12, 30, 10, '2.81', 'GSP2208, ', 'SECOND', '2015/2016', '', 'B.Sc. COMPUTER SCIENCE');

-- --------------------------------------------------------

--
-- Table structure for table `spillover2student`
--

CREATE TABLE `spillover2student` (
  `SpillOver2_id` int(11) NOT NULL,
  `RegNo` text NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spilloverstudent`
--

CREATE TABLE `spilloverstudent` (
  `SpillOver_id` int(11) NOT NULL,
  `RegNo` text NOT NULL,
  `Name` text NOT NULL,
  `courses` text NOT NULL,
  `Session` text NOT NULL,
  `Semester` text NOT NULL,
  `Level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE `staff_info` (
  `Staff_ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Faculty` text NOT NULL,
  `Departement` text NOT NULL,
  `Rank` text NOT NULL,
  `StaffPersonal_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`Staff_ID`, `Name`, `Faculty`, `Departement`, `Rank`, `StaffPersonal_ID`) VALUES
(1, 'AHMED ABUBAKAR SADIQ', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'ADMIN', '01STF018');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Faculty` text NOT NULL,
  `Department` text NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Level` varchar(4) NOT NULL DEFAULT '1',
  `Programme` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Name`, `Faculty`, `Department`, `RegNo`, `Level`, `Programme`) VALUES
(1, 'MUSA BALARABE IBRAHIM', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC002', '100', 'B.SC. COMPUTER SCIENCE'),
(2, 'DIKKO BALA IBRAHIM', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC003', '100', 'B.SC. COMPUTER SCIENCE'),
(3, 'KHALIL SUNUSI ADO', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC005', '100', 'B.SC. COMPUTER SCIENCE'),
(4, 'SUNUSI ADO BUBA', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC006', '100', 'B.SC. COMPUTER SCIENCE'),
(5, 'AUDU ABUBAKAR SANI', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC007', '100', 'B.SC. COMPUTER SCIENCE'),
(6, 'ISA HARUNA NURA', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC008', '100', 'B.SC. COMPUTER SCIENCE'),
(7, 'FATIMA ISHAQ SHARIFF', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC009', '100', 'B.SC. COMPUTER SCIENCE'),
(8, 'MARYAM AHMAD ISHAQ', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC010', '100', 'B.SC. COMPUTER SCIENCE'),
(9, 'AHMAD ISHAQ UMAR', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC011', '100', 'B.SC. COMPUTER SCIENCE'),
(10, 'FAREEDA ADO SHEHU', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC013', '100', 'B.SC. COMPUTER SCIENCE'),
(11, 'ABUBAKAR ABUBAKAR', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC015', '100', 'B.SC. COMPUTER SCIENCE'),
(12, 'ZULAIHAT AMINU SABO', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC016', '100', 'B.SC. COMPUTER SCIENCE'),
(13, 'VICTOR YEMI OLU', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC017', '100', 'B.Sc. COMPUTER SCIENCE'),
(14, 'BELLO SULEIMAN MUSA', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC018', '100', 'B.Sc. COMPUTER SCIENCE'),
(15, 'BABATUNDE FEMI', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC019', '100', 'B.Sc. COMPUTER SCIENCE'),
(16, 'TAIWO ALAKE OLA', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC020', '100', 'B.Sc. COMPUTER SCIENCE'),
(17, 'NOOR ABDULHAMEED', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC023', '100', 'B.Sc. COMPUTER SCIENCE'),
(18, 'ABDULQAHAR ABUBAKAR', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC026', '100', 'B.Sc. COMPUTER SCIENCE'),
(19, 'SANI ABUBAKAR', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC028', '100', 'B.Sc. COMPUTER SCIENCE'),
(20, 'MAIMUNATU KHALIL', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC030', '100', 'B.Sc. COMPUTER SCIENCE'),
(21, 'USMAN IBRAHIM', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC001', '200', 'B.SC. COMPUTER SCIENCE'),
(22, 'HARUNA SURAJU', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC003', '200', 'B.SC. COMPUTER SCIENCE'),
(23, 'ISHAQ ADAMU SALEH', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC004', '200', 'B.SC. COMPUTER SCIENCE'),
(24, 'TASIU DANLADI BALA', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC005', '200', 'B.SC. COMPUTER SCIENCE'),
(25, 'AHMAD MUHAMMAD', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC007', '200', 'B.SC. COMPUTER SCIENCE'),
(26, 'AYODELE EMMANUEL', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC008', '200', 'B.SC. COMPUTER SCIENCE'),
(27, 'FEMI BABATUNDE SAN', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC009', '200', 'B.SC. COMPUTER SCIENCE'),
(28, 'FIRDAUSI BALARABE', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC010', '200', 'B.SC. COMPUTER SCIENCE'),
(29, 'FATIMA MUHAMMAD ADO', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC013', '200', 'B.SC. COMPUTER SCIENCE'),
(30, 'RABI MUHAMMAD TAHIR', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC032', '100', 'B.Sc. COMPUTER SCIENCE'),
(31, 'HAFSAT BADAMASI', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG16CSC034', '100', 'B.Sc. COMPUTER SCIENCE'),
(32, 'AMINA ISHAQ SHARIFF', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG12CSC059', 'S01', 'B.Sc. COMPUTER SCIENCE'),
(33, 'ABDULLAHI HARUNA', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG12CSC065', 'S01', 'B.Sc. COMPUTER SCIENCE'),
(34, 'NURA JALIGE BALA', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG12CSC013', 'S02', 'B.Sc. COMPUTER SCIENCE'),
(35, 'BINTA ISHAQ SUNUSI', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG12CSC034', 'S02', 'B.Sc. COMPUTER SCIENCE'),
(36, 'BINTA ISHAQ SUNUSI', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG13CSC019', 'S01', 'B.Sc. COMPUTER SCIENCE'),
(37, 'SUNUSI HASSAN IDI', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG13CSC067', 'S02', 'B.Sc. COMPUTER SCIENCE'),
(38, 'FEMI BABATUNDE SAN', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC039', '300', 'B.Sc. COMPUTER SCIENCE'),
(39, 'DELE SOLOMON ADE', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC045', '300', 'B.Sc. COMPUTER SCIENCE'),
(40, 'AYODELE EMMANUEL', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG14CSC037', '300', 'B.Sc. COMPUTER SCIENCE'),
(41, 'MAIMUNATU KHALIL', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG13CSC038', 'S01', 'B.Sc. COMPUTER SCIENCE'),
(42, 'MAIMUNATU ABUBAKAR', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG13CSC047', '300', 'B.Sc. COMPUTER SCIENCE'),
(43, 'NAFISATU ABDULLAHI', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC014', '200', 'B.Sc. COMPUTER SCIENCE'),
(44, 'JAMILU DANLAMI IDI', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC015', '200', 'B.Sc. COMPUTER SCIENCE'),
(45, 'YUSUF MUHAMMAD', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC017', '200', 'B.Sc. COMPUTER SCIENCE'),
(46, 'SAMIR UMAR FAROUQ', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC019', '200', 'B.Sc. COMPUTER SCIENCE'),
(47, 'ALIYU IBRAHIM MUSA', 'FACULTY OF SCIENCE', 'COMPUTER SCIENCE', 'UG15CSC023', '200', 'B.Sc. COMPUTER SCIENCE');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `Marks_id` int(11) NOT NULL,
  `RegNo` text NOT NULL,
  `Name` text NOT NULL,
  `Level` varchar(4) NOT NULL,
  `Session` varchar(15) NOT NULL,
  `Semester` text NOT NULL,
  `Programme` text NOT NULL,
  `Code` varchar(8) NOT NULL,
  `Title` text NOT NULL,
  `CreditUnit` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Grade` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`Marks_id`, `RegNo`, `Name`, `Level`, `Session`, `Semester`, `Programme`, `Code`, `Title`, `CreditUnit`, `Score`, `Grade`) VALUES
(1, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 56, 'C'),
(2, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 45, 'D'),
(3, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 43, 'F'),
(4, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 41, 'F'),
(5, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 67, 'B'),
(6, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 57, 'C'),
(7, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 42, 'F'),
(8, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 37, 'F'),
(9, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 72, 'A'),
(10, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 54, 'C'),
(11, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 49, 'D'),
(12, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 35, 'F'),
(13, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 63, 'B'),
(14, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 70, 'A'),
(15, 'UG16CSC002', 'MUSA BALARABE IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 50, 'C'),
(16, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 47, 'D'),
(17, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 58, 'C'),
(18, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 54, 'C'),
(19, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 37, 'F'),
(20, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 73, 'A'),
(21, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 43, 'F'),
(22, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 29, 'F'),
(23, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 90, 'A'),
(24, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 40, 'F'),
(25, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 37, 'F'),
(26, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 48, 'D'),
(27, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 46, 'D'),
(28, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 39, 'F'),
(29, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 51, 'C'),
(30, 'UG16CSC003', 'DIKKO BALA IBRAHIM', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 45, 'D'),
(38, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 61, 'B'),
(39, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 65, 'B'),
(40, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 55, 'C'),
(41, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 45, 'D'),
(42, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 45, 'D'),
(43, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 43, 'F'),
(44, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 53, 'C'),
(45, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 71, 'A'),
(46, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 55, 'C'),
(47, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 59, 'C'),
(48, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 49, 'D'),
(49, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 90, 'A'),
(50, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 97, 'A'),
(51, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 67, 'B'),
(52, 'UG16CSC006', 'SUNUSI ADO BUBA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 64, 'B'),
(53, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 71, 'A'),
(54, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 49, 'D'),
(55, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 95, 'A'),
(56, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 57, 'C'),
(57, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 63, 'B'),
(58, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 64, 'B'),
(59, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 61, 'B'),
(60, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 47, 'D'),
(61, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 67, 'B'),
(62, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 77, 'A'),
(63, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 87, 'A'),
(64, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 47, 'D'),
(65, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 55, 'C'),
(66, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 50, 'C'),
(67, 'UG16CSC007', 'AUDU ABUBAKAR SANI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 59, 'C'),
(68, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 56, 'C'),
(69, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 0, 'ABSENT'),
(70, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 62, 'B'),
(71, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 42, 'F'),
(72, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 0, 'ABSENT'),
(73, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 10, 'F'),
(74, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 50, 'C'),
(75, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 71, 'A'),
(76, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 46, 'D'),
(77, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 57, 'C'),
(78, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 62, 'B'),
(79, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 52, 'C'),
(80, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 50, 'C'),
(81, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 53, 'C'),
(82, 'UG16CSC008', 'ISA HARUNA NURA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 73, 'A'),
(83, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 67, 'B'),
(84, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 0, 'ABSENT'),
(85, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 63, 'B'),
(86, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 30, 'F'),
(87, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 50, 'C'),
(88, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 54, 'C'),
(89, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 58, 'C'),
(90, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 13, 'F'),
(91, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 46, 'D'),
(92, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 47, 'D'),
(93, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 39, 'F'),
(94, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 59, 'C'),
(95, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 29, 'F'),
(96, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 49, 'D'),
(97, 'UG16CSC009', 'FATIMA ISHAQ SHARIFF', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 46, 'D'),
(98, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 49, 'D'),
(99, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 56, 'C'),
(100, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 58, 'C'),
(101, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 80, 'A'),
(102, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 80, 'A'),
(103, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 60, 'B'),
(104, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 65, 'B'),
(105, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 65, 'B'),
(106, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 53, 'C'),
(107, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 58, 'C'),
(108, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 51, 'C'),
(109, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 89, 'A'),
(110, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 64, 'B'),
(111, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 64, 'B'),
(112, 'UG16CSC010', 'MARYAM AHMAD ISHAQ', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 0, 'ABSENT'),
(113, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 22, 'F'),
(114, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 67, 'B'),
(115, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 56, 'C'),
(116, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 47, 'D'),
(117, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 78, 'A'),
(118, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 78, 'A'),
(119, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 98, 'A'),
(152, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 47, 'D'),
(153, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 41, 'F'),
(154, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 31, 'F'),
(155, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 90, 'A'),
(156, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 0, 'ABSENT'),
(157, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 46, 'D'),
(158, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 48, 'D'),
(159, 'UG16CSC011', 'AHMAD ISHAQ UMAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 45, 'D'),
(160, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 0, 'ABSENT'),
(161, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 47, 'D'),
(162, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 17, 'F'),
(163, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 23, 'F'),
(164, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 53, 'C'),
(165, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 58, 'C'),
(166, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 19, 'F'),
(167, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 49, 'D'),
(168, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 52, 'C'),
(169, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 12, 'F'),
(170, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 0, 'ABSENT'),
(171, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 71, 'A'),
(172, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 25, 'F'),
(173, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 45, 'D'),
(174, 'UG16CSC013', 'FAREEDA  ADO SHEHU', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 46, 'D'),
(175, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 78, 'A'),
(176, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 71, 'A'),
(177, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 87, 'A'),
(178, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 83, 'A'),
(179, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 0, 'ABSENT'),
(180, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 20, 'F'),
(181, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 71, 'A'),
(182, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 23, 'F'),
(183, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 0, 'ABSENT'),
(184, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 90, 'A'),
(185, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 97, 'A'),
(186, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 97, 'A'),
(187, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 77, 'A'),
(188, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 75, 'A'),
(189, 'UG16CSC015', 'ABUBAKAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 70, 'A'),
(197, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 23, 'F'),
(198, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 47, 'D'),
(199, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 49, 'D'),
(200, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 56, 'C'),
(201, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 54, 'C'),
(202, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 39, 'F'),
(203, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 37, 'F'),
(204, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 63, 'B'),
(205, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 76, 'A'),
(206, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 54, 'C'),
(207, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 49, 'D'),
(208, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 98, 'A'),
(209, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 58, 'C'),
(210, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 55, 'C'),
(211, 'UG16CSC005', 'KHALIL SUNUSI ADO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 95, 'A'),
(212, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 86, 'A'),
(213, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 78, 'A'),
(214, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 75, 'A'),
(215, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 67, 'B'),
(216, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 90, 'A'),
(217, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 92, 'A'),
(218, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 74, 'A'),
(219, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 76, 'A'),
(220, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 71, 'A'),
(221, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 79, 'A'),
(222, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 69, 'B'),
(223, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 87, 'A'),
(224, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 83, 'A'),
(225, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 73, 'A'),
(226, 'UG16CSC016', 'ZULAIHAT AMINU SABO', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 68, 'B'),
(227, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 53, 'C'),
(228, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 87, 'A'),
(229, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 76, 'A'),
(230, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 49, 'D'),
(231, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 67, 'B'),
(232, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 32, 'F'),
(233, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 82, 'A'),
(234, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 91, 'A'),
(235, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 64, 'B'),
(236, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 63, 'B'),
(237, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 57, 'C'),
(238, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 64, 'B'),
(239, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 87, 'A'),
(240, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 75, 'A'),
(241, 'UG16CSC017', 'VICTOR YEMI OLU', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 70, 'A'),
(242, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 34, 'F'),
(243, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 64, 'B'),
(244, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 62, 'B'),
(245, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 52, 'C'),
(246, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 55, 'C'),
(247, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 72, 'A'),
(248, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 78, 'A'),
(249, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 81, 'A'),
(250, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 67, 'B'),
(251, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 69, 'B'),
(252, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 65, 'B'),
(253, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 63, 'B'),
(254, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 51, 'C'),
(255, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 54, 'C'),
(256, 'UG16CSC018', 'BELLO SULEIMAN MUSA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 58, 'C'),
(257, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 73, 'A'),
(258, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 67, 'B'),
(259, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 97, 'A'),
(260, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 84, 'A'),
(261, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 81, 'A'),
(262, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 61, 'B'),
(263, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 68, 'B'),
(264, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 75, 'A'),
(265, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 67, 'B'),
(266, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 57, 'C'),
(267, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 84, 'A'),
(268, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 88, 'A'),
(269, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 59, 'C'),
(270, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 90, 'A'),
(271, 'UG16CSC019', 'BABATUNDE FEMI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 70, 'A'),
(272, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 72, 'A'),
(273, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 87, 'A'),
(274, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 83, 'A'),
(275, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 78, 'A'),
(276, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 18, 'F'),
(277, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 67, 'B'),
(278, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 64, 'B'),
(279, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 56, 'C'),
(280, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 86, 'A'),
(281, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 97, 'A'),
(282, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 87, 'A'),
(283, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 43, 'F'),
(284, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 67, 'B'),
(285, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 87, 'A'),
(286, 'UG16CSC020', 'TAIWO ALAKE OLA', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 73, 'A'),
(287, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 43, 'F'),
(288, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 56, 'C'),
(289, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 55, 'C'),
(290, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 58, 'C'),
(291, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 67, 'B'),
(292, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 68, 'B'),
(293, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 78, 'A'),
(294, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 12, 'F'),
(295, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 72, 'A'),
(296, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 62, 'B'),
(297, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 65, 'B'),
(298, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 85, 'A'),
(299, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 89, 'A'),
(300, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 39, 'F'),
(301, 'UG16CSC023', 'NOOR ABDULHAMEED', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 33, 'F'),
(302, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 64, 'B'),
(303, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 62, 'B'),
(304, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 68, 'B'),
(305, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 63, 'B'),
(306, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 79, 'A'),
(307, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 90, 'A'),
(308, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 71, 'A'),
(309, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 93, 'A'),
(310, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 76, 'A'),
(311, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 70, 'A'),
(312, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 82, 'A'),
(313, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 82, 'A'),
(314, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 79, 'A'),
(315, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 69, 'B'),
(316, 'UG16CSC026', 'ABDULQAHAR ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 60, 'B'),
(317, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 35, 'F'),
(318, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 78, 'A'),
(319, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 89, 'A'),
(320, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 67, 'B'),
(321, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 47, 'D'),
(322, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 49, 'D'),
(323, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 46, 'D'),
(324, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 13, 'F'),
(325, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 23, 'F'),
(326, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 37, 'F'),
(327, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 47, 'D'),
(328, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 46, 'D'),
(329, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 48, 'D'),
(330, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 51, 'C'),
(331, 'UG16CSC028', 'SANI ABUBAKAR', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 41, 'F'),
(332, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 45, 'D'),
(333, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 55, 'C'),
(334, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 53, 'C'),
(335, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 57, 'C'),
(336, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 47, 'D'),
(337, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 46, 'D'),
(338, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 13, 'F'),
(339, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 18, 'F'),
(340, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 58, 'C'),
(341, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 54, 'C'),
(342, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 54, 'C'),
(343, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 66, 'B'),
(344, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 68, 'B'),
(345, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 55, 'C'),
(346, 'UG16CSC030', 'MAIMUNATU KHALIL', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 46, 'D'),
(355, 'UG15CSC001', 'USMAN  IBRAHIM', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 47, 'D'),
(356, 'UG15CSC001', 'USMAN  IBRAHIM', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 56, 'C'),
(357, 'UG15CSC001', 'USMAN  IBRAHIM', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 55, 'C'),
(358, 'UG15CSC001', 'USMAN  IBRAHIM', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 90, 'A'),
(359, 'UG15CSC001', 'USMAN  IBRAHIM', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 90, 'A'),
(360, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 48, 'D'),
(361, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 57, 'C'),
(362, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 52, 'C'),
(363, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 50, 'C'),
(364, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 49, 'D'),
(365, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 68, 'B'),
(366, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 60, 'B'),
(367, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 47, 'D'),
(368, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 41, 'F'),
(369, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 23, 'F'),
(370, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 65, 'B'),
(371, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 60, 'B'),
(372, 'UG15CSC003', 'HARUNA SURAJU', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 34, 'F'),
(373, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 12, 'F'),
(374, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 43, 'F'),
(375, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 48, 'D'),
(376, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 45, 'D'),
(377, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 49, 'D'),
(378, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 47, 'D'),
(379, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 46, 'D'),
(380, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 0, 'F'),
(381, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 10, 'F'),
(382, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 51, 'C'),
(383, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 48, 'D'),
(384, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 43, 'F'),
(385, 'UG15CSC004', 'ISHAQ ADAMU SALEH', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 39, 'F'),
(386, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 72, 'A'),
(387, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 89, 'A'),
(388, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 80, 'A'),
(389, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 83, 'A'),
(390, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 64, 'B'),
(391, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 60, 'B'),
(392, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 65, 'B'),
(393, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 67, 'B'),
(394, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 67, 'B'),
(395, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 96, 'A'),
(396, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 75, 'A'),
(397, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 71, 'A'),
(398, 'UG15CSC005', 'TASIU DANLADI BALA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 60, 'B');
INSERT INTO `student_marks` (`Marks_id`, `RegNo`, `Name`, `Level`, `Session`, `Semester`, `Programme`, `Code`, `Title`, `CreditUnit`, `Score`, `Grade`) VALUES
(399, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 53, 'C'),
(400, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 57, 'C'),
(401, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 51, 'C'),
(402, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 78, 'A'),
(403, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 88, 'A'),
(404, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 46, 'D'),
(405, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 48, 'D'),
(406, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 0, 'F'),
(407, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 50, 'C'),
(408, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 40, 'F'),
(409, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 60, 'B'),
(410, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 55, 'C'),
(411, 'UG15CSC007', 'AHMAD MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 57, 'C'),
(412, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 23, 'F'),
(413, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 45, 'D'),
(414, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 17, 'F'),
(415, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 47, 'D'),
(416, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 46, 'D'),
(417, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 34, 'F'),
(418, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 31, 'F'),
(419, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 54, 'C'),
(420, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 54, 'C'),
(421, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 47, 'D'),
(422, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 27, 'F'),
(423, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 23, 'F'),
(424, 'UG15CSC008', 'AYODELE EMMANUEL', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 49, 'D'),
(425, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 53, 'C'),
(426, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 47, 'D'),
(427, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 52, 'C'),
(428, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 50, 'C'),
(429, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 59, 'C'),
(430, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 45, 'D'),
(431, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 55, 'C'),
(432, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 48, 'D'),
(433, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 47, 'D'),
(434, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 65, 'B'),
(435, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 54, 'C'),
(436, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 46, 'D'),
(437, 'UG15CSC009', 'FEMI BABATUNDE SAN', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 87, 'A'),
(438, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 46, 'D'),
(439, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 48, 'D'),
(440, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 45, 'D'),
(441, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 49, 'D'),
(442, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 56, 'C'),
(443, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 56, 'C'),
(444, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 46, 'D'),
(445, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 47, 'D'),
(446, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 47, 'D'),
(447, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 57, 'C'),
(448, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 18, 'F'),
(449, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 19, 'F'),
(450, 'UG15CSC010', 'FIRDAUSI BALARABE', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 45, 'D'),
(451, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 48, 'D'),
(452, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 45, 'D'),
(453, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 17, 'F'),
(454, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 53, 'C'),
(455, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 49, 'D'),
(456, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 0, 'F'),
(457, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 37, 'F'),
(458, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 55, 'C'),
(459, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 23, 'F'),
(460, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 52, 'C'),
(461, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 49, 'D'),
(462, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 15, 'F'),
(463, 'UG15CSC013', 'FATIMA MUHAMMAD ADO', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 45, 'D'),
(464, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 12, 'F'),
(465, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 47, 'D'),
(466, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 46, 'D'),
(467, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 54, 'C'),
(468, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 55, 'C'),
(469, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 37, 'F'),
(470, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 26, 'F'),
(471, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 26, 'F'),
(472, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 67, 'B'),
(473, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 23, 'F'),
(474, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 21, 'F'),
(475, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 63, 'B'),
(476, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 47, 'D'),
(477, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 44, 'F'),
(478, 'UG16CSC032', 'RABI MUHAMMAD TAHIR', '100', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 49, 'D'),
(479, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 48, 'D'),
(480, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 49, 'D'),
(481, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 51, 'C'),
(482, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1310', 'GENERAL PHYSICS I', 3, 41, 'F'),
(483, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 89, 'A'),
(484, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP1201', 'USE OF ENGLISH I', 2, 13, 'F'),
(485, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 52, 'C'),
(486, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 46, 'D'),
(487, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC1211', 'INTRODUCTION TO ICT', 2, 55, 'C'),
(488, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 49, 'D'),
(489, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 47, 'D'),
(490, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 77, 'A'),
(491, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 48, 'D'),
(492, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1206', 'LIBRARY SKILLS', 2, 43, 'F'),
(493, 'UG16CSC034', 'HAFSAT BADAMASI', '100', '2016/2017', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 72, 'A'),
(494, 'UG12CSC049', 'RABIU SHEHU GALI', 'S01', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'STA1311', 'PROBABILITY I', 3, 46, 'D'),
(495, 'UG12CSC049', 'RABIU SHEHU GALI', 'S01', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 58, 'C'),
(496, 'UG12CSC049', 'RABIU SHEHU GALI', 'S01', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 62, 'B'),
(497, 'UG12CSC049', 'RABIU SHEHU GALI', 'S01', '2016/2017', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'PHY1320', 'GENERAL PHYSICS II', 3, 44, 'F'),
(498, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 67, 'B'),
(499, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 78, 'A'),
(500, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 56, 'C'),
(501, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 48, 'D'),
(502, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 90, 'A'),
(503, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 40, 'F'),
(504, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 59, 'C'),
(505, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 63, 'B'),
(506, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 63, 'B'),
(507, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 56, 'C'),
(508, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 58, 'C'),
(509, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 90, 'A'),
(510, 'UG15CSC014', 'NAFISATU ABDULLAHI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 98, 'A'),
(511, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 34, 'F'),
(512, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 48, 'D'),
(513, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 45, 'D'),
(514, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 23, 'F'),
(515, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 56, 'C'),
(516, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 49, 'D'),
(517, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 12, 'F'),
(518, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 52, 'C'),
(519, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 34, 'F'),
(520, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 54, 'C'),
(521, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 47, 'D'),
(522, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 26, 'F'),
(523, 'UG15CSC015', 'JAMILU DANLAMI IDI', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 78, 'A'),
(524, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 51, 'C'),
(525, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 48, 'D'),
(526, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 48, 'D'),
(527, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 38, 'F'),
(528, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 53, 'C'),
(529, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 53, 'C'),
(530, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 47, 'D'),
(531, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 49, 'D'),
(532, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 49, 'D'),
(533, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 57, 'C'),
(534, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 48, 'D'),
(535, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 54, 'C'),
(536, 'UG15CSC017', 'YUSUF MUHAMMAD', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 43, 'F'),
(537, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 78, 'A'),
(538, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 69, 'B'),
(539, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 56, 'C'),
(540, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 53, 'C'),
(541, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 75, 'A'),
(542, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 67, 'B'),
(543, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 77, 'A'),
(544, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 48, 'D'),
(545, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 88, 'A'),
(546, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 83, 'A'),
(547, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 63, 'B'),
(548, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 67, 'B'),
(549, 'UG15CSC019', 'SAMIR UMAR FAROUQ', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 57, 'C'),
(550, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 54, 'C'),
(551, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 49, 'D'),
(552, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 56, 'C'),
(553, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 46, 'D'),
(554, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 67, 'B'),
(555, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 63, 'B'),
(556, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 48, 'D'),
(557, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 64, 'B'),
(563, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 62, 'B'),
(564, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 65, 'B'),
(565, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2206', 'COMPUTER HARDWARE', 2, 45, 'D'),
(566, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'CSC2308', 'DATA MANAGEMENT I', 3, 49, 'D'),
(567, 'UG15CSC023', 'ALIYU IBRAHIM MUSA', '200', '2015/2016', 'SECOND', 'B.Sc. COMPUTER SCIENCE', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 19, 'F'),
(592, 'UG15CSC001', 'USMAN  IBRAHIM SANI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 67, 'B'),
(593, 'UG15CSC001', 'USMAN  IBRAHIM SANI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2203', 'DISCRETE STRUCTURES', 2, 63, 'B'),
(594, 'UG15CSC001', 'USMAN  IBRAHIM SANI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2305', 'OPERATING SYSTEMS I', 3, 53, 'C'),
(595, 'UG15CSC001', 'USMAN  IBRAHIM SANI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 56, 'C'),
(596, 'UG15CSC001', 'USMAN  IBRAHIM SANI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 76, 'A'),
(597, 'UG15CSC001', 'USMAN  IBRAHIM SANI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 71, 'A'),
(598, 'UG15CSC001', 'USMAN  IBRAHIM SANI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 77, 'A'),
(599, 'UG15CSC001', 'USMAN  IBRAHIM SANI', '200', '2015/2016', 'FIRST', 'B.Sc. COMPUTER SCIENCE', 'MTH2201', 'LINEAR ALGEBRA I', 2, 45, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `student_result`
--

CREATE TABLE `student_result` (
  `SResult_id` int(11) NOT NULL,
  `RegNo` varchar(10) NOT NULL,
  `Code` varchar(7) NOT NULL,
  `Title` text NOT NULL,
  `CreditUnit` int(2) NOT NULL,
  `Grade` text NOT NULL,
  `GP` int(11) NOT NULL,
  `PE` int(11) NOT NULL,
  `Semester` text NOT NULL,
  `Session` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_result`
--

INSERT INTO `student_result` (`SResult_id`, `RegNo`, `Code`, `Title`, `CreditUnit`, `Grade`, `GP`, `PE`, `Semester`, `Session`) VALUES
(1, 'UG16CSC002', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'C', 3, 6, 'FIRST', '2016/2017'),
(2, 'UG16CSC002', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(3, 'UG16CSC002', 'STA1311', 'PROBABILITY I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(4, 'UG16CSC002', 'PHY1310', 'GENERAL PHYSICS I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(5, 'UG16CSC002', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'B', 4, 4, 'FIRST', '2016/2017'),
(6, 'UG16CSC002', 'GSP1201', 'USE OF ENGLISH I', 2, 'C', 3, 6, 'FIRST', '2016/2017'),
(7, 'UG16CSC002', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(8, 'UG16CSC002', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(9, 'UG16CSC002', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(10, 'UG16CSC002', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'C', 3, 3, 'SECOND', '2016/2017'),
(11, 'UG16CSC002', 'PHY1320', 'GENERAL PHYSICS II', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(12, 'UG16CSC002', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(13, 'UG16CSC002', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(14, 'UG16CSC002', 'GSP1206', 'LIBRARY SKILLS', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(15, 'UG16CSC002', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(16, 'UG16CSC003', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(17, 'UG16CSC003', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(18, 'UG16CSC003', 'STA1311', 'PROBABILITY I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(19, 'UG16CSC003', 'PHY1310', 'GENERAL PHYSICS I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(20, 'UG16CSC003', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'A', 5, 5, 'FIRST', '2016/2017'),
(21, 'UG16CSC003', 'GSP1201', 'USE OF ENGLISH I', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(22, 'UG16CSC003', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(23, 'UG16CSC003', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(24, 'UG16CSC003', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'F', 0, 0, 'SECOND', '2016/2017'),
(25, 'UG16CSC003', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(26, 'UG16CSC003', 'PHY1320', 'GENERAL PHYSICS II', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(27, 'UG16CSC003', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'D', 2, 2, 'SECOND', '2016/2017'),
(28, 'UG16CSC003', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(29, 'UG16CSC003', 'GSP1206', 'LIBRARY SKILLS', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(30, 'UG16CSC003', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(31, 'UG16CSC005', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(32, 'UG16CSC005', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(33, 'UG16CSC005', 'STA1311', 'PROBABILITY I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(34, 'UG16CSC005', 'PHY1310', 'GENERAL PHYSICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(35, 'UG16CSC005', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'C', 3, 3, 'FIRST', '2016/2017'),
(36, 'UG16CSC005', 'GSP1201', 'USE OF ENGLISH I', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(37, 'UG16CSC005', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(38, 'UG16CSC005', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(39, 'UG16CSC005', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(40, 'UG16CSC005', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(41, 'UG16CSC005', 'PHY1320', 'GENERAL PHYSICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(42, 'UG16CSC005', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'B', 4, 4, 'SECOND', '2016/2017'),
(43, 'UG16CSC005', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(44, 'UG16CSC005', 'GSP1206', 'LIBRARY SKILLS', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(45, 'UG16CSC005', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(46, 'UG16CSC006', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(47, 'UG16CSC006', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(48, 'UG16CSC006', 'STA1311', 'PROBABILITY I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(49, 'UG16CSC006', 'PHY1310', 'GENERAL PHYSICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(50, 'UG16CSC006', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'D', 2, 2, 'FIRST', '2016/2017'),
(51, 'UG16CSC006', 'GSP1201', 'USE OF ENGLISH I', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(52, 'UG16CSC006', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(53, 'UG16CSC006', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(54, 'UG16CSC006', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(55, 'UG16CSC006', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(56, 'UG16CSC006', 'PHY1320', 'GENERAL PHYSICS II', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(57, 'UG16CSC006', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(58, 'UG16CSC006', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(59, 'UG16CSC006', 'GSP1206', 'LIBRARY SKILLS', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(60, 'UG16CSC006', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(61, 'UG16CSC007', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(62, 'UG16CSC007', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(63, 'UG16CSC007', 'STA1311', 'PROBABILITY I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(64, 'UG16CSC007', 'PHY1310', 'GENERAL PHYSICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(65, 'UG16CSC007', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'B', 4, 4, 'FIRST', '2016/2017'),
(66, 'UG16CSC007', 'GSP1201', 'USE OF ENGLISH I', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(67, 'UG16CSC007', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(68, 'UG16CSC007', 'PHY1320', 'GENERAL PHYSICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(69, 'UG16CSC007', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(70, 'UG16CSC007', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(71, 'UG16CSC007', 'GSP1206', 'LIBRARY SKILLS', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(72, 'UG16CSC007', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(73, 'UG16CSC007', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(74, 'UG16CSC007', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(75, 'UG16CSC007', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(76, 'UG16CSC008', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'C', 3, 6, 'FIRST', '2016/2017'),
(77, 'UG16CSC008', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'ABSENT', 0, 0, 'FIRST', '2016/2017'),
(78, 'UG16CSC008', 'STA1311', 'PROBABILITY I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(79, 'UG16CSC008', 'PHY1310', 'GENERAL PHYSICS I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(80, 'UG16CSC008', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'ABSENT', 0, 0, 'FIRST', '2016/2017'),
(81, 'UG16CSC008', 'GSP1201', 'USE OF ENGLISH I', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(82, 'UG16CSC008', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(83, 'UG16CSC008', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(84, 'UG16CSC008', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(85, 'UG16CSC008', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(86, 'UG16CSC008', 'PHY1320', 'GENERAL PHYSICS II', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(87, 'UG16CSC008', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'C', 3, 3, 'SECOND', '2016/2017'),
(88, 'UG16CSC008', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(89, 'UG16CSC008', 'GSP1206', 'LIBRARY SKILLS', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(90, 'UG16CSC008', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(91, 'UG16CSC009', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(92, 'UG16CSC009', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'ABSENT', 0, 0, 'FIRST', '2016/2017'),
(93, 'UG16CSC009', 'STA1311', 'PROBABILITY I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(94, 'UG16CSC009', 'PHY1310', 'GENERAL PHYSICS I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(95, 'UG16CSC009', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'C', 3, 3, 'FIRST', '2016/2017'),
(96, 'UG16CSC009', 'GSP1201', 'USE OF ENGLISH I', 2, 'C', 3, 6, 'FIRST', '2016/2017'),
(97, 'UG16CSC009', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(98, 'UG16CSC009', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(99, 'UG16CSC009', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(100, 'UG16CSC009', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(101, 'UG16CSC009', 'PHY1320', 'GENERAL PHYSICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(102, 'UG16CSC009', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'C', 3, 3, 'SECOND', '2016/2017'),
(103, 'UG16CSC009', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(104, 'UG16CSC009', 'GSP1206', 'LIBRARY SKILLS', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(105, 'UG16CSC009', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(106, 'UG16CSC010', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(107, 'UG16CSC010', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(108, 'UG16CSC010', 'STA1311', 'PROBABILITY I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(109, 'UG16CSC010', 'PHY1310', 'GENERAL PHYSICS I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(110, 'UG16CSC010', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'A', 5, 5, 'FIRST', '2016/2017'),
(111, 'UG16CSC010', 'GSP1201', 'USE OF ENGLISH I', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(112, 'UG16CSC010', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(113, 'UG16CSC010', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(114, 'UG16CSC010', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(115, 'UG16CSC010', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(116, 'UG16CSC010', 'PHY1320', 'GENERAL PHYSICS II', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(117, 'UG16CSC010', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(118, 'UG16CSC010', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(119, 'UG16CSC010', 'GSP1206', 'LIBRARY SKILLS', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(120, 'UG16CSC010', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'ABSENT', 0, 0, 'SECOND', '2016/2017'),
(121, 'UG16CSC011', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(122, 'UG16CSC011', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(123, 'UG16CSC011', 'STA1311', 'PROBABILITY I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(124, 'UG16CSC011', 'PHY1310', 'GENERAL PHYSICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(125, 'UG16CSC011', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'A', 5, 5, 'FIRST', '2016/2017'),
(126, 'UG16CSC011', 'GSP1201', 'USE OF ENGLISH I', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(127, 'UG16CSC011', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(128, 'UG16CSC011', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(129, 'UG16CSC011', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(130, 'UG16CSC011', 'PHY1320', 'GENERAL PHYSICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(131, 'UG16CSC011', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(132, 'UG16CSC011', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'ABSENT', 0, 0, 'SECOND', '2016/2017'),
(133, 'UG16CSC011', 'GSP1206', 'LIBRARY SKILLS', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(134, 'UG16CSC011', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(135, 'UG16CSC011', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(136, 'UG16CSC013', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'ABSENT', 0, 0, 'FIRST', '2016/2017'),
(137, 'UG16CSC013', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(138, 'UG16CSC013', 'STA1311', 'PROBABILITY I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(139, 'UG16CSC013', 'PHY1310', 'GENERAL PHYSICS I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(140, 'UG16CSC013', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'C', 3, 3, 'FIRST', '2016/2017'),
(141, 'UG16CSC013', 'GSP1201', 'USE OF ENGLISH I', 2, 'C', 3, 6, 'FIRST', '2016/2017'),
(142, 'UG16CSC013', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(143, 'UG16CSC013', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(144, 'UG16CSC013', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(145, 'UG16CSC013', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(146, 'UG16CSC013', 'PHY1320', 'GENERAL PHYSICS II', 3, 'ABSENT', 0, 0, 'SECOND', '2016/2017'),
(147, 'UG16CSC013', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(148, 'UG16CSC013', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(149, 'UG16CSC013', 'GSP1206', 'LIBRARY SKILLS', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(150, 'UG16CSC013', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(151, 'UG16CSC015', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(152, 'UG16CSC015', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(153, 'UG16CSC015', 'STA1311', 'PROBABILITY I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(154, 'UG16CSC015', 'PHY1310', 'GENERAL PHYSICS I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(155, 'UG16CSC015', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'ABSENT', 0, 0, 'FIRST', '2016/2017'),
(156, 'UG16CSC015', 'GSP1201', 'USE OF ENGLISH I', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(157, 'UG16CSC015', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(158, 'UG16CSC015', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(159, 'UG16CSC015', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'ABSENT', 0, 0, 'SECOND', '2016/2017'),
(160, 'UG16CSC015', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(161, 'UG16CSC015', 'PHY1320', 'GENERAL PHYSICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(162, 'UG16CSC015', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(163, 'UG16CSC015', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(164, 'UG16CSC015', 'GSP1206', 'LIBRARY SKILLS', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(165, 'UG16CSC015', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(166, 'UG16CSC016', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(167, 'UG16CSC016', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(168, 'UG16CSC016', 'STA1311', 'PROBABILITY I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(169, 'UG16CSC016', 'PHY1310', 'GENERAL PHYSICS I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(170, 'UG16CSC016', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'A', 5, 5, 'FIRST', '2016/2017'),
(171, 'UG16CSC016', 'GSP1201', 'USE OF ENGLISH I', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(172, 'UG16CSC016', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(173, 'UG16CSC016', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(174, 'UG16CSC016', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(175, 'UG16CSC016', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(176, 'UG16CSC016', 'PHY1320', 'GENERAL PHYSICS II', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(177, 'UG16CSC016', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(178, 'UG16CSC016', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(179, 'UG16CSC016', 'GSP1206', 'LIBRARY SKILLS', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(180, 'UG16CSC016', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(181, 'UG16CSC017', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'C', 3, 6, 'FIRST', '2016/2017'),
(182, 'UG16CSC017', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(183, 'UG16CSC017', 'STA1311', 'PROBABILITY I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(184, 'UG16CSC017', 'PHY1310', 'GENERAL PHYSICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(185, 'UG16CSC017', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'B', 4, 4, 'FIRST', '2016/2017'),
(186, 'UG16CSC017', 'GSP1201', 'USE OF ENGLISH I', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(187, 'UG16CSC017', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(188, 'UG16CSC017', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(189, 'UG16CSC017', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(190, 'UG16CSC017', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(191, 'UG16CSC017', 'PHY1320', 'GENERAL PHYSICS II', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(192, 'UG16CSC017', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'B', 4, 4, 'SECOND', '2016/2017'),
(193, 'UG16CSC017', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(194, 'UG16CSC017', 'GSP1206', 'LIBRARY SKILLS', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(195, 'UG16CSC017', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(196, 'UG16CSC018', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(197, 'UG16CSC018', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(198, 'UG16CSC018', 'STA1311', 'PROBABILITY I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(199, 'UG16CSC018', 'PHY1310', 'GENERAL PHYSICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(200, 'UG16CSC018', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'C', 3, 3, 'FIRST', '2016/2017'),
(201, 'UG16CSC018', 'GSP1201', 'USE OF ENGLISH I', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(202, 'UG16CSC018', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(203, 'UG16CSC018', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(204, 'UG16CSC018', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(205, 'UG16CSC018', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(206, 'UG16CSC018', 'PHY1320', 'GENERAL PHYSICS II', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(207, 'UG16CSC018', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'B', 4, 4, 'SECOND', '2016/2017'),
(208, 'UG16CSC018', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(209, 'UG16CSC018', 'GSP1206', 'LIBRARY SKILLS', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(210, 'UG16CSC018', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(211, 'UG16CSC019', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(212, 'UG16CSC019', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(213, 'UG16CSC019', 'STA1311', 'PROBABILITY I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(214, 'UG16CSC019', 'PHY1310', 'GENERAL PHYSICS I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(215, 'UG16CSC019', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'A', 5, 5, 'FIRST', '2016/2017'),
(216, 'UG16CSC019', 'GSP1201', 'USE OF ENGLISH I', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(217, 'UG16CSC019', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(218, 'UG16CSC019', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(219, 'UG16CSC019', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(220, 'UG16CSC019', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(221, 'UG16CSC019', 'PHY1320', 'GENERAL PHYSICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(222, 'UG16CSC019', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(223, 'UG16CSC019', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(224, 'UG16CSC019', 'GSP1206', 'LIBRARY SKILLS', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(225, 'UG16CSC019', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(226, 'UG16CSC020', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(227, 'UG16CSC020', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(228, 'UG16CSC020', 'STA1311', 'PROBABILITY I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(229, 'UG16CSC020', 'PHY1310', 'GENERAL PHYSICS I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(230, 'UG16CSC020', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'F', 0, 0, 'FIRST', '2016/2017'),
(231, 'UG16CSC020', 'GSP1201', 'USE OF ENGLISH I', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(232, 'UG16CSC020', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(233, 'UG16CSC020', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(234, 'UG16CSC020', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(235, 'UG16CSC020', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(236, 'UG16CSC020', 'PHY1320', 'GENERAL PHYSICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(237, 'UG16CSC020', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'F', 0, 0, 'SECOND', '2016/2017'),
(238, 'UG16CSC020', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(239, 'UG16CSC020', 'GSP1206', 'LIBRARY SKILLS', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(240, 'UG16CSC020', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(241, 'UG16CSC023', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(242, 'UG16CSC023', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(243, 'UG16CSC023', 'STA1311', 'PROBABILITY I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(244, 'UG16CSC023', 'PHY1310', 'GENERAL PHYSICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(245, 'UG16CSC023', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'B', 4, 4, 'FIRST', '2016/2017'),
(246, 'UG16CSC023', 'GSP1201', 'USE OF ENGLISH I', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(247, 'UG16CSC023', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(248, 'UG16CSC023', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(249, 'UG16CSC023', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(250, 'UG16CSC023', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(251, 'UG16CSC023', 'PHY1320', 'GENERAL PHYSICS II', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(252, 'UG16CSC023', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(253, 'UG16CSC023', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(254, 'UG16CSC023', 'GSP1206', 'LIBRARY SKILLS', 2, 'F', 0, 0, 'SECOND', '2016/2017'),
(255, 'UG16CSC023', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'F', 0, 0, 'SECOND', '2016/2017'),
(256, 'UG16CSC026', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(257, 'UG16CSC026', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(258, 'UG16CSC026', 'STA1311', 'PROBABILITY I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(259, 'UG16CSC026', 'PHY1310', 'GENERAL PHYSICS I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(260, 'UG16CSC026', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'A', 5, 5, 'FIRST', '2016/2017'),
(261, 'UG16CSC026', 'GSP1201', 'USE OF ENGLISH I', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(262, 'UG16CSC026', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(263, 'UG16CSC026', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(264, 'UG16CSC026', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(265, 'UG16CSC026', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(266, 'UG16CSC026', 'PHY1320', 'GENERAL PHYSICS II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(267, 'UG16CSC026', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(268, 'UG16CSC026', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(269, 'UG16CSC026', 'GSP1206', 'LIBRARY SKILLS', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(270, 'UG16CSC026', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(271, 'UG16CSC028', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(272, 'UG16CSC028', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(273, 'UG16CSC028', 'STA1311', 'PROBABILITY I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(274, 'UG16CSC028', 'PHY1310', 'GENERAL PHYSICS I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(275, 'UG16CSC028', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'D', 2, 2, 'FIRST', '2016/2017'),
(276, 'UG16CSC028', 'GSP1201', 'USE OF ENGLISH I', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(277, 'UG16CSC028', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(278, 'UG16CSC028', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(279, 'UG16CSC028', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'F', 0, 0, 'SECOND', '2016/2017'),
(280, 'UG16CSC028', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(281, 'UG16CSC028', 'PHY1320', 'GENERAL PHYSICS II', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(282, 'UG16CSC028', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'D', 2, 2, 'SECOND', '2016/2017'),
(283, 'UG16CSC028', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(284, 'UG16CSC028', 'GSP1206', 'LIBRARY SKILLS', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(285, 'UG16CSC028', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'F', 0, 0, 'SECOND', '2016/2017'),
(286, 'UG16CSC030', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(287, 'UG16CSC030', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(288, 'UG16CSC030', 'STA1311', 'PROBABILITY I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(289, 'UG16CSC030', 'PHY1310', 'GENERAL PHYSICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(290, 'UG16CSC030', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'D', 2, 2, 'FIRST', '2016/2017'),
(291, 'UG16CSC030', 'GSP1201', 'USE OF ENGLISH I', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(292, 'UG16CSC030', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(293, 'UG16CSC030', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(294, 'UG16CSC030', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(295, 'UG16CSC030', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(296, 'UG16CSC030', 'PHY1320', 'GENERAL PHYSICS II', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(297, 'UG16CSC030', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'B', 4, 4, 'SECOND', '2016/2017'),
(298, 'UG16CSC030', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(299, 'UG16CSC030', 'GSP1206', 'LIBRARY SKILLS', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(300, 'UG16CSC030', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(301, 'UG15CSC001', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'B', 4, 12, 'FIRST', '2015/2016'),
(302, 'UG15CSC001', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(303, 'UG15CSC001', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(304, 'UG15CSC001', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(305, 'UG15CSC001', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'A', 5, 15, 'FIRST', '2015/2016'),
(306, 'UG15CSC001', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'A', 5, 10, 'FIRST', '2015/2016'),
(307, 'UG15CSC001', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'A', 5, 10, 'FIRST', '2015/2016'),
(308, 'UG15CSC001', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'F', 0, 0, 'FIRST', '2015/2016'),
(309, 'UG15CSC001', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'D', 2, 6, 'SECOND', '2015/2016'),
(310, 'UG15CSC001', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(311, 'UG15CSC001', 'CSC2206', 'COMPUTER HARDWARE', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(312, 'UG15CSC001', 'CSC2308', 'DATA MANAGEMENT I', 3, 'A', 5, 15, 'SECOND', '2015/2016'),
(313, 'UG15CSC001', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'A', 5, 10, 'SECOND', '2015/2016'),
(314, 'UG15CSC003', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(315, 'UG15CSC003', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'C', 3, 6, 'FIRST', '2015/2016'),
(316, 'UG15CSC003', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(317, 'UG15CSC003', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(318, 'UG15CSC003', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(319, 'UG15CSC003', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(320, 'UG15CSC003', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(321, 'UG15CSC003', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(322, 'UG15CSC003', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'F', 0, 0, 'SECOND', '2015/2016'),
(323, 'UG15CSC003', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'F', 0, 0, 'SECOND', '2015/2016'),
(324, 'UG15CSC003', 'CSC2206', 'COMPUTER HARDWARE', 2, 'B', 4, 8, 'SECOND', '2015/2016'),
(325, 'UG15CSC003', 'CSC2308', 'DATA MANAGEMENT I', 3, 'B', 4, 12, 'SECOND', '2015/2016'),
(326, 'UG15CSC003', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'F', 0, 0, 'SECOND', '2015/2016'),
(327, 'UG15CSC004', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'F', 0, 0, 'FIRST', '2015/2016'),
(328, 'UG15CSC004', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'F', 0, 0, 'FIRST', '2015/2016'),
(329, 'UG15CSC004', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(330, 'UG15CSC004', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(331, 'UG15CSC004', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(332, 'UG15CSC004', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(333, 'UG15CSC004', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(334, 'UG15CSC004', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'ABSENT', 0, 0, 'FIRST', '2015/2016'),
(335, 'UG15CSC004', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'F', 0, 0, 'SECOND', '2015/2016'),
(336, 'UG15CSC004', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(337, 'UG15CSC004', 'CSC2206', 'COMPUTER HARDWARE', 2, 'D', 2, 4, 'SECOND', '2015/2016'),
(338, 'UG15CSC004', 'CSC2308', 'DATA MANAGEMENT I', 3, 'F', 0, 0, 'SECOND', '2015/2016'),
(339, 'UG15CSC004', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'F', 0, 0, 'SECOND', '2015/2016'),
(340, 'UG15CSC005', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'A', 5, 15, 'FIRST', '2015/2016'),
(341, 'UG15CSC005', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'A', 5, 10, 'FIRST', '2015/2016'),
(342, 'UG15CSC005', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'A', 5, 15, 'FIRST', '2015/2016'),
(343, 'UG15CSC005', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'A', 5, 15, 'FIRST', '2015/2016'),
(344, 'UG15CSC005', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'B', 4, 12, 'FIRST', '2015/2016'),
(345, 'UG15CSC005', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(346, 'UG15CSC005', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(347, 'UG15CSC005', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(348, 'UG15CSC005', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'B', 4, 12, 'SECOND', '2015/2016'),
(349, 'UG15CSC005', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'A', 5, 10, 'SECOND', '2015/2016'),
(350, 'UG15CSC005', 'CSC2206', 'COMPUTER HARDWARE', 2, 'A', 5, 10, 'SECOND', '2015/2016'),
(351, 'UG15CSC005', 'CSC2308', 'DATA MANAGEMENT I', 3, 'A', 5, 15, 'SECOND', '2015/2016'),
(352, 'UG15CSC005', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'B', 4, 8, 'SECOND', '2015/2016'),
(353, 'UG15CSC007', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(354, 'UG15CSC007', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'C', 3, 6, 'FIRST', '2015/2016'),
(355, 'UG15CSC007', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(356, 'UG15CSC007', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'A', 5, 15, 'FIRST', '2015/2016'),
(357, 'UG15CSC007', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'A', 5, 15, 'FIRST', '2015/2016'),
(358, 'UG15CSC007', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(359, 'UG15CSC007', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(360, 'UG15CSC007', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'ABSENT', 0, 0, 'FIRST', '2015/2016'),
(361, 'UG15CSC007', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'C', 3, 9, 'SECOND', '2015/2016'),
(362, 'UG15CSC007', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'F', 0, 0, 'SECOND', '2015/2016'),
(363, 'UG15CSC007', 'CSC2206', 'COMPUTER HARDWARE', 2, 'B', 4, 8, 'SECOND', '2015/2016'),
(364, 'UG15CSC007', 'CSC2308', 'DATA MANAGEMENT I', 3, 'C', 3, 9, 'SECOND', '2015/2016'),
(365, 'UG15CSC007', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(366, 'UG15CSC008', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'F', 0, 0, 'FIRST', '2015/2016'),
(367, 'UG15CSC008', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(368, 'UG15CSC008', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'F', 0, 0, 'FIRST', '2015/2016'),
(369, 'UG15CSC008', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(370, 'UG15CSC008', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(371, 'UG15CSC008', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'F', 0, 0, 'FIRST', '2015/2016'),
(372, 'UG15CSC008', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'F', 0, 0, 'FIRST', '2015/2016'),
(373, 'UG15CSC008', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'C', 3, 6, 'FIRST', '2015/2016'),
(374, 'UG15CSC008', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'C', 3, 9, 'SECOND', '2015/2016'),
(375, 'UG15CSC008', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'D', 2, 4, 'SECOND', '2015/2016'),
(376, 'UG15CSC008', 'CSC2206', 'COMPUTER HARDWARE', 2, 'F', 0, 0, 'SECOND', '2015/2016'),
(377, 'UG15CSC008', 'CSC2308', 'DATA MANAGEMENT I', 3, 'F', 0, 0, 'SECOND', '2015/2016'),
(378, 'UG15CSC008', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'D', 2, 4, 'SECOND', '2015/2016'),
(379, 'UG15CSC009', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(380, 'UG15CSC009', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(381, 'UG15CSC009', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(382, 'UG15CSC009', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(383, 'UG15CSC009', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(384, 'UG15CSC009', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(385, 'UG15CSC009', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'C', 3, 6, 'FIRST', '2015/2016'),
(386, 'UG15CSC009', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(387, 'UG15CSC009', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'D', 2, 6, 'SECOND', '2015/2016'),
(388, 'UG15CSC009', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'B', 4, 8, 'SECOND', '2015/2016'),
(389, 'UG15CSC009', 'CSC2206', 'COMPUTER HARDWARE', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(390, 'UG15CSC009', 'CSC2308', 'DATA MANAGEMENT I', 3, 'D', 2, 6, 'SECOND', '2015/2016'),
(391, 'UG15CSC009', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'A', 5, 10, 'SECOND', '2015/2016'),
(392, 'UG15CSC010', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(393, 'UG15CSC010', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(394, 'UG15CSC010', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(395, 'UG15CSC010', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(396, 'UG15CSC010', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(397, 'UG15CSC010', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'C', 3, 6, 'FIRST', '2015/2016'),
(398, 'UG15CSC010', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(399, 'UG15CSC010', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(400, 'UG15CSC010', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'D', 2, 6, 'SECOND', '2015/2016'),
(401, 'UG15CSC010', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(402, 'UG15CSC010', 'CSC2206', 'COMPUTER HARDWARE', 2, 'F', 0, 0, 'SECOND', '2015/2016'),
(403, 'UG15CSC010', 'CSC2308', 'DATA MANAGEMENT I', 3, 'F', 0, 0, 'SECOND', '2015/2016'),
(404, 'UG15CSC010', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'D', 2, 4, 'SECOND', '2015/2016'),
(405, 'UG15CSC013', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(406, 'UG15CSC013', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(407, 'UG15CSC013', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'F', 0, 0, 'FIRST', '2015/2016'),
(408, 'UG15CSC013', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(409, 'UG15CSC013', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(410, 'UG15CSC013', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'F', 0, 0, 'FIRST', '2015/2016'),
(411, 'UG15CSC013', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'F', 0, 0, 'FIRST', '2015/2016'),
(412, 'UG15CSC013', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'C', 3, 6, 'FIRST', '2015/2016'),
(413, 'UG15CSC013', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'F', 0, 0, 'SECOND', '2015/2016'),
(414, 'UG15CSC013', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(415, 'UG15CSC013', 'CSC2206', 'COMPUTER HARDWARE', 2, 'D', 2, 4, 'SECOND', '2015/2016'),
(416, 'UG15CSC013', 'CSC2308', 'DATA MANAGEMENT I', 3, 'F', 0, 0, 'SECOND', '2015/2016'),
(417, 'UG15CSC013', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'D', 2, 4, 'SECOND', '2015/2016'),
(418, 'UG16CSC032', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(419, 'UG16CSC032', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(420, 'UG16CSC032', 'STA1311', 'PROBABILITY I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(421, 'UG16CSC032', 'PHY1310', 'GENERAL PHYSICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(422, 'UG16CSC032', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'C', 3, 3, 'FIRST', '2016/2017'),
(423, 'UG16CSC032', 'GSP1201', 'USE OF ENGLISH I', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(424, 'UG16CSC032', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(425, 'UG16CSC032', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(426, 'UG16CSC032', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(427, 'UG16CSC032', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(428, 'UG16CSC032', 'PHY1320', 'GENERAL PHYSICS II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(429, 'UG16CSC032', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'B', 4, 4, 'SECOND', '2016/2017'),
(430, 'UG16CSC032', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(431, 'UG16CSC032', 'GSP1206', 'LIBRARY SKILLS', 2, 'F', 0, 0, 'SECOND', '2016/2017'),
(432, 'UG16CSC032', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(433, 'UG16CSC034', 'CSC1201', 'INTRODUCTION TO COMPUTER SCIENCE', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(434, 'UG16CSC034', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(435, 'UG16CSC034', 'STA1311', 'PROBABILITY I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(436, 'UG16CSC034', 'PHY1310', 'GENERAL PHYSICS I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(437, 'UG16CSC034', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'A', 5, 5, 'FIRST', '2016/2017'),
(438, 'UG16CSC034', 'GSP1201', 'USE OF ENGLISH I', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(439, 'UG16CSC034', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(440, 'UG16CSC034', 'CSC1302', 'INTRODUCTION TO PROBLEM SOLVING', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(441, 'UG16CSC034', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(442, 'UG16CSC034', 'MTH1302', 'ELEMENTARY MATHEMATICS II', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(443, 'UG16CSC034', 'PHY1320', 'GENERAL PHYSICS II', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(444, 'UG16CSC034', 'PHY1180', 'PRACTICAL PHYSICS II', 1, 'A', 5, 5, 'SECOND', '2016/2017'),
(445, 'UG16CSC034', 'MTH1303', 'ELEMENTARY MATHEMATICS III', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(446, 'UG16CSC034', 'GSP1206', 'LIBRARY SKILLS', 2, 'F', 0, 0, 'SECOND', '2016/2017'),
(447, 'UG16CSC034', 'GSP1202', 'FOUNDATION OF NIGERIAN CULTURE', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(448, 'UG12CSC059', 'STA1311', 'PROBABILITY I', 3, 'B', 4, 12, 'FIRST', '2016/2017'),
(449, 'UG12CSC059', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'D', 2, 2, 'FIRST', '2016/2017'),
(450, 'UG12CSC059', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(451, 'UG12CSC059', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(452, 'UG12CSC059', 'GSP4201', 'ENTREPRENEURSHIP EDUCATIONAL SKILLS', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(453, 'UG12CSC059', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(454, 'UG12CSC059', 'CSC2206', 'COMPUTER HARDWARE', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(455, 'UG12CSC059', 'CSC2308', 'DATA MANAGEMENT I', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(456, 'UG12CSC065', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(457, 'UG12CSC065', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(458, 'UG12CSC065', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'C', 3, 6, 'FIRST', '2016/2017'),
(459, 'UG12CSC065', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(460, 'UG12CSC065', 'CSC4316', 'PROJECT MANAGEMENT', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(461, 'UG12CSC065', 'CSC4302', 'DATA MANAGEMENT II', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(462, 'UG12CSC065', 'CSC4315', 'COMPUTER GRAPHICS AND VISUALIZATION', 3, 'ABSENT', 0, 0, 'SECOND', '2016/2017'),
(463, 'UG12CSC013', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(464, 'UG12CSC013', 'PHY1310', 'GENERAL PHYSICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(465, 'UG12CSC013', 'CSC3311', 'ALGORITHMS AND COMPLEXITY ANALYSIS', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(466, 'UG12CSC013', 'CSC4304', 'COMPUTER NETWORKS/COMMUNICATION', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(467, 'UG12CSC013', 'CSC3600', 'SIWES', 6, 'C', 3, 18, 'SECOND', '2016/2017'),
(468, 'UG12CSC013', 'CSC3303', 'OBJECT ORIENTED PROGRAMMING', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(469, 'UG12CSC013', 'CSC4316', 'PROJECT MANAGEMENT', 3, 'C', 3, 9, 'SECOND', '2016/2017'),
(470, 'UG12CSC013', 'CSC4308', 'COMPILER CONSTRUCTION', 3, 'ABSENT', 0, 0, 'SECOND', '2016/2017'),
(471, 'UG12CSC034', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(472, 'UG12CSC034', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(473, 'UG12CSC034', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(474, 'UG12CSC034', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(475, 'UG12CSC034', 'CSC3209', 'FORMAL METHODS AND SOFTWARE DEVELOPMENT', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(476, 'UG12CSC034', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'F', 0, 0, 'SECOND', '2016/2017'),
(477, 'UG13CSC019', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'C', 3, 9, 'FIRST', ''),
(478, 'UG13CSC019', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'B', 4, 12, 'FIRST', ''),
(479, 'UG13CSC019', 'CSC4401', 'SOFTWARE ENGINEERING', 4, 'D', 2, 8, 'FIRST', ''),
(480, 'UG13CSC019', 'CSC2308', 'DATA MANAGEMENT I', 3, 'D', 2, 6, 'SECOND', ''),
(481, 'UG13CSC019', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'B', 4, 12, 'SECOND', ''),
(482, 'UG13CSC067', 'PHY1310', 'GENERAL PHYSICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(483, 'UG13CSC067', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(484, 'UG13CSC067', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(485, 'UG13CSC067', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'D', 2, 6, 'SECOND', '2016/2017'),
(486, 'UG13CSC067', 'CSC2308', 'DATA MANAGEMENT I', 3, 'ABSENT', 0, 0, 'SECOND', '2016/2017'),
(487, 'UG13CSC067', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(488, 'UG15CSC039', 'CSC3209', 'FORMAL METHODS AND SOFTWARE DEVELOPMENT', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(489, 'UG15CSC039', 'CSC3305', 'COMPUTER ARCHITECTURE I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(490, 'UG15CSC039', 'CSC3413', 'SURVEY OF PROGRAMMING LANGUAGES', 4, 'F', 0, 0, 'FIRST', '2016/2017'),
(491, 'UG15CSC039', 'CSC3301', 'STRUCTURED PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(492, 'UG15CSC039', 'CSC3311', 'ALGORITHMS AND COMPLEXITY ANALYSIS', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(493, 'UG15CSC039', 'CSC3303', 'OBJECT ORIENTED PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(494, 'UG15CSC039', 'GSP3201', 'ENTREPRENUERSHIP EDUCATION', 2, 'C', 3, 6, 'FIRST', '2016/2017'),
(495, 'UG15CSC039', 'CSC3600', 'SIWES', 6, 'D', 2, 12, 'SECOND', '2016/2017'),
(496, 'UG15CSC045', 'CSC3209', 'FORMAL METHODS AND SOFTWARE DEVELOPMENT', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(497, 'UG15CSC045', 'STA1311', 'PROBABILITY I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(498, 'UG15CSC045', 'CSC3413', 'SURVEY OF PROGRAMMING LANGUAGES', 4, 'F', 0, 0, 'FIRST', '2016/2017'),
(499, 'UG15CSC045', 'CSC3311', 'ALGORITHMS AND COMPLEXITY ANALYSIS', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(500, 'UG15CSC045', 'CSC3301', 'STRUCTURED PROGRAMMING', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(501, 'UG15CSC045', 'CSC3600', 'SIWES', 6, 'D', 2, 12, 'SECOND', '2016/2017'),
(502, 'UG14CSC037', 'PHY1170', 'PRACTICAL PHYSICS I', 1, 'D', 2, 2, 'FIRST', '2016/2017'),
(503, 'UG14CSC037', 'ICT1303', 'FOUNDATION OF WEB PROGRAMMING', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(504, 'UG14CSC037', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(505, 'UG14CSC037', 'CSC3413', 'SURVEY OF PROGRAMMING LANGUAGES', 4, 'F', 0, 0, 'FIRST', '2016/2017'),
(506, 'UG14CSC037', 'CSC3311', 'ALGORITHMS AND COMPLEXITY ANALYSIS', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(507, 'UG14CSC037', 'CSC3303', 'OBJECT ORIENTED PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(508, 'UG14CSC037', 'CSC3301', 'STRUCTURED PROGRAMMING', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(509, 'UG14CSC037', 'GSP3201', 'ENTREPRENUERSHIP EDUCATION', 2, 'C', 3, 6, 'FIRST', '2016/2017'),
(510, 'UG14CSC037', 'CSC3600', 'SIWES', 6, 'C', 3, 18, 'SECOND', '2016/2017'),
(511, 'UG13CSC038', 'CSC3209', 'FORMAL METHODS AND SOFTWARE DEVELOPMENT', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(512, 'UG13CSC038', 'CSC3305', 'COMPUTER ARCHITECTURE I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(513, 'UG13CSC038', 'CSC3413', 'SURVEY OF PROGRAMMING LANGUAGES', 4, 'F', 0, 0, 'FIRST', '2016/2017'),
(514, 'UG13CSC038', 'CSC3301', 'STRUCTURED PROGRAMMING', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(515, 'UG13CSC038', 'CSC3303', 'OBJECT ORIENTED PROGRAMMING', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(516, 'UG13CSC038', 'GSP3201', 'ENTREPRENUERSHIP EDUCATION', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(517, 'UG13CSC038', 'CSC3209', 'FORMAL METHODS AND SOFTWARE DEVELOPMENT', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(518, 'UG13CSC038', 'CSC3600', 'SIWES', 6, 'B', 4, 24, 'SECOND', '2016/2017'),
(519, 'UG13CSC047', 'MTH1301', 'ELEMENTARY MATHEMATICS I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(520, 'UG13CSC047', 'STA1311', 'PROBABILITY I', 3, 'F', 0, 0, 'FIRST', '2016/2017'),
(521, 'UG13CSC047', 'CSC1211', 'INTRODUCTION TO ICT', 2, 'F', 0, 0, 'FIRST', '2016/2017'),
(522, 'UG13CSC047', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(523, 'UG13CSC047', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'D', 2, 6, 'FIRST', '2016/2017'),
(524, 'UG13CSC047', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(525, 'UG13CSC047', 'CSC2308', 'DATA MANAGEMENT I', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(526, 'UG13CSC047', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(527, 'UG13CSC047', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'F', 0, 0, 'SECOND', '2016/2017'),
(528, 'UG13CSC047', 'CSC2206', 'COMPUTER HARDWARE', 2, 'D', 2, 4, 'SECOND', '2016/2017'),
(529, 'UG15CSC014', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'B', 4, 12, 'FIRST', '2015/2016'),
(530, 'UG15CSC014', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'A', 5, 10, 'FIRST', '2015/2016'),
(531, 'UG15CSC014', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(532, 'UG15CSC014', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'D', 2, 6, 'FIRST', '2015/2016');
INSERT INTO `student_result` (`SResult_id`, `RegNo`, `Code`, `Title`, `CreditUnit`, `Grade`, `GP`, `PE`, `Semester`, `Session`) VALUES
(533, 'UG15CSC014', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'A', 5, 15, 'FIRST', '2015/2016'),
(534, 'UG15CSC014', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'F', 0, 0, 'FIRST', '2015/2016'),
(535, 'UG15CSC014', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'C', 3, 6, 'FIRST', '2015/2016'),
(536, 'UG15CSC014', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(537, 'UG15CSC014', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'B', 4, 12, 'SECOND', '2015/2016'),
(538, 'UG15CSC014', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(539, 'UG15CSC014', 'CSC2206', 'COMPUTER HARDWARE', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(540, 'UG15CSC014', 'CSC2308', 'DATA MANAGEMENT I', 3, 'A', 5, 15, 'SECOND', '2015/2016'),
(541, 'UG15CSC014', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'A', 5, 10, 'SECOND', '2015/2016'),
(542, 'UG15CSC015', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'F', 0, 0, 'FIRST', '2015/2016'),
(543, 'UG15CSC015', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(544, 'UG15CSC015', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(545, 'UG15CSC015', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'F', 0, 0, 'FIRST', '2015/2016'),
(546, 'UG15CSC015', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(547, 'UG15CSC015', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(548, 'UG15CSC015', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'F', 0, 0, 'FIRST', '2015/2016'),
(549, 'UG15CSC015', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'C', 3, 6, 'FIRST', '2015/2016'),
(550, 'UG15CSC015', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'F', 0, 0, 'SECOND', '2015/2016'),
(551, 'UG15CSC015', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(552, 'UG15CSC015', 'CSC2206', 'COMPUTER HARDWARE', 2, 'D', 2, 4, 'SECOND', '2015/2016'),
(553, 'UG15CSC015', 'CSC2308', 'DATA MANAGEMENT I', 3, 'F', 0, 0, 'SECOND', '2015/2016'),
(554, 'UG15CSC015', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'A', 5, 10, 'SECOND', '2015/2016'),
(555, 'UG15CSC017', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(556, 'UG15CSC017', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(557, 'UG15CSC017', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(558, 'UG15CSC017', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'F', 0, 0, 'FIRST', '2015/2016'),
(559, 'UG15CSC017', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(560, 'UG15CSC017', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'C', 3, 6, 'FIRST', '2015/2016'),
(561, 'UG15CSC017', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(562, 'UG15CSC017', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(563, 'UG15CSC017', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'D', 2, 6, 'SECOND', '2015/2016'),
(564, 'UG15CSC017', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(565, 'UG15CSC017', 'CSC2206', 'COMPUTER HARDWARE', 2, 'D', 2, 4, 'SECOND', '2015/2016'),
(566, 'UG15CSC017', 'CSC2308', 'DATA MANAGEMENT I', 3, 'C', 3, 9, 'SECOND', '2015/2016'),
(567, 'UG15CSC017', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'F', 0, 0, 'SECOND', '2015/2016'),
(568, 'UG15CSC019', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(569, 'UG15CSC019', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(570, 'UG15CSC019', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(571, 'UG15CSC019', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'C', 3, 9, 'FIRST', '2016/2017'),
(572, 'UG15CSC019', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'A', 5, 15, 'FIRST', '2016/2017'),
(573, 'UG15CSC019', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'B', 4, 8, 'FIRST', '2016/2017'),
(574, 'UG15CSC019', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'A', 5, 10, 'FIRST', '2016/2017'),
(575, 'UG15CSC019', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'D', 2, 4, 'FIRST', '2016/2017'),
(576, 'UG15CSC019', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'A', 5, 15, 'SECOND', '2016/2017'),
(577, 'UG15CSC019', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'A', 5, 10, 'SECOND', '2016/2017'),
(578, 'UG15CSC019', 'CSC2206', 'COMPUTER HARDWARE', 2, 'B', 4, 8, 'SECOND', '2016/2017'),
(579, 'UG15CSC019', 'CSC2308', 'DATA MANAGEMENT I', 3, 'B', 4, 12, 'SECOND', '2016/2017'),
(580, 'UG15CSC019', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'C', 3, 6, 'SECOND', '2016/2017'),
(594, 'UG15CSC019', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'A', 5, 15, 'FIRST', '2015/2016'),
(595, 'UG15CSC019', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(596, 'UG15CSC019', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(597, 'UG15CSC019', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(598, 'UG15CSC019', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'A', 5, 15, 'FIRST', '2015/2016'),
(599, 'UG15CSC019', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(600, 'UG15CSC019', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'A', 5, 10, 'FIRST', '2015/2016'),
(601, 'UG15CSC019', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(602, 'UG15CSC019', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'A', 5, 15, 'SECOND', '2015/2016'),
(603, 'UG15CSC019', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'A', 5, 10, 'SECOND', '2015/2016'),
(604, 'UG15CSC019', 'CSC2206', 'COMPUTER HARDWARE', 2, 'B', 4, 8, 'SECOND', '2015/2016'),
(605, 'UG15CSC019', 'CSC2308', 'DATA MANAGEMENT I', 3, 'B', 4, 12, 'SECOND', '2015/2016'),
(606, 'UG15CSC019', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'C', 3, 6, 'SECOND', '2015/2016'),
(607, 'UG15CSC023', 'CSC2301', 'COMPUTER PROGRAMMING I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(608, 'UG15CSC023', 'CSC2203', 'DISCRETE STRUCTURES', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(609, 'UG15CSC023', 'CSC2305', 'OPERATING SYSTEMS I', 3, 'C', 3, 9, 'FIRST', '2015/2016'),
(610, 'UG15CSC023', 'CSC2307', 'FUNDAMENTALS OF DATA STRUCTURES', 3, 'D', 2, 6, 'FIRST', '2015/2016'),
(611, 'UG15CSC023', 'CSC2311', 'SYSTEMS ANALYSIS & DESIGN', 3, 'B', 4, 12, 'FIRST', '2015/2016'),
(612, 'UG15CSC023', 'CSC2209', 'COMPUTATIONAL SCIENCE & NUMERICAL METHODS', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(613, 'UG15CSC023', 'GSP2207', 'PEACE AND CONFLICT RESOLUTION', 2, 'D', 2, 4, 'FIRST', '2015/2016'),
(614, 'UG15CSC023', 'MTH2201', 'LINEAR ALGEBRA I', 2, 'B', 4, 8, 'FIRST', '2015/2016'),
(615, 'UG15CSC023', 'CSC2302', 'COMPUTER PROGRAMMING II', 3, 'B', 4, 12, 'SECOND', '2015/2016'),
(616, 'UG15CSC023', 'CSC2204', 'FOUNDATION OF SEQUENTIAL PROGRAM', 2, 'B', 4, 8, 'SECOND', '2015/2016'),
(617, 'UG15CSC023', 'CSC2206', 'COMPUTER HARDWARE', 2, 'D', 2, 4, 'SECOND', '2015/2016'),
(618, 'UG15CSC023', 'CSC2308', 'DATA MANAGEMENT I', 3, 'D', 2, 6, 'SECOND', '2015/2016'),
(619, 'UG15CSC023', 'GSP2208', 'NIGERIAN GOVERNMENT & ECONOMY', 2, 'F', 0, 0, 'SECOND', '2015/2016');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cgpa`
--

CREATE TABLE `tbl_cgpa` (
  `CGPA_ID` int(11) NOT NULL,
  `RegNo` text NOT NULL,
  `CGPA` double NOT NULL,
  `Programme` text NOT NULL,
  `level` text NOT NULL,
  `Session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cgpa`
--

INSERT INTO `tbl_cgpa` (`CGPA_ID`, `RegNo`, `CGPA`, `Programme`, `level`, `Session`) VALUES
(1, 'UG16CSC002', 1.92, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(2, 'UG16CSC003', 1.67, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(3, 'UG16CSC005', 1.33, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(4, 'UG16CSC006', 3.28, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(5, 'UG16CSC007', 3.56, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(6, 'UG16CSC008', 2.64, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(7, 'UG16CSC009', 1.64, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(8, 'UG16CSC010', 3.42, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(9, 'UG16CSC011', 2.22, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(10, 'UG16CSC013', 1.11, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(11, 'UG16CSC015', 3.89, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(12, 'UG16CSC016', 4.78, 'B.SC. COMPUTER SCIENCE', '100', '2016/2017'),
(13, 'UG16CSC017', 4, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(14, 'UG16CSC018', 3.69, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(15, 'UG16CSC019', 4.39, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(16, 'UG16CSC020', 4.33, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(17, 'UG16CSC023', 3, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(18, 'UG16CSC026', 4.58, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(19, 'UG16CSC028', 2.06, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(20, 'UG16CSC030', 2.42, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(21, 'UG15CSC001', 3.63, 'B.SC. COMPUTER SCIENCE', '200', '2015/2016'),
(22, 'UG15CSC003', 2.38, 'B.SC. COMPUTER SCIENCE', '200', '2015/2016'),
(23, 'UG15CSC004', 1.13, 'B.SC. COMPUTER SCIENCE', '200', '2015/2016'),
(24, 'UG15CSC005', 4.56, 'B.SC. COMPUTER SCIENCE', '200', '2015/2016'),
(25, 'UG15CSC007', 2.94, 'B.SC. COMPUTER SCIENCE', '200', '2015/2016'),
(26, 'UG15CSC008', 1.22, 'B.SC. COMPUTER SCIENCE', '200', '2015/2016'),
(27, 'UG15CSC009', 2.81, 'B.SC. COMPUTER SCIENCE', '200', '2015/2016'),
(28, 'UG15CSC010', 1.91, 'B.SC. COMPUTER SCIENCE', '200', '2015/2016'),
(29, 'UG15CSC013', 1.41, 'B.SC. COMPUTER SCIENCE', '200', '2015/2016'),
(30, 'UG16CSC032', 1.28, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(31, 'UG16CSC034', 2.17, 'B.Sc. COMPUTER SCIENCE', '100', '2016/2017'),
(32, 'UG12CSC059', 2.72, 'B.Sc. COMPUTER SCIENCE', 'S01', '2016/2017'),
(33, 'UG12CSC065', 1.89, 'B.Sc. COMPUTER SCIENCE', 'S01', '2016/2017'),
(34, 'UG12CSC013', 2.33, 'B.Sc. COMPUTER SCIENCE', 'S02', '2016/2017'),
(35, 'UG12CSC034', 2.93, 'B.Sc. COMPUTER SCIENCE', 'S02', '2016/2017'),
(36, 'UG13CSC019', 2.94, 'B.Sc. COMPUTER SCIENCE', 'S01', '2016/2017'),
(37, 'UG13CSC067', 2.06, 'B.Sc. COMPUTER SCIENCE', 'S02', '2016/2017'),
(38, 'UG15CSC039', 1.35, 'B.Sc. COMPUTER SCIENCE', '300', '2016/2017'),
(39, 'UG15CSC045', 1.33, 'B.Sc. COMPUTER SCIENCE', '300', '2016/2017'),
(40, 'UG14CSC037', 1.46, 'B.Sc. COMPUTER SCIENCE', '300', '2016/2017'),
(41, 'UG13CSC038', 2, 'B.Sc. COMPUTER SCIENCE', 'S01', '2016/2017'),
(42, 'UG13CSC047', 1.15, 'B.Sc. COMPUTER SCIENCE', '300', '2016/2017'),
(43, 'UG15CSC014', 3.59, 'B.Sc. COMPUTER SCIENCE', '200', '2015/2016'),
(44, 'UG15CSC015', 1.53, 'B.Sc. COMPUTER SCIENCE', '200', '2015/2016'),
(45, 'UG15CSC017', 2.09, 'B.Sc. COMPUTER SCIENCE', '200', '2015/2016'),
(46, 'UG15CSC019', 4.03, 'B.Sc. COMPUTER SCIENCE', '200', '2015/2016'),
(47, 'UG15CSC023', 2.81, 'B.Sc. COMPUTER SCIENCE', '200', '2015/2016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `level1first`
--
ALTER TABLE `level1first`
  ADD PRIMARY KEY (`Level1_id`);

--
-- Indexes for table `level1second`
--
ALTER TABLE `level1second`
  ADD PRIMARY KEY (`Level1_id`);

--
-- Indexes for table `level2first`
--
ALTER TABLE `level2first`
  ADD PRIMARY KEY (`Level2_id`);

--
-- Indexes for table `level2second`
--
ALTER TABLE `level2second`
  ADD PRIMARY KEY (`Level2_id`);

--
-- Indexes for table `level3first`
--
ALTER TABLE `level3first`
  ADD PRIMARY KEY (`Level3_id`);

--
-- Indexes for table `level3second`
--
ALTER TABLE `level3second`
  ADD PRIMARY KEY (`Level3_id`);

--
-- Indexes for table `level4first`
--
ALTER TABLE `level4first`
  ADD PRIMARY KEY (`Level4_id`);

--
-- Indexes for table `level4second`
--
ALTER TABLE `level4second`
  ADD PRIMARY KEY (`Level4_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_ID`);

--
-- Indexes for table `result_details`
--
ALTER TABLE `result_details`
  ADD PRIMARY KEY (`Result_id`);

--
-- Indexes for table `spillover2student`
--
ALTER TABLE `spillover2student`
  ADD PRIMARY KEY (`SpillOver2_id`);

--
-- Indexes for table `spilloverstudent`
--
ALTER TABLE `spilloverstudent`
  ADD PRIMARY KEY (`SpillOver_id`);

--
-- Indexes for table `staff_info`
--
ALTER TABLE `staff_info`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`Marks_id`);

--
-- Indexes for table `student_result`
--
ALTER TABLE `student_result`
  ADD PRIMARY KEY (`SResult_id`);

--
-- Indexes for table `tbl_cgpa`
--
ALTER TABLE `tbl_cgpa`
  ADD PRIMARY KEY (`CGPA_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `level1first`
--
ALTER TABLE `level1first`
  MODIFY `Level1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `level1second`
--
ALTER TABLE `level1second`
  MODIFY `Level1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `level2first`
--
ALTER TABLE `level2first`
  MODIFY `Level2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `level2second`
--
ALTER TABLE `level2second`
  MODIFY `Level2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `level3first`
--
ALTER TABLE `level3first`
  MODIFY `Level3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `level3second`
--
ALTER TABLE `level3second`
  MODIFY `Level3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `level4first`
--
ALTER TABLE `level4first`
  MODIFY `Level4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `level4second`
--
ALTER TABLE `level4second`
  MODIFY `Level4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `result_details`
--
ALTER TABLE `result_details`
  MODIFY `Result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `spillover2student`
--
ALTER TABLE `spillover2student`
  MODIFY `SpillOver2_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spilloverstudent`
--
ALTER TABLE `spilloverstudent`
  MODIFY `SpillOver_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff_info`
--
ALTER TABLE `staff_info`
  MODIFY `Staff_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `Marks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;
--
-- AUTO_INCREMENT for table `student_result`
--
ALTER TABLE `student_result`
  MODIFY `SResult_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=620;
--
-- AUTO_INCREMENT for table `tbl_cgpa`
--
ALTER TABLE `tbl_cgpa`
  MODIFY `CGPA_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
