-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2020 at 12:45 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `elex`
--

CREATE TABLE `elex` (
  `Que_id` int NOT NULL,
  `Que` varchar(150) NOT NULL,
  `option1` varchar(150) NOT NULL,
  `option2` varchar(150) NOT NULL,
  `option3` varchar(150) NOT NULL,
  `option4` varchar(150) NOT NULL,
  `ans` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elex`
--

INSERT INTO `elex` (`Que_id`, `Que`, `option1`, `option2`, `option3`, `option4`, `ans`) VALUES
(1, 'Rectifier circuit helps to convert which of the following voltages:', ' ac to dc', ' dc to ac', ' Fixed ac to variable ac', ' Fixed dc to variable dc\r\n', ' ac to dc'),
(2, 'The process of adding small number of foreign atoms into the crystal lattice in order to enhance the properties of the material is called:', 'Doping', ' Introducing', ' Amplifying', ' Annealing', 'Doping'),
(3, 'Forbidden energy gap in case of semi-conductors will ___ with increase in temperature:', 'Decreases', ' Increases', ' Remain unaffected', 'None of these', 'Decrease');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `u_id` int NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`u_id`, `username`, `password`) VALUES
(1, 'Radha', 'radha'),
(2, 'Ishika', 'ishika'),
(3, 'Rutika', 'rutika');

-- --------------------------------------------------------

--
-- Table structure for table `mechanical`
--

CREATE TABLE `mechanical` (
  `Que_id` int NOT NULL,
  `Que` varchar(150) NOT NULL,
  `option1` varchar(150) NOT NULL,
  `option2` varchar(150) NOT NULL,
  `option3` varchar(150) NOT NULL,
  `option4` varchar(150) NOT NULL,
  `ans` varchar(150) NOT NULL,
  `ans_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mechanical`
--

INSERT INTO `mechanical` (`Que_id`, `Que`, `option1`, `option2`, `option3`, `option4`, `ans`, `ans_id`) VALUES
(1, 'The friction experienced by a body, when in motion, is known as....', 'rolling friction', 'dynamic friction', 'limiting friction', 'static friction', 'dynamic friction', 2),
(2, 'Sprue is the passing provided for the', 'inflow', ' solidification of the molten material', 'smooth flow', 'outflow', 'inflow', 1),
(3, 'Feed in a lathe is expressed in', 'mm', 'mm per revolution', 'rpm', 'mm per degree', 'mm per revolution', 2);

-- --------------------------------------------------------

--
-- Table structure for table `web_quiz`
--

CREATE TABLE `web_quiz` (
  `Que_id` int NOT NULL,
  `Que` varchar(200) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `ans` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `web_quiz`
--

INSERT INTO `web_quiz` (`Que_id`, `Que`, `option1`, `option2`, `option3`, `option4`, `ans`) VALUES
(1, 'HTML stands for.....', 'Hyper text markup language', 'Hypertext and links markup language', 'Hightext machine language', 'Hypertext Machine language', 'Hyper text markup language'),
(2, 'How many attributes are there in HTML5?', '2', '4', '1', '5', '2'),
(3, 'What is the font-size of the h1 heading tag?', '3.5 em', '2.17 em', '2 em', '1.5 em', '2 em'),
(4, 'What function can be used to free the memory allocated by calloc()?', ' dealloc();', ' strcat();', 'free();', 'malloc();', 'free();');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elex`
--
ALTER TABLE `elex`
  ADD PRIMARY KEY (`Que_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `mechanical`
--
ALTER TABLE `mechanical`
  ADD PRIMARY KEY (`Que_id`);

--
-- Indexes for table `web_quiz`
--
ALTER TABLE `web_quiz`
  ADD PRIMARY KEY (`Que_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `elex`
--
ALTER TABLE `elex`
  MODIFY `Que_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mechanical`
--
ALTER TABLE `mechanical`
  MODIFY `Que_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
