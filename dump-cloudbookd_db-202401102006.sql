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
INSERT INTO `user` VALUES (8,'roland1','Roland','Dechaine','gunslingerroland@ka.ca','kawheel',NULL,NULL,'2023-11-03 05:37:32'),(10,'test6','Jane','Doe','test6@testing.com','$2b$12$t68MniTHs8A1eBF154jDWuW.89FTojpDI5sdOiN7rtYUPsaYjbGfK',NULL,NULL,'2023-11-03 06:05:30'),(21,'test14','Jane','Doe','test14@testing.com','$2b$12$lo9rrwtTtXpvytplXgP0juC0GoTQ2.6BTFBH5AiB4n2hlvz/ugPu2',NULL,NULL,'2023-11-06 05:25:07'),(22,'test15','Jane','Doe','test15@testing.com','$2b$12$9wPBwuy4U9raj1n.XHqA0.Dfbz.22V3KGWlObyb8RgdUe.7Rk2Q66',NULL,NULL,'2023-11-06 06:37:59'),(23,'cloudddjj','sdfjk','Eykelbosh','eykelboshc@gmail.com','$2b$12$7gmD1CIbtOk52UQ4hjvjJeaemFkXhTaER3IJt9gW//Z8opZRS5uUq',NULL,NULL,'2023-11-07 05:31:02'),(24,'tewstq','rtd','dsfg','test222@test.com','$2b$12$V9xx6R.5Rjb/MAO78hkL0uYF05HTGQJtjWBTZc/suiSQ9i9aPyz3q',NULL,NULL,'2023-11-07 05:41:35'),(25,'test1','siobhan','bonardi','test1@test.com','$2b$12$ELy3hNUUI0nRzv3fqBmsbuHR6G3xoQUwamH/1qe.3uKMB97bkDmnS',NULL,NULL,'2023-11-10 06:28:49'),(26,'ssdfsdf','sdfs','sdf','sdf@s,.com','$2b$12$OMopkEk6NZoyGFHj1S6zbu7n313H05FZhLxwQ6Akj/WPk.vvxrw2i',NULL,NULL,'2023-11-10 07:44:01'),(27,'asdasda','sd','asd','asd@asd.com','$2b$12$Fbnw68h9aIZC6E6boDdbmef2Yc6cV7y93mFjFPt.vUQFnaQDEbVsO',NULL,NULL,'2023-12-13 01:18:28'),(29,'aaaaaaaaaaa','aaasssss','dddada','siob1as@asd.com','$2b$12$uudct3YP5mGAVGugyeh/8uW/RG5Lj/A4FXCyulGS5rpYcwbr1d5Ha',NULL,NULL,'2023-12-13 01:20:06'),(31,'hiiiiii','hh','hh','h@hg.com','$2b$12$c.qDM.YBVqOHNMJ8RowS4u3UAThmSaTijO.TGmyCdeYBQBMgM61wa',NULL,NULL,'2023-12-13 01:26:29'),(32,'cloudpunch','Siobhan','Bonardi','siobhan@test.com','$2b$12$ugVHG5OqflsaQc71AxmrOe8ig6zvB4WBJb0ykBKJ2lLsM1QlZXHGS',NULL,NULL,'2023-12-14 02:32:09'),(33,'hellokitty','Siobhan','Bonardi','ssssssss@h.co','$2b$12$2OeEPutHHGtegR.YZTnFFOw5N6tME2Bo6F/rN1teMF.5XgPQkusZO',NULL,NULL,'2023-12-22 01:51:09'),(35,'pusheen44','Skeleton','Bones','test@test.com','$2b$12$TQsm5vKOFArXo/beflcRrepIeH.V4ILh0oA8pUAbvZlZ9Sxj6SBl.',NULL,'https://pusheen.com/wp-content/uploads/2020/09/Preview-Image.jpg','2024-01-01 22:08:49');
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
  `reading_status` varchar(50) DEFAULT NULL,
  `date_started` date DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `times_read` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_books_UN_bookId_userId` (`book_id`,`user_id`),
  KEY `user_books_FK_user_id` (`user_id`),
  CONSTRAINT `user_books_FK_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_books_CHECK_rating_0.5-5` CHECK (`rating` in (0.5,1,1.5,2,2.5,3,3.5,4,4.5,5)),
  CONSTRAINT `user_books_CHECK` CHECK (`reading_status` in ('tbr','currently reading','read'))
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_books`
--

LOCK TABLES `user_books` WRITE;
/*!40000 ALTER TABLE `user_books` DISABLE KEYS */;
INSERT INTO `user_books` VALUES (13,35,'N2QzDwAAQBAJ','A Court of Frost and Starlight','Sarah J. Maas','http://books.google.com/books/publisher/content?id=N2QzDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71vZ1wEqUhuR06Btx41Q2bITUv5U_USRSdl5GJFOVLxhjmbqHVdLZWZlKK9c_Fq_p6uT3JPTr0tGwSoOd7rB1BsMZxA4AEmWW9go3LzoYEX1x4Wxn9Wd2Tlch6YLxsPTUJQxJen&source=gbs_api','read','2024-01-01','2024-01-08',NULL,1),(14,35,'do6zEAAAQBAJ','House of Flame and Shadow','Sarah J. Maas','http://books.google.com/books/publisher/content?id=do6zEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73PDmPaF79ApHNb3nZ7sA01rsH0xDxwqvG0wHqR2B_OlmxvHpRItN__PaczziQxd55Bnd8yjzRUbt7SuFBx6HkakCMrQCV2lZgrecRmNBSEHWlGrDZWhPgLNM4y4vDhkwOYhTm_&source=gbs_api','tbr',NULL,NULL,NULL,0),(15,35,'iklMzwEACAAJ','Empire of Storms','Sarah J. Maas','http://books.google.com/books/content?id=iklMzwEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72pvM3jhXzVBnMsAxDHfe8Iv8Q5ZcMbijukqV9kVU8vy9YLVqBMtgVHRdrUm8Wu8rhUk6foZh5uoxdgzJBS10uVVYic3sJHPk2vkSIqV8D7XV81HX8BofxMhLREE-drgpTqEqNt&source=gbs_api','tbr',NULL,NULL,NULL,0),(16,35,'yQXHEAAAQBAJ','A Court of Silver Flames','Sarah J. Maas','http://books.google.com/books/publisher/content?id=yQXHEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71fIIqbO2o5EYIW8TDDhyj6dfmEbfdXkb4XnbbpMUdQ22nOZtp3J0E3valOSk0QDTxQdfBh13OGDQfBJ2jGgIe406OCMlbLkwkArDdJ9zFqH4K7QNw5HStITHQxEYMwN8IpWJ5l&source=gbs_api','read','2021-01-03','2024-01-08',NULL,1),(17,35,'xRBbEAAAQBAJ','A Court of Wings and Ruin','Sarah J. Maas','http://books.google.com/books/publisher/content?id=xRBbEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73Ei5WvGNj0zt3gCU9c8avLXeE_HiCvfTZYa4HS4inwOvivqsGcNnXi1E7Rm3Jn9NK23ABkvbe_XtuQm0pH2Fp_n89A3yPoKPPlFRg8c17dhTrGL4L5ww3_vd2ccZp_cgLFANE1&source=gbs_api','tbr',NULL,NULL,NULL,0),(18,35,'E-kdBQAAQBAJ','A Court of Thorns and Roses','Sarah J. Maas','http://books.google.com/books/publisher/content?id=E-kdBQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71jK06zNx1jMSlnJ4QXimCf5G8qZrQ93fioZBknSpOcc47owJ4B3e8qN0_Z-QZXA4Ov1AqshV-iK2s5TJm7UVzbuwAWa8WHLeGxMvzSSA4GpeCnfKjnTUkNd72Ppk2OGoaaoHK-&source=gbs_api','tbr',NULL,NULL,NULL,0),(19,35,'_kuOCgAAQBAJ','A Court of Mist and Fury','Sarah J. Maas]','http://books.google.com/books/publisher/content?id=_kuOCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72ouF1r-MtXVysbNZMYA4ZmlcjLoHX0H21quc3CV3V0u7kLWXyEEjUn4KxvRDBj2Opu02GrQ5OHokSaZ-aq0NCqyEBqh7gzZshTGnT_Z-Ch__NC_3aJVrgmul7SG56KoKuAsCJM&source=gbs_api','tbr',NULL,NULL,NULL,0),(20,35,'OdXvDwAAQBAJ','A Court of Silver Flames','Sarah J. Maas','http://books.google.com/books/publisher/content?id=OdXvDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE731XUPOH7gIEnGA15zq7JwjXX_-PfDS1XAlqHpg09MZQDsIaCxVcgAWZt-si7CnlnUzUlcWvv9JVa2EFC9QJlT7JDs3F-qs3HkQRRKYlm4y3PIlQsk5kZfHa1rw8Iff-PMjZq-d&source=gbs_api','tbr',NULL,NULL,NULL,0),(21,35,'pqq-EAAAQBAJ','Crown of Midnight','Sarah J. Maas','http://books.google.com/books/publisher/content?id=pqq-EAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70WdlRqE5xQa8agiY6yASFK56ZJUN7M-AvvYCO9ySKhE1ru7PRoKbI3azPY_yZhdiQ3vNrCE6jRrVeXvKK4IOBOzo6lqyclQ_eEQgMOkpmltA1csxW42DSJt85JYVgzSzusQeow&source=gbs_api','tbr',NULL,NULL,NULL,0),(22,35,'HL1j44HL6gcC','The Road to the Dark Tower','Bev Vincent','http://books.google.com/books/content?id=HL1j44HL6gcC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72WLR_ZCYfpehuxgOWzxpPJfHxfpkpNAnDzwBkEpy7rdlo7f1vF9EDi24mTnvafpMC3vdHUJ8V-ickXdHyOBI4e7Spg1P55MAF8CsBhktKtdFi_BORqwxfObf7Kd8b9KRi_nvh5&source=gbs_api','tbr',NULL,NULL,NULL,0),(23,35,'lhUmmcwQEgMC','Insomnia','Stephen King','http://books.google.com/books/content?id=lhUmmcwQEgMC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73UESAsgmzvTnsStpvI4rIphzCZ0B9ug_xayHCWQqkK7w3W_lXAljQkx8obiOUX61zgNs0Yqp8voGWOCtE4pfY3MCPrmvbtbBcP5Bz-rqna5AmR_majVbweDbj8TD9TG_zd2TRx&source=gbs_api','tbr',NULL,NULL,NULL,0),(24,35,'L3oXEAAAQBAJ','Billy Summers','Stephen King','http://books.google.com/books/publisher/content?id=L3oXEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73pAwvIWb9X3P6LO64z_WGgx59_AMfneaSJzQJ1FDCySuWdACJuiwAJ2KL_7CRDiX3U4LE3DCJIbZXJ2Qc9I0sy9aGKLkHWfI-uYmqYBBRzb5cARrgLq-hZiXK_DWHSqIBZhvCA&source=gbs_api','tbr',NULL,NULL,NULL,0),(25,35,'tRExEAAAQBAJ','The Institute','Stephen King','http://books.google.com/books/publisher/content?id=tRExEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70TFQJYOzj0wWieXjFJTWjPc1UynuqC9vVq37p1hlMclc_SsJ0mwpaQTfWYqnjcl1l9j-lO9jbxF5nvcUALVrWLZmQY4rT2zPtIAq-xGVDErZbD2oELm9dbZflu-uGM9eCCeZWF&source=gbs_api','tbr',NULL,NULL,NULL,0),(26,35,'D5qoEAAAQBAJ','Holly','Stephen King','http://books.google.com/books/publisher/content?id=D5qoEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72JOSfsS4BQFp7trFRyIK5V6S5A2QtwGda1tKsRWBzsiUatr8iplB5QU9UKGOEpHW70mtbuicox2MjArYIpRniLWIm_A9FsxlBoqIGQGnHO0UuZESlRXNUNUj5usG6-Ccz98xsB&source=gbs_api','tbr',NULL,NULL,NULL,0),(27,35,'TazgEAAAQBAJ','You Like It Darker','Stephen King','http://books.google.com/books/publisher/content?id=TazgEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE722IfNQZofnXGcaWeGRWpUxzi2gWyPBXvd02dnUdNHEqPRf-huG7tQNAP279tRxPswPBUyfNEyDSucVW6aj2LmiWe_sjpXxtsKZ9jZVxORlxSdbM0ruskbm_20M4pKFWMtTJHBw&source=gbs_api','tbr',NULL,NULL,NULL,0),(29,35,'IJNVEAAAQBAJ','If This Book Exists, You\'re in the Wrong Universe','Jason Pargin','http://books.google.com/books/publisher/content?id=IJNVEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73l-xcvUhw7UXXvU77fEHXsY2VOu2vqr_7MOqAC4nITA2eUOyrPmh9aY3Rny6cDvImxhJI1GA2NgGj-CXNA8iCR6PAVOtZC2iVEG2zg9rRy4mofC7W6mqD63SNTy-j7c_2BWbiS&source=gbs_api','currently reading','2024-01-01',NULL,NULL,0),(31,35,'pOqfEAAAQBAJ','The September House','Carissa Orlando','http://books.google.com/books/publisher/content?id=pOqfEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73W1UpSIkJKbVJw7u5yRIk_SrZ8UvY71bECcDE1AWmU8ZLXIv_zbulxz18kt77Bql2fd8mGUkqttC4_GRQDmp4BInWI696DtkrnuEERIog37K4hjcGjFTy4kkqacvvpFzQtPKLa&source=gbs_api','read','2024-01-04','2024-01-10',3.5,1),(33,35,'K-29EAAAQBAJ','Fairy Tale','Stephen King','http://books.google.com/books/publisher/content?id=K-29EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70TGnhEn1ENIeKdBnMQZJ-CoGlj-wlb3BxTDyDvZEsTTw6ojW_5ovEbrwATfNahGA3X_EQX8lLNbmi231RirMuWbQT3pLpQNjVkg-WfUyBM5rfEIllpo5U9IN4__ol_WvM7CKgz&source=gbs_api','read',NULL,'2024-01-10',4.0,1),(38,35,'KiszDwAAQBAJ','It','Stephen King','http://books.google.com/books/publisher/content?id=KiszDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70LTdToW6GNwx8liBH-3CcsW94_V_uZv1vA2cNfmuk_wyCHqBuEGjNp58b7TgilBe--kD1inH3Yuqd-zFcljAi9r2Hlx565FLrKDlJuArPl4M4C6do08G-GTS79lHrmb30VkFBA&source=gbs_api','tbr',NULL,NULL,NULL,0),(44,35,'W1X51dmarEUC','It','Stephen King','http://books.google.com/books/content?id=W1X51dmarEUC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71L-0UzwO573E85tPAtsZ-GZGWcD2tp3XJmtZmqst_-vynEJnrUaG7NYLbUx2r4n0qv_TBsIrs7E2_S476WBzta_M8hILpjtMMoMkTAGQAor4olaf-xcBufo5Fzint-c5e7DJdF&source=gbs_api','currently reading',NULL,NULL,NULL,0);
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
INSERT INTO `user_reading_challenge` VALUES (1,8,19,2024),(2,31,6,2024),(48,32,45,2024),(49,33,50,2024),(65,35,20,2024);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_session`
--

LOCK TABLES `user_session` WRITE;
/*!40000 ALTER TABLE `user_session` DISABLE KEYS */;
INSERT INTO `user_session` VALUES (4,21,'d9065381-7c64-11ee-bc75-42010a800002'),(5,22,'072581f4-7c6f-11ee-bc75-42010a800002'),(6,23,'d70f4a82-7d2e-11ee-bc75-42010a800002'),(7,24,'5054d728-7d30-11ee-bc75-42010a800002'),(10,26,'ea05548e-7f9c-11ee-bc75-42010a800002'),(11,8,'317e6a65-994e-11ee-bc75-42010a800002'),(15,31,'a459a273-9956-11ee-bc75-42010a800002'),(16,32,'fb108eaf-9a28-11ee-bc75-42010a800002'),(17,32,'d776d74e-9b11-11ee-bc75-42010a800002'),(18,32,'c6f6b715-9d39-11ee-bc75-42010a800002'),(19,33,'947a636c-a06c-11ee-bc75-42010a800002'),(20,35,'575634ec-a8f2-11ee-bc75-42010a800002'),(21,35,'6143b268-a900-11ee-bc75-42010a800002'),(22,35,'176b0995-a9b1-11ee-bc75-42010a800002'),(23,35,'b993400a-a9c3-11ee-bc75-42010a800002'),(24,35,'0b00e2dd-ab48-11ee-bc75-42010a800002'),(25,35,'45ee5a75-acde-11ee-bc75-42010a800002'),(29,35,'9724ea6d-aead-11ee-bc75-42010a800002'),(30,35,'aab5a4e9-aeb8-11ee-bc75-42010a800002'),(32,35,'35f7bcc6-affc-11ee-bc75-42010a800002');
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
/*!50003 DROP PROCEDURE IF EXISTS `get_user_books` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `get_user_books`(token_input VARCHAR(45), bookId_input CHAR(200), readingStatus_input CHAR(50), dateFinished_input DATE)
BEGIN
    
    SELECT us.user_id INTO @userId FROM user_session us WHERE us.token = token_input;
    
    IF bookId_input IS NOT NULL THEN
        -- Check if the book with the given ID exists in user_books for the specified user
        IF EXISTS (
            SELECT 1
            FROM user_books ub
            WHERE ub.book_id = bookId_input AND ub.user_id = @userId
        )
        THEN
            -- If the book exists, return 1
            SELECT 1 AS result;
        ELSE
            -- If the book does not exist, return 0
            SELECT 0 AS result;
        END IF;
    END IF;
    
    IF readingStatus_input IS NOT NULL AND dateFinished_input IS NULL THEN
        -- Get books for specific reading status for user
        SELECT
            ub.book_id, ub.title, ub.author, ub.cover_img, ub.reading_status, ub.date_started, ub.date_finished, ub.rating, ub.times_read
        FROM
            user_books ub
        WHERE
            ub.user_id = @userId AND ub.reading_status = readingStatus_input
        ORDER BY
            ub.id DESC;
    END IF;
   
   IF readingStatus_input IS NOT NULL AND dateFinished_input IS NOT NULL THEN
        -- Get books for specific reading status for user
        SELECT
            ub.book_id, ub.title, ub.author, ub.cover_img, ub.reading_status, ub.date_started, ub.date_finished, ub.rating, ub.times_read
        FROM
            user_books ub
        WHERE
            ub.user_id = @userId AND ub.reading_status = readingStatus_input
            AND YEAR(ub.date_finished) = YEAR(dateFinished_input)
        ORDER BY
            ub.id DESC;
    END IF;

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
/*!50003 DROP PROCEDURE IF EXISTS `patch_user_books_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`innotech`@`%` PROCEDURE `patch_user_books_info`(token_input VARCHAR(45), bookId_input CHAR(200), readingStatus_input CHAR(50), dateStarted_input DATE, dateFinished_input DATE, rating_input DECIMAL(2,1))
    MODIFIES SQL DATA
BEGIN
	DECLARE userId INT;
    -- Get user_id based on the provided token
    SELECT us.user_id INTO userId FROM user_session us WHERE us.token = token_input;
   
    -- Check if the book's reading status is being set to 'read'
    IF readingStatus_input = 'read' THEN
        -- Increment timesRead by 1
        UPDATE user_books
        SET reading_status = readingStatus_input,
            date_finished = dateFinished_input, 
            rating = rating_input,
            times_read = times_read + 1
        WHERE user_id = userId AND book_id = bookId_input;
        SELECT ROW_COUNT();
    END IF;
   
    -- Check if the book's reading status is being set to 'currently reading'
    IF readingStatus_input = 'currently reading' THEN
        UPDATE user_books
        SET reading_status = readingStatus_input
        WHERE user_id = userId AND book_id = bookId_input;
        SELECT ROW_COUNT();
    END IF;
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
	DECLARE userId INT;
	-- Get user_id based on the provided token
	SELECT us.user_id INTO @userId FROM user_session us WHERE us.token = token_input;

	UPDATE user_reading_challenge SET reading_goal = readingGoal_input WHERE user_id = userId AND goal_year = currYear_input;
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
CREATE DEFINER=`innotech`@`%` PROCEDURE `post_to_user_books`(token_input VARCHAR(45), bookId_input CHAR(200), bookTitle_input TEXT, author_input TEXT, coverImg_input TEXT, readingStatus_input CHAR(50), dateStarted_input DATE, dateFinished_input DATE, rating_input DECIMAL(2,1))
    MODIFIES SQL DATA
BEGIN
    -- Get user_id based on the provided token
    SELECT us.user_id INTO @userId FROM user_session us WHERE us.token = token_input;

    -- Insert into user_books based on optional parameters
    INSERT INTO user_books (
        user_id, 
        book_id, 
        title, 
        author, 
        cover_img, 
        reading_status, 
        date_started, 
        date_finished, 
        rating
    )
    VALUES (
        @userId, 
        bookId_input,
        bookTitle_input,
        author_input,
        coverImg_input,
        readingStatus_input,
        dateStarted_input,
        dateFinished_input,
        rating_input
    );

    -- Return the number of rows affected by the INSERT
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

-- Dump completed on 2024-01-10 20:06:30
