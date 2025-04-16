-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: helldiverproject
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `tb_enemy`
--

DROP TABLE IF EXISTS `tb_enemy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_enemy` (
  `e_id` int NOT NULL AUTO_INCREMENT,
  `e_race` varchar(45) DEFAULT NULL COMMENT '종족',
  `e_type` int DEFAULT NULL COMMENT '적 타입: 1. 소형, 2. 중형, 3. 대형',
  `name` varchar(100) DEFAULT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_enemy`
--

LOCK TABLES `tb_enemy` WRITE;
/*!40000 ALTER TABLE `tb_enemy` DISABLE KEYS */;
INSERT INTO `tb_enemy` VALUES (1,'테르미니드',1,'스캐빈저','/img/enemy/terminid/150px-Scavenger_Enemy_Icon.webp'),(2,'테르미니드',1,'스포어 버스트 스캐빈저','/img/enemy/terminid/150px-Spore_Burst_Scavenger_Enemy_Icon.webp'),(3,'테르미니드',1,'바일 스피터','/img/enemy/terminid/150px-Bile_Spitter_Enemy_Icon.webp'),(4,'테르미니드',1,'파운서','/img/enemy/terminid/150px-Pouncer_Enemy_Icon.webp'),(5,'테르미니드',1,'헌터','/img/enemy/terminid/150px-Hunter_Enemy_Icon.webp'),(6,'테르미니드',1,'스포어 버스트 헌터','/img/enemy/terminid/150px-Spore_Burst_Hunter_Enemy_Icon.webp'),(7,'테르미니드',1,'프레데터 헌터','/img/enemy/terminid/150px-Predator_Hunter_Enemy_Icon.webp'),(8,'테르미니드',1,'워리어','/img/enemy/terminid/150px-Warrior_Enemy_Icon.webp'),(9,'테르미니드',1,'바일 워리어','/img/enemy/terminid/150px-Bile_Warrior_Enemy_Icon.webp'),(10,'테르미니드',1,'알파 워리어','/img/enemy/terminid/150px-Alpha_Warrior_Enemy_Icon.webp'),(11,'테르미니드',1,'스포어 버스트 워리어','/img/enemy/terminid/150px-Spore_Burst_Warrior_Enemy_Icon.webp'),(12,'테르미니드',1,'하이브 가드','/img/enemy/terminid/150px-Hive_Guard_Enemy_Icon.webp'),(13,'테르미니드',1,'슈리커','/img/enemy/terminid/150px-Shrieker_Enemy_Icon.webp'),(14,'테르미니드',2,'브루드 커맨더','/img/enemy/terminid/150px-Brood_Commander_Enemy_Icon.webp'),(15,'테르미니드',2,'알파 커맨더','/img/enemy/terminid/150px-Alpha_Commander_Enemy_Icon.webp'),(16,'테르미니드',2,'너싱 스퓨어','/img/enemy/terminid/150px-Nursing_Spewer_Enemy_Icon.webp'),(17,'테르미니드',2,'바일 스퓨어','/img/enemy/terminid/150px-Bile_Spewer_Enemy_Icon.webp'),(18,'테르미니드',2,'스토커','/img/enemy/terminid/150px-Stalker_Enemy_Icon.webp'),(19,'테르미니드',2,'프레데터 스토커','/img/enemy/terminid/150px-Predator_Stalker_Enemy_Icon.webp'),(20,'테르미니드',3,'차저','/img/enemy/terminid/150px-Charger_Enemy_Icon.webp'),(21,'테르미니드',3,'스포어 차저','/img/enemy/terminid/150px-Spore_Charger_Enemy_Icon.webp'),(22,'테르미니드',3,'차저 베히모스','/img/enemy/terminid/150px-Charger_Behemoth_Enemy_Icon.webp'),(23,'테르미니드',3,'임페일러	','/img/enemy/terminid/150px-Impaler_Enemy_Icon.webp'),(24,'테르미니드',3,'바일 타이탄','/img/enemy/terminid/180px-Bile_Titan_Enemy_Icon.webp'),(25,'오토마톤',1,'트루퍼','/img/enemy/automaton/150px-Trooper,_Raider_Enemy_Icon.webp'),(26,'오토마톤',1,'커미서','/img/enemy/automaton/150px-Commissar_Enemy_Icon.webp'),(27,'오토마톤',2,'스카우트 스트라이더','/img/enemy/automaton/150px-Scout_Strider_Enemy_Icon.webp'),(28,'오토마톤',2,'강화 스카우트 스트라이더','/img/enemy/automaton/150px-Reinforced_Scout_Strider_Enemy_Icon.webp'),(29,'오토마톤',2,'데버스테이터','/img/enemy/automaton/150px-Devastator_Enemy_Icon.webp'),(30,'오토마톤',2,'버서커','/img/enemy/automaton/150px-Berserker_Enemy_Icon.webp'),(31,'오토마톤',3,'헐크','/img/enemy/automaton/150px-Hulk_Enemy_Icon.webp'),(32,'오토마톤',3,'건십','/img/enemy/automaton/190px-Gunship_Enemy_Icon.webp'),(33,'오토마톤',3,'어나이얼레이터 탱크','/img/enemy/automaton/150px-Annihilator_Tank_Enemy_Icon.webp'),(34,'오토마톤',3,'슈레더 탱크','/img/enemy/automaton/150px-Shredder_Tank_Enemy_Icon.webp'),(35,'오토마톤',3,'바라저 탱크','/img/enemy/automaton/150px-Barrager_Tank_Enemy_Icon.webp'),(36,'오토마톤',3,'팩토리 스트라이더','/img/enemy/automaton/150px-Factory_Strider_Enemy_Icon.webp'),(37,'오토마톤',3,'드롭쉽','/img/enemy/automaton/190px-Dropship_Enemy_Icon.webp'),(38,'오토마톤',1,'소형 포탑','/img/enemy/automaton/190px-Bunker_Turret_Enemy_Icon.webp'),(39,'오토마톤',3,'캐넌 포탑','/img/enemy/automaton/150px-Cannon_Turret_Enemy_Icon.webp'),(40,'일루미닛',1,'무권자 소형','/img/enemy/illuminate/150px-Voteless_Enemy_Icon.webp'),(41,'일루미닛',1,'무권자 중형','/img/enemy/illuminate/150px-Voteless_Enemy_Icon.webp'),(42,'일루미닛',1,'무권자 대형','/img/enemy/illuminate/150px-Voteless_Enemy_Icon.webp'),(43,'일루미닛',2,'오버시어','/img/enemy/illuminate/150px-Overseer_Enemy_Icon.webp'),(44,'일루미닛',2,'고위 오버시어','/img/enemy/illuminate/150px-Elevated_Overseer_Enemy_Icon.webp'),(45,'일루미닛',1,'와처','/img/enemy/illuminate/150px-Watcher_Enemy_Icon.webp'),(46,'일루미닛',3,'하베스터','/img/enemy/illuminate/150px-Harvester_Enemy_Icon.webp'),(47,'일루미닛',3,'워프함선','/img/enemy/illuminate/290px-Warp_Ship_Enemy_Icon.webp');
/*!40000 ALTER TABLE `tb_enemy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-16 13:41:32
