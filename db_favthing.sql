-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 07, 2019 at 04:47 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favthing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favthing`
--

CREATE TABLE `tbl_favthing` (
  `ID` int(11) NOT NULL,
  `Name` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Genre` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Release Date` date NOT NULL,
  `Platforms` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Image` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_favthing`
--

INSERT INTO `tbl_favthing` (`ID`, `Name`, `Genre`, `Release Date`, `Platforms`, `URL`, `Image`) VALUES
(1, 'LifeAfter', 'Video game', '2019-04-16', 'Android, iOS', 'https://www.lifeafter.game/', 'lifeafter.jpg'),
(2, 'Stardew Valley', 'Simulation Video Game, Tactical role-playing game', '2016-02-26', 'Microsoft Windows, macOS, Linux, PlayStation 4, Xbox One, Nintendo Switch, PlayStation Vita, iOS, Android', 'https://www.stardewvalley.net/', 'stardew_valley.jpg'),
(3, 'Overwatch', 'Arcade game, First-person shooter', '2016-05-24', 'PlayStation 4, Nintendo Switch, Xbox One, Microsoft Windows', 'https://playoverwatch.com/', 'overwatch.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pro`
--

CREATE TABLE `tbl_pro` (
  `ID` tinyint(4) NOT NULL,
  `productID` tinyint(4) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `social` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pro`
--

INSERT INTO `tbl_pro` (`ID`, `productID`, `description`, `social`) VALUES
(1, 1, '\'LifeAfter\' is a survival mobile game, when the devastating virus swept across countries, order and contract collapsed, where do you go?', 'Facebook, Twitter'),
(2, 2, 'Stardew Valley is a farming simulation game primarily inspired by the Harvest Moon video game series. At the start of the game, the player creates their character, who becomes the recipient of a plot of land including a small house once owned by their grandfather in a small town called Pelican Town. The player may select one of five farm maps according to their preference in play styles, such as one with extra foraging spots, one with more mining resources, and another with a river used for fishing. The farm plot is initially overrun with boulders, trees, stumps, and weeds, and the player must work to clear them in order to restart the farm, tending to crops and livestock so as to generate revenue and further expand the farm\'s buildings and facilities.', 'Facebook, Twitter, Reddit, Discord'),
(3, 3, 'Overwatch. An international task force that maintained peace for a generation before it was shut down. Now in the wake of its dismantling, global conflict is rising. Overwatch may be gone… but the world still needs heroes.', 'Facebook, Twitter, Youtube, Instagram');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_favthing`
--
ALTER TABLE `tbl_favthing`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_pro`
--
ALTER TABLE `tbl_pro`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_favthing`
--
ALTER TABLE `tbl_favthing`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pro`
--
ALTER TABLE `tbl_pro`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
