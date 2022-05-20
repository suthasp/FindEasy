-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2020 at 03:52 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `touchcom_6touch`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_equip`
--

CREATE TABLE `tbl_equip` (
  `site` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `equipment` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `network_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clli` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `row_` varchar(10) NOT NULL,
  `rack` varchar(30) NOT NULL,
  `supervisor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_a` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_b` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ข้อมูลที่ตั้ง';

--
-- Dumping data for table `tbl_equip`
--

INSERT INTO `tbl_equip` (`site`, `equipment`, `network_name`, `clli`, `vendor`, `row_`, `rack`, `supervisor`, `tel`, `source_a`, `source_b`) VALUES
('CN-PBI', 'BFKT-HLR-PBI', 'BFKT-HLR', 'BFHHLRPBIBE2', 'Huawei', '13', '3,4,5,14,15', 'Nol', '0865001945', '', ''),
('CN-PBI', 'BFKT-STP-PBI', 'BFKT-STP', 'BFHSTPPBI', 'Huawei', '13', '2', 'Nol', '0865001945', '', ''),
('CN-PBI', 'RNC-BKB8302U', 'RNC-BKB8302U', 'BKB8302U', 'Huawei', '7', '14,15', 'Nattapong', '0863010075', '', ''),
('CN-PBI', 'RNC BKB8303U', 'RNC BKB8303U', 'BKB8303U', 'Huawei', '3', '9,10', 'Nattapong', '0863010075', '', ''),
('CN-PBI', 'RNC BKB8304U', 'RNC BKB8304U', 'BKB8304U', 'Huawei', '6', '12,13', 'Nattapong', '0863010075', 'Rectifier C ,PDC 8', 'Rectifier D ,PDC 9'),
('CN-PBI', 'Cisco-SWC4507R', 'Cisco-SWC4507R', 'HAMMBKAD04W', 'CISCO', '18', '16', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'ALU 7750-SR12', 'TUC3-PBI', 'HAMMBKAD05M', 'Nokia', '3', '30', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'Cisco-SWC4507R', 'Cisco-SWC4507R', 'HAMMBKAD05W', 'CISCO', '18', '17', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'ALU 7750-SR12', 'TUC4-PBI', 'HAMMBKAD06M', 'Nokia', '3', '30', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'ALU 7750-SR12', 'BF1-PBI', 'HAMMBKAD07M', 'Nokia', '5', '16', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'ALU 7750-SR7', 'BF2-PBI', 'HAMMBKAD08M', 'Nokia', '5', '16', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'ALU 7750-SR12', 'BF3-PBI', 'HAMMBKAD09M', 'Nokia', '7', '2', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'ALU 7750-SR12', 'BF4-PBI', 'HAMMBKAD10M', 'Nokia', '7', '2', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'ALU 7750-SR7', 'BF5-PBI', 'HAMMBKAD13M', 'Nokia', '9', '18', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'ALU 7750-SR7', 'BF6-PBI', 'HAMMBKAD14M', 'Nokia', '9', '18', 'Suthas', '0865159836', '', ''),
('CN-PBI', 'OSN3500', 'ID1357', 'ID1357', 'Huawei', '15', '38', 'Suthas', '0865159836', 'Rectifier F ,PDC11 F', 'Rectifier F ,PDC12 Q'),
('CN-PBI', 'OSN3500', 'ID1510', 'ID1510', 'Huawei', '16', '38', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID1705_0', 'ID1705_0', 'Huawei', '19', '37B', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID1705_1', 'ID1705_1', 'Huawei', '19', '39A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID1705_2', 'ID1705_2', 'Huawei', '19', '40A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID1705_3', 'ID1705_3', 'Huawei', '20', '39B', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID1706_0', 'ID1706_0', 'Huawei', '19', '37A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID1706_1', 'ID1706_1', 'Huawei', '20', '37B', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID1706_2', 'ID1706_2', 'Huawei', '19', '38A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID1706_3', 'ID1706_3', 'Huawei', '19', '38A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID1706_4', 'ID1706_4', 'Huawei', '20', '38B', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'BWS1600G', 'ID197', 'ID197', 'Huawei', '16', '30', 'Suthas', '0865159836', 'Rectifier A ,PDC 2/4', 'No Label'),
('CN-PBI', 'OSN8800', 'ID2032_0', 'ID2032_0', 'Huawei', '20', '38B', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID2165_0', 'ID2165_0A', 'Huawei', '17', '17A ', 'Suthas', '0865159836', 'Rectifier A ,PDC2 Q1', 'Rectifier B ,PDC2 Q3'),
('CN-PBI', 'OSN8800', 'ID2165_0', 'ID2165_0B', 'Huawei', '17', '17B', 'Suthas', '0865159836', 'Rectifier A ,PDC3/1 ', 'Rectifier B ,PDC3/1 '),
('CN-PBI', 'OSN6800', 'ID2165_1', 'ID2165_1', 'Huawei', '17', '17A ', 'Suthas', '0865159836', 'Rectifier A ,PDC2 Q1', 'Rectifier B ,PDC2 Q3'),
('CN-PBI', 'OSN6800', 'ID2165_2', 'ID2165_2', 'Huawei', '20', '36B', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN6800', 'ID2165_3', 'ID2165_3', 'Huawei', '20', '36B', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN6800', 'ID2165_4', 'ID2165_4', 'Huawei', '20', '36B', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN6800', 'ID2165_5', 'ID2165_5', 'Huawei', '19', '39A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN6800', 'ID2165_6', 'ID2165_6', 'Huawei', '19', '39A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN8800', 'ID2303_0', 'ID2303_0', 'Huawei', '17', '17B', 'Suthas', '0865159836', 'Rectifier A ,PDC3/1 ', 'Rectifier B ,PDC3/1 '),
('CN-PBI', 'OSN9800', 'ID2700_0', 'ID2700_0', 'Huawei', '19', '40A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN9800', 'ID2700_1', 'ID2700_1', 'Huawei', '19', '40A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN9800', 'ID2700_2', 'ID2700_2', 'Huawei', '20', '40B', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN9800', 'ID2701', 'ID2701', 'Huawei', '19', '34A ', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN9800', 'ID2791', 'ID2791', 'Huawei', '19', '41A', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN9800 U32', 'ID3138', 'ID3138', 'Huawei', '14', '20', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN3500 ', 'ID360', 'ID360', 'Huawei', '15', '32', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'BWS1600G', 'ID363', 'ID363', 'Huawei', '16', '32', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'BWS1600G', 'ID364', 'ID364', 'Huawei', '16', '32', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN3500 ', 'ID365', 'ID365', 'Huawei', '15', '32', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'BWS1600G', 'ID560', 'ID560', 'Huawei', '16', '32', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN3500', 'ID570', 'ID570', 'Huawei', '16', '31', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN3500 ', 'ID571LO#02', 'ID571_2', 'Huawei', '15', '31', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'OSN3500 ', 'ID571LO#03', 'ID571_3', 'Huawei', '15', '31', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'PTN1900', 'ID58', 'ID58', 'Huawei', '18', '28', 'Suthas', '0865159836', 'No Label', 'No Label'),
('CN-PBI', 'BWS1600G', 'ID656', 'ID656', 'Huawei', '16', '30', 'Suthas', '0865159836', 'Rectifier A ,PDC 2/4', 'No Label'),
('CN-PBI', 'BWS1600G', 'ID657', 'ID657', 'Huawei', '16', '30', 'Suthas', '0865159836', 'Rectifier A ,PDC 2/4', 'No Label'),
('CN-PBI', 'OSN3500 ', 'ID697', 'ID697', 'Huawei', '15', '30', 'Suthas', '0865159836', 'No Label', 'No Label');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_equip`
--
ALTER TABLE `tbl_equip`
  ADD PRIMARY KEY (`clli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
