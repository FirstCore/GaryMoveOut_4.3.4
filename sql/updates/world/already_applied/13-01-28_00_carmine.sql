--
-- les carmine
--

-- quest_template
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 26713; 
UPDATE `quest_template` SET `Flags` = 65536, `SpecialFlags` = 0 WHERE `Id` = 26668;
UPDATE `quest_template` SET `Type` = 1, `Flags` = 2 WHERE `Id` = 26713;

-- npc_spellclick_spells
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 43863;
INSERT INTO  `npc_spellclick_spells` VALUES ('43863',  '81953',  '0',  '0');

-- conditions
DELETE FROM `conditions` WHERE `SourceGroup` = 43863;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 43863, 81953, 0, 0, 9, 0, 26714, 0, 0, 0, 0, 0, '', 'Npc_spellclick_spells - ''Sombrembrase, la progéniture du Brise-monde'' Doit etre accepté'),
(18, 43863, 81953, 0, 0, 8, 0, 26714, 0, 0, 1, 0, 0, '', 'Npc_spellclick_spells - ''Sombrembrase, la progéniture du Brise-monde'' Doit pas etre remplie');

-- creature_template
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `unit_flags2` = 0, `VehicleId` = '', `npcflag` = 0, `type_flags` = 0 WHERE `entry` = 43496;
UPDATE `creature_template` SET `KillCredit1` = 579 WHERE `entry` IN (434,,429,431,432,433,568);
UPDATE `creature_template` SET `npcflag` = 16777216, `type_flags` = 0 WHERE `entry` = 43863;