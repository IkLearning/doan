/*
Navicat MySQL Data Transfer

Source Server         : hi
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_project

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-03-03 04:21:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bills
-- ----------------------------
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) DEFAULT NULL,
  `idmarkert` int(11) NOT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `bills_ibfk_1` (`id_customer`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bills
-- ----------------------------
INSERT INTO `bills` VALUES ('14', '14', '0', '2017-12-23', '160000', 'COD', 'k', '2018-02-27 17:30:50', '2017-03-23 11:46:05');
INSERT INTO `bills` VALUES ('13', '13', '0', '2017-12-21', '400000', 'ATM', 'Vui lòng giao hàng trước 5h', '2018-02-27 17:30:56', '2017-03-21 14:29:31');
INSERT INTO `bills` VALUES ('12', '12', '0', '2017-12-21', '520000', 'COD', 'Vui lòng chuyển đúng hạn', '2018-02-27 17:30:59', '2017-03-21 14:20:07');
INSERT INTO `bills` VALUES ('11', '11', '0', '2017-12-21', '420000', 'COD', 'không chú', '2018-02-27 17:31:06', '2017-03-21 14:16:09');
INSERT INTO `bills` VALUES ('15', '15', '0', '2017-12-24', '220000', 'COD', 'e', '2018-02-27 17:31:12', '2017-03-24 14:14:32');

-- ----------------------------
-- Table structure for bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE `bill_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `bill_detail_ibfk_2` (`id_product`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bill_detail
-- ----------------------------
INSERT INTO `bill_detail` VALUES ('0', '14', '2', '1', '160000', '2017-12-23 11:46:05', '2017-12-23 11:46:05');
INSERT INTO `bill_detail` VALUES ('19', '12', '61', '1', '120000', '2017-12-21 14:20:07', '2017-12-21 14:20:07');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `vido` float(10,6) NOT NULL,
  `hoanhdo` float(10,6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('15', 'ê', 'Nữ', 'huongnguyen@gmail.com', 'e', 'e', 'e', '0.000000', '0.000000', '2017-12-24 14:14:32', '2017-03-24 14:14:32');
INSERT INTO `customer` VALUES ('14', 'hhh', 'nam', 'huongnguyen@gmail.com', 'Lê thị riêng', '99999999999999999', 'k', '0.000000', '0.000000', '2017-12-23 11:46:05', '2017-03-23 11:46:05');
INSERT INTO `customer` VALUES ('13', 'Tân', 'Nữ', 'tannguyen@gmail.com', 'Lê Thị Riêng, Quận 1', '23456789', 'Vui lòng giao hàng trước 5h', '0.000000', '0.000000', '2017-12-21 14:29:31', '2017-03-21 14:29:31');
INSERT INTO `customer` VALUES ('12', 'Hiếu Văn', 'Nam', 'hieuvan@gmail.com', 'Lê thị riêng', '1234567890', 'Vui lòng chuyển đúng hạn', '0.000000', '0.000000', '2017-12-21 14:20:07', '2017-03-21 14:20:07');
INSERT INTO `customer` VALUES ('11', 'hieuanva', 'Nữ', 'hieuvan@gmail.com', 'Lê Thị Riêng, Quận 1', '234567890-', 'không chú', '0.000000', '0.000000', '2017-12-21 14:16:09', '2017-03-21 14:16:09');

-- ----------------------------
-- Table structure for markers
-- ----------------------------
DROP TABLE IF EXISTS `markers`;
CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lag` float(10,6) NOT NULL,
  `ing` float(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of markers
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'Mùa trung thu năm nay, Hỷ Lâm Môn muốn gửi đến quý khách hàng sản phẩm mới xuất hiện lần đầu tiên tại Việt nam \"Bánh trung thu Bơ Sữa HongKong\".', 'Những ý tưởng dưới đây sẽ giúp bạn sắp xếp tủ quần áo trong phòng ngủ chật hẹp của mình một cách dễ dàng và hiệu quả nhất. ', 'sample1.jpg', '2017-12-11 13:20:23', '0000-00-00 00:00:00');
INSERT INTO `news` VALUES ('2', 'Tư vấn cải tạo phòng ngủ nhỏ sao cho thoải mái và thoáng mát', 'Chúng tôi sẽ tư vấn cải tạo và bố trí nội thất để giúp phòng ngủ của chàng trai độc thân thật thoải mái, thoáng mát và sáng sủa nhất. ', 'sample2.jpg', '2017-12-20 09:07:14', '0000-00-00 00:00:00');
INSERT INTO `news` VALUES ('3', 'Đồ gỗ nội thất và nhu cầu, xu hướng sử dụng của người dùng', 'Đồ gỗ nội thất ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Xu thế của các gia đình hiện nay là muốn đem thiên nhiên vào nhà ', 'sample3.jpg', '2017-12-20 09:07:14', '0000-00-00 00:00:00');
INSERT INTO `news` VALUES ('4', 'Hướng dẫn sử dụng bảo quản đồ gỗ, nội thất.', 'Ngày nay, xu hướng chọn vật dụng làm bằng gỗ để trang trí, sử dụng trong văn phòng, gia đình được nhiều người ưa chuộng và quan tâm. Trên thị trường có nhiều sản phẩm mẫu ', 'sample4.jpg', '2017-12-20 09:07:14', '0000-00-00 00:00:00');
INSERT INTO `news` VALUES ('5', 'Phong cách mới trong sử dụng đồ gỗ nội thất gia đình', 'Đồ gỗ nội thất gia đình ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Phong cách sử dụng đồ gỗ hiện nay của các gia đình hầu h ', 'sample5.jpg', '2017-12-20 09:07:14', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) unsigned DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_id_type_foreign` (`id_type`),
  CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Bánh Crepe Sầu riêng', '5', 'Bánh crepe sầu riêng nhà làm', '150000', '120000', '1520024696.jpg', 'hộp', '1', 'banh-crepe-sau-rieng-1', '2017-12-26 10:00:16', '2018-03-03 04:04:56');
INSERT INTO `products` VALUES ('2', 'Bánh Crepe Chocolate', '6', '', '180000', '160000', 'crepe-chocolate.jpg', 'hộp', '1', 'banh-crepe-chocolate', '2017-12-26 10:00:16', '2016-10-25 05:11:00');
INSERT INTO `products` VALUES ('3', 'Bánh Crepe Sầu riêng - Chuối', '5', '', '150000', '120000', 'crepe-chuoi.jpg', 'hộp', '0', 'banh-crepe-sau-rieng-chuoi', '2017-12-26 10:00:16', '2016-10-25 05:11:00');
INSERT INTO `products` VALUES ('4', 'Bánh Crepe Đào', '5', '', '160000', '0', 'crepe-dao.jpg', 'hộp', '0', 'banh-crepe-dao', '2017-12-26 10:00:16', '2016-10-25 05:11:00');
INSERT INTO `products` VALUES ('5', 'Bánh Crepe Dâu', '5', '', '160000', '0', 'crepedau.jpg', 'hộp', '0', 'banh-crepe-dau', '2017-12-26 10:00:16', '2016-10-25 05:11:00');
INSERT INTO `products` VALUES ('6', 'Bánh Crepe Pháp', '5', '', '200000', '180000', 'crepe-phap.jpg', 'hộp', '0', 'banh-crepe-phap', '2017-12-26 10:00:16', '2016-10-25 05:11:00');
INSERT INTO `products` VALUES ('7', 'Bánh Crepe Táo', '5', '', '160000', '0', 'crepe-tao.jpg', 'hộp', '1', 'banh-crepe-tao', '2017-12-26 10:00:16', '2016-10-25 05:11:00');
INSERT INTO `products` VALUES ('8', 'Bánh Crepe Trà xanh', '5', '', '160000', '150000', 'crepe-traxanh.jpg', 'hộp', '0', 'banh-crepe-tra-xanh', '2016-10-26 10:00:16', '2016-10-25 05:11:00');
INSERT INTO `products` VALUES ('9', 'Bánh Crepe Sầu riêng và Dứa', '5', '', '160000', '150000', 'saurieng-dua.jpg', 'hộp', '0', 'banh-crepe-sau-rieng-va-dua', '2016-10-26 10:00:16', '2016-10-25 05:11:00');
INSERT INTO `products` VALUES ('11', 'Bánh Gato Trái cây Việt Quất', '3', '', '250000', '0', '544bc48782741.png', 'cái', '0', 'banh-gato-trai-cay-viet-quat', '2016-10-12 09:00:00', '2016-10-27 09:24:00');
INSERT INTO `products` VALUES ('12', 'Bánh sinh nhật rau câu trái cây', '3', '', '200000', '180000', '210215-banh-sinh-nhat-rau-cau-body- (6).jpg', 'cái', '0', 'banh-sinh-nhat-rau-cau-trai-cay', '2016-10-12 09:00:00', '2016-10-27 09:24:00');
INSERT INTO `products` VALUES ('13', 'Bánh kem Chocolate Dâu', '3', '', '300000', '280000', 'banh kem sinh nhat.jpg', 'cái', '1', 'banh-kem-chocolate-dau', '2016-10-12 09:00:00', '2016-10-27 09:24:00');
INSERT INTO `products` VALUES ('14', 'Bánh kem Dâu III', '3', '', '300000', '280000', 'Banh-kem (6).jpg', 'cái', '0', 'banh-kem-dau-iii', '2016-10-12 09:00:00', '2016-10-27 09:24:00');
INSERT INTO `products` VALUES ('15', 'Bánh kem Dâu I', '3', '', '350000', '320000', 'banhkem-dau.jpg', 'cái', '1', 'banh-kem-dau-i', '2016-10-12 09:00:00', '2016-10-27 09:24:00');
INSERT INTO `products` VALUES ('16', 'Bánh trái cây II', '3', '', '150000', '120000', 'banhtraicay.jpg', 'hộp', '0', 'banh-trai-cay-ii', '2016-10-12 09:00:00', '2016-10-27 09:24:00');
INSERT INTO `products` VALUES ('17', 'Apple Cake', '3', '', '250000', '240000', 'Fruit-Cake_7979.jpg', 'cai', '0', 'apple-cake', '2016-10-12 09:00:00', '2016-10-27 09:24:00');
INSERT INTO `products` VALUES ('18', 'Bánh ngọt nhân cream táo', '2', '', '180000', '0', '20131108144733.jpg', 'hộp', '0', 'banh-ngot-nhan-cream-tao', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('19', 'Bánh Chocolate Trái cây', '2', '', '150000', '0', 'Fruit-Cake_7976.jpg', 'hộp', '1', 'banh-chocolate-trai-cay', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('20', 'Bánh Chocolate Trái cây II', '2', '', '150000', '0', 'Fruit-Cake_7981.jpg', 'hộp', '0', 'banh-chocolate-trai-cay-ii', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('21', 'Peach Cake', '2', '', '160000', '150000', 'Peach-Cake_3294.jpg', 'cái', '0', 'peach-cake', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('22', 'Bánh bông lan trứng muối I', '1', '', '160000', '150000', 'banhbonglantrung.jpg', 'hộp', '1', 'banh-bong-lan-trung-muoi-i', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('23', 'Bánh bông lan trứng muối II', '1', '', '180000', '0', 'banhbonglantrungmuoi.jpg', 'hộp', '0', 'banh-bong-lan-trung-muoi-ii', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('24', 'Bánh French', '1', '', '180000', '0', 'banh-man-thu-vi-nhat-1.jpg', 'hộp', '0', 'banh-french', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('25', 'Bánh mì Australia', '1', '', '80000', '70000', 'dung-khoai-tay-lam-banh-gato-man-cuc-ngon.jpg', 'hộp', '0', 'banh-mi-australia', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('26', 'Bánh mặn thập cẩm', '1', '', '50000', '0', 'Fruit-Cake.png', 'hộp', '0', 'banh-man-thap-cam', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('27', 'Bánh Muffins trứng', '1', '', '100000', '80000', 'maxresdefault.jpg', 'hộp', '0', 'banh-muffins-trung', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('28', 'Bánh Scone Peach Cake', '1', '', '120000', '0', 'Peach-Cake_3300.jpg', 'hộp', '1', 'banh-scone-peach-cake', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('29', 'Bánh mì Loaf I', '1', '', '100000', '0', 'sli12.jpg', 'hộp', '0', 'banh-mi-loaf-i', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('30', 'Bánh kem Chocolate Dâu I', '4', '', '380000', '350000', 'sli12.jpg', 'cái', '1', 'banh-kem-chocolate-dau', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('31', 'Bánh kem Trái cây I', '4', '', '380000', '350000', 'Fruit-Cake.jpg', 'cái', '0', 'banh-kem-trai-cay-i', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('32', 'Bánh kem Trái cây II', '4', '', '380000', '350000', 'Fruit-Cake_7971.jpg', 'cái', '0', 'banh-kem-trai-cay-i', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('33', 'Bánh kem Doraemon', '4', '', '280000', '250000', 'p1392962167_banh74.jpg', 'cái', '1', 'banh-kem-doremon', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('34', 'Bánh kem Caramen Pudding', '4', '', '280000', '0', 'Caramen-pudding636099031482099583.jpg', 'cái', '1', 'banh-kem-caramen-pudding', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('35', 'Bánh kem Chocolate Fruit', '4', '', '320000', '300000', 'chocolate-fruit636098975917921990.jpg', 'cái', '1', 'banh-kem-chocolate-fruit', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('36', 'Bánh kem Coffee Chocolate GH6', '4', '', '320000', '300000', 'COFFE-CHOCOLATE636098977566220885.jpg', 'cái', '0', 'banh-kem-coffee-chocolate', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('37', 'Bánh kem Mango Mouse', '4', '', '320000', '300000', 'mango-mousse-cake.jpg', 'cái', '1', 'banh-kem-mango-mouse', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('38', 'Bánh kem Matcha Mouse', '4', '', '350000', '330000', 'MATCHA-MOUSSE.jpg', 'cái', '0', 'banh-kem-matcha-mouse', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('39', 'Bánh kem Flower Fruit', '4', '', '350000', '330000', 'flower-fruits636102461981788938.jpg', 'cái', '0', 'banh-kem-flower-fruit', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('40', 'Bánh kem Strawberry Delight', '4', '', '350000', '330000', 'strawberry-delight636102445035635173.jpg', 'cái', '0', 'banh-kem-strawberry-delight', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('41', 'Bánh kem Raspberry Delight', '4', '', '350000', '330000', 'raspberry.jpg', 'cái', '0', 'banh-kem-raspberry-delight', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('42', 'Beefy Pizza', '6', 'Thịt bò xay, ngô, sốt BBQ, phô mai mozzarella', '150000', '130000', '40819_food_pizza.jpg', 'cái', '0', 'beefy-pizza', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('43', 'Hawaii Pizza', '6', 'Sốt cà chua, ham , dứa, pho mai mozzarella', '120000', '0', 'hawaiian paradise_large-900x900.jpg', 'cái', '1', 'hawaii-pizza', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('44', 'Smoke Chicken Pizza', '6', 'Gà hun khói,nấm, sốt cà chua, pho mai mozzarella.', '120000', '0', 'chicken black pepper_large-900x900.jpg', 'cái', '0', 'smoke-chicken-pizza', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('45', 'Sausage Pizza', '6', 'Xúc xích klobasa, Nấm, Ngô, sốtcà chua, pho mai Mozzarella.', '120000', '0', 'pizza-miami.jpg', 'cái', '0', 'sausage-pizza', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('46', 'Ocean Pizza', '6', 'Tôm , mực, xào cay,ớt xanh, hành tây, cà chua, phomai mozzarella.', '120000', '0', 'seafood curry_large-900x900.jpg', 'cái', '0', 'ocean-pizza', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('47', 'All Meaty Pizza', '6', 'Ham, bacon, chorizo, pho mai mozzarella.', '140000', '0', 'all1).jpg', 'cái', '0', 'all-meaty-pizza', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('48', 'Tuna Pizza', '6', 'Cá Ngừ, sốt Mayonnaise,sốt càchua, hành tây, pho mai Mozzarella', '140000', '0', '54eaf93713081_-_07-germany-tuna.jpg', 'cái', '0', 'tuna-pizza', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('49', 'Bánh su kem nhân dừa', '7', '', '120000', '100000', 'maxresdefault.jpg', 'cái', '0', 'banh-su-kem-nhan-dua', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('50', 'Bánh su kem sữa tươi', '7', '', '120000', '100000', 'sukem.jpg', 'cái', '0', 'banh-su-kem-sua-tuoi', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('51', 'Bánh su kem sữa tươi chiên giòn', '7', '', '150000', '0', '1434429117-banh-su-kem-chien-20.jpg', 'hộp', '0', 'banh-su-kem-sua-tuoi-chien-gion', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('52', 'Bánh su kem dâu sữa tươi', '7', '', '150000', '0', 'sukemdau.jpg', 'hộp', '0', 'banh-su-kem-dau-sua-tuoi', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('53', 'Bánh su kem bơ sữa tươi', '7', '', '150000', '0', 'He-Thong-Banh-Su-Singapore-Chewy-Junior.jpg', 'hộp', '0', 'banh-su-kem-bo-sua-tuoi', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('54', 'Bánh su kem nhân trái cây sữa tươi', '7', '', '150000', '0', 'foody-banh-su-que-635930347896369908.jpg', 'hộp', '1', 'banh-su-kem-nhan-trai-cay-sua-tuoi', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('55', 'Bánh su kem cà phê', '7', '', '150000', '0', 'banh-su-kem-ca-phe-1.jpg', 'hộp', '0', 'banh-su-kem-ca-phe', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('56', 'Bánh su kem phô mai', '7', '', '150000', '0', '50020041-combo-20-banh-su-que-pho-mai-9.jpg', 'hộp', '0', 'banh-su-kem-pho-mai', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('57', 'Bánh su kem sữa tươi chocolate', '7', '', '150000', '0', 'combo-20-banh-su-que-kem-sua-tuoi-phu-socola.jpg', 'hộp', '1', 'banh-su-kem-sua-tuoi-chocolate', '2016-10-13 09:20:00', '2016-10-19 10:20:00');
INSERT INTO `products` VALUES ('58', 'Bánh Macaron Pháp', '2', 'Thưởng thức macaron, người ta có thể tìm thấy từ những hương vị truyền thống như mâm xôi, chocolate, cho đến những hương vị mới như nấm và trà xanh. Macaron với vị giòn tan của vỏ bánh, béo ngậy ngọt ngào của phần nhân, với vẻ ngoài đáng yêu và nhiều màu sắc đẹp mắt, đây là món bạn không nên bỏ qua khi khám phá nền ẩm thực Pháp.', '200000', '180000', 'Macaron9.jpg', '', '0', 'banh-macaron-phap', '2016-10-27 00:00:00', '2016-10-12 00:00:00');
INSERT INTO `products` VALUES ('59', 'Bánh Tiramisu - Italia', '2', 'Chỉ cần cắn một miếng, bạn sẽ cảm nhận được tất cả các hương vị đó hòa quyện cùng một chính vì thế người ta còn ví món bánh này là Thiên đường trong miệng của bạn', '200000', '0', '234.jpg', '', '0', 'banh-tiramisu-italia', '2016-10-27 00:00:00', '2016-10-12 00:00:00');
INSERT INTO `products` VALUES ('60', 'Bánh Táo - Mỹ', '2', 'Bánh táo Mỹ với phần vỏ bánh mỏng, giòn mềm, ẩn chứa phần nhân táo thơm ngọt, điểm chút vị chua dịu của trái cây quả sẽ là một lựa chọn hoàn hảo cho những tín đồ bánh ngọt trên toàn thế giới.', '200000', '0', '1234.jpg', '', '0', 'banh-tao-my', '2016-10-27 00:00:00', '2016-10-12 00:00:00');
INSERT INTO `products` VALUES ('61', 'Bánh Cupcake - Anh Quốc', '6', 'Những chiếc cupcake có cấu tạo gồm phần vỏ bánh xốp mịn và phần kem trang trí bên trên rất bắt mắt với nhiều hình dạng và màu sắc khác nhau. Cupcake còn được cho là chiếc bánh mang lại niềm vui và tiếng cười như chính hình dáng đáng yêu của chúng.', '150000', '120000', 'cupcake.jpg', 'cái', '1', 'banh-cupcake-anh-quoc', '2016-10-27 00:00:00', '2016-10-27 00:00:00');
INSERT INTO `products` VALUES ('62', 'Bánh Sachertorte', '6', 'Sachertorte là một loại bánh xốp được tạo ra bởi loại&nbsp;chocholate&nbsp;tuyệt hảo nhất của nước Áo. Sachertorte có vị ngọt nhẹ, gồm nhiều lớp bánh được làm từ ruột bánh mì và bánh sữa chocholate, xen lẫn giữa các lớp bánh là mứt mơ. Món bánh chocholate này nổi tiếng tới mức thành phố Vienna của Áo đã ấn định&nbsp;tổ chức một ngày Sachertorte quốc gia, vào 5/12 hằng năm', '250000', '220000', '111.jpg', 'cái', '0', 'banh-sachertorte', '2016-10-27 00:00:00', '2016-10-27 00:00:00');
INSERT INTO `products` VALUES ('63', 'Nam Đẹp Trai', '2', '<h1><font color=\"#209361\">Yêu là ghiền Ahihi</font></h1>', '150', '130', '1520020745.jpg', 'Người', '1', 'nam-dep-trai-63', '2018-03-03 02:59:06', '2018-03-03 03:34:54');

-- ----------------------------
-- Table structure for product_images
-- ----------------------------
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `new` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_product_images` (`id`),
  KEY `fk_product_images_products` (`id_product`),
  CONSTRAINT `fk_product_images_products` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_images
-- ----------------------------
INSERT INTO `product_images` VALUES ('1', '63', '1', '1520022767_0.png', '2018-03-03 03:32:48', '03:32:48');

-- ----------------------------
-- Table structure for product_views
-- ----------------------------
DROP TABLE IF EXISTS `product_views`;
CREATE TABLE `product_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `visited` int(11) DEFAULT NULL,
  `last_visited` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_product_views_products` (`id_product`),
  KEY `pk_product_views` (`id`),
  CONSTRAINT `fk_product_views_products` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_views
-- ----------------------------
INSERT INTO `product_views` VALUES ('1', '1', '3', '2018-03-03 01:50:47', '2018-03-03 01:50:47', '2018-03-03 01:50:47');
INSERT INTO `product_views` VALUES ('2', '3', '2', '2018-03-03 01:50:49', '2018-03-03 01:50:49', '2018-03-03 01:50:49');
INSERT INTO `product_views` VALUES ('3', '4', '3', '2018-03-03 01:50:54', '2018-03-03 01:50:54', '2018-03-03 01:50:54');
INSERT INTO `product_views` VALUES ('4', '6', '2', '2018-03-03 01:50:59', '2018-03-03 01:50:59', '2018-03-03 01:50:59');
INSERT INTO `product_views` VALUES ('5', '9', '4', '2018-03-03 01:52:56', '2018-03-03 01:52:56', '2018-03-03 01:52:56');
INSERT INTO `product_views` VALUES ('6', '8', '1', '2018-03-03 01:51:13', '2018-03-03 01:51:13', '2018-03-03 01:51:13');
INSERT INTO `product_views` VALUES ('7', '63', '0', null, '2018-03-03 02:59:06', '2018-03-03 02:59:06');

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES ('1', '', 'banner1.jpg');
INSERT INTO `slide` VALUES ('2', '', 'banner2.jpg');
INSERT INTO `slide` VALUES ('3', '', 'banner3.jpg');
INSERT INTO `slide` VALUES ('4', '', 'banner4.jpg');

-- ----------------------------
-- Table structure for type_products
-- ----------------------------
DROP TABLE IF EXISTS `type_products`;
CREATE TABLE `type_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of type_products
-- ----------------------------
INSERT INTO `type_products` VALUES ('1', 'Bánh mặn', 'Nếu từng bị mê hoặc bởi các loại tarlet ngọt thì chắn chắn bạn không thể bỏ qua những loại tarlet mặn. Ngoài hình dáng bắt mắt, lớp vở bánh giòn giòn cùng với nhân mặn như thịt gà, nấm, thị heo ,… của bánh sẽ chinh phục bất cứ ai dùng thử.', 'banh-man-thu-vi-nhat-1.jpg', null, null);
INSERT INTO `type_products` VALUES ('2', 'Bánh ngọt', 'Bánh ngọt là một loại thức ăn thường dưới hình thức món bánh dạng bánh mì từ bột nhào, được nướng lên dùng để tráng miệng. Bánh ngọt có nhiều loại, có thể phân loại dựa theo nguyên liệu và kỹ thuật chế biến như bánh ngọt làm từ lúa mì, bơ, bánh ngọt dạng bọt biển. Bánh ngọt có thể phục vụ những mục đính đặc biệt như bánh cưới, bánh sinh nhật, bánh Giáng sinh, bánh Halloween..', '20131108144733.jpg', '2017-12-12 09:16:15', '2017-12-13 08:38:35');
INSERT INTO `type_products` VALUES ('3', 'Bánh trái cây', 'Bánh trái cây, hay còn gọi là bánh hoa quả, là một món ăn chơi, không riêng gì của Huế nhưng khi \"lạc\" vào mảnh đất Cố đô, món bánh này dường như cũng mang chút tinh tế, cầu kỳ và đặc biệt. Lấy cảm hứng từ những loại trái cây trong vườn, qua bàn tay khéo léo của người phụ nữ Huế, món bánh trái cây ra đời - ngọt thơm, dịu nhẹ làm đẹp lòng biết bao người thưởng thức.', 'banhtraicay.jpg', '2017-12-18 07:33:33', '2017-12-15 14:25:27');
INSERT INTO `type_products` VALUES ('4', 'Bánh kem', 'Với người Việt Nam thì bánh ngọt nói chung đều hay được quy về bánh bông lan – một loại tráng miệng bông xốp, ăn không hoặc được phủ kem lên thành bánh kem. Tuy nhiên, cốt bánh kem thực ra có rất nhiều loại với hương vị, kết cấu và phương thức làm khác nhau chứ không chỉ đơn giản là “bánh bông lan” chung chung đâu nhé!', 'banhkem.jpg', '2017-12-26 10:29:19', '2017-12-26 09:22:22');
INSERT INTO `type_products` VALUES ('5', 'Bánh crepe', 'Crepe là một món bánh nổi tiếng của Pháp, nhưng từ khi du nhập vào Việt Nam món bánh đẹp mắt, ngon miệng này đã làm cho biết bao bạn trẻ phải “xiêu lòng”', 'crepe.jpg', '2017-12-28 11:00:00', '2017-12-27 11:00:23');
INSERT INTO `type_products` VALUES ('6', 'Bánh Pizza', 'Pizza đã không chỉ còn là một món ăn được ưa chuộng khắp thế giới mà còn được những nhà cầm quyền EU chứng nhận là một phần di sản văn hóa ẩm thực châu Âu. Và để được chứng nhận là một nhà sản xuất pizza không hề đơn giản. Người ta phải qua đủ mọi các bước xét duyệt của chính phủ Ý và liên minh châu Âu nữa… tất cả là để đảm bảo danh tiếng cho món ăn này.', 'pizza.jpg', '2017-12-26 00:19:00', null);
INSERT INTO `type_products` VALUES ('7', 'Bánh su kem', 'Bánh su kem là món bánh ngọt ở dạng kem được làm từ các nguyên liệu như bột mì, trứng, sữa, bơ.... đánh đều tạo thành một hỗn hợp và sau đó bằng thao tác ép và phun qua một cái túi để định hình thành những bánh nhỏ và cuối cùng được nướng chín. Bánh su kem có thể thêm thành phần Sô cô la để tăng vị hấp dẫn. Bánh có xuất xứ từ nước Pháp.', 'sukemdau.jpg', '2017-12-26 00:19:00', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Hiếu Văn', 'admin', 'hieuvan.php@gmail.com', '$2y$10$Ofxzan69C3/ZsUiw3NhvPuQw7B.6Tn4AxOr57HTAd9Kk/lvfK0lKW', '23456789', 'Hoàng Diệu 2', 'H5N0woHIx6ymmWcl0hxctx7bzawLXfwCQ0QfZqx3NmsCcIlCxed4EofzgAOl', '2017-03-23 14:17:33', '2017-03-23 14:17:33');
