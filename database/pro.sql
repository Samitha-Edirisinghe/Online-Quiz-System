-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for project
CREATE DATABASE IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `project`;


-- Dumping structure for table project.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table project.admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
REPLACE INTO `admin` (`admin_id`, `email`, `password`) VALUES
	(2, 'admin@admin.com', 'admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table project.answer
CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table project.answer: ~5 rows (approximately)
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
REPLACE INTO `answer` (`qid`, `ansid`) VALUES
	('6591052f28cc4', '6591052f2a15e'),
	('6591052f31e13', '6591052f3327d'),
	('6591052f38723', '6591052f3b2e8'),
	('6591052f4083b', '6591052f418e7'),
	('6591052f473af', '6591052f48785');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;


-- Dumping structure for table project.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table project.feedback: ~0 rows (approximately)
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
REPLACE INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
	('6580143156db7', 'Samitha Edirisingha', '22ug1-0791@sltc.ac.lk', 'good', 'super', '2023-12-18', '10:43:13am');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


-- Dumping structure for table project.history
CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table project.history: ~0 rows (approximately)
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;


-- Dumping structure for table project.options
CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table project.options: ~20 rows (approximately)
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
REPLACE INTO `options` (`qid`, `option`, `optionid`) VALUES
	('6591052f28cc4', 'All the above', '6591052f2a15c'),
	('6591052f28cc4', 'Files have a common name space as opposed to virtual memory', '6591052f2a15e'),
	('6591052f28cc4', 'Files are volatile as opposed to virtual memory that is volatile ', '6591052f2a15f'),
	('6591052f28cc4', 'File system is implemented by OS and virtual memory by the HW', '6591052f2a160'),
	('6591052f31e13', 'Windows file type is determined by the extension', '6591052f3327d'),
	('6591052f31e13', ' Linux file types are determined by the file extension', '6591052f3327f'),
	('6591052f31e13', 'Windows file names are case sensitive', '6591052f33280'),
	('6591052f31e13', ' Linux file names are power sensitive ', '6591052f33281'),
	('6591052f38723', 'tree structures files', '6591052f3b2e3'),
	('6591052f38723', ' Byte sequence files ', '6591052f3b2e6'),
	('6591052f38723', ' record sequenced files', '6591052f3b2e7'),
	('6591052f38723', 'Graph structured files', '6591052f3b2e8'),
	('6591052f4083b', 'Directory maps a file name to an inode structure ', '6591052f418e7'),
	('6591052f4083b', 'Directories cannot be viewed as files', '6591052f418eb'),
	('6591052f4083b', 'Directories are files than contains other files inside it', '6591052f418ec'),
	('6591052f4083b', 'None of the above explain what a directory does', '6591052f418ed'),
	('6591052f473af', ' /var directory contains configurations of applications', '6591052f48780'),
	('6591052f473af', '/bin contains binary files that can be executed by all users', '6591052f48785'),
	('6591052f473af', '/sbin contains binaries than can be executed by all users', '6591052f48786'),
	('6591052f473af', '/usr/bin contains the binaries installed by the user', '6591052f48787');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;


-- Dumping structure for table project.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table project.questions: ~5 rows (approximately)
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
REPLACE INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
	('6591046996c9f', '6591052f28cc4', 'What is the main difference between a file and virtual memory? Note that there can be more than one correct answer', 4, 1),
	('6591046996c9f', '6591052f31e13', 'Pick the difference between Linux and Windows file systems. Note that more than one answer can be correct. ', 4, 2),
	('6591046996c9f', '6591052f38723', 'Out of the following which is not a typical file type', 4, 3),
	('6591046996c9f', '6591052f4083b', 'Out of the following pick the correct description about a directory file.', 4, 4),
	('6591046996c9f', '6591052f473af', 'Pick the correct statement about Linux directories. Note that more than one statement can be correct.', 4, 5);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


-- Dumping structure for table project.quiz
CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table project.quiz: ~1 rows (approximately)
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
REPLACE INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
	('6591046996c9f', 'File System Quiz', 20, 5, 5, 25, 'File system quiz', 'File system quiz', '2023-12-31 11:34:25');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;


-- Dumping structure for table project.rank
CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table project.rank: ~0 rows (approximately)
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;


-- Dumping structure for table project.user
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table project.user: ~2 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
	('User1', 'Male', 'SLTC', '22ug1-0791@sltc.ac.lk', 778242896, '38ac0f6b01a81c9a991866fa16968835'),
	('User2', 'M', 'SLTC', 'randikanilupul123@gmail.com', 778242896, '7e58d63b60197ceb55a1c487989a3720');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
