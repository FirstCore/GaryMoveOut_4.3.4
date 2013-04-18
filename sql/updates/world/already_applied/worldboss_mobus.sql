--
-- worldboss Mobus
--

SET @ENTRY:=50009;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `Health_mod` = 150, `Mana_mod` = 0, `mechanic_immune_mask` = 652951551, `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 15, `AIName` = 'SmartAI'  WHERE `entry` = @ENTRY;

UPDATE `creature` SET `spawntimesecs` = 259200 WHERE `id` = @ENTRY;

DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 12000, 18000, 15000, 25000, 11, 93494, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Mobus - Wake'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 8000, 18000, 15000, 30000, 11, 93492, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Mobus - Ram'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 18000, 15000, 30000, 11, 93490, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Mobus - Algae'),
(@ENTRY, 0, 3, 0, 2, 0, 100, 0, 30, 30, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mobus - Enrage');


DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 69843, 63, 1, 0, 1, 1),
(@ENTRY, 67135, 9, 1, 0, 1, 1),
(@ENTRY, 52373, 8, 1, 0, 1, 1),
(@ENTRY, 67146, 7, 1, 0, 1, 1),
(@ENTRY, 52379, 7, 1, 0, 1, 1),
(@ENTRY, 67140, 5, 1, 0, 1, 1),
(@ENTRY, 67148, 5, 1, 0, 1, 1),
(@ENTRY, 67149, 5, 1, 0, 1, 1),
(@ENTRY, 67134, 4, 1, 0, 1, 1),
(@ENTRY, 67145, 4, 1, 0, 1, 1),
(@ENTRY, 67147, 4, 1, 0, 1, 1),
(@ENTRY, 52371, 4, 1, 0, 1, 1),
(@ENTRY, 52378, 4, 1, 0, 1, 1),
(@ENTRY, 52385, 4, 1, 0, 1, 1),
(@ENTRY, 67138, 3, 1, 0, 1, 1),
(@ENTRY, 68788, 3, 1, 0, 1, 1),
(@ENTRY, 52364, 3, 1, 0, 1, 1),
(@ENTRY, 52374, 3, 1, 0, 1, 1),
(@ENTRY, 52376, 3, 1, 0, 1, 1),
(@ENTRY, 52383, 3, 1, 0, 1, 1),
(@ENTRY, 52388, 3, 1, 0, 1, 1),
(@ENTRY, 67129, 3, 1, 0, 1, 1),
(@ENTRY, 67131, 3, 1, 0, 1, 1),
(@ENTRY, 67139, 3, 1, 0, 1, 1),
(@ENTRY, 67130, 2, 1, 0, 1, 1),
(@ENTRY, 67143, 2, 1, 0, 1, 1),
(@ENTRY, 67144, 2, 1, 0, 1, 1),
(@ENTRY, 68782, 2, 1, 0, 1, 1),
(@ENTRY, 68789, 2, 1, 0, 1, 1),
(@ENTRY, 52366, 2, 1, 0, 1, 1),
(@ENTRY, 52372, 2, 1, 0, 1, 1),
(@ENTRY, 52377, 2, 1, 0, 1, 1),
(@ENTRY, 52382, 2, 1, 0, 1, 1),
(@ENTRY, 52386, 2, 1, 0, 1, 1),
(@ENTRY, 67132, 1.3, 1, 0, 1, 1),
(@ENTRY, 67133, 1.3, 1, 0, 1, 1),
(@ENTRY, 67142, 1.3, 1, 0, 1, 1),
(@ENTRY, 68783, 1.3, 1, 0, 1, 1),
(@ENTRY, 52363, 1.3, 1, 0, 1, 1),
(@ENTRY, 52367, 1.3, 1, 0, 1, 1),
(@ENTRY, 67137, 0.7, 1, 0, 1, 1),
(@ENTRY, 67141, 0.7, 1, 0, 1, 1),
(@ENTRY, 68781, 0.7, 1, 0, 1, 1),
(@ENTRY, 68787, 0.7, 1, 0, 1, 1),
(@ENTRY, 52365, 0.7, 1, 0, 1, 1),
(@ENTRY, 52368, 0.7, 1, 0, 1, 1),
(@ENTRY, 52369, 0.7, 1, 0, 1, 1),
(@ENTRY, 52375, 0.7, 1, 0, 1, 1),
(@ENTRY, 69820, 0.7, 1, 0, 1, 1);