-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: lang_testy
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `jezyki`
--

DROP TABLE IF EXISTS `jezyki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jezyki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jezyki`
--

LOCK TABLES `jezyki` WRITE;
/*!40000 ALTER TABLE `jezyki` DISABLE KEYS */;
INSERT INTO `jezyki` VALUES (1,'hiszpański'),(2,'niemiecki'),(3,'angielski'),(4,'koreański');
/*!40000 ALTER TABLE `jezyki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorie`
--

DROP TABLE IF EXISTS `kategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorie`
--

LOCK TABLES `kategorie` WRITE;
/*!40000 ALTER TABLE `kategorie` DISABLE KEYS */;
INSERT INTO `kategorie` VALUES (1,'pory roku i miesiące'),(2,'kolory'),(3,'zwierzęta'),(4,'jedzenie'),(5,'ubrania'),(6,'rodzina'),(7,'części ciała'),(8,'miejsca'),(9,'przymiotniki'),(10,'zawody'),(11,'szkoła');
/*!40000 ALTER TABLE `kategorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slowka`
--

DROP TABLE IF EXISTS `slowka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slowka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slowko` varchar(255) DEFAULT NULL,
  `tlumaczenie` varchar(255) DEFAULT NULL,
  `jezyk` int(11) NOT NULL,
  `zestaw` int(11) NOT NULL,
  `kategoria` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jezyk` (`jezyk`),
  KEY `zestaw` (`zestaw`),
  KEY `kategoria` (`kategoria`),
  CONSTRAINT `slowka_ibfk_1` FOREIGN KEY (`jezyk`) REFERENCES `jezyki` (`id`),
  CONSTRAINT `slowka_ibfk_2` FOREIGN KEY (`zestaw`) REFERENCES `zestawy` (`id`),
  CONSTRAINT `slowka_ibfk_3` FOREIGN KEY (`kategoria`) REFERENCES `kategorie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slowka`
--

LOCK TABLES `slowka` WRITE;
/*!40000 ALTER TABLE `slowka` DISABLE KEYS */;
INSERT INTO `slowka` VALUES (4,'el invierno','zima',2,4,2),(5,'enero','styczeń',1,1,1),(6,'febrero','luty',1,1,1),(7,'marzo','marzec',1,1,1),(8,'abril','kwiecień',1,1,1),(9,'mayo','maj',1,1,1),(10,'junio','czerwiec',1,1,1),(11,'julio','lipiec',1,1,1),(12,'agosto','sierpień',1,1,1),(13,'septiembre','wrzesień',1,1,1),(14,'octubre','październik',1,1,1),(15,'noviembre','listopad',1,1,1),(16,'diciembre','grudzień',1,1,1),(17,'en primavera','na wiosnę/wiosną',1,1,1),(18,'en verano','w lecie/latem',1,1,1),(19,'en otoño','na jesień/jesienią',1,1,1),(20,'en invierno','w zimie/zimą',1,1,1),(21,'rojo','czerwony',2,4,2),(22,'azul','niebieski',1,1,2),(23,'verde','zielony',1,1,2),(24,'amarillo','żółty',1,1,2),(25,'rosa, rosado','różowy',1,1,2),(26,'violeta, morado','fioletowy',1,1,2),(27,'blanco','biały',1,1,2),(28,'negro','czarny',1,1,2),(29,'gris','szary',1,1,2),(30,'naranja','pomarańczowy',1,1,2),(31,'dorado','złoty',1,1,2),(32,'plateado','srebrny',1,1,2),(33,'marrón','brązowy',1,1,2),(34,'claro','jasny',1,1,2),(35,'oscuro','ciemny',1,1,2),(36,'el gato','kot',1,1,3),(37,'el perro','pies',1,1,3),(38,'la rata','szczur',1,1,3),(39,'el ratón','mysz',1,1,3),(40,'el toro','byk',1,1,3),(41,'la vaca','krowa',1,1,3),(42,'la cabra','koza',1,1,3),(43,'el caballo','koń',1,1,3),(44,'el zorro','lis',1,1,3),(45,'la araña','pająk',1,1,3),(46,'la avispa','osa',1,1,3),(47,'la abeja','pszczoła',1,1,3),(48,'la cucaracha','karaluch',1,1,3),(49,'la mariposa','motyl',1,1,3),(50,'el conejo','królik',1,1,3),(51,'el atún','tuńczyk',1,1,3),(52,'la sardina','sardynka',1,1,3),(53,'el tigre','tygrys',1,1,3),(54,'la jirafa','żyrafa',1,1,3),(55,'el gallo','kogut',1,1,3),(56,'el pollo','kurczak',1,1,3),(57,'el oso','niedźwiedź',1,1,3),(58,'la rana','żaba',1,1,3),(59,'la serpiente','wąż',1,1,3),(60,'el león','lew',1,1,3),(61,'el mono','małpa',1,1,3),(62,'el erizo','jeż',1,1,3),(63,'la mosca','mucha',1,1,3),(64,'la oca','gęś',1,1,3),(65,'la oveja','owca',1,1,3),(66,'el cerdo','świnia',1,1,3),(67,'el búho','sowa',1,1,3),(68,'el burro','osioł',1,1,3),(69,'el canguro','kangur',1,1,3),(70,'el pato','kaczka',1,1,3),(71,'el cocodrilo','krokodyl',1,1,3),(72,'el pájaro','ptak',1,1,3),(73,'el pez','ryba',1,1,3),(74,'el elefante','słoń',1,1,3),(75,'la hormiga','mrówka',1,1,3),(76,'la tortuga','żółw',1,1,3),(77,'la mariquita','biedronka',1,1,3),(78,'el arroz','ryż',1,1,4),(79,'la tostada','grzanka, tost',1,1,4),(80,'el bollo','słodka bułka, drożdżówka',1,1,4),(81,'el bocadillo','kanapka',1,1,4),(82,'el pescado','ryba (jako danie)',1,1,4),(83,'la pasta','makaron',1,1,4),(84,'el chocolate','czekolada',1,1,4),(85,'el caramelo','cukierek',1,1,4),(86,'los dulces','słodycze',1,1,4),(87,'la sopa de verduras','zupa jarzynowa',1,1,4),(88,'el aceite','olej',1,1,4),(89,'la pimienta','pieprz',1,1,4),(90,'el azúcar','cukier',1,1,4),(91,'la sal','sól',1,1,4),(92,'las bebidas','napoje',1,1,4),(93,'la cena','kolacja',1,1,4),(94,'la comida','obiad',1,1,4),(95,'el desayuno','śniadanie',1,1,4),(96,'el almuerzo','posiłek',1,1,4),(97,'el postre','deser',1,1,4),(98,'el jamón','szynka, wędlina',1,1,4),(99,'los cereales','płatki śniadaniowe',1,1,4),(100,'el pastel','ciastko, ciasto',1,1,4),(101,'el panecillo','bułka',1,1,4),(102,'la salsa','sos',1,1,4),(103,'la mantequilla','masło',1,1,4),(104,'la carne','mięso',1,1,4),(105,'el huevo','jajko',1,1,4),(106,'el requesón','ser biały',1,1,4),(107,'el queso','ser żółty',1,1,4),(108,'el zumo de naranja','sok pomarańczowy',1,1,4),(109,'el zumo','sok',1,1,4),(110,'el aqua','woda',1,1,4),(111,'la leche','mleko',1,1,4),(112,'el café','kawa',1,1,4),(113,'el té','herbata',1,1,4),(114,'el pan','chleb',1,1,4),(115,'el ajo','czosnek',1,1,4),(116,'el maíz','kukurydza',1,1,4),(117,'el pimiento','papryka',1,1,4),(118,'la lechuga','sałata',1,1,4),(119,'el melocotón','brzoskwinia',1,1,4),(120,'la cebolla','cebula',1,1,4),(121,'el pepino','ogórek',1,1,4),(122,'el rábano','rzodkiewka',1,1,4),(123,'la calabaza','dynia',1,1,4),(124,'la remolacha','burak',1,1,4),(125,'el perejil','pietruszka',1,1,4),(126,'la coliflor','kalafior',1,1,4),(127,'la patata','ziemniak',1,1,4),(128,'el tomate','pomidor',1,1,4),(129,'la col','kapusta',1,1,4),(130,'la verdura','warzywo',1,1,4),(131,'las verduras','warzywa',1,1,4),(132,'el limón','cytryna',1,1,4),(133,'la frambuesa','malina',1,1,4),(134,'la baya','jagoda',1,1,4),(135,'la grosella','porzeczka',1,1,4),(136,'la sandía','arbuz',1,1,4),(137,'el melón','melon',1,1,4),(138,'el plátano','banan',1,1,4),(139,'las uvas','winogrona',1,1,4),(140,'el coco','kokos',1,1,4),(141,'la seta','grzyb',1,1,4),(142,'la zanahoria','marchewka',1,1,4),(143,'la piña','ananas',1,1,4),(144,'la fresa','truskawka',1,1,4),(145,'la pera','gruszka',1,1,4),(146,'la ciruela','śliwka',1,1,4),(147,'la cereza','czereśnia',1,1,4),(148,'la guinda','wiśnia',1,1,4),(149,'la manzana','jabłko',1,1,4),(150,'la fruta','owoce',1,1,4),(151,'la familia','rodzina',1,1,6),(152,'la familia nuclear','rodzina jednopokoleniowa',1,1,6),(153,'la familia política','rodzina małżonka, powinowaci',1,1,6),(154,'la mujer, la esposa','żona',1,1,6),(155,'el marido, el esposo','mąż',1,1,6),(156,'los padres','rodzice',1,1,6),(157,'el padre','ojciec',1,1,6),(158,'la madre','matka',1,1,6),(159,'el papá','tata',1,1,6),(160,'la mamá','mama',1,1,6),(161,'el hijo','syn',1,1,6),(162,'la hija','córka',1,1,6),(163,'los hijos','dzieci',1,1,6),(164,'el hermano','brat',1,1,6),(165,'la hermana','siostra',1,1,6),(166,'los hermanos','rodzeństwo, bracia',1,1,6),(167,'el nieto','wnuk',1,1,6),(168,'la nieta','wnuczka',1,1,6),(169,'los nietos','wnuki',1,1,6),(170,'los abuelos','dziadkowie',1,1,6),(171,'el primo','kuzyn',1,1,6),(172,'la prima','kuzynka',1,1,6),(173,'el tío','wujek',1,1,6),(174,'la tía','ciocia',1,1,6),(175,'los tios','wujostwo',1,1,6),(176,'la suegra','teściowa',1,1,6),(177,'el suegro','teść',1,1,6),(178,'los suegros','teściowie',1,1,6),(179,'el sobrino','siostrzeniec, bratanek',1,1,6),(180,'la sobrina','siostrzenica, bratanica',1,1,6),(181,'el cuñado','szwagier',1,1,6),(182,'la cuñada','szwagierka',1,1,6),(183,'la ropa','ubrania',1,2,5),(184,'la camiseta','koszulka, T-shirt',1,2,5),(185,'la camisa','koszula',1,2,5),(186,'la blusa','bluzka',1,2,5),(187,'la sudadera','bluza z kapturem',1,2,5),(188,'el jersey','sweter',1,2,5),(189,'los pantalones','spodnie',1,2,5),(190,'los pantalones cortos','krótkie spodenki',1,2,5),(191,'los vaqueros','jeansy',1,2,5),(192,'la falda','spódnica',1,2,5),(193,'el vesido','sukienka',1,2,5),(194,'el traje','garnitur',1,2,5),(195,'la chaqueta','kurtka',1,2,5),(196,'el abrigo','płaszcz',1,2,5),(197,'el impermeable','płaszcz przeciwdeszczowy',1,2,5),(198,'los calcetines','skarpetki',1,2,5),(199,'los guantes','rękawiczki',1,2,5),(200,'el calzado','obuwie',1,2,5),(201,'los zapatos','buty',1,2,5),(202,'las botas','kozaki',1,2,5),(203,'las sandalias','sandały',1,2,5),(204,'las zapatillas de deporte','buty sportowe',1,2,5),(205,'las chanclas','klapki',1,2,5),(206,'los complementos','dodatki',1,2,5),(207,'el gorro','czapka zimowa',1,2,5),(208,'la gorra','czapka z daszkiem',1,2,5),(209,'la corbata','krawat',1,2,5),(210,'la bufanda','szalik',1,2,5),(211,'el paraguas','parasol',1,2,5),(212,'el bolso','torebka',1,2,5),(213,'la mochila','plecak',1,2,5),(214,'la maleta','walizka',1,2,5),(215,'las gafas de sol','okulary przeciwsłoneczne',1,2,5),(216,'el cinturón','pasek do spodni',1,2,5),(217,'el chaleco','kamizelka',1,2,5),(218,'el pijama','piżama',1,2,5),(219,'el bañador','strój kąpielowy',1,2,5),(220,'las bragas','majtki damskie',1,2,5),(221,'los calzoncillos','majtki męskie',1,2,5),(222,'las medias','pończochy',1,2,5),(223,'el hombre','człowiek, mężczyzna',1,2,7),(224,'el abdomen, la barriga','brzuch',1,2,7),(225,'el pie','stopa',1,2,7),(226,'el corazón','serce',1,2,7),(227,'el brazo','ramię, ręka',1,2,7),(228,'la cabeza','głowa',1,2,7),(229,'la cadera','biodro',1,2,7),(230,'la cara','twarz',1,2,7),(231,'el codo','łokieć',1,2,7),(232,'la costilla','żebro',1,2,7),(233,'el ojo','oko',1,2,7),(234,'la nariz','nos',1,2,7),(235,'la oreja','ucho',1,2,7),(236,'el cuello','szyja',1,2,7),(237,'la boca','usta',1,2,7),(238,'la pierna','noga',1,2,7),(239,'la muela, el diente','ząb',1,2,7),(240,'el pecho','klatka piersiowa',1,2,7),(241,'la mano','dłoń',1,2,7),(242,'la rodilla','kolano',1,2,7),(243,'la espalda','plecy',1,2,7),(244,'la garganta','gardło',1,2,7),(245,'el hueso','kość',1,2,7),(246,'la piel','skóra',1,2,7),(247,'la lengua','język (część ciała)',1,2,7),(248,'el pulmón','płuco',1,2,7),(249,'la casa','dom',1,2,8),(250,'el bloque de pisos','blok mieszkalny',1,2,8),(251,'la iglesia','kościół',1,2,8),(252,'el restaurante','restauracja',1,2,8),(253,'el museo','muzeum',1,2,8),(254,'el aeropuerto','lotnisko',1,2,8),(255,'la farmacia','apteka',1,2,8),(256,'el banco','bank, ławka',1,2,8),(257,'el teatro','teatr',1,2,8),(258,'la escuela','szkoła',1,2,8),(259,'el cine','kino',1,2,8),(260,'el hospital','szpital',1,2,8),(261,'la biblioteca','biblioteka',1,2,8),(262,'el mercado','rynek',1,2,8),(263,'el hotel','hotel',1,2,8),(264,'el supermercado','supermarket, sklep',1,2,8),(265,'la gasolinera','stacja benzynowa',1,2,8),(266,'el estadio','stadion',1,2,8),(267,'la fábrica','fabryka',1,2,8),(268,'el estación del metro','stacja metra',1,2,8),(269,'el estación de autobuses','dworzec autobusowy',1,2,8),(270,'la ciudad','miasto',1,2,8),(276,'la agencia de viajes','biuro podróży',1,2,8),(277,'la comisaría de policía','komisariat policji',1,2,8),(278,'los correos','poczta',1,2,8),(279,'la universidad','uniwersytet',1,2,8),(280,'la pastelería','cukiernia',1,2,8),(281,'la librería','księgarnia',1,2,8),(282,'la tienda','sklep',1,2,8),(283,'el colegio','szkoła średnia',1,2,8),(284,'el ayuntamiento','ratusz',1,2,8),(285,'el centro comercial','centrum handlowe',1,2,8),(286,'la frutería','warzywniak',1,2,8),(287,'la panadería','piekarnia',1,2,8),(288,'la zapatería','sklep obuwniczy',1,2,8),(289,'delgado','szczupły',1,2,9),(290,'gordo','gruby',1,2,9),(291,'bajo','niski',1,2,9),(292,'alto','wysoki',1,2,9),(293,'feo','brzydki',1,2,9),(294,'agradable','przyjemny',1,2,9),(295,'tonto','głupi',1,2,9),(296,'aburrido','nudny',1,2,9),(297,'triste','smutny',1,2,9),(298,'perezoso','leniwy',1,2,9),(299,'despistado','roztargniony',1,2,9),(300,'limpio','czysty',1,2,9),(301,'sucio','brudny',1,2,9),(302,'ordenado','uporządkowany',1,2,9),(303,'desordenado','nieuporządkowany',1,2,9),(304,'ocupado','zajęty',1,2,9),(305,'cansado','zmęczony',1,2,9),(306,'relajado','wypoczęty',1,2,9),(307,'abierto','otwarty',1,2,9),(308,'cerrado','zamknięty',1,2,9),(309,'sano','zdrowy',1,2,9),(310,'enfermo','chory',1,2,9),(311,'contento','zadowolony',1,2,9),(312,'descontento','niezadowolony',1,2,9),(313,'peligroso','niebezpieczny',1,2,9),(314,'interesante','interesujący',1,2,9),(315,'seguro','bezpieczny',1,2,9),(316,'caro','drogi',1,2,9),(317,'barato','tani',1,2,9),(318,'cómodo','wygodny',1,2,9),(319,'rapido','szybki',1,2,9),(320,'lento','wolny',1,2,9),(321,'divertido','zabawny',1,2,9),(322,'practico','praktyczny',1,2,9),(323,'alegre','wesoły',1,2,9),(324,'caliente','ciepły',1,2,9),(325,'bueno','dobry',1,2,9),(326,'corto','krótki',1,2,9),(327,'largo','długi',1,2,9),(328,'grande','duży',1,2,9),(329,'pequeño','mały',1,2,9),(330,'nuevo','nowy',1,2,9),(331,'viejo','stary',1,2,9),(332,'tranquilo','spokojny',1,2,9),(333,'amargo','gorzki',1,2,9),(334,'dulce','słodki',1,2,9),(335,'duro','twardy',1,2,9),(336,'blando','miękki',1,2,9),(337,'ancho','szeroki',1,2,9),(338,'estrecho','wąski',1,2,9),(339,'ácido','kwaśny',1,2,9),(340,'asqueroso','obrzydliwy',1,2,9),(341,'cruel','okrutny',1,2,9),(342,'difícil','trudny',1,2,9),(343,'fácil','łatwy',1,2,9),(344,'feliz','szczęśliwy',1,2,9),(345,'lunes','poniedziałek',1,2,1),(346,'martes','wtorek',1,2,1),(347,'míercoles','środa',1,2,1),(348,'jueves','czwartek',1,2,1),(349,'viernes','piątek',1,2,1),(350,'sábado','sobota',1,2,1),(351,'domingo','niedziela',1,2,1),(352,'los días de la semana','dni tygodnia',1,2,1),(353,'adecuado','odpowiedni',1,2,9),(354,'débil','słaby',1,2,9),(355,'despierto','żywy, obudzony',1,2,9),(356,'diferente','różny',1,2,9),(357,'dormido','śpiący',1,2,9),(358,'enfadado','obrażony',1,2,9),(359,'especial','wyjątkowy',1,2,9),(360,'falso','fałszywy',1,2,9),(361,'famoso','znany',1,2,9),(362,'fiel','wierny',1,2,9),(363,'suave','delikatny',1,2,9),(364,'el peluquero','fryzjer',1,3,10),(365,'el cocinero','kucharz',1,3,10),(366,'el profesor','nauczyciel',1,3,10),(367,'el director','dyrektor',1,3,10),(368,'el/la modelo','model/modelka',1,3,10),(369,'el/la piloto','pilot/pilotka',1,3,10),(370,'el/la cantante','piosenkarz/piosenkarka',1,3,10),(371,'el/la periodista','dziennikarz/dziennikarka',1,3,10),(372,'el actor','aktor',1,3,10),(373,'la actriz','aktorka',1,3,10),(374,'el rey','król',1,3,10),(375,'la reina','królowa',1,3,10),(376,'el jefe','szef',1,3,10),(377,'la jefe/jefa','szefowa',1,3,10),(378,'el dependiente','ekspedient',1,3,10),(379,'la dependiente/dependienta','ekspedientka',1,3,10),(380,'el libro','książka',1,3,11),(381,'el mapa','mapa',1,3,11),(382,'el/la estudiante','uczeń/uczennica',1,3,11),(383,'las tijeras','nożyczki',1,3,11),(384,'el ordenador','komputer',1,3,11),(385,'el cuaderno','zeszyt, notes',1,3,11),(386,'el boli, el boligrafo','długopis',1,3,11),(387,'el lápiz','ołówek',1,3,11),(388,'la clase','klasa, lekcja',1,3,11),(389,'el recreo','przerwa',1,3,11),(390,'el curso','rok szkolny',1,3,11),(391,'la tarea','zadanie',1,3,11),(392,'los deberes','praca domowa',1,3,11),(393,'la asignatura','przedmiot szkolny',1,3,11),(394,'el español','hiszpański',1,3,11),(395,'las matemáticas','matematyka',1,3,11),(396,'la historia','historia',1,3,11),(397,'la geografía','geografia',1,3,11),(398,'el inglés','angielski',1,3,11),(399,'el idioma extranjero','język obcy',1,3,11),(400,'la biología','biologia',1,3,11),(401,'la química','chemia',1,3,11),(402,'la física','fizyka',1,3,11),(403,'la informática','informatyka',1,3,11),(404,'la educación física','wychowanie fizyczne',1,3,11),(405,'el tutor','wychowawca klasy',1,3,11),(406,'activo','aktywny',1,3,9),(407,'antiguo','stary, zabytkowy',1,3,9),(408,'bonito','ładny',1,3,9),(409,'correcto','poprawny',1,3,9),(410,'flaco','chudy',1,3,9),(411,'favorito','ulubiony',1,3,9),(412,'malo','zły',1,3,9),(413,'moderno','nowoczesny',1,3,9),(414,'nervioso','nerwowy',1,3,9),(415,'privado','prywatny',1,3,9),(416,'serio','poważny',1,3,9),(417,'simpático','sympatyczny',1,3,9),(418,'amable','miły',1,3,9),(419,'artificial','sztuczny',1,3,9),(420,'emocionante','emocjonujący',1,3,9),(421,'fatal','fatalny',1,3,9),(422,'elegante','elegancki',1,3,9),(423,'fuerte','silny',1,3,9),(424,'guay','fajny',1,3,9),(425,'horrible','straszny, okropny',1,3,9),(426,'importante','ważny',1,3,9),(427,'increíble','niewiarygodny',1,3,9),(428,'inteligentne','inteligentny',1,3,9),(429,'joven','młody',1,3,9),(430,'posible','możliwy',1,3,9),(431,'responsable','odpowiedzialny',1,3,9),(432,'cuadrado','kwadratowy',1,3,9),(433,'complicado','skomplikowany',1,3,9),(434,'colorido','kolorowy',1,3,9),(435,'fresco','świeży',1,3,9),(436,'fantástico','fantastyczny',1,3,9),(437,'ligero','lekki',1,3,9),(438,'libre','wolny (nie jako prędkość)',1,3,9),(439,'igual','identyczny',1,3,9),(440,'grün','zielony',2,1,2),(441,'braun','brązowy',2,1,2),(442,'die Farbe','kolor',2,1,2),(443,'weiß','biały',2,1,2),(444,'gelb','żółty',2,1,2),(445,'beige','beżowy',2,1,2),(446,'orange','pomarańczowy',2,1,2),(447,'rot','czerwony',2,1,2),(448,'rosa','różowy',2,1,2),(449,'pink','intensywnie różowy',2,1,2),(450,'violett, lila','fioletowy, liliowy',2,1,2),(451,'blau','niebieski',2,1,2),(452,'grau','szary',2,1,2),(453,'silbern','srebrny',2,1,2),(454,'golden','złoty',2,1,2),(455,'schwarz','czarny',2,1,2),(456,'hell','jasny',2,1,2),(457,'dunkel','ciemny',2,1,2),(458,'bunt','kolorowy, wielobarwny',2,1,2),(459,'farbig','barwny',2,1,2),(460,'farblos','bezbarwny',2,1,2),(461,'einfarbig','jednokolorowy',2,1,2),(462,'vielfarbig','wielokolorowy',2,1,2);
/*!40000 ALTER TABLE `slowka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `haslo` varchar(255) DEFAULT NULL,
  `rola` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1234',1),(3,'user','5678',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zestawy`
--

DROP TABLE IF EXISTS `zestawy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zestawy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  `jezyk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jezyk` (`jezyk`),
  KEY `owner` (`owner`),
  CONSTRAINT `zestawy_ibfk_1` FOREIGN KEY (`jezyk`) REFERENCES `jezyki` (`id`),
  CONSTRAINT `zestawy_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zestawy`
--

LOCK TABLES `zestawy` WRITE;
/*!40000 ALTER TABLE `zestawy` DISABLE KEYS */;
INSERT INTO `zestawy` VALUES (1,'Słówka I',1,1),(2,'Słówka II',1,1),(3,'Słówka III',1,1),(4,'Słówka I',1,2);
/*!40000 ALTER TABLE `zestawy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-12 22:25:11
