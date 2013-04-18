-- ---------------------------------------------
--  UPDATE CREATURE_TEMPLATE_ADDON GILNEAS-CITY
-- ---------------------------------------------

-- Panicked Citizen emote state 34851, 44086
REPLACE INTO `creature_template_addon` VALUES (34851, 0, 0, 0, 0, 431, NULL); -- cowering in fear
REPLACE INTO `creature_template_addon` VALUES (44086, 0, 0, 0, 0, 431, NULL); -- cowering in fear

-- Prince Liam Greymane 34913 Phase 2+4(=6)
REPLACE INTO `creature_template_addon` VALUES (34913, 0, 2410, 0, 0, 0, NULL); -- mounted

-- Prince Liam Greymane 34850 Phase 1
REPLACE INTO `creature_template_addon` VALUES (34850, 0, 2410, 0, 0, 0, NULL); -- mounted

-- Lieutenant Walden 34863
REPLACE INTO `creature_template_addon` VALUES (34863, 0, 0, 7, 0, 65, NULL); -- appear dead

-- Slain Guards
REPLACE INTO `creature_template_addon` VALUES (39095, 0, 0, 7, 0, 65, NULL); -- appear dead

-- 44105 Slain Citizen
REPLACE INTO `creature_template_addon` VALUES (44105, 0, 0, 7, 0, 65, ''); -- dead flag

-- Gwen Armstead 34936 Phase 1
REPLACE INTO `creature_template_addon` VALUES (34936, 0, 0, 0, 0, 375, NULL); -- Ready 2H

-- Creature_template_addon deleted Record from Captain Broderick
DELETE FROM `creature_template_addon` WHERE (`entry`='50371');

-- Changed Creature_template_addon Query from Vincent Hersham
DELETE FROM creature_template_addon WHERE entry = 35123;
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('35123', '8');

-- Insert STATE_READY2H Emote to Tobias Mistmantle
DELETE FROM creature_template_addon WHERE entry = 35124;
INSERT INTO `creature_template_addon` (`entry`, `emote`) VALUES ('35124', '375');
