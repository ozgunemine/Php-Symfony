# Host: 127.0.0.1  (Version 5.5.5-10.1.37-MariaDB)
# Date: 2019-01-23 21:07:57
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,0,'Yemek Odası Takımları','yemek odası takımları k','yemek odası takımları d','True'),(13,0,'Koltuk Takımları','koltuk takımları k','koltuk takımları d','true'),(19,0,'Duvar ve Tv Üniteleri','tv üniteleri k','tv üniteleri d','true'),(21,0,'Yatak Odası Takımları','yatak odası takımları k','yatak odası takımları d','true'),(22,1,'Ahşap Yemek Odası Takımları','Ahşap Yemek Odası Takımları k','Ahşap Yemek Odası Takımları d','true'),(23,1,'Mermer Yemek Odası Takımları','Mermer Yemek Odası Takımları k','Mermer Yemek Odası Takımları d','true'),(24,13,'Modern Koltuk Takımları','modern koltuk takımları k','modern koltuk takımları d','true'),(25,13,'Günlük Koltuk Takımları','Günlük koltuk takımları k','Günlük koltuk takımları d','true'),(26,19,'Tv Üniteleri','Tv üniteleri k','tv üniteleri d','true'),(27,19,'Tv Sehpaları','tv sehpaları k','tv sehpaları d','true');

#
# Structure for table "image"
#

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "image"
#

INSERT INTO `image` VALUES (3,1,'bb541d1d85843699ec1fcd65fde21f7c.jpeg'),(5,1,'4ab425a6c9e1ea98099ec37974fe5632.jpeg'),(6,1,'a708d4ca9d81ec889e196cca83cb6eb4.jpeg'),(7,1,'aa388917625e467c389a0bf5aa001405.jpeg'),(8,1,'d1119cd5868ce4c712f8019c74f92d77.jpeg'),(11,4,'80cbb958b5ca38cef7b548bdc820595d.jpeg'),(12,4,'311e69f55694f00d2fd213fe97f6c1bd.jpeg'),(13,2,'c5beb65af21d9cdc2d47cdb1618630d1.jpeg'),(14,2,'ad7a14706035b70727b3c46d37b39759.jpeg'),(15,2,'5c50bf4c29e51beeabb594e558a552e9.jpeg'),(16,2,'044229c73d6263b9bc0bc0d895912261.jpeg'),(17,5,'3a4c380cbaf5269ccc492613c56e8e07.jpeg'),(18,6,'cf880766e2b8f8c94de3df017074d8c6.jpeg'),(19,6,'30acf2fa71a0c110c1a1a2b675d69940.jpeg'),(20,6,'59d2a53d8537493d84c392fc93cdb52b.jpeg'),(21,6,'1e67edf2207aaf21f475abc71f18da76.jpeg'),(22,7,'afe83133cc79b01b18bf885892458db5.jpeg'),(23,7,'331d818eeb8c5d926f954b15a29d3ec3.jpeg'),(24,7,'718da032324037973cde3ad9ffad521c.jpeg'),(25,8,'dfffd17afa5195dc84176919eda1ec2f.jpeg'),(26,8,'7d4aa38c56bd5e481dc0a0baf2784c04.jpeg'),(27,9,'7e945737dec6c9ad8c9858bef52b8d55.jpeg'),(28,9,'04bbe5917055921596f273c36207e194.jpeg');

#
# Structure for table "messages"
#

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "messages"
#

INSERT INTO `messages` VALUES (2,'deneme','deneme mail','deneme konu',NULL,NULL,NULL),(3,'deneme2','deneme2 mail','deneme2 konu','deneme2 mesaj',NULL,NULL),(4,'emine','emosozgun@hotmail.com','konu','cok guzel',NULL,NULL),(5,'emine','denem@denem.com','deneme','dedasdsdasd',NULL,NULL),(6,'tugba','tugba@tugba.com','sıte','vooooooooooooov',NULL,NULL);

#
# Structure for table "migration_versions"
#

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migration_versions"
#

INSERT INTO `migration_versions` VALUES ('20181206154847'),('20181214001447'),('20181215233705'),('20181216212047'),('20190107192717'),('20190112204145'),('20190113125744'),('20190115145230'),('20190116190106'),('20190116190901'),('20190116192349'),('20190118213631');

#
# Structure for table "order_detail"
#

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `protucid` int(11) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "order_detail"
#

INSERT INTO `order_detail` VALUES (1,7,3,1,'1000',1,'1000',NULL,'Ordered'),(2,8,2,2,'30000',1,'30000',NULL,'Ordered'),(3,9,5,2,'30000',1,'30000',NULL,'Ordered'),(4,10,7,4,'15000',1,'15000',NULL,'Ordered'),(5,11,2,1,'25000',1,'25000',NULL,'Ordered'),(6,12,2,2,'30000',1,'30000',NULL,'Ordered'),(7,12,2,5,'300',1,'300',NULL,'Ordered'),(8,12,2,8,'50000',1,'50000',NULL,'Ordered');

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (1,1,'100','mustafa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,3,'1000','deneme','deneme','Giresun','111',' wafet','Accepted',' aerter',NULL,NULL),(3,3,'1000','deneme','deneme','Giresun','111',' ','InShipping',' ',NULL,NULL),(4,3,'1000','deneme','deneme','Giresun','111',' ','InShipping',' ',NULL,NULL),(5,3,'1000','deneme','deneme','Giresun','111',NULL,'New',NULL,NULL,NULL),(6,3,'1000','deneme','deneme','Giresun','111',NULL,'New',NULL,NULL,NULL),(7,3,'1000','deneme','deneme','Giresun','111',NULL,'New',NULL,NULL,NULL),(8,2,'30000','Ali Veli','1065.sokak','Bursa','456',NULL,'New',NULL,NULL,NULL),(9,5,'30000','mustafa',NULL,'Adıyaman',NULL,NULL,'New',NULL,NULL,NULL),(10,7,'15000','elif','deneme','Bilecik','123',NULL,'New',NULL,NULL,NULL),(11,2,'25000','Ali Veli','1065.sokak','Bursa','456',NULL,'New',NULL,NULL,NULL),(12,2,'80300','Ali Veli','1065.sokak','Bursa','456',NULL,'New',NULL,NULL,NULL);

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `producer_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pprice` double DEFAULT NULL,
  `sprice` double DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (2,'Serenity Yemek Takımı','serenity k','Kullanışlı bir koltuk takımıdır ',NULL,1,2010,15,25000,30000,NULL,'Gardrop - Raylıdolap Kurulum ve Montaj Hizmetleri\n\nTüm Kurulum ve Montaj Hizmetlerinizi garantili olarak yapıyoruz.\n\nİstanbul\'un Tüm Bölgelerine 7/24 Servisimiz mevcuttur.\n\nN11.Com\'dan aldığınız tüm mobilyalarınızın montajını ve kurulumunu yapıyoruz.\n\nMarkası ve Modeli ne Olursa Olsun. Tüm Mobilyalarınızın Montaj ve Kurulum Hizmeti.\n\nİstanbul\'un tüm bölgelerinde oluşturduğumuz 60 Adet mobil servislerimiz sayesinde ürünleriniz elinize ulaştığı süreden 1 saat içerisinde kapınızda oluyoruz.\n\nN11.Com\'dan aldığınız tüm ürünlerinizin montaj ve kurulum gününe siz karar veriyorsunuz.\n\nToplu ürünleriniz için mesaj yolu ile ulaşabilirsiniz.\n\nTüm Mobilya Montaj ve Kurulum işlemleriniz firmamız tarafından garantili olarak yapılır.\n\nFirmamız her türlü mobilyalarınızın Montajını, Kurulumunu ve Tamirini profesyonel usta ekipleri ile sizleri hızlı çözüme kavuşturuyor.\n\n','yemekodası1.jpeg',NULL,22,NULL,'True'),(4,'Tv Ünitesi','tv ünitesi','Kullanışlı bir tv ünitesidir.',NULL,1,29,10,1000,15000,NULL,'<p>Harika bir Tv ünitesidir.</p>','tv1.jpg',NULL,26,NULL,'True'),(5,'sehpa',NULL,'güzel bir sehpa',NULL,1,222,2,200,300,NULL,'sehpadır','sehpa.jpg',NULL,27,NULL,'True'),(6,'Yatak odası ','yatak odası k','Muhteşem',NULL,1,222,3,50000,55000,NULL,NULL,'yatak1.jpg',NULL,21,NULL,'True'),(7,'günlük koltuk takımı','gkt','Başka yerde bu fiyata yoktur',NULL,1,2019,80,5000,10000,NULL,NULL,'1.jpg',NULL,25,NULL,'True'),(8,'modern koltuk takımı','mkt','efsane',NULL,1,2019,4,18000,50000,NULL,NULL,'11.jpg',NULL,24,NULL,'True'),(9,'mermer yemek odası','myk','harikaa',NULL,1,1111,3,20000,250000,NULL,NULL,'13.jpg',NULL,23,NULL,'True');

#
# Structure for table "setting"
#

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpserver` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpport` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `referances` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "setting"
#

INSERT INTO `setting` VALUES (1,'test','','deneme','','','','','','','','','','<p>1976 yılında kurulan Özgün<strong> </strong>Mobilya sektöründe yaptığı farklı yatırımlar, benimsediği kalite, güven ve koşulsuz müşteri memnuniyeti ilkesiyle kısa sürede sektörde öncü firmalar arasındaki yerini almayı başarmıştır.</p><p>Sektörde en deneyimli firmalar kategorisinde öncü olan firmamız, kaliteli, modern, fonksiyonel ve en güncel trendleri siz değerli müşterilerine sunmayı ilke olarak benimsemiştir.</p><p>Değişen ve yenilenen mağazacalık anlayışıyla Türkiye\'nin 81 ili ve avrupanın çeşitli ülkelerin deki müşterilerimizle en önemli ilkemiz olan mutlu müşteri halkasını genişleterek büyütmek hedefini sürdürüyoruz. Çünkü çok iyi biliyoruz ki mutlu müşteri mutlu mağazalar demektir.&nbsp;</p>','<p><strong>Özgün Mobilya Maltepe E-5</strong><br>Bağlarbaşı Mh. Şahin Sk. No:3 Maltepe, İstanbul<br><a href=\"https://www.google.com.tr/maps/dir//40.931877,29.142919\">Yol Tarifi →</a><br><a href=\"tel:+908504208182\">0 850 420 81 82</a></p>','<figure class=\"table\"><table><tbody><tr><td>&nbsp;</td><td>Teknik Yapı, Evora Denizli</td><td>&nbsp;</td><td>734 daire kapı, portmanto, mutfak ve banyo dolapları</td></tr><tr><td>&nbsp;</td><td>Teknik Yapı, Concord İstanbul 2. Etap - Fikirtepe</td><td>&nbsp;</td><td>553 daire kapı, portmanto, mutfak, banyo dolapları</td></tr><tr><td>&nbsp;</td><td>Varyap-Gap Ortak Girişim , Metropol İstanbul Projesi</td><td>&nbsp;</td><td>1335 Daire Manhattan Mutfak ve Tüm Ahşap İşleri</td></tr><tr><td>&nbsp;</td><td>Çakırkaya Yapı, Burç Sitesi Feneryolu</td><td>&nbsp;</td><td>52 daire kapı ve portmanto</td></tr><tr><td>&nbsp;</td><td>Protek İnşaat, Sait Bey Apt Göztepe</td><td>&nbsp;</td><td>4 daire mutfak ve banyo dolapları</td></tr><tr><td>&nbsp;</td><td>Protek İnşaat, Kavaklıbağ Apt Göztepe</td><td>&nbsp;</td><td>11 daire mutfak ve banyo dolapları</td></tr><tr><td>&nbsp;</td><td>Teknik Yapı, Suadiye Sahil Sitesi</td><td>&nbsp;</td><td>113 daire kapı, portmanto, banyo dolapları, şaft kapakları</td></tr><tr><td>&nbsp;</td><td>Teknik Yapı, Suadiye Sahil Sitesi</td><td>&nbsp;</td><td>113 daire Record Cucine mutfak dolapları</td></tr><tr><td>&nbsp;</td><td>Kontek İnşaat, Çiftehavuzlar Projesi</td><td>&nbsp;</td><td>128 daire kapı, portmanto, banyo dolapları, şaft kapakları</td></tr><tr><td>&nbsp;</td><td>Teknik Yapı, Coşkan Apt Suadiye</td><td>&nbsp;</td><td>34 daire kapı, portmanto, banyo dolapları, şaft kapakları</td></tr><tr><td>&nbsp;</td><td>Teknik Yapı, Coşkan Apt Suadiye</td><td>&nbsp;</td><td>34 daire Record Cucine mutfak dolapları</td></tr><tr><td>&nbsp;</td><td>K Yapı, Ziverbey 34</td><td>&nbsp;</td><td>60 daire kapı, portmanto, banyo dolapları, şaft kapakları,</td></tr><tr><td>&nbsp;</td><td>K Yapı, Ziverbey 34</td><td>&nbsp;</td><td>60 daire Manhattan marka mutfak</td></tr><tr><td>&nbsp;</td><td>Teknik Yapı, Concord İstanbul 1. Etap - Fikirtepe</td><td>&nbsp;</td><td>620 daire kapı, portmanto, mutfak, banyo dolapları</td></tr><tr><td>&nbsp;</td><td>Varyap Meridian, Batı Ataşehir</td><td>&nbsp;</td><td>1257 Adet Errebi Mutfak, Portmanto, Kapılar, Banyo Dolapları</td></tr><tr><td>&nbsp;</td><td>Torkam İnşaat Yatırım Aş. Temaşehir Konya</td><td>&nbsp;</td><td>Örnek daire mutfak, kapı, portmanto, banyo dolapları</td></tr><tr><td>&nbsp;</td><td>Erdağı İnşaat, Evv Kozyatağı</td><td>&nbsp;</td><td>18 daire kapı, portmanto, mutfak ve banyo dolapları,</td></tr><tr><td>&nbsp;</td><td>Teknik Yapı, Evora Denizli</td><td>&nbsp;</td><td>Örnek daire komple tasarım ve imalatı</td></tr></tbody></table></figure>','Disable');

#
# Structure for table "shopcart"
#

DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `protuctid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "shopcart"
#


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'deneme@gmail.com','ROLE_ADMIN','$2y$13$VAxEbjcaamaW2O3B0g.LBeRRKn3CVqDyg9XyL8SVuOB.vcZ8y5sR2','Emine Özgün','true','1063.sokak','123','Bursa'),(2,'abc@abc.com','ROLE_USER','$2y$13$VAxEbjcaamaW2O3B0g.LBeRRKn3CVqDyg9XyL8SVuOB.vcZ8y5sR2','Ali Veli','true','1065.sokak','456','Bursa'),(3,'deneme@deneme.com','ROLE_USER','$2y$10$TEowxOlardAhpFRYjytCKuKIBqdtNC2n6K5594aJ8VmJFgBkA/Eam','Emine Özgün','true','1069.sokak','789','Bursa'),(5,'mustafa@gmail.com','ROLE_USER','$2y$10$d4k136LuXNIeBTC7WYPwdOdqTQevAqdXFNN5xWcLKVHmgIoc5vMta','mustafa',NULL,NULL,NULL,'Adıyaman'),(6,'sda@dsa.dsa','ROLE_ADMIN','$2y$10$xVdrJedo3EmrNuxhR4mpieGOq.IgwV5wYjwpaca73I2/0zLIRrm2O','asdasd','True',NULL,NULL,NULL),(7,'elif@elif.com','ROLE_USER','$2y$10$4S.Y7NjCawqWGXfRN6dmreE76rHohZbZEt2cd1hMJH9GIXLAjIkU6','elif',NULL,'deneme','123','Bilecik');
