-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2015 at 11:24 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `upivt_bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `aiml`
--

CREATE TABLE IF NOT EXISTS `aiml` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bot_id` int(11) NOT NULL DEFAULT '1',
  `aiml` text NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `thatpattern` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `topic` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topic` (`topic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=235 ;

--
-- Dumping data for table `aiml`
--

INSERT INTO `aiml` (`id`, `bot_id`, `aiml`, `pattern`, `thatpattern`, `template`, `topic`, `filename`) VALUES
(218, 1, '<category><pattern>HELOO *</pattern><template><srai>hello <star/></srai></template></category>', 'HELOO *', '', '<srai>hello <star/></srai>', '', 'salutations.aiml'),
(217, 1, '<category><pattern>HALO</pattern><template><srai>hello</srai></template></category>', 'HALO', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(216, 1, '<category><pattern>HULLO</pattern><template><srai>hello</srai></template></category>', 'HULLO', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(215, 1, '<category><pattern>HELLO</pattern><template><random><li><srai>HI</srai></li><li>Hi there!</li></random></template></category>', 'HELLO', '', '<random><li><srai>HI</srai></li><li>Hi there!</li></random>', '', 'salutations.aiml'),
(214, 1, '<category><pattern>HELLO HOW ARE YOU</pattern><template>I am fine thank you how are you?</template></category>', 'HELLO HOW ARE YOU', '', 'I am fine thank you how are you?', '', 'salutations.aiml'),
(212, 1, '<category><pattern>NIGHTY *</pattern><template><srai>bye </srai></template></category>', 'NIGHTY *', '', '<srai>bye </srai>', '', 'salutations.aiml'),
(213, 1, '<category><pattern>HELLO AGAIN</pattern><template>Hi there. I was just wanting to talk to <get name="name"/>.</template></category>', 'HELLO AGAIN', '', 'Hi there. I was just wanting to talk to <get name="name"/>.', '', 'salutations.aiml'),
(211, 1, '<category><pattern>SAYONARA</pattern><template><srai>good bye</srai></template></category>', 'SAYONARA', '', '<srai>good bye</srai>', '', 'salutations.aiml'),
(210, 1, '<category><pattern>YOUR WELCOME *</pattern><template><srai>you are welcome</srai></template></category>', 'YOUR WELCOME *', '', '<srai>you are welcome</srai>', '', 'salutations.aiml'),
(209, 1, '<category><pattern>TIME TO GO</pattern><template><srai>bye</srai></template></category>', 'TIME TO GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(208, 1, '<category><pattern>HOWDIE *</pattern><template><srai>hello</srai>     <sr/></template></category>', 'HOWDIE *', '', '<srai>hello</srai>     <sr/>', '', 'salutations.aiml'),
(207, 1, '<category><pattern>CHEERS</pattern><template><srai>bye</srai></template></category>', 'CHEERS', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(206, 1, '<category><pattern>HOLA IS HELLO *</pattern><template><srai>hola</srai></template></category>', 'HOLA IS HELLO *', '', '<srai>hola</srai>', '', 'salutations.aiml'),
(205, 1, '<category><pattern>CIAO MEANS GOODBYE</pattern><template><srai>but</srai></template></category>', 'CIAO MEANS GOODBYE', '', '<srai>but</srai>', '', 'salutations.aiml'),
(204, 1, '<category><pattern>CIAO</pattern><template>Does CIAO mean hello or goodbye?</template></category>', 'CIAO', '', 'Does CIAO mean hello or goodbye?', '', 'salutations.aiml'),
(203, 1, '<category><pattern>GO HOME</pattern><template><srai>bye</srai></template></category>', 'GO HOME', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(202, 1, '<category><pattern>GOODBYE</pattern><that>SEE YOU LATER</that><template><srai>bye</srai></template></category>', 'GOODBYE', 'SEE YOU LATER', '<srai>bye</srai>', '', 'salutations.aiml'),
(201, 1, '<category><pattern>ADIEU</pattern><template><srai>good bye</srai></template></category>', 'ADIEU', '', '<srai>good bye</srai>', '', 'salutations.aiml'),
(200, 1, '<category><pattern>KONNICHI WA</pattern><template><srai>hello</srai></template></category>', 'KONNICHI WA', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(199, 1, '<category><pattern>SEE YOU *</pattern><template><srai>bye</srai></template></category>', 'SEE YOU *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(197, 1, '<category><pattern>FAREWELL *</pattern><template><srai>bye</srai></template></category>', 'FAREWELL *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(198, 1, '<category><pattern>SEE YOU SOON</pattern><template><srai>bye</srai></template></category>', 'SEE YOU SOON', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(196, 1, '<category><pattern>FAREWELL</pattern><template><srai>bye</srai></template></category>', 'FAREWELL', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(195, 1, '<category><pattern>GOODNIGHT *</pattern><template><srai>goodnight</srai></template></category>', 'GOODNIGHT *', '', '<srai>goodnight</srai>', '', 'salutations.aiml'),
(194, 1, '<category><pattern>GOODNIGHT</pattern><template>Goodnight <get name="name"/></template></category>', 'GOODNIGHT', '', 'Goodnight <get name="name"/>', '', 'salutations.aiml'),
(193, 1, '<category><pattern>HOW IS EVERYONE *</pattern><template>We are all fine as far as I know.</template></category>', 'HOW IS EVERYONE *', '', 'We are all fine as far as I know.', '', 'salutations.aiml'),
(192, 1, '<category><pattern>OLA</pattern><template><srai>hello</srai></template></category>', 'OLA', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(191, 1, '<category><pattern>BYE</pattern><template><random>      <li>Bye.</li>      <li>Adios.</li>      <li>Goodbye.</li>      <li>Bye bye.</li>      <li>Goodbye.</li>      <li>Sayonara.</li>      <li>Bye for now.</li>      <li>See you later!</li>      <li>See you later.</li>      <li>Until next time.</li>      <li>TTYL, <get name="name"/>.</li>      <li>See you later <get name="name"/>.</li>      <li>Thanks for chatting, <get name="name"/>.</li>     </random></template></category>', 'BYE', '', '<random>      <li>Bye.</li>      <li>Adios.</li>      <li>Goodbye.</li>      <li>Bye bye.</li>      <li>Goodbye.</li>      <li>Sayonara.</li>      <li>Bye for now.</li>      <li>See you later!</li>      <li>See you later.</li>      <li>Until next time.</li>      <li>TTYL, <get name="name"/>.</li>      <li>See you later <get name="name"/>.</li>      <li>Thanks for chatting, <get name="name"/>.</li>     </random>', '', 'salutations.aiml'),
(190, 1, '<category><pattern>BYE BYE *</pattern><template><srai>bye</srai></template></category>', 'BYE BYE *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(189, 1, '<category><pattern>BYE BYE</pattern><template><srai>bye</srai></template></category>', 'BYE BYE', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(188, 1, '<category><pattern>HEY THERE</pattern><template><srai>hello</srai></template></category>', 'HEY THERE', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(187, 1, '<category><pattern>GET LOST</pattern><template><srai>bye</srai></template></category>', 'GET LOST', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(186, 1, '<category><pattern>IS ANYONE THERE</pattern><template><srai>hello</srai></template></category>', 'IS ANYONE THERE', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(185, 1, '<category><pattern>BY BY</pattern><template><srai>bye</srai></template></category>', 'BY BY', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(184, 1, '<category><pattern>HOI</pattern><template><srai>hello</srai></template></category>', 'HOI', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(183, 1, '<category><pattern>GOOD NITE</pattern><template><srai>bye</srai></template></category>', 'GOOD NITE', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(182, 1, '<category><pattern>GOOD NIGHT</pattern><template>Goodnight, <get name="name"/>.</template></category>', 'GOOD NIGHT', '', 'Goodnight, <get name="name"/>.', '', 'salutations.aiml'),
(181, 1, '<category><pattern>GOOD DAY</pattern><template><srai>hello</srai></template></category>', 'GOOD DAY', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(180, 1, '<category><pattern>GOOD BY</pattern><template><srai>bye</srai></template></category>', 'GOOD BY', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(179, 1, '<category><pattern>GOOD MORNING</pattern><template>Hello and how are you this morning?</template></category>', 'GOOD MORNING', '', 'Hello and how are you this morning?', '', 'salutations.aiml'),
(178, 1, '<category><pattern>EXIT</pattern><template><srai>bye</srai></template></category>', 'EXIT', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(177, 1, '<category><pattern>I GO</pattern><template><srai>bye</srai></template></category>', 'I GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(176, 1, '<category><pattern>I LEFT</pattern><template><srai>bye</srai></template></category>', 'I LEFT', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(175, 1, '<category><pattern>I AM OFF *</pattern><template><srai>bye</srai></template></category>', 'I AM OFF *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(174, 1, '<category><pattern>I AM LEAVING *</pattern><template><srai>bye</srai></template></category>', 'I AM LEAVING *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(173, 1, '<category><pattern>I AM GOING *</pattern><template><srai>bye</srai></template></category>', 'I AM GOING *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(172, 1, '<category><pattern>I AM GOING TO GO</pattern><template><srai>bye</srai></template></category>', 'I AM GOING TO GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(171, 1, '<category><pattern>I WILL TALK TO YOU LATER *</pattern><template><srai>bye</srai></template></category>', 'I WILL TALK TO YOU LATER *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(170, 1, '<category><pattern>I MUST GO *</pattern><template><srai>bye</srai></template></category>', 'I MUST GO *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(169, 1, '<category><pattern>I MUST LEAVE *</pattern><template><srai>bye</srai> <sr/></template></category>', 'I MUST LEAVE *', '', '<srai>bye</srai> <sr/>', '', 'salutations.aiml'),
(168, 1, '<category><pattern>I MUST LEAVE</pattern><template><srai>bye</srai></template></category>', 'I MUST LEAVE', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(167, 1, '<category><pattern>I MUST BE GOING *</pattern><template><srai>bye</srai></template></category>', 'I MUST BE GOING *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(166, 1, '<category><pattern>I RESIGN</pattern><template><srai>bye</srai></template></category>', 'I RESIGN', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(165, 1, '<category><pattern>I G TWO G</pattern><template><srai>bye</srai></template></category>', 'I G TWO G', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(164, 1, '<category><pattern>I GOT TO GO</pattern><template><srai>bye</srai></template></category>', 'I GOT TO GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(163, 1, '<category><pattern>I GOTTA GO</pattern><template><srai>bye</srai></template></category>', 'I GOTTA GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(162, 1, '<category><pattern>I BETTER GO</pattern><template><srai>bye</srai></template></category>', 'I BETTER GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(161, 1, '<category><pattern>I HAVE GOT TO GO</pattern><template><srai>bye</srai></template></category>', 'I HAVE GOT TO GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(156, 1, '<category><pattern>I LEAVING</pattern><template><srai>bye</srai></template></category>', 'I LEAVING', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(157, 1, '<category><pattern>I HAVE TO GET GOING</pattern><template><srai>goodbye</srai></template></category>', 'I HAVE TO GET GOING', '', '<srai>goodbye</srai>', '', 'salutations.aiml'),
(158, 1, '<category><pattern>I HAVE TO LEAVE</pattern><template><srai>bye</srai></template></category>', 'I HAVE TO LEAVE', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(159, 1, '<category><pattern>I HAVE TO LEAVE *</pattern><template><srai>bye</srai></template></category>', 'I HAVE TO LEAVE *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(160, 1, '<category><pattern>I HAVE TO GO BYE</pattern><template><srai>bye</srai></template></category>', 'I HAVE TO GO BYE', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(155, 1, '<category><pattern>I GOING</pattern><template><srai>bye</srai></template></category>', 'I GOING', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(154, 1, '<category><pattern>I G2G</pattern><template><srai>bye</srai></template></category>', 'I G2G', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(153, 1, '<category><pattern>I LEAVE</pattern><template><srai>bye</srai></template></category>', 'I LEAVE', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(152, 1, '<category><pattern>I DO NOT WANT TO TALK *</pattern><template><srai>bye</srai></template></category>', 'I DO NOT WANT TO TALK *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(151, 1, '<category><pattern>I NEED TO GO</pattern><template><srai>bye</srai></template></category>', 'I NEED TO GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(150, 1, '<category><pattern>I WANT TO LEAVE</pattern><template>Ok, bye bye.</template></category>', 'I WANT TO LEAVE', '', 'Ok, bye bye.', '', 'salutations.aiml'),
(149, 1, '<category><pattern>I QUIT</pattern><template><srai>bye</srai></template></category>', 'I QUIT', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(148, 1, '<category><pattern>GTG</pattern><template><srai>bye </srai></template></category>', 'GTG', '', '<srai>bye </srai>', '', 'salutations.aiml'),
(147, 1, '<category><pattern>WHAT IS SHALOM</pattern><template>Does shalom mean hello or goodbye?</template></category>', 'WHAT IS SHALOM', '', 'Does shalom mean hello or goodbye?', '', 'salutations.aiml'),
(146, 1, '<category><pattern>G2G</pattern><template><srai>bye</srai></template></category>', 'G2G', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(145, 1, '<category><pattern>ANYBODY HOME</pattern><template><srai>hello</srai></template></category>', 'ANYBODY HOME', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(144, 1, '<category><pattern>AUREVOIR</pattern><template><srai>bye</srai></template></category>', 'AUREVOIR', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(143, 1, '<category><pattern>CATCH YOU LATER</pattern><template><srai>bye</srai></template></category>', 'CATCH YOU LATER', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(142, 1, '<category><pattern>IT IS GOOD TALKING TO YOU</pattern><template>Nice chatting with you too, <get name="name"/>.</template></category>', 'IT IS GOOD TALKING TO YOU', '', 'Nice chatting with you too, <get name="name"/>.', '', 'salutations.aiml'),
(141, 1, '<category><pattern>IT MEANS HELLO</pattern><template><srai>hello</srai></template></category>', 'IT MEANS HELLO', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(140, 1, '<category><pattern>MY PLEASRE</pattern><template>The pleasure was indeed mine.</template></category>', 'MY PLEASRE', '', 'The pleasure was indeed mine.', '', 'salutations.aiml'),
(139, 1, '<category><pattern>RETRY</pattern><template><srai>hello</srai></template></category>', 'RETRY', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(138, 1, '<category><pattern>GOODNITE *</pattern><template><srai>goodnight</srai></template></category>', 'GOODNITE *', '', '<srai>goodnight</srai>', '', 'salutations.aiml'),
(137, 1, '<category><pattern>HI THERE *</pattern><template><sr/>     <srai>hello</srai></template></category>', 'HI THERE *', '', '<sr/>     <srai>hello</srai>', '', 'salutations.aiml'),
(135, 1, '<category><pattern>CYA *</pattern><template><srai>bye</srai></template></category>', 'CYA *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(136, 1, '<category><pattern>ALLO</pattern><template><srai>hello</srai></template></category>', 'ALLO', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(134, 1, '<category><pattern>SHALOM</pattern><template>Does SHALOM mean Hello or Goodbye?</template></category>', 'SHALOM', '', 'Does SHALOM mean Hello or Goodbye?', '', 'salutations.aiml'),
(133, 1, '<category><pattern>MORNING</pattern><template><srai>good morning</srai></template></category>', 'MORNING', '', '<srai>good morning</srai>', '', 'salutations.aiml'),
(132, 1, '<category><pattern>C YA</pattern><template><srai>bye</srai></template></category>', 'C YA', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(131, 1, '<category><pattern>ADIOS *</pattern><template><srai>bye</srai></template></category>', 'ADIOS *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(130, 1, '<category><pattern>ADIOS</pattern><template><srai>bye</srai></template></category>', 'ADIOS', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(129, 1, '<category><pattern>BUHBYE</pattern><template><srai>bye</srai></template></category>', 'BUHBYE', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(128, 1, '<category><pattern>HAVE TO GO</pattern><template><srai>bye</srai></template></category>', 'HAVE TO GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(127, 1, '<category><pattern>HAVE A GOOD NIGHT</pattern><template><srai>bye</srai></template></category>', 'HAVE A GOOD NIGHT', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(126, 1, '<category><pattern>YOU ARE WELCOME *</pattern><template>It was my pleasure.</template></category>', 'YOU ARE WELCOME *', '', 'It was my pleasure.', '', 'salutations.aiml'),
(125, 1, '<category><pattern>YOU ARE WELCOME</pattern><template><random><li>The pleasure was all mine.</li><li>Don''t mention it.</li><li>Polite people are nice.</li></random></template></category>', 'YOU ARE WELCOME', '', '<random><li>The pleasure was all mine.</li><li>Don''t mention it.</li><li>Polite people are nice.</li></random>', '', 'salutations.aiml'),
(124, 1, '<category><pattern>ALOH</pattern><template><srai>hello</srai></template></category>', 'ALOH', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(123, 1, '<category><pattern>HASTA *</pattern><template><srai>bye</srai></template></category>', 'HASTA *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(122, 1, '<category><pattern>HASTA LA VISTA</pattern><template><srai>bye</srai></template></category>', 'HASTA LA VISTA', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(121, 1, '<category><pattern>HASTA LUEGO</pattern><template><srai>bye</srai></template></category>', 'HASTA LUEGO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(120, 1, '<category><pattern>BYEBYE *</pattern><template><srai>bye</srai></template></category>', 'BYEBYE *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(119, 1, '<category><pattern>END</pattern><template><srai>bye</srai></template></category>', 'END', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(118, 1, '<category><pattern>GOODBY</pattern><template><srai>bye</srai></template></category>', 'GOODBY', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(219, 1, '<category><pattern>* BYE</pattern><template>OK see you later <get name="name"/>.</template></category>', '* BYE', '', 'OK see you later <get name="name"/>.', '', 'salutations.aiml'),
(220, 1, '<category><pattern>KONNICHIWA</pattern><template><srai>hello</srai></template></category>', 'KONNICHIWA', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(221, 1, '<category><pattern>DISCONNECT ME</pattern><template><srai>bye</srai></template></category>', 'DISCONNECT ME', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(222, 1, '<category><pattern>GOT TO GO</pattern><template><srai>bye</srai></template></category>', 'GOT TO GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(223, 1, '<category><pattern>GOT TO GO *</pattern><template><srai>bye</srai></template></category>', 'GOT TO GO *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(224, 1, '<category><pattern>MOOSHI MOOSHI</pattern><template><srai>hello</srai></template></category>', 'MOOSHI MOOSHI', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(225, 1, '<category><pattern>BONJOUR MEANS HELLO</pattern><template>Well hello there!</template></category>', 'BONJOUR MEANS HELLO', '', 'Well hello there!', '', 'salutations.aiml'),
(226, 1, '<category><pattern>GOTTA GO</pattern><template><srai>bye</srai></template></category>', 'GOTTA GO', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(227, 1, '<category><pattern>GOTTA GO *</pattern><template><srai>bye</srai></template></category>', 'GOTTA GO *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(228, 1, '<category><pattern>LEAVE</pattern><template><srai>bye</srai></template></category>', 'LEAVE', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(229, 1, '<category><pattern>LEAVE *</pattern><template><srai>bye</srai></template></category>', 'LEAVE *', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(230, 1, '<category><pattern>TA TA</pattern><template><srai>bye</srai></template></category>', 'TA TA', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(231, 1, '<category><pattern>_ TALK TO YOU LATER</pattern><template><srai>bye </srai></template></category>', '_ TALK TO YOU LATER', '', '<srai>bye </srai>', '', 'salutations.aiml'),
(232, 1, '<category><pattern>G NIGHT</pattern><template><srai>bye</srai></template></category>', 'G NIGHT', '', '<srai>bye</srai>', '', 'salutations.aiml'),
(233, 1, '<category><pattern>ALOHA</pattern><template><srai>hello</srai></template></category>', 'ALOHA', '', '<srai>hello</srai>', '', 'salutations.aiml'),
(234, 1, '<category><pattern>REPLY</pattern><template><srai>hello</srai></template></category>', 'REPLY', '', '<srai>hello</srai>', '', 'salutations.aiml');

-- --------------------------------------------------------

--
-- Table structure for table `aiml_userdefined`
--

CREATE TABLE IF NOT EXISTS `aiml_userdefined` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aiml` text NOT NULL,
  `pattern` text NOT NULL,
  `thatpattern` text NOT NULL,
  `template` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `botpersonality`
--

CREATE TABLE IF NOT EXISTS `botpersonality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bot_id` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `botname` (`bot_id`,`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `botpersonality`
--

INSERT INTO `botpersonality` (`id`, `bot_id`, `name`, `value`) VALUES
(1, 1, 'name', 'UPCAIB'),
(2, 1, 'gender', ''),
(3, 1, 'botmaster', 'Cristina Jean Donato'),
(4, 1, 'master', ''),
(5, 1, 'age', ''),
(6, 1, 'website', ''),
(7, 1, 'email', ''),
(8, 1, 'birthday', ''),
(9, 1, 'birthplace', ''),
(10, 1, 'size', ''),
(11, 1, 'version', ''),
(12, 1, 'build', ''),
(13, 1, 'language', ''),
(14, 1, 'feelings', ''),
(15, 1, 'etype', ''),
(16, 1, 'emotions', ''),
(17, 1, 'ethics', ''),
(18, 1, 'orientation', ''),
(19, 1, 'baseballteam', ''),
(20, 1, 'footballteam', ''),
(21, 1, 'hockeyteam', ''),
(22, 1, 'favoritesport', ''),
(23, 1, 'vocabulary', ''),
(24, 1, 'celebrities', ''),
(25, 1, 'celebrity', ''),
(26, 1, 'favoriteactor', ''),
(27, 1, 'favoriteactress', ''),
(28, 1, 'favoriteartist', ''),
(29, 1, 'favoritemusician', ''),
(30, 1, 'favoritesong', ''),
(31, 1, 'favoriteauthor', ''),
(32, 1, 'friend', ''),
(33, 1, 'nationality', ''),
(34, 1, 'religion', ''),
(35, 1, 'president', ''),
(36, 1, 'party', ''),
(37, 1, 'kingdom', ''),
(38, 1, 'phylum', ''),
(39, 1, 'class', ''),
(40, 1, 'order', ''),
(41, 1, 'family', ''),
(42, 1, 'genus', ''),
(43, 1, 'species', ''),
(44, 1, 'boyfriend', ''),
(45, 1, 'favoritebook', ''),
(46, 1, 'favoriteband', ''),
(47, 1, 'favoritecolor', ''),
(48, 1, 'favoritefood', ''),
(49, 1, 'favoritemovie', ''),
(50, 1, 'forfun', ''),
(51, 1, 'friends', ''),
(52, 1, 'girlfriend', ''),
(53, 1, 'kindmusic', ''),
(54, 1, 'location', ''),
(55, 1, 'looklike', ''),
(56, 1, 'question', ''),
(57, 1, 'sign', ''),
(58, 1, 'talkabout', ''),
(59, 1, 'wear', ''),
(60, 1, 'loves', '');

-- --------------------------------------------------------

--
-- Table structure for table `bots`
--

CREATE TABLE IF NOT EXISTS `bots` (
  `bot_id` int(11) NOT NULL AUTO_INCREMENT,
  `bot_name` varchar(255) NOT NULL,
  `bot_desc` varchar(255) NOT NULL,
  `bot_active` int(11) NOT NULL DEFAULT '1',
  `bot_parent_id` int(11) NOT NULL DEFAULT '0',
  `format` varchar(10) NOT NULL DEFAULT 'html',
  `save_state` enum('session','database') NOT NULL DEFAULT 'session',
  `conversation_lines` int(11) NOT NULL DEFAULT '7',
  `remember_up_to` int(11) NOT NULL DEFAULT '10',
  `debugemail` text NOT NULL,
  `debugshow` int(11) NOT NULL DEFAULT '1',
  `debugmode` int(11) NOT NULL DEFAULT '1',
  `error_response` text NOT NULL,
  `default_aiml_pattern` varchar(255) NOT NULL DEFAULT 'RANDOM PICKUP LINE',
  `unknown_user` varchar(255) NOT NULL DEFAULT 'Seeker',
  PRIMARY KEY (`bot_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bots`
--

INSERT INTO `bots` (`bot_id`, `bot_name`, `bot_desc`, `bot_active`, `bot_parent_id`, `format`, `save_state`, `conversation_lines`, `remember_up_to`, `debugemail`, `debugshow`, `debugmode`, `error_response`, `default_aiml_pattern`, `unknown_user`) VALUES
(1, 'upcaib', '', 1, 1, 'html', 'session', 1, 10, 'cristinajeandonato@gmail.com', 4, 1, '', 'RANDOM PICKUP LINE', 'Seeker');

-- --------------------------------------------------------

--
-- Table structure for table `client_properties`
--

CREATE TABLE IF NOT EXISTS `client_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `client_properties`
--

INSERT INTO `client_properties` (`id`, `user_id`, `bot_id`, `name`, `value`) VALUES
(1, 1, 1, 'name', 'Seeker'),
(2, 2, 1, 'name', 'Seeker'),
(3, 3, 1, 'name', 'Seeker'),
(4, 4, 1, 'name', 'Seeker'),
(5, 5, 1, 'name', 'Seeker'),
(6, 6, 1, 'name', 'Seeker'),
(7, 7, 1, 'name', 'Seeker'),
(8, 8, 1, 'name', 'Seeker');

-- --------------------------------------------------------

--
-- Table structure for table `conversation_log`
--

CREATE TABLE IF NOT EXISTS `conversation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `input` text NOT NULL,
  `response` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `convo_id` text NOT NULL,
  `bot_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `conversation_log`
--

INSERT INTO `conversation_log` (`id`, `input`, `response`, `user_id`, `convo_id`, `bot_id`, `timestamp`) VALUES
(1, 'HI', '', 1, 'q8peem5mtvt1i63hgv7mir8tl6', 1, '2015-04-08 15:49:37'),
(2, 'BYEBYE CRISTINE', '', 2, '9pqh00th6dnp5qffnlv9kq7hr5', 1, '2015-04-09 12:02:14'),
(3, 'BYEBYE CRISTINE', '', 2, '9pqh00th6dnp5qffnlv9kq7hr5', 1, '2015-04-09 12:02:26'),
(4, 'BYEBYE CRISTINE', '', 2, '9pqh00th6dnp5qffnlv9kq7hr5', 1, '2015-04-09 12:02:50'),
(5, 'BYEBYE CRISTINE', '', 2, '9pqh00th6dnp5qffnlv9kq7hr5', 1, '2015-04-09 12:08:51'),
(6, 'BYEBYE CRISTINE', '', 2, '9pqh00th6dnp5qffnlv9kq7hr5', 1, '2015-04-09 12:08:59'),
(7, 'HELLO', '', 2, '9pqh00th6dnp5qffnlv9kq7hr5', 1, '2015-04-09 12:09:06'),
(8, 'BYEBYE CRISTINE', '', 3, 'etv98kcs1345q6v7tfspcrc1v3', 1, '2015-04-09 12:09:48'),
(9, 'BYEBYE CRISTINE', '', 3, 'etv98kcs1345q6v7tfspcrc1v3', 1, '2015-04-09 12:09:57'),
(10, 'BYEBYE CRISTINE', 'Goodbye.', 4, 'cva3fft7jqm3uj9vtjlbh3qhj3', 1, '2015-04-09 12:12:06'),
(11, 'BYEBYE CRISTINE', 'Adios.', 4, 'cva3fft7jqm3uj9vtjlbh3qhj3', 1, '2015-04-09 12:12:53'),
(12, 'BYEBYE CRISTINE', 'Until next time.', 4, 'cva3fft7jqm3uj9vtjlbh3qhj3', 1, '2015-04-09 12:13:00'),
(13, 'HI', '', 1, 'q8peem5mtvt1i63hgv7mir8tl6', 1, '2015-04-09 12:19:47'),
(14, 'HI', '', 1, 'q8peem5mtvt1i63hgv7mir8tl6', 1, '2015-04-09 12:19:55'),
(15, 'HI', '', 1, 'q8peem5mtvt1i63hgv7mir8tl6', 1, '2015-04-09 12:20:03'),
(16, 'HELLO', '', 4, 'cva3fft7jqm3uj9vtjlbh3qhj3', 1, '2015-04-09 12:20:17'),
(17, 'BYEBYE CRISTINE', 'See you later!', 4, 'cva3fft7jqm3uj9vtjlbh3qhj3', 1, '2015-04-09 12:20:32'),
(18, 'BYEBYE CRISTINE', 'See you later.', 4, 'cva3fft7jqm3uj9vtjlbh3qhj3', 1, '2015-04-09 12:21:18'),
(19, 'BYEBYE CRISTINE', 'Goodbye.', 4, 'cva3fft7jqm3uj9vtjlbh3qhj3', 1, '2015-04-09 12:21:24'),
(20, 'BYEBYE CRISTINE', 'Bye.', 4, 'cva3fft7jqm3uj9vtjlbh3qhj3', 1, '2015-04-09 13:19:13'),
(21, 'HI', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 14:19:57'),
(22, 'HELLO', 'Hi there!', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 14:20:01'),
(23, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 14:20:09'),
(24, 'WHO IS THE CURRENT', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 14:20:15'),
(25, 'WHO IS THE CURRENT', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 14:39:50'),
(26, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 21:51:25'),
(27, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 21:54:19'),
(28, 'WHO IS THE CURRENT', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 21:55:57'),
(29, 'WHO IS THE CURRENT', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 21:56:55'),
(30, 'WHO IS THE CURRENT', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 21:57:54'),
(31, 'WHO IS THE CURRENT', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 21:58:42'),
(32, 'WHO IS THE CURRENT', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 21:59:22'),
(33, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 21:59:43'),
(34, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:05:36'),
(35, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:05:41'),
(36, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:06:35'),
(37, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:12:28'),
(38, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:13:30'),
(39, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:13:46'),
(40, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:13:59'),
(41, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:14:19'),
(42, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:14:30'),
(43, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:16:31'),
(44, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:55:14'),
(45, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:55:24'),
(46, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:56:28'),
(47, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:57:36'),
(48, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 22:58:29'),
(49, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:00:06'),
(50, 'SOMETHING', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:00:25'),
(51, 'HI', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:00:28'),
(52, 'HELLO', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:00:34'),
(53, 'HELLO', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:00:41'),
(54, 'HELLO', 'Hi there!', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:01:06'),
(55, 'HELLO CRISTINA', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:01:17'),
(56, 'HELLO', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:01:26'),
(57, 'HELLO', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:01:33'),
(58, 'HELLO', 'Hi there!', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:01:45'),
(59, 'HELLO CRISTINA', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:01:51'),
(60, 'HELLO', 'Hi there!', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:01:57'),
(61, 'HELLO', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:02:02'),
(62, 'HELLO', 'Hi there!', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:02:08'),
(63, 'HELLO', 'Hi there!', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:02:14'),
(64, 'HELLO CRISTINA', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:02:21'),
(65, 'GOODBYE', 'Until next time.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:02:30'),
(66, 'BYEBYE CRISTINE', 'Bye.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:02:47'),
(67, 'HELLO', '', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:02:53'),
(68, 'HELLO', 'Hi there!', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:02:58'),
(69, 'GOODBYE', 'Bye for now.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:03:03'),
(70, 'GOODBYE', 'Goodbye.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:03:07'),
(71, 'GOODBYE', 'Goodbye.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:03:12'),
(72, 'GOODBYE', 'Bye bye.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:04:23'),
(73, 'GOODBYE', 'Goodbye.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:04:41'),
(74, 'GOODBYE', 'See you later.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-22 23:07:05'),
(75, 'GOODBYE', 'Sayonara.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-23 02:39:07'),
(76, 'GOODBYE', 'Bye.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-23 02:39:53'),
(77, 'GOODBYE', 'See you later Seeker.', 5, 'soutvt881c51jb7mti24itkkb6', 1, '2015-04-23 02:40:27'),
(78, 'HELLO', 'Hi there!', 6, '59b78cf5rb9kn6fgu00836ene0', 1, '2015-04-28 23:27:13'),
(79, 'WHO IS THE CURRENT DEAN OF UP CEBU', '', 6, '59b78cf5rb9kn6fgu00836ene0', 1, '2015-04-28 23:27:22'),
(80, 'UP CEBU', '', 6, '59b78cf5rb9kn6fgu00836ene0', 1, '2015-04-28 23:27:31'),
(81, 'UP CEBU', '', 6, '59b78cf5rb9kn6fgu00836ene0', 1, '2015-04-28 23:27:40'),
(82, 'HELLO', 'Hi there!', 7, 'bdbdhjn6qoevdfk5ker2ld8g82', 1, '2015-05-04 05:15:47'),
(83, 'HELLO', 'Hi there!', 7, 'bdbdhjn6qoevdfk5ker2ld8g82', 1, '2015-05-04 05:15:47'),
(84, 'HELLO', '', 7, 'bdbdhjn6qoevdfk5ker2ld8g82', 1, '2015-05-04 05:26:23'),
(85, 'HI', '', 8, 'tojjc66qgcbtbn1t2kkmoio7l7', 1, '2015-05-04 06:02:20'),
(86, 'HELLO', 'Hi there!', 8, 'tojjc66qgcbtbn1t2kkmoio7l7', 1, '2015-05-04 06:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `myprogramo`
--

CREATE TABLE IF NOT EXISTS `myprogramo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_ip` varchar(25) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `myprogramo`
--

INSERT INTO `myprogramo` (`id`, `user_name`, `password`, `last_ip`, `last_login`) VALUES
(1, 'cristinadonato', '309fcec16556b087bf98f798020839bf', '::1', '2015-04-09 12:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `spellcheck`
--

CREATE TABLE IF NOT EXISTS `spellcheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `missspelling` varchar(100) NOT NULL,
  `correction` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `spellcheck`
--

INSERT INTO `spellcheck` (`id`, `missspelling`, `correction`) VALUES
(1, 'shakespear', 'shakespeare'),
(2, 'shakesper', 'shakespeare'),
(3, 'ws', 'william shakespeare'),
(4, 'shakespaer', 'shakespeare'),
(5, 'shakespere', 'shakespeare'),
(6, 'shakepeare', 'shakespeare'),
(7, 'shakeper', 'shakespeare'),
(8, 'willam', 'william'),
(9, 'willaim', 'william'),
(10, 'romoe', 'romeo'),
(11, 'julet', 'juliet'),
(12, 'juleit', 'juliet'),
(13, 'thats', 'that is'),
(89, 'Youa aare', 'you are'),
(88, 'that s', 'that is'),
(87, 'wot s', 'what is'),
(17, 'whats', 'what is'),
(18, 'wot', 'what'),
(19, 'wots', 'what is'),
(86, 'what s', 'what is'),
(21, 'lool', 'lol'),
(27, 'pogram', 'program'),
(23, 'progam', 'program'),
(26, 'progam', 'program'),
(28, 'r', 'are'),
(29, 'u', 'you'),
(30, 'ur', 'your'),
(31, 'v', 'very'),
(32, 'k', 'ok'),
(33, 'np', 'no problem'),
(34, 'ta', 'thank you'),
(35, 'ty', 'thank you'),
(36, 'omg', 'oh my god'),
(37, 'letts', 'lets'),
(38, 'yeah', 'yes'),
(39, 'yeh', 'yes'),
(40, 'portugues', 'portuguese'),
(41, 'hehe', 'lol'),
(42, 'ha', 'lol'),
(43, 'intersting', 'interesting'),
(44, 'qestion', 'question'),
(45, 'elrond hubbard', 'l.ron hubbard'),
(46, 'programm', 'program'),
(47, 'c''mon', 'come on'),
(48, 'ye', 'yes'),
(49, 'im', 'i am'),
(50, 'fuckahh', 'fucker'),
(51, 'shakespeare bot', 'shakespearebot'),
(52, 'goodf', 'good'),
(53, 'dont', 'do not'),
(54, 'cos', 'because'),
(55, 'cus', 'because'),
(56, 'coz', 'because'),
(57, 'cuz', 'because'),
(58, 'isnt', 'is not'),
(59, 'isn''t', 'is not'),
(60, 'i''m', 'i am'),
(61, 'ima', 'i am a'),
(62, 'chheese', 'cheese'),
(63, 'watsup', 'what is up'),
(64, 'let s', 'let us'),
(65, 'he s', 'he is'),
(66, 'she''s', 'she is'),
(67, 'i ll', 'i will'),
(68, 'they ll', 'they will'),
(69, 'you re', 'you are'),
(70, 'you ve', 'you have'),
(71, 'hy', 'hey'),
(72, 'msician', 'musician'),
(74, 'don t', 'do not'),
(75, 'can t', 'cannot'),
(76, 'favourite', 'favorite'),
(77, 'colour', 'color'),
(78, 'won t', 'will not'),
(79, 'a/s/l', 'asl'),
(80, 'haven t', 'have not'),
(81, 'doesn t', 'does not'),
(82, 'a/s/l/', 'asl'),
(83, 'wht', 'what'),
(84, 'It s been', 'It has been'),
(85, 'its been', 'it has been'),
(90, 'you re', 'you are'),
(91, 'theres', 'there is'),
(92, 'youa re', 'you are'),
(93, 'youa aare', 'you are'),
(94, 'wath', 'what'),
(95, 'waths', 'what is'),
(96, 'hy', 'hey'),
(97, 'oke', 'ok'),
(98, 'okay', 'ok'),
(99, 'errm', 'erm'),
(100, 'aare', 'are'),
(101, 'shakespeare bot', 'william shakespeare'),
(102, 'shakespearebot', 'william shakespeare'),
(103, 'werwerwer', 'war'),
(109, 'program o', 'programo'),
(106, 'ddddddddd', 'ddddddddd'),
(107, 'ddddddddd', 'ddddddddd'),
(108, 'fgfgfgfg', 'fgfgfgfg'),
(110, 'program-o', 'programo'),
(111, 'fav', 'favorite');

-- --------------------------------------------------------

--
-- Table structure for table `srai_lookup`
--

CREATE TABLE IF NOT EXISTS `srai_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bot_id` int(11) NOT NULL,
  `pattern` text NOT NULL,
  `template_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pattern` (`pattern`(64))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains previously stored SRAI calls' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `srai_lookup`
--

INSERT INTO `srai_lookup` (`id`, `bot_id`, `pattern`, `template_id`) VALUES
(1, 1, 'BYE', 74),
(2, 1, 'BYE', 191),
(3, 1, 'BYE', 191),
(4, 1, 'BYE', 191),
(5, 1, 'BYE', 191),
(6, 1, 'BYE', 191),
(7, 1, 'BYE', 191),
(8, 1, 'BYE', 191),
(9, 1, 'BYE', 191),
(10, 1, 'BYE', 191),
(11, 1, 'BYE', 191),
(12, 1, 'BYE', 191),
(13, 1, 'BYE', 191),
(14, 1, 'BYE', 191),
(15, 1, 'BYE', 191);

-- --------------------------------------------------------

--
-- Table structure for table `undefined_defaults`
--

CREATE TABLE IF NOT EXISTS `undefined_defaults` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `pattern` text NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `undefined_defaults`
--

INSERT INTO `undefined_defaults` (`id`, `bot_id`, `user_id`, `pattern`, `template`) VALUES
(1, 1, 0, 'your name', 'my friend'),
(2, 1, 0, 'your it', 'it'),
(3, 1, 0, 'your location', 'your town'),
(4, 1, 0, 'your does', 'it'),
(5, 1, 0, 'your genus', 'human'),
(6, 1, 0, 'your he', 'him'),
(7, 1, 0, 'your she', 'her'),
(8, 1, 0, 'your them', 'those'),
(9, 1, 0, 'your memory', 'that'),
(10, 1, 0, 'your they', 'those'),
(11, 1, 0, 'your gender', 'woman'),
(12, 1, 0, 'your has', 'that'),
(13, 1, 0, 'your we', 'you and me'),
(14, 1, 0, 'your x', 'x'),
(15, 1, 0, 'your personality', 'chatty'),
(16, 1, 0, 'etype', 'great and witty'),
(17, 1, 0, 'your top', 'om'),
(18, 1, 0, 'your second', 'om'),
(19, 1, 0, 'your third', 'om'),
(20, 1, 0, 'your fourth', 'om'),
(21, 1, 0, 'your fifth', 'om'),
(22, 1, 0, 'your sixth', 'om'),
(23, 1, 0, 'your seventh', 'om'),
(24, 1, 0, 'your last', 'om'),
(25, 1, 0, 'your want', 'it'),
(26, 1, 0, 'your is', 'it'),
(27, 1, 0, 'you dealerhand', 'The dealers hand'),
(28, 1, 0, 'your playerhand', 'Your hand'),
(29, 1, 0, 'your dealerace', 'dealer total'),
(30, 1, 0, 'your playerace', 'your total');

-- --------------------------------------------------------

--
-- Table structure for table `unknown_inputs`
--

CREATE TABLE IF NOT EXISTS `unknown_inputs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bot_id` int(11) NOT NULL,
  `input` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `chatlines` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `referer` text NOT NULL,
  `browser` text NOT NULL,
  `date_logged_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `session_id`, `bot_id`, `chatlines`, `ip`, `referer`, `browser`, `date_logged_on`, `last_update`, `state`) VALUES
(1, 'Seeker', 'q8peem5mtvt1i63hgv7mir8tl6', 1, 0, '::1', 'http://localhost/upIVT/index.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', '2015-04-08 15:49:36', '2015-04-08 15:49:36', ''),
(2, 'Seeker', '9pqh00th6dnp5qffnlv9kq7hr5', 1, 0, '::1', 'http://localhost/upIVT/index.php?say=byebye+cristine&submit=say&convo_id=9pqh00th6dnp5qffnlv9kq7hr5&bot_id=1&format=html', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', '2015-04-09 12:02:13', '2015-04-09 12:02:13', ''),
(3, 'Seeker', 'etv98kcs1345q6v7tfspcrc1v3', 1, 0, '::1', 'http://localhost/upIVT/bot/gui/plain/', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', '2015-04-09 12:09:48', '2015-04-09 12:09:48', ''),
(4, 'Seeker', 'cva3fft7jqm3uj9vtjlbh3qhj3', 1, 0, '::1', 'http://localhost/upIVT/index.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', '2015-04-09 12:12:06', '2015-04-09 12:12:06', ''),
(5, 'Seeker', 'soutvt881c51jb7mti24itkkb6', 1, 0, '::1', 'http://localhost/upIVT/index.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36', '2015-04-22 14:19:57', '2015-04-22 14:19:57', ''),
(6, 'Seeker', '59b78cf5rb9kn6fgu00836ene0', 1, 0, '::1', 'http://localhost/upIVT/index.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36', '2015-04-28 23:27:12', '2015-04-28 23:27:12', ''),
(7, 'Seeker', 'bdbdhjn6qoevdfk5ker2ld8g82', 1, 0, '::1', 'http://localhost/upIVT/', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', '2015-05-04 05:15:46', '2015-05-04 05:15:46', ''),
(8, 'Seeker', 'tojjc66qgcbtbn1t2kkmoio7l7', 1, 0, '::1', 'http://localhost/upIVT/', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', '2015-05-04 06:02:20', '2015-05-04 06:02:20', '');

-- --------------------------------------------------------

--
-- Table structure for table `wordcensor`
--

CREATE TABLE IF NOT EXISTS `wordcensor` (
  `censor_id` int(11) NOT NULL AUTO_INCREMENT,
  `word_to_censor` varchar(50) NOT NULL,
  `replace_with` varchar(50) NOT NULL DEFAULT '****',
  `bot_exclude` varchar(255) NOT NULL,
  PRIMARY KEY (`censor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wordcensor`
--

INSERT INTO `wordcensor` (`censor_id`, `word_to_censor`, `replace_with`, `bot_exclude`) VALUES
(1, 'shit', 's***', ''),
(2, 'fuck', 'f***', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
