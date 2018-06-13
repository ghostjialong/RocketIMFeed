CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT 'user password field',
  `emailAddress` varchar(10) DEFAULT NULL,
  `nickName` varchar(20) DEFAULT NULL,
  `lastUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `avatarURL` varchar(1024) DEFAULT '' COMMENT 'url of user icon',
  `phoneNumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

CREATE TABLE `uuid_alloc` (
  `id` int(11) NOT NULL AUTO_INCREMENT comment "user id alloced",
  `osid` varchar(256) not null comment "os id of platform",
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `osid` (`osid`)
)ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


CREATE TABLE `feed` (
  `feedId` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL comment 'author id of the feed',
  `text` VARCHAR(1024) NOT NULL DEFAULT "" comment 'text content of the feed',
  `mediaLink` TEXT not null comment 'media link such as image or video',
  `commentNum` int(11) not null default 0 comment 'comment number of the feed',
  `likeNum` int(11) not null default 0 comment 'like number of the feed',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedId`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;