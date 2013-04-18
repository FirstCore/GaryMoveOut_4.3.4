-- Création de la table crédits
CREATE TABLE IF NOT EXISTS `account_site` (
  `id_game` int(11) NOT NULL,
  `id_site` int(11) NOT NULL,
  `credits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_game`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT IGNORE INTO `account_site` (`id_game`) SELECT `id` FROM `account`;