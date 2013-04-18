-- Enregistrement des commandes
INSERT IGNORE INTO `command` VALUES
('signal bug', 0, 'Syntax: .signal bug $id $commentaire\nSyntax: .signal bug [link] $commentaire\r\n=> Classe une quete comme infaissable.'),
('signal ok', 1, 'Syntax: .signal ok $id\nSyntax: .signal ok [link]\r\n=> Classe une quete comme faissable.'),
('signal quete', 1, 'Syntax: .signal quete $id\nSyntax: .signal quete [link]\r\n=> Signale une quete à tester.');

-- Création de la table
CREATE TABLE IF NOT EXISTS `quest_signal` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1:signalé | 2:bug | 3:ok',
  `date` datetime NOT NULL,
  `name` text NOT NULL,
  `commentaire` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT IGNORE INTO `quest_signal` (`id`) SELECT `id` FROM `quest_template`;
