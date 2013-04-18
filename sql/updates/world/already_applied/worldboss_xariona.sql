--
-- Worldboss Xariona
--

SET @ENTRY:=50061;

UPDATE `creature_template` SET `exp` = 3, `Health_mod` = 240.0067, `Mana_mod` = 0, `mechanic_immune_mask` = 652951551, `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 15, `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;

UPDATE `creature` SET `spawntimesecs` = 259200 WHERE `id` = @ENTRY;

DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 8000, 18000, 12000, 25000, 11, 93494, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Xariona - Twilight Breath'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 10000, 20000, 15000, 30000, 11, 93546, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Xariona - Twilight Fissure'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 15000, 30000, 60000, 60000, 11, 93553, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Xariona - Twilight Zone'),
(@ENTRY, 0, 3, 0, 0, 0, 100, 0, 20000, 30000, 20000, 35000, 11, 93556, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Xariona - Unleashed Magic');

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 69876, 56, 1, 0, 1, 1),
(@ENTRY, 67132, 4, 1, 0, 1, 1),
(@ENTRY, 67138, 4, 1, 0, 1, 1),
(@ENTRY, 67142, 4, 1, 0, 1, 1),
(@ENTRY, 52388, 4, 1, 0, 1, 1),
(@ENTRY, 67148, 3, 1, 0, 1, 1),
(@ENTRY, 67144, 3, 1, 0, 1, 1),
(@ENTRY, 67137, 3, 1, 0, 1, 1),
(@ENTRY, 67134, 3, 1, 0, 1, 1),
(@ENTRY, 68782, 3, 1, 0, 1, 1),
(@ENTRY, 52378, 3, 1, 0, 1, 1),
(@ENTRY, 52382, 3, 1, 0, 1, 1),
(@ENTRY, 67141, 3, 1, 0, 1, 1),
(@ENTRY, 67147, 3, 1, 0, 1, 1),
(@ENTRY, 67135, 3, 1, 0, 1, 1),
(@ENTRY, 67146, 3, 1, 0, 1, 1),
(@ENTRY, 52371, 3, 1, 0, 1, 1),
(@ENTRY, 52374, 3, 1, 0, 1, 1),
(@ENTRY, 52379, 3, 1, 0, 1, 1),
(@ENTRY, 67149, 2, 1, 0, 1, 1),
(@ENTRY, 52376, 2, 1, 0, 1, 1),
(@ENTRY, 67129, 2, 1, 0, 1, 1),
(@ENTRY, 67130, 2, 1, 0, 1, 1),
(@ENTRY, 67140, 2, 1, 0, 1, 1),
(@ENTRY, 52366, 2, 1, 0, 1, 1),
(@ENTRY, 52368, 2, 1, 0, 1, 1),
(@ENTRY, 52369, 2, 1, 0, 1, 1),
(@ENTRY, 52385, 2, 1, 0, 1, 1),
(@ENTRY, 69820, 2, 1, 0, 1, 1),
(@ENTRY, 67133, 2, 1, 0, 1, 1),
(@ENTRY, 52386, 2, 1, 0, 1, 1),
(@ENTRY, 67150, 1.9, 1, 0, 1, 1),
(@ENTRY, 52364, 1.9, 1, 0, 1, 1),
(@ENTRY, 52365, 1.9, 1, 0, 1, 1),
(@ENTRY, 52375, 1.9, 1, 0, 1, 1),
(@ENTRY, 67136, 1.7, 1, 0, 1, 1),
(@ENTRY, 68788, 1.7, 1, 0, 1, 1),
(@ENTRY, 67139, 1.6, 1, 0, 1, 1),
(@ENTRY, 52370, 1.6, 1, 0, 1, 1),
(@ENTRY, 52372, 1.6, 1, 0, 1, 1),
(@ENTRY, 67131, 1.4, 1, 0, 1, 1),
(@ENTRY, 67143, 1.4, 1, 0, 1, 1),
(@ENTRY, 52367, 1.4, 1, 0, 1, 1),
(@ENTRY, 52373, 1.4, 1, 0, 1, 1),
(@ENTRY, 67145, 1, 1, 0, 1, 1),
(@ENTRY, 68781, 1, 1, 0, 1, 1),
(@ENTRY, 68787, 1, 1, 0, 1, 1),
(@ENTRY, 52383, 1, 1, 0, 1, 1),
(@ENTRY, 52363, 0.9, 1, 0, 1, 1),
(@ENTRY, 68783, 0.7, 1, 0, 1, 1),
(@ENTRY, 68789, 0.7, 1, 0, 1, 1),
(@ENTRY, 52377, 0.3, 1, 0, 1, 1);