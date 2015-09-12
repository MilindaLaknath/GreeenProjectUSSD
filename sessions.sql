-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.16


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema sessiondb
--

CREATE DATABASE IF NOT EXISTS sessiondb;
USE sessiondb;

--
-- Definition of table `gbcollector`
--

DROP TABLE IF EXISTS `gbcollector`;
CREATE TABLE `gbcollector` (
`gcid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `number` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`gcid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gbcollector`
--

/*!40000 ALTER TABLE `gbcollector` DISABLE KEYS */;
INSERT INTO `gbcollector` (`gcid`,`fname`,`lname`,`city`,`type`,`number`, `password`) VALUES 
 (1,'Chamara','Patirana','Colombo','Paper','789456123', '202cb962ac59075b964b07152d234b70'),
 (2,'Sirisena','Kuree','Mihintale','Compostable','123456789', '202cb962ac59075b964b07152d234b70'),
 (3,'Duminda','Dissanayaka','Matara','Glass','789123456', ''),
 (4,'Gayan','Perera','Gall','Paper','456123789', ''),
 (5,'Sadun','Perera','Kurunagala','Paper','147258369', '');
/*!40000 ALTER TABLE `gbcollector` ENABLE KEYS */;


--
-- Definition of table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `sessionsid` varchar(100) NOT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `pg` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `others` varchar(50) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  PRIMARY KEY (`sessionsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Handle the sessions';

--
-- Dumping data for table `sessions`
--
-- --------------------------------------------------------

--
-- Table structure for table `individual`
--

CREATE TABLE `individual` (
`id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `lan` float NOT NULL,
  `lon` float NOT NULL,
  `gtype` int(11) NOT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0',
  `collected` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `individual`
--

INSERT INTO `individual` (`id`, `number`, `lan`, `lon`, `gtype`, `assigned`, `collected`) VALUES
(1, 716767333, 8.3332, 82.4151, 1, 2, 0);

-- --------------------------------------------------------


/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
