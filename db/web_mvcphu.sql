-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: web_mvcphu
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
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_admin` (
  `adminId` int NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `adminEmail` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `adminUser` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `adminPass` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `level` int NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (1,'long','long@gmail.com','long','827ccb0eea8a706c4c34a16891f84e7b',0),(2,'admin','admin@gmail.com','admin','e10adc3949ba59abbe56e057f20f883e',0);
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_brand` (
  `brandId` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_brand`
--

LOCK TABLES `tbl_brand` WRITE;
/*!40000 ALTER TABLE `tbl_brand` DISABLE KEYS */;
INSERT INTO `tbl_brand` VALUES (6,'Samsum'),(7,'Apple'),(8,'Huawei'),(9,'Oppo'),(10,'Dell'),(12,'Viettel'),(13,'OEM'),(14,'TP-Link');
/*!40000 ALTER TABLE `tbl_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cart` (
  `cartId` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `sId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cart`
--

LOCK TABLES `tbl_cart` WRITE;
/*!40000 ALTER TABLE `tbl_cart` DISABLE KEYS */;
INSERT INTO `tbl_cart` VALUES (1,7,'0omn99jipm7namf6srjhj4kva2','Điện thoại samsung S10+','12000000',3,'6deaf01c29.jpg'),(2,7,'up8l6ff347ik19fsoa18qff452','Điện thoại samsung S10+','12000000',1,'6deaf01c29.jpg'),(3,7,'9lmppj5kalib60o1s7soiiaqo4','Điện thoại samsung S10+','12000000',1,'6deaf01c29.jpg'),(4,8,'9lmppj5kalib60o1s7soiiaqo4','Điện Thoại Huawei Pro','5000000',1,'d611667f13.jpg'),(8,6,'c6o66m1rfnpfhqmdffk77pu083','Máy tính Dell A503','10000000',1,'dbb417a309.jpg'),(9,8,'3e1a29t1pgb3ock6s8hi8ho2d5','Điện Thoại Huawei Pro','5000000',1,'d611667f13.jpg'),(13,17,'grfc2bmmrmga6mn5q7484i87f2','Ổ Cứng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - Hàng Nhập Khẩu','1099000',1,'785e8d373d.jpg'),(14,19,'39p4lauudimhcb91i8mhna4bf2','Đồng Hồ Thông Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop','9700000',3,'6d72eb58ae.jpg'),(18,18,'3eg83l0tcklmed91e5h8raqsa2','Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)','2589900',1000,'32942e9470.jpg'),(19,19,'hlkksgphiqn70b37sjg3u89unu','Đồng Hồ Thông Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop','9700000',1,'6d72eb58ae.jpg');
/*!40000 ALTER TABLE `tbl_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `catId` int NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (3,'Laptop'),(4,'Desktop'),(5,'Mobile Phones'),(6,'Accessories'),(7,'Software'),(15,'Test'),(16,'Đồng Hồ Thông Minh'),(17,'Thiết bị mạng');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compare`
--

DROP TABLE IF EXISTS `tbl_compare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_compare` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `productId` int NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compare`
--

LOCK TABLES `tbl_compare` WRITE;
/*!40000 ALTER TABLE `tbl_compare` DISABLE KEYS */;
INSERT INTO `tbl_compare` VALUES (1,1,1,'nong','22','lapsv.png');
/*!40000 ALTER TABLE `tbl_compare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `city` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `country` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `zipcode` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
INSERT INTO `tbl_customer` VALUES (3,'nong','caugiay','TPHCM','hcm','700000','099999123','nong@gmail.com','827ccb0eea8a706c4c34a16891f84e7b');
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `date_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (56,22,'Apple New For Mysql Server',3,5,'300000','643929ce40.jpg',1,'2019-07-17 00:54:42'),(57,22,'Apple New For Mysql Server',3,4,'240000','643929ce40.jpg',1,'2019-07-17 00:56:49'),(58,22,'Apple New For Mysql Server',3,5,'300000','643929ce40.jpg',1,'2019-07-17 00:57:49'),(59,20,'Router Wifi 4G Huawei 300Mbps B593S-12',3,10,'12400000','49b106217c.jpg',1,'2019-07-17 01:51:22'),(60,18,'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)',3,1,'2589900','32942e9470.jpg',1,'2023-12-03 03:14:04');
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_code` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `productQuantity` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_soldout` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `catId` int NOT NULL,
  `brandId` int NOT NULL,
  `product_desc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (6,'Máy tính Dell A503','MH1122','50','0','50',3,10,'<p>Máy tính Dell A503 Máy tính Dell A503 Máy tính Dell A503 Máy tính Dell A503 Máy tính Dell A503</p>',1,'10000000','dbb417a309.jpg'),(7,'Điện thoại samsung S10+','MH1123','60','0','60',5,6,'<p>Điện thoại samsung S10+ Điện thoại samsung S10+ Điện thoại samsung S10+ Điện thoại samsung S10+ Điện thoại samsung S10+</p>',0,'12000000','f71a0935f3.jpg'),(8,'Điện Thoại Huawei Pro','MH1124','70','0','70',5,8,'<p>Điện Thoại Huawei Pro Điện Thoại Huawei Pro Điện Thoại Huawei Pro Điện Thoại Huawei Pro</p>',0,'5000000','03ae5f8327.jpg'),(9,'IPad Xsmax','MH1125','100','0','100',3,7,'<p>IPad Xsmax IPad Xsmax IPad Xsmax IPad Xsmax IPad Xsmax IPad Xsmax IPad Xsmax IPad Xsmax</p>',0,'8000000','7418d9b02e.jpg'),(13,'Đồng Hồ Thông Minh Theo Dõi Vận Động Theo Dõi Sức Khỏe Garmin Forerunner','MH1126','30','0','30',16,13,'<p>Chống nước 5ATM</p>\r\n<p>Pin sạc Lithium-ion</p>\r\n<p>Cổng kết nối: Bluetooth Smart và ANT+</p>\r\n<p>Bộ nhớ: 200 giờ dữ liệu hoạt động</p>\r\n<p>Màn hình: 215 x 180 pixel</p>',1,'4690000','25ebd2d0ff.jpg'),(15,'Phần Mềm Diệt Virus BKAV Profressional 1 PC 12 Tháng','MH1127','20','0','20',7,9,'<p>Phần Mềm Diệt Virus BKAV Profressional 1 PC 12 Tháng Phần Mềm Diệt Virus BKAV Profressional 1 PC 12 Tháng Phần Mềm Diệt Virus BKAV Profressional 1 PC 12 Tháng Phần Mềm Diệt Virus BKAV Profressional 1 PC 12 Tháng Phần Mềm Diệt Virus BKAV Profressional 1 PC 12 Tháng Phần Mềm Diệt Virus BKAV Profressional 1 PC 12 Tháng</p>',0,'195000','4167b1a4c5.jpg'),(16,'TP - Link TL- WN725N - USB Wifi Nano Chuẩn N Tốc Độ 150Mbps','MH1128','90','0','90',17,14,'<p>Thiết kế thu nhỏ cực gọn, cực xinh</p>\r\n<p>Tốc độ không dây 150Mbps</p>\r\n<p>Mã hóa WPA/WPA2 - Bảo mật nâng cao</p>\r\n<p>Đĩa CD đi kèm cho Hoạt động dễ dàng</p>\r\n<p>Bao bì sản phẩm có thể thay đổi theo từng đợt hàng nhập</p>',0,'125000','6c53b185b0.jpg'),(17,'Ổ Cứng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - Hàng Nhập Khẩu','MH1129','100','0','100',7,6,'<p>2.5 inch - Hàng Nhập Khẩu</p>',0,'1099000','785e8d373d.jpg'),(18,'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)','MH1130','120','3','118',3,10,'<p>Chip: Intel Core i7-8750H (2.2GHz up to 4.1GHz, 9MB)</p>\r\n<p>RAM: 8GB DDR4 2400MHz</p>\r\n<p>Ổ cứng: HDD 1TB 5400rpm + 128GB SSD M.2</p>\r\n<p>Chipset đồ họa: NVIDIA GeForce GTX 1050Ti 4GB GDDR5</p>\r\n<p>Màn hình: 15.6 inch Full HD (1920 x 1080) IPS, Anti-Glare, LED Backlit Display</p>\r\n<p>Hệ điều hành: Windows 10 Home</p>\r\n<p>Pin: 4 Cell 56 Whrs</p>',0,'2589900','32942e9470.jpg');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slider` (
  `sliderId` int NOT NULL AUTO_INCREMENT,
  `sliderName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slider_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`sliderId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slider`
--

LOCK TABLES `tbl_slider` WRITE;
/*!40000 ALTER TABLE `tbl_slider` DISABLE KEYS */;
INSERT INTO `tbl_slider` VALUES (5,'slider1','720bc173fa.png',0),(6,'slider2','ff79579ac7.png',0),(7,'slider3','a94222690e.png',0),(8,'slider4','lapsv.png',1),(9,'slider5','macpro.png',1),(11,'slider6','72a159f760.jpg',1);
/*!40000 ALTER TABLE `tbl_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_warehouse`
--

DROP TABLE IF EXISTS `tbl_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int NOT NULL AUTO_INCREMENT,
  `id_sanpham` int NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_warehouse`
--

LOCK TABLES `tbl_warehouse` WRITE;
/*!40000 ALTER TABLE `tbl_warehouse` DISABLE KEYS */;
INSERT INTO `tbl_warehouse` VALUES (1,22,'5','2019-07-16 11:31:22'),(2,21,'10','2019-07-16 11:32:03'),(3,21,'3','2019-07-16 11:42:59'),(4,20,'5','2019-07-16 11:51:40'),(5,18,'1','2023-12-02 20:24:45');
/*!40000 ALTER TABLE `tbl_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_wishlist`
--

DROP TABLE IF EXISTS `tbl_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `productId` int NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_wishlist`
--

LOCK TABLES `tbl_wishlist` WRITE;
/*!40000 ALTER TABLE `tbl_wishlist` DISABLE KEYS */;
INSERT INTO `tbl_wishlist` VALUES (3,3,6,'Máy tính Dell A503','10000000','dbb417a309.jpg'),(4,3,18,'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)','2589900','32942e9470.jpg');
/*!40000 ALTER TABLE `tbl_wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03  3:53:29
