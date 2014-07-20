-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2014 at 02:21 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `a3823538_nsbm`
--
CREATE DATABASE IF NOT EXISTS `a3823538_nsbm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `a3823538_nsbm`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `album_title`) VALUES
(1, 'CONVOCATION 2014 Interior Architecture – Batch 02'),
(2, 'NSBM Software Competition (NSC) 2014'),
(3, 'Youth Engage - Workshop by NSAC'),
(4, 'Mozila day at NSBM');

-- --------------------------------------------------------

--
-- Table structure for table `course_comp`
--

CREATE TABLE IF NOT EXISTS `course_comp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `objective` text NOT NULL,
  `entry` text NOT NULL,
  `content1` text NOT NULL,
  `content2` text NOT NULL,
  `content3` text NOT NULL,
  `duration` varchar(7) NOT NULL,
  `commencement` varchar(50) NOT NULL,
  `lecture` varchar(100) NOT NULL,
  `course_director` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `course_comp`
--

INSERT INTO `course_comp` (`id`, `name`, `objective`, `entry`, `content1`, `content2`, `content3`, `duration`, `commencement`, `lecture`, `course_director`) VALUES
(1, 'BSc (Hons) in Management Information Systems - Special (UGC Approved)', '<ul> \r\n<li>A university level Degree that provides participants with comprehensive knowledge of Management Information Systems</li>\r\n<li>To prepare undergraduates to demonstrate conceptual knowledge in different disciplines that supports and facilitates lifelong learning.</li>\r\n<li>To develop capabilities to translate acquired knowledge into business practices of different industries.</li>\r\n<li>To develop the ability to understand & analyze business problems and to develop creative solutions.</li>\r\n<li>To develop a strong sense of responsibility and commitment towards the development of the nation. </li>\r\n</ul>', '<ul><li>3 Passes at GCE A/L.</li>\r\n<li>5 Credits at GCE O/L including Maths and English</li>\r\n</ul>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Introduction to Computer Science</li>\r\n\r\n<li>Quantitative Techniques for Computing</li>\r\n\r\n<li>Data Structures and C Language</li>\r\n\r\n<li>Computer Technology</li>\r\n\r\n<li>OOP with C++</li>\r\n\r\n<li>Database Management Systems</li>\r\n\r\n<li>Internet Technology</li>\r\n\r\n<li>System Software</li>\r\n\r\n<li>Programming in JAVA</li>\r\n\r\n<li>System Analysis and Design</li>\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Management Practices</li>\r\n\r\n<li>Software Engineering</li>\r\n\r\n<li>Data Structures & Algorithms</li>\r\n\r\n<li>Computer Networks</li>\r\n\r\n<li>Advance Data Base Management Systems</li>\r\n\r\n<li>Object Oriented Programming and Design I</li>\r\n\r\n<li>Agile Software Development Technologies</li>\r\n\r\n<li>Data Warehousing and Data Mining</li>\r\n\r\n<li>Object Oriented Programming and Design II</li>\r\n\r\n<li>Distributed Processing</li>\r\n	</ul>', '', '4 years', 'September 2014 and March 2015', '1st & 2nd Years Weekdays 0900h - 1600h /3rd & 4th Years Evening & Weekends', 'Ms. K. Wijesiriwardana, Mr. Chaminda Wijesinghe'),
(2, 'BSc in Computer Science (University College of Dublin)', '<p>A University Level Degree that provides participants with comprehensive knowledge of Computer Science.</p>', '<ul><li>2 Passes at GCE A/L (Science Stream)</li>\r\n<li>5 Credits at GCE O/L including Maths and English</li>\r\n</ul>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Formal Foundation</li>\r\n\r\n<li>Foundation of Mathematics for Computer Science I</li>\r\n\r\n<li>Computer Programming I</li>\r\n\r\n<li>Algorithmic Problem Solving</li>\r\n\r\n<li>Computer Science in Practice</li>\r\n\r\n<li>Computer Programming II</li>\r\n\r\n<li>Foundation of Mathematics for Computer Science II</li>\r\n\r\n<li>Matrix Algebra</li>\r\n\r\n<li>Introduction to Computer Architecture</li>\r\n\r\n<li>Software Engineering Project II</li>\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Data Structures & Algorithms I</li>\r\n\r\n<li>Digitals Systems</li>\r\n\r\n<li>Databases and Information Systems</li>\r\n\r\n<li>Discrete Mathematics for Computer Science</li>\r\n\r\n<li>Linear Algebra I</li>\r\n\r\n<li>Data Structures & Algorithms II</li>\r\n\r\n<li>Introduction to Operating Systems</li>\r\n\r\n<li>Introduction to Functional Programming</li>\r\n\r\n<li>Linear Algebra II</li>\r\n\r\n<li>Software Engineering Project II</li>\r\n	</ul>', '', '4 years', 'September 2014 and March 2015', '1st & 2nd Years Weekdays 0900h - 1600h /3rd & 4th Years Evening & Weekends', 'Ms. K. Wijesiriwardana, Mrs. Naduni Ekanayake'),
(3, 'BSc (Honours) Computer Networks (University of Plymouth-United Kingdom)', '<p>This programme provides graduates with an understanding of current challenges and trends in the area of computer networks and equips them with the set of skills demanded by industry and required to set up, manage and troubleshoot current and future networks.</p>', '<p>G. C. E. Advanced Level(New Syllabus) - Passes for 3 subjects in one attempt</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Introduction to Networks & Distributed Systems</li>\r\n\r\n<li>Computer Systems</li>\r\n\r\n<li>Database Development</li>\r\n\r\n<li>Web Site Development</li>\r\n\r\n<li>The IT Professional</li>\r\n\r\n<li>Software Requirements</li>\r\n\r\n<li>Software Engineering/li>\r\n\r\n<li>Mathematics with Applications 1</li>\r\n\r\n<li>Principles of Programming: Structures & Algorithms</li>\r\n</ul>\r\n', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Network & System Administration</li>\r\n\r\n<li>Computer Networks</li>\r\n\r\n<li>Network security</li>\r\n\r\n<li>Integrating project</li>\r\n\r\n<li>Databases</li>\r\n\r\n<li>Human Computer Interaction</li>\r\n\r\n<li>IT Legalisation & Ethics</li>\r\n\r\n<li>Software Development Platforms</li>\r\n\r\n<li>Software Engineering for the Internet using Java</li>\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n<ul>\r\n<li>Advanced Databases and Their Applications</li>\r\n<li>Voice and Video over IP</li>\r\n<li>Distributed Systems</li>\r\n<li>Incident Prevention, Detection & Response</li>\r\n<li>Network Monitoring</li>\r\n<li>Software Development and Project Management</li>\r\n<li>Cross-platform Development in C++</li>\r\n<li>Project</li>\r\n</ul>', '3 years', 'September 2014 and March 2015', '1st & 2nd Years Weekdays 0900h - 1600h /3rd Year Evening & Weekends', 'Ms. Nadeera Ahangama'),
(4, 'BSc (Honours) Software Engineering (University of Plymouth-United Kingdom)', '<p>The aim of this program is to provide the graduates with an understanding of the current challenges and trends in the area of software engineering and development and quip them with the required set of skills demanded by the industry and needs and IT trends.</p>', '<p>G. C. E. Advanced Level(New Syllabus) - Passes for 3 subjects in one attempt</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Introduction to Networks & Distributed Systems</li>\r\n\r\n<li>Computer Systems</li>\r\n\r\n<li>Database Development</li>\r\n\r\n<li>Web Site Development</li>\r\n\r\n<li>The IT Professional</li>\r\n\r\n<li>Software Requirements</li>\r\n\r\n<li>Software Engineering/li>\r\n\r\n<li>Mathematics with Applications 1</li>\r\n\r\n<li>Principles of Programming: Structures & Algorithms</li>\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Network & System Administration</li>\r\n\r\n<li>Computer Networks</li>\r\n\r\n<li>Network security</li>\r\n\r\n<li>Integrating project</li>\r\n\r\n<li>Databases</li>\r\n\r\n<li>Human Computer Interaction</li>\r\n\r\n<li>IT Legalisation & Ethics</li>\r\n\r\n<li>Software Development Platforms</li>\r\n\r\n<li>Software Engineering for the Internet using Java</li>\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n<ul>\r\n<li>Advanced Databases and Their Applications</li>\r\n<li>API Software Development</li>\r\n<li>Distributed Systems</li>\r\n<li>Incident Prevention, Detection & Response</li>\r\n<li>Network Monitoring</li>\r\n<li>Software Development and Project Management</li>\r\n<li>Cross-platform Development in C++</li>\r\n<li>Project</li>\r\n</ul>\r\n', '3 years', 'September 2014 and March 2015', '1st & 2nd Years Weekdays 0900h - 1600h /3rd Year Evening & Weekends', 'Ms. Nadeera Ahangama'),
(5, 'BSc (Honours) Computer Security (University of Plymouth-United Kingdom)', '<p>The aim of this programme is to provide the graduates with an understanding of the current challenges and trends in the area of computer security and equip them with the required set of skills demanded by the industry and security needs of current and future IT infrastructures.</p>', '<p>G. C. E. Advanced Level(New Syllabus) - Passes for 3 subjects in one attempt</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Introduction to Networks & Distributed Systems</li>\r\n\r\n<li>Computer Systems</li>\r\n\r\n<li>Database Development</li>\r\n\r\n<li>Web Site Development</li>\r\n\r\n<li>The IT Professional</li>\r\n\r\n<li>Software Requirements</li>\r\n\r\n<li>Software Engineering/li>\r\n\r\n<li>Mathematics with Applications 1</li>\r\n\r\n<li>Principles of Programming: Structures & Algorithms</li>\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Network & System Administration</li>\r\n\r\n<li>Computer Networks</li>\r\n\r\n<li>Network security</li>\r\n\r\n<li>Integrating project</li>\r\n\r\n<li>Databases</li>\r\n\r\n<li>Human Computer Interaction</li>\r\n\r\n<li>IT Legalisation & Ethics</li>\r\n\r\n<li>Software Development Platforms</li>\r\n\r\n<li>Software Engineering for the Internet using Java</li>\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n<ul>\r\n<li>Cybercrime & Forensic Investigation</li>\r\n<li>Security for Mobile Systems/li>\r\n<li>Applications of Security</li>\r\n<li>Information Security Management</li>\r\n<li>Incident Prevention, Detection & Response</li>\r\n<li>Network Monitoring</li>\r\n<li>Software Development and Project Management</li>\r\n<li>Cross-platform Development in C++</li>\r\n<li>Project</li>\r\n</ul>\r\n', '3 years', 'September 2014 and March 2015', '1st & 2nd Years Weekdays 0900h - 1600h /3rd Year Evening & Weekends', 'Ms. K. Wijesiriwardana.');

-- --------------------------------------------------------

--
-- Table structure for table `course_mgt`
--

CREATE TABLE IF NOT EXISTS `course_mgt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `objective` text NOT NULL,
  `entry` text NOT NULL,
  `content1` text NOT NULL,
  `content2` text NOT NULL,
  `content3` text NOT NULL,
  `content4` text NOT NULL,
  `duration` varchar(7) NOT NULL,
  `commencement` varchar(50) NOT NULL,
  `lecture` varchar(100) NOT NULL,
  `course_director` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `course_mgt`
--

INSERT INTO `course_mgt` (`id`, `name`, `objective`, `entry`, `content1`, `content2`, `content3`, `content4`, `duration`, `commencement`, `lecture`, `course_director`) VALUES
(1, 'Bachelor of Arts in Interior Design (Limkokwing University of Creative Technology)', '<p>To provide students with an undergraduate professional course of study that conforms to the established academic standards for interior design.\r\nTo develop skills in applying design principles in a wide variety of residential and non-residential projects; requiring knowledge of space planning, materials, finishes, textiles, lighting, surfaces, structures and codes</p>', '<p>O/L qualification, A/L with 3 Passes</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Interior Architecture</li>\r\n\r\n<li>Architecture Graphic</li>\r\n\r\n<li>Building Construction and Materials</li>\r\n\r\n<li>Architecture Culture and History</li>\r\n\r\n<li>Theory and Practice of Design</li>\r\n\r\n<li>Building Science</li>\r\n\r\n<li>Environmental Psychology</li>\r\n\r\n<li>Seminar/Workshop</li>\r\n\r\n<li>Interior architecture</li>\r\n\r\n<li>Digital Communication</li>\r\n\r\n<li>Design Communication</li>\r\n\r\n<li>Building Construction and Materials</li>\r\n\r\n<li>Architecture Culture and History</li>\r\n\r\n<li>Building Science</li>\r\n\r\n</ul>\r\n', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Furniture Design Workshop</li>\r\n\r\n<li>Interior Architecture</li>\r\n\r\n<li>Digital Communication</li>\r\n\r\n<li>Design Communication</li>\r\n\r\n<li>Building Technology</li>\r\n\r\n<li>Architecture Culture and History</li>\r\n\r\n<li>Building Science</li>\r\n\r\n<li>Furniture Design Workshop</li>\r\n\r\n<li>Furniture Furnishing Fitting and Equipment</li>\r\n\r\n<li>Interior Architecture</li>\r\n\r\n<li>Digital Communication</li>\r\n\r\n<li>Design Communication</li>\r\n\r\n<li>Building Technology</li>\r\n\r\n<li>Environmental Study and Services</li>\r\n\r\n<li>Professional Practice</li>\r\n\r\n<li>Global Classroom</li>\r\n\r\n	</ul>\r\n', '<h6>Year 3</h6>\r\n<ul>\r\n<li>Practical Training and Report</li>\r\n\r\n<li>Design Management and Bye Law</li>\r\n\r\n<li>Research Methodology</li>\r\n\r\n<li>Interior Architecture</li>\r\n\r\n<li>Directed Research</li>\r\n\r\n<li>Leadership in Energy and Environmental Design (LEED)</li>\r\n\r\n<li>Project Management</li>\r\n\r\n\r\n</ul>\r\n', '', '3 years', 'September 2014', 'Week days 0900h - 1600h', 'Ms.Chinthika Gunawardana'),
(2, 'BSc (Hons) Marketing Management (University of Plymouth-United Kingdom)', '<p>This degree course aims to develop the students understanding of how both business and Marketing Managers function. Marketing management is regularly faced with the need to analyse complex situations, develop a viable plan of action and pursue this plan to a successful conclusion. This course focuses on practice as well as theory.</p>', '<p>G. C. E. Advanced Level(New Syllabus) - Passes for 3 subjects</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Economics for Business I</li>\r\n\r\n<li>ntroduction to Finance & Quantitative Methods</li>\r\n\r\n<li>World of Business</li>\r\n\r\n<li>Business Communication</li>\r\n\r\n<li>Personal Development</li>\r\n\r\n<li>Economics for Business II</li>\r\n\r\n<li>Principles of Accounting</li>\r\n\r\n<li>Introduction to Marketing</li>\r\n\r\n<li>Organisational Behavior</li>\r\n\r\n<li>Business Law</li>\r\n\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Enterprise and Innovation</li>\r\n\r\n<li>Business Ethics</li>\r\n\r\n<li>Business and Market Research</li>\r\n\r\n<li>Buyer Behaviour</li>\r\n\r\n<li>New Product Development and Marketing Planning</li>\r\n\r\n<li>Advertising, Brand Management and Marketing Communications</li>\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n      <ul>\r\n<li>International Marketing</li>\r\n\r\n<li>Contemporary Issues in Marketing</li>\r\n\r\n<li>Organisational Leadership</li>\r\n\r\n<li>Marketing Management</li>\r\n\r\n<li>Corporate Strategy</li>\r\n\r\n<li>Current Issues in Management</li>\r\n\r\n	</ul>', '', '3 years', 'March 2014', 'Week days Evening & Weekends', 'Ms Irosha Perera'),
(3, 'BSc (Hons) Operations and Logistics Management (University of Plymouth-United Kingdom)', '<p>he BSc (Hons) Operations and Logistics Management programme aims to provide critical and comprehensive understanding of logistics techniques, operations and strategies. It also imparts an understanding of complex logistics environment and the ability to develop problem solving skills for complex trading environments. It covers related and wider business areas with the aim to enhance students’ critical thinking and analytical capability on the subject and apply them in the domestic and international contexts.</p>', '<p>G. C. E. Advanced Level(New Syllabus) - Passes for 3 subjects</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Economics for Business I</li>\r\n\r\n<li>ntroduction to Finance & Quantitative Methods</li>\r\n\r\n<li>World of Business</li>\r\n\r\n<li>Business Communication</li>\r\n\r\n<li>Personal Development</li>\r\n\r\n<li>Economics for Business II</li>\r\n\r\n<li>Principles of Accounting</li>\r\n\r\n<li>Introduction to Marketing</li>\r\n\r\n<li>Organisational Behavior</li>\r\n\r\n<li>Business Law</li>\r\n\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Operations Management</li>\r\n\r\n<li>Principles of Purchasing Management</li>\r\n\r\n<li>International Logistics & Supply Chain Management</li>\r\n\r\n<li>Business and Marketing Research</li>\r\n\r\n<li>Managing People</li>\r\n\r\n<li>International Business</li>\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n      <ul>\r\n<li>Advanced Logistics Management (specialized module)</li>\r\n\r\n<li>Advanced Supply Chain Management</li>\r\n\r\n<li>Operations Management for Competitive Advantage</li>\r\n\r\n<li>Port Management and Intermodalism</li>\r\n\r\n<li>Current issues in Management</li>\r\n\r\n<li>Corporate Strategy</li>\r\n\r\n	</ul>', '', '3 years', 'March 2014', '1st & 2nd Years Weekdays 09 00h – 16 00h / 3rd Year Evening & Weekends', 'Mr. D. M. A. Kulasooriya'),
(4, 'BSc (Hons) International Management and Business (University of Plymouth-United Kingdom)', '<p>The BSc International Management and Business course aims to develop your understanding of the major economic, political, business and cultural factors which affect the international business environment. You will gain a critical understanding of the key areas of business, and will apply your knowledge in an international context. Your career prospects will be enhanced through a combination of academic knowledge and the development of key skills. The world of business is global, dynamic and fast-paced. Your degree will help you to prosper and succeed in an ever changing business environment and play your part in the economy of the future.</p>', '<p>G. C. E. Advanced Level(New Syllabus) - Passes for 3 subjects</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Economics for Business I</li>\r\n\r\n<li>ntroduction to Finance & Quantitative Methods</li>\r\n\r\n<li>World of Business</li>\r\n\r\n<li>Business Communication</li>\r\n\r\n<li>Personal Development</li>\r\n\r\n<li>Economics for Business II</li>\r\n\r\n<li>Principles of Accounting</li>\r\n\r\n<li>Introduction to Marketing</li>\r\n\r\n<li>Organisational Behavior</li>\r\n\r\n<li>Business Law</li>\r\n\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>International Business</li>\r\n\r\n<li>Operations Management</li>\r\n\r\n<li>Managing People</li>\r\n\r\n<li>Enterprise and Innovation</li>\r\n\r\n<li>Business Ethics</li>\r\n\r\n<li>Business and Market Research</li>\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n      <ul>\r\n<li>Global Enterprise</li>\r\n\r\n<li>International Marketing</li>\r\n\r\n<li>International and Comparative HRM</li>\r\n\r\n<li>Organisational Leadership</li>\r\n\r\n<li>Corporate Strategy</li>\r\n\r\n<li>Current Issues in Management</li>\r\n\r\n	</ul>', '', '3 years', 'March 2014', '1st & 2nd Years Weekdays 09 00h – 16 00h / 3rd Year Evening & Weekends', 'Ms Irosha Perera'),
(5, 'BSc (Hons) Events, Tourism and Hospitality (University of Plymouth-United Kingdom)', '<p>The BSc (Hons) Events, Tourism and Hospitality degree integrates these related and fast-growing industries. Due to ever demanding standards required by consumers, there is a need for dynamic managers equipped with the necessary skills to provide the high levels of service expected.</p>', '<p>G. C. E. Advanced Level(New Syllabus) - Passes for 3 subjects</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Economics for Business I</li>\r\n\r\n<li>ntroduction to Finance & Quantitative Methods</li>\r\n\r\n<li>World of Business</li>\r\n\r\n<li>Business Communication</li>\r\n\r\n<li>Personal Development</li>\r\n\r\n<li>Economics for Business II</li>\r\n\r\n<li>Principles of Accounting</li>\r\n\r\n<li>Introduction to Marketing</li>\r\n\r\n<li>Organisational Behavior</li>\r\n\r\n<li>Business Law</li>\r\n\r\n</ul>\r\n', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Managing People</li>\r\n\r\n<li>Business and Market Research</li>\r\n\r\n<li>Tourism Planning & Management</li>\r\n\r\n<li>Event Planning and Strategy</li>\r\n\r\n<li>Festivals and Exhibitions</li>\r\n\r\n<li>Managing Facilities</li>\r\n\r\n	</ul>\r\n', '<h6>Year 3</h6>\r\n      <ul>\r\n<li>Event Innovation</li>\r\n\r\n<li>Contemporary Issues in Tourism</li>\r\n\r\n<li>Crisis and Disaster Management in the Hospitality, Tourism and Event Industries</li>\r\n\r\n<li>Managing Service Innovation</li>\r\n\r\n<li>Honours Project</li>\r\n\r\n\r\n	</ul>', '', '3 years', 'March 2014', '1st & 2nd Years Weekdays 09 00h – 16 00h / 3rd Year Evening & Weekends', 'Ms. Irosha Perera'),
(6, 'BSc (Hons) in Management (conducted in collaboration with University College Dublin, National Univer', '<p>To provide an opportunity to the students to obtain a world class degree\r\nTo provide students with a solid conceptual and practical understanding of business management\r\nTo facilitate the students for personal development and confidence building to meet the challenges of the modern day business.</p>', '<p>NIBM Advanced Diploma in Business Management and Higher Diploma in Business Management\r\nDiploma + 3 Years Experience</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>HRM : Strategy and Policy</li>\r\n\r\n<li>Management Information Systems</li>\r\n\r\n<li>International Business</li>\r\n\r\n<li>Introduction to Accounting</li>\r\n\r\n<li>Managing Change</li>\r\n\r\n<li>Project Management</li>\r\n\r\n</ul>\r\n', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Business Policy</li>\r\n\r\n<li>Management of Organizations</li>\r\n\r\n<li>International Marketing Management</li>\r\n\r\n<li>Electronic Commerce</li>\r\n\r\n<li>Operations and Technology Management</li>\r\n\r\n<li>Management Research Project</li>\r\n\r\n	</ul>', '', '', '2 years', 'March 2014', 'Week days Evening & Weekends', 'Dr. Michael MacDonnell, University College Dublin, Ireland /Mr. Kulasooriya D M A / Ms Irosha Perera'),
(7, 'BSc (Hons) in Human Resource Management (University College of Dublin)', '<p>To provide an opportunity to the students to obtain a world class degree\r\nTo provide students with a solid conceptual and practical understanding of businessHuman Resource management\r\nTo facilitate the students for personal development and confidence building to meet the challenges of the modern day business.</p>', '<p>Advanced Level(New Syllabus) - Passes for 3 subjects\r\nFaced for A/L & 5 Credits for O/L including Credit for English</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Principles of Management</li>\r\n\r\n<li>Induction and Returning to Learning</li>\r\n\r\n<li>Business English</li>\r\n\r\n<li>Financial Accounting</li>\r\n\r\n<li>Marketing Management</li>\r\n\r\n<li>Principles of Economics</li>\r\n\r\n<li>Business Law</li>\r\n\r\n<li>Business Statistics</li>\r\n\r\n<li>Management Accounting</li>\r\n\r\n<li>Strategic Management</li>\r\n\r\n<li>Project Report</li>\r\n\r\n\r\n</ul>\r\n', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Organizational Behavior</li>\r\n\r\n<li>Continuous Professional Development</li>\r\n\r\n<li>Operations Management</li>\r\n\r\n<li>Human Resource Management</li>\r\n\r\n<li>Business Ethics & Environmental Management</li>\r\n\r\n<li>Logistics Management</li>\r\n\r\n<li>Employee Relations</li>\r\n\r\n<li>Quality Management</li>\r\n\r\n<li>Strategic Management</li>\r\n\r\n<li>Business Research Project & Industrial Training<li>\r\n\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n<ul>\r\n\r\n<li>HRM : Strategy and Policy</li>\r\n\r\n<li>Management Information Systems</li>\r\n\r\n<li>International Business Management</li>\r\n\r\n<li>International Business</li>\r\n\r\n<li>Introduction to Accounting</li>\r\n\r\n<li>Managing Change</li>\r\n\r\n<li>Project Management</li>\r\n\r\n</ul>', '<h6>Year 4</h6>\r\n<ul>\r\n\r\n<li>Business Policy</li>\r\n\r\n<li>Management of Organizations</li>\r\n\r\n<li>Human Resource Development</li>\r\n\r\n<li>Electronic Commerce</li>\r\n\r\n<li>Work Place Practice</li>\r\n\r\n<li>Critical Issues in Industrial Relations and HRM</li>\r\n</ul>', '4 years', 'March 2014', '1st & 2nd Years Weekdays 0900h - 1600h /3rd Year Evening & Weekends', 'Mr. Kulasooriya D M A / Ms Irosha Perera'),
(8, 'BSc in Human Resource Management - Special (University Grant Commission Approved))', '<p>To prepare undergraduates to demonstrate conceptual knowledge in different disciplines that supports and facilitates lifelong learning\r\nTo develop capabilities to translate acquired knowledge into business practices of different industries\r\nTo develop the ability to understand & analyze business problems and to develop creative solutions\r\nTo develop a strong sense of responsibility and commitment towards the development of the nation</p>', '<p>Advanced Level(New Syllabus) - Passes for 3 subjects in one attempt\r\nGCE O/L Passes for 6 subjectss(with 3 credit passes)</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Principles of Management</li>\r\n\r\n<li>Induction and Returning to Learning</li>\r\n\r\n<li>Business English</li>\r\n\r\n<li>Financial Accounting</li>\r\n\r\n<li>Marketing Management</li>\r\n\r\n<li>Principles of Economics</li>\r\n\r\n<li>Business Law</li>\r\n\r\n<li>Business Statistics</li>\r\n\r\n<li>Management Accounting</li>\r\n\r\n<li>Strategic Management</li>\r\n\r\n<li>Project Report</li>\r\n\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Organizational Behavior</li>\r\n\r\n<li>Continuous Professional Development</li>\r\n\r\n<li>Operations Management</li>\r\n\r\n<li>Human Resource Management</li>\r\n\r\n<li>Business Ethics & Environmental Management</li>\r\n\r\n<li>Logistics Management</li>\r\n\r\n<li>Employee Relations</li>\r\n\r\n<li>Quality Management</li>\r\n\r\n<li>Strategic Management</li>\r\n\r\n<li>Business Research Project & Industrial Training</li>\r\n\r\n	</ul>', '', '', '4 years', 'March 2014', '1st & 2nd Years Weekdays 0900h - 1600h /3rd Year Evening & Weekends', 'Ms. Thilini De Silva'),
(9, 'BSc in Business Management (Special) Logistics Management', '<p>To prepare undergraduates to demonstrate conceptual knowledge in different disciplines that supports and facilitates lifelong learning\r\nTo develop capabilities to translate acquired knowledge into business practices of different industries\r\nTo develop the ability to understand & analyze business problems and to develop creative solutions\r\nTo develop a strong sense of responsibility and commitment towards the development of the nation</p>', '<p>Advanced Level(New Syllabus) - Passes for 3 subjects in one attempt\r\nGCE O/L Passes for 6 subjectss(with 3 credit passes)</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Management Process</li>\r\n\r\n<li>Business Communication</li>\r\n\r\n<li>Financial Accounting</li>\r\n\r\n<li>Economics for Managers</li>\r\n\r\n<li>Business Mathematics and Statistics</li>\r\n\r\n<li>Managerial accounting</li>\r\n\r\n<li>nformation and Communicatiopn Technology (ICT)</li>\r\n\r\n<li>Business Environment</li>\r\n\r\n<li>Introduction to Project Management</li>\r\n\r\n<li>Critical Enabling Skills Training – 3 Months</li>\r\n\r\n\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Organizational Behavior</li>\r\n\r\n<li>Professional Development</li>\r\n\r\n<li>Marketing Management</li>\r\n\r\n<li>Advanced Financial accounting</li>\r\n\r\n<li>Logistics Management</li>\r\n\r\n<li>Financial Management</li>\r\n\r\n<li>Human Resource Management</li>\r\n\r\n<li>Quality Management</li>\r\n\r\n<li>Introduction to Operations Management</li>\r\n\r\n<li>Industrial Relations<li>\r\n\r\n<li>Industrial Training</li>\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n<ul>\r\n\r\n<li>Strategic Management</li>\r\n\r\n<li>Management Information Systems</li>\r\n\r\n<li>International Business Management</li>\r\n\r\n<li>Business & Industrial Law</li>\r\n\r\n<li>Inventory & Warehouse Management</li>\r\n\r\n<li>Procurement Management</li>\r\n\r\n</ul>', '', '4 years', 'March 2014', '1st & 2nd Years Weekdays 0900h - 1600h /3rd Year Evening & Weekends', 'Ms. Thilini De Silva'),
(10, 'BSc in Business Management (Special) Industrial Management', '<p>To prepare undergraduates to demonstrate conceptual knowledge in different disciplines that supports and facilitates lifelong learning\r\nTo develop capabilities to translate acquired knowledge into business practices of different industries\r\nTo develop the ability to understand & analyze business problems and to develop creative solutions\r\nTo develop a strong sense of responsibility and commitment towards the development of the nation</p>\r\n  ', '<p>Advanced Level(New Syllabus) - Passes for 3 subjects in one attempt\r\nGCE O/L Passes for 6 subjectss(with 3 credit passes)</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Management Process</li>\r\n\r\n<li>Business Communication</li>\r\n\r\n<li>Financial Accounting</li>\r\n\r\n<li>Economics for Managers</li>\r\n\r\n<li>Business Mathematics and Statistics</li>\r\n\r\n<li>Managerial accounting</li>\r\n\r\n<li>nformation and Communicatiopn Technology (ICT)</li>\r\n\r\n<li>Business Environment</li>\r\n\r\n<li>Introduction to Project Management</li>\r\n\r\n<li>Critical Enabling Skills Training – 3 Months</li>\r\n\r\n\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Organizational Behavior</li>\r\n\r\n<li>Professional Development</li>\r\n\r\n<li>Marketing Management</li>\r\n\r\n<li>Advanced Financial accounting</li>\r\n\r\n<li>Logistics Management</li>\r\n\r\n<li>Financial Management</li>\r\n\r\n<li>Human Resource Management</li>\r\n\r\n<li>Quality Management</li>\r\n\r\n<li>Introduction to Operations Management</li>\r\n\r\n<li>Industrial Relations<li>\r\n\r\n<li>Industrial Training</li>\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n<ul>\r\n\r\n<li>Strategic Management</li>\r\n\r\n<li>Management Information Systems</li>\r\n\r\n<li>International Business Management</li>\r\n\r\n<li>Business & Industrial Law</li>\r\n\r\n<li>Production Planning and Control</li>\r\n\r\n<li>Maintenance Management</li>\r\n\r\n</ul>', '<h6>Year 4</h6>\r\n<ul>\r\n\r\n<li>Research Methodology</li>\r\n\r\n<li>Industrial Safety Management</li>\r\n\r\n<li>Industrial Engineering</li>\r\n\r\n<li>Advanced Operations Management</li>\r\n\r\n<li>Materials Management</li>\r\n\r\n</ul>', '4 years', 'March 2014', '1st & 2nd Years Weekdays 0900h - 1600h /3rd Year Evening & Weekends', 'Ms. Thilini De Silva'),
(11, 'BSc in Business Management (Special) Project Management', '<p>To prepare undergraduates to demonstrate conceptual knowledge in different disciplines that supports and facilitates lifelong learning\r\nTo develop capabilities to translate acquired knowledge into business practices of different industries\r\nTo develop the ability to understand & analyze business problems and to develop creative solutions\r\nTo develop a strong sense of responsibility and commitment towards the development of the nation</p>', '<p>Advanced Level(New Syllabus) - Passes for 3 subjects in one attempt\r\nGCE O/L Passes for 6 subjectss(with 3 credit passes)</p>', '<h6>Year 1</h6>\r\n      <ul>\r\n<li>Management Process</li>\r\n\r\n<li>Business Communication</li>\r\n\r\n<li>Financial Accounting</li>\r\n\r\n<li>Economics for Managers</li>\r\n\r\n<li>Business Mathematics and Statistics</li>\r\n\r\n<li>Managerial accounting</li>\r\n\r\n<li>nformation and Communicatiopn Technology (ICT)</li>\r\n\r\n<li>Business Environment</li>\r\n\r\n<li>Introduction to Project Management</li>\r\n\r\n<li>Critical Enabling Skills Training – 3 Months</li>\r\n\r\n\r\n</ul>', '<h6>Year 2</h6>\r\n      <ul>\r\n<li>Organizational Behavior</li>\r\n\r\n<li>Professional Development</li>\r\n\r\n<li>Marketing Management</li>\r\n\r\n<li>Advanced Financial accounting</li>\r\n\r\n<li>Logistics Management</li>\r\n\r\n<li>Financial Management</li>\r\n\r\n<li>Human Resource Management</li>\r\n\r\n<li>Quality Management</li>\r\n\r\n<li>Introduction to Operations Management</li>\r\n\r\n<li>Industrial Relations<li>\r\n\r\n<li>Industrial Training</li>\r\n\r\n	</ul>', '<h6>Year 3</h6>\r\n<ul>\r\n\r\n<li>Strategic Management</li>\r\n\r\n<li>Management Information Systems</li>\r\n\r\n<li>International Business Management</li>\r\n\r\n<li>Business & Industrial Law</li>\r\n\r\n<li>Scope Management</li>\r\n\r\n<li>Time Management</li>\r\n\r\n</ul>', '<h6>Year 4</h6>\r\n<ul>\r\n\r\n<li>Research Methodology</li>\r\n\r\n<li>Cost Management</li>\r\n\r\n<li>Project Risk and Quality Management</li>\r\n\r\n<li>Project HR Management</li>\r\n\r\n<li>Project Monitoring, Control, Evaluation and Termination</li>\r\n\r\n</ul>', '4 years', 'March 2014', '1st & 2nd Years Weekdays 0900h - 1600h /3rd Year Evening & Weekends', 'Ms. Thilini De Silva');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` text NOT NULL,
  `album_title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `location`, `album_title`) VALUES
(1, 'images/Gallary/imgC1/1 (1).jpg', 'CONVOCATION 2014 Interior Architecture – Batch 02'),
(2, 'images/Gallary/imgC1/1 (2).jpg', 'CONVOCATION 2014 Interior Architecture – Batch 02'),
(3, 'images/Gallary/imgC1/1 (4).jpg', 'CONVOCATION 2014 Interior Architecture – Batch 02'),
(4, 'images/Gallary/imgC1/1 (5).jpg', 'CONVOCATION 2014 Interior Architecture – Batch 02'),
(5, 'images/Gallary/imgC1/1 (6).jpg', 'CONVOCATION 2014 Interior Architecture – Batch 02'),
(6, 'images/Gallary/imgC1/1 (7).jpg', 'CONVOCATION 2014 Interior Architecture – Batch 02'),
(7, 'images/Gallary/imgC1/1 (8).jpg', 'CONVOCATION 2014 Interior Architecture – Batch 02'),
(8, 'images/Gallary/imgC2/2 (1).jpg', 'NSBM Software Competition (NSC) 2014'),
(9, 'images/Gallary/imgC2/2 (2).jpg', 'NSBM Software Competition (NSC) 2014'),
(10, 'images/Gallary/imgC2/2 (3).jpg', 'NSBM Software Competition (NSC) 2014'),
(11, 'images/Gallary/imgC2/2 (4).jpg', 'NSBM Software Competition (NSC) 2014'),
(12, 'images/Gallary/imgC2/2 (5).jpg', 'NSBM Software Competition (NSC) 2014'),
(13, 'images/Gallary/imgC2/2 (6).jpg', 'NSBM Software Competition (NSC) 2014'),
(14, 'images/Gallary/imgC2/2 (7).jpg', 'NSBM Software Competition (NSC) 2014'),
(15, 'images/Gallary/imgC2/2 (8).jpg', 'NSBM Software Competition (NSC) 2014'),
(16, 'images/Gallary/imgC2/2 (9).jpg', 'NSBM Software Competition (NSC) 2014'),
(17, 'images/Gallary/imgC2/2 (10).jpg', 'NSBM Software Competition (NSC) 2014'),
(18, 'images/Gallary/imgC2/2 (11).jpg', 'NSBM Software Competition (NSC) 2014'),
(19, 'images/Gallary/imgC2/2 (12).jpg', 'NSBM Software Competition (NSC) 2014'),
(20, 'images/Gallary/imgC2/2 (13).jpg', 'NSBM Software Competition (NSC) 2014'),
(21, 'images/Gallary/imgC2/2 (14).jpg', 'NSBM Software Competition (NSC) 2014'),
(22, 'images/Gallary/imgC2/2 (15).jpg', 'NSBM Software Competition (NSC) 2014'),
(23, 'images/Gallary/imgC2/2 (16).jpg', 'NSBM Software Competition (NSC) 2014'),
(24, 'images/Gallary/imgC2/2 (17).jpg', 'NSBM Software Competition (NSC) 2014'),
(25, 'images/Gallary/imgC3/3 (1).jpg', 'Youth Engage - Workshop by NSAC'),
(26, 'images/Gallary/imgC3/3 (2).jpg', 'Youth Engage - Workshop by NSAC'),
(27, 'images/Gallary/imgC3/3 (3).jpg', 'Youth Engage - Workshop by NSAC'),
(28, 'images/Gallary/imgC3/3 (4).jpg', 'Youth Engage - Workshop by NSAC'),
(29, 'images/Gallary/imgC3/3 (5).jpg', 'Youth Engage - Workshop by NSAC'),
(30, 'images/Gallary/imgC3/3 (6).jpg', 'Youth Engage - Workshop by NSAC'),
(31, 'images/Gallary/imgC3/3 (7).jpg', 'Youth Engage - Workshop by NSAC'),
(32, 'images/Gallary/imgC4/4 (1).jpg', 'Mozila day at NSBM'),
(33, 'images/Gallary/imgC4/4 (2).jpg', 'Mozila day at NSBM'),
(34, 'images/Gallary/imgC4/4 (3).jpg', 'Mozila day at NSBM'),
(35, 'images/Gallary/imgC4/4 (4).jpg', 'Mozila day at NSBM'),
(36, 'images/Gallary/imgC4/4 (5).jpg', 'Mozila day at NSBM'),
(37, 'images/Gallary/imgC4/4 (6).jpg', 'Mozila day at NSBM'),
(38, 'images/Gallary/imgC4/4 (7).jpg', 'Mozila day at NSBM'),
(39, 'images/Gallary/imgC4/4 (8).jpg', 'Mozila day at NSBM'),
(40, 'images/Gallary/imgC4/4 (9).jpg', 'Mozila day at NSBM'),
(41, 'images/Gallary/imgC4/4 (10).jpg', 'Mozila day at NSBM'),
(42, 'images/Gallary/imgC4/4 (11).jpg', 'Mozila day at NSBM'),
(43, 'images/Gallary/imgC4/4 (12).jpg', 'Mozila day at NSBM'),
(44, 'images/Gallary/imgC4/4 (13).jpg', 'Mozila day at NSBM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(256) NOT NULL,
  `mobile` int(11) NOT NULL,
  `home_num` int(11) NOT NULL,
  `sign_up_date` date NOT NULL,
  `level` text NOT NULL,
  `degree` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address`, `email`, `mobile`, `home_num`, `sign_up_date`, `level`, `degree`) VALUES
(9, 'eureka', 'found', 'you321', 'aaa@yahoo.com', 34343, 3434343, '2014-07-09', 'postgraduate', 'Postgraduate Diploma in Human Resource Management'),
(10, 'first', 'name', 'then', 'address@add.com', 4343, 3434, '2014-07-09', 'postgraduate', 'Postgraduate Diploma in Project Management'),
(11, 'hello', 'againsame', 'fafaffalk', 'jlkafafjfj', 23423232, 232323, '2014-07-13', 'postgraduate', 'MSc in Management (University College of Dublin)'),
(13, '6w5ttt', 'faf', 'wtwt', '454545', 4544545, 2147483647, '2014-07-13', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(14, 'eerere', 'faf', 'erafa', 'erererer', 34343434, 343434444, '2014-07-13', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(15, 'jkhjkhkh', 'faf', 'hkjh', 'yggft', 7877879, 7687687, '2014-07-13', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(17, 'fafa', 'faaf', 'afafaf', 'faafaf', 343343, 45445, '2014-07-13', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(18, 'faff', 'erere', '2343ffaf', 'afafafa', 3434, 2343443, '2014-07-13', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(19, 'afaaf', 'erere', '32faffa', 'afafa', 343434, 5534343, '2014-07-13', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(20, 'fafafa', 'erere', 'ereer', 'ereeeee', 3343343, 33434343, '2014-07-13', 'postgraduate', 'Postgraduate Diploma in Industrial Management'),
(21, 'afafaaa', 'rtrtrrt', 'trtrtfff', 'afafaf', 343333, 6666, '2014-07-13', 'postgraduate', 'MSc in Management (University College of Dublin)'),
(22, 'erraffnd', 'lllll', 'lllllll', 'llllllll', 222222, 222233333, '2014-07-13', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(23, 'fyuyyui', 'tyyty', 'fgffggh', 'hfhgfg', 66778668, 86876, '2014-07-13', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(25, 'world', 'hello', 'afalfajfalfja', 'klrelrjelr', 2343343, 2323233, '2014-07-14', 'postgraduate', 'Postgraduate Diploma in Business Management'),
(36, 'kjflkjafj', 'kljlafkjalkf', 'jlkajflajfla', '1', 343433, 34343, '2014-07-15', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(39, 'jaklfajfdkl', 'kjkjdfklajklgaj', 'jkjfaljlafj', 'lperera246@gmail.com', 394389, 3493848, '2014-07-15', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)'),
(40, 'yayay', 'ayayay', 'jkjljl', 'nim@n.com', 2432, 24242, '2014-07-15', 'undergraduate', 'BSc (Hons) in Business Management (University College of Dublin)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
