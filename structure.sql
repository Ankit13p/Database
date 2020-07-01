-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: online crime reporting system
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `crime_address`
--

DROP TABLE IF EXISTS `crime_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `crime_address` (
  `crime_location_id` int(6) NOT NULL,
  `near_by_area` varchar(25) NOT NULL,
  `street` varchar(15) NOT NULL,
  `suburb` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `postcode` int(4) NOT NULL,
  PRIMARY KEY (`crime_location_id`),
  CONSTRAINT `fk_cri_loc_id` FOREIGN KEY (`crime_location_id`) REFERENCES `firdetail` (`crime_location_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crimetype`
--

DROP TABLE IF EXISTS `crimetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `crimetype` (
  `crime_type_id` int(6) NOT NULL,
  `crime_type` varchar(20) NOT NULL,
  `crime_description` text NOT NULL,
  PRIMARY KEY (`crime_type_id`),
  CONSTRAINT `fk_crime_id` FOREIGN KEY (`crime_type_id`) REFERENCES `firdetail` (`crime_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `evidence`
--

DROP TABLE IF EXISTS `evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `evidence` (
  `evidence_id` int(6) NOT NULL,
  `attachment1` varchar(100) DEFAULT NULL,
  `attachment2` varchar(100) DEFAULT NULL,
  `attachment3` varchar(100) DEFAULT NULL,
  `attachment4` varchar(100) DEFAULT NULL,
  `attachment5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`evidence_id`),
  KEY `fk_evidence_id_idx` (`evidence_id`),
  CONSTRAINT `fk_evidence_idd` FOREIGN KEY (`evidence_id`) REFERENCES `firdetail` (`evidence_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evidence_idd_1` FOREIGN KEY (`evidence_id`) REFERENCES `makecomplaint` (`evidence_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `firdetail`
--

DROP TABLE IF EXISTS `firdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `firdetail` (
  `user_id` int(6) NOT NULL,
  `fir_id` int(6) NOT NULL,
  `crime_type_id` int(6) NOT NULL,
  `crime_location_id` int(6) NOT NULL,
  `evidence_id` int(6) NOT NULL,
  `number_of_criminals` int(3) DEFAULT NULL,
  `crime_time` datetime NOT NULL,
  `description` text NOT NULL,
  `fir_create_time` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`fir_id`),
  KEY `in_crimeid` (`crime_type_id`),
  KEY `in_evidece` (`evidence_id`),
  KEY `in_crimelocation_id` (`crime_location_id`),
  KEY `in_firid` (`fir_id`),
  CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `registration` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `identityproof`
--

DROP TABLE IF EXISTS `identityproof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `identityproof` (
  `user_id` int(6) NOT NULL,
  `document_id` int(6) NOT NULL,
  `document_name` varchar(15) NOT NULL,
  `document_number` varchar(10) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `effective_date` date DEFAULT NULL,
  `issue_place` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`document_id`),
  KEY `fk_docid_idx` (`document_id`),
  KEY `fk_documentid_idx` (`document_id`),
  CONSTRAINT `fk_user_id_idproof` FOREIGN KEY (`user_id`) REFERENCES `registration` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `makecomplaint`
--

DROP TABLE IF EXISTS `makecomplaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `makecomplaint` (
  `user_id` int(6) NOT NULL,
  `complaint_id` int(6) NOT NULL,
  `officer_number` int(6) DEFAULT NULL,
  `police_station` varchar(15) DEFAULT NULL,
  `complaint_description` varchar(500) NOT NULL,
  `evidence_id` int(6) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `in_evidence_id` (`evidence_id`),
  KEY `in_complaintid` (`complaint_id`),
  CONSTRAINT `fk_useridd` FOREIGN KEY (`user_id`) REFERENCES `registration` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registration` (
  `user_id` int(6) NOT NULL,
  `password` varchar(8) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `middle_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` char(1) NOT NULL,
  `contact_number` varchar(13) NOT NULL,
  `email_id` varchar(35) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `visa_type` varchar(15) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `in_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `share` (
  `share_id` int(6) NOT NULL,
  `user_id` int(6) DEFAULT NULL,
  `fir_id` int(6) DEFAULT NULL,
  `complaint_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`share_id`),
  KEY `fk_user_idx` (`user_id`),
  KEY `fk_friid_idx` (`fir_id`),
  KEY `fk_comp_id_idx` (`complaint_id`),
  CONSTRAINT `fk_complaint_id` FOREIGN KEY (`complaint_id`) REFERENCES `makecomplaint` (`complaint_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_friid` FOREIGN KEY (`fir_id`) REFERENCES `firdetail` (`fir_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `registration` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `useraddress`
--

DROP TABLE IF EXISTS `useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `useraddress` (
  `user_id` int(6) NOT NULL,
  `address_id` int(6) NOT NULL,
  `house_number` int(4) NOT NULL,
  `street_name` varchar(15) NOT NULL,
  `suburb` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(15) NOT NULL,
  `postcode` int(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `fk_user_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `registration` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'online crime reporting system'
--
/*!50003 DROP PROCEDURE IF EXISTS `detailById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detailById`(IN id INT(6), OUT data varchar(300))
BEGIN
DECLARE fname, mname,lname,vstatus varchar(15);
DECLARE email VARCHAR(35);
DECLARE userpic VARCHAR(100);
DECLARE dob DATE;
DECLARE gen CHAR(1);
DECLARE cnumber INT(13);
select first_name,middle_name,last_name,visa_type,date_of_birth,gender,contact_number,email_id,user_photo into fname,mname,lname,vstatus,dob,gen,cnumber,email,userpic 
from registration where id=user_id;
SET data=  CONCAT('Hello,',fname,' ',mname,' ',lname,' ','and your birth date is ',dob,' and you are on ',vstatus,'. Your contact number is ',cnumber,
' and email id is ', email, ' even your photo store at ',userpic);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `firdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `firdetail`( IN id INT(6), OUT data varchar(1500))
BEGIN
DECLARE crimetypeid, crimelocationid,evidenceid INT(10);
DECLARE numberofcriminals INT(10);
DECLARE crimetime, fircreatetime DATETIME;
DECLARE description VARCHAR(500);
select crime_type_id,crime_location_id,evidence_id,number_of_criminals,crime_time,fir_create_time,description into crimetypeid,crimelocationid,evidenceid,numberofcriminals,crimetime,fircreatetime,description from firdetail where id=user_id;
SET data= concat('hello user ', id,' your crime registered as crime type ',crimetypeid,' which can be happed at location id ',crimelocationid,' and your evidences are stored in id number  ',evidenceid,'. That can be done by  ',numberofcriminals,' people.','which cab be done around ',crimetime,' and you fir created time is ',fircreatetime,'.');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getComplaintById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getComplaintById`(IN id INT(6))
BEGIN

select r.user_id,first_name,r.last_name,r.visa_type,r.date_of_birth,r.gender,r.contact_number,r.email_id,r.user_photo, mc.complaint_id, mc.police_station, mc.officer_number, mc.complaint_description
 from registration r 
    inner join makecomplaint mc on mc.user_id= r.user_id
where r.user_id =  id ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFirAndComplaintById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFirAndComplaintById`(IN id INT(6))
BEGIN
select r.user_id,first_name,r.last_name,r.visa_type,r.date_of_birth,r.gender,r.contact_number,r.email_id,r.user_photo, 
f.fir_id,f.fir_create_time, f.crime_time, f.crime_type_id,f.number_of_criminals, f.description, 
c.crime_location_id, c.near_by_area, c.city,c.suburb, c.street, c.postcode, mc.complaint_id, mc.police_station, 
mc.officer_number, mc.complaint_description
 from registration r 
 /* retrive field data from corresponding tables. like r object of registration table, f object of firdetail table
 ,c object of crime_address table and mc object of makecomplaint.
*/
	inner join firdetail f on r.user_id = f.user_id
    /* retrive records when user_id same in registration and firdetail table*/
    inner join crime_address c on c.crime_location_id =f.crime_location_id
    /* retrive records when crime_location_id same in crime_address and firdetail table*/
    inner join makecomplaint mc on mc.user_id= f.user_id
     /* retrive records when user_id same in makecomplaint and firdetail table*/
where r.user_id =  id ;
/* check registration user_id with input id in to procedure and if any record available then display */


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFirById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFirById`(IN id INT(6))
BEGIN
select r.user_id,first_name,r.last_name,r.visa_type,r.date_of_birth,r.gender,r.contact_number,r.email_id,
r.user_photo,f.fir_id,f.fir_create_time, f.crime_time, f.crime_type_id,f.number_of_criminals, f.description, 
c.crime_location_id, c.near_by_area, c.city,c.suburb, c.street, c.postcode
/* retrive field data from corresponding tables. like r object of registration table, f object of firdetail table
 and c object of crime_address table.
*/
 from registration r 
	inner join firdetail f on r.user_id = f.user_id 
    /* retrive records when user_id same in registration and firdetail table*/
    inner join crime_address c on c.crime_location_id =f.crime_location_id 
    /* retrive records when crime_location_id same in crime_address and firdetail table*/ 
where r.user_id =  id ;
    /* check registration user_id with input id in to procedure and if any record available then display */
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `useridproof` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `useridproof`(IN id INT(6), OUT data varchar(500))
BEGIN
DECLARE documentid INT(1);
DECLARE documentname, issueplace varchar(15);
DECLARE documentnumber varchar(15);
DECLARE issuedate,expirydate,effectivedate DATE;
select document_id,document_name,document_number,issue_date,expiry_date,effective_date,issue_place into documentid,documentname,documentnumber,issuedate,expirydate,effectivedate,issueplace from identityproof where user_id=id;
SET data= CONCAT('Hello user ', id,' your doc id is ',documentid,' and you submited ',documentname,' and number is ',documentnumber,' which can be valid from ',issuedate,' to ',expirydate,' issued from ',issueplace);

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

-- Dump completed on 2018-12-13 20:56:01
