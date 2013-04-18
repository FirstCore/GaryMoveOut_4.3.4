-- ------------------------------------
--  UPDATE CREATURE_ADDON GILNEAS-CITY
-- ------------------------------------

-- Panicked Citizen, now using creature_template_addon
DELETE FROM `creature_addon` WHERE `guid` in (6623708, 6623923, 6623924, 6623925, 6623926, 6623927, 6623928, 6623929);

-- 44086 Panicked Citizen, running along water channel
REPLACE INTO `creature_addon` VALUES (4408600, 44086000, 0, 0, 0, 0, '');

-- 4075 Rat
REPLACE INTO `creature_addon` VALUES (407500, 4075000, 0, 0, 0, 0, '');
REPLACE INTO `creature_addon` VALUES (407501, 4075010, 0, 0, 0, 0, '');
REPLACE INTO `creature_addon` VALUES (407502, 4075020, 0, 0, 0, 0, '');