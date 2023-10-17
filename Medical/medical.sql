-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 29, 2018 at 05:38 AM
-- Server version: 5.7.19
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
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `expirychk`
--

DROP TABLE IF EXISTS `expirychk`;
CREATE TABLE IF NOT EXISTS `expirychk` (
  `ProductName` text NOT NULL,
  `CompanyName` text NOT NULL,
  `MfgDate` text NOT NULL,
  `ExpiryDate` text NOT NULL,
  `BatchNumber` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expirychk`
--

INSERT INTO `expirychk` (`ProductName`, `CompanyName`, `MfgDate`, `ExpiryDate`, `BatchNumber`) VALUES
('Corex', 'Pfizer', '12-03-2016', '12-04-2019', '1245896'),
('Bournvitta', 'Nestle', '25-05-2016', '17-05-2017', '320145'),
('Crocin', 'Cipla', '12-05-2016', '12-05-2019', '7856495'),
('Crocin', 'Cipla', '12-06-2016', '12-06-2018', '1234568'),
('Corex', 'Pfizer', '12052016', '12052017', '545564545'),
('Bournvitta', 'Nestle', '7 jun 2017', '8 jun 2018', '5567657645'),
('Crocin', 'Cipla', '1JUL2017', '1FEB2019', '3342323'),
('Corex', 'Pfizer', '12-03-2016', '12-04-2019', '1245896'),
('Bournvitta', 'Nestle', '25-05-2016', '17-05-2017', '320145'),
('Crocin', 'Cipla', '12-05-2016', '12-05-2019', '7856495'),
('Crocin', 'Cipla', '12-06-2016', '12-06-2018', '1234568'),
('Corex', 'Pfizer', '12052016', '12052017', '545564545'),
('Bournvitta', 'Nestle', '7 jun 2017', '8 jun 2018', '5567657645'),
('Crocin', 'Cipla', '1JUL2017', '1FEB2019', '3342323');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `Username` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('Anu', '12345'),
('Anu', '12345'),
('Dhandeep', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `ncompany`
--

DROP TABLE IF EXISTS `ncompany`;
CREATE TABLE IF NOT EXISTS `ncompany` (
  `CompanyName` text NOT NULL,
  `CompanyCountry` text NOT NULL,
  `CompanyEmail` text NOT NULL,
  `CompanyContact` text NOT NULL,
  `CompanyAddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ncompany`
--

INSERT INTO `ncompany` (`CompanyName`, `CompanyCountry`, `CompanyEmail`, `CompanyContact`, `CompanyAddress`) VALUES
('Sun Pharma', 'India', 'sun@care.com', '123456', 'Ind Ph-1 Bangalore'),
('Ranbaxy', 'India', 'care@ranbaxy.com', '8950505050', 'New delhi '),
('GlaxoSmith', 'India', 'smith@care.com', '7402516311', 'New Delhi'),
('Zandu', 'India', 'zandu@care.com', '8930111594', 'New Delhi'),
('Dolo', 'India', 'dolo@care.com', '7404243596', 'Jalandhar'),
('Pharmacy', 'India', 'pharmacy@care.com', '9896419064', 'YNR'),
('parac', 'indonesia', 'palasder@gmail.com', '9999456789', 'gfdfdfd'),
('Sun Pharma', 'India', 'sun@care.com', '123456', 'Ind Ph-1 Bangalore'),
('Ranbaxy', 'India', 'care@ranbaxy.com', '8950505050', 'New delhi '),
('GlaxoSmith', 'India', 'smith@care.com', '7402516311', 'New Delhi'),
('Zandu', 'India', 'zandu@care.com', '8930111594', 'New Delhi'),
('Dolo', 'India', 'dolo@care.com', '7404243596', 'Jalandhar'),
('Pharmacy', 'India', 'pharmacy@care.com', '9896419064', 'YNR'),
('parac', 'indonesia', 'palasder@gmail.com', '9999456789', 'gfdfdfd');

-- --------------------------------------------------------

--
-- Table structure for table `nproduct`
--

DROP TABLE IF EXISTS `nproduct`;
CREATE TABLE IF NOT EXISTS `nproduct` (
  `ProductName` text NOT NULL,
  `CompanyName` text NOT NULL,
  `ProductCategory` text NOT NULL,
  `ProductQuantity` text NOT NULL,
  `ProductPrice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nsales`
--

DROP TABLE IF EXISTS `nsales`;
CREATE TABLE IF NOT EXISTS `nsales` (
  `ProductName` text NOT NULL,
  `CompanyName` text NOT NULL,
  `ProductQuantity` text NOT NULL,
  `ProductPrice` text NOT NULL,
  `CustomerName` text NOT NULL,
  `PurchaseDate` text NOT NULL,
  `AmountPaid` text NOT NULL,
  `Credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nsales`
--

INSERT INTO `nsales` (`ProductName`, `CompanyName`, `ProductQuantity`, `ProductPrice`, `CustomerName`, `PurchaseDate`, `AmountPaid`, `Credit`) VALUES
('Benadryl', 'Cipla', '15 pc', '65 piece', 'Navjot', '25072016', '25', '30'),
('Diarex', 'Himalya', '1 pc', '50', 'Dhandeep', '25072016', '50', '0'),
('Bournvitta', 'Nestle', '1', '215', 'Valchu', '25072016', '100', '115'),
('Bournvitta', 'Nestle', '1 pc', '215', 'Harjinder Singh', '25072016', '150', '65'),
('Dolomed 650', 'Dolo', '2', '15 Rs', 'Bhupinder Singh', '25-07-2016', '15 Rs', '0 Rs'),
('Crocin', 'Cipla', '5 Strips', '12 RS', 'Bhupinder Singh', '25-07-2016', '0 Rs', '60 RS'),
('Crocin', 'Cipla', '10 strips', '10 RS Strip', 'Maninder', '26072016', '50', '50'),
('Bournvitta', 'Nestle', '1 Pc', '180', 'Ananth', '7 JUN 2017', '0', '180'),
('Clean & Clear', 'Nestle', '4', '56', 'fdf', 'fdf', 'dfdf', 'sds'),
('Bournvitta', 'Nestle', '1', '180', 'Rajbir', '09062017', '100', '80'),
('Bournvitta', 'Nestle', '1 pc', '180', 'pradeep', '13062017', '100', '80'),
('Clean & Clear', 'Johnson&Johnson', '1', '130', 'Deepak', '16062017', '0', '130'),
('Clean & Clear', 'Johnson&Johnson', '1', '100', 'Jasveen Kaur', '1Jul2017', '0', '100'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', 'sd', 'dsd', 'sdd', 'sds', 'dsd'),
('Crocin', 'Cipla', '2', 'ss', 'sd', 'sd', 'sd', 'sd'),
('Amlopress AT', 'Cipla', '2', 'ss', 'sd', 'sd', 'sd', 'sd'),
('Glucomed', 'Pfizer', '5', '110', 'Bhupinder', '17July2017', '550', '0'),
('Glucomed', 'Pfizer', '6', '110', 'ankit', '17072017', '660', '0'),
('Glucomed', 'Pfizer', '6', '120', 'arjun', '17062017', '720', '0'),
('Paracetamol', 'Cipla', '5', '17', 'Aditya', '17072017', '85', '0'),
('Benadryl', 'Cipla', '15 pc', '65 piece', 'Navjot', '25072016', '25', '30'),
('Diarex', 'Himalya', '1 pc', '50', 'Dhandeep', '25072016', '50', '0'),
('Bournvitta', 'Nestle', '1', '215', 'Valchu', '25072016', '100', '115'),
('Bournvitta', 'Nestle', '1 pc', '215', 'Harjinder Singh', '25072016', '150', '65'),
('Dolomed 650', 'Dolo', '2', '15 Rs', 'Bhupinder Singh', '25-07-2016', '15 Rs', '0 Rs'),
('Crocin', 'Cipla', '5 Strips', '12 RS', 'Bhupinder Singh', '25-07-2016', '0 Rs', '60 RS'),
('Crocin', 'Cipla', '10 strips', '10 RS Strip', 'Maninder', '26072016', '50', '50'),
('Bournvitta', 'Nestle', '1 Pc', '180', 'Ananth', '7 JUN 2017', '0', '180'),
('Clean & Clear', 'Nestle', '4', '56', 'fdf', 'fdf', 'dfdf', 'sds'),
('Bournvitta', 'Nestle', '1', '180', 'Rajbir', '09062017', '100', '80'),
('Bournvitta', 'Nestle', '1 pc', '180', 'pradeep', '13062017', '100', '80'),
('Clean & Clear', 'Johnson&Johnson', '1', '130', 'Deepak', '16062017', '0', '130'),
('Clean & Clear', 'Johnson&Johnson', '1', '100', 'Jasveen Kaur', '1Jul2017', '0', '100'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', '56', 'Hunny', '14july2017', '112', '0'),
('Amlopress AT', 'Cipla', '2', 'sd', 'dsd', 'sdd', 'sds', 'dsd'),
('Crocin', 'Cipla', '2', 'ss', 'sd', 'sd', 'sd', 'sd'),
('Amlopress AT', 'Cipla', '2', 'ss', 'sd', 'sd', 'sd', 'sd'),
('Glucomed', 'Pfizer', '5', '110', 'Bhupinder', '17July2017', '550', '0'),
('Glucomed', 'Pfizer', '6', '110', 'ankit', '17072017', '660', '0'),
('Glucomed', 'Pfizer', '6', '120', 'arjun', '17062017', '720', '0'),
('Paracetamol', 'Cipla', '5', '17', 'Aditya', '17072017', '85', '0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
