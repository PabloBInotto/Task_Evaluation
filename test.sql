-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 24-Mar-2021 às 14:54
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `avr_evaluator`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `avr_evaluator`;
CREATE TABLE IF NOT EXISTS `avr_evaluator` (
`evaluator` varchar(100)
,`taskid` int(11)
,`e1` decimal(13,0)
,`e2` decimal(12,0)
,`e3` decimal(13,0)
,`e4` decimal(12,0)
,`e5` decimal(12,0)
,`e6` decimal(13,0)
,`score` decimal(19,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `avr_evaluator_idt`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `avr_evaluator_idt`;
CREATE TABLE IF NOT EXISTS `avr_evaluator_idt` (
`evaluator` varchar(100)
,`taskid` int(11)
,`e1` decimal(12,0)
,`e2` decimal(12,0)
,`e3` decimal(12,0)
,`e4` decimal(12,0)
,`e5` decimal(13,0)
,`score` decimal(16,0)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evaluated_idt`
--

DROP TABLE IF EXISTS `evaluated_idt`;
CREATE TABLE IF NOT EXISTS `evaluated_idt` (
  `evaluator` varchar(100) NOT NULL,
  `taskid` int(11) NOT NULL,
  `e1` int(3) NOT NULL,
  `e2` int(3) NOT NULL,
  `e3` int(3) NOT NULL,
  `e4` int(3) NOT NULL,
  `e5` int(3) NOT NULL,
  `evaluation_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `evaluated_idt`
--

INSERT INTO `evaluated_idt` (`evaluator`, `taskid`, `e1`, `e2`, `e3`, `e4`, `e5`, `evaluation_data`) VALUES
('Dongseok oh', 1, 20, 30, 10, 25, 5, '2020-12-04 13:01:28'),
('Dongseok oh', 2, 10, 15, 10, 25, 5, '2020-12-04 13:01:28'),
('SANG SEOK KIM', 1, 10, 15, 10, 25, 5, '2020-12-04 13:03:08'),
('SANG SEOK KIM', 2, 10, 30, 20, 25, 5, '2020-12-04 13:03:08'),
('ThiagoP', 1, 10, 30, 10, 5, 5, '2020-12-04 13:05:13'),
('ThiagoP', 2, 20, 30, 20, 25, 5, '2020-12-04 13:05:13'),
('JINWOO SHIN', 1, 20, 30, 10, 25, 5, '2020-12-04 13:05:22'),
('JINWOO SHIN', 2, 10, 30, 10, 25, 5, '2020-12-04 13:05:22'),
('David Ferreira', 1, 20, 30, 20, 25, 5, '2020-12-04 13:05:22'),
('David Ferreira', 2, 10, 30, 10, 5, 5, '2020-12-04 13:05:22'),
('Leandro Corazza', 1, 20, 30, 20, 25, 5, '2020-12-04 13:05:23'),
('Leandro Corazza', 2, 5, 30, 10, 25, 5, '2020-12-04 13:05:23'),
('Adriano Vanzella', 1, 10, 15, 10, 25, 5, '2020-12-04 13:05:23'),
('Adriano Vanzella', 2, 20, 30, 10, 25, 5, '2020-12-04 13:05:23'),
('Daniel Dolcinotti', 1, 20, 15, 20, 25, 5, '2020-12-04 13:05:27'),
('Daniel Dolcinotti', 2, 20, 30, 20, 25, 5, '2020-12-04 13:05:27'),
('SP300707', 1, 10, 15, 10, 25, 5, '2020-12-04 13:05:28'),
('SP300707', 2, 20, 30, 10, 25, 5, '2020-12-04 13:05:28'),
('Hyun', 1, 10, 30, 10, 25, 5, '2020-12-04 13:05:35'),
('Hyun', 2, 20, 30, 10, 25, 5, '2020-12-04 13:05:35'),
('Dongjung lee', 1, 10, 30, 20, 25, 5, '2020-12-04 13:05:51'),
('Dongjung lee', 2, 20, 30, 20, 25, 5, '2020-12-04 13:05:51'),
('EDNILSON', 1, 20, 30, 20, 25, 5, '2020-12-04 13:05:51'),
('EDNILSON', 2, 10, 30, 20, 25, 5, '2020-12-04 13:05:51'),
('Jorge Corra', 1, 20, 5, 20, 25, 5, '2020-12-04 13:05:56'),
('Jorge Corra', 2, 20, 15, 10, 25, 5, '2020-12-04 13:05:56'),
('Nelson Siqueira', 1, 10, 30, 20, 25, 5, '2020-12-04 13:06:19'),
('Nelson Siqueira', 2, 20, 30, 20, 25, 5, '2020-12-04 13:06:19'),
('daegeunkim', 1, 20, 15, 10, 25, 5, '2020-12-04 13:06:31'),
('daegeunkim', 2, 10, 15, 20, 25, 5, '2020-12-04 13:06:31'),
('thiago.martins', 1, 20, 30, 20, 25, 5, '2020-12-04 13:08:26'),
('thiago.martins', 2, 10, 15, 10, 25, 5, '2020-12-04 13:08:26'),
('Marco Castro', 1, 5, 30, 10, 25, 5, '2020-12-04 13:08:50'),
('Marco Castro', 2, 10, 30, 10, 25, 5, '2020-12-04 13:08:50'),
('Priscila Colla', 1, 20, 15, 20, 25, 5, '2020-12-04 13:09:06'),
('Priscila Colla', 2, 20, 30, 10, 25, 5, '2020-12-04 13:09:06'),
('Antonio', 1, 5, 15, 10, 25, 5, '2020-12-04 13:09:18'),
('Antonio', 2, 10, 30, 20, 25, 5, '2020-12-04 13:09:18'),
('heenam.kim', 1, 10, 30, 20, 25, 5, '2020-12-04 13:12:20'),
('heenam.kim', 2, 5, 15, 20, 25, 5, '2020-12-04 13:12:20'),
('kwang hoon lee', 1, 20, 30, 20, 25, 5, '2020-12-04 13:22:51'),
('kwang hoon lee', 2, 20, 30, 20, 25, 5, '2020-12-04 13:22:51'),
('Douglas', 1, 20, 30, 20, 25, 5, '2020-12-04 13:46:13'),
('Douglas', 2, 20, 30, 20, 25, 5, '2020-12-04 13:46:13'),
('JIN HEE KIM', 1, 20, 30, 20, 25, 5, '2020-12-04 14:49:12'),
('JIN HEE KIM', 2, 10, 15, 20, 25, 5, '2020-12-04 14:49:12'),
('Pablo', 1, 10, 15, 10, 5, 1, '2020-12-04 14:51:54'),
('Pablo', 2, 20, 30, 20, 25, 5, '2020-12-04 14:51:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evaluated_imp`
--

DROP TABLE IF EXISTS `evaluated_imp`;
CREATE TABLE IF NOT EXISTS `evaluated_imp` (
  `evaluator` varchar(100) NOT NULL,
  `imp_id_eva` int(11) NOT NULL,
  `w_theme` varchar(100) NOT NULL,
  `imp_owner_eva` varchar(50) NOT NULL,
  `e1` int(3) NOT NULL,
  `e2` int(3) NOT NULL,
  `e3` int(3) NOT NULL,
  `e4` int(3) NOT NULL,
  `e5` int(3) NOT NULL,
  `evaluation_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `evaluated_imp`
--

INSERT INTO `evaluated_imp` (`evaluator`, `imp_id_eva`, `w_theme`, `imp_owner_eva`, `e1`, `e2`, `e3`, `e4`, `e5`, `evaluation_data`) VALUES
('David Ferreira', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 5, 9, 1, 30, 20, '2020-12-02 19:55:07'),
('David Ferreira', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 9, 3, 21, 20, '2020-12-02 19:56:03'),
('David Ferreira', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 15, 7, 21, 20, '2020-12-02 19:56:42'),
('daegeunkim', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 7, 0, 10, 21, 10, '2020-12-02 21:15:53'),
('daegeunkim', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 0, 3, 3, 30, 6, '2020-12-02 21:17:20'),
('daegeunkim', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 10, 0, 5, 21, 14, '2020-12-02 21:18:19'),
('EDNILSON', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 7, 21, 7, 21, 14, '2020-12-03 11:51:52'),
('EDNILSON', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 21, 7, 21, 14, '2020-12-03 11:52:07'),
('EDNILSON', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 21, 7, 21, 14, '2020-12-03 11:52:19'),
('thiago.martins', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 10, 30, 7, 30, 14, '2020-12-03 11:55:35'),
('Nelson Siqueira', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 30, 10, 30, 20, '2020-12-03 11:55:56'),
('thiago.martins', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 5, 21, 5, 21, 20, '2020-12-03 11:58:03'),
('thiago.martins', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 5, 15, 7, 21, 14, '2020-12-03 11:59:23'),
('Nelson Siqueira', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 7, 21, 10, 21, 14, '2020-12-03 12:27:05'),
('Nelson Siqueira', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 21, 10, 21, 20, '2020-12-03 12:30:09'),
('Marco Castro', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 5, 21, 10, 21, 10, '2020-12-03 13:05:22'),
('Marco Castro', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 10, 21, 10, 21, 20, '2020-12-03 13:10:11'),
('Marco Castro', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 10, 30, 7, 21, 10, '2020-12-03 13:11:43'),
('Dongseok oh', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 7, 30, 7, 15, 14, '2020-12-03 13:26:30'),
('Dongseok oh', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 30, 7, 30, 14, '2020-12-03 13:27:04'),
('Dongseok oh', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 15, 5, 21, 20, '2020-12-03 13:28:48'),
('ThiagoP', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 10, 21, 7, 21, 14, '2020-12-03 14:01:23'),
('ThiagoP', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 10, 30, 10, 30, 20, '2020-12-03 14:02:14'),
('ThiagoP', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 3, 9, 3, 15, 14, '2020-12-03 14:03:43'),
('JIN HEE KIM', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 10, 30, 10, 30, 14, '2020-12-03 16:06:53'),
('JIN HEE KIM', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 10, 21, 10, 21, 20, '2020-12-03 16:07:15'),
('JIN HEE KIM', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 30, 7, 21, 20, '2020-12-03 16:07:29'),
('JINWOO SHIN', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 7, 30, 10, 21, 14, '2020-12-03 16:08:32'),
('JINWOO SHIN', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 10, 21, 7, 30, 14, '2020-12-03 16:09:01'),
('JINWOO SHIN', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 21, 7, 30, 14, '2020-12-03 16:09:22'),
('Jorge Corra', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 5, 15, 10, 21, 14, '2020-12-03 16:19:37'),
('Jorge Corra', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 21, 10, 21, 20, '2020-12-03 16:20:08'),
('Jorge Corra', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 21, 10, 30, 14, '2020-12-03 16:20:23'),
('Antonio', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 5, 9, 10, 15, 6, '2020-12-03 16:31:45'),
('Antonio', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 21, 10, 21, 14, '2020-12-03 16:32:08'),
('Antonio', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 3, 15, 7, 21, 10, '2020-12-03 16:32:27'),
('Hyun', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 10, 21, 10, 30, 10, '2020-12-03 16:53:27'),
('Hyun', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 30, 7, 30, 20, '2020-12-03 16:54:54'),
('Hyun', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 10, 30, 7, 30, 14, '2020-12-03 16:55:23'),
('Daniel Dolcinotti', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 3, 9, 3, 15, 6, '2020-12-03 18:39:33'),
('', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 5, 21, 10, 21, 20, '2020-12-03 18:39:43'),
('Daniel Dolcinotti', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 21, 5, 30, 10, '2020-12-03 18:40:11'),
('tonghyon.kim', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 7, 21, 7, 21, 14, '2020-12-03 18:40:12'),
('tonghyon.kim', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 21, 7, 21, 14, '2020-12-03 18:40:29'),
('tonghyon.kim', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 21, 7, 21, 14, '2020-12-03 18:40:43'),
('Daniel Dolcinotti', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 21, 7, 21, 14, '2020-12-03 18:40:58'),
('Leandro Corazza', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 1, 21, 1, 15, 10, '2020-12-03 18:46:07'),
('Leandro Corazza', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 1, 30, 5, 21, 6, '2020-12-03 18:47:51'),
('Leandro Corazza', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 10, 3, 3, 30, 14, '2020-12-03 18:49:35'),
('', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 7, 21, 7, 21, 14, '2020-12-04 10:42:47'),
('SANG SEOK KIM', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 7, 21, 7, 21, 14, '2020-12-04 10:43:16'),
('SANG SEOK KIM', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 15, 7, 15, 14, '2020-12-04 10:43:59'),
('SANG SEOK KIM', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 15, 7, 15, 14, '2020-12-04 10:44:15'),
('Adriano Vanzella', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 5, 15, 5, 15, 10, '2020-12-04 11:12:38'),
('Adriano Vanzella', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 10, 30, 10, 30, 20, '2020-12-04 11:15:55'),
('Adriano Vanzella', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 15, 10, 30, 14, '2020-12-04 11:16:21'),
('SP300707', 1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', 7, 21, 7, 15, 14, '2020-12-04 12:31:08'),
('SP300707', 2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', 7, 30, 7, 30, 14, '2020-12-04 12:31:41'),
('SP300707', 3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', 7, 21, 7, 15, 14, '2020-12-04 12:32:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evaluated_task`
--

DROP TABLE IF EXISTS `evaluated_task`;
CREATE TABLE IF NOT EXISTS `evaluated_task` (
  `evaluator` varchar(100) NOT NULL,
  `taskid` int(11) NOT NULL,
  `e1` int(3) NOT NULL,
  `e2` int(3) NOT NULL,
  `e3` int(3) NOT NULL,
  `e4` int(3) NOT NULL,
  `e5` int(3) NOT NULL,
  `e6` int(3) NOT NULL,
  `evaluation_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `evaluated_task`
--

INSERT INTO `evaluated_task` (`evaluator`, `taskid`, `e1`, `e2`, `e3`, `e4`, `e5`, `e6`, `evaluation_data`) VALUES
('', 1, 5, 15, 10, 30, 15, 5, '2020-12-04 14:36:56'),
('', 2, 5, 15, 10, 30, 15, 5, '2020-12-04 14:36:56'),
('', 3, 10, 15, 10, 30, 15, 5, '2020-12-04 14:36:56'),
('', 4, 10, 30, 10, 15, 15, 5, '2020-12-04 14:36:56'),
('', 5, 10, 15, 10, 15, 15, 5, '2020-12-04 14:36:56'),
('', 6, 5, 30, 10, 30, 15, 1, '2020-12-04 14:36:56'),
('', 7, 5, 30, 10, 30, 15, 1, '2020-12-04 14:36:56'),
('', 8, 10, 30, 10, 15, 15, 5, '2020-12-04 14:36:56'),
('', 9, 5, 30, 10, 30, 15, 5, '2020-12-04 14:36:56'),
('', 10, 10, 15, 10, 30, 15, 5, '2020-12-04 14:36:56'),
('', 11, 5, 30, 10, 15, 15, 1, '2020-12-04 14:36:56'),
('', 12, 10, 15, 10, 15, 15, 5, '2020-12-04 14:36:56'),
('', 13, 10, 15, 10, 30, 1, 5, '2020-12-04 14:36:56'),
('Nelson Siqueira', 1, 5, 30, 10, 30, 15, 1, '2020-12-04 14:41:48'),
('Nelson Siqueira', 2, 10, 15, 10, 30, 15, 5, '2020-12-04 14:41:48'),
('Nelson Siqueira', 3, 5, 15, 10, 15, 15, 5, '2020-12-04 14:41:48'),
('Nelson Siqueira', 4, 5, 30, 10, 30, 15, 5, '2020-12-04 14:41:48'),
('Nelson Siqueira', 5, 10, 30, 10, 30, 15, 5, '2020-12-04 14:41:48'),
('Nelson Siqueira', 6, 10, 30, 10, 30, 15, 1, '2020-12-04 14:41:48'),
('Nelson Siqueira', 7, 10, 30, 10, 30, 15, 1, '2020-12-04 14:41:48'),
('Nelson Siqueira', 8, 5, 30, 10, 30, 15, 5, '2020-12-04 14:41:48'),
('Nelson Siqueira', 9, 5, 30, 10, 30, 15, 5, '2020-12-04 14:41:48'),
('Nelson Siqueira', 10, 10, 30, 10, 30, 15, 5, '2020-12-04 14:41:48'),
('Nelson Siqueira', 11, 5, 15, 10, 30, 15, 5, '2020-12-04 14:41:48'),
('Nelson Siqueira', 12, 5, 30, 10, 30, 15, 5, '2020-12-04 14:41:48'),
('Nelson Siqueira', 13, 5, 30, 10, 30, 15, 5, '2020-12-04 14:41:48'),
('heenam.kim', 1, 5, 30, 10, 15, 15, 5, '2020-12-04 14:42:02'),
('heenam.kim', 2, 5, 15, 10, 30, 15, 5, '2020-12-04 14:42:02'),
('heenam.kim', 3, 5, 30, 10, 15, 15, 5, '2020-12-04 14:42:02'),
('heenam.kim', 4, 10, 30, 10, 15, 15, 5, '2020-12-04 14:42:02'),
('heenam.kim', 5, 5, 15, 10, 30, 15, 1, '2020-12-04 14:42:02'),
('heenam.kim', 6, 5, 30, 2, 30, 15, 1, '2020-12-04 14:42:02'),
('heenam.kim', 7, 5, 15, 10, 30, 15, 5, '2020-12-04 14:42:02'),
('heenam.kim', 8, 5, 15, 2, 30, 15, 5, '2020-12-04 14:42:02'),
('heenam.kim', 9, 5, 30, 10, 30, 15, 1, '2020-12-04 14:42:02'),
('heenam.kim', 10, 10, 15, 10, 30, 15, 5, '2020-12-04 14:42:02'),
('heenam.kim', 11, 5, 15, 10, 15, 15, 5, '2020-12-04 14:42:02'),
('heenam.kim', 12, 5, 15, 10, 30, 15, 5, '2020-12-04 14:42:02'),
('heenam.kim', 13, 5, 15, 10, 30, 15, 5, '2020-12-04 14:42:02'),
('Douglas', 1, 5, 30, 10, 15, 15, 1, '2020-12-04 14:44:22'),
('Douglas', 2, 10, 30, 10, 30, 15, 5, '2020-12-04 14:44:22'),
('Douglas', 3, 5, 15, 10, 15, 15, 1, '2020-12-04 14:44:22'),
('Douglas', 4, 10, 30, 10, 30, 15, 5, '2020-12-04 14:44:22'),
('Douglas', 5, 10, 30, 10, 15, 15, 5, '2020-12-04 14:44:22'),
('Douglas', 6, 10, 30, 10, 30, 15, 1, '2020-12-04 14:44:22'),
('Douglas', 7, 10, 15, 10, 30, 15, 1, '2020-12-04 14:44:22'),
('Douglas', 8, 10, 30, 10, 30, 15, 5, '2020-12-04 14:44:22'),
('Douglas', 9, 10, 15, 10, 30, 15, 5, '2020-12-04 14:44:22'),
('Douglas', 10, 10, 15, 10, 30, 15, 5, '2020-12-04 14:44:22'),
('Douglas', 11, 10, 30, 10, 30, 15, 1, '2020-12-04 14:44:22'),
('Douglas', 12, 10, 15, 10, 30, 15, 5, '2020-12-04 14:44:22'),
('Douglas', 13, 10, 30, 10, 30, 15, 1, '2020-12-04 14:44:22'),
('SANG SEOK KIM', 1, 5, 15, 10, 15, 15, 1, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 2, 10, 30, 10, 30, 15, 5, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 3, 5, 15, 10, 15, 15, 5, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 4, 5, 15, 10, 15, 15, 5, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 5, 10, 15, 10, 15, 15, 1, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 6, 10, 30, 10, 30, 15, 1, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 7, 10, 15, 10, 15, 15, 5, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 8, 10, 30, 10, 30, 15, 5, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 9, 10, 15, 10, 15, 15, 1, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 10, 10, 15, 10, 30, 15, 5, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 11, 10, 15, 10, 15, 15, 1, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 12, 5, 15, 10, 15, 15, 5, '2020-12-04 14:44:26'),
('SANG SEOK KIM', 13, 10, 15, 10, 30, 15, 1, '2020-12-04 14:44:26'),
('daegeunkim', 1, 10, 15, 10, 15, 15, 1, '2020-12-04 14:44:39'),
('daegeunkim', 2, 10, 15, 10, 15, 15, 5, '2020-12-04 14:44:39'),
('daegeunkim', 3, 5, 15, 10, 15, 1, 1, '2020-12-04 14:44:39'),
('daegeunkim', 4, 5, 15, 10, 15, 15, 5, '2020-12-04 14:44:39'),
('daegeunkim', 5, 10, 15, 10, 30, 15, 5, '2020-12-04 14:44:39'),
('daegeunkim', 6, 10, 30, 2, 15, 1, 1, '2020-12-04 14:44:39'),
('daegeunkim', 7, 10, 15, 10, 15, 15, 1, '2020-12-04 14:44:39'),
('daegeunkim', 8, 5, 15, 2, 15, 15, 5, '2020-12-04 14:44:39'),
('daegeunkim', 9, 5, 15, 10, 5, 15, 5, '2020-12-04 14:44:39'),
('daegeunkim', 10, 5, 5, 2, 15, 15, 5, '2020-12-04 14:44:39'),
('daegeunkim', 11, 5, 5, 10, 15, 1, 1, '2020-12-04 14:44:39'),
('daegeunkim', 12, 5, 5, 2, 15, 15, 5, '2020-12-04 14:44:39'),
('daegeunkim', 13, 10, 15, 10, 30, 15, 1, '2020-12-04 14:44:39'),
('David Ferreira', 1, 5, 15, 10, 30, 15, 1, '2020-12-04 14:45:05'),
('David Ferreira', 2, 5, 15, 10, 15, 15, 5, '2020-12-04 14:45:05'),
('David Ferreira', 3, 5, 15, 10, 15, 15, 1, '2020-12-04 14:45:05'),
('David Ferreira', 4, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:05'),
('David Ferreira', 5, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:05'),
('David Ferreira', 6, 5, 15, 10, 30, 15, 5, '2020-12-04 14:45:05'),
('David Ferreira', 7, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:05'),
('David Ferreira', 8, 5, 15, 10, 30, 15, 5, '2020-12-04 14:45:05'),
('David Ferreira', 9, 10, 30, 10, 15, 15, 5, '2020-12-04 14:45:05'),
('David Ferreira', 10, 5, 15, 10, 15, 15, 5, '2020-12-04 14:45:05'),
('David Ferreira', 11, 5, 15, 10, 30, 15, 5, '2020-12-04 14:45:05'),
('David Ferreira', 12, 5, 15, 10, 30, 15, 5, '2020-12-04 14:45:05'),
('David Ferreira', 13, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:05'),
('Dongjung lee', 1, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:06'),
('Dongjung lee', 2, 5, 30, 10, 30, 15, 5, '2020-12-04 14:45:06'),
('Dongjung lee', 3, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:06'),
('Dongjung lee', 4, 10, 15, 10, 30, 15, 5, '2020-12-04 14:45:06'),
('Dongjung lee', 5, 10, 15, 2, 30, 15, 5, '2020-12-04 14:45:06'),
('Dongjung lee', 6, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:06'),
('Dongjung lee', 7, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:06'),
('Dongjung lee', 8, 10, 15, 10, 30, 15, 5, '2020-12-04 14:45:06'),
('Dongjung lee', 9, 5, 30, 10, 30, 15, 5, '2020-12-04 14:45:06'),
('Dongjung lee', 10, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:06'),
('Dongjung lee', 11, 5, 30, 10, 30, 15, 5, '2020-12-04 14:45:06'),
('Dongjung lee', 12, 5, 30, 10, 30, 15, 5, '2020-12-04 14:45:06'),
('Dongjung lee', 13, 5, 30, 10, 30, 15, 5, '2020-12-04 14:45:06'),
('Daniel Dolcinotti', 1, 5, 15, 10, 15, 15, 1, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 2, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 3, 10, 15, 10, 5, 15, 1, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 4, 10, 15, 10, 30, 15, 5, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 5, 5, 15, 10, 15, 15, 1, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 6, 10, 15, 10, 30, 15, 1, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 7, 10, 15, 10, 15, 15, 1, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 8, 10, 30, 10, 15, 15, 5, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 9, 10, 15, 10, 30, 15, 5, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 10, 10, 15, 10, 30, 15, 5, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 11, 10, 15, 10, 30, 15, 1, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 12, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:17'),
('Daniel Dolcinotti', 13, 10, 30, 10, 15, 15, 1, '2020-12-04 14:45:17'),
('Leandro Corazza', 1, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:23'),
('Leandro Corazza', 2, 5, 15, 10, 30, 1, 5, '2020-12-04 14:45:23'),
('Leandro Corazza', 3, 5, 15, 10, 30, 15, 1, '2020-12-04 14:45:23'),
('Leandro Corazza', 4, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:23'),
('Leandro Corazza', 5, 10, 30, 10, 15, 15, 5, '2020-12-04 14:45:23'),
('Leandro Corazza', 6, 10, 30, 10, 30, 1, 1, '2020-12-04 14:45:23'),
('Leandro Corazza', 7, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:23'),
('Leandro Corazza', 8, 10, 30, 10, 15, 1, 5, '2020-12-04 14:45:23'),
('Leandro Corazza', 9, 5, 15, 10, 30, 15, 5, '2020-12-04 14:45:23'),
('Leandro Corazza', 10, 5, 30, 10, 30, 15, 5, '2020-12-04 14:45:23'),
('Leandro Corazza', 11, 10, 30, 10, 30, 1, 1, '2020-12-04 14:45:23'),
('Leandro Corazza', 12, 10, 15, 10, 30, 15, 5, '2020-12-04 14:45:23'),
('Leandro Corazza', 13, 10, 15, 10, 30, 1, 1, '2020-12-04 14:45:23'),
('Adriano Vanzella', 1, 10, 15, 10, 15, 15, 1, '2020-12-04 14:45:28'),
('Adriano Vanzella', 2, 5, 15, 10, 15, 15, 1, '2020-12-04 14:45:28'),
('Adriano Vanzella', 3, 2, 5, 10, 15, 15, 5, '2020-12-04 14:45:28'),
('Adriano Vanzella', 4, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:28'),
('Adriano Vanzella', 5, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:28'),
('Adriano Vanzella', 6, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:28'),
('Adriano Vanzella', 7, 10, 30, 10, 15, 15, 1, '2020-12-04 14:45:28'),
('Adriano Vanzella', 8, 5, 15, 10, 5, 15, 5, '2020-12-04 14:45:28'),
('Adriano Vanzella', 9, 5, 15, 10, 15, 15, 5, '2020-12-04 14:45:28'),
('Adriano Vanzella', 10, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:28'),
('Adriano Vanzella', 11, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:28'),
('Adriano Vanzella', 12, 10, 15, 10, 30, 15, 5, '2020-12-04 14:45:28'),
('Adriano Vanzella', 13, 10, 15, 10, 30, 15, 5, '2020-12-04 14:45:28'),
('Dongseok oh', 1, 5, 30, 10, 15, 15, 1, '2020-12-04 14:45:31'),
('Dongseok oh', 2, 10, 30, 10, 15, 15, 5, '2020-12-04 14:45:31'),
('Dongseok oh', 3, 5, 30, 2, 15, 15, 1, '2020-12-04 14:45:31'),
('Dongseok oh', 4, 5, 15, 10, 15, 15, 1, '2020-12-04 14:45:31'),
('Dongseok oh', 5, 10, 30, 10, 15, 15, 5, '2020-12-04 14:45:31'),
('Dongseok oh', 6, 5, 30, 10, 15, 15, 1, '2020-12-04 14:45:31'),
('Dongseok oh', 7, 10, 15, 10, 30, 15, 1, '2020-12-04 14:45:31'),
('Dongseok oh', 8, 5, 30, 10, 15, 15, 5, '2020-12-04 14:45:31'),
('Dongseok oh', 9, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:31'),
('Dongseok oh', 10, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:31'),
('Dongseok oh', 11, 2, 15, 2, 15, 15, 5, '2020-12-04 14:45:31'),
('Dongseok oh', 12, 10, 30, 10, 15, 15, 5, '2020-12-04 14:45:31'),
('Dongseok oh', 13, 10, 30, 10, 15, 15, 5, '2020-12-04 14:45:31'),
('SP300707', 1, 10, 30, 10, 15, 1, 1, '2020-12-04 14:45:36'),
('SP300707', 2, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:36'),
('SP300707', 3, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:36'),
('SP300707', 4, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:36'),
('SP300707', 5, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:36'),
('SP300707', 6, 10, 30, 10, 30, 15, 1, '2020-12-04 14:45:36'),
('SP300707', 7, 10, 30, 10, 15, 15, 1, '2020-12-04 14:45:36'),
('SP300707', 8, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:36'),
('SP300707', 9, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:36'),
('SP300707', 10, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:36'),
('SP300707', 11, 10, 30, 10, 15, 15, 1, '2020-12-04 14:45:36'),
('SP300707', 12, 10, 30, 10, 15, 15, 5, '2020-12-04 14:45:36'),
('SP300707', 13, 10, 30, 10, 15, 15, 1, '2020-12-04 14:45:36'),
('Antonio', 1, 5, 15, 10, 15, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 2, 5, 15, 10, 15, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 3, 5, 30, 10, 15, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 4, 10, 30, 10, 15, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 5, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 6, 10, 30, 10, 15, 15, 1, '2020-12-04 14:45:42'),
('Antonio', 7, 5, 15, 10, 15, 15, 1, '2020-12-04 14:45:42'),
('Antonio', 8, 5, 15, 10, 15, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 9, 5, 15, 10, 15, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 10, 5, 30, 10, 30, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 11, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 12, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:42'),
('Antonio', 13, 10, 15, 10, 15, 15, 5, '2020-12-04 14:45:42'),
('Hyun', 1, 5, 5, 10, 5, 15, 1, '2020-12-04 14:45:46'),
('Hyun', 2, 10, 15, 2, 15, 1, 5, '2020-12-04 14:45:46'),
('Hyun', 3, 5, 5, 10, 5, 1, 1, '2020-12-04 14:45:46'),
('Hyun', 4, 5, 15, 10, 5, 15, 5, '2020-12-04 14:45:46'),
('Hyun', 5, 5, 5, 10, 5, 15, 1, '2020-12-04 14:45:46'),
('Hyun', 6, 2, 30, 2, 30, 15, 1, '2020-12-04 14:45:46'),
('Hyun', 7, 5, 5, 10, 5, 15, 1, '2020-12-04 14:45:46'),
('Hyun', 8, 10, 15, 2, 15, 1, 5, '2020-12-04 14:45:46'),
('Hyun', 9, 5, 5, 10, 5, 15, 5, '2020-12-04 14:45:46'),
('Hyun', 10, 5, 5, 10, 5, 15, 5, '2020-12-04 14:45:46'),
('Hyun', 11, 10, 5, 2, 15, 15, 1, '2020-12-04 14:45:46'),
('Hyun', 12, 5, 5, 10, 5, 15, 5, '2020-12-04 14:45:46'),
('Hyun', 13, 5, 5, 10, 5, 15, 1, '2020-12-04 14:45:46'),
('EDNILSON', 1, 2, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 2, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 3, 2, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 4, 2, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 5, 2, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 6, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 7, 2, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 8, 10, 30, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 9, 2, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 10, 5, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 11, 5, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 12, 5, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('EDNILSON', 13, 5, 15, 10, 30, 15, 5, '2020-12-04 14:45:53'),
('ThiagoP', 1, 5, 5, 10, 15, 15, 1, '2020-12-04 14:46:04'),
('ThiagoP', 2, 10, 15, 10, 5, 1, 5, '2020-12-04 14:46:04'),
('ThiagoP', 3, 10, 15, 10, 5, 15, 1, '2020-12-04 14:46:04'),
('ThiagoP', 4, 5, 5, 10, 15, 15, 5, '2020-12-04 14:46:04'),
('ThiagoP', 5, 10, 30, 10, 30, 15, 5, '2020-12-04 14:46:04'),
('ThiagoP', 6, 10, 15, 10, 15, 1, 1, '2020-12-04 14:46:04'),
('ThiagoP', 7, 10, 5, 10, 15, 1, 1, '2020-12-04 14:46:04'),
('ThiagoP', 8, 10, 30, 10, 15, 1, 5, '2020-12-04 14:46:04'),
('ThiagoP', 9, 5, 15, 10, 15, 1, 5, '2020-12-04 14:46:04'),
('ThiagoP', 10, 10, 30, 10, 30, 15, 5, '2020-12-04 14:46:04'),
('ThiagoP', 11, 10, 15, 2, 15, 15, 1, '2020-12-04 14:46:04'),
('ThiagoP', 12, 10, 30, 10, 30, 15, 5, '2020-12-04 14:46:04'),
('ThiagoP', 13, 10, 30, 10, 30, 15, 1, '2020-12-04 14:46:05'),
('thiago.martins', 1, 5, 15, 10, 15, 15, 1, '2020-12-04 14:46:33'),
('thiago.martins', 2, 10, 30, 10, 30, 15, 5, '2020-12-04 14:46:33'),
('thiago.martins', 3, 10, 15, 10, 15, 15, 1, '2020-12-04 14:46:33'),
('thiago.martins', 4, 10, 30, 10, 15, 15, 5, '2020-12-04 14:46:33'),
('thiago.martins', 5, 5, 30, 10, 15, 15, 5, '2020-12-04 14:46:33'),
('thiago.martins', 6, 5, 30, 10, 15, 15, 1, '2020-12-04 14:46:33'),
('thiago.martins', 7, 10, 30, 10, 15, 15, 1, '2020-12-04 14:46:33'),
('thiago.martins', 8, 10, 30, 10, 30, 15, 5, '2020-12-04 14:46:33'),
('thiago.martins', 9, 5, 30, 10, 15, 15, 1, '2020-12-04 14:46:33'),
('thiago.martins', 10, 5, 30, 10, 30, 15, 5, '2020-12-04 14:46:33'),
('thiago.martins', 11, 10, 15, 10, 30, 15, 1, '2020-12-04 14:46:33'),
('thiago.martins', 12, 5, 15, 10, 15, 15, 5, '2020-12-04 14:46:33'),
('thiago.martins', 13, 10, 30, 10, 15, 15, 1, '2020-12-04 14:46:33'),
('Jorge Corra', 1, 5, 15, 2, 15, 1, 1, '2020-12-04 14:46:53'),
('Jorge Corra', 2, 10, 30, 10, 30, 15, 1, '2020-12-04 14:46:53'),
('Jorge Corra', 3, 10, 15, 2, 15, 1, 1, '2020-12-04 14:46:53'),
('Jorge Corra', 4, 10, 15, 10, 30, 15, 5, '2020-12-04 14:46:53'),
('Jorge Corra', 5, 10, 30, 2, 15, 1, 1, '2020-12-04 14:46:53'),
('Jorge Corra', 6, 10, 30, 10, 5, 15, 1, '2020-12-04 14:46:53'),
('Jorge Corra', 7, 10, 15, 10, 30, 15, 1, '2020-12-04 14:46:53'),
('Jorge Corra', 8, 10, 15, 10, 15, 15, 5, '2020-12-04 14:46:53'),
('Jorge Corra', 9, 10, 15, 10, 30, 15, 5, '2020-12-04 14:46:53'),
('Jorge Corra', 10, 5, 5, 10, 15, 1, 5, '2020-12-04 14:46:53'),
('Jorge Corra', 11, 10, 15, 2, 15, 1, 5, '2020-12-04 14:46:53'),
('Jorge Corra', 12, 10, 15, 10, 30, 15, 1, '2020-12-04 14:46:53'),
('Jorge Corra', 13, 10, 15, 10, 30, 15, 1, '2020-12-04 14:46:53'),
('JIN HEE KIM', 1, 5, 15, 10, 15, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 2, 10, 30, 10, 30, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 3, 5, 15, 10, 15, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 4, 5, 15, 10, 15, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 5, 5, 15, 10, 15, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 6, 10, 30, 10, 30, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 7, 5, 15, 10, 15, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 8, 10, 30, 10, 30, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 9, 10, 30, 10, 30, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 10, 5, 15, 10, 15, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 11, 5, 15, 10, 15, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 12, 10, 30, 10, 30, 15, 5, '2020-12-04 14:48:05'),
('JIN HEE KIM', 13, 5, 15, 10, 15, 15, 5, '2020-12-04 14:48:05'),
('JINWOO SHIN', 1, 10, 15, 2, 30, 15, 5, '2020-12-04 14:49:40'),
('JINWOO SHIN', 2, 10, 15, 10, 30, 15, 5, '2020-12-04 14:49:40'),
('JINWOO SHIN', 3, 10, 15, 10, 30, 15, 5, '2020-12-04 14:49:40'),
('JINWOO SHIN', 4, 5, 30, 10, 30, 15, 1, '2020-12-04 14:49:40'),
('JINWOO SHIN', 5, 10, 30, 2, 30, 15, 1, '2020-12-04 14:49:40'),
('JINWOO SHIN', 6, 10, 30, 10, 15, 15, 1, '2020-12-04 14:49:40'),
('JINWOO SHIN', 7, 10, 30, 2, 30, 15, 1, '2020-12-04 14:49:40'),
('JINWOO SHIN', 8, 10, 30, 2, 15, 15, 5, '2020-12-04 14:49:40'),
('JINWOO SHIN', 9, 10, 15, 2, 30, 15, 5, '2020-12-04 14:49:40'),
('JINWOO SHIN', 10, 10, 15, 2, 30, 15, 5, '2020-12-04 14:49:40'),
('JINWOO SHIN', 11, 5, 30, 2, 30, 15, 5, '2020-12-04 14:49:40'),
('JINWOO SHIN', 12, 5, 30, 10, 30, 15, 5, '2020-12-04 14:49:40'),
('JINWOO SHIN', 13, 10, 30, 2, 30, 15, 1, '2020-12-04 14:49:40'),
('Marco Castro', 1, 10, 15, 10, 15, 15, 1, '2020-12-04 14:50:21'),
('Marco Castro', 2, 5, 5, 10, 15, 15, 1, '2020-12-04 14:50:21'),
('Marco Castro', 3, 5, 5, 10, 15, 15, 1, '2020-12-04 14:50:21'),
('Marco Castro', 4, 10, 15, 10, 15, 15, 5, '2020-12-04 14:50:21'),
('Marco Castro', 5, 10, 15, 10, 30, 15, 5, '2020-12-04 14:50:21'),
('Marco Castro', 6, 2, 5, 10, 15, 15, 1, '2020-12-04 14:50:21'),
('Marco Castro', 7, 5, 5, 10, 30, 15, 1, '2020-12-04 14:50:21'),
('Marco Castro', 8, 5, 15, 10, 5, 15, 5, '2020-12-04 14:50:21'),
('Marco Castro', 9, 5, 15, 10, 15, 15, 5, '2020-12-04 14:50:21'),
('Marco Castro', 10, 5, 15, 10, 15, 15, 5, '2020-12-04 14:50:21'),
('Marco Castro', 11, 10, 30, 10, 15, 15, 1, '2020-12-04 14:50:21'),
('Marco Castro', 12, 10, 5, 2, 30, 15, 5, '2020-12-04 14:50:21'),
('Marco Castro', 13, 5, 30, 10, 15, 15, 1, '2020-12-04 14:50:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evaluators`
--

DROP TABLE IF EXISTS `evaluators`;
CREATE TABLE IF NOT EXISTS `evaluators` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `class` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `idt_eva_by_evaluator`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `idt_eva_by_evaluator`;
CREATE TABLE IF NOT EXISTS `idt_eva_by_evaluator` (
`evaluator` varchar(100)
,`theme` varchar(50)
,`leader` varchar(50)
,`taskid` int(11)
,`e1` bigint(12)
,`e2` decimal(12,0)
,`e3` bigint(12)
,`e4` bigint(12)
,`e5` bigint(13)
,`score` decimal(17,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `idt_eva_result`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `idt_eva_result`;
CREATE TABLE IF NOT EXISTS `idt_eva_result` (
`theme` varchar(50)
,`leader` varchar(50)
,`taskid` int(11)
,`e1` decimal(12,0)
,`e2` decimal(12,0)
,`e3` decimal(12,0)
,`e4` decimal(12,0)
,`e5` decimal(13,0)
,`score` decimal(16,0)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imp_evalueted`
--

DROP TABLE IF EXISTS `imp_evalueted`;
CREATE TABLE IF NOT EXISTS `imp_evalueted` (
  `imp_id` int(11) NOT NULL,
  `imp_evaluator` varchar(100) NOT NULL,
  `imp_e1` int(3) NOT NULL,
  `imp_e2` int(3) NOT NULL,
  `imp_e3` int(3) NOT NULL,
  `imp_e4` int(3) NOT NULL,
  `imp_e5` int(3) NOT NULL,
  `imp_eva_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `imp_eva_by_evaluators`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `imp_eva_by_evaluators`;
CREATE TABLE IF NOT EXISTS `imp_eva_by_evaluators` (
`evaluators` varchar(100)
,`imp_id` int(11)
,`e1` int(3)
,`e2` int(3)
,`e3` int(3)
,`e4` int(3)
,`e5` int(3)
,`evaluation_data` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `imp_eva_rate`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `imp_eva_rate`;
CREATE TABLE IF NOT EXISTS `imp_eva_rate` (
`evaluators` varchar(100)
,`total` bigint(21)
,`rate` decimal(24,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `imp_eva_result`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `imp_eva_result`;
CREATE TABLE IF NOT EXISTS `imp_eva_result` (
`imp_id_eva` int(11)
,`W_theme` varchar(100)
,`imp_owner_eva` varchar(50)
,`e1` decimal(13,0)
,`e2` decimal(12,0)
,`e3` decimal(13,0)
,`e4` decimal(12,0)
,`e5` decimal(12,0)
,`avg_tt` decimal(19,2)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_commentmeta`
--

DROP TABLE IF EXISTS `inn_commentmeta`;
CREATE TABLE IF NOT EXISTS `inn_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_comments`
--

DROP TABLE IF EXISTS `inn_comments`;
CREATE TABLE IF NOT EXISTS `inn_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_idt`
--

DROP TABLE IF EXISTS `inn_idt`;
CREATE TABLE IF NOT EXISTS `inn_idt` (
  `id_task` int(11) NOT NULL AUTO_INCREMENT,
  `cesar_control` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KPI` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before_` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_data` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_data` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'finished',
  `registration_date` timestamp NULL DEFAULT CURRENT_timestamp,
  `divi` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leader` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_idt`
--

INSERT INTO `inn_idt` (`id_task`, `cesar_control`, `theme`, `KPI`, `before_`, `target`, `start_data`, `finish_date`, `status`, `status_data`, `registration_date`, `divi`, `leader`, `user_id`) VALUES
(1, NULL, 'IDT IT', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, 'finished', '2020-12-04 10:56:58.900943', 'IT', 'Flavio Barros', NULL),
(2, NULL, 'IDT MC', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, 'finished', '2020-12-04 10:57:34.666326', 'MC', 'Guilherme Barreto', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_links`
--

DROP TABLE IF EXISTS `inn_links`;
CREATE TABLE IF NOT EXISTS `inn_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_options`
--

DROP TABLE IF EXISTS `inn_options`;
CREATE TABLE IF NOT EXISTS `inn_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_options`
--

INSERT INTO `inn_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://inovacao/innovation', 'yes'),
(2, 'home', 'http://inovacao/innovation', 'yes'),
(3, 'blogname', 'LGESP Innovation Part', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'binhotto1978@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:23:\"elementor/elementor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:70:\"C:\\xampp\\htdocs\\Innovation/wp-content/themes/twentynineteen/footer.php\";i:2;s:69:\"C:\\xampp\\htdocs\\Innovation/wp-content/themes/twentynineteen/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'twentynineteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:23:\"Elementor/elementor.php\";a:2:{i:0;s:21:\"Elementor\\Maintenance\";i:1;s:9:\"uninstall\";}s:23:\"elementor/elementor.php\";a:2:{i:0;s:21:\"Elementor\\Maintenance\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '28', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'inn_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:12:\"categories-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:8:{i:1572548886;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572548913;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572548930;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572611008;a:1:{s:28:\"elementor/tracker/send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582114085;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582139285;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1582139286;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"last_checked\";i:1582113419;}', 'no'),
(115, 'theme_mods_twentynineteen', 'a:5:{s:18:\"custom_css_post_id\";i:-1;s:13:\"primary_color\";s:6:\"custom\";s:17:\"primary_color_hue\";i:144;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1571917698;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";}}}s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:5;}}', 'yes'),
(116, '_site_transient_update_plugins', 'O:8:\"stdClass\":2:{s:12:\"last_checked\";i:1582113398;s:8:\"response\";N;}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1572526466;}', 'no'),
(120, 'can_compress_scripts', '1', 'no'),
(123, 'recently_activated', 'a:1:{s:28:\"epoll-wp-voting/it-epoll.php\";i:1571919345;}', 'yes'),
(126, 'wpforms_version', '1.5.5.1', 'yes'),
(127, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1571858074;}', 'yes'),
(130, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(131, '_amn_wpforms-lite_to_check', '1572580836', 'yes'),
(132, 'wpforms_review', 'a:2:{s:4:\"time\";i:1571858075;s:9:\"dismissed\";b:0;}', 'yes'),
(135, 'elementor_version', '2.7.4', 'yes'),
(137, '_elementor_installed_time', '1571859142', 'yes'),
(142, 'elementor_scheme_color', 'a:4:{i:1;s:7:\"#6ec1e4\";i:2;s:7:\"#54595f\";i:3;s:7:\"#7a7a7a\";i:4;s:7:\"#61ce70\";}', 'yes'),
(143, 'elementor_scheme_typography', 'a:4:{i:1;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"600\";}i:2;a:2:{s:11:\"font_family\";s:11:\"Roboto Slab\";s:11:\"font_weight\";s:3:\"400\";}i:3;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"400\";}i:4;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"500\";}}', 'yes'),
(144, 'elementor_scheme_color-picker', 'a:8:{i:1;s:7:\"#6ec1e4\";i:2;s:7:\"#54595f\";i:3;s:7:\"#7a7a7a\";i:4;s:7:\"#61ce70\";i:5;s:7:\"#4054b2\";i:6;s:7:\"#23a455\";i:7;s:4:\"#000\";i:8;s:4:\"#fff\";}', 'yes'),
(148, 'recovery_mode_email_last_sent', '1571916028', 'yes'),
(149, '_amn_wpforms_to_check', '1572274183', 'yes'),
(165, 'current_theme', 'Twenty Nineteen', 'yes'),
(166, 'theme_mods_vw-school-education', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:31:\"vw_school_education_footer_text\";s:0:\"\";s:36:\"vw_school_education_hide_show_scroll\";i:1;s:32:\"vw_school_education_second_color\";s:7:\"#720026\";s:12:\"header_image\";s:13:\"remove-header\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1571918710;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:11:\"social-icon\";a:0:{}}}}', 'yes'),
(167, 'theme_switched', '', 'yes'),
(168, 'widget_vw_school_education_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(169, 'elementor_controls_usage', 'a:1:{s:7:\"wp-post\";a:4:{s:7:\"heading\";a:2:{s:5:\"count\";i:1;s:8:\"controls\";a:2:{s:7:\"content\";a:1:{s:13:\"section_title\";a:2:{s:5:\"title\";i:1;s:11:\"header_size\";i:1;}}s:5:\"style\";a:1:{s:19:\"section_title_style\";a:1:{s:11:\"title_color\";i:1;}}}}s:6:\"column\";a:2:{s:5:\"count\";i:2;s:8:\"controls\";a:0:{}}s:7:\"section\";a:2:{s:5:\"count\";i:2;s:8:\"controls\";a:0:{}}s:8:\"progress\";a:2:{s:5:\"count\";i:5;s:8:\"controls\";a:2:{s:7:\"content\";a:1:{s:16:\"section_progress\";a:4:{s:5:\"title\";i:5;s:13:\"progress_type\";i:5;s:7:\"percent\";i:4;s:10:\"inner_text\";i:5;}}s:5:\"style\";a:2:{s:22:\"section_progress_style\";a:6:{s:9:\"bar_color\";i:5;s:12:\"bar_bg_color\";i:5;s:16:\"bar_inline_color\";i:5;s:31:\"bar_inner_typography_typography\";i:5;s:32:\"bar_inner_typography_font_family\";i:5;s:30:\"bar_inner_typography_font_size\";i:5;}s:13:\"section_title\";a:4:{s:11:\"title_color\";i:5;s:21:\"typography_typography\";i:5;s:22:\"typography_font_family\";i:5;s:20:\"typography_font_size\";i:5;}}}}}}', 'no'),
(172, 'widget_it_epoll_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'category_children', 'a:0:{}', 'yes'),
(182, '_elementor_global_css', 'a:5:{s:4:\"time\";i:1571919934;s:5:\"fonts\";a:2:{i:0;s:6:\"Roboto\";i:4;s:11:\"Roboto Slab\";}s:5:\"icons\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;b:0;}', 'yes'),
(190, 'elementor_clear_cache', '', 'yes'),
(191, 'elementor_reset_api_data', '', 'yes'),
(192, 'elementor_safe_mode', '', 'yes'),
(193, 'elementor_enable_inspector', 'enable', 'yes'),
(194, 'elementor_replace_url', '', 'yes'),
(195, 'elementor_rollback', '', 'yes'),
(196, 'elementor_beta', 'no', 'yes'),
(197, 'elementor_maintenance_mode_mode', '', 'yes'),
(198, 'elementor_maintenance_mode_exclude_mode', 'logged_in', 'yes'),
(199, 'elementor_maintenance_mode_exclude_roles', 'a:0:{}', 'yes'),
(200, 'elementor_maintenance_mode_template_id', '', 'yes'),
(212, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(270, '_transient_doing_cron', '1582113394.5815899372100830078125', 'yes'),
(271, '_site_transient_timeout_theme_roots', '1572528266', 'no'),
(272, '_site_transient_theme_roots', 'a:5:{s:10:\"innovation\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:19:\"vw-school-education\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_postmeta`
--

DROP TABLE IF EXISTS `inn_postmeta`;
CREATE TABLE IF NOT EXISTS `inn_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_postmeta`
--

INSERT INTO `inn_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1571859072'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1571859072'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(10, 9, '_elementor_edit_mode', 'builder'),
(11, 9, '_elementor_template_type', 'wp-post'),
(12, 10, '_elementor_edit_mode', 'builder'),
(13, 10, '_elementor_template_type', 'post'),
(14, 9, '_elementor_version', '2.7.4'),
(15, 9, '_edit_lock', '1571919374:1'),
(16, 9, '_wp_page_template', 'default'),
(17, 9, '_elementor_data', '[]'),
(18, 11, '_wp_trash_meta_status', 'publish'),
(19, 11, '_wp_trash_meta_time', '1571916397'),
(20, 12, '_edit_lock', '1571916450:1'),
(21, 12, '_wp_trash_meta_status', 'publish'),
(22, 12, '_wp_trash_meta_time', '1571916462'),
(33, 14, '_edit_lock', '1571918639:1'),
(34, 15, '_wp_attached_file', '2019/10/Imagem1.png'),
(35, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:131;s:4:\"file\";s:19:\"2019/10/Imagem1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Imagem1-150x131.png\";s:5:\"width\";i:150;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Imagem1-300x131.png\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:19:\"Imagem1-240x131.png\";s:5:\"width\";i:240;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 16, '_wp_attached_file', '2019/10/creative.jpg'),
(39, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:219;s:6:\"height\";i:88;s:4:\"file\";s:20:\"2019/10/creative.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"creative-150x88.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 17, '_wp_attached_file', '2019/10/cropped-creative.jpg'),
(41, 17, '_wp_attachment_context', 'custom-header'),
(42, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:28:\"2019/10/cropped-creative.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-creative-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-creative-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-creative-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-creative-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:28:\"cropped-creative-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:16;}'),
(45, 18, '_wp_attached_file', '2019/10/baner.png'),
(46, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1629;s:6:\"height\";i:264;s:4:\"file\";s:17:\"2019/10/baner.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"baner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"baner-300x49.png\";s:5:\"width\";i:300;s:6:\"height\";i:49;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"baner-768x124.png\";s:5:\"width\";i:768;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"baner-1024x166.png\";s:5:\"width\";i:1024;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:17:\"baner-240x145.png\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 19, '_wp_attached_file', '2019/10/baner-1.png'),
(48, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1053;s:6:\"height\";i:217;s:4:\"file\";s:19:\"2019/10/baner-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"baner-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"baner-1-300x62.png\";s:5:\"width\";i:300;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"baner-1-768x158.png\";s:5:\"width\";i:768;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"baner-1-1024x211.png\";s:5:\"width\";i:1024;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:19:\"baner-1-240x145.png\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 20, '_wp_attached_file', '2019/10/baner-2.png'),
(50, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:888;s:6:\"height\";i:217;s:4:\"file\";s:19:\"2019/10/baner-2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"baner-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"baner-2-300x73.png\";s:5:\"width\";i:300;s:6:\"height\";i:73;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"baner-2-768x188.png\";s:5:\"width\";i:768;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:19:\"baner-2-240x145.png\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 21, '_wp_attached_file', '2019/10/cropped-baner-2.png'),
(52, 21, '_wp_attachment_context', 'custom-header'),
(53, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:27:\"2019/10/cropped-baner-2.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-baner-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-baner-2-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cropped-baner-2-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cropped-baner-2-1024x256.png\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:27:\"cropped-baner-2-240x145.png\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:20;}'),
(56, 22, '_wp_attached_file', '2019/10/baner-3.png'),
(57, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:888;s:6:\"height\";i:217;s:4:\"file\";s:19:\"2019/10/baner-3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"baner-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"baner-3-300x73.png\";s:5:\"width\";i:300;s:6:\"height\";i:73;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"baner-3-768x188.png\";s:5:\"width\";i:768;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:19:\"baner-3-240x145.png\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 23, '_wp_attached_file', '2019/10/cropped-baner-3.png'),
(59, 23, '_wp_attachment_context', 'custom-header'),
(60, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:27:\"2019/10/cropped-baner-3.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-baner-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-baner-3-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cropped-baner-3-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cropped-baner-3-1024x256.png\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:27:\"cropped-baner-3-240x145.png\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:22;}'),
(63, 24, '_wp_attached_file', '2019/10/creative-1.jpg'),
(64, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:219;s:6:\"height\";i:88;s:4:\"file\";s:22:\"2019/10/creative-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"creative-1-150x88.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 25, '_wp_attached_file', '2019/10/cropped-creative-1.jpg'),
(66, 25, '_wp_attachment_context', 'custom-header'),
(67, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:30:\"2019/10/cropped-creative-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-creative-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-creative-1-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-creative-1-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cropped-creative-1-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:30:\"cropped-creative-1-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:24;}'),
(70, 26, '_wp_attached_file', '2019/10/baner-4.png'),
(71, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:888;s:6:\"height\";i:217;s:4:\"file\";s:19:\"2019/10/baner-4.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"baner-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"baner-4-300x73.png\";s:5:\"width\";i:300;s:6:\"height\";i:73;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"baner-4-768x188.png\";s:5:\"width\";i:768;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:19:\"baner-4-240x145.png\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 27, '_wp_attached_file', '2019/10/cropped-baner-4.png'),
(73, 27, '_wp_attachment_context', 'custom-header'),
(74, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:27:\"2019/10/cropped-baner-4.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-baner-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-baner-4-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cropped-baner-4-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cropped-baner-4-1024x256.png\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"vw-school-education-homepage-thumb\";a:4:{s:4:\"file\";s:27:\"cropped-baner-4-240x145.png\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:26;}'),
(77, 14, '_wp_trash_meta_status', 'publish'),
(78, 14, '_wp_trash_meta_time', '1571918662'),
(79, 14, '_elementor_controls_usage', 'a:0:{}'),
(80, 28, '_wp_attached_file', '2019/10/cropped-Imagem1.png'),
(81, 28, '_wp_attachment_context', 'site-icon'),
(82, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2019/10/cropped-Imagem1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-Imagem1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-Imagem1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-Imagem1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-Imagem1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-Imagem1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-Imagem1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 29, '_wp_trash_meta_status', 'publish'),
(84, 29, '_wp_trash_meta_time', '1571918832'),
(85, 29, '_elementor_controls_usage', 'a:0:{}'),
(86, 30, '_edit_last', '1'),
(87, 30, '_edit_lock', '1571919282:1'),
(88, 9, '_wp_trash_meta_status', 'publish'),
(89, 9, '_wp_trash_meta_time', '1571919523'),
(90, 9, '_wp_desired_post_slug', 'task-evaluation'),
(91, 32, '_edit_lock', '1572266376:1'),
(95, 32, '_elementor_edit_mode', 'builder'),
(96, 32, '_elementor_template_type', 'wp-post'),
(97, 32, '_elementor_version', '2.7.4'),
(101, 32, '_wp_page_template', 'default'),
(102, 32, '_elementor_data', '[{\"id\":\"b79b2e6\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0e3342c\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"b887fbb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Select at list bellow the task theme and vive your score evaluation:\",\"header_size\":\"span\",\"title_color\":\"#bf4128\"},\"elements\":[],\"widgetType\":\"heading\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"e079587\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"a87e752\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"c1a85d1\",\"elType\":\"widget\",\"settings\":{\"title\":\"1 - Theme selection (Important \\/ Critical \\/ Related to Biz)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"a515447\",\"elType\":\"widget\",\"settings\":{\"title\":\"2 - KPI Target \\/ Achievement (World Best \\/ Company Best \\/ Division Best)\",\"progress_type\":\"success\",\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"bf2b94f\",\"elType\":\"widget\",\"settings\":{\"title\":\"3 - Analyze (It is correct root cause?)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"3bec7cb\",\"elType\":\"widget\",\"settings\":{\"title\":\"4 - Solution (World Best \\/ Company Best \\/ Division Best)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"f1b7d64\",\"elType\":\"widget\",\"settings\":{\"title\":\"5 - Control (BM Point to the others division)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"}],\"isInner\":false}],\"isInner\":false}]'),
(104, 35, '_elementor_edit_mode', 'builder'),
(105, 35, '_elementor_template_type', 'wp-post'),
(106, 35, '_elementor_version', '2.7.4'),
(107, 35, '_elementor_controls_usage', 'a:0:{}'),
(108, 35, '_wp_page_template', 'default'),
(109, 35, '_elementor_data', '[{\"id\":\"b79b2e6\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0e3342c\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"34f6751\",\"elType\":\"widget\",\"settings\":{\"tabs\":[{\"tab_title\":\"Accordion #1\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"31612fa\"},{\"tab_title\":\"Accordion #2\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"f3e0ba2\"},{\"tab_title\":\"Accordion #2\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"b348fa1\"},{\"tab_title\":\"Accordion #2\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"2f8804d\"}]},\"elements\":[],\"widgetType\":\"accordion\"}],\"isInner\":false}],\"isInner\":false}]'),
(114, 36, '_elementor_edit_mode', 'builder'),
(115, 36, '_elementor_template_type', 'wp-post'),
(116, 36, '_elementor_version', '2.7.4'),
(117, 36, '_wp_page_template', 'default'),
(118, 36, '_elementor_data', '[{\"id\":\"b79b2e6\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0e3342c\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"34f6751\",\"elType\":\"widget\",\"settings\":{\"tabs\":[{\"tab_title\":\"Task theme 1\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"31612fa\"},{\"tab_title\":\"Task theme 2\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"f3e0ba2\"},{\"tab_title\":\"Task theme 3\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"b348fa1\"},{\"tab_title\":\"Task theme  4\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"2f8804d\"}]},\"elements\":[],\"widgetType\":\"accordion\"}],\"isInner\":false}],\"isInner\":false}]'),
(119, 36, '_elementor_css', 'a:6:{s:4:\"time\";i:1571919934;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:1:{i:0;s:8:\"fa-solid\";}s:6:\"status\";s:5:\"empty\";i:0;s:0:\"\";s:3:\"css\";s:0:\"\";}'),
(125, 37, '_elementor_edit_mode', 'builder'),
(126, 37, '_elementor_template_type', 'wp-post'),
(127, 37, '_elementor_version', '2.7.4'),
(128, 37, '_wp_page_template', 'default'),
(129, 37, '_elementor_data', '[{\"id\":\"b79b2e6\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0e3342c\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"b887fbb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Lelect at list bellow the task theme and vive your score evaluation:\",\"header_size\":\"span\",\"title_color\":\"#bf4128\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"a2ffb58\",\"elType\":\"widget\",\"settings\":{\"text\":\"Divider\"},\"elements\":[],\"widgetType\":\"divider\"},{\"id\":\"34f6751\",\"elType\":\"widget\",\"settings\":{\"tabs\":[{\"tab_title\":\"Task theme 1\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"31612fa\"},{\"tab_title\":\"Task theme 2\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"f3e0ba2\"},{\"tab_title\":\"Task theme 3\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"b348fa1\"},{\"tab_title\":\"Task theme  4\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"2f8804d\"}]},\"elements\":[],\"widgetType\":\"accordion\"}],\"isInner\":false}],\"isInner\":false}]'),
(130, 37, '_elementor_css', 'a:6:{s:4:\"time\";i:1571920056;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:1:{i:0;s:8:\"fa-solid\";}s:6:\"status\";s:5:\"empty\";i:0;s:0:\"\";s:3:\"css\";s:0:\"\";}'),
(135, 38, '_elementor_edit_mode', 'builder'),
(136, 38, '_elementor_template_type', 'wp-post'),
(137, 38, '_elementor_version', '2.7.4'),
(138, 38, '_wp_page_template', 'default'),
(139, 38, '_elementor_data', '[{\"id\":\"b79b2e6\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0e3342c\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"b887fbb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Select at list bellow the task theme and vive your score evaluation:\",\"header_size\":\"span\",\"title_color\":\"#bf4128\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"a2ffb58\",\"elType\":\"widget\",\"settings\":{\"text\":\"Divider\"},\"elements\":[],\"widgetType\":\"divider\"},{\"id\":\"34f6751\",\"elType\":\"widget\",\"settings\":{\"tabs\":[{\"tab_title\":\"Task theme 1\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"31612fa\"},{\"tab_title\":\"Task theme 2\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"f3e0ba2\"},{\"tab_title\":\"Task theme 3\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"b348fa1\"},{\"tab_title\":\"Task theme  4\",\"tab_content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"2f8804d\"}]},\"elements\":[],\"widgetType\":\"accordion\"}],\"isInner\":false}],\"isInner\":false}]'),
(145, 39, '_elementor_edit_mode', 'builder'),
(146, 39, '_elementor_template_type', 'wp-post'),
(147, 39, '_elementor_version', '2.7.4'),
(148, 39, '_wp_page_template', 'default'),
(149, 39, '_elementor_data', '[{\"id\":\"b79b2e6\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0e3342c\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"b887fbb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Select at list bellow the task theme and vive your score evaluation:\",\"header_size\":\"span\",\"title_color\":\"#bf4128\"},\"elements\":[],\"widgetType\":\"heading\"}],\"isInner\":false}],\"isInner\":false}]'),
(150, 39, '_elementor_css', 'a:5:{s:4:\"time\";i:1571920179;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:1:{i:0;s:8:\"fa-solid\";}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(156, 40, '_elementor_edit_mode', 'builder'),
(157, 40, '_elementor_template_type', 'wp-post'),
(158, 40, '_elementor_version', '2.7.4'),
(159, 40, '_wp_page_template', 'default'),
(160, 40, '_elementor_data', '[{\"id\":\"b79b2e6\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0e3342c\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"b887fbb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Select at list bellow the task theme and vive your score evaluation:\",\"header_size\":\"span\",\"title_color\":\"#bf4128\"},\"elements\":[],\"widgetType\":\"heading\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"e079587\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"a87e752\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"c1a85d1\",\"elType\":\"widget\",\"settings\":{\"title\":\"1 - Theme selection (Important \\/ Critical \\/ Related to Biz)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"}],\"isInner\":false}],\"isInner\":false}]'),
(161, 40, '_elementor_css', 'a:5:{s:4:\"time\";i:1571920302;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(174, 42, '_elementor_edit_mode', 'builder'),
(175, 42, '_elementor_template_type', 'wp-post'),
(176, 42, '_elementor_version', '2.7.4'),
(177, 42, '_wp_page_template', 'default'),
(178, 42, '_elementor_data', '[{\"id\":\"b79b2e6\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0e3342c\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"b887fbb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Select at list bellow the task theme and vive your score evaluation:\",\"header_size\":\"span\",\"title_color\":\"#bf4128\"},\"elements\":[],\"widgetType\":\"heading\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"e079587\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"a87e752\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"c1a85d1\",\"elType\":\"widget\",\"settings\":{\"title\":\"1 - Theme selection (Important \\/ Critical \\/ Related to Biz)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"a515447\",\"elType\":\"widget\",\"settings\":{\"title\":\"2 - KPI Target \\/ Achievement (World Best \\/ Company Best \\/ Division Best)\",\"progress_type\":\"success\",\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"bf2b94f\",\"elType\":\"widget\",\"settings\":{\"title\":\"3 - Analyze (It is correct root cause?)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"3bec7cb\",\"elType\":\"widget\",\"settings\":{\"title\":\"4 - Solution (World Best \\/ Company Best \\/ Division Best)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"f1b7d64\",\"elType\":\"widget\",\"settings\":{\"title\":\"5 - Control (BM Point to the others division)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"}],\"isInner\":false}],\"isInner\":false}]'),
(190, 32, '_elementor_css', 'a:5:{s:4:\"time\";i:1571921511;s:5:\"fonts\";a:1:{i:0;s:5:\"Arial\";}s:5:\"icons\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(192, 44, '_elementor_edit_mode', 'builder'),
(193, 44, '_elementor_template_type', 'wp-post'),
(194, 44, '_elementor_version', '2.7.4'),
(195, 44, '_wp_page_template', 'default'),
(196, 44, '_elementor_data', '[{\"id\":\"b79b2e6\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"0e3342c\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"b887fbb\",\"elType\":\"widget\",\"settings\":{\"title\":\"Select at list bellow the task theme and vive your score evaluation:\",\"header_size\":\"span\",\"title_color\":\"#bf4128\"},\"elements\":[],\"widgetType\":\"heading\"}],\"isInner\":false}],\"isInner\":false},{\"id\":\"e079587\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"a87e752\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"c1a85d1\",\"elType\":\"widget\",\"settings\":{\"title\":\"1 - Theme selection (Important \\/ Critical \\/ Related to Biz)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"a515447\",\"elType\":\"widget\",\"settings\":{\"title\":\"2 - KPI Target \\/ Achievement (World Best \\/ Company Best \\/ Division Best)\",\"progress_type\":\"success\",\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"bf2b94f\",\"elType\":\"widget\",\"settings\":{\"title\":\"3 - Analyze (It is correct root cause?)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"3bec7cb\",\"elType\":\"widget\",\"settings\":{\"title\":\"4 - Solution (World Best \\/ Company Best \\/ Division Best)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"},{\"id\":\"f1b7d64\",\"elType\":\"widget\",\"settings\":{\"title\":\"5 - Control (BM Point to the others division)\",\"progress_type\":\"success\",\"percent\":{\"unit\":\"%\",\"size\":18,\"sizes\":[]},\"inner_text\":\"Score\",\"bar_color\":\"#23a455\",\"bar_bg_color\":\"#af9999\",\"bar_inline_color\":\"#f7f7f7\",\"bar_inner_typography_typography\":\"custom\",\"bar_inner_typography_font_family\":\"Arial\",\"bar_inner_typography_font_size\":{\"unit\":\"px\",\"size\":11,\"sizes\":[]},\"title_color\":\"#a53518\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Arial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":17,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"progress\"}],\"isInner\":false}],\"isInner\":false}]'),
(197, 44, '_elementor_controls_usage', 'a:4:{s:7:\"heading\";a:3:{s:5:\"count\";i:1;s:15:\"control_percent\";i:2;s:8:\"controls\";a:2:{s:7:\"content\";a:1:{s:13:\"section_title\";a:2:{s:5:\"title\";i:1;s:11:\"header_size\";i:1;}}s:5:\"style\";a:1:{s:19:\"section_title_style\";a:1:{s:11:\"title_color\";i:1;}}}}s:6:\"column\";a:3:{s:5:\"count\";i:2;s:15:\"control_percent\";i:0;s:8:\"controls\";a:0:{}}s:7:\"section\";a:3:{s:5:\"count\";i:2;s:15:\"control_percent\";i:0;s:8:\"controls\";a:0:{}}s:8:\"progress\";a:3:{s:5:\"count\";i:5;s:15:\"control_percent\";i:7;s:8:\"controls\";a:2:{s:7:\"content\";a:1:{s:16:\"section_progress\";a:4:{s:5:\"title\";i:5;s:13:\"progress_type\";i:5;s:7:\"percent\";i:4;s:10:\"inner_text\";i:5;}}s:5:\"style\";a:2:{s:22:\"section_progress_style\";a:6:{s:9:\"bar_color\";i:5;s:12:\"bar_bg_color\";i:5;s:16:\"bar_inline_color\";i:5;s:31:\"bar_inner_typography_typography\";i:5;s:32:\"bar_inner_typography_font_family\";i:5;s:30:\"bar_inner_typography_font_size\";i:5;}s:13:\"section_title\";a:4:{s:11:\"title_color\";i:5;s:21:\"typography_typography\";i:5;s:22:\"typography_font_family\";i:5;s:20:\"typography_font_size\";i:5;}}}}}'),
(198, 44, '_elementor_css', 'a:5:{s:4:\"time\";i:1571921511;s:5:\"fonts\";a:1:{i:0;s:5:\"Arial\";}s:5:\"icons\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(200, 45, '_elementor_edit_mode', 'builder'),
(201, 45, '_elementor_template_type', 'section'),
(202, 45, '_elementor_version', '2.7.4'),
(203, 45, '_edit_lock', '1571921905:1'),
(204, 45, '_wp_trash_meta_status', 'draft'),
(205, 45, '_wp_trash_meta_time', '1571922055'),
(206, 45, '_wp_desired_post_slug', ''),
(207, 46, '_elementor_edit_mode', 'builder'),
(208, 46, '_elementor_template_type', 'section'),
(209, 46, '_elementor_version', '2.7.4'),
(214, 47, '_edit_lock', '1572000572:1'),
(215, 47, '_elementor_controls_usage', 'a:0:{}'),
(216, 47, '_wp_page_template', 'innovation.php'),
(219, 32, '_wp_old_slug', 'task-revew__trashed'),
(230, 50, '_menu_item_type', 'post_type'),
(231, 50, '_menu_item_menu_item_parent', '0'),
(232, 50, '_menu_item_object_id', '47'),
(233, 50, '_menu_item_object', 'page'),
(234, 50, '_menu_item_target', ''),
(235, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 50, '_menu_item_xfn', ''),
(237, 50, '_menu_item_url', ''),
(239, 50, '_elementor_controls_usage', 'a:0:{}'),
(240, 51, '_edit_lock', '1572000511:1'),
(241, 51, '_elementor_controls_usage', 'a:0:{}'),
(242, 51, '_wp_page_template', 'insert_task_event.php'),
(243, 51, '_edit_last', '1'),
(244, 55, '_elementor_controls_usage', 'a:0:{}'),
(245, 55, '_menu_item_type', 'post_type'),
(246, 55, '_menu_item_menu_item_parent', '0'),
(247, 55, '_menu_item_object_id', '51'),
(248, 55, '_menu_item_object', 'page'),
(249, 55, '_menu_item_target', ''),
(250, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(251, 55, '_menu_item_xfn', ''),
(252, 55, '_menu_item_url', ''),
(253, 54, '_wp_trash_meta_status', 'publish'),
(254, 54, '_wp_trash_meta_time', '1571945273'),
(255, 54, '_elementor_controls_usage', 'a:0:{}'),
(256, 32, '_elementor_controls_usage', 'a:4:{s:7:\"heading\";a:3:{s:5:\"count\";i:1;s:15:\"control_percent\";i:2;s:8:\"controls\";a:2:{s:7:\"content\";a:1:{s:13:\"section_title\";a:2:{s:5:\"title\";i:1;s:11:\"header_size\";i:1;}}s:5:\"style\";a:1:{s:19:\"section_title_style\";a:1:{s:11:\"title_color\";i:1;}}}}s:6:\"column\";a:3:{s:5:\"count\";i:2;s:15:\"control_percent\";i:0;s:8:\"controls\";a:0:{}}s:7:\"section\";a:3:{s:5:\"count\";i:2;s:15:\"control_percent\";i:0;s:8:\"controls\";a:0:{}}s:8:\"progress\";a:3:{s:5:\"count\";i:5;s:15:\"control_percent\";i:7;s:8:\"controls\";a:2:{s:7:\"content\";a:1:{s:16:\"section_progress\";a:4:{s:5:\"title\";i:5;s:13:\"progress_type\";i:5;s:7:\"percent\";i:4;s:10:\"inner_text\";i:5;}}s:5:\"style\";a:2:{s:22:\"section_progress_style\";a:6:{s:9:\"bar_color\";i:5;s:12:\"bar_bg_color\";i:5;s:16:\"bar_inline_color\";i:5;s:31:\"bar_inner_typography_typography\";i:5;s:32:\"bar_inner_typography_font_family\";i:5;s:30:\"bar_inner_typography_font_size\";i:5;}s:13:\"section_title\";a:4:{s:11:\"title_color\";i:5;s:21:\"typography_typography\";i:5;s:22:\"typography_font_family\";i:5;s:20:\"typography_font_size\";i:5;}}}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_posts`
--

DROP TABLE IF EXISTS `inn_posts`;
CREATE TABLE IF NOT EXISTS `inn_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_posts`
--

INSERT INTO `inn_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-10-23 19:08:03', '2019-10-23 19:08:03', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://inovacao/innovation/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-10-23 19:31:12', '2019-10-23 19:31:12', '', 0, 'http://inovacao/innovation/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-23 19:08:03', '2019-10-23 19:08:03', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://inovacao/innovation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-10-23 19:31:12', '2019-10-23 19:31:12', '', 0, 'http://inovacao/innovation/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-10-23 19:15:34', '2019-10-23 19:15:34', '{\"id\":\"5\",\"field_id\":6,\"fields\":{\"2\":{\"id\":\"2\",\"type\":\"select\",\"label\":\"1 - Theme Selection (Important \\/ Critical \\/ Related to Biz)\",\"choices\":{\"1\":{\"label\":\"10\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"30\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"50\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"70\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"100\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\",\"dynamic_choices\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"select\",\"label\":\"2 - KPI traget \\/ Achievement (World best \\/ Company best \\/ Division best)\",\"choices\":{\"1\":{\"label\":\"10\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"30\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"50\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"70\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"100\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\",\"dynamic_choices\":\"\"}},\"settings\":{\"form_title\":\"Task Evaluation Form\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Task Evaluation Form Entry\",\"sender_name\":\"LGESP Innovation Part - TBT\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"2\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"blank\"}}', 'Task Evaluation Form', '', 'publish', 'closed', 'closed', '', 'task-evaluation-form', '', '', '2019-10-24 11:19:26', '2019-10-24 11:19:26', '', 0, 'http://inovacao/innovation/?post_type=wpforms&#038;p=5', 0, 'wpforms', '', 0),
(6, 1, '2019-10-23 19:31:12', '2019-10-23 19:31:12', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://inovacao/innovation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-10-23 19:31:12', '2019-10-23 19:31:12', '', 3, 'http://inovacao/innovation/2019/10/23/3-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-10-23 19:31:12', '2019-10-23 19:31:12', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://inovacao/innovation/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-10-23 19:31:12', '2019-10-23 19:31:12', '', 2, 'http://inovacao/innovation/2019/10/23/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-10-24 12:18:12', '2019-10-24 12:18:12', '<!-- wp:paragraph -->\n<p>Please select bellow the tasks and give score:</p>\n<!-- /wp:paragraph -->', 'Task Evaluation', '', 'trash', 'closed', 'closed', '', 'task-evaluation__trashed', '', '', '2019-10-24 12:18:43', '2019-10-24 12:18:43', '', 0, 'http://inovacao/innovation/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-10-23 19:33:14', '2019-10-23 19:33:14', '', 'Elementor #9', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-10-23 19:33:14', '2019-10-23 19:33:14', '', 9, 'http://inovacao/innovation/2019/10/23/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-10-24 11:26:37', '2019-10-24 11:26:37', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:26:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '395b2ecf-c39f-4ddf-a84d-a937ec7e21e2', '', '', '2019-10-24 11:26:37', '2019-10-24 11:26:37', '', 0, 'http://inovacao/innovation/2019/10/24/395b2ecf-c39f-4ddf-a84d-a937ec7e21e2/', 0, 'customize_changeset', '', 0),
(12, 1, '2019-10-24 11:27:42', '2019-10-24 11:27:42', '{\n    \"twentynineteen::primary_color\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:27:30\"\n    },\n    \"twentynineteen::primary_color_hue\": {\n        \"value\": 132,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:27:30\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:27:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '187fc5fe-3c73-46bc-bcd6-e1c231bb3d4a', '', '', '2019-10-24 11:27:42', '2019-10-24 11:27:42', '', 0, 'http://inovacao/innovation/?p=12', 0, 'customize_changeset', '', 0),
(14, 1, '2019-10-24 12:04:22', '2019-10-24 12:04:22', '{\n    \"blogname\": {\n        \"value\": \"LGESP Innovation Part\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:52:55\"\n    },\n    \"vw-school-education::vw_school_education_footer_text\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:52:55\"\n    },\n    \"vw-school-education::vw_school_education_hide_show_scroll\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:52:55\"\n    },\n    \"vw-school-education::vw_school_education_second_color\": {\n        \"value\": \"#720026\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:53:55\"\n    },\n    \"vw-school-education::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:55:55\"\n    },\n    \"vw-school-education::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 11:55:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4d523eb-fe61-41ec-b67f-0420a610422d', '', '', '2019-10-24 12:04:22', '2019-10-24 12:04:22', '', 0, 'http://inovacao/innovation/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2019-10-24 11:54:45', '2019-10-24 11:54:45', '', 'Imagem1', '', 'inherit', 'open', 'closed', '', 'imagem1', '', '', '2019-10-24 11:54:45', '2019-10-24 11:54:45', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/Imagem1.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2019-10-24 11:56:55', '2019-10-24 11:56:55', '', 'creative', '', 'inherit', 'open', 'closed', '', 'creative', '', '', '2019-10-24 11:56:55', '2019-10-24 11:56:55', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/creative.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2019-10-24 11:57:06', '2019-10-24 11:57:06', '', 'cropped-creative.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-creative-jpg', '', '', '2019-10-24 11:57:06', '2019-10-24 11:57:06', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/cropped-creative.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-10-24 11:58:52', '2019-10-24 11:58:52', '', 'baner', '', 'inherit', 'open', 'closed', '', 'baner', '', '', '2019-10-24 11:58:52', '2019-10-24 11:58:52', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/baner.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2019-10-24 12:00:00', '2019-10-24 12:00:00', '', 'baner', '', 'inherit', 'open', 'closed', '', 'baner-2', '', '', '2019-10-24 12:00:00', '2019-10-24 12:00:00', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/baner-1.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2019-10-24 12:01:03', '2019-10-24 12:01:03', '', 'baner', '', 'inherit', 'open', 'closed', '', 'baner-3', '', '', '2019-10-24 12:01:03', '2019-10-24 12:01:03', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/baner-2.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2019-10-24 12:01:23', '2019-10-24 12:01:23', '', 'cropped-baner-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-baner-2-png', '', '', '2019-10-24 12:01:23', '2019-10-24 12:01:23', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/cropped-baner-2.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2019-10-24 12:01:47', '2019-10-24 12:01:47', '', 'baner', '', 'inherit', 'open', 'closed', '', 'baner-4', '', '', '2019-10-24 12:01:47', '2019-10-24 12:01:47', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/baner-3.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2019-10-24 12:02:04', '2019-10-24 12:02:04', '', 'cropped-baner-3.png', '', 'inherit', 'open', 'closed', '', 'cropped-baner-3-png', '', '', '2019-10-24 12:02:04', '2019-10-24 12:02:04', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/cropped-baner-3.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2019-10-24 12:02:53', '2019-10-24 12:02:53', '', 'creative', '', 'inherit', 'open', 'closed', '', 'creative-2', '', '', '2019-10-24 12:02:53', '2019-10-24 12:02:53', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/creative-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-10-24 12:03:04', '2019-10-24 12:03:04', '', 'cropped-creative-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-creative-1-jpg', '', '', '2019-10-24 12:03:04', '2019-10-24 12:03:04', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/cropped-creative-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2019-10-24 12:03:26', '2019-10-24 12:03:26', '', 'baner', '', 'inherit', 'open', 'closed', '', 'baner-5', '', '', '2019-10-24 12:03:26', '2019-10-24 12:03:26', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/baner-4.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-10-24 12:03:32', '2019-10-24 12:03:32', '', 'cropped-baner-4.png', '', 'inherit', 'open', 'closed', '', 'cropped-baner-4-png', '', '', '2019-10-24 12:03:32', '2019-10-24 12:03:32', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/cropped-baner-4.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2019-10-24 12:06:21', '2019-10-24 12:06:21', 'http://inovacao/innovation/wp-content/uploads/2019/10/cropped-Imagem1.png', 'cropped-Imagem1.png', '', 'inherit', 'open', 'closed', '', 'cropped-imagem1-png', '', '', '2019-10-24 12:06:21', '2019-10-24 12:06:21', '', 0, 'http://inovacao/innovation/wp-content/uploads/2019/10/cropped-Imagem1.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-10-24 12:07:11', '2019-10-24 12:07:11', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 12:07:11\"\n    },\n    \"site_icon\": {\n        \"value\": 28,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 12:07:11\"\n    },\n    \"twentynineteen::primary_color_hue\": {\n        \"value\": 144,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 12:07:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fde9fd3a-d3a6-417d-997c-6c4345e75f09', '', '', '2019-10-24 12:07:11', '2019-10-24 12:07:11', '', 0, 'http://inovacao/innovation/fde9fd3a-d3a6-417d-997c-6c4345e75f09/', 0, 'customize_changeset', '', 0),
(30, 1, '2019-10-24 12:14:42', '0000-00-00 00:00:00', '', 'Task evaluation', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-24 12:14:42', '2019-10-24 12:14:42', '', 0, 'http://inovacao/innovation/?post_type=it_epoll_poll&#038;p=30', 0, 'it_epoll_poll', '', 0),
(31, 1, '2019-10-24 12:18:12', '2019-10-24 12:18:12', '<!-- wp:paragraph -->\n<p>Please select bellow the tasks and give score:</p>\n<!-- /wp:paragraph -->', 'Task Evaluation', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-10-24 12:18:12', '2019-10-24 12:18:12', '', 9, 'http://inovacao/innovation/9-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-10-24 12:21:41', '2019-10-24 12:21:41', 'Select at list bellow the task theme and vive your score evaluation:\n1 - Theme selection (Important / Critical / Related to Biz)\nScore\n18%\n2 - KPI Target / Achievement (World Best / Company Best / Division Best)\nScore\n50%\n3 - Analyze (It is correct root cause?)\nScore\n18%\n4 - Solution (World Best / Company Best / Division Best)\nScore\n18%\n5 - Control (BM Point to the others division)\nScore\n18%', 'Task revew', '', 'private', 'open', 'open', '', 'task-revew', '', '', '2019-10-28 12:30:21', '2019-10-28 12:30:21', '', 0, 'http://inovacao/innovation/?p=32', 0, 'post', '', 0),
(33, 1, '2019-10-24 12:21:41', '2019-10-24 12:21:41', '<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Task review list</p><cite>Select on list below the by task theme and give your score: </cite></blockquote></figure>\n<!-- /wp:pullquote -->', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:21:41', '2019-10-24 12:21:41', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-10-24 12:22:52', '2019-10-24 12:22:52', '', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:22:52', '2019-10-24 12:22:52', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-10-24 12:25:30', '2019-10-24 12:25:30', '<a href=\"\">Accordion #1</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Accordion #2</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Accordion #2</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Accordion #2</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:25:30', '2019-10-24 12:25:30', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-10-24 12:27:31', '2019-10-24 12:27:31', '<a href=\"\">Task theme 1</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Task theme 2</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Task theme 3</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Task theme  4</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:27:31', '2019-10-24 12:27:31', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-10-24 12:29:25', '2019-10-24 12:29:25', 'Lelect at list bellow the task theme and vive your score evaluation:		\n												<a href=\"\">Task theme 1</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Task theme 2</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Task theme 3</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Task theme  4</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:29:25', '2019-10-24 12:29:25', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-10-24 12:29:36', '2019-10-24 12:29:36', 'Select at list bellow the task theme and vive your score evaluation:		\n												<a href=\"\">Task theme 1</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Task theme 2</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Task theme 3</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												<a href=\"\">Task theme  4</a>\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:29:36', '2019-10-24 12:29:36', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-10-24 12:31:39', '2019-10-24 12:31:39', 'Select at list bellow the task theme and vive your score evaluation:', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:31:39', '2019-10-24 12:31:39', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-10-24 12:37:11', '2019-10-24 12:37:11', 'Select at list bellow the task theme and vive your score evaluation:		\n						1 - Theme selection (Important / Critical / Related to Biz)\n				Score\n									18%', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:37:11', '2019-10-24 12:37:11', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-10-24 12:48:52', '2019-10-24 12:48:52', 'Select at list bellow the task theme and vive your score evaluation:		\n						1 - Theme selection (Important / Critical / Related to Biz)\n				Score\n									18%\n						2 - KPI Target / Achievement (World Best / Company Best / Division Best)\n				Score\n									50%\n						3 - Analyze (It is correct root cause?)\n				Score\n									18%\n						4 - Solution (World Best / Company Best / Division Best)\n				Score\n									18%\n						5 - Control (BM Point to the others division)\n				Score\n									18%', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:48:52', '2019-10-24 12:48:52', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-10-24 12:53:02', '2019-10-24 12:53:02', 'Select at list bellow the task theme and vive your score evaluation:\n1 - Theme selection (Important / Critical / Related to Biz)\nScore\n18%\n2 - KPI Target / Achievement (World Best / Company Best / Division Best)\nScore\n50%\n3 - Analyze (It is correct root cause?)\nScore\n18%\n4 - Solution (World Best / Company Best / Division Best)\nScore\n18%\n5 - Control (BM Point to the others division)\nScore\n18%', 'Task revew', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-24 12:53:02', '2019-10-24 12:53:02', '', 32, 'http://inovacao/innovation/32-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-10-24 13:00:55', '2019-10-24 13:00:55', '', 'template test', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-10-24 13:00:55', '2019-10-24 13:00:55', '', 0, 'http://inovacao/innovation/?post_type=elementor_library&#038;p=45', 0, 'elementor_library', '', 0),
(46, 1, '2019-10-24 13:00:55', '2019-10-24 13:00:55', '', 'template test', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-10-24 13:00:55', '2019-10-24 13:00:55', '', 45, 'http://inovacao/innovation/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-10-24 13:19:21', '2019-10-24 13:19:21', '', 'Task Evaluation', '', 'publish', 'closed', 'closed', '', 'task-evaluation', '', '', '2019-10-25 10:51:08', '2019-10-25 10:51:08', '', 51, 'http://inovacao/innovation/?page_id=47', 0, 'page', '', 0),
(48, 1, '2019-10-24 13:19:21', '2019-10-24 13:19:21', '', 'Task Evaluation', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-10-24 13:19:21', '2019-10-24 13:19:21', '', 47, 'http://inovacao/innovation/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-10-24 13:22:33', '2019-10-24 13:22:33', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2019-10-25 11:56:12', '2019-10-25 11:56:12', '', 51, 'http://inovacao/innovation/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2019-10-24 19:16:16', '2019-10-24 19:16:16', '<!-- wp:paragraph {\"textColor\":\"secondary\",\"backgroundColor\":\"white\"} -->\n<p class=\"has-text-color has-background has-secondary-color has-white-background-color\"></p>\n<!-- /wp:paragraph -->', 'Task registration', '', 'publish', 'closed', 'closed', '', 'task-registration', '', '', '2019-10-25 10:50:46', '2019-10-25 10:50:46', '', 0, 'http://inovacao/innovation/?page_id=51', 0, 'page', '', 0),
(52, 1, '2019-10-24 19:16:16', '2019-10-24 19:16:16', '', 'Task registration', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-10-24 19:16:16', '2019-10-24 19:16:16', '', 51, 'http://inovacao/innovation/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-10-24 19:27:52', '2019-10-24 19:27:52', '{\n    \"nav_menu_item[-4890600109147922000]\": {\n        \"value\": {\n            \"object_id\": 51,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Task registration\",\n            \"url\": \"http://inovacao/innovation/task-registration/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Task registration\",\n            \"nav_menu_term_id\": 5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-24 19:27:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b72771d0-54c0-415d-96ef-c9c5ccb6f071', '', '', '2019-10-24 19:27:52', '2019-10-24 19:27:52', '', 0, 'http://inovacao/innovation/b72771d0-54c0-415d-96ef-c9c5ccb6f071/', 0, 'customize_changeset', '', 0),
(55, 1, '2019-10-24 19:27:52', '2019-10-24 19:27:52', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2019-10-25 11:56:12', '2019-10-25 11:56:12', '', 0, 'http://inovacao/innovation/55/', 1, 'nav_menu_item', '', 0),
(56, 1, '2019-10-25 10:50:46', '2019-10-25 10:50:46', '<!-- wp:paragraph {\"textColor\":\"secondary\",\"backgroundColor\":\"white\"} -->\n<p class=\"has-text-color has-background has-secondary-color has-white-background-color\"></p>\n<!-- /wp:paragraph -->', 'Task registration', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-10-25 10:50:46', '2019-10-25 10:50:46', '', 51, 'http://inovacao/innovation/51-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_task`
--

DROP TABLE IF EXISTS `inn_task`;
CREATE TABLE IF NOT EXISTS `inn_task` (
  `id_task` int(11) NOT NULL AUTO_INCREMENT,
  `cesar_control` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KPI` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before_` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_data` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_data` datetime DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `divi` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leader` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_task`
--

INSERT INTO `inn_task` (`id_task`, `cesar_control`, `theme`, `KPI`, `before_`, `target`, `start_data`, `finish_date`, `status`, `status_data`, `registration_date`, `divi`, `leader`, `user_id`) VALUES
(1, NULL, 'Andon Loss 50% Improve', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'IT', 'Antonio Campos', NULL),
(2, NULL, 'Pac EX Tariff Project', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'IT', 'Edmar Pereira', NULL),
(3, NULL, 'Smartphone FFR 14% Reduction', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'MC', 'Genésio Frez', NULL),
(4, NULL, 'Increase UPH Function Test 22V280', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'IT', 'Glauco Alves', NULL),
(5, NULL, 'Zero LCA Hidden Loss', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'MC', 'Guilherme Fernandes', NULL),
(6, NULL, 'Security Cost Reduction in 20%', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'IT', 'Rodrigo Fonseca ', NULL),
(7, NULL, 'Total Productivity Improvement', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'IT', 'Lilian Oliveira', NULL),
(8, NULL, 'ICMS Special Regime - Importation', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'IT', 'Thiago Martins', NULL),
(9, NULL, 'QC Function Test Automation', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'IT', 'Geraldo Neto', NULL),
(10, NULL, 'Dream Line', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'MC', 'Fernanda Morais', NULL),
(11, NULL, 'Procurement Cost reduction', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'IT', 'Bruno Costa', NULL),
(12, NULL, 'Max Output With ZERO Investment', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'MC', 'Alexandre Nunis', NULL),
(13, NULL, 'Total Productivity Improvement - MC', '0', '0', '0', '2020-12-04 00:00:00.000000', '2020-12-04 00:00:00.000000', NULL, NULL, NULL, 'MC', 'Jonathan Santos', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_termmeta`
--

DROP TABLE IF EXISTS `inn_termmeta`;
CREATE TABLE IF NOT EXISTS `inn_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_terms`
--

DROP TABLE IF EXISTS `inn_terms`;
CREATE TABLE IF NOT EXISTS `inn_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_terms`
--

INSERT INTO `inn_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Tasks', 'tasks', 0),
(3, 'Review', 'review', 0),
(4, 'section', 'section', 0),
(5, 'Main', 'main', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_term_relationships`
--

DROP TABLE IF EXISTS `inn_term_relationships`;
CREATE TABLE IF NOT EXISTS `inn_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_term_relationships`
--

INSERT INTO `inn_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(32, 2, 0),
(45, 4, 0),
(50, 5, 0),
(55, 5, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_term_taxonomy`
--

DROP TABLE IF EXISTS `inn_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `inn_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_term_taxonomy`
--

INSERT INTO `inn_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'elementor_library_type', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_usermeta`
--

DROP TABLE IF EXISTS `inn_usermeta`;
CREATE TABLE IF NOT EXISTS `inn_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_usermeta`
--

INSERT INTO `inn_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Pablo Binotto'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'inn_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'inn_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"51e92376805f079599f0dd6bb938e62f41ad15ca0df8690cd4e6e7d5a4247cb3\";a:4:{s:10:\"expiration\";i:1572438443;s:2:\"ip\";s:14:\"10.193.171.212\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572265643;}}'),
(17, 1, 'inn_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'inn_user-settings', 'editor=tinymce&libraryContent=browse'),
(19, 1, 'inn_user-settings-time', '1571918682'),
(20, 1, 'elementor_introduction', 'a:1:{s:10:\"rightClick\";b:1;}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '5'),
(24, 2, 'nickname', 'Valmir Silva'),
(25, 2, 'first_name', 'Valmir'),
(26, 2, 'last_name', 'Silva'),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'inn_capabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(36, 2, 'inn_user_level', '1'),
(37, 2, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inn_users`
--

DROP TABLE IF EXISTS `inn_users`;
CREATE TABLE IF NOT EXISTS `inn_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inn_users`
--

INSERT INTO `inn_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Pablo Binotto', '$P$B36l.os4xTongdXAfPVJjNXzpC019C.', 'pablo-binotto', 'binhotto1978@gmail.com', '', '2019-10-23 19:08:02', '', 0, 'Pablo Binotto'),
(2, 'Valmir Silva', '$P$BC2ucV.qwpvmIuLBm2mRA64EU.pvkC0', 'valmir-silva', 'valmir.silva@lge.com', '', '2019-10-28 12:29:11', '1572265753:$P$B3J9rwZdJBsLHszkLn5Vpebt8x0mGj.', 0, 'Valmir Silva');

-- --------------------------------------------------------

--
-- Stand-in structure for view `mkeva`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `mkeva`;
CREATE TABLE IF NOT EXISTS `mkeva` (
`make_eva` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `not_eva_imp`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `not_eva_imp`;
CREATE TABLE IF NOT EXISTS `not_eva_imp` (
`imp_id` int(11)
,`w_theme` varchar(100)
,`w_imp_date` timestamp
,`w_imp_img` varchar(150)
,`evaluator` varchar(100)
,`imp_id_eva` int(11)
,`e1` int(3)
,`e2` int(3)
,`e3` int(3)
,`e4` int(3)
,`e5` int(3)
,`evaluation_data` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `task_eva_by_evaluator`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `task_eva_by_evaluator`;
CREATE TABLE IF NOT EXISTS `task_eva_by_evaluator` (
`evaluator` varchar(100)
,`theme` varchar(50)
,`leader` varchar(50)
,`taskid` int(11)
,`e1` bigint(13)
,`e2` decimal(12,0)
,`e3` bigint(13)
,`e4` decimal(12,0)
,`e5` decimal(12,0)
,`e6` bigint(13)
,`score` decimal(19,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `task_eva_result`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `task_eva_result`;
CREATE TABLE IF NOT EXISTS `task_eva_result` (
`theme` varchar(50)
,`leader` varchar(50)
,`taskid` int(11)
,`e1` decimal(13,0)
,`e2` decimal(12,0)
,`e3` decimal(13,0)
,`e4` decimal(12,0)
,`e5` decimal(12,0)
,`e6` decimal(13,0)
,`score` decimal(19,0)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE IF NOT EXISTS `tbl_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `password`, `email`, `create_at`) VALUES
(1, 'Pablo', '$2y$10$NPsS5SEmz8b4xVYZ1mPIEOWofH4E3GjpEye7Ea5JUd99afkSiBNUe', 'pablo.binotto@lge.com', '2020-10-30 19:32:11'),
(2, 'Cesar', '$2y$10$68WbW28VUCa29d4sj5fF5O7nE/gjLMiOtorH61qHqqPN/uOZTxV3y', 'cesar.alcantara@lge.com', '2020-11-05 17:09:02'),
(3, 'Pablo', '$2y$10$IxeXXe9C5IGwh/M5JfbhI.FlQzQWHEtusiRs7IC8UbYPHkztbGguy', 'pablo.binotto@lge.com', '2020-12-02 18:16:25'),
(4, 'Jorge Corra', '$2y$10$BtVyQEHD7oxzAW3DRd/Nk.lbRI/i05.azfvIDu9X3GQk1fQbHUE1O', 'jorge.corra@lge.com', '2020-12-02 19:25:22'),
(5, 'David Ferreira', '$2y$10$mr7j7QKmO8GjiEB5hJ7qqe08KNlNg3rm7R7ILKTRh9izofIXVn93m', 'david.ferreira@lge.com', '2020-12-02 19:52:26'),
(6, 'daegeunkim', '$2y$10$Pe6HPoeyjjW7ojYa4Ui/GO85B9crszxsmH26lxqzxGqjz0YJ54GFK', 'daegeun.kim@lge.com', '2020-12-02 21:10:51'),
(7, 'SANG SEOK KIM', '$2y$10$8eoZBAzELN8fGVZak92BbuOaBc9AFyzz91425Uj2XRXYHxqCelBQK', 'sangseok.kim@lge.com', '2020-12-03 11:42:16'),
(8, 'EDNILSON', '$2y$10$neLDlHNKrh5uLpb95uhnWuA5/b9RSHBAwNeDgMdRFHofUojzUwnJm', 'EDNILSON.ANDRADE@LGE.COM', '2020-12-03 11:49:21'),
(9, 'thiago.martins', '$2y$10$/h8X0oe7x3jM7B3Kai0x5.iVquyGjA3uRrPhdasCwgZyU.MmxKFsW', 'thiago.martins@lge.com', '2020-12-03 11:52:31'),
(10, 'Nelson Siqueira', '$2y$10$Kp6aLH4.ufoduToJtxTufu2DW0gpbug5KISwho5D/bifiNYX3nOkG', 'nelson.siqueira@lge.com', '2020-12-03 11:53:33'),
(11, 'Marco Castro', '$2y$10$QZvU6usk9gqsP26icGIaNuNiNTGiN.ZQ4ak3M44CtzibC9zSwgsSa', 'marco.castro@lge.com', '2020-12-03 12:08:17'),
(12, 'Dongseok oh', '$2y$10$Q.eKJ6OlL6Uo5CB7b4lINu3gZOdPFk0WUrwtKf.PaAqxCVALoqJxW', 'dongseok.oh@lge.com', '2020-12-03 13:22:27'),
(13, 'ThiagoP', '$2y$10$oVHjFXmut95vW2vibzI/QutCbImldMRl47xSh.EFOSBLPqTFOAfyG', 'thiago.perez@lge.com', '2020-12-03 13:56:41'),
(14, 'JINWOO SHIN', '$2y$10$FqrbaMXXoK3D7TrLBsGYr.YM8423vdD/oN7p8r5LMm6OAAoH7cK3a', 'jinwoo.shin@lge.com', '2020-12-03 16:04:13'),
(15, 'JIN HEE KIM', '$2y$10$hZnKQFov1bmFUm391b43ZOnjz6jc3c/lov1j6/Y1/H.QiEuXxervK', 'JINI.KIM@LGE.COM', '2020-12-03 16:04:35'),
(16, 'Dongjung lee', '$2y$10$CDIlNQEjyu0CziIkxKnXxel5Ah/7d/JgRoJ.uSXcnDpPelEB1UbzK', 'dongjung.lee@lge.com', '2020-12-03 16:11:41'),
(17, 'Antonio', '$2y$10$Hd1aGp9sj1pxqF6L6aApfuUzDwFYlqdYlP6IVda1JrjZxbYGPmuFe', 'antoniocarlos.silva@lge.com', '2020-12-03 16:21:12'),
(18, 'Hyun', '$2y$10$v50v5HAxDw4N2..KOHWFZOU7GPAXz.wBiaQuxZpEkl2.5T2POV1GG', 'hyunjoong.jang@lge.com', '2020-12-03 16:39:00'),
(19, 'tonghyon.kim', '$2y$10$wMl9DBWRcpebW3qhVOFgl.uK2ah36dtbo0U81xTnZgYcMHGK2yVoi', 'tonghyon.kim@lge.com', '2020-12-03 18:00:41'),
(20, 'Daniel Dolcinotti', '$2y$10$Jw6rYxS3D7L9e5mQXrJ5fOX6GXE8GTjiwBCeyLgLm8UYCdE0LwGRC', 'daniel.dolcinotti@lge.com', '2020-12-03 18:38:33'),
(21, 'Leandro Corazza', '$2y$10$nmmyHYh2XMHZJyUrZzZXxeXUnGgSqFkrHb7WP5Or80tO3n36ybygO', 'leandro.corazza@lge.com', '2020-12-03 18:41:35'),
(22, 'Adriano Vanzella', '$2y$10$KihCjgmREMGrSufKBbl01.5MUVNyKmyALhpH10ih/mApKVtzpkhgW', 'adriano.vanzella@lge.com', '2020-12-04 10:58:05'),
(23, 'SP300707', '$2y$10$v6i3kyPI4rbNMov1S/1gROySZtv6.J3GORWi7AwBsZmKL/sYNI/4e', 'roger.coelho@lge.com', '2020-12-04 12:30:04'),
(24, 'Douglas', '$2y$10$a07mkdNo9INzRWu.84DRKe2jr5lO08/.P96Q5cuSOBJ2iHNVQIbd2', 'douglas.pareja@lge.com', '2020-12-04 12:31:31'),
(25, 'Priscila Colla', '$2y$10$LmxLx1dopF0.4xVapNxP7utw6pFbY6hKiIrLLBxJCQeku/riOeJ6K', 'priscila.colla@lge.com', '2020-12-04 12:32:08'),
(26, 'heenam.kim', '$2y$10$HVdEbIO1SEZErug9imSqW.24Vbx5hmmp4lwbDE3LJzw1hoFSMzgrW', 'heenam.kim@lge.com', '2020-12-04 13:10:06'),
(27, 'kwang hoon lee', '$2y$10$wI2oXbzVVYMszWtRvTSxJetvctZfjQnzvSDnMJo3taThcmeEulI4S', 'khoon.lee@lge.com', '2020-12-04 13:11:00'),
(28, 'Aluno', '$2y$10$SXgdQT38xTq9HZAMj1drT.MJyiM/ZO1gypoi8hFETV.8S0kDiSJoy', 'aluno@lge.com', '2021-03-24 17:51:26');

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_imp_eva_by_evaluator`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `total_imp_eva_by_evaluator`;
CREATE TABLE IF NOT EXISTS `total_imp_eva_by_evaluator` (
`evaluators` varchar(100)
,`total` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_imp_to`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `total_imp_to`;
CREATE TABLE IF NOT EXISTS `total_imp_to` (
`total_imp` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_tasks_avg`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `total_tasks_avg`;
CREATE TABLE IF NOT EXISTS `total_tasks_avg` (
`theme` varchar(50)
,`taskid` bigint(11)
,`e1` decimal(13,0)
,`e2` decimal(12,0)
,`e3` decimal(13,0)
,`e4` decimal(12,0)
,`e5` decimal(12,0)
,`e6` decimal(13,0)
,`score` decimal(16,0)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `w_imp`
--

DROP TABLE IF EXISTS `w_imp`;
CREATE TABLE IF NOT EXISTS `w_imp` (
  `imp_id` int(11) NOT NULL AUTO_INCREMENT,
  `w_theme` varchar(100) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `w_imp_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `w_imp_img` varchar(150) NOT NULL,
  PRIMARY KEY (`imp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `w_imp`
--

INSERT INTO `w_imp` (`imp_id`, `w_theme`, `owner`, `w_imp_date`, `w_imp_img`) VALUES
(1, 'Reduce Reducing Time to Unload the Truck (Supplier)', 'Edmar Santos', '2020-12-02 03:00:00', '1606936047.jpg'),
(2, 'Semi Auto Centering JIG for K12 Model', 'Geise Wansowicz', '2020-12-02 03:00:00', '1606936094.JPG'),
(3, 'FBT test (PCBA PC)', 'Jefferson Oliveira', '2020-12-02 03:00:00', '1606936444.jpg');

-- --------------------------------------------------------

--
-- Structure for view `avr_evaluator`
--
DROP TABLE IF EXISTS `avr_evaluator`;

CREATE ALGORITHM=UNDEFINED DEFINER=`pablo`@`%` SQL SECURITY DEFINER VIEW `avr_evaluator`  AS  select `evaluated_task`.`evaluator` AS `evaluator`,`evaluated_task`.`taskid` AS `taskid`,round((avg(`evaluated_task`.`e1`) * 10),0) AS `e1`,round((avg(`evaluated_task`.`e2`) * 3.3333333),0) AS `e2`,round((avg(`evaluated_task`.`e3`) * 10),0) AS `e3`,round((avg(`evaluated_task`.`e4`) * 3.3333333),0) AS `e4`,round((avg(`evaluated_task`.`e5`) * 6.666666667),0) AS `e5`,round((avg(`evaluated_task`.`e6`) * 20),0) AS `e6`,round(((((((round((avg(`evaluated_task`.`e1`) * 10),0) + round((avg(`evaluated_task`.`e2`) * 3.333),0)) + round((avg(`evaluated_task`.`e3`) * 10),0)) + round((avg(`evaluated_task`.`e4`) * 3.333),0)) + round((avg(`evaluated_task`.`e5`) * 6.666666667),0)) + round((avg(`evaluated_task`.`e6`) * 20),0)) / 6),0) AS `score` from `evaluated_task` group by `evaluated_task`.`evaluator` ;

-- --------------------------------------------------------

--
-- Structure for view `avr_evaluator_idt`
--
DROP TABLE IF EXISTS `avr_evaluator_idt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `avr_evaluator_idt`  AS  select `evaluated_idt`.`evaluator` AS `evaluator`,`evaluated_idt`.`taskid` AS `taskid`,round((avg(`evaluated_idt`.`e1`) * 5),0) AS `e1`,round((avg(`evaluated_idt`.`e2`) * 3.3333333),0) AS `e2`,round((avg(`evaluated_idt`.`e3`) * 5),0) AS `e3`,round((avg(`evaluated_idt`.`e4`) * 4),0) AS `e4`,round((avg(`evaluated_idt`.`e5`) * 20),0) AS `e5`,round(((((((avg(`evaluated_idt`.`e1`) * 5) + (avg(`evaluated_idt`.`e2`) * 3.3333333)) + (avg(`evaluated_idt`.`e3`) * 5)) + (avg(`evaluated_idt`.`e4`) * 4)) + (avg(`evaluated_idt`.`e5`) * 20)) / 5),0) AS `score` from `evaluated_idt` group by `evaluated_idt`.`evaluator` ;

-- --------------------------------------------------------

--
-- Structure for view `idt_eva_by_evaluator`
--
DROP TABLE IF EXISTS `idt_eva_by_evaluator`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `idt_eva_by_evaluator`  AS  select `evaluated_idt`.`evaluator` AS `evaluator`,`inn_idt`.`theme` AS `theme`,`inn_idt`.`leader` AS `leader`,`evaluated_idt`.`taskid` AS `taskid`,round((`evaluated_idt`.`e1` * 5),0) AS `e1`,round((`evaluated_idt`.`e2` * 3.333),0) AS `e2`,round((`evaluated_idt`.`e3` * 5),0) AS `e3`,round((`evaluated_idt`.`e4` * 4),0) AS `e4`,round((`evaluated_idt`.`e5` * 20),0) AS `e5`,round((((((round((`evaluated_idt`.`e1` * 5),0) + round((`evaluated_idt`.`e2` * 3.333),0)) + round((`evaluated_idt`.`e3` * 5),0)) + round((`evaluated_idt`.`e4` * 4),0)) + round((`evaluated_idt`.`e5` * 20),0)) / 5),0) AS `score` from (`evaluated_idt` join `inn_idt` on((`inn_idt`.`id_task` = `evaluated_idt`.`taskid`))) group by `evaluated_idt`.`taskid`,`evaluated_idt`.`evaluator` ;

-- --------------------------------------------------------

--
-- Structure for view `idt_eva_result`
--
DROP TABLE IF EXISTS `idt_eva_result`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `idt_eva_result`  AS  select `inn_idt`.`theme` AS `theme`,`inn_idt`.`leader` AS `leader`,`evaluated_idt`.`taskid` AS `taskid`,round((avg(`evaluated_idt`.`e1`) * 5),0) AS `e1`,round((avg(`evaluated_idt`.`e2`) * 3.333333),0) AS `e2`,round((avg(`evaluated_idt`.`e3`) * 5),0) AS `e3`,round((avg(`evaluated_idt`.`e4`) * 4),0) AS `e4`,round((avg(`evaluated_idt`.`e5`) * 20),0) AS `e5`,round((((((avg((`evaluated_idt`.`e1` * 5)) + avg((`evaluated_idt`.`e2` * 3.333333))) + avg((`evaluated_idt`.`e3` * 5))) + avg((`evaluated_idt`.`e4` * 4))) + avg((`evaluated_idt`.`e5` * 20))) / 5),0) AS `score` from (`evaluated_idt` join `inn_idt` on((`inn_idt`.`id_task` = `evaluated_idt`.`taskid`))) group by `evaluated_idt`.`taskid` ;

-- --------------------------------------------------------

--
-- Structure for view `imp_eva_by_evaluators`
--
DROP TABLE IF EXISTS `imp_eva_by_evaluators`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `imp_eva_by_evaluators`  AS  select `evaluated_imp`.`evaluator` AS `evaluators`,`evaluated_imp`.`imp_id_eva` AS `imp_id`,`evaluated_imp`.`e1` AS `e1`,`evaluated_imp`.`e2` AS `e2`,`evaluated_imp`.`e3` AS `e3`,`evaluated_imp`.`e4` AS `e4`,`evaluated_imp`.`e5` AS `e5`,`evaluated_imp`.`evaluation_data` AS `evaluation_data` from `evaluated_imp` group by `evaluated_imp`.`imp_id_eva`,`evaluated_imp`.`evaluator` order by `evaluated_imp`.`evaluator` ;

-- --------------------------------------------------------

--
-- Structure for view `imp_eva_rate`
--
DROP TABLE IF EXISTS `imp_eva_rate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `imp_eva_rate`  AS  select `total_imp_eva_by_evaluator`.`evaluators` AS `evaluators`,`total_imp_eva_by_evaluator`.`total` AS `total`,round(((`total_imp_eva_by_evaluator`.`total` / `total_imp_to`.`total_imp`) * 100),0) AS `rate` from (`total_imp_eva_by_evaluator` join `total_imp_to`) ;

-- --------------------------------------------------------

--
-- Structure for view `imp_eva_result`
--
DROP TABLE IF EXISTS `imp_eva_result`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `imp_eva_result`  AS  select `evaluated_imp`.`imp_id_eva` AS `imp_id_eva`,`evaluated_imp`.`w_theme` AS `W_theme`,`evaluated_imp`.`imp_owner_eva` AS `imp_owner_eva`,round((avg(`evaluated_imp`.`e1`) * 10),0) AS `e1`,round((avg(`evaluated_imp`.`e2`) * 3.33333333),0) AS `e2`,round((avg(`evaluated_imp`.`e3`) * 10),0) AS `e3`,round((avg(`evaluated_imp`.`e4`) * 3.33333333),0) AS `e4`,round((avg(`evaluated_imp`.`e5`) * 5),0) AS `e5`,round(((((((avg(`evaluated_imp`.`e1`) * 10) + (avg(`evaluated_imp`.`e2`) * 3.33333333)) + (avg(`evaluated_imp`.`e3`) * 10)) + (avg(`evaluated_imp`.`e4`) * 3.33333333)) + (avg(`evaluated_imp`.`e5`) * 5)) / 5),2) AS `avg_tt` from `evaluated_imp` group by `evaluated_imp`.`imp_id_eva` order by ((((((avg(`evaluated_imp`.`e1`) * 10) + (avg(`evaluated_imp`.`e2`) * 3.33333333)) + (avg(`evaluated_imp`.`e3`) * 10)) + (avg(`evaluated_imp`.`e4`) * 3.33333333)) + (avg(`evaluated_imp`.`e5`) * 5)) / 5) desc ;

-- --------------------------------------------------------

--
-- Structure for view `mkeva`
--
DROP TABLE IF EXISTS `mkeva`;

CREATE ALGORITHM=UNDEFINED DEFINER=`pablo`@`%` SQL SECURITY DEFINER VIEW `mkeva`  AS  select `evaluated_task`.`evaluator` AS `make_eva` from `evaluated_task` group by `evaluated_task`.`evaluator` ;

-- --------------------------------------------------------

--
-- Structure for view `not_eva_imp`
--
DROP TABLE IF EXISTS `not_eva_imp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `not_eva_imp`  AS  select `t1`.`imp_id` AS `imp_id`,`t1`.`w_theme` AS `w_theme`,`t1`.`w_imp_date` AS `w_imp_date`,`t1`.`w_imp_img` AS `w_imp_img`,`t2`.`evaluator` AS `evaluator`,`t2`.`imp_id_eva` AS `imp_id_eva`,`t2`.`e1` AS `e1`,`t2`.`e2` AS `e2`,`t2`.`e3` AS `e3`,`t2`.`e4` AS `e4`,`t2`.`e5` AS `e5`,`t2`.`evaluation_data` AS `evaluation_data` from (`w_imp` `t1` left join `evaluated_imp` `t2` on((`t2`.`imp_id_eva` = `t1`.`imp_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `task_eva_by_evaluator`
--
DROP TABLE IF EXISTS `task_eva_by_evaluator`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `task_eva_by_evaluator`  AS  select `evaluated_task`.`evaluator` AS `evaluator`,`inn_task`.`theme` AS `theme`,`inn_task`.`leader` AS `leader`,`evaluated_task`.`taskid` AS `taskid`,round((`evaluated_task`.`e1` * 10),0) AS `e1`,round((`evaluated_task`.`e2` * 3.333),0) AS `e2`,round((`evaluated_task`.`e3` * 10),0) AS `e3`,round((`evaluated_task`.`e4` * 3.333),0) AS `e4`,round((`evaluated_task`.`e5` * 6.666666667),0) AS `e5`,round((`evaluated_task`.`e6` * 20),0) AS `e6`,round(((((((round((avg(`evaluated_task`.`e1`) * 10),0) + round((avg(`evaluated_task`.`e2`) * 3.333),0)) + round((avg(`evaluated_task`.`e3`) * 10),0)) + round((avg(`evaluated_task`.`e4`) * 3.333),0)) + round((avg(`evaluated_task`.`e5`) * 6.666666667),0)) + round((avg(`evaluated_task`.`e6`) * 20),0)) / 6),0) AS `score` from (`evaluated_task` join `inn_task` on((`inn_task`.`id_task` = `evaluated_task`.`taskid`))) group by `evaluated_task`.`taskid`,`evaluated_task`.`evaluator` ;

-- --------------------------------------------------------

--
-- Structure for view `task_eva_result`
--
DROP TABLE IF EXISTS `task_eva_result`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `task_eva_result`  AS  select `inn_task`.`theme` AS `theme`,`inn_task`.`leader` AS `leader`,`evaluated_task`.`taskid` AS `taskid`,round((avg(`evaluated_task`.`e1`) * 10),0) AS `e1`,round((avg(`evaluated_task`.`e2`) * 3.333),0) AS `e2`,round((avg(`evaluated_task`.`e3`) * 10),0) AS `e3`,round((avg(`evaluated_task`.`e4`) * 3.333),0) AS `e4`,round((avg(`evaluated_task`.`e5`) * 6.666666667),0) AS `e5`,round((avg(`evaluated_task`.`e6`) * 20),0) AS `e6`,round(((((((round((avg(`evaluated_task`.`e1`) * 10),0) + round((avg(`evaluated_task`.`e2`) * 3.333),0)) + round((avg(`evaluated_task`.`e3`) * 10),0)) + round((avg(`evaluated_task`.`e4`) * 3.333),0)) + round((avg(`evaluated_task`.`e5`) * 6.666666667),0)) + round((avg(`evaluated_task`.`e6`) * 20),0)) / 6),0) AS `score` from (`evaluated_task` join `inn_task` on((`inn_task`.`id_task` = `evaluated_task`.`taskid`))) group by `evaluated_task`.`taskid` ;

-- --------------------------------------------------------

--
-- Structure for view `total_imp_eva_by_evaluator`
--
DROP TABLE IF EXISTS `total_imp_eva_by_evaluator`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_imp_eva_by_evaluator`  AS  select `imp_eva_by_evaluators`.`evaluators` AS `evaluators`,count(`imp_eva_by_evaluators`.`evaluators`) AS `total` from `imp_eva_by_evaluators` group by `imp_eva_by_evaluators`.`evaluators` ;

-- --------------------------------------------------------

--
-- Structure for view `total_imp_to`
--
DROP TABLE IF EXISTS `total_imp_to`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_imp_to`  AS  select count(0) AS `total_imp` from `w_imp` ;

-- --------------------------------------------------------

--
-- Structure for view `total_tasks_avg`
--
DROP TABLE IF EXISTS `total_tasks_avg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`pablo`@`%` SQL SECURITY DEFINER VIEW `total_tasks_avg`  AS  select `inn_task`.`theme` AS `theme`,`evaluated_task`.`taskid` AS `taskid`,round((avg(`evaluated_task`.`e1`) * 10),0) AS `e1`,round((avg(`evaluated_task`.`e2`) * 3.333),0) AS `e2`,round((avg(`evaluated_task`.`e3`) * 10),0) AS `e3`,round((avg(`evaluated_task`.`e4`) * 3.333),0) AS `e4`,round((avg(`evaluated_task`.`e5`) * 6.666666667),0) AS `e5`,round((avg(`evaluated_task`.`e6`) * 20),0) AS `e6`,round(avg((((((`evaluated_task`.`e1` + `evaluated_task`.`e2`) + `evaluated_task`.`e3`) + `evaluated_task`.`e4`) + `evaluated_task`.`e5`) + `evaluated_task`.`e6`)),0) AS `score` from (`evaluated_task` join `inn_task` on((`inn_task`.`id_task` = `evaluated_task`.`taskid`))) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
