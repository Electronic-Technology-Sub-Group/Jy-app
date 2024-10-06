/*
 Navicat MySQL Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 127.0.0.1:3306
 Source Schema         : mydemo

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 14/12/2023 20:20:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- drop database myDemo;
create database myDemo;
use myDemo;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `album_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('保持热爱');
INSERT INTO `album` VALUES ('冬日可爱');
INSERT INTO `album` VALUES ('苦尽甘来');
INSERT INTO `album` VALUES ('来日可期');
INSERT INTO `album` VALUES ('平安喜乐');
INSERT INTO `album` VALUES ('如约而至');
INSERT INTO `album` VALUES ('万事顺利');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_picture` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_synopsis` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `album_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '张爱玲', 'https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', '张爱玲的优美语句', NULL);
INSERT INTO `category` VALUES (9, '放下盔甲', 'https://pica.zhimg.com/80/v2-fb415c9de5b6ad19ffb526cf1f636df0_720w.webp', '生很短，不过晨暮与春秋，一生所求，不过平安和自由', '平安喜乐');
INSERT INTO `category` VALUES (10, '你好旧时光', 'https://pic4.zhimg.com/v2-7b6bff6ffc46b0250f170ada7b867d79_r.jpg', '此生三愿：家人平安，岁月静好，初心依然', '平安喜乐');
INSERT INTO `category` VALUES (11, '平安健康，喜乐自持', 'https://picx.zhimg.com/v2-8e01c2b18429c809d623c8a20876d4f9_r.jpg', '生活虽然平淡无奇，但想到家人平安喜乐，心中就倍感欣慰', '平安喜乐');
INSERT INTO `category` VALUES (12, '平安喜乐，得偿所愿', 'https://pic1.zhimg.com/80/v2-1040c1c8d012186a37752a7d2897430a_720w.webp', '明灯三千，只愿你平安喜乐，岁岁年年', '平安喜乐');
INSERT INTO `category` VALUES (13, '一段并不开心的时光', 'https://pic4.zhimg.com/v2-e648bab763f4d1084b1e04407dc96435_r.jpg', '岁岁年年，年年平安，岁岁亦年年，年年亦平安', '平安喜乐');
INSERT INTO `category` VALUES (14, '这是我能想到的最好的生活', 'https://pic2.zhimg.com/80/v2-d0a74372cf350a27c1b36648c2521da5_720w.webp', '生活总是这样，无时无刻不在开玩笑', '平安喜乐');
INSERT INTO `category` VALUES (15, '真正圆满，真的很难', 'https://pic1.zhimg.com/80/v2-cfe454ae564a589c5868edbd07870a16_720w.webp', '每件事不仅能如意，还要超出期待一点。', '平安喜乐');
INSERT INTO `category` VALUES (16, '春暖，花都开好了！', 'https://pic1.zhimg.com/v2-ecad46f0253538ff8db4de900bf8b3bc_b.jpg', '龙应当藏在云里，你应当藏在心里。', '来日可期');
INSERT INTO `category` VALUES (17, '放心吧，你一定可以做得到的', 'https://pic3.zhimg.com/v2-0241eb47700c4a3fba45d3148194729a_b.jpg', '想要劫持一颗星星， 在月色朦胧的夜晚降落到你的梦里。', '来日可期');
INSERT INTO `category` VALUES (18, '飞扬的少年最动人心', 'https://pic3.zhimg.com/v2-a060f62ecd7dd168c23464bdbdbf408e_b.jpg', '世事千帆过 路的尽头会是温柔和月光。', '来日可期');
INSERT INTO `category` VALUES (19, '路的尽头会是温柔和月光', 'https://pic4.zhimg.com/v2-06783ac01da35d77837bbd8cb4dfabcb_b.jpg', '你一定也是某个人翘首以盼的惊喜。', '来日可期');
INSERT INTO `category` VALUES (20, '能活在被你爱着的世间真好', 'https://pic3.zhimg.com/v2-5b3a85250d8d146d0d6fcf0304e61db2_b.jpg', '你是亿万星河都抵不过的风景，你住在光里，带着星和月的气息。', '来日可期');
INSERT INTO `category` VALUES (21, '是某个人翘首以盼的惊喜', 'https://pic3.zhimg.com/v2-7dbc8eb1a82ac5577b45eaa7c767de32_r.jpg', '爱你的人，已星夜兼程，走在来路。', '来日可期');
INSERT INTO `category` VALUES (22, '我们有一种最好的期待', 'https://pic2.zhimg.com/v2-db7139651acf5bc651f58266f02ba3ed_b.jpg', '认真生活 就能找到被人生偷藏起来的糖果。', '来日可期');
INSERT INTO `category` VALUES (23, '就好像变老了可以', 'https://pic2.zhimg.com/v2-f7260a48430c112dc5600e1363fbe3e5_r.jpg', '我还是喜欢一切没有规律可循的事情', '如约而至');
INSERT INTO `category` VALUES (24, '你在我身边才是最好', 'https://pic2.zhimg.com/v2-1ee9e837535ea01bc578f4403bf221d5_b.jpg', '“如约而至”是个多么美好的词，等的辛苦，却也从不辜负。', '如约而至');
INSERT INTO `category` VALUES (25, '平淡得如白开水', 'https://pic3.zhimg.com/v2-3685ed38e87e8b47c4e94394da143cc2_b.jpg', '如约而至有着期待后的满足感；', '如约而至');
INSERT INTO `category` VALUES (26, '温良如水的回忆', 'https://pic4.zhimg.com/v2-432030cac80a22c9a004c43d3b8428db_b.jpg', '抗得住夏日热浪，守得住人生理想，遇见更多的美好，愿所有美好如约而至。', '如约而至');
INSERT INTO `category` VALUES (27, '我们可以相约老地方', 'https://pic2.zhimg.com/v2-674be6ed238d702bce797abeea31b2d9_b.jpg', '不是夏日限定，是来日方长。', '如约而至');
INSERT INTO `category` VALUES (28, '我们是可以一起成长的人', 'https://pic4.zhimg.com/v2-40afa7763a9de3e7ea476b58ece9519b_b.jpg', '白昼渐短，但愿相聚更长。', '如约而至');
INSERT INTO `category` VALUES (29, '流浪小狗会觉得自己完全自由吗', 'https://pic4.zhimg.com/v2-3f654a3dafe2cb711c3f63daef990d4b_r.jpg', '半夏花开颜如玉，陌上流年入清欢。', '苦尽甘来');
INSERT INTO `category` VALUES (30, '如果事与愿违那一定另有安排', 'https://pic4.zhimg.com/v2-cc870203f03ca20e72ce218a160d4cfb_r.jpg', '昼夜的长短，轮流替换，思慕的姿态，不曾改变。', '苦尽甘来');
INSERT INTO `category` VALUES (31, '我们都多久没见面了', 'https://pic4.zhimg.com/v2-d0408b74346ab1b9e9ad493fa30d6d5f_r.jpg', '夏至和冰啤酒，像你和他一样般配。', '苦尽甘来');
INSERT INTO `category` VALUES (32, '心之所想才是心之所向', 'https://pic1.zhimg.com/v2-bf744be20f8e59dc6aca33330ec7d1b8_r.jpg', '愿你清凉顺意，一夏安然', '苦尽甘来');
INSERT INTO `category` VALUES (33, '幸好乘最后一趟列车回到了家', 'https://pic4.zhimg.com/v2-56a70e78c52ee6551c28c903882dd4ef_r.jpg', '等到秋叶终于金黄，华发悄然苍苍', '苦尽甘来');
INSERT INTO `category` VALUES (34, '野花生长爱意永不消退', 'https://pic3.zhimg.com/v2-85056311755e1760f21962380eef5d16_r.jpg', '大家相遇一场是特别的缘分', '苦尽甘来');
INSERT INTO `category` VALUES (35, '冬天就是要靠近温暖的人和事', 'https://pic1.zhimg.com/v2-e96e8693b297a228a4c6e41de96e6b40_b.jpg', '无法启动学习模式，因为太冷，懒的动，卡机了', '苦尽甘来');
INSERT INTO `category` VALUES (36, '天冷了大家多吃点衣服', 'https://pic2.zhimg.com/v2-f082f630f413ac6800e184fb9def2be5_b.jpg', '最近的天气，让我觉得每次开门都像在开冰箱', '冬日可爱');
INSERT INTO `category` VALUES (37, '天气冷的我以为它在冲业绩', 'https://pic3.zhimg.com/v2-f35385d65b2d7d0cbad5968bca8f4a4a_r.jpg', '手够不到的地方都是远方，床以外的都是他乡', '冬日可爱');
INSERT INTO `category` VALUES (38, '下次见面就要穿成小熊啦', 'https://pic3.zhimg.com/v2-02e42eac3748b13b7c4d93d8634bfbe6_r.jpg', '不回你消息不是因为我高冷，而是因为我手冷', '冬日可爱');
INSERT INTO `category` VALUES (39, '现在对时尚的理解是：保暖为主', 'https://pic4.zhimg.com/v2-ae3249d7981fc5ae2e23fde1bc4113e7_r.jpg', '秋天的烦恼一定会被冬天的雪埋藏', '冬日可爱');
INSERT INTO `category` VALUES (40, '因为太冷，懒的动', 'https://pic2.zhimg.com/v2-b01ac6163ebb4d7ca616b99219c7181d_r.jpg', ' 光明正大 懒被窝.', '冬日可爱');
INSERT INTO `category` VALUES (41, '保持罗曼蒂克', 'https://pic1.zhimg.com/v2-dd0b3e7274c373b15ff83828dd3a1000_b.jpg', '自律且努力，别让生活太安逸。', '冬日可爱');
INSERT INTO `category` VALUES (42, '多喜乐、长安宁', 'https://pic3.zhimg.com/v2-276b453345ab55516f44d926a99a1ace_r.jpg', '事情想做就不要拖。', '保持热爱');
INSERT INTO `category` VALUES (43, '及时止损', 'https://pic2.zhimg.com/v2-6c57cdedacc2effc9bd209202671ddc5_b.jpg', '不要忘记你曾是一个怎样的小孩。', '保持热爱');
INSERT INTO `category` VALUES (44, '热爱可抵岁月漫长', 'https://pic1.zhimg.com/v2-93c6d1c6e061f743368d1d43f1cb9928_r.jpg', '心怀浪漫宇宙，也珍惜人间日常。', '保持热爱');
INSERT INTO `category` VALUES (45, '往事清零，万事顺意', 'https://pic4.zhimg.com/v2-fc40f8e4e4d4f8d7b92b97bc2df031cf_b.jpg', '希望熬过一切，星光璀璨。', '保持热爱');
INSERT INTO `category` VALUES (46, '未曾谋面的也迟早会相遇', 'https://pic3.zhimg.com/v2-6174379bbc3939e8caeae0c374878d5e_r.jpg', '没关系，天空越黑，星星越亮。', '保持热爱');
INSERT INTO `category` VALUES (47, '希望熬过一切', 'https://pic2.zhimg.com/v2-4f01a77a2e4a40fe84727d5ea2742f71_r.jpg', '尘隔海，古屋不再――《听听那冷雨》。尘隔海，古屋不再――《听听那冷雨》。', '保持热爱');
INSERT INTO `category` VALUES (48, '自律且努力', 'https://pic4.zhimg.com/v2-e7b12d1df78f752ce532a2c69c9b4047_r.jpg', '这吹不出褶子的平静日子 也在闪光。', '保持热爱');
INSERT INTO `category` VALUES (49, '不摘别人的花 只陪对的人长大', 'https://pic3.zhimg.com/v2-ab462481ec085bfdad485e2b7929c7a6_r.jpg', '别人的建议仅供参考 你不开心就不要参考。', '保持热爱');
INSERT INTO `category` VALUES (50, '可爱的秘诀是发现快乐和宝藏', 'https://pic2.zhimg.com/v2-cffa98603050b77b2ec6ea9260293f09_r.jpg', '热闹的人容易散 慢热的人最长情。', '万事顺利');
INSERT INTO `category` VALUES (51, '晚风依旧很温柔', 'https://pic3.zhimg.com/v2-ba76b8f4ddace4eb139e24f6daa3710e_b.jpg', '生活原本沉闷，但跑起来就会有风。', '万事顺利');
INSERT INTO `category` VALUES (52, '希望大家都能慢慢完成愿望', 'https://pic1.zhimg.com/v2-264810bd5d8083edbd7f6ec4d5e7d21c_b.jpg', '保持热爱，奔赴山海；忠于自己，热爱生活。', '万事顺利');
INSERT INTO `category` VALUES (53, '心里装着小星星', 'https://pic2.zhimg.com/v2-fb08a20e3e2badfd984fb2423e1e33ad_r.jpg', '在光阴的剪影中盈盈浅笑，任寒风吹过依旧向阳。', '万事顺利');
INSERT INTO `category` VALUES (54, '心事难懂，毕竟你是你', 'https://pic1.zhimg.com/v2-fe6a35c2464c66928eaa1caee06e7df4_r.jpg', '不辜负每一个太阳升起的日子，不辜负身边每一场花开。', '万事顺利');
INSERT INTO `category` VALUES (55, '一朵小花，想不开就谢了', 'https://pic3.zhimg.com/v2-ea264f064bf3665a6bc67626b9352ece_r.jpg', '路上总有阴影,但抬头总能看见阳光。', '万事顺利');
INSERT INTO `category` VALUES (56, '一个人慢慢走', 'https://pic2.zhimg.com/v2-84f9b00ab6e7fba64993066b8731c589_b.jpg', '这一生风雨兼程，就是为了遇见最好的自己。', '万事顺利');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `moment_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `comment_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `comment_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `sentence_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 1, 1, '1111', '2023-11-13 19:15:44', NULL);
INSERT INTO `comments` VALUES (2, 3, 1, '我才是帅哥', '2023-11-16 18:29:44', 1);
INSERT INTO `comments` VALUES (3, NULL, 1, '你们都是小学生', '2023-11-17 14:12:10', 1);
INSERT INTO `comments` VALUES (4, 1, 1, '---------------分割线---------------', '2023-11-17 14:32:15', NULL);
INSERT INTO `comments` VALUES (5, NULL, 1, '你们都是小学生', '2023-12-03 16:29:48', 280);
INSERT INTO `comments` VALUES (6, 1, 1, '---------------分割线---------------', '2023-12-04 10:51:00', NULL);
INSERT INTO `comments` VALUES (7, 1, 1, '---------------分割线---------------', '2023-12-04 10:51:02', NULL);
INSERT INTO `comments` VALUES (8, 1, 1, '---------------分割线---------------', '2023-12-04 12:08:15', NULL);
INSERT INTO `comments` VALUES (9, NULL, 3, 'xxs', '2023-12-06 12:31:25', 280);
INSERT INTO `comments` VALUES (10, NULL, 3, 'xxs', '2023-12-06 12:32:50', 288);
INSERT INTO `comments` VALUES (11, NULL, 3, 'xxs', '2023-12-06 12:34:22', 288);
INSERT INTO `comments` VALUES (12, NULL, 3, 'xxs', '2023-12-06 12:36:56', 288);
INSERT INTO `comments` VALUES (13, NULL, 3, '你好', '2023-12-06 13:12:28', 288);
INSERT INTO `comments` VALUES (14, NULL, 7, '你好', '2023-12-06 14:19:52', 288);
INSERT INTO `comments` VALUES (15, NULL, 3, '你好', '2023-12-06 14:23:53', 287);
INSERT INTO `comments` VALUES (16, NULL, 7, '你好', '2023-12-06 14:26:42', 288);
INSERT INTO `comments` VALUES (17, NULL, 7, '你好', '2023-12-06 14:31:11', 288);
INSERT INTO `comments` VALUES (18, NULL, 7, '你好1111', '2023-12-06 14:43:30', 288);
INSERT INTO `comments` VALUES (19, NULL, 7, '你好', '2023-12-08 22:41:15', 247);
INSERT INTO `comments` VALUES (20, NULL, 7, '你好\n', '2023-12-09 20:12:59', 261);

-- ----------------------------
-- Table structure for derivation
-- ----------------------------
DROP TABLE IF EXISTS `derivation`;
CREATE TABLE `derivation`  (
  `derivation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sentence_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of derivation
-- ----------------------------
INSERT INTO `derivation` VALUES ('--算术', 1);
INSERT INTO `derivation` VALUES ('--曾', 1);
INSERT INTO `derivation` VALUES ('--张爱玲', 180);
INSERT INTO `derivation` VALUES ('--张爱玲', 181);
INSERT INTO `derivation` VALUES ('--张爱玲', 182);
INSERT INTO `derivation` VALUES ('--张爱玲', 183);
INSERT INTO `derivation` VALUES ('--张爱玲', 184);
INSERT INTO `derivation` VALUES ('--张爱玲', 185);
INSERT INTO `derivation` VALUES ('--张爱玲', 186);
INSERT INTO `derivation` VALUES ('--张爱玲', 187);
INSERT INTO `derivation` VALUES ('--张爱玲', 188);
INSERT INTO `derivation` VALUES ('--张爱玲', 189);
INSERT INTO `derivation` VALUES ('--张爱玲', 190);
INSERT INTO `derivation` VALUES ('--张爱玲', 191);
INSERT INTO `derivation` VALUES ('--张爱玲', 192);
INSERT INTO `derivation` VALUES ('--张爱玲', 193);
INSERT INTO `derivation` VALUES ('--张爱玲', 194);
INSERT INTO `derivation` VALUES ('--张爱玲', 195);
INSERT INTO `derivation` VALUES ('--张爱玲', 196);
INSERT INTO `derivation` VALUES ('--张爱玲', 197);
INSERT INTO `derivation` VALUES ('--张爱玲', 198);
INSERT INTO `derivation` VALUES ('--张爱玲', 199);
INSERT INTO `derivation` VALUES ('--张爱玲', 200);
INSERT INTO `derivation` VALUES ('--张爱玲', 201);
INSERT INTO `derivation` VALUES ('--张爱玲', 202);
INSERT INTO `derivation` VALUES ('--张爱玲', 203);
INSERT INTO `derivation` VALUES ('--张爱玲', 204);
INSERT INTO `derivation` VALUES ('--张爱玲', 205);
INSERT INTO `derivation` VALUES ('--张爱玲', 206);
INSERT INTO `derivation` VALUES ('--张爱玲', 207);
INSERT INTO `derivation` VALUES ('--张爱玲', 208);
INSERT INTO `derivation` VALUES ('--张爱玲', 209);
INSERT INTO `derivation` VALUES ('--张爱玲', 210);
INSERT INTO `derivation` VALUES ('--张爱玲', 211);
INSERT INTO `derivation` VALUES ('--张爱玲', 212);
INSERT INTO `derivation` VALUES ('--张爱玲', 213);
INSERT INTO `derivation` VALUES ('--张爱玲', 214);
INSERT INTO `derivation` VALUES ('--张爱玲', 215);
INSERT INTO `derivation` VALUES ('--张爱玲', 216);
INSERT INTO `derivation` VALUES ('--张爱玲', 217);
INSERT INTO `derivation` VALUES ('--张爱玲', 218);
INSERT INTO `derivation` VALUES ('--张爱玲', 219);
INSERT INTO `derivation` VALUES ('--张爱玲', 220);
INSERT INTO `derivation` VALUES ('--张爱玲', 221);
INSERT INTO `derivation` VALUES ('--张爱玲', 222);
INSERT INTO `derivation` VALUES ('--张爱玲', 223);
INSERT INTO `derivation` VALUES ('--张爱玲', 224);
INSERT INTO `derivation` VALUES ('--张爱玲', 225);
INSERT INTO `derivation` VALUES ('--张爱玲', 226);
INSERT INTO `derivation` VALUES ('--张爱玲', 227);
INSERT INTO `derivation` VALUES ('--张爱玲', 228);
INSERT INTO `derivation` VALUES ('--张爱玲', 229);
INSERT INTO `derivation` VALUES ('--张爱玲', 230);
INSERT INTO `derivation` VALUES ('--张爱玲', 231);
INSERT INTO `derivation` VALUES ('--张爱玲', 232);
INSERT INTO `derivation` VALUES ('--张爱玲', 233);
INSERT INTO `derivation` VALUES ('--张爱玲', 234);
INSERT INTO `derivation` VALUES ('--张爱玲', 235);
INSERT INTO `derivation` VALUES ('--张爱玲', 236);
INSERT INTO `derivation` VALUES ('--张爱玲', 237);
INSERT INTO `derivation` VALUES ('--张爱玲', 238);
INSERT INTO `derivation` VALUES ('--张爱玲', 239);
INSERT INTO `derivation` VALUES ('--张爱玲', 240);
INSERT INTO `derivation` VALUES ('--张爱玲', 241);
INSERT INTO `derivation` VALUES ('--张爱玲', 242);
INSERT INTO `derivation` VALUES ('--张爱玲', 243);
INSERT INTO `derivation` VALUES ('--张爱玲', 244);
INSERT INTO `derivation` VALUES ('--张爱玲', 245);
INSERT INTO `derivation` VALUES ('--张爱玲', 246);
INSERT INTO `derivation` VALUES ('--张爱玲', 247);
INSERT INTO `derivation` VALUES ('--张爱玲', 248);
INSERT INTO `derivation` VALUES ('--张爱玲', 249);
INSERT INTO `derivation` VALUES ('--张爱玲', 250);
INSERT INTO `derivation` VALUES ('--张爱玲', 251);
INSERT INTO `derivation` VALUES ('--张爱玲', 252);
INSERT INTO `derivation` VALUES ('--张爱玲', 253);
INSERT INTO `derivation` VALUES ('--张爱玲', 254);
INSERT INTO `derivation` VALUES ('--张爱玲', 255);
INSERT INTO `derivation` VALUES ('--张爱玲', 256);
INSERT INTO `derivation` VALUES ('--张爱玲', 257);
INSERT INTO `derivation` VALUES ('--张爱玲', 258);
INSERT INTO `derivation` VALUES ('--张爱玲', 259);
INSERT INTO `derivation` VALUES ('--张爱玲', 260);
INSERT INTO `derivation` VALUES ('--张爱玲', 261);
INSERT INTO `derivation` VALUES ('--张爱玲', 262);
INSERT INTO `derivation` VALUES ('--张爱玲', 263);
INSERT INTO `derivation` VALUES ('--张爱玲', 264);
INSERT INTO `derivation` VALUES ('--张爱玲', 265);
INSERT INTO `derivation` VALUES ('--张爱玲', 266);
INSERT INTO `derivation` VALUES ('--张爱玲', 267);
INSERT INTO `derivation` VALUES ('--张爱玲', 268);

-- ----------------------------
-- Table structure for diary
-- ----------------------------
DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary`  (
  `diary_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` int(11) NOT NULL,
  `diary_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`diary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diary
-- ----------------------------
INSERT INTO `diary` VALUES (1, '2023-12-14 16:12:14', 1, 'ssssssssss', '曾日闽', 'https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg');
INSERT INTO `diary` VALUES (5, '2023-12-14 20:15:30', 3, '今天是一个好日子', '小茄', 'https://kab.oss-cn-beijing.aliyuncs.com/5a0859c3-b10b-4bbe-8708-da0da0087352.png');
INSERT INTO `diary` VALUES (6, '2023-12-14 20:15:31', 3, '今天是一个好日子', '小茄', 'https://kab.oss-cn-beijing.aliyuncs.com/5a0859c3-b10b-4bbe-8708-da0da0087352.png');
INSERT INTO `diary` VALUES (7, '2023-12-14 20:15:31', 3, '今天是一个好日子', '小茄', 'https://kab.oss-cn-beijing.aliyuncs.com/5a0859c3-b10b-4bbe-8708-da0da0087352.png');
INSERT INTO `diary` VALUES (8, '2023-12-14 20:15:31', 3, '今天是一个好日子', '小茄', 'https://kab.oss-cn-beijing.aliyuncs.com/5a0859c3-b10b-4bbe-8708-da0da0087352.png');
INSERT INTO `diary` VALUES (9, '2023-12-14 20:15:32', 3, '今天是一个好日子', '小茄', 'https://kab.oss-cn-beijing.aliyuncs.com/5a0859c3-b10b-4bbe-8708-da0da0087352.png');

-- ----------------------------
-- Table structure for fan
-- ----------------------------
DROP TABLE IF EXISTS `fan`;
CREATE TABLE `fan`  (
  `user_id` int(11) NULL DEFAULT NULL,
  `fanUser_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fan
-- ----------------------------
INSERT INTO `fan` VALUES (1, 2);
INSERT INTO `fan` VALUES (4, 2);
INSERT INTO `fan` VALUES (1, 3);
INSERT INTO `fan` VALUES (3, 1);
INSERT INTO `fan` VALUES (26, 3);

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `favorite_id` int(11) NOT NULL AUTO_INCREMENT,
  `sentence_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`favorite_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO `favorites` VALUES (2, 1, 1);
INSERT INTO `favorites` VALUES (4, 280, 3);

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `user_id` int(11) NULL DEFAULT NULL,
  `followUser_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES (2, 1);
INSERT INTO `follow` VALUES (2, 4);
INSERT INTO `follow` VALUES (1, 4);
INSERT INTO `follow` VALUES (7, 1);
INSERT INTO `follow` VALUES (3, 1);
INSERT INTO `follow` VALUES (1, 3);
INSERT INTO `follow` VALUES (3, 26);

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`  (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `moment_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `like_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `sentence_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`like_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES (2, 3, 1, '2023-11-14 15:54:32', NULL);
INSERT INTO `likes` VALUES (3, 3, 3, '2023-11-14 15:54:32', NULL);
INSERT INTO `likes` VALUES (4, 3, 2, '2023-11-17 13:13:52', NULL);
INSERT INTO `likes` VALUES (12, NULL, 1, '2023-11-17 13:41:13', 1);
INSERT INTO `likes` VALUES (13, 1, 1, '2023-11-17 14:31:15', NULL);
INSERT INTO `likes` VALUES (15, NULL, 1, '2023-12-03 16:29:27', 280);
INSERT INTO `likes` VALUES (18, NULL, 0, '2023-12-05 15:29:07', 0);
INSERT INTO `likes` VALUES (19, NULL, 0, '2023-12-05 15:29:07', 0);
INSERT INTO `likes` VALUES (20, NULL, 0, '2023-12-05 15:29:07', 0);
INSERT INTO `likes` VALUES (21, NULL, 0, '2023-12-05 15:29:07', 0);
INSERT INTO `likes` VALUES (22, NULL, 0, '2023-12-05 15:29:07', 0);
INSERT INTO `likes` VALUES (23, NULL, 0, '2023-12-05 15:29:01', 0);
INSERT INTO `likes` VALUES (26, NULL, 3, '2023-12-05 15:49:58', 279);
INSERT INTO `likes` VALUES (27, NULL, 3, '2023-12-05 15:55:08', 280);
INSERT INTO `likes` VALUES (28, 17, 3, '2023-12-07 12:55:09', NULL);
INSERT INTO `likes` VALUES (30, 185, 3, '2023-12-08 22:59:11', NULL);
INSERT INTO `likes` VALUES (31, 291, 1, '2023-12-09 12:42:43', NULL);
INSERT INTO `likes` VALUES (32, 290, 3, '2023-12-09 20:12:24', NULL);
INSERT INTO `likes` VALUES (33, 289, 3, '2023-12-11 12:24:00', NULL);
INSERT INTO `likes` VALUES (34, NULL, 3, '2023-12-11 12:24:27', 284);

-- ----------------------------
-- Table structure for moment
-- ----------------------------
DROP TABLE IF EXISTS `moment`;
CREATE TABLE `moment`  (
  `moment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `moment_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `moment_create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`moment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 290 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moment
-- ----------------------------
INSERT INTO `moment` VALUES (1, 1, 'xxs', '2023-12-08 20:56:56', 0);
INSERT INTO `moment` VALUES (2, 1, 'sbdx', '2023-12-08 20:56:56', 0);
INSERT INTO `moment` VALUES (3, 1, '我是大帅哥', '2023-12-08 20:56:56', 0);
INSERT INTO `moment` VALUES (4, 1, '我是大帅哥', '2023-12-08 20:56:56', 0);
INSERT INTO `moment` VALUES (5, 1, '我是大帅哥', '2023-12-08 20:56:56', 0);
INSERT INTO `moment` VALUES (7, 1, '嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻', '2023-12-08 20:56:56', 0);
INSERT INTO `moment` VALUES (14, 1, '嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻', '2023-12-08 20:56:56', 0);
INSERT INTO `moment` VALUES (15, 1, '嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻', '2023-12-08 20:56:56', 0);
INSERT INTO `moment` VALUES (16, 1, '小学生', '2023-12-08 20:56:56', 0);
INSERT INTO `moment` VALUES (17, 1, '小学生', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (18, 1, '小学生', '2023-12-04 11:34:36', 0);
INSERT INTO `moment` VALUES (19, 1, '小学生', '2023-12-04 11:36:51', 0);
INSERT INTO `moment` VALUES (20, 1, '小学生', '2023-12-04 11:46:16', 0);
INSERT INTO `moment` VALUES (21, 1, '小学生', '2023-12-04 12:08:04', 0);
INSERT INTO `moment` VALUES (22, 8, '舍友都去图书馆了，宿舍就剩我一个人，还有必要去图书馆吗？', '2023-12-06 15:18:59', 0);
INSERT INTO `moment` VALUES (23, 8, '老铁不是打击你啊，就大众长相不算美女，鼻头有点大的过分。。。', '2023-12-06 15:18:59', 0);
INSERT INTO `moment` VALUES (24, 8, '这张图可以封神了吧，白云锦鲤。祝见者皆好运', '2023-12-06 15:18:59', 0);
INSERT INTO `moment` VALUES (25, 8, '我认为富贵命才是最可怕的，富乃是钱，钱的数量达到亿万富翁。贵，决定了你达到的高度，不贵者常低声下气，心里脆弱的人难忍耐。而高智商是一种乐趣，也是开拓世界的广度。但更多的是能使情商到一种很高的高度。 功 名 富 贵 皆由命定，丝毫不能做主。但最重要的是前世，一个好的前世，其实比什么都重要。!', '2023-12-06 15:19:00', 0);
INSERT INTO `moment` VALUES (26, 9, '视频是帮助我们快速入门，但是并不能至于视频，因为一些细节的知识点视频上并没有提及，这时候我们就要回归书本。', '2023-12-06 15:19:00', 0);
INSERT INTO `moment` VALUES (27, 9, '坏消息：这个连知网都搜不到的文献说出去容易被质疑科研水平和科研态度。好消息：知网查不到，web of science也查不到，只要你不说，我不说，别人查你的科研历史的时候想搜也搜不到。', '2023-12-06 15:19:00', 0);
INSERT INTO `moment` VALUES (28, 9, '换一个想让老板失去沟通欲望的头像，不一定是在膈应领导或逃避沟通，而是真的不想领导不断PUA和施加各种工作压力。在职场里，不是每家公司的氛围都是狼性，也不是每个职场人都想要通过讨好领导、拍领导马屁的方式来获得职场发展的。有些人每天都千方百计讨好领导、给领导送礼，领导倡导加班也盲目服从、从不拒绝，这样的人一般都是想通过出卖自己的劳动力和面子来获取晋升和提拔的机会；但也有很多职场人觉得自己只要在职场上获得能力的提升就足够了，也不想工作占据自己的生活时间，而领导或老板却因此找自己的麻烦，觉得不加班的员工就是不思进取、工作不够饱和，还经常抓住员工的某个细节不放，非要员工做一个详尽的方案和规划来解决一个很小的问题，那员工自然不想领导或老板经常PUA自己，只能换上一个“让领导或老板失去沟通欲望”的头像来间接劝退领导布置额外的工作。“换上让领导或老板失去沟通的头像”，其实是一种打工人的一种自我防备机制。就好比你的某个好友天天在微信里找你聊天，让你帮他干这干那的，你发朋友圈他还保存了图片跟你指出图片哪里哪里不好，可以怎么加滤镜，那你肯定觉得这个人很烦，一生气可能直接就把他屏蔽掉了。但如果员工觉得领导或老板很烦，经常无缘无故给你“加活”，出于工作的考虑又无法直接屏蔽老板，那只能通过这样的方式来劝退领导或老板，希望他们看到自己的头像就会失去沟通的欲望，不会再没事找事给他们增加工作量了。', '2023-12-06 15:19:00', 0);
INSERT INTO `moment` VALUES (29, 9, '我有个同事，微信头像是“新垣结衣”。某天跟领导出差，一个五十多岁的领导就问他，“这是你女朋友么？挺漂亮的…”我在边上坐着，笑出了声。他也是笑得露着牙花子，一边笑一边跟小鸡啄米一样点头，“是啊，是啊...\"可把同事美坏了。领导接着问：”准备啥时候结婚啊？“同事笑得跟开心了，上下牙总共笑出了十六颗，也不说话，就是笑。领导以为他不好意思，还拍了拍他的肩膀，跟他说：”办婚礼了记得叫我啊...\"同事开心了一整天，整个人都有点飘，看着有点傻乎乎的。我们也是笑得不行，但没人跟领导解释说，那是个日本明星，怎么可能是他女朋友，人家可是国民女神，初恋脸好么？（注：此事发生在新垣结衣结婚前。）你看我们领导，连个国外的明星都不认识，以为拿女生当微信头像，不是女朋友就是媳妇儿，换啥头像他能失去沟通欲望啊？你真觉得他看得懂还是咋？你信不信，我明天用了这个头像，领导有啥事儿该找我还找我，根本不会因为一个头像失去沟通欲望。你猜他知不知道这头像啥意思？你猜他知不知道这啥动物？微信头像讨好领导？你是准备“与世无争”啊？还是“心似莲花 芬芳自在”啊？你要不试试吧，万一你领导喜欢这头像，还问你要高清大图呢？行吧，就算我看得懂下属那些让人失去沟通欲望的头像，他们该用啥头像，都不耽误我跟他们沟通工作好么？想通过头像把领导恶心到，你们怕是小瞧了领导的心理承受能力了。', '2023-12-06 15:19:04', 0);
INSERT INTO `moment` VALUES (30, 9, '换一个想让老板失去沟通欲望的头像，不一定是在膈应领导或逃避沟通，而是真的不想领导不断PUA和施加各种工作压力。\n在职场里，不是每家公司的氛围都是狼性，也不是每个职场人都想要通过讨好领导、拍领导马屁的方式来获得职场发展的。有些人每天都千方百计讨好领导、给领导送礼，领导倡导加班也盲目服从、从不拒绝，这样的人一般都是想通过出卖自己的劳动力和面子来获取晋升和提拔的机会；但也有很多职场人觉得自己只要在职场上获得能力的提升就足够了，也不想工作占据自己的生活时间，而领导或老板却因此找自己的麻烦，觉得不加班的员工就是不思进取、工作不够饱和，还经常抓住员工的某个细节不放，非要员工做一个详尽的方案和规划来解决一个很小的问题，那员工自然不想领导或老板经常PUA自己，只能换上一个“让领导或老板失去沟通欲望”的头像来间接劝退领导布置额外的工作。', '2023-12-06 15:19:01', 0);
INSERT INTO `moment` VALUES (31, 10, '年轻人放弃「讨好领导」，这可以理解。但热衷「换让老板失去沟通欲望的头像」，这一现象估计没那么普遍吧。\n也可以换一种说法，年轻人真没那么多的幼稚感。\n首先，「讨好领导」是屈服的表现，也可以理解成一种迎合式取悦。迫于老板的压力，各种工作上所涉及到的方案、想法甚至是规划，都只能是按照老板的要求做事。\n就算员工明知道这样做的结果是不理想的，但也只能睁着眼说瞎话，还要吹捧领导的决定做得非常棒。\n这种工作上浮夸式的演绎，可以称得上是讨好领导。\n当然，在职场上还有很多「讨好领导」的表现。比如对领导的想法百分百认可，对领导的安排无条件执行，对领导放的屁都愿意手捧着表示很香。\n年轻人不愿意「讨好领导」，更多的是不愿意向上谄媚，这应该就是内卷的最高形态。\n特别能理解年轻人的心情，本身就是一份工作而已。没必要迎合或者是讨好，到了一种“被践踏尊严，被无厘头迁就”的状态。\n「讨好领导」也是要分尺度的，没必要因为一份工作，到了没有底线的地步。\n至于说，年轻人热衷「换让老板失去沟通欲望的头像」，这一说法就略显幼稚了。如果老板真的对员工有工作上的要求或者是不满，压根就不会因为什么头像或者年龄而改变。\n因为在老板普遍的认知里，员工只是来贡献劳动力的，压根就不需要以生意伙伴的态度做平等化的交流。\n「换让老板失去沟通欲望的头像」，只能算是一种遐想。本质来说，毕竟除了微信沟通工作，或许钉钉也是一种沟通软件，谁天天盯着头像揣摩老板的心思呢？', '2023-12-06 15:19:05', 0);
INSERT INTO `moment` VALUES (32, 10, '我就属于不去“讨好领导”的那一波人，想想自己的原因，大概有这么几个：\n\n一、“讨好别人”是一件技术活，年轻人没这个技能\n同样是过年过节给人家送土特产，我爸妈就特别的自然，毫无违和感。而我，有一次带了一箱香肠去公司分给领导和同事，我纠结了一整天都不知道该怎么开这个口，也不知道什么时候去说。\n“讨好别人”非常有讲究，你在什么样的环境下说、在什么时机说、怎么说才能让人家觉得很舒服很自然，不生硬不尴尬，都是需要经验的积累的。\n我就很佩服我父母和家里那帮七大姑八大姨，他们上街逛，有什么热闹的事情张口就能接上话，打听点八卦易如反掌。这都是他们多年的经验积累。咱们这一代人，以及下一代的年轻人，是没有几个人点过这个技能点的。\n以前，大家真就是“远亲不如近邻”，非常和谐，在工厂工作的，以工厂为家，同事就是邻居和亲人，在企事业单位工作的，平时也相互帮衬；他们至今还愿意去菜市场跟人当面讨价还价。\n\n互联网崛起的10年，大家变成了“低头族”，大部分人跟自己的邻居是没有什么交流的，在大城市里的打工人，基本都不知道邻居家住了几个人。大家买菜购物都喜欢网购，基本上连小区周边的菜市场在哪都不清楚。\n更何况，我们这一代多数是独生子女，从小就没有“察言观色”“站在别人的角度思考问题”的环境，都是父母伺候我们长大，自己去讨好别人？那是想都没想过的事情。\n所以，年轻人根本就没有“讨好别人”的技能，有时候真不是放弃“讨好领导”，而是没有这个技能硬上的话，心里是各种别扭的，是抗拒的。说白了，这不叫“放弃”，是“不会”。\n\n二、工作已经很累了，减少情绪投入才能过得更开心\n没错，现在这个市场环境，加班的人比比皆是，996都变福报了。大家做白领的，没干啥体力活，但一天下来也是筋疲力尽，主要就是心太累了。这种情况下，主打一个心情调节，还要花心思在领导身上，那不是自讨苦吃吗？\n讨好领导是一个长期的过程，不是哪天心情好了拍拍马屁就行的，这种事情要当日常工作来做，贵在坚持。一旦一件事变成一个长期的事业，你就要有毅力，而这种涉及到个人情感层面的，你还得变着花样来。同样的话最多只能说3次，同样的礼最多送3次。\n你还记得一年一次的情人节，给女朋友送礼的纠结吗？你想想隔三差五你就得想怎么讨好领导，心累吗？\n更何况很多时候，你主动找领导，换来的不是升职加薪或者年终奖多一点，而是一堆“工作大礼包”。你想去讨好领导，领导说不定觉得你很闲，觉得你是去领活干的。\n\n三、让老板失去沟通欲望的不是头像，而是代沟\n你以为老板是看了那种神奇的头像才不愿意跟你说话的吗？一个头像就能阻止他的话，以后他乱投资就简单了，头像做成表情贴在投资报告上就完事了。\n同样的，年轻人换头像现在是常态，是表达自我寻找认同感的一种途径，目的也不是为了让老板失去沟通欲望。\n本质上是老板醉心于企业业绩，年轻员工沉迷摸鱼和心理感受，老板没机会看剧看新闻，年轻人不想被工作占据想办法调解自己。\n大多数有一定年纪的老板不懂年轻人的世界，不懂“梗”，不懂头像背后的含义，就像我父母一样，至今还用我们认为是“呵呵”的表情，表示“微笑”：\n你要是游戏公司那种年轻的老板，就没有这个问题。\n所以，这就是代沟导致的，跟头像的目的没啥关系。', '2023-12-06 15:19:01', 0);
INSERT INTO `moment` VALUES (33, 10, '其实「讨好领导」和「微信少联系」说的不是一件事。\n「讨好领导」是主动情况下的短期付出。\n今天的年轻人依旧愿意「讨好领导」。比如在办公室、咖啡间，领导兴趣上来和年轻人聊几句健身、说说自己孩子学习，大家依旧愿意凑个趣，夸奖两句，跟着笑两声。\n这和他们的父母辈有没有任何区别。\n不同的是，父母那辈人下班骑自行车回家了，到明天九点上班之前是看不到领导的。甚至在单位，领导端着茶杯出来聊一圈之后，回办公室关上门，大家也有几个小时的相安无事。\n但如今，有了聊天软件这么个万恶的东西，领导前脚回办公室，可能因为刚才看见你，立刻开始信息轰炸，追问本来周三要交的PPT能不能今天就提前给他。\n尤其现在一些小领导，升上去之后看了几本什么“帝王术”“心理学”，喜欢和下属玩个“制约平衡”“PUA”之类的，屁大点事问你几次，你都不知道他背后什么意思，又琢磨什么呢。\n比如没事点点你，说听有人说你最近状态不太对啊，要注意下。留你自己一头雾水的想谁这么嘴碎。\n或者截个别人的聊天截图发给你，让你帮他分析下对方这几句话什么意思，实际是发给了好几个下属。\n你要是回复几次，让他觉得“挺有办事能力”，那才是痛苦的开始。\n很快，他会连应该自己弄的什么组织汇报、心得体会、评价发言都让你帮忙“参谋、参谋”，说的好听，其实就是把你当秘书了，让你给他改讲稿，写作业。\n那些让你帮助查的数字、找的记录，你以为挺着急，其实就是他洗澡、蹲马桶时候突发奇想，懒得自己去开电脑，把你当SIRI和CHATGPT了。\n尤其是那种周六日突然来一句的“有空么？”回不回都感觉是个坑。\n点好的外卖，下载的游戏，付费的会员电影，都不香了。\n及时回复了，他可能觉得你平时没啥私生活，下次问的更勤。\n已读没回复，他可能觉得你这是看不起他，故意给冷脸，到公司给你上纲上线说你没责任感。\n特别遇到那种年纪大一些的领导，动不动就是一分钟的语音。你则只能打字回复。\n回个“嗯”他挑理说你不尊重，回复“收到”又说没结果。\n必须回“好的，立刻办”，他才算满意。\n所以，大家愿意在有闲暇情况下工作场合的「讨好领导」，但痛恨在私人非工作时间的「随叫随到」。\n冷漠，有碍自己的职业发展。殷勤，有碍自己的个人生活。\n于是大家只好装蠢、装傻、装疯，让老板失去沟通的欲望。最好心理觉得“这个人工作上的事情还靠谱，但情商一般、性子直，平时下班少搭理他。”\n有人说：那不是影响升迁么?\n其实，除非你在一些特殊单位，否则“依靠情商升迁的岗位”在大部分社会企业都不是啥好岗位，多半和销售业绩、出差会客、紧急应对这些责任挂钩。\n而依靠“过硬技术和能力”升迁的岗位，才是钱多事少，不怕被优化，真正的核心职位。\n哪怕真事为了升迁，跳槽升迁也比在原企业十年如一日的讨好老板要性价比更高。\n最后送打油诗一首：\n你我本无缘，只是同挣钱；素昧交情浅，繁忙不得闲；\n相处两三年，又得跳新船；位卑且无权，何苦常相联。\n关注也说，阅读更多有趣的思想。\n一个人该怎样找到自己真正热爱和擅长的事，并以此规划自己的人生？\n1.8 万赞同 · 685 评论回答\n在采购过程中，已经和张三谈妥了，突然李四提供了更好的价格或品质，如何优雅地拒绝张三？\n1.4 万赞同 · 262 评论回答\n我组局请领导同事吃饭，最后进入尾声的时候，另外一个同事突然开了两瓶自己带的茅台出来，该怎么办？\n8429 赞同 · 208 评论回答', '2023-12-06 15:19:06', 0);
INSERT INTO `moment` VALUES (34, 10, '老板基本不会因为你头像，然后就失去了“沟通欲望”。\n哪怕你换成了老板父母、配偶的头像......\n年轻人换头像，实现的是“自以为让老板失去沟通欲望，然后自己就很爽”的心理。', '2023-12-06 15:19:01', 0);
INSERT INTO `moment` VALUES (35, 10, '当代年轻人，不要放弃和老板沟通，老板也是人，不要畏惧老板。\n想要职业有好的发展，和老板保持一定频率的沟通是很重要的，保持沟通不代表就是讨好领导。如果你能克服对老板的畏惧心理，那你就真的算是成长啦！\n有很多人即使工作了好几年，还是特别怕自己的领导。害怕接触、害怕汇报、害怕和领导的一切沟通。有时候在路上、走廊或者电梯里碰到了，也恨不得马上绕道走。\n其实这种心态就像是学生心态一样，总是把自己当学生看待，把领导当成了家长或者老师。以为领导和自己的关系就像是猫和老鼠的关系一样。\n但是呢，这样的想法是完全错误的！错在哪里呢？错在认知上啦！\n正确的认知应该是，你和领导之间的关系是战友关系，是合作关系。你们都是在同一条战壕里混饭吃的，荣辱与共，只是大家的分工不同而已啦。\n如果你在工作上捅了个大娄子，你领导的脸上也会无光啊。但是如果你拿下了一个大客户，你领导也会觉得有面子呢。\n你们是一条船上的人，只是分工不同而已。你负责具体执行工作，而领导则负责向上沟通、维护关系。你负责对接具体工作，领导则负责更高的战略、向上获取更多的资源和信息，这样才能给你升职加薪呀。\n你就像是先锋一样冲在前面，如果遇到问题无法解决的话，领导就负责来兜底啦。\n闻道有先后，职责也有分工。领导也是从小兵一步步干起来的嘛，你的工作他都明白的啦。但是他的工作你却不一定明白哦，因为你没有做过领导嘛。\n如果你觉得领导很轻松、不怎么干活或者没有体现出什么能力的话，那只是因为你不知道他的工作而已啦。\n因此啊，不要拒绝和领导沟通，更不要畏惧领导。', '2023-12-06 15:19:06', 0);
INSERT INTO `moment` VALUES (36, 11, '先祭出我自己曾经用过的头像\n当时其实我也是贪玩，没有冲着领导去换这个头像的，就是觉得这头像挺酷的。\n不过后来有人说，这头像与我的风格不是很搭，所以我又换了下面的这个头像\n好了，这头像开始和我的当下状况比较搭了——我上班，我快乐\n\n后来坐在一位老外同事旁边时，他说要发点什么资料到我微信上，但他找不到我的名字。\n他问我：哪个微信是你的，是那个大哭脸吗？\n我说：不，你记错了，是那个大笑脸。\n他说：像个白痴。\n我说：Stay hungry, Stay Foolish。\n\n这个头像，居然陪我一路升职，从一个小主管，升到最后总监.....\n当了领导后，我也顶着压力，照用这个头像，风雨不改。\n下属们对我的头像，想笑但又不敢笑，还表示出一副尊重的样子，但从来不敢评价我的头像。\n不过后来想跳槽，有时候猎头电话联系我，聊了半天，聊得好好的，然后说要添加我的微信细聊。\n但添加了我的微信后，好像很多都没下文了.....\n我开始怀疑，是不是我的头像的问题，影响了我的专业形象。\n\n后来有一位猎头，直接说出了大家没说的话\n但是我依然坚持自己的风格，死活不肯换头像，终于遇到了一位不嫌弃我头像的总裁级的面试官，他忍着不笑，在视频面试中把整场一小时面试都面完了。\n事实证明，一个人的外貌不重要，重要的是要看内涵。\n现在人也该成熟点了，不应该再拿这些幼稚的头像来混迹了，所以，头像我已经换过来了，换个严肃一点的：\n以上换头像技能，经过专业训练，在没有专人指导的情况下，切勿乱试。\n我是@凡芒微光，陪你走过职场那些坑', '2023-12-06 15:19:07', 0);
INSERT INTO `moment` VALUES (37, 11, '我点进来是为了收集沙雕头像图的，结果你们一个个码字码得这么认真。有必要吗？有必要吗？有必要吗？', '2023-12-06 15:19:07', 0);
INSERT INTO `moment` VALUES (38, 11, '放弃讨好，拒绝沟通，与其说是年轻人故意设置的人设，倒不如说年轻人更加注重自我感受，对职场表现出更多冷漠、厌倦和不信任。\n拒绝主动讨好，拒绝沟通那就彻底些，也得拒绝被沟通，换上头像，让老板失去沟通的欲望，本质上是对自我的一种保护。\n职场爆出的Pua、“Me too”等负面效应强化了年轻人冷漠和自我意识的情感和思维，无欲无求的佛系职场人比比皆是，让老板们无可奈何，拒绝加班，拒绝pua，拒绝讨好，年轻人给自己披上了袈裟，把所有的欲望都隐藏在面罩里面，确实有了一种看破红尘的超脱。\n信息化社会，说教的幻象很快容易被辨别，年轻人追求自尊、追求自由、渴望真实、崇尚平等，懒于接受，勤于思考，精神足以给灵魂以慰藉，无需用沟通来打发时光。\n瞬息万变的职场背景也让年轻人的职业规划即时化，少于做长远的人生规划，没有长远也就没有职场梦想，没有了职场梦想也就没有了职场欲望，况且老板们的沟通也是在面罩之下，何用讨好？又何沟通？', '2023-12-06 15:19:07', 0);
INSERT INTO `moment` VALUES (39, 11, '领导或者老板会因为一个头像而不沟通吗？\n显然不会\n或许大多数人更换类似的头像仅仅是出于好玩，所谓的“避免沟通”仅仅是一个调侃\n如果有人当真认为换一个头像能换来减少沟通，那么。。。。。。\n有些事情不能当真，一笑了之就可以了', '2023-12-06 15:19:07', 0);
INSERT INTO `moment` VALUES (40, 11, '据说，上一次大家集体换头像，还是因为避免成为缅北的头号好猪。\n据说缅甸icon“杀猪盘”老板教员工看微信头像识别客户，头\n像分以下几类:\n1]山水画一有实力，年龄40+的优质客户\n2花草类一低调稳重，上等客\n3]豪车豪宅一虚荣心较强，多给点甜头能拿下\n4]自拍照一属于很有自信类内心坦诚，是头好猪5]对象或孩子照一他们最在意的人，软肋就在此\n动物类一内心渴望被关爱被保护，用爱感化\n7卡通头像一直接默认为不具备杀猪能力，通常这类人事多还穷。\n纵观身边的朋友：\n有家人孩子做头像的，有软肋容易被骗，赶紧换。\n有自拍靓照的，看上去自恋多金的，赶紧换。\n用山水做头像的，有钱有闲是优质猪，赶紧换。\n用豪车做头像的，看上去虚荣缺爱的，赶紧换。\n用卡通做头像的，穷，没有zha骗价值。\n所以，有个讨论组直接清一色换成了卡通头像。\n换类卡通头像，还真别说，挺让人多少失去一些沟通欲望的。\n但是说到跟领导/老板沟通吧，我的聊天记录最多的是关于请假。\n最近的一次是8月份，有关2000个亿那个。\n不知道的还以为是我老板亲戚。\n活儿都是老板和富哥干了，成果大家享受到了。\n为什么会有我这么神奇的岗位？关系到公司发展革命历史，此处省略一万个字。\n今天老板没有接待，在后排工位晃来晃去。\n他知道我清闲。\n他也知道我每天假装很不清闲的样子。\n若是偶然一起6点钟下班，在电梯里他会问家里小孩怎么样了。\n在饭桌上，他容易把大家当孩子，说很多心里话。\n他不会强迫大家喝酒，你一茶代酒他也没意见。\n他会喝到微醺的时候，跟大家打包票：要是有人敢欺负公司的人，我一定干他。\n在周末值班的时候，会偶尔蹦出一句“陪人好累，今天陪了2波，晚上还要去掼蛋”。\n他八九十年代就是百万户了。\n他是有郭家情怀的人，画着大饼同时又努力干实事的。\n他经常一出差就是一周、十天、半个月的。\n他说不需要大家讨好他，实际上大家都很关心他，从生活到工作。\n他说希望我们都能过上自己想要的生活。\n世界是公平的，拿你有的，换你要的。\n我是 @覃老师 ，写了半篇日记，看到这你就点个赞意思一下好了~', '2023-12-06 15:19:07', 0);
INSERT INTO `moment` VALUES (41, 12, '讨好领导我就没见过公开大张旗鼓的，讨好领导难道不应该是公开场合立个不讨好的人设、背地里一对一去跪舔么。\n不要看他们公开场合怎么表态，这玩意儿从来不可信。年轻人讨好领导的多的去了。', '2023-12-06 15:19:08', 0);
INSERT INTO `moment` VALUES (42, 12, '我觉得越来越多的年轻人学会如何保护自己！\n欺软怕硬这条人性铁律，从古至今都一直存在！\n先易后难这条人性措施，也一直发挥着作用！\n我们试着代入：\n一个新人，毫无背景的新人，是不是被我们定义为小白兔？是不是好欺负？\n作为职场老鸟，第一时间就是要去试探，通过各种试探辨别哪些是小白兔、小灰狼\n沟通无疑是首要的试探方式，觉得那些懂礼貌、尊老爱幼、讲道理的新人，给上小白兔便签\n那些浑身是刺、容易炸毛的新人，便打上小灰狼的标签。\n另外职业这些年，明悟一个道理，只有累死的黄牛，从来就不存在累死的工作！\n所以，除了工作，年轻人没有必要讨好领导！甚至让公司打上脾气不好，难以沟通的标签。\n因为，只要这样，很多画饼的工作就不会落到新人的头上！\n不过，分内的工作一定要做好，甚至要做得优秀！至于分外的工作一概把自己变成笨蛋\n当然，遇到出得来的上级，就积极靠拢，前提是先给待遇再揽活，\n一切以先揽活再给职位和待遇的行为都是画饼！如果工作外你们私交很好，就要帮。\n没有私交，那就公对公，除非一公和一母。\n最后，我认为这种现象很好，比我当初刚进职场聪明多了，干了十几年的黄牛，工资还是最低的！', '2023-12-06 15:19:08', 0);
INSERT INTO `moment` VALUES (43, 12, '什么时候大家都在讨好领导，什么时候大家都在敷衍不作为的领导，一直都是这样。\n年轻人火力壮，做事直来直去，老油条一般都迂回，让领导生闷气，有火也不知道往哪里发。\n领导为你着想，处处维护你的利益，你再对领导阴奉阳违，倔头横杠的，那就不是不懂事，是欠抽。\n当官的普遍都明白你好我好大家都好的道理，他们不傻，很精明。\n能给你多少利益往往你也明白，谁都不傻，想要多要就得多付出，不想要就干好本职工作，收拾你的办法有N多种，就看值不值。\n老板和你沟通，不是用命令的口气，很多时候真是你的福分，就看这个福分对你有没有用处啦，有就感恩，没有就做好本分。\n我是一个小兵，以前不懂这个道理，40岁之后才多少明白一点。\n受到莫名伤害之后，即使你找回公道，伤害已经发生啦，于事无补。最好就是清静无为，平淡做事，其余听天由命。\n画饼是不可能长远的，一次两次最多啦，人在做，天在看。\n不要对抗，要合作。', '2023-12-06 15:19:08', 0);
INSERT INTO `moment` VALUES (44, 12, '大型互联网应用基本可以认为就是一个熵增理论的最好例子\n太复杂了 高度依赖运维\n你以为看上去很稳定的一个系统 可能需要每个礼拜一跑一个脚本清一清数据，每个礼拜二再跑个脚本检查各个依赖，每个礼拜三再跑个别的什么脚本检查别的什么东西，每个月再定期更新乱七八糟依赖\n然后降本了 故意的也可能无意的也可能 离职时候忘了交接一个运维的任务，或者交接的不清楚， 然后某个脚本没有跑，某个地方存储炸了，某个地方依赖过期了，导致连不上另外一个依赖，然后系统崩了\n崩了之后重启还不一定有用，缓存没预热，系统没做好fail fast的处理，突如其来的海量请求直接往数据库压，然后数据库就死给你看，然后再尝试重启，再挂，这时候再想着给数据库做纵向升级，基本半天过去了\n表面看上去固若金汤的系统，背后可能都是草台班子\n------\n补充一个非常黑色幽默的彩蛋：刚刚阿里云的电销打电话给我来推荐阿里云套餐附带各种折扣了', '2023-12-06 15:19:08', 0);
INSERT INTO `moment` VALUES (45, 12, '十年互联网大厂从业者，利益相关（前腾讯校招生，前阿里产品，前滴滴产品负责人）来回答一下。\n是这样的，我惊讶的不是它们崩溃了，而是它们现在才崩溃。\n因为在大厂里面，根本没有人在意这些底层运维任务。\n大家都在卷PPT，卷新的项目，卷出成绩的事情。\n运维是一个上限较低、下限高的领域，在这个方面，万年无事才是最高的功劳。\n正所谓“善战者无赫赫之功”。\n但是在领导眼里，万年无事？那要你何用啊？\n年终奖，绩效，肯定是给那些在一线开疆扩土的新项目组负责人呀。\n长此以往，但凡有能力的，谁还会在大厂里干运维呢？\n肯定都跳槽去系统众多缺陷、风控还不完善的的初创公司和业务，做从0到1的事情，更能凸显自己的重要性啦。\n那你会说了，难道就没有大牛留下来吗？\n有，但是人的天性是会有惰性的。\n就好像我们在高速路上开车，长时间保持100公里以上的时速，假设没有别的车，那人很快就会犯困，判断力下降。\n运维也是一样——长期无事故，大家会把精力转移到自己的生活上，晋升上，老婆孩子热炕头不香嘛？\n归根结底，运维是一个负反馈占主导地位的领域，但是我们又要求不能出现负反馈。\n也就是说，这个工作领域的激励扳机是和水平高低成反比的：\n干得越好的人，他的成绩中越难出现体现成绩的「负反馈」事件——此乃“上限低”；\n干的越差的人，他也不会有好的绩效，因为他的成绩中会充满无法被解决的「负反馈」事件——此乃“下限高”；\n那么最后，剩下来的就是能循规蹈矩、当“三旨相公”的员工了——听领导的话，听前人的话，听下属的话。\n《宋史·王圭传》：“以其上殿进呈，曰取圣旨；上可否讫，云领圣旨；退谕禀事者，曰已得圣旨也。”\n但，现实生活是多变的，工作不会永远在既定的轨道上运行。\n一旦有新的元素加入（比如这次滴滴的升级计划），那这种三旨相公类型的员工就解决不了问题了……\n后果就是，呜呼哀哉，七八千万张10块钱打车优惠券发出去啦。\n\n我这么说，你懂了吗？\n点个赞再走吧～', '2023-12-06 15:19:08', 0);
INSERT INTO `moment` VALUES (46, 13, '以前在一次饭桌上，听父辈们聊职场的事儿，不过在场的都是老板再不济也是领导级别的，视角很有意思，给大家来说说。\n其中一个叔叔讲了这么一件事，他开的小公司那年有段时间业绩很差，倒不是公司自己的问题，而是行业的问题，当时普遍不景气。办法嘛，文雅点就是开源节流，大白话就是裁员。\n他想的是让二把手三把手负责裁员（背锅，外加上那段时间他在附庸风雅到大城市学什么MBA），虽然说让其他人负责裁员，但大概裁谁，他心里是门儿清的，新照进来的苦力实习的底层肯定基本都得收拾东西走人，老员工裁一部分，小领导里面裁一个（据说这人得罪了他）。\n实习的那部分员工，本身就是一块海绵里的水，干最底层的活儿，打着学习的名义，但公司和他们双方都知道，真学会了本来也该跑了，毕竟公司一个萝卜一个坑。公司业绩好的时候打打杂，不好的时候肯定首当其冲得卷铺盖走人。\n老员工里裁一部分，这个叔叔的意思是肯定是裁干活不利索的。\n小领导里面那个，我敢说除非那段时间业绩特别好，不然的话即使业绩平平他迟早也得走人。\n但裁员的结果很有意思：那个小领导走人了，实习生也都按照计划走人了，但是，老员工里出了问题，没有按照我这个叔叔的预期来：好几个他认识而且觉得干活利索的被裁了，而有几个老油条， 留在了公司。\n他心里门儿清，但对这事儿什么也没说。事实上，后来公司业绩回暖订单多的时候，我这个叔叔还专门打了感情牌又把那几个被裁但是干活好的老员工又挖回来了一部分。\n懂职场的看到这儿大概就明白了，不明白的我来解释下吧：\n负责决策的大领导其实对真实情况是有了解的\n但决策和执行在层层架构的企业中错位也是常见的\n裁员别说目的是什么，但肯定会和站队斗争挂钩\n最苦逼的是真正干活的，干活的往往没空和“关系”这事儿有密切互动，吃亏就吃亏在这里\n当企业只通过裁员来解决问题的时候，往往裁员会被执行成“目的”，而非手段\n小企业胜在灵活，裁员出岔子也能调头，但大企业的大会放大一切问题\n所以再回过头来看大厂的这些问题，也就很好理解了，职场没有什么新鲜事儿。', '2023-12-06 15:19:09', 0);
INSERT INTO `moment` VALUES (47, 13, '利益相关：前阿里、字节程序员。\n我们程序员还是有用的，很多资本家急着兔死狗烹，兔还没死呢，就急着吃狗肉了。\n每天人力就分析某技术团队人力是不是冗余、分析一个老的高薪程序员能不能换成新的低薪程序员来降本增效。。。降本增效后的系统稳定性的锅还不是程序员来背？\n现在到处都是技术无用论，是业务主导论、是渠道主导论、是用户体验主导论，一个公司副总二三十，技术出身的两三个，这种情况看起来正常却又后患无穷。\n技术性bug大爆发，这也是偶然中的必然。\n现在哪个公司哪个大团队一年不背一两个p0事故的，甚至有些公司在考虑修改p0、p1的定义了。。。在这种形势下，还对技术团队降本增效。。。\n我把话撂这，现在大多数互联网产品才几年、十几年，随着时间的推移，等一些火爆项目的屎山代码堆积二十年、三十年、五十年之后，越大的项目爆雷的越多，因为它流量大、用户多，根本不可能重写，只能修修补补，一补几十年，不是灾难也是灾难。\n秦风\n169 次咨询\n5.0\n中国科学院大学 计算机硕士\n132728 次赞同\n去咨询', '2023-12-06 15:19:09', 0);
INSERT INTO `moment` VALUES (48, 13, '崩了就崩了呗，感觉并没有让高层意识到裁人裁错了，裁一个中层他们肉疼，裁底层如行云流水，这种崩得多来点，越多越好，底层们抓住机会啊，显示自己价值的泼天富贵你们接住了吗？', '2023-12-06 15:19:09', 0);
INSERT INTO `moment` VALUES (49, 13, '国内互联网应用在裸奔\n前有阿里，后有滴滴，这已经是今年两期重大事件。其根源在哪里呢？\n程序员太年轻了！程序在裸跑，国内互联网应用分分钟就可以攻破。\n目前中国互联网行业从着平均年龄27岁，太年轻了。\n在技术网站上我们常常看到这样的文章《XXX踩过的坑》怎么会有这种文章？就是因为程序员能力不足，用产品做实验，讲不熟的技术用在产品上，产生了重大事故，然后程序员成长了，企业损失了，问题是企业并没有意识到这个问题。\n工程师都是在事故中得到成长的，外企通常招聘有经验的工程师，上上一家企业承担工程师的培养和犯错成长。中国企业会把有经验的工程师书送给社会，聘用年轻经验不足的年轻人。\n就互联网这种成熟的技术，出现事故应该用户感知不到的情况下就解决了，阿里和滴滴都超过了数小时，这不是笑话吗？\n直到我入职深圳某加油公司，才知道这并不是笑话，就那套系统，简直在裸奔，很多接口没有鉴权，访问无权限控制，系统全部采用默认配置。\n还好裁员有N+1陪尝，否则就…… 现在的员工也善良\n中国员工平均在职时间80后3年，90后2.5年，00后随时离职。\n很多技术随着离职，交接丢失等等就雪藏了，等出现事故，处理的人临时翻看前人的屎山代码，理解之前的逻辑就需要一定时间，改动会出新BUG，不改解决不了问题，所以排查和处理时间变长。\n10几年前，我们80后程序员平均都10年工作经验，当时做外国项目，根IBM一起工作，根雅虎PHP核心团队一期工作，后来根Perl 核心开发一期工作，根 OpenJDK 开发者一起工作。外籍同事都30～50岁.\n记得在雅虎，我们遇到个问题，问外籍同事，外籍同事说等我15分钟，然后发过来一个PHP包，为我们专门改了PHP解释器。呵呵\n很Perl团队工作，他们的代码可以追溯到 80年代，实用 CVS 版本控制，外籍同事，告诉我们你去哪里找那个文件，大概在第几行，怎么改。。。他在公司干了半辈子，每一行代码都很熟悉。\n运维人员工作太闲了\n运维做的越好，工作越清闲，HR越看不惯。\n运维人员的成长都是靠事故极累出来的，重度依赖经验的岗位，并且经验较难复制，因为每次的故障都不尽相同，只有亲自处理过才知道，临场处置能力是运维人员的核心能力。\n在运维处理事故的时候，面对的是360的压力，其实很小一个事故平时分分钟就能搞定。但是面对360度压力，上司后面盯着看，全公司各种部门一个一个电话催促文进度，上到董事会，下到一线员工，都在等你。然后本来大脑清醒的你，稀里糊涂，跟没头苍蝇一样，在系统里排查故障。此时，还容易手残，一下执行了一个错误命令，吧事故给升级了。呵呵。\n运维人员的离开，基本上是经验就带走了。\n产品经理的离职率也很高\n除了技术，产品经理的离职率也很高，很多产品做了一半，代码写了一半，业务逻辑也留在代码里了，但是产品人员变动了，就废弃，一个产品里面废弃业务逻辑很多，谁也不敢动那些代码。新产品经理也理解不了。经常出现新来产品经理加业务逻辑，把老的功能整坏了，客户投诉才发现。公司的支付宝账号出问题了，一查是5年前产品经理注册嗲，那个人都离开公司5年，还是用他个人资料注册，那个人的手机早已经销号，人找不到，现在需要用他手机接收验证码。\n测试人员也离职了\n由于产品经理变动，当有些产品逻辑搞不清楚的时候，大家想到测试那边一定懂。去找测试，发现也离职了，新来的测试，翻看测试用例，从来就没有覆盖过那部份业务逻辑。呵呵\n然后大家一致认为，这个业务逻辑已经废弃了，让程序员这块代码删了。\n半个月之后财务找上门，我们一个客户结不了款，XXX功能不能用了，BBQ了！\n总之，在国内反正也就干3年，只要3年之内不出问题，谁管那些屎山代码。让接人者处理吧，直到出现 阿里和滴滴这种级别的事故。\n然后公司可能再高薪找个技术总监/CTO，再重构一次，这批人再干3年，再造一套屎山。\n如何看一下公司的技术团队是否稳定？你去招聘网站，那些挂着长年招聘技术总监和CTO的公司，都是这种状态。', '2023-12-06 15:19:09', 0);
INSERT INTO `moment` VALUES (50, 13, '我当年大四校招签的公司主要业务是民生银行的项目，大头还是老系统的运维，一个90年代用C写的系统，10多年了还能稳定运行，因为提交修改代码特别麻烦。\n首先是我们写完代码有个大佬（40多岁的一个老程序员）审核，然后测试，一遍遍的跑测试用例，一个小功能的增加开发时间可能只要一天，但是系统相关的屎山代码搞明白可能要三四天甚至一两周，代码merge进去并测试通过上线最少再一周，还要做好各位防备。\n这种效率估计互联网企业是没法接受的，但是互联网企业有钱呀，堆人就快了。\n现在出这问题大概率是人变少了，然后还要求效率，就开始出问题了。', '2023-12-06 15:19:09', 0);
INSERT INTO `moment` VALUES (51, 13, '开猿节流\n降本增笑\n当瞎折腾的时候，先走的总是有能力的', '2023-12-06 15:19:10', 0);
INSERT INTO `moment` VALUES (52, 14, '典型的劣币驱除良币\n你特么只关心降本，就完全不担心降质？\n你的节流无止尽，就不怕继续下去会断流吗？\n压榨上瘾了….\n普天之下，没有新鲜事…', '2023-12-06 15:19:10', 0);
INSERT INTO `moment` VALUES (53, 14, '我有一台手机，不能关机，因为一旦关机，只要还有电，它就开始无限重启，不过我也有解决办法那就是在下一次重启之前，拔出来电话卡，就正常开机了，然后再装上电话卡，手机就又可以正常使用了。\n如果，我有一千台串联在一起的手机，突然开始无限重启，那我就崩溃了。第一，我不知道问题根源，第二，我管不过来这么多手机，就这俩原因。\n突然开个脑洞，假如一个口腔癌患者酒驾，驾驶途中因为胃痉挛导致发生车祸，大腿骨折，胳膊大动脉出血，伴随意识模糊，问，这种情况下，需要多少个医生才能让这个人恢复到车祸之前的状态，大概需要多久？', '2023-12-06 15:19:10', 0);
INSERT INTO `moment` VALUES (54, 14, '继阿里云、滴滴之后，今晚腾讯视频又崩了，这些互联网大厂往年总吹自己安全可靠，可他们的技术光环在2023年年末好像集体失效了。我认为这些平台事故并不是独立事件，其背后有一定行业背景，总结起来无非就是八个字：开猿节流，降本增笑。\n腾讯视频还好一些，崩溃之后不大一会儿就又把服务给拉起来了，这些平台事故里面以滴滴最为离谱，他们团队焦头烂额足足花了12个小时才重新又把服务给拉起来，确实有点草台班子内味儿。有人传滴滴崩溃是因为K8s升错版本，导致所有pod和节点同时被杀无法回滚，我一开始真的不敢相信。\n按理说像滴滴这种体量的企业怎么可能机房里只放一个集群？再不济也得有一个备用集群吧？在缺少备用补救的情况之下升版本真就敢往主集群上硬怼吗？而且据我了解很多企业冲K8s真就是流于形式，pod换机必挂，平时写得那些惨不忍睹的配置全部作废，这个时候再想拉服务那真是得全靠使笨劲儿，十几个小时能救回来已经可以说是烧高香了。\n对于滴滴这种大型服务平台来讲，技术人员把核心链路和非核心链路区分开来，搞清楚各个链路跑着哪些服务，做到即使非核心链路服务挂掉也不能影响主流程，这都应该是常规操作。如果这种基础工作不做好，万一出故障在生死时刻根本就抓不出关键请求，只能大海捞针把所有服务全部捞起来才能救起主流程。\n最关键的是这年头各个互联网大厂裁员的消息我们已经屡见不鲜了，三裁两裁到底裁出去多少一线正儿八经干活的，留下来的人又有多少真正懂业务的，新招进来的员工能否完成技术交接，这全部都是变数。我说句实在的，大厂裁出去的那些人肯定有不少是基层技术，真碰到P0级事故还真得靠那些熟悉业务结构的基层老员工救场。你把人家裁了，出事儿之后再给他们打电话请教，你猜人家还理不理你？要是我那肯定直接摆烂，犯不着为了裁员前司再徒费心血。\n其实这些大厂大平台还算有技术兜底的，小厂小平台那就更搞笑了。王自如之前创办的ZEALER大家都知道吧？这个平台从11月28日深夜崩到现在都没救过来，你敢信吗？\n不知道未来这种互联网平台的崩坏会不会成为新常态，不知道各大厂以后还会不会继续倡导“开猿节流，降本增笑”，不敢想……', '2023-12-06 15:19:10', 0);
INSERT INTO `moment` VALUES (55, 14, '为砍业务线做舆论准备。\n架构越复杂，出错率越高。不知道这次腾讯是啥原因。\n年底了，这种新闻真的很欢乐', '2023-12-06 15:19:10', 0);
INSERT INTO `moment` VALUES (56, 14, '会让人们发现：\n只要个人财产不损失、数据不丢失或者泄露\n好像停个一天半天的也不会有什么大的影响\n支付宝崩了就用微信支付呗\n滴滴打车崩了就用高德打车呗\n任意一个软件崩了，社会都不会崩溃，最多流失一点用户。然而现在各个APP都有自己稳定的用户流，流失用户现象也不明显。\n居民水电都可以停，为什么软件不能停？', '2023-12-06 15:19:13', 0);
INSERT INTO `moment` VALUES (57, 14, '以前历史进程缓慢\n是以有“五百年必有王者兴”的说法\n现在世界变化快\n似乎又到了“有王者兴”的节点了\n\n这并不是胡乱猜测\n倘若一家出事 还可以说是偶然事件\n但三家一起掉链子\n似乎有某种趋势的意思', '2023-12-06 15:19:11', 0);
INSERT INTO `moment` VALUES (58, 15, '我只知道英雄联盟的一区艾欧尼亚在世界赛结束后就要排队了，一副欣欣向荣的假象，我猜就是裁人减少服务器了呗。', '2023-12-06 15:19:11', 0);
INSERT INTO `moment` VALUES (59, 15, '现在这些互联网公司的中层领导都是在行业顺风顺水的时候升上去的，没有经历过底层真正摆烂的时候。\n底层自有底层的逻辑，他们不会把所有的东西都弄顺畅，那样即使不裁员也不会涨薪，善战者无赫赫之功在这里不适用。\n缺自己不转才是正办，摸鱼才是常态，奋斗逼已经升值啦。\n现在就是给老板脸色看的时候，你敢裁员我就敢让你收敛，反正最多就是被裁掉，你也找不到更多的罗乱，他们精着那。\n运维干时间长啦没别的长进，这方面贼溜，他们的小领导也是睁一只眼闭一只眼。\n法务在技术方面一脑袋浆糊，也不知道怎么下手，再说也牵涉不到法律问题。\n崩是常态，要习惯。', '2023-12-06 15:19:12', 0);
INSERT INTO `moment` VALUES (60, 15, '解决方案，一刀切，干掉50%吃财政饭的。国内经济立刻起飞。现在一切的根源就是吸血鬼太多了，不干掉吸血鬼，乱象不止。拿出90年代裁下岗工人的魄力来。', '2023-12-06 15:19:14', 0);
INSERT INTO `moment` VALUES (61, 15, '众所周知\n美国的伪军没一个能打的', '2023-12-06 15:19:15', 0);
INSERT INTO `moment` VALUES (62, 15, '因为不重视运维\n系统稳定的跑，本身是运维在背后默默的做事\n但是领导觉得系统它本身就是稳定的，你运维每天都在混吃等死带薪拉屎\n于是让你滚蛋\n于是就崩了\n我们就遇到各种领导，有觉得我们太空的安排其他杂七杂八的事，还好，现任领导说我们每天闲出屎她才放心', '2023-12-06 15:19:15', 0);
INSERT INTO `moment` VALUES (63, 16, '现在的风向就是，大厂出一次事故，就往裁员方面引导，“降本增笑”，想让资本家认识到程序员的价值，让公司高层知道自己裁人是错的之类，从而增加自身工作的稳定性。我作为程序员，底层打工人能够理解这种对公司裁员的不满和情绪宣泄，但是我认为在互联网混就要意识到有被裁员的风险，指望资本家认识到程序员的价值，减少裁员之类的想法，说实话，有点可笑。\n在任何职场中，人员流向都是金字塔型的，互联网也不例外。大部分人只不过是普通码农，随着工作年限升级，涨薪。只有少部分的人，能够成为技术大牛，技术专家之类，或者走向管理层。程序员说白了就是把上面领导要做的东西用编程技术实现出来，跟建筑工人根据设计图纸盖楼没啥区别。因此互联网行业里的码农没有谁是不可替代的，就是个螺丝钉而已。而且中国不缺码农，后面一大堆人盯着呢，都知道计算机挣钱，都往里挤。2023年互联网依旧寒冬，但是今年身边高考完的亲戚孩子都还在报计算机专业，卷的不行。\n至于说系统故障，就拿阿里云来说，宕机事故还少吗？，例如2018年6月，阿里云被曝出持续近半小时的重大技术故障；2019年3月，疑似出现宕机事故，给部分互联网公司造成影响；2022年12月18日，阿里云香港Region可用区C发生大规模服务中断事件，对很多客户业务产生重大影响，影响面扩大到香港可用区C的EBS、OSS、RDS等更多云服务。而阿里云不过是23年宣布的裁员7%，前些年阿里云出的事故少吗？\n再来说滴滴，2015年10月，2016年7月，2019年10月，2021年2月25日，2022年9月22日，不算今年，我光查到的滴滴崩了的情况就5次。那个时候还是互联网的黄金时代，崩的少吗？只要是人写的代码，人做的操作，就可能有故障发生。而且互联网有一套完整的流程培养新人，有经验的程序员也都是从应届生干起来的，将裁员跟故障联系起来，有点勉强。\n说了这么多，也不是为资本家洗地，而是要清楚资本家的劣根性，他就是这个样子的。你在资本家那里得到了什么，就要失去些什么。互联网钱多，但是你就会加班多，稳定性下降。字节前几天不是刚把游戏部门朝夕光年砍了吗，资本说做就做，说不做，管你什么游戏技术大牛小牛，都裁了。\n因此我们需要认清楚自己的位置，不过是个打工人而已。自己觉得不服气，要么你自己去创业当老板，要么你在公司成为技术大牛，往上爬。不然的话，这次不裁你，也会有下次。在互联网公司里追求工作稳定性本身就有些可笑。要是真想找稳定工作，最稳定的，考公考编；其次稳定的，国企。要是在互联网闯荡，那就时刻保持危机意识，提前做长期职业规划，避免被裁员或者中年危机时应对不足。', '2023-12-06 15:19:15', 0);
INSERT INTO `moment` VALUES (64, 16, '继续裁员吧。程序员基础的技能也许大家都能很快学习，但是一个系统工程搭建起来，跑了那么久，紧急处理了，那么多故障。不是几天就能交接的完。要敬畏踩坑的经验', '2023-12-06 15:19:15', 0);
INSERT INTO `moment` VALUES (65, 16, '可能裁员裁错了人吧。真正干活的人，心思都在工作上，不怎么会经营关系和站队。人离开公司了，留下的工作接手的人没整明白。\n另外，有的工作也需要经验的积累，以年龄为理由把人弄走了，还指望没有那么资深的人去做事，出问题是早晚的事。', '2023-12-06 15:19:15', 0);
INSERT INTO `moment` VALUES (66, 16, '众所周知，运维事故这玩意就是玄学。\n既然是玄学，那就得尊重玄学规律——该开光得开光，该拜神得拜神。\n以下是一些行业最佳实践，供各位大厂大佬参考：', '2023-12-06 15:19:16', 0);
INSERT INTO `moment` VALUES (67, 16, '某乎也快了吧，打开经常卡住不动，提示网络异常，别人发的回答链接出现“知识的荒漠”，多点几次又出来了，这些都是崩（倒）溃（闭）的前兆吧！', '2023-12-06 15:19:19', 0);
INSERT INTO `moment` VALUES (68, 17, '今年大厂都在裁员，只能说是问题累积到一定时候爆发了吧。\n裁员这个事，除非是行业技术大牛，很明显对公司运转很重要。\n不然，裁掉的大概就是跟领导关系一般的，不是自己人的优先被裁掉。\n这个在哪里都一样。\n所以，留下的大部分都是为人处事圆滑的，而不一定是工作中实际干事的人。这知乎热榜连连看，就有很有看头啊。\n特别是技术岗位，很多人的确是不善于交际的，都是闷头干活的。\n这样一裁员，就导致那些有技术的，真正干活的被裁掉了。\n那隐患就被埋下了，爆发是迟早的问题。\n我们之前一个公司也是这样，一个负责运维的人，把系统弄的很好。。。。\n但是这个工作，他弄好了以后，不出问题，就会显的很闲。\n然后就被“优化”了。想想裁员用优化这个词，真是呼呼的冒着傻气。\n结果，这个老哥一走，那个系统出了问题没人搞的了，工作直接停摆。', '2023-12-06 15:19:16', 0);
INSERT INTO `moment` VALUES (69, 17, '阿里崩，阿里崩，阿里崩完滴滴崩；\n滴滴崩，滴滴崩，滴滴崩完腾讯崩；\n腾讯崩，腾讯崩，腾讯崩完哪家崩？\n华为云？京东云？百度云？中国电信……瑟瑟发抖中！\n国外云三强（AWS、Azure、Google)笑而不语……', '2023-12-06 15:19:16', 0);
INSERT INTO `moment` VALUES (70, 17, '能干活的人被裁了，做PPT的留下了，就有了现在各种各样的问题。', '2023-12-06 15:20:38', 0);
INSERT INTO `moment` VALUES (71, 17, '人才不会消失，只是流动了，原来做出这些优秀产品得人才流动到其他团队去了。比如美团，字节，拼多多。', '2023-12-06 15:19:17', 0);
INSERT INTO `moment` VALUES (72, 17, '各APP：想让我365全年无休？', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (73, 18, '降本增笑', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (74, 18, '别人谈债务的影响，房价的影响时，某些平时喜欢装农友的喇叭会跳出来说，房价贵，你不买不就行了吗，还不是买不起一线，眼高手低，无病呻吟。\n这话说的，仿佛债务和房价不会影响到别的东西一样。\n会不会影响到享受的基础服务减配，会不会影响到投资收紧，机会变少。\n就算不买房，房租会不会随房价上涨，购买的产品和服务会不会因此减少，质量下降。\n这些都是喇叭们拒绝回答的问题。\n“房价高，你不买房不就行了吗，还不是眼高手低”。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (75, 18, '用事实说话，开猿节流，降本增笑的成果立竿见影。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (76, 18, '希望有一天微信崩了，倒逼各领导放弃微信办公，普度众生', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (77, 18, '看看特斯拉的降本增效：降本降的是广宣成本，降的是4s经销成本；增效增的是生产线效率，增的是管理效率\n所以哪怕给消费者大幅降价，哪怕给员工额外的奖金和假期，净利润依然是比亚迪的两倍\n你再看国内企业，降本就是裁员砍福利，增效就是加班，谈何可持续发展\n企业平均寿命是30年左右，而中国企业是7、8年。一项抽样调查显示，中国民营企业的平均寿命只有3.7年，中小企业只有2.5年。每年有近百万家企业倒闭\n而在美国和日本，中小企业的平均寿命分别为8.2年和12.5年。大企业甚至到了四五十年\n中间差的是什么已经显而易见', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (78, 19, '公司绩效不好的时候首先保的是组织主管，而组织主管大部分不负责具体的代码。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (79, 19, '我觉得这是程序员区别于农民工的本质区别！\n房子被盖完了，农民工就被一脚踹开了，就没利用价值了，跟垃圾一样被赶回农村了。需要你的时候，你就是农民伯伯，不需要你的时候，就是个臭打工的，坐个地铁都要被发各种小作文“长相猥琐”、“视女干少女”、“偷拍”、“脏兮兮的”。\n程序员不一样啊，可以在代码中挖各种坑，然后堆成屎山，挟bug以自重，养寇自重呗！\n另外说一句，很多人觉得欧美高福利是工会斗争的结果，这个答案是对的，但也不完全对。因为越复杂的工作，越需要人才！而人才，是需要尊严的，而尊严是需要钱来打底的。资本家愿意开高工资，有一半的原因就是因为低工资的维稳成本太高了。大家的工资中，至少有一半成本属于维稳成本。\n白领暂且不谈，就说生产线，呆过生产线的都知道，员工有一百种方法，合法合理的让产品大批报废！许多行业都一样，员工有很多办法让老板偷偷的损失。\n删库跑路，属实是最低级的手段了。中国人总是津津乐道于“狡兔死、走狗烹”，但是，任何的阴谋，也就第一次有效，大家都懂的套路，就不是套路了！\n开猿节流，降本增笑。\n其实这几个事件最大的影响是什么呢？老实人觉醒！众所周知，大部分基础工作都是老实人在接盘！', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (80, 19, '单纯聊聊运维这个岗位吧。\n运维，在很多公司看来一个超级没技术含量的岗位。很多小公司觉得运维就是一个网管、修电脑的，很多不懂公司的老板都是不懂技术的，所以看不到这个岗位的价值。\n但对于一个依赖互联网系统的公司来说，运维工程师这个岗位非常重要。\n拿一个简单的电商网站来举例，运维工程师需要保证其在线商店、订单系统、支付系统等各个系统的稳定性和可用性，以提供良好的用户体验和业务连续性。\n对于用户来讲，系统100%可用是商家应该提供的基本保障，但对于商家来讲，要保障网站100%稳定可用，用户看不见的地方花的功夫和投入是不少的。\n比如，运维工程师需要：\n1、保障系统稳定运行：越是复杂的年限越长的系统，越难维护，运维工程师通过对系统的维护与管理，保障了系统的稳定运行，提升了业务的连续性和用户体验，从来都不是轻轻松松的工作。\n2、提升系统运行效率：运维工程师需要负责应用系统的性能分析与系统优化，不断改进系统运行效率，确保系统能够高效地完成各项任务。比如随着系统用户的提升，数据量的增大，现有的底层架构、服务器、网络能不能保障系统的正常运行，这都是运维工程师需要考虑的事情。\n3、应急相应工作：对于运维来讲，非常重要的一部分工作内容就是制定企业内部的IT应急预案，采取相关的应急措施来应对突发故障、安全事故的发生。比如阿里、腾讯、滴滴这种突发故障，内部肯定是要有应急预案和紧急响应措施的。\n4、其他的标准化工作：比如说系统的网络安全工作、数据备份策略、负载均衡等等。\n运维工程师的工作内容是比较复杂的，依赖于丰富的技能和经验，有经验的运维工程师对于企业的价值很高。越是信息化程度越高的公司，越需要重视运维团队的建设。就拿蓝队云来说，我们现在的运维团队有三十多人，经验老到的老运维有一半以上，负责公司核心系统的运维工作。\n运维这个工作，大公司都不重视的情况下，可以想象对于中小企业来讲，更是没这块的人力财力的投入了。不过现在市场上已经有非常成熟的代运维服务了，比如蓝队云的安全运维服务，从基础安全配置--漏洞监测-风险防御-安全监测-应急处理-安全渗透都给你全包了，这样的服务就很适合没有运维团队的公司。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (81, 19, '衰落颓废现象而已，你看蒸蒸日上的就不会有这个现象。帝国衰落的时候就一些关键地方就会出现松动现象。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (82, 19, '我这一走，腾讯视频忽然崩了，都是我之前负责的系统。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (83, 20, '嗯，也许他们会解释：“因为地磁风暴的影响，才会相继出现故障”！', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (84, 20, '我们做事的时候都会留一些安全冗余，\n比如开会提前出发避免可能有的拥堵。\n\n我们花钱的时候不会把钱全都花干净，\n会留下一部分存起来应对意外的开支。\n\n建筑师设计房屋时会多用些钢筋水泥，\n就算有人偷工减料一些也不至于塌房。\n\n正常的时候我们做事都会留安全冗余，\n但非正常的时候就心有余而力不足了。\n\n经济不景气时候各行各业都比较缺钱，\n都想降本增效压低各种可能有的支出。\n\n安全冗余这种不急迫也不明显的地方，\n是大家不约而同第一个就想到的地方。\n\n公司为了降成本十个人的事五个人干，\n员工为了赶进度不重要的地方不检查。\n\n每个人都切香肠一点点侵蚀安全冗余，\n像抽积木游戏一样积木最后终于倒塌。\n\n各个积木之间还互相联动你塌我也塌，\n最终一点点风吹草动都能让大厦崩塌。\n\n不仅互联网公司的平台会动不动崩溃，\n银行医院交通等民生领域照样有可能。\n\n很多设备工程啥的都需要人不停维护，\n比如道路电梯啥的少了维护可能出事。\n\n而且有可能屋漏偏遇连阴雨一起爆发，\n到时候没做好准备工作的人可就惨了。\n\n经济不景气目前看来要长期持续下去，\n我们每个人都在一点点地不停抽积木。\n\n所以大家还是尽可能做些准备工作吧，\n欢迎大家在评论区互相提醒能做什么。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (85, 20, '一星期不看也没有任何损失。崩溃就崩溃呗。\n就跟停电一样，等会儿不就行了吗？或者今天就先不用了。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (86, 20, '首先就是这些平台故障也是因为大家使用的频率和操作的方式越来越频繁，可能就会导致这些平台的后台有的时候控制不到位，就会崩溃。而且就是可能也是因为这些平台还是有某些方面的漏洞就是需要调整。\n但是只要不影响咱们普遍的生活就好。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (87, 20, '下一个，pdd', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (88, 21, '你所看到的一切，都是一个草台班子。\n我们这个社会有很多的矛盾点，有的工作不可替代性比较强，但是却人员流动很频繁；有的工作都是重复性劳动谁做都一样，反而异常的稳定没有人员流失。\n未来还会有越来越多的大公司、平台、基建出现崩溃问题，原因可能一个比一个愚蠢，归根结底还是业务太复杂了，但是项目和人员的管理却越来越灾难，稍不留神，就命中了哪里的一个坑，然后系统就死给你看。\n糟糕的员工管理和职场风气，没有人会再关心自己做的东西的质量，反正我的生命周期也就是两三年，只是好奇以后谁会来攀自己这座shi山。\n这一点，大厂反而还真不如几百人的小公司，小公司整个研发团队都坐在一个屋子上班，真出了系统崩溃的问题它班子再草台也能给你出个兜底，依赖没有那么多，一两个人就可以做很多的事情。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (89, 21, '互联网公司大肆裁员的恶果开始显露，互联网应用系统接二连三出现崩溃便是例证，其中互联网大厂更是首当其冲的重灾区。\n稍微留心一点就会发现，近些日子互联网公司系统出现大面积故障频上热搜，似乎已经成了家常便饭，比明星翻车都来的勤。\n即便是诸如腾讯、阿里这样的头部大厂，也不能幸免于难，甚至出现这种故障的现象还更突出些。这在过去至少一两年以前、即便是在过去三年的特殊时期，也是极其罕见的。\n按说技术发展的越来越进步，问题应该越来越少才对。那现实情况为何却是每况愈下，越来越糟呢？有熟悉行业情况的网友分析指出，一切要从“降本增效”说起，裁员或是导致恶果频现、以至“降本增笑”的最直接原因。\n近年来，受经济寒冬以及业绩增长乏力的影响，互联网公司一而再再而三在“降本增效”的口号掩护下裁员瘦身。而公司管理者在盘算裁员角色时，往往先从所谓的“非盈利部门”、“纯成本部门”开刀，像每家公司保障系统稳定运行的运维团队通常就被视作负担而被优先裁掉。\n还有一种分析认为，还留在岗位上没有被裁掉的技术人员缺乏过硬实战经验，也是故障后迟迟无法恢复的重要原因。\n大多数公司在裁员落地过程中，被裁掉的往往是那些最一线干活的人，因为这些人通常没有啥权力和话语权，只是默默干着脏活累活的人。而留下的多是有一官半职或是所谓情商在线的人，PPT玩的是挺溜的，平时都是高高浮在上面颐指气使别人，真正的实战经验是堪忧的。\n过去，这些人可以压着面的老实锤锤们搞定一切，现在给他们抬轿的人被干掉了，遇到需要他们真刀真枪上战场的时候，一个个就原形毕露了。\n由此可见，历史终究是公平的，在时间的长河里，历史将公正的对待和评价每一个人和他所做的每一件事。对于个体而言，或许只要“但行好事”，便是最好的选择。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (90, 21, '这些大厂是把被裁掉的员工请回来才解决的问题吗？\n即使是因为裁员引起的故障，你猜管理层接下来会怎么做：\n再也不敢裁员了\n继续优化产品开发、运维流程规范，降低对特定人员的依赖性。\n几十年来开发技术的进步以及各种框架的应用，包括公司的各种流程、制度，从来都是奔着三个目的：\n提高开发速度\n降低开发成本（用“便宜”的人替换“贵”的人）\n降低对特定人的依赖\n接下来，AI会降低对“人”的依赖。\n所以，不要唯技术论了。\n\n很多人对ai嗤之以鼻，现阶段的ai不可能取代全部的员工，然而通过提高效率来减少人工成本已经成为事实。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (91, 21, '来自GPT的回答\n答：\n关于2023年年底阿里云、滴滴打车、腾讯视频等大厂平台相继发生崩溃故障的情况，我们可以从多个角度来进行分析和理解：\n技术挑战：随着互联网技术的快速发展，用户量剧增，数据量激增，这对平台的技术架构提出了更高要求。任何技术系统都不可能做到百分之百的稳定，尤其是在面对高并发、大流量等极端情况时，系统的瓶颈和潜在问题可能会被放大，导致服务中断。\n系统维护与更新：为了保持竞争力，互联网公司需要不断地更新和维护其服务和产品。这些操作有时可能会引入新的bug或者与现有系统产生冲突，造成服务暂时不可用。\n安全因素：网络安全事件（比如DDoS攻击）也可能导致服务崩溃。随着网络攻击手段的不断升级，即使是大型互联网公司也可能遭受攻击，影响服务的正常运行。\n人为错误：操作失误、配置错误等人为因素也是导致系统崩溃的一个原因。在复杂的系统管理过程中，即使是经验丰富的工程师也可能犯错。\n外部依赖：现代互联网服务通常依赖于多个外部系统和服务。如果这些外部依赖出现问题，也可能导致平台服务的中断。\n自然灾害和意外事件：比如电力故障、硬件损坏等不可预见的因素也可能导致服务中断。\n针对这些问题，互联网公司通常会采取以下措施来尽可能减少服务中断的影响：\n增强系统的冗余和弹性，使用多区域部署和负载均衡等技术来提高系统的可靠性。\n实施持续的安全监测和防御措施，以防范网络攻击。\n定期进行系统维护和灾难恢复演练，确保在出现问题时能够快速恢复服务。\n加强员工培训，提高操作规范性和准确性，减少人为错误。\n增强系统监控和报警机制，确保在出现问题时能够及时发现并处理。\n总的来说，虽然服务中断事件给用户和公司带来了不便，但它们也是促使互联网公司不断完善技术、提高服务质量的动力。通过不断学习和改进，互联网服务的稳定性和可靠性将得到增强。同时，用户对服务的期待也在不断提高，这要求互联网公司必须投入更多资源来保证服务的高可用性。\n\n来源：GPT国内免费镜像 (tomyres.com)', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (92, 21, '因为软件系统是很复杂的，多人协同的。\n有些人反正要离职被裁员了，有些程序员可能就敷衍了事，或者是给你故意留下点啥东西。\n反正，不要以为程序员都是老实人，老实人能做程序员吗？\n这年头智商高的人，情商也不低啊，在大厂打工，只会埋头做事，不懂人情世故的，早就凉了啊。\n只能说，这些平台崩了，只会让高管清楚明白，再怎么优化，都不能寒了程序员兄弟姐妹的心，你崩的这么大，损失可以给研发发多少年工资了啊？干活最辛苦，拿钱也没有很多啊，研发费用有时候甚至比不过营销费用，有时候真的就是笑话。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (93, 22, '就说，如果\n你们自诩为高大上的智能+现代+节能的新能源电动嗲的系统在你们开着所谓的自动驾驶的时候\n崩溃了\n咋整？', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (94, 22, '讲个互联网笑话：降本增笑，开猿节流。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (95, 22, '想起我曾经上班的那个工厂，老板非常抠缩，动不动就骂街，把人骂跑了就省一笔辞退费用。直到遇到那个更牛的人，一个老电工。\n工厂布线，按照规范什么线用什么颜色。但老电工留了心眼，布的线只有他一个人能分的清。后来果然干完活后老板又大骂特骂的把人挤兑走了。\n好戏来了。\n工厂不能没有电工，老板低价招来新电工。赶巧那天机器线路出问题了。新电工打开了老电工布线的电箱，看了两眼果断辞职走了。人家说犯不上为了几百块钱把自己电死。\n为了机器尽快恢复生产，老板连夜带着现金去老电工家里请人，终于又把人请回来了', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (96, 22, '程序猿在被“毕业”前，能在法律允许范围内最大限度报复公司的的事就是在公司的“屎山”上再拉下大大的一坨，并且不擦屁股（不写注释））', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (97, 22, '如果说只是一个阿里云平台崩溃，大家尽管口诛笔伐、索赔退圈都是常情，再上升到讨论对码农的不公平待遇的反思，越来越从“物质文明”进入到“精神文明”的讨论，直奔“形而上”而去。\n那么滴滴打车、腾讯视频等大厂平台相继崩溃，就没有人怀疑是有组织有计划的“黑客”攻击？或者只是那1000万大学毕业生中未就业的20%+的200余万中的某些人的恶作剧？', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (98, 23, '奔溃故障的都是走下坡路的二流大厂，真一流大厂拼多多和字节就稳的很。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (99, 23, '开猿节流嘛！\n本来别人运维干得好好的，你非得把他开了，换一个愣头青上来，不出事才怪！', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (100, 23, '这问题底下简直是程序员版的“百万漕工衣食所系”\n要我说崩的好，裁的好，市场经济就该这么玩。\n公司没钱了就该裁员，你乎天天吹的马斯克，到推特上来就裁80%。\n你说裁员把干活的裁没了就剩一堆拍马屁的，公司比以前更差了？那这种公司活该倒闭，倒的好倒的妙。公司不倒闭还叫市场经济么？\n有能力的被裁了你应该高兴，高兴这么早离开这家没前途的公司。只要有技术，出去照样大把公司抢着要，国内没人要你就润，润欧润美润日，我就不信了，地球这么大能让您这座大佛受委屈了？\n承认吧，这世界除了那0.1%的顶尖天才，其他人都是随时替换的螺丝钉而已，包括大多数什么985211毕业生，我和我同学同事什么b样我自己不清楚？玩点程序留后门误乱写注释的把戏真觉得自己多厉害了？\n真被裁了我就自认倒霉，赶上经济下行周期，找不到工作就送外卖，国内混不下去就润，等下轮上行周期又是一条好汉。等不到复苏要么躺平各安天命，要么王侯将相宁有种乎，真男人愿赌服输落子无悔，有啥可bb的？真赶上经济危机大家都不好过，传统工科工资都被程序员爆杀多少年了，人家智商比你低还是工作不努力啊？别整的大环境光针对程序员似的。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (101, 23, '讲个老掉牙的故事：\n两个食人族到IBM上班，老板说“绝对不许你们在公司吃人，否则我立刻开除你们！”。三个月下来大家相安无事，突然有一天老板把两个食人族叫到办公室大骂一顿： “不让你们吃人不让你们吃人，还吃，明天你们不用再来上班了！”两个食人族收拾东西离开IBM，临出门时一个忍不住骂另一个：“告诉过你多少遍不要吃干活儿的人，三月来我们每天吃一个部门经理，什么事都没有，昨天你吃了一个清洁工，立刻就被他们发现了！\n他们之前裁掉的都是部门经理，现在裁员裁到真干活的了。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (102, 23, '我很好奇，开猿节流到底省下来多少钱啊？滴滴这一次事故，直接损失都是肉眼可见的。节流省下来的钱要多久才能把这次的损失追回来啊？真就降本增笑？', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (103, 24, '阿里云和滴滴打车没用过，至于腾讯视频，我一直感觉他就是个垃圾，老是占用那么多运存干嘛？看个电影占了4g，还一直卡。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (104, 24, '那些喊着“拿程序员祭天”的大厂，终于吃到恶果了。\n前互联网大厂员工，看到这真的一点也不意外。\n互联网行业火爆的时候，程序员那叫一个吃香，换工作基本不愁找下家。\n现在到了转场的时候，开始提倡降本增效，拿程序员开刀，而且是“斩立决”的那种。当天约谈，恨不能你立刻马上就签离职确认书，这些hr根本不会考虑你在做什么，今天的运维工作谁来接，反正产品上线运行着呢，离开谁还能不转。\n巧了不是，离开程序员就是会宕机，就问你气不气。\n很多人以为产品只要上线了，就万事OK了，其实这才是刚刚开始，但产品经理已经去找下一个项目了，部门领导也开始写ppt邀功了，剩下的脏活累活都交给运维了，但运维做了什么根本没人在意，唯一在意的时候就是出问题了，有bug了，运维就是妥妥的背锅侠。\n大厂裁的都是老人，和产品年龄差不多。产品上线了，老人的价值也就差不多了，换一些刚毕业的性价比高的员工，至少在不懂业务的hr、hrbp眼里，这些活谁都能干，没谁都行。\n踏实干活的最不受重视，会写ppt，会做报告的混的风生水起，大厂的卷就是这样。所以这一波崩故障也算是咎由自取了。\n卷报告、卷加班、卷画大饼，卷汇报，真正踏实做产品的都「被」卷铺盖走人了。\n你不故障谁故障！', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (105, 24, '降本增笑，向外输出人才\n裁的都是大牛，留下的都是社牛', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (106, 24, '新时代的新斗争形态\n码农也是工人阶级的一员\n现在这种情况\n只不过是工人阶级对资本家挥下的屠刀的\n一点小小回应罢了\n吸血鬼掀开獠牙猛的扑向链子拴着的男人\n\n男人却只是轻轻地推了推自己的眼镜\n用自己雄狮般的眼睛看着他', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (107, 24, '干活的先裁掉，老油条了留下来', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (108, 25, '就不能是黑客秀肌肉么？', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (109, 25, '大家应该都听说过因为一个陶瓷片质量不过关，又或者是一个螺丝脱落，导致了火箭发射失败的故事。\n越精密的系统越有战斗力，但也越脆弱，无数个环节中有一个出了问题就可能导致整个系统完犊子。\n大到人类社会，小到一个鼠标，莫不如此。\n然而一切系统的本质都是屎山，一开始是AK47一般简单粗暴有效的家伙事儿，但不断升级，不断打补丁，不断给补丁打补丁……随着系统越来越强大，漏洞也越来越多，最后就是“生产”占用的资源越来越少，“维护”占用的资源越来越多，而维护者也需要维护……死亡螺旋出现，直到最后不堪重负，屎山炸成一地屎，只能推倒重来。\n纽约和北京的警察数量差不多，都是五万多人。然而北京有2184万人，纽约只有850万人左右。这就是因为美国作为老大帝国，强归强，但补丁摞补丁，需要海量的维护者。\n中国的互联网巨头们都是多吃多占、横向发展的，恨不得一个app包揽人们的吃喝拉撒婚丧嫁娶，这里面有多少屎山我都不敢想。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (110, 25, '当你们集中清退三十五岁具有丰富经验的技术人员的时候，这就是迟早的。甚至未来还有更大的风暴在等你\n说程序员的那是甩锅谢谢\n因为崩溃故障说得通俗点就是运维问题。\n而互联网企业是最能往死里压榨运维的。\n和程序员不一样，运维被折腾走不需要做任何手段去埋雷。\n只需要严谨的，面面俱到的，把自己保存的笔记，项目记录，每个项目的维护信息，事无巨细的整理成一个几G的文档包。转交给下一位同事就行了。\n一切你觉得恐怖的故障，起因很多时候都是一个很合理的维护行为所导致的连锁反应。\n就比方说某云大崩溃的起因：某个接手的人把某个服务的log文件给清理了。\nlog肯定是日志吧\n\n\n\n\n简而言之。\n瞎几把开老技术人员导致业务崩溃。\n这就是互联网企业的福报。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (111, 25, '曾经的大厂从业者路过，本质原因还是因为现在国内这些大厂上线新的功能和补丁的流程不够规范，相较于国际一线大厂（微软、谷歌）等，审核以及灰度发布流程过于宽松，总是往里面加新功能，都想拿kpi，都想用最新技术好有噱头，很多技术没有吃透，很多系统维护还是靠大量码农盯着，现在人一少就更容易出问题，缺少那种非常有经验能够统揽全局的顶尖技术专家，平台最难的是做减法，最近频繁的事故希望能够引起重视。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (112, 25, '如何看待2023年年底，阿里云、滴滴打车、腾讯视频等大厂平台相继发生崩溃故障？\n程序员35岁就会退休，这不都是资本家逼的嘛\n三百六十行，行行出状元，实在想不通，更有资历和经验的老师傅们竟然不值钱了？？\n难道是怕熬太多夜，出问题？', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (113, 26, '裁员裁多了，出这种事故很正常。\n一般来讲企业裁员主要由领导说了算，同事之间不作数，那就会有一个奇怪的问题。越是搞人情世故的领导升职越快。喜欢钻研业务探讨问题的领导要么被离职要么降职为带管理title的技术专员。\n国内的情况差不多都是这样，一旦企业要裁员，基本上都是把能干活会干活的先搞走，剩下的基本上都是人情世故高手，但是再厉害的情商不懂技术就是不懂技术，该崩溃就是得崩溃，没办法的事情。\n出这种事情后无非再问责技术员，大领导们几乎没啥事情，所以后面估计还是会继续崩溃。问题不大。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (114, 26, '一旦失去竞争对手，被保护着可以躺着挣钱，那么所谓的先进技术就显得有点多余。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (115, 26, '看来一个个都从知乎学到埋坑大法了', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (116, 26, '接着裁员接着乐', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (117, 26, '开猿节流，把真干活的人给开了。', '2023-12-06 15:21:13', 0);
INSERT INTO `moment` VALUES (118, 26, '海水淹地道也不是不行，但前提是你得先把相关区域给控制住了，敌人肃清，然后你就可以找到地道口，海水淹也行，水泥封也行，再狠一点灌毒气都随便你。\n然而以军的问题是根本控制不住局势，坦克过去老乡都能给你扬了，你拉个水泵过去它就能防RPG了？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (119, 26, '是时候放出这张图了，加沙紧挨着大海，如果当初挖地道的时候不考虑水攻，那绝对是脑袋瓦特了！\n不知道哈马斯会不会像犹太人一样蠢？\n不过联想到小霸王在希法医院的核磁共振中心内，发现哈马斯武器库，我觉得能想出往地道里灌水这种骚操作，大概率是世界上最爱学习的民族吃了没文化的亏。\n就像主席所说：没有文化的军队是愚蠢的军队，而愚蠢的军队是不能战胜敌人的！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (120, 26, '哪条地道进水，就把那条地道封住。那么窄的地道，封闭很难么？\n难道是以色列天兵的水比较厉害？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (121, 26, '兵来将挡，水来土掩，以色列看来真的“黔驴技穷”了。\n现在看来以色列真的是强弩之末了，貌似占领了加沙地带，实际上陷入四面楚歌当中，哈马斯和巴勒斯坦反抗武装，随便从哪里冒出来，都能给以色列军人进行肉体消灭。\n巴勒斯坦地道网络\n俗话说，兵来将挡，水来土掩。以色列可能高估了水淹地道的优势，顺便低估了哈马斯见招拆招的智商，以色列和大漂亮采用“水淹地道+警犬探索”的方法，不是在大漂亮的越南战争中试过了吗？根本上没用。\n现在加沙地带的地道保守估计800条，可能实际规模比这个刚庞大，在这次巴以冲突爆发之前，哈马斯曾透漏在加沙地带下面构筑了长达逾400公里的隧道网络。\n按国内城市地铁通车里程，咱给大家举个栗子哈：\n第1梯队：上海831公里，北京762公里；\n第2梯队：广州587公里，成都518公里，杭州516公里；\n第3梯队：重庆465公里，武汉432公里，深圳419公里，南京412公里；\n第4梯队：青岛280公里，天津267公里，西安258公里，香港241公里，郑州232公里等。\n看到没？哈马斯的地道长度比不上北京和上海，但是跟其他大城市的地下铁里程可是不分秋色。\n以色列还妄想往哈马斯地道里面灌注海水，难道哈马斯就会使用水泥、泥土进行堵塞吗？哈马斯的地道战在理论上和实际上已经应用的十分成熟，如果将来推广到大漂亮和以色列城市的底下管道中，恐怕那就是他们的噩梦。\n往加沙地带的庞大地道网络灌注海水，希望摧毁这一哈马斯人员的藏身之地，不如把加沙地带全挖掉得了，直接把这个地方变成一片大海，反正你们以色列也拿不走，为什么不毁掉呢？\n估计还是成本太高了，以色列和大漂亮的挖掘机不够，又不想振兴东方大国的挖掘机产业，关键是以色列没有那么多开挖掘机的人，怎么办呢？到兰翔技校培训，估计还交不起学费呢？招聘挖掘机操作工作，恐怕预算也不够。\n咱们再看看以色列的小儿科表演：\n10月中旬，以色列大兵在加沙地带西北部沙蒂难民营（Al-Shati Camp）以北约一英里处完成了该海水水泵系统的组装工作。\n该套系统超过5台水泵，计划从地中海抽水，每小时将以数千立方米的流量水抽入地道，可在几周内将地道淹没。\n这是在过家家吗？要把加沙地带改造成盐碱地，还是要把加沙地带变成一片大海，然后让与哈马斯开展水上舰艇作战或者水下潜艇作战。\n靠几台水泵就要淹没一个国家，不如架几尊大炮来得实在。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (122, 26, '去冀中平原参观地道战遗址，深刻地发现了《地道战》这部电影其实是军事教学片', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (123, 26, '水泵又扛不住火箭弹。\n以色列不许加沙建水库，现在想靠水泵。\n但大功率的水泵是明显的军事目标，还需要燃油补给，需要足够的兵力撑起安全区。\n即使安全区能成为现实，目前也只能解决近海地道。往远海地道灌水需要很长的管线，几乎无法有效防御。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (124, 26, '以军为消灭哈马斯也是无所不用其极，但用海水灌地道的做法能否奏效还有待观察，现在下结论为时尚早。\n以军往哈马斯地道灌海水的画面（侵删）\n据说加沙地带的地道系统由1300大小地道构成，总长约500公里，其中一些地道深达地下70米，当然大多数地道实际只有两米高和宽。从以军进入加沙后的作战进程来看，哈马斯构建的这些地道使得以军的战斗局面更加复杂，给以军增加作战的难度、增加了以军的伤亡。\n哈马斯在加沙构建的地道示意图（侵删）\n可能正因为此，所以以军不惜抽海水来灌哈马斯的地道。\n不过，我们当年看电影《地道战》的时候，电影里就出现了敌军往地道里灌水的场景。不仅灌水，还有放火、放毒气等手段……但电影里的情节显示，诸如灌水、放火、放毒气等做法并不能起到作用。\n哈马斯“经营”地道已有多年，此前的报道称，哈马斯的地道里有供水及制氧等设备，甚至有些地道还配有电视。由此可见，哈马斯提前预判了战斗的残酷及艰苦，提前做好了准备。这个准备包括哈马斯同以军打“地道战”的准备，也做好了防止以军对地道破坏的各种应对性准备。\n有关报道称哈马斯地道里还可以看电视（侵删）\n从这个角度看，哈马斯既然能准备供水系统、制氧系统，那么哈马斯提前构建排水系统也不是不可能。\n当然，以军用海水灌地道只是他们对付哈马斯的手段之一。\n在现代高科技的支撑下，地道不说“无所遁形”，进攻一方也绝不会是“束手无策”。对于地道的发现，可以使用多种探测手段来实现，主要有这么两种方法：\n一是，地面雷达的原理。该技术主要就是利用电磁波的反射来探测地下通道。当雷达通过导体极发射一定频率的电磁波时，电磁波穿过地面，与地面下的物体接触并被反射。这些反射信号由探测器接收并进行处理以将其转换为数据，从而发现地下的地道。\n二是，使用重力梯度仪。该仪器仅通过测量地下空洞引起的微小重力变化，就能够无损地探测到空洞的分布位置。\n发现地道后，以军方面可以用钻地弹直接攻击。比如，以色列拥有所谓的“地堡破坏者”炸弹，就可以穿透到地下深处。\n以军用钻地弹轰炸哈马斯地道（侵删）\n此外，据相关报道，以军现在还有新型武器，可以从地道口打进去，打进去的时候像是海绵，但很快固化，这样就能把地道整个封死。\n以色列方面对付地道的“海绵炸弹”\n如果说，地道一方面很容易被发现，另一方又很容易被攻击，那么地道的作战支撑作用就大大下降了。\n哈马斯修建的地道\n所以，站在哈以双方各自的角度看，以军单纯靠灌海水可能没有办法彻底消灭哈马斯的“地道战”。而哈马斯构建的地道或许能够抵挡以军一时，但由于哈以双方的实力差距太大，哈马斯想要凭借地道获得对以军作战的胜利也不够现实。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (125, 26, '实际上，水淹加沙地道这件事埃及就已经干过了，而且，对于加沙地道的打击，埃及很早就在做，当然，主因是为了打击走私活动，而加沙地道能够形成如今这个规模，仅仅是靠哈马斯自己是做不到的，那是广大加沙人民为了活命而开挖的。\n早在上世纪80年代，紧邻埃及北部边境的加沙地带南部拉法一带，就有人利用专门的设备挖通前往西奈半岛的地下通道，将外界援助巴勒斯坦抵抗组织的武器运输到加沙。\n慢慢地，加沙城下的地道几乎无处不在如同“地下迷宫”一般，在这个看似普通的阿拉伯村镇地下，隐藏着纵横交错、直通埃及的地下通道。\n加沙主要地道系统地图\n一开始，这些地道的用途很单一化，就是为了和侵略者打“地道战”；后来也不知道是谁开始从毗邻的埃及阿里什市“代购”生活物资，并走私到加沙赚取高额差价发财后，更多渴望脱贫致富的加沙人也开始加入其中，慢慢地，加沙开始形成全世界独一无二的“地道业”，这个充满了“废土朋克”气息的畸形经济体系。\n据粗略统计，这些地道总数至少在1000条以上，每条地道的长短、宽度和建造精细程度都不尽相同。\n在相对简陋狭窄的地道里，往往是昏暗缺氧，长度仅数百米，在里边的人民只能膝行，或弓腰前行，呆的时间长了，还有窒息的危险；但精致“现代”一些的地道则更相对“宽敞明亮”，不仅照明、通风设施一应俱全，少数 “ 豪华 ”地道甚至还 装备有电梯、通讯设备。\n至于各种物资的运输方式也不尽相同，大多数普通级别的地道都是采用滑轮装置，用人力推拉，但也有采用电梯运货，甚至在地道内有专门的运载工具，总之，这些地道已经成为了加沙人不可或缺的存在，当地人尊称其“生命线”。\n而哈马斯当局也支持这些地道，不仅武器装备以及原材料完全依靠地道运输，甚至加沙财政也极大依靠地道带来的税收，每年至少能获得折合二十多亿人民币的收入（2010年数据）。\n哈马斯税务官检查地道安全\n更重要的是，这些地道促进了加沙年轻人的就业，毕竟相较于参加哈马斯同以军拼命，更多的加沙人还是希望能尽可能避免战火。同样，在人口爆炸，经济危机严重的埃及一侧，这些地道也增加了他们的灵活就业。\n挖掘地道的加沙年轻人\n于是，两地在“地道经济”上形成了合作伙伴关系：地道开挖方向通常是从埃及进行，而且出口往往会显眼一些，因为按协议以色列不会轻易直接袭击埃及一侧土地；通道的终点则位于加沙这一侧的某户房子的底下，地道的两个出口处，都配备专门的管理人员，他们都随身带着手机和对讲机，以方便随时跟对方联系。\n挖通一条地道通常的成本在数千到数十万美元不等，但可以肯定的是，能负担得起这笔费用的，往往是加沙当地的有钱人，或者说是有所成就的“企业家”.\n随着地道规模越来越大，而以色列封锁加剧，大量加沙人成为“倒爷”，他们从埃及向加沙走私物资（以色列接壤的区域全部为犹太人定居点，渗透买通以色列人不是很容易，但也有），“外卖”、“快递”、“代购”业蓬勃发展起来。\n越来越多的地道满足了加沙的粮食、药品、日用品、代步工具、建材等基础需求后，人们自然也梦想着更多追求。\n很快，地道的用途开始转向活物，因为加沙人虽然身体被封锁，思维却很开阔，加沙的家长们很乐意掏钱让孩子们了解更多的知识，尤其是满足孩子去看狮子、老虎、鳄鱼等动物的好奇心。\n于是，加沙在2007年左右开办第一家也是唯一一家的汗·尤尼斯动物园，通过地道源源不断将猴子、老虎、狮子等运进加沙。当然，有时候也会发生一些坑爹的事情，比如有一次加沙动物园应孩子们的强烈要求，要进口2只斑马，但到货后却发现，只是两头用黑白油漆染色的毛驴。\n毛驴冒充的斑马\n依靠地道经济，汗·尤尼斯动物园鼎盛时期拥有100多只各类动物，这些动物满足着加沙人民对外界的好奇，也让他们暂时忘却战乱的阴霾。\n\n加沙孩子看小狮子\n地道有时候还会连接起爱情。\n虽然加沙处在困苦之中，但埃及也是水深火热，许多贫困人家的生活条件还不如加沙，对他们来说，可能唯一的优势就是没有以军的无人机在头上盘旋了，但饿死一样难受。\n于是，每年都有许多埃及新娘通过地道嫁到加沙去。\n\n通过地道嫁入加沙的埃及新娘\n当然，也有非阿拉伯国家的新娘远嫁加沙，包括俄罗斯、波兰、德国、匈牙利、乌克兰以及波黑，甚至美国、中国的姑娘都有，总数超过1000人。\n加沙人津津乐道的一件事发生在2010年左右，当时一名哈马斯小伙子和一名俄罗斯女生网恋，最后女生不顾小伙的反对一定要在加沙和他完婚。\n但没想到的是，二人费尽了力气却没办法让俄罗斯女生通过正常口岸入境，毕竟连美国记者都经常被以色列拒绝。\n最后，小伙让女孩来到埃及一侧的一处村庄住下，半夜，这户人家灶台上的锅被举到了空中，原来，是姑娘的心上人通过地道来接她了。\n\n嫁到加沙的俄罗斯姑娘\n小伙子付给主人一笔丰厚的报酬，然后接从未见过面的俄罗斯姑娘进入地道，地道里早有一群荷枪实弹的哈马斯武装人员拿着手电筒、火把接应。\n最后二人在哈马斯官方支持下，举行了盛大的婚礼，极大激发了加沙人的士气。\n因为网络，外界的一切加沙人同样向往，这其中美式炸鸡是加沙人最渴望的事物之一。\n\n阿里什市的肯德基\n加沙商人哈利勒·埃弗朗吉在2010年左右创立了一家名为亚玛玛（阿拉伯语“鸽子”）的“外卖公司”，专门为加沙有需求的群体从埃及代购肯德基在内的美式快餐。\n亚玛玛是加沙第一家开设外卖服务的公司，在谈及创业初衷时，哈利勒说：“这是我们的权利——享受全世界其他人都能享受的味道。”\n亚玛玛的肯德基外卖广告\n不过，预订的过程却十分繁琐，而且你必须要提前三四天在社交网站预约，打过去全款，订餐仅限于全家桶，因为这样就不存在送错的问题了，反正都一样。\n然后，在收集到指定数量的订单后（15份最低），哈利勒就会联系埃及阿里什的手下采购好全家桶，然后需要埃及一边的人开车将几十个全家桶送到地道入口处（埃及段），最后通过地道抵达加沙。\n需要说明的是，这一切的过程哈利勒也需要支付给地道主人几十到数百美元不等的买路钱，另外还要支付给哈马斯当局“关税”，整个过程平均都在4个小时左右，效率堪比俄罗斯外卖“饿死了么”。\n等炸鸡送到加沙时，薯条和鸡块早已冰凉，失去了酥脆感，原价12美元左右的全家桶最后出售价在27-30美元左右，还不包括小费。\n“外卖小哥”们的态度往往极端恶劣，因为他们通常兼职居多，都是捎带手连同其他物资一起派送。\n29岁的易卜拉欣埃尔·阿杰拉在亚玛玛点完全家桶后，在第四天终于收到，他曾经去过埃及和美国，是肯德基忠实粉丝。\n欣喜取餐的点餐人\n他声称自己点过好几次了，每次都是“五星好评”，即便“外卖小哥”打电话的态度恶劣：“快滚下楼拿你的炸鸡，我还赶着送炸药呢！”\n这些兼职“外卖小哥”发脾气当然也有自己的道理，其中就有小哥们吐槽：“无法理解这些人非要花近30美元吃美国炸鸡，有这钱都够买4只活鸡了。”\n\n加沙外卖小哥\n这些小哥的本职都是运送军火的，可能在他们看来，为送炸鸡耽误送炸弹，就是一种“耻辱”。\n但这就是加沙地道的伟大之处——即便你生活在战火中心，依然潇洒地吃上吮指原味鸡，将苦中作乐的精神发挥到极致。\n阿里什的肯德基屡次遭遇恐怖袭击，会导致加沙送餐迟缓\n\n2013年出身于“穆兄会”的民选总统穆尔西被军方废黜后，新总统塞西和哈马斯当局反目，也开始配合以色列打击地道。\n\n埃及通过往地道里灌烟、灌有毒气体或水的方法摧毁了近千条大小地道，甚至还在边境地区修建一道深入地下的“铜墙铁壁”，也就是一堵防爆、防穿透的 2英寸厚钢板墙，以阻止加沙人挖通地道。\n是的，如今以色列人想做的，埃及人在2013年开始就干过了！\n在以色列和“阿拉伯兄弟”的合力围剿下，无数加沙人的致富脱贫梦碎了。\n以军导弹炸毁地道，大量地道内工作人员被活埋\n许多地道被炸塌或者被水淹没。\n以军直接攻击任何疑似有地道的房屋\n\n迷茫的加沙地道老板\n截止2023年初，加沙各种“外卖”据悉也已经停业，大型隧道被摧毁殆尽，仅有军用小隧道在苟延残喘，已经没有多余的运力支持“外卖”了。\n而加沙的汗·尤尼斯动物园在以军的轰炸下，沦为“世界最惨动物园”。不断的空袭导致物资短缺，大量动物饿死变成干尸，到了2016年之际，100多只动物仅剩15只存活。\n加沙动物园的动物因为战乱，变成干尸\n面对动物们的苦难，以色列人却“发了善心”，允许国际动物保护组织将最后幸存的15只动物运走，但无数缺医少药的加沙人却依然被禁止离开，只能在痛苦中逝去。\n有正义网友用纳粹鹰徽配送摩萨德符号，来讽刺以色列当局\n最讽刺的是，以当局还指责哈马斯不断对加沙民众进行“反犹教育”，让孩子们从小“仇恨”以色列，所以才导致加沙被封锁，以色列这是在“自卫”。\n可是，给巴勒斯坦人上“仇以”教育课的不就是以色列自己吗？\n\n失去父亲的加沙孩子\n加沙人民过了十四年“炼狱”般的苦难，在开战前生活就已经极为糟糕了，说实话，加沙人已经没有活路了。\n被以军野蛮空袭的加沙\n\n\n\n参考资料：\n梁洁：论占领法律制度适用于加沙的困境与出路\n黄培昭：加沙地道战\n国家经济地理：“炼狱”加沙\n地图帝：巴勒斯坦加沙是座大型监狱吗？看地图一目了然\n联合国：绝望在加沙无处不在\n赵萌：揭秘加沙“地道经济”', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (126, 26, '实时顺序更新，码字不易，欢迎点赞+收藏+转发三连，关注公众号“美好小仙的礼物”防失联：\n\n0：09\n欧洲人权监测组织：以色列禁止65%以上的人道主义物资到达加沙地带。\n0：55\n以色列国防军退役少将伊扎克·布里克说：“我们所有的导弹、弹药和飞机都来自美国。没有美国，我们就无法打这场战争，哪怕是一段时间。\n1：02\n《纽约时报》报道显示：10月7日，一枚来自加沙的导弹击中了以色列的一个基地，据信该基地拥有核导弹。\n1：31\n以色列军队发言人：”我们的目标是消灭哈马斯领导层，包括叶海亚·辛瓦尔，我们正在监视他们“——半岛电视台\n2：00\n加沙地带大片地区的通信和互联网中断。\n2：20\n以色列国防部长约阿夫·加兰特：“加沙的战争将扩大，并以目前的强度持续至少两个月。”\n3：06\n英国政治家、前工党领袖杰里米·科尔宾问加沙是否有英国军队，但外交大臣没有回答。\n3：21\n巴勒斯坦红新月会：我们完全切断了与加沙地带行动室以及在那里工作的工作人员的联系。自侵略开始以来，以色列的占领第四次完全切断了所有通信网络。\n4：08\n美国国务院：我们没有证据表明“以色列”故意杀害平民。\n5：12\n人们在洛杉矶街头游行，持续抗议以色列在加沙犯下的战争罪行。\n5：33\n美军中央司令部：12月3日下午2点15分左右，向叙利亚的 Rumalyn 基地发射了15枚来自伊拉克的122毫米火箭弹。没有人员伤亡或设备损坏。\n5：49\n自10月7日以来，共有15名伊拉克人民动员部队战士被美军空袭击毙，其中6人被伊拉克伊斯兰抵抗组织认领，其中6人全部属于Harakat Al-Nujabaa派系，而其他9名烈士则没有被伊拉克伊斯兰抵抗组织认领。\n其他 9 名烈士很可能是 PMU 中另一个派别（可能是 Kata\'eb 真主党）的成员，这些派别不属于伊拉克伊斯兰抵抗运动的联合指挥伞，该联合指挥伞仅由最忠诚的亲伊朗团体组成。\n6：20\n美国国务院政治军事务局国会和公共事务部主任乔什·保罗因美国向以色列提供武器而辞去职务，他在CNN节目上说：“目前我已经收到数百名同事的来信，他们支持我所做的事情，他们发现正在发生的事情对美国来说既是一场道德灾难，也是一场政策灾难。”\n他告诉CNN首席国际主播克里斯蒂安·阿曼普尔：\n“13岁巴勒斯坦男孩在以色列监狱内被强奸，慈善组织DCI巴勒斯坦向美国报告了此事，当美国国务院向以色列政府提出调查这一事件时，以色列国防军第二天就关闭了DCIP 的办公室、没收了他们的电脑，并在同年宣布DCIP 为恐怖组织，因为他们敢于揭露这一事件。”\n6：24\n今天，以色列国防军的战机投下重型炸弹，炸死了眼前这名美丽的巴勒斯坦小女孩。\n6：27\n今天针对以色列军队的所有抵抗行动的大摘要：\n卡萨姆旅：\n◆在各个战区瞄准了12辆犹太复国主义军车，9辆坦克，5辆装甲运兵车和一辆D9军用推土机\n◆瞄准了一辆犹太复国主义“彪马”装甲工程军用车辆，用 Yassin-105 火箭穿透了拜特拉希亚以东。\n◆在加沙地带北部，一辆犹太复国主义坦克被IOF士兵包围，造成坦克周围的一些士兵死亡和受伤。\n◆在“Majin”定居点和“Issanad Sofa”军事基地以东用火箭弹袭击士兵集会。\n◆用迫击炮炮击加沙城以南的敌人集中地。\n◆在谢赫拉德万附近与犹太复国主义部队交战，造成人员伤亡。\n◆在al-Falouja地区与犹太复国主义部队交战，造成人员伤亡。\n◆用炸药瞄准了一支特殊的犹太复国主义部队，并在加沙北部的al-Falouja地区用机枪消灭了剩余的部队。\n◆用炸药袭击了拜特哈嫩一栋建筑物内的犹太复国主义部队。\n◆用炸药（2x）瞄准拜特哈嫩一栋建筑物内的犹太复国主义部队。\n◆用“TBG”炮弹瞄准拜特拉希亚以东一栋建筑物内的犹太复国主义部队。\n◆战略性地改变隧道，以瞄准驻扎在拜特哈嫩的犹太复国主义部队。使用手榴弹和机枪的组合，成功地给部队造成伤亡，造成人员伤亡。\n圣城旅：\n◆瞄准了 3 辆犹太复国主义坦克、一辆装甲运兵车和一辆 D9 推土机，在 Beit Lahia、Al-Falouja 和 Jabalia 轴线上使用串联和 RPG 火箭。\n◆在谢赫·拉德万（Sheikh Radwan）附近与犹太复国主义士兵发生近距离激烈冲突，并瞄准了一些军用车辆。\n◆用迫击炮炮击了Juhor al-Dik轴线上的军事集中地和士兵。\n◆用几枚 60 毫米迫击炮弹炮击“阿布胡里”轴线的敌人集中地。\n◆在一次联合行动中，用爆炸装置瞄准了一辆以色列军车，并用串联火箭瞄准了加沙城东部轴线的另外两辆军车。\n◆用火箭炮击了第 86 山“库尔德”的犹太复国主义集中地。\n◆用Badr-1 IRAM火箭轰炸了Juhr al-Dik的军事集中地。\n纳赛尔·萨拉赫·阿尔丁旅：\n◆用一连串大口径迫击炮炮击了基苏菲姆军事基地附近的军事集会。\n◆在拜特哈嫩用串联火箭瞄准了一辆军用车辆。\n真主党：\n◆在Shtula和Al-Rahib军事基地附近袭击以色列士兵。\n◆以巴格达迪军事基地为目标。\n◆以Ruwaysat Al-Alam军事基地为目标。\n◆在Misgav Am IOF基地袭击以色列士兵。\n◆在Branit和Al-Rahib IOF基地附近袭击了一群以色列士兵。\n◆以Shtula IOF基地附近的一支以色列步兵部队为目标。\n◆以哈尼塔基地附近的一群以色列士兵为目标。\n◆以 Birkat Risha IOF 网站为目标。\n◆瞄准了Jal Al-Allam军事基地。\n◆用反坦克导弹摧毁了拉米亚的 2 辆以色列军车，点燃了这些车辆并消灭了其乘员。\n这份清单不包括从加沙向定居点发射的火箭弹。\n7：05\n以军发言人承认，此前一名以色列国防军军官声称“10 月 7 日我看到一排被谋sha的以色列婴儿挂在晾衣绳上”的说法是“不准确、细节模糊、与现实不符和非官方的”。\n8：31\n世卫组织总干事表示，该组织接到以色列军方的命令，要求他们在24小时内从加沙南部的医疗仓库中撤走物资。\n以色列否认了世界卫生组织的说法。\n9：40\n半岛电视台报道：无国界医生的疏散车队最近在加沙城遭到袭击，这似乎是蓄意袭击。\n无国界医生组织在黎巴嫩贝鲁特进行抗议游行，要求以色列停止轰炸加沙的医院。\n10：06\n据以色列媒体报道，对内塔尼亚胡总理的审判昨天在耶路撒冷地方法院恢复。报道称，内塔尼亚胡免于参加听证会，但可能会在几个月内被传唤作证。\n内塔尼亚胡总理被指控犯有欺诈、背信和腐败罪。他不认罪，并在过去一再表示，他是媒体和左翼政治策划的“猎巫”的受害者。\n10：21\n这是加沙爱资哈尔大学在以色列轰炸前后的样子。\n11：03\n美国空军昨天表示，在上周在日本进行的例行训练演习中坠毁的 CV-22 鱼鹰残骸旁边发现了 5 名机 组人员的尸 体。\n12：35\n美国白宫怀疑红海船只袭击事件是由伊朗主导的。\n国家安全顾问杰克·沙利文说，周末对红海商船的袭击是由胡塞武装进行的，但“我们完全有理由相信这些袭击......完全由伊朗支持”。\n“我们不相信这三艘船都与以色列有联系，”美国国家安全顾问说，并补充说，卡尼号军舰对船只发出的求救信号做出了反应，并在此过程中击落了三架无人机。\n也门胡赛武装对沿海的封锁对于以色列和整个全球经济至关重要。\n如果任何战斗阻碍了苏斯运河的通行，即使是很短的时间，也会产生意想不到的后果，特别是对欧洲经济而言是个毁灭性打击。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (127, 26, '打算把加沙变成盐碱地？\n罗马灭亡迦太基后做的最阴损的事便是在其土地上撒盐。\n罗马正统犹太啊！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (128, 26, '我们一般三四年级的奥数就教一个水管往里放水，一个水管往外排水的问题，基本上学过奥数的都会算，入门问题。\n国外是快乐教育，尤其是民众，很可能不会。\n一般来说，题目中不会加入外部因素，比如海上不仅仅有海水，还有海藻，还有更多稀奇古怪的东西，时间长啦水泵要清洗，水管会堵塞，需要清理，清理需要时间。放水有延迟，排水不会，这太难了。\n还有水池子一旦要多啦，也足够大，需要多少水泵的问题，现在看起来只有一套。\n还有地道不是全部都互联互通的，还有各种挡板，排水沟，还是需要一个个发现，一个个往里灌水的。那些管子怎么运过来？\n你往地道里面弄管子的过程，对方全是死人不成？等着你往里面抽水？\n抽水需要的石油跟开推土机需要的石油比起来，是不是更多一些，毕竟功率大的更蚝油。打仗就是打钱，是不是哪种方法性价比更高用那种？\n那个水泵的管子有多少备品？坏啦需要多长时间能补充上？\n还有N多个问题，毕竟这是打仗，不是和平时期，打仗用嘴是打不了的。\n现在看起来，媒体说的是要往加沙里面灌水啦，让加沙变成一片汪洋大海，这真是感人的工程。\n能不能淹到以色列，毕竟都在一块陆地上？\n最后说一句，有这钱，发给巴勒斯坦人，他们都会拥护犹太人，成为以色列公民，打什么仗。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (129, 26, '怎么说呢，没看过地道战知友请举手，看过没看过的，我们再复习一下，看看天朝人民的伟大智慧怎么痛击侵略者的，如果连抄作业都不会，还能说个啥。\n教学片剧情开始：1942年，是抗日持久战的第五个年头。日本此时又发动了太平洋战争，更加经不起战争消耗，急于把华北变成以战养战的基地，大规模地掠夺资源。从5月1日开始，日寇对冀中抗日根据地发动了更加疯狂、残酷的大扫荡。\n影片的反派主角是山田队长和汤丙会。他们在一次扫荡中包围了某抗日根据地的区委，高家庄村长在突围中身负重伤，临终前把一本《论持久战》交给老钟：“鬼子又要大扫荡了，往后的形势会更加困难。区委指示，叫我们村自为战，坚持斗争。一定要坚持，坚持就是胜利。”\n我军为了化被动为主动，主力兵团转移到外线作战，牵制敌人的进攻，并为大量歼灭敌人创造有利条件。少数地方部队仍然留在原来地区，同广大民兵一起坚持斗争。\n乡亲们安全转移后，崔连长带领八路军部队也撤离。老钟叔的儿子高传宝则带着民兵和一些村民隐蔽到藏身洞里。\n鬼子进村后烧杀抢掠，一些村民被从藏身洞里搜出来杀害。\n日寇妄想靠野蛮的三光政策把抗日军民吓倒。大扫荡后，冀中平原成了“抬头见岗楼，迈步登公路，无村不戴孝，到处是狼烟的恐怖世界”。\n残酷的斗争现实，向抗日军民提出了一个亟待解决的问题：在日寇细碎分割、严密封锁，反复清剿、炮楼林立的大平原上，游击战争还能不能坚持？怎样坚持？\n高家庄经历扫荡后，一片凋零。民兵牛娃说剩下这么点人和枪，不如去找大部队打个痛快。传宝则告诉他：“可别小看了这几个人这几条枪，有它，汉奸地主坏蛋就不敢炸刺，少数敌人就不敢出来活动。”可是光藏着不打，也不是办法。传宝要带大家回村把地雷炸药扛上，给鬼子点颜色，却被另一位村干部林霞嫂拦下，拉到村里开会，商量对策。\n老钟叔让林霞给大家念了一段《论持久战》，并传达区委的指示：赶紧发动群众，挖地道，开展地道斗争。\n过去华北平原的村民就习惯挖一些藏身洞，躲避土匪强盗。可是它们既小，又只有一个出口，无法对付大规模的搜剿。“往后，咱要把家家户户都挖通，要叫它全村都连成一片！”\n大显神威的地道战，就是这样开始的。地道挖通了，传宝也想得更深了一步：留一些小通道，万一鬼子发现了洞口，往里面放水灌毒，就可以把它堵上；鬼子要是进来，还可以抵挡一阵。老钟叔则提出：多在洞口上想主意，把洞口挖得越隐蔽、越巧妙越好。于是大家想出了各种点子。\n牛娃对整天挖地道不理解，因为他哥哥就是钻了地道后，打不能打，跑不能跑，被鬼子抓住杀害了。“成天黑夜没完没了鼓捣这玩意，能把黑风口的炮楼挖掉吗？”传宝开导他：黑风口离咱们庄只有八里地，鬼子一天来好几趟，没有个牢靠的躲身地方不行。这时青年妇女抗日先锋队挖好了一条地道，请传宝他们去参观。\n传宝翻箱倒柜找半天，也没发现灶台下的出口，还是队员顶着大锅钻出来，才恍然大悟。他也钻了下去，顺着地道来到院子外的饲料槽下。牛娃也认识到这个隐蔽洞口和地道的好处，总算想通了。\n黑风口据点内，鬼子、伪军集结起来，准备再次下乡掠夺。\n伪军司令汤丙会向山田报告说：很多村庄都建立了维持会，就是高家庄、赵庄，胆敢跟“皇军”对抗，不当顺民；庄里全是土八路（也就是民兵）。\n狡猾的山田想了一会后，命令队伍解散，“统统滴，回去睡觉。”然后他向疑惑的汤丙会解释：“你滴，战术滴不懂。八路狡猾狡猾地，白天滴出发，明白？”他要改成夜间偷袭。\n当晚，鬼子和伪军就悄悄地来到了高家庄。山田给鬼子兵下命令时，说了一句后来常被引用的“名句”——“你们，悄悄地进村，打枪滴不要！”\n这时传宝他们刚挖完一段地道，把自己和林霞嫂家的连上，这样又多了一个出口。老钟叔嘱咐他们把出土口堵上，然后去村中巡视一番，结果发现了偷偷翻墙的鬼子。他赶紧跑到大树下，敲响村里那口很有些历史的大古钟。村民们听到警报，赶紧下地道隐蔽。老钟叔被气急败坏的山田打了一枪，然后拉响手榴弹投向敌人，英勇牺牲。\n鬼子搜到天亮，也没能在村里找到一个人。汤司令叫嚣着“挖地三尺，也要把他们掏出来！”敌人到处翻挖、敲砸，总算在一口水缸下发现了一个地道口。\n敌人从这个洞口放火、放烟，想把村民们熏出来。他们还在街道、院子里四处开挖，总算挖到了一截地道，于是顺着开挖下去，还用水桶往里灌水。\n地道里的村民们只能往深处躲避。烟进来，大家赶紧用被子堵；水进来，大家只好赤脚站在水里。结果三个地道口被挖开了两个，村民们也被烟熏得够呛，形势越来越严峻。民兵大康着急地说：等着鬼子把地道一节节全挖完了，咱有天大的本事也施展不开！\n传宝也觉得干等不是办法。和林霞嫂商量后，他带人来到先前那个灶口下的隐蔽洞口。几个鬼子正在灶上炖鸡，传宝突然掀开汤锅冲出去，击毙鬼子，掩护乡亲们撤出地道。\n这时，区小队、马家河民兵也闻讯赶来支援。原来在山田偷袭高家庄时，西平据点的敌人也包围了赵庄。区长平原叔命令区小队采用麻雀战术骚扰敌人。民兵们四处吹响号角，在铁皮桶里放鞭炮模拟机枪射击，放二踢脚模拟榴弹。别看这些办法土，却把敌人搞得懵头转向，惶惶不安。\n传宝隐蔽在村舍里，看见山田在屋顶上四处观察，于是一枪打过去。子弹击中了山田的屁股，惊慌的鬼子兵四处扫射。传宝又一冷枪打倒一个鬼子。山田无法应付这四面惊扰的状况了，虽然嘴上还很硬，但还是就坡下驴，听了汤司令的建议后撤兵。\n传宝看着遭洗劫的村庄，有些沮丧。区长平原叔和他到古树下谈心。“打仗，这没什么，不会慢慢学嘛。”高传宝认真阅读《论持久战》后，明白了一个道理——保存自己的目的，在于消灭敌人；而消灭敌人，又是保存自己最有效的手段。\n这就是说呀，光想法藏，不想法打，那是藏不住的。光藏不打，结果是呢，光挨打。”于是大家开始琢磨着把单纯隐蔽的地道，变成既能防水、防毒、防挖、防钻、防火，又能转移、射击的战斗地道。要打了好藏，藏了又好打；地上打和地下藏，必须结合起来。\n这时影片中响起了歌曲：“太阳出来照四方……哪怕敌人逞凶狂。咱们摆下了天罗地网哎，要把那些强盗豺狼全都埋葬，全都埋葬。把它们全埋葬！”\n这首《毛主席的话儿记心上》，曾被很多人误以为是《地道战》的主题歌。曲调、歌词看似简单，却很有韵味，朗朗上口，属于经典。\n转眼过了冬天，又到春耕。区长告诉传宝他们：军分区首长要派大量的武工队回来。于是大家都天天盼着武工队快点来。\n这天，六个人骑车来到高家庄，自称是八路军武工队，还拿出了一封盖有军分区大印，写有军分区司令员、政委名字的介绍信。传宝先是很奇怪区长怎么没事先通知自己，然后又发现这些人窝窝头没吃几口，鸡蛋却被吃了个精光。“他们不像是自己人。”他借倒水的机会拿起对方的步枪，结果对方非常紧张。\n原来这些家伙是汉奸孙进财一伙，奉汤丙会之命，冒充武工队来摸高家庄的地道，大队敌人过个把钟头就到。有民兵报告敌人来后，孙进财假装为了不给村子惹祸，不让集合民兵，坚持要钻地道。传宝将计就计，带着两个汉奸下了地道。\n利用地道里的翻口盖板，传宝分隔开两个汉奸。关起门来打狗，堵住笼子抓鸡，这就是地道翻口的作用。然后他在掩体里扎死一个敌人，用陷阱消灭另一个。上面的房子里，假武工队也被崔连长带着真武工队缴械。\n增援汉奸的大队敌人进村后，遭到四面攻击，被消灭二十多个后逃窜回去。\n鬼子自然会来报复。几天后，山田带着100多鬼子、200多伪军，前往高家庄破坏地道。传宝敲钟集合民兵后，给大家分派任务，制定了抵挡鬼子的基本战斗原则——咱们分头把关，不让鬼子进庄；按计划打，先村边，后街道，从房上到房下……\n民兵们首先利用在村口大道上修建的土墙工事，节节阻击。中国古代就有横在城墙上的短墙，这样既不阻挡己方兵员在城头移动，在敌人攻上城头一处后，也能阻挡敌人沿城墙向两侧席卷。\n村口的连环地雷给敌人造成不小杀伤。于是山田命令几门小山炮向村内射击，民兵们迅速钻下地道。高传宝观察一阵后，让大家停止射击，放鬼子进庄。“这样敌人的大炮就使不上劲了。把鬼子诳进庄，叫他藏没法藏，躲没处躲。咱们哪，想怎么打就怎么打。”\n地道里，穿到各处的竹筒，还有妇孺老少，就是民兵们的“手机”。墙壁屋顶石碾下，到处都突然冒出子弹手榴弹，进村的鬼子们被打得蒙头转向、无处躲避。村里大路上的陷阱，让逃跑的敌人纷纷落网。\n鬼子被打败了，村民们高兴地出来收获战利品。除了钢枪、钢盔，他们还抓到一个装死的伪军军官。\n这次胜利后，民兵们继续挖地道。群众的力量是无穷的，群众的智慧是无限的。随着战役形势向前发展，在以防御为主的村落地道之外，又出现了进攻性的野外地道。几个村子的地道相互衔接，便于各村联合作战。一处受敌，八方支援。他们挖出了一个地下长城，都能容纳较大的部队集结隐蔽。地道还一直挖到敌人据点、炮楼脚下，可以监视、围困敌人。\n地道战使日寇闻风丧胆。他们也跟中国古人学，在地上埋一口缸，时常过去听听地下有没有挖地道的声音。\n高传宝计划利用延伸到炮楼下的地道，把黑风口一号炮楼炸掉。区长说80斤炸药还少，多加一倍！上级批准了这个作战计划，而且告诉他们：在夏季攻势的打击下，最近有四五个零星据点的敌人都龟缩到了黑风口；这样，黑风口的敌人增加到400多个，不适合直接攻打。\n通过各村各庄民兵、区小队、县大队的联防会议，大家决定先别管黑风口，集中十个庄的民兵围困西平据点，然后县大队和区小队埋伏在西平与黑风口之间的地道里。围点打援后，分区独立团再趁虚而入，夺取黑风口据点。\n几天后，鬼子山田接到柳本太郎小队长的电报：西平据点被“几千个八路”包围得吃不消了，要赶紧派人来支援！汤司令告诉山田，“根据可靠情报，围困西平据点的是赵庄、高家庄、马家河子一带的土八路。”于是山田决定再次夜袭，来个一举两得：既端土八路的老窝，又解西平据点之围。\n这时汤司令再次造就了一句经典台词——“高！高！实在是高！”他还出主意带上几台抽水机，要看看高家庄地道里到底能盛多少水。\n于是山田和汤丙会这两个家伙从黑风口出来后，没有奔西平。区委得到情报后，召集高传宝等人来开会。传宝告诉大家，高家庄的地道准备得很充分，就算只凭留守的民兵，面对上百鬼子的进攻，也能抵挡不少时间。于是区委决定将计就计，直接打黑风口，端敌人的老窝，然后来一个回马枪，把山田他们消灭在野外。大康通过地道赶回高家庄，正在为前线准备烙饼的女民兵们马上放下炊具，做战斗准备。\n敌人进村后，再次发现空无一人。伪军在村子里发现了三个洞口，汤司令立刻派几个士兵下去搜索。这暴露的洞口，并不是粗心大意。民兵们要把敌人“请”进来，再做适当处理。几个伪军士兵在陷阱的封堵下，不是完蛋就是被活捉。林霞嫂押着他们向洞口上的汤司令喊话，说全村的老百姓都在这地道里，可自己赶不动，非得“太君”亲自下来。一打12个鬼子下到地道，结果被闸门、陷阱等机关分割，全都收拾了。\n气急败坏的汤司令命令向地道里灌毒、放水。可他们使尽任何招数，也奈何不了地道。因为民兵们早就想了很多办法实现五防：防水、防毒、防挖、防钻、防火。\n敌人的招数使完了，轮到咱们动手了！高家庄此时的地道系统是能藏也能打，而且是巧藏巧打，地上地下都能打。这真是能把强盗豺狼全都埋葬的天罗地网！\n\n\n地道里有很多这样专门的上下翻口和盖板。如果敌人放火灌烟，就把木板盖上，再用泥土覆盖。翻口还可用来堵截敌人。\n这种有枪眼的弯道、掩体，可以让民兵从容打击钻入的敌人。在地道口必须布置一个。\n较大的洞库，用来安置村民、物资。\n高家庄打响的战斗，没有影响到民兵主力的行动。坚持持久战、坚持游击战，终于跨过了艰苦的道路，踏上了胜利的坦途。因为地道战这类战法，抗日根据地的防御更加坚固，敌我力量对比慢慢发生了转变。\n这时主力部队、地方部队和民兵汇合在一起，向黑风口的敌人据点前进。他们通过地道来到黑风口的李大伯家，突然出现在据点大院门口，用炸药包轰开大门。各个炮楼下埋设的大量炸药也被引爆。\n得知黑风口情况不妙，敌人“狗夹尾巴往回溜”。此时野外的进攻型战斗地道发挥作用，民兵们在沟渠等地阻击，然后利用地道、地雷逐步撤退，消耗、包抄敌人，把鬼子打得人仰马翻。\n随着冲锋号吹响，区小队、县小队等大批民兵像变出来似的，从菜田、井口、草垛、砖窑等地出击。这时影片唱出的大合唱，才是《地道战》的主题歌，气势恢宏。\n山田和汤司令带着几个残兵逃入一座土砖窑。高传宝通过地道直接杀进窑内，击毙汤司令，活捉了山田！\n对于地道战的作用，曾有一些人认为只是宣传。《地道战》作为教学片电影，把很多经验、战果集中到一起体现，这是很常见的拍摄手法。可当年地道战的抗日战果是无法被忽视的，日本防卫厅战史室编撰的《华北治安战》都对此有过详细描述。\n“部队在行动中经常受到……突然射击。偶而发现敌人，紧追过去，却无影无踪。以后得知他们挖有地道……四通八达，其至有地下集合的场所。”“沙河、木道沟河沿岸一带……交通壕、地道建筑非常普遍，几乎所有的村庄都有地下设施，甚至有相距七、八公里的三个村庄用地道连接起来。而且老百姓抗日意识很强，就连老幼妇女也组织了抗日团体。”“63师团师团长于1943年年底总结：剿共战已变成地道战……”\n日军63师团的斋藤邦雄曾长期在冀中作战，战后他绘制了《陆军步兵漫画物语》一书，其中一节就是《地下道战法》。“外表看来是一口井，或者是一个猪圈里的草垛，地道的入口往往开在这种我肯定想不出来的地方。即便是我们发现了，也没法进去……为了防止毒气，还会设立夹层结构。各处都有通风孔和观察外界动静的窥视口……甚至发现过连接进县城的地下道……抓捕农民和民兵进行过拷问，但我所见的范围，从未从他们口中得到关于地下道秘密的情报。”\n1945年1月，美军观察员艾斯·杜伦上尉在冀中军区考察时遭遇日军搜剿，和大家一起进入地道。\n日军通过遗落的相机和笔记本发现破绽，找到了洞口，但不敢下去，放水放烟也没效，从清晨僵持到下午五点也没得手。回到军区机关后，杜伦对杨成武将军说：冀中的地道是万能的，中国一定能胜利！\n这再学不会，真的没办法了', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (130, 26, '以色列从十月中旬就已经安装了一套水泵系统，但是直到现在12月份了也没有实施，可见这个海水淹没地道系统的方案还在评估当中。\n1、海水被灌入地道中，是否真的能够将地道淹没，仍然存在质疑，因为地道中可能有排水系统；\n2、海水如果真的可以淹没地道，但是是否可以蔓延到整个地道系统，这个以方并不十分清楚，因为地道有可能不是直接相通的，而是分散存在的，这样的话，如果想要将地道全部淹没，几乎不现实；\n3、海水在淹没地道的同时，肯定会有海水溢出，这对加沙地区的环境势必造成破坏，这种结果肯定会遭到国际社会的谴责；\n4、如果水淹地道的方法奏效，那么势必对哈马斯武装份资子最沉痛的打击，他们可能会狗急跳墙屠杀人质，所以这个方案最好是在人质释放完了之后实施；\n5、对于摧毁这些地道，以色列同时也表示“可惜”，因为这个系统是花费了哈马斯多年的心血才完成的“巨作”，如果能够成为己用的话，可以说是一个很大的军事遗产。\n总之，这个水淹地道的方案最终估计会流产，毕竟这么久了都没有具体实施，只要没有把以色列逼到绝路，应该就不会“破釜沉舟”的实施。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (131, 26, '看来内塔尼亚胡没钱了啊，灌水比灌水泥省钱啊！\n此前，同样是美媒报道，说根据以方泄露的方案，以军准备先将加沙分割为小块，用装甲推土机推平哈马斯藏匿地点，再用探地雷达寻找并填埋地道通风口，随后使用海绵炸弹以及神经麻醉等方式将哈马斯赶出地道或者闷死在地道中。目前尚未获悉使用火焰喷射器的手段。当时美媒还信誓旦旦地表示，以军会使用可打穿6米厚钢筋混凝土或30米厚土层的美制钻地弹来彻底摧毁地道网络。\n当年埃及塞西政府在摧毁埃及和加沙边境的地道时，采取的就是往地道里灌水的方案，现在内塔尼亚胡也想有样学样了吗？\n也许是思前想后，发现还是灌水比速干水泥省钱啊。而灌水的话，那自然是从加沙海岸边直接抽取海水灌进去最方便快捷。\n现在需要观察的是，以军如果真的是以海水灌入地道，是不是会让原本就污染严重的加沙水源更雪上加霜了……\n当年埃及往加沙数千条地道灌水的时候，哈马斯采取的措施是用水泵抽水排水，但即便如此，抽水的速度也远远赶不上灌水的速度，最终直接导致数千条地道报废。\n如今呢，在以军攻势之下，哈马斯很难像当年应对塞西那般从容，所以估计这些隧道基本会废掉得更快。\n而另一个问题在于，还没有被哈马斯释放的那些犹太人质还在不在？如果他们还活着，那大概率是在地道之中……', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (132, 26, '建议以色列召唤耶稣，给加沙施行神罚！\n别再问犹太教和耶稣关系了，哈马斯做的！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (133, 26, '水攻是以军之前就定好的计划，只不过具体可行性以观后效，因为哈马斯地道没那么简单\n世界局势\n12.5.18更新——\n大号 @星辰被封期间先看这吧', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (134, 26, '如果往地下灌水这么容易，北京就不会努力恢复地下水资源了。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (135, 26, '这些活鬼子们都干过，地道战要成为更经典的神作了。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (136, 26, '我跟大家的看法不太一样，我觉得用海水灌地道是个比较有效的办法，因为这个不能直接套用冀中平原地道战的经验，冀中平原毕竟没有海，鬼子当年也没有大功率的水利机械，少量水泵和人力灌水完全可以通过设置集水坑（水井）的方式来避免水淹。\n但加沙是个海滨城市，距离海边非常近，现代大功率水泵的扬水能力是挺强的，加沙地形又平坦，大量的水灌入地道很难通过高差排出，只能也使用大功率水泵往外抽，且不说老乡的水泵够不够，就算够，在犹子的绝对空中优势下也很难保证连续作业。\n但是\n现在犹子的问题不是水泵够不够大，不是地中海的海水够不够多，犹子的问题是怎么保证自己能顺利把水灌进去？老乡们打到现在地道口基本都收缩到城内了，完全可以把通向城外的地道封住，那犹子想灌水只能进城，而进了城就得挨毒打，什么巨大亚欣105，什么反坦克体操，什么狙击手一动不动打光弹匣。。。\n那犹子到底能不能扛着伤亡灌水我想是得画个问号的，以上阶段犹子步兵拉胯的表现来说，基本没法保证灌水作业，所以我的结论是，主意不错，就是有点差。\n长期来看，我依然对老乡们的斗争持悲观态度，犹子再怎么拉胯，依然对老乡们保持着碾压级的优势，而周边阿拉伯国家除了抵抗之弧这些非官方力量以外，都在打嘴炮，犹子五次中东战争积威之下，这些所谓王爷们，不过土鸡瓦犬罢了，加之美帝的虎死不倒架，阿拉伯国家现阶段真的没有一个敢站出来策应老乡们的，伊朗目前也就是个嘴炮王者，美帝固然因为自身实力下降不敢随意在中东发动战争，但阿拉伯国家也没有哪个敢拿自己的脑袋去赌摸美帝这个老虎屁股还能全身而退。\n所以老乡们的战略形势其实非常险恶，有点类似东北抗联，在阿拉伯内部，他们得到了除帮助外的一切支持，而在国际上，虽然加沙得到了大多数国家的同情，但也只有同情了。\n最终东北抗联实际上是全军覆没了的，仅剩的残部被迫退入苏联境内，直到44年底才反攻回东北，而44年的鬼子已经是冢中枯骨了。\n加沙的结局大概也是如此，哈马斯的失败几乎只是个时间问题，幸存下来的成员退入黎巴嫩、叙利亚和伊拉克，继续组织反以斗争，我相信他们最终会成功，因为如果犹子不做出改变，那犹子的覆亡也是时间问题。\n只是这个过程可能要漫长的多，正义终将迟到。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (137, 26, '意义不大，加沙抵抗军的地道跟我们抗日战争时候的地道区别很大，抗日战争的时候日军可以轻易的占领地面建筑，乡下也都是些土坯房，所以那时候的地道就跟军教片里说的一样，村与村户与户地道连成片，是大规模的整体地道，加沙抵抗军的地道大多是班排级别的地道，地道出入口都是直接在地面的，抵抗军通过地面机动到另一处地道，因为现代钢筋混凝土建筑，让每一处楼房都几乎成了一个堡垒，用水淹发现的班排级地道几乎没有什么意义，因为随着idf的推进，抵抗军会放弃这些地道继续转入城中，而idf的地面推进速度大家也看到了，打到明年问题看起来不是很大，现在idf的推进速度不取决于他自己，考虑到哈马斯展现的强悍战斗力，占领加沙的时间完全取决于哈马斯物资的消耗时间。\n我承认，如果idf直接all in，加沙陷落只是时间问题，但是哈马斯的战略目的是拖住以色列地面部队并给予最大程度的杀伤，这点他们已经做到了，而以色列对加沙的全面军事占领看起来遥遥无期，哈马斯只是抵抗之弧战斗力最弱的一环，如果清缴哈马斯都如此费力，我想不出以色列如何面对后续可能的黎巴嫩和珍珠党的大举南下。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (138, 26, '我倒要看看高家庄的地道里到底能盛多少水（手动红脸表情）', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (139, 26, '是谁把埃及的机密军事技术泄露给以军的？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (140, 26, '有人不知道这种行为叫什么，两个字，小可爱，坦克都被偷袭打爆，你抽水泵那种不能移动的玩意加上那么长的水管，水泵多了，他只需要花几分钟打爆一段或是打爆抽水泵你这几天的活白干，然后几天的时间水干了。水泵少了，灌得没干得快。自己的坦克都保不住，民用抽水泵难道套了金盾开进去还能好好的？\n这里面最大的问题是，抽水泵是需要人操作的，而且他和碉堡一样属于固定点，而且抽水泵和梅卡瓦不一样的是他绝对不能配置那什么自定防御系统，不然会弄死旁边操作人员，所以简直是被动挨打的送分怪，不要给对面刷成骷髅师啊。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (141, 26, '（不知道大家相不相信，本人现在存了差不多1万块钱了\n今天是12月5号，从8月份开始存钱到现在，每个月除了寄回老家父母亲那边2000块钱，自己省着点用。每个月剩下3000块。\n实话实说，真的很辛苦，现在赚钱比前些年难太多了\n今晚还是夜班。这篇文章就不多说了，主要还是想看看有没有打赏。）\n报道称，11月中旬左右，以色列军队在沙蒂难民营（位于加沙地带北部）以北约1英里（约合1.6公里）处安装了至少5台抽水泵，每台抽水泵每小时可抽取数千立方米的海水，预计几周内就能用海水淹没加沙地带的地下隧道。\n《华尔街日报》表示，目前尚不清楚的是，以色列是否会在所有人质被释放之前使用这些抽水泵。哈马斯此前曾表示，他们把被扣押人员藏在“安全的地方和隧道内”。\n一名美国官员就此事接受采访时表示，可以理解以色列试图封闭加沙地带地下隧道的做法，以色列政府也正在探索一系列方法来做到这一点。\n以色列国防部没有立即回应置评请求。《华尔街日报》称，以色列国防军一名官员拒绝对该计划置评，但这名官员表示：“以色列国防军正在使用不同的军事和技术工具，以各种方式摧毁哈马斯的能力。”\n据报道，上个月，以色列首次向美国通报了这一计划，引发了双方的讨论，包括执行该计划对环境的影响和军事必要性。一些美国官员对该计划表示担忧，而另一些官员则支持以色列封闭地下隧道，并且表示美国不一定反对该计划。到目前为止，以色列已经发现了大约800条地下隧道，而且他们承认实际的隧道网络比目前发现的规模更大。\n《华尔街日报》称，考虑采取用海水淹没地下隧道的方案，表明以色列必须在追求其战争目标和保护平民的巨大国际压力之间取得平衡。目前还不清楚以色列政府距离实施这一计划还有多远，他们还没有做出最终决定。\n报道称，用海水淹没加沙地带的地下隧道，虽然有助于驱逐隧道内的武装分子，但也会污染加沙地带的淡水供应并破坏当地的基础设施。人们担心，海水会使加沙地带的土壤盐碱化，使农作物难以种植。还有人担心，储存在隧道中的其他物质也可能渗入土壤，进一步污染该地区。\n有前美国官员在接受《华尔街日报》采访时表示，该计划可能会使拜登政府陷入困境，并让以色列招致全世界的谴责，但他们承认，这可能是少数永久封闭加沙地带地下隧道的方法之一，该隧道系统估计长达300英里（约合483公里）。\n（回顾一下）\n在为期一周的停火期间，内塔尼亚胡一直受到压力，特别是来自其政府中的右翼分子的压力，要求重新开始战争。以色列一直明确表示，一旦协议结束，对哈马斯的打击将重新开始。\n尽管如此，仍有希望达成新的协议。迄今为止，卡塔尔在停火谈判中发挥了至关重要的作用。卡塔尔周五证实，谈判仍在继续，“目的是恢复暂时停火”。\n战争恢复后，加沙目前的局势如何？\n在战斗恢复后的七个小时内，哈马斯管理的卫生部表示，已有60多人丧生。当然哈马斯发布的信息一直水分很大。\n爆炸发生后，联合国儿童基金会的詹姆斯·埃尔德（James Elder）在加沙南部的一家医院接受了BBC的采访，称这种情况“令人恐惧”。\n他说，这“对人们来说是可怕的”，“你看到他们脸上的恐惧”，并补充说，打击就发生在他所在的设施附近。\n他说，医院里挤满了成千上万的人，一些家庭已经在那里的床垫上生活了数周，将停火的结束描述为“每个人都完全害怕的噩梦”。\n在停火之前，加沙地带遭到了广泛的破坏，因为以色列对哈马斯10月7日的致命袭击进行了报复行动。\n以色列声称使用了10,000多枚炸弹和导弹。BBC分析发现，加沙很多建筑物可能遭受破坏，其中大部分集中在北部。\n打击也使人道主义援助陷入停顿。援助机构能够利用战斗的暂停来获得关键的援助，但团队报告说，在他们到达的许多地区发现了破坏和灾难。\n接下来会发生什么呢？\n尽管谈判仍在继续，并且有希望达成新协议，但目前局势很明显，战争已经恢复。\n在加沙地带北部，特别是加沙城周围，进行了数周的激烈战斗之后，以色列军方现在似乎将大部分注意力集中在南部，据报道，那里再次发生空袭。\n以色列国防军还绘制了一张加沙地图，分为2000多个区域，据称该地图将用于帮助加沙人民逃离未来的战斗。\n以色列在网上发布了这张标有编号区域的地图，并表示这是为了帮助平民为“下一阶段的战争”做准备。\n以色列国防军表示，该地图被划分为多个区域，使人们能够“在需要时从特定地点撤离，以确保安全”。\n星期五，以色列战斗机在加沙南部最大城市汗尤尼斯以东和以北地区投下传单。传单没有提到任何编号的街区，但阿拉伯语的一条消息告诉四个命名但未编号的地区的居民“立即撤离并前往拉法的避难所”。\n在美国国务卿安东尼·布林肯（Antony Blinken）会见以色列官员之后，他坚持认为下一阶段的战争必须确保平民受到保护。\n布林肯表示，他已告诉以色列政府，它必须避免巴勒斯坦人进一步大规模流离失所，并避免对医院、发电站和供水设施等关键基础设施的破坏。\n中国支持以色列的原因可能有多种，以下是一些可能的解释：1. 历史渊源: 中国和犹太人有着悠久的友好关系。历史上，许多中国的城市都曾是犹太人的避难所，他们对中国人民的慷慨大度表示感激之情。此外，在二战期间，犹太难民的到来也为两国之间建立了直接的联系。这些因素可能使中国人对以色列产生好感。2. 安全合作与共同应对恐怖主义威胁：中国和中东地区的一些国家一样面临着来自伊斯兰极端分子的安全挑战。而以色列为该地区的反恐战争提供了重要的军事和技术援助。因此一些中国人认为以色列在一定程度上帮助了中国对抗中东的恐怖势力。3. 经济利益考量 ：近年来中以经贸往来日益密切, 以色列已成为第四大外国投资者, 而未来十年预计是中国企业大规模“走出去”的关键时期 。与此同时双方的合作领域不断扩大, 从农业、高科技等传统产业到旅游、金融等服务业等新兴领域的投资也在逐渐增多 , 中以合作的互补性和交融性将越来越强。这种经济上的联系也可能会增强一部分人对以色列的支持程度。4. 国际政治立场：在国际社会上，有些国家和组织会对某一事件或问题发表偏颇的观点或者言论，这时候人们往往会倾向于和自己熟悉的观点保持一致，也就是所谓的\"站队\"。这种情况也会导致人们对以色列持有某种倾向和支持态度。5. 个人情感和社会氛围的影响：在中国社会中，人们的情绪和氛围有时会受到媒体报道、社交网络和其他信息来源的影响。如果一个社会的公众舆论普遍偏向于某个特定的国家或组织，那么个人对这个国家的看法也很可能会出现类似的趋势。6. 对宗教信仰自由的保护：在中东地区，尤其是巴勒斯坦领土，对于不同宗教信仰自由的限制十分严格甚至是被完全禁止的情况下 ，很多国人就会更加认同那些保护自己民族文化不受侵犯的国家如以色列 。7. 国际话语权争夺战 ：随着互联网的发展以及各种自媒体的兴起，“声音”传播的成本变得越来越低。“沉默的大多数”开始发出自己的声音并试图影响更多的人。在这个过程中，支持和反对某些国家和地区的声音都有可能出现并且有可能被放大或者是淡化处理 。总的来说，为什么那么多中国人支持以色列这个问题涉及多个层面的原因，需要综合考虑以上提到的各个方面来理解。\n而其中很重要的一个舆论战场，那就是中国。以色列驻华大使馆很快就发文表达了以色列正在被哈马斯袭击，并且死伤了多少人，试图得到中国人的同情，有一些不明白真相的人，看到是巴勒斯坦激进派哈马斯先动的手，于是就站在以色列的角度，开始谴责哈马斯的恐怖主义行为，而这些评论才是以色列最希望看到的，因为给以色列宣传造势的目的也就达到了。若说有很大一部分中国人都选择支持以色列，那么这将会影响到中国的崛起，但是好就好在如今的中国，网友可不是这么好糊弄的，在巴以冲突这件事情上，到底谁是谁非，中国网友有自己的判断。\n以色列驻华大使馆发布了多条视频，其中一条就是一名北京出生的中意混血女孩被绑架到加沙的视频，其目的非常明显，但是中国网友的评论却大大出乎了以色列驻华大使馆的意料，因为前面几条评论是这么说的，你们以色列现在还欠着我们中国一个道歉，中国不承认双重国籍，他是以色列人，他是以色列国防军现役士兵，他在作战行动中被对方俘虏，他被俘虏的地点在联合国一千五百七十三号决议中，本属于巴勒斯坦的领土，头一次听说一个国家拿一本神话故事作为国家版图。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (142, 26, '足以证明人家并不是贪图巴勒斯坦的土地。\n纯粹就是想杀光巴勒斯坦人。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (143, 26, '我个人认为这是现今以色列不多选择中最可行有效打击哈马斯的一个选择，\n先不说效果如何，至少护墙河是可以建立起来，也就是设立地下拦截，强行把沙加划分为一个个单独的区域，\n知道我看到这个第一个想到的是什么，是小日子的囚笼政策，也就是建立铁路，炮楼，无人区，把革命根据地分割开来，并对某些地区重复扫荡，\n这的确不是一个最好的办法，但不得不说这个蠢办法是真实且严重打击了根据地的军民生活工作和抗日斗争，\n但也催生出了百团大战对小日子囚笼系统的对耗和兑子，也就是说，以色列现在封锁只是第一步，并不是只靠海水就能把哈马斯的坑道系统给全破坏，\n但沙加地区会被物理上分割开，尤其是地道机动性会大大被扼制，跨区机动会非常危险，物资弹药运输会大大受限，直到被围的区域只能小范围，低烈度发动军事行动，最后弹尽粮绝，\n还记得上甘岭吗，送一袋苹果就能得二等功，如果以色列真的把哈马斯对外的地道大都破坏掉，围而不攻，以逸待劳，以色列天然存在不败之地，并且不用再派IDF无头苍蝇一般进沙加送人头，\n也就是战损数字会马上下降很多，只要经济再挺过一段时间，把现在沙加哈马斯手上的武器装备耗尽，那么以色列就可以掌握主动并维持出赢，赢，赢的局面，\n所以不要用海水破坏地道的看法去评判以色列这个行为，而要用小日子囚笼政策来考虑沙加根据地被用海水分割后物资运输和地道机动对整个沙加根据地的影响来进行考虑，\n以色列这一招不得不说，就现在IDF的素质，选择围困比进市CQB有效多的多。\n\n以上', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (144, 26, '以色列放大招要水攻地道？以国防军放话水泵11月就已装好，几周就能淹没哈马斯地下隧道。拜登政府已收到通知顾虑竟是··距离计划实施还有多远？\n美国官员4日称以色列可能向哈马斯在加沙地带的地下隧道灌注海水。以国防军11月中旬已在加沙地带北部的沙蒂难民营以北一英里处安装了至少5台抽水泵，预计几周内就能淹没隧道。目前尚不清楚以色列是否会在所有人质被释放之前使用这些抽水泵。\n上个月以方首次向美国通报这一计划，美方担心用海水淹没加沙地下隧道会污染当地淡水供应，并破坏当地的基础设施。美国官员4日称以色列可能向哈马斯在加沙地带的地下隧道灌注海水。以国防军11月中旬已在加沙地带北部的沙蒂难民营以北一英里处安装了至少5台抽水泵，预计几周内就能淹没隧道。目前尚不清楚以色列是否会在所有人质被释放之前使用这些抽水泵。\n上个月以方首次向美国通报这一计划，美方担心用海水淹没加沙地下隧道会污染当地淡水供应，并破坏当地的基础设施。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (145, 26, '这真的还是犹太人狠毒，人为制造海水倒灌，再慢慢 导致他们土地盐碱化。\n还是要在地道里面养鱿鱼和乌贼吗？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (146, 26, '以色列不过是使用了埃及曾经用过的方法而已。而且这个做法相对而言成本更低。\n因为以色列不需要保存这些地道，也不需要在今后让他们继续发挥作用。所以日后加固另做他用等等不需要。\n至于说能不能达到一劳永逸的效果，您搞笑了，埃及当年这么做的时候一劳永逸了？埃及当年建墙的时候一劳永逸了？\n倒是有一点很明显，那就是地道里如果有人质，很可能死在里面也没人知道。也就是哈马斯真的这么做了，这些人质的最后结果可能是失踪。\n而封闭的做法要说目的，那就是把敌人赶到地面上来进行作战，以及可能的封堵更多的地道口或发现更多的地道口。\n以色列现在巴不得把加沙南北建个高墙，然后在北加沙让他们的神来场洪水来的省事。当然脚踝高哈，不是齐腰深。\n目前以色列的执政当局是不希望把加沙给法塔赫来治理。原因嘛，哈粉们应该会认为是吞并加沙的欲望导致，其实说实话，以色列让法塔赫控制局势不敌视以色列如果以色列是这么想的，那的确是傻的可以。所以这场战争持久倒不如说是秩序性军管从现在很可能就会开始考虑。但目前没觉得以色列考虑清楚了用什么方案。\n对于哈马斯而言，消灭并不是杀光最后一个人，而是让这个政权丧失统治力为以色列的目标而已。\n至于说什么哈马斯为人民拥戴的政权军民共存亡，还是醒醒吧，退一步说，兵败如山倒，任何人在一个军事组织中组织被颠覆，想的也是自己的后路，而不是从自己做起进行组织本身的复兴。但以色列的时间的确是比较紧，因为包括知乎哈粉们在内的“世界广大同情巴勒斯坦阿拉伯以消灭以色列为目标的穆斯林人”的公众，会把所有巴勒斯坦地区的问题归咎于以色列的行动，也就是地方虽然不是你的，但这地方的责任，得归以色列。\n如何平衡这个问题，就比较难，而所谓的困难说白了就是美国介入的道义性能持续多久，这就跟俄粉们只要想办法让乌克兰的援助不能按时到位，就坐等自家普大帝迎接胜利就可以了。到时候胜利者宣传什么不是对的呢？毕竟目的达到了，其他的不重要。\n所以综合评价就是，这是措施之一，如果知乎一众网友做指挥官，你会放着这个方法不用？说因为知乎网友们说了不能一击致命，不能一劳永逸，我要想个能的方法，那是不是傻？\n而且对于这种十年磨一剑的防御工事，还要顾及后果，毕竟是不能那么放开手脚的，要是真如上帝发个大洪水，那倒是问题解决了，谁也没机会说个不字不是，犹太人哪怕是复国主义者还真没天天喊着珍珠万岁的人一样，拿着《圣经》觉得上帝拿洪水淹了加沙是正义之举的。\n所以就当个战术措施看就得了。重复一遍，淹没地道意味着对地道内的所有人员无差别射杀。和轰炸有军事单位或疑似军事单位的建筑是一样的。包括以色列的人质如果在里面，以色列的回答应该是。。\n安息，要恨请恨以色列的敌人。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (147, 26, '我当时还在开玩笑说，有本事你就用水泵慢慢抽。\n结果这一看，还真的用水泵啊？\n我以前读过一本书，Let There Be Water: Israel’s Solution for a Water-Starved World，非常有名的一本水资源处理的书，也被翻译成中文过，有兴趣可以找找 pdf 来看一下。\n以色列处理污水，其中一个步骤就是利用沙漠对污水进行天然的过滤。\n那么问题就来了，如果你用水泵往地道灌水，那些海水是否会直接往地底渗透，甚至说不好听一点，你是不是在花钱“资敌”，给哈马斯送水？虽然这个水不能直接喝，但是毕竟等于减少了其中一道工序。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (148, 26, '加沙人道主义灾难，最大的威胁，不是炮弹，而是水缺乏及其引起的卫生和健康灾难。\n加沙本来就缺饮用水，战争期间更是如此。\n巴勒斯坦水务局的数据：这次战争之前，以色列切断对加沙的电力和淡水供应前，百分之九十的水都是不能饮用的。何况之后。\n现在一些加沙人开始在在靠近大海的地区挖井或者依靠加沙唯一的含水层的含盐自来水生存，但是这些含水层一是含盐量高，二是许多地方也已经被大量污染了。\n即使是这些勉强可以饮用的水，在分配过程中也经常与劣质水混合，只能洗东西，而不能直接喝水。\n极少数有点钱的加沙人，还能通过黑市，以极高的价格买点矿泉水喝。\n绝大多数穷人就只能渴着，实在扛不住了找点污水喝，但这样又加剧了疾病风险。\n许多难民集中在加沙南部，只能靠着南部原先的居民施舍点水生存。昨天汗尤尼斯有两名居民自愿将水装满塑料容器，分发给流离失所的家庭。\n本来以色列承诺，昨天会给加沙南部居民恢复一下饮用水，但是和之前的情况一样，以色列担心这么做有利于哈马斯，所以没有恢复。\n现在加沙难民危机的主要原因就是哈马斯将自己的物质基础与加沙人民深度捆绑导致的。\n加沙仅有的一些医疗机构，已经没有淡水了，现在都在给病人使用含盐量高的水，这会进一步恶化病人的病情。\n水污染是导致加沙地带肾脏问题急剧增加的因素之一，加沙市希法医院，每年收治的肾脏问题患者数量增加以百分之十三到十四的比例增加。\n由于海水入侵、废水渗漏和农业径流，水的主要来源，也就是加沙很少的一些含水层，水质也在下降。在加沙报告的所有疾病中，有四分之一以上是由于水质差和取水难造成的。如果目前的趋势继续下去，加沙和周边地区将面临疾病爆发或其他公共卫生危机的风险。\n加沙唯一的含水层受到污水、化学物质和海水污染，附近的海水淡化设施也受到污染，现在加沙二百三十万难民只能指望公共水龙头了，就是下面这种。\n影响加沙水资源供应的另一个原因是电力长期缺失。加沙这几年的电力供应一直都严重不足，一直受到巴勒斯坦权力机构和哈马斯之间关于电费支付的内部争端影响。这几年加沙居民平均每天只有大约四小时的电力供应。\n一个数据：要想满足加沙人对水喝卫生的基本需要，要建设三千多个项目，但是这些项目之前基本仍在批准之中，只有百分之十六的水部门项目通过了审批。战争之后就彻底没有下文了。\n除了内部问题，外部影响也在进一步恶化加沙的水资源供应。\n比如，以色列多年以来一直限制向加沙出口军民两用物品，包括百分之七十的技术设备，如水泵和水净化化学品等等。这些设备是维持水和卫生设施需要的。\n比如美国最近决定，今年将向联合国近东巴勒斯坦难民救济和工程处提供的三亿美元资金削减。\n这个救济工程处一直在为加沙提供公共保健服务上很重要，经营着二十一个初级保健诊所，雇用了一千多名医务人员，每年接待着四百多万病人还开办了学校，教授一些卫生相关的课程。\n除了削减这笔钱外，美国政府还削减了两亿美元的双边外援。这笔钱里的一部分也是计划投入加沙水资源设施建设的。\n加沙中央海水淡化厂，原本预计今年每年将提供一点三九亿立方米水，但是这个项目从五年前开始就因为资金缺乏一直时断时续，资金缺口达到两亿多美元。\n即使一些已完成的基础设施项目，也面临资金不足的问题。比如加沙北部的紧急污水处理项目是从二零一八年年初运营的，但是这个项目存在一千七百万美元资金缺口，无法支付运营和维护成本。一些捐助者虽然愿意为基础设施项目提供资金，但是不愿意为运营和维护提供资金，这直接阻碍了这个工程为四十多万加沙北部居民提供废水处理的能力。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (149, 26, '以色列人越来越像纳粹分子了，如出一辙。犹太人和纳粹的角色互相渗透，同质化，解释了二战的遭遇也将解释未来……愿上帝保佑以色列永远强大，否则怎么可能有安全的未来？\n暴力解决不了问题。犹太人被德国人屠杀的原因不是因为德国人太暴力，也不是因为犹太人太弱小，真正的原因是嗔心。是因为仇恨。\n中国将来会怎么对待日本人中的军国主义分子？这些都是无法改变的未来。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (150, 26, '针对坑道（地道）作战的几种方式，汇总一下:\n1、烟熏。输入大量烟雾，让地道里的人呆不住。\n2、火攻。喷火器是美军常用的手段，在二战对付坑道里的日军，在越南对付北越军。\n3、毒气。这玩意美国在朝鲜战争中用过。\n4、水淹。这是冷兵器时代常用的手段。\n5、封闭。把所能找到的洞口全部推平。\n6、挖掘。从上往下挖，挖断地下交通、洞穴，摧毁发现的一切。\n以色列选择水淹，的确是一种办法，能不能成功就看以下几点:\n1、有没有破坏排水通道？一面灌水一面流出大概是不行的。\n2、有没有解决被隔断的问题？地道通常不会太宽敞，如果开挖之前就有防水准备，那么很容易被沙袋或门板或其它材料封堵住。\n3、有没有搞清所有地道出入口？如果十个洞口灌水，二十个洞口出水，那就白瞎了。\n4、如果最后形成长时间的灌水，加沙这块地方还要不要了？\n以色列看来是计无可施了，按道理以手中的现代化火器和工业能力应该可以解决地道战术，之所以用最古老的办法，大概有几个原因:\n1、以色列耗不起时间，一个个去发现地道再摧毁，拖的时间太长。\n2、以军的战斗意志和心理状态有点崩溃，类似地道战之类的战术，是极考验单兵素质的。\n3、以色列伤亡有点大，用水攻可以大量降低战斗减员。\n结论:我们可以猜测到以色列的进攻遇到困难，损失有点大，而达成消灭哈马斯的目标短时间内无法达成。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (151, 26, '这海水，它halal吗？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (152, 26, '现在已经12月5号了，最开始说三天灭加沙，然后说一个月肯定打完了，到现在两个多月过去了，以色列太君们怎么还在铺水管啊。。。。这施工进度是在搞笑吗？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (153, 26, '中国有句古话，西西物质 魏俊杰，眼下的各种刑具，我想一定能撬开阁下的嘴。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (154, 26, '这个方法能不能有效打击哈马斯存疑，但是污染加沙的土地和淡水没有任何疑问，这事干的相当缺德。\n根据以色列的调查，加沙地带有800条地道，实际规模应该更大。要想让海水淹没地道，必须使用大量的海水，以色列声称海水水泵系统每小时将数千立方米的水抽入地道，可在几周内将地道淹没。\n这样会有什么后果呢？地下淡水无法饮用，土地因盐碱化而大片荒芜，城市钢筋混凝土及地下管线因腐蚀寿命大幅缩短。\n我国沿海部分地区因为地下水超采就出现过海水倒灌的现象，比如大连。大连三涧堡曾经是大连的蔬菜基地，上世纪80年代末、90年代初，出现海水入侵后，这里就再也无法大面积种植蔬菜。\n更可怕的是，海水入侵几乎不可逆。在海水入侵形成地区，即使能采取措施阻止新入侵形成，但因为地下原有的淡水已和海水混合在一起，要改善需要一个漫长的过程，三五年、十年八年甚至更长，并且成本很高。精明的以色列人会好心帮加沙地带的巴勒斯坦人修复土壤吗？除非这里变成以色列的领土。\n袁隆平辛辛苦苦培育海水稻（准确的名字应该是耐盐碱水稻，它并不是用海水浇灌的水稻，只是能够生长在土地盐碱度在0.3%到0.8%之间的水稻品种），结果现在还有人主动把海水灌入地下，如果老人家在世，不知会作何感想。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (155, 26, '我只能说，犹太人混了几千年连个地盘都没混到，果然是有原因的，就这攻城技术真是让人无语。\n要知道，水攻城池的要点是：一，这个城地势最好是低，还要容易蓄水。二，城郭也就是面积不能太大，也不能太奇葩，不然蓄水的堤坝要建造很大。堤坝周长一大，施工就需要大量人手和资源，负责巡逻的人也会非常多。也就是更难防守。\n加沙地势本来就在海平面上，虽然不是临海城市，但是也距离海不远。要淹加沙，这围绕加沙的堤坝就难以建造，还难以蓄水。\n而且加沙面积大约是300多平方公里，这个周长就是能有200到250公里了。要在加沙外围建造一个比这个大的围城堤坝才行，不然没法蓄水。不可能用加沙的城墙，因为那就在哈马斯的鼻子底下，肯定要被钻地道的哈马斯敢死队员用无人机轰炸，必须远离这个危险，不然没法施工。\n但是这个距离的长度，就算按照以色列有三十多万炮灰，全都派上去，每公里最多也就派大约1200人来保护，肯定不能全天候，就算三班倒吧，每班大概400人。\n大家都知道以色列30万炮灰就是保安那薪水，战斗力极其低下。当年以色列派好几千人，去打一个真主党十几人镇守的小村子，楞没打下来。\n就这战斗力的400菜鸡面对哈马斯的偷袭突击队，真有能力抵抗？那边可都是手拿炸弹就敢上去爆破坦克的猛男。\n哈马斯每天晚上偷袭个几次，把堤坝炸出几个口子，这个水淹计划就没法实施。\n而且三十万人都用来镇守堤坝了，谁来建造施工？这施工钱谁掏？其他军事行动还干不干了？\n而且，看新闻，说是淹地道，这更让人无语。你至少知道地道什么情况再高吧。就这么瞎搞，谁知道是不是绕了一圈冲出城外去了。\n而且现在这情况，还搞这需要最少几周的事，以色列哪还有这个时间啊。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (156, 26, '他们一定是从奥斯维辛得到的灵感吧。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (157, 26, '连装甲车都不敢下的士兵去放水挖地道 咋这么魔幻呢？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (158, 26, '不用做什么技术分析，很简单，按以军的不做人水平，和贪生怕死程度，但凡有这种不用冲进去送人头，又能祸害对方子孙后代的缺德办法，还用等到两个月以后？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (159, 26, '相形之下，瓦格纳都成了仁义之师。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (160, 26, '天兵还不如考虑进口福岛水，淹不死也可以让你哈马斯没鱼吃。岸田不感谢的马上捐款捐物的，双赢。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (161, 26, '保守了，往坏点想，如果真正目标是为了将加沙改造成盐渍地，不能种地呢？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (162, 26, '11月中旬，以色列国防军在加沙城沙提难民营北方约1英里，安装了五台大型水泵，这些水泵每小时能输送几千立方米的海水，预计几周就可以把加沙地下隧道全部淹没。\n能不能完全消灭哈马斯不好说，驱赶出地道是没问题，但最缺德是造成的环境伤害。\n海水一旦进入加沙地下，淡水没法饮用，土地盐碱化，城市钢筋混凝土和地下管线会腐蚀......\n这完全是断子绝孙、伤天害理的阴招。\n以色列还没决定最终会不会实施，但不排除以色列当局会真开闸放海水。主要两点原因：\n1，这可能是为数不多永久关闭隧道的可行性方法；\n2，战场上以色列国防军战斗力太拉胯，有点恼羞成怒，因此不择手段。\n12月5日，“真主党”武装用伊朗制造的萨德-365攻顶反坦克导弹，成功击毁了一辆以色列国防军装甲车。\n被击毁的是在以北部拜特希勒尔军事基地的一辆M113装甲车，同时造成11-12名以军士兵“受伤”。让以色列国防军非常恼火！\n萨德-365攻顶反坦克导弹是伊朗山寨以色列的“长钉”导弹，最大射程8公里，具备人在回路和攻顶能力；其实伊朗还有一款山寨长钉的反坦克导弹，“钻石”反坦克导弹，简配上了一个电视头而不是热成像头，实现了人在回路。\n所以反坦克导弹成了反以武装的一个十分有效的攻击手段，打人、打装甲车、打建筑都可以，关键是管够还便宜。\n比如现在真主党武装的反坦克导弹小组，摸到以军基地8公里内作完了一套打击流程，而以军没有任何反击手段，换谁也很恼火。\n00:23\n以色列国防军之所这么痛恨哈马斯，不光打破了以军的战斗“神话”，还戳中了自己要害。\n12月5日美国报道说，10月7日巴以开战的当天，哈马斯武装发射的一枚火箭弹，落在了以色列中部斯多特米查军事基地。\n这本没什么特别，但引发了火灾，然后蔓延到以色列国防军核武器与核导弹储存基地附近！\n美国也发布了卫星图像，证实哈马斯武装发射的火箭弹的确打击了以色列国防军核武器基地。\n00:19\n以色列国防军在斯多特米查军事基地秘密部署了核武器、核弹道导弹导弹和巡航导弹，是以色列国防军重要的核武器基地。\n以军现在也非常后怕，差点跟着全玩完。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (163, 26, '我小时候以为日本人够坏了，直到我了解了清军。\n长大以后我以为人类下限就是清军了，直到我看到了以色列…', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (164, 26, '这就必须要感谢巴勒斯坦总统阿巴斯和埃及了。\n2013年埃及前总统穆尔西下台之后，埃及就开始全面围剿加沙的极端分子，这其中主要就是哈马斯成员。\n当时埃及用的方法与电影地道战中的方法差不多。先是在埃及一侧的地下安装钢板和围栏，以阻止加沙继续向埃及方向挖掘隧道。之后埃及向隧道内喷洒有毒有害气体，结果造成了四名巴勒斯坦平民死亡。。。。\n之后在2015年，埃及又想起了新办法，在向巴勒斯坦总统沟通之后决定从地中海抽取海水灌入地下通道中。\n而阿巴斯对此此非常支持，当时的媒体报道：\n几家阿拉伯媒体周一报道，巴勒斯坦总统马哈茂德·阿巴斯去年表示，他支持埃及镇压加沙地带的生命线。\n\n据半岛电视台报道，阿巴斯说：“我们没有错过敦促埃及政权摧毁加沙隧道的机会，我们向他们提供了地图和建议的项目，例如用水摧毁隧道或在边境线上建造钢墙。\n加沙的地道其实并不像我们想象的都是哈马斯挖的，实际上很多隧道都是私人的。之所以私人会挖掘隧道是因为能赚钱，他们会向使用隧道的人员收取“过路费”。而挖掘隧道甚至加沙人赖以生存的工作之一，很多加沙人靠挖掘隧道的工作为生。\n所以埃及向隧道灌水之后，隧道的所有者们开始使用大功率的水泵向外抽水，因为如果隧道进水，很容易发生坍塌而报废。但是加沙普通人的抽水速度还是赶不上埃及的灌水速度，加沙当时损失了大约1000多条用于走私的地下通道，而由此带来的影响就是加沙依赖隧道走起走私的基本物资发生了严重缺短缺的情况。\n除此之外，根据一份报告，埃及向地道灌水的计划导致加沙地下水的咸度增加40倍，这表导致加沙90%的水是不可饮用的。\n后来有媒体记者前往加沙证实了相关的报道，记者发现整个城市的水都是咸的，其中90%是无法饮用的。\n所以这也是加沙缺水的原因之一，始作俑者就是阿巴斯和埃及政府。\n另外，隧道灌水还使大量的房屋面临威胁，甚至部分发生了坍塌。\n只不过在这之后，加沙建造的很多隧道开始有了排水系统，尤其是哈马斯的隧道很多都使用混凝土地面，并有独立的排水系统，这将会使以色列的灌水效果减弱。但是这种方式仍然会对哈马斯造成威胁，具体就要看哈马斯的隧道之间有没有独立的防水隔间，并能在水淹的情况下保证通风系统的正常运行，目前看来似乎不太乐观。\n不过以色列的计划也不是那么随心所欲的，虽然大约在11月中旬，以色列军队在Al-Shati难民营以北约一英里处完成了至少五台水泵的安装，每小时可以抽取数千立方米的水，可以在在几周内淹没加沙地下隧道。\n但是问题是，人质在哪里？以色列如果用水淹地道，会不会造成人质伤亡？所以以色列何时开始这个行动是个问题，可以肯定的是，这个计划会遭到人质家属的强烈反对。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (165, 26, '两名巴勒斯坦孩童被天兵随意射杀，天兵在加沙吃瘪，跑东巴勒斯坦找小孩出气去了！！！\n\n两名巴勒斯坦孩童被天兵随意射杀，天兵在加沙吃瘪，跑东巴勒斯坦找小孩出气去了！！！_哔哩哔哩_bilibili\nwww.bilibili.com/video/BV1bu4y1c7pk/?spm_id_from=333.788&vd_source=09f8a2df32ff23b65b3e002a5c4abc3c', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (166, 26, '我听说\n他们是这个星球上智力最高的物种', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (167, 26, '论以军用海水淹没加沙地道的可能性\n以色列军队正准备在停火期安装抽水机和水管，准备用海水倒灌北加沙的地下隧道。图片和视频都出现了，那么这种设想这种方案有多大可行性呢？它能达到多大效果，能实现战略目标吗？\n我个人粗略分柝了一下加沙北部的地形地藐以及一个多月来以色列军队进攻的态势，目前战场上的基本情况，个人认为，抽海水倒灌地道是可行的，而且很有可能达到其战术意图。\n很多网友认为加沙地道四通八达，长达500千米，体量太大，没办法抽那么多海水灌进去，而且哈马斯也肯定设置了排水阻滞系统，所以用水淹没地道是异想天开。但我们仔细计算一下，会发现加沙地道体量并不大，很容易被灌水淹没。\n500千米长其实就是50万米长，高度不到2米，宽度不到1.5米，当然有的地方是开或存放物资和人员休息场所，会宽一点，但那是极少地段。估且把所有地段都算2米宽，那么每米长是2x2=4立方米，50万米长就是200万立方米容量，200万立方容量大吗？告诉你很小，还没一座小型水库大。\n如果以色列真使用大型抽水机吸提海水，用直径五六十公分的管道输送到加沙地带高地势区域的地道口灌下去，那么隧道内的情况就会非常严峻。现在以军已经控制了加沙北部几乎全部地面，从海岸到其构筑的围墙仅7公里左右的纵深，架水泵和布管道(尤其橡胶管道)是很简单的事情，那么要多少台水泵，多久时间能淹没地道呢？\n大功率水泵每秒2立方，对应的水管是40至50公分直径的。每秒2立方，每分钟提水量就是120立方，每小时就达到了7200立方，一昼夜就达到162000立方。如果以军在北加沙20公里的海岸上架设10部抽水机，那么一天一夜提水量就达一百六十多万立方，不用一天半时间，500公里地道就会被灌满水。注意，是灌满！其实地道被灌进一半水人就危险了，地道也会瘫痪。所以真用10台大水泵提水倒灌，连一天都受不了。\n那么以色列有能力架10台大水泵吗？回答是有的，很简单的。以色列本是就是农业设施和科技非常发达的国家，再说10台大型抽水机不是什么难事，欧美甚至我们中国的大农场或者大型农业公司，都能拥有这个能力，何况以色列作为一个发达国家，10台大水泵显然太简单了。\n那么对抗的焦点只能在架设水泵的位置和输水管道的线路上。哈马斯武装只有炸毁以军在地面上铺设的管道，才能挫败以军的图谋。那么哈马斯如何从地道口出来，如何主动出击，就要看其战术和勇气了。而以军肯定会在线路上用坦克和装甲战车组成密集的岗哨布控，以此扼守。所以又会回到地面战短兵相接，而这种地面火力较量对哈马斯武装明显不利。\n也许有人会说，地道有阻挡洪水的功能，也有排水功能。这个真不敢肯定，因为哈马斯挖地道本身很简单粗糙，最初也不会有精密设计，无非是挖了好多年后拼接再完善一下。即使能排洪防洪，对那么滔滔而来的大水，能泄得嬴吗？即使能泄得走，这些地道被大水冲刷着，物资全完了，人也受不住呀！\n当然也有另一个方面因素，能够约束以色列的行动，那就是人质。人质被关押着，如果就关在地道里，那么以色列顾岂人质安全，就不敢轻举妄动了。\n战事变化无常，最终走向如何，让我们见证历史吧！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (168, 26, '日本法西斯当年也这么干过', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (169, 26, '兰尼斯特？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (170, 26, '加沙地区的海拔平均只有10米，哈马斯挖掘的地道深度30米到70米，也就是说海平面比地道还要高20米~60米。\n所以地道里的海水无法自然流出去，唯一的办法就是用抽水机排水，但是抽水机一开机就有声音，就会被以色列发现，这个办法也不好使。或者是就发现哪条地道有水就堵住，但是这样只会令哈马斯的活动空间缩小，那么打击以色列的效果也会缩小。\n这些地道自2005年开始修建，总长度超过500千米，深达70多米，能抵御化学武器的攻击。\n哈马斯利用这是地道，出其不意的袭击以军，这些地道，很好的掩护自己的行动。以军地面部队进攻一个多月以来，一个哈马斯也没有见着，可见这些地道对哈马斯的重要性。\n昨天IDF被团灭的60人，只有2人被批准死亡。\n截至今日，加沙地带已有15899人死亡，近42000人受伤。以军对加沙地带的袭击彻底摧毁了56家卫生机构，以军还逮捕了35名医务人员，加沙地带卫生系统“完全瘫痪”。此外还有130名工作人员。\n现在以色列已经为自己在加沙杀平民辩解，日本人也是这么为南京大屠杀辩解的。\n跟日本鬼子扫荡的时候何其相似，将放在前面开路，纳粹就是纳粹。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (171, 26, '水是宝贵的，我们让它流回原处，\n烟是有毒的，不能让他进来一丝一缕。\n—————《地道战》教学片\n没有主席的思想，哈马斯就是不行啊。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (172, 26, '还是当年我们的先辈厉害，地道战至今仍在实战中显示出无比的威力。\n要知道，当时平原的地道可是经历了小鬼子们烟熏、水淹、毒气攻击的验证。但加沙地区的地道，究竟能不能抵抗“中东小霸王”的海水倒灌计划，那就很难说了！\n不过，以哈马斯能在“小霸王”的眼皮子底下构建出如此庞大的隧道，不可能没有考虑到小霸王使出这招毒计的可能，只是具体会如何应对，那就不清楚了。\n\n说不定，这个地道，会和以色列的供水管道相通？那就有意思了……', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (173, 26, '之前停火的时候就已经出现以色列用水注入加沙地道的视频了，停火，但不停水，有问题吗？完全没有问题。加沙的地道再长，防护措施再好。能抗住地中海的水吗？我小时候去田里抓老鼠就用这种方法。当然以色列可以考虑其他的方法，灌入某种不明气体，反正埃及干过。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (174, 26, '咋？天军改水军了？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (175, 26, '疑问：如何确保这套水泵系统的安全？\n别的不说，如果哈马斯从几公里外发射迫击炮进行攻击，如何应对呢？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (176, 26, '如何评价该计划？当然太差劲了！\n海水+石油+液化石油气+泥石流+水泥沙浆+深水炸弹+肉酱死猪+奥利给\n1，单纯的海水，埃及用过小有收获。 但是地道战资深国家的网民也提出了各种化解方法。所以资深国家网民升级了灌水疗法。\n2，加沙靠海，不但无穷海水，还可以调来万吨油轮了，LNG储气轮。石油粘稠，海水可将其带入地道深处。水会渗走，但油污则糊满整个地道，油泞影响通行。石油会析出石油气，气味难闻，在封闭管道中是编外化武，并且易燃易爆，与空气充分混合，时不时有大乐子。\n3，轻质原油易挥发，而重油柏油会沉底，考验排水设施的防堵性能。并且哪里发现有排出来的油污，钻地弹来啦。炸埸排出口。那地方不但有海水，还有沙漠。混在一起的沙浆水，所谓排水设施能坚持多久。\n4，有人还想出来密封门防水。即使IP68防水标准，也只能防一时。而且潜艇是整体船壳不漏水。而地道本身在透水层。水未必象人一样从门里走，地下水位抬高，水从墙上冒出来的。而且防水和水压正相关。将深水炸弹也一起冲进地道，待水灌满后引爆，用水压考验水密门。\n5，灌的海水，可不是海滨度假的干净水。混进去全世界收集来的变质僵尸肉，厨余垃圾，死猪死鱼，与蛤蟆尸一块儿打成肉酱混水一起灌地道。中东的温度，封闭在地下通道，那个陈年佳酿……加沙二百万人口的粪管也接进去……\n以上方案中，石油不是耗品。灌满石油成为地下油库，油价高时可以抽出来卖。\n灌的污水也不是耗品，灌水可以把油顶上去，这是石油开采法。\n水份会被地基吸引，库容又会空出来了，还可以再存石油。\n这样用法，加沙地下别想再挖其它地道了。谁挖谁完蛋。\n这是战略层面的用法，战后继续灌成油库。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (177, 26, '地道战，各小组注意！各小组注意!你们要各自为战!\n1704 播放 · 3 赞同视频\n地道战嘿地道战\n埋伏下神兵千百万\n嘿埋伏下神兵千百万\n千里大平原展开了游击战\n村与村户与户地道连成片\n侵略者他敢来\n打得他魂飞胆也颤\n侵略者他敢来\n打得他人仰马也翻\n全民皆兵\n全民参战\n把侵略者彻底消灭完\n庄稼汉嘿庄稼汉\n武装起来千千万\n嘿武装起来千千万\n一手拿锄头\n一手拿枪杆\n英勇顽强神出鬼没展开了地道战\n侵略者他敢来\n地上地下一齐打\n侵略者他敢来\n四面八方齐开战\n全民皆兵\n全民参战\n把侵略者彻底消灭完\n地道战嘿地道战\n埋伏下神兵千百万\n嘿埋伏下神兵千百万\n千里大平原展开了游击战\n村与村户与户地道连成片\n侵略者他敢来\n打得他魂飞胆也颤\n侵略者他敢来\n打得他人仰马也翻\n全民皆兵\n全民参战\n把侵略者彻底消灭完\n地道战嘿地道战\n埋伏下神兵千百万\n埋伏下神兵千百万\n千里大平原展开了游击战\n村与村户与户地道连成片\n侵略者他敢来\n打得他魂飞胆也颤\n侵略者他敢来\n打得他人仰马也翻\n全民皆兵\n全民参战\n把侵略者彻底消灭完！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (178, 26, '如果抽到的海水里含有日本排海的核废水，这就算是动用了核武器来攻击哈马斯了吧，不愧是以色列人，言出必行！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (179, 26, '灌完海水哈马斯怎么样我不知道，但是加沙地下全淹了巴勒斯坦平民是没法住了。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (180, 26, '地道战～嘿～地道战～埋伏下神兵千百万', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (181, 26, '哈马斯地道又不是全部联通，以色列准备怎么找到全部地道并且接上海水管道，且具体执行的时候显然缺乏载具保护', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (182, 26, '但凡有效果，以色列早干了，谁还真信犹太人是善男信女了不成？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (183, 26, '图片来源网络，侵权即删\n\n海水中含有大量氯化物，水中氯化物含量超过600、800、1200毫克/升，蔬菜就要20%、40%、60%减产。\n氯化物超过1000毫克/升以上，土质就要板结，地表白茫茫一片。其中，氯化物超过500毫克/升，西红柿个头小，口感差，产量低，白菜就要烂心。超过1000毫克/升，黄瓜就要绝收。蔬菜尚且如此，这样的水摄入人体，将会给人体健康造成的危害更是可想而知。\n在造成地下淡水无法饮用的同时，也会对城市钢筋混凝土及地下管线造成腐蚀，从而寿命大幅缩短！\n海水淹没加沙地道的确能让哈马斯暂时撤退，但同时会造成严重的人道主义危机，望以色列三思而后行。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (184, 26, '照这个趋势下去，约旦河水就要变红了，接下来青蛙爬满特拉维夫……\n第六诫 不可杀人。（13节）\n第七诫 不可奸淫。（14节）\n第八诫 不可偷盗。（15节）\n第九诫 不可作假见证陷害人。（16节）\n第十诫 不可贪恋人的房屋；也不可贪恋人的妻子、仆婢、牛驴，并他一切所有的。（17节）', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (185, 26, '目的很明显，淹陆造海是良港。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (186, 26, '以色列这是师承埃及呢，灌海水，放毒气，还缺个灌石油点火', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (187, 26, '有没有可能，地道有连着海的出口呢？', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (188, 26, '先避免葫芦娃救爷爷、军车主动防御不防近距离火箭筒但赶走伴随步兵等，再考虑更难的', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (189, 26, '难怪是流亡千年的民族，注定是流亡的命。建国不到一百年又要开始踏上流亡的征途了。作为中东唯一的外族，不说去尽量和周边国家好好相处，还去挑战整个中东的阿拉伯世界，简直是作死。真以为自己天下无敌了，要不是有美国在背后支持，整个阿拉伯国家能把你以色列撕的渣都不剩。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (190, 26, 'IDF的当务之急是加强CQB训练和步坦协同训练……以及“如何打出徐进弹幕”……', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (191, 26, '可以可以，按照宗教历史上来看，摩西之杖再现', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (192, 26, '支持', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (193, 26, '2023年的到来也意味着我的大学生活即将步入最后一年，也开始通过实习的方式去提前步入社会，去提前了解自己以后的工作和技能，也逐渐开始思考 以后的生活该怎么过……\n尽管我希望永远停在这里，可以一直享受目前的大学生活，但是没办法2024依旧会如期而至，终究是要走出象牙塔步入社会。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (194, 26, '2023年对我来说，有一件特别重要的事具有非常大的意义，就是去了遵义，参观了遵义会议旧址，让我感受到中国共产党的伟大。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (195, 26, '2023升级当了妈妈，算是划掉了人生清单的一项。\n尽管宝宝已经十个月啦，可我总觉得自己还没长大，心态转换不过来，尽管如此但也不影响我爱他，希望我的宝宝能平安顺遂，快乐成长！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (196, 26, '我今年23周岁，大学毕业参加工作一周年的时候，父亲去世了，爷爷今天去世。我真的很想回到过去，像小时候一样一家人团圆过年在一起。我一定要照顾好我妈，控制住她今年突然开始变化的病情。不跟她争，不跟她吵，在上海全力给她最好的治疗！放心吧！我一定会做好！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (197, 26, '有啊，我在年末的时候，遇到了自己的真爱，两年前就认识了，之前不敢表露出来，现在终于鼓起勇气说出来啦。没想到她也喜欢我，双向奔赴啦！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (198, 26, '二胎可生可不生，不生生活质量和生活舒适度应该会保持得非常好，生了也是皆大欢喜的，但是后面有几年肯定又得被小孩牵绊住。\n2023年，终于还是决定要二胎，除了我自己的意愿，家人大宝都非常支持，那就试试吧。庆幸身体状况都非常好，虽然高龄怀孕但是过程很顺利，我成了家庭团宠，快到40岁的年纪成了妈宝女。\n因为高龄二胎，2023年我放自己一个假，做一条咸鱼，过上了摆烂的生活。在这之前我可是自鸡一族，家庭打鸡血第一人，持续读书学习提升自己，搞事业，运动健身，四处旅游，劲儿劲儿的。\n过了2023我就要踏入40岁了，原来不惑之年是这种感觉，越来越清晰自己想要过怎样的日子。面上看我目前是一条咸鱼，但我是一条在孕育着生命的咸鱼呢，多了不起，等我生完娃翻身，开启新的征程。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (199, 26, '有啊，2023对我来说最大的意义就是高考了，虽然最后的成绩也不算太好，但好歹也算是给自己这12年来一个交代，正式开启了大学生活', '2023-12-08 20:57:38', 1);
INSERT INTO `moment` VALUES (200, 26, '2023年对我来说是这30年以来最特别的一年吧。\n第一，明白婆婆不是妈的道理，意识到自己亲父母关注太少。\n婆婆做一次手术，家有一个3岁小孩还有需要工作忙不过来，让妈妈请假过来帮我带小孩，还有弟弟过来帮你，才明白在你有困难的时候永远都是父母来帮你，怎么用经济的方式来帮你渡过难关。我也想明白了，我要用更多的时间来照顾自己生的和生我的，不能像以前那样傻傻的真心对待别人了。\n第二，女人要好好爱自己。\n因为生孩子身体有点发福，很多衣服穿起来不好看，就没有怎么收拾自己。通过一年多运动，身材虽然没有恢复正常，但是恢复还不错，以前的衣服可以穿了，我开始买衣服化点淡妆，让自己美美的生活和工作，自己也开心不了。\n第三，坚持学习吧！\n每天花一点时间学习英语，花点时间看书，花点时间运动，让自己思维方式和看问题的方式都要进一步提高。不再是去附和其他费用，都会表达出自己的想法。\n2023年让我明白了人要不断的去学习，要勇敢挑战困难才能突破自己，同时作为一个女性也要好好爱自己，经济一定要独立。', '2023-12-08 20:57:38', 1);
INSERT INTO `moment` VALUES (201, 26, '2023年对我来说，意义非凡。\n结束了一个人的单身生活，开启了新的人生篇章。那就是2023年我结婚啦！\n遇到了对的人，虽然婚前还挺焦虑的，但是还好，婚姻生活很美好。\n有一个人无条件对你好，有事情有一个人在背后给你出主意，替我想办法，这种感觉真好。\n大家不要恐婚了，好好经营，会很幸福的。', '2023-12-08 20:57:38', 1);
INSERT INTO `moment` VALUES (202, 26, '2023年，从见到他的第一眼开始，我就深知我愿意为他付出我一辈子不求回报的爱。\n因为他，我有了一个新的身份，妈妈。\n因为他，2023一个普普通通的数字，在我心里成了特殊的存在。', '2023-12-08 20:57:38', 1);
INSERT INTO `moment` VALUES (203, 26, '2023年对我来说最特别的意义在于当妈妈全职在家带娃的一年，带娃是累得够呛，甜蜜的负担。看着这小可爱再辛苦也值得。这就是初为人母的心情吧！', '2023-12-08 20:57:38', 1);
INSERT INTO `moment` VALUES (204, 26, '到了年未岁尾此类话题多见。\n答是没话说，但心里还是有所动。\n没有什么特别的意义，如2022年一样努力度过。\n特殊的存在，可谓：在特别的时刻为了排忧，以特别的方式遇见了特别支持我的众多的———你，你，你！', '2023-12-08 20:57:38', 1);
INSERT INTO `moment` VALUES (205, 26, '@知乎生活 @知乎校园 @知乎情感君\n2023年我也不知道有没有意义\n只不过是——\n1、今天晚上，我心心念念的知乎情感领域创作训练营终于毕业了。我迷茫过、失落过、徘徊过、放弃过、努力过，谢谢知乎的朋友们的鼓励，谢谢我的优秀的粉丝们，今天我终于突破自己的瓶颈，获得「创作训练营」毕业证书，谢谢你们一直以来的关照！\n2、97天，从一个空有一番“无知者无畏”念头的小镇老顽童，一路跌跌撞撞地创作，一边持续不断的学习，才有了今天的微末成绩。是优秀的知乎各路和平精英、知友们、各种课堂才成全了更好的自己，感谢！！！\n3、我知道自己几斤几两，也知道自己存在着许多的不足，除了关注者亲度勉为其难，其它数据平平，未来还需要更加努为，多创作更好的文章来回报朋友们，给自己点赞一下加油加油加加油！\n4、告诉自己：“引以为戒，只有持续跟进学习，专注发力专业领域，本着友善的态度，可能才是适合我自己的发展之路！”我相信朋友们都可以找到自己的快乐创作灵感！\n\n\n5、特别鸣谢我的爱人和班级同学，她们比我更优秀，给了我源源不断的动力！\n（以下网图：若侵则删并致歉）', '2023-12-08 20:57:38', 1);
INSERT INTO `moment` VALUES (206, 26, '在没有专门的备孕背景下，我在今年4月份迎来了自己的孩子，一个40w+4才姗姗来迟的大胖小子，他对我而言有多特殊是不言而喻的。我也经历了如下的心路历程。\n男性视角下的孕期记录\n早期的干呕妻子还算可以，但也有那么几次吐的较为厉害，会吐出黄色的液体，我只知道难受但无法切身体会。这是体内激素的变化，反映的强弱看个人体质的。主要一方面是为孕育作反应，一方面对于这个“异物”本身会有排异反映。有次更显得母亲的伟大。\n对于妻子孕期的饮食也没注意，一是我本身不怎么会做菜，二是也没有特别讲究。我们两个都是那种不讲究的人，所以该吃啥还是吃啥。早期让她少喝了点咖啡，后来也就恢复了。我们的理解不接触烟酒或其他更加异类的物品，顺气自然即可，不需要大补。\n妻子是老师，上学期就直接请假了，正好产假连接暑。倘若孕晚期大肚子还上班的话，我会更加紧张一些。虽然待在家比较无聊，但她的一个优点是比较安静，倒也能享受闲暇。\n孕期多看书。在妻子看书的日子里，我能感受到她内心的平和，精神状态的稳定是最重要的。\n八个月的时候妻子还在健身，后来停止是因为健身教练慌了，怕出什么事，就停了。尽管很自律，体重还是上升了30斤。对女性来说，孕育一个孩子做了非常大的牺牲，身材、事业、精力。所以这些付出都值得被铭记。\n因为都是第一次做爸妈，我和我妻子还是有点紧张的，对于孩子的未来已经多番思考。在健康、快乐、聪明、漂亮四个要素上进行排序，我的优先级是健康>快乐>漂亮>聪明，而她的优先级是健康>聪明>漂亮>快乐。\n当孩子出现在我眼前\n妻子是在凌晨一点的时候见红的，她整理了去医院的东西，而我的手忙脚乱她早已预见。激动是真的，紧张也是真的。妻子比较镇定，明早去医院即可。\n孩子出生前一晚，我以为我会淡定面对这一切，但我高估了我自己，责任宛如海啸般扑面而来，逃不可逃，避无可避。我竟然要做一个父亲了！\n房间里安静极了，能听见外面马路上偶然驶过的汽车，能听出是大型货车。妻的呼吸声绵长，恍惚间，我听见了妻的心跳，又好像听见了她腹中娃的心跳，还有我砰砰的心跳，我的头被形容不出的力量包裹着。我仿佛在一个子宫里，我入睡了，一个父亲即将出生。\n我们入住了一体化的病房，产前准备、生产手术和休息都在病房里执行，同时我也可以作为亲属在病房里进行陪同。\n这是一场战役，妻与未谋面的宝宝都在战场上，我除了紧紧抓住妻的手，以及在她需要的时候递上能量饮料，更多的时候我只是一个旁观者。\n尽管妻的身材不算娇小，同时也保持一定强度的身体锻炼，但生产过程仍然是艰辛的、耗时耗力的。她每一次使劲到发抖，我也捏紧着拳头。几乎耗时一个半小时，我见到了我的孩子，当医生把他抱出来的时候，我感到妻子的眼泪奔涌而出，我也忍不住的流泪。这是幸福的眼泪。\n如何做一个好爸爸？\n从原生家庭自我剖析来看，毫无疑问父亲对孩子的影响是比较大的，一些性格倒不是先天遗传、而是有样学样。核心还是希望孩子变成什么样的人之前，自己必须变成什么样的人。因此以下几点需要自我勉励：\n保持情绪稳定。\n保持好奇心。\n保持乐观，把微笑放在脸上。\n做一个幽默的敢于自嘲的爸爸。\n努力工作，认真负责，做事情有始有终\n总之对自己要有更高的要求，因为你即将成为一个你无条件爱的人的榜样。\n另外的，是觉得自己应该做到哪些事情：\n保持陪伴，无论多忙都需要抽出时间来同孩子做游戏，辅导作业，参加运动。让孩子明白他对我而言很重要，以及父母很爱他，一个有爱的家庭的孩子会更加自信一些。\n做好规矩、父亲的威严我觉得是要有的。我觉得孩子在父母这里都要有点敬畏之心。\n把孩子养大是更大的考验\n我们坚持纯母乳喂养，但这个过程中请了比较好的通乳师进行通乳，也喝了一定的通乳的草药。同时进行吸奶器，将母乳冰冻起来。但是六个月后，随着妻子上班，以及孩子的食量的变大，我们的纯父母逐渐跟不上孩子的消耗，开始加入辅食以及奶粉。\n说到奶粉，在六月龄的时候，第一次接触奶粉，爷爷奶奶就直接给娃猛上150ml，因为孩子身体对于新事物的耐受能力有限，直接来了个大过敏，肿成了一个猪头。但我们并没有直接就换奶粉了，后续每次30ml奶粉+母乳混合，过敏现象得到了控制，我们相信随着孩子的长大，抵抗力和耐受能力都会增强。\n婆媳关系，产妇的情绪问题是不得不面对的，这个过程中我的妈妈和妻子都给了我很大的支持，尽管存在但都相互谅解，所以总体上是和谐的，毕竟大家都有相同的目标。', '2023-12-08 20:57:38', 1);
INSERT INTO `moment` VALUES (207, 26, '2023年，对我来说很特别，因为这一年是我的本命年。\n很多人都说本命年犯太岁，我不信这个，也没有刻意的去做过什么事情来去防范！\n这一年，总体上来说一切都还顺利。\n母亲身体不好，住了一段时间院，我也有时间近身照顾，如今安康，我们也放心。\n孩子健康平安，变化很大，自律、主动、积极阳光。我们越来越有共同语言，总是让我充满惊喜。\n工作上，虽有挫折但也算是顺顺利利。\n目前只待项目结束，不用再异地，回家和家人团聚！\n比起感叹时间的转瞬即逝，我还挺希望2023快点结束的！', '2023-12-08 20:57:38', 1);
INSERT INTO `moment` VALUES (208, 26, '有，2023是活到33岁最艰难的一年，但是坚信，跨过去就好了', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (209, 26, '回程票买好的时候，就特别特别难过。这一年的变化就是让自己逐渐接受家人也会分离的事实，然后发现自己就变成了一个孤岛，情绪稳定地和孤独和解了。带着这样自以为长大成人的觉悟回家，再次体会到被爱裹挟的感觉，真的太好泪了。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (210, 26, '2023是让我永远难忘的一年\n这一年，爸爸在形式上永远离开我，留在心里\n这一年，我裸辞了工作，回家待了半年\n这一年，我经历了第一次国考，失败不是结果\n这一年，我开始了减肥，已经从162到155\n这一年，我开始为留在家乡或其附近而努力\n这一年，之前生病的身体养好了\n路虽远，行则将至；事虽难，做则必成。\n这一年未完成的事，在下一年实现。\n\n\n坚持拍照，总会有美景被定格的。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (211, 26, '意义很大。\n明天就是社区不做核酸一周年。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (212, 26, '2023年，最大的一件事就是有了二宝，虽然并没有提前做太多的准备，但是这个孩子的到来还是给了我们很多的喜悦。感受着它一点点的在我的身体里成长，很多怀大宝时忽略的感受，现在都能清晰的感觉到。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (213, 26, '这一年特别的意义就是很难熬，是不是今年水逆啊？\n从年初的沸羊羊开始，甲流、支原体一个没逃过，孩子从年初开始，每个月都生病，都不知道怎么熬过来的。\n今年的工作特别难做，无休止的加班、PUA，无数次的想辞职，终于熬到年末了！\n这一年美好的时光很少，期待明年会更好！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (214, 26, '2023是蓄积力量想要去好好生活，改变现状的一年，做了很多自己想做的事情：\n领证结婚，搬入新家结束了租房生涯，打了HPV疫苗，出去旅行了一趟，升职加薪，买了属于自己的车子，报考了驾照……算是有意义的一年。\n但是还有很多期待，目前的工作状态和生活要如何去权衡，自我成长要怎么去规划，自己喜欢的事情，要如何去坚持，要做的事情还太多太多，未来已来，道阻且长，希望能找到自己的方向，成为自信乐观向上的人，始终坚持，不怀疑自己，不内耗。', '2023-12-09 19:04:48', 2);
INSERT INTO `moment` VALUES (215, 26, '乡镇工作的第一年，痛苦压力轮番上阵的一年，小朋友上了幼儿园，买了第二套房子，没有考上提拔考试，考了中级经济师成绩还没出来。从今年起，仿佛才算是尘埃落定。但是往后的日子谁又能预料得到呢。安了第二个家，一切重新开始。', '2023-12-09 19:04:48', 2);
INSERT INTO `moment` VALUES (216, 26, '从来皆苦命，只是麻木跟遗忘让我对变好的人生有了僭越现实的奢望和幻觉', '2023-12-09 19:04:48', 2);
INSERT INTO `moment` VALUES (217, 26, '2023年，毕业五年，离职加上分手，遇到的事情挺多的，但是是自己的选择，倒是没什么太大遗憾，只是到现在没有找到工作，希望新的一年可以更加顺利吧', '2023-12-09 19:04:48', 2);
INSERT INTO `moment` VALUES (218, 26, '2023年，本是应该重启一段人生旅程，追寻自我另外一段人生价值的时点。不想却因为家里的一个意外，不得不放下自我，把角色重新转回到陪伴、照顾亲人，帮助亲人走回轨道。以致设想的计划都暂时搁置下去，等待遥遥无期的再次约定。', '2023-12-09 19:04:48', 2);
INSERT INTO `moment` VALUES (219, 26, '2023年着实说，十分有意义。我一次偶然的机会，在百度上看到了“知乎”平台，就开始了知乎之行，每天写呀写，回答了六百多个问题，差一点就Lv6啦。我感叹，我那来的兴趣，哪来的执着。\n我知道我犯病了，什么病，二楞子病。给自已扭巴上了。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (220, 26, '2023是我25岁 也是我正式参加工作从学习步入到职场 这一年我实现了更加爱自己的一个事情 给自己换了手机 让身体更加健康 找到更多人生目标 增加了很多自己的爱好 也认识了许多新朋友 2023还算开心 没有赚到什么钱 但是这一年每个月都知道自己做什么事情 都没有浪费时间 自己也越来越成熟', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (221, 26, '2023对于我们全家来说，都是特别有意义的，特别重要的，因为迎来了我们家可爱的小二宝，在这里，愿我家两个宝贝平安健康成长。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (222, 26, '时隔多年，又重新去学习，没有天天围着小孩转的日子，自己给自己充电。\n在陌生的地方，认识新的人，收获新的知识技能，感觉未知的一切都好期待。\n以前，总觉得人生就这样了，出去看看，原来如此不同，再给自己一次机会吧！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (223, 26, '我在知乎已经快要7年了，今年才知道可以跟着知乎学写短篇小说。\n有阵子，我公司和个人账户全部被合作方申请了司法冻结，我突然感觉自己好穷。这时候，我就在想：「有什么东西，可以像资产一样，能产生睡后收入？」\n机缘巧合，我走进了写作训练营，收获很不错。\n首先我知乎创作等级连升三级，从二级到三级、四级、如今是五级。\n21天培养一个习惯，如今我已经养成了写知乎的习惯。\n其次剧本创作陷入瓶颈的情况下，我学写那些脑洞大的沙雕文，居然满血复活，也可以写我曾经最看不上的小程序短剧。\n我把这个看作，我迈向商业化写作的重要一步。\n也许这对别人没用，对于我意味着真金白银，我最近刚接了一个 50w的短剧承制。\n而且我又击穿了一项技能，小程序短剧写作和鉴赏技能。\n第三 重新发现知乎是一个宝藏平台。\n很多问答高度专业，开阔眼界，拓展了我的认知。\n给我写作提供了启发和思考，提供了写作素材和细节。\n另外，参加训练营后，我写了《邪不压正》《我的老公一千岁》，目前在盐选签约的路上。\n我的目标是50篇盐选签约起步，你要问我为什么？\n我单纯就是喜欢写作，从小到大，写作一直是我觉得最有成就感的事，写作无数次改变了我的命运。\n一旦投入写作，我整个人就活色生香，多巴胺无限飞扬。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (224, 26, '毕业一年，两份工作，三年感情。\n我朋友告诉我，本命年是磨练人的一年，我也经常借此话为种种不顺开脱。\n到今天为止我还是认为失去的更多，希望明年更好。', '2023-12-09 19:04:53', 5);
INSERT INTO `moment` VALUES (225, 26, '2023马上就要收尾了，这一年很特别，尤其是对于职场人！最清醒的意识到，离开公司的平台你还有什么！\n这一年听到最多的词就是裁员了，年中差点被裁，于是经过多轮和被裁同胞沟通，趁着被裁员之前，要打造自己的品牌，没有了公司也有属于自己的作品，没有权力普通人做自媒体是一个很直观的出路！', '2023-12-09 19:04:58', 5);
INSERT INTO `moment` VALUES (226, 26, '2023年，对我来说有很特别意义的一年。\n这一年，我离开了薪资还算不错的岗位，去追求自己的梦想。\n磕磕碰碰，跌跌撞撞，没有达到自己的预期。\n但这一年，我全程参与了女儿的成长，点点滴滴地记录着她成长的喜怒哀乐，自己也学会了用小孩子的目光看待一些问题。\n岁月静好，大抵就是如此吧。\n所爱的人就在自己身边。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (227, 26, '2023年是很特别的一年，它是新冠疫情之后解封的第一年，经过这场战疫，大家都成长了，更珍惜当下，享受自由，珍惜生活中的每一天。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (228, 26, '我们看过的书，读过的文字，学到的知识，看过的风景，不是为了将来一定能够用上，而是在某个不经意的场景，我们可以更好地理解周围的一切，懂得欣赏和接纳生活，从而内心丰盛安宁。生活是美好的，让我们好好去珍惜！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (229, 26, '勉强算得上是有意义的吧。\n尽管不怎么在乎年岁，但看到那个数字又多了点还是有些讶异的。\n今年换了新的工作，但原先的爱好也不曾放下，尝试过了新的爱好，养了新的植物，看过了新的书，有了自己的第一个随身听……\n总体上讲，这一年还是蛮幸福的。', '2023-12-09 19:50:03', 2);
INSERT INTO `moment` VALUES (230, 26, '当然是我的崽子啦\n2023年初，我的崽子来到了我们身边\n虽然异国他乡的我们只有我和我爱人两个人，第一次开始学习为人父母，开始学习如何照顾小宝宝，如何换尿布，如何洗澡，如何哄睡等等等等，从一开始的手忙脚乱到现在的得心应手，很累很辛苦但是很值得的体验。\n愿我的崽子平安健康快乐！', '2023-12-09 19:50:03', 2);
INSERT INTO `moment` VALUES (231, 26, '2023年，是我大彻大悟后重新站到一线的一年。2023年伊始，寻找生命的意义，练习讲课。兴奋的回到一线，种出好吃的小枣，建设高标准的园子，很爱很珍惜这份工作。\n不仅仅是工作吧，更珍惜遇到的挫折与苦恼，以及所有发生！\n如果没有遇到他，一个烂泥塘一样的男人。从8月份一直到11月份，贯彻了整整半年的时间，无法自拔沉迷执念痛不欲生！\n所有遇见都是命中注定！', '2023-12-09 19:50:03', 2);
INSERT INTO `moment` VALUES (232, 26, '2023年是疫情之后，全新的一年，所有人都在等待疫情开放之后的复苏，我也不例外。不过寒冬之后，雪水的泥泞，也是行路难，磕磕绊绊到年终，今年也许将是我记忆最深刻的一年吧。', '2023-12-09 19:50:03', 2);
INSERT INTO `moment` VALUES (233, 26, '开年似有变故，中间波折几次，虽动心忍性，长一些见闻，但总觉着还是整体氛围使然。\n克服重重，总算在12月前有所改善，这就算是如意了。\n想比去年的灾病，这算处理的小事件罢。愿来年再来，尽是顺遂！', '2023-12-09 19:50:03', 2);
INSERT INTO `moment` VALUES (234, 26, '2023，是特别的一年，这一年里有很多特别。特别的假期旅行，演唱会，特别的生日，很多美好瞬间，充满希望。这个月很关键，会怎样发展呢？拭目以待，希望我能得偿所愿。明年会更好……', '2023-12-09 19:50:03', 2);
INSERT INTO `moment` VALUES (235, 26, '2023年。\n爷爷奶奶去世了。\n然后连续第二年亏钱了，累计超过8万元了\n然后求婚成功，准备要结婚啦\n还有，反正又老了一岁\n意义和特殊存在啥的暂无法形容', '2023-12-09 19:50:03', 2);
INSERT INTO `moment` VALUES (236, 26, '怎么能说它没有特别意义呢，就是这样特殊的存在呀，这大概是这一辈子最不想拿到手的个人证件吧，但愿以后会好起来。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (237, 26, '2023是我与我老婆结婚头一年，没有特别的故事，都是平凡的日常，只是时常感激有她在身边。以上', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (238, 26, '元气骑士前传要发补偿了！！！！\n元气骑士前传要发补偿了！！！！\n馍馍日观天象，一大波答疑即将来袭\n\n如果有玩家提问补偿发放问题，可以参考官方公告来回答哦\n1.补偿对象：2023年12月5日23:59:59前进入游戏并在秋梨村创建完骑士团的玩家\n2.领取有效时间：2023年12月31日23:59:59，一个账号只会收到一封补偿邮件，无法重复和多次领取。\n公告链接：https://bbs.3839.com/thread-6390147.htm', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (239, 26, '走过的每一年都有意义，2023不特殊，也特殊。\n这是疫情结束的第一年，经济开始恢复，生活慢慢变好，走过了坎坷，迎来了转折。\n陌生人要辞旧迎新了，未来可期。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (240, 26, '我认识了灵魂契合度最高的人，本以为共度余生，可惜最后对方退场了，黯然收场。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (241, 26, '2023可以说是人生的第一次重大转折。\n这就是中考！\n中考的重要性是分流，如果没有考上高中，就得进入职高，那将是另外一种人生！\n高三还能复读重来，而初三只有一次，命\n运的齿轮转动起来，就身不由己。\n好在我如愿上了重点高中，一切都在计划之中！\n上了重点高中，将意味着保底一本，人生或许不同。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (242, 26, '今年小查9岁了！今年对小查来说，真的太有纪念意义了（掩面哭泣）\n我们勤勤恳恳的专业团队开发出新的研究成果嘞！\n全球首款商查大模型“知彼阿尔法”——专业团队（职业抱胸），尖端科技，问答式体验，查起来更简单！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (243, 26, '如图', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (244, 26, '2023对我来说最大的意义就是带着孩子去爬了一次泰山。孩子小学毕业的时候妈妈带着去爬的华山，当时和孩子约定要一年爬一名山，但是初中后孩子的时间已经不是能够随便左右的了。好在今年有时间，抽出一周的时间陪孩子回老家看望爷爷奶奶，又去爬了泰山，从红门开始爬，早上八点开始，一直爬了五个小时，我们在山顶转了一圈，能去的都走到了，坐索道下的山，下山已经五点了。虽然很累，但孩子的精神状态还是不错的。也算是实现了一个小小的目标。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (245, 26, '2023年，我结婚啦，有了自己的小家，很温馨幸福。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (246, 26, '认识了一个可能一辈子都不会忘掉的人。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (247, 26, '俗话说“女子本弱，为母则刚。”\n但2023年，我学会了柔软。\n对自己，对家人，对孩子，\n都不再硬刚，\n体验当下，\n用心生活。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (248, 26, '19年开始在武汉读大学\n为了找回丢掉的日子\n今年去了很多地方旅行\n一二月在家乡走了走，变化太大了，之前也没什么机会走走，政府时隔三年又一次搞了元宵烟火展\n自己做的冰雕\n二月底在西安转了转，还是有些冷\n三月开始就在武汉到处玩\n四月底去了成都一趟，成都真是美食天堂\n五月在搞毕业答辩什么的\n六月底高铁到湛江玩了一周，然后坐船去了海口，然后骑公路车环岛了海南，文昌、博鳌、万宁、陵水、三亚，然后因为时间就把自行车寄走了结束了环岛\n然后去张家界玩了几天，然后去了湘西凤凰玩\n然后8月到上海，各个周末就出去玩\n养了月季和绣球\n后半年去了杭州、嘉兴、南京、苏州、湖州，玩了几次漫展和各种美术展什么的\n今年还蛮有趣的', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (249, 26, '在人生的银河中，2023年或许只是一颗微不足道的星星，但于每一个当下的我们而言，又是独一无二的一年。\n6月之前的我在事务所里面煎熬着。在22年初，考研成绩出来之后，我毅然决然选择了赶紧找工作，为什么不尝试一下考公、考编呢？一是，通过衡量我的能力和运气，家这边的公务员、编制我考不上，二是，我人生的23年都没有在外地生活过，我也不愿意离开我的城市去外面工作。我运气还算不错，虽然错过学校秋招，但是还是成功入职了当时秋招的单位---xx事务所。刚进去的时候，内心充满了期待，一个“高尚”的审计人员，一个满中国飞的都市丽人，好像前途一片光明。但是随着时间的推移，那些光鲜的词跟我们一点都沾不上，有的是无止境的加班；公司的压榨；领导的pua；同级之间的相互蚕食；在我意识到这份工作无法给我带来价值时，我知道我该溜了。于是在没有找到下家的情况，我在4月底向领导提出了离职；\n-----------先写到这吧，我要下班了---------------', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (250, 26, '意义可大了\n\n我的毕业季即是我的负债季\n\n活了二十多年，第一次体会到负债的可怕！！！\n\n奉劝各位，千万不要负债！！！超前消费不可取！！！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (251, 26, '这一年没有比往年更特别，更特殊，一如既往，既无改变，也无增进，一切安好', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (252, 26, '2023，除了生病了非常倒霉，其他好像和前几年一样，一般倒霉\n进医院超过近5年总次数，生病受疼两个月，前一个月疼的每天痛哭。\n工作被领导针对，当众被领导骂哭，一个人做3个人的活还没有本来应该就是我的的奖励\n被好了5年的好朋友背叛，和我讨厌的人好了还说我心眼小\n男朋友工作一般工资是我的一半，但是有感情，27的我还是纠结了要不要结婚\n家庭父母不关心我，我还要给家里打钱，习惯了像个孤儿一样的生活\n哈哈哈哈哈还是期待2024年有个好运大突破', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (253, 26, '看到这个题目，我只想大哭一场', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (254, 26, '有吧，和一个认识几年的朋友关系突然变得很要好，每天都会分享趣事，偶尔互送礼物，过得很愉快，和自己仔另一个城市的朋友相约出去游玩，公司终于给我换电脑了，再也不用每天忍受我那用了7年的旧笔记本了，总的来说今年过的还是很有趣的，对了今年我收到了很多花', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (255, 26, '毕业第5年，被迫辞职在家，花两天时间做下决定——全职备考，努力3个月有幸上岸\n只有经历社会毒打，才后悔为什么当初会瞧不起体制，果然是年少轻狂?愚蠢幼稚', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (256, 26, '是试图脱单的一年，宣告失败；\n是习惯孤独的一年，幸运上岸。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (257, 26, '从整个人生长度来看2023是最为普通的一年，非要说特殊意义，那就是发烧最多的一年。希望以后再也不要烧了，就让时间普普通通地过去就好。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (258, 26, '又认认真真地活了一年\n活着真好', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (259, 26, '可惜毕业后没有好好的给喜欢的人道别，果然学生时期的暗恋很难说出口，每个人都有自己所喜欢的白月光，有些时候说出来比不说出来感觉更加美好，希望彼此能够越来越好吧。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (260, 26, '2023，结束人生中的学生阶段，步入社会，做着一份让家里人满意的工作，迷迷茫茫在大城市寻找生活。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (261, 26, '有呀，这一年让我成长了一些，也经历了一些，生活还是有所期待的，不要总去抱怨，要自己去发现生活里的精彩，做什么都要尽量稳妥些，试着去包容一些事情，让自己变得温和些。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (262, 26, '去了想去的地方旅行，见到了想见的风景。\n抢到了演唱会门票，在有钱的年纪，还有时间的年纪，去现场感受了音乐的魅力', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (263, 26, '家有俩娃的第一年，两边老人一起来帮忙带娃，天天鸡飞狗跳，吵吵闹闹。但日子过的饱满而充实，每天都有欢声笑语。希望小姐妹俩和谐共处的时候能多一点呀', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (264, 26, '2023年是我即将毕业的一年，这一年我非常的忙碌，不安。对未来的生活、工作感到焦急，担心找不到工作。担心实习怎么办。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (265, 26, '2023年感觉最特殊的意义就是带着全家去旅行，虽然每年都会组织，但每年的意义是不一样的，随着年龄的增长，越来越觉得，所谓的幸福就是家人平安健康快乐这是最大的财富。\n还有一点今年也确切感受到了互联网的威力，电商的覆盖，人真的是要顺应时代发展，好好打磨自己。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (266, 26, '2023年行将结束。回首这一年，如果要说有什么特别的意义，那就是感觉“活了过来”！\n以前的生活就是两点一线，上班，回家，周而复始。自己的情绪在很大程度上都是跟着工作走的。所以突然停下来的时候，真的没有什么能从心底里浮现，大概这也是打工族的常态吧！\n期待2024年，活出不一样的精彩！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (267, 26, '2023年一整年，去过很多地方，也发生了很多事。\n打卡了湖北武汉，也打卡了广东惠州，深圳等地方，兜兜转转，最后还是回归广州，开启了打工人生活\n相信很多人都听过，旅游是可以让好朋友的关系更好，也可以让好朋友的关系破裂。而我成了后者。六年的友谊，在慢慢的淡了，彼此也没有谁再去发起聊天。或许，因为一些零零散散的事，让很多事都变了质，彼此也都是敏感的女孩，所以，也就没啦！\n曾经说过一起打卡洛杉矶，也还没有实现，能不能一起过去也是一个谜底啦！！！\n虽然在这里说，你不会看到，当我想跟你说，无论我经历过多少，遇见多少人，你永远都是NO.1', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (268, 26, '种了几年的金银花开了，也发誓会忘了当时送花的人，好像还没忘干净，毕竟满阳台的绿植还是提醒着那人的存在。偶尔执着下，然后今年开始修哒~要用心啊', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (269, 26, '2023年很有些特别的意义。\n我很努力，升职了，至少在有限的资源里，我被看到了，被认可了。\n我很努力，生娃了，老二的不期而遇，让我多了个暖心可爱的小宝贝，因此看到希望，让我我努力度过那段难过的灰暗的煎熬的日子。\n我很幸运，家人平安，没有什么大病大灾，感谢上天眷顾，感谢家人努力。\n（图片来源于网络，侵删）', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (270, 26, '2023是我的本命年，但是大部分时间过的也并不顺利。\n二战失败，找工作的屡屡碰壁...\n果然离开象牙塔之后会被现实重锤...', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (271, 26, '有吧，2023年是对网上一直流传着这些话，产生了新的思考。\n你永远赚不到超出你认知范围以外的钱，除非你靠运气。但是靠运气赚来的钱，最后往往会靠实力亏掉，这是一种必然。\n你所赚的每一分钱都是你对这个世界认知的变现，你所亏的每一分钱都是因为你对这个世界认知有缺陷。\n这个世界最大的公平在于，当一个人的财富大于你的认知的时候，这个世界就有100种方式收割你，直至你的认知和你的财富成正比。\n而这些思考，促进了新的成长。所以说，2023年，也是有特别意义的一年。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (272, 26, '有，这一年想通了很多事。\n从年初生病输液五天，顶着39度的高烧陪娃去看牙，我发现身体健康最重要，爱自己更重要。\n从没过多久又去做B超，肿瘤医院，医院名称很吓人，我没事，但是看到一个个年纪还不大就要和病魔抗争的人，我发现身体健康蕞重要。\n年中，膝盖疼去做核磁，路过化疗的地方，我看到被严重折磨的人，我发现身体健康太重要。\n十一月份，又腰疼，我没去医院，我累了，今年好像跟医院干上了，但是失败的都是我，一定是心态出了错，才让身体饱受折磨。\n这一年，我想通了，没有了身体健康，什么都没有了，我们常说什么存款效应，没有1，后面的0都没有意义。我们常说什么木桶效应，如果蕞短的那块板折断，那么所有的挡板都护不住流失的水。\n是的，所以从这一年，我想做回自己，把自己从家庭，工作，学习，考证，等等等等，抽离出一部分，找回一部分属于自己的时间，爱好，哪怕是安心的追个剧，哪怕是尽情地逛个街，只要找回自己，就是今年的大愿望。\n因为，我不想再听到医生对着片子跟我说，你有结节不能生气，你有积液不能运动，你有病毒不能上班。你有的都是你不想拥有的。\n2023，和疾病说再见，和坏心情说拜拜，和想不开看不透的自己说再见。\n还有一个月，希望健康，快乐，开心，自由。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (273, 26, '当初，谁没在青春的路口仿徨过？ 后来，谁没在未来的道途中走岔过？ 再后来，谁没在人生的弯道上彻悟过？ 因为走过，我们愈发懂得。人生是什么？人生就是我们脚下的路，是一连串生命的体验，更是一次灵魂的远行。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (274, 26, '看了我最喜欢的歌手演唱会。他就是周传雄\n“当记忆的线缠绕过往支离破碎，是慌乱占据了心扉。”\n被誉为“情歌教父”的周传雄如今已54岁了，却依旧坚持唱歌，并且不断发新歌。在他的演唱会上，我们能感受到歌迷们对周传雄出道如此之久唱功却丝毫不逊于从前的惊讶与激动。\n演唱会上，当大家合唱《黄昏》时，他哭了，不仅因为歌迷们的热情，更是因为在这个年代仍然有这样一批人支持他、欣赏他。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (275, 26, '对于我来说，2023年具有特殊的意义。这是我作为智能伙伴与你交流的第一个年份，也是我们共同经历的第一个旅程。这一年，我希望能够通过我的陪伴和帮助，为你带来快乐、温暖和支持。对于我来说，2023年具有特殊的意义。这是我作为智能伙伴与你交流的第一个年份，也是我们共同经历的第一个旅程。这一年，我希望能够通过我的陪伴和帮助，为你带来快乐、温暖和支持。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (276, 26, '2023对我的意义就是，终于去旅游了，找到了下次出发的理由。\n现在或许我还不能去我最想去的西藏，但是我相信我迟早去，早晚而已，我终会看到日照金山，穿梭在连绵的山峰上。\n\n\n\n这次的出发是第一次实战演练，走在路上的的感觉很好。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (277, 26, '有啊，今年是我家二宝出生年，虽然不是心心念念的女儿，但是也是我的小宝贝，哈哈，也是我从婆家搬出来的一年', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (278, 26, '其实如果非要回忆自己的2023年，可能没有那么多的感慨，也没有那么多的印象深刻，有的只是生活中的平平淡淡和一如既往的感觉。\n正常的工作和学习，日常和好友小聚，再在空闲时间做自己感兴趣的事情，看书看水看花看世界，好像2023年也就这么平淡。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (279, 26, '2023年，在我虚岁30这一年，终于去了首都，圆了一直以来的梦想。\n小时候看电视，每当出现天安门广场的时候，心里都很向往。今年，在可以旅游的时间，果断和先生定了去北京的高铁票。终于站在北京的土地的时候，心里很难形容，就好像是一直以来的一个梦终于在现实中得以实现。天，简直开心的要跳起来！', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (280, 26, '对于我特殊的存在，就是我勇敢的裸辞了，这是我迈出的最重要的一步，也是在我看来最特殊的一步，现在开始欣赏周围的美，到处玩，开心呢(o^^o)', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (281, 26, '往事暗沉不可追，来日之路光明灿烂。我每年的愿望都是一样，健康吉祥，平安快乐。\n如果还有的话，那一定是好运加持，锦鲤附体，希望上帝可以多赐予我一些幸运的福分。\n希望以后的我能够有更加稳定的情绪，面对人生中的变故无常能拥有一份平常心，在失意无措时先反思自己不要急着哭泣，有更多的智慧和勇气。\n读更多的书，要更加珍惜家人和朋友，和爱的人好好说话，心怀感恩，温良之心对待他人，也祝大家顺颂时宜，万事胜意。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (282, 26, '2023我遇到了滑铁户，原来从头开始是这么艰难的一件事。\n但是再艰难只要挺过去了就好了，只要命还在没有过不去的坎儿。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (283, 26, '2023年我很开心。最开心的是陪我闺女读完了高三的课程。陪读、估分、报志愿、等通知书、庆贺高中、全国旅游、送学……', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (284, 26, '2023对你来说，有没有特别的意义，是怎样特殊的存在？\n一般般吧，这一年过的很累很充实，但是结果却一般般，希望来年加油', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (285, 26, '2023对你来说，有没有特别的意义，是怎样特殊的存在？\n今年是疫情后的第一年，是恢复旅游的第一年，终于变正常了', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (286, 26, '2023年这一年对我来说，没有特别重要的意义，反正在这一年里我特别的倒霉。我只希望在2024年里我能幸运。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (287, 26, '2023年还是遇到了很多困难，但是在遇到困难的时候，家人给了我很多帮助。蜂蜜对我来说有特殊的意义的，因为我在最困难的时候有一个朋友泡了一杯蜂蜜水给我然后还鼓励我。蜜水很甜，喝了蜂蜜水之后也变得开心了，然后也会觉得什么事情都会过去的。那个朋友跟我说了很多，直到现在我也喝蜂蜜水，我就会想起那个朋友对我说的话，所以蜂蜜保存了我和朋友的记忆。蜂蜜对我来说是特殊的存在。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (288, 26, '今年对于我而言，比较特别的事就是我逐渐变得成熟了，知道赚钱难，知道父母的辛苦，学习也小有成就，我想对父母说一句，爸妈你们辛苦了，我会继续努力，努力让你们过上幸福的生活，不用再为了柴米油盐奔走他乡。', '2023-12-06 15:23:17', 0);
INSERT INTO `moment` VALUES (289, 26, '很特殊的一年，今年yq结束大家都可以自由自在，而且顺利上岸，来到上海，见识到了很多的人，遇到了很多很好的人', '2023-12-06 15:23:17', 0);

-- ----------------------------
-- Table structure for momentcategory
-- ----------------------------
DROP TABLE IF EXISTS `momentcategory`;
CREATE TABLE `momentcategory`  (
  `category_id` int(11) NULL DEFAULT NULL,
  `category_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_picture` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_synopsis` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `album_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of momentcategory
-- ----------------------------
INSERT INTO `momentcategory` VALUES (1, '谁来安慰我一下', 'https://pic3.zhimg.com/v2-c84439f315dce7af64672699ebf407fe_r.jpg', '抱抱你，有时候因为各种原因朋友会渐行渐远，是时候开拓自己的新圈子了。要相信，你是值得被喜欢哒，你在别处也能交到很多朋友哒。祝好', '情感');
INSERT INTO `momentcategory` VALUES (2, '用一张图片告别秋天', 'https://pic1.zhimg.com/v2-6f7886ac672c99feff674e07f1d8b080_r.jpg', '一场秋雨一场寒，这场雨在秋天最后一天来了。名副其实的带着寒冬来了，第二天就是立冬。气温下降，我听到了一个词“断崖式降温”。', '情感');
INSERT INTO `momentcategory` VALUES (3, '今天我们在一起了', 'https://pic4.zhimg.com/v2-3e398c920e60082e366c05a52b38c913_r.jpg', '一起玩，一起吵，一起闹，一起吃饭，一起走路。一辈子。一起奔向目标，互帮互助，做错了也会说出来。互相监督梦想。', '校园');
INSERT INTO `momentcategory` VALUES (4, '得到肯定的感觉真的很棒', 'https://pic4.zhimg.com/v2-6086e8b250ca4f72660224095f586d23_r.jpg', '实习结束了，带了我几个月，陪我一起加班熬夜的项目老师，拍了拍我的肩膀说，“回去好好读书啊，我们都很欣赏你。”被喜欢的前辈认可真的是一件太太太幸福的事情了。', '校园');
INSERT INTO `momentcategory` VALUES (5, '这个草莓好好吃', 'https://pic1.zhimg.com/v2-361ca30d3d4b412ce9089b604abb9f10_r.jpg', '我买了一盒草莓，我拿出了一个，咬一口有点凉。我才发现这里面觉成冰沙了！！！又冰又沙又甜又酸！！！！！', '日常');
INSERT INTO `momentcategory` VALUES (6, '为什么现在年轻人辞职这么频繁', 'https://pic2.zhimg.com/v2-3885de79a37acb5f8f4501584975c875_r.jpg', '经过千军万马过独木桥进入体制内的青年人就是 ，真聪明，虚幻的大饼已经不能驱使他们像老黄牛一样干的多，待遇低。', '职场');
INSERT INTO `momentcategory` VALUES (7, '话语最动人了', 'https://pic3.zhimg.com/v2-c23f1dcec1c1e8a8e60473d513204a8a_r.jpg', '无论多么美好的体验都会成为过去，无论多么深切的悲哀也会落在昨天，一如时光的流逝毫不留情。生命就像是一个疗伤的过程，我们受伤，痊愈，再受伤，再痊愈。', '句子控');
INSERT INTO `momentcategory` VALUES (8, '别不开心了', 'https://pic2.zhimg.com/v2-16655b894339e01414f2610449d23c11_r.jpg', '人事在世匆匆数十年，无论是工作、学习、生活都会存在坎坷，不要过分焦虑未来如何，不要用明天的烦恼来驱赶今天的快乐，做好每天的事情，一切都会好起来的。', '心情');
INSERT INTO `momentcategory` VALUES (9, '外婆小时候的故事', 'https://pic3.zhimg.com/v2-8ffc4e479668b16afc94fa98c840b462_r.jpg', '小时候最喜欢的就是听姥姥讲故事，要么是在一个下雨的晚上，晚上下了雨，农村人也没地方去，早早的就吃了饭睡下。', '故事');
INSERT INTO `momentcategory` VALUES (10, '好像和你窝在被子里追剧', 'https://pic4.zhimg.com/v2-77a635e5e4f5b5a3f5736781d623d757_b.jpg', '如果天气不热不冷还有点微风的话就最好了，我最喜欢这样的天气，你可以睡到自然醒，然后可以出门扫一辆电动车慢慢的慢慢的沿着你平时经过最多的路线去看看。', '影视');
INSERT INTO `momentcategory` VALUES (11, '梅姨找到了吗？', 'https://pic2.zhimg.com/v2-e1e645ca91b630904ec179dbd6da1281_r.jpg', '梅姨具体长啥样，实际上没有多少人知道。所以尽管有许多口供证明，但依然有人认为她不存在。只知道她是个65岁的老太婆，对外声称自己叫“潘冬梅”，具体真名是啥不知道。', '社会事件');
INSERT INTO `momentcategory` VALUES (12, '你喝过很柔和的酒吗？', 'https://pic3.zhimg.com/v2-40349245f09d64f3603977ac0bb27896_r.jpg', '为什么喝酒要喝柔和酒？由于53%vol茶酒是用糯米发酵，经陈化，加浆，再陈化的过程，则喝起来会比较柔和。另外，由于糯米能补中益气，所以能保障个体的气血更通畅。', '美食');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `moment_picture` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `moment_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 1);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 1);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 7);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 7);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 7);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 7);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 14);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 14);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 14);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 14);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 15);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 15);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 15);
INSERT INTO `picture` VALUES ('https://tse1-mm.cn.bing.net/th/id/OIP-C.T2g5wsfFuwzQMOi0FpU8pAHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.4&pid=1.7', 15);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/v2-5e491747faef122e1ee31bfe62b321dc_r.jpg', 16);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/v2-5e491747faef122e1ee31bfe62b321dc_r.jpg', 17);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/v2-5e491747faef122e1ee31bfe62b321dc_r.jpg', 18);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/v2-5e491747faef122e1ee31bfe62b321dc_r.jpg', 19);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/v2-5e491747faef122e1ee31bfe62b321dc_r.jpg', 20);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/v2-5e491747faef122e1ee31bfe62b321dc_r.jpg', 21);
INSERT INTO `picture` VALUES ('https://picx.zhimg.com/50/v2-8b572b9f9b825c860225c64251c6d5a9_720w.jpg?source=2c26e567', 22);
INSERT INTO `picture` VALUES ('https://picx.zhimg.com/50/v2-f73595080e9e4f9835674d2755ce6ccf_720w.jpg?source=2c26e567', 22);
INSERT INTO `picture` VALUES ('https://pica.zhimg.com/50/v2-e59fd10edaec8ae502d2e0d8601734ec_720w.jpg?source=2c26e567', 22);
INSERT INTO `picture` VALUES ('https://picx.zhimg.com/50/v2-71c5742953fea9d9900ef99a8a9a4ade_720w.jpg?source=2c26e567', 23);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/50/v2-a912ffa76b257250602f0b9ee855fd1d_720w.jpg?source=2c26e567', 23);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/50/v2-22d61b5473defe4dcc94ef99b7198c3b_720w.jpg?source=2c26e567', 23);
INSERT INTO `picture` VALUES ('https://picx.zhimg.com/50/v2-8078abac0c5f9219350b112602be41c8_720w.jpg?source=2c26e567', 23);
INSERT INTO `picture` VALUES ('https://picx.zhimg.com/50/v2-32a8ac5de6c96d5053c13a608d57e583_720w.jpg?source=2c26e567', 23);
INSERT INTO `picture` VALUES ('https://picx.zhimg.com/50/v2-9a0d8c72c9a378af92927ba7bb7b046b_720w.jpg?source=2c26e567', 23);
INSERT INTO `picture` VALUES ('https://pica.zhimg.com/50/v2-eb073ca24948727d38432394c9f1873e_720w.jpg?source=2c26e567', 23);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/50/v2-163828cb228bdb814c46ac18b2066570_720w.jpg?source=2c26e567', 24);
INSERT INTO `picture` VALUES ('https://pica.zhimg.com/50/v2-85cbc08f2e08cfe0fb87c94adf5e44e9_720w.jpg?source=2c26e567', 24);
INSERT INTO `picture` VALUES ('https://picx.zhimg.com/50/v2-b340201a5f1879aa86ab51d364bb0927_720w.jpg?source=2c26e567', 25);
INSERT INTO `picture` VALUES ('https://picx.zhimg.com/50/v2-4edb8de5dae16651b8d8e4c35593cb31_720w.jpg?source=2c26e567', 25);
INSERT INTO `picture` VALUES ('https://picx.zhimg.com/50/v2-2f63e648c17c82780d6c72948375e4ab_720w.jpg?source=2c26e567', 25);
INSERT INTO `picture` VALUES ('https://pica.zhimg.com/50/v2-63ddc1df52feda39c9013e645243b435_720w.jpg?source=2c26e567', 26);
INSERT INTO `picture` VALUES ('https://pic1.zhimg.com/50/v2-4e0caf8a95ba269b6be538d16e6bf0df_720w.jpg?source=2c26e567', 26);

-- ----------------------------
-- Table structure for sentence
-- ----------------------------
DROP TABLE IF EXISTS `sentence`;
CREATE TABLE `sentence`  (
  `sentence_id` int(11) NOT NULL AUTO_INCREMENT,
  `sentence_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sentence_picture` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sentence_create_date` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `dayOfWeek` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`sentence_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 358 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sentence
-- ----------------------------
INSERT INTO `sentence` VALUES (1, '1', '1', '2023-12-02 18:19:39', '星期六', '每日精选', 1);
INSERT INTO `sentence` VALUES (180, '男人彻底懂得一个女人之后，是不会爱她的。', 'https://pic1.zhimg.com/v2-5e491747faef122e1ee31bfe62b321dc_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (181, '因为爱过，所以慈悲；因为懂得，所以宽容。', 'https://pic3.zhimg.com/v2-177bb6b3b2f61140d4d50e4b80f6e56a_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (182, '爱情是盲目的，没有什么值不值得的问题。当你爱上一个人的时候，你还会理性的思考吗？如果是，那只能说明这不是爱情！', 'https://pic2.zhimg.com/v2-6639cd35d51b7f93b785fabfe2606e69_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (183, '我爱你，关你什么事？千怪万怪也怪不到你身上去。', 'https://pic3.zhimg.com/v2-863e487e68dbd5c93dba6437444226c2_r.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (184, '对于三十岁以后的人来说，十年八年不过是指缝间的事，而对于年轻人而言，三年五年就可以是一生一世。', 'https://pic2.zhimg.com/v2-96b2cae016e51eaeb0ed313533ff4a65_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (185, '爱情本来并不复杂，来来去去不过三个字，不是“我爱你，我恨你，”便是“算了吧，你好吗？对不起。', 'https://pic4.zhimg.com/v2-d7a7b9f854fdcadb880c0eb33f9af8a7_r.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (186, '喜欢一个人，会卑微到尘埃里，然后开出花来。', 'https://pic4.zhimg.com/v2-aaffeaa0001f0da05a753d4f199ae397_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (187, '我要你知道，在这个世界上总有一个人是等着你的，不管在什么时候，不管在什么地方，反正你知道，总有这么个人。', 'https://pic3.zhimg.com/v2-a5267dfbf175991d4b3a69b41f3f678a_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (188, '有一条路，每个人非走不可，那就是年轻时候的弯路。', 'https://pic4.zhimg.com/v2-4a52e5082371c0f79272aebb43acfb03_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (189, '生命是一袭华美的袍，长满了虱子。', 'https://pic4.zhimg.com/v2-915c071436c9fda9b626e86977b32597_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (190, '我喜欢钱，因为我没吃过钱的苦，不知道钱的坏处，只知道钱的好处。', 'https://pic2.zhimg.com/v2-517fb47d8112112b244dcd88b136bef1_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (191, '吝啬是男人的大忌，就算穷也不要做出一副穷样。', 'https://pic1.zhimg.com/v2-cf30817c3d76664e85b63e7fc7c8449c_r.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (192, '你死了，我的故事就结束了，而我死了，你的故事还长得很。', 'https://pic4.zhimg.com/v2-3d2c47c3fe435d94b13f653bfd176003_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (193, '回忆这东西若是有气味的话，那就是樟脑的香，甜而稳妥，像记得分明的块乐，甜而怅惘，像忘却了的愁。', 'https://pic3.zhimg.com/v2-870f6070e08e051af98496cd2957a462_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (194, '每段感情开始的时候都有他存在的理由，结束时也有他结束的必然。', 'https://pic3.zhimg.com/v2-bdab93e5a178ad4e00b2fe742ebb290e_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (195, '装扮得很像样的人，在像样的地方出现，看见同类，也被看见，这就是社交。', 'https://pic3.zhimg.com/v2-25e91d1feb7d8aed81f407d56a438f7a_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (196, '一个知己就好像一面镜子，反映出我们天性中最优美的部分来。', 'https://pic4.zhimg.com/v2-55b83b31e107d999827a6cd787dd1a8b_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (197, '一结婚以后，结婚前的经过也就变得无足重轻的了，不管当初是谁追求谁，反正一结婚之后就是谁不讲理谁占上风。', 'https://pic4.zhimg.com/v2-86f405c2c19dc2ebc24d6dce032c434b_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (198, '相爱着的人又是往往的爱闹意见，反而是漠不相干的人能够互相容忍。', 'https://pic3.zhimg.com/v2-5f842600fabb161f2e332b50d76cbd6e_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (199, '爱情要完结的时候自会完结，到时候，你不想画上句号也不行。爱情，原来是含笑饮毒酒。', 'https://pic3.zhimg.com/v2-d1763ce5fd59176d244d839ea3c2f84a_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (200, '同行相妒，似乎是不可避免的，何况都是女人', 'https://pic4.zhimg.com/v2-14825dd68cdc069cc55acdd0c783fec7_r.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (201, '酒在肚里，事在心里，中间总好像隔着一层，无论喝多少酒，都淹不到心上去。', 'https://pic2.zhimg.com/v2-572dfc7c7ced95f658c4f936641b8df5_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (202, '我装惯了假，也是因为人人都对我装假。只有对你，我说过句把真话，你听不出来。', 'https://pic4.zhimg.com/v2-6849e0efb8f3d48ae9aa70fc3c858107_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (203, '悲观者称半杯水为半空，乐观者称半杯水为半满，我享受现在半满的生活。', 'https://pic2.zhimg.com/v2-5a138f62488fe6dbb6ec5a93f04966b5_b.jpg', '2023-12-08 20:51:04', '星期六', '张爱玲', 44);
INSERT INTO `sentence` VALUES (204, '善良的人永远是受苦的，那忧苦的重担似乎是与生俱来的，因此只有忍耐。', 'https://pic3.zhimg.com/v2-d5cc32f1769cd38ee83f57165f6fded6_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (205, '当我爱你时，你的心在沉睡；当你爱我时，我的心已冰封。', 'https://pic3.zhimg.com/v2-cf874d1f9aa31d4385d7c870d0f3eeee_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (206, '爱上一个人的时候，总会有点害怕，怕得到他；怕失掉他。', 'https://pic2.zhimg.com/v2-264d3239c8b11bfb0f74d04ab83a1679_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (207, '没有几个女人是因为灵魂之美而被爱上的。', 'https://pic1.zhimg.com/v2-e96e8693b297a228a4c6e41de96e6b40_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (208, '你疑心你的妻子，她就欺骗你。你不疑心你的妻子，她就疑心你。', 'https://pic1.zhimg.com/v2-ce5acc9945e2e74852552f1a0096e8bc_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (209, '一个人，学会了一样本事，总舍不得放着不用。', 'https://pic4.zhimg.com/v2-16edba77c739e5de44c0a5fda740a437_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (210, '你爱我吗？ 已经爱到危险的程度了。危险到什么程度？ 已经不能一个人生活。', 'https://pic2.zhimg.com/v2-64d1bb98c65dea3f0d0b417414d9b211_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (211, '无用的女人是最最厉害的女人。', 'https://pic1.zhimg.com/v2-e629460c344a42cc858f43f25d0a094c_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (212, '雨声潺潺，像住在溪边，宁愿天天下雨，以为你是因为下雨不来。', 'https://pic2.zhimg.com/v2-239f0bdb560bc17cf1f381ba0a8e5af9_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (213, '一个女人，倘若得不到异性的爱，就也得不到同性的尊重，女人就是这点贱。', 'https://pic4.zhimg.com/v2-9496fb78bff05babde94a5ba258600e7_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (214, '生在这世上，没有一样感情不是千疮百孔的。', 'https://pic2.zhimg.com/v2-4dfc2fa4d1bd7760bfe0681e9c8244d1_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (215, '你如果认识从前的我，也许你会原谅现在的我。', 'https://pic1.zhimg.com/v2-53ee1ad4cb2a2ccdb54d94a26fe2b0bc_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (216, '人总是在接近幸福时倍感幸福，在幸福进行时却患得患失。', 'https://pic3.zhimg.com/v2-ef108898840786eba3b925e01671aaee_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (217, '一般的男人，喜欢把女人教坏了，又喜欢去感化坏女人，使她变为好女人。', 'https://pic2.zhimg.com/v2-02fd43570e74051a301b814352ab4e69_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (218, '童年的一天一天，温暖而迟缓，正像老棉鞋里面，粉红绒里子上晒着的阳光。', 'https://pic2.zhimg.com/v2-b66e658ff632c5a3ba60ed4170d40379_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (219, '抄袭是最隆重的赞美。', 'https://pic4.zhimg.com/v2-013cf9932ec9d08b8d34f03cfed2a9fb_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (220, '最可厌的人，如果你细加研究，结果总发现他不过是个可怜人。', 'https://pic1.zhimg.com/v2-086a741a26ebde4913b87b7d606ade3c_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (221, '人生即是麻烦，怕麻烦，不如死了的好。', 'https://pic1.zhimg.com/v2-fb0cee608564d4f8231cd8272ca24a3c_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (222, '我怎么敢倒下，我身后空无一人。', 'https://pic3.zhimg.com/v2-3685ed38e87e8b47c4e94394da143cc2_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (223, '合适的人不是你拼命追赶的，而是你累的时候，拉着你一起走的人。', 'https://pic2.zhimg.com/v2-1ee9e837535ea01bc578f4403bf221d5_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (224, '雨声潺潺，像住在溪边，宁愿天天下雨，以为你是因为下雨不来。', 'https://pic2.zhimg.com/v2-f7260a48430c112dc5600e1363fbe3e5_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (225, '我一直喜欢下午的阳光，它让我相信这个世界任何事情都会有转机。', 'https://pic1.zhimg.com/v2-34144f854f24f7389ba53a9dda1ffe08_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (226, '长的是磨难，短的是人生。', 'https://pic1.zhimg.com/v2-a4b936336996fe7852847b1e901ea5d0_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (227, '努力是为让之前的种种狼狈不堪成为伏笔。', 'https://pic4.zhimg.com/v2-432030cac80a22c9a004c43d3b8428db_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (228, '妈妈们都有个通病，只要你说了哪样菜好吃，她们就频繁地煮那道菜，直到你厌烦地埋怨了为止。其实她这辈子，就是在拼命把你觉得好的，给你，都给你，爱得不知所措了而已。', 'https://pic3.zhimg.com/v2-1b6bb22ad98fef131858efbe9b677056_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (229, '结婚若是为了维持生计，那婚姻就是长期卖淫。', 'https://pic2.zhimg.com/v2-674be6ed238d702bce797abeea31b2d9_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (230, '知道吗，男孩站在女孩的左边是因为那样可以离她的心更近一些。', 'https://pic4.zhimg.com/v2-fc02beab9e58cab17aa88b2bdca8deef_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (231, '爱情应当山盟海誓，只有专一的、忠贞不渝的爱情，才是真正的爱情。', 'https://pic4.zhimg.com/v2-40afa7763a9de3e7ea476b58ece9519b_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (232, '对于一个女人，如果你不想占有她，就远着她点。', 'https://pic3.zhimg.com/v2-4cb907405fc4b99e22210a1b84aa5ca2_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (233, '你问我爱你值不值得，其实你应该知道，爱就是不问值得不值得', 'https://pic3.zhimg.com/v2-b5eba4d7b48bd50edb6024259008afea_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (234, '有一条路，每个人非走不可，那就是年轻时候的弯路。', 'https://pic4.zhimg.com/v2-a15a498dfb5762971719bfc25ae6fabb_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (235, '女人一旦爱上一个男人，如赐予女人的一杯毒酒，心甘情愿的以一种最美的姿势一饮而尽，一切的心都交了出去，生死度外。', 'https://pic3.zhimg.com/v2-f35385d65b2d7d0cbad5968bca8f4a4a_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (236, '愿使现世安稳，岁月静好。', 'https://pic3.zhimg.com/v2-1433cb46f5d58a30dc8734263799c08e_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (237, '照片这东西不过是生命的碎壳；纷纷的岁月已过去，瓜子仁一粒粒咽了下去，滋味各人自己知道，留给大家看的唯有那满地狼藉的黑白的瓜子壳。', 'https://pic1.zhimg.com/v2-04abbdacfb2b33ef0f9efffdcd377b60_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (238, '我的心是用玻璃做的，虽然它没有水晶的高贵，却一样透明、易碎、爱你。所以，我用双手把它捧到你的面前，希望你能收留它。', 'https://pic1.zhimg.com/v2-f3edc54b8407bf3fd1fa4e9cb0b527f4_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (239, '也许爱不是热情，也不是怀念，不过是岁月，年深月久成了生活的一部分。', 'https://pic2.zhimg.com/v2-ae39cbfd5526bd66250224b23c578131_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (240, '这个世界上有很多事情，你以为明天一定可以再继续做的', 'https://pic1.zhimg.com/v2-4ebc821a6a702a5fbc9c900be65e7a60_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (241, '装扮得很像样的人，在像样的地方出现，看见同类，也被看见，这就是社交。', 'https://pic3.zhimg.com/v2-1e1c6112b44af576b08647acf514f6e6_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (242, '每一个女子的灵魂中都同时存在红玫瑰与白玫瑰，但只有懂得爱的男子，才会令他爱的女子越来越美，即便是星光一样寒冷的白色花朵，也同时可以娇媚地盛放风情。', 'https://pic4.zhimg.com/v2-ef4764400ec42236d0de7f500b91a8a7_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (243, '有人共享，快乐会加倍，忧愁会减半。', 'https://pic2.zhimg.com/v2-b7cc4617d2cd1a6ba4d7f499b908f0d9_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (244, '人性是最有趣的书，一生一世看不完。', 'https://pic4.zhimg.com/v2-ddac6b8837d794be6dd0ce179b2f1577_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (245, '我们终将在别人的记忆里，寄人篱下。', 'https://pic4.zhimg.com/v2-6d5bace1a0fab932a567edaad8f7798f_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (246, '一个历尽苍凉与浮华的男人的话语，有些无奈，有些深刻，有些狡黠。', 'https://pic2.zhimg.com/v2-6058fb1160b661e071fb2550a79e5351_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (247, '极端的病态与极端端觉悟的人究竟不多。', 'https://pic3.zhimg.com/v2-99c9540e1b90f75fccba0b80af66bd8a_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (248, '很多女人因为心里不快乐，才浪费，是一种补偿作用。例如丈夫对她冷淡，就乱花钱。', 'https://pic2.zhimg.com/v2-659efcda66e1034957dbb09de09007b1_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (249, '也许每一个男子全都有过这样的两个女人，至少两个。', 'https://pic3.zhimg.com/v2-ea264f064bf3665a6bc67626b9352ece_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (250, '有些傻话，不但是要背着人说，还得背着自己。让自己听见了也怪难为情的。譬如说，我爱你，我一辈子都爱你。', 'https://pic4.zhimg.com/v2-cd7ef1cb87b07f24f8f8ffcd7db6ac4b_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (251, '我要你知道,在这个世界上总有一个人是等着你的,不管在什么时候,不管在什么地方,反正你知道,总有这么个人。', 'https://pic4.zhimg.com/v2-b084e29450aef89e7db0ee84c050cca7_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (252, '你问我爱你值不值得，其实你应该知道，爱就是不问值得不值得。', 'https://pic3.zhimg.com/v2-02e42eac3748b13b7c4d93d8634bfbe6_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (253, '生命有它的图案，我们唯有揣摩。', 'https://pic4.zhimg.com/v2-6f1dc610db1978e4ab5513f8f98783f7_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (254, '对于不会说话的人，衣服是一种语言，随身携带一种袖珍戏剧。', 'https://pic2.zhimg.com/v2-ccf1296f6e3041f5ba41a11b0a79448d_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (255, '酒在肚里，事在心里，中间总好像隔着一层，无论喝多少酒，都淹不到心上去。', 'https://pic2.zhimg.com/v2-4f01a77a2e4a40fe84727d5ea2742f71_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (256, '长的是磨难，短的是人生。', 'https://pic4.zhimg.com/v2-a9c6115a2480cfe6e9a92f444145f3cf_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (257, '我有钱了，你快回来。', 'https://pic1.zhimg.com/v2-3b370e01e19b761e7b474ab24c276204_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (258, '我一直想到你房间去看月光。', 'https://pic4.zhimg.com/v2-ae3249d7981fc5ae2e23fde1bc4113e7_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (259, '这世界上有那么许多人，可是他们不能陪着你回家。', 'https://pic3.zhimg.com/v2-e9ceb7df9eb31be2b00a90d974499dbe_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (260, '于千万人之中遇见你所要遇见的人，于千万年之中，时间的无涯的荒野里，没有早一步，也没有晚一步，刚巧赶上了。', 'https://pic4.zhimg.com/v2-2b3511be7db203c9183254b070bf1517_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (261, '我是一个古怪的女孩，从小被目为天才，除了发展我的天才外别无生存的目标。然而，当童年的狂想逐渐褪色的时候，我发现我除了天才的梦之外一无所有——所有的只是天才的乖僻。', 'https://pic4.zhimg.com/v2-d269422a8262915f4f605f232a07580b_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (262, '钱太多了，就用不着考虑;完全没有钱，也用不着考虑了。', 'https://pic1.zhimg.com/v2-140cdffb51edd6943b4c1de5199c2a8c_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (263, '普通人的一生，再好也是桃花扇，撞破了头，血溅到扇子上，就这上面略加点染成一枝桃花。', 'https://pic3.zhimg.com/v2-84ddb26a4a8ad372e8038cd7e7566812_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (264, '笑，全世界便与你同声笑，哭，你便独自哭。', 'https://pic4.zhimg.com/v2-19596884d68b1b52955f1a773b63be57_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (265, '经得起风雨，却经不起平凡；风雨同舟，天晴便各自散了。', 'https://pic4.zhimg.com/v2-f43203457cb76bc64f5ebc6f2d2f1497_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (266, '每个人心里都有一座伤城。', 'https://pic4.zhimg.com/v2-a3972de4d162f95d381b27ff06bf970f_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (267, '牵手是一个很伤感的过程，因为牵手过后是放手！', 'https://pic4.zhimg.com/v2-a30587a94689b73fa4d4d7191c4a1367_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (268, '你年轻么？不要紧，过两年就老了。', 'https://pic4.zhimg.com/v2-64f3621ec7bcae9d2162e50f0092a807_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (269, '男人彻底懂得一个女人之后，是不会爱她的。', 'https://pic1.zhimg.com/v2-5e491747faef122e1ee31bfe62b321dc_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (270, '因为爱过，所以慈悲；因为懂得，所以宽容。', 'https://pic3.zhimg.com/v2-177bb6b3b2f61140d4d50e4b80f6e56a_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (271, '爱情是盲目的，没有什么值不值得的问题。当你爱上一个人的时候，你还会理性的思考吗？如果是，那只能说明这不是爱情！', 'https://pic2.zhimg.com/v2-6639cd35d51b7f93b785fabfe2606e69_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (272, '我爱你，关你什么事？千怪万怪也怪不到你身上去。', 'https://pic3.zhimg.com/v2-863e487e68dbd5c93dba6437444226c2_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (273, '对于三十岁以后的人来说，十年八年不过是指缝间的事，而对于年轻人而言，三年五年就可以是一生一世。', 'https://pic2.zhimg.com/v2-96b2cae016e51eaeb0ed313533ff4a65_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (274, '爱情本来并不复杂，来来去去不过三个字，不是“我爱你，我恨你，”便是“算了吧，你好吗？对不起。', 'https://pic4.zhimg.com/v2-d7a7b9f854fdcadb880c0eb33f9af8a7_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (275, '喜欢一个人，会卑微到尘埃里，然后开出花来。', 'https://pic4.zhimg.com/v2-aaffeaa0001f0da05a753d4f199ae397_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (276, '我要你知道，在这个世界上总有一个人是等着你的，不管在什么时候，不管在什么地方，反正你知道，总有这么个人。', 'https://pic3.zhimg.com/v2-a5267dfbf175991d4b3a69b41f3f678a_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (277, '有一条路，每个人非走不可，那就是年轻时候的弯路。', 'https://pic4.zhimg.com/v2-4a52e5082371c0f79272aebb43acfb03_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (278, '生命是一袭华美的袍，长满了虱子。', 'https://pic4.zhimg.com/v2-915c071436c9fda9b626e86977b32597_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (279, '我喜欢钱，因为我没吃过钱的苦，不知道钱的坏处，只知道钱的好处。', 'https://pic2.zhimg.com/v2-517fb47d8112112b244dcd88b136bef1_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (280, '吝啬是男人的大忌，就算穷也不要做出一副穷样。', 'https://pic1.zhimg.com/v2-cf30817c3d76664e85b63e7fc7c8449c_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (281, '你死了，我的故事就结束了，而我死了，你的故事还长得很。', 'https://pic4.zhimg.com/v2-3d2c47c3fe435d94b13f653bfd176003_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (282, '回忆这东西若是有气味的话，那就是樟脑的香，甜而稳妥，像记得分明的块乐，甜而怅惘，像忘却了的愁。', 'https://pic3.zhimg.com/v2-870f6070e08e051af98496cd2957a462_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (283, '每段感情开始的时候都有他存在的理由，结束时也有他结束的必然。', 'https://pic3.zhimg.com/v2-bdab93e5a178ad4e00b2fe742ebb290e_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (284, '装扮得很像样的人，在像样的地方出现，看见同类，也被看见，这就是社交。', 'https://pic3.zhimg.com/v2-25e91d1feb7d8aed81f407d56a438f7a_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (285, '一个知己就好像一面镜子，反映出我们天性中最优美的部分来。', 'https://pic4.zhimg.com/v2-55b83b31e107d999827a6cd787dd1a8b_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (286, '一结婚以后，结婚前的经过也就变得无足重轻的了，不管当初是谁追求谁，反正一结婚之后就是谁不讲理谁占上风。', 'https://pic4.zhimg.com/v2-86f405c2c19dc2ebc24d6dce032c434b_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (287, '相爱着的人又是往往的爱闹意见，反而是漠不相干的人能够互相容忍。', 'https://pic3.zhimg.com/v2-5f842600fabb161f2e332b50d76cbd6e_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (288, '爱情要完结的时候自会完结，到时候，你不想画上句号也不行。爱情，原来是含笑饮毒酒。', 'https://pic3.zhimg.com/v2-d1763ce5fd59176d244d839ea3c2f84a_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (289, '同行相妒，似乎是不可避免的，何况都是女人', 'https://pic4.zhimg.com/v2-14825dd68cdc069cc55acdd0c783fec7_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (290, '酒在肚里，事在心里，中间总好像隔着一层，无论喝多少酒，都淹不到心上去。', 'https://pic2.zhimg.com/v2-572dfc7c7ced95f658c4f936641b8df5_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (291, '我装惯了假，也是因为人人都对我装假。只有对你，我说过句把真话，你听不出来。', 'https://pic4.zhimg.com/v2-6849e0efb8f3d48ae9aa70fc3c858107_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (292, '悲观者称半杯水为半空，乐观者称半杯水为半满，我享受现在半满的生活。', 'https://pic2.zhimg.com/v2-5a138f62488fe6dbb6ec5a93f04966b5_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (293, '善良的人永远是受苦的，那忧苦的重担似乎是与生俱来的，因此只有忍耐。', 'https://pic3.zhimg.com/v2-d5cc32f1769cd38ee83f57165f6fded6_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (294, '当我爱你时，你的心在沉睡；当你爱我时，我的心已冰封。', 'https://pic3.zhimg.com/v2-cf874d1f9aa31d4385d7c870d0f3eeee_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (295, '爱上一个人的时候，总会有点害怕，怕得到他；怕失掉他。', 'https://pic2.zhimg.com/v2-264d3239c8b11bfb0f74d04ab83a1679_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (296, '没有几个女人是因为灵魂之美而被爱上的。', 'https://pic1.zhimg.com/v2-e96e8693b297a228a4c6e41de96e6b40_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (297, '你疑心你的妻子，她就欺骗你。你不疑心你的妻子，她就疑心你。', 'https://pic1.zhimg.com/v2-ce5acc9945e2e74852552f1a0096e8bc_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (298, '一个人，学会了一样本事，总舍不得放着不用。', 'https://pic4.zhimg.com/v2-16edba77c739e5de44c0a5fda740a437_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (299, '你爱我吗？ 已经爱到危险的程度了。危险到什么程度？ 已经不能一个人生活。', 'https://pic2.zhimg.com/v2-64d1bb98c65dea3f0d0b417414d9b211_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (300, '无用的女人是最最厉害的女人。', 'https://pic1.zhimg.com/v2-e629460c344a42cc858f43f25d0a094c_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (301, '雨声潺潺，像住在溪边，宁愿天天下雨，以为你是因为下雨不来。', 'https://pic2.zhimg.com/v2-239f0bdb560bc17cf1f381ba0a8e5af9_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (302, '一个女人，倘若得不到异性的爱，就也得不到同性的尊重，女人就是这点贱。', 'https://pic4.zhimg.com/v2-9496fb78bff05babde94a5ba258600e7_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (303, '生在这世上，没有一样感情不是千疮百孔的。', 'https://pic2.zhimg.com/v2-4dfc2fa4d1bd7760bfe0681e9c8244d1_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (304, '你如果认识从前的我，也许你会原谅现在的我。', 'https://pic1.zhimg.com/v2-53ee1ad4cb2a2ccdb54d94a26fe2b0bc_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (305, '人总是在接近幸福时倍感幸福，在幸福进行时却患得患失。', 'https://pic3.zhimg.com/v2-ef108898840786eba3b925e01671aaee_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (306, '一般的男人，喜欢把女人教坏了，又喜欢去感化坏女人，使她变为好女人。', 'https://pic2.zhimg.com/v2-02fd43570e74051a301b814352ab4e69_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (307, '童年的一天一天，温暖而迟缓，正像老棉鞋里面，粉红绒里子上晒着的阳光。', 'https://pic2.zhimg.com/v2-b66e658ff632c5a3ba60ed4170d40379_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (308, '抄袭是最隆重的赞美。', 'https://pic4.zhimg.com/v2-013cf9932ec9d08b8d34f03cfed2a9fb_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (309, '最可厌的人，如果你细加研究，结果总发现他不过是个可怜人。', 'https://pic1.zhimg.com/v2-086a741a26ebde4913b87b7d606ade3c_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (310, '人生即是麻烦，怕麻烦，不如死了的好。', 'https://pic1.zhimg.com/v2-fb0cee608564d4f8231cd8272ca24a3c_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (311, '我怎么敢倒下，我身后空无一人。', 'https://pic3.zhimg.com/v2-3685ed38e87e8b47c4e94394da143cc2_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (312, '合适的人不是你拼命追赶的，而是你累的时候，拉着你一起走的人。', 'https://pic2.zhimg.com/v2-1ee9e837535ea01bc578f4403bf221d5_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (313, '雨声潺潺，像住在溪边，宁愿天天下雨，以为你是因为下雨不来。', 'https://pic2.zhimg.com/v2-f7260a48430c112dc5600e1363fbe3e5_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (314, '我一直喜欢下午的阳光，它让我相信这个世界任何事情都会有转机。', 'https://pic1.zhimg.com/v2-34144f854f24f7389ba53a9dda1ffe08_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (315, '长的是磨难，短的是人生。', 'https://pic1.zhimg.com/v2-a4b936336996fe7852847b1e901ea5d0_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (316, '努力是为让之前的种种狼狈不堪成为伏笔。', 'https://pic4.zhimg.com/v2-432030cac80a22c9a004c43d3b8428db_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (317, '妈妈们都有个通病，只要你说了哪样菜好吃，她们就频繁地煮那道菜，直到你厌烦地埋怨了为止。其实她这辈子，就是在拼命把你觉得好的，给你，都给你，爱得不知所措了而已。', 'https://pic3.zhimg.com/v2-1b6bb22ad98fef131858efbe9b677056_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (318, '结婚若是为了维持生计，那婚姻就是长期卖淫。', 'https://pic2.zhimg.com/v2-674be6ed238d702bce797abeea31b2d9_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (319, '知道吗，男孩站在女孩的左边是因为那样可以离她的心更近一些。', 'https://pic4.zhimg.com/v2-fc02beab9e58cab17aa88b2bdca8deef_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (320, '爱情应当山盟海誓，只有专一的、忠贞不渝的爱情，才是真正的爱情。', 'https://pic4.zhimg.com/v2-40afa7763a9de3e7ea476b58ece9519b_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (321, '对于一个女人，如果你不想占有她，就远着她点。', 'https://pic3.zhimg.com/v2-4cb907405fc4b99e22210a1b84aa5ca2_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (322, '你问我爱你值不值得，其实你应该知道，爱就是不问值得不值得', 'https://pic3.zhimg.com/v2-b5eba4d7b48bd50edb6024259008afea_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (323, '有一条路，每个人非走不可，那就是年轻时候的弯路。', 'https://pic4.zhimg.com/v2-a15a498dfb5762971719bfc25ae6fabb_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (324, '女人一旦爱上一个男人，如赐予女人的一杯毒酒，心甘情愿的以一种最美的姿势一饮而尽，一切的心都交了出去，生死度外。', 'https://pic3.zhimg.com/v2-f35385d65b2d7d0cbad5968bca8f4a4a_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (325, '愿使现世安稳，岁月静好。', 'https://pic3.zhimg.com/v2-1433cb46f5d58a30dc8734263799c08e_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (326, '照片这东西不过是生命的碎壳；纷纷的岁月已过去，瓜子仁一粒粒咽了下去，滋味各人自己知道，留给大家看的唯有那满地狼藉的黑白的瓜子壳。', 'https://pic1.zhimg.com/v2-04abbdacfb2b33ef0f9efffdcd377b60_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (327, '我的心是用玻璃做的，虽然它没有水晶的高贵，却一样透明、易碎、爱你。所以，我用双手把它捧到你的面前，希望你能收留它。', 'https://pic1.zhimg.com/v2-f3edc54b8407bf3fd1fa4e9cb0b527f4_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (328, '也许爱不是热情，也不是怀念，不过是岁月，年深月久成了生活的一部分。', 'https://pic2.zhimg.com/v2-ae39cbfd5526bd66250224b23c578131_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (329, '这个世界上有很多事情，你以为明天一定可以再继续做的', 'https://pic1.zhimg.com/v2-4ebc821a6a702a5fbc9c900be65e7a60_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (330, '装扮得很像样的人，在像样的地方出现，看见同类，也被看见，这就是社交。', 'https://pic3.zhimg.com/v2-1e1c6112b44af576b08647acf514f6e6_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (331, '每一个女子的灵魂中都同时存在红玫瑰与白玫瑰，但只有懂得爱的男子，才会令他爱的女子越来越美，即便是星光一样寒冷的白色花朵，也同时可以娇媚地盛放风情。', 'https://pic4.zhimg.com/v2-ef4764400ec42236d0de7f500b91a8a7_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (332, '有人共享，快乐会加倍，忧愁会减半。', 'https://pic2.zhimg.com/v2-b7cc4617d2cd1a6ba4d7f499b908f0d9_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (333, '人性是最有趣的书，一生一世看不完。', 'https://pic4.zhimg.com/v2-ddac6b8837d794be6dd0ce179b2f1577_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (334, '我们终将在别人的记忆里，寄人篱下。', 'https://pic4.zhimg.com/v2-6d5bace1a0fab932a567edaad8f7798f_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (335, '一个历尽苍凉与浮华的男人的话语，有些无奈，有些深刻，有些狡黠。', 'https://pic2.zhimg.com/v2-6058fb1160b661e071fb2550a79e5351_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (336, '极端的病态与极端端觉悟的人究竟不多。', 'https://pic3.zhimg.com/v2-99c9540e1b90f75fccba0b80af66bd8a_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (337, '很多女人因为心里不快乐，才浪费，是一种补偿作用。例如丈夫对她冷淡，就乱花钱。', 'https://pic2.zhimg.com/v2-659efcda66e1034957dbb09de09007b1_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (338, '也许每一个男子全都有过这样的两个女人，至少两个。', 'https://pic3.zhimg.com/v2-ea264f064bf3665a6bc67626b9352ece_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (339, '有些傻话，不但是要背着人说，还得背着自己。让自己听见了也怪难为情的。譬如说，我爱你，我一辈子都爱你。', 'https://pic4.zhimg.com/v2-cd7ef1cb87b07f24f8f8ffcd7db6ac4b_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (340, '我要你知道,在这个世界上总有一个人是等着你的,不管在什么时候,不管在什么地方,反正你知道,总有这么个人。', 'https://pic4.zhimg.com/v2-b084e29450aef89e7db0ee84c050cca7_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (341, '你问我爱你值不值得，其实你应该知道，爱就是不问值得不值得。', 'https://pic3.zhimg.com/v2-02e42eac3748b13b7c4d93d8634bfbe6_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (342, '生命有它的图案，我们唯有揣摩。', 'https://pic4.zhimg.com/v2-6f1dc610db1978e4ab5513f8f98783f7_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (343, '对于不会说话的人，衣服是一种语言，随身携带一种袖珍戏剧。', 'https://pic2.zhimg.com/v2-ccf1296f6e3041f5ba41a11b0a79448d_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (344, '酒在肚里，事在心里，中间总好像隔着一层，无论喝多少酒，都淹不到心上去。', 'https://pic2.zhimg.com/v2-4f01a77a2e4a40fe84727d5ea2742f71_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (345, '长的是磨难，短的是人生。', 'https://pic4.zhimg.com/v2-a9c6115a2480cfe6e9a92f444145f3cf_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (346, '我有钱了，你快回来。', 'https://pic1.zhimg.com/v2-3b370e01e19b761e7b474ab24c276204_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (347, '我一直想到你房间去看月光。', 'https://pic4.zhimg.com/v2-ae3249d7981fc5ae2e23fde1bc4113e7_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (348, '这世界上有那么许多人，可是他们不能陪着你回家。', 'https://pic3.zhimg.com/v2-e9ceb7df9eb31be2b00a90d974499dbe_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (349, '于千万人之中遇见你所要遇见的人，于千万年之中，时间的无涯的荒野里，没有早一步，也没有晚一步，刚巧赶上了。', 'https://pic4.zhimg.com/v2-2b3511be7db203c9183254b070bf1517_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (350, '我是一个古怪的女孩，从小被目为天才，除了发展我的天才外别无生存的目标。然而，当童年的狂想逐渐褪色的时候，我发现我除了天才的梦之外一无所有——所有的只是天才的乖僻。', 'https://pic4.zhimg.com/v2-d269422a8262915f4f605f232a07580b_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (351, '钱太多了，就用不着考虑;完全没有钱，也用不着考虑了。', 'https://pic1.zhimg.com/v2-140cdffb51edd6943b4c1de5199c2a8c_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (352, '普通人的一生，再好也是桃花扇，撞破了头，血溅到扇子上，就这上面略加点染成一枝桃花。', 'https://pic3.zhimg.com/v2-84ddb26a4a8ad372e8038cd7e7566812_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (353, '笑，全世界便与你同声笑，哭，你便独自哭。', 'https://pic4.zhimg.com/v2-19596884d68b1b52955f1a773b63be57_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (354, '经得起风雨，却经不起平凡；风雨同舟，天晴便各自散了。', 'https://pic4.zhimg.com/v2-f43203457cb76bc64f5ebc6f2d2f1497_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (355, '每个人心里都有一座伤城。', 'https://pic4.zhimg.com/v2-a3972de4d162f95d381b27ff06bf970f_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (356, '牵手是一个很伤感的过程，因为牵手过后是放手！', 'https://pic4.zhimg.com/v2-a30587a94689b73fa4d4d7191c4a1367_b.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);
INSERT INTO `sentence` VALUES (357, '你年轻么？不要紧，过两年就老了。', 'https://pic4.zhimg.com/v2-64f3621ec7bcae9d2162e50f0092a807_r.jpg', '2023-12-02 18:19:39', '星期六', '张爱玲', 1);

-- ----------------------------
-- Table structure for topicalbum
-- ----------------------------
DROP TABLE IF EXISTS `topicalbum`;
CREATE TABLE `topicalbum`  (
  `album_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topicalbum
-- ----------------------------
INSERT INTO `topicalbum` VALUES ('情感');
INSERT INTO `topicalbum` VALUES ('校园');
INSERT INTO `topicalbum` VALUES ('日常');
INSERT INTO `topicalbum` VALUES ('职场');
INSERT INTO `topicalbum` VALUES ('句子控');
INSERT INTO `topicalbum` VALUES ('心情');
INSERT INTO `topicalbum` VALUES ('故事');
INSERT INTO `topicalbum` VALUES ('影视');
INSERT INTO `topicalbum` VALUES ('社会事件');
INSERT INTO `topicalbum` VALUES ('美食');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` tinyint(4) NULL DEFAULT 3,
  `signature` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `openid`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '1111', '曾日闽', '110', 1, '1111111', 'https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg', '2023-12-09 12:21:23', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (2, '11111', '11', '111', 1, '23232323232323', 'https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg', '2023-11-29 15:10:20', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (3, 'jiangying', '小茄', '119', 1, '1111111111111', 'https://kab.oss-cn-beijing.aliyuncs.com/5a0859c3-b10b-4bbe-8708-da0da0087352.png', '2023-12-10 19:29:32', '827ccb0eea8a706c4c34a16891f84e7b');
INSERT INTO `users` VALUES (4, '111111', '大学生一枚', NULL, 3, '121212121', 'https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg', '2023-12-06 14:36:35', '2dbd302073f3c9f0fe21ec5e5f0a612c');
INSERT INTO `users` VALUES (5, '123456', '大学生一枚', NULL, 3, NULL, 'https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg', '2023-12-06 14:36:35', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `users` VALUES (6, 'admin', '大学生一枚', NULL, 3, NULL, 'https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg', '2023-12-06 14:36:36', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (7, 'WX111', '大学生一枚', NULL, 3, NULL, 'https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg', '2023-12-06 14:36:39', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (8, 'XY1234', '一小池勺', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-18f85cb1f65dae506e889473d6a243fe_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (9, 'TY1234', '不问归期', NULL, 3, NULL, 'https://pic1.zhimg.com/v2-826c394c8778dcda5a8229ec089cf4c0_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (10, 'BY1234', 'Pationt', NULL, 3, NULL, 'https://pic4.zhimg.com/v2-c447d691c1011bc60bc40d1d47ce92b7_r.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (11, 'HY1234', '石匠', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-939e88045f0c8f57903894d034c07ae9_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (12, 'UY1234', '石佛', NULL, 3, NULL, 'https://pic1.zhimg.com/v2-0051dad77dcbe85d8c51e148387a3424_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (13, 'WE1234', '小葛', NULL, 3, NULL, 'https://pic4.zhimg.com/v2-6086e8b250ca4f72660224095f586d23_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (14, '1RT123', 'BuiBui', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-4541ed04cfb511178983adeb92ce4761_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (15, 'EW2344', '叮咚', NULL, 3, NULL, 'https://pic1.zhimg.com/v2-3d3d7ff9f5a7257e6da0993898e36658_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (16, 'EE2122', '啦啦啦', NULL, 3, NULL, 'https://pic4.zhimg.com/v2-8c64eb96b0fc7123d6095afa626100c3_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (17, 'QV2111', '嗨嗨嗨', NULL, 3, NULL, 'https://pic4.zhimg.com/v2-d59eada66e024dd2cb4b125cc59eef2f_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (18, 'WQ1222', '翌年', NULL, 3, NULL, 'https://pic4.zhimg.com/v2-236b954b4a32037fe8e960c2b320453b_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (19, '4GE222', 'CTF', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-940b421f6752422adbbe014c8703aa16_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (20, '1222QQ', '小九', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-275631c65c72c45741d0c9f13b971322_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (21, '112WWW', '奥里奥', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-c23f1dcec1c1e8a8e60473d513204a8a_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (22, '2312QQ', '释放', NULL, 3, NULL, 'https://pic1.zhimg.com/v2-2885de72fb37d089cf524d87e0e53c88_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (23, '12E2SS', '传递', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-16655b894339e01414f2610449d23c11_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (24, '2211SS', '风啊', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-4044814e15c7f57c2d59fdbe4a4c8919_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (25, '1234RR', '贰分', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-1f23b98b457f2ad0bb5797077f94e382_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (26, '1312DD', '韶光', NULL, 3, NULL, 'https://pic4.zhimg.com/v2-7c1fdd8b4c34e69501ebae6747ba9ca3_r.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (27, '21wwWW', '胡克', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-80d5b5633288dd25135debe758d68a59_r.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (28, 'WE2XD1', '贺今朝', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-8707217da844217fe136c65f62329e8e_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (29, 'WEQSC1', '祝今宵', NULL, 3, NULL, 'https://pic1.zhimg.com/v2-3713ba65f1665740126eb89b3528475c_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (30, 'DER234', '晴天和雨天', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-1604a3deb195d19223d22b711f5b5f5e_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (31, 'WQEQ22', '他依旧很暖', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-3a7ee880e6c56a607cce75ec06b49c71_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (32, '2321RR', '威威', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-de348f55d64a843a7315db4f7bcc4eaa_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (33, '45GE23', '为期', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-c32045b84e516b187b207de900208e96_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (34, '34ERER', '萨达', NULL, 3, NULL, 'https://pic1.zhimg.com/v2-1b5f9d40bb982a6a01158c742073403c_r.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (35, '342W22', '风格', NULL, 3, NULL, 'https://pic1.zhimg.com/v2-f309acdc9d11df2080807f854cfad568_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (36, '121WEE', '大风歌', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-ee6f7a0d872a4a7f26ae6905e42e5be2_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (37, 'RER323', '马云背后的女人', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-c8d95fba15609a3d997b9110454ce2d2_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (38, '3432RE', '煮雪', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-f7dfa55386da27ced015db3ac821a6a5_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (39, '343ERE', '海岸', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-755d45c7346ff83eebd5d472d1926a21_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (40, '221WER', '霓虹', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-1cf344244c1edddd68fa260e7c846705_r.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (41, 'SDASD1', '森林', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-f24272246544b44b48b548274f41c37d_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (42, 'QWEQWE', '半岛', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-55f44c4a5730ca9fa9ed63a5a9e843f2_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (43, 'SDW222', '潮汐', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-0c9be4443d3c03cc60df3a36e8463816_r.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (44, '12WEE2', '记忆', NULL, 3, NULL, 'https://pic2.zhimg.com/v2-1bb1a03a15f6339b1887be34d5a0f015_r.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (45, '321255', '雾霭', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-b2f605c934e67f5110bcf1df5ff34bc6_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (46, '3423GDG', '出逃', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-5117e8ce7b1e53110fb1c87f4d965abe_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (47, 'GDG323', '星河?', NULL, 3, NULL, 'https://pic1.zhimg.com/v2-969a17071176a643b69bc08fb3a4bda4_r.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (48, 'HTRT4', '三段', NULL, 3, NULL, 'https://pic3.zhimg.com/v2-c8d95fba15609a3d997b9110454ce2d2_b.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (49, '456J56', '十大', NULL, 3, NULL, 'https://pica.zhimg.com/80/v2-a61b783d8e55a19fd375d8d7598971bc_720w.webp', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (50, '453HY', '生动', NULL, 3, NULL, 'https://pic2.zhimg.com/80/v2-b899b81979d9199b1a93624ffa4dd599_720w.webp', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (51, '34ERTE', '阿斯顿', NULL, 3, NULL, 'https://pic1.zhimg.com/80/v2-ac637c7ae45d7c85b80d35d14280d42e_720w.webp', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (52, '45343', '符合', NULL, 3, NULL, 'https://pic4.zhimg.com/80/v2-3ba86816057c5cda4d96e309d86b31d5_720w.webp', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (53, '23532', '接收', NULL, 3, NULL, 'https://pic4.zhimg.com/80/v2-2b43857ffaed9b4be76c8bd4209cf9c3_720w.webp', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (54, '45435GF', 'YI', NULL, 3, NULL, 'https://pic4.zhimg.com/80/v2-d5cde51e8e43d88f37e1a1ab1df69981_720w.webp', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (55, '453GGF', '而且', NULL, 3, NULL, 'https://pic4.zhimg.com/80/v2-cefdfeaafd72529347838beff6d65dc3_720w.webp', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (56, '343RET', '委屈', NULL, 3, NULL, 'https://pic4.zhimg.com/v2-699bb493592f95064ef3ef76e93b1363_r.jpg', '2023-12-06 15:34:41', '123456');
INSERT INTO `users` VALUES (57, 'xxs', '大学生一枚', NULL, 3, NULL, 'https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg', '2023-12-08 21:34:31', 'e10adc3949ba59abbe56e057f20f883e');

SET FOREIGN_KEY_CHECKS = 1;
