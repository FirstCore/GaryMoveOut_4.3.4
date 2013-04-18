/*###################
# Gobelin           #
# kezan : 4737      #
# Lost isles : 4720 #
###################*/

/* 
Contenue :

- Debugg Part.III Phase 1

POUR INFO :
Liste id quete Kezan (14069,14070,14071,14075,14109,14110,14113,14114,14115,14116,14120,14121,14122,14123,14124,14125,14126,14137,14138,14139,14153,14158,24488,24502,24503,24520,24521,24567,25473,25902,26711,26712,28349,28414,28606,28607)
Liste id quete Lost-Isle (14001,14014,14019,14021,14031,14233,14234,14235,14236,14237,14238,14239,14240,14241,14242,14243,14244,14245,14248,14303,14326,14445,14473,14474,24671,24741,24744,24816,24817,24856,24858,24859,24860,24864,24868,24897,24901,24924,24925,24929,24935,24936,24937,24940,24942,24945,24946,24952,24954,24958,25023,25024,25058,25066,25093,25099,25100,25109,25110,25122,25123,25124,25125,25184,25200,25201,25202,25203,25204,25207,25213,25214,25243,25244,25251,25265,25903,27139)

*/

--
-- npc
--
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 38526;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 38531;
UPDATE `creature` SET `id` = 38574 WHERE `id` = 38644;
UPDATE `creature_template_addon` SET `auras` = '71333' WHERE `entry` =38531;
UPDATE `creature_template` SET `KillCredit1` = 38807 WHERE `entry` = 38753;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 39065;
DELETE FROM `creature` WHERE `id`=39065;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(8397775, 39065, 648, 1, 1, 0, 39065, 2293.95, 2429.89, 22.3432, 3.80095, 600, 0, 0, 4147, 4488, 0, 0, 0, 0),
(7928744, 39065, 648, 1, 1, 0, 39065, 1566.42, 2713.65, 84.7329, 4.88142, 600, 0, 0, 328, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 38647, `unit_flags` = 0, `unit_flags2` = 2048, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 38647;
UPDATE `creature_template` SET `gossip_menu_id` = 38746, `unit_flags` = 0, `unit_flags2` = 2048, `dynamicflags` = 0, `type_flags` = 0, `AIName` = '' WHERE `entry` = 38746;
UPDATE `creature` SET `phaseMask` = 1 WHERE `id` = 39456;

--
--
--
DELETE FROM `creature_loot_template` WHERE (`entry`=39194);
DELETE FROM `creature_loot_template` WHERE (`entry`=39195);
DELETE FROM `creature_loot_template` WHERE (`entry`=39363) AND (`item`=52531);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (39363, 52531, -100, 1, 0, 1, 1);


--
-- gossip
--
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 38746;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(38746, 0, 0, 'Gonflés à bloc !', 1, 1, 0, 0, 0, 0, NULL);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 202613;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(202613, 0, 0, 'Appuyez sur le Gros bouton rouge !', 1, 1, 0, 0, 0, 0, NULL);


--
-- creature questrelation
--
DELETE FROM `creature_questrelation` WHERE `quest` = 25058;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38387, 25058);
DELETE FROM `creature_questrelation` WHERE `quest` = 25122;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38124, 25122);
DELETE FROM `creature_questrelation` WHERE `quest` = 25123;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38124, 25123);


--
-- quete
--
DELETE FROM `quest_end_scripts` WHERE `id`=24924;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(24924, 0, 14, 66987, 0, '0', 0, 0, 0,0);
UPDATE `quest_template` SET `CompleteScript` = 24924 WHERE `id` = 24924;

UPDATE `quest_template` SET `PrevQuestId` = 24924, `ExclusiveGroup` = -24925, `NextQuestIdChain` = 24937 WHERE `Id` = 24925;
UPDATE `quest_template` SET `PrevQuestId` = 24924, `ExclusiveGroup` = -24925, `NextQuestIdChain` = 24937 WHERE `Id` = 24929;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestIdChain` = 24940 WHERE `Id` = 24937; 
UPDATE `quest_template` SET `PrevQuestId` = 24937, `NextQuestIdChain` = 24942 WHERE `Id` = 24940;
UPDATE `quest_template` SET `PrevQuestId` = 24940, `NextQuestId` = 24945, `ExclusiveGroup` = -24942, `NextQuestIdChain` = 24945 WHERE `Id` = 24942;
UPDATE `quest_template` SET `PrevQuestId` = 24940, `NextQuestId` = 24945, `ExclusiveGroup` = -24942, `NextQuestIdChain` = 24945 WHERE `Id` = 24946;
UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestIdChain` = 24952 WHERE `Id` = 24945;
UPDATE `quest_template` SET `PrevQuestId` = 24945, `NextQuestIdChain` = 24954 WHERE `Id` = 24952;
UPDATE `quest_template` SET `PrevQuestId` = 24952, `NextQuestIdChain` = 24958 WHERE `Id` = 24954;
UPDATE `quest_template` SET `PrevQuestId` = 24954, `NextQuestIdChain` = 25023 WHERE `Id` = 24958;
UPDATE `quest_template` SET `PrevQuestId` = 24958, `NextQuestIdChain` = 25024 WHERE `Id` = 25023;

UPDATE `quest_template` SET `NextQuestId` = 25066, `ExclusiveGroup` = -25024, `NextQuestIdChain` = 25066 WHERE `Id` = 25024;
UPDATE `quest_template` SET `NextQuestId` = 25066, `ExclusiveGroup` = -25024, `NextQuestIdChain` = 25066  WHERE `Id` = 25093;
UPDATE `quest_template` SET `PrevQuestId` = 25023, `ExclusiveGroup` = -25024, `NextQuestIdChain` = 25066  WHERE `Id` = 25058;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestIdChain` = 25098 WHERE `Id` = 25066;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestIdChain` = 25099 WHERE `Id` = 25098;
UPDATE `quest_template` SET `PrevQuestId` = 25098, `NextQuestId` = 0, `NextQuestIdChain` = 25100 WHERE `Id` = 25099;
UPDATE `quest_template` SET `PrevQuestId` = 25099, `NextQuestId` = 0, `NextQuestIdChain` = 25109 WHERE `Id` = 25100;
UPDATE `quest_template` SET `PrevQuestId` = 25100, `NextQuestId` = 0, `NextQuestIdChain` = 25110 WHERE `Id` = 25109;
UPDATE `quest_template` SET `PrevQuestId` = 25109 WHERE `Id` = 25110;

UPDATE `quest_template` SET `ExclusiveGroup` = -25122, `NextQuestIdChain` = 25125, `PrevQuestId` = 25110 WHERE `Id` = 25122;
UPDATE `quest_template` SET `PrevQuestId` = 25110, `ExclusiveGroup` = -25122, `NextQuestIdChain` = 25125 WHERE `Id` = 25123;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestIdChain` = 25184 WHERE `Id` = 25125;
UPDATE `quest_template` SET `PrevQuestId` = 25125, `NextQuestId` = 0, `NextQuestIdChain` = 0, `StartScript` = 25184 WHERE `Id` = 25184;
UPDATE `quest_template` SET `PrevQuestId` = 25184, `NextQuestId` = 25204, `NextQuestIdChain` = 25204, `ExclusiveGroup` = -25200 WHERE `Id` = 25200;
UPDATE `quest_template` SET `PrevQuestId` = 25184, `NextQuestId` = 25204, `ExclusiveGroup` = -25200, `NextQuestIdChain` = 25204 WHERE `Id` = 25201;
UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestId` = 0, `NextQuestIdChain` = 0 WHERE `Id` = 25204;
UPDATE `quest_template` SET `PrevQuestId` = 25204, `NextQuestId` = 25213, `ExclusiveGroup` = -25202, `NextQuestIdChain` = 25213 WHERE `Id` = 25202;
UPDATE `quest_template` SET `PrevQuestId` = 25204, `NextQuestId` = 25213, `ExclusiveGroup` = -25202, `NextQuestIdChain` = 25213 WHERE `Id` = 25203;
UPDATE `quest_template` SET `PrevQuestId` = 25204, `NextQuestId` = 25213, `NextQuestIdChain` = 25213, `ExclusiveGroup` = -25202 WHERE `Id` = 25207;
UPDATE `quest_template` SET `PrevQuestId` = 25207 WHERE `Id` = 25213;

UPDATE `quest_template` SET `PrevQuestId` = 25213, `ExclusiveGroup` = -25243, `NextQuestIdChain` = 25251 WHERE `Id` = 25243;
UPDATE `quest_template` SET `PrevQuestId` = 25213, `ExclusiveGroup` = -25243, `NextQuestIdChain` = 25251 WHERE `Id` = 25244;
UPDATE `quest_template` SET `PrevQuestId` = 25213, `NextQuestId` = 25251, `ExclusiveGroup` = -25243, `NextQuestIdChain` = 25251 WHERE `Id` = 25214;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestIdChain` = 25265 WHERE `Id` = 25251;
UPDATE `quest_template` SET `PrevQuestId` = 25251, `NextQuestId` = 0, `NextQuestIdChain` = 25266 WHERE `Id` = 25265;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestIdChain` = 25267 WHERE `Id` = 25266;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `Id` = 25267;
UPDATE `quest_template` SET `NextQuestId` = 14129, `ExclusiveGroup` = -25275, `NextQuestIdChain` = 14129 WHERE `Id` = 25275;
UPDATE `quest_template` SET `PrevQuestId` = 25267, `ExclusiveGroup` = -25275, `NextQuestIdChain` = 14129 WHERE `Id` = 28496;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestIdChain` = 14134 WHERE `Id` = 14129;
UPDATE `quest_template` SET `PrevQuestId` = 14129, `NextQuestId` = 0, `NextQuestIdChain` = 14135 WHERE `Id` = 14134;
UPDATE `quest_template` SET `PrevQuestId` = 14134, `NextQuestId` = 0, `NextQuestIdChain` = 14146 WHERE `Id` = 14135;
UPDATE `quest_template` SET `PrevQuestId` = 14135, `NextQuestId` = 0, `NextQuestIdChain` = 14155 WHERE `Id` = 14146;
UPDATE `quest_template` SET `PrevQuestId` = 14146 WHERE `Id` = 14155;


--
-- Quest script
--
DELETE FROM `quest_start_scripts` WHERE `id`=25184;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(25184, 0, 6, 648, 0, '', 2366.13, 1933.28, 21.73, 0.24),
(25184, 1, 8, 39335, 0, '', 0, 0, 0, 0);

DELETE FROM `quest_start_scripts` WHERE `id`=25266;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(25266, 0, 6, 1, 0, '', 1472.60, -5012.07, 11.79, 3.29);


--
-- Gameobject
--
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 202552;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 202613;
UPDATE `gameobject_template` SET `data3` = 202613 WHERE `entry` = 202613;

--
-- smart script
--

SET @ENTRY := 202613;
SET @SOURCETYPE := 1;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE gameobject_template SET AIName="SmartObjectAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,62,0,100,0,202613,0,0,0,33,39393,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Type a script description here.");
