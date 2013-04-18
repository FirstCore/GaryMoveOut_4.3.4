--
-- WorldBoss Akma'hat
--

SET @ENTRY:=50063;

UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 155.2377, `mechanic_immune_mask` = 652951551, `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 15, `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;

UPDATE `creature` SET `spawntimesecs` = 259200 WHERE `id` = @ENTRY;

DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 10000, 20000, 15000, 22000, 11, 93575, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Akma\'hat - Fury of the Sands'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 10000, 20000, 15000, 20000, 11, 93578, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Akma\'hat - Sands of Time'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 20000, 10000, 20000, 11, 94968, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Akma\'hat - Shockwave'),
(@ENTRY, 0, 3, 0, 0, 0, 100, 0, 10000, 25000, 50000, 60000, 11, 93561, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akma\'hat - Stone Mantle');

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 69877, 52, 1, 0, 1, 1),
(@ENTRY, 67129, 4, 1, 0, 1, 1),
(@ENTRY, 67130, 4, 1, 0, 1, 1),
(@ENTRY, 67138, 4, 1, 0, 1, 1),
(@ENTRY, 67132, 4, 1, 0, 1, 1),
(@ENTRY, 69820, 4, 1, 0, 1, 1),
(@ENTRY, 67136, 3, 1, 0, 1, 1),
(@ENTRY, 67143, 3, 1, 0, 1, 1),
(@ENTRY, 52370, 3, 1, 0, 1, 1),
(@ENTRY, 68781, 3, 1, 0, 1, 1),
(@ENTRY, 52368, 3, 1, 0, 1, 1),
(@ENTRY, 67137, 3, 1, 0, 1, 1),
(@ENTRY, 52377, 3, 1, 0, 1, 1),
(@ENTRY, 67147, 2, 1, 0, 1, 1),
(@ENTRY, 68782, 2, 1, 0, 1, 1),
(@ENTRY, 52366, 2, 1, 0, 1, 1),
(@ENTRY, 67142, 2, 1, 0, 1, 1),
(@ENTRY, 68787, 2, 1, 0, 1, 1),
(@ENTRY, 52373, 2, 1, 0, 1, 1),
(@ENTRY, 52383, 2, 1, 0, 1, 1),
(@ENTRY, 67131, 2, 1, 0, 1, 1),
(@ENTRY, 67133, 2, 1, 0, 1, 1),
(@ENTRY, 67150, 2, 1, 0, 1, 1),
(@ENTRY, 52382, 2, 1, 0, 1, 1),
(@ENTRY, 67134, 1.9, 1, 0, 1, 1),
(@ENTRY, 67144, 1.9, 1, 0, 1, 1),
(@ENTRY, 67146, 1.9, 1, 0, 1, 1),
(@ENTRY, 67149, 1.9, 1, 0, 1, 1),
(@ENTRY, 67140, 1.8, 1, 0, 1, 1),
(@ENTRY, 67148, 1.8, 1, 0, 1, 1),
(@ENTRY, 52365, 1.8, 1, 0, 1, 1),
(@ENTRY, 52367, 1.8, 1, 0, 1, 1),
(@ENTRY, 67141, 1.6, 1, 0, 1, 1),
(@ENTRY, 52371, 1.6, 1, 0, 1, 1),
(@ENTRY, 52375, 1.6, 1, 0, 1, 1),
(@ENTRY, 67135, 1.4, 1, 0, 1, 1),
(@ENTRY, 67145, 1.4, 1, 0, 1, 1),
(@ENTRY, 52363, 1.4, 1, 0, 1, 1),
(@ENTRY, 52369, 1.4, 1, 0, 1, 1),
(@ENTRY, 52388, 1.4, 1, 0, 1, 1),
(@ENTRY, 68788, 1.3, 1, 0, 1, 1),
(@ENTRY, 52364, 1.3, 1, 0, 1, 1),
(@ENTRY, 52372, 1.3, 1, 0, 1, 1),
(@ENTRY, 52374, 1.3, 1, 0, 1, 1),
(@ENTRY, 52385, 1.3, 1, 0, 1, 1),
(@ENTRY, 52386, 1.3, 1, 0, 1, 1),
(@ENTRY, 67139, 1.1, 1, 0, 1, 1),
(@ENTRY, 52378, 1.1, 1, 0, 1, 1),
(@ENTRY, 52379, 1.1, 1, 0, 1, 1),
(@ENTRY, 68783, 1, 1, 0, 1, 1),
(@ENTRY, 68789, 0.8, 1, 0, 1, 1),
(@ENTRY, 52376, 0.8, 1, 0, 1, 1);