-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `dept_tbl`
--

DROP TABLE IF EXISTS `dept_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept_tbl` (
  `id_deptname` varchar(50) DEFAULT NULL,
  `emp_name` varchar(50) DEFAULT NULL,
  `salary` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_tbl`
--

LOCK TABLES `dept_tbl` WRITE;
/*!40000 ALTER TABLE `dept_tbl` DISABLE KEYS */;
INSERT INTO `dept_tbl` VALUES ('1111-MATH','RAHUL',10000),('1111-MATH','RAKESH',20000),('2222-SCIENCE','AKASH',10000),('222-SCIENCE','ANDREW',10000),('22-CHEM','ANKIT',25000),('3333-CHEM','SONIKA',12000),('4444-BIO','HITESH',2300),('44-BIO','AKSHAY',10000);
/*!40000 ALTER TABLE `dept_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_signup`
--

DROP TABLE IF EXISTS `email_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_signup` (
  `id` int DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `signup_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_signup`
--

LOCK TABLES `email_signup` WRITE;
/*!40000 ALTER TABLE `email_signup` DISABLE KEYS */;
INSERT INTO `email_signup` VALUES (1,'Rajesh@Gmail.com','2022-02-01'),(2,'Rakesh_gmail@rediffmail.com','2023-01-22'),(3,'Hitest@Gmail.com','2020-09-08'),(4,'Salil@Gmmail.com','2019-07-05'),(5,'Himanshu@Yahoo.com','2023-05-09'),(6,'Hitesh@Twitter.com','2015-01-01'),(7,'Rakesh@facebook.com',NULL);
/*!40000 ALTER TABLE `email_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gold_membership_users`
--

DROP TABLE IF EXISTS `gold_membership_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gold_membership_users` (
  `userid` varchar(50) DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  `Status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gold_membership_users`
--

LOCK TABLES `gold_membership_users` WRITE;
/*!40000 ALTER TABLE `gold_membership_users` DISABLE KEYS */;
INSERT INTO `gold_membership_users` VALUES ('John','2017-09-22','Yes'),('Mary','2017-04-21','Yes');
/*!40000 ALTER TABLE `gold_membership_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `price_value` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Mobile',980),(2,'Iphone',870),(3,'Laptop',330),(3,'Laptop',330);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_details` (
  `sell_date` date DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

LOCK TABLES `product_details` WRITE;
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` VALUES ('2020-05-30','Headphones'),('2020-06-01','Pencil'),('2020-06-02','Mask'),('2020-05-30','Basketball'),('2020-06-01','Book'),('2020-06-02','Mask'),('2020-05-30','T-Shirt');
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `userid` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('John','2017-04-19',2),('Mary','2019-12-18',1),('Michel','2020-07-20',3),('John','2019-10-23',2),('John','2018-03-19',3),('Mary','2016-12-20',2),('John','2016-11-09',1),('John','2016-05-20',3),('Michel','2017-09-24',1),('John','2017-03-11',2),('John','2016-03-11',1),('Mary','2016-11-10',1),('Mary','2017-12-07',2);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_data`
--

DROP TABLE IF EXISTS `sales_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_data` (
  `productid` int DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `quantity_sold` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_data`
--

LOCK TABLES `sales_data` WRITE;
/*!40000 ALTER TABLE `sales_data` DISABLE KEYS */;
INSERT INTO `sales_data` VALUES (1,'2022-01-01',20),(2,'2022-01-01',15),(1,'2022-01-02',10),(2,'2022-01-02',25),(1,'2022-01-03',30),(2,'2022-01-03',18),(1,'2022-01-04',12),(2,'2022-01-04',22);
/*!40000 ALTER TABLE `sales_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` varchar(50) DEFAULT NULL,
  `signup_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('John','2014-09-02'),('Michel','2015-01-15'),('Mary','2014-04-11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-26 18:40:26
