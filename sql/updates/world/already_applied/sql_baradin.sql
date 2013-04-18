--
-- Bastion du baradin
--

-- Nettoyage instance
DELETE FROM `creature` WHERE `map` = 757;
DELETE FROM `gameobject` WHERE `map` = 757;

-- Script Cpp => Sql
UPDATE `instance_template` SET `script`='instance_baradin_hold' WHERE `map`=757;

-- Template creature
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(32780, 0, 0, 0, 0, 0, 1126, 11686, 0, 0, 'Invisible Stalker (All Phases)', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33554432, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595),
(47120, 51350, 0, 0, 0, 0, 35426, 0, 0, 0, 'Argaloth', '', '', 0, 88, 88, 3, 0, 16, 16, 0, 1.2, 1.71429, 1, 1, 0, 0, 0, 0, 1, 1500, 2000, 1, 0, 134219776, 0, 0, 0, 0, 0, 0, 0, 0, 3, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 250, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 1, '', 15595),
(52363, 54229, 0, 0, 0, 0, 37876, 0, 0, 0, 'Occu''thar', '', '', 0, 87, 87, 3, 0, 14, 14, 0, 1, 1.42857, 1, 1, 0, 0, 0, 0, 1, 1500, 2000, 1, 64, 33556480, 0, 0, 0, 0, 0, 0, 0, 0, 3, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1598, 0, 0, '', 0, 3, 1, 285, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 1, '', 15595),
(52368, 0, 0, 0, 0, 0, 27823, 0, 0, 0, 'Eyestalk', '', '', 0, 87, 87, 3, 0, 14, 14, 0, 2, 0.714286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 94, 1, 0, 0, 0, '', 15595),
(52427, 0, 0, 0, 0, 0, 35906, 0, 0, 0, 'Destroyed Containment Unit', '', '', 0, 87, 87, 3, 0, 14, 14, 0, 1, 1.42857, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 537133312, 33556481, 32, 0, 0, 0, 0, 0, 0, 0, 9, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '', 15595),
(53488, 0, 0, 0, 0, 0, 169, 16925, 0, 0, 'Summon Enabler Stalker', '', '', 0, 80, 80, 2, 0, 14, 14, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595),
(55869, 57270, 0, 0, 0, 0, 21252, 0, 0, 0, 'Alizabal', 'Mistress of Hate', '', 0, 88, 88, 3, 0, 16, 16, 0, 1.6, 1.71429, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 3, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 300, 100, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, 1, '', 15595),
(56350, 57989, 0, 0, 47785, 0, 39390, 0, 0, 0, 'Disciple of Hate', '', '', 0, 85, 85, 3, 0, 90, 90, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 30, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595),
(56369, 0, 0, 0, 0, 0, 37887, 37929, 37930, 0, 'Eye of Occu''thar', '', '', 0, 87, 87, 3, 0, 14, 14, 0, 1, 1.42857, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 537133312, 2049, 32, 0, 0, 0, 0, 0, 0, 0, 10, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '', 15595),
(56372, 0, 0, 0, 0, 0, 37887, 37929, 37930, 0, 'Eye of Occu''thar', '', '', 0, 87, 87, 3, 0, 14, 14, 0, 1, 1.42857, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 256, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 10, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '', 15595);

-- Update template
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `rank` = 3, `mindmg` = 533, `maxdmg` = 852, `attackpower` = 4848, `dmg_multiplier` = 15, `baseattacktime` = 2000, `unit_flags2` = 2048, `minrangedmg` = 1160.9, `maxrangedmg` = 1328.1, `rangedattackpower` = 225, `lootid` = 47120, `spell1` = 47008, `spell2` = 88942, `spell3` = 88954, `spell4` = 88972, `mingold` = 2500000, `maxgold` = 2959839, `mechanic_immune_mask` = 617299839, `flags_extra` = 2097153, `WDBVerified` = 13329 WHERE `entry` = 47120;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `rank` = 3, `dmg_multiplier` = 35, `baseattacktime` = 2000, `rangeattacktime` = 2000, `mechanic_immune_mask` = 617299839, `flags_extra` = 2097153 WHERE `entry` = 51350;
UPDATE `creature_template` SET `rank` = 3, `mindmg` = '1225.5', `maxdmg` = '1544.7', `attackpower` = 1651, `dmg_multiplier` = 15, `unit_flags2` = 2048, `minrangedmg` = 1160.9, `maxrangedmg` = 1328.1, `rangedattackpower` = 225, `lootid` = 52363, `skinloot` = 52363, `VehicleId` = 0, `mechanic_immune_mask` = 617299839, `flags_extra` = 2097153, `mingold` = 2746820, `maxgold` = 3710404 WHERE `entry` = 52363;
UPDATE `creature_template` SET `minlevel` = 87, `maxlevel` = 87, `exp` = 3, `faction_A` = 14, `faction_H` = 14, `speed_run` = '1.14286', `rank` = 3, `mindmg` = '1225.5', `maxdmg` = '1544.7', `attackpower` = 1651, `dmg_multiplier` = 35, `baseattacktime` = 1500, `rangeattacktime` = 2000, `unit_flags` = 64, `minrangedmg` = '1160.9', `maxrangedmg` = '1328.1', `lootid` = 54229, `skinloot` = 54229, `mechanic_immune_mask` = 617299839, `flags_extra` = 2097153, `mingold` = 2746820, `maxgold` = 3710404 WHERE `entry` = 54229;
UPDATE `creature_template` SET `rank` = 3, `flags_extra` = 2097153, `mindmg` = '1225.5', `maxdmg` = '1544.7', `attackpower` = 1651, `dmg_multiplier` = 15, `minrangedmg` = '1160.9', `maxrangedmg` = '1328.1', `rangedattackpower` = 225, `lootid` = 55869, `mingold` = 2748801, `maxgold` = 3830595, `mechanic_immune_mask` = 617299839 WHERE `entry` = 55869;
UPDATE `creature_template` SET `rank` = 3, `modelid1` = 21252, `modelid2` = 0, `minlevel` = 88, `maxlevel` = 88, `exp` = 3, `faction_A` = 16, `faction_H` = 16, `mindmg` = 1225.5, `maxdmg` = 1544.7, `attackpower` = 1651, `dmg_multiplier` = 35, `baseattacktime` = 2000, `rangeattacktime` = 2000, `unit_flags` = 32832, `minrangedmg` = 1160.9, `maxrangedmg` = 1328.1, `rangedattackpower` = 225, `type_flags` = 108, `mingold` = 2748801, `maxgold` = 3830595, `Health_mod` = 900, `Mana_mod` = 100, `lootid` = 57270, `mechanic_immune_mask` = 617299839, `flags_extra` = 2097153 WHERE `entry` = 57270;
UPDATE `creature_template` SET `mindmg` = 1007, `maxdmg` = 1354.7, `attackpower` = 1571, `dmg_multiplier` = 4, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `lootid` = 56350, `mingold` = 170534, `maxgold` = 249670, `mechanic_immune_mask` = 617299839 WHERE `entry` = 56350;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 90, `faction_H` = 90, `mindmg` = 1007, `maxdmg` = 1354.7, `attackpower` = 1571, `dmg_multiplier` = 15, `baseattacktime` = 2000, `rangeattacktime` = 2000, `unit_flags` = 32768, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `mingold` = 170534, `maxgold` = 249670, `questItem1` = 57989, `mechanic_immune_mask` = 617299839 WHERE `entry` = 57989;
UPDATE `creature_template` SET `mindmg` = 3.8, `maxdmg` = 3.8, `attackpower` = 46, `minrangedmg` = '1.9', `maxrangedmg` = '1.9', `Health_mod` = '1.5' WHERE `entry` = 52389;
UPDATE `creature_template` SET `scale` = 100 WHERE `entry` = 56369;
UPDATE `creature_template` SET `lootid` = 55869 WHERE `entry` = 57270;
UPDATE `creature_template` SET `lootid` = 52363, `skinloot` = 52363 WHERE `entry` = 54229;
UPDATE `creature_template` SET `lootid` = 57989 WHERE `entry` = 57989;

-- Script Cpp => Sql
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='boss_occuthar' WHERE `entry`=52363;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='Eye_of_Occuthar' WHERE `entry`=52389;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='Focused_Fire_Dummy' WHERE `entry`=62455;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='boss_alizabal' WHERE `entry`=55869;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='boss_argaloth' WHERE `entry`=47120;

-- SmartAI
-- Disciple of Hate
SET @ENTRY := 56350;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,6,0,25000,25000,25000,11,105855,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Disciple de la haine - Tourbillon de lames"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,6,0,15000,15000,15000,11,56350,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Disciple de la haine - Traverser");

-- Template addon
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(53488, 0, 0x0, 0x1, '99201'), -- Summon Enabler Stalker - Summon Enabler
(52427, 0, 0x0, 0x1, '96733'), -- Destroyed Containment Unit - Permanent Feign Death (Stun)
(32780, 0, 0x0, 0x1, ''), -- Invisible Stalker (All Phases)
(56369, 0, 0x3000000, 0x1, '96733'), -- Eye of Occu'thar - Permanent Feign Death (Stun)
(56350, 0, 0x0, 0x1, ''), -- Disciple of Hate
(56372, 0, 0x3000000, 0x1, '96995 97004'), -- Eye of Occu'thar - Eye of Occu'thar Visual, Eyes of Occu'thar
(52368, 0, 0x0, 0x1, '46598'), -- Eyestalk - Ride Vehicle Hardcoded
(52363, 0, 0x0, 0x1, ''), -- Occu'thar
(47120, 0, 0x0, 0x1, ''), -- Argaloth
(55869, 0, 0x0, 0x1, ''); -- Alizabal

-- Model info
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(21252, 0.75, 3.75, 1, 0),
(35426, 5, 15, 0, 0),
(35906, 1.5, 3, 2, 0),
(37876, 1.4, 16, 2, 0),
(37887, 0.04, 0.6, 2, 0),
(39390, 0.6, 2, 1, 0),
(37929, 0, 0, 2, 0),
(37930, 0, 0, 2, 0);

-- équipement creature
DELETE FROM `creature_equip_template` WHERE `entry` IN (56350, 55869);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(56350, 76175, 76175, 0), -- Disciple of Hate
(55869, 76176, 76176, 0); -- Alizabal

-- Implantation creature
SET @CGUID := 757100;
 
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 53488, 757, 3, 1, 171.8507, 1337.113, 170.275, 0, 7200, 0, 0), -- Summon Enabler Stalker 
(@CGUID+2, 52427, 757, 3, 1, 219.4167, 1345.793, 170.275, 4.834562, 7200, 0, 0), -- Destroyed Containment Unit 
(@CGUID+3, 32780, 757, 3, 1, 197.6354, 1327.774, 175.5703, 0, 7200, 0, 0), -- Invisible Stalker (All Phases) 
(@CGUID+4, 56369, 757, 3, 1, 234.5365, 1315.615, 170.2803, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+5, 56350, 757, 3, 1, 238.1235, 1329.074, 170.1917, 5.09062, 7200, 0, 2), -- Disciple of Hate  (possible waypoints or random movement)
(@CGUID+6, 56369, 757, 3, 1, 235.0087, 1310.951, 170.2829, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+7, 56369, 757, 3, 1, 237.0469, 1317.146, 170.2807, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+8, 56369, 757, 3, 1, 236.8767, 1313.392, 170.2838, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+9, 56369, 757, 3, 1, 236.533, 1310.998, 170.2854, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+10, 56369, 757, 3, 1, 239.1163, 1315.115, 170.2798, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+11, 56369, 757, 3, 1, 239.2552, 1308.377, 170.2822, 3.822271, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+12, 56369, 757, 3, 1, 241.3455, 1311.146, 170.279, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+13, 56372, 757, 3, 1, 280.559, 1352.292, 173.2115, 0.2792527, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+14, 52427, 757, 3, 1, 276.7882, 1387.814, 170.275, 3.124139, 7200, 0, 0), -- Destroyed Containment Unit 
(@CGUID+15, 56369, 757, 3, 1, 298.5295, 1363.326, 170.275, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+16, 56369, 757, 3, 1, 300.526, 1358.71, 170.2763, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+17, 56369, 757, 3, 1, 300.8698, 1361.104, 170.275, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+18, 56369, 757, 3, 1, 301.0399, 1364.858, 170.275, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+19, 56369, 757, 3, 1, 302.4115, 1360.665, 170.286, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+20, 56369, 757, 3, 1, 303.1094, 1362.826, 170.275, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+21, 56369, 757, 3, 1, 305.3385, 1358.858, 170.2768, 0.8028514, 7200, 0, 0), -- Eye of Occu'thar 
(@CGUID+22, 52368, 757, 3, 1, 265.6478, 1549.184, 194.0467, 4.694936, 7200, 0, 0), -- Eyestalk 
(@CGUID+23, 52363, 757, 3, 1, 268.4774, 1553.747, 179.9695, 4.694936, 7200, 0, 0), -- Occu'thar 
(@CGUID+24, 52368, 757, 3, 1, 268.0396, 1551.58, 197.6283, 4.694936, 7200, 0, 0), -- Eyestalk 
(@CGUID+25, 52368, 757, 3, 1, 270.902, 1555.131, 198.4283, 4.694936, 7200, 0, 0), -- Eyestalk 
(@CGUID+26, 52368, 757, 3, 1, 272.8563, 1552.496, 197.6283, 4.694936, 7200, 0, 0), -- Eyestalk 
(@CGUID+27, 52368, 757, 3, 1, 266.5027, 1555.208, 198.4283, 4.694936, 7200, 0, 0), -- Eyestalk 
(@CGUID+28, 52368, 757, 3, 1, 265.24, 1551.629, 197.6283, 4.694936, 7200, 0, 0), -- Eyestalk 
(@CGUID+29, 52368, 757, 3, 1, 271.0772, 1548.808, 193.8827, 4.694936, 7200, 0, 0), -- Eyestalk 
(@CGUID+30, 56350, 757, 3, 1, 327.2205, 1337.582, 170.2749, 3.106686, 7200, 0, 2), -- Disciple of Hate  (possible waypoints ou random)
(@CGUID+31, 47120, 757, 3, 1, 269.707, 1135.49, 160.9933, 1.570796, 7200, 0, 0), -- Argaloth 
(@CGUID+32, 55869, 757, 3, 1, 441.2865, 1336.898, 170.2749, 3.089233, 7200, 0, 2); -- Alizabal (possible waypoints ou random)

-- Implantation gameobject
SET @GGUID := 757100;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GGUID+1, 207981, 757, 2, 1, 153.28, 1337.07, 170.192, 3.12357, 0, 0, 1, -4.371139, 7200, 255, 1),
(@GGUID+2, 207980, 757, 1, 1, 153.28, 1337.07, 170.192, 3.12357, 0, 0, 1, -4.371139, 7200, 255, 1),
(@GGUID+3, 206969, 757, 2, 1, 153.28, 1337.07, 170.192, 3.12357, 0, 0, 1, -4.371139, 7200, 255, 1),
(@GGUID+4, 208953, 757, 2, 1, 269.8, 1203.71, 160.91, 3.1326, 0, 0, 1, -4.371139, 7200, 255, 0);

-- Gain token
REPLACE INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`, `CurrencyId1`, `CurrencyId2`, `CurrencyId3`, `CurrencyCount1`, `CurrencyCount2`, `CurrencyCount3`) VALUES
(51350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 396, 0, 0, 35, 0, 0),
(54229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 396, 0, 0, 120, 0, 0),
(57270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 396, 0, 0, 35, 0, 0);