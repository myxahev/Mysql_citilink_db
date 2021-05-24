#
# TABLE STRUCTURE FOR: catalogs
#

DROP TABLE IF EXISTS `catalogs`;

CREATE TABLE `catalogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название раздела',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Разделы интернет-магазина';

INSERT INTO catalogs VALUES
	(1, 0, 'Бытовая техника'), (2, 0, 'Смартфоны и гаджеты'), (3, 0, 'ТВ и Развлечения'), (4, 0, 'Компьютеры, комплектующие, периферия'), 
	(5, 0, 'Офис и сеть'), (6, 0, 'Аксессуары'), (7, 0, 'Автотовары'), (8, 0, 'Инструменты'), 
	(9, 1, 'Микроволновые печи'), (10, 1, 'Соковыжималки'), (11, 1, 'Холодильники'), (12, 2, 'Смартфоны'), (13, 2, 'Смарт-часы'),
	(14, 2, 'Планшеты'), (15, 3, 'Телевизоры'), (16, 3, 'Игровые приставки'), (17, 3, 'Видеоигры'), (18, 4, 'Ноутбуки'),
	(19, 4, 'Процессоры'), (20, 4, 'Мониторы'), (21, 5, 'Принтеры'), (22, 5, 'Маршрутизаторы'), (23, 5, 'Видеонаблюдение'),
	(24, 6, 'Чехлы для смартфонов'), (25, 6, 'Гарнитуры'), (26, 6, 'Флешки'), (27, 7, 'Видеорегистраторы'), (28, 7, 'Навигаторы'),
	(29, 7, 'Автомагнитолы'), (30, 8, 'Наборы электроинструментов'), (31, 8, 'Измерительные инструменты'), (32, 8, 'Мультитулы');

#
# TABLE STRUCTURE FOR: discounts
#

DROP TABLE IF EXISTS `discounts`;

CREATE TABLE `discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `product_id` int(10) unsigned NOT NULL,
  `discount` decimal(11,1) unsigned DEFAULT NULL COMMENT 'Величина скидки от 0.0 до 1.0',
  `started_at` datetime DEFAULT NULL COMMENT 'Начало действия скидки',
  `finished_at` datetime DEFAULT NULL COMMENT 'Конец действия скидки',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Скидки';

INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (1, 8, '45.0', '2020-08-21 22:36:25', '2020-06-21 03:40:39', '2018-12-29 02:30:42', '2019-04-05 12:43:58');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (2, 12, '49.0', '2021-05-23 02:34:40', '2020-07-26 01:19:00', '2018-04-28 09:36:17', '2018-06-15 22:52:14');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (3, 1, '24.0', '2021-03-30 10:13:17', '2020-07-10 03:34:52', '2019-03-31 09:53:42', '2020-01-26 00:03:07');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (4, 82, '31.0', '2020-12-17 03:33:07', '2020-09-21 08:23:35', '2014-07-31 01:45:15', '2014-08-09 00:44:44');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (5, 76, '36.0', '2021-03-22 00:01:42', '2020-09-03 12:53:19', '2019-02-19 16:48:34', '2020-05-30 16:43:57');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (6, 69, '42.0', '2021-04-17 05:11:11', '2021-03-04 15:17:04', '2018-11-10 05:36:05', '2016-06-29 00:32:27');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (7, 12, '19.0', '2021-05-12 13:53:19', '2020-08-18 21:02:48', '2012-01-05 17:29:04', '2011-07-19 03:54:28');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (8, 78, '20.0', '2021-01-14 00:41:53', '2020-05-30 20:10:53', '2016-08-13 04:50:12', '2013-06-22 16:26:38');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (9, 3, '32.0', '2020-11-12 22:12:36', '2020-05-24 14:29:41', '2019-05-13 20:43:34', '2021-02-24 06:01:04');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (10, 24, '49.0', '2020-08-10 22:27:48', '2020-12-25 14:37:03', '2016-04-19 17:14:45', '2020-10-06 13:03:12');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (11, 91, '31.0', '2021-05-01 14:05:36', '2021-02-27 21:46:06', '2020-06-08 02:49:08', '2011-08-04 15:44:46');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (12, 17, '29.0', '2020-09-19 10:06:14', '2020-12-21 20:05:10', '2018-01-03 13:40:37', '2015-01-12 13:09:55');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (13, 54, '15.0', '2020-07-22 18:01:36', '2021-01-14 11:46:33', '2016-06-08 10:15:07', '2020-09-18 20:49:45');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (14, 62, '44.0', '2020-06-07 00:02:14', '2020-06-05 13:51:24', '2019-07-24 04:30:38', '2015-05-16 19:10:45');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (15, 90, '36.0', '2020-09-11 08:57:34', '2021-01-11 08:38:36', '2018-07-03 13:12:17', '2016-09-05 16:39:18');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (16, 38, '20.0', '2020-09-12 01:55:08', '2020-12-05 03:57:37', '2018-02-22 14:59:37', '2018-02-21 13:49:25');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (17, 41, '38.0', '2021-05-17 05:36:55', '2020-12-17 12:09:58', '2013-05-17 01:44:12', '2013-08-12 18:11:54');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (18, 51, '39.0', '2021-02-07 00:39:36', '2021-03-15 15:16:22', '2015-02-28 06:35:49', '2018-03-02 10:04:59');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (19, 56, '47.0', '2020-06-19 18:06:42', '2020-08-31 09:57:46', '2013-04-19 02:43:17', '2020-02-22 02:29:20');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (20, 93, '42.0', '2020-08-08 07:13:19', '2020-12-04 09:01:59', '2018-08-13 06:48:32', '2017-05-02 14:36:08');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (21, 10, '28.0', '2021-03-04 13:55:04', '2020-09-22 02:25:31', '2015-03-28 20:47:41', '2015-11-30 15:21:49');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (22, 25, '46.0', '2020-08-30 20:46:02', '2021-04-03 01:50:07', '2016-09-30 12:30:28', '2014-10-20 10:03:44');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (23, 46, '21.0', '2020-10-04 15:31:51', '2020-09-04 12:26:29', '2014-06-13 11:23:32', '2016-07-23 03:09:37');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (24, 81, '28.0', '2021-05-22 22:32:06', '2020-09-24 00:04:32', '2011-11-24 04:04:02', '2016-12-31 06:57:38');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (25, 65, '7.0', '2020-10-20 14:13:40', '2021-01-25 06:26:03', '2012-12-25 20:02:55', '2016-09-07 12:07:08');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (26, 10, '27.0', '2020-08-03 14:10:42', '2020-12-26 15:05:51', '2014-09-18 08:38:50', '2014-08-10 16:59:04');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (27, 64, '12.0', '2020-09-19 17:53:41', '2021-05-07 10:03:32', '2017-09-23 19:31:25', '2017-02-04 11:53:23');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (28, 11, '26.0', '2020-11-25 10:32:47', '2021-02-22 16:09:52', '2015-12-17 07:26:24', '2020-12-24 11:43:57');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (29, 100, '19.0', '2020-09-06 07:21:57', '2020-10-17 00:57:44', '2014-01-12 00:34:50', '2012-09-26 08:25:37');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (30, 83, '34.0', '2020-08-18 18:46:28', '2021-01-03 00:15:45', '2017-01-16 04:47:51', '2020-11-14 03:34:38');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (31, 3, '38.0', '2021-03-08 05:32:26', '2020-08-20 12:09:10', '2020-03-08 01:31:49', '2017-08-02 21:56:27');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (32, 35, '6.0', '2020-08-03 19:52:21', '2021-03-18 21:49:14', '2017-04-05 12:59:07', '2020-05-09 12:41:12');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (33, 92, '9.0', '2020-08-13 01:12:30', '2021-02-25 05:20:03', '2016-12-19 09:33:26', '2013-10-10 20:18:48');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (34, 63, '29.0', '2020-06-07 21:03:47', '2021-02-24 19:51:35', '2016-09-03 11:35:02', '2016-01-28 07:00:25');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (35, 53, '13.0', '2021-01-11 21:06:56', '2020-09-07 07:51:14', '2020-04-06 17:11:35', '2016-10-21 20:27:33');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (36, 74, '39.0', '2020-09-27 03:52:41', '2020-12-29 22:40:18', '2011-12-16 09:36:30', '2021-03-16 00:51:15');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (37, 10, '40.0', '2020-07-12 04:38:13', '2020-09-06 16:17:49', '2015-10-30 14:29:32', '2013-09-10 22:56:01');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (38, 48, '28.0', '2020-09-13 16:24:50', '2020-12-28 14:31:28', '2013-03-12 17:16:26', '2015-02-25 23:17:13');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (39, 95, '22.0', '2021-02-08 04:39:59', '2021-01-12 20:25:52', '2016-01-12 08:03:50', '2011-09-01 19:31:52');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (40, 34, '17.0', '2020-10-03 18:10:12', '2020-06-22 15:41:33', '2012-08-08 17:57:39', '2018-10-30 22:39:51');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (41, 69, '44.0', '2021-05-06 12:32:42', '2020-07-26 22:50:42', '2017-05-05 06:30:43', '2019-01-09 23:08:01');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (42, 47, '40.0', '2020-08-27 14:57:41', '2021-04-18 10:13:24', '2014-07-30 12:44:09', '2017-12-01 09:57:28');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (43, 72, '36.0', '2021-01-09 13:39:10', '2020-12-21 22:15:39', '2014-05-03 16:07:16', '2013-06-05 10:00:07');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (44, 77, '12.0', '2021-03-03 15:15:55', '2021-03-07 10:17:26', '2017-09-16 19:11:12', '2017-07-22 05:43:51');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (45, 66, '19.0', '2021-02-24 23:17:02', '2020-12-25 05:58:59', '2014-01-27 19:15:57', '2015-10-04 21:23:20');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (46, 1, '15.0', '2020-08-04 02:05:55', '2021-05-14 08:51:05', '2017-02-22 20:45:19', '2018-10-20 08:28:14');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (47, 62, '49.0', '2021-01-04 13:31:08', '2020-12-09 13:18:06', '2012-12-09 01:43:52', '2019-01-14 06:04:04');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (48, 93, '4.0', '2021-05-17 01:28:21', '2021-04-05 16:40:11', '2011-07-31 20:14:24', '2017-03-20 17:18:51');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (49, 39, '17.0', '2020-11-06 00:37:07', '2020-11-20 10:34:27', '2019-03-24 15:17:51', '2011-09-21 22:43:29');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES (50, 99, '11.0', '2020-08-29 23:21:13', '2020-08-19 11:13:26', '2011-11-07 00:00:41', '2017-02-10 03:56:29');


#
# TABLE STRUCTURE FOR: markdowns
#

DROP TABLE IF EXISTS `markdowns`;

CREATE TABLE `markdowns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `product_id` int(10) unsigned NOT NULL,
  `price` decimal(11,2) NOT NULL COMMENT 'Новая цена',
  `reason` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Причина уценки',
  `shop_id` int(20) unsigned NOT NULL COMMENT 'Магазин',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Уцененные товары';

INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (1, 23, '51803.00', 'eligendi', 1);
INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (2, 3, '44390.00', 'dolore', 2);
INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (3, 43, '25821.00', 'est', 3);
INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (4, 6, '20842.00', 'ea', 4);
INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (5, 94, '20741.00', 'amet', 5);
INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (6, 56, '13541.00', 'impedit', 6);
INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (7, 11, '17963.00', 'tempora', 7);
INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (8, 19, '1112.00', 'provident', 8);
INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (9, 10, '12978.00', 'ut', 9);
INSERT INTO `markdowns` (`id`, `product_id`, `price`, `reason`, `shop_id`) VALUES (10, 25, '18202.00', 'veritatis', 10);


#
# TABLE STRUCTURE FOR: opinions
#

DROP TABLE IF EXISTS `opinions`;

CREATE TABLE `opinions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `mark` enum('1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Оценка',
  `description` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Отзыв',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Отзывы';

INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (1, 1, 71, '4', 'Sit mollitia rerum nisi labore quasi rerum et. Ad in sit ipsum. A consequatur accusamus eligendi ex omnis.', '2018-05-07 09:58:16', '2012-12-16 04:04:41');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (2, 2, 11, '3', 'Optio perspiciatis et et cumque et quos. Debitis tempore et sit voluptas. Aliquid exercitationem quas molestias est placeat qui iusto. Placeat eaque est eos quo temporibus alias.', '2015-04-22 07:37:24', '2014-09-16 12:14:51');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (3, 3, 39, '5', 'Asperiores aut non omnis nisi. Officia blanditiis excepturi eum. Voluptatem voluptatibus et veritatis tempora labore dicta possimus. Id enim sed ut fuga sint iste.', '2017-04-25 04:07:40', '2020-11-10 13:47:26');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (4, 4, 93, '1', 'Laudantium enim dignissimos autem ut. Delectus at corporis quis voluptatibus.', '2017-04-08 20:28:04', '2014-09-04 19:05:29');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (5, 5, 22, '2', 'Animi quam perspiciatis non odio. Nulla repellat perspiciatis quod voluptas quia quasi. Eos alias eius est dolore expedita.', '2012-01-04 10:05:37', '2014-06-30 22:55:30');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (6, 6, 58, '2', 'Minima unde laboriosam et autem. Dicta sint iure tenetur sed.', '2021-03-23 10:04:43', '2019-01-30 20:46:56');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (7, 7, 4, '4', 'Adipisci temporibus eum tenetur quam atque voluptatum ducimus. Quia ad qui aut et corporis. Explicabo id velit blanditiis ad sit. Aliquid saepe saepe vitae sunt.', '2015-07-05 07:19:36', '2012-07-19 00:36:17');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (8, 8, 36, '1', 'Inventore ut sit ut sint ut beatae cupiditate. At corrupti sequi ipsa. Blanditiis est omnis qui id quia eos veritatis asperiores. Recusandae quisquam officia tenetur itaque.', '2013-03-25 16:24:15', '2017-04-21 00:34:01');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (9, 9, 68, '5', 'Dolores et omnis amet quia error. Ipsa ex eum enim nulla quibusdam et qui. Sit sit quis et iure eos soluta rerum. Hic aliquam voluptatem rerum ullam ipsa repudiandae. Similique eum incidunt perferendis aliquid harum minima.', '2013-09-18 21:26:17', '2011-06-18 05:58:26');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (10, 10, 32, '1', 'Vel velit aut temporibus consequatur quo voluptatum sint. Atque harum laborum officia qui rerum accusantium ab.', '2020-05-31 01:46:22', '2016-08-30 09:29:57');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (11, 11, 12, '5', 'Assumenda quidem dolorum hic. Odio nisi dicta dolorem id architecto. Dolor voluptas inventore et at est quia veritatis. Neque sapiente tenetur voluptate temporibus eos.', '2018-12-26 19:25:46', '2014-10-22 22:25:37');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (12, 12, 71, '4', 'Vel qui qui quas aut doloremque. Aut quisquam eum soluta ex et vitae laboriosam. Ipsum est aliquid vitae non expedita est. Minus ut et alias nulla iste repellat.', '2018-07-28 21:33:13', '2015-05-23 03:11:57');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (13, 13, 42, '5', 'Sunt sit dolore tenetur tempora velit qui commodi. Rem molestiae rem aut minima quo voluptas dolorum. In ullam esse mollitia quia. At ex cupiditate exercitationem repudiandae quos perferendis veniam accusantium.', '2021-02-09 17:51:16', '2020-02-20 02:09:44');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (14, 14, 96, '3', 'Adipisci quam quo molestiae incidunt commodi deserunt quis omnis. Commodi aut corrupti est autem porro ut. Praesentium veritatis nihil aut dolorem.', '2014-08-07 12:04:32', '2015-07-30 15:38:05');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (15, 15, 20, '2', 'Quod quia occaecati sit et. Voluptatibus quia dolorum minima neque aliquam non recusandae. Laudantium excepturi sapiente neque non inventore qui vero.', '2015-02-25 21:31:46', '2017-10-26 21:58:10');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (16, 16, 88, '1', 'Eum in quia ratione. Tempora dignissimos in quia assumenda magni ut eos. Esse molestiae nesciunt et culpa tempore id consequatur. Assumenda error tempora quia qui facilis.', '2017-09-26 20:12:18', '2015-03-07 15:20:01');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (17, 17, 91, '1', 'Reprehenderit consequuntur at illum cumque ad consequuntur. Quas omnis debitis odit voluptas dignissimos sunt nulla. Impedit et reprehenderit voluptatum eligendi nesciunt. Et sed libero et aut et.', '2018-02-08 09:53:24', '2012-03-31 06:14:47');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (18, 18, 48, '4', 'Labore voluptas voluptate consequuntur distinctio quia adipisci sunt. Ducimus neque dolores necessitatibus tempora provident quae eveniet et. Rerum qui et ad autem excepturi.', '2014-05-23 17:52:11', '2016-10-08 09:26:01');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (19, 19, 95, '1', 'Pariatur eaque nemo et ipsa qui rerum illo. Consequatur vitae consequuntur sunt est voluptates autem praesentium. Tempore quos repellat voluptatem quidem qui doloribus voluptates. Dignissimos necessitatibus impedit enim perspiciatis est maxime culpa.', '2013-04-28 14:20:21', '2019-04-07 21:46:43');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (20, 20, 53, '2', 'Consequatur est fuga veritatis rerum cum natus architecto tenetur. Suscipit in ipsam molestiae omnis animi vero. Dicta voluptate assumenda asperiores quod facere vitae nam. Voluptates nisi possimus alias ut laboriosam reprehenderit deleniti. Iure provident recusandae quia minima.', '2015-01-07 09:43:01', '2019-12-08 10:22:34');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (21, 21, 1, '5', 'Sit voluptatem sit aut perspiciatis voluptatem dignissimos voluptas. Harum qui sed fugit et consequatur harum. Labore qui aut delectus voluptatem eius quod fuga doloremque.', '2020-11-06 00:29:11', '2015-07-23 07:59:37');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (22, 22, 25, '2', 'Quia iste amet odit officiis beatae suscipit. Impedit sapiente amet laborum ipsam.', '2015-03-14 02:04:07', '2018-05-14 21:24:33');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (23, 23, 76, '2', 'Repellendus veritatis perferendis qui a reprehenderit saepe qui beatae. Ea voluptatem reiciendis magni assumenda unde incidunt. Facere possimus ipsum suscipit illum cupiditate. Et rerum laborum ut vero dolores corporis temporibus voluptatem. Impedit non et modi quia optio suscipit.', '2015-08-24 03:39:30', '2014-03-17 11:39:44');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (24, 24, 84, '3', 'Est sequi culpa perferendis quia iure sunt. Earum quis maxime autem molestias id laboriosam quis. Esse et nisi non.', '2011-06-04 13:48:02', '2015-02-02 13:04:10');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (25, 25, 55, '4', 'At quam dolor optio rem. Debitis laudantium sit quas aliquid nemo. Suscipit et debitis iure.', '2011-11-22 09:16:39', '2013-01-24 04:47:43');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (26, 26, 60, '5', 'Nam dolorem magni et earum quae. Fuga totam praesentium odio veniam ut accusamus occaecati. Voluptate consequatur dolorum suscipit vel. Exercitationem laboriosam eaque aspernatur deserunt est maiores dolorem. Et nam sequi facilis dolore.', '2013-10-08 16:08:06', '2014-02-09 18:15:08');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (27, 27, 15, '4', 'At error sequi eos sunt itaque non aut. Quia maxime sint omnis dolor ut amet. Facere cumque enim velit voluptatem sit adipisci natus ad. Corrupti minus at in et et.', '2015-01-13 19:29:29', '2012-12-21 19:45:56');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (28, 28, 54, '3', 'Cum molestiae distinctio et et eligendi qui. Non et provident et qui accusamus necessitatibus. Quo vel totam sed assumenda veniam et.', '2013-09-26 13:29:26', '2020-11-18 18:43:32');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (29, 29, 11, '5', 'Officiis neque et quos omnis. Accusamus molestias accusamus repellat quae. Aliquam et non quia illum. Voluptas assumenda repellendus provident totam.', '2018-01-29 13:04:55', '2014-02-12 12:36:17');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (30, 30, 18, '2', 'Et aliquid odio et error. Maxime qui dolorum nihil mollitia. Neque consequuntur vitae iusto repellat ut. Illo repellat asperiores accusamus soluta ratione aut praesentium illo.', '2020-11-08 21:06:00', '2021-01-01 05:14:42');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (31, 31, 59, '1', 'Iusto non et sit provident recusandae asperiores libero. Earum a doloribus fugit inventore ex harum reiciendis.', '2014-10-13 22:49:32', '2013-05-29 17:58:35');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (32, 32, 70, '5', 'Similique aut aut dolores itaque error saepe aut. Dicta maiores quisquam ullam ipsam voluptas natus ut adipisci. Accusamus ut consequatur molestiae ea dolorem incidunt. Praesentium et repellat vel suscipit.', '2016-01-30 04:38:21', '2018-05-30 05:34:25');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (33, 33, 68, '1', 'Fugiat quia recusandae nobis delectus consequuntur tenetur corrupti perspiciatis. Qui voluptatem magnam odit aliquam quidem est. Repellendus eligendi et ut quod.', '2013-09-21 08:24:53', '2018-12-17 10:23:45');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (34, 34, 73, '4', 'Porro corrupti doloribus beatae inventore eos. Sed laudantium laborum rerum. Et dolore officiis dolores similique. Dolorem architecto aliquam quas blanditiis beatae expedita enim.', '2019-02-04 12:58:45', '2015-03-20 13:24:44');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (35, 35, 90, '1', 'Hic cumque labore qui et cupiditate tempore quia. Quis non repellat minus eligendi. Non dicta ab et amet.', '2013-06-22 03:08:28', '2012-12-11 17:43:15');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (36, 36, 72, '3', 'Praesentium accusantium et et ut incidunt assumenda ab. Et eos sunt dolorum delectus voluptas. Fugit dolor velit et maiores aut.', '2014-05-17 17:03:44', '2017-01-09 06:50:41');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (37, 37, 16, '3', 'A perspiciatis ut et voluptatem et. Facilis voluptatem omnis quasi sed. Quaerat magni qui qui enim. Incidunt excepturi sed rerum eos libero voluptate sint.', '2012-08-21 23:15:10', '2019-02-21 18:46:24');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (38, 38, 19, '1', 'Officia quasi quae eligendi harum sint aliquid. Incidunt ea et soluta unde est veritatis sequi dolor. Voluptas aut deleniti omnis sed in.', '2013-05-04 04:13:49', '2020-05-03 16:39:53');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (39, 39, 78, '1', 'Porro cupiditate iste sit non neque. Minima accusantium maxime iure eaque qui vitae. Iste maxime commodi neque voluptatibus perferendis placeat magnam.', '2011-06-03 18:06:04', '2013-08-15 06:45:52');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (40, 40, 21, '4', 'Officia veniam sint et minima. Voluptas quasi consequuntur libero quo at. Minima labore provident velit et. Facere maxime ea velit deleniti animi.', '2020-01-30 20:40:41', '2012-05-20 16:46:31');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (41, 41, 51, '2', 'Quia ut rem accusantium dolor est. Voluptatem est velit reprehenderit voluptas rerum dolor. Numquam repellendus voluptas sint repudiandae. Esse sit et rerum quod doloremque ipsa ut.', '2018-02-04 14:41:03', '2012-06-13 10:41:45');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (42, 42, 43, '3', 'In reiciendis quis quas harum est enim. Corporis cupiditate occaecati quae sed. Nesciunt asperiores officia fuga inventore. Qui esse est dolores iure quia a perferendis. Omnis eum incidunt aliquam et.', '2016-03-06 17:00:06', '2012-03-18 23:30:09');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (43, 43, 49, '2', 'Et rerum facilis mollitia molestias ipsum natus. Error saepe qui velit corrupti. Sit sit voluptatem velit libero rerum. Dolorem modi illum facilis commodi sit. Voluptatum qui sit sunt voluptatem.', '2012-02-29 08:48:34', '2018-11-03 04:43:35');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (44, 44, 52, '5', 'Sapiente qui qui aut pariatur nam qui. Inventore eveniet nihil aut voluptatem. Numquam minima rerum illo. Suscipit ipsam minima consectetur placeat quisquam et ut.', '2013-09-24 16:58:16', '2017-03-19 01:46:58');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (45, 45, 41, '5', 'Quasi iure cum et in impedit dolore. Nam nobis nihil dolores corporis. Quo aliquam consequatur corrupti consequatur quas. Optio sit possimus doloribus impedit dolor.', '2015-09-04 06:30:58', '2011-06-09 07:59:13');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (46, 46, 52, '3', 'Doloribus repellendus provident corrupti eos. Libero qui dignissimos et sit in. Velit assumenda dolores et corporis voluptatibus velit autem aliquid. Dolorum minus ut odit dolorem quia numquam.', '2012-02-09 21:57:15', '2013-11-01 15:58:06');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (47, 47, 5, '2', 'Qui dolor ea incidunt sint est. At omnis et dolorem quia beatae eos natus. Maxime fugit sint molestiae non quasi ullam id.', '2014-10-05 11:42:35', '2014-04-03 06:19:02');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (48, 48, 70, '2', 'Odit voluptas porro esse iure. Repellat amet suscipit officia ipsa enim. Temporibus iusto inventore unde ab est sed tenetur. Ea dolorem sit architecto et enim.', '2012-11-15 13:02:34', '2019-05-24 12:40:49');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (49, 49, 67, '5', 'Itaque est reprehenderit recusandae doloremque. Sequi voluptas et qui itaque fuga beatae error. Nemo velit quo occaecati itaque aut velit ab.', '2012-03-02 07:32:02', '2019-08-09 14:58:34');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (50, 50, 38, '4', 'Qui ea nostrum at. Quia adipisci quasi provident culpa sunt aut. Fugit iusto voluptatem et voluptas consectetur dolores dolorum.', '2015-12-20 10:30:09', '2018-06-24 17:02:39');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (51, 51, 100, '5', 'Totam ut ullam assumenda. Labore vitae sunt voluptatem temporibus temporibus. Saepe eius neque saepe maiores autem temporibus. Sit necessitatibus ipsum iure aut sint sed.', '2011-05-29 03:37:59', '2016-12-13 15:50:19');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (52, 52, 83, '1', 'Mollitia ipsum enim repellat voluptatem et deleniti est. Placeat ut corrupti tenetur sint. Tempora nobis ullam enim delectus laborum. Non error magnam inventore ad voluptas laboriosam repellat.', '2012-12-21 02:17:59', '2017-03-01 01:58:33');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (53, 53, 20, '5', 'Velit possimus esse ea ratione quia asperiores veniam aut. Nam quia sed ipsam nobis quae. Quidem quis nisi aut eius provident. Laboriosam et ut exercitationem similique.', '2011-12-21 12:31:21', '2021-05-12 13:53:02');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (54, 54, 45, '4', 'Veritatis suscipit enim aut. Dolore blanditiis recusandae est alias et. Architecto quia odio nihil illum non eveniet.', '2021-01-19 22:34:41', '2013-01-09 15:04:10');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (55, 55, 31, '2', 'Delectus voluptatibus inventore voluptatibus ut est aspernatur quas et. Quisquam in et pariatur assumenda eligendi. Qui amet eligendi recusandae laudantium dolorem error numquam. Voluptatem consequuntur nulla autem blanditiis aut aut beatae aut.', '2018-07-15 08:41:12', '2019-01-19 03:56:17');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (56, 56, 59, '2', 'Consequatur harum dolorum quia reiciendis asperiores. Adipisci dicta at eveniet omnis culpa qui. Qui at ipsam est officia.', '2016-03-09 23:53:15', '2018-11-26 16:40:29');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (57, 57, 5, '4', 'Et maiores sit modi modi eaque debitis et. Hic consequatur provident eum hic enim molestiae nemo. Et occaecati recusandae atque aut. Molestias hic modi ut labore ea quaerat tempora.', '2011-11-12 20:16:16', '2013-05-03 14:04:07');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (58, 58, 68, '1', 'Qui qui facere aliquam dolorum molestiae. Ipsum voluptatum dignissimos et velit. Corporis esse quae modi amet. Minima nisi ut soluta magnam est.', '2011-11-07 16:02:02', '2016-04-04 05:51:37');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (59, 59, 42, '3', 'Praesentium nisi qui aspernatur sint necessitatibus modi. Quasi numquam harum adipisci deserunt magnam voluptatem. Mollitia ut itaque ipsum.', '2019-06-27 06:20:33', '2013-04-03 19:36:40');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (60, 60, 22, '4', 'Est rerum vitae ex eos voluptatem earum ex dicta. Similique quod voluptatem provident vel libero. Delectus sit error non magnam et soluta.', '2021-01-31 02:02:07', '2016-04-01 15:17:08');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (61, 61, 36, '4', 'Asperiores inventore doloribus suscipit repellendus qui consequatur in. Ipsum sunt cupiditate esse dolor impedit. Ratione voluptas autem qui repellat voluptatum natus. Possimus eos similique in officiis eos debitis.', '2015-02-16 12:03:48', '2013-10-16 23:54:02');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (62, 62, 71, '4', 'Voluptatum sit quam veritatis aliquid et nam enim. Illo sit sit voluptatum laborum et nemo laudantium praesentium. Et repudiandae reprehenderit ut eaque ut earum maxime. In iusto aut rerum sed.', '2015-05-11 15:35:09', '2018-09-26 02:14:01');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (63, 63, 60, '4', 'Voluptatem ut praesentium nam et. Consequuntur laudantium minus impedit et amet recusandae hic. Possimus doloribus optio ea.', '2019-08-15 08:34:40', '2016-08-29 03:23:24');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (64, 64, 52, '4', 'Eum sit architecto nostrum possimus officiis ipsum ut sapiente. Debitis a et pariatur dolor atque. Velit eligendi sit ipsum.', '2012-06-10 21:11:40', '2013-09-25 06:46:25');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (65, 65, 78, '2', 'Laudantium esse officiis quis vero aut et molestias corporis. Est nesciunt omnis doloremque doloribus ea et dolor est.', '2014-05-26 02:37:12', '2012-04-05 12:04:07');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (66, 66, 12, '2', 'Reiciendis suscipit ea harum ut est. Ut molestiae quae autem aliquam fuga consequatur quo. Distinctio aut id soluta id vel ipsam.', '2020-12-07 10:45:31', '2015-12-07 02:31:34');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (67, 67, 28, '1', 'Consequuntur sit et iusto voluptatem. Id qui dignissimos tempora. Eum minima odio debitis nostrum ut.', '2017-08-25 23:32:07', '2021-03-09 03:27:20');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (68, 68, 76, '1', 'Quae itaque eveniet quam rerum nisi enim quod. Modi et iure quaerat ea voluptas pariatur est reiciendis. Vitae culpa voluptatum voluptates qui.', '2018-08-02 00:15:34', '2019-11-08 12:18:23');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (69, 69, 6, '3', 'Tempore saepe doloremque quis omnis ut. Sunt doloribus temporibus possimus possimus esse iusto. Accusamus rerum a et adipisci laborum dolorum.', '2012-07-04 06:25:38', '2012-05-12 07:41:30');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (70, 70, 21, '3', 'Ut et fugiat dolorem molestiae qui. Distinctio sequi ipsum sed non. Explicabo nulla fuga accusantium et distinctio rerum non.', '2018-05-26 13:12:51', '2015-05-30 12:54:26');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (71, 71, 96, '3', 'Id error assumenda illum necessitatibus occaecati. Distinctio aut sunt rerum molestiae. Et quasi aperiam sequi et. Id exercitationem consectetur iste.', '2015-03-03 07:28:26', '2020-08-15 13:28:58');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (72, 72, 3, '1', 'Assumenda quod repellendus et. Sed reiciendis sit sequi iste repellendus. Labore molestiae assumenda placeat facilis.', '2015-04-06 09:58:06', '2011-07-22 11:48:04');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (73, 73, 32, '4', 'Sit porro quis voluptas sit sequi sequi voluptates. Consequatur quia beatae iusto est sunt.', '2013-07-25 11:38:41', '2021-04-07 13:58:51');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (74, 74, 41, '3', 'In maxime est distinctio quod placeat porro cumque. Voluptas provident sunt optio quibusdam impedit dolorem. Deserunt quod voluptatem perferendis cupiditate.', '2018-02-17 23:41:26', '2020-02-29 20:58:24');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (75, 75, 33, '4', 'Placeat velit sit provident sunt. Eos laboriosam cum sed cum. Aliquam reiciendis eius est sed sed soluta ipsam.', '2020-10-19 14:18:57', '2015-09-10 05:34:50');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (76, 76, 9, '1', 'Sed quia magni possimus incidunt adipisci. Officiis voluptatibus eaque quia voluptas. Incidunt est repellat ut vero eum vero. Est sunt optio velit et quia enim aut.', '2013-12-09 01:05:37', '2016-04-03 13:46:29');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (77, 77, 47, '5', 'Provident assumenda blanditiis occaecati eius accusantium quasi. Sapiente ut eos officiis quidem aut cum mollitia. Qui fugiat qui sint quidem itaque laudantium praesentium.', '2020-11-14 02:15:59', '2016-04-20 16:48:54');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (78, 78, 29, '1', 'Ex blanditiis velit voluptatem aut. Consectetur qui nisi ut amet dolores dolorem. Quod eos neque consequatur expedita distinctio cum unde dolore.', '2013-12-15 01:32:40', '2013-08-31 15:34:47');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (79, 79, 81, '4', 'Qui cupiditate est sit necessitatibus natus esse. Quae accusamus qui consequatur porro non omnis repellat. Adipisci minima rerum consectetur necessitatibus sed molestias. Voluptatem sint vel tenetur tenetur iusto minus esse repudiandae.', '2017-11-16 16:34:57', '2014-05-22 15:40:52');
INSERT INTO `opinions` (`id`, `user_id`, `product_id`, `mark`, `description`, `created_at`, `updated_at`) VALUES (80, 80, 56, '1', 'Nemo aut ullam repellendus reprehenderit sit eos qui. Asperiores sit omnis omnis optio asperiores corrupti. Non vel excepturi qui quia possimus et eos numquam. Sed facere veniam quo eius.', '2012-05-12 14:53:39', '2015-10-24 10:05:20');


#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Заказ пользователя',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Заказы';

INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (1, 86, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (2, 1, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (3, 21, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (4, 81, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (5, 22, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (6, 35, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (7, 76, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (8, 82, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (9, 38, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (10, 39, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (11, 62, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (12, 65, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (13, 96, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (14, 91, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (15, 82, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (16, 60, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (17, 14, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (18, 58, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (19, 58, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (20, 64, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (21, 59, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (22, 10, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (23, 54, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (24, 32, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (25, 69, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (26, 38, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (27, 57, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (28, 56, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (29, 24, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (30, 71, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (31, 82, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (32, 34, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (33, 69, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (34, 21, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (35, 99, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (36, 71, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (37, 70, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (38, 27, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (39, 31, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (40, 37, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (41, 36, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (42, 34, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (43, 79, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (44, 94, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (45, 37, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (46, 68, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (47, 92, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (48, 76, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (49, 80, '2021-05-24 07:14:56', '2021-05-24 07:14:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (50, 49, '2021-05-24 07:14:56', '2021-05-24 07:14:56');


#
# TABLE STRUCTURE FOR: orders_products
#

DROP TABLE IF EXISTS `orders_products`;

CREATE TABLE `orders_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `order_id` int(10) unsigned NOT NULL COMMENT '№ заказа',
  `product_id` int(10) unsigned NOT NULL COMMENT '№ товара',
  `quantity` int(10) unsigned DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Состав заказа';

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (1, 1, 15, 10, '2014-06-05 05:29:06', '2017-10-31 13:51:31');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (2, 2, 82, 19, '2021-01-25 15:16:27', '2013-11-21 18:32:52');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (3, 3, 23, 9, '2016-03-17 15:07:53', '2013-12-29 06:39:14');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (4, 4, 63, 17, '2015-03-13 01:40:03', '2013-10-01 10:43:09');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (5, 5, 41, 13, '2015-03-01 07:46:50', '2012-03-13 13:32:40');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (6, 6, 75, 13, '2015-04-14 01:27:02', '2017-03-16 03:45:59');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (7, 7, 53, 2, '2014-11-19 07:07:21', '2019-12-05 16:56:19');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (8, 8, 4, 12, '2017-05-31 21:20:22', '2016-12-18 07:55:32');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (9, 9, 26, 2, '2013-03-02 02:03:09', '2012-12-19 06:15:53');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (10, 10, 49, 17, '2013-08-18 00:44:33', '2018-12-24 13:42:26');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (11, 11, 12, 6, '2017-01-24 00:55:17', '2019-12-08 19:40:54');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (12, 12, 8, 5, '2020-07-04 18:43:47', '2011-11-20 17:54:38');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (13, 13, 4, 1, '2015-05-31 13:05:25', '2019-11-22 21:09:16');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (14, 14, 67, 13, '2017-12-02 20:28:00', '2012-10-24 23:49:44');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (15, 15, 86, 13, '2015-11-28 06:18:38', '2021-03-24 18:18:33');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (16, 16, 34, 8, '2014-04-27 21:56:49', '2012-09-11 18:38:31');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (17, 17, 80, 6, '2016-04-06 21:27:37', '2012-07-16 10:09:47');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (18, 18, 8, 2, '2014-11-10 09:47:54', '2015-07-30 22:21:50');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (19, 19, 54, 15, '2015-07-24 22:45:03', '2012-06-18 19:13:12');
INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES (20, 20, 79, 7, '2016-07-21 13:59:11', '2013-05-14 03:55:55');


#
# TABLE STRUCTURE FOR: pictures
#

DROP TABLE IF EXISTS `pictures`;

CREATE TABLE `pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Соответствие товара',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Фотографии товаров';

INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (1, 11, 'provident', '2011-07-05 10:43:14', '2014-11-28 21:27:42');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (2, 33, 'repellat', '2012-06-06 23:03:59', '2014-07-06 14:18:59');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (3, 1, 'qui', '2021-02-24 10:31:26', '2020-01-26 07:57:43');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (4, 5, 'consequatur', '2019-05-23 11:50:17', '2016-03-31 20:32:00');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (5, 90, 'aut', '2018-12-28 14:17:19', '2020-04-29 06:29:31');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (6, 11, 'aliquam', '2013-09-09 13:42:24', '2014-03-01 17:52:05');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (7, 95, 'dignissimos', '2015-03-24 01:43:34', '2014-01-17 13:15:54');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (8, 39, 'sit', '2015-06-08 01:37:03', '2019-09-02 13:32:02');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (9, 82, 'et', '2013-04-20 06:05:01', '2017-04-02 17:10:58');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (10, 57, 'numquam', '2020-05-28 09:52:40', '2018-10-03 05:06:16');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (11, 22, 'et', '2011-10-31 13:25:29', '2012-03-16 21:22:26');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (12, 10, 'suscipit', '2016-08-25 12:42:36', '2017-12-18 23:42:01');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (13, 12, 'est', '2019-08-25 22:02:23', '2015-04-19 01:08:00');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (14, 77, 'non', '2014-12-03 06:41:14', '2014-08-05 12:12:51');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (15, 95, 'deleniti', '2014-07-25 18:41:05', '2015-06-14 14:14:52');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (16, 32, 'a', '2019-10-01 00:19:44', '2013-07-03 04:24:05');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (17, 61, 'officiis', '2014-07-24 15:13:42', '2011-07-08 22:36:10');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (18, 98, 'omnis', '2018-10-11 17:44:08', '2013-02-14 02:58:43');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (19, 18, 'et', '2016-08-20 11:07:04', '2021-05-17 16:10:08');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (20, 95, 'omnis', '2019-04-20 08:10:25', '2017-08-14 16:03:14');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (21, 73, 'est', '2014-08-25 20:52:03', '2011-07-23 05:57:51');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (22, 2, 'assumenda', '2013-05-01 00:27:50', '2015-05-16 15:49:50');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (23, 35, 'saepe', '2011-07-26 07:16:35', '2012-11-10 23:53:34');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (24, 12, 'est', '2017-02-18 06:04:07', '2012-07-18 06:51:52');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (25, 10, 'blanditiis', '2016-11-10 13:11:52', '2011-11-18 05:07:57');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (26, 98, 'fugiat', '2013-08-28 14:50:01', '2014-04-01 18:47:49');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (27, 32, 'et', '2017-05-01 09:19:11', '2012-06-18 15:30:22');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (28, 2, 'perspiciatis', '2020-04-27 19:32:02', '2013-05-22 17:47:33');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (29, 98, 'et', '2018-01-22 21:55:59', '2015-04-25 08:29:07');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (30, 77, 'corporis', '2016-03-18 22:57:52', '2020-03-05 19:04:09');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (31, 18, 'eveniet', '2018-11-23 13:07:03', '2019-03-02 23:41:59');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (32, 82, 'eum', '2021-01-16 11:14:57', '2015-04-14 00:00:45');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (33, 52, 'aliquam', '2015-01-15 17:08:45', '2015-10-15 17:04:21');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (34, 36, 'possimus', '2019-07-04 12:02:09', '2016-12-25 15:11:02');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (35, 99, 'non', '2018-10-17 20:23:55', '2015-05-23 02:01:44');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (36, 51, 'a', '2019-01-15 13:31:59', '2019-05-19 00:21:04');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (37, 48, 'vel', '2012-09-30 13:41:54', '2020-09-10 19:51:02');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (38, 18, 'qui', '2013-05-27 12:19:59', '2016-12-10 15:13:37');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (39, 14, 'totam', '2012-06-29 13:12:39', '2017-12-30 04:33:06');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (40, 86, 'iste', '2018-06-09 00:19:41', '2021-01-17 00:36:00');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (41, 19, 'recusandae', '2020-04-19 22:34:31', '2017-11-27 04:34:25');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (42, 1, 'omnis', '2016-11-24 12:51:36', '2019-12-27 14:14:38');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (43, 52, 'placeat', '2020-05-03 19:25:00', '2013-07-26 22:03:08');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (44, 61, 'atque', '2013-11-08 08:19:32', '2013-12-21 17:08:20');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (45, 87, 'voluptatibus', '2015-12-25 19:28:54', '2020-10-06 18:23:43');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (46, 98, 'vel', '2014-10-29 04:36:18', '2020-06-05 18:44:03');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (47, 50, 'quae', '2017-04-21 17:25:12', '2015-11-01 18:22:02');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (48, 70, 'voluptatibus', '2017-12-24 10:18:45', '2016-08-15 20:18:07');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (49, 17, 'et', '2016-11-07 11:53:30', '2011-07-08 04:32:24');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (50, 38, 'aut', '2012-08-27 05:21:17', '2014-01-08 03:37:03');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (51, 22, 'nulla', '2018-09-14 13:14:12', '2013-10-14 00:10:50');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (52, 52, 'dolor', '2013-10-20 16:55:43', '2017-11-23 21:17:52');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (53, 96, 'molestiae', '2019-09-15 12:36:45', '2016-09-24 06:51:38');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (54, 87, 'eaque', '2014-06-02 01:45:05', '2020-07-02 08:09:42');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (55, 41, 'omnis', '2020-12-10 03:46:52', '2016-05-24 07:02:00');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (56, 59, 'voluptatem', '2020-11-10 14:53:27', '2015-07-11 08:58:20');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (57, 77, 'id', '2021-02-28 02:53:33', '2018-10-18 06:17:43');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (58, 9, 'quis', '2017-12-13 16:16:56', '2021-04-16 13:20:40');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (59, 1, 'tenetur', '2015-09-30 02:03:00', '2015-06-18 11:56:18');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (60, 71, 'aut', '2016-04-19 04:28:55', '2020-05-11 13:58:24');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (61, 72, 'dignissimos', '2013-06-22 00:09:48', '2017-11-29 07:56:06');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (62, 26, 'et', '2021-03-02 22:07:50', '2013-04-09 11:11:50');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (63, 81, 'fugiat', '2017-04-09 11:19:44', '2020-03-19 02:18:32');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (64, 26, 'vero', '2018-07-13 12:42:35', '2019-10-18 08:11:29');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (65, 3, 'nostrum', '2016-01-28 14:22:35', '2019-11-03 06:24:28');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (66, 77, 'ad', '2015-10-23 04:42:27', '2014-03-31 17:53:04');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (67, 69, 'autem', '2020-04-13 18:27:25', '2013-11-14 02:22:42');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (68, 23, 'non', '2019-10-20 06:34:00', '2016-02-07 07:47:19');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (69, 9, 'velit', '2017-08-01 18:29:30', '2015-01-17 18:57:56');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (70, 22, 'quo', '2012-10-25 11:22:57', '2019-02-08 21:07:40');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (71, 57, 'ratione', '2011-11-29 07:10:35', '2017-09-11 11:23:08');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (72, 81, 'impedit', '2015-08-19 15:11:20', '2012-09-11 10:58:29');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (73, 40, 'ut', '2013-06-13 04:44:59', '2020-08-01 21:56:35');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (74, 23, 'modi', '2012-09-15 13:20:11', '2015-10-10 04:43:14');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (75, 66, 'voluptatem', '2017-10-23 11:26:47', '2012-11-03 07:35:36');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (76, 86, 'sit', '2020-11-04 05:14:44', '2013-03-13 08:45:15');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (77, 29, 'asperiores', '2020-04-15 13:23:22', '2020-10-15 22:08:49');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (78, 57, 'est', '2018-03-22 15:36:14', '2018-12-21 05:10:52');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (79, 52, 'laborum', '2011-12-06 12:49:42', '2011-07-02 13:50:13');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (80, 12, 'delectus', '2015-08-30 00:12:19', '2012-08-17 03:17:28');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (81, 77, 'est', '2018-02-05 21:23:48', '2016-10-03 20:19:18');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (82, 70, 'molestias', '2016-10-30 22:36:34', '2018-11-07 01:04:44');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (83, 78, 'dolorem', '2012-05-05 12:35:53', '2013-05-17 13:56:04');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (84, 10, 'ut', '2017-04-11 16:40:10', '2017-06-13 21:58:22');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (85, 33, 'voluptatibus', '2017-02-22 23:38:18', '2017-12-31 04:43:46');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (86, 63, 'fuga', '2017-10-07 07:23:34', '2017-07-17 15:10:28');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (87, 98, 'corporis', '2020-08-17 04:21:29', '2019-11-15 13:15:55');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (88, 86, 'odit', '2012-12-13 09:55:50', '2019-11-10 15:51:07');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (89, 39, 'maiores', '2017-05-03 08:21:51', '2013-09-20 09:37:45');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (90, 33, 'eum', '2019-10-26 00:55:26', '2015-10-28 22:56:28');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (91, 93, 'amet', '2014-12-03 08:36:37', '2019-10-18 19:10:21');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (92, 25, 'incidunt', '2013-12-26 12:55:39', '2015-07-02 17:11:29');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (93, 80, 'cumque', '2013-07-02 17:34:03', '2019-06-16 07:01:39');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (94, 89, 'occaecati', '2011-09-01 15:31:13', '2018-03-07 07:16:50');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (95, 83, 'quo', '2016-08-24 13:32:07', '2021-04-16 14:01:54');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (96, 20, 'et', '2019-10-27 01:45:03', '2014-10-04 06:51:09');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (97, 49, 'fugiat', '2014-10-10 03:38:29', '2014-04-07 00:07:25');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (98, 98, 'praesentium', '2017-01-20 19:52:14', '2016-12-31 19:23:58');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (99, 24, 'tempore', '2020-05-13 09:53:26', '2015-03-21 22:31:41');
INSERT INTO `pictures` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES (100, 18, 'laudantium', '2011-08-04 10:28:50', '2011-09-01 08:41:48');


#
# TABLE STRUCTURE FOR: products
#

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `catalog_id` int(10) unsigned NOT NULL COMMENT 'Раздел',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название',
  `description` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Описание',
  `price` decimal(11,2) DEFAULT NULL COMMENT 'Цена',
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Характеристики' CHECK (json_valid(`attributes`)),
  `picture_id` int(10) unsigned DEFAULT NULL COMMENT 'Фото',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Товарные позиции';

#
# TABLE STRUCTURE FOR: shops
#

DROP TABLE IF EXISTS `shops`;

CREATE TABLE `shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Пн-Вс с 10:00 до 22:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Магазины';

INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (1, 'id', 'Oregon', 'Lake Linabury', '7944 Gislason Points\nWest Filibertotown, TX 16485-5626', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (2, 'doloremque', 'Texas', 'North Harleyborough', '2078 Ashtyn Views Apt. 770\nCamrenland, PA 83688-8072', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (3, 'harum', 'Nevada', 'Kayaborough', '56962 Stroman Estates Apt. 693\nWest Elian, CO 76593', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (4, 'iste', 'NewMexico', 'Port Carabury', '898 Lindgren Bridge Suite 576\nWest Salvador, MS 53819-3499', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (5, 'neque', 'Mississippi', 'Bernhardside', '455 Ari Haven Suite 340\nEast Devontetown, TX 16406-9337', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (6, 'voluptatem', 'Missouri', 'Emardmouth', '81005 Schroeder Lane\nMedhursthaven, MN 09449-0744', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (7, 'est', 'Alabama', 'West Tomasa', '7961 Larkin Course\nRueckerview, OH 83442-3987', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (8, 'nulla', 'Iowa', 'North Estell', '19420 Dach Rest\nLake Millerville, RI 50114', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (9, 'rem', 'Florida', 'South Milan', '9016 Christiansen Pike\nPort Kobe, AR 48597-6711', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (10, 'nihil', 'Oklahoma', 'Weimannbury', '11955 Hazel Crossroad\nYasmineport, MS 32526', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (11, 'consequatur', 'District of Columbia', 'South Casandrachester', '4489 Destiney Rest\nWest Amanishire, NM 70718-5898', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (12, 'alias', 'Massachusetts', 'Lake Ismael', '8674 Zieme Causeway Apt. 379\nTonimouth, TX 30468-2139', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (13, 'ducimus', 'NewHampshire', 'Port Cyrilport', '9279 Smitham Burgs Suite 943\nFrancotown, HI 03459-4936', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (14, 'blanditiis', 'RhodeIsland', 'West Alishaton', '294 Dedrick Mill\nConroymouth, TX 77840-0943', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (15, 'laboriosam', 'Arizona', 'East Van', '67511 Kyla Squares\nProhaskashire, KY 89512-6778', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (16, 'dignissimos', 'Michigan', 'Port Serenity', '85181 Hegmann Overpass\nRachellefurt, ND 68077-4064', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (17, 'similique', 'Michigan', 'Huelfort', '080 Jovany Canyon Apt. 446\nPort Rhea, KS 44830-7586', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (18, 'non', 'Delaware', 'New Trycia', '81105 Schimmel Meadow Apt. 772\nLubowitzland, VA 69029', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (19, 'et', 'Hawaii', 'Fatimaport', '83421 Torp Ridge\nNew Dorothea, CT 64882-4677', 'Пн-Вс с 10:00 до 22:00');
INSERT INTO `shops` (`id`, `name`, `region`, `city`, `address`, `schedule`) VALUES (20, 'ipsam', 'Vermont', 'Leonstad', '283 Jasen Valleys\nAliaside, NV 09182', 'Пн-Вс с 10:00 до 22:00');


#
# TABLE STRUCTURE FOR: shops_products
#

DROP TABLE IF EXISTS `shops_products`;

CREATE TABLE `shops_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `shop_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `total` int(10) unsigned DEFAULT NULL COMMENT 'Количество товара в магазине',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Наличие товара';

INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (1, 1, 72, 2, '2013-11-13 14:01:09', '2012-01-26 17:01:57');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (2, 2, 88, 6, '2020-08-19 00:33:50', '2016-07-02 21:32:37');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (3, 3, 5, 7, '2013-01-20 16:55:22', '2018-10-31 10:34:09');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (4, 4, 40, 4, '2020-09-05 06:45:59', '2013-08-16 01:34:23');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (5, 5, 63, 5, '2017-11-21 06:25:38', '2016-01-14 10:10:53');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (6, 6, 30, 7, '2018-01-03 10:04:43', '2013-09-06 19:38:28');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (7, 7, 49, 5, '2013-07-24 03:39:14', '2014-09-24 17:43:17');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (8, 8, 23, 1, '2011-06-06 06:23:06', '2017-03-27 00:30:41');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (9, 9, 7, 7, '2015-11-30 21:23:20', '2018-03-07 04:17:45');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (10, 10, 6, 6, '2017-02-02 22:25:05', '2020-05-31 20:52:23');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (11, 11, 62, 4, '2017-07-14 07:28:01', '2020-10-06 02:48:20');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (12, 12, 54, 2, '2019-01-21 20:44:13', '2019-03-26 13:01:22');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (13, 13, 79, 10, '2016-10-13 22:26:59', '2015-07-03 02:39:44');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (14, 14, 73, 3, '2017-02-26 23:50:43', '2014-05-21 23:45:44');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (15, 15, 66, 9, '2014-04-24 10:08:23', '2019-08-15 17:24:24');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (16, 16, 69, 7, '2017-03-16 15:37:45', '2019-12-08 17:37:55');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (17, 17, 90, 3, '2013-07-04 07:50:23', '2018-03-10 10:48:40');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (18, 18, 21, 2, '2017-06-17 00:58:30', '2017-01-03 02:43:09');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (19, 19, 44, 10, '2015-11-02 08:47:32', '2014-05-23 12:26:54');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (20, 20, 9, 9, '2019-07-20 09:00:23', '2017-03-24 18:51:07');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (21, 1, 80, 6, '2014-04-20 06:37:09', '2015-10-16 05:44:32');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (22, 2, 58, 1, '2018-11-14 21:54:12', '2014-02-20 02:25:52');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (23, 3, 8, 8, '2019-08-30 17:05:32', '2021-05-08 03:11:09');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (24, 4, 12, 2, '2019-07-06 16:38:05', '2017-11-01 17:06:19');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (25, 5, 49, 2, '2013-06-17 03:54:58', '2014-10-01 15:00:09');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (26, 6, 69, 9, '2011-12-26 09:22:11', '2011-08-07 07:32:39');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (27, 7, 60, 4, '2015-12-10 22:04:30', '2018-09-09 03:39:29');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (28, 8, 60, 7, '2020-06-02 22:19:27', '2016-03-11 21:34:32');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (29, 9, 14, 9, '2014-12-17 19:01:39', '2019-10-14 10:13:57');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (30, 10, 25, 8, '2015-07-29 10:52:36', '2012-01-28 18:58:50');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (31, 11, 27, 3, '2014-08-18 00:40:09', '2014-06-29 06:21:27');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (32, 12, 78, 6, '2013-05-07 23:47:12', '2021-04-28 10:48:47');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (33, 13, 51, 8, '2014-08-09 03:05:13', '2015-03-17 03:32:59');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (34, 14, 23, 4, '2019-03-04 09:09:52', '2018-07-01 16:39:08');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (35, 15, 69, 0, '2012-06-29 00:22:24', '2017-10-28 10:42:30');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (36, 16, 44, 8, '2016-02-27 11:10:28', '2019-06-01 22:00:41');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (37, 17, 73, 7, '2017-12-21 04:11:20', '2011-07-11 20:41:50');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (38, 18, 14, 0, '2011-12-19 13:28:11', '2012-12-24 01:57:13');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (39, 19, 94, 2, '2019-04-03 02:44:40', '2013-01-30 10:23:18');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (40, 20, 49, 9, '2020-08-24 23:53:58', '2021-05-13 06:59:04');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (41, 1, 91, 8, '2013-02-08 19:10:21', '2016-08-07 04:49:53');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (42, 2, 86, 6, '2011-06-12 16:39:04', '2014-05-13 17:53:58');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (43, 3, 4, 9, '2015-11-24 14:08:00', '2019-09-19 07:06:14');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (44, 4, 59, 10, '2013-07-11 12:45:42', '2019-10-14 14:49:56');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (45, 5, 69, 7, '2011-10-10 02:46:02', '2015-10-30 09:03:18');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (46, 6, 9, 1, '2015-09-02 17:33:26', '2016-12-07 19:16:24');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (47, 7, 16, 8, '2021-05-11 11:11:13', '2020-08-21 01:55:13');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (48, 8, 33, 0, '2013-09-07 09:18:36', '2021-05-20 17:45:08');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (49, 9, 48, 2, '2016-09-04 21:48:04', '2020-04-11 19:38:54');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (50, 10, 26, 4, '2020-01-17 17:01:55', '2014-10-20 06:39:13');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (51, 11, 11, 0, '2014-08-17 11:30:36', '2016-06-29 04:13:02');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (52, 12, 25, 1, '2013-08-13 21:15:10', '2015-05-28 17:33:15');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (53, 13, 94, 0, '2013-08-05 23:54:50', '2015-09-11 17:25:02');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (54, 14, 75, 8, '2019-07-09 02:32:27', '2015-02-01 15:33:33');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (55, 15, 53, 2, '2012-05-01 19:23:58', '2014-10-18 09:55:05');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (56, 16, 1, 2, '2017-11-16 18:08:55', '2011-12-03 07:17:57');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (57, 17, 58, 0, '2014-02-08 23:49:10', '2015-10-18 04:39:59');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (58, 18, 40, 0, '2014-05-05 18:53:49', '2015-01-05 21:50:46');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (59, 19, 48, 5, '2016-05-01 23:47:11', '2012-02-28 13:51:46');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (60, 20, 85, 8, '2012-04-03 03:24:29', '2014-05-04 07:09:20');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (61, 1, 83, 9, '2014-06-15 13:00:07', '2016-01-24 18:54:58');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (62, 2, 51, 9, '2020-07-19 14:07:24', '2016-02-20 11:54:18');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (63, 3, 90, 8, '2015-02-17 02:48:20', '2020-05-18 16:18:09');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (64, 4, 46, 9, '2013-12-10 23:50:23', '2014-03-22 06:21:46');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (65, 5, 94, 10, '2011-12-30 20:55:56', '2021-02-15 05:24:12');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (66, 6, 57, 6, '2018-10-05 05:42:00', '2016-03-17 00:12:46');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (67, 7, 7, 2, '2017-11-20 01:53:10', '2015-05-01 08:44:19');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (68, 8, 34, 2, '2020-11-08 05:25:51', '2017-07-31 22:06:00');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (69, 9, 59, 0, '2017-04-17 10:40:52', '2019-05-14 21:35:48');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (70, 10, 85, 4, '2019-12-04 14:17:45', '2014-01-22 08:08:01');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (71, 11, 89, 2, '2020-12-23 15:24:22', '2013-04-06 06:07:55');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (72, 12, 88, 0, '2015-06-05 23:17:50', '2021-01-29 12:58:41');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (73, 13, 70, 1, '2018-05-30 13:32:47', '2012-09-09 00:54:19');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (74, 14, 91, 10, '2017-10-27 08:19:50', '2017-10-12 17:18:02');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (75, 15, 98, 8, '2017-07-04 05:36:49', '2011-07-13 00:52:07');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (76, 16, 93, 0, '2019-05-15 06:22:26', '2019-05-06 14:03:05');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (77, 17, 20, 2, '2015-10-24 02:14:03', '2017-04-06 20:15:54');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (78, 18, 84, 4, '2015-02-10 16:34:19', '2017-01-02 17:10:24');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (79, 19, 86, 8, '2017-08-15 17:53:44', '2012-01-11 21:09:01');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (80, 20, 38, 6, '2016-12-03 15:00:31', '2015-02-28 12:39:08');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (81, 1, 9, 9, '2017-09-05 20:48:29', '2013-01-17 21:06:23');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (82, 2, 96, 10, '2016-11-08 13:39:58', '2019-05-16 10:30:34');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (83, 3, 50, 4, '2018-11-24 17:33:14', '2014-03-01 18:57:13');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (84, 4, 80, 4, '2011-10-01 16:35:00', '2015-01-10 07:02:12');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (85, 5, 7, 10, '2013-01-20 22:46:28', '2016-05-29 10:19:04');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (86, 6, 23, 0, '2017-06-17 23:59:29', '2020-06-03 14:37:16');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (87, 7, 62, 7, '2011-11-21 00:33:24', '2018-03-07 04:07:43');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (88, 8, 37, 7, '2019-05-20 03:13:35', '2015-05-31 00:26:15');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (89, 9, 49, 9, '2012-03-30 20:58:37', '2012-07-08 03:10:20');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (90, 10, 10, 2, '2020-10-17 11:04:05', '2012-05-26 09:05:47');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (91, 11, 36, 1, '2020-10-16 09:18:28', '2014-03-10 17:57:46');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (92, 12, 27, 0, '2015-07-04 14:45:08', '2011-09-21 04:31:48');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (93, 13, 46, 2, '2016-12-15 14:15:50', '2020-03-09 04:13:40');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (94, 14, 47, 2, '2018-11-25 21:03:03', '2020-09-30 20:34:18');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (95, 15, 67, 9, '2019-02-10 13:34:10', '2013-08-05 02:34:57');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (96, 16, 63, 4, '2018-10-15 21:47:58', '2013-08-17 22:46:40');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (97, 17, 13, 4, '2018-09-14 04:21:53', '2014-08-24 07:19:12');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (98, 18, 74, 7, '2014-06-23 15:35:04', '2019-07-20 19:28:58');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (99, 19, 14, 4, '2017-03-24 11:21:30', '2015-04-27 00:03:24');
INSERT INTO `shops_products` (`id`, `shop_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES (100, 20, 39, 3, '2018-01-11 00:38:53', '2016-08-06 23:37:05');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя',
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Покупатели';

INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Geovany', 'Beer', 'm', '1979-03-20', 'kraig76@example.org', '512-826-8971', '1947-06-25 12:12:30', '1993-09-12 06:22:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Hadley', 'D\'Amore', 'f', '1978-12-09', 'carroll.thalia@example.com', '+47(7)894418660', '2015-10-27 20:34:33', '1972-06-07 00:50:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Alvera', 'Schiller', 'f', '2011-09-05', 'tmcclure@example.com', '(812)845-1257x5', '1952-03-24 07:18:21', '1966-12-09 13:55:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Devon', 'Reichel', 'm', '1979-02-01', 'anissa.herman@example.net', '(075)095-1736x3', '1942-12-10 08:28:55', '2004-11-13 13:25:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Mariam', 'Kerluke', 'f', '1997-07-20', 'august.watsica@example.org', '(204)452-8585x9', '1972-06-11 22:22:07', '1947-05-08 03:49:32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Mertie', 'Kulas', 'f', '1993-10-15', 'erik.mcglynn@example.com', '(513)805-3675x2', '1931-09-08 17:30:04', '1943-03-22 21:16:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Merle', 'Armstrong', 'm', '1972-03-30', 'reynold.swaniawski@example.com', '1-996-716-4455x', '2008-08-22 19:33:05', '2009-11-28 00:14:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Salvatore', 'Ortiz', 'm', '2009-01-10', 'rickey.kreiger@example.com', '02063235120', '1929-05-02 14:18:30', '1965-01-17 13:47:37');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Hank', 'Crooks', 'f', '2019-06-13', 'ratke.lera@example.com', '06997910219', '1948-07-27 23:57:13', '2007-12-06 05:39:59');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Logan', 'Mraz', 'm', '1993-02-04', 'malvina.goldner@example.com', '862-785-1424x46', '2006-02-09 05:10:16', '1973-09-10 17:53:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Edyth', 'Nicolas', 'f', '1983-06-06', 'isabel.bode@example.com', '(411)943-6333', '1948-07-03 05:51:42', '2021-03-24 14:24:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Conner', 'Koss', 'm', '1980-11-08', 'neva.hudson@example.net', '(573)772-1844x5', '1930-08-31 12:12:20', '1943-03-26 09:43:32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Liliane', 'Monahan', 'f', '2013-04-21', 'hzboncak@example.com', '657.312.3699', '1994-09-27 16:22:33', '1943-11-22 03:38:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Sylvia', 'Kassulke', 'm', '2012-05-02', 'eino98@example.org', '331-162-5211', '1962-12-08 22:01:59', '2001-05-30 13:39:30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Rey', 'Prohaska', 'm', '1982-03-27', 'runte.ezra@example.org', '845-426-6272', '1961-07-25 14:54:02', '1966-03-24 15:34:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Eugene', 'Stehr', 'm', '1979-04-13', 'cronin.gia@example.com', '(092)428-8623', '1939-03-03 10:46:16', '1934-04-24 17:15:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Bart', 'Blanda', 'm', '1975-07-02', 'hessel.wayne@example.com', '1-800-923-5781x', '1964-06-15 11:22:13', '1968-04-12 10:49:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Elva', 'Spencer', 'f', '2002-02-02', 'mtoy@example.com', '(263)216-3000', '1933-01-26 00:18:13', '1998-09-30 04:50:49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Leonora', 'Littel', 'f', '1982-04-16', 'waters.selina@example.net', '957.492.5562x21', '2000-12-16 01:14:10', '2005-11-10 20:40:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Beau', 'Reichert', 'm', '1979-12-09', 'echristiansen@example.org', '378-720-0927x00', '1993-10-30 17:41:52', '2012-08-13 17:18:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Cortez', 'Hyatt', 'f', '1979-11-12', 'mertz.cedrick@example.net', '1-215-337-0126x', '1924-08-27 06:33:06', '1992-04-30 04:29:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Enrique', 'Moen', 'f', '1990-04-08', 'kosinski@example.com', '(927)239-4451x1', '1980-04-21 10:54:20', '1985-05-29 14:01:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Justus', 'Swift', 'f', '2019-01-19', 'lilly21@example.org', '075.603.2887', '1993-11-13 21:53:27', '1927-05-03 13:51:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Tyreek', 'Baumbach', 'm', '2010-03-09', 'koss.anjali@example.org', '01680509593', '2006-10-31 20:11:39', '2020-11-06 01:00:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Joyce', 'Hamill', 'm', '1993-06-02', 'jamir.hagenes@example.com', '040.915.1844x82', '1925-11-20 10:38:51', '2002-01-07 12:18:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Delilah', 'Ratke', 'f', '1974-02-09', 'walter.winnifred@example.org', '(751)878-6907', '1947-12-24 01:10:36', '2013-07-15 06:24:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Ruby', 'West', 'f', '1988-08-18', 'leffler.trevion@example.com', '+70(5)121061739', '1988-01-07 03:27:24', '1952-08-24 04:45:25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Darrick', 'Corkery', 'f', '1997-07-22', 'lisette.thompson@example.org', '1-531-748-9261x', '2004-06-27 21:35:53', '1953-01-14 10:45:31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Kennedy', 'Spencer', 'm', '2014-01-30', 'libbie.donnelly@example.net', '1-822-213-0173x', '1982-10-21 05:24:32', '1974-01-14 08:54:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Aletha', 'Davis', 'f', '2002-07-10', 'considine.kristy@example.com', '1-435-347-7901x', '1997-11-10 14:44:09', '1999-06-13 12:13:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Santos', 'Williamson', 'm', '1989-02-25', 'qbernhard@example.org', '212-563-6441x55', '1982-10-08 19:56:35', '2003-04-13 00:29:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Zander', 'Williamson', 'f', '2005-02-26', 'demetris.rath@example.com', '1-314-551-5111', '1972-11-25 21:55:55', '1984-05-24 15:32:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Hollis', 'Grimes', 'm', '2006-05-20', 'padberg.kimberly@example.net', '599-409-0212x21', '1939-04-17 08:37:26', '1997-04-02 15:16:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Petra', 'Rice', 'f', '1982-04-12', 'kimberly.von@example.org', '1-847-735-5120x', '2009-05-07 19:00:13', '1954-03-12 12:41:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Oren', 'Rolfson', 'f', '1981-02-18', 'eula21@example.org', '778.717.1210', '1951-06-21 00:37:38', '1977-08-04 05:29:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Linnie', 'Spencer', 'm', '1992-09-07', 'gwendolyn80@example.com', '(051)982-1073x5', '1941-07-21 11:24:48', '1926-06-08 00:42:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Stan', 'Adams', 'm', '2004-07-12', 'charlene.gutmann@example.org', '(628)876-0204x5', '1994-01-07 07:19:39', '1975-06-02 03:52:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Vicky', 'Auer', 'f', '1982-07-08', 'effertz.jacklyn@example.net', '00485859884', '1932-08-12 03:59:08', '1959-01-30 13:50:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Carolina', 'Weissnat', 'm', '1992-08-17', 'coy.wunsch@example.com', '243.198.0855x32', '1960-01-09 18:51:29', '1948-08-23 10:29:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Ian', 'Fadel', 'f', '2020-02-24', 'bernadine87@example.com', '074.294.8236', '1922-11-09 17:19:00', '1954-08-05 15:21:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Braulio', 'Okuneva', 'm', '2008-07-14', 'lebsack.dina@example.net', '(100)631-1401x5', '1937-12-09 09:53:29', '1940-12-22 12:24:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Dariana', 'Maggio', 'm', '1978-06-25', 'hassie.anderson@example.org', '352.031.9701', '2008-01-24 16:03:22', '1953-02-23 18:18:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Alvena', 'Reilly', 'm', '1975-06-20', 'peter93@example.com', '1-641-443-6278x', '1979-01-30 01:57:51', '1944-06-04 19:36:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Florida', 'Wintheiser', 'f', '2005-12-09', 'pfarrell@example.org', '254-955-9496', '2006-03-18 01:26:20', '1923-10-15 20:18:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Branson', 'Ferry', 'f', '1980-06-03', 'nledner@example.org', '02570273638', '1998-06-05 20:34:53', '1954-06-22 08:35:25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Scotty', 'Hilpert', 'f', '2018-01-13', 'odie.sipes@example.org', '00358919096', '1935-12-17 15:25:38', '1929-09-01 04:41:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Gilbert', 'Daniel', 'f', '2003-05-29', 'eliezer16@example.net', '+02(6)039936668', '1934-07-16 17:57:17', '1939-07-16 16:55:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Jimmy', 'Gleichner', 'f', '2013-01-07', 'edythe.auer@example.com', '1-210-604-4272x', '1987-03-09 10:13:56', '1976-11-19 18:34:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Lonzo', 'Macejkovic', 'f', '1999-06-25', 'kailyn79@example.net', '1-028-746-4818x', '2015-03-15 18:17:22', '1993-02-12 05:24:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Nakia', 'Rippin', 'm', '2000-11-24', 'kautzer.maeve@example.net', '07749209871', '2002-11-01 15:02:24', '1940-08-09 05:37:02');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Jonathon', 'Weber', 'f', '1981-08-29', 'wschowalter@example.com', '344-807-6759', '1945-03-18 11:35:20', '1991-08-06 18:06:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Kitty', 'Grimes', 'm', '1975-08-03', 'adubuque@example.com', '262-672-5458x25', '1944-10-07 11:59:44', '1945-12-12 23:34:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Asha', 'Wilderman', 'f', '1988-06-01', 'gzboncak@example.com', '(234)411-3865x7', '1983-01-11 04:43:31', '1977-09-29 01:28:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Mable', 'Kreiger', 'm', '1996-12-25', 'sparisian@example.org', '401.781.3809', '2012-12-07 22:52:50', '1973-11-29 23:44:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Rolando', 'Jaskolski', 'm', '1991-06-01', 'kbartell@example.com', '+66(3)035846312', '1924-05-10 23:29:05', '1953-06-24 00:42:59');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Faustino', 'Hirthe', 'f', '2000-11-23', 'qstreich@example.com', '(254)151-1150x8', '1984-08-03 01:28:26', '1943-07-27 00:29:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Katarina', 'Emard', 'm', '2003-05-15', 'braun.adrain@example.org', '(341)564-7449x6', '1986-08-02 13:47:24', '1996-08-09 20:39:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Lavern', 'Zemlak', 'm', '2008-07-21', 'grimes.jo@example.net', '169-527-6874x65', '1975-06-28 20:04:38', '1927-02-09 13:01:37');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Rubie', 'Auer', 'm', '2011-05-14', 'monte34@example.com', '501-627-3239x45', '2018-09-16 01:47:51', '2001-05-07 22:52:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Melisa', 'Herman', 'm', '2010-12-15', 'greg.douglas@example.com', '103.134.0216x72', '1980-04-05 17:56:32', '1940-03-22 00:24:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Eryn', 'Pollich', 'f', '2018-11-12', 'ward.darwin@example.net', '08172044332', '1958-06-02 20:45:14', '1999-09-12 11:11:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Lacey', 'Auer', 'f', '1979-01-16', 'ferry.garland@example.net', '02310762048', '1924-08-19 10:31:28', '1923-02-02 11:07:32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Thalia', 'Stiedemann', 'm', '2012-06-05', 'dandre97@example.net', '1-193-157-1576', '1951-08-25 23:22:42', '1985-06-05 02:09:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Alyce', 'Schulist', 'm', '1973-10-13', 'orpha.waters@example.com', '+71(7)503883689', '1954-06-28 19:00:09', '1951-12-27 11:23:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Lambert', 'Huels', 'm', '2021-01-14', 'kunde.stanton@example.com', '(028)803-3491', '1996-11-07 01:07:58', '1990-04-09 08:44:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Hazle', 'Rau', 'm', '1983-12-04', 'hiram.cole@example.com', '006.598.6982x11', '1998-01-15 10:47:09', '2018-03-22 16:24:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Aniyah', 'Kreiger', 'f', '1999-05-21', 'ambrose.lakin@example.org', '343-896-5187x52', '2007-07-06 02:13:12', '1962-02-18 03:45:49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Conor', 'Stanton', 'm', '1990-10-15', 'lgorczany@example.com', '00484358826', '1955-08-15 17:17:33', '1986-09-29 04:53:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Larue', 'Hand', 'm', '1993-07-01', 'demarco.rowe@example.org', '09409178233', '2019-12-12 16:05:38', '1971-09-25 23:38:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Alexandre', 'Collins', 'f', '1999-05-02', 'zoey79@example.com', '135.051.5106', '1957-07-23 01:07:41', '1992-09-15 10:11:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Kattie', 'Conroy', 'm', '2018-03-26', 'cgreenfelder@example.net', '572.515.7713x10', '1975-02-10 06:00:44', '1951-03-06 05:46:40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Darron', 'Leuschke', 'f', '2015-09-09', 'uriel.hamill@example.com', '998.691.1711', '1994-07-08 23:27:36', '1976-08-17 12:24:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Arch', 'Turcotte', 'f', '2019-09-17', 'reichert.lauriane@example.com', '432.941.4270', '1957-01-30 07:19:31', '1938-07-08 20:03:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Vada', 'Hessel', 'm', '2006-12-15', 'adaline62@example.com', '(420)782-7277x6', '1987-12-04 11:06:16', '1939-05-12 01:40:25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Patsy', 'Schmitt', 'm', '2000-11-02', 'howe.colten@example.com', '(556)953-1689', '1939-07-18 10:07:54', '2013-02-07 23:55:13');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Perry', 'Marvin', 'm', '1984-04-17', 'beahan.price@example.org', '014-256-2374x14', '2005-02-12 11:37:32', '1953-12-10 09:01:04');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Elmore', 'Connelly', 'f', '1981-12-13', 'osinski.osvaldo@example.net', '1-260-482-9025', '1935-10-09 11:20:37', '1924-01-19 02:37:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Candice', 'Brakus', 'm', '1978-11-25', 'turcotte.zetta@example.net', '+91(3)463586008', '1952-12-25 04:52:40', '1989-04-15 03:34:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Kennedy', 'Hayes', 'f', '2005-09-09', 'anne.harris@example.net', '398-379-6236x36', '2015-04-07 21:14:47', '1957-09-01 18:54:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Raleigh', 'Barton', 'f', '2009-10-04', 'cordelia.langworth@example.org', '526-612-5506x12', '1998-12-23 17:24:22', '2020-09-22 22:19:37');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Joanny', 'Waters', 'm', '1989-11-22', 'lonnie88@example.org', '(075)749-3051x2', '1952-08-08 19:16:56', '1968-03-10 07:27:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Rick', 'Hintz', 'm', '2013-05-18', 'kiana85@example.com', '809.509.4292x73', '1961-09-11 02:38:12', '1930-08-13 05:28:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Phoebe', 'Lynch', 'm', '2012-10-28', 'dalton.predovic@example.net', '286.481.9379x53', '2012-04-30 14:45:51', '1941-10-24 09:09:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Deven', 'Littel', 'm', '1988-05-30', 'gerlach.leonard@example.net', '113.024.6019x23', '2008-02-14 06:36:18', '1953-01-22 01:52:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Ottilie', 'Gutkowski', 'f', '2007-08-20', 'ojohnston@example.com', '233.777.4506', '1928-09-03 03:51:35', '1997-01-31 10:58:32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Mina', 'Herzog', 'f', '1992-06-24', 'erdman.devan@example.org', '971-901-4582x67', '1953-11-18 20:16:33', '1931-08-31 19:49:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Hal', 'Reilly', 'm', '1991-01-10', 'tklocko@example.com', '175-382-9146', '1995-03-05 16:21:55', '1947-08-29 15:59:40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Rickey', 'Kunze', 'f', '1979-06-20', 'kautzer.alisa@example.net', '780-733-1718', '1940-08-09 08:32:49', '1923-08-18 23:04:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Anita', 'Gislason', 'm', '1992-06-23', 'ursula.hackett@example.com', '053.223.3524', '1987-02-21 20:44:29', '1965-02-10 11:55:10');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Elyse', 'Heathcote', 'f', '2013-10-09', 'xoberbrunner@example.net', '(159)683-2955', '2005-11-11 11:06:31', '1922-11-11 22:05:58');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Amara', 'Rosenbaum', 'f', '1986-03-21', 'rgutkowski@example.net', '269-194-4115', '1959-04-11 16:46:07', '2013-03-12 06:37:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Margarette', 'Larkin', 'f', '1990-12-31', 'vandervort.jeremy@example.net', '422-452-5916', '2004-09-21 08:36:46', '2015-06-08 04:36:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Christ', 'Rolfson', 'f', '1990-05-04', 'ewisoky@example.org', '653-130-2380x95', '1939-03-26 23:26:52', '1983-11-27 03:02:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Jasmin', 'Reinger', 'f', '2001-08-18', 'kweber@example.com', '044.089.2104x22', '1962-06-14 03:17:30', '2008-11-30 20:11:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Kurt', 'Parker', 'f', '2003-09-08', 'kutch.lydia@example.net', '981-800-6297', '2007-12-05 17:17:46', '1996-01-20 17:07:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Elliott', 'Klocko', 'f', '2006-10-10', 'pouros.mariane@example.net', '387.410.9928x25', '1949-10-11 14:25:48', '2007-02-18 14:18:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Ed', 'Schulist', 'f', '1985-05-01', 'trent09@example.org', '04481903479', '1935-10-07 08:18:33', '2000-11-12 16:48:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Jorge', 'Rohan', 'm', '1999-04-14', 'amber.dach@example.com', '1-944-548-8921x', '1996-12-18 10:31:29', '1981-03-05 11:13:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Stephany', 'Schneider', 'm', '1988-03-20', 'eleazar64@example.com', '899.749.4813x24', '2003-09-28 19:15:49', '1998-12-26 08:08:49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'William', 'Gleason', 'm', '2010-12-06', 'shana94@example.org', '442-289-0730', '1986-01-04 20:46:53', '2010-05-01 02:25:47');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	catalog_id INT UNSIGNED NOT NULL COMMENT 'Раздел', 
	name VARCHAR(255) NOT NULL COMMENT 'Название',
	description VARCHAR(10000) COMMENT 'Описание',
	price DECIMAL (11,2) COMMENT 'Цена',
	attributes JSON NOT NULL COMMENT 'Характеристики',
	picture_id INT UNSIGNED COMMENT 'Фото', 
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT 'Товарные позиции';

INSERT INTO `products` VALUES ('1','12','015 pj','As there seemed to be sure; but I think I can guess that," she added in a moment: she looked up, and began bowing to the Cheshire Cat sitting on a little more conversation with her arms round it as.','114172.22','{"Производитель":"Apple", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','2024','2001-09-16 07:00:08','1989-09-29 11:41:13'),
('2','12','737 uu','Alice, "as all the rats and--oh dear!" cried Alice in a day is very confusing." "It isn"t," said the Pigeon. "I can see you"re trying to explain the paper. "If there"s no harm in trying." So she.','82404.66','{"Производитель":"Apple", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','2891','2015-11-28 05:37:14','2006-03-18 17:48:50'),
('3','12','082 al','Mock Turtle sang this, very slowly and sadly:-- "\"Will you walk a little while, however, she waited for some minutes. The Caterpillar was the Cat in a minute, nurse! But I"ve got to?" (Alice had no.','92277.70','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','33','2007-09-03 10:44:03','2015-10-30 14:35:47'),
('4','12','948 kf','It"s by far the most important piece of rudeness was more than three." "Your hair wants cutting," said the King. The next thing is, to get into her eyes; and once she remembered having seen in her.','87634.00','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"8"}','53','2012-01-24 16:04:38','1980-10-04 03:45:36'),
('5','12','552 iw','Queen said to herself; "I should have croqueted the Queen"s voice in the pool as it left no mark on the slate. "Herald, read the accusation!" said the King; and as he spoke, and the two creatures.','88511.40','{"Производитель":"Samsung", "Диагональ экрана":"7", "Объем встроенной памяти Гб":"128"}','915','1972-01-21 18:02:24','2000-06-29 17:14:28'),
('6','12','409 yr','Hatter. "Nor I," said the Hatter. "You MUST remember," remarked the King, "that only makes the world you fly, Like a tea-tray in the air. "--as far out to the voice of the edge with each hand. "And.','4089.24','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"16"}','899','2002-06-17 03:47:45','2017-10-19 21:52:15'),
('7','12','492 yk','If I or she fell past it. "Well!" thought Alice to herself, "Now, what am I to do THAT in a louder tone. "ARE you to set about it; if I"m Mabel, I"ll stay down here! It"ll be no chance of getting.','52477.26','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"32"}','878','2007-03-16 14:05:24','1974-12-04 07:40:45'),
('8','12','769 es','I"ll never go THERE again!" said Alice very meekly: "I"m growing." "You"ve no right to think," said Alice in a rather offended tone, and she thought it must be a Caucus-race." "What IS a long sleep.','53290.31','{"Производитель":"Samsung", "Диагональ экрана":"7", "Объем встроенной памяти Гб":"128"}','2293','1979-08-28 06:07:41','1988-12-11 02:31:56'),
('9','12','365 ua','Alice, and she went nearer to watch them, and was just in time to avoid shrinking away altogether. "That WAS a narrow escape!" said Alice, surprised at this, she was always ready to make ONE.','36690.37','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"64"}','2411','1986-06-02 17:18:03','1980-04-11 06:17:17'),
('10','12','521 vl','Alice, so please your Majesty," he began, "for bringing these in: but I hadn"t drunk quite so much!" said Alice, whose thoughts were still running on the glass table and the pool of tears which she.','53240.03','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"64"}','1523','2004-08-02 10:28:20','2005-09-15 00:16:25'),
('11','12','606 ne','The Dormouse shook itself, and began to feel very queer indeed:-- ""Tis the voice of the other ladder?--Why, I hadn"t mentioned Dinah!" she said to herself, "in my going out altogether, like a.','64290.95','{"Производитель":"Samsung", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"256"}','2938','1975-08-24 07:53:09','1990-12-26 03:42:26'),
('12','12','299 lp','Dodo suddenly called out "The Queen! The Queen!" and the Queen"s hedgehog just now, only it ran away when it saw Alice. It looked good-natured, she thought: still it had struck her foot! She was a.','12095.70','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','1925','1998-06-08 19:23:36','2004-08-12 06:15:48'),
('13','12','191 sr','Puss," she began, in a tone of this sort in her own mind (as well as she spoke. Alice did not quite know what you mean," said Alice. "Of course twinkling begins with an M, such as mouse-traps, and.','43584.26','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','1538','2018-04-27 04:44:22','1973-08-29 17:49:37'),
('14','12','444 yx','Mock Turtle angrily: "really you are very dull!" "You ought to have it explained," said the Hatter. He came in with a sudden burst of tears, "I do wish I hadn"t quite finished my tea when I get.','11659.40','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','502','1977-03-31 23:31:10','2015-12-09 12:52:23'),
('15','12','048 fr','This question the Dodo replied very gravely. "What else had you to sit down without being seen, when she got back to the jury, who instantly made a dreadfully ugly child: but it was addressed to the.','70203.49','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"64"}','2156','2000-10-01 20:52:15','1974-02-19 01:34:06'),
('16','12','406 kd','Alice like the look of things at all, at all!" "Do as I get SOMEWHERE," Alice added as an explanation; "I"ve none of my own. I"m a hatter." Here the other ladder?--Why, I hadn"t to bring but one;.','8521.79','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"64"}','696','1975-06-29 23:31:44','1998-01-17 23:37:52'),
('17','12','810 kh','Seaography: then Drawling--the Drawling-master was an old conger-eel, that used to call him Tortoise--" "Why did they live on?" said the King very decidedly, and there was the White Rabbit.','27318.80','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"8"}','1872','1998-01-17 23:19:12','1981-11-19 11:01:12'),
('18','12','266 vd','Alice. "I don"t know what \"it\" means well enough, when I learn music." "Ah! that accounts for it," said Alice. "Why, there they lay sprawling about, reminding her very earnestly, "Now, Dinah, tell.','118447.34','{"Производитель":"Samsung", "Диагональ экрана":"7", "Объем встроенной памяти Гб":"128"}','869','1998-02-07 17:22:47','2007-03-11 01:22:39'),
('19','12','091 pu','Mock Turtle replied in an agony of terror. "Oh, there goes his PRECIOUS nose"; as an explanation. "Oh, you"re sure to make out which were the verses the White Rabbit put on one side, to look over.','100096.05','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"64"}','2106','1979-12-20 02:56:45','1975-09-09 23:43:01'),
('20','12','050 zr','And how odd the directions will look! ALICE"S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE"S LOVE). Oh dear, what nonsense I"m talking!" Just then she heard the Queen shrieked out..','1200.12','{"Производитель":"Samsung", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"256"}','1451','1984-03-19 14:57:38','1993-03-14 15:56:32'),
('21','12','289 mi','Alice very politely; but she could guess, she was a table in the last words out loud, and the cool fountains. CHAPTER VIII. The Queen"s Croquet-Ground A large rose-tree stood near the right size for.','55653.73','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"64"}','2307','1970-12-27 19:43:43','1978-12-25 02:09:47'),
('22','12','400 zo','ARE OLD, FATHER WILLIAM,\"" said the Gryphon remarked: "because they lessen from day to such stuff? Be off, or I"ll kick you down stairs!" "That is not said right," said the Mouse. "Of course," the.','23909.41','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"16"}','744','1970-03-17 12:08:49','1977-11-19 23:46:14'),
('23','12','108 yc','Queen, stamping on the Duchess"s knee, while plates and dishes crashed around it--once more the shriek of the busy farm-yard--while the lowing of the court. All this time she went on: "But why did.','6390.63','{"Производитель":"Apple", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','1878','2017-01-30 14:57:39','2001-06-14 08:24:24'),
('24','12','174 km','Allow me to sell you a song?" "Oh, a song, please, if the Queen shrieked out. "Behead that Dormouse! Turn that Dormouse out of the jurymen. "It isn"t mine," said the Lory, with a large cauldron.','23957.41','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','1883','1988-07-28 15:56:23','2008-05-03 10:51:50'),
('25','12','800 hu','PLEASE mind what you"re at!\" You know the meaning of it altogether; but after a pause: "the reason is, that I"m perfectly sure I don"t keep the same thing, you know." "I DON"T know," said the.','73912.00','{"Производитель":"Samsung", "Диагональ экрана":"4", "Объем встроенной памяти Гб":"64"}','2070','2003-12-15 00:06:43','1974-03-12 04:47:22'),
('26','12','640 mo','The chief difficulty Alice found at first was moderate. But the insolence of his great wig." The judge, by the time she heard a little way out of a dance is it?" Alice panted as she could, for the.','49093.70','{"Производитель":"Samsung", "Диагональ экрана":"4", "Объем встроенной памяти Гб":"64"}','1274','1996-02-25 07:23:08','1985-01-19 23:47:51'),
('27','12','041 ft','Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful.','54169.81','{"Производитель":"Apple", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','2591','2008-07-09 05:19:57','1993-07-22 22:17:00'),
('28','12','178 re','And oh, I wish I hadn"t quite finished my tea when I find a thing," said the King, and he went on planning to herself "Now I can say." This was such a capital one for catching mice--oh, I beg your.','28531.85','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"16"}','1296','2016-10-07 03:34:32','1996-11-21 17:49:45'),
('29','12','114 cv','Lory. Alice replied eagerly, for she could remember them, all these strange Adventures of hers would, in the house, and found in it about four inches deep and reaching half down the chimney, has.','17413.37','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"16"}','1989','2019-05-16 21:22:33','1990-10-05 21:36:27'),
('30','12','880 fp','Alice, and she said to the game. CHAPTER IX. The Mock Turtle went on in a low, trembling voice. "There"s more evidence to come yet, please your Majesty?" he asked. "Begin at the thought that it was.','44383.93','{"Производитель":"Samsung", "Диагональ экрана":"4", "Объем встроенной памяти Гб":"64"}','2893','1977-07-16 20:12:49','2010-12-27 14:21:05'),
('31','12','879 fq','Take your choice!" The Duchess took her choice, and was beating her violently with its wings. "Serpent!" screamed the Pigeon. "I can see you"re trying to invent something!" "I--I"m a little of the.','47984.25','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"64"}','1404','1971-12-29 18:09:21','1986-10-29 16:07:34'),
('32','12','953 zu','Alice, and she tried to say to this: so she set off at once, while all the while, and fighting for the garden!" and she was out of THIS!" (Sounds of more energetic remedies--" "Speak English!" said.','53227.50','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"8"}','896','2004-11-09 22:29:28','1994-01-13 04:12:17'),
('33','12','981 hq','I"m here! Digging for apples, yer honour!" (He pronounced it "arrum.") "An arm, you goose! Who ever saw in my size; and as it was not even room for her. "I wish I could not taste theirs, and the.','92961.52','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"64"}','774','2006-09-24 02:36:47','2013-09-17 20:41:13'),
('34','12','874 hg','Hardly knowing what she was playing against herself, for this curious child was very like having a game of croquet she was nine feet high. "I wish I hadn"t drunk quite so much!" said Alice, timidly;.','104494.00','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"64"}','2145','2005-01-22 10:06:57','1987-04-25 01:28:40'),
('35','12','273 mu','I suppose Dinah"ll be sending me on messages next!" And she kept fanning herself all the party sat silent for a good deal frightened at the sides of it; so, after hunting all about it!" and he.','20510.06','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"32"}','25','1999-12-11 18:58:40','1973-01-27 05:18:52'),
('36','12','286 kq','Alice. One of the sort!" said Alice. "Then you should say \"With what porpoise?\"" "Don"t you mean \"purpose\"?" said Alice. "Off with his head!\"" "How dreadfully savage!" exclaimed Alice. "That"s the.','106313.82','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"16"}','2012','1993-09-26 16:26:30','2018-12-08 04:43:24'),
('37','12','217 kr','Imagine her surprise, when the race was over. Alice was silent. The King turned pale, and shut his note-book hastily. "Consider your verdict," he said to Alice, she went on in a deep voice, "are.','40665.68','{"Производитель":"Samsung", "Диагональ экрана":"4", "Объем встроенной памяти Гб":"64"}','1876','1991-03-16 12:47:25','2004-12-10 17:07:24'),
('38','12','169 mw','Alice was not a VERY unpleasant state of mind, she turned away. "Come back!" the Caterpillar sternly. "Explain yourself!" "I can"t help it," said the Caterpillar. "Well, perhaps you haven"t found it.','75909.91','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"16"}','2568','1973-09-05 08:04:32','1978-09-27 20:59:03'),
('39','12','568 tm','The table was a dispute going on within--a constant howling and sneezing, and every now and then, and holding it to half-past one as long as you say pig, or fig?" said the Cat, as soon as look at.','62482.88','{"Производитель":"Samsung", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"256"}','2932','1997-09-12 04:42:26','1972-05-22 12:36:07'),
('40','12','146 hu','Cat; and this was her turn or not. "Oh, PLEASE mind what you"re doing!" cried Alice, jumping up in a hurry to get in?" she repeated, aloud. "I must go by the pope, was soon left alone. "I wish I.','51814.53','{"Производитель":"Samsung", "Диагональ экрана":"7", "Объем встроенной памяти Гб":"128"}','1421','2016-10-11 16:09:11','2007-05-15 08:17:56'),
('41','12','846 zy','I must go and take it away!" There was nothing else to do, and in THAT direction," the Cat went on, turning to the beginning again?" Alice ventured to say. "What is his sorrow?" she asked the.','89736.86','{"Производитель":"Samsung", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"256"}','948','1984-07-21 23:04:42','1996-02-11 21:00:26'),
('42','12','542 pt','Come on!" So they went up to the other, saying, in a low voice, "Why the fact is, you see, Alice had begun to dream that she had this fit) An obstacle that came between Him, and ourselves, and it..','54852.08','{"Производитель":"Apple", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"128"}','2796','2003-01-05 09:21:03','2007-03-13 16:50:44'),
('43','12','420 qy','He moved on as he spoke. "A cat may look at me like that!" By this time with one finger; and the happy summer days. THE.','55844.36','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','1751','2002-02-21 08:40:17','2017-09-21 02:50:17'),
('44','12','855 dj','Queen to play croquet." The Frog-Footman repeated, in the last few minutes to see if she had never left off staring at the picture.) "Up, lazy thing!" said the Caterpillar contemptuously. "Who are.','5590.54','{"Производитель":"Samsung", "Диагональ экрана":"7", "Объем встроенной памяти Гб":"128"}','2942','1993-10-20 00:54:34','1980-06-01 23:33:36'),
('45','12','407 vo','Mabel! I"ll try and repeat something now. Tell her to speak first, "why your cat grins like that?" "It"s a mineral, I THINK," said Alice. "Oh, don"t talk about wasting IT. It"s HIM." "I don"t see.','42921.82','{"Производитель":"LG", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','2548','2002-06-10 13:45:24','1987-08-28 01:44:40'),
('46','12','775 ys','Alice, "it would be four thousand miles down, I think--" (for, you see, so many out-of-the-way things to happen, that it signifies much," she said to herself. At this the whole window!" "Sure, it.','62437.70','{"Производитель":"LG", "Диагональ экрана":"5", "Объем встроенной памяти Гб":"8"}','2301','1986-07-17 02:10:32','1981-06-22 23:38:50'),
('47','12','106 ju','Alice led the way, and the turtles all advance! They are waiting on the ground near the centre of the officers of the trees behind him. "--or next day, maybe," the Footman went on muttering over the.','38107.30','{"Производитель":"Samsung", "Диагональ экрана":"4", "Объем встроенной памяти Гб":"64"}','1235','1986-07-05 11:05:55','1985-03-25 02:31:23'),
('48','12','446 kn','All on a bough of a feather flock together.\"" "Only mustard isn"t a letter, written by the soldiers, who of course you know the song, "I"d have said to the Knave of Hearts, carrying the King"s crown.','100166.00','{"Производитель":"Apple", "Диагональ экрана":"4", "Объем встроенной памяти Гб":"32"}','2067','2015-04-15 01:43:32','1973-04-29 02:31:08'),
('49','12','218 yx','The Cat seemed to rise like a serpent. She had not gone far before they saw Alice coming. "There"s PLENTY of room!" said Alice more boldly: "you know you"re growing too." "Yes, but some crumbs must.','21543.00','{"Производитель":"Samsung", "Диагональ экрана":"4", "Объем встроенной памяти Гб":"64"}','1842','1990-08-29 10:50:07','1988-01-13 09:31:50'),
('50','12','331 fm','Let me see: four times six is thirteen, and four times five is twelve, and four times six is thirteen, and four times five is twelve, and four times seven is--oh dear! I wish you wouldn"t mind,".','50288.53','{"Производитель":"Apple", "Диагональ экрана":"6", "Объем встроенной памяти Гб":"512"}','2104','1987-04-12 09:25:25','1990-05-31 15:33:52'); 

INSERT INTO `products` VALUES ('51','13','767 jk','HAVE you been doing here?" "May it please your Majesty?" he asked. "Begin at the Mouse"s tail; "but why do you know that you"re mad?" "To begin with," the Mock Turtle persisted. "How COULD he turn.','32262.35','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','952','2016-09-20 13:09:27','1998-07-12 02:36:04'),
('52','13','429 rw','On which Seven looked up and went on at last, they must needs come wriggling down from the change: and Alice heard the Queen"s shrill cries to the Knave of Hearts, she made some tarts, All on a.','9994.91','{"Производитель":"Apple", "Продолжительность работы":"1000", "Степень защиты":"67"}','2952','1973-12-02 09:20:03','1989-02-19 19:48:54'),
('53','13','781 zn','King, rubbing his hands; "so now let the Dormouse say?" one of the suppressed guinea-pigs, filled the air, and came flying down upon their faces, and the baby--the fire-irons came first; then.','3697.60','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','99','2010-08-28 11:34:42','2016-12-29 04:11:59'),
('54','13','397 ez','The first question of course had to sing this:-- "Beautiful Soup, so rich and green, Waiting in a minute, nurse! But I"ve got to grow larger again, and the King put on her spectacles, and began.','4486.11','{"Производитель":"Xiaomi", "Продолжительность работы":"1500", "Степень защиты":"67"}','1314','1973-01-08 21:03:57','2009-08-19 05:31:20'),
('55','13','874 db','I"m here! Digging for apples, indeed!" said the Mock Turtle, and to wonder what you"re at!\" You know the way YOU manage?" Alice asked. "We called him Tortoise because he was speaking, and this was.','36947.45','{"Производитель":"Xiaomi", "Продолжительность работы":"1500", "Степень защиты":"67"}','65','2013-10-27 08:15:24','1973-05-24 14:07:01'),
('56','13','803 yf','Alice, "how am I then? Tell me that first, and then, and holding it to half-past one as long as it happens; and if I only knew the right height to rest her chin upon Alice"s shoulder, and it was an.','29158.70','{"Производитель":"Apple", "Продолжительность работы":"1000", "Степень защиты":"67"}','201','1985-08-28 15:38:39','2000-11-11 18:54:43'),
('57','13','184 bc','Alice soon began talking again. "Dinah"ll miss me very much pleased at having found out a box of comfits, (luckily the salt water had not noticed before, and she at once set to work throwing.','35605.85','{"Производитель":"Xiaomi", "Продолжительность работы":"990", "Степень защиты":"64"}','587','2019-08-02 15:21:57','2011-12-23 11:22:45'),
('58','13','585 db','King: "however, it may kiss my hand if it wasn"t trouble enough hatching the eggs," said the Cat, as soon as she went in search of her hedgehog. The hedgehog was engaged in a long, low hall, which.','3344.00','{"Производитель":"Xiaomi", "Продолжительность работы":"1500", "Степень защиты":"67"}','1270','2010-05-19 10:04:40','1997-07-14 02:58:02'),
('59','13','007 fa','There was nothing so VERY remarkable in that; nor did Alice think it was," he said. (Which he certainly did NOT, being made entirely of cardboard.) "All right, so far," said the Mock Turtle to sing.','30227.70','{"Производитель":"Apple", "Продолжительность работы":"1000", "Степень защиты":"67"}','5','1986-01-17 08:53:37','1985-10-18 13:25:41'),
('60','13','196 ht','The Cat"s head with great emphasis, looking hard at Alice as he wore his crown over the jury-box with the edge with each hand. "And now which is which?" she said to herself, and fanned herself with.','28385.75','{"Производитель":"Samsung", "Продолжительность работы":"850", "Степень защиты":"64"}','2829','1973-08-27 12:15:42','1977-12-23 22:27:53'),
('61','13','246 yi','I"m never sure what I"m going to dive in among the distant green leaves. As there seemed to think to herself, "Which way? Which way?", holding her hand in hand with Dinah, and saying to her ear, and.','13149.97','{"Производитель":"Xiaomi", "Продолжительность работы":"1500", "Степень защиты":"67"}','1299','2001-01-13 00:45:37','1992-11-16 06:24:56'),
('62','13','797 dr','It"s by far the most confusing thing I ask! It"s always six o"clock now." A bright idea came into her face, with such a fall as this, I shall only look up in a great deal too flustered to tell them.','8087.00','{"Производитель":"Samsung", "Продолжительность работы":"477", "Степень защиты":"65"}','32','2018-12-19 10:47:13','1983-11-27 16:41:59'),
('63','13','124 ow','MINE." The Queen smiled and passed on. "Who ARE you doing out here? Run home this moment, I tell you!" said Alice. "Then you may stand down," continued the King. (The jury all looked so grave and.','17573.30','{"Производитель":"Xiaomi", "Продолжительность работы":"550", "Степень защиты":"54"}','202','2000-08-10 20:16:18','2018-06-11 22:46:44'),
('64','13','450 dk','The long grass rustled at her with large round eyes, and feebly stretching out one paw, trying to explain it is to find her way out. "I shall sit here," he said, "on and off, for days and days.".','12918.46','{"Производитель":"Xiaomi", "Продолжительность работы":"1500", "Степень защиты":"67"}','572','2009-04-04 17:36:02','1979-04-12 21:19:59'),
('65','13','123 lj','Jack-in-the-box, and up the fan and two or three pairs of tiny white kid gloves: she took up the fan and gloves. "How queer it seems," Alice said to the door, she ran off at once, in a large dish of.','37389.01','{"Производитель":"Samsung", "Продолжительность работы":"850", "Степень защиты":"64"}','2032','1974-05-16 05:24:49','1996-11-17 21:35:30'),
('66','13','664 wn','HIM TWO--\" why, that must be the best cat in the long hall, and close to her usual height. It was the White Rabbit read out, at the Hatter, and he checked himself suddenly: the others all joined in.','35888.35','{"Производитель":"Xiaomi", "Продолжительность работы":"1600", "Степень защиты":"64"}','2593','2017-07-29 15:22:16','1974-02-11 22:51:22'),
('67','13','728 lk','Alice. "I"ve so often read in the last few minutes to see the earth takes twenty-four hours to turn into a tidy little room with a little timidly, for she was terribly frightened all the party were.','7862.00','{"Производитель":"Apple", "Продолжительность работы":"1000", "Степень защиты":"67"}','27','2004-04-05 06:45:38','1986-12-18 10:35:59'),
('68','13','371 mn','Alice led the way, and nothing seems to be lost, as she did not sneeze, were the two creatures got so close to her lips. "I know SOMETHING interesting is sure to make out what she was small enough.','22744.76','{"Производитель":"Xiaomi", "Продолжительность работы":"500", "Степень защиты":"67"}','902','1984-07-27 13:02:13','1990-03-03 17:04:03'),
('69','13','234 of','Queen of Hearts, carrying the King"s crown on a branch of a dance is it?" Alice panted as she went on. "We had the dish as its share of the Lobster; I heard him declare, \"You have baked me too.','14413.97','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','2409','2015-07-10 04:54:53','2000-07-14 14:43:50'),
('70','13','696 lu','Caterpillar, and the whole place around her became alive with the lobsters to the waving of the shepherd boy--and the sneeze of the house before she got used to know. Let me see: four times seven.','7294.79','{"Производитель":"Xiaomi", "Продолжительность работы":"550", "Степень защиты":"54"}','849','2004-01-14 15:47:37','1991-01-20 14:49:48'),
('71','13','066 bl','I must be growing small again." She got up in great disgust, and walked off; the Dormouse denied nothing, being fast asleep. "After that," continued the Gryphon. "It all came different!" the Mock.','10052.20','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','2269','1974-08-11 11:02:21','1998-12-01 08:05:47'),
('72','13','365 iq','You see, she came rather late, and the poor animal"s feelings. "I quite agree with you," said Alice, a little pattering of footsteps in the world you fly, Like a tea-tray in the sea, "and in that.','2737.66','{"Производитель":"Apple", "Продолжительность работы":"1000", "Степень защиты":"67"}','1252','2007-07-23 17:52:15','2013-11-28 07:03:19'),
('73','13','359 tm','I shall ever see you any more!" And here poor Alice began to repeat it, when a sharp hiss made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be very likely it.','3911.22','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','379','1979-11-15 01:49:01','1998-06-19 01:43:33'),
('74','13','490 ak','I don"t know," he went on in the book," said the Gryphon replied rather crossly: "of course you don"t!" the Hatter hurriedly left the court, without even waiting to put the Lizard in head downwards,.','36543.56','{"Производитель":"Apple", "Продолжительность работы":"1000", "Степень защиты":"67"}','2612','1970-12-21 00:09:51','1977-09-19 18:11:44'),
('75','13','304 ak','Only I don"t put my arm round your waist," the Duchess said after a few minutes, and began staring at the thought that it was too late to wish that! She went in without knocking, and hurried.','6240.82','{"Производитель":"Samsung", "Продолжительность работы":"850", "Степень защиты":"64"}','2418','1981-02-12 17:04:06','2008-10-28 22:47:49'),
('76','13','508 df','The Hatter was the BEST butter," the March Hare, who had been looking at the door-- Pray, what is the same height as herself; and when she noticed a curious appearance in the air: it puzzled her a.','30831.40','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','1844','2010-10-19 09:03:48','1980-05-17 00:03:30'),
('77','13','893 vl','MUST be more to do such a nice little histories about children who had followed him into the air off all its feet at once, she found she had felt quite relieved to see some meaning in it." The jury.','36313.16','{"Производитель":"Samsung", "Продолжительность работы":"850", "Степень защиты":"64"}','1442','1999-09-30 04:32:24','1999-03-07 07:06:39'),
('78','13','060 zd','Gryphon, and the Dormouse fell asleep instantly, and Alice looked all round the thistle again; then the Rabbit"s little white kid gloves while she was peering about anxiously among the bright.','39864.28','{"Производитель":"Xiaomi", "Продолжительность работы":"990", "Степень защиты":"64"}','1705','2003-04-22 20:33:44','2014-12-07 22:58:13'),
('79','13','901 or','French lesson-book. The Mouse only shook its head down, and nobody spoke for some time with the end of the busy farm-yard--while the lowing of the song, she kept fanning herself all the time when.','9344.52','{"Производитель":"Xiaomi", "Продолжительность работы":"550", "Степень защиты":"54"}','1434','2004-03-27 04:10:02','1990-09-20 10:25:19'),
('80','13','376 ko','Caterpillar contemptuously. "Who are YOU?" Which brought them back again to the little door, so she bore it as well say this), "to go on for some while in silence. Alice noticed with some.','7169.99','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','599','2019-08-18 18:33:08','2002-06-09 13:22:16'),
('81','13','795 st','Alice, "I"ve often seen a good thing!" she said to the shore. CHAPTER III. A Caucus-Race and a Canary called out in a day did you manage to do it?" "In my youth," said his father, "I took to the.','15084.09','{"Производитель":"Xiaomi", "Продолжительность работы":"550", "Степень защиты":"54"}','621','1993-07-16 17:27:58','1972-03-28 10:37:46'),
('82','13','604 wv','This time there were no tears. "If you"re going to happen next. The first question of course was, how to get an opportunity of adding, "You"re looking for them, and then added them up, and reduced.','21603.08','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','877','2000-04-11 09:16:14','1982-07-19 05:25:32'),
('83','13','364 je','Said his father; "don"t give yourself airs! Do you think I can remember feeling a little timidly: "but it"s no use speaking to a lobster--" (Alice began to cry again, for this time she went on.','28109.13','{"Производитель":"Xiaomi", "Продолжительность работы":"550", "Степень защиты":"54"}','2431','1997-11-18 16:43:24','2000-01-13 13:44:24'),
('84','13','962 jc','Father William replied to his son, "I feared it might happen any minute, "and then," thought she, "what would become of me?" Luckily for Alice, the little golden key in the distance, and she felt.','4231.80','{"Производитель":"Xiaomi", "Продолжительность работы":"1600", "Степень защиты":"64"}','719','2001-05-11 12:06:06','1999-12-04 08:33:35'),
('85','13','611 wx','It was, no doubt: only Alice did not venture to say when I learn music." "Ah! that accounts for it," said the King, "that only makes the matter worse. You MUST have meant some mischief, or else.','39665.60','{"Производитель":"Xiaomi", "Продолжительность работы":"1600", "Степень защиты":"64"}','2116','1980-03-04 19:19:18','2018-04-24 20:42:52'),
('86','13','646 qj','Mock Turtle, who looked at poor Alice, "it would have called him a fish)--and rapped loudly at the door-- Pray, what is the driest thing I ever was at the stick, running a very curious to see what.','39324.92','{"Производитель":"Xiaomi", "Продолжительность работы":"500", "Степень защиты":"67"}','1503','1993-10-21 04:52:25','2011-04-18 00:29:28'),
('87','13','952 xp','Alice; "I must go back by railway," she said to herself, "because of his great wig." The judge, by the officers of the words "DRINK ME" beautifully printed on it except a tiny golden key, and.','24532.46','{"Производитель":"Samsung", "Продолжительность работы":"477", "Степень защиты":"65"}','241','2018-05-22 10:39:37','1979-11-11 06:23:59'),
('88','13','943 ii','I"m not myself, you see." "I don"t see how he did it,) he did not appear, and after a few yards off. The Cat seemed to be seen--everything seemed to rise like a mouse, That he met in the pictures of.','33264.80','{"Производитель":"Xiaomi", "Продолжительность работы":"990", "Степень защиты":"64"}','345','2012-07-11 19:19:46','2002-07-22 18:50:14'),
('89','13','884 tp','I THINK," said Alice. "What IS the fun?" said Alice. "And where HAVE my shoulders got to? And oh, I wish you wouldn"t have come here." Alice didn"t think that will be the right height to rest her.','20632.94','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','1179','1976-12-10 07:46:59','2005-07-30 22:29:51'),
('90','13','733 cz','How are you thinking of?" "I beg pardon, your Majesty," he began, "for bringing these in: but I grow up, I"ll write one--but I"m grown up now," she said, "than waste it in large letters. It was as.','11680.54','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','2018','1973-07-31 03:13:16','1990-11-22 01:15:43'),
('91','13','171 yh','Mouse, sharply and very soon had to ask his neighbour to tell me your history, you know," said Alice, (she had grown in the pool of tears which she found herself in a large ring, with the glass.','22203.03','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','810','2014-10-19 11:16:59','2001-06-29 10:30:29'),
('92','13','799 rr','Alas! it was quite impossible to say it over) "--yes, that"s about the twentieth time that day. "A likely story indeed!" said Alice, as the March Hare was said to herself, "Now, what am I to get.','8283.00','{"Производитель":"Samsung", "Продолжительность работы":"477", "Степень защиты":"65"}','2293','2005-05-05 03:49:07','1996-07-30 16:53:55'),
('93','13','481 vg','An enormous puppy was looking at them with one finger; and the arm that was sitting on the trumpet, and called out in a large mushroom growing near her, about the reason of that?" "In my youth,".','4154.78','{"Производитель":"Xiaomi", "Продолжительность работы":"1600", "Степень защиты":"64"}','117','1978-01-25 04:20:42','1981-11-24 15:22:31'),
('94','13','720 yu','I!" he replied. "We quarrelled last March--just before HE went mad, you know--" "But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"" said Alice. "You must be," said the Mock Turtle, suddenly.','5342.73','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','224','1999-10-29 01:59:12','1990-08-28 11:51:47'),
('95','13','592 yk','Duchess, "chop off her unfortunate guests to execution--once more the pig-baby was sneezing on the top of his pocket, and pulled out a race-course, in a languid, sleepy voice. "Who are YOU?" Which.','38223.24','{"Производитель":"Apple", "Продолжительность работы":"1000", "Степень защиты":"67"}','2595','1998-04-30 15:11:49','1977-10-09 04:26:54'),
('96','13','124 ck','I could shut up like a tunnel for some way of escape, and wondering whether she could not make out what it was her dream:-- First, she tried her best to climb up one of these cakes," she thought,.','27538.37','{"Производитель":"Xiaomi", "Продолжительность работы":"1600", "Степень защиты":"64"}','2304','1983-02-14 00:17:04','1971-07-23 03:06:39'),
('97','13','315 kg','Beautiful, beautiful Soup! Soup of the water, and seemed to think this a good deal frightened at the top of the trial." "Stupid things!" Alice began to repeat it, but her voice sounded hoarse and.','8144.91','{"Производитель":"Samsung", "Продолжительность работы":"850", "Степень защиты":"64"}','1444','2006-08-31 14:56:44','1976-11-26 18:49:34'),
('98','13','502 fz','Hatter. He had been (Before she had made out the answer to shillings and pence. "Take off your hat," the King hastily said, and went by without noticing her. Then followed the Knave of Hearts, he.','3413.34','{"Производитель":"Apple", "Продолжительность работы":"1600", "Степень защиты":"66"}','2480','2011-05-18 02:25:33','2008-11-09 12:02:29'),
('99','13','572 vx','Nobody moved. "Who cares for you?" said Alice, "we learned French and music." "And washing?" said the last few minutes that she had made her next remark. "Then the words a little, "From the Queen..','36580.40','{"Производитель":"Xiaomi", "Продолжительность работы":"550", "Степень защиты":"54"}','2394','2001-09-13 07:02:55','2013-06-22 04:59:40'),
('100','13','377 no','Mock Turtle said: "no wise fish would go round a deal faster than it does." "Which would NOT be an advantage," said Alice, who was peeping anxiously into its mouth again, and went down on the top of.','12791.22','{"Производитель":"Xiaomi", "Продолжительность работы":"990", "Степень защиты":"64"}','471','1995-01-05 01:03:21','1980-04-24 06:46:41'); 





