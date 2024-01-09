-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 23.236.55.63    Database: cloudbookd_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.1-MariaDB-1:10.11.1+maria~deb11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(75) NOT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `profile_img` varchar(1000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_UN_username` (`username`),
  UNIQUE KEY `user_UN_email` (`email`),
  CONSTRAINT `user_CHECK_email_format` CHECK (`email` like '%@%.__%'),
  CONSTRAINT `user_CHECK_username_length` CHECK (char_length(`username`) <= 20)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'test3','Jane','Doe','test4@testing.com','$2b$12$Xx7ZLcz781cHjtZx1RWLZubnjFvJtYGpg7EePA3GYgGpvyWI9K9ke',NULL,NULL,'2023-11-03 05:18:13'),(8,'roland1','Roland','Dechaine','gunslingerroland@ka.ca','kawheel',NULL,NULL,'2023-11-03 05:37:32'),(10,'test6','Jane','Doe','test6@testing.com','$2b$12$t68MniTHs8A1eBF154jDWuW.89FTojpDI5sdOiN7rtYUPsaYjbGfK',NULL,NULL,'2023-11-03 06:05:30'),(21,'test14','Jane','Doe','test14@testing.com','$2b$12$lo9rrwtTtXpvytplXgP0juC0GoTQ2.6BTFBH5AiB4n2hlvz/ugPu2',NULL,NULL,'2023-11-06 05:25:07'),(22,'test15','Jane','Doe','test15@testing.com','$2b$12$9wPBwuy4U9raj1n.XHqA0.Dfbz.22V3KGWlObyb8RgdUe.7Rk2Q66',NULL,NULL,'2023-11-06 06:37:59'),(23,'cloudddjj','sdfjk','Eykelbosh','eykelboshc@gmail.com','$2b$12$7gmD1CIbtOk52UQ4hjvjJeaemFkXhTaER3IJt9gW//Z8opZRS5uUq',NULL,NULL,'2023-11-07 05:31:02'),(24,'tewstq','rtd','dsfg','test@test.com','$2b$12$V9xx6R.5Rjb/MAO78hkL0uYF05HTGQJtjWBTZc/suiSQ9i9aPyz3q',NULL,NULL,'2023-11-07 05:41:35'),(25,'test1','siobhan','bonardi','test1@test.com','$2b$12$ELy3hNUUI0nRzv3fqBmsbuHR6G3xoQUwamH/1qe.3uKMB97bkDmnS',NULL,NULL,'2023-11-10 06:28:49'),(26,'ssdfsdf','sdfs','sdf','sdf@s,.com','$2b$12$OMopkEk6NZoyGFHj1S6zbu7n313H05FZhLxwQ6Akj/WPk.vvxrw2i',NULL,NULL,'2023-11-10 07:44:01'),(27,'asdasda','sd','asd','asd@asd.com','$2b$12$Fbnw68h9aIZC6E6boDdbmef2Yc6cV7y93mFjFPt.vUQFnaQDEbVsO',NULL,NULL,'2023-12-13 01:18:28'),(29,'aaaaaaaaaaa','aaasssss','dddada','siob1as@asd.com','$2b$12$uudct3YP5mGAVGugyeh/8uW/RG5Lj/A4FXCyulGS5rpYcwbr1d5Ha',NULL,NULL,'2023-12-13 01:20:06'),(30,'heeeeey','ssssss','ssss','ss@ass.,com','$2b$12$Frk0Un8fsyqmAOHsmpQqFe7bQY7jko8hhanCm7KElQI109e/2CFIS',NULL,NULL,'2023-12-13 01:21:25'),(31,'hiiiiii','hh','hh','h@hg.com','$2b$12$c.qDM.YBVqOHNMJ8RowS4u3UAThmSaTijO.TGmyCdeYBQBMgM61wa',NULL,NULL,'2023-12-13 01:26:29'),(32,'cloudpunch','Siobhan','Bonardi','siobhan@test.com','$2b$12$ugVHG5OqflsaQc71AxmrOe8ig6zvB4WBJb0ykBKJ2lLsM1QlZXHGS',NULL,NULL,'2023-12-14 02:32:09'),(33,'hellokitty','Siobhan','Bonardi','ssssssss@h.co','$2b$12$2OeEPutHHGtegR.YZTnFFOw5N6tME2Bo6F/rN1teMF.5XgPQkusZO',NULL,NULL,'2023-12-22 01:51:09'),(35,'skelly','Skeleton','Bones','skel@test.com','$2b$12$TQsm5vKOFArXo/beflcRrepIeH.V4ILh0oA8pUAbvZlZ9Sxj6SBl.',NULL,NULL,'2024-01-01 22:08:49');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_books`
--

DROP TABLE IF EXISTS `user_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `book_id` varchar(200) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `cover_img` text DEFAULT NULL,
  `date_started` date DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `shelves` varchar(100) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `times_read` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_books_UN_bookId_userId` (`book_id`,`user_id`),
  KEY `user_books_FK_user_id` (`user_id`),
  CONSTRAINT `user_books_FK_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_books_CHECK_rating_0.5-5` CHECK (`rating` in (0.5,1,1.5,2,2.5,3,3.5,4,4.5,5))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_books`
--

LOCK TABLES `user_books` WRITE;
/*!40000 ALTER TABLE `user_books` DISABLE KEYS */;
INSERT INTO `user_books` VALUES (2,35,'_A_4zIn739IC','The Dark Tower IV','Stephen King','\"http://books.google.com/books/content?id=_A_4zIn739IC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72n5Jcc3s998vAS5DwqKF2RW0kIuhOhcFY4kBfDfEvghD3Fjyd9FXAcAwKPuv4mN0_tGcdTguCn3w1tCSVQLFEpPL9TC96DrtUuTJCKsOXWsunlQvH-dnTiLLdLbP1l1UTW_ABp&source=gbs_api\"',NULL,NULL,'tbr',NULL,0),(4,35,'ZswAEAAAQBAJ','A Court of Wings and Ruin','[\"Sarah J. Maas\"]','http://books.google.com/books/publisher/content?id=ZswAEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73AOnmOSHExQG4cEIgnzADJtDmeC2QuVJuQt1zLQsEcKzUQHuWc77NwO_PkLliv4BT2BIJpC5QsQrDmzLTpCauqR87Bhzn6UtDyyKPxMrjGpecbjx2SlE1RWBvwTMCvsF26cfno&source=gbs_api',NULL,NULL,'tbr',NULL,NULL);
/*!40000 ALTER TABLE `user_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reading_challenge`
--

DROP TABLE IF EXISTS `user_reading_challenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reading_challenge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `reading_goal` int(10) unsigned NOT NULL,
  `goal_year` year(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_reading_challenge_UN(oneGoalPerYearPerUser)` (`user_id`,`goal_year`),
  CONSTRAINT `user_reading_challenge_FK_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reading_challenge`
--

LOCK TABLES `user_reading_challenge` WRITE;
/*!40000 ALTER TABLE `user_reading_challenge` DISABLE KEYS */;
INSERT INTO `user_reading_challenge` VALUES (1,8,19,2024),(2,31,6,2024),(48,32,45,2024),(49,33,50,2024),(65,35,50,2024);
/*!40000 ALTER TABLE `user_reading_challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_session`
--

DROP TABLE IF EXISTS `user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL DEFAULT uuid(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_session_UN` (`token`),
  KEY `user_session_FK_user_id` (`user_id`),
  CONSTRAINT `user_session_FK_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_session`
--

LOCK TABLES `user_session` WRITE;
/*!40000 ALTER TABLE `user_session` DISABLE KEYS */;
INSERT INTO `user_session` VALUES (4,21,'d9065381-7c64-11ee-bc75-42010a800002'),(5,22,'072581f4-7c6f-11ee-bc75-42010a800002'),(6,23,'d70f4a82-7d2e-11ee-bc75-42010a800002'),(7,24,'5054d728-7d30-11ee-bc75-42010a800002'),(10,26,'ea05548e-7f9c-11ee-bc75-42010a800002'),(11,8,'317e6a65-994e-11ee-bc75-42010a800002'),(15,31,'a459a273-9956-11ee-bc75-42010a800002'),(16,32,'fb108eaf-9a28-11ee-bc75-42010a800002'),(17,32,'d776d74e-9b11-11ee-bc75-42010a800002'),(18,32,'c6f6b715-9d39-11ee-bc75-42010a800002'),(19,33,'947a636c-a06c-11ee-bc75-42010a800002'),(20,35,'575634ec-a8f2-11ee-bc75-42010a800002'),(21,35,'6143b268-a900-11ee-bc75-42010a800002'),(22,35,'176b0995-a9b1-11ee-bc75-42010a800002'),(23,35,'b993400a-a9c3-11ee-bc75-42010a800002'),(24,35,'0b00e2dd-ab48-11ee-bc75-42010a800002'),(25,35,'45ee5a75-acde-11ee-bc75-42010a800002'),(29,35,'9724ea6d-aead-11ee-bc75-42010a800002');
/*!40000 ALTER TABLE `user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cloudbookd_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `delete_user_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `delete_user_login`(token_input VARCHAR(45))
    MODIFIES SQL DATA
BEGIN
	DELETE FROM user_session WHERE token = token_input;
	SELECT ROW_COUNT();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_user_reading_goal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `delete_user_reading_goal`(token_input VARCHAR(45), goalYear_input INT)
    MODIFIES SQL DATA
BEGIN
	SELECT us.user_id INTO @userId FROM user_session us WHERE us.token = token_input;
	DELETE FROM user_reading_challenge WHERE user_id = @userId AND goal_year = goalYear_input;
	SELECT ROW_COUNT();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `get_user_login`(email_input VARCHAR(100))
BEGIN
	SELECT id, password FROM user WHERE email = email_input;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `get_user_profile`(token_input VARCHAR(45))
BEGIN
	SELECT u.id, u.username, u.first_name, u.last_name, u.email, u.password, u.bio, u.profile_img, u.created_at FROM user u JOIN user_session us ON us.user_id = u.id WHERE us.token = token_input;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_reading_goal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `get_user_reading_goal`(token_input VARCHAR(45))
BEGIN
	SELECT us.user_id INTO @userId FROM user_session us WHERE us.token = token_input;
	SELECT urc.reading_goal, urc.goal_year FROM user_reading_challenge urc WHERE urc.user_id = @userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patch_user_reading_goal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `patch_user_reading_goal`(token_input VARCHAR(45), readingGoal_input INT, currYear_input INT)
    MODIFIES SQL DATA
BEGIN
	SELECT us.user_id INTO @userId FROM user_session us WHERE us.token = token_input;
	UPDATE user_reading_challenge SET reading_goal = readingGoal_input WHERE user_id = @userId AND goal_year = currYear_input;
	SELECT ROW_COUNT();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_to_user_books` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `post_to_user_books`(token_input VARCHAR(45), bookId_input CHAR(200), bookTitle_input TEXT, author_input TEXT, coverImg_input TEXT, dateStarted_input DATE, dateFinished_input DATE, shelves_input CHAR(100), rating_input DEC, timesRead_input INT)
    MODIFIES SQL DATA
BEGIN
    -- Get user_id based on the provided token
    SELECT us.user_id INTO @userId FROM user_session us WHERE us.token = token_input;


    -- Insert into user_books based on optional parameters
    INSERT INTO user_books (user_id, book_id, title, author, cover_img, date_started, date_finished, shelves, rating, times_read)
    VALUES (
        @userId,
        bookId_input,
        bookTitle_input,
        author_input,
        coverImg_input,
        dateStarted_input,
        dateFinished_input,
        shelves_input,
        rating_input,
        timesRead_input
    );
    SELECT ROW_COUNT();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_user_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `post_user_login`(userId_input INT)
    MODIFIES SQL DATA
BEGIN
	INSERT INTO user_session (user_id) VALUES (userId_input);
	SELECT user_id, token FROM user_session us WHERE id = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_user_reading_goal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `post_user_reading_goal`(token_input VARCHAR(45), readingGoal_input INT, currYear_input YEAR)
    MODIFIES SQL DATA
BEGIN
	SELECT us.user_id INTO @userId FROM user_session us WHERE us.token = token_input;
	INSERT INTO user_reading_challenge (user_id, reading_goal, goal_year) VALUES (@userId, readingGoal_input, currYear_input);
	SELECT ROW_COUNT();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_user_signup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `post_user_signup`(username_input VARCHAR(20), firstName_input VARCHAR(50), lastName_input VARCHAR(50), email_input VARCHAR(100), password_input VARCHAR(75))
    MODIFIES SQL DATA
BEGIN
	INSERT INTO user (username, first_name, last_name, email, password) VALUES (username_input, firstName_input, lastName_input, email_input, password_input);
	SELECT id FROM user WHERE id = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-08 22:32:43
