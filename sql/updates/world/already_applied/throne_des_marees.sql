--
-- Throne des marées
--

-- netoyage Instance
DELETE FROM `creature` WHERE `id` = 48983 AND `map` = 643;
DELETE FROM `creature` WHERE `id` = 45620 AND `map` = 643;
DELETE FROM `creature` WHERE `id` = 40579 AND `map` = 643;
DELETE FROM `creature` WHERE `id` = 40765 AND `map` = 643;
DELETE FROM `creature` WHERE `id` = 39960 AND `map` = 643;
DELETE FROM `creature` WHERE `id` = 40633 AND `map` = 643;
DELETE FROM `creature` WHERE `id` = 44404 AND `map` = 643;
DELETE FROM `creature` WHERE `id` = 40788 AND `map` = 643;
DELETE FROM `gameobject` WHERE `id` = 208302 AND `map` = 643;
DELETE FROM `creature_template_addon` WHERE `entry` = 40792;

-- Suppression en attente de fixe
DELETE FROM `gameobject` WHERE `id` = 180322 AND `map` = 643;
DELETE FROM `gameobject` WHERE `id`=402012;
DELETE FROM `gameobject` WHERE `id`=208301;
DELETE FROM `gameobject` WHERE `id`=207997;
DELETE FROM `gameobject` WHERE `id`=207998;

-- Implantation instance
DELETE FROM `instance_template` WHERE `map` = 643;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES
(643, 0, 'instance_throne_of_the_tides', 0);

-- Implantation script sur creature
UPDATE `creature_template` SET `ScriptName` = 'boss_commander_ulthok' WHERE `entry` = 40765;
UPDATE `creature_template` SET `ScriptName` = 'npc_fissure' WHERE `entry` = 40784;
UPDATE `creature_template` SET `ScriptName` = 'boss_lady_nazjar' WHERE `entry` = 40586;
UPDATE `creature_template` SET `ScriptName` = 'npc_waterspout_trigger' WHERE `entry` = 48571;
UPDATE `creature_template` SET `ScriptName` = 'npc_neptulon' WHERE `entry` = 40792;
UPDATE `creature_template` SET `ScriptName` = 'boss_ozumat' WHERE `entry` = 44566;
UPDATE `creature_template` SET `ScriptName` = 'boss_erunak_stonespeaker' WHERE `entry` = 40825;
UPDATE `creature_template` SET `ScriptName` = 'boss_mindbender_ghursha' WHERE `entry` = 40788;
UPDATE `creature_template` SET `ScriptName` = 'mob_envahisseur_nazjar' WHERE `entry` = 39616;
UPDATE `creature_template` SET `ScriptName` = 'mob_soignesprit_nazjar' WHERE `entry` = 41139;
UPDATE `creature_template` SET `ScriptName` = 'mob_sorciere_des_tempetes_nazjar' WHERE `entry` = 40634;
UPDATE `creature_template` SET `ScriptName` = 'mob_sentinelle_nazjar' WHERE `entry` = 40577;
UPDATE `creature_template` SET `ScriptName` = 'mob_corruption_instable' WHERE `entry` = 40923;
UPDATE `creature_template` SET `ScriptName` = 'mob_factionnaire_corrompu' WHERE `entry` = 40925;
UPDATE `creature_template` SET `ScriptName` = 'mob_aquamage_gloubelin' WHERE `entry` = 40943;
UPDATE `creature_template` SET `ScriptName` = 'mob_chasseur_gloubelin' WHERE `entry` = 40935;
UPDATE `creature_template` SET `ScriptName` = 'mob_gardien_sans_visage' WHERE `entry` = 40936;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'mob_lady_nazjar_event' WHERE `entry` = 39959;

-- Implantation script Gameobject
UPDATE `gameobject_template` SET `ScriptName` = 'go_totd_defense_system' WHERE `entry` = 203199;

-- Implantation spell
DELETE FROM `spell_script_names` WHERE `spell_id` IN (76066,91371);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(76066, 'spell_commander_ulthok_fissure'),
(91371, 'spell_commander_ulthok_fissure');

DELETE FROM `spell_script_names` WHERE `spell_id` = 82964;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(82964, 'spell_lady_nazjar_play_movie');

-- teleport vers throne des marée
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(42251, 0, 0, 0, 0, 0, 32743, 0, 0, 0, 'Neptulon', 'Téléportation TdM', 'Directions', 42251, 80, 82, 2, 0, 35, 35, 3, 1, 1.14286, 0.02, 1, 390, 683, 0, 3757, 4.6, 0, 0, 1, 2, 2048, 0, 0, 0, 0, 0, 0, 689.7, 989.9, 157, 4, 138936390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 2, 1, 300, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 1),
(422511, 0, 0, 0, 0, 0, 32743, 0, 0, 0, 'Neptulon', 'Téléportation TdM', 'Directions', 422511, 80, 82, 2, 0, 35, 35, 3, 1, 1.14286, 0.02, 1, 390, 683, 0, 3757, 4.6, 0, 0, 1, 2, 2048, 0, 0, 0, 0, 0, 0, 689.7, 989.9, 157, 4, 138936390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 2, 1, 300, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 1);

ALTER TABLE `gossip_menu_option` CHANGE `menu_id` `menu_id` MEDIUMINT( 8 ) UNSIGNED NOT NULL DEFAULT '0';

DELETE FROM `gossip_menu_option` WHERE 'menu_id' IN (42251,422511);
INSERT INTO `gossip_menu_option` VALUES 
(42251, 0, 0, 'Je veux aller au Trône des marées !', 1, 1, 0, 0, 0, 0, 'Etes-vous sûr de vouloir aller au Trône des marées ?');

SET @ENTRY := 42251;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,62,0,100,0,42251,0,0,0,62,0,0,0,0,0,0,7,0,0,0,-5585.64,5447.49,-1799.61,4.45,"teleporte entrée instance");

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(207692, 1, 10358, 'Portal to Vashjir', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);

REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(361129, 207692, 0, 1, 1, -5591.91, 5458.85, -1799.67, 5.96004, 0, 0, 0.160868, -0.986976, 300, 0, 1);

DELETE FROM `gameobject_scripts` WHERE `id`=207691;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(361129, 0, 6, 0, 0, '', -5743.75, 5250.68, -1266.24, 1.15745);

-- Pnj + quete Token
UPDATE `locales_creature` SET `subname_loc2` = 'Intendant Trône des Marées' WHERE `entry` =57127;

UPDATE `quest_template` SET `Flags` = 4104, `RewardCurrencyCount1` = 5 WHERE `Id` IN (50107,50111,50137);
UPDATE `quest_template` SET `Flags` = 4104, `RewardCurrencyCount1` = 70 WHERE `Id` IN (50207,50211,50237);

DELETE FROM `creature` WHERE `id`=57127;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@, 57127, 0, 1, 1, 0, 0, -5575.56, 5441.53, -1798.01, 3.0961, 300, 0, 0, 387450, 0, 0, 0, 0, 0);

-- Template Mobb
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0, `unit_flags2` = 2048 WHERE `entry` = 45620;
UPDATE `creature_template` SET `exp` = 3, `faction_A` = 2102, `faction_H` = 2102, `Health_mod` = 10.419 WHERE `entry` = 49088;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0 WHERE `entry` = 40577;
UPDATE `creature_template` SET `minlevel` = 86, `maxlevel` = 86, `exp` = 3 WHERE `entry` = 49087;
UPDATE `creature_template` SET `exp` = 3, `type_flags` = 0 WHERE `entry` = 40935;
UPDATE `creature_template` SET `maxlevel` = 85, `type_flags` = 0 WHERE `entry` = 49078;
UPDATE `creature_template` SET `exp` = 3, `type_flags` = 0 WHERE `entry` = 40943;
UPDATE `creature_template` SET `maxlevel` = 85, `type_flags` = 0 WHERE `entry` = 49077;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0 WHERE `entry` = 39960;
UPDATE `creature_template` SET `faction_A` = 2102, `faction_H` = 2102, `Health_mod` = 0.3125 WHERE `entry` = 57509;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0 WHERE `entry` = 39616;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0 WHERE `entry` = 41139;
UPDATE `creature_template` SET `Health_mod` = 5 WHERE `entry` = 57500;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 39959;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0 WHERE `entry` = 40579;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0 WHERE `entry` = 40634;
UPDATE `creature_template` SET `faction_A` = 2102, `faction_H` = 2102, `Health_mod` = 5 WHERE `entry` = 57508;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 40936;
UPDATE `creature_template` SET `minlevel` = 86, `type_flags` = 0 WHERE `entry` = 49074;
UPDATE `creature_template` SET `exp` = 3 WHERE `entry` = 40923;
UPDATE `creature_template` SET `Health_mod` = 0.125 WHERE `entry` = 57506;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0 WHERE `entry` = 40925;
UPDATE `creature_template` SET `Health_mod` = 9.6627 WHERE `entry` = 49102;
UPDATE `creature_template` SET `maxlevel` = 81, `exp` = 3, `type_flags` = 0, `Health_mod` = 2.0782 WHERE `entry` = 44841;
UPDATE `creature_template` SET `minlevel` = 86, `type_flags` = 0 WHERE `entry` = 49061;
UPDATE `creature_template` SET `maxlevel` = 81, `exp` = 3, `type_flags` = 0 WHERE `entry` = 44715;
UPDATE `creature_template` SET `minlevel` = 86, `type_flags` = 0 WHERE `entry` = 49107;
UPDATE `creature_template` SET `maxlevel` = 81, `exp` = 3, `type_flags` = 0, `VehicleId` = 0 WHERE `entry` = 44648;
UPDATE `creature_template` SET `minlevel` = 86, `type_flags` = 0 WHERE `entry` = 49104;
UPDATE `creature_template` SET `maxlevel` = 81, `exp` = 3, `type_flags` = 0 WHERE `entry` = 44658;
UPDATE `creature_template` SET `minlevel` = 86, `type_flags` = 0 WHERE `entry` = 49068;
UPDATE `creature_template` SET `exp` = 3, `type_flags` = 0 WHERE `entry` = 44752;
UPDATE `creature_template` SET `minlevel` = 86, `type_flags` = 0 WHERE `entry` = 49073;


-- Template boss
UPDATE `creature_template` SET `exp` = 3, `rank` = 3, `flags_extra` = 2097153, `difficulty_entry_1` = 49080 WHERE `entry` = 40586;
UPDATE `creature_template` SET `minlevel` = 87, `maxlevel` = 87, `exp` = 3, `rank` = 3, `mindmg` = 881.6, `maxdmg` = 1147.6, `attackpower` = 1345, `baseattacktime` = 2000, `rangedattackpower` = 147, `type_flags` = 0, `mechanic_immune_mask` = 613097436, `flags_extra` = 2097153 WHERE `entry` = 49080;
UPDATE `creature_template` SET `exp` = 3, `rank` = 3, `unit_flags` = 0, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 40765;
UPDATE `creature_template` SET `minlevel` = 87, `maxlevel` = 87, `exp` = 3, `rank` = 3, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 49064;
UPDATE `creature_template` SET `gossip_menu_id` = '', `exp` = 3, `rank` = 3, `unit_flags` = 0, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 40825;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 49072;
UPDATE `creature_template` SET `exp` = 3, `rank` = 3, `unit_flags` = 0, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 40788;
UPDATE `creature_template` SET `minlevel` = 87, `maxlevel` = 87, `rank` = 3, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 49082;
UPDATE `creature_template` SET `exp` = 3, `npcflag` = 1, `unit_flags` = 0, `faction_A` = 35, `faction_H` = 35, `AIName` = '' WHERE `entry` = 40792;
UPDATE `creature_template` SET `scale` = 0.5, `exp` = 3, `unit_flags` = 0, `type_flags` = 0, `VehicleId` = 0 WHERE `entry` = 44566;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `Health_mod` = 314.0393 WHERE `entry` = 57547;

-- Template Gameobject
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 207406;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 203199;
UPDATE `gameobject_template` SET `data0` = 1 WHERE `entry` = 204339;
UPDATE `gameobject_template` SET `data0` = 1 WHERE `entry` = 204340;
UPDATE `gameobject` SET `state` = 0 WHERE `id` = 204339;
UPDATE `gameobject` SET `state` = 0 WHERE `id` = 204340;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 205216;
UPDATE `gameobject_template` SET `faction` = 94, `size` = 1.5, `data0` = 1691, `data1` = 207973, `data3` = 0, `data10` = 0, `data11` = 0, `data12` = 0, `data20` = 0, `WDBVerified` = 13623 WHERE `entry` = 207973;

-- Implantation creature
DELETE FROM `creature` WHERE `id`=40577;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(1086672, 40577, 643, 3, 1, 0, 0, 21.5847, 802.312, 806.317, 3.15092, 7200, 0, 0, 483431, 0, 1, 0, 0, 0),
(1086673, 40577, 643, 3, 1, 0, 0, -280.416, 808.422, 259.483, 3.10694, 7200, 0, 0, 546, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=39616;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@, 39616, 643, 3, 1, 0, 0, 57.4495, 762.332, 806.18, 2.72492, 7200, 0, 0, 168, 0, 0, 0, 0, 0),
(@, 39616, 643, 3, 1, 0, 0, 41.8557, 766.633, 806.238, 6.03538, 7200, 0, 0, 168, 0, 0, 0, 0, 0),
(@, 39616, 643, 3, 1, 0, 0, 58.214, 839.536, 806.187, 3.56531, 7200, 0, 0, 168, 0, 0, 0, 0, 0),
(@, 39616, 643, 3, 1, 0, 0, 42.7829, 837.859, 806.302, 6.18068, 7200, 0, 0, 168, 0, 0, 0, 0, 0),
(@, 39616, 643, 3, 1, 0, 0, 85.617, 812.646, 806.237, 4.53921, 7200, 0, 0, 168, 0, 0, 0, 0, 0),
(@, 39616, 643, 3, 1, 0, 0, 83.7505, 791.728, 806.317, 1.40154, 7200, 0, 0, 168, 0, 0, 0, 0, 0),
(@, 39616, 643, 3, 1, 0, 0, -412.612, 812.259, 248.436, 3.30278, 300, 0, 0, 123804, 0, 0, 0, 0, 0),
(@, 39616, 643, 3, 1, 0, 0, -408.721, 799.328, 248.394, 3.3067, 300, 0, 0, 123804, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=41139;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@, 41139, 643, 3, 1, 0, 0, -402.876, 803.992, 248.175, 3.27922, 300, 0, 0, 123804, 30951, 0, 0, 0, 0),
(@, 41139, 643, 3, 1, 0, 0, -403.723, 808.468, 248.201, 3.291, 300, 0, 0, 123804, 30951, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40935;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@, 40935, 643, 3, 1, 0, 0, -284.584, 656.312, 282.688, 2.49051, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -251.66, 647.046, 285.536, 2.81838, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -248.567, 643.931, 286.008, 3.02392, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -249.92, 639.162, 285.859, 2.83076, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -254.588, 638.473, 285.584, 2.89752, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -253.157, 642.806, 285.713, 2.83861, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -306.871, 764.917, 262.676, 1.67346, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -312.558, 765.094, 262.903, 1.38835, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -312.829, 735.686, 274.503, 1.54546, 7200, 0, 0, 42, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -284.308, 660.51, 282.826, 2.56512, 7200, 0, 0, 42, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -310.181, 735.816, 274.515, 1.54546, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -305.051, 735.272, 274.662, 1.39713, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(@, 40935, 643, 3, 1, 0, 0, -307.558, 735.716, 274.569, 1.36554, 300, 0, 0, 30951, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40943;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@, 40943, 643, 3, 1, 0, 0, -244.218, 637.435, 286.179, 2.87395, 300, 0, 0, 12600, 30951, 0, 0, 0, 0),
(@, 40943, 643, 3, 1, 0, 0, -283.83, 652.485, 283.076, 2.29023, 300, 0, 0, 12600, 30951, 0, 0, 0, 0),
(@, 40943, 643, 3, 1, 0, 0, -280.378, 658.8, 283.217, 2.46694, 7200, 0, 0, 42, 0, 0, 0, 0, 0),
(@, 40943, 643, 3, 1, 0, 0, -246.434, 640.496, 286.118, 2.81898, 7200, 0, 0, 42, 0, 0, 0, 0, 0),
(@, 40943, 643, 3, 1, 0, 0, -242.872, 641.849, 286.369, 2.82683, 300, 0, 0, 12600, 30951, 0, 0, 0, 0),
(@, 40943, 643, 3, 1, 0, 0, -302.141, 734.579, 274.873, 1.42608, 300, 0, 0, 12600, 30951, 0, 0, 0, 0),
(@, 40943, 643, 3, 1, 0, 0, -315.919, 733.993, 274.574, 1.48556, 300, 0, 0, 12600, 30951, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40936;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@, 40936, 643, 3, 1, 0, 0, -220.838, 641.496, 286.918, 3.04074, 300, 0, 0, 483431, 0, 0, 0, 0, 0),
(1086645, 40936, 643, 3, 1, 0, 0, -304.98, 705.687, 278.139, 4.74738, 7200, 0, 0, 546, 0, 2, 0, 0, 0),
(@, 40936, 643, 3, 1, 0, 0, -287.549, 650.139, 283.238, 2.12267, 300, 0, 0, 483431, 0, 0, 0, 0, 0),
(@, 40936, 643, 3, 1, 0, 0, -221.724, 633.809, 286.869, 3.01614, 300, 0, 0, 483431, 0, 0, 0, 0, 0);

-- implantation gameobject
DELETE FROM `gameobject` WHERE `id` IN (208301,402012);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(351299, 208301, 643, 3, 1, -310.253, 916.37, 245.586, 4.68424, 0, 0, 0.716987, -0.697087, 300, 0, 1),
(351293, 402012, 643, 3, 1, -311.711, 705.567, 282.196, 1.54578, 0, 0, 0.698208, 0.715895, 300, 0, 1);

UPDATE `gameobject` SET `state` = 0 WHERE `guid` = 351249;

-- Traduction script
UPDATE `script_texts` SET `content_default` = 'Vous venez vous mêler de nos plans pour la dernière fois, mortels !' WHERE `npc_entry` =40586 AND `entry` = -1643001;
UPDATE `script_texts` SET `content_default` = 'Aux armes, mes serviteurs ! Jaillissez des abysses glacés !' WHERE `npc_entry` =40586 AND `entry` = -1643002;
UPDATE `script_texts` SET `content_default` = 'Anéantissez ces intrus ! Offrez-les à la ténèbre de l''au-delà !' WHERE `npc_entry` =40586 AND `entry` = -1643003;
UPDATE `script_texts` SET `content_default` = 'Ulthok, arrête-les…' WHERE `npc_entry` =40586 AND `entry` = -1643004;
UPDATE `script_texts` SET `content_default` = 'L''abysse vous attend !' WHERE `npc_entry` =40586 AND `entry` = -1643006;
UPDATE `script_texts` SET `content_default` = 'Qui sont vos alliés ?' WHERE `npc_entry` =40788 AND `entry` = -1643014;
UPDATE `script_texts` SET `content_default` = 'Je suis... fatigué. Vous devez poursuivre sans moi. Je quitterai les lieux une fois que j''aurai repris des forces' WHERE `npc_entry` =40765 AND `entry` = -1643018;
UPDATE `script_texts` SET `content_default` = 'Ils sont hors du cycle…' WHERE `npc_entry` =40765 AND `entry` = -1643017;
UPDATE `script_texts` SET `content_default` = 'Est-ce. La. Réalité ?' WHERE `npc_entry` =40765 AND `entry` = -1643016;
UPDATE `script_texts` SET `content_default` = 'Ils ne meurent pas.' WHERE `npc_entry` =40765 AND `entry` = -1643010;
UPDATE `script_texts` SET `content_default` = 'Là où un seul tombe, plusieurs prennent sa place...' WHERE `npc_entry` =40765 AND `entry` = -1643008;
UPDATE `script_texts` SET `content_default` = 'Les Profondeurs vous amène!' WHERE `npc_entry` =40586 AND `entry` = -1643005;
UPDATE `script_texts` SET `content_default` = 'Succombez.' WHERE `npc_entry` =40788 AND `entry` = -1643015;
UPDATE `script_texts` SET `content_default` = 'Il ya seulement Ghur''sha.' WHERE `npc_entry` =40788 AND `entry` = -1643013;
UPDATE `script_texts` SET `content_default` = 'Un nouvel hôte doit être trouvée.' WHERE `npc_entry` =40788 AND `entry` = -1643011;
UPDATE `script_texts` SET `content_default` = 'Là où un seul tombe, plusieurs prennent sa place...' WHERE `npc_entry` =40825 AND `entry` = -1643012;


/*
Retirer temporaire en attente debugg

-- Gameobject
DELETE FROM `gameobject` WHERE `id` = 180322 AND `map` = 643;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(351309, 180322, 643, 3, 1, -310.622, 782.411, 256.6, 1.56807, 0, 0, 0.706143, 0.708069, 300, 0, 1),
(351305, 180322, 643, 3, 1, -309.762, 832.517, 257.213, 4.54864, 0, 0, 0.762566, -0.64691, 300, 0, 1);

DELETE FROM `gameobject` WHERE `id`=402012;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(351293, 402012, 643, 3, 1, -311.711, 705.567, 282.196, 1.54578, 0, 0, 0.698208, 0.715895, 300, 0, 1);

DELETE FROM `gameobject` WHERE `id`=208301;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(351299, 208301, 643, 3, 1, -310.253, 916.37, 245.586, 4.68424, 0, 0, 0.716987, -0.697087, 300, 0, 1);

DELETE FROM `gameobject` WHERE `id`=207997;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(840493, 207997, 643, 1, 1, -315.556, 758.404, 275.665, -1.5708, 0, 0, 1, -4.37114E-8, 7200, 255, 1);

DELETE FROM `gameobject` WHERE `id`=207998;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(840497, 207998, 643, 1, 1, -319.797, 857.663, 271.239, 1.5708, 0, 0, 1, -4.37114E-8, 7200, 255, 1);

*/