DROP TABLE IF EXISTS `quest_bugged`;
CREATE TABLE `quest_bugged` (
	`ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
	`bugged` BOOLEAN NOT NULL DEFAULT '1',
	PRIMARY KEY (`ID`)
);
