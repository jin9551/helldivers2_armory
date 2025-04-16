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
-- Table structure for table `tb_equipment`
--

DROP TABLE IF EXISTS `tb_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_equipment` (
  `equip_id` int NOT NULL AUTO_INCREMENT COMMENT '무기 번호\\n',
  `equip_type` int DEFAULT NULL COMMENT '장비 종류 : 1. 무기, 2. 보조무기, 3. 투척무기, 4. 지원무기, 5. 배낭, 6. 차량',
  `name` varchar(100) NOT NULL,
  `img_path` varchar(100) DEFAULT NULL COMMENT '이미지 경로\n',
  PRIMARY KEY (`equip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3 COMMENT='헬다이버즈 2 주무기 개요';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_equipment`
--

LOCK TABLES `tb_equipment` WRITE;
/*!40000 ALTER TABLE `tb_equipment` DISABLE KEYS */;
INSERT INTO `tb_equipment` VALUES (1,1,'AR-23 리버레이터','/img/equipment/AR-23_Liberator_Primary_Weaponry.webp'),(2,1,'AR-23P 리버레이터 페네트레이터','/img/equipment/AR-23P_Liberator_Penetrator_Primary_Weaponry.webp'),(3,1,'AR-23C 리버레이터 컨커시브','/img/equipment/AR-23C_Liberator_Concussive_Primary_Weaponry.webp'),(4,1,'AR-23A 리버레이터 카빈','/img/equipment/AR-23A_Liberator_Carbine_Primary_Weaponry.webp'),(5,1,'AR-61 텐더라이저','/img/equipment/AR-61_Tenderizer_Primary_Weaponry.webp'),(6,1,'BR-14 어드주디케이터','/img/equipment/BR-14_Adjudicator_Primary_Weaponry.webp'),(7,1,'StA-52 돌격소총','/img/equipment/StA-52_Assault_Rifle_Primary_Weaponry.webp'),(8,1,'R-2124 콘스티튜션','/img/equipment/R-2124_Constitution_Primary_Weaponry.webp'),(9,1,'R-63 딜리전스','/img/equipment/R-63_Diligence_Primary_Weaponry.webp'),(10,1,'R-63CS 딜리전스 카운터 저격소총','/img/equipment/R-63CS_Diligence_Counter_Sniper_Primary_Weaponry.webp'),(11,1,'PLAS-39 가속 소총','/img/equipment/PLAS-39_Accelerator_Rifle_Primary_Weaponry.webp'),(12,1,'MP-98 나이트','/img/equipment/MP-98_Knight_Primary_Weaponry.webp'),(13,1,'StA-11 기관단총','/img/equipment/StA-11_SMG_Primary_Weaponry.webp'),(14,1,'SMG-32 레프리맨드','/img/equipment/SMG-32_Reprimand_Primary_Weaponry.webp'),(15,1,'SMG-37 디펜더','/img/equipment/SMG-37_Defender_Primary_Weaponry.webp'),(16,1,'SMG-72 퍼멜러','/img/equipment/SMG-72_Pummeler_Primary_Weaponry.webp'),(17,1,'SG-8 퍼니셔','/img/equipment/SG-8_Punisher_Primary_Weaponry.webp'),(18,1,'SG-8S 슬러거','/img/equipment/SG-8S_Slugger_Primary_Weaponry.webp'),(19,1,'SG-20 홀트','/img/equipment/SG-20_Halt_Primary_Weaponry.webp'),(20,1,'SG-451 쿡아웃','/img/equipment/SG-451_Cookout_Primary_Weaponry.webp'),(21,1,'SG-225 브레이커','/img/equipment/SG-225_Breaker_Primary_Weaponry.webp'),(22,1,'SG-225SP 브레이커 스프레이 앤 프레이','/img/equipment/SG-225SP_Breaker_Spray&Pray_Primary_Weaponry.webp'),(23,1,'SG-225IE 브레이커 인센디어리','/img/equipment/SG-225IE_Breaker_Incendiary_Primary_Weaponry.webp'),(24,1,'CB-9 익스플로딩 크로스보우','/img/equipment/CB-9_Exploding_Crossbow_Primary_Weaponry.webp'),(25,1,'R-36 이럽터','/img/equipment/R-36_Eruptor_Primary_Weaponry.webp'),(26,1,'SG-8P 퍼니셔 플라즈마','/img/equipment/SG-8P_Punisher_Plasma_Primary_Weaponry.webp'),(27,1,'ARC-12 블리처','/img/equipment/ARC-12_Blitzer_Primary_Weaponry.webp'),(28,1,'LAS-5 사이스','/img/equipment/LAS-5_Scythe_Primary_Weaponry.webp'),(29,1,'LAS-16 시클','/img/equipment/LAS-16_Sickle_Primary_Weaponry.webp'),(30,1,'LAS-17 더블 엣지 시클','/img/equipment/LAS-17_Double-Edge_Sickle_Primary_Weaponry.webp'),(31,1,'PLAS-1 스코처','/img/equipment/PLAS-1_Scorcher_Primary_Weaponry.webp'),(32,1,'PLAS-101 퓨리파이어','/img/equipment/PLAS-101_Purifier_Primary_Weaponry.webp'),(33,1,'FLAM-66 토처','/img/equipment/FLAM-66_Torcher_Primary_Weaponry.webp'),(34,1,'JAR-5 도미네이터','/img/equipment/JAR-5_Dominator_Primary_Weaponry.webp'),(35,2,'P-2 피스메이커','/img/equipment/P-2_Peacemaker_Secondary_Weaponry.webp'),(36,2,'P-19 리디머','/img/equipment/P-19_Redeemer_Secondary_Weaponry.webp'),(37,2,'P-4 세너터','/img/equipment/P-4_Senator_Secondary_Weaponry.webp'),(38,2,'P-113 버딕트','/img/equipment/P-113_Verdict_Secondary_Weaponry.webp'),(39,2,'LAS-7 대거','/img/equipment/LAS-7_Dagger_Secondary_Weaponry.webp'),(40,2,'PLAS-15 로열리스트','/img/equipment/PLAS-15_Loyalist_Secondary_Weaponry.webp'),(41,2,'GP-31 유탄 권총','/img/equipment/GP-31_Grenade_Pistol_Secondary_Weaponry.webp'),(42,2,'GP-31 얼티메이텀','/img/equipment/GP-31_Ultimatum_Secondary_Weaponry.webp'),(43,2,'SG-22 부시웨커','/img/equipment/SG-22_Bushwhacker_Secondary_Weaponry.webp'),(44,2,'P-72 크리스퍼','/img/equipment/P-72_Crisper_Secondary_Weaponry.webp'),(45,2,'P-11 각성제 권총','/img/equipment/P-11_Stim_Pistol_Secondary_Weaponry.webp'),(46,2,'CQC-19 기절 창','/img/equipment/CQC-19_Stun_Lance_Secondary_Weaponry.png'),(47,2,'CQC-30 기절 제압봉','/img/equipment/CQC-30_Stun_Baton_Secondary_Weaponry.webp'),(48,2,'CQC-5 컴뱃 해칫','/img/equipment/CQC-5_Combat_Hatchet_Secondary_Weaponry.webp'),(49,3,'G-12 고폭','/img/equipment/G-12_High_Explosive_Throwable_Weaponry.webp'),(50,3,'G-6 세열','/img/equipment/G-6_Frag_Throwable_Weaponry.webp'),(51,3,'G-10 소이','/img/equipment/G-10_Incendiary_Throwable_Weaponry.webp'),(52,3,'G-16 충격','/img/equipment/G-16_Impact_Throwable_Weaponry.webp'),(53,3,'G-13 소이 충격','/img/equipment/G-13_Incendiary_Impact_Throwable_Weaponry.webp'),(54,3,'G-3 연막','/img/equipment/G-3_Smoke_Throwable_Weaponry.webp'),(55,3,'G-23 기절','/img/equipment/G-23_Stun_Throwable_Weaponry.webp'),(56,3,'G-123 테르밋','/img/equipment/G-123_Thermite_Throwable_Weaponry.webp'),(57,3,'K-2 투척 나이프','/img/equipment/K-2_Throwing_Knife_Throwable_Weaponry.webp'),(58,3,'G-4 가스','/img/equipment/G-4_Gas_Throwable_Weaponry.webp'),(59,3,'G-50 시커','/img/equipment/G-50_Seeker_Throwable_Weaponry.webp'),(60,4,'MG-43 기관총','/img/equipment/Machine_Gun_Stratagem_Icon.webp'),(61,4,'APW-1 대물소총','/img/equipment/Anti-Materiel_Rifle_Stratagem_Icon.webp'),(62,4,'M-105 스털워트','/img/equipment/Stalwart_Stratagem_Icon.webp'),(63,4,'MG-206 중기관총','/img/equipment/Heavy_Machine_Gun_Stratagem_Icon.webp'),(64,4,'RS-422 레일건','/img/equipment/Railgun_Stratagem_Icon.webp'),(65,4,'EAT-17 일회성 대전차','/img/equipment/Expendable_Anti-Tank_Stratagem_Icon.webp'),(66,4,'MLS-4X 코만도','/img/equipment/256px-Commando_Stratagem_Icon.webp'),(67,4,'GR-8 무반동포','/img/equipment/Recoilless_Rifle_Stratagem_Icon.webp'),(68,4,'AC-8 오토캐넌','/img/equipment/Autocannon_Stratagem_Icon.webp'),(69,4,'FAF-14 스피어','/img/equipment/Spear_Stratagem_Icon.webp'),(70,4,'GL-21 유탄 발사기','/img/equipment/Grenade_Launcher_Stratagem_Icon.webp'),(71,4,'RL-77 공중폭발 로켓 발사기','/img/equipment/RL-77_Airburst_Rocket_Launcher_Stratagem_Icon.webp'),(72,4,'StA-X3 W.A.S.P. 발사기','/img/equipment/StA-X3_W.webp'),(73,4,'FLAM-40 화염방사기','/img/equipment/Flamethrower_Stratagem_Icon.webp'),(74,4,'LAS-98 레이저 캐넌','/img/equipment/Laser_Cannon_Stratagem_Icon.webp'),(75,4,'LAS-99 퀘이사 캐넌','/img/equipment/Quasar_Cannon_Stratagem_Icon.webp'),(76,4,'ARC-3 아크 발사기','/img/equipment/Arc_Thrower_Stratagem_Icon.webp'),(77,4,'TX-41 스터릴라이저','/img/equipment/Sterilizer_Stratagem_Icon.webp'),(78,5,'LIFT-850 점프 팩','/img/equipment/Jump_Pack_Stratagem_Icon.webp'),(79,5,'B-1 보급 팩','/img/equipment/50px-Supply_Pack_Stratagem_Icon.webp'),(80,4,'AX/AR-23 가드 독','/img/equipment/50px-Guard_Dog_Stratagem_Icon.webp'),(81,4,'AX/LAS-5 가드 독 로버','/img/equipment/50px-Guard_Dog_Rover_Stratagem_Icon.webp'),(82,4,'AX/TX-13 가드 독 독 브레스','/img/equipment/50px-Guard_Dog_Dog_Breath_Stratagem_Icon.webp'),(83,5,'SH-20 탄도 방패 배낭','/img/equipment/50px-Ballistic_Shield_Backpack_Stratagem_Icon.webp'),(84,5,'SH-32 방어막 생성 팩','/img/equipment/50px-Shield_Generator_Pack_Stratagem_Icon.webp'),(85,5,'SH-51 방향 방패','/img/equipment/50px-SH-51_Directional_Shield_Stratagem_Icon.webp'),(86,5,'B-100 휴대용 지옥폭탄','/img/equipment/50px-Portable_Hellbomb_Stratagem_Icon.webp'),(87,6,'EXO-45 애국자 엑소슈트','/img/equipment/50px-EXO-45_Patriot_Exosuit_Stratagem_Icon.webp'),(88,6,'EXO-49 해방자 엑소슈트','/img/equipment/50px-EXO-49_Emancipator_Exosuit_Stratagem_Icon.webp'),(89,6,'M-102 고속 정찰 차량','/img/equipment/M-102_Fast_Recon_Vehicle_Stratagem_Icon.webp'),(90,4,'중절식 산탄총','/img/equipment/Break-Action_Shotgun_Weapon_Icon.webp'),(91,4,'참호 도구','/img/equipment/Exclamation_Icon.webp');
/*!40000 ALTER TABLE `tb_equipment` ENABLE KEYS */;
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
