# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.42)
# Database: Chitragupta
# Generation Time: 2015-11-21 03:33:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Match
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Match`;

CREATE TABLE `Match` (
  `match_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `home_team_id` int(6) unsigned NOT NULL,
  `away_team_id` int(6) unsigned NOT NULL,
  `home_team_score` int(11) NOT NULL DEFAULT '0',
  `away_team_score` int(11) NOT NULL DEFAULT '0',
  `home_team_wickets` int(11) unsigned NOT NULL DEFAULT '0',
  `away_team_wickets` int(11) unsigned NOT NULL DEFAULT '0',
  `home_team_overs` float unsigned NOT NULL DEFAULT '0',
  `away_team_overs` float unsigned NOT NULL DEFAULT '0',
  `year` int(4) unsigned NOT NULL,
  PRIMARY KEY (`match_id`),
  KEY `home_team_id` (`home_team_id`),
  KEY `away_team_id` (`away_team_id`),
  CONSTRAINT `AWAY_MATCH` FOREIGN KEY (`away_team_id`) REFERENCES `Team` (`team_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `HOME_MATCH` FOREIGN KEY (`home_team_id`) REFERENCES `Team` (`team_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Profile
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Profile`;

CREATE TABLE `Profile` (
  `profile_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL DEFAULT '',
  `last_name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phonenum` int(10) unsigned NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(30) NOT NULL,
  `postal_code` varchar(6) NOT NULL DEFAULT '',
  `mandal` varchar(255) NOT NULL DEFAULT '',
  `seva` varchar(255) DEFAULT '',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Stats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Stats`;

CREATE TABLE `Stats` (
  `stat_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(6) unsigned NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `matches_played` int(11) unsigned NOT NULL DEFAULT '0',
  `runs` int(6) unsigned NOT NULL DEFAULT '0',
  `balls_played` int(11) unsigned NOT NULL DEFAULT '0',
  `hundreds` int(3) unsigned NOT NULL DEFAULT '0',
  `fifties` int(3) unsigned NOT NULL DEFAULT '0',
  `highscore` int(4) unsigned NOT NULL DEFAULT '0',
  `overs_bowled` float unsigned NOT NULL DEFAULT '0',
  `runs_allowed` int(11) unsigned NOT NULL DEFAULT '0',
  `wickets` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `PROFILE_STAT` (`profile_id`),
  KEY `year` (`year`),
  CONSTRAINT `PROFILE_STAT` FOREIGN KEY (`profile_id`) REFERENCES `Profile` (`profile_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Team
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Team`;

CREATE TABLE `Team` (
  `team_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `captain_id` int(6) unsigned NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `team_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`team_id`),
  KEY `captain_id` (`captain_id`),
  KEY `year` (`year`),
  CONSTRAINT `CAPTAIN_TEAM` FOREIGN KEY (`captain_id`) REFERENCES `Profile` (`profile_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
