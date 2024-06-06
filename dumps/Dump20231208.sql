-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: beautysalon
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `idCustomer` int unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `Gender` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL,
  `Contact` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `idEmployee` int unsigned NOT NULL,
  `idHairstyle` int unsigned NOT NULL,
  `idService` int unsigned NOT NULL,
  PRIMARY KEY (`idCustomer`,`idEmployee`,`idHairstyle`,`idService`),
  UNIQUE KEY `idCustomer_UNIQUE` (`idCustomer`),
  KEY `fk_Customer_Hairstyle1_idx` (`idHairstyle`),
  KEY `fk_Customer_Service1_idx` (`idService`),
  KEY `fk_Customer_Employee1` (`idEmployee`),
  CONSTRAINT `fk_Customer_Employee1` FOREIGN KEY (`idEmployee`) REFERENCES `Employee` (`idEmployee`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Customer_Hairstyle1` FOREIGN KEY (`idHairstyle`) REFERENCES `Hairstyle` (`idHairstyle`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Customer_Service1` FOREIGN KEY (`idService`) REFERENCES `Service` (`idService`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Janith Brundill','Female','756-523-9383',2,11,1),(2,'Melisa Comoletti','Female','135-892-0810',2,12,1),(3,'Zeb O\'Deoran','Male','810-280-1854',1,1,1),(4,'Osmund Pechard','Male','370-822-7064',1,2,1),(5,'Caralie Blaksley','Female','771-309-5649',4,20,1),(6,'Sheilah Biagini','Female','535-402-4288',6,20,1),(7,'Kylen Castanho','Female','766-221-5461',9,16,1),(9,'Coop Matchett','Male','121-335-2185',1,3,1),(10,'Vitoria Schutte','Female','116-648-3492',6,12,1),(11,'Emelyne Cordie','Female','838-684-8178',6,19,1),(12,'Stillmann Mion','Male','978-273-2899',8,2,1),(13,'Therese Saw','Female','470-973-1980',6,18,1),(14,'Lemmie Lillgard','Male','969-476-1428',8,7,1),(15,'Steffen Rigeby','Male','894-950-7505',1,7,1),(16,'Ritchie Yarham','Male','580-870-5520',25,7,1),(17,'Linzy Bote','Female','454-534-2854',2,14,1),(19,'Marlena Nutter','Female','329-239-6123',2,16,1),(20,'Nicole Milne','Female','584-509-2414',2,12,1),(21,'Lawton Fulle','Male','814-119-6647',25,8,1),(22,'Kip Bools','Female','109-863-2360',9,16,1),(23,'Dolli Howship','Female','305-365-2323',9,13,1),(24,'Andros Danell','Male','165-660-8892',25,9,1),(25,'Ricki Nerney','Female','498-915-6340',2,12,1),(26,'Tawsha MacDaid','Female','400-104-9657',9,12,1),(27,'Titus Deplacido','Male','827-638-4606',25,3,1),(28,'Aundrea Riehm','Female','806-416-7808',6,20,1),(29,'Florry Dawley','Female','915-554-0912',6,20,1),(30,'Jori Hasney','Female','169-722-7351',6,20,1),(31,'Theodora Limon','Female','751-994-2891',6,20,1),(32,'Yvette Gellan','Female','490-306-1758',6,20,1),(33,'Lyssa Solano','Female','575-881-3787',6,20,1),(34,'George Wignall','Female','554-149-9282',6,20,1),(35,'Miner McCluin','Male','720-211-2439',8,3,1),(36,'Odelia Burden','Female','609-390-1430',4,18,1),(37,'Evelina Lippett','Female','961-970-6066',4,18,1),(38,'Issie Smurfitt','Female','168-236-3732',4,18,1),(39,'Kile Stiggers','Male','932-638-2942',8,6,1),(40,'Drona Pettman','Female','601-748-4368',2,11,1),(41,'Mata Kitson','Male','951-219-9483',1,4,1),(42,'Pru Pattenden','Female','656-536-9676',4,12,1),(43,'Simon Levine','Male','550-533-2710',1,9,1),(44,'Ilsa Falkner','Female','869-239-4728',4,16,1),(45,'Brenn Gullis','Female','401-255-5806',4,16,1),(46,'Ole Craster','Male','955-865-5440',25,10,1),(47,'Freida Moysey','Female','482-377-2813',6,11,1),(48,'Keelby Knowlys','Male','591-818-8348',25,9,1),(49,'Bourke Goldup','Male','904-795-9666',25,9,1),(50,'Brander Hans','Male','196-430-0851',25,9,1),(51,'Wiley Balassi','Male','501-767-1834',25,9,1),(52,'Blisse Cropp','Female','341-989-7135',9,17,1),(53,'Jayson Songust','Male','598-574-1235',8,2,1),(54,'Emmy Albion','Female','594-842-1752',9,12,1),(55,'Christopher Simonnot','Male','521-249-6233',25,1,1),(56,'Yardley Wolton','Male','825-215-6675',1,2,1),(57,'Catie McNea','Female','960-381-4391',6,13,1),(58,'Frazer Feirn','Male','603-471-0664',25,5,1),(59,'Stephana Manchester','Female','433-600-9643',9,15,1),(60,'Boothe Mees','Male','104-244-4885',25,9,1),(61,'Nye Marczyk','Male','363-918-9916',25,8,1),(62,'Meris Lavis','Female','147-997-3903',2,17,1),(63,'Frederigo Isham','Male','679-137-5656',25,4,1),(64,'Bertie Finessy','Female','634-455-7909',4,20,1),(65,'Angelique Lillgard','Female','111-155-5690',4,20,1),(66,'Leonhard Espinal','Male','618-984-8225',8,4,1),(67,'Adair Muehle','Male','123-711-9095',1,4,1),(68,'Dawna Figiovanni','Female','258-480-2160',2,14,1),(69,'Eddie Yurin','Female','224-852-9241',4,14,1),(70,'Eberhard Bleddon','Male','369-697-1516',25,8,1),(71,'Dixie Adelberg','Female','522-215-7821',6,15,1),(72,'Isobel Wither','Female','392-895-4451',6,15,1),(73,'Michaela Horlock','Female','301-203-5388',6,15,1),(74,'Doll Abbet','Female','899-911-6414',6,15,1),(75,'Merline Prettjohn','Female','881-266-8516',6,15,1),(76,'Vern Baylie','Male','787-655-7862',25,3,1),(77,'Rodney Pietsma','Male','640-150-6458',25,2,1),(78,'Dione Faas','Female','923-593-3868',9,12,1),(79,'Sidonnie Ewington','Female','399-560-9942',9,14,1),(80,'Moishe Dumini','Male','664-225-9463',8,6,1),(81,'Jessamyn Milnes','Female','811-300-5540',6,16,1),(82,'Alonzo Alday','Male','500-902-3448',8,3,1),(83,'Ursola Wife','Female','620-213-9253',4,13,1),(84,'Sile Hullins','Female','307-375-0950',4,13,1),(85,'Abrahan Gipp','Male','585-326-8093',1,1,1),(86,'Modesty McKoy','Female','453-102-5659',6,11,1),(87,'Sansone Gliddon','Male','155-889-2385',1,10,1),(88,'Lamont Barkly','Male','333-879-7505',1,9,1),(89,'Cathee Stearndale','Female','673-583-5840',9,13,1),(90,'Fitzgerald Hasley','Male','781-787-4849',1,10,1),(91,'Marji Vicioso','Female','255-291-7625',2,16,1),(92,'Blithe Westwick','Female','317-202-4565',4,16,1),(93,'Stesha Gullivent','Female','525-811-6002',6,16,1),(94,'Nolly Conwell','Male','179-403-8491',25,4,1),(95,'Birgitta Barnfather','Female','829-270-0141',9,13,1),(96,'Alwyn Etherson','Male','668-542-2565',1,2,1),(97,'Karlotta Rozanski','Female','697-981-5881',9,13,1),(98,'Galina Scawn','Female','698-424-4785',9,12,1),(99,'Hartwell McHan','Male','624-114-1995',25,2,1),(100,'Rhetta Boerder','Female','612-954-9262',4,11,1),(101,'Elnore Gratton','Female','463-759-3645',4,11,1),(102,'Remus Middup','Male','254-495-1850',1,10,1),(103,'Kyla Lydden','Female','942-141-7247',4,11,1),(104,'Regen Duquesnay','Male','630-781-5611',25,2,1),(105,'Maisie Wardington','Female','174-455-2633',6,20,1),(106,'Ray Hasser','Male','238-652-5425',1,4,1),(107,'Angie Hunnable','Male','270-921-3700',1,5,1),(108,'Tracy Brunner','Female','970-897-0036',4,13,1),(109,'Carolyne Helder','Female','479-236-9376',6,13,1),(110,'Juliana Common','Female','283-436-0172',6,13,1),(111,'Gregoor Castagnet','Male','546-967-1562',25,2,1),(112,'Richmound Belleny','Male','861-699-0076',25,3,1),(113,'Eachelle Batte','Female','437-877-2548',2,13,1),(114,'Aurelea Blees','Female','532-142-1455',2,13,1),(115,'Robin Emby','Female','823-879-9540',2,13,1),(116,'Claudette Keetley','Female','148-361-6261',2,13,1),(117,'Jenna Latch','Female','106-514-9107',2,13,1),(118,'Kris Nail','Female','134-497-4792',2,13,1),(119,'Debbie Kineton','Female','594-490-8641',4,13,1),(120,'Mabel Gerish','Female','210-768-6032',6,13,1),(121,'Izak Sawtell','Male','490-746-6664',1,4,1),(122,'Lexis Pearcy','Female','742-538-0970',9,18,1),(123,'Joelynn Catling','Female','124-953-3102',9,18,1),(124,'Pearla Pietrusiak','Female','449-928-2613',9,18,1),(125,'Gilberta Gostridge','Female','404-833-2525',9,18,1),(126,'Markos Fetherstan','Male','138-886-8013',1,4,1),(127,'Milty Howsam','Male','415-385-5546',1,4,1),(128,'Pennie O\' Byrne','Female','601-867-5375',4,16,1),(129,'Karole Du Plantier','Female','392-736-4488',4,16,1),(130,'Mignonne Mawer','Female','619-838-5565',6,16,1),(131,'Phil Bumphries','Male','278-716-2184',1,3,1),(132,'Jessamine Erskin','Female','832-961-8196',6,14,1),(133,'Adler Gethouse','Male','870-196-4758',8,5,1),(134,'Orv Agron','Male','398-169-9765',25,6,1),(135,'Ron Tumilson','Male','999-648-8533',1,7,1),(136,'Robinet Doucette','Female','940-754-5400',4,18,1),(137,'Lenna Call','Female','749-136-2434',4,19,1),(138,'Kalle Siddon','Male','217-336-3845',8,5,1),(139,'Morley Greatreax','Male','215-587-4665',8,3,1),(140,'Willi Geely','Female','570-999-8603',9,14,1),(141,'Urban MacNamee','Male','548-449-4206',8,8,1),(142,'Alysia Goodwell','Female','375-872-8662',2,11,1),(143,'Kelli Barratt','Female','614-144-8280',2,19,1),(144,'Giraldo Amoore','Male','298-456-8923',8,2,1),(145,'Silvana Pibsworth','Female','335-307-2955',4,13,1),(146,'Ryan de Quincey','Male','667-232-9130',1,4,1),(147,'Bernard Domoney','Male','182-749-2187',1,5,1),(148,'Krystal Jakubski','Female','187-352-3171',4,14,1),(149,'Mireielle Villa','Female','344-107-2942',4,16,1),(150,'Norrie Golda','Male','551-316-5233',1,1,1),(151,'Shelba Shadbolt','Female','407-643-8732',2,12,1),(152,'Cathie Innett','Female','773-332-8932',2,12,1),(153,'Vin Hullyer','Female','602-314-7416',2,12,1),(154,'Crin Golsthorp','Female','504-171-1930',2,12,1),(155,'Findlay Aaronson','Male','443-528-7813',3,3,1),(156,'Niall Mallalieu','Male','187-647-5963',1,3,1),(157,'Hunt Hourican','Male','924-565-0969',8,3,1),(158,'Fernando Durbridge','Male','437-851-1166',25,3,1),(159,'Kimbell Chazier','Male','807-298-9503',25,3,1),(160,'Nonah Canter','Female','542-673-6468',3,15,1),(161,'Stevana Beushaw','Female','720-136-5427',3,13,1),(162,'Tanner Volke','Male','154-394-8151',25,2,1),(163,'Hillel Chillingsworth','Male','855-658-8908',1,2,1),(164,'Gill Fenimore','Female','421-129-3406',6,18,1),(165,'Sharleen Gaskins','Female','530-157-1662',2,19,1),(166,'Andrus Wyon','Male','118-278-4083',1,6,1),(167,'Leyla Shiels','Female','163-798-4657',9,17,1),(168,'Laetitia Steeden','Female','102-849-5090',9,17,1),(169,'Daron Petyt','Female','216-716-1585',9,17,1),(170,'Brendin Sommerling','Male','885-905-9349',25,1,1),(171,'Aime Brettell','Female','351-289-6106',2,11,1),(172,'Marlie Keeri','Female','706-924-9171',2,11,1),(173,'Daniele Caizley','Female','610-781-7260',2,11,1),(174,'Tucky Kelner','Male','395-939-4046',1,5,1),(175,'Mead Buckett','Male','185-180-6028',1,5,1),(176,'Bathsheba Crossley','Female','893-110-0536',6,17,1),(177,'Sorcha Lidgertwood','Female','293-669-2285',9,19,1),(178,'Farris Lyste','Male','890-962-9875',25,9,1),(179,'Consuelo Adhams','Female','729-453-8451',9,19,1),(180,'Harlene Yitzovitz','Female','872-464-3754',4,19,1),(181,'Charmane Worvill','Female','111-879-8996',6,19,1),(182,'Ashley Liverock','Female','816-453-5309',4,19,1),(183,'Guglielmo Hallworth','Male','968-622-9092',25,3,1),(184,'Michele Falk','Male','775-659-3426',8,5,1),(185,'Hana Durnford','Female','800-410-8426',4,12,1),(186,'Lindy Hacker','Female','286-328-4892',6,18,1),(187,'Alain Chatelet','Male','121-756-1033',1,3,1),(188,'Morgen Nettles','Male','300-859-9669',1,6,1),(189,'Sheri Nolleth','Female','217-293-7628',6,12,1),(190,'Roseanna Simoncini','Female','680-273-3006',6,14,1),(191,'Joye Gricks','Female','825-178-5868',2,20,1),(192,'Carolina Crenage','Female','717-345-8164',2,20,1),(193,'Piotr Youster','Male','370-118-8730',1,2,1),(194,'Karen Codner','Female','164-186-1954',2,12,1),(195,'Rusty Alejandri','Male','369-102-9956',8,4,1),(196,'Gasparo Witson','Male','351-684-9978',8,6,1),(197,'Fay Hanaford','Female','879-852-5355',9,17,1),(198,'Livia Beaushaw','Female','835-225-7620',9,20,1),(199,'Marlane Vescovo','Female','254-719-1526',4,20,1),(200,'Arnuad Couttes','Male','438-821-7974',25,1,1),(201,'Brandon Consterdine','Male','158-914-4184',8,1,1),(202,'Marlow Melpuss','Male','928-312-2955',1,1,1),(203,'Hedvige Maun','Female','211-436-3035',2,19,1),(204,'Kingsly Trewartha','Male','319-346-1382',1,9,1),(205,'Walther Plaxton','Male','765-732-9976',1,8,1),(206,'Dur Scrannage','Male','947-198-2159',1,4,1),(207,'Clary Paoli','Female','844-147-4519',6,18,1),(208,'Gifford McGilleghole','Male','431-412-7312',25,7,1),(209,'Kyrstin Sein','Female','125-957-2927',4,18,1),(210,'Honey Chittock','Female','920-386-2648',4,18,1),(211,'Jessa Cudby','Female','410-943-0761',4,18,1),(212,'Edyth Ozanne','Female','243-304-2804',6,18,1),(213,'Hollyanne Heinlein','Female','739-244-7086',4,18,1),(214,'Evvy Clampin','Female','307-272-0592',2,18,1),(215,'Lillian Burgise','Female','863-568-4258',2,18,1),(216,'Farley Gaddes','Male','975-994-3205',1,4,1),(217,'Demetri Bowich','Male','915-881-7023',25,5,1),(218,'Crista Kares','Female','725-292-6720',2,15,1),(219,'Kort Babbs','Male','743-119-3077',25,3,1),(220,'Angie Stallion','Female','113-296-1412',2,17,1),(221,'Arel Babalola','Male','256-635-3476',8,4,1),(222,'Dame Reddel','Male','911-807-6620',8,4,1),(223,'Salmon Chaudhry','Male','484-987-8457',8,4,1),(224,'Clifford Raden','Male','619-404-2173',8,4,1),(225,'Phillie Hendonson','Female','794-762-8708',4,13,1),(226,'Gerrie Paddick','Male','748-348-5318',25,10,1),(227,'Arni Sango','Male','741-458-4454',25,10,1),(228,'Stanislas Keelinge','Male','140-848-4327',25,10,1),(229,'Nike Probets','Female','678-637-5251',9,11,1),(230,'Hedwiga Thomassin','Female','764-535-0818',9,11,1),(231,'Breanne Hyland','Female','903-122-7541',9,11,1),(232,'Hunt Killelay','Male','217-676-4800',25,1,1),(233,'Tucky Marquand','Male','997-909-8737',25,1,1),(234,'Ira Norfolk','Female','858-425-4275',2,11,1),(235,'Jeremiah Coventry','Male','683-149-1507',7,2,1),(236,'Giovanna Shillinglaw','Female','814-142-2175',6,12,1),(237,'Wallis Tomblett','Female','837-179-1507',6,13,1),(238,'Ken Clack','Male','816-169-5093',1,7,1),(239,'Lisa Double','Female','608-689-1531',6,20,1),(240,'Phillipe Pridie','Male','546-887-6591',8,7,1),(241,'Jae Goatcher','Male','688-465-7414',8,3,1),(242,'Jennine Corkill','Female','677-353-0755',4,20,1),(243,'Adena Felten','Female','340-704-8172',4,20,1),(244,'Dominica Larroway','Female','954-132-7083',4,20,1),(245,'Venita Spira','Female','813-760-7837',6,20,1),(246,'Alleen Allbut','Female','651-537-0564',6,20,1),(247,'Dniren Newlin','Female','142-406-5108',6,20,1),(248,'Talbert Suffield','Male','426-209-6108',25,8,1),(249,'Cassy Cawker','Female','882-377-1849',9,14,1),(250,'Ilysa Schapero','Female','684-854-9984',9,12,1),(251,'Kathryne Ewin','Female','276-530-0654',9,13,1),(252,'Andriana Furmedge','Female','127-868-3717',6,15,1),(253,'Gabriello McGeraghty','Male','736-595-1381',1,2,1),(254,'Aubrie Roches','Female','191-946-0576',6,12,1),(255,'Bruno Narramor','Male','207-643-7602',25,9,1),(256,'Beryl Bartholomaus','Female','674-971-7822',6,20,1),(257,'Stillman Hessing','Male','690-989-5459',3,2,1),(258,'Annmarie Kulver','Female','326-479-3597',6,14,1),(259,'Cristobal Grinnikov','Male','415-704-5556',1,10,1),(260,'Warren Tester','Male','246-995-2893',1,10,1),(261,'Dagny Gosenell','Male','425-229-2128',1,7,1),(262,'Hettie Martijn','Female','175-465-2942',4,14,1),(263,'Hillary Stollmeier','Male','528-215-8165',3,6,1),(264,'Whitman Brice','Male','835-609-5900',25,8,1),(265,'Fianna McIndoe','Female','909-308-7839',6,19,1),(266,'Rancell Colerick','Male','610-324-4498',25,3,1),(267,'Jenelle Skehens','Female','357-686-8277',2,15,1),(268,'Darcey Washbrook','Female','469-452-6205',2,15,1),(269,'Edee Kesey','Female','119-180-0305',2,15,1),(270,'Dierdre Drysdall','Female','171-434-2019',2,15,1),(271,'Aubrey Nother','Female','142-446-3366',2,15,1),(272,'Daryl Lackney','Male','104-713-1581',25,5,1),(273,'Cicely Paulazzi','Female','563-972-9648',6,13,1),(274,'Caspar Gwillym','Male','108-933-0063',1,5,1),(275,'Cecil Wedon','Male','262-259-4798',1,5,1),(276,'Sigismund Skupinski','Male','668-412-1000',1,5,1),(277,'Salmon Studdal','Male','763-436-6500',1,5,1),(278,'Bonnee Readings','Female','717-545-3031',6,11,1),(279,'Ram Brickham','Male','873-789-0982',25,1,1),(280,'Roseanna Scougal','Female','229-136-4900',2,13,1),(281,'Dionysus McGonigle','Male','146-643-1954',25,10,1),(282,'Fritz Duddell','Male','452-935-1743',8,8,1),(283,'Persis Trittam','Female','366-253-7197',4,14,1),(284,'Jeff Cucuzza','Male','746-178-0683',1,2,1),(285,'Sansone Bruty','Male','552-184-9729',8,6,1),(286,'Jarid Lehon','Male','755-279-4202',8,1,1),(287,'Leandra Sawter','Female','716-615-3060',2,17,1),(288,'Josias McArdell','Male','427-705-4192',8,5,1),(289,'Kylila Shawl','Female','897-420-2934',6,14,1),(290,'Glyn Pladen','Female','583-999-5495',6,14,1),(291,'Law Sammes','Male','139-735-1285',25,3,1),(292,'Aila Hindrich','Female','515-637-6337',6,19,1),(293,'Candra Winnard','Female','356-773-7856',4,19,1),(294,'Rosamond Branchett','Female','228-966-4993',6,19,1),(295,'Dory Mardy','Female','620-992-0531',4,19,1),(296,'Godiva Ledwitch','Female','394-261-8818',2,19,1),(297,'Ermina Sauter','Female','777-772-2046',4,19,1),(298,'Gay Bezley','Male','971-328-7260',1,7,1),(299,'Charissa Pabelik','Female','505-355-6658',6,13,1),(300,'Ramsey Nelane','Male','116-898-1721',1,1,1),(301,'Robyn Petican','Female','889-959-2188',9,19,1),(302,'Guthrie Jacketts','Male','378-324-8337',1,9,1),(303,'Leone Outerbridge','Female','863-161-1297',2,20,1),(304,'Doralynne Woofinden','Female','337-440-8808',2,12,1),(305,'Flemming Gatch','Male','981-261-0450',25,1,1),(306,'Justin Darby','Male','475-452-6492',25,4,1),(307,'Appolonia Peckett','Female','542-408-2213',4,20,1),(308,'Eleen Olyfat','Female','115-717-6450',6,20,1),(309,'Doe Fery','Female','932-911-9613',4,20,1),(310,'Nate Prise','Male','141-180-0786',25,4,1),(311,'Roy Gaine','Male','898-164-8747',25,4,1),(312,'Hedy Grumbridge','Female','256-240-0984',4,13,1),(313,'Maximilianus Vanyashin','Male','936-334-8336',8,8,1),(314,'Thornie Sessuns','Male','593-752-1196',8,2,1),(315,'Bertrand Tomanek','Male','592-491-5683',8,5,1),(316,'Anselma Memmory','Female','200-323-7893',6,12,1),(317,'Siouxie Stebbin','Female','868-961-6843',6,13,1),(318,'Agnesse Dikels','Female','732-569-3555',6,18,1),(319,'Darill Dulson','Male','801-716-5683',1,9,1),(320,'Aile Gomer','Female','443-384-5829',2,12,1),(321,'Farica Ruddiman','Female','834-208-1058',4,11,1),(322,'Jeno Spancock','Male','524-699-8380',25,1,1),(323,'Creigh Tynan','Male','760-916-6580',25,1,1),(324,'Mae Jossel','Female','529-944-7585',9,17,1),(325,'Irv Baldocci','Male','281-573-6390',8,1,1),(326,'Nickolai Immins','Male','208-984-2343',8,3,1),(327,'Libby Raoul','Female','465-852-8033',9,15,1),(328,'Malinde Leaton','Female','957-953-1710',9,20,1),(329,'Sammie Manilow','Male','390-544-5053',1,1,1),(330,'Caye Foxton','Female','726-276-7441',2,20,1),(331,'Jenilee Belvard','Female','571-822-5908',2,19,1),(332,'Petrina Aicheson','Female','768-264-1580',9,18,1),(333,'Umberto Osment','Male','608-682-2891',25,8,1),(334,'Veronika Gianettini','Female','724-462-2152',2,16,1),(335,'Jamaal Antognelli','Male','598-168-3293',1,2,1),(336,'Christy Dancer','Female','494-779-7679',4,17,1),(337,'Dominik Sign','Male','972-548-9221',25,3,1),(338,'Bobbette Sedger','Female','372-435-1026',4,20,1),(339,'Alexina Rowlett','Female','577-976-0666',4,12,1),(340,'Kellen Dell \'Orto','Male','129-594-1208',8,6,1),(341,'Farica Francisco','Female','922-429-1353',4,18,1),(342,'Norma Galpen','Female','472-791-7544',4,18,1),(343,'Robyn Tukely','Female','502-581-8687',4,18,1),(344,'Drud Shorto','Male','203-236-6874',3,4,1),(345,'Astra Meas','Female','730-745-8656',9,20,1),(346,'Katine Renard','Female','383-953-8135',9,20,1),(347,'Evonne Sare','Female','821-402-1568',6,20,1),(348,'Thibaut Dreghorn','Male','618-968-1517',8,9,1),(349,'Alvera Obell','Female','423-707-9764',9,13,1),(350,'Nataniel Mullenger','Male','402-863-5696',8,1,1),(351,'Valentina Tulley','Female','843-715-3730',9,17,1),(352,'Elden Digman','Male','538-338-6473',8,2,1),(353,'Martainn Hessay','Male','311-402-4152',8,2,1),(354,'Worthy Lammert','Male','148-161-5902',8,2,1),(355,'Temp Klossek','Male','912-867-4441',8,2,1),(356,'Ramon Dominico','Male','444-182-1548',8,2,1),(357,'Alica Easby','Female','587-935-8510',2,20,1),(358,'Joell Stedall','Female','521-943-2806',2,18,1),(359,'Anallese Espinoy','Female','839-212-9029',2,16,1),(360,'Ophelia Formby','Female','947-815-0988',2,13,1),(361,'Vania Chaulk','Female','728-322-9927',2,20,1),(362,'Jacynth Northwood','Female','374-819-2227',2,11,1),(363,'Fredelia Cuberley','Female','659-129-7392',2,17,1),(364,'Verile Bingley','Female','382-570-8355',9,17,1),(365,'Adan Pischoff','Female','145-577-7820',9,17,1),(366,'Johann Kaubisch','Male','443-831-3370',8,1,1),(367,'Hernando Valois','Male','994-203-2760',8,2,1),(368,'Pietra Fountain','Female','218-197-8497',9,12,1),(369,'Vachel Gowanlock','Male','309-460-5730',8,4,1),(370,'Haleigh Woolward','Male','462-676-8922',25,2,1),(371,'Lisa Cianelli','Female','447-763-7591',4,20,1),(372,'Karleen Caldero','Female','305-361-3499',4,13,1),(373,'Giselle Camfield','Female','359-378-0192',4,17,1),(374,'Baxie Tomaselli','Male','415-786-7712',1,9,1),(375,'Jacquenetta Crowcombe','Female','929-998-1328',4,20,1),(376,'Monique Sawers','Female','708-577-1843',4,20,1),(377,'Coretta Bolley','Female','734-570-9974',6,20,1),(378,'Ephraim Pinkard','Male','339-559-8188',1,2,1),(379,'Belia LaBastida','Female','265-431-5344',4,13,1),(380,'Pernell Maty','Male','223-751-5868',25,1,1),(381,'Tam Sitford','Male','282-593-5130',25,5,1),(382,'Lilas Stockley','Female','227-794-8191',4,20,1),(383,'Janeta Croote','Female','244-461-8541',4,20,1),(384,'Penny Masserel','Female','829-162-8635',2,20,1),(385,'Davita Rolf','Female','129-447-7360',2,20,1),(386,'Panchito Fonteyne','Male','309-111-3649',1,3,1),(387,'Cherrita Ginley','Female','787-576-8774',2,17,1),(388,'Ulrikaumeko Fenlon','Female','850-951-0670',9,18,1),(389,'Alicia Donati','Female','297-364-9318',9,19,1),(390,'Gibb Feragh','Male','923-827-1713',8,3,1),(391,'Brander Renols','Male','855-646-4897',25,5,1),(392,'Henrietta Mcettrick','Female','629-183-3642',4,13,1),(393,'Hewie Tunesi','Male','822-996-3446',3,2,1),(394,'Cyndia Lente','Female','650-201-6834',4,19,1),(395,'Freddi Hune','Female','699-639-0453',9,15,1),(396,'Adelind Maffeo','Female','964-132-3623',6,17,1),(397,'Janot Casillis','Female','612-407-0523',2,16,1),(398,'Bret Tytcomb','Male','806-134-0609',4,2,1),(399,'Catarina Haines','Female','596-120-0946',4,11,1);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_has_OtherProduct`
--

DROP TABLE IF EXISTS `Customer_has_OtherProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_has_OtherProduct` (
  `idEmployee` int unsigned NOT NULL,
  `idOtherProducts` int unsigned NOT NULL,
  PRIMARY KEY (`idEmployee`,`idOtherProducts`),
  UNIQUE KEY `idEmployee_UNIQUE` (`idEmployee`),
  UNIQUE KEY `idOtherProducts_UNIQUE` (`idOtherProducts`),
  CONSTRAINT `fk_Customer_has_OtherProducts_Customer1` FOREIGN KEY (`idEmployee`) REFERENCES `Customer` (`idEmployee`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Customer_has_OtherProducts_OtherProducts1` FOREIGN KEY (`idOtherProducts`) REFERENCES `OtherProduct` (`idOtherProducts`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_has_OtherProduct`
--

LOCK TABLES `Customer_has_OtherProduct` WRITE;
/*!40000 ALTER TABLE `Customer_has_OtherProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer_has_OtherProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_has_Service`
--

DROP TABLE IF EXISTS `Customer_has_Service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_has_Service` (
  `idCustomer` int unsigned NOT NULL,
  `idService` int unsigned NOT NULL,
  PRIMARY KEY (`idCustomer`,`idService`),
  KEY `fk_Customer_has_Service_Service1_idx` (`idService`),
  CONSTRAINT `fk_Customer_has_Service_Customer` FOREIGN KEY (`idCustomer`) REFERENCES `Customer` (`idCustomer`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Customer_has_Service_Service1` FOREIGN KEY (`idService`) REFERENCES `Service` (`idService`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_has_Service`
--

LOCK TABLES `Customer_has_Service` WRITE;
/*!40000 ALTER TABLE `Customer_has_Service` DISABLE KEYS */;
INSERT INTO `Customer_has_Service` VALUES (4,1),(24,1),(35,1),(45,1),(67,1),(84,1),(89,1),(93,1),(117,1),(134,1),(223,1),(274,1),(390,1);
/*!40000 ALTER TABLE `Customer_has_Service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `idEmployee` int unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `Position` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idEmployee`),
  UNIQUE KEY `idEmployee_UNIQUE` (`idEmployee`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Michael Johnson','Barber'),(2,'Emily Rodriguez','Hair Stylist'),(3,'Olivia Smith','Massage Therapist'),(4,'James Anderson','Hair Stylist'),(6,'Ethan Clark','Hair Stylist'),(7,'Ava Wilson','Massage Therapist'),(8,'Daniel Thompson','Barber'),(9,'Lily Brown','Hair Stylist'),(10,'Lucas Lee','Massage Therapist'),(11,'Michael Johnson','Barber'),(12,'Emily Rodriguez','Hair Stylist'),(13,'Olivia Smith','Massage Therapist'),(14,'James Anderson','Hair Stylist'),(15,'Sophia Martinez','Barber'),(16,'Ethan Clark','Hair Stylist'),(17,'Ava Wilson','Massage Therapist'),(18,'Daniel Thompson','Barber'),(19,'Lily Brown','Hair Stylist'),(20,'Lucas Lee','Massage Therapist'),(21,'Sam Snead','Receptionist'),(22,'Sam Snead','Receptionist'),(25,'Sophia Martinez','Barber'),(26,'Me Myself','Barber');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hairstyle`
--

DROP TABLE IF EXISTS `Hairstyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hairstyle` (
  `idHairstyle` int unsigned NOT NULL AUTO_INCREMENT,
  `Style` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `Price` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `idService` int unsigned NOT NULL,
  `idEmployee` int unsigned NOT NULL,
  PRIMARY KEY (`idHairstyle`,`idService`,`idEmployee`),
  UNIQUE KEY `idHairstyle_UNIQUE` (`idHairstyle`),
  KEY `fk_Hairstyle_Service1_idx` (`idService`),
  KEY `fk_Hairstyle_Employee1_idx` (`idEmployee`),
  CONSTRAINT `fk_Hairstyle_Employee1` FOREIGN KEY (`idEmployee`) REFERENCES `Employee` (`idEmployee`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Hairstyle_Service1` FOREIGN KEY (`idService`) REFERENCES `Service` (`idService`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hairstyle`
--

LOCK TABLES `Hairstyle` WRITE;
/*!40000 ALTER TABLE `Hairstyle` DISABLE KEYS */;
INSERT INTO `Hairstyle` VALUES (1,'Short Crop','45.00',1,1),(2,'Buzz Cut','50.00',1,25),(3,'Textured Quiff','60.00',1,8),(4,'Crew Cut','55.00',1,1),(5,'Faux Hawk','65.00',1,25),(6,'Pompadour','70.00',1,8),(7,'Undercut','75.00',1,8),(8,'Slicked Back','80.00',1,8),(9,'Side Part','60.00',1,25),(10,'Spiky Hair','50.00',1,1),(11,'Bob Cut','65.00',1,2),(12,'Pixie Cut','70.00',1,6),(13,'Layered Haircut','75.00',1,9),(14,'Long Wavy Hair','80.00',1,2),(15,'Messy Bun','60.00',1,9),(16,'French Braid','55.00',1,6),(17,'Top Knot','50.00',1,4),(18,'Balayage','65.00',1,6),(19,'Blunt Cut','70.00',1,9),(20,'Cornrows','75.00',1,2);
/*!40000 ALTER TABLE `Hairstyle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Massage`
--

DROP TABLE IF EXISTS `Massage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Massage` (
  `idMassage` int unsigned NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `idService` int unsigned NOT NULL,
  `idEmployee` int unsigned NOT NULL,
  PRIMARY KEY (`idMassage`,`idService`,`idEmployee`),
  UNIQUE KEY `idMassage_UNIQUE` (`idMassage`),
  KEY `fk_Massage_Service1_idx` (`idService`),
  KEY `fk_Massage_Employee1_idx` (`idEmployee`),
  CONSTRAINT `fk_Massage_Employee1` FOREIGN KEY (`idEmployee`) REFERENCES `Employee` (`idEmployee`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Massage_Service1` FOREIGN KEY (`idService`) REFERENCES `Service` (`idService`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Massage`
--

LOCK TABLES `Massage` WRITE;
/*!40000 ALTER TABLE `Massage` DISABLE KEYS */;
/*!40000 ALTER TABLE `Massage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OtherProduct`
--

DROP TABLE IF EXISTS `OtherProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OtherProduct` (
  `idOtherProducts` int unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idOtherProducts`),
  UNIQUE KEY `idOtherProducts_UNIQUE` (`idOtherProducts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OtherProduct`
--

LOCK TABLES `OtherProduct` WRITE;
/*!40000 ALTER TABLE `OtherProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `OtherProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `idService` int unsigned NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`idService`),
  UNIQUE KEY `idService_UNIQUE` (`idService`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Hairstyle'),(2,'Massage');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 10:23:55
