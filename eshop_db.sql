-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 28 déc. 2021 à 14:41
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eshop_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `brands`
--

INSERT INTO `brands` (`id`, `brand`, `disabled`, `views`) VALUES
(1, 'Johnsons', 0, 0),
(2, 'Ronhill', 0, 0),
(3, 'Albiro', 0, 0),
(4, 'Toyota', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `parent` int(11) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category`, `disabled`, `parent`, `views`) VALUES
(12, 'Pizza', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `parent`, `city`, `disabled`) VALUES
(1, 1, 'Ariana', 0),
(2, 1, 'La Soukra', 0),
(3, 1, 'Raoued	', 0),
(4, 1, 'Kalâat el-Andalous', 0),
(5, 1, 'Sidi Thabet', 0),
(6, 1, 'Ettadhamen-Mnihla', 0),
(7, 2, 'Béja', 0),
(8, 2, 'El Maâgoula', 0),
(9, 2, 'Zahret Medien', 0),
(10, 2, 'Nefza', 0),
(11, 2, 'Téboursouk	', 0),
(12, 2, 'Testour	', 0),
(13, 2, 'Goubellat	', 0),
(14, 2, 'Majaz al Bab', 0),
(15, 3, 'Ben Arous', 0),
(16, 3, 'El Mourouj', 0),
(17, 3, 'Hammam Lif', 0),
(18, 3, 'Hammam Chott', 0),
(19, 3, 'Bou Mhel el-Bassatine', 0),
(20, 3, 'Ezzahra	', 0),
(21, 3, 'Radès	', 0),
(22, 3, 'Mégrine	', 0),
(23, 3, 'Mohamedia-Fouchana', 0),
(24, 3, 'Mornag	', 0),
(25, 3, 'Khalidia	', 0),
(26, 4, 'Bizerte	', 0),
(27, 4, 'Sejnane	', 0),
(28, 4, 'Mateur	', 0),
(29, 4, 'Menzel Bourguiba', 0),
(30, 4, 'Tinja	', 0),
(31, 4, 'Ghar al Milh', 0),
(32, 4, 'Aousja	', 0),
(33, 4, 'Menzel Jemil', 0),
(34, 4, 'Menzel Abderrahmane', 0),
(35, 4, 'El Alia', 0),
(36, 4, 'Ras Jebel', 0),
(37, 4, 'Metline	', 0),
(38, 4, 'Raf Raf', 0),
(39, 5, 'Gabès	', 0),
(40, 5, 'Chenini Nahal', 0),
(41, 6, 'Ghannouch	', 0),
(42, 5, 'Métouia	', 0),
(43, 5, 'Oudhref	', 0),
(44, 5, 'El Hamma', 0),
(45, 5, 'Matmata	', 0),
(46, 5, 'Nouvelle Matmata', 0),
(47, 5, 'Mareth	', 0),
(48, 5, 'Zarat	', 0),
(49, 6, 'Gafsa', 0),
(50, 6, ' El Ksar', 0),
(51, 6, ' Moularès', 0),
(52, 6, ' Redeyef ', 0),
(53, 6, 'Métlaoui', 0),
(54, 6, ' Mdhila', 0),
(55, 6, ' El Guettar', 0),
(66, 7, 'Jendouba', 0),
(67, 7, ' Bou Salem', 0),
(68, 7, ' Tabarka', 0),
(69, 7, ' Aïn Draham', 0),
(70, 8, 'Kairouan	', 0),
(71, 8, 'Chebika	', 0),
(72, 8, 'Haffouz	', 0),
(73, 8, 'Oueslatia	', 0),
(74, 8, 'Bou Hajla', 0),
(75, 9, 'Kasserine	', 0),
(76, 9, 'Sbeitla	', 0),
(77, 9, 'Fériana	', 0),
(78, 9, 'Thélepte	', 0),
(80, 10, 'Kebili', 0),
(81, 10, 'Djemna', 0),
(82, 10, 'Douz', 0),
(83, 11, 'Kef	', 0),
(84, 11, 'Nebeur', 0),
(85, 11, 'Touiref	', 0),
(86, 11, 'Sakiet Sidi Youssef	', 0),
(87, 11, 'Tajerouine	', 0),
(88, 11, 'Menzel Salem', 0),
(89, 11, 'Kalaat es Senam', 0),
(90, 11, 'Kalâat Khasba', 0),
(91, 11, 'Jérissa	', 0),
(92, 11, 'El Ksour', 0),
(93, 11, 'Dahmani	', 0),
(94, 11, 'Sers	', 0),
(95, 12, 'Mahdia', 0),
(96, 12, 'Rejiche', 0),
(97, 12, 'Bou Merdes	', 0),
(98, 12, 'El Djem', 0),
(99, 12, 'Kerker', 0),
(100, 12, 'Chebba', 0),
(101, 12, 'Rejiche', 0),
(102, 12, 'Melloulèche', 0),
(103, 12, 'Sidi Alouane', 0),
(104, 12, 'Ksour Essef', 0),
(105, 13, 'Manouba', 0),
(106, 13, 'Den Den', 0),
(107, 13, 'Douar Hicher', 0),
(108, 13, 'Oued Ellil', 0),
(109, 13, 'Mornaguia', 0),
(110, 14, 'Medenine', 0),
(111, 14, 'Beni Khedache', 0),
(112, 14, 'Ben Gardane', 0),
(113, 14, 'Zarzis', 0),
(114, 14, 'Houmt El Souk (Djerba)', 0),
(115, 14, 'Midoun (Djerba)', 0),
(116, 14, 'Ajim (Djerba)', 0),
(117, 15, 'Monastir', 0),
(118, 15, 'Khniss	', 0),
(119, 15, 'Zéramdine	', 0),
(120, 15, 'Jemmal	', 0),
(121, 15, 'Sahline Moôtmar', 0),
(122, 15, 'Moknine', 0),
(123, 15, 'Ksar Hellal', 0),
(124, 15, 'Téboulba', 0),
(125, 15, 'Ksar Hellal', 0),
(126, 16, 'Nabeul', 0),
(127, 16, 'Nabeul', 0),
(128, 16, 'Dar Chaabane', 0),
(129, 16, 'Béni Khiar', 0),
(130, 16, 'El Maâmoura', 0),
(131, 16, 'Korba', 0),
(132, 16, 'Menzel Temime', 0),
(133, 16, 'Kelibia', 0),
(134, 16, 'Takelsa', 0),
(135, 16, 'Soliman', 0),
(136, 16, 'Korbous	', 0),
(137, 16, 'Hammamet	', 0),
(138, 16, 'Grombalia	', 0),
(139, 17, 'Sfax', 0),
(140, 17, 'Chihia', 0),
(141, 17, 'Sakiet Eddaïer', 0),
(142, 17, 'Gremda', 0),
(143, 17, 'El Ain', 0),
(144, 17, 'Thyna', 0),
(145, 17, 'Agareb', 0),
(146, 17, 'Jebiniana', 0),
(147, 17, 'El Hencha', 0),
(148, 17, 'Jebiniana', 0),
(149, 17, 'Menzel Chaker', 0),
(150, 17, 'Sakiet Ezzit', 0),
(151, 17, 'Ghraïba', 0),
(152, 17, 'Bir Ali Ben Khélifa', 0),
(153, 17, 'Skhira', 0),
(154, 17, 'Mahares', 0),
(155, 17, 'Kerkennah', 0),
(156, 18, 'Sidi Bouzid', 0),
(157, 19, 'Siliana', 0),
(158, 20, 'Sousse', 0),
(159, 20, 'Zaouiet Sousse', 0),
(160, 20, 'Hammam Sousse', 0),
(161, 20, 'Kalâa Kebira', 0),
(162, 20, 'Hergla	', 0),
(163, 20, 'Msaken	', 0),
(164, 21, 'Tataouine	', 0),
(165, 22, 'Tozeur	', 0),
(166, 23, 'Tunis	', 0),
(167, 23, 'Le Bardo', 0),
(168, 23, 'Le Kram', 0),
(169, 23, 'La Goulette', 0),
(170, 23, 'Carthage', 0),
(171, 23, 'Sidi Bou Said	', 0),
(172, 23, 'La Marsa', 0),
(173, 23, 'Sidi Hassine', 0),
(174, 24, 'Zaghouan', 0);

-- --------------------------------------------------------

--
-- Structure de la table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(2, 'A Second Person', 'email2@email.com', 'a subject', 'a subject2', '2021-05-22 12:25:18');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_url` varchar(60) NOT NULL,
  `description` varchar(20) NOT NULL,
  `delivery_address` varchar(1024) DEFAULT NULL,
  `total` double NOT NULL DEFAULT 0,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL,
  `tax` double DEFAULT 0,
  `shipping` double DEFAULT 0,
  `date` datetime NOT NULL,
  `sessionid` varchar(30) NOT NULL,
  `home_phone` varchar(15) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_url`, `description`, `delivery_address`, `total`, `state`, `city`, `zip`, `tax`, `shipping`, `date`, `sessionid`, `home_phone`, `mobile_phone`) VALUES
(1, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-21 20:38:25', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(2, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-21 20:38:46', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(3, 'IYHtfbbTBkpFExy', '', 'plot number1 plot number 2', 72.96, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-30 12:31:47', 'o9sln93qsk4u3rkl5qvhsulcdq', '075725722', '097563635'),
(4, 'IYHtfbbTBkpFExy', '', 'plot 1234 new road lusaka ', 71.95, 'Zambia', 'Southern', '10101', 0, 0, '2021-05-04 21:03:14', 'o9sln93qsk4u3rkl5qvhsulcdq', '', '0986543467'),
(5, 'IYHtfbbTBkpFExy', '', 'Lusaka Lusaka', 9.99, 'Zambia', 'Nothern', '10101', 0, 0, '2021-07-06 12:58:30', '4geg1pa308bcadbuqfhlvcvdjt', '244324', '2423424234'),
(6, 'IYHtfbbTBkpFExy', '', 'plot 1234 new road lusaka Lusaka', 9.99, 'Zambia', 'Nothern', '1001', 0, 0, '2021-07-06 13:02:00', '4geg1pa308bcadbuqfhlvcvdjt', '4254545', '35324545'),
(8, 'IYHtfbbTBkpFExy', '', 'aeefdfdfda dsadcvd', 9.99, 'South Africa', 'Burg', 'sfvdfv', 0, 0, '2021-07-09 13:32:51', '73d0bvfoijv78lfe8iau8q438i', 'dvdvcd', 'sdfvdvdv'),
(9, 'IYHtfbbTBkpFExy', 'order 8', 'Zambia Lusaka', 20.99, 'South Africa', 'Burg', '1223', 0, 0, '2021-07-09 13:51:21', '73d0bvfoijv78lfe8iau8q438i', 'burg', '0989787854'),
(10, 'IYHtfbbTBkpFExy', 'order 10', 'wfgsfvgf sfvfv', 20.99, 'South Africa', 'Burg', 'sdfvvs', 0, 0, '2021-07-09 13:54:11', '73d0bvfoijv78lfe8iau8q438i', 'dfdfdf', 'dfdfd'),
(11, 'IYHtfbbTBkpFExy', 'order 11', 'aefdf wdfd', 12.99, 'South Africa', 'Sun City', 'dvfd', 0, 0, '2021-07-09 14:00:03', '73d0bvfoijv78lfe8iau8q438i', 'sdacv', 'dcfd'),
(12, 'IYHtfbbTBkpFExy', 'order 12', 'aefdf wdfd', 12.99, 'South Africa', 'Sun City', 'dvfd', 0, 0, '2021-07-09 14:02:57', '73d0bvfoijv78lfe8iau8q438i', 'sdacv', 'dcfd'),
(13, 'IYHtfbbTBkpFExy', 'order 13', 'aefdf wdfd', 25.98, 'South Africa', 'Sun City', 'dvfd', 0, 0, '2021-07-09 20:40:10', '73d0bvfoijv78lfe8iau8q438i', 'sdacv', 'dcfd'),
(14, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-21 20:38:25', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(15, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-21 20:38:46', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(16, 'IYHtfbbTBkpFExy', '', 'plot number1 plot number 2', 72.96, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-30 12:31:47', 'o9sln93qsk4u3rkl5qvhsulcdq', '075725722', '097563635'),
(17, 'IYHtfbbTBkpFExy', '', 'plot 1234 new road lusaka ', 71.95, 'Zambia', 'Southern', '10101', 0, 0, '2021-05-04 21:03:14', 'o9sln93qsk4u3rkl5qvhsulcdq', '', '0986543467'),
(18, 'IYHtfbbTBkpFExy', 'order 5', 'Lusaka plot number 2', 22.98, 'South Africa', 'Sun City', '1001', 0, 0, '2021-07-09 19:25:22', 'ujaa4qq9p5logrg7kgigbrdvun', 'burg', '0989787854'),
(19, 'IYHtfbbTBkpFExy', 'order 6', 'Lusaka plot number 2', 1.05, 'South Africa', 'Sun City', '1223', 0, 0, '2021-07-13 10:16:39', 'ujaa4qq9p5logrg7kgigbrdvun', 'Lusaka', '0986543467'),
(20, 'IYHtfbbTBkpFExy', 'order 7', 'plot number1 plot number 2', 0.42, 'Zambia', 'Southern', '1001', 0, 0, '2021-07-13 10:19:18', 'ujaa4qq9p5logrg7kgigbrdvun', 'plot', '0986543467'),
(21, 'IYHtfbbTBkpFExy', 'order 21', 'adfadf adfadfd', 0.63, 'South Africa', 'Burg', 'afadf', 0, 0, '2021-07-18 21:15:55', 'qqtd8h2cql5c3d8u59co74cn98', 'afad', 'acvdav'),
(31, 'IYHtfbbTBkpFExy', 'order 22', 'Sfax Mey', 12.99, 'Tunis', 'La Marsa', '6010', 0, 0, '2021-12-27 13:54:30', 'cduqh3q8i28ed65guid030vimr', '43434', '52215947'),
(32, 'IYHtfbbTBkpFExy', 'order 32', 'Sfax Mey', 0.21, 'Tunis', 'La Marsa', 'xxx', 0, 0, '2021-12-27 13:56:16', 'cduqh3q8i28ed65guid030vimr', '43434', '52215947'),
(33, 'IYHtfbbTBkpFExy', 'order 33', 'Sfax 0', 20.99, 'Tunis', 'Le Kram', '6010', 0, 0, '2021-12-27 13:57:40', 'cduqh3q8i28ed65guid030vimr', 'XX2323', '52215947'),
(34, 'IYHtfbbTBkpFExy', 'order 34', 'Rue El Afrah Mey', 0.21, 'Zaghouan', 'Zaghouan', '6010', 0, 0, '2021-12-27 13:59:12', 'cduqh3q8i28ed65guid030vimr', '43434', '2322'),
(35, 'IYHtfbbTBkpFExy', 'order 35', 'Hay Hbib Sokra', 25.98, 'Sfax', 'Sakiet Ezzit', '5000', 0, 0, '2021-12-28 14:01:55', 'cduqh3q8i28ed65guid030vimr', '', '52215947'),
(36, 'IYHtfbbTBkpFExy', 'order 36', 'Sfax Mey', 10.2, 'Jendouba', ' Aïn Draham', '6010', 0, 0, '2021-12-28 14:02:44', 'cduqh3q8i28ed65guid030vimr', '', '55555555555'),
(37, 'IYHtfbbTBkpFExy', 'order 37', 'XXXX XXXX', 35.97, 'Gabès', 'Mareth	', 'XXXX', 0, 0, '2021-12-28 14:21:08', 'cduqh3q8i28ed65guid030vimr', 'XXXX', 'xXXXxxxx'),
(38, 'IYHtfbbTBkpFExy', 'order 38', 'Rue El Afrahh XXXXXXXXX', 0.63, 'Zaghouan', 'Zaghouan', 'mmmm', 0, 0, '2021-12-28 14:38:17', 'cduqh3q8i28ed65guid030vimr', '43434', '52215947');

-- --------------------------------------------------------

--
-- Structure de la table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `orderid` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` double NOT NULL,
  `total` double NOT NULL,
  `productid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `order_details`
--

INSERT INTO `order_details` (`id`, `orderid`, `qty`, `description`, `amount`, `total`, `productid`) VALUES
(1, 1, 3, 'Milo Candy Bar', 12.99, 38.97, 9),
(2, 1, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(3, 1, 3, 'Burger 250g With Drink', 9.99, 29.97, 7),
(4, 2, 3, 'Milo Candy Bar', 12.99, 38.97, 9),
(5, 2, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(6, 2, 3, 'Burger 250g With Drink', 9.99, 29.97, 7),
(7, 3, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(8, 3, 3, 'Weet Bix 1.4 Kg', 20.99, 62.97, 8),
(9, 4, 3, 'Burger 250g With Drink', 9.99, 29.97, 7),
(10, 4, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(11, 5, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(12, 6, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(13, 7, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(14, 8, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(15, 8, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8),
(16, 10, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8),
(17, 11, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(18, 12, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(19, 13, 2, 'Milo Candy Bar', 12.99, 25.98, 9),
(20, 21, 3, 'Alcohol', 0.21, 0.63, 10),
(21, 22, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(22, 22, 2, 'Milo Candy Bar', 12.99, 25.98, 9),
(23, 23, 2, 'Burger 250g With Drink', 9.99, 19.98, 7),
(24, 23, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(25, 22, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(26, 22, 0, 'Weet Bix 1.4 Kg', 20.99, 0, 8),
(27, 22, 10, 'Milo Candy Bar', 12.99, 129.9, 9),
(28, 26, 2, 'Halo', 0.21, 0.42, 12),
(29, 26, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(30, 26, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(31, 29, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(32, 30, 1, 'Halo', 0.21, 0.21, 12),
(33, 22, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(34, 32, 1, 'Halo', 0.21, 0.21, 12),
(35, 33, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8),
(36, 34, 1, 'Halo', 0.21, 0.21, 12),
(37, 35, 2, 'Milo Candy Bar', 12.99, 25.98, 9),
(38, 36, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(39, 36, 1, 'Meat Burger', 0.21, 0.21, 11),
(40, 37, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(41, 37, 2, 'Milo Candy Bar', 12.99, 25.98, 9),
(42, 38, 3, 'Traditions', 0.21, 0.63, 14);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_url` varchar(60) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `image3` varchar(500) DEFAULT NULL,
  `image4` varchar(500) DEFAULT NULL,
  `date` datetime NOT NULL,
  `slag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `user_url`, `description`, `category`, `price`, `quantity`, `image`, `image2`, `image3`, `image4`, `date`, `slag`) VALUES
(7, 'IYHtfbbTBkpFExy', 'Burger 250g With Drink', 1, 9.99, 8, 'uploads/6f7bd4cc3677b6e4ce2aeb249bfa2c32.jpg', 'uploads/Burger.jpg', 'uploads/glenlivet-12.jpg', 'uploads/sogood-landing.jpg', '2021-03-16 19:36:12', 'burger-250g-with-drink'),
(8, 'IYHtfbbTBkpFExy', 'Weet Bix 1.4 Kg', 1, 20.99, 9, 'uploads/UT83WqLXMBXXXagOFbX9.jpg', 'uploads/getmedia_3dad7ab1-ce4b-40e7-b409-82013a7f2c4b_2020_Website_Title_WB.jpg width=760&height=460&ext=.jpg', 'uploads/banetti-foods.jpg', 'uploads/351396-01.jpg-1200Wx1200H.jpg', '2021-03-16 20:07:08', 'weet-bix-1-4-kg'),
(9, 'IYHtfbbTBkpFExy', 'Milo Candy Bar', 1, 12.99, 100, 'uploads/images.jpg', 'uploads/banetti-foods.jpg', '', '', '2021-03-16 20:16:54', 'milo-candy-bar'),
(10, 'IYHtfbbTBkpFExy', 'Alcohol', 2, 0.21, 6, 'uploads/yKqmWfrNPKYgOV4FLQHuzzi4iJnqaae09dQA2iedeffJCK7c9PSsVnSvjRIV.jpg', '', '', '', '2021-06-06 15:20:36', 'alcohol'),
(11, 'IYHtfbbTBkpFExy', 'Meat Burger', 6, 0.21, 6, 'uploads/mJVdNoskTywnobsA6A6mCaVCD7OJ8xxTl7cwV9Hth1O5Z0aiqDdA3stCYnQY.jpg', '', '', '', '2021-06-06 15:21:24', 'meat-burger'),
(12, 'IYHtfbbTBkpFExy', 'Halo', 10, 0.21, 6, 'uploads/UG8XjjVu7HTW1j6b4vfB9f2YqUVl0PbZ3WUXBU3LgXadugDVTCwua61u7Nrc.jpg', '', '', '', '2021-06-06 15:21:55', 'halo'),
(13, 'IYHtfbbTBkpFExy', 'So Good', 2, 0.21, 6, 'uploads/6evwk0NfONIp1SkN6Lzu0bprGHDUoJKA0RL3Fw6A6Epo6f9VQUAfB0YpN4w0.jpg', '', '', '', '2021-06-06 15:22:18', 'so-good'),
(14, 'IYHtfbbTBkpFExy', 'Traditions', 11, 0.21, 6, 'uploads/peCbYjssuVJWFRn5kS4w7AqZRimede6JLo2xRNAV264TTREC5abm9lpVQrfJ.jpg', '', '', '', '2021-06-06 15:24:01', 'tradition'),
(15, 'IYHtfbbTBkpFExy', 'Some Product', 1, 0.08, 6, 'uploads/gfSXekdGkmQhkHE2GXDe29Cm2PN6MqrKFfLf5TK1rljqbO3Pfqopz5km5bKe.jpg', '', '', '', '2021-06-16 19:13:37', 'some-product');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting` varchar(30) DEFAULT NULL,
  `value` varchar(2048) DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `setting`, `value`, `type`) VALUES
(1, 'phone_number', '+3867 676636 76373', ''),
(2, 'email', 'info@mywebsite.com', ''),
(3, 'facebook_link', 'https://www.facebook.com', ''),
(4, 'twitter_link', 'https://www.twitter.com', ''),
(5, 'linkedin_link', '', ''),
(6, 'google_plus_link', '', ''),
(7, 'website_link', '', ''),
(8, 'youtube_link', '', ''),
(9, 'contact_info', 'E-Shopper Inc.\r\n\r\n<b>935 W. Webster Ave New Streets Chicago, IL 60614, NY</b>\r\n\r\nNewyork USA\r\n\r\nMobile: +2346 17 38 93\r\n\r\nFax: 1-714-252-0026\r\n\r\nEmail: info@e-shopper.com', 'textarea');

-- --------------------------------------------------------

--
-- Structure de la table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(11) NOT NULL,
  `header1_text` varchar(20) NOT NULL,
  `header2_text` varchar(30) DEFAULT NULL,
  `text` varchar(200) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `slider_images`
--

INSERT INTO `slider_images` (`id`, `header1_text`, `header2_text`, `text`, `link`, `image`, `image2`, `disabled`) VALUES
(1, 'E-SHOP', 'Awesome Food', 'This food is awesome. try it and let me know what ya think', 'http://localhost/eshop/public/product_details/burger-250g-with-drink', 'uploads/TVqski4iWztdtAL1lTOYioOeV7L0XM767EyiWiZ5ZdzuOuZ9XhA6FE3rX3LK.jpg', '', 0),
(2, 'E-SHOP STUFF', 'Milo Is The Best', 'As you already know Milo is awesome. everyone already knows its awesome', 'http://localhost/eshop/public/product_details/milo-candy-bar', 'uploads/gHmC5YMOwdiLKJFMH6mzr1pHGpNrLAS4gDtpK8zKhbXa639sJw5YJazX4LI0.jpg', '', 0),
(3, 'Awesome Bix', 'This Is Great Food', 'The food on this picture is awesome. try it and let us know', 'http://localhost/eshop/public/product_details/weet-bix-1-4-kg', 'uploads/2hu6d0OKjiX0wrPuoj9GZoaDLUIKNa0Y8qkZr1CHol8NtkTRyTaKVj2389NN.jpg', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state` varchar(30) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `states`
--

INSERT INTO `states` (`id`, `state`, `disabled`) VALUES
(1, 'Ariana', 0),
(2, 'Béja', 0),
(3, 'Ben Arous', 0),
(4, 'Bizerte', 0),
(5, 'Gabès', 0),
(6, 'Gafsa', 0),
(7, 'Jendouba', 0),
(8, 'Kairouan', 0),
(9, 'Kasserine', 0),
(10, 'Kebili', 0),
(11, 'Kef', 0),
(12, 'Mahdia', 0),
(13, 'Manouba', 0),
(14, 'Mednine', 0),
(15, 'Monastir', 0),
(16, 'Nabeul', 0),
(17, 'Sfax', 0),
(18, 'Sidi Bouzid', 0),
(19, 'Siliana', 0),
(20, 'Sousse', 0),
(21, 'Tataouine', 0),
(22, 'Tozeur', 0),
(23, 'Tunis', 0),
(24, 'Zaghouan', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `url_address` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `date` datetime NOT NULL,
  `rank` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `url_address`, `name`, `email`, `password`, `date`, `rank`) VALUES
(3, 'BX8z7P6oUmwRDwR3yGlJdJH', 'Mary', 'mary@yahoo.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2021-02-02 14:57:34', 'customer'),
(4, 'IYHtfbbTBkpFExy', 'XXXXX', 'X@XX.COM', 'd712a38ada1b58a0a561d8bb249d9f0668b25047', '2021-12-24 21:46:02', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`brand`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `views` (`views`),
  ADD KEY `brand` (`brand`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `parent` (`parent`),
  ADD KEY `views` (`views`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `disabled` (`disabled`);

--
-- Index pour la table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `subject` (`subject`),
  ADD KEY `name` (`name`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`user_url`),
  ADD KEY `date` (`date`),
  ADD KEY `sessionid` (`sessionid`),
  ADD KEY `description` (`description`);

--
-- Index pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `description` (`description`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slag` (`slag`),
  ADD KEY `date` (`date`),
  ADD KEY `quantity` (`quantity`),
  ADD KEY `price` (`price`),
  ADD KEY `category` (`category`),
  ADD KEY `description` (`description`),
  ADD KEY `user_url` (`user_url`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting` (`setting`);

--
-- Index pour la table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Index pour la table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `email` (`email`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT pour la table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
