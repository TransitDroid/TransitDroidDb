

CREATE DATABASE `transit_hub` /*!40100 DEFAULT CHARACTER SET utf8 */;


CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `cardId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (`username`),
  KEY `card_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `usersroles` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE USER 'me' IDENTIFIED BY 'pass';
GRANT ALL ON `transit_hub`.* TO 'me'@'%' IDENTIFIED BY 'pass';
GRANT ALL ON `transit_hub`.* TO 'me'@'localhost' IDENTIFIED BY 'pass';
FLUSH PRIVILEGES;

CREATE TABLE `cards` (
  `id` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `monthlyPassId` bigInt(20) DEFAULT NULL,
  `nightlyPassId` bigInt(20) DEFAULT NULL,
  `dailyPassId` bigInt(20) DEFAULT NULL,
  `threeDayPassId` bigInt(20) DEFAULT NULL,
  `singlePassId` bigInt(20) DEFAULT NULL,
  `yearlyPassId` bigInt(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `monthlyPass` (
  `id` bigInt(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `nightlyPass` (
  `id` bigInt(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `dailyPass` (
  `id` bigInt(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `threeDayPass` (
  `id` bigInt(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `singlePass` (
  `id` bigInt(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `yearlyPass` (
  `id` bigInt(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  







