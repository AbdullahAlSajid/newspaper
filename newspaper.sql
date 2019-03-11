-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 06:36 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newspaper`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'International'),
(2, 'Politics'),
(3, 'Entertainment'),
(4, 'Finance'),
(5, 'Health'),
(6, 'Education'),
(7, 'Sports'),
(8, 'Technology'),
(9, 'Bussiness'),
(10, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `category` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `reporter` int(11) NOT NULL,
  `breaking` tinyint(1) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `publishedat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `title`, `description`, `category`, `section`, `reporter`, `breaking`, `createdat`, `publishedat`, `updatedat`, `status`, `image`) VALUES
(14, 'Defense Department Went On Multimillion-Dollar ', 'The report also looked at spending by Health and Human Services, Veterans Affairs, and the Executive Office of the President. Altogether, the agencies racked up roughly $97 billion in contract spending — primarily on weapons, which accounted for $818.1 million. Furniture, food, and marketing and public relations accounted for more than $400 million each.', 1, 3, 2, 0, 'Sat Mar 09 2019 18:43:56 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:35:15 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(15, 'Ex-Mercenary CEO Erik Prince Admits To Trump Tower Meet With Donald Jr. And Saudi Emissary', 'Erik Prince, former head of mercenary business Blackwater, revealed in a bombshell interview Friday that he attended a meeting in Trump Tower with Donald Trump Jr. and a representative of Saudi Arabia and the United Arab Emirates to discuss “Iran policy” during the presidential campaign.\r\n\r\nThe interview marked the first time Prince has publicly acknowledged such a meeting. Prince said in congressional testimony in 2017 that he had no “official” or “unofficial” role in the campaign — other than a “yard sign” and writing “papers” — according to the transcript of his testimony before the House Intelligence Committee. Nor did he mention the meeting in his testimony, according to transcripts.\r\n\r\nThe New York Times reported last year that Prince organized the 2016 meeting at Trump Tower with President Donald Trump’s eldest son and Lebanese-American businessman George Nader. Nader revealed at the meeting that the United Arab Emirates and Saudi Arabia wanted to aid Trump in his bid for the pr', 1, 0, 2, 0, 'Sat Mar 09 2019 18:50:04 GMT+0600 (Bangladesh Standard Time)', 'null', 'null', 2, 'null'),
(18, 'Iron Man reachec 200 million U.S. dollar.', 'Iron Man reachec 200 million U.S. dollar. Iron Man reachec 200 million U.S> dollar. Iron Man reachec 200 million U.S> dollar. Iron Man reachec 200 million U.S> dollar.', 3, 2, 2, 1, 'Sun Mar 10 2019 05:15:32 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 05:16:22 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(25, 'Google Says Upgrade To Windows 10 After Critical Flaws Found In Chrome And Windows 7', 'Chief election commissioner KM Nurul Huda said that there will be no chance of stuffing the ballot boxes the night before the election if Electronic Voting Machines (EVM) are used. His comment has sparked off fresh debate over the allegations of stuffing ballot boxes on the eve of the 11th parliamentary elections.', 8, 3, 7, 0, 'Sun Mar 10 2019 06:17:17 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:35:25 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(26, 'Google Says Upgrade To Windows 10 After Critical Flaws Found In Chrome And Windows 7', 'Earlier this week Google released an update for the Chrome web browser that it urged users to ensure was implemented immediately. That was because the Threat Analysis Group at Google had uncovered a critical zero-day vulnerability that was already being exploited in the wild. Now a Google security engineer, Clement Lecigne, has warned that another zero-day vulnerability that is also being exploited, impacting Windows 7 users, was being used together with the Chrome exploit to take over Windows systems. Google is now urging all Windows 7 users to upgrade to Windows 10, as well as make sure their Chrome browser is up to date, to escape the attention of the combined threat.', 8, 3, 7, 0, 'Sun Mar 10 2019 06:17:48 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:35:34 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(27, 'So ballot boxes are stuffed the night before polls?', 'Chief election commissioner KM Nurul Huda said that there will be no chance of stuffing the ballot boxes the night before the election if Electronic Voting Machines (EVM) are used. His comment has sparked off fresh debate over the allegations of stuffing ballot boxes on the eve of the 11th parliamentary elections.', 2, 2, 8, 0, 'Sun Mar 10 2019 06:20:59 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:35:46 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(28, 'Day 2 of Bangladesh- New Zealand second Test washed out', 'Rain delayed the start of the second Test between New Zealand and Bangladesh in Wellington for the second consecutive day on Saturday.\r\n\r\nThe downpour which had persisted for a day and a half stopped long enough on day two for the covers to be lifted and for the players to start warming up.', 7, 3, 7, 1, 'Sun Mar 10 2019 06:24:02 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:35:59 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(29, 'Khawaja ton guides Australia to 313-5', 'Opener Usman Khawaja smashed his maiden one-day international century to guide Australia to 313-5 in the third match against India on Friday.\r\nThe tourists rode on a 193-run opening stand between Khawaja, who hit 104, and skipper Aaron Finch, who made 93, to put up a challenging total after being put into bat first in Ranchi.', 7, 2, 2, 0, 'Sun Mar 10 2019 06:24:42 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:37:22 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(30, 'Imran Tahir to retire from ODI', 'Veteran leg-spinner Imran Tahir said on Monday he would retire from one-day international cricket after the World Cup in England and Wales, which ends on 14 July.', 7, 2, 8, 0, 'Sun Mar 10 2019 06:25:59 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:37:03 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(31, '5G a new security challenge for telecom operators', 'With fifth-generation wireless networks, or 5G, starting to be rolled out this year, the issue of 5G security was in focus at the Mobile World Congress trade fair which got under way Monday in Barcelona.\r\n\r\n', 8, 3, 7, 0, 'Sun Mar 10 2019 06:29:41 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:37:31 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(32, 'Passive smoking may raise kidney disease risk', 'The findings showed that individuals with less or more than 3 days of exposure per week had nearly double the risk of having kidney disease when compared with participants with no second-hand cigarette exposure.', 5, 3, 2, 0, 'Sun Mar 10 2019 06:31:01 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:36:21 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(33, 'Green tea, rice compounds may fight against Alzheimer', 'The findings, published in the journal Biological Chemistry, showed that a combination of EGCG, or epigallocatechin-3-gallate - found in green tea; and FA, or ferulic acid - found in carrots, tomatoes, rice, wheat and oats, completely restored spatial working memory.', 5, 3, 7, 0, 'Sun Mar 10 2019 06:32:22 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:37:10 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(34, '5th UZ polls begin Sunday', 'Electioneering has ended on Friday midnight while huge enthusiasm has been noticed among the voters centering this poll as the election is being held with party symbols.\r\nRestrictions on vehicular movements have been imposed in the electoral areas while additional law enforcement agencies have been deployed for five days, including two days before and two days after the election along with the voting day.', 2, 3, 7, 1, 'Sun Mar 10 2019 06:33:51 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:36:53 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(36, 'Venezuela struggles with blackout as government claims sabotage', 'Venezuela struggles with blackout as government claims sabotage Venezuela struggles with blackout as government claims sabotage Venezuela struggles with blackout as government claims sabotage Venezuela struggles with blackout as government claims sabotage Venezuela struggles with blackout as government claims sabotage Venezuela struggles with blackout as government claims sabotage Venezuela struggles with blackout as government claims sabotage Venezuela struggles with blackout as government claims sabotage', 1, 3, 8, 0, 'Sun Mar 10 2019 06:33:51 GMT+0600 (Bangladesh Standard Time)', 'Sun Mar 10 2019 06:33:51 GMT+0600 (Bangladesh Standard Time)', 'null', 1, 'null'),
(38, 'Dakshu election', 'Boycotted Dakshu election', 2, 0, 1, 0, 'Mon Mar 11 2019 23:36:07 GMT+0600 (Bangladesh Standard Time)', 'null', 'null', 0, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `name`) VALUES
(1, 'editor\'s pick'),
(2, 'popular'),
(3, 'featured');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'approved'),
(2, 'edit requested'),
(3, 'delete requested');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`, `type`, `status`) VALUES
(1, 'sajid@gmail.com', 'abdullah al sajid', '123', 1, 1),
(2, 'samia@gmail.com', 'samia parvin', '123', 2, 1),
(7, 'masud@gmail.com', 'masud ahmed', '123', 2, 1),
(8, 'kamal', 'kamal', '123', 2, 1),
(9, 'abdullah@gmail.com', 'sajid', '123', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
