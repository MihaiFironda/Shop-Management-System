-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: ian. 07, 2022 la 02:33 PM
-- Versiune server: 10.4.21-MariaDB
-- Versiune PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `inventory`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `price`, `quantity`) VALUES
(6, 'Asus ROG RYZEN', 1400, 3),
(7, 'Tableta Lenovo YOGApad', 1200, 9),
(8, 'Tableta Xiaomi', 2000, 2),
(10, 'Samsung 21 PLUS', 3200, 18),
(11, 'Samsung S21 Ultra', 3800, 10);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `register`
--

CREATE TABLE `register` (
  `username` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `mobile` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password_1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `register`
--

INSERT INTO `register` (`username`, `first_name`, `last_name`, `mobile`, `email`, `password_1`) VALUES
('admin', 'Vlad', 'Vasile', 726475304, 'vladvasile.dv@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
('test', 'mihai', 'fironda', 723456567, 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6'),
('ursurobert', 'Robert', 'Ursu', 782345345, 'robertursu@gmail.com', '8287458823facb8ff918dbfabcd22ccb');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexuri pentru tabele `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
