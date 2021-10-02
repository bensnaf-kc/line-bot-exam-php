-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 05:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini`
--
CREATE DATABASE IF NOT EXISTS `mini` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mini`;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id_car` int(11) NOT NULL,
  `id_fix` int(11) NOT NULL,
  `c_number` varchar(30) NOT NULL,
  `c_series` varchar(80) NOT NULL,
  `c_gen` varchar(80) NOT NULL,
  `c_color` varchar(30) NOT NULL,
  `c_log` varchar(80) NOT NULL,
  `c_pic` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `type_idfix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id_car`, `id_fix`, `c_number`, `c_series`, `c_gen`, `c_color`, `c_log`, `c_pic`, `type_idfix`) VALUES
(17, 57, 'กต2500', 'Toyota', 'vigo', 'สีบรอนซ์เงิน', 'ขอนแก่น', '1208613637vigo.jpg', 5),
(18, 57, 'กต5555', 'Honda', 'Camry', 'สีแดง', 'กาญจนบุรี', '1640339123vigo.jpg', 5),
(19, 58, 'กต2500', 'Toyota', 'vigo', 'สีเทา', 'กระบี่', '603053371vigo.jpg', 3),
(20, 59, 'กต2500', 'Toyota', 'vigo', 'สีดำ', 'กรุงเทพมหานคร', '75746551vigo.jpg', 5),
(21, 60, '2กย4454', 'Honda', 'Camry', 'สีบรอนซ์เงิน', 'กาญจนบุรี', '1184227130Toyota-exterior.jpeg', 1),
(22, 60, '2กย5505', 'Toyota', 'Vigo', 'สีขาว', 'กรุงเทพมหานคร', '935395996vigo.jpeg', 1),
(24, 62, 'ยด1221', 'BMW', 'SER3', 'สีดำ', 'กรุงเทพมหานคร', '', 1),
(25, 63, 'รวย1234', 'Honda', 'City', 'สีดำ', 'กรุงเทพมหานคร', 'honda city.jpg', 1),
(26, 64, 'รวย4123', 'Honda', 'City', 'สีดำ', 'กรุงเทพมหานคร', 'honda city.jpg', 1),
(37, 61, 'รวย4123', 'Honda', 'Camry', 'สีแดง', 'กรุงเทพมหานคร', 'honda city.jpg', 1),
(38, 61, 'รวย4123', 'Honda', 'Camry', 'สีแดง', 'กรุงเทพมหานคร', 'honda city.jpg', 1),
(39, 61, 'รวย1234', 'Honda', 'City', 'สีแดง', 'กรุงเทพมหานคร', 'honda city.jpg', 1),
(40, 66, 'รวย132', 'Honda', 'City', 'สีดำ', 'กรุงเทพมหานคร', 'honda city.jpg', 1),
(41, 67, 'รวย4123', 'Honda', 'City', 'สีดำ', 'กรุงเทพมหานคร', '1301462997honda city.jpg', 3),
(42, 68, 'รวย4123', 'Honda', 'City', 'สีดำ', 'กรุงเทพมหานคร', '1526099123honda city.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carparts`
--

DROP TABLE IF EXISTS `carparts`;
CREATE TABLE `carparts` (
  `cp_id` int(11) NOT NULL,
  `cp_name` varchar(80) NOT NULL,
  `cp_amount` int(100) NOT NULL,
  `cp_price` int(100) NOT NULL,
  `type_cp` int(11) NOT NULL,
  `cp_datecom` varchar(30) NOT NULL,
  `cp_dateout` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carparts`
--

INSERT INTO `carparts` (`cp_id`, `cp_name`, `cp_amount`, `cp_price`, `type_cp`, `cp_datecom`, `cp_dateout`) VALUES
(1, 'น้ำมันเครื่อง PPT', 2, 250, 5, '', ''),
(2, 'สายพาน Vigo', 2, 150, 1, '', ''),
(3, 'ลูกหมากล่าง FX-110', 4, 120, 2, '', ''),
(4, 'ยาง ขอบ 15 ปี 2005', 2, 1000, 3, '', ''),
(5, 'กระจังหน้า Vigo', 1, 2500, 4, '', ''),
(6, 'น้ำมันเครื่อง AAS', 2, 250, 5, '2021-07-29 18:20:54', ' '),
(7, 'สายพานเครื่อง BENZ 3000', 2, 1500, 1, '2021-07-29 18:24:54', ' '),
(8, 'น้ำมันเบรค 90', 3, 100, 5, '2021-07-29 18:26:44', ' '),
(9, 'น้พเป', 1, 100, 2, '2021-07-29 18:32:18', ' '),
(10, 'กด', 1, 1, 1, '2021-07-29 18:34:19', ' '),
(11, 'น้ำมันเครื่อง SHELL', 3, 260, 5, '2021-08-08 02:44:45', ' '),
(12, 'น้ำมันเครื่อง PPT 1500', -14, 300, 5, '2021-08-08 02:46:01', '2021-08-08 14:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `com`
--

DROP TABLE IF EXISTS `com`;
CREATE TABLE `com` (
  `com_id` int(11) NOT NULL,
  `com_name` varchar(80) NOT NULL,
  `com_number` varchar(80) NOT NULL,
  `type_com` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com`
--

INSERT INTO `com` (`com_id`, `com_name`, `com_number`, `type_com`) VALUES
(2, 'ธนาคารกรุงเทพ', '15125150152', 1);

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

DROP TABLE IF EXISTS `count`;
CREATE TABLE `count` (
  `id_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fixcar`
--

DROP TABLE IF EXISTS `fixcar`;
CREATE TABLE `fixcar` (
  `id_fix` int(10) NOT NULL,
  `f_name` varchar(80) NOT NULL,
  `f_address` varchar(255) NOT NULL,
  `f_tel` varchar(13) NOT NULL,
  `f_line` varchar(25) NOT NULL,
  `f_email` varchar(50) NOT NULL,
  `f_datecom` timestamp NOT NULL DEFAULT current_timestamp(),
  `f_dateout` varchar(80) NOT NULL,
  `type_idfix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fixcar`
--

INSERT INTO `fixcar` (`id_fix`, `f_name`, `f_address`, `f_tel`, `f_line`, `f_email`, `f_datecom`, `f_dateout`, `type_idfix`) VALUES
(58, '123', '65/45 หมู่ 5 ตำบลบางรักใหญ่ อำเภอเมือง จังหวัดนนบุรี', '089-646-07', 'mot12', 'bensnaf.kc@gmail.com', '2021-06-29 21:33:41', '2021-06-30', 3),
(59, 'นายภูชิต เกิดเทียนชัย', '65/45 หมู่ 5 ตำบลบางรักใหญ่ อำเภอเมือง จังหวัดนนบุรี', '064-281-90', 'mot12', 'bensnaf.kc@gmail.com', '2021-06-30 04:10:38', '2021-07-02', 5),
(60, 'นายศาศวัต จันทวงษ์', '23/2 ตำบลบางใหญ่ อำเภอเมืองฯ จังหวัดนนทบุรี', '099-999-9999', 'ss13311', 'ben_teen1@hotmail.com', '2021-08-05 10:23:56', '2021-08-09', 2),
(67, 'นายA', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '065-123-5455', 'ssdd132', 'bensnaf.kc@gmail.com', '2021-09-15 04:56:12', '', 1),
(68, 'นายA', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '065-123-5455', 'ssdd132', 'bensnaf.kc@gmail.com', '2021-09-15 07:35:31', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fixed`
--

DROP TABLE IF EXISTS `fixed`;
CREATE TABLE `fixed` (
  `f_id` int(11) NOT NULL,
  `id_car` int(11) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `f_dateout` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fixed`
--

INSERT INTO `fixed` (`f_id`, `id_car`, `emp_name`, `f_dateout`) VALUES
(1, 41, 'B', '2021-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `infocar`
--

DROP TABLE IF EXISTS `infocar`;
CREATE TABLE `infocar` (
  `info_id` int(11) NOT NULL,
  `id_car` int(11) NOT NULL,
  `info_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infocar`
--

INSERT INTO `infocar` (`info_id`, `id_car`, `info_name`) VALUES
(1, 23, 'asd'),
(2, 23, 'dddddddd'),
(5, 27, 'เครื่องยนต์มีปัญหา'),
(6, 27, 'ล้อหน้าซ้ายมีเสียงผิดปกติ'),
(7, 37, 'เครื่องยนต์มีปัญหา'),
(8, 37, 'ล้อหน้าซ้ายมีเสียงผิดปกติ'),
(9, 40, 'เครื่องยนต์มีปัญหา'),
(10, 40, 'ล้อหน้าซ้ายมีเสียงผิดปกติ'),
(11, 40, 'ไฟหน้าปัดค้าง'),
(12, 40, 'ที่เปิดประตูเสียหลังซ้าย'),
(13, 40, 'ไฟหน้าขวาไม่ติด'),
(14, 40, 'สายพานมีรายใกล้ขาด'),
(15, 41, 'เครื่องยนต์มีปัญหา'),
(16, 41, 'ล้อหน้าซ้ายมีเสียงผิดปกติ'),
(17, 41, 'ไฟหน้าปัดค้าง'),
(18, 41, 'dddddddd'),
(19, 42, 'เครื่องยนต์มีปัญหา'),
(20, 42, 'ล้อหน้าซ้ายมีเสียงผิดปกติ');

-- --------------------------------------------------------

--
-- Table structure for table `info_insurance`
--

DROP TABLE IF EXISTS `info_insurance`;
CREATE TABLE `info_insurance` (
  `infois_id` int(11) NOT NULL,
  `id_car` int(11) NOT NULL,
  `infois_name` varchar(80) NOT NULL,
  `infois_amount` int(11) NOT NULL,
  `infois_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_insurance`
--

INSERT INTO `info_insurance` (`infois_id`, `id_car`, `infois_name`, `infois_amount`, `infois_price`) VALUES
(1, 23, 'sdfsdfsdf', 1, 150),
(2, 23, 'sssssssss', 2, 300),
(3, 24, 'aaa', 1, 10),
(5, 24, 'ddddddd', 1, 12),
(6, 24, 'sssdd', 3, 20),
(7, 24, 'asdddd', 2, 30),
(8, 27, 'aaaa', 5, 100),
(9, 27, 'bbbb', 12, 125);

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
CREATE TABLE `insurance` (
  `id_sr` int(11) NOT NULL,
  `id_car` varchar(20) NOT NULL,
  `sr_name` varchar(80) NOT NULL,
  `sr_number` varchar(80) NOT NULL,
  `sr_datecome` varchar(30) NOT NULL,
  `sr_dateout` varchar(30) NOT NULL,
  `sr_numbery` varchar(80) NOT NULL,
  `sr_or` varchar(15) NOT NULL,
  `sr_date` varchar(80) NOT NULL,
  `sr_pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`id_sr`, `id_car`, `sr_name`, `sr_number`, `sr_datecome`, `sr_dateout`, `sr_numbery`, `sr_or`, `sr_date`, `sr_pic`) VALUES
(5, '17', 'อาคเนย์ประกันภัย', '10000', '2021-06-30', '2021-07-02', '1000', 'ผู้เอาประกัน', '2021-06-30 04:28:12', ''),
(6, '20', 'เมืองไทยประกันชีวิต', '1000000', '2021-07-01', '2021-07-01', '20000', 'ผู้เอาประกัน', '2021-06-30 11:11:42', ''),
(11, '23', 'เมืองไทยประกันภัย', '10000', '2021-09-13', '2021-09-14', '123000', 'ผู้เอาประกัน', '2021-09-13 01:21:53', ''),
(13, '24', 'กรุงเทพประกันภัย', '111111', '2021-09-14', '2021-09-20', '22222222', 'คู่กรณี', '2021-09-13 02:54:38', ''),
(18, '27', 'เมืองไทยประกันภัย', '10000', '2021-09-13', '2021-09-15', '3333333', 'ผู้เอาประกัน', '2021-09-13 22:23:40', 'honda city.jpg'),
(19, '42', 'เมืองไทยประกันภัย', '10000', '2021-09-15', '2021-09-16', '123000', 'ผู้เอาประกัน', '2021-09-15 14:37:06', '201569-768x1024.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `UserID` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `id_fix` int(11) NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `detail_id` int(20) NOT NULL,
  `order_id` int(20) NOT NULL,
  `id_car` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
CREATE TABLE `parts` (
  `pt_id` int(11) NOT NULL,
  `id_car` int(11) NOT NULL,
  `p_name` varchar(80) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`pt_id`, `id_car`, `p_name`, `p_price`, `p_amount`) VALUES
(27, 17, 'น้ำมันเครื่อง PTT', 250, 1),
(28, 17, 'ค่าแรง', 200, 1),
(29, 20, 'น้ำมันเครื่อง PTT', 250, 1),
(30, 20, 'ค่าแรง', 200, 1),
(31, 19, 'น้ำมันเครื่อง AAS', 250, 1),
(32, 19, 'ค่าแรง', 500, 1),
(33, 21, '', 300, 1),
(34, 21, '6666', 300, 1),
(35, 21, '6666', 300, 2),
(36, 21, '6666', 300, 1),
(37, 21, '6666', 300, 1),
(38, 21, '6666', 300, 1),
(39, 21, 'น้ำมันเครื่อง PPT 1500', 300, 1),
(40, 21, 'Array', 150, 1),
(41, 21, 'Array', 1000, 1),
(42, 67, 'น้ำมันเครื่อง', 150, 1),
(43, 41, 'น้ำมันเครื่อง', 150, 1),
(44, 41, 'ค่าแรง', 250, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `pay_id` int(11) NOT NULL,
  `id_fix` varchar(20) NOT NULL,
  `id_car` varchar(10) NOT NULL,
  `pay_date` varchar(80) NOT NULL,
  `pay_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`pay_id`, `id_fix`, `id_car`, `pay_date`, `pay_pic`) VALUES
(1, '53', '9', '2021-06-30 02:52:45', '232045316check-solid.png'),
(2, '53', '10', '2021-06-30 02:56:20', '615805983vigo.jpg'),
(3, '53', '10', '2021-06-30 02:56:54', '1955127568S__7643208.jpg'),
(4, '53', '9', '2021-06-30 03:03:11', '1771669291niss.jpg'),
(5, '53', '9', '2021-06-30 03:31:19', '663642203vigo.jpg'),
(6, '57', '17', '2021-06-30 04:27:38', '1805397778check-solid.png'),
(7, '59', '20', '2021-06-30 11:12:53', '797731135niss.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `pc_id` int(11) NOT NULL,
  `id_fix` int(11) NOT NULL,
  `pc_power` int(35) NOT NULL,
  `pc_parts` int(35) NOT NULL,
  `pc_sum` int(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL COMMENT 'รหัสสินค้า',
  `pro_name` varchar(50) NOT NULL COMMENT 'ชื่อสินค้า',
  `pro_price` int(11) NOT NULL COMMENT 'ราคา',
  `pro_pic` varchar(100) NOT NULL COMMENT 'รูปสินค้า',
  `type_id` int(11) NOT NULL COMMENT 'รหัสประเภท'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_price`, `pro_pic`, `type_id`) VALUES
(4, 'แคริฟอเนีย มากิ', 159, 'California Maki.jpg', 3),
(5, 'ราเมนเย็น', 89, 'Cold_noodles.jpg', 1),
(6, 'ข้าวหน้าหมูทอด', 129, 'Fried rice.jpg', 2),
(7, 'เกี๊ยวซ่า', 69, 'Gyoza.jpg', 4),
(8, 'ไข่ม้วน', 49, 'Japanese roll egg.jpg', 3),
(9, 'ไก่คาราเกะ', 79, 'Karake-Chicken.jpg', 4),
(10, 'ข้าวหน้าหมูเกาหลี', 189, 'Korean rice.jpg', 2),
(12, 'มิโซะราเมน', 149, 'Miso Ramen.jpg', 1),
(13, 'แซลมอนซาซิมิ', 355, 'Salmon sushi.jpg', 3),
(14, 'ปลาดิบรวมเล็ก', 399, 'vigo.jpeg', 3),
(15, 'น้ำอัดลม', 29, 'sparkling water.jpg', 5),
(16, 'ทาโกะยากิ', 89, 'Takoyaki.jpg', 4),
(17, 'ยากิโซบะ', 129, 'Yakisoba.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `s_name` varchar(80) NOT NULL,
  `s_price` int(100) NOT NULL,
  `s_amount` int(100) NOT NULL,
  `s_type` varchar(10) NOT NULL,
  `s_pic` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `s_name`, `s_price`, `s_amount`, `s_type`, `s_pic`) VALUES
(1, 'น้ำมันเครื่อง', 150, 10, '5', '10911276201569-768x1024.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `technician`
--

DROP TABLE IF EXISTS `technician`;
CREATE TABLE `technician` (
  `id_tc` int(11) NOT NULL,
  `tc_name` varchar(80) NOT NULL,
  `tc_address` varchar(255) NOT NULL,
  `tc_tel` varchar(13) NOT NULL,
  `type_iddmt` varchar(11) NOT NULL,
  `type_name` varchar(20) NOT NULL,
  `tc_pic` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `technician`
--

INSERT INTO `technician` (`id_tc`, `tc_name`, `tc_address`, `tc_tel`, `type_iddmt`, `type_name`, `tc_pic`) VALUES
(6, 'A', '98/21 หมู่ 3 ต.บางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '999999999', '1', 'ช่างเครื่องยนต์', '167377658employee.png'),
(7, 'B', '23/2 ตำบลบางใหญ่ อำเภอเมืองฯ จังหวัดนนทบุรี', '999999999', '2', 'ช่างไฟฟ้า', ''),
(8, 'C', '98/21 หมู่ 3 ต.บางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '999999999', '3', 'ช่างช่วงล่าง', ''),
(9, 'D', '23/2 ตำบลบางใหญ่ อำเภอเมืองฯ จังหวัดนนทบุรี', '999999999', '4', 'ช่างการยาง', ''),
(10, 'E', '23/2 ตำบลบางใหญ่ อำเภอเมืองฯ จังหวัดนนทบุรี', '989954321', '5', 'ช่วงตรวจสภาพ', ''),
(11, 'D', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '065-123-5455', '1', 'ช่วงตรวจสภาพ', '1597574648employee.png');

-- --------------------------------------------------------

--
-- Table structure for table `type_department`
--

DROP TABLE IF EXISTS `type_department`;
CREATE TABLE `type_department` (
  `type_iddmt` int(11) NOT NULL,
  `type_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_department`
--

INSERT INTO `type_department` (`type_iddmt`, `type_name`) VALUES
(1, 'บัญชี'),
(2, 'เคลม-ประกัน'),
(3, 'ช่างเครื่องยนต์'),
(4, 'ช่างจักรยานยนต์'),
(5, 'ช่างแอร์'),
(6, 'ช่างแอร์ไดนาโม'),
(7, 'ช่างล้อ เบรค ช่วงล่าง'),
(8, 'ทำความสะอาด'),
(9, 'ต้อนรับลูกค้า');

-- --------------------------------------------------------

--
-- Table structure for table `type_fixcar`
--

DROP TABLE IF EXISTS `type_fixcar`;
CREATE TABLE `type_fixcar` (
  `type_idfix` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_fixcar`
--

INSERT INTO `type_fixcar` (`type_idfix`, `type_name`) VALUES
(1, 'รอการดำเนินการ'),
(2, 'กำลังซ่อม'),
(3, 'การซ่อมสำเร็จ'),
(4, 'รอการชำระเงิน'),
(5, 'ชำระเงินเรียบร้อย'),
(6, 'ระงับการใช้งาน');

-- --------------------------------------------------------

--
-- Table structure for table `type_log`
--

DROP TABLE IF EXISTS `type_log`;
CREATE TABLE `type_log` (
  `f_log` int(11) NOT NULL,
  `log_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_log`
--

INSERT INTO `type_log` (`f_log`, `log_name`) VALUES
(1, 'กทม'),
(2, 'กระบี่'),
(3, 'กาญจนบุรี'),
(4, 'กาฬสินธุ์'),
(5, 'กำแพงเพชร'),
(6, 'ขอนแก่น'),
(7, 'จันทบุรี');

-- --------------------------------------------------------

--
-- Table structure for table `type_parts`
--

DROP TABLE IF EXISTS `type_parts`;
CREATE TABLE `type_parts` (
  `type_pt` int(11) NOT NULL,
  `type_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_parts`
--

INSERT INTO `type_parts` (`type_pt`, `type_name`) VALUES
(1, 'เครื่องยนต์'),
(2, 'ตัวถัง'),
(3, 'ช่วงล่าง'),
(4, 'ล้อ'),
(5, 'อื่นๆ');

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

DROP TABLE IF EXISTS `type_product`;
CREATE TABLE `type_product` (
  `type_id` int(11) NOT NULL COMMENT 'รหัสประเภทสินค้า',
  `type_name` varchar(50) NOT NULL COMMENT 'ชื่อประเภทสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`type_id`, `type_name`) VALUES
(1, 'ราเมน'),
(2, 'ข้าว'),
(3, 'ซุชิและซาซิมิ'),
(4, 'ของทานเล่น'),
(5, 'เครื่องดื่ม');

-- --------------------------------------------------------

--
-- Table structure for table `type_tec`
--

DROP TABLE IF EXISTS `type_tec`;
CREATE TABLE `type_tec` (
  `type_idtec` int(11) NOT NULL,
  `type_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_tec`
--

INSERT INTO `type_tec` (`type_idtec`, `type_name`) VALUES
(1, 'ช่างเครื่องยนต์'),
(2, 'ช่างไฟฟ้า'),
(3, 'ช่างแอร์'),
(4, 'ช่างสี'),
(5, 'ช่างช่วงล่าง');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `facebook` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `email`, `name`, `address`, `tel`, `facebook`) VALUES
(81, 'mygarage', '4297f44b13955235245b2497399d7a93', 'บริษัท รุ่งเรืองการช่าง จำกัด', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', ''),
(82, 'mygarage321', '202cb962ac59075b964b07152d234b70', 'บริษัท รุ่งเรืองการช่าง จำกัด', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', ''),
(83, 'asdasd', '202cb962ac59075b964b07152d234b70', 'บริษัท รุ่งเรืองการช่าง จำกัด', 'บริษัท รุ่งเรืองการช่าง จำกัด', 'asdasd', '', ''),
(84, 'mygarage123', '202cb962ac59075b964b07152d234b70', 'บริษัท รุ่งเรืองการช่าง จำกัด', 'บริษัท รุ่งเรืองการช่าง จำกัด', '123123', '', ''),
(85, 'mygarage123', '202cb962ac59075b964b07152d234b70', 'บริษัท รุ่งเรืองการช่าง จำกัด', 'บริษัท รุ่งเรืองการช่าง จำกัด', '123123', '', ''),
(86, 'bbyy', '202cb962ac59075b964b07152d234b70', '321', '321', '123123', '', ''),
(87, 'bbyy', '202cb962ac59075b964b07152d234b70', '321', '321', '123123', '', ''),
(88, 'mygarage', '202cb962ac59075b964b07152d234b70', 'mygarage@gmail.com', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', ''),
(89, 'mygarage', '202cb962ac59075b964b07152d234b70', 'mygarage@gmail.com', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', ''),
(90, 'mygarage', '202cb962ac59075b964b07152d234b70', 'mygarage@gmail.com', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', ''),
(91, 'mygarage', '202cb962ac59075b964b07152d234b70', 'mygarage@gmail.com', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', ''),
(92, 'aohoyy', '202cb962ac59075b964b07152d234b70', 'hotf@kyp.com', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', ''),
(93, 'mygaragehot', '202cb962ac59075b964b07152d234b70', 'mygaragedggggddd@gmail.com', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', ''),
(94, 'mygaragehotujop', '202cb962ac59075b964b07152d234b70', 'adfgj@dfoig.com', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', ''),
(95, 'kuymaidee', '202cb962ac59075b964b07152d234b70', 'kuymai@hot.com', 'บริษัท รุ่งเรืองการช่าง จำกัด', '64 หมู่ 3 ตำบลบางรักใหญ่ อำเภอบางบัวทอง จังหวัดนนทบุรี', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id_car`);

--
-- Indexes for table `carparts`
--
ALTER TABLE `carparts`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `com`
--
ALTER TABLE `com`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `count`
--
ALTER TABLE `count`
  ADD PRIMARY KEY (`id_count`);

--
-- Indexes for table `fixcar`
--
ALTER TABLE `fixcar`
  ADD PRIMARY KEY (`id_fix`),
  ADD KEY `type_idfix` (`type_idfix`);

--
-- Indexes for table `fixed`
--
ALTER TABLE `fixed`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `infocar`
--
ALTER TABLE `infocar`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `info_insurance`
--
ALTER TABLE `info_insurance`
  ADD PRIMARY KEY (`infois_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`id_sr`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`pc_id`),
  ADD KEY `id_fix` (`id_fix`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `technician`
--
ALTER TABLE `technician`
  ADD PRIMARY KEY (`id_tc`);

--
-- Indexes for table `type_department`
--
ALTER TABLE `type_department`
  ADD PRIMARY KEY (`type_iddmt`);

--
-- Indexes for table `type_fixcar`
--
ALTER TABLE `type_fixcar`
  ADD PRIMARY KEY (`type_idfix`);

--
-- Indexes for table `type_log`
--
ALTER TABLE `type_log`
  ADD PRIMARY KEY (`f_log`);

--
-- Indexes for table `type_parts`
--
ALTER TABLE `type_parts`
  ADD PRIMARY KEY (`type_pt`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `type_tec`
--
ALTER TABLE `type_tec`
  ADD PRIMARY KEY (`type_idtec`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id_car` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `carparts`
--
ALTER TABLE `carparts`
  MODIFY `cp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `com`
--
ALTER TABLE `com`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `count`
--
ALTER TABLE `count`
  MODIFY `id_count` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixcar`
--
ALTER TABLE `fixcar`
  MODIFY `id_fix` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `fixed`
--
ALTER TABLE `fixed`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infocar`
--
ALTER TABLE `infocar`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `info_insurance`
--
ALTER TABLE `info_insurance`
  MODIFY `infois_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `id_sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `detail_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า', AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technician`
--
ALTER TABLE `technician`
  MODIFY `id_tc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `type_department`
--
ALTER TABLE `type_department`
  MODIFY `type_iddmt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `type_fixcar`
--
ALTER TABLE `type_fixcar`
  MODIFY `type_idfix` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
