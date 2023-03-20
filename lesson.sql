#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Eligendi facere assumenda eum perferendis. Dolor qui cupiditate voluptatem quaerat sint sequi et reiciendis. Fugiat laudantium maiores aut repellendus.', 'aut', 55047168, NULL, '1990-12-30 06:34:12', '1970-02-27 11:00:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Voluptates neque quia officia qui provident. Cupiditate maxime quidem quam maiores deleniti magnam saepe tempore. Qui inventore ullam aut maxime neque.', 'in', 0, NULL, '1995-03-17 01:36:15', '1970-09-05 04:37:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Ab ut pariatur in iusto quisquam illo. Culpa possimus eos est vel est. Molestiae fugiat et repellat asperiores quos beatae quas.', 'distinctio', 657380, NULL, '1995-06-08 10:04:11', '2010-08-17 16:50:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Dolor sunt mollitia fugiat inventore corporis quas accusantium voluptatem. Aut id laborum est ut voluptate quidem.', 'debitis', 2, NULL, '1981-01-16 09:53:52', '1977-09-12 23:36:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Autem et ut in sit ut recusandae qui. Optio qui commodi non. Qui nisi vel aut reiciendis a consectetur. Ullam odit odio incidunt dolorem aut autem.', 'sequi', 27385256, NULL, '1996-03-11 03:10:38', '2014-06-22 19:24:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Expedita nisi quae dolore velit possimus assumenda quae. Repudiandae odit velit odio modi. Debitis est voluptatem voluptatem pariatur velit.', 'sit', 258561, NULL, '1983-10-14 05:20:44', '2019-12-15 12:39:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Et est rem sint earum. Iusto aliquam omnis commodi facere est est voluptas.', 'excepturi', 5, NULL, '2002-05-06 16:37:36', '1977-07-10 00:33:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'At eos accusantium tempore provident nobis. Id maxime ipsum illum labore repellat. Porro similique et est ipsa est ut. Impedit non vero porro non saepe neque est.', 'molestiae', 5, NULL, '1998-02-10 13:24:14', '1995-08-16 18:16:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Consequatur ab odit voluptates vel. Qui excepturi et iusto dolorum. Aut impedit ex delectus.', 'fuga', 746878, NULL, '2003-04-29 04:03:14', '1976-05-01 15:04:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Architecto laboriosam cupiditate dolor laudantium est perferendis molestiae. Voluptatibus minus cum saepe sit quo eveniet et. Tempore a non aut aperiam distinctio ut alias dicta. Non placeat qui aliquam consequatur.', 'rerum', 72, NULL, '1998-08-03 20:54:02', '2013-08-11 16:47:28');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'dolor', '1978-06-18 06:02:57', '2011-06-30 04:17:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'optio', '1980-11-01 21:51:32', '1978-02-17 11:40:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'modi', '2000-02-26 01:20:16', '2000-07-24 01:05:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'quas', '2010-06-30 13:50:45', '2014-09-18 06:26:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'et', '1978-05-29 09:04:20', '2018-03-05 22:51:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'impedit', '2008-11-17 18:40:30', '1981-05-30 14:23:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'quaerat', '1997-02-28 18:38:46', '2005-05-16 11:42:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'est', '2019-01-03 07:18:54', '1982-12-29 05:57:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'dolores', '2004-04-26 05:41:53', '2010-12-24 23:35:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'repudiandae', '1975-04-02 22:27:02', '1987-07-01 15:56:56');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '2', '10', 'Nemo provident est architecto quo. Et ipsum aut pariatur recusandae sed qui libero. Alias laudantium alias occaecati sint.', '2012-06-16 11:38:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '9', '7', 'Praesentium veniam deserunt rerum rem quia quo. Incidunt perspiciatis ad consectetur quae sed occaecati. Dolor quae quidem autem nemo quis est officia atque. Quia dolor illo sequi dolor iure ipsa optio.', '1998-04-08 23:24:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '4', '6', 'Incidunt autem totam hic saepe rem quia quod. Cumque aut voluptas dolorem provident quis. Esse eum dolores amet fugiat eveniet labore. Quasi temporibus vero enim quibusdam quasi sed.', '2017-10-03 14:52:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '2', '8', 'Sit a aut et aut. Eum minus perferendis nemo ratione cupiditate tempora necessitatibus. Impedit omnis nobis et totam est ea magni.', '1971-08-14 17:50:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '2', '7', 'Quisquam et vel quidem mollitia aspernatur animi et. Nam alias vel similique in ex ut. Iusto ea rerum quo nemo in.', '2009-06-27 04:15:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '8', '10', 'Veritatis ab omnis nam. Nostrum sit est et labore cupiditate libero dicta. Voluptatem ducimus itaque dolorum autem. Quam laboriosam est quis eligendi asperiores. Non et quia qui delectus ut provident consequatur dolores.', '1985-10-05 06:13:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '1', '9', 'Ducimus consequatur laboriosam tempora dolore id. Temporibus omnis aliquam quos amet. Consequatur hic ex molestiae.', '1992-07-18 13:33:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '6', '5', 'Dolores ipsam nesciunt autem. Vitae vel exercitationem inventore debitis incidunt optio. Corrupti fugiat maiores suscipit earum.', '2010-01-13 03:15:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '4', '8', 'Quam aut eligendi ea. Voluptas ducimus adipisci rerum quae ut inventore iure. Commodi consequatur quia non consequatur ad enim. Autem pariatur quos aperiam laboriosam fuga accusamus quia ducimus. Ut commodi occaecati repellendus veniam.', '1986-01-15 06:53:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '9', '9', 'Consequatur quae id ut sint perspiciatis mollitia. Velit exercitationem sequi incidunt quasi eos tempore neque. Qui culpa nobis aut quas excepturi expedita quidem. Consequuntur eum ipsa dignissimos fugit ullam.', '1980-03-19 05:55:19');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'deleniti', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'qui', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'non', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'incidunt', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'mollitia', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'soluta', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'voluptatum', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'ad', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'necessitatibus', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'recusandae', '10');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '9', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '6', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '10', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '6', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '4', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '4', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '10', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '9', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '1', '10');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', NULL, '2008-01-11', '1', '2020-10-13 07:20:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', NULL, '1995-05-22', '2', '2013-12-27 08:29:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', NULL, '2007-11-23', '3', '2007-02-13 00:36:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', NULL, '1975-09-07', '4', '1981-01-29 07:01:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', NULL, '2003-09-22', '5', '1983-07-22 08:51:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', NULL, '2004-06-23', '6', '2019-04-03 11:40:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', NULL, '1975-10-29', '7', '2011-01-29 10:39:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', NULL, '2015-12-30', '8', '2013-02-26 15:43:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', NULL, '1976-11-05', '9', '2015-11-23 11:51:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', NULL, '1996-04-28', '10', '1990-10-31 08:46:03', NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Dariana', 'Wilderman', 'reyes.ward@example.com', 'cf1eb45bcf866186aeafecc6e573b749649b4ac9', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Thurman', 'Roob', 'emmalee.little@example.net', '3bed6b25e5c3eb411affe37d18112bc12f5cd4c9', '752069', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Delia', 'Orn', 'zane.bruen@example.net', '92c84081febab0653e5f981e7eff014c65ff9fe4', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Dustin', 'Willms', 'antonina.kihn@example.org', '742d4e36cfd7b273b65943c214469ace0c0ab78e', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Manuel', 'Price', 'chelsey.becker@example.com', 'ef5c3d38e8939b8faf9806043c2d5c957607f006', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Ernestine', 'Rogahn', 'xvon@example.com', 'b7e89099fbf9413fa31e287d9ca469fdb11de3f3', '95', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Juwan', 'Hammes', 'ckoss@example.net', '33b7b159ba94bc52373abe7b540bf14b0f269279', '64', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Annalise', 'Runte', 'cayla72@example.com', '0bb056618ed5a6d3fd251a769ebc236f346cf774', '1726904022', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Luz', 'Marks', 'isidro.botsford@example.net', '59eef9f651c6bc3f38548c6f5a2a21276eca3a72', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Charles', 'Beer', 'laron56@example.net', '4ce17039860bc396c9c0c44f5073fbd0c2da9cd9', '100702', '0');


