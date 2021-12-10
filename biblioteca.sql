CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `biblioteca`;
-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: biblioteca
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `ApellidoPaterno` varchar(45) NOT NULL,
  `ApellidoMaterno` varchar(45) NOT NULL,
  `Nacionaliad` varchar(45) NOT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (100,'Anonimo','','','Sumeria'),(101,'Anonimo','','','Imperio Aqueme'),(102,'Anonimo','','','India'),(103,'Anonimo','','','Nigeria'),(104,'Christian','Achebe','','Dinamarca'),(105,'Hans','Anderson','','Italia'),(106,'Dante',' Alighieri','','Reino unido'),(107,'Jane','Austen','','Francia'),(108,'Honore','de Balzac','','Irlanda'),(109,'Samuel','Beckett','','Rávena'),(110,'Giovvani','Boccaccio','','Aregantina'),(111,'Jorge Luis','Borges','','Argelia'),(112,'Emily','Bronte','','Rumania'),(113,'Albert','Camus','','Francia'),(114,'Paul','Celan','','España'),(115,'Louis','Celine','','Inglaterra'),(116,'Miguel','de Servantes','','Rusia'),(117,'Geoffrey','Chaucer','','Reino Unido'),(118,'Antón','Chejov','','Reino Unido'),(119,'Joseph','Conrad','','Francia'),(120,'Charles','Dickens','','Alemania'),(121,'Denis','Diderot','','Rusia'),(122,'Alfred ','Doblin','','Rusia'),(123,'Fiodor','Dostoievski','','Rusia'),(124,'Fiodor','Dostoievski','','Rusia'),(125,'Fiodor','Dostoievski','','Reino Unido'),(126,'Fiodor','Dostoievski','','Estados Unidos'),(127,'Fiodor','Dostoievski','','Estados Unidos'),(128,'Fiodor','Dostoievski','','Imperio Ateniense'),(129,'George','Eliot','','Estados Unidos'),(130,'Ralph ','Ellison','','Estados Unidos'),(131,'Eurpides','','','Francia'),(132,'William','Failkner','','Fracia'),(133,'Gustave ','Flaubert','','España'),(134,'Gustave','Flaubert','','Colombia'),(135,'Federdio','Gracia','Lorca','Colombia'),(136,'Gabriel','Garcia','Marquez','Ucrania'),(137,'Gabriel','Gracia','Marquez','Brasil'),(138,'Johann ','Wolfgang','Von Goethe','Noruega'),(139,'Nikolai','Gogol','','Estado libre irlandes'),(140,'Gunter','Grasss','','Republica dominicana'),(141,'Joao Guimares','','','Republica de Checoslovaquia'),(142,'.Knut Hamsun','','','Republica de Checoslovaquia'),(143,'Ernest ','Heminiggway','','Republica de Checoslovaquia'),(144,'Homero','','','India'),(145,'Homero','','','Japón'),(146,'Henrik Ibsen','','','Grecia'),(147,'James','Joyce','','Reino Unido'),(148,'Franz','Kafka','','Islandia'),(149,'Kalidasa','','','Italia'),(150,'Yasunari','Kawabata','','Reino Unido');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleprestamo`
--

DROP TABLE IF EXISTS `detalleprestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleprestamo` (
  `idDetallePrestamo` int(11) NOT NULL,
  `idPrestamo` varchar(45) NOT NULL,
  `idLibro` varchar(45) NOT NULL,
  `Cantidad` varchar(45) NOT NULL,
  PRIMARY KEY (`idDetallePrestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleprestamo`
--

LOCK TABLES `detalleprestamo` WRITE;
/*!40000 ALTER TABLE `detalleprestamo` DISABLE KEYS */;
INSERT INTO `detalleprestamo` VALUES (400,'300','1','1'),(401,'301','8','2'),(402,'302','9','3'),(403,'303','15','4'),(404,'304','30','5'),(405,'305','50','6'),(406,'306','21','1'),(407,'307','32','2'),(408,'308','48','3'),(409,'309','50','4'),(410,'310','28','5'),(411,'311','22','6'),(412,'312','4','2'),(413,'313','6','3'),(414,'314','8','4'),(415,'315','10','1'),(416,'316','11','2'),(417,'317','13','3'),(418,'318','16','4'),(419,'319','21','1'),(420,'320','29','2'),(421,'321','33','3'),(422,'322','41','4'),(424,'324','18','1'),(425,'325','21','3'),(426,'326','32','2'),(427,'327','25','5'),(429,'329','22','2'),(430,'330','9','4');
/*!40000 ALTER TABLE `detalleprestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `idEstudiante` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `ApellidoPaterno` varchar(45) NOT NULL,
  `ApellidoMaterno` varchar(45) NOT NULL,
  `Carrera` varchar(45) NOT NULL,
  PRIMARY KEY (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (200,'Juan','Martinez','Guzman','Gastronomia'),(201,'Maria','Guzman','Martinez','Mecanica'),(202,'Pedro','Casillas','','Electricidad'),(203,'Mireya','Gomez','','Magnetismo'),(204,'Julissa','Robles','','Medicina'),(205,'Nicolas','Rodriguez','','Psicologia'),(206,'Guadalupe','Ibarra','','Psiquiatria'),(207,'Fatima','Reyes','Perez','Fisica'),(208,'Dennis','Sanches','','Quimica'),(209,'Gloria','Sanchez','','Arquitectura'),(210,'Jesus','Medina','','Telecomunicaciones'),(211,'Angel','Gonzalez','','Ingenieria en sistemas'),(212,'Martha','','Muñoz','Diseñador de Videojuegos'),(213,'Emiliano','','','Ingenieria Electrica'),(214,'Eduardo','Mondragon','','Ingenieria Mecanica'),(215,'Yuridia','Lara','Martinez','Periodismo'),(216,'Fernanda','Colon','','Derecho'),(217,'Pablo','','Guzman','Ingenieria Civil'),(218,'Jorge','Ibarra','','Farmaceutica'),(219,'Valeria','Perez','','Banca'),(220,'Gonzalo','Lopez','','Seguros'),(221,'Brandon','Lara','','Manufactura'),(222,'Israel','','Nuñez','Procesos'),(223,'Mary','Gonzalez','','Logistica'),(224,'Eduardo','Ibarra','','Bactereologia'),(225,'Litzy','Rodriguez','','Ciencias Politicas'),(226,'Monse','Gonzalez','Perez','Electronica'),(227,'Victor','Alba','','Marketing'),(228,'Ricardo','Rodriguez','','Contabilidad'),(229,'Luis','Martinez','Mondragon','Economia'),(230,'Daniel','Lopez','','Administracion de empresas'),(231,'Paulina','Muñoz','','Gestion Empresarial'),(232,'Carlos','Padilla','','Enfermeria'),(233,'Jose','Serna','Pizaña','Geologia'),(234,'Maximiliano','Santana','','Piloto de aviacion comercial'),(235,'Jatziry','Montoya','','Ingenieria en minas'),(236,'Guadalupe','Montañez','Gallegos','Ingenieria Civil'),(237,'Arely','Montañez','','Farmaceutica'),(238,'Lupita','Hernanez','','Banca y seguros'),(239,'Adriana','Guzman','Balleza','Medicina'),(240,'Noemi','Esparza','','Psicologia'),(241,'Paco','Nuñez','','Fisica'),(242,'Osvaldo','Velazquez','','Ingenieria de minas'),(243,'Leon','Nuño','','Direccion de empresas'),(244,'Lessly','Niño','Muñoz','Odontologia'),(245,'Sara','Jimenez','','Economia y finanzas'),(246,'Omar','Silva','Rodriguez','Ingenieria industrial'),(247,'Marco','Serna','','Bactereologia'),(248,'Sergio','Bunaparte','','Ciencias politicas'),(249,'Aisha','Escobedo','Perez','Electronica y automatizacion '),(250,'Lizbeth','Martinez','','Manufactura y procesos');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `idLibro` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) NOT NULL,
  `Editorial` varchar(45) NOT NULL,
  `Area` varchar(45) NOT NULL,
  `Cantidad` varchar(45) NOT NULL,
  PRIMARY KEY (`idLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'Termodinamica','La casita','Fisica','1'),(2,'Calculo Diferencial','La casita','Matemáticas','5'),(3,'El principito','Reynal','Cuentos','6'),(4,'La niña hecha de libros','Reynal','Cuentos','2'),(5,'La guerra de los pasteles','De la palma','Historia','4'),(6,'Independencia de México','De la palma','Historia','8'),(7,'Quimica','Montessori','Quimica','5'),(8,'Embriologia','De luna','Medicina','4'),(9,'Ingles','Lighouse','Ingles','6'),(10,'Fracciones','La casita','Matemáticas','2'),(12,'Poema de Gilgamesh','Alianza ','Literatura','5'),(13,'Libro de job','Planeta comic','Literatura','9'),(14,'La mil y una noches','Valdemar','Literatura','5'),(15,'Saga de Njal','Alba','Literatura','6'),(16,'Todo se desmorona','Gonzalez','Literatura','5'),(17,'Cuentos infantiles','Norma','Literatura','5'),(18,'Divina comedia','Herder','Literatura','5'),(19,'Orgullo y prejuicio','Me gusta Escribir','Literatura','8'),(20,'Papá Goriot','Paginas de espuma','Literatura','9'),(21,'El inombrable ','Duomo','Literatura','3'),(22,'Decameron','Sajalin','Literatura','2'),(23,'Ficciones','Teen planet','Literatura','3'),(24,'Cumbres borrascosas','Heroes del papel','Literatura','1'),(25,'El extrangero','RBA ','Literatura','5'),(26,'Poemas','Arpa','Literatura','5'),(27,'El cuaderno dorado','Grup 62','Literatura','6'),(28,'Pippi Calzaslargas','Roca Joven','Literatura','7'),(29,'Diario de un loco','Bruño','Literatura','9'),(30,'Hijos de nuestro barrio','Icaria','Literatura','1'),(31,'Los buddenbrook','Reino de cordelio','Literatura','3'),(32,'La montaña mágica','Ponent mon','Literatura','2'),(33,'Moby-Dick','Usal','Literatura','5'),(34,'Ensayos','Textos','Literatura','6'),(35,'La historia','Ideas propias','Literatura','9'),(36,'Beloved','Padilla libro','Literatura','8'),(37,'Genji Monogatarai','Ganso y pulpa','Literatura','7'),(38,'El hombre sin atributos','Morsa','Literatura','4'),(39,'Lolita','Kairos','Literatura','1'),(40,'1984','Interfolio','Literatura','2'),(41,'La metamorfosis','UC','Literatura','3'),(42,'Libro del desasosiego','Maeva','Literatura','6'),(43,'Cuentos','Anamayi','Literatura','4'),(44,'En busca del tiempo perdido','Watashi','Literatura','7'),(45,'Garantúa y pantagruel','Turener','Literatura','2'),(46,'Pedro paramo','Delvives','Literatura','6'),(47,'Masnavi','Acantilado','Literatura','7'),(48,'Hijos de la media noche','Signo ','Literatura','2'),(49,'Bostan','Morata','Literatura','8'),(50,'Tiempo de migrar al norte','Arlequin','Literatura','8');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamo` (
  `idPrestamo` int(11) NOT NULL,
  `IdEstudiante` varchar(45) NOT NULL,
  `idLibro` varchar(45) NOT NULL,
  `FechaPrestamo` varchar(45) NOT NULL,
  `FechaRegreso` varchar(45) NOT NULL,
  `Debuelto` varchar(45) NOT NULL,
  PRIMARY KEY (`idPrestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (300,'200','1','30-12-22','15-01-23','Si'),(301,'201','8','15-05-22','30-05-22','No'),(302,'200','9','13-09-22','28-09-22','Si'),(303,'22','15','17-01-22','02-02-22','Si'),(304,'230','30','30-02-22','15-03-22','Si'),(305,'250','50','31-03-22','16-04-22','No'),(306,'200','21','28-04-22','13-05-22','No'),(307,'202','32','29-05-22','14-06-22','Si'),(308,'209','48','18-06-22','03-07-22','No'),(309,'234','50','17-07-22','02-07-22','Si'),(310,'246','28','13-08-22','28-08-22','No'),(311,'233','22','11-09-22','26-09-22','No'),(312,'224','4','10-10-22','25-10-22','Si'),(313,'208','6','09-11-22','24-11-22','Si'),(314,'240','8','15-12-22','30-12-22','Si'),(315,'216','10','17-01-22','02-02-22','Si'),(316,'236','11','06-02-22','21-02-22','No'),(317,'207','13','07-03-22','22-03-22','No'),(318,'217','16','01-04-22','16-04-22','Si'),(319,'239','21','20-05-22','05-05-22','Si'),(320,'350','29','25-06-22','10-07-22','Si'),(321,'241','33','29-07-22','14-08-22','Si'),(322,'243','41','30-08-22','15-09-22','Si'),(324,'216','18','23-09-22','08-10-22','Si'),(325,'220','21','24-10-22','09-11-22','No'),(326,'238','32','30-11-22','15-12-22','No'),(327,'215','25','28-12-22','13-01-22','No'),(329,'249','22','29-01-22','14-02-22','No'),(330,'250','9','24-02-22','09-03-22','No'),(331,'217','6','26-03-22','11-04-22','No'),(332,'216','8','21-04-22','06-05-22','No'),(333,'226','1','19-05-22','04-06-22','Si'),(334,'224','7','18-06-22','03-07-22','No'),(335,'234','5','17-07-22','02-08-22','No'),(336,'238','42','15-08-22','30-08-22','No'),(337,'237','28','11-09-22','26-09-22','Si'),(338,'201','14','04-10-22','19-10-22','Si'),(339,'200','17','08-11-22','23-11-22','No'),(340,'209','49','03-12-22','18-12-22','Si'),(341,'207','47','30-01-22','15-02-22','Si'),(342,'247','38','21-02-22','06-02-22','Si'),(343,'242','26','22-06-22','07-07-22','Si'),(344,'203','25','01-03-22','16-03-22','No'),(346,'201','47','02-04-22','17-04-22','No'),(347,'247','37','07-05-22','22-05-22','No'),(348,'248','5','09-06-22','24-06-22','Si'),(349,'245','4','14-07-22','29-07-22','Si'),(350,'203','17','15-08-22','30-08-22','Si');
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-10 17:39:54
