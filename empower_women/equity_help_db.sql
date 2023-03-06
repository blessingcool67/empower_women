-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: equity_help
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `type` int(10) NOT NULL,
  `comment` text DEFAULT NULL,
  `timer1` varchar(100) DEFAULT NULL,
  `timer2` varchar(100) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `comment_approve` int(3) DEFAULT NULL,
  `data` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (39,48,1,'This is amazing.Thanks for sharing','1678064822','Saturday, March 4, 2023, 8:14 pm',35,'35','Venus Johnson','good1677972828.png',0,NULL),(40,44,1,'thanks ','1678064822','Saturday, March 4, 2023, 8:47 pm',35,'35','Venus Johnson','good1677972828.png',0,NULL),(41,45,1,'Thanks','1678064822','Sunday, March 5, 2023, 10:29 am',35,'35','Venus Johnson','good1677972828.png',0,NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `userid` int(30) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `user_rank` varchar(100) DEFAULT NULL,
  `reciever_id` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `timing` varchar(100) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title_seo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (162,'44',34,'Ann Ball','good1677972723.png','Member','35','read','post','1678064822','Women Web Developers Needed by Avanade','Women-Web-Developers-Needed-by-Avanade-1677973294'),(163,'45',34,'Ann Ball','good1677972723.png','Member','35','unread','post','1678064822','Scholarship Awards by Avanade International','Scholarship-Awards-by-Avanade-International-1677973576'),(164,'46',34,'Ann Ball','good1677972723.png','Member','35','unread','post','1678064822','Avanade Seeking Women HardWare Engineers','Avanade-Seeking-Women-HardWare-Engineers-1677974462'),(165,'47',34,'Ann Ball','good1677972723.png','Member','35','unread','post','1678064822','About Politician Kathryn L. Afzali','About-Politician-Kathryn-L.-Afzali-1677974837'),(166,'48',34,'Ann Ball','good1677972723.png','Member','35','unread','post','1678064822','American Business Woman Theresa Eleanor','American-Business-Woman-Theresa-Eleanor-1677975145'),(167,'48',35,'Venus Johnson','good1677972828.png','Member','34','unread','comment','1678064822','American Business Woman Theresa Eleanor','American-Business-Woman-Theresa-Eleanor-1677975145'),(170,'45',35,'Venus Johnson','good1677972828.png','Member','34','unread','comment','1678064822','Scholarship Awards by Avanade International','Scholarship-Awards-by-Avanade-International-1677973576'),(171,'50',35,'Venus Johnson','good1677972828.png','Member','34','unread','post','1678064822','Women in Cloud Hiring Women IT Technology Experts','Women-in-Cloud-Hiring-Women-IT-Technology-Experts-1678026961');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title_seo` varchar(200) DEFAULT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `timer1` varchar(100) DEFAULT NULL,
  `timer2` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `userphoto` varchar(100) DEFAULT NULL,
  `userid` int(30) DEFAULT NULL,
  `points` varchar(100) DEFAULT NULL,
  `help_category` varchar(100) DEFAULT NULL,
  `offering` varchar(100) DEFAULT NULL,
  `total_comments` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `images` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (44,'Women Web Developers Needed by Avanade','Women-Web-Developers-Needed-by-Avanade-1677973294','Avanade International  is Currently seeking for qualified Women in the Field of Web Developments. Interested Persons should applied.','1678064822','Monday, March 6, 2023, 5:41 am','34','Ann Ball','good1677972723.png',34,'380','Jobs_Internship','Offering Help','1','post',NULL,NULL,NULL,NULL,''),(45,'Scholarship Awards by Avanade International','Scholarship-Awards-by-Avanade-International-1677973576','Avanade International is Currently offering Scholarship for Gilrs, Ladies and Young Women who wants to Study Computer Sciencies. Interested Persons should applied in person ....','1678064822','Monday, March 6, 2023, 5:41 am','34','Ann Ball','good1677972723.png',34,'380','Scholarship','Offering Help','1','post',NULL,NULL,NULL,NULL,''),(46,'Avanade Seeking Women HardWare Engineers','Avanade-Seeking-Women-HardWare-Engineers-1677974462','Avanade is currently seeking for Women who are grounded in Hardware Engineering and System Repairers. If you are a woman  with atleast 1 year experience. We at Avanade needs you on Board.','1678064822','Monday, March 6, 2023, 5:41 am','34','Ann Ball','good1677972723.png',34,'380','Jobs_Internship','Offering Help','0','post',NULL,NULL,NULL,NULL,''),(47,'About Politician Kathryn L. Afzali','About-Politician-Kathryn-L.-Afzali-1677974837','Afzali is an American Woman Politician who was sworn in as a member of the Maryland House of Delegates on January 12, 2011. She was assigned to the House Ways and Means Committee and to its Election Law and Education subcommittees. She served as the Ranking Republican on Ways and Means. She is also a member of the Women Legislators of Maryland.By the end of Afzalis first legislative session in Annapolis, she sponsored or co-sponsored forty-nine bills.','1678064822','Monday, March 6, 2023, 5:41 am','34','Ann Ball','good1677972723.png',34,'380','Motivational_Quotes','Offering Help','0','post',NULL,NULL,NULL,NULL,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/1_kath_afzali.jpg/220px-1_kath_afzali.jpg'),(48,'American Business Woman Theresa Eleanor','American-Business-Woman-Theresa-Eleanor-1677975145','Theresa Eleanor  was an American businesswoman from the Bay Area. After working for Pacific Bell for thirty years, she started her own consulting business which organizes events for Bay Area non-profits. She was inaugurated into the Alameda County Womens Hall of Fame in 2012.','1678064822','Monday, March 6, 2023, 5:41 am','34','Ann Ball','good1677972723.png',34,'380','Motivational_Quotes','Offering Help','1','post',NULL,NULL,NULL,NULL,'https://upload.wikimedia.org/wikipedia/en/0/07/Terry_Alderete.jpg'),(50,'Women in Cloud Hiring Women IT Technology Experts','Women-in-Cloud-Hiring-Women-IT-Technology-Experts-1678026961','Women in Cloud is currently seeking for Women who are grounded in Hardware Engineering and System Repairers. If you are a woman with atleast 1 year experience. We at Avanade needs you on Board.','1678064822','Monday, March 6, 2023, 5:41 am','35','Venus Johnson','good1677972828.png',35,'230','Jobs_Internship','Offering Help','0','post',NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `user_rank` varchar(200) DEFAULT NULL,
  `user_verified` varchar(200) DEFAULT NULL,
  `user_banned` varchar(200) DEFAULT NULL,
  `created_time` varchar(200) DEFAULT NULL,
  `timer1` varchar(200) DEFAULT NULL,
  `timer2` varchar(200) DEFAULT NULL,
  `data` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `phone_no` varchar(60) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `points` varchar(100) DEFAULT NULL,
  `levels` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (34,NULL,'123','Ann Ball','annball@gmail.com','good1677972723.png','member','1','0','Monday, March 6, 2023, 3:20 am','1678064822',NULL,'c1a8c62636f108a51ee4a61d74cb71591677972723',NULL,NULL,'1677972723','380','1'),(35,NULL,'123','Venus Johnson','venusjohnson@gmail.com','good1677972828.png','member','1','0','Monday, March 6, 2023, 3:20 am','1678064822',NULL,'f19e83ed4a155c64dd4748bac507574a1677972828',NULL,NULL,'1677972828','230','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'equity_help'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-06  2:20:45
