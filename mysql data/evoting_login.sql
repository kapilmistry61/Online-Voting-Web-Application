-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: evoting
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `voter_card_number` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('neetu77','nitu','nitu77','female','26/04/1993','neet5@gmail.com','infosys16'),('megha1','megha suthar','megha55','female','26/04/1993','megha11@gmail.com','infosys16'),('kapil99','kapil mistry','kapil99','male','26/04/1993','sutharkapil16@gmail.com','infosys16'),('sumit66','sumit','sumit66','male','26/04/1993','sumit66@gmail.com','sumit66'),('majoj11','majoj kumar','manoj99','male','26/04/1993','manoj@gmail.com','infosys16'),('rahul11','rahul','rahul99','male','26/04/1993','sutharrahul@gmail.com','infosys16'),('galav11','kumar galav','galav88','male','26/04/1993','galav@gmail.com','galav'),('hitesh55','hitesh','hitesh66','male','26/04/1993','hitesh@gmail.com','infosys16'),('kumar22','kumar','kumar44','male','26/04/1993','kumar44@gmail.com','infosys16'),('rampal22','kumar ram','ram55','male','26/04/1993','sutharkapil16@gmail.com','infosys16'),('kumar11','ratan','ratan66','male','26/04/1993','sutharkapil16@gmail.com','infosys16'),('arjun11','arjun22','arjun77','male','26/04/1993','sutharkapil16@gmail.com','infosys16'),('kapil11','kapil','kapil11','male','26/04/1978','kapil@gmail.com','kapil11'),('nitya66','nitya','nitya66','female','26/04/1979','nitya@gmail.com','nitya66'),('rahul88','rahul','rahul88','male','26/04/1980','rahul@gmail.com','rahul88'),('mohit54','mohit','mohit54','male','26/04/1981','mohit@gmail.com','mohit54'),('manoj43','manoj','manoj43','male','26/04/1982','manoj@gmail.com','manoj43'),('kuldip43','kuldip','kuldip43','male','26/04/1983','kuldip@gmail.com','kuldip43'),('rampal43','rampal','rampal43','male','26/04/1984','rampal@gmail.com','rampal43'),('manoj33','manoj','manoj33','male','26/04/1985','manoj@gmail.com','manoj33'),('rohit11','rohit','rohit11','male','26/04/1986','rohit@gmail.com','rohit11'),('manmohan43','manmohan','manmohan43','male','26/04/1987','manmohan@gmail.com','manmohan43'),('neetu44','neetu','neetu44','female','26/04/1988','neetu@gmail.com','neetu44'),('ashok665','ashok','ashok665','male','26/04/1989','ashok@gmail.com','ashok665'),('jitu76','jitu','jitu76','male','26/04/1990','jitu@gmail.com','jitu76'),('sumit65','sumit','sumit65','male','26/04/1991','sumit@gmail.com','sumit65'),('hitesh54','hitesh','hitesh54','male','26/04/1992','hitesh@gmail.com','hitesh54'),('yash76','yash','yash76','male','26/04/1993','yash@gmail.com','yash76'),('user141','kapil kumar','kapil88','male','26/04/1997','sutharkapil16@gmail.com','infosys16'),('vishal11','vishal kumar ','vishal55','male','26/04/1993','vishal@gmail.com','infosys16'),('sumit77','sumit kumar','sumit66','male','26/04/1997','sumit@gmail.com','infosys16'),('komal33','komal','komal33','female','26/04/1993','komal@gmail.com','infosys16'),('user33','user33','user55','male','26/04/1993','sutharkapil16@gmail.com','sutharkapil16'),('mohit77','mohit kumar','mohit77','male','26/04/1993','mohit66@gmail.com','infosys1'),('kapil','KUMAR','DCA22','male','26/04/1993','sutharkapil16@gmail.com','infosh'),('galav99','yash galav','yash77','male','26/04/1993','galav6@gmail.com','galav');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-02 13:12:26
