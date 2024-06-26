/*
 Source Server         : localhost_3310
 Source Server Type    : MySQL
 Source Host           : localhost:3310
 Source Schema         : utc_java

 Target Server Type    : MySQL

 Date: 29/05/2024 14:54:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_categories_users`(`user_id`) USING BTREE,
  UNIQUE INDEX `uq_userId_name_categories`(`user_id`, `name`) USING BTREE,
  CONSTRAINT `fk_categories_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 3, 'Táo', 1, '2024-06-16 16:33:08', 'thom123');
INSERT INTO `categories` VALUES (2, 3, 'Nho', 1, '2024-06-16 16:34:35', 'thom123');
INSERT INTO `categories` VALUES (3, 3, 'Trái cây rừng', 1, '2024-06-16 16:43:12', 'thom123');
INSERT INTO `categories` VALUES (4, 3, 'Yến', 1, '2024-06-16 16:44:47', 'thom123');
INSERT INTO `categories` VALUES (5, 4, 'Vải', 1, '2024-06-16 17:04:28', 'thao123');
INSERT INTO `categories` VALUES (6, 4, 'Dưa hấu', 1, '2024-06-16 17:05:34', 'thao123');
INSERT INTO `categories` VALUES (7, 4, 'Hành', 1, '2024-06-16 17:07:31', 'thao123');
INSERT INTO `categories` VALUES (8, 4, 'Tỏi', 1, '2024-06-16 17:07:39', 'thao123');
INSERT INTO `categories` VALUES (9, 4, 'Ổi', 1, '2024-06-16 17:09:01', 'thao123');
INSERT INTO `categories` VALUES (10, 4, 'Chuối', 1, '2024-06-16 17:09:35', 'thao123');
INSERT INTO `categories` VALUES (11, 5, 'Nho', 1, '2024-06-16 17:14:51', 'lele123');
INSERT INTO `categories` VALUES (12, 5, 'Sầu riêng', 1, '2024-06-16 17:21:49', 'lele123');
INSERT INTO `categories` VALUES (13, 6, 'Măng cụt', 1, '2024-06-16 17:32:08', 'thang123');
INSERT INTO `categories` VALUES (14, 5, 'Quýt', 1, '2024-06-16 17:34:30', 'lele123');
INSERT INTO `categories` VALUES (15, 5, 'Chuối', 1, '2024-06-16 17:38:34', 'lele123');
INSERT INTO `categories` VALUES (16, 7, 'Nhãn', 1, '2024-06-16 17:45:41', 'tham123');
INSERT INTO `categories` VALUES (17, 8, 'Đào', 1, '2024-06-16 17:53:56', 'kietdm123');
INSERT INTO `categories` VALUES (18, 9, 'Mận', 1, '2024-06-16 17:58:44', 'manhcc123');
INSERT INTO `categories` VALUES (19, 5, 'Thanh Long', 1, '2024-06-16 18:05:34', 'lele123');
INSERT INTO `categories` VALUES (20, 10, 'Hồng Xiêm', 1, '2024-06-16 18:12:50', 'liencx123');
INSERT INTO `categories` VALUES (21, 10, 'Vú Sữa', 1, '2024-06-16 18:14:24', 'liencx123');
INSERT INTO `categories` VALUES (22, 10, 'Nhãn', 1, '2024-06-16 18:15:46', 'liencx123');
INSERT INTO `categories` VALUES (23, 10, 'Xoài', 1, '2024-06-16 18:17:39', 'liencx123');
INSERT INTO `categories` VALUES (24, 11, 'Rau sạch', 1, '2024-06-16 14:31:32', 'nvfoo');
INSERT INTO `categories` VALUES (25, 11, 'Củ quả', 1, '2024-06-16 14:31:36', 'nvfoo');
INSERT INTO `categories` VALUES (26, 12, 'Trái cây tươi', 1, '2024-06-16 14:31:44', 'sasuke');
INSERT INTO `categories` VALUES (27, 12, 'Ngũ cốc và cây lương thực', 1, '2024-06-16 14:31:46', 'sasuke');
INSERT INTO `categories` VALUES (28, 13, 'Cây gia vị và thảo mộc', 1, '2024-06-16 14:31:48', 'gojo');
INSERT INTO `categories` VALUES (29, 13, 'Cây thuốc', 1, '2024-06-16 14:31:49', 'gojo');
INSERT INTO `categories` VALUES (30, 14, 'Sản phẩm từ cây trồng', 1, '2024-06-16 14:31:50', 'yuji');
INSERT INTO `categories` VALUES (31, 14, 'Củ quả', 1, '2024-06-16 14:31:50', 'yuji');
INSERT INTO `categories` VALUES (32, 15, 'Trái cây tươi', 1, '2024-06-16 14:31:51', 'anv');
INSERT INTO `categories` VALUES (33, 15, 'Ngũ cốc và cây lương thực', 1, '2024-06-16 14:31:52', 'anv');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_news_users`(`user_id`) USING BTREE,
  CONSTRAINT `fk_news_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `amount` bigint NOT NULL,
  `unit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 3, 'Táo Gió', 'Táo Gió là loại trái cây rất được yêu thích bởi hương vị đặc trưng, giòn ngọt, mát lành, phù hợp với mọi lứa tuổi. Trái táo cung cấp một lượng lớn chất dinh dưỡng lớn và mang lại nhiều lợi ích cho sức khỏe. Đây là giống táo bản địa, được trồng theo mô hình trùm mền tránh côn trùng đốt gây sâu bệnh. Nhờ đó, những quả táo gió khi lớn lên to tròn đẹp, ăn không bị chát hay sượng. Bên cạnh đó, nhờ điều kiện thời tiết bồi đắp cùng sự chăm sóc tận tình của người nông dân khiến họ luôn tự hào về loại quả này. Về đặc điểm hình thái, quả táo là cây ăn quả nhiệt đới, chỉ có một hạt, hai tai lá biến thành gai. Nhiệt độ thích hợp để cây táo sinh trưởng là 25 - 32 độ C và cần nhiều ánh sáng. Táo gió có thể sống trên nhiều loại đấy, nhưng thích hợp nhất là vùng đất Phan Rang pha cát. Cây táo chịu hạn khá tốt, nếu như thiếu nước thì cây vẫn xanh và ra nhiều hoa trái. Trong điều kiện mưa nhiều, táo dễ úa và quả nhạt, nứt vỏ gây thất thu cho người trồng táo.', 'https://lh5.googleusercontent.com/wl2XmkqLFF9lonDe_YAvmCQUkgHDGLpszqSzYfLCdG74Jk5pTU64GbYI2_qECBoz7tUJ9Rl9J9iqAgkG_WJngG4Wy79sb_iXK3CjaAFnGLqW7NdhD3kQINwOZP4KleVLYZLPD1eKt8dtC-LEjQ', 25000, 100, 'kg', 1, '2024-06-16 16:33:39', 'thom123');
INSERT INTO `products` VALUES (2, 3, 'Nho đỏ Ninh Thuận', 'Là một trong những Món ngon Phan Rang nhất định phải thử, hoa quả nơi đây vào mùa thu hoạch lúc nào cũng khiến mọi người từ khắp nơi xiêu lòng ngay từ lần thưởng thức đầu tiên. Nếu có dịp ghé đến vùng đất này, bạn nhất định không được bỏ lỡ cơ hội thưởng thức Nho Ninh Thuận (nho Phan Rang) trứ danh. Với điều kiện khí hậu, đất đai thuận lợi, Ninh Thuận được mệnh danh là xứ sở của các giống loài nho vì hương vị ở đây khác biệt hoàn toàn với những nơi khác. Trong đó, Phan Rang chính là địa điểm sở hữu nhiều vườn nho sai trái, trĩu quả. Nho Ninh Thuận (nho Phan Rang) được chia thành các loại phổ biến như nho xanh, nho đỏ và nho đen. Mỗi giống nho khác nhau sẽ cho ra hương vị đặc trưng, riêng biệt không thể nhầm lẫn. Đối với Nho Ninh Thuận (nho Phan Rang) màu đỏ, vỏ của chúng sẽ dày hơn đồng thời có vị ngọt, chua xen kẽ. Trong khi đó, nho xanh khi chín sẽ dần chuyển sang màu vàng và thịt nho trong, vỏ dày. Khi ăn vào sẽ cảm nhận vị ngọt nhiều hơn, vị chua khá ít và hầu như không có vị chát. Nho Ninh Thuận (nho Phan Rang) rất tốt cho sức khỏe nên bạn có thể mua về làm quà cho bạn bè, người thân. Giá cả Nho Ninh Thuận (nho Phan Rang) tại đây khá cao vì trồng nho tốn khá nhiều công sức, thời gian. Không chỉ vậy, giá cả còn phản ánh hương vị và chất lượng của Nho Ninh Thuận (nho Phan Rang), tránh để chúng đồng giá và bị nhầm lẫn với loại nho Trung Quốc ngọt ngấy.', 'https://mia.vn/media/uploads/blog-du-lich/nho-ninh-thuan-nho-phan-rang-mon-qua-den-tu-thien-nhien-02-1658232915.jpg', 90000, 150, 'kg', 1, '2024-06-16 16:38:15', 'thom123');
INSERT INTO `products` VALUES (3, 3, 'Nho xanh Ninh Thuận', 'Là một trong những Món ngon Phan Rang nhất định phải thử, hoa quả nơi đây vào mùa thu hoạch lúc nào cũng khiến mọi người từ khắp nơi xiêu lòng ngay từ lần thưởng thức đầu tiên. Nếu có dịp ghé đến vùng đất này, bạn nhất định không được bỏ lỡ cơ hội thưởng thức Nho Ninh Thuận (nho Phan Rang) trứ danh. Với điều kiện khí hậu, đất đai thuận lợi, Ninh Thuận được mệnh danh là xứ sở của các giống loài nho vì hương vị ở đây khác biệt hoàn toàn với những nơi khác. Trong đó, Phan Rang chính là địa điểm sở hữu nhiều vườn nho sai trái, trĩu quả. Nho Ninh Thuận (nho Phan Rang) được chia thành các loại phổ biến như nho xanh, nho đỏ và nho đen. Mỗi giống nho khác nhau sẽ cho ra hương vị đặc trưng, riêng biệt không thể nhầm lẫn. Đối với Nho Ninh Thuận (nho Phan Rang) màu đỏ, vỏ của chúng sẽ dày hơn đồng thời có vị ngọt, chua xen kẽ. Trong khi đó, nho xanh khi chín sẽ dần chuyển sang màu vàng và thịt nho trong, vỏ dày. Khi ăn vào sẽ cảm nhận vị ngọt nhiều hơn, vị chua khá ít và hầu như không có vị chát. Nho Ninh Thuận (nho Phan Rang) rất tốt cho sức khỏe nên bạn có thể mua về làm quà cho bạn bè, người thân. Giá cả Nho Ninh Thuận (nho Phan Rang) tại đây khá cao vì trồng nho tốn khá nhiều công sức, thời gian. Không chỉ vậy, giá cả còn phản ánh hương vị và chất lượng của Nho Ninh Thuận (nho Phan Rang), tránh để chúng đồng giá và bị nhầm lẫn với loại nho Trung Quốc ngọt ngấy.', 'https://mia.vn/media/uploads/blog-du-lich/nho-ninh-thuan-nho-phan-rang-mon-qua-den-tu-thien-nhien-01-1658232915.jpg', 100000, 120, 'kg', 1, '2024-06-16 16:39:58', 'thom123');
INSERT INTO `products` VALUES (4, 3, 'Trái da đá Ninh Thuận', 'Khi nhắc đến đặc sản Ninh Thuận, ai nấy cũng đều nghĩ đến các món Bánh canh chả cá Phan Rang thấm nhuần phong vị biển cả hay Nem chua Phan Rang thơm ngon nức tiếng. Tuy nhiên, ít ai biết rằng, vùng đất được xem là thủ phủ nho của cả nước lại tồn tại loại trái cây mới lạ, thơm ngon và đặc biệt là không thể tìm thấy ở bất kỳ nơi nào khác. Đó là Trái da đá - Cái tên nghe thật lạ lẫm và độc đáo. Đây là loại quả mọc ở các vùng rừng núi tự nhiên của tỉnh Ninh Thuận. Phải chăng có nguồn gốc từ nơi hoang vu, cỏ dại mà tên gọi của nó cũng thật bình dị và mộc mạc đến vậy. Nhìn bề ngoài của Trái da đá Ninh Thuận, người ta thường liên tưởng đến quả mận Bắc bởi nó cũng mang hình hài tròn nhỏ, đỏ tươi và căng mọng. Tuy nhiên, chỉ khi nếm thử, bạn mới cảm thấy được hương vị đặc biệt không thể trộn lẫn của nó. Trái da đá có vị chua, thịt khá cứng khi còn non. Khi chín già, thức quả này mang vị ngọt thanh tao và toả ra mùi thơm đặc trưng không thể cưỡng lại. Giữa vô vàn các món sơn hào hải vị hay sản vật cao sang, Trái da đá vẫn hiện lên như một thức quà bình dị, gần gũi, mộc mạc của mảnh đất Ninh Thuận và chinh phục trái tim của các tín đồ ẩm thực bằng hương vị ngọt ngào như thế đó.', 'https://mia.vn/media/uploads/blog-du-lich/trai-da-da-dac-san-doc-nhat-vo-nhi-cua-vung-dat-ninh-thuan-2-1658152173.jpg', 10000, 400, 'kg', 1, '2024-06-16 16:43:30', 'thom123');
INSERT INTO `products` VALUES (5, 3, 'Yến rút lông tự nhiên (NGUYÊN TỔ)', 'Tổ yến thô tự nhiên được chọn lọc với các têu chuẩn: to, đều, ít lông, khố lượng đồng đều nhau, sau đó được thợ làm yến thực hiện các kỹ thuật nhặt lông thủ công cho sạch hoàn toàn, tổ sau khi được nhặt sạch lông yến và vệ sinh sạch sẽ có hình dạng tự nhiên như ban đầu. Sản phẩm yến rút lông tự nhiên là dòng sản phẩm cao cấp nhất trong các loại sản phẩm từ tổ yến sào, và đồng thời khách hàng có thể dựa vào loại sản phẩm này để so sánh giá cả của các cơ sở kinh doanh mặt hàng Yến sào. Ngoài ra, Yến rút lông tự nhiên là sản phẩm chất lượng nhất trong tất cả các dòng sản phẩm từ tổ yến, mang đến cảm giác ăn ngon miệng nhất (nhiều sợi, dai, giòn, vị thơm tự nhiên nhiều nhất) ', 'http://yensaophanrang.net/UserFiles/Album/Anh/2022182731178_IMG_0097.jpg', 4350000, 2000, '100gram', 1, '2024-06-16 16:46:55', 'thom123');
INSERT INTO `products` VALUES (6, 3, 'Chân Yến (CHÂN TỔ YẾN)', 'Chân yến là một phần của tổ yến, vị trí của chân yến nằm ở 2 đầu của tổ, có tác dụng cố định và là điểm bắt đầu cho các thành phần còn lại trong tổ yến, vì vậy chân yến rất cứng chắt, khi chưng lên sẽ rất dai và giòn, mang đến cảm giác ăn ngon miệng nhất trong các dòng sản phẩm từ tổ yến sào. Trên thị trường có rất nhiều sản phẩm được chào bán là chân yến, nhưng không phải sản phẩm được chào bán nào cũng đúng loại chân yến, nếu khách hàng không phân biệt được khi đó có thể mua phải sản phẩm là phần tổ yến bị cắt bỏ (tổ bễ, tổ vụn), khi đó yến sau khi chưng lên chỉ có phần yến hoặc sợi chứ không có độ giòn dai đúng tính đặc trưng của chân yến. Chân yến có thể chế biến bình thường như các loại sản phẩm khác của tổ yến. ', 'http://yensaophanrang.net/UserFiles/Album/Anh/20221815226928_IMG_0153.jpg', 3650000, 1750, '100gram', 1, '2024-06-16 16:48:06', 'thom123');
INSERT INTO `products` VALUES (7, 3, 'Yến Viên Khô (HŨ)', 'Yến viên là một trong những thành phẩm từ Yến tinh chế. Yến viên 100% là yến mảnh và yến sợi, cam kết không sử dụng yến vụn cám. Mỗi viên yến sẽ giúp khách hàng chưng được 100ml nước dùng, yến nở đậm đặc thơm ngon giúp khách cảm nhận được vị thơm ngon đặc trưng của yến.', 'http://yensaophanrang.net/UserFiles/Album/Anh/20211223103234279_IMG_0316.jpg', 295000, 300, '6 hũ', 1, '2024-06-16 16:49:41', 'thom123');
INSERT INTO `products` VALUES (8, 3, 'Yến Viên', 'Yến viên là một trong những thành phẩm từ Yến tinh chế. Yến viên 100% là yến mảnh và yến sợi, cam kết không sử dụng yến vụn cám. Mỗi viên yến sẽ giúp khách hàng chưng được 100ml nước dùng, yến nở đậm đặc thơm ngon giúp khách cảm nhận được vị thơm ngon đặc trưng của yến.', 'http://yensaophanrang.net/UserFiles/Album/Anh/2021122310233388_IMG_0148.jpg', 1730000, 430, '50gr (50-55 viên)', 1, '2024-06-16 16:59:02', 'thom123');
INSERT INTO `products` VALUES (9, 4, 'Vải thiều Thanh Hà', 'Nước ta có nhiều loại vải, nhưng vải thiều Thanh Hà được mệnh danh là “bà hoàng” của các loại vải, với vị ngọt dịu mát, không gắt, hương thơm thoang thoảng mà ăn xong vẫn còn vương vấn mãi. Mảnh đất phì nhiêu Thanh Hà đã tạo điều kiện cho giống cây trồng này sinh trưởng tốt. Vải khi chín có vỏ màu đậm hơi sần sùi, cơm dày mọng nước, hạt vải nhỏ, màu nâu đen, đặc biệt cây càng lớn tuổi thì hạt càng nhỏ và sai trĩu quả.', 'https://cdn.tgdd.vn/Files/2021/11/18/1398759/15-dac-san-hai-duong-ngon-nuc-tieng-gan-xa-nhac-den-la-them-202111181400208538.jpg', 70000, 590, 'kg', 1, '2024-06-16 17:04:47', 'thao123');
INSERT INTO `products` VALUES (10, 4, 'Dưa hấu Tứ Kỳ', 'Dưa hấu được trồng ở nhiều nơi, nhưng ở miền Bắc thì dưa hấu Tứ Kỳ được xem là ngon, ngọt và chất lượng nên được nhiều người nhắc đến. Dưa hấu Tứ Kỳ vỏ xanh căng tròn, ruột dưa đỏ mọng, chứa nhiều nước nên khi ăn có vị ngọt, thanh.', 'https://cdn.tgdd.vn/Files/2021/11/18/1398759/15-dac-san-hai-duong-ngon-nuc-tieng-gan-xa-nhac-den-la-them-202111181406591878.jpg', 11000, 600, 'kg', 1, '2024-06-16 17:06:25', 'thao123');
INSERT INTO `products` VALUES (11, 4, 'Hành tỏi Kinh Môn', 'Nhờ điều kiện thổ nhưỡng, khí hậu đặc biệt cùng bàn tay chăm sóc kỹ càng mà hành tỏi ở Kinh Môn, Hải Dương được sinh trưởng tốt, nên có hương vị đặc trưng hơn ở các vùng khác. Hành tỏi nơi đây có vị cay nồng, thơm, củ hành và tỏi to, chắc củ.', 'https://cdn.tgdd.vn/Files/2021/11/18/1398759/15-dac-san-hai-duong-ngon-nuc-tieng-gan-xa-nhac-den-la-them-202111181408119257.jpg', 80000, 720, 'kg', 1, '2024-06-16 17:07:55', 'thao123');
INSERT INTO `products` VALUES (12, 4, 'Ổi Liên Mạc', 'Ổi Liên Mạc được trồng theo tiêu chuẩn Vietgap, nên không có thuốc trừ sâu hay chất bảo quản, an toàn cho sức khỏe. Khi ăn bạn sẽ cảm nhận được vị giòn, ngọt đặc trưng của quả ổi nơi đây.', 'https://cdn.tgdd.vn/Files/2021/11/18/1398759/15-dac-san-hai-duong-ngon-nuc-tieng-gan-xa-nhac-den-la-them-202111181408556922.jpg', 10000, 577, 'kg', 1, '2024-06-16 17:09:10', 'thao123');
INSERT INTO `products` VALUES (13, 4, 'Chuối mật', 'Chuối mật là một loại trái cây đặc sản của thành phố Hải Dương. Với hương vị ngọt ngào, thơm mát và đặc biệt là kích thước lớn, chuối mật đã trở thành món ăn được ưa chuộng tại địa phương này. Chuối mật Hải Dương có vỏ mỏng, thịt trắng sữa, giòn và ngọt ngào. Khi ăn, bạn cảm nhận được hương vị thơm ngon, không quá ngọt như những loại chuối khác và đặc biệt hơn khi được chế biến thành các món ăn như bánh chuối mật hay chè chuối mật.', 'https://cdn.tgdd.vn/Files/2021/11/18/1398759/hai-duong-co-dac-san-gi-15-dac-san-hai-duong-mua-lam-qua-202305061757301464.jpg', 40000, 366, 'kg', 1, '2024-06-16 17:10:23', 'thao123');
INSERT INTO `products` VALUES (14, 5, 'Nho xanh Bình Thuận', 'Những vườn nho ở Bình Thuận rất đẹp, được chia làm các khu vực như vườn nho xanh, vườn nho đỏ. Khi thăm thú các vườn nho bạn sẽ có cơ hội thưởng thức những trái nho tươi ngon, mua nho tươi hoặc các sản phẩm làm từ nho để làm quà. Có khá nhiều lựa chọn nếu bạn không mua nho tươi như rượu nho, nho khô, kẹo nho,....', 'https://tinicart.vn/wp-content/uploads/2021/06/IMG_20210630_084540.jpg', 500000, 587, 'thùng 10kg', 1, '2024-06-16 17:18:19', 'lele123');
INSERT INTO `products` VALUES (15, 5, 'Nho đỏ Bình Thuận', 'Những vườn nho ở Bình Thuận rất đẹp, được chia làm các khu vực như vườn nho xanh, vườn nho đỏ. Khi thăm thú các vườn nho bạn sẽ có cơ hội thưởng thức những trái nho tươi ngon, mua nho tươi hoặc các sản phẩm làm từ nho để làm quà. Có khá nhiều lựa chọn nếu bạn không mua nho tươi như rượu nho, nho khô, kẹo nho,....', 'https://tinicart.vn/wp-content/uploads/2021/07/IMG_20210701_080737.jpg', 350000, 433, 'thùng 10kg', 1, '2024-06-16 17:19:25', 'lele123');
INSERT INTO `products` VALUES (16, 5, 'Sầu riêng Bình Thuận', 'Chứa khá nhiều vitamin B, cải thiện tâm trạng, giảm bớt trầm cảm. Sầu riêng có chứa một lượng vitamin B khá cao, các vitamin B sẽ có một loạt các lợi ích cho sức khỏe như ngăn ngừa lão hóa và bệnh tim, giúp tăng HDL (cholesterol tốt) và thậm chí có thể giúp cải thiện tâm trạng, giảm bớt trầm cảm.', 'https://media-cdn-v2.laodong.vn/storage/newsportal/2023/8/5/1225382/IMG_1747.jpeg', 85000, 256, 'kg', 1, '2024-06-16 17:22:08', 'lele123');
INSERT INTO `products` VALUES (17, 6, 'Măng Cụt Lái Thiêu Thuận Tự Nhiên', 'Những trái măng cụt Lái Thiêu chuẩn chất lượng, chuẩn vị sẽ có vị ngọt thanh dịu, cơm trắng mướt, vỏ mỏng mà có sắc hồng đẹp dù bên ngoài trái măng thì không xinh tươi lắm, trái cũng không thật lớn như măng ở một số vùng khác.', 'https://api.traicaynguyenthung.vn/Upload/MATERIAL_EXT_4_WEBSITE/12296_Files_0/AiFruitBoxes_mang-cut-lai-thieu-5_20230512091506471.jpg', 155000, 322, 'kg', 1, '2024-06-16 17:33:23', 'thang123');
INSERT INTO `products` VALUES (18, 5, 'Quýt Bình Thuận', 'Trái quýt ở đây ngọt thơm không khác gì các loại quýt có trên thị trường. Có một điều hơi khác với các vườn khác là cây quýt ở đây được trồng tràn ra cả lối đi và các rẻo đất ven hồ. Một eo đất hình răng cưa tưởng không làm được gì nhưng bà Lan đã khéo léo tận dụng trồng vào đó ba gốc quýt to, xanh tốt và đang cho trái trĩu cành. Quý đất, biết cách làm vườn trên đất khô cằn và chiụ khó chắt mót từng trái quýt sót đi bán lẻ...', 'https://bbt.1cdn.vn/2020/04/11/data-news-2017-5-96655-quyt.jpg', 58000, 422, 'kg', 1, '2024-06-16 17:36:52', 'lele123');
INSERT INTO `products` VALUES (19, 5, 'Chuối Sứ Bình Thuận', 'Khi trồng chuối sứ nên chú ý khoảng cách giữa các cây phải từ 2m, vì nếu mật độ trồng dày sẽ kéo dài thời gian cây chuối trổ buồng và làm giảm tỷ lệ trái tròn căng, thời gian bảo quản trái. Trồng chuối dày còn làm chậm sự phát triển của chồi bên. Một cây chuối có thể sản sinh 5 - 10 chồi bên. Thông thường chỉ để 2 chồi cho vụ sau. Các chồi khác phải bỏ đi tránh cạnh tranh về dinh dưỡng. Ngoài ra, hàng tháng phải thu dọn, cắt bỏ lá già và lá bị bệnh. Một năm bón phân cho chuối sứ từ 1 – 2 lần bằng phân chuồng và đánh rãnh, vun gốc cho cây.', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_85,s_1152x670/https://cdn.tgdd.vn/Products/Images/8788/222847/bhx/chuoi-su-tui-500g-202101091026282666.jpg', 19600, 389, 'kg', 1, '2024-06-16 17:41:37', 'lele123');
INSERT INTO `products` VALUES (20, 7, 'Nhãn lồng Hưng Yên', 'Nhãn  có tên khoa học là Dimocarpus longan, tiếng hán việt gọi là “long nhãn”. Đây là một loại trái cây điển hình của vùng nhiệt đới thuộc thân gỗ, sống lâu năm. Theo tổng hợp từ các địa phương, hiện nay Hưng Yên là nơi có diện tích trồng lớn nhất và cho chất lượng nhãn ngon nhất, hiện nay Hưng Yên có gần 4 nghìn ha nhãn, trong đó, diện tích cho thu hoạch khoảng 3 nghìn ha. Hưng Yên được coi là cái nôi của nhãn lồng tiến vua nổi tiếng. Nhãn lồng Hưng Yên thường đạt sản lượng trên 30 nghìn tấn, tập trung chủ yếu ở xã Hồng Nam và huyện Khoái Châu.  Nơi đây vẫn giữ được giống nhãn lồng gốc, cho hương vị ngon nhất, cùi dầy giòn, vị ngọt sắc, hương thơm khó quên. Hạt nhãn nhỏ và dóc, sắc đen ánh nâu đỏ.', 'https://admin.nongsandungha.com/wp-content/uploads/2021/05/nhan-long-hung-yen-5-min.jpg', 30000, 946, 'kg', 1, '2024-06-16 17:47:42', 'tham123');
INSERT INTO `products` VALUES (21, 7, 'Nhãn Hương Chi Hưng Yên', 'Nhãn Hương Chi (nhãn lồng) được trồng nhiều ở Hồng Nam, TP Hưng Yên (thuộc vùng nhãn tổ trước đây). Xét về mặt tổng quan, nhãn Hương Chi có quả to đều, cùi dày, vị ngọt, ráo nước, hương vị ngọt thơm, giòn dai, được người dùng rất ưa chuộng.', 'https://longnhanbamai.com/wp-content/uploads/2018/07/Nhan-hung-yen-gia-bao-nhieu.jpg', 25000, 776, 'kg', 1, '2024-06-16 17:49:04', 'tham123');
INSERT INTO `products` VALUES (22, 7, 'Nhãn Miền Thiết', 'Trong một vài năm trở lại đây, ngoài vũng đất nhãn ở Phố Hiến xửa, ở vùng Khoái Châu Hưng Yên người ta còn canh tác thêm loại nhãn mới, năng suất cao là nhãn Miền Thiết. Loại nhãn này được đặt tên theo tên của ông Miền, bà Thiết (những người đã lai tạo ra giống nhãn này).', 'https://longnhanbamai.com/wp-content/uploads/2018/07/hinh-anh-nhan-mien-thiet-hung-yen.jpg', 20000, 854, 'kg', 1, '2024-06-16 17:50:16', 'tham123');
INSERT INTO `products` VALUES (23, 8, 'Đào Sa Pa', 'Mùa Đào Sa Pa thường kéo dài từ giữa tháng 3 đến cuối tháng 5, vì vậy đây đang là thời điểm đào chín rộ nhất. Đào Sapa chỉ nhỏ như chén uống trà, nhwung có vị rất riêng, thơm, giòn và hơi chua. Đào Sa Pa rất khác biệt so với các giống Đào khác, và có rất nhiều loại giống khác nhau như: đào Hmong, đào Vàng, đào Pháp, đào Vân Nam,… nhưng tất cả đều được người dân và du khách gọi bằng cái tên rất Sapa là “đào rọ” hay “đào núi”. Được gọi là đào rọ bởi người dân tộc ở Sapa thường đựng đào trong các rọ nhỏ đem bán. ', 'https://cdnphoto.dantri.com.vn/_TKRVJiRJbVxJ08tJm12ShozwZg=/thumb_w/680/dansinh/2024/04/29/7-1714406124068.jpg', 49000, 546, 'kg', 1, '2024-06-16 17:55:28', 'kietdm123');
INSERT INTO `products` VALUES (24, 9, 'Mận hậu Bắc Hà', 'Mận hậu Bắc Hà là một loại hoa quả đặc sản của vùng đất Lào Cai. Mậu hậu có lớp vỏ ngoài căng bóng, được phủ một lớp phấn trắng, màu sắc tươi tắn, quả cứng, không bị dập nát. Khi ăn rất giòn, có vị chua dịu, vị ngọt thanh, chát đặc trưng nhưng không hề đắng. Trong một quả mận chứa hàm lượng lớn chất dinh dưỡng tốt cho sức khỏe như: kali, vitamin A, vitamin B2, vitamin C, vitamin K, sắt, magie, chất xơ,...những dưỡng chất này giúp người sở hữu nó tăng cường chức năng tiêu hóa, ngăn ngừa bệnh tiểu đường, ung thư, thanh lọc máu, làm sáng mắt,...', 'https://cdn-img-v2.webbnc.net/media/4678/trai%20cay/man-hau.jpg', 42000, 886, 'kg', 1, '2024-06-16 18:01:30', 'manhcc123');
INSERT INTO `products` VALUES (25, 9, 'Mận hậu sấy dẻo Mộc Châu-hũ 300gr', 'Mận hậu 1 loại cây trồng hết sức quen thuộc với bà con nông dân tại Mộc Châu. Trên địa bàn huyện Mộc Châu có hàng nghìn hộ trồng cây mận hậu diện tích lớn. Sản phẩm sản xuất ra bán dưới dạng thô chưa qua chế biến với giá trị kinh tế không cao. Thường xuyên bị thương lái ép giá. Hoa quả xuất đi xa không có kỹ thuật bảo quản ảnh hưởng tới chất lượng sản phẩm. dẫn đến những người làm nông nghiệp có thu nhập không cao. Xuất phát từ những vấn đề trên và từ những trăn trở với ngành nông nghiệp thiếu khoa học và kỹ thuật của miền núi, HTX dịch vụ phát triển nông nghiệp 19/5 ra đời và đầu tư xây dựng xưởng sản xuất dùng những nguyên liệu tại địa phương. Xưởng sản xuất của HTX ra đời làm tăng giá trị kinh tế của quả mận hậu Mộc Châu đảm bảo cho bà con nông dân có điều kiện kinh tế tốt hơn. Từng bước đưa các mặt hàng nông sản của Mộc Châu tham gia vào thị trường các tỉnh lân cận, trong nước và xuất khẩu. Từ những quả mận hậu chín mọng được thu hái mang về qua các khâu làm sạch sạch phân loại rồi tới tách hạt sau đó là sấy hơi, để nguội và đóng gói HTX đã cho ra đời sản phẩm mận tách hạt sấy dẻo. Sản phẩm mận tách hạt sấy dẻo của HTX sử dụng 100% các nguyên liệu tại địa phương, quá trình chế biến không sử dụng các chất bảo quản, chất phụ gia nên giữ được hương vị tự nhiên của quả mận hòa quyện với vị ngọt mật ong. Sản phẩm chế biến theo công nghệ thủ công truyền thống đảm bảo vệ sinh an toàn thực phẩm.', 'https://bizweb.dktcdn.net/thumb/1024x1024/100/444/733/products/z3740104467894-714ae0fcecc5553623bce1bc394dd19d-c8b888ed-64f5-4ed8-a51d-7266831e6a38.jpg?v=1665550987613', 109000, 886, 'hũ 300gram', 1, '2024-06-16 18:04:26', 'manhcc123');
INSERT INTO `products` VALUES (26, 5, 'Thanh Long Bình Thuận', 'loại cây trồng được nhiều địa phương khuyến khích phát triển và xem như một giải pháp xóa đói giảm nghèo. Nhưng kỳ diệu thay, không những giúp hàng chục ngàn hộ nông dân thoát nghèo mà Thanh Long còn tạo cơ hội cho rất nhiều trường hợp vươn lên làm giàu chính đáng.', 'https://tinicart.vn/wp-content/uploads/2021/06/thanh-long-ru%E1%BB%99t-tr%E1%BA%AFng...jpg', 20000, 489, 'kg', 1, '2024-06-16 18:10:05', 'lele123');
INSERT INTO `products` VALUES (27, 10, 'Hông Xiêm Mặc Bắc', 'Hồng xiêm Mặc Bắc hay Sapôchê Mặc Bắc là loại trái cây rất phổ biến ở xứ nhiệt đới. Đặcbiệt, không chỉ là đặc sản trái cây mà còn là một thương hiệu nổi tiếng ở Tiền Giang và các tỉnh đồng bằng sông Cửu Long. Với ưu điểm vỏ mỏng, màu nâu nhạt, thơm, khi chín rất ngọt và mọng nước', 'https://pitayavn.com/upload/files/sanpham/hong-xiem-mac-bac-tien-giang.jpg', 20000, 386, 'kg', 1, '2024-06-16 18:13:40', 'liencx123');
INSERT INTO `products` VALUES (28, 10, 'Vú sữa Lò Rèn Vĩnh Kim', 'Vú sữa Lò Rèn Vĩnh Kim từ lâu được biết đến trong thị trường tiêu thụ hoa quả nội địa. Cây vú sữa được trồng tại Vĩnh Kim, nơi này nổi tiếng với đất phù sa màu mỡ, tạo điều kiện thuận lợi cho sự phát triển của cây. Quả vú sữa ở đây trắng, vỏ mỏng, hạt nhỏ, cùi dày, mang đến hương vị ngọt thơm đặc trưng. Đặc biệt, vú sữa chứa nhiều dưỡng chất như vitamin, chất xơ, và khoáng chất, giúp bổ sung năng lượng cho cơ thể. Phụ nữ ưa chuộng loại quả này vì có lợi cho làn da, làm cho da trở nên tươi trẻ và mịn màng. Vú sữa Lò Rèn Vĩnh Kim không chỉ được ưa chuộng trong nước mà còn xuất khẩu ra thị trường quốc tế.', 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/473649ngT/vu-sua-lo-ren-vinh-kim-18220.jpg', 60000, 487, 'kg', 1, '2024-06-16 18:15:26', 'liencx123');
INSERT INTO `products` VALUES (29, 10, 'Nhãn xuồng cơm vàng', 'Nhãn xuồng cơm vàng - Tên gọi đặc trưng của loại nhãn nổi tiếng trên mảnh đất Cà Mau, nơi nắng gió quyến rũ. Quả nhãn xuồng được đánh giá cao với giá bán từ 65 - 100 nghìn đồng, làm giàu cho cư dân địa phương. Với địa hình gần biển, cây nhãn xuồng phải đối mặt với gió mạnh. Lưới che giúp tránh rụng quả do gió, đồng thời bảo vệ chùm quả khỏi va đập làm hỏng. Quả nhãn xuồng có kích thước lớn, chín thành màu nâu đậm, hạt nhỏ, cùi dày, tạo nên chùm quả đồng đều. Đây là loại cây được phổ biến và phát triển thông qua quy trình ghép lai và mở rộng sản xuất.', 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/473649ZdW/nhan-xuong-com-vang-812187.jpg', 70000, 597, 'kg', 1, '2024-06-16 18:17:15', 'liencx123');
INSERT INTO `products` VALUES (30, 10, 'Xoài cát Hoài Lộc', 'Xoài cát Hoài Lộc - Một loại xoài thơm ngon đặc trưng của đồng bằng sông Cửu Long, thu hút với màu sắc quyến rũ và hương vị đậm đà. Quả nặng từ 350 - 450 gram, chín có màu vàng nhạt, thịt tươi và ngọt. Xuất phát từ xã Hòa Lộc, huyện Giáo Đức, tỉnh Định Tường (nay thuộc xã Hòa Hưng, huyện Cái Bè, Tiền Giang). Đặc biệt, Xoài Cát Hoài Lộc khi chín có thịt mịn chắc, ít xơ, giữ nguyên hương vị ngọt ngon. Loại xoài này không chỉ phục vụ nhu cầu trong nước mà còn xuất khẩu đi các thị trường khó tính như Mỹ và Nhật Bản, khẳng định vị thế trên thị trường quốc tế.', 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/473649msS/xoai-cat-hoai-loc-18226.jpg', 70000, 732, 'kg', 1, '2024-06-16 18:18:35', 'liencx123');
INSERT INTO `products` VALUES (31, 1, 'Táo', 'Táo tươi và mọng nước.', 'https://admin.nongsandungha.com/wp-content/uploads/2021/06/tao-my-huu-co-04-min.jpg', 20000, 100, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (32, 1, 'Chuối', 'Chuối ngọt và chín.', 'https://media.cooky.vn/images/blog-2016/L%E1%BB%A3i%20%C3%ADch%20c%E1%BB%A7a%20c%C3%A2y%20Chu%E1%BB%91i%20v%C3%A0%20tr%C3%A1i%20Chu%E1%BB%91i%20Cooky%201.jpg', 15000, 150, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (33, 1, 'Cà rốt', 'Cà rốt giòn.', 'https://cdn.medigoapp.com/product/572_0_075b629a04e69b4c9d27bac96b3361c2_8f805e5d04.jpg', 18000, 200, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (34, 1, 'Dưa leo', 'Dưa leo tươi.', 'https://khuyennongtphcm.vn/wp-content/uploads/2019/11/hat-giong-dua-leo-lai-f1-hunter.jpg', 12000, 250, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (35, 1, 'Cà chua', 'Cà chua hữu cơ.', 'https://toquoc.mediacdn.vn/Uploaded/thuynl/2017_03_30/hoinuoitrong13_VODC.jpg', 25000, 300, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (36, 2, 'Cam', 'Cam ngọt và mọng nước.', 'https://dacsancamvinh.net/wp-content/uploads/2015/11/cam-sanh.jpg', 30000, 100, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (37, 2, 'Xà lách', 'Xà lách tươi và giòn.', 'https://monrovia.vn/wp-content/uploads/2023/08/cach-trong-xa-lach.jpg', 10000, 150, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (38, 2, 'Xoài', 'Xoài chín và mọng nước.', 'https://cdn-i.vtcnews.vn/resize/th/upload/2023/10/21/cay-xoai-1-21214802.jpg', 35000, 200, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (39, 2, 'Bông cải xanh', 'Bông cải xanh tươi.', 'https://hatgiongrangdong.com/wp-content/uploads/2021/05/bong-cai-xanh.png', 27000, 250, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (40, 2, 'Ớt chuông', 'Ớt chuông đỏ và xanh.', 'https://azfarming.vn/wp-content/uploads/2020/10/trong-ot-chuong-tai-vuon.jpg', 32000, 300, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (41, 3, 'Dâu tây', 'Dâu tây hữu cơ.', 'https://lamdong.gov.vn/sites/dalat/gioithieu/SiteAssets/SitePages/12.6.2024-1718160414945.jpg', 40000, 100, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (42, 3, 'Cải bó xôi', 'Cải bó xôi tươi.', 'https://mobiagri.vn/wp-content/uploads/2023/04/cai-bo-xoi.2jpg.jpg', 15000, 150, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (43, 3, 'Dưa hấu', 'Dưa hấu mọng nước.', 'https://phanbonhuunghi.vn/wp-content/uploads/2021/03/ky_thuat_trong_dua_hau_nang_suat-1.jpg', 20000, 200, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (44, 3, 'Dứa', 'Dứa ngọt.', 'https://cdn.youmed.vn/tin-tuc/wp-content/uploads/2021/05/1-4.jpg', 25000, 250, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (45, 3, 'Nho', 'Nho ngon.', 'https://lamtho.vn/resources/2019/08/Trong-nho-1.jpg', 30000, 300, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (46, 4, 'Bơ', 'Bơ dinh dưỡng.', 'https://caygiongbo.com/datafiles/3/2018-11-11/14702659-giong-bo-034.jpg', 45000, 100, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (47, 4, 'Đậu que', 'Đậu que tươi.', 'https://giongrausach.com/wp-content/uploads/2014/12/hat-giong-dau-cove-bui.jpg', 18000, 150, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (48, 4, 'Bí ngòi', 'Bí ngòi tươi.', 'https://vinmec-prod.s3.amazonaws.com/images/20210531_041756_330407_bi-ngoi.max-1800x1800.jpg', 22000, 200, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (49, 4, 'Lê', 'Lê mọng nước.', 'https://cdn.medigoapp.com/product/qua_le_1_9d2c6a0975.png', 26000, 250, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (50, 4, 'Anh đào', 'Anh đào ngọt.', 'https://tfruit.com.vn/wp-content/uploads/2020/03/c%C3%A2y-cherry.jpg', 50000, 300, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (51, 5, 'Bí đỏ', 'Bí đỏ hữu cơ.', 'https://lh3.googleusercontent.com/proxy/ur83_rk338z7UTVHxlZUoHJnCkxsCzA3urwtspFdZqNBJW6zNJO31PxO2Uwl5dhw6P8X02KLrhFhNYrRR7BmoLpddh9OZwOLMj7yMLlwi9tLmWQdjmOHZT_RrA', 10000, 100, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (52, 5, 'Cà tím', 'Cà tím tươi.', 'https://mangtay.net/wp-content/uploads/2020/03/ky-thua-trong-ca-tim.jpg', 20000, 150, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (53, 5, 'Khoai lang', 'Khoai lang dinh dưỡng.', 'https://bizweb.dktcdn.net/100/083/067/products/4442100khoai-lang-nhat-4.jpg?v=1463123447380', 25000, 200, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (54, 5, 'Củ cải', 'Củ cải giòn.', 'https://vuonsaigon.vn/wp-content/uploads/2020/09/cach-trong-cu-cai-trang2.jpg', 15000, 250, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (55, 5, 'Củ dền', 'Củ dền tươi.', 'https://giadinh.mediacdn.vn/296230595582509056/2023/5/29/radijsplantenraphanussativussubspsativus-16849000828961454579199-1684985668492-16849856685561306577857-1685333090180-1685333090285523160091.jpg', 20000, 300, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (56, 6, 'Cải xoăn', 'Cải xoăn dinh dưỡng.', 'https://caodangyduochochiminh.vn/images/files/caodangyduochochiminh.vn/cai-xoan-co-tac-dung-gi.jpg', 25000, 100, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (57, 6, 'Dưa gang', 'Dưa gang mọng nước.', 'https://file.hstatic.net/200000572487/article/dua_luoi_va_dua_gang_a2393e906d2e422b812ee3416cd68e17.jpg', 30000, 150, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (58, 6, 'Bắp', 'Bắp ngọt.', 'https://vino.com.vn/upload/baiviet/03a622ce76258c7bd534-8034.jpg', 22000, 200, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (59, 6, 'Việt quất', 'Việt quất tươi.', 'https://hatgiongdalat.com/asset/upload/image/hat-giong-viet-quat-xanh_(4).jpg?v=20190410', 40000, 250, 'kg', 1, '2024-06-16 07:44:11', 'admin');
INSERT INTO `products` VALUES (60, 6, 'Trái sung', 'Trái sung ngon.', 'https://cdn.nhathuoclongchau.com.vn/unsafe/https://cms-prod.s3-sgn09.fptcloud.com/qua_cay_sung_6fea391fc4.jpg', 50000, 300, 'kg', 1, '2024-06-16 07:44:11', 'admin');

-- ----------------------------
-- Table structure for products_categories
-- ----------------------------
DROP TABLE IF EXISTS `products_categories`;
CREATE TABLE `products_categories`  (
  `product_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`category_id`, `product_id`) USING BTREE,
  INDEX `fk_product_id`(`product_id` ASC) USING BTREE,
  INDEX `fk_category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products_categories
-- ----------------------------
INSERT INTO `products_categories` VALUES (1, 1);
INSERT INTO `products_categories` VALUES (2, 2);
INSERT INTO `products_categories` VALUES (3, 2);
INSERT INTO `products_categories` VALUES (4, 3);
INSERT INTO `products_categories` VALUES (5, 4);
INSERT INTO `products_categories` VALUES (6, 4);
INSERT INTO `products_categories` VALUES (7, 4);
INSERT INTO `products_categories` VALUES (8, 4);
INSERT INTO `products_categories` VALUES (9, 5);
INSERT INTO `products_categories` VALUES (10, 6);
INSERT INTO `products_categories` VALUES (11, 7);
INSERT INTO `products_categories` VALUES (11, 8);
INSERT INTO `products_categories` VALUES (12, 9);
INSERT INTO `products_categories` VALUES (13, 10);
INSERT INTO `products_categories` VALUES (14, 11);
INSERT INTO `products_categories` VALUES (15, 11);
INSERT INTO `products_categories` VALUES (16, 12);
INSERT INTO `products_categories` VALUES (17, 13);
INSERT INTO `products_categories` VALUES (18, 14);
INSERT INTO `products_categories` VALUES (19, 15);
INSERT INTO `products_categories` VALUES (20, 16);
INSERT INTO `products_categories` VALUES (21, 16);
INSERT INTO `products_categories` VALUES (22, 16);
INSERT INTO `products_categories` VALUES (23, 17);
INSERT INTO `products_categories` VALUES (24, 18);
INSERT INTO `products_categories` VALUES (25, 18);
INSERT INTO `products_categories` VALUES (26, 19);
INSERT INTO `products_categories` VALUES (27, 20);
INSERT INTO `products_categories` VALUES (28, 21);
INSERT INTO `products_categories` VALUES (29, 22);
INSERT INTO `products_categories` VALUES (30, 23);
INSERT INTO `products_categories` VALUES (31, 1);
INSERT INTO `products_categories` VALUES (32, 1);
INSERT INTO `products_categories` VALUES (33, 1);
INSERT INTO `products_categories` VALUES (34, 1);
INSERT INTO `products_categories` VALUES (35, 3);
INSERT INTO `products_categories` VALUES (36, 3);
INSERT INTO `products_categories` VALUES (37, 1);
INSERT INTO `products_categories` VALUES (38, 1);
INSERT INTO `products_categories` VALUES (39, 3);
INSERT INTO `products_categories` VALUES (40, 3);
INSERT INTO `products_categories` VALUES (41, 3);
INSERT INTO `products_categories` VALUES (42, 1);
INSERT INTO `products_categories` VALUES (43, 3);
INSERT INTO `products_categories` VALUES (44, 3);
INSERT INTO `products_categories` VALUES (45, 3);
INSERT INTO `products_categories` VALUES (46, 3);
INSERT INTO `products_categories` VALUES (47, 2);
INSERT INTO `products_categories` VALUES (48, 2);
INSERT INTO `products_categories` VALUES (49, 2);
INSERT INTO `products_categories` VALUES (50, 2);
INSERT INTO `products_categories` VALUES (51, 2);
INSERT INTO `products_categories` VALUES (52, 2);
INSERT INTO `products_categories` VALUES (53, 2);
INSERT INTO `products_categories` VALUES (54, 2);
INSERT INTO `products_categories` VALUES (55, 2);
INSERT INTO `products_categories` VALUES (56, 2);
INSERT INTO `products_categories` VALUES (57, 2);
INSERT INTO `products_categories` VALUES (58, 2);
INSERT INTO `products_categories` VALUES (59, 3);
INSERT INTO `products_categories` VALUES (60, 3);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'ROLE_ADMIN', 1, '2024-05-29 11:54:59', 'ADMIN');
INSERT INTO `roles` VALUES (2, 'ROLE_USER', 1, '2024-05-29 12:22:51', 'ADMIN');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_username`(`username`) USING BTREE,
  UNIQUE INDEX `uk_email`(`email`) USING BTREE,
  UNIQUE INDEX `uk_phone`(`phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin1', NULL, 'admin1 address', '01230123', 'admin1@utc.com', 'admin1', '$2a$10$zdL7cqus4Aw6079kB0yzt.x5NrhHBQfhUXzL6KdyZZvmA8vvEj94S', 1, '2024-06-04 23:25:38.223000', 'ROLE_USER');
INSERT INTO `users` VALUES (2, 'Bùi Việt Đức', 'https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png', 'Tây Hồ, Hà Nội', '0988686868', 'ducbv@utc.com', 'ducbv123', '$2a$10$CE9U35Z0skMSU3H4sRqbXeRlhbUj4Iihj/Tm3tjotE6.Ol9UrpZHO', 1, '2024-06-16 16:23:49.351000', 'ROLE_USER');
INSERT INTO `users` VALUES (3, 'Lê Thị Thơm', 'https://static.vecteezy.com/system/resources/previews/002/002/257/original/beautiful-woman-avatar-character-icon-free-vector.jpg', 'Phan Rang, Ninh Thuận', '0428582890', 'thomlt@utc.com', 'thom123', '$2a$10$Qu7dLAe35f68DyhdBjeeSOXQKlxl1f1bpY2aLK9f6VcgVavOJwkFS', 1, '2024-06-16 16:28:25.867000', 'ROLE_USER');
INSERT INTO `users` VALUES (4, 'Ngô Thị Hoàng Thảo', 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2023/6/17/1205772/TRAI-CAY-7-01.jpg', 'Thanh Khê, Thanh Hà, Hải Dương', '0397681116', 'thaonth@utc.com', 'thao123', '$2a$10$I37WxY70e8U3lqKfZAKVDOP6LzAublivtxNJeabsSEONTmDdt03kO', 1, '2024-06-16 17:02:15.163000', 'ROLE_USER');
INSERT INTO `users` VALUES (5, 'Lê Liên Lục Lệ', 'https://mia.vn/media/uploads/blog-du-lich/hao-huc-review-vuon-man-moc-chau-voi-nhung-qua-gion-ngot-an-ngon-het-nac-03-1645983659.jpg', 'Bình Thuận', '02427895242', 'lelll@utc.com', 'lele123', '$2a$10$whrOlDif1ZxwdiGgn7wOfepd1oVxMxL4iBZ8PPzUpYbTeS/vZ2Pl6', 1, '2024-06-16 17:14:12.178000', 'ROLE_USER');
INSERT INTO `users` VALUES (6, 'Đa Chi Thăng', 'https://studiochupanhdep.com//Upload/Images/Album/anh-cuc-hoa-mi-dep-01.jpg', 'Bình Dương', '0444274882', 'thangdc@utc.com', 'thang123', '$2a$10$h/5QpVA/PASklo525eHk/uJV0u2YcyUZhjJtPbyRzRyNszsVCCT62', 1, '2024-06-16 17:31:33.035000', 'ROLE_USER');
INSERT INTO `users` VALUES (7, 'Lùng Cao Thắm', 'https://dacsanhuongquynh.vn/wp-content/uploads/2020/10/thong-tin-ve-nhan-va-long-nhan-hung-yen.jpg', 'Hưng Yên', '0478472495', 'tham123@utc.com', 'tham123', '$2a$10$5ocYUaqaYdl2ubMQTHPQqO5xZK/VozYMOpPKTY9qogvwtaM0D1q2.', 1, '2024-06-16 17:45:25.184000', 'ROLE_USER');
INSERT INTO `users` VALUES (8, 'Đào Mai Kiệt', 'https://kenh14cdn.com/2019/8/1/6778183014968688004714331150784943060680704n-1564652749294637057720.jpg', 'Sa Pa', '0427461336', 'kietdm@utc.com', 'kietdm123', '$2a$10$gZPvMbytmF/XAvmk9RqsE.RCcOi7ZtT.m/MXQgOKCHo9KvXHAtVmm', 1, '2024-06-16 17:51:48.973000', 'ROLE_USER');
INSERT INTO `users` VALUES (9, 'Chinh Chiến Mạnh', 'https://images2.thanhnien.vn/528068263637045248/2023/7/4/anh-162-1688464013286295753413.jpg', 'Bắc Hà, Lào Cai', '0245856694', 'manhcc@utc.com', 'manhcc123', '$2a$10$4nnkBasTJ633s5Fxj8bgWOXrFU0Pj2VI7emq/.C/l5QiA66bEYI7O', 1, '2024-06-16 17:57:59.455000', 'ROLE_USER');
INSERT INTO `users` VALUES (10, 'Cù Xa Liên', NULL, 'Long Thới, Tiểu Cần, Trà Vinh', '0427585552', 'liencx@utc.com', 'liencx123', '$2a$10$emsUlREIVpD7IkyiXije/eCYYr0/MuQysJA2zWnYchGJLJSA0zZKK', 1, '2024-06-16 18:12:08.386000', 'ROLE_USER');
INSERT INTO `users` VALUES (11, 'nguyen van foo', 'https://cdn.staticneo.com/w/naruto/Nprofile2.jpg', 'Cầu giấy - Hà Nội', '0988999776', 'foonv@gmail.com', 'nvfoo', '$2a$12$VcfiMrogYCV6KZsd.InAZucPHvvnDZNNl8C/fwB1p06slekYrlJbu', 1, '2024-06-16 14:12:53.000000', NULL);
INSERT INTO `users` VALUES (12, 'Uchiha Sasuke', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzBSAraBzTmAH1NhULjYkDTJmFq7804-Cpww&s', 'Thanh Xuân - Hà Nội', '0988999777', 'sasuke@gmail.com', 'sasuke', '$2a$12$VcfiMrogYCV6KZsd.InAZucPHvvnDZNNl8C/fwB1p06slekYrlJbu', 1, '2024-06-16 14:15:06.000000', NULL);
INSERT INTO `users` VALUES (13, 'gojo satoru', 'https://belmontfilmhouse.com/wp-content/uploads/2024/05/Netflix-53.png', 'Mỹ Đình - Hà Nội', '0898777878', 'gojo@gmail.com', 'gojo', '$2a$12$VcfiMrogYCV6KZsd.InAZucPHvvnDZNNl8C/fwB1p06slekYrlJbu', 1, '2024-06-16 14:16:45.000000', NULL);
INSERT INTO `users` VALUES (14, 'itadori yuji', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9PzijB7hTRfMBLtAIBOft6Vse5rMWov07PA&s', 'Tây Hồ - Hà Nội', '0989897231', 'itadori@gmail.com', 'yuji', '$2a$12$VcfiMrogYCV6KZsd.InAZucPHvvnDZNNl8C/fwB1p06slekYrlJbu', 1, '2024-06-16 14:18:19.000000', NULL);
INSERT INTO `users` VALUES (15, 'nguyen van anh', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8bKoMIMyFKlnzQGR4gFnAdWXIx-cHIsFvDg&s', 'Cầu Diễn - Hà Nội', '0352123542', 'anv@gmail.com', 'anv', '$2a$12$VcfiMrogYCV6KZsd.InAZucPHvvnDZNNl8C/fwB1p06slekYrlJbu', 1, '2024-06-16 14:21:04.000000', NULL);

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles`  (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKj6m8fwv7oqv74fcehir1a9ffy`(`role_id`) USING BTREE,
  CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES (1, 1);
INSERT INTO `users_roles` VALUES (1, 2);
INSERT INTO `users_roles` VALUES (2, 2);
INSERT INTO `users_roles` VALUES (3, 2);
INSERT INTO `users_roles` VALUES (4, 2);
INSERT INTO `users_roles` VALUES (5, 2);
INSERT INTO `users_roles` VALUES (6, 2);
INSERT INTO `users_roles` VALUES (7, 2);
INSERT INTO `users_roles` VALUES (8, 2);
INSERT INTO `users_roles` VALUES (9, 2);
INSERT INTO `users_roles` VALUES (10, 2);
INSERT INTO `users_roles` VALUES (11, 2);
INSERT INTO `users_roles` VALUES (12, 2);
INSERT INTO `users_roles` VALUES (13, 2);
INSERT INTO `users_roles` VALUES (14, 2);
INSERT INTO `users_roles` VALUES (15, 2);

SET FOREIGN_KEY_CHECKS = 1;
