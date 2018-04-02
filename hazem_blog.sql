-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 26, 2018 at 10:20 PM
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
-- Database: `hazem blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(2, 'The Definite Article', 'It limits the meaning of a noun to one particular thing. For example, your friend might ask, â€œAre you going to the party this weekend?â€ The definite article tells you that your friend is referring to a specific party that both of you know about. The definite article can be used with singular, plural, or uncountable nouns. Below are some examples of the definite article the used in context:', '2018-03-23'),
(3, 'The Indefinite Article', 'The indefinite article takes two forms. Itâ€™s the word a when it precedes a word that begins with a consonant. Itâ€™s the word an when it precedes a word that begins with a vowel. The indefinite article indicates that a noun refers to a general idea rather than a particular thing. For example, you might ask your friend, â€œShould I bring a gift to the party?â€ Your friend will understand that you are not asking about a specific type of gift or a specific item. â€œI am going to bring an apple pie,â€ your friend tells you. Again, the indefinite article indicates that she is not talking about a specific apple pie. Your friend probably doesnâ€™t even have any pie yet. The indefinite article only appears with singular nouns. Consider the following examples of indefinite articles used in context:', '2018-03-23'),
(4, 'Article Before an Adjective', 'Sometimes an article modifies a noun that is also modified by an adjective. The usual word order is article + adjective + noun. If the article is indefinite, choose a or an based on the word that immediately follows it. Consider the following examples for reference:', '2018-03-23'),
(5, 'hazem', 'sdjdfjvk nodfknzio', '2018-03-23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
