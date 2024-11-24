-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: universitydb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `admin_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (11,'Rajesh Kumar',45),(12,'Sneha Sharma',38);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add administrator',7,'add_administrator'),(26,'Can change administrator',7,'change_administrator'),(27,'Can delete administrator',7,'delete_administrator'),(28,'Can view administrator',7,'view_administrator'),(29,'Can add department',8,'add_department'),(30,'Can change department',8,'change_department'),(31,'Can delete department',8,'delete_department'),(32,'Can view department',8,'view_department'),(33,'Can add login credentials',9,'add_logincredentials'),(34,'Can change login credentials',9,'change_logincredentials'),(35,'Can delete login credentials',9,'delete_logincredentials'),(36,'Can view login credentials',9,'view_logincredentials'),(37,'Can add branch',10,'add_branch'),(38,'Can change branch',10,'change_branch'),(39,'Can delete branch',10,'delete_branch'),(40,'Can view branch',10,'view_branch'),(41,'Can add faculty',11,'add_faculty'),(42,'Can change faculty',11,'change_faculty'),(43,'Can delete faculty',11,'delete_faculty'),(44,'Can view faculty',11,'view_faculty'),(45,'Can add courses',12,'add_courses'),(46,'Can change courses',12,'change_courses'),(47,'Can delete courses',12,'delete_courses'),(48,'Can view courses',12,'view_courses'),(49,'Can add message',13,'add_message'),(50,'Can change message',13,'change_message'),(51,'Can delete message',13,'delete_message'),(52,'Can view message',13,'view_message'),(53,'Can add student',14,'add_student'),(54,'Can change student',14,'change_student'),(55,'Can delete student',14,'delete_student'),(56,'Can view student',14,'view_student'),(57,'Can add fee detail',15,'add_feedetail'),(58,'Can change fee detail',15,'change_feedetail'),(59,'Can delete fee detail',15,'delete_feedetail'),(60,'Can view fee detail',15,'view_feedetail'),(61,'Can add auth group',16,'add_authgroup'),(62,'Can change auth group',16,'change_authgroup'),(63,'Can delete auth group',16,'delete_authgroup'),(64,'Can view auth group',16,'view_authgroup'),(65,'Can add auth group permissions',17,'add_authgrouppermissions'),(66,'Can change auth group permissions',17,'change_authgrouppermissions'),(67,'Can delete auth group permissions',17,'delete_authgrouppermissions'),(68,'Can view auth group permissions',17,'view_authgrouppermissions'),(69,'Can add auth permission',18,'add_authpermission'),(70,'Can change auth permission',18,'change_authpermission'),(71,'Can delete auth permission',18,'delete_authpermission'),(72,'Can view auth permission',18,'view_authpermission'),(73,'Can add auth user',19,'add_authuser'),(74,'Can change auth user',19,'change_authuser'),(75,'Can delete auth user',19,'delete_authuser'),(76,'Can view auth user',19,'view_authuser'),(77,'Can add auth user groups',20,'add_authusergroups'),(78,'Can change auth user groups',20,'change_authusergroups'),(79,'Can delete auth user groups',20,'delete_authusergroups'),(80,'Can view auth user groups',20,'view_authusergroups'),(81,'Can add auth user user permissions',21,'add_authuseruserpermissions'),(82,'Can change auth user user permissions',21,'change_authuseruserpermissions'),(83,'Can delete auth user user permissions',21,'delete_authuseruserpermissions'),(84,'Can view auth user user permissions',21,'view_authuseruserpermissions'),(85,'Can add django admin log',22,'add_djangoadminlog'),(86,'Can change django admin log',22,'change_djangoadminlog'),(87,'Can delete django admin log',22,'delete_djangoadminlog'),(88,'Can view django admin log',22,'view_djangoadminlog'),(89,'Can add django content type',23,'add_djangocontenttype'),(90,'Can change django content type',23,'change_djangocontenttype'),(91,'Can delete django content type',23,'delete_djangocontenttype'),(92,'Can view django content type',23,'view_djangocontenttype'),(93,'Can add django migrations',24,'add_djangomigrations'),(94,'Can change django migrations',24,'change_djangomigrations'),(95,'Can delete django migrations',24,'delete_djangomigrations'),(96,'Can view django migrations',24,'view_djangomigrations'),(97,'Can add django session',25,'add_djangosession'),(98,'Can change django session',25,'change_djangosession'),(99,'Can delete django session',25,'delete_djangosession'),(100,'Can view django session',25,'view_djangosession'),(101,'Can add fees detail',26,'add_feesdetail'),(102,'Can change fees detail',26,'change_feesdetail'),(103,'Can delete fees detail',26,'delete_feesdetail'),(104,'Can view fees detail',26,'view_feesdetail'),(105,'Can add server administrator',27,'add_serveradministrator'),(106,'Can change server administrator',27,'change_serveradministrator'),(107,'Can delete server administrator',27,'delete_serveradministrator'),(108,'Can view server administrator',27,'view_serveradministrator'),(109,'Can add server branch',28,'add_serverbranch'),(110,'Can change server branch',28,'change_serverbranch'),(111,'Can delete server branch',28,'delete_serverbranch'),(112,'Can view server branch',28,'view_serverbranch'),(113,'Can add server courses',29,'add_servercourses'),(114,'Can change server courses',29,'change_servercourses'),(115,'Can delete server courses',29,'delete_servercourses'),(116,'Can view server courses',29,'view_servercourses'),(117,'Can add server department',30,'add_serverdepartment'),(118,'Can change server department',30,'change_serverdepartment'),(119,'Can delete server department',30,'delete_serverdepartment'),(120,'Can view server department',30,'view_serverdepartment'),(121,'Can add server faculty',31,'add_serverfaculty'),(122,'Can change server faculty',31,'change_serverfaculty'),(123,'Can delete server faculty',31,'delete_serverfaculty'),(124,'Can view server faculty',31,'view_serverfaculty'),(125,'Can add server feedetail',32,'add_serverfeedetail'),(126,'Can change server feedetail',32,'change_serverfeedetail'),(127,'Can delete server feedetail',32,'delete_serverfeedetail'),(128,'Can view server feedetail',32,'view_serverfeedetail'),(129,'Can add server logincredentials',33,'add_serverlogincredentials'),(130,'Can change server logincredentials',33,'change_serverlogincredentials'),(131,'Can delete server logincredentials',33,'delete_serverlogincredentials'),(132,'Can view server logincredentials',33,'view_serverlogincredentials'),(133,'Can add server message',34,'add_servermessage'),(134,'Can change server message',34,'change_servermessage'),(135,'Can delete server message',34,'delete_servermessage'),(136,'Can view server message',34,'view_servermessage'),(137,'Can add server student',35,'add_serverstudent'),(138,'Can change server student',35,'change_serverstudent'),(139,'Can delete server student',35,'delete_serverstudent'),(140,'Can view server student',35,'view_serverstudent');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branch_id` varchar(10) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `department_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`branch_id`),
  KEY `department_code` (`department_code`),
  CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`department_code`) REFERENCES `department` (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('CE_1','Structural Engineering','CE'),('CE_2','Geotechnical Engineering','CE'),('CSE_1','Artificial Intelligence','CSE'),('CSE_2','Software Engineering','CSE'),('ECE_1','VLSI Design','ECE'),('ECE_2','Telecommunication','ECE'),('IT_1','Data Science','IT'),('IT_2','Cloud Computing','IT'),('ME_1','Thermal Engineering','ME'),('ME_2','Manufacturing Engineering','ME');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL,
  `department_code` varchar(10) DEFAULT NULL,
  `year` int NOT NULL,
  `semester` int NOT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `faculty_id` int DEFAULT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_description` text,
  `course_duration` varchar(50) DEFAULT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `department_code` (`department_code`),
  KEY `faculty_id` (`faculty_id`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_code`) REFERENCES `department` (`department_code`),
  CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'CSE',1,1,'CSE_1',101,'Mathematics I','Fundamentals of Calculus and Linear Algebra','1 semester',60),(2,'CSE',1,1,'CSE_1',102,'Programming in C','Introduction to C programming','1 semester',60),(3,'CSE',1,1,'CSE_1',103,'Computer Organization','Basic structure and functioning of computers','1 semester',60),(4,'CSE',1,1,'CSE_1',201,'Engineering Physics','Introduction to Physics for Engineers','1 semester',60),(5,'CSE',1,2,'CSE_1',202,'Discrete Mathematics','Mathematical foundations for Computer Science','1 semester',60),(6,'CSE',1,2,'CSE_1',203,'Data Structures','Introduction to data structures and algorithms','1 semester',60),(7,'CSE',1,2,'CSE_1',301,'Engineering Mechanics','Basic principles of mechanics and their applications','1 semester',60),(8,'CSE',1,2,'CSE_1',302,'Environmental Science','Study of the environment and human impact','1 semester',60),(9,'CSE',2,1,'CSE_1',201,'Operating Systems','Introduction to operating systems and their functions','1 semester',60),(10,'CSE',2,1,'CSE_1',202,'Object-Oriented Programming','Introduction to OOP principles using C++','1 semester',60),(11,'CSE',2,1,'CSE_1',301,'Digital Logic Design','Designing digital circuits and systems','1 semester',60),(12,'CSE',2,1,'CSE_1',302,'Database Management Systems','Introduction to relational databases and SQL','1 semester',60),(13,'CSE',2,2,'CSE_1',303,'Software Engineering','Principles and practices of software development','1 semester',60),(14,'CSE',2,2,'CSE_1',302,'Computer Networks','Introduction to computer networking and protocols','1 semester',60),(15,'CSE',2,2,'CSE_1',303,'Theory of Computation','Study of computation models and languages','1 semester',60),(16,'CSE',2,2,'CSE_1',202,'Web Development','Basics of building web applications using HTML, CSS, JS','1 semester',60),(17,'CSE',3,1,'CSE_1',301,'Data Science','Introduction to data science, machine learning algorithms','1 semester',60),(18,'CSE',3,1,'CSE_1',302,'Artificial Intelligence','Introduction to AI techniques and methods','1 semester',60),(19,'CSE',3,1,'CSE_1',303,'Compiler Design','Design and construction of compilers','1 semester',60),(20,'CSE',3,1,'CSE_1',301,'Cloud Computing','Introduction to cloud services, cloud architecture','1 semester',60),(21,'CSE',3,2,'CSE_1',303,'Machine Learning','Techniques and algorithms for machine learning','1 semester',60),(22,'CSE',3,2,'CSE_1',301,'Computer Vision','Fundamentals of image processing and computer vision','1 semester',60),(23,'CSE',3,2,'CSE_1',302,'Cybersecurity','Introduction to concepts in cybersecurity','1 semester',60),(24,'CSE',3,2,'CSE_1',302,'Blockchain Technology','Introduction to blockchain and its applications','1 semester',60),(25,'CSE',4,1,'CSE_1',101,'Cloud Security','Cloud-based security mechanisms and solutions','1 semester',60),(26,'CSE',4,1,'CSE_1',102,'Internet of Things','Study of IoT technologies and applications','1 semester',60),(27,'CSE',4,1,'CSE_1',103,'Big Data','Analysis and management of large datasets','1 semester',60),(28,'CSE',4,1,'CSE_1',201,'Ethical Hacking','Introduction to ethical hacking and security testing','1 semester',60),(29,'CSE',4,2,'CSE_1',201,'Natural Language Processing','Introduction to NLP and its applications','1 semester',60),(30,'CSE',4,2,'CSE_1',202,'Robotics','Study of robots, robotic systems, and automation','1 semester',60),(31,'CSE',4,2,'CSE_1',203,'Augmented Reality','Concepts and technologies for augmented reality','1 semester',60),(32,'CSE',4,2,'CSE_1',103,'Advanced Databases','Advanced concepts in database design and management','1 semester',60),(33,'CE',1,1,'CE_1',1001,'Strength of Materials','Study of material properties and their stress-strain behavior','1 semester',60),(34,'CE',1,1,'CE_1',1002,'Engineering Mechanics','Introduction to mechanics and force analysis','1 semester',60),(35,'CE',1,1,'CE_1',1003,'Surveying','Basic principles and techniques in surveying land','1 semester',60),(36,'CE',1,2,'CE_1',1001,'Building Materials','Introduction to materials used in construction','1 semester',60),(37,'CE',1,2,'CE_1',1002,'Concrete Technology','Study of concrete properties and mixing techniques','1 semester',60),(38,'CE',1,2,'CE_1',1003,'Environmental Engineering','Introduction to environmental protection and sustainability','1 semester',60),(39,'CE',2,1,'CE_1',1101,'Geotechnical Engineering','Study of soil properties and foundation design','1 semester',60),(40,'CE',2,1,'CE_1',1102,'Fluid Mechanics','Introduction to fluid dynamics and its applications','1 semester',60),(41,'CE',2,1,'CE_1',1103,'Structural Analysis','Study of forces, moments, and deflections in structures','1 semester',60),(42,'CE',2,2,'CE_1',1101,'Water Resources Engineering','Study of water supply, distribution, and treatment systems','1 semester',60),(43,'CE',2,2,'CE_1',1102,'Transportation Engineering','Study of transportation systems, planning, and management','1 semester',60),(44,'CE',2,2,'CE_1',1103,'Construction Management','Study of project management, cost estimation, and scheduling','1 semester',60),(45,'CE',3,1,'CE_1',1201,'Structural Design','Principles of designing reinforced concrete and steel structures','1 semester',60),(46,'CE',3,1,'CE_1',1202,'Environmental Impact Assessment','Techniques for evaluating the environmental impact of projects','1 semester',60),(47,'CE',3,1,'CE_1',1203,'Soil Mechanics','Study of the physical properties of soil and its behavior','1 semester',60),(48,'CE',3,2,'CE_1',1201,'Advanced Structural Analysis','Advanced concepts in analyzing and designing complex structures','1 semester',60),(49,'CE',3,2,'CE_1',1202,'Building Information Modeling (BIM)','Study of digital tools for designing and managing construction projects','1 semester',60),(50,'CE',3,2,'CE_1',1203,'Seismic Design','Design of structures to resist earthquake forces','1 semester',60),(51,'ECE',1,1,'ECE_1',401,'Circuit Theory','Study of electrical circuits and network analysis','1 semester',60),(52,'ECE',1,1,'ECE_1',402,'Digital Logic Design','Introduction to logic gates, flip-flops, and combinational circuits','1 semester',60),(53,'ECE',1,1,'ECE_1',403,'Electronics Materials','Study of materials used in electronic devices and components','1 semester',60),(54,'ECE',1,2,'ECE_1',401,'Signals and Systems','Introduction to continuous and discrete-time signals and systems','1 semester',60),(55,'ECE',1,2,'ECE_1',402,'Microelectronics','Study of semiconductor devices and integrated circuits','1 semester',60),(56,'ECE',1,2,'ECE_1',403,'Electromagnetic Theory','Study of electromagnetism and wave propagation in media','1 semester',60),(57,'ECE',2,1,'ECE_1',501,'Control Systems','Study of feedback and control mechanisms in systems','1 semester',60),(58,'ECE',2,1,'ECE_1',502,'Analog Communication','Study of analog modulation and transmission techniques','1 semester',60),(59,'ECE',2,1,'ECE_1',503,'Power Electronics','Study of semiconductor devices and circuits for power conversion','1 semester',60),(60,'ECE',2,2,'ECE_1',501,'Digital Signal Processing','Study of signal transformation using digital methods','1 semester',60),(61,'ECE',2,2,'ECE_1',502,'VLSI Design','Introduction to very large scale integration and chip design','1 semester',60),(62,'ECE',2,2,'ECE_1',503,'Transmission Lines and Waveguides','Study of wave propagation and transmission lines in communication systems','1 semester',60),(63,'ECE',3,1,'ECE_1',601,'Communication Systems','Study of modern communication systems and their components','1 semester',60),(64,'ECE',3,1,'ECE_1',602,'Microwave Engineering','Study of microwave frequency and waveguide devices','1 semester',60),(65,'ECE',3,1,'ECE_1',603,'Robotics and Automation','Study of robots, sensors, actuators, and control in automation','1 semester',60),(66,'ECE',3,2,'ECE_1',601,'Wireless Communication','Introduction to wireless technologies and communication systems','1 semester',60),(67,'ECE',3,2,'ECE_1',602,'Embedded Systems','Study of embedded system architecture and applications','1 semester',60),(68,'ECE',3,2,'ECE_1',603,'Optical Communication','Study of optical fibers, light transmission, and fiber optic systems','1 semester',60),(69,'IT',1,1,'IT_1',1301,'Introduction to Programming','Basics of programming using Python','1 semester',60),(70,'IT',1,1,'IT_1',1302,'Data Structures','Introduction to data structures such as arrays, linked lists, and trees','1 semester',60),(71,'IT',1,1,'IT_1',1303,'Computer Organization','Study of computer architecture and hardware components','1 semester',60),(72,'IT',1,2,'IT_1',1301,'Object-Oriented Programming','Study of object-oriented programming concepts using Java','1 semester',60),(73,'IT',1,2,'IT_1',1302,'Database Systems','Introduction to relational databases and SQL','1 semester',60),(74,'IT',1,2,'IT_1',1303,'Computer Networks','Study of networking protocols, architecture, and communication systems','1 semester',60),(75,'IT',2,1,'IT_1',1401,'Operating Systems','Study of operating system concepts, including processes and memory management','1 semester',60),(76,'IT',2,1,'IT_1',1402,'Software Engineering','Introduction to software development methodologies and lifecycle models','1 semester',60),(77,'IT',2,1,'IT_1',1403,'Web Development','Basics of web application development using HTML, CSS, and JavaScript','1 semester',60),(78,'IT',2,2,'IT_1',1401,'Algorithm Design','Study of algorithm analysis and design techniques','1 semester',60),(79,'IT',2,2,'IT_1',1402,'Artificial Intelligence','Introduction to AI concepts and machine learning basics','1 semester',60),(80,'IT',2,2,'IT_1',1403,'Mobile Application Development','Development of mobile apps using Android','1 semester',60),(81,'IT',3,1,'IT_1',1501,'Data Science','Introduction to data analysis and visualization using Python','1 semester',60),(82,'IT',3,1,'IT_1',1502,'Cybersecurity','Study of cybersecurity concepts and practices','1 semester',60),(83,'IT',3,1,'IT_1',1503,'Big Data Analytics','Introduction to big data tools and technologies','1 semester',60),(84,'IT',3,2,'IT_1',1501,'Cloud Computing','Study of cloud architecture and services','1 semester',60),(85,'IT',3,2,'IT_1',1502,'Blockchain Technology','Basics of blockchain and its applications','1 semester',60),(86,'IT',3,2,'IT_1',1503,'DevOps','Introduction to DevOps tools and practices for continuous integration and deployment','1 semester',60),(87,'ME',1,1,'ME_1',701,'Engineering Mechanics','Fundamentals of mechanics and force systems','1 semester',60),(88,'ME',1,1,'ME_1',702,'Material Science','Study of properties and behavior of engineering materials','1 semester',60),(89,'ME',1,1,'ME_1',703,'Thermodynamics','Introduction to principles of thermodynamics','1 semester',60),(90,'ME',1,2,'ME_1',701,'Fluid Mechanics','Study of fluid properties and dynamics','1 semester',60),(91,'ME',1,2,'ME_1',702,'Manufacturing Processes','Introduction to basic manufacturing techniques','1 semester',60),(92,'ME',1,2,'ME_1',703,'Strength of Materials','Study of stress, strain, and material deformation','1 semester',60),(93,'ME',2,1,'ME_1',801,'Kinematics of Machines','Study of motion in mechanical systems','1 semester',60),(94,'ME',2,1,'ME_1',802,'Heat Transfer','Analysis of heat transfer mechanisms and systems','1 semester',60),(95,'ME',2,1,'ME_1',803,'Dynamics of Machinery','Principles of machine dynamics and vibrations','1 semester',60),(96,'ME',2,2,'ME_1',801,'Mechanical Design','Basics of design and analysis of mechanical components','1 semester',60),(97,'ME',2,2,'ME_1',802,'Advanced Manufacturing','Study of modern manufacturing technologies','1 semester',60),(98,'ME',2,2,'ME_1',803,'CAD/CAM','Introduction to computer-aided design and manufacturing','1 semester',60),(99,'ME',3,1,'ME_1',901,'Robotics and Automation','Basics of robotics and industrial automation','1 semester',60),(100,'ME',3,1,'ME_1',902,'Energy Systems','Introduction to energy conversion and management','1 semester',60),(101,'ME',3,1,'ME_1',903,'Vibration Analysis','Analysis of vibrations in mechanical systems','1 semester',60),(102,'ME',3,2,'ME_1',901,'Renewable Energy','Study of renewable energy sources and technologies','1 semester',60),(103,'ME',3,2,'ME_1',902,'Industrial Engineering','Introduction to optimization and production systems','1 semester',60),(104,'ME',3,2,'ME_1',903,'Finite Element Methods','Basics of finite element analysis in mechanical engineering','1 semester',60);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_code` varchar(10) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `department_email` varchar(100) DEFAULT NULL,
  `department_phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('CE','Civil Engineering','ce@techuniv.edu','022-44332214'),('CSE','Computer Science Engineering','cse@techuniv.edu','022-44332211'),('ECE','Electronics and Communication Engineering','ece@techuniv.edu','022-44332212'),('IT','Information Technology','it@techuniv.edu','022-44332215'),('ME','Mechanical Engineering','me@techuniv.edu','022-44332213');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'Server','administrator'),(16,'Server','authgroup'),(17,'Server','authgrouppermissions'),(18,'Server','authpermission'),(19,'Server','authuser'),(20,'Server','authusergroups'),(21,'Server','authuseruserpermissions'),(10,'Server','branch'),(12,'Server','courses'),(8,'Server','department'),(22,'Server','djangoadminlog'),(23,'Server','djangocontenttype'),(24,'Server','djangomigrations'),(25,'Server','djangosession'),(11,'Server','faculty'),(15,'Server','feedetail'),(26,'Server','feesdetail'),(9,'Server','logincredentials'),(13,'Server','message'),(27,'Server','serveradministrator'),(28,'Server','serverbranch'),(29,'Server','servercourses'),(30,'Server','serverdepartment'),(31,'Server','serverfaculty'),(32,'Server','serverfeedetail'),(33,'Server','serverlogincredentials'),(34,'Server','servermessage'),(35,'Server','serverstudent'),(14,'Server','student'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'Server','0001_initial','2024-11-22 06:13:17.713930'),(2,'contenttypes','0001_initial','2024-11-22 06:13:19.401682'),(3,'auth','0001_initial','2024-11-22 06:13:45.616651'),(4,'admin','0001_initial','2024-11-22 06:13:52.801741'),(5,'admin','0002_logentry_remove_auto_add','2024-11-22 06:13:52.883024'),(6,'admin','0003_logentry_add_action_flag_choices','2024-11-22 06:13:52.986641'),(7,'contenttypes','0002_remove_content_type_name','2024-11-22 06:13:56.094519'),(8,'auth','0002_alter_permission_name_max_length','2024-11-22 06:13:59.528674'),(9,'auth','0003_alter_user_email_max_length','2024-11-22 06:14:00.108021'),(10,'auth','0004_alter_user_username_opts','2024-11-22 06:14:00.202957'),(11,'auth','0005_alter_user_last_login_null','2024-11-22 06:14:03.738116'),(12,'auth','0006_require_contenttypes_0002','2024-11-22 06:14:03.925309'),(13,'auth','0007_alter_validators_add_error_messages','2024-11-22 06:14:04.033688'),(14,'auth','0008_alter_user_username_max_length','2024-11-22 06:14:07.869903'),(15,'auth','0009_alter_user_last_name_max_length','2024-11-22 06:14:10.298471'),(16,'auth','0010_alter_group_name_max_length','2024-11-22 06:14:10.741470'),(17,'auth','0011_update_proxy_permissions','2024-11-22 06:14:10.846965'),(18,'auth','0012_alter_user_first_name_max_length','2024-11-22 06:14:13.066273'),(19,'sessions','0001_initial','2024-11-22 06:14:15.142126'),(20,'Server','0002_authgroup_authgrouppermissions_authpermission_and_more','2024-11-23 15:13:59.255400'),(21,'Server','0003_delete_administrator_delete_authgroup_and_more','2024-11-24 03:10:48.193372');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0j4imfofychbcgouf7u8zd53efp3wyln','eyJ1c24iOiIzMDAwMyJ9:1tEtoi:uAy8FBZCciFe_MllgYzB9KcFr_gjGo_aVx_KJWQ4vZE','2024-12-07 17:21:08.064374'),('ah6rd7zwznjww7c6hsplz9f21mekl71d','eyJ1c24iOiIzMDAwMyJ9:1tEtur:dar9GYhXPpD_w9hoXrobTvoS5RsNeZL9ougEGvq1c6Q','2024-12-07 17:27:29.169984'),('dz67dgkhipdn46f5pordb59tvvdgmx5b','eyJ1c24iOiIzMDAwMyJ9:1tEtsH:O9Vb4xdi2G2xmmtCzG_Ol8nbA_XfiIqimrvQC1ftkPg','2024-12-07 17:24:49.089674'),('eyw6lnejxwxow4911uovuag5ygybgml6','eyJ1c24iOiIzMDAwMyJ9:1tEttq:5rkuNWHReuk7zA-27EtXdwV4STbdK4YcLO18emXOvxc','2024-12-07 17:26:26.103514'),('h0vu3wdx68no3r5ctof4c75mmt2yqkzm','eyJ1c24iOiIzMDAwMyJ9:1tEttu:02wX2sKle3r64yXPzVOOyzSpauH_mhtkZ_sTB4ADrVg','2024-12-07 17:26:30.273053'),('jy30vfc0thabg6uywdqwdss027rbzkyo','eyJ1c24iOiIzMDAwMyJ9:1tEtoe:rkyPjLEVeczu_3BgnUUfN8goLuPKxL5aXMrRoA3CK70','2024-12-07 17:21:04.685251'),('mbjwud955crn7nceinzb2ihjwi5py3hi','eyJ1c24iOiIzMDAwMyJ9:1tEtsD:ChC-U_s3DtZjDdUcH9T3UK7j0FJpgWL7RjBzKeZQP6o','2024-12-07 17:24:45.605149'),('p2ujk9slr7vn7jfn7qa3ava8mh5tf9lo','eyJ1c24iOiIzMDAwMyJ9:1tEtsD:ChC-U_s3DtZjDdUcH9T3UK7j0FJpgWL7RjBzKeZQP6o','2024-12-07 17:24:45.699343'),('s8tbfegiex3rk298zcgp2jt57sz9mila','eyJ1c24iOiIzMDAwMyJ9:1tEtuu:TsuZuP5ewQ1FT36ce5xIWfEu5Uj7_znNQdFEFxxt45A','2024-12-07 17:27:32.556880');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int DEFAULT NULL,
  `department_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `department_code` (`department_code`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`department_code`) REFERENCES `department` (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (101,'Dr. Amit Sharma',45,'CSE'),(102,'Dr. Priya Desai',38,'CSE'),(103,'Prof. Ramesh Gupta',50,'CSE'),(201,'Dr. Neha Kumar',42,'CSE'),(202,'Dr. Arvind Singh',39,'CSE'),(203,'Prof. Rajesh Yadav',47,'CSE'),(301,'Dr. Sanjay Mehta',40,'CSE'),(302,'Prof. Seema Rani',44,'CSE'),(303,'Dr. Anil Verma',48,'CSE'),(401,'Dr. Pradeep Joshi',43,'ECE'),(402,'Prof. Rekha Saini',41,'ECE'),(403,'Dr. Sunil Reddy',46,'ECE'),(501,'Dr. Deepak Sharma',39,'ECE'),(502,'Prof. Shweta Patil',44,'ECE'),(503,'Dr. Vikram Choudhury',41,'ECE'),(601,'Dr. Meena Kapoor',38,'ECE'),(602,'Prof. Manoj Patel',47,'ECE'),(603,'Dr. Rakesh Bhatia',42,'ECE'),(701,'Dr. Pravin Joshi',44,'ME'),(702,'Prof. Sunita Mehra',45,'ME'),(703,'Dr. Krishna Murthy',50,'ME'),(801,'Dr. Aarti Mishra',39,'ME'),(802,'Prof. Rajeev Arora',48,'ME'),(803,'Dr. Mukesh Sharma',47,'ME'),(901,'Dr. Rohit Verma',41,'ME'),(902,'Prof. Smita Kapoor',49,'ME'),(903,'Dr. Seema Agrawal',46,'ME'),(1001,'Dr. Nitin Verma',40,'CE'),(1002,'Prof. Kavita Sharma',45,'CE'),(1003,'Dr. Sandeep Patel',48,'CE'),(1101,'Dr. Anil Mishra',42,'CE'),(1102,'Prof. Sudhir Bansal',43,'CE'),(1103,'Dr. Anupama Sinha',47,'CE'),(1201,'Dr. Ranjit Kumar',44,'CE'),(1202,'Prof. Poonam Verma',46,'CE'),(1203,'Dr. Rahul Joshi',41,'CE'),(1301,'Dr. Deepak Kumar',40,'IT'),(1302,'Prof. Asha Patel',43,'IT'),(1303,'Dr. Vinay Yadav',45,'IT'),(1401,'Dr. Neeraj Agarwal',42,'IT'),(1402,'Prof. Radhika Jain',44,'IT'),(1403,'Dr. Santosh Tiwari',39,'IT'),(1501,'Dr. Priyanka Mehta',38,'IT'),(1502,'Prof. Gaurav Bansal',47,'IT'),(1503,'Dr. Rajesh Thakur',41,'IT');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_detail`
--

DROP TABLE IF EXISTS `fees_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees_detail` (
  `fee_id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fee_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `fees_detail_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_detail`
--

LOCK TABLES `fees_detail` WRITE;
/*!40000 ALTER TABLE `fees_detail` DISABLE KEYS */;
INSERT INTO `fees_detail` VALUES (100001,10001,'Paid'),(100002,10002,'Unpaid'),(100003,10003,'Paid'),(100004,10004,'Unpaid'),(100005,10005,'Paid'),(100006,10006,'Unpaid'),(200001,20001,'Paid'),(200002,20002,'Paid'),(200003,20003,'Unpaid'),(200004,20004,'Paid'),(200005,20005,'Unpaid'),(200006,20006,'Paid'),(300001,30001,'Unpaid'),(300002,30002,'Paid'),(300003,30003,'Unpaid'),(300004,30004,'Paid'),(300005,30005,'Unpaid'),(300006,30006,'Paid'),(400001,40001,'Paid'),(400002,40002,'Paid'),(400003,40003,'Unpaid'),(400004,40004,'Paid'),(400005,40005,'Unpaid'),(400006,40006,'Paid'),(500001,50001,'Unpaid'),(500002,50002,'Paid'),(500003,50003,'Paid'),(500004,50004,'Unpaid'),(500005,50005,'Paid'),(500006,50006,'Unpaid');
/*!40000 ALTER TABLE `fees_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_credentials`
--

DROP TABLE IF EXISTS `login_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_credentials` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `student_id` int DEFAULT NULL,
  `faculty_id` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `user_type` enum('student','faculty','administrator') NOT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_student` (`student_id`),
  KEY `fk_faculty` (`faculty_id`),
  KEY `fk_admin` (`admin_id`),
  CONSTRAINT `fk_admin` FOREIGN KEY (`admin_id`) REFERENCES `administrator` (`admin_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_faculty` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_credentials`
--

LOCK TABLES `login_credentials` WRITE;
/*!40000 ALTER TABLE `login_credentials` DISABLE KEYS */;
INSERT INTO `login_credentials` VALUES ('Aarti30003','Aarti Mishra@30003',30003,NULL,NULL,'student'),('Abhishek50003','Abhishek Verma@50003',50003,NULL,NULL,'student'),('Amit10001','Amit Sharma@10001',10001,NULL,NULL,'student'),('Anjali50004','Anjali Gupta@50004',50004,NULL,NULL,'student'),('Ankit20004','Ankit Joshi@20004',20004,NULL,NULL,'student'),('Dr.1001','Dr. Nitin Verma@1001',NULL,1001,NULL,'faculty'),('Dr.1003','Dr. Sandeep Patel@1003',NULL,1003,NULL,'faculty'),('Dr.101','Dr. Amit Sharma@101',NULL,101,NULL,'faculty'),('Dr.102','Dr. Priya Desai@102',NULL,102,NULL,'faculty'),('Dr.1101','Dr. Anil Mishra@1101',NULL,1101,NULL,'faculty'),('Dr.1103','Dr. Anupama Sinha@1103',NULL,1103,NULL,'faculty'),('Dr.1201','Dr. Ranjit Kumar@1201',NULL,1201,NULL,'faculty'),('Dr.1203','Dr. Rahul Joshi@1203',NULL,1203,NULL,'faculty'),('Dr.1301','Dr. Deepak Kumar@1301',NULL,1301,NULL,'faculty'),('Dr.1303','Dr. Vinay Yadav@1303',NULL,1303,NULL,'faculty'),('Dr.1401','Dr. Neeraj Agarwal@1401',NULL,1401,NULL,'faculty'),('Dr.1403','Dr. Santosh Tiwari@1403',NULL,1403,NULL,'faculty'),('Dr.1501','Dr. Priyanka Mehta@1501',NULL,1501,NULL,'faculty'),('Dr.1503','Dr. Rajesh Thakur@1503',NULL,1503,NULL,'faculty'),('Dr.201','Dr. Neha Kumar@201',NULL,201,NULL,'faculty'),('Dr.202','Dr. Arvind Singh@202',NULL,202,NULL,'faculty'),('Dr.301','Dr. Sanjay Mehta@301',NULL,301,NULL,'faculty'),('Dr.303','Dr. Anil Verma@303',NULL,303,NULL,'faculty'),('Dr.401','Dr. Pradeep Joshi@401',NULL,401,NULL,'faculty'),('Dr.403','Dr. Sunil Reddy@403',NULL,403,NULL,'faculty'),('Dr.501','Dr. Deepak Sharma@501',NULL,501,NULL,'faculty'),('Dr.503','Dr. Vikram Choudhury@503',NULL,503,NULL,'faculty'),('Dr.601','Dr. Meena Kapoor@601',NULL,601,NULL,'faculty'),('Dr.603','Dr. Rakesh Bhatia@603',NULL,603,NULL,'faculty'),('Dr.701','Dr. Pravin Joshi@701',NULL,701,NULL,'faculty'),('Dr.703','Dr. Krishna Murthy@703',NULL,703,NULL,'faculty'),('Dr.801','Dr. Aarti Mishra@801',NULL,801,NULL,'faculty'),('Dr.803','Dr. Mukesh Sharma@803',NULL,803,NULL,'faculty'),('Dr.901','Dr. Rohit Verma@901',NULL,901,NULL,'faculty'),('Dr.903','Dr. Seema Agrawal@903',NULL,903,NULL,'faculty'),('Geeta30002','Geeta Yadav@30002',30002,NULL,NULL,'student'),('Karan50001','Karan Joshi@50001',50001,NULL,NULL,'student'),('Kavita10002','Kavita Verma@10002',10002,NULL,NULL,'student'),('Manisha50002','Manisha Sharma@50002',50002,NULL,NULL,'student'),('Meenal20005','Meenal Rani@20005',20005,NULL,NULL,'student'),('Neha30005','Neha Kapoor@30005',30005,NULL,NULL,'student'),('Nisha40001','Nisha Kumari@40001',40001,NULL,NULL,'student'),('Pooja10004','Pooja Singh@10004',10004,NULL,NULL,'student'),('Poonam40006','Poonam Verma@40006',40006,NULL,NULL,'student'),('Priya20003','Priya Desai@20003',20003,NULL,NULL,'student'),('Prof.1002','Prof. Kavita Sharma@1002',NULL,1002,NULL,'faculty'),('Prof.103','Prof. Ramesh Gupta@103',NULL,103,NULL,'faculty'),('Prof.1102','Prof. Sudhir Bansal@1102',NULL,1102,NULL,'faculty'),('Prof.1202','Prof. Poonam Verma@1202',NULL,1202,NULL,'faculty'),('Prof.1302','Prof. Asha Patel@1302',NULL,1302,NULL,'faculty'),('Prof.1402','Prof. Radhika Jain@1402',NULL,1402,NULL,'faculty'),('Prof.1502','Prof. Gaurav Bansal@1502',NULL,1502,NULL,'faculty'),('Prof.203','Prof. Rajesh Yadav@203',NULL,203,NULL,'faculty'),('Prof.302','Prof. Seema Rani@302',NULL,302,NULL,'faculty'),('Prof.402','Prof. Rekha Saini@402',NULL,402,NULL,'faculty'),('Prof.502','Prof. Shweta Patil@502',NULL,502,NULL,'faculty'),('Prof.602','Prof. Manoj Patel@602',NULL,602,NULL,'faculty'),('Prof.702','Prof. Sunita Mehra@702',NULL,702,NULL,'faculty'),('Prof.802','Prof. Rajeev Arora@802',NULL,802,NULL,'faculty'),('Prof.902','Prof. Smita Kapoor@902',NULL,902,NULL,'faculty'),('Rahul20002','Rahul Khanna@20002',20002,NULL,NULL,'student'),('Rajeev20006','Rajeev Sharma@20006',20006,NULL,NULL,'student'),('Rajesh11','Rajesh Kumar@11',NULL,NULL,11,'administrator'),('Rajiv50005','Rajiv Kumar@50005',50005,NULL,NULL,'student'),('Rakesh30004','Rakesh Bhatia@30004',30004,NULL,NULL,'student'),('Ravi40002','Ravi Gupta@40002',40002,NULL,NULL,'student'),('Riya20001','Riya Agarwal@20001',20001,NULL,NULL,'student'),('Rohit10003','Rohit Gupta@10003',10003,NULL,NULL,'student'),('Sanjay30001','Sanjay Patel@30001',30001,NULL,NULL,'student'),('Shruti40005','Shruti Mehta@40005',40005,NULL,NULL,'student'),('Shubham30006','Shubham Jain@30006',30006,NULL,NULL,'student'),('Siddharth10005','Siddharth Mehta@10005',10005,NULL,NULL,'student'),('Sneha10006','Sneha Kapoor@10006',10006,NULL,NULL,'student'),('Sneha12','Sneha Sharma@12',NULL,NULL,12,'administrator'),('Sonal40003','Sonal Patel@40003',40003,NULL,NULL,'student'),('Swati50006','Swati Patel@50006',50006,NULL,NULL,'student'),('Vikas40004','Vikas Yadav@40004',40004,NULL,NULL,'student');
/*!40000 ALTER TABLE `login_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` varchar(50) NOT NULL,
  `sender_id` int DEFAULT NULL,
  `receiver_id` int DEFAULT NULL,
  `message` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_administrator`
--

DROP TABLE IF EXISTS `server_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_administrator` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `age` int NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_administrator`
--

LOCK TABLES `server_administrator` WRITE;
/*!40000 ALTER TABLE `server_administrator` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_branch`
--

DROP TABLE IF EXISTS `server_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_branch` (
  `branch_id` varchar(10) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `department_code_id` varchar(10) NOT NULL,
  PRIMARY KEY (`branch_id`),
  KEY `Server_branch_department_code_id_bd9cf98c_fk_Server_de` (`department_code_id`),
  CONSTRAINT `Server_branch_department_code_id_bd9cf98c_fk_Server_de` FOREIGN KEY (`department_code_id`) REFERENCES `server_department` (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_branch`
--

LOCK TABLES `server_branch` WRITE;
/*!40000 ALTER TABLE `server_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_courses`
--

DROP TABLE IF EXISTS `server_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  `semester` int NOT NULL,
  `branch` varchar(50) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_description` longtext,
  `course_duration` varchar(50) DEFAULT NULL,
  `capacity` int NOT NULL,
  `department_code_id` varchar(10) NOT NULL,
  `faculty_id_id` int NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `Server_courses_department_code_id_aba84b00_fk_Server_de` (`department_code_id`),
  KEY `Server_courses_faculty_id_id_f76d9e8f_fk_Server_fa` (`faculty_id_id`),
  CONSTRAINT `Server_courses_department_code_id_aba84b00_fk_Server_de` FOREIGN KEY (`department_code_id`) REFERENCES `server_department` (`department_code`),
  CONSTRAINT `Server_courses_faculty_id_id_f76d9e8f_fk_Server_fa` FOREIGN KEY (`faculty_id_id`) REFERENCES `server_faculty` (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_courses`
--

LOCK TABLES `server_courses` WRITE;
/*!40000 ALTER TABLE `server_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_department`
--

DROP TABLE IF EXISTS `server_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_department` (
  `department_code` varchar(10) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `department_email` varchar(100) DEFAULT NULL,
  `department_phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_department`
--

LOCK TABLES `server_department` WRITE;
/*!40000 ALTER TABLE `server_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_faculty`
--

DROP TABLE IF EXISTS `server_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `age` int NOT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `department_code_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `Server_faculty_department_code_id_eb8bd1e7_fk_Server_de` (`department_code_id`),
  CONSTRAINT `Server_faculty_department_code_id_eb8bd1e7_fk_Server_de` FOREIGN KEY (`department_code_id`) REFERENCES `server_department` (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_faculty`
--

LOCK TABLES `server_faculty` WRITE;
/*!40000 ALTER TABLE `server_faculty` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_logincredentials`
--

DROP TABLE IF EXISTS `server_logincredentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_logincredentials` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `USN` varchar(20) DEFAULT NULL,
  `user_type` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_logincredentials`
--

LOCK TABLES `server_logincredentials` WRITE;
/*!40000 ALTER TABLE `server_logincredentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_logincredentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_message`
--

DROP TABLE IF EXISTS `server_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_message` (
  `ID` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `is_urgent` tinyint(1) NOT NULL,
  `receiver_id_id` varchar(50) NOT NULL,
  `sender_id_id` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Server_message_receiver_id_id_283aec5e_fk_Server_message_ID` (`receiver_id_id`),
  KEY `Server_message_sender_id_id_6b361239_fk_Server_message_ID` (`sender_id_id`),
  CONSTRAINT `Server_message_receiver_id_id_283aec5e_fk_Server_message_ID` FOREIGN KEY (`receiver_id_id`) REFERENCES `server_message` (`ID`),
  CONSTRAINT `Server_message_sender_id_id_6b361239_fk_Server_message_ID` FOREIGN KEY (`sender_id_id`) REFERENCES `server_message` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_message`
--

LOCK TABLES `server_message` WRITE;
/*!40000 ALTER TABLE `server_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_student`
--

DROP TABLE IF EXISTS `server_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_student` (
  `student_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `year` int NOT NULL,
  `semester` int NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id_id` varchar(10) NOT NULL,
  `department_code_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_ID`),
  KEY `Server_student_branch_id_id_41600cf8_fk_Server_branch_branch_id` (`branch_id_id`),
  KEY `Server_student_department_code_id_3d166f31_fk_Server_de` (`department_code_id`),
  CONSTRAINT `Server_student_branch_id_id_41600cf8_fk_Server_branch_branch_id` FOREIGN KEY (`branch_id_id`) REFERENCES `server_branch` (`branch_id`),
  CONSTRAINT `Server_student_department_code_id_3d166f31_fk_Server_de` FOREIGN KEY (`department_code_id`) REFERENCES `server_department` (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_student`
--

LOCK TABLES `server_student` WRITE;
/*!40000 ALTER TABLE `server_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `year` int DEFAULT NULL,
  `department_code` varchar(10) DEFAULT NULL,
  `branch_id` varchar(10) DEFAULT NULL,
  `semester` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `department_code` (`department_code`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`department_code`) REFERENCES `department` (`department_code`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (10001,'Amit Sharma',1,'CE','CE_1',1),(10002,'Kavita Verma',2,'CE','CE_1',3),(10003,'Rohit Gupta',3,'CE','CE_1',5),(10004,'Pooja Singh',1,'CE','CE_2',1),(10005,'Siddharth Mehta',2,'CE','CE_2',3),(10006,'Sneha Kapoor',3,'CE','CE_2',5),(20001,'Riya Agarwal',1,'CSE','CSE_1',1),(20002,'Rahul Khanna',2,'CSE','CSE_1',3),(20003,'Priya Desai',3,'CSE','CSE_1',5),(20004,'Ankit Joshi',1,'CSE','CSE_2',1),(20005,'Meenal Rani',2,'CSE','CSE_2',3),(20006,'Rajeev Sharma',3,'CSE','CSE_2',5),(30001,'Sanjay Patel',1,'ECE','ECE_1',1),(30002,'Geeta Yadav',2,'ECE','ECE_1',3),(30003,'Aarti Mishra',3,'ECE','ECE_1',5),(30004,'Rakesh Bhatia',1,'ECE','ECE_2',1),(30005,'Neha Kapoor',2,'ECE','ECE_2',3),(30006,'Shubham Jain',3,'ECE','ECE_2',5),(40001,'Nisha Kumari',1,'IT','IT_1',1),(40002,'Ravi Gupta',2,'IT','IT_1',3),(40003,'Sonal Patel',3,'IT','IT_1',5),(40004,'Vikas Yadav',1,'IT','IT_2',1),(40005,'Shruti Mehta',2,'IT','IT_2',3),(40006,'Poonam Verma',3,'IT','IT_2',5),(50001,'Karan Joshi',1,'ME','ME_1',1),(50002,'Manisha Sharma',2,'ME','ME_1',3),(50003,'Abhishek Verma',3,'ME','ME_1',5),(50004,'Anjali Gupta',1,'ME','ME_2',1),(50005,'Rajiv Kumar',2,'ME','ME_2',3),(50006,'Swati Patel',3,'ME','ME_2',5);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24 20:53:06
