-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2018 at 07:23 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.mp4',
  `movies_release` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'wherethewildthingsare.jpg', 'Where The Wind Things Are', '2009', '1hr 41min', 'Yearning for escape and adventure, a young boy runs away from home and sails to an island filled with creatures that take him in as their king.', 'wherehtwildthingsare.mp4', '16 October 2009'),
(2, 'boyhood.jpg', 'Boyhood', '2014', '2hr 45min', 'Filmed over short periods from 2002 to 2013, Boyhood is a ground-breaking cinematic experience covering 12 years in the life of a family. At the centre is Mason, who with his sister Samantha, is taken on an emotional and transcendent journey through the years, from childhood to adulthood.', 'boyhood.mp4', '15 August 2014'),
(3, 'theroadwithin.jpg', 'The Road Within', '2014', '1hr 40min', 'A young man with Tourette\'s Syndrome embarks on a road trip with his recently-deceased mother\'s ashes.', 'theroadwithin.mp4', '4 June 2015'),
(4, 'wishiwashere.jpg', 'Wish I Was Here', '2014', '1hr 46min', 'A struggling actor, father and husband finds himself at a major crossroads, which forces him to examine his life, his family and his career.', 'wishiwashere.mp4', '24 July 2014'),
(5, 'moonrisekingdom.jpg', 'Moonrise Kingdom', '2012', '1hr 34min', 'A pair of young lovers flee their New England town, which causes a local search party to fan out to find them.', 'moonrisekingdom.mp4', '29 June 2012'),
(6, 'thekingsofsummer.jpg', 'The Kings of Summer', '2013', '1hr 35min', 'Three teenage friends, in the ultimate act of independence, decide to spend their summer building a house in the woods and living off the land.', 'thekingsofsummer.mp4', '23 August 2013'),
(7, 'whilewereyoung.jpg', 'While We\'re Young', '2014', '1hr 37min', 'A middle-aged couple\'s career and marriage are overturned when a disarming young couple enters their lives.', 'whilewereyoung.mp4', '17 April 2015'),
(8, 'shortterm12.jpg', 'Short Term 12', '2013', '1hr 36min', 'A 20-something supervising staff member of a residential treatment facility navigates the troubled waters of that world alongside her co-worker and longtime boyfriend.', 'shortterm12.mp4', '23 August 2013'),
(9, 'huntforthewilderpeople.jpg', 'Hunt For The Wilderpeople', '2016', '1hr 41min', 'A national manhunt is ordered for a rebellious kid and his foster uncle who go missing in the wild New Zealand bush.', 'huntforthewilderpeople.mp4', '31 March 2013'),
(10, 'thegrandbudapesthotel.jpg', 'The Grand Budapest Hotel', '2014', '1hr 39min', 'The adventures of Gustave H, a legendary concierge at a famous hotel from the fictional Republic of Zubrowka between the first and second World Wars, and Zero Moustafa, the lobby boy who becomes his most trusted friend.', 'thegrandbudapesthotel.mp4', '28 March 2014'),
(11, 'whatif.jpg', 'What If', '2013', '1hr 38min', 'Wallace, who is burned out from a string of failed relationships, forms an instant bond with Chantry, who lives with her longtime boyfriend. Together, they puzzle out what it means if your best friend is also the love of your life.', 'whatif.mp4', '15 August 2014'),
(12, 'anotherearth.jpg', 'Another Earth', '2011', '1hr 32min', 'On the night of the discovery of a duplicate Earth in the Solar system, an ambitious young student and an accomplished composer cross paths in a tragic accident.', 'anotherearth.mp4', '12 October 2011'),
(13, 'thefifthelement.jpg', 'The Fifth Element', '1997', '2hr 6min', 'In the colorful future, a cab driver unwittingly becomes the central figure in the search for a legendary cosmic weapon to keep Evil and Mr. Zorg at bay.', 'thefifthelement.mp4', '9 May 1997'),
(14, 'eternalsunshineofthespotlessmind.jpg', 'Eternal Sunshine of the Spotless Mind', '2004', '1hr 48min', 'When their relationship turns sour, a young couple undergoes a medical procedure to have each other erased from their memories.', 'eternalsunshineofthespotlessmind.mp4', '19 March 2009'),
(15, 'crazystupidlove.jpg', 'Crazy, Stupid, Love.', '2011', '1hr 58min', 'A middle-aged husband\'s life changes dramatically when his wife asks him for a divorce. He seeks to rediscover his manhood with the help of a newfound friend, Jacob, learning to pick up girls at bars.', 'crazystupidlove.mp4', '29 July 2011'),
(16, 'sevenpsychopaths.jpg', 'Seven Psychopaths', '2012', '1hr 50min', 'A struggling screenwriter inadvertently becomes entangled in the Los Angeles criminal underworld after his oddball friends kidnap a gangster\'s beloved Shih Tzu.', 'sevenpsychopaths.mp4', '12 October 2012'),
(17, 'thedeparted.jpg', 'The Departed', '2006', '2hr 31min', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'thedeparted.mp4', '6 October 2006'),
(18, 'thespectacularnow.jpg', 'The Spectacular Now', '2013', '1hr 35min', 'A hard-partying high school senior\'s philosophy on life changes when he meets the not-so-typical \"nice girl.\"', 'thespectacularnow.mp4', '13 September 2013'),
(19, 'gardenstate.jpg', 'Garden State', '2004', '1hr 42min', 'A quietly troubled young man returns home for his mother\'s funeral after being estranged from his family for a decade.', 'gardenstate.mp4', '20 August 2014'),
(20, 'itskindofafunnystory.jpg', 'It\'s Kind of a Funny Story', '2010', '1hr 41min', 'A clinically depressed teenager gets a new start after he checks himself into an adult psychiatric ward.', 'itskindofafunnystory.mp4', '8 October 2010'),
(21, 'thetrumanshow.jpg', 'The Truman Show', '1998', '1hr 43min', 'An insurance salesman/adjuster discovers his entire life is actually a television show.', 'thetrumanshow.mp4', '5 June 1998'),
(22, 'chappie.jpg', 'Chappie', '2015', '2hr', 'In the near future, crime is patrolled by a mechanized police force. When one police droid, Chappie, is stolen and given new programming, he becomes the first robot with the ability to think and feel for himself.', 'chappie.mp4', '6 March 2015'),
(23, 'rolemodels.jpg', 'Role Models', '2008', '1hr 39min', 'Wild behavior forces a pair of energy drink reps to enroll in a Big Brother program.', 'rolemodels.mp4', '7 November 2008'),
(24, 'theartofgettingby.jpg', 'The Art of Getting By', '2011', '1hr 23min', 'George, a lonely and fatalistic teen who has made it all the way to his senior year without ever having done a real day of work, is befriended by Sally, a popular but complicated girl who recognizes in him a kindred spirit.', 'theartofgettingby.mp4', '17 June 2011'),
(25, 'keanu.jpg', 'Keanu', '2016', '1hr 40min', 'When an L.A. drug kingpin\'s kitten unexpectedly enters the life of two cousins, they will have to go through gangs, hitmen and drug dealers who claim him in order to get him back.', 'trailer_default.mp4', '29 April 2016'),
(26, 'logan.jpg', 'Logan', '2017', '2hr 17min', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan\'s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces.', 'logan.mp4', '3 March 2017'),
(27, 'nerve.jpg', 'Nerve', '2016', '1hr 36min', 'A high school senior finds herself immersed in an online game of truth or dare, where her every move starts to become manipulated by an anonymous community of \"watchers.\"', 'nerve.mp4', '27 July 2016');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 2),
(2, 1, 13),
(3, 1, 5),
(4, 2, 5),
(5, 3, 5),
(6, 3, 3),
(7, 4, 3),
(8, 4, 5),
(9, 5, 2),
(10, 5, 3),
(11, 5, 5),
(12, 6, 2),
(13, 6, 3),
(14, 6, 5),
(15, 7, 3),
(16, 7, 5),
(17, 8, 5),
(18, 9, 2),
(19, 9, 3),
(20, 9, 5),
(21, 10, 2),
(22, 10, 3),
(23, 10, 5),
(24, 11, 3),
(25, 11, 15),
(26, 12, 5),
(27, 12, 15),
(28, 12, 9),
(29, 13, 1),
(30, 13, 2),
(31, 13, 9),
(32, 14, 5),
(33, 14, 15),
(34, 14, 9),
(35, 15, 3),
(36, 15, 15),
(37, 15, 5),
(38, 16, 3),
(39, 16, 4),
(40, 17, 4),
(41, 17, 5),
(42, 18, 3),
(43, 18, 5),
(44, 18, 15),
(45, 19, 3),
(46, 19, 5),
(47, 19, 15),
(48, 20, 3),
(49, 20, 5),
(50, 20, 15),
(51, 21, 3),
(52, 21, 5),
(53, 21, 9),
(54, 22, 1),
(55, 22, 4),
(56, 22, 5),
(57, 23, 3),
(58, 24, 5),
(59, 24, 15),
(60, 25, 1),
(61, 25, 3),
(62, 26, 1),
(63, 26, 5),
(64, 26, 9),
(65, 27, 1),
(66, 27, 2),
(67, 27, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_last` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_fail` tinyint(4) NOT NULL,
  `user_num_login` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_last`, `user_fail`, `user_num_login`) VALUES
(1, 'Hooolia', 'hooolia', '$2y$10$OS/6qVWWzxScWNkZxhonTO4z07PwPmDx7aeMgQfi7b6ibq5/KH3su', 'hooolia@email.com', '2018-02-09 21:35:59', '::1', '2018-04-08 09:40:13', 0, 1),
(2, 'nick', 'nick', 'nick', 'nick@nick.com', '2018-03-01 23:57:18', 'no', '2018-03-01 23:57:18', 0, 0),
(3, 'test', 'test', 'test', 'test', '2018-03-01 23:59:38', 'no', '2018-03-01 23:59:38', 2, 0),
(4, 'test', 'test', 'test', 'test', '2018-03-01 23:59:50', 'no', '2018-03-01 23:59:50', 2, 0),
(5, 'nick', 'nick', '$2y$10$4RJ9CN8ZB0kRdllvKcLq7edn4GaJcDeUyz0.bQ618RvvU3d4fHTse', 'ijfdn@hm', '2018-03-02 00:06:30', 'no', '2018-03-02 00:06:30', 2, 0),
(6, 'testa', 'testa', '$2y$10$DleOia0zYttICRtdizZQ2OHfJKpkFaVOTmR7H1xsYs74bhkh.4ce.', 'testy@gmail.com', '2018-04-08 20:47:19', 'no', '2018-04-08 20:47:19', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
