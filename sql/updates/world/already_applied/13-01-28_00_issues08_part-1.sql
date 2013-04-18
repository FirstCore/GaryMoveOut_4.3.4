--
-- ARCHERUS PORTAL Map.609
--

-- Cleaning
DELETE FROM `gameobject_template` WHERE `entry` IN (191538,191539);
DELETE FROM `gameobject` WHERE `id` IN (191538,191539);
DELETE FROM `spell_target_position` WHERE `id` IN (54699,54725);
DELETE FROM `creature` WHERE `id` IN (29580,29581);
DELETE FROM `creature_template` WHERE `entry` IN (29580,29581);

-- Gob_Template
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(191538, 6, 6699, 'Hall to Heart', '', '', '', 0, 0, 0.7, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329),
(191539, 6, 6699, 'Heart to Hall', '', '', '', 0, 0, 0.7, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);

-- Gob_Spawn
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@, 191539, 609, 1, 65535, 2390.02, -5640.91, 406.093, 0.593412, 0, 0, 0.292372, 0.956305, 180, 100, 1),
(@, 191538, 609, 1, 65535, 2383.65, -5645.21, 449.772, 0.593412, 0, 0, 0.292372, 0.956305, 180, 100, 1);

-- Npc_Template
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(29580, 0, 0, 0, 0, 0, 24719, 0, 0, 0, 'Teleport - Hall -> Heart', '', '', 0, 70, 70, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 478.8, 678.3, 0, 578, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 408.5, 608, 57, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340),
(29581, 0, 0, 0, 0, 0, 24719, 0, 0, 0, 'Teleport - Heart -> Hall', '', '', 0, 70, 70, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 478.8, 678.3, 0, 578, 1, 2000, 0, 1, 33554944, 0, 8, 0, 0, 0, 0, 0, 408.5, 608, 57, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);

-- Npc_Spawn
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@, 29580, 609, 1, 65535, 0, 0, 2383.59, -5645.24, 421.797, 0.612899, 300, 0, 0, 6986, 0, 0, 0, 0, 0),
(@, 29581, 609, 1, 65535, 0, 0, 2389.83, -5641.05, 378.074, 0.510061, 300, 0, 0, 6986, 0, 0, 0, 0, 0);

-- Spell data
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(54699, 609, 2418.67, -5621.41, 420.644, 3.89597),
(54725, 609, 2402.15, -5633.74, 377.021, 3.65249);

-- Smart_Scripts

-- Teleport - Hall -> Heart
SET @ENTRY := 29580;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,0,1,0,1,11,54725,0,0,0,0,0,18,2,0,0,0.0,0.0,0.0,0.0,"teleport hall to heart");

-- Teleport - Heart -> Hall
SET @ENTRY := 29581;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,0,1,0,1,11,54699,0,0,0,0,0,18,2,0,0,0.0,0.0,0.0,0.0,"teleport heart to hall");