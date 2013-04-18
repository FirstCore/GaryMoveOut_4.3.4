--
-- Coeur de pierre
--

--
-- Boss
--

-- Corborus 
UPDATE `creature_template` SET `maxlevel` = 84, `rank` = 3, `Health_mod` = 25.0, `ScriptName` = 'boss_corborus', `unit_flags` = 0, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 43438;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0 WHERE `entry` = 49642;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 43438;

-- Peau-de-Pierre
UPDATE `creature_template` SET `maxlevel` = 84, `rank` = 3, `unit_flags` = 0, `family` = 30, `type_flags` = 0, `spell1` = 80807, `spell2` = 92265, `InhabitType` = 5, `flags_extra` = 2097153, `ScriptName` = '' WHERE `entry` = 43214;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `type_flags` = 0, `InhabitType` = 5, `flags_extra` = 2097153 WHERE `entry` = 49538;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_slabhide' WHERE `entry` = 43214;

-- Osruk
UPDATE `creature_template` SET `maxlevel` = 84, `rank` = 3, `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0, `VehicleId` = 0, `Health_mod` = '29.5304', `flags_extra` = 2097153, `ScriptName` = '' WHERE `entry` = 42188;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 49654;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42188;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_ozruk' WHERE `entry` = 42188;

-- Grande prêtresse Azil
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `type_flags` = 0, `flags_extra` = 2097153, `ScriptName` = 0 WHERE `entry` = 42333;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 49624;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42333;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_azil' WHERE `entry` = 42333;

--
-- Trash
--

DELETE FROM `creature` WHERE `id` IN (43743,43357,43159);

-- Perforeuse des roches
UPDATE `creature_template` SET `exp` = 3, `type_flags` = 65537, `Health_mod` = 0.15, `ScriptName` = '' WHERE `entry` = 43917;
UPDATE `creature_template` SET `maxlevel` = 82, `rank` = 1, `AIName` = '', `Health_mod` = '0.1119', `flags_extra` = 1, `ScriptName` = 'mob_rock_borer' WHERE `entry` = 43917;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 43917;

-- Perforeuse des roches *2
UPDATE `creature_template` SET `exp` = 3, `type_flags` = 65537, `Health_mod` = 0.15, `ScriptName` = '' WHERE `entry` = 42845;
UPDATE `creature_template` SET `maxlevel` = 82, `rank` = 1, `AIName` = '', `Health_mod` = '0.1119', `flags_extra` = 1, `ScriptName` = 'mob_rock_borer' WHERE `entry` = 42845;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42845;

-- Porteguerre du Cœur-de-Pierre
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 4.036, `equipment_id` = 42696, `ScriptName` = '' WHERE `entry` = 42696;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42696;
UPDATE `creature_template` SET `type_flags` = 0, `equipment_id` = 42696 WHERE `entry` = 49667;
UPDATE `creature_template` SET `maxlevel` = 82, `AIName` = '', `Health_mod` = '6.9999', `flags_extra` = 1, `ScriptName` = 'mob_stonecore_warbringer' WHERE `entry` = 42696;

-- Sculpte-terre du Cœur-de-Pierre
UPDATE `creature_template` SET `exp` = 3, `equipment_id` = 43537, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 8.0838, `ScriptName` = 0 WHERE `entry` = 43537;
UPDATE `creature_template` SET `type_flags` = 0, `equipment_id` = 43537, `Health_mod` = 4.2287 WHERE `entry` = 49662;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42696;
UPDATE `creature_template` SET `maxlevel` = 82, `AIName` = '', `Health_mod` = '7.0', `Mana_mod` = '3.3297', `flags_extra` = 1, `ScriptName` = 'mob_stonecore_earthshaper' WHERE `entry` = 43537;

-- Berserker du Cœur-de-Pierre
UPDATE `creature_template` SET `exp` = 3, `equipment_id` = 43430, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 4.036, `ScriptName` = 0 WHERE `entry` = 43430;
UPDATE `creature_template` SET `equipment_id` = 43430, `type_flags` = 0 WHERE `entry` = 49660;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 43430;
UPDATE `creature_template` SET `maxlevel` = 82, `AIName` = '', `Health_mod` = '7.0', `flags_extra` = 1, `ScriptName` = 'mob_stonecore_berserker' WHERE `entry` = 43430;

-- Milhouse Tempête-de-Mana
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0, `Health_mod` = 4.4902, `Mana_mod` = 33.9077, `ScriptName` = '' WHERE `entry` = 43391;
UPDATE `creature_template` SET `Health_mod` = 5.9627, `Mana_mod` = 35.8742 WHERE `entry` = 49653;
UPDATE `creature` SET `unit_flags` = 0 WHERE `id` = 43391;
UPDATE `creature_template` SET `maxlevel` = 83, `lootid` = 43391, `AIName` = '', `Health_mod` = 9, `Mana_mod` = '33.9079', `flags_extra` = 1, `ScriptName` = 'mob_millhouse_manastorm' WHERE `entry` = 43391;

-- Ecorcheur du Cœur-de-Pierre
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 4.036, `ScriptName` = '' WHERE `entry` = 42808;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 49663;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42808;
UPDATE `creature_template` SET `maxlevel` = 82, `AIName` = '', `Health_mod` = 7, `flags_extra` = 1, `ScriptName` = 'mob_stonecore_flayer' WHERE `entry` = 42808;

-- Enrageterre délié
UPDATE `creature_template` SET `exp` = 3, `rank` = 1, `type_flags` = 0, `Health_mod` = 0.0522, `ScriptName` = '' WHERE `entry` = 43662;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 0.1861 WHERE `entry` = 49669;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 43662;
UPDATE `creature_template` SET `AIName` = '', `flags_extra` = 1, `ScriptName` = 'mob_unbound_earth_rager' WHERE `entry` = 43662;

-- Géant cristallide
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 6.6938, `ScriptName` = '' WHERE `entry` = 42810;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 49647;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42810;
UPDATE `creature_template` SET `maxlevel` = 83, `AIName` = '', `Health_mod` = 10, `flags_extra` = 1, `ScriptName` = 'mob_crystalspawn_giant' WHERE `entry` = 42810;

-- Fissure de lave
UPDATE `creature_template` SET `unit_flags` = 4, `spell1` = 76628, `spell2` = 78095, `ScriptName` = '' WHERE `entry` = 43242;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_lava_trigger' WHERE `entry` = 43242;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 43242;

-- Stalactite Trigger
UPDATE `creature_template` SET `unit_flags` = 4, `flags_extra` = 128, `ScriptName` = '' WHERE `entry` = 43159;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_stalactite_trigger' WHERE `entry` = 43159;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 43159;

-- Factionnaire du Cœur-de-Pierre
UPDATE `creature_template` SET `equipment_id` = 42695 WHERE `entry` = 42695;
UPDATE `creature_template` SET `maxlevel` = 82, `exp` = 3, `type_flags` = 0, `flags_extra` = 1 WHERE `entry` = 42695;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42695;

-- Adjurateur de faille du Cœur-de-Pierre
UPDATE `creature_template` SET `maxlevel` = 82, `exp` = 3, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = '4.036', `equipment_id` = 42691, `ScriptName` = '' WHERE `entry` = 42691;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 49665;
UPDATE `creature_template` SET `AIName` = '', `flags_extra` = 1, `ScriptName` = 'mob_stonecore_rift_conjurer' WHERE `entry` = 42691;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42691;

-- Seigneur-magma du Cœur-de-Pierre
UPDATE `creature_template` SET `maxlevel` = 82, `exp` = 3, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = '4.036', `equipment_id` = 42789, `ScriptName` = '' WHERE `entry` = 42789;
UPDATE `creature_template` SET `exp` = 3, `minlevel` = 85, `maxlevel` = 85, `type_flags` = 0 WHERE `entry` = 49664;
UPDATE `creature_template` SET `AIName` = '', `flags_extra` = 1, `ScriptName` = 'mob_stonecore_magmalord' WHERE `entry` = 42789;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42789;

-- Cogneur du Cœur-de-Pierre
UPDATE `creature_template` SET `maxlevel` = 83, `exp` = 3, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = '7.3632', `equipment_id` = 42692, `ScriptName` = '' WHERE `entry` = 42692;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 49661;
UPDATE `creature_template` SET `AIName` = '', `flags_extra` = 1, `ScriptName` = 'mob_stonecore_bruiser' WHERE `entry` = 42692;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42692;

-- Suivant dévot
UPDATE `creature_template` SET `exp` = 3, `type_flags` = 0 WHERE `entry` = 42428;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 49648;
UPDATE `creature` SET `npcflag` = 0, `unit_flags` = 0 WHERE `id` = 42428;

--
-- Gameobject
--
UPDATE `gameobject` SET `spawnMask` = 3 WHERE `guid` = 836721;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 207407;
UPDATE `gameobject` SET `spawnMask` = 3 WHERE `guid` = 836724;
UPDATE `gameobject` SET `spawnMask` = 3 WHERE `guid` = 836725;
UPDATE `gameobject_template` SET `data0` = 1 WHERE `entry` = 207343;

--
-- Npc Quete token
--
DELETE FROM `creature` WHERE `id`=57128;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(57128, 646, 1, 1, 0, 0, 1032.5, 641.311, 156.672, 2.3026, 600, 0, 0, 5, 0, 0, 0, 0, 0);

DELETE FROM `locales_creature` WHERE `entry` = 57128;
INSERT INTO `locales_creature` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `subname_loc1`, `subname_loc2`, `subname_loc3`, `subname_loc4`, `subname_loc5`, `subname_loc6`, `subname_loc7`, `subname_loc8`) VALUES
(57128, '', 'Ping Poil de Craie', '', '', '', '', '', '', NULL, 'Intendant Coeur de Pierre', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Quete token
--
UPDATE `quest_template` SET `Flags` = 4232, `RewardCurrencyCount1` = 5 WHERE `Id` IN (50108,50121,50129,50130);
UPDATE `quest_template` SET `Flags` = 4232, `RewardCurrencyCount1` = 70 WHERE `Id` IN (50208,50221,50229,50230);

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 49642 WHERE `Id` = 50208;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 49624 WHERE `Id` = 50221;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 49654 WHERE `Id` = 50229;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 49538 WHERE `Id` = 50230;

--
-- Table de loot
--

-- Peau de pierre
SET @ENTRY := 43214; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 55799, 75, 1, 0, 1, 1),
(@ENTRY, 55797, 19, 1, 0, 1, 1),
(@ENTRY, 55801, 18, 1, 0, 1, 1),
(@ENTRY, 55798, 12, 1, 0, 1, 1),
(@ENTRY, 63043, 0.7, 1, 0, 1, 1);


SET @ENTRY := 49538; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56333, 80, 1, 0, 1, 1),
(@ENTRY, 56334, 19, 1, 0, 1, 1),
(@ENTRY, 56336, 19, 1, 0, 1, 1),
(@ENTRY, 56335, 19, 1, 0, 1, 1),
(@ENTRY, 63043, 0.9, 1, 0, 1, 1),
(@ENTRY, 71715, 0.6, 1, 0, 1, 1);

-- corborus

SET @ENTRY := 43438; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55795, 75, 1, 0, 1, 1),
(@ENTRY, 55796, 20, 1, 0, 1, 1),
(@ENTRY, 55794, 19, 1, 0, 1, 1),
(@ENTRY, 55793, 13, 1, 0, 1, 1),
(@ENTRY, 55792, 13, 1, 0, 1, 1),
(@ENTRY, 52506, 0.3, 1, 0, 1, 1);

SET @ENTRY := 49642;

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56331, 75, 1, 0, 1, 1),
(@ENTRY, 56330, 19, 1, 0, 1, 1),
(@ENTRY, 56332, 19, 1, 0, 1, 1),
(@ENTRY, 56328, 19, 1, 0, 1, 1),
(@ENTRY, 56329, 19, 1, 0, 1, 1),
(@ENTRY, 52506, 1.6, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Grande prêtresse Azil

SET @ENTRY := 42333; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55815, 90, 1, 0, 1, 1),
(@ENTRY, 55814, 21, 1, 0, 1, 1),
(@ENTRY, 55819, 19, 1, 0, 1, 1),
(@ENTRY, 55817, 19, 1, 0, 1, 1),
(@ENTRY, 55820, 19, 1, 0, 1, 1),
(@ENTRY, 55813, 15, 1, 0, 1, 1),
(@ENTRY, 55816, 15, 1, 0, 1, 1),
(@ENTRY, 55812, 15, 1, 0, 1, 1),
(@ENTRY, 55818, 13, 1, 0, 1, 1),
(@ENTRY, 21524, 12, 1, 0, 1, 1),
(@ENTRY, 22206, 03, 1, 0, 1, 1);

SET @ENTRY := 49624; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52078, 100, 1, 0, 1, 1),
(@ENTRY, 56351, 90, 1, 0, 1, 1),
(@ENTRY, 56343, 18, 1, 0, 1, 1),
(@ENTRY, 56352, 18, 1, 0, 1, 1),
(@ENTRY, 56346, 18, 1, 0, 1, 1),
(@ENTRY, 56347, 18, 1, 0, 1, 1),
(@ENTRY, 56344, 18, 1, 0, 1, 1),
(@ENTRY, 56345, 18, 1, 0, 1, 1),
(@ENTRY, 56349, 18, 1, 0, 1, 1),
(@ENTRY, 56348, 17, 1, 0, 1, 1),
(@ENTRY, 21524, 14, 1, 0, 1, 1),
(@ENTRY, 22206, 05, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Ozruk

SET @ENTRY := 42188; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55811, 75, 1, 0, 1, 1),
(@ENTRY, 55804, 19, 1, 0, 1, 1),
(@ENTRY, 55810, 19, 1, 0, 1, 1),
(@ENTRY, 55802, 14, 1, 0, 1, 1),
(@ENTRY, 55803, 9, 1, 0, 1, 1);

SET @ENTRY := 49654; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56339, 75, 1, 0, 1, 1),
(@ENTRY, 56340, 19, 1, 0, 1, 1),
(@ENTRY, 56341, 19, 1, 0, 1, 1),
(@ENTRY, 56342, 19, 1, 0, 1, 1),
(@ENTRY, 56330, 19, 1, 0, 1, 1);



--
-- ---------------------------------------------------------------
-- Adjurateur de faille du Cœur-de-Pierre

SET @ENTRY := 42691; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 75, 1, 0, 1, 6),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49665; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 13, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 1),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Berserker du Cœur-de-Pierre

SET @ENTRY := 43430; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 75, 1, 0, 1, 7),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY := 49660; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 7),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Cogneur du Cœur-de-Pierre

SET @ENTRY := 42692; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 75, 1, 0, 1, 6),
(@ENTRY, 68198, 11, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY := 49661; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 11, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Ecorcheur du Cœur-de-Pierre

SET @ENTRY := 42808; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 75, 1, 0, 1, 6),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49663; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 13, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Factionnaire du Cœur-de-Pierre

SET @ENTRY := 42695; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 75, 1, 0, 1, 6),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY :=  49666; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Géant cristallide

SET @ENTRY := 42810; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 58268, 77, 1, 0, 1, 1),
(@ENTRY, 58256, 8, 1, 0, 1, 1),
(@ENTRY, 52506, 7, 1, 0, 1, 1);

SET @ENTRY := 49647; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 58268, 77, 1, 0, 1, 1),
(@ENTRY, 58256, 8, 1, 0, 1, 1),
(@ENTRY, 52506, 7, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Porteguerre du Cœur-de-Pierre

SET @ENTRY := 42696; 

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 9),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49667; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 75, 1, 0, 1, 9),
(@ENTRY, 68198, 13, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Sculpte-terre du Cœur-de-Pierre

SET @ENTRY := 43537;

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49662; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 75, 1, 0, 1, 9),
(@ENTRY, 68198, 13, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Seigneur-magma du Cœur-de-Pierre

SET @ENTRY := 42789;

DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52325, 77, 1, 0, 2, 6),
(@ENTRY, 52506, 3, 1, 0, 1, 1),
(@ENTRY, 55822, 1.9, 1, 0, 1, 1);

SET @ENTRY := 49664; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52325, 50, 1, 0, 2, 6),
(@ENTRY, 52506, 9, 1, 0, 1, 1);


-- Gain token sur boss
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (49642,49624,49654,49538);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES
(49642,395,70),
(49624,395,70),
(49654,395,70),
(49538,395,70);