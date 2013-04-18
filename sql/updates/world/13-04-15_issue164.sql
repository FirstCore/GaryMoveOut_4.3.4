--
-- Issue #164 (probleme aile du néant)
--

-- Creature
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(22113, 0, 0, 0, 0, 0, 20813, 0, 0, 0, 'Mordenai', '', '', 0, 71, 71, 1, 1840, 1840, 3, 1.71, 1.14286, 1, 1, 355.2, 508.8, 0, 348, 4.6, 2000, 0, 2, 32768, 0, 8, 0, 0, 0, 0, 0, 312, 464.4, 56, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 1, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2318, 613097436, 2, '', 12340),
(21657, 0, 0, 0, 0, 0, 20593, 0, 0, 0, 'Neltharaku', '', '', 8397, 72, 72, 1, 7, 7, 3, 1, 2.85714, 1, 1, 583.3, 832.2, 0, 597, 4.6, 2000, 0, 1, 256, 0, 8, 0, 0, 0, 0, 0, 513, 761.9, 69, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 5, 1, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 220, 1, 0, 613097436, 2, 'npc_neltharaku', 12340);


-- Questrelation
DELETE FROM `creature_questrelation` WHERE `id` IN (21657,22113);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(21657, 10814),
(21657, 10836),
(21657, 10837),
(21657, 10854),
(21657, 10858),
(22113, 10804),
(22113, 10811),
(22113, 11012),
(22113, 11013);

-- involvedrelation
DELETE FROM `creature_involvedrelation` WHERE `id` IN (21657,22113);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(21657, 10811),
(21657, 10814),
(21657, 10836),
(21657, 10837),
(21657, 10854),
(22113, 10804),
(22113, 10870),
(22113, 11012);

-- Quetes
--

-- Phase 1 neutre
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 10804;
UPDATE `quest_template` SET `NextQuestId` = 10866 WHERE `Id` = 10858;
UPDATE `quest_template` SET `RewardFactionValueId1` = 5, `RewardFactionValueIdOverride1` = '1400100' WHERE `Id` = 10870; /* Valeur a modifier suivant rate reput */
UPDATE `quest_template` SET `RequiredNpcOrGo1` = -185156 WHERE `Id` = 10866;

-- Phase 2 neutre -> amicale
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 1 WHERE `Id` = 11013;
UPDATE `quest_template` SET `RequiredSkillId` = 393, `RequiredSkillPoints` = 1, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0, `PrevQuestId` = 11014 WHERE `Id` = 11016;
UPDATE `quest_template` SET `RequiredSkillId` = 186, `RequiredSkillPoints` = 1, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0, `PrevQuestId` = 11014 WHERE `Id` = 11018;
UPDATE `quest_template` SET `RequiredSkillId` = 182, `RequiredSkillPoints` = 1, `PrevQuestId` = 11014 WHERE `Id` = 11017;
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0, `PrevQuestId` = 11014 WHERE `Id` = 11015;
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0, `PrevQuestId` = 11014 WHERE `Id` = 11020;
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0, `PrevQuestId` = 11014 WHERE `Id` = 11035;
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0, `PrevQuestId` = 11014, `Flags` = 4224, `SpecialFlags` = 1 WHERE `Id` = 11049;
UPDATE `quest_template` SET `Method` = 2, `PrevQuestId` = 11014 WHERE `Id` = 11050;
UPDATE `quest_template` SET `Method` = 2, `PrevQuestId` = 11050 WHERE `Id` = 11019;

-- Phase 3 amical -> honoré
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 3000, `NextQuestId` = 11075 WHERE `Id` = 11053;
UPDATE `quest_template` SET `NextQuestId` = 11083 WHERE `Id` = 11075;
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0, `PrevQuestId` = 11075 WHERE `Id` = 11076;
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0, `PrevQuestId` = 11075 WHERE `Id` = 11077;
UPDATE `quest_template` SET `NextQuestId` = 11081 WHERE `Id` = 11083;
UPDATE `quest_template` SET `NextQuestId` = 11054 WHERE `Id` = 11082;

-- Phase 4 honoré -> Révéré
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 9000, `NextQuestId` = 11089 WHERE `Id` = 11084;
UPDATE `quest_template` SET `PrevQuestId` = 11084 WHERE `Id` = 11086;
UPDATE `quest_template` SET `NextQuestId` = 11063 WHERE `Id` = 11090;
UPDATE `quest_template` SET `NextQuestId` = 11064 WHERE `Id` = 11063;
UPDATE `quest_template` SET `NextQuestId` = 11067 WHERE `Id` = 11064;
UPDATE `quest_template` SET `NextQuestId` = 11068 WHERE `Id` = 11067;
UPDATE `quest_template` SET `NextQuestId` = 11069 WHERE `Id` = 11068;
UPDATE `quest_template` SET `NextQuestId` = 11070 WHERE `Id` = 11069;
UPDATE `quest_template` SET `NextQuestId` = 11071 WHERE `Id` = 11070;

-- Phase 5 Révéré -> éxalté
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 21000 WHERE `Id` = 11092;
UPDATE `quest_template` SET `PrevQuestId` = 11092, `Flags` = 4224, `SpecialFlags` = 1, `RequiredMinRepFaction` = 934, `RequiredMinRepValue` = 3000 WHERE `Id` = 11094;
UPDATE `quest_template` SET `PrevQuestId` = 11092,`RequiredMinRepFaction` = 934, `RequiredMinRepValue` = 3000 WHERE `Id` = 11097;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 932, `RequiredMinRepValue` = 3000, `PrevQuestId` = 11092, `Flags` = 4224, `SpecialFlags` = 1 WHERE `Id` = 11099;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 932, `RequiredMinRepValue` = 3000, `PrevQuestId` = 11092 WHERE `Id` = 11101;

-- Phase finale
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 42000 WHERE `Id` = 11107;

-- Fix quest
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10858;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (22112, 10858);
DELETE FROM `creature_questrelation` WHERE `quest` = 10866;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (22112, 10866);
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10866;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10866;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (22112, 10866);
DELETE FROM `creature_questrelation` WHERE `quest` = 10870;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (22112, 10870);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(77645, 22113, 530, 1, 1, 0, 0, -4097.8, 975.647, 25.0269, 4.72217, 7200, 0, 0, 86160, 3231, 0, 0, 0, 0);
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 23285;
DELETE FROM `item_loot_template` WHERE (`entry`=32724);
INSERT INTO `item_loot_template` VALUES 
(32724, 32464, -5.8, 1, 0, 1, 5),
(32724, 32468, -5.3, 1, 0, 1, 5),
(32724, 32470, -5.5, 1, 0, 1, 5),
(32724, 32726, 2, 1, 0, 1, 1),
(32724, 32727, 11.3, 1, 0, 1, 1),
(32724, 32728, 60.6, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=23286) AND (`item`=32726);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(23286, 32726, 2, 1, 0, 1, 1);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `dynamicflags` = 0 WHERE `entry` = 23100;
UPDATE `quest_template` SET `Method` = 2, `Flags` = 128 WHERE `Id` = 11090;
UPDATE `quest_template` SET `SpecialFlags` = 0, `RequiredNpcOrGo1` = 22357, `RequiredNpcOrGoCount1` = 1, `RequiredSpellCast1` = 0 WHERE `Id` = 11090;
DELETE FROM `creature` WHERE `id`=22433;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(78787, 22433, 530, 1, 1, 0, 22433, -5141.44, 602.145, 83.1783, 0.323304, 300, 0, 0, 7266, 1, 0, 0, 134250496, 0);
DELETE FROM `creature` WHERE `id`=23434;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(23434, 530, 1, 1, 0, 23434, -4111.93, 1106.36, 42.9845, 0.0571742, 300, 0, 0, 57440, 10, 0, 0, 0, 0);
