SET
  NAMES utf8mb4;

SET
  FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- ----------------------------
-- Table structure for account_thirdpartys
-- ----------------------------
DROP TABLE IF EXISTS `account_thirdpartys`;

CREATE TABLE `account_thirdpartys` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `account_uuid` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账户uuid',
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `openid` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '第三方openid',
  `unionid` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '第三方unionid',
  `platform` tinyint(3) UNSIGNED NOT NULL COMMENT '渠道 1-qq/0-微信/2-微博/3-钉钉/4-apple id',
  `appid` int(10) UNSIGNED NOT NULL,
  `create_at` datetime NOT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 46 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户第三方信息';