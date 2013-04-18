-- Fix erreur consol instance_template

DELETE FROM `instance_template` WHERE `map` = 229;
DELETE FROM `instance_template` WHERE `map` = 309;
DELETE FROM `instance_template` WHERE `map` = 720;

INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES
(229, 0, 'instance_blackrock_spire', 0),
(309, 0, 'instance_zulgurub', 1),
(720, 0, 'instance_firelands', 1);