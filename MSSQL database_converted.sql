-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2020 at 02:49 AM
-- Server version: 5.7.23
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` binary(16) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime DEFAULT NULL,
  `createdby` longtext,
  `updatedby` longtext,
  `isdeleted` tinyint(4) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `parentid` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_categories_parentid` (`parentid`),
  KEY `ix_categories_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `createddate`, `updateddate`, `createdby`, `updatedby`, `isdeleted`, `name`, `parentid`) VALUES
(0x4e4be6e8d421274ac9a908d7f582e6fe, '2020-05-11 08:11:27', NULL, 'admin', NULL, 0, 'ELECTRONICS - test category', NULL),
(0xac674184da358e45c9aa08d7f582e6fe, '2020-05-11 08:12:05', '2020-05-11 08:12:31', 'admin', 'admin', 0, 'CAMERAS - test category', 0x4e4be6e8d421274ac9a908d7f582e6fe),
(0x511235985e011f4ac9ab08d7f582e6fe, '2020-05-11 08:12:55', NULL, 'admin', NULL, 0, 'FURNITURE - test category', NULL),
(0x86b1f284f1810444c9ac08d7f582e6fe, '2020-05-11 09:08:10', NULL, 'admin', NULL, 0, 'SMART PHONES - test category', 0x4e4be6e8d421274ac9a908d7f582e6fe),
(0x48fa7daa7f987c40c9ad08d7f582e6fe, '2020-05-11 09:08:54', '2020-05-11 09:09:52', 'admin', 'admin', 0, 'Samsung smart phones - test category', 0x86b1f284f1810444c9ac08d7f582e6fe),
(0x194762f55f24934ac9ae08d7f582e6fe, '2020-05-11 09:09:27', NULL, 'admin', NULL, 0, 'Sony cameras - test category', 0xac674184da358e45c9aa08d7f582e6fe),
(0x665455b44af34643c9af08d7f582e6fe, '2020-05-11 09:39:41', NULL, 'admin', NULL, 0, 'TEST CATEGORY 01', NULL),
(0xd78b76950d81134ec9b008d7f582e6fe, '2020-05-11 09:40:04', '2020-05-11 09:41:32', 'admin', 'admin', 0, 'TEST CATEGORY 02a', 0x665455b44af34643c9af08d7f582e6fe),
(0xe4e5b5321abdfe41c9b108d7f582e6fe, '2020-05-11 09:40:19', NULL, 'admin', NULL, 0, 'TEST CATEGORY 03', 0xd78b76950d81134ec9b008d7f582e6fe),
(0x6b66407061d38f4dc9b208d7f582e6fe, '2020-05-11 09:40:41', NULL, 'admin', NULL, 0, 'TEST CATEGORY 04', 0xe4e5b5321abdfe41c9b108d7f582e6fe),
(0xdd546d3330ccd34fc9b308d7f582e6fe, '2020-05-11 09:41:13', '2020-05-11 09:42:52', 'admin', 'admin', 0, 'TEST CATEGORY 02b', 0x665455b44af34643c9af08d7f582e6fe),
(0x2f16800bb80fe845c9b408d7f582e6fe, '2020-05-11 09:43:32', NULL, 'admin', NULL, 0, 'TEST CATEGORY 02c', 0x665455b44af34643c9af08d7f582e6fe),
(0x458892da5cca7941c9b508d7f582e6fe, '2020-05-11 09:49:22', NULL, 'admin', NULL, 0, 'IKEA furniture', 0x511235985e011f4ac9ab08d7f582e6fe),
(0xfe2cb7fff2a3964a941c08d7fea7d3ad, '2020-05-22 23:28:26', NULL, 'admin', NULL, 0, 'LG televisions', 0x4e4be6e8d421274ac9a908d7f582e6fe);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
