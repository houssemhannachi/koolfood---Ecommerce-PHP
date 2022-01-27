-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 27 jan. 2022 à 11:39
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

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
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `disabled` (`disabled`),
  KEY `parent` (`parent`),
  KEY `views` (`views`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category`, `disabled`, `parent`, `views`) VALUES
(2, 'Drinks', 0, 0, 0),
(5, 'Pizzas', 0, 0, 0),
(6, 'Sandwiches', 0, 0, 0),
(7, 'Tunisians', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `subject` (`subject`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(2, 'A Second Person', 'email2@email.com', 'a subject', 'a subject2', '2021-05-22 12:25:18');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_url` varchar(60) NOT NULL,
  `description` varchar(20) NOT NULL,
  `delivery_address` varchar(1024) DEFAULT NULL,
  `total` double NOT NULL DEFAULT '0',
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL,
  `tax` double DEFAULT '0',
  `shipping` double DEFAULT '0',
  `date` datetime NOT NULL,
  `sessionid` varchar(30) NOT NULL,
  `home_phone` varchar(15) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`user_url`),
  KEY `date` (`date`),
  KEY `sessionid` (`sessionid`),
  KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderid` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` double NOT NULL,
  `total` double NOT NULL,
  `productid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `slag` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slag` (`slag`),
  KEY `date` (`date`),
  KEY `quantity` (`quantity`),
  KEY `price` (`price`),
  KEY `category` (`category`),
  KEY `description` (`description`),
  KEY `user_url` (`user_url`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `user_url`, `description`, `category`, `price`, `quantity`, `image`, `image2`, `image3`, `image4`, `date`, `slag`) VALUES
(23, 'IYHtfbbTBkpFExy', 'Boga', 2, 1, 1, 'uploads/u8SHJocUjKHNuzk1cdkIeAreIDNwNAsJ3Lyf7bIRUGGlbYodZ8a72FcOConl.jpg', 'uploads/L1YR0Rs0tg4W4YL8w6NI8GNmnSxUeMAPbUm3GYnTUVLaNWRLSJcOgoHgdMv1.jpg', '', '', '2021-12-29 22:26:36', 'boga'),
(24, 'IYHtfbbTBkpFExy', 'Coca Cola', 2, 1, 1, 'uploads/M06Sb3qjBExT84lRlhY7sJroFAVst0GxLsy7rSUK54eS4loyNmOFtaZBHA0W.jpg', '', '', '', '2021-12-29 22:27:09', 'coca-cola'),
(25, 'IYHtfbbTBkpFExy', 'Fanta', 2, 1, 1, 'uploads/w4o7csQxhfsUTkrUbQGFujNfF4wvtS5opD9A4MKWhVVbPNZmQDtJyAtAbjBq.jpg', '', '', '', '2021-12-29 22:27:22', 'fanta'),
(26, 'IYHtfbbTBkpFExy', 'Pizza Margeritta', 5, 1, 1, 'uploads/8iTYsweFRQoAhnSQwCD88ExlbdfZtTLYmd0g9XJxpWSdYYJzdj5IhKkfsDwD.jpg', '', '', '', '2021-12-29 22:27:44', 'pizza-margeritta'),
(27, 'IYHtfbbTBkpFExy', 'Pizza Fruits De Mer', 5, 1, 1, 'uploads/G2wrdFK3Jr9BQwnBLxbOwrBsNiX8CaAKKMsvPG1dQ4o1pTIlpQrEHAZ6j2SE.jpg', '', '', '', '2021-12-29 22:28:05', 'pizza-fruits-de-mer'),
(28, 'IYHtfbbTBkpFExy', 'Pizza Thon', 5, 1, 1, 'uploads/4Ps9YKmp8crfu3Bh2VItB4xXBdylAvNBk190tKRLnb1DW9BeofsiFWhoPg37.jpg', '', '', '', '2021-12-29 22:28:20', 'pizza-thon'),
(29, 'IYHtfbbTBkpFExy', 'Chapati', 6, 1, 1, 'uploads/JtN59yR7icEEjkGVm9OGOYFywZRvdpUfRufwwrk4xrSsWtngOukb6FUdoPPa.jpg', '', '', '', '2021-12-29 22:29:59', 'chapati'),
(30, 'IYHtfbbTBkpFExy', 'Makloub', 6, 1, 1, 'uploads/fcI4bk53oaDCYMoWqPtQJaDdD8OP0kQcP3zj9M5bk9DJbo9dZpDkSqjmFuFW.jpg', '', '', '', '2021-12-29 22:30:50', 'makloub'),
(31, 'IYHtfbbTBkpFExy', 'Sandwich Thon', 6, 1, 1, 'uploads/AOR0vghvJREgdcjgxNKry2BdtUEDH8ueKnOfN4fetTz8AnuLHgRlqxyuOLFr.jpg', '', '', '', '2021-12-29 22:31:22', 'sandwich-thon'),
(32, 'IYHtfbbTBkpFExy', 'Couscous', 7, 1, 1, 'uploads/CorbRbRinceRi10lbZIfEBDSGz1WWY5vUuiulCqD83axc9ugSXHoIE2llTSc.jpg', '', '', '', '2021-12-29 22:32:08', 'couscous'),
(33, 'IYHtfbbTBkpFExy', 'Marka', 7, 1, 1, 'uploads/OLF4Vna4eXXi3dXW4m7KR4p15vl3S5tcLrLuf7QMeCvsIlEsa9lwDNG9aNOS.jpg', '', '', '', '2021-12-29 22:32:23', 'marka'),
(34, 'IYHtfbbTBkpFExy', 'Lablebi', 7, 1, 1, 'uploads/PJrfg3mZSObtD0GVNq3JDuQwydYyaC6ZZtnoyAEMJSPk2oH2f2ozZlSmTN6m.jpg', '', '', '', '2021-12-29 22:32:36', 'lablebi'),
(35, 'IYHtfbbTBkpFExy', 'Mouloukhiya', 7, 1, 1, 'uploads/hEgzu5MUH0CqVQn9RVcUtUvkc6WuvIkORAgMey1MvqwFJGoDeKiXJzyZL5ul.jpg', '', '', '', '2021-12-29 22:33:38', 'mouloukhia');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting` varchar(30) DEFAULT NULL,
  `value` varchar(2048) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setting` (`setting`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `setting`, `value`, `type`) VALUES
(3, 'facebook_link', 'https://www.facebook.com', ''),
(4, 'twitter_link', 'https://www.twitter.com', ''),
(5, 'linkedin_link', '', ''),
(7, 'website_link', '', ''),
(8, 'youtube_link', 'https://www.youtube.com', ''),
(9, 'contact_info', 'E-Shopper Inc.\r\n\r\n<b>935 W. Webster Ave New Streets Chicago, IL 60614, NY</b>\r\n\r\nNewyork USA\r\n\r\nMobile: +2346 17 38 93\r\n\r\nFax: 1-714-252-0026\r\n\r\nEmail: info@e-shopper.com', 'textarea');

-- --------------------------------------------------------

--
-- Structure de la table `slider_images`
--

DROP TABLE IF EXISTS `slider_images`;
CREATE TABLE IF NOT EXISTS `slider_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header1_text` varchar(20) NOT NULL,
  `header2_text` varchar(30) DEFAULT NULL,
  `text` varchar(200) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `slider_images`
--

INSERT INTO `slider_images` (`id`, `header1_text`, `header2_text`, `text`, `link`, `image`, `image2`, `disabled`) VALUES
(3, 'Awesome', 'This Is Great Food', 'The food on this picture is awesome. try it and let us know', 'http://localhost/koolfood/public/product_details/pizza-margeritta', 'uploads/8iTYsweFRQoAhnSQwCD88ExlbdfZtTLYmd0g9XJxpWSdYYJzdj5IhKkfsDwD.jpg', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(30) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_address` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `date` datetime NOT NULL,
  `rank` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url_address` (`url_address`),
  KEY `email` (`email`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `url_address`, `name`, `email`, `password`, `date`, `rank`) VALUES
(3, 'BX8z7P6oUmwRDwR3yGlJdJH', 'Mary', 'mary@yahoo.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2021-02-02 14:57:34', 'customer'),
(4, 'IYHtfbbTBkpFExy', 'XXXXX', 'X@XX.COM', 'd712a38ada1b58a0a561d8bb249d9f0668b25047', '2021-12-24 21:46:02', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
