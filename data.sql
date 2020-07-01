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
-- Dumping data for table `crime_address`
--

LOCK TABLES `crime_address` WRITE;
/*!40000 ALTER TABLE `crime_address` DISABLE KEYS */;
INSERT INTO `crime_address` VALUES (124856,'ASB bank','nelson','cbd','Auckland',1005),(876256,'Starbucks','queen','cbd','Auckland',1005),(982462,'Farmers','north rd','avondale','Auckland',1026);
/*!40000 ALTER TABLE `crime_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `crimetype`
--

LOCK TABLES `crimetype` WRITE;
/*!40000 ALTER TABLE `crimetype` DISABLE KEYS */;
INSERT INTO `crimetype` VALUES (1,'robbery','stole item from pubic'),(2,'murder','kill some one');
/*!40000 ALTER TABLE `crimetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `evidence`
--

LOCK TABLES `evidence` WRITE;
/*!40000 ALTER TABLE `evidence` DISABLE KEYS */;
INSERT INTO `evidence` VALUES (654825,'C:\\Users\\dell\\Pictures\\3.png','C:\\Users\\dell\\Pictures\\coverytst.PNG',NULL,NULL,NULL);
/*!40000 ALTER TABLE `evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `firdetail`
--

LOCK TABLES `firdetail` WRITE;
/*!40000 ALTER TABLE `firdetail` DISABLE KEYS */;
INSERT INTO `firdetail` VALUES (123451,564455,1,124856,654825,1,'2018-12-12 17:23:52','robbery happen at bank','2018-12-12 18:03:52'),(123452,215345,2,876256,541255,2,'2018-12-07 01:23:12','murder near by sky tower','2018-12-07 07:27:12'),(123453,795268,1,982462,726525,1,'2018-11-29 06:33:59','robbery at pizza hut','2018-11-29 11:17:59');
/*!40000 ALTER TABLE `firdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `identityproof`
--

LOCK TABLES `identityproof` WRITE;
/*!40000 ALTER TABLE `identityproof` DISABLE KEYS */;
INSERT INTO `identityproof` VALUES (123451,155244,'passport','n2256545','2012-10-11','2022-10-10',NULL,'Auckland'),(123452,145265,'driving licence','qx57465202','2019-05-29','2019-05-28',NULL,'Dunedin'),(123453,245666,'passport','g2245215','2016-11-17','2026-11-16',NULL,'Christchruch'),(123454,485795,'passport','w5578452','2018-07-28','2028-07-27',NULL,'Auckland'),(123455,795625,'driving licence','wa54152521','2016-05-17','2026-05-16',NULL,'Auckland');
/*!40000 ALTER TABLE `identityproof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `makecomplaint`
--

LOCK TABLES `makecomplaint` WRITE;
/*!40000 ALTER TABLE `makecomplaint` DISABLE KEYS */;
INSERT INTO `makecomplaint` VALUES (123451,458515,546541,'Avondale','bribe',654825),(123454,414115,754555,'Henderson','harassment',154355),(123455,751652,785124,'cbd','bribe',456515);
/*!40000 ALTER TABLE `makecomplaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (123451,'Ankit123','Ankit','Hasmukhbhai','Prajapati','1993-07-13','M','224556741','Ankit@gmail.com','‪C:\\Users\\dell\\Pictures\\IMG_2102-01.jpg','Student Visa'),(123452,'Gopal123','Gopal','Hasamukhbhai','Gabani','1994-04-06','M','224556742','Gopal@gmail.com','‪C:\\Users\\dell\\Pictures\\logo.PNG','Student Visa'),(123453,'Shrey123','Shreyas','Sanjaykumar','Patel','1994-08-02','M','224556743','Shreyas@gmail.com','C:\\Users\\dell\\Pictures\\section.PNG','Studdent Visa'),(123454,'Kriy123','Kriyesh','Nareshbhai','Patel','1992-11-15','M','224556744','Kiyesh@gmail.com','‪C:\\Users\\dell\\Pictures\\type.PNG','Work Visa'),(123455,'Bijal123','Bijal','Kriyeshbhai','Patel','1994-07-09','F','224556745','Bijal@gmail.com','C:\\Users\\dell\\Pictures\\web 2 research.PNG','Work Visa');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
INSERT INTO `share` VALUES (152452,123451,564455,458515),(162458,123454,NULL,414115),(326741,123455,NULL,751652),(782461,123452,215345,NULL),(852585,123453,795268,NULL);
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `useraddress`
--

LOCK TABLES `useraddress` WRITE;
/*!40000 ALTER TABLE `useraddress` DISABLE KEYS */;
INSERT INTO `useraddress` VALUES (123453,452452,212,'symond','Mount Albert','Auckland','NewZealand',2563,'2018-11-29','2023-11-28'),(123451,452556,452,'queen','Avondale','Auckland','NewZealand',1243,'2019-09-12','2021-09-11'),(123452,525624,2456,'victoria','Mount Roskil','Auckland','NewZealand',1245,'2019-08-11','2020-08-10');
/*!40000 ALTER TABLE `useraddress` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2018-12-13 20:54:56
