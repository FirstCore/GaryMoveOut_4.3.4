--
-- Worldboss Julak-Doom
--

REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (93611, 94633, 0, 'Black Breath summon');

SET @ENTRY:=50089;

UPDATE `creature_template` SET `Health_mod` = 150, `faction_A` = 14, `faction_H` = 14, `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 15, `AIName` = 'SmartAI'  WHERE `entry` = @ENTRY;

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 0, 0, 0, '94635 0');

UPDATE `creature` SET `spawntimesecs` = 259200 WHERE `id` = @ENTRY;

DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 10000, 20000, 15000, 22000, 11, 93611, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Julak-Doom - Black Breath'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 15000, 25000, 25000, 35000, 11, 93621, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Julak-Doom - Dark Whispers'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 20000, 15000, 25000, 11, 93610, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Julak-Doom - Massive Shockwave');

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 69844, 45, 1, 0, 1, 1),
(@ENTRY, 67140, 4, 1, 0, 1, 1),
(@ENTRY, 67149, 3, 1, 0, 1, 1),
(@ENTRY, 67133, 3, 1, 0, 1, 1),
(@ENTRY, 67142, 3, 1, 0, 1, 1),
(@ENTRY, 52383, 3, 1, 0, 1, 1),
(@ENTRY, 67136, 3, 1, 0, 1, 1),
(@ENTRY, 67147, 3, 1, 0, 1, 1),
(@ENTRY, 52368, 3, 1, 0, 1, 1),
(@ENTRY, 67143, 2, 1, 0, 1, 1),
(@ENTRY, 67144, 2, 1, 0, 1, 1),
(@ENTRY, 52371, 2, 1, 0, 1, 1),
(@ENTRY, 52374, 2, 1, 0, 1, 1),
(@ENTRY, 67138, 2, 1, 0, 1, 1),
(@ENTRY, 67150, 2, 1, 0, 1, 1),
(@ENTRY, 67129, 2, 1, 0, 1, 1),
(@ENTRY, 52378, 2, 1, 0, 1, 1),
(@ENTRY, 67134, 2, 1, 0, 1, 1),
(@ENTRY, 67146, 2, 1, 0, 1, 1),
(@ENTRY, 67148, 2, 1, 0, 1, 1),
(@ENTRY, 68782, 2, 1, 0, 1, 1),
(@ENTRY, 52372, 2, 1, 0, 1, 1),
(@ENTRY, 52373, 2, 1, 0, 1, 1),
(@ENTRY, 67139, 1.8, 1, 0, 1, 1),
(@ENTRY, 68788, 1.8, 1, 0, 1, 1),
(@ENTRY, 68789, 1.8, 1, 0, 1, 1),
(@ENTRY, 52363, 1.8, 1, 0, 1, 1),
(@ENTRY, 52382, 1.8, 1, 0, 1, 1),
(@ENTRY, 52379, 1.7, 1, 0, 1, 1),
(@ENTRY, 67130, 1.6, 1, 0, 1, 1),
(@ENTRY, 67135, 1.6, 1, 0, 1, 1),
(@ENTRY, 67145, 1.6, 1, 0, 1, 1),
(@ENTRY, 68783, 1.6, 1, 0, 1, 1),
(@ENTRY, 68787, 1.6, 1, 0, 1, 1),
(@ENTRY, 52376, 1.6, 1, 0, 1, 1),
(@ENTRY, 67131, 1.3, 1, 0, 1, 1),
(@ENTRY, 52367, 1.3, 1, 0, 1, 1),
(@ENTRY, 52369, 1.3, 1, 0, 1, 1),
(@ENTRY, 52388, 1.3, 1, 0, 1, 1),
(@ENTRY, 67141, 1.2, 1, 0, 1, 1),
(@ENTRY, 68781, 1.2, 1, 0, 1, 1),
(@ENTRY, 52370, 1.2, 1, 0, 1, 1),
(@ENTRY, 52377, 1.2, 1, 0, 1, 1),
(@ENTRY, 52385, 1.2, 1, 0, 1, 1),
(@ENTRY, 67132, 1.1, 1, 0, 1, 1),
(@ENTRY, 67137, 1.1, 1, 0, 1, 1),
(@ENTRY, 52386, 1.1, 1, 0, 1, 1),
(@ENTRY, 52365, 0.8, 1, 0, 1, 1),
(@ENTRY, 52375, 0.8, 1, 0, 1, 1),
(@ENTRY, 69820, 0.8, 1, 0, 1, 1),
(@ENTRY, 52364, 0.7, 1, 0, 1, 1),
(@ENTRY, 52366, 0.5, 1, 0, 1, 1);