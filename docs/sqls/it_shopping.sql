-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: it_shopping
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `detail_case`
--

DROP TABLE IF EXISTS `detail_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_case` (
  `detail_case_seq` int NOT NULL AUTO_INCREMENT,
  `detail_case_type` varchar(15) NOT NULL,
  `detail_case_board_type` varchar(10) NOT NULL,
  `detail_case_power_type` varchar(10) NOT NULL,
  `detail_case_horz` int NOT NULL,
  `detail_case_vertical` int NOT NULL,
  `detail_case_height` int NOT NULL,
  `detail_case_usb20` int DEFAULT NULL,
  `detail_case_usb30` int DEFAULT NULL,
  `detail_case_usb31` int DEFAULT NULL,
  `detail_case_usb32` int DEFAULT NULL,
  `detail_case_usbc` int DEFAULT NULL,
  `detail_case_mic` int DEFAULT NULL,
  `detail_case_spk` int DEFAULT NULL,
  PRIMARY KEY (`detail_case_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_case`
--

LOCK TABLES `detail_case` WRITE;
/*!40000 ALTER TABLE `detail_case` DISABLE KEYS */;
INSERT INTO `detail_case` VALUES (1,'미들타워','표준-ATX','ATX',230,458,410,2,1,0,0,0,1,1);
/*!40000 ALTER TABLE `detail_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_cpu`
--

DROP TABLE IF EXISTS `detail_cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_cpu` (
  `detail_cpu_seq` int NOT NULL AUTO_INCREMENT,
  `detail_cpu_codename` varchar(50) NOT NULL,
  `detail_cpu_socket` varchar(10) NOT NULL,
  `detail_cpu_core` int NOT NULL DEFAULT '1',
  `detail_cpu_thread` int NOT NULL DEFAULT '1',
  `detail_cpu_l1_cache` int DEFAULT NULL,
  `detail_cpu_l2_cache` int DEFAULT NULL,
  `detail_cpu_l3_cache` int DEFAULT NULL,
  `detail_cpu_ram_type` varchar(10) NOT NULL,
  `detail_cpu_ram_clock` int NOT NULL,
  `detail_cpu_base_clock` int NOT NULL,
  `detail_cpu_boost_clock` int NOT NULL,
  `detail_cpu_tdp` int NOT NULL,
  PRIMARY KEY (`detail_cpu_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_cpu`
--

LOCK TABLES `detail_cpu` WRITE;
/*!40000 ALTER TABLE `detail_cpu` DISABLE KEYS */;
INSERT INTO `detail_cpu` VALUES (1,'버미어','AM4',6,12,NULL,3,32,'DDR4',3200,3700,4600,65),(2,'버미어','AM4',6,12,NULL,3,32,'DDR4',3200,3500,4400,65),(3,'엘더레이크','소켓1700',6,12,NULL,NULL,18,'DDR4/DDR5',4800,2500,4400,65),(4,'엘더레이크','소켓1700',12,20,NULL,NULL,25,'DDR4/DDR5',3600,3600,5000,125),(5,'버미어','AM4',8,16,NULL,4,96,'DDR4',3200,3400,4500,105),(12,'버미어','AM4',8,16,NULL,3,64,'DDR4',3200,3500,4300,105);
/*!40000 ALTER TABLE `detail_cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_gpu`
--

DROP TABLE IF EXISTS `detail_gpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_gpu` (
  `detail_gpu_seq` int NOT NULL AUTO_INCREMENT,
  `detail_gpu_chipset` varchar(20) NOT NULL,
  `detail_gpu_core` int NOT NULL,
  `detail_gpu_vram_type` varchar(10) NOT NULL,
  `detail_gpu_vram_clock` int NOT NULL,
  `detail_gpu_vram_size` int NOT NULL,
  `detail_gpu_base_clock` int NOT NULL,
  `detail_gpu_boost_clock` int NOT NULL,
  `detail_gpu_multi_gpu` varchar(20) DEFAULT NULL,
  `detail_gpu_pwr_type` varchar(10) DEFAULT NULL,
  `detail_gpu_watts` int NOT NULL,
  `detail_gpu_pwr_watts` int NOT NULL,
  `detail_gpu_interface` varchar(30) NOT NULL,
  `detail_gpu_horz` int NOT NULL,
  `detail_gpu_vert` int NOT NULL,
  `detail_gpu_height` int NOT NULL,
  `detail_gpu_slots` int NOT NULL,
  PRIMARY KEY (`detail_gpu_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_gpu`
--

LOCK TABLES `detail_gpu` WRITE;
/*!40000 ALTER TABLE `detail_gpu` DISABLE KEYS */;
INSERT INTO `detail_gpu` VALUES (1,'RTX 3060',3584,'GDDR6',15000,12288,1320,1837,NULL,'8x1',180,550,'PCIe4.0 x 16',245,0,40,2),(2,'RTX 3070 Ti',6144,'GDDR6X',19000,8192,1575,1770,NULL,'8x2',290,700,'PCIe4.0x16',294,55,40,2);
/*!40000 ALTER TABLE `detail_gpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_hdd`
--

DROP TABLE IF EXISTS `detail_hdd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_hdd` (
  `detail_hdd_seq` int NOT NULL AUTO_INCREMENT,
  `detail_hdd_volume_size` int NOT NULL,
  `detail_hdd_buffer_size` int NOT NULL,
  `detail_hdd_rpm` int NOT NULL,
  `detail_hdd_read_spd` int NOT NULL,
  `detail_hdd_write_spd` int NOT NULL,
  PRIMARY KEY (`detail_hdd_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_hdd`
--

LOCK TABLES `detail_hdd` WRITE;
/*!40000 ALTER TABLE `detail_hdd` DISABLE KEYS */;
INSERT INTO `detail_hdd` VALUES (1,2000,256,7200,220,220);
/*!40000 ALTER TABLE `detail_hdd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_kbd`
--

DROP TABLE IF EXISTS `detail_kbd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_kbd` (
  `detail_kbd_seq` int NOT NULL AUTO_INCREMENT,
  `detail_kbd_contact_type` varchar(20) NOT NULL,
  `detail_kbd_conn_type` varchar(20) NOT NULL,
  `detail_kbd_shape` varchar(20) NOT NULL,
  `detail_kbd_backlight` varchar(20) DEFAULT NULL,
  `detail_kbd_interface` varchar(20) NOT NULL,
  `detail_kbd_key_cnt` int NOT NULL,
  PRIMARY KEY (`detail_kbd_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_kbd`
--

LOCK TABLES `detail_kbd` WRITE;
/*!40000 ALTER TABLE `detail_kbd` DISABLE KEYS */;
INSERT INTO `detail_kbd` VALUES (1,'멤브레인','무선 2.4GHz','일반형',NULL,'USB',106);
/*!40000 ALTER TABLE `detail_kbd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_mb`
--

DROP TABLE IF EXISTS `detail_mb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_mb` (
  `detail_mb_seq` int NOT NULL AUTO_INCREMENT,
  `detail_mb_socket` varchar(10) NOT NULL,
  `detail_mb_dram_type` varchar(10) NOT NULL,
  `detail_mb_dram_spd` int NOT NULL,
  `detail_mb_dram_slots` int NOT NULL DEFAULT '2',
  `detail_mb_form` varchar(10) NOT NULL,
  `detail_mb_vertical` int NOT NULL,
  `detail_mb_horz` int NOT NULL,
  `detail_mb_pwr_phase` varchar(10) NOT NULL,
  `detail_mb_hdmi` int DEFAULT NULL,
  `detail_mb_dvi` int DEFAULT NULL,
  `detail_mb_dsub` int DEFAULT NULL,
  `detail_mb_dp` int DEFAULT NULL,
  `detail_mb_wifi` int DEFAULT NULL,
  `detail_mb_rj45` int DEFAULT NULL,
  `detail_mb_pci_ver` varchar(20) NOT NULL,
  `detail_mb_pci` int NOT NULL,
  `detail_mb_m2` int DEFAULT NULL,
  `detail_mb_m2_type` varchar(20) DEFAULT NULL,
  `detail_mb_m2_size` int DEFAULT NULL,
  `detail_mb_sata_cnt` int DEFAULT NULL,
  `detail_mb_usb20` int DEFAULT NULL,
  `detail_mb_usb30` int DEFAULT NULL,
  `detail_mb_usb31` int DEFAULT NULL,
  `detail_mb_usb32` int DEFAULT NULL,
  `detail_mb_usbc` int DEFAULT NULL,
  `detail_mb_thunderbolt3` int DEFAULT NULL,
  `detail_mb_thunderbolt4` int DEFAULT NULL,
  `detail_mb_thunderbolt5` int DEFAULT NULL,
  PRIMARY KEY (`detail_mb_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_mb`
--

LOCK TABLES `detail_mb` WRITE;
/*!40000 ALTER TABLE `detail_mb` DISABLE KEYS */;
INSERT INTO `detail_mb` VALUES (1,'소켓1700','DDR4',5333,4,'M-ATX',244,244,'6+2+1',1,NULL,1,2,NULL,1,'PCIe 4.0 x 16',2,2,'PCIe 4.0x4',2280,4,2,NULL,NULL,3,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `detail_mb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_mouse`
--

DROP TABLE IF EXISTS `detail_mouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_mouse` (
  `detail_mouse_seq` int NOT NULL AUTO_INCREMENT,
  `detail_mouse_sensor` varchar(20) NOT NULL,
  `detail_mouse_conn_type` varchar(20) NOT NULL,
  `detail_mouse_dpi` int NOT NULL,
  `detail_mouse_interface` varchar(20) DEFAULT NULL,
  `detail_mouse_btns` int NOT NULL,
  PRIMARY KEY (`detail_mouse_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_mouse`
--

LOCK TABLES `detail_mouse` WRITE;
/*!40000 ALTER TABLE `detail_mouse` DISABLE KEYS */;
INSERT INTO `detail_mouse` VALUES (1,'광','유선',8000,'USB',5);
/*!40000 ALTER TABLE `detail_mouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_pwr`
--

DROP TABLE IF EXISTS `detail_pwr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_pwr` (
  `detail_pwr_seq` int NOT NULL AUTO_INCREMENT,
  `detail_pwr_rated` int NOT NULL,
  `detail_pwr_cert_rate` varchar(10) NOT NULL,
  `detail_pwr_cable_type` varchar(10) NOT NULL,
  `detail_pwr_type` varchar(10) NOT NULL,
  PRIMARY KEY (`detail_pwr_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_pwr`
--

LOCK TABLES `detail_pwr` WRITE;
/*!40000 ALTER TABLE `detail_pwr` DISABLE KEYS */;
INSERT INTO `detail_pwr` VALUES (1,500,'미인증','케이블일체형','ATX');
/*!40000 ALTER TABLE `detail_pwr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_spk`
--

DROP TABLE IF EXISTS `detail_spk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_spk` (
  `detail_spk_seq` int NOT NULL AUTO_INCREMENT,
  `detail_spk_channel` varchar(10) NOT NULL,
  `detail_spk_bluetooth` varchar(10) DEFAULT NULL,
  `detail_spk_output` int NOT NULL,
  PRIMARY KEY (`detail_spk_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_spk`
--

LOCK TABLES `detail_spk` WRITE;
/*!40000 ALTER TABLE `detail_spk` DISABLE KEYS */;
INSERT INTO `detail_spk` VALUES (1,'2.0',NULL,5);
/*!40000 ALTER TABLE `detail_spk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_ssd`
--

DROP TABLE IF EXISTS `detail_ssd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_ssd` (
  `detail_ssd_seq` int NOT NULL AUTO_INCREMENT,
  `detail_ssd_interface` varchar(20) NOT NULL,
  `detail_ssd_iops` int NOT NULL,
  `detail_ssd_read_spd` int NOT NULL,
  `detail_ssd_write_spd` int NOT NULL,
  `detail_ssd_volume_size` int NOT NULL,
  `detail_ssd_dram_size` int DEFAULT NULL,
  `detail_ssd_density` varchar(10) NOT NULL,
  PRIMARY KEY (`detail_ssd_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_ssd`
--

LOCK TABLES `detail_ssd` WRITE;
/*!40000 ALTER TABLE `detail_ssd` DISABLE KEYS */;
INSERT INTO `detail_ssd` VALUES (1,'M.2 NVMe 1.3c',1000000,7000,5000,1024,1024,'TLC');
/*!40000 ALTER TABLE `detail_ssd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_products`
--

DROP TABLE IF EXISTS `discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount_products` (
  `dp_seq` int NOT NULL AUTO_INCREMENT,
  `dp_pi_seq` int NOT NULL,
  `dp_rate` int NOT NULL,
  `dp_start_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dp_end_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dp_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dp_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_products`
--

LOCK TABLES `discount_products` WRITE;
/*!40000 ALTER TABLE `discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_info`
--

DROP TABLE IF EXISTS `estimate_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estimate_info` (
  `ei_seq` int NOT NULL AUTO_INCREMENT,
  `ei_mi_seq` int NOT NULL,
  `ei_title` varchar(50) NOT NULL DEFAULT '견적서',
  `ei_reg_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ei_mod_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ei_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_info`
--

LOCK TABLES `estimate_info` WRITE;
/*!40000 ALTER TABLE `estimate_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimate_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_info_products`
--

DROP TABLE IF EXISTS `estimate_info_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estimate_info_products` (
  `eip_seq` int NOT NULL AUTO_INCREMENT,
  `eip_pi_seq` int NOT NULL,
  `eip_ei_seq` int NOT NULL,
  `eip_count` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`eip_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_info_products`
--

LOCK TABLES `estimate_info_products` WRITE;
/*!40000 ALTER TABLE `estimate_info_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimate_info_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_info`
--

DROP TABLE IF EXISTS `manufacturer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer_info` (
  `manufacturer_seq` int NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(100) NOT NULL,
  PRIMARY KEY (`manufacturer_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_info`
--

LOCK TABLES `manufacturer_info` WRITE;
/*!40000 ALTER TABLE `manufacturer_info` DISABLE KEYS */;
INSERT INTO `manufacturer_info` VALUES (1,'AMD'),(2,'인텔'),(3,'GIGABYTE'),(4,'이엠텍'),(5,'삼성전자'),(6,'Seagate'),(7,'마이크로닉스'),(8,'앱코'),(9,'로지텍'),(10,'Britz');
/*!40000 ALTER TABLE `manufacturer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `md_recommend_products`
--

DROP TABLE IF EXISTS `md_recommend_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_recommend_products` (
  `mrp_seq` int NOT NULL AUTO_INCREMENT,
  `mrp_pi_seq` int NOT NULL,
  PRIMARY KEY (`mrp_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_recommend_products`
--

LOCK TABLES `md_recommend_products` WRITE;
/*!40000 ALTER TABLE `md_recommend_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `md_recommend_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_info`
--

DROP TABLE IF EXISTS `member_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_info` (
  `mi_seq` int NOT NULL AUTO_INCREMENT,
  `mi_id` varchar(16) NOT NULL,
  `mi_pwd` varchar(64) NOT NULL,
  `mi_name` varchar(50) NOT NULL,
  `mi_nickname` varchar(14) DEFAULT NULL,
  `mi_phone` varchar(14) NOT NULL,
  `mi_address` varchar(255) NOT NULL,
  `mi_zip_code` int NOT NULL,
  `mi_birth` datetime NOT NULL,
  `mi_gen` int NOT NULL DEFAULT '0',
  `mi_email` varchar(100) NOT NULL,
  `mi_status` int NOT NULL DEFAULT '1',
  `mi_reg_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mi_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_info`
--

LOCK TABLES `member_info` WRITE;
/*!40000 ALTER TABLE `member_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_profile_img`
--

DROP TABLE IF EXISTS `member_profile_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_profile_img` (
  `mpi_seq` int NOT NULL AUTO_INCREMENT,
  `mpi_mi_seq` int NOT NULL,
  `mpi_filename` varchar(255) NOT NULL,
  `mpi_thumb` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`mpi_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_profile_img`
--

LOCK TABLES `member_profile_img` WRITE;
/*!40000 ALTER TABLE `member_profile_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_profile_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_suspend_info`
--

DROP TABLE IF EXISTS `member_suspend_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_suspend_info` (
  `msi_seq` int NOT NULL AUTO_INCREMENT,
  `msi_mi_seq` int NOT NULL,
  `msi_reason` varchar(100) NOT NULL,
  `msi_reg_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msi_term` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`msi_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_suspend_info`
--

LOCK TABLES `member_suspend_info` WRITE;
/*!40000 ALTER TABLE `member_suspend_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_suspend_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_info` (
  `oi_seq` int NOT NULL AUTO_INCREMENT,
  `oi_id` varchar(12) NOT NULL,
  `oi_mi_seq` int NOT NULL,
  `oi_reg_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `oi_status` int NOT NULL DEFAULT '1',
  `oi_orderer_name` varchar(50) NOT NULL,
  `oi_orderer_phone` varchar(14) NOT NULL,
  `oi_orderer_address` varchar(200) NOT NULL,
  `oi_orderer_zipcode` varchar(10) NOT NULL,
  `oi_shipping_name` varchar(50) NOT NULL,
  `oi_shipping_phone` varchar(14) NOT NULL,
  `oi_shipping_address` varchar(200) NOT NULL,
  `oi_shipping_zipcode` varchar(10) NOT NULL,
  `oi_request` varchar(100) NOT NULL,
  `oi_price` int NOT NULL,
  `oi_delivery_company` varchar(50) NOT NULL,
  `oi_delivery_no` varchar(20) NOT NULL,
  `oi_delivery_date` datetime DEFAULT NULL,
  PRIMARY KEY (`oi_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info`
--

LOCK TABLES `order_info` WRITE;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_info_products`
--

DROP TABLE IF EXISTS `order_info_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_info_products` (
  `oip_seq` int NOT NULL AUTO_INCREMENT,
  `oip_oi_seq` int NOT NULL,
  `oip_pi_seq` int NOT NULL,
  `oip_count` int NOT NULL DEFAULT '1',
  `oip_price` int NOT NULL,
  PRIMARY KEY (`oip_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info_products`
--

LOCK TABLES `order_info_products` WRITE;
/*!40000 ALTER TABLE `order_info_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_info_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_benchmark_info`
--

DROP TABLE IF EXISTS `product_benchmark_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_benchmark_info` (
  `pbi_seq` int NOT NULL AUTO_INCREMENT,
  `pbi_pi_seq` int NOT NULL,
  `pbi_score` int NOT NULL,
  `pbi_reg_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pbi_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_benchmark_info`
--

LOCK TABLES `product_benchmark_info` WRITE;
/*!40000 ALTER TABLE `product_benchmark_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_benchmark_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_comment`
--

DROP TABLE IF EXISTS `product_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_comment` (
  `pc_seq` int NOT NULL AUTO_INCREMENT,
  `pc_mi_seq` int NOT NULL,
  `pc_pi_seq` int NOT NULL,
  `pc_score` int NOT NULL DEFAULT '1',
  `pc_content` varchar(255) NOT NULL DEFAULT '1',
  `pc_reg_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pc_mod_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_comment`
--

LOCK TABLES `product_comment` WRITE;
/*!40000 ALTER TABLE `product_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `prod_img_seq` int NOT NULL AUTO_INCREMENT,
  `prod_img_pi_seq` int NOT NULL,
  `prod_img_order` int NOT NULL,
  `prod_img_file` varchar(255) NOT NULL,
  `prod_img_thumbnail` int NOT NULL DEFAULT '0',
  `prod_img_reg_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prod_img_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (1,1,1,'ryzen_5600x.png',1,'2022-08-22 14:57:08'),(2,2,1,'ryzen_5600.png',1,'2022-08-22 14:57:08'),(3,3,1,'i5_12400f.png',1,'2022-08-22 14:57:08'),(4,4,1,'i7_12700k.png',1,'2022-08-22 14:57:08'),(5,5,1,'ryzen_5800x3d.png',1,'2022-08-22 14:57:08'),(6,6,1,'B660M_DS3H_D4.png',1,'2022-08-22 15:35:57'),(7,7,1,'RTX3060_STORM_X_DUAL_OC_D6_12GB.png',1,'2022-08-22 15:44:38'),(8,8,1,'980_PRO_M.2_NVME_1TB.png',1,'2022-08-22 15:50:57'),(9,9,1,'Barracuda_7200_256_2tb.png',1,'2022-08-22 16:10:36'),(11,10,1,'COOLMAX_VISION_II_500W.png',1,'2022-08-22 16:21:56'),(12,11,1,'G40_Black.png',1,'2022-08-22 16:27:15'),(13,12,1,'MK235.png',1,'2022-08-22 16:32:22'),(15,13,1,'G102_LIGHTSYNC_BLACK.png',1,'2022-08-22 16:37:02'),(16,14,1,'Z2200_CHEEK.png',1,'2022-08-22 16:41:13'),(17,16,1,'dummy1.png',1,'2022-08-23 16:00:34'),(18,16,2,'dummy2.png',0,'2022-08-23 16:00:34'),(19,16,3,'dummy3.png',0,'2022-08-23 16:00:34'),(20,17,1,'dummy1.png',1,'2022-08-23 17:44:58'),(21,17,2,'dummy2.png',0,'2022-08-23 17:44:58'),(22,17,3,'dummy3.png',0,'2022-08-23 17:44:58');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `pi_seq` int NOT NULL AUTO_INCREMENT,
  `pi_manufacturer_seq` int NOT NULL,
  `pi_name` varchar(200) NOT NULL,
  `pi_price` int NOT NULL,
  `pi_release_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pi_detail_cpu` int DEFAULT NULL,
  `pi_detail_gpu` int DEFAULT NULL,
  `pi_detail_mb` int DEFAULT NULL,
  `pi_detail_ssd` int DEFAULT NULL,
  `pi_detail_hdd` int DEFAULT NULL,
  `pi_detail_pwr` int DEFAULT NULL,
  `pi_detail_case` int DEFAULT NULL,
  `pi_detail_kbd` int DEFAULT NULL,
  `pi_detail_mouse` int DEFAULT NULL,
  `pi_detail_spk` int DEFAULT NULL,
  `pi_type` int NOT NULL,
  PRIMARY KEY (`pi_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES (1,1,'라이젠 5600X',200000,'2020-11-01 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,1,'라이젠 5600',180000,'2022-04-01 00:00:00',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(3,2,'Core i5 12400F',200000,'2022-01-01 00:00:00',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(4,2,'Core i7 12700K',550000,'2021-11-01 00:00:00',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(5,1,'라이젠 5800X3D',580000,'2022-04-01 00:00:00',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(6,3,'B660M DS3H D4',125000,'2022-01-01 00:00:00',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),(7,4,'지포스 RTX 3060 STORM X Dual OC D6 12GB',450000,'2021-02-01 00:00:00',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(8,5,'980 PRO M.2 NVMe 1TB',175000,'2020-09-01 00:00:00',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,4),(9,6,'BarraCuda 7200/256M (ST2000DM008, 2TB)',73000,'2018-10-01 00:00:00',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,5),(10,7,'COOLMAX VISION II 500W',73000,'2022-03-01 00:00:00',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,6),(11,8,'G40 시그니처 (블랙)',55000,'2022-04-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,7),(12,9,'MK235',24000,'2016-02-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,8),(13,9,'G102 LIGHTSYNC (블랙)',24000,'2020-05-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,9),(14,10,'Z2200 Cheek',32000,'2019-11-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,10),(16,1,'라이젠 5700X',280000,'2020-11-01 09:00:00',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(17,4,'지포스 RTX 3070 Ti BLACK EDITION D6X 8GB',750000,'2021-06-01 09:00:00',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_review` (
  `r_seq` int NOT NULL AUTO_INCREMENT,
  `r_title` varchar(255) NOT NULL,
  `c_pi_seq` int NOT NULL,
  `c_mi_seq` int NOT NULL,
  `c_reg_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pc_mod_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`r_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review`
--

LOCK TABLES `product_review` WRITE;
/*!40000 ALTER TABLE `product_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review_contents`
--

DROP TABLE IF EXISTS `product_review_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_review_contents` (
  `prc_seq` int NOT NULL AUTO_INCREMENT,
  `prc_pr_seq` int NOT NULL,
  `prc_order` int NOT NULL,
  `prc_type` varchar(10) NOT NULL DEFAULT 'text',
  `prc_coontent` text NOT NULL,
  PRIMARY KEY (`prc_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review_contents`
--

LOCK TABLES `product_review_contents` WRITE;
/*!40000 ALTER TABLE `product_review_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_review_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `sc_seq` int NOT NULL AUTO_INCREMENT,
  `sc_mi_seq` int NOT NULL,
  `sc_pi_seq` int NOT NULL,
  `sc_count` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`sc_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `summary_info_view`
--

DROP TABLE IF EXISTS `summary_info_view`;
/*!50001 DROP VIEW IF EXISTS `summary_info_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `summary_info_view` AS SELECT 
 1 AS `seq`,
 1 AS `name`,
 1 AS `price`,
 1 AS `p_type`,
 1 AS `release_dt`,
 1 AS `thumbnail`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'it_shopping'
--

--
-- Final view structure for view `summary_info_view`
--

/*!50001 DROP VIEW IF EXISTS `summary_info_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `summary_info_view` AS select `a`.`pi_seq` AS `seq`,concat(`b`.`manufacturer_name`,' ',`a`.`pi_name`) AS `name`,`a`.`pi_price` AS `price`,`a`.`pi_type` AS `p_type`,`a`.`pi_release_dt` AS `release_dt`,`c`.`prod_img_file` AS `thumbnail` from ((`product_info` `a` join `manufacturer_info` `b` on((`a`.`pi_manufacturer_seq` = `b`.`manufacturer_seq`))) left join (select `product_image`.`prod_img_seq` AS `prod_img_seq`,`product_image`.`prod_img_pi_seq` AS `prod_img_pi_seq`,`product_image`.`prod_img_order` AS `prod_img_order`,`product_image`.`prod_img_file` AS `prod_img_file`,`product_image`.`prod_img_thumbnail` AS `prod_img_thumbnail`,`product_image`.`prod_img_reg_dt` AS `prod_img_reg_dt` from `product_image` where (`product_image`.`prod_img_thumbnail` = 1)) `c` on((`a`.`pi_seq` = `c`.`prod_img_pi_seq`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23 17:52:54
