-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 20, 2022 lúc 06:24 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cse481`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone_number`, `address`, `password`) VALUES
(16, 'xuan hoang', 'a1@gmail.com', 1, 'vietnam', 1),
(17, 'vu hoang', 'a9@gmail.com', 9, 'vietnam', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff_table15`
--

CREATE TABLE `staff_table15` (
  `staff_id` int(6) NOT NULL,
  `gender` char(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_num` varchar(50) DEFAULT NULL,
  `birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `staff_table15`
--

INSERT INTO `staff_table15` (`staff_id`, `gender`, `name`, `email`, `phone_num`, `birth`) VALUES
(2, 'nam', 'nhi', 'staff9@gmail.com', '1', '2022-09-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff_table16`
--

CREATE TABLE `staff_table16` (
  `staff_id` int(6) NOT NULL,
  `gender` char(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_num` varchar(50) DEFAULT NULL,
  `birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `staff_table16`
--

INSERT INTO `staff_table16` (`staff_id`, `gender`, `name`, `email`, `phone_num`, `birth`) VALUES
(3, 'nam', 'vu hoang', 'staff1@gmail.com', '1', '2022-09-17'),
(5, 'nữ', 'nhi', 'a2@gmail.com', '2', '2022-09-23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff_table17`
--

CREATE TABLE `staff_table17` (
  `staff_id` int(6) NOT NULL,
  `gender` char(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_num` varchar(50) DEFAULT NULL,
  `birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `staff_table15`
--
ALTER TABLE `staff_table15`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_num` (`phone_num`);

--
-- Chỉ mục cho bảng `staff_table16`
--
ALTER TABLE `staff_table16`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_num` (`phone_num`);

--
-- Chỉ mục cho bảng `staff_table17`
--
ALTER TABLE `staff_table17`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_num` (`phone_num`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `staff_table15`
--
ALTER TABLE `staff_table15`
  MODIFY `staff_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `staff_table16`
--
ALTER TABLE `staff_table16`
  MODIFY `staff_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `staff_table17`
--
ALTER TABLE `staff_table17`
  MODIFY `staff_id` int(6) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
