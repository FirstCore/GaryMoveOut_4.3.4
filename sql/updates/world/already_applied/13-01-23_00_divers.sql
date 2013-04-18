-- ----------------
--  Divers fix sql
-- ----------------
UPDATE `creature_text` SET `sound` = 0 WHERE entry IN(42722, 31111, 240);

DELETE FROM `creature_text` WHERE `entry` = 34850;

REPLACE INTO `gameobject_loot_template` VALUES (195306, 46896, -100, 1, 0, 1, 1); -- quest item

DELETE FROM `smart_scripts` WHERE `entryorguid` in (34850, 34913);

REPLACE INTO `waypoint_scripts` VALUES (3485100, 0, 18, 0, 0, 0, 0, 0, 0, 0, 3485100);

DELETE FROM `smart_scripts` WHERE (`entryorguid`=34850 AND `source_type`=0);

