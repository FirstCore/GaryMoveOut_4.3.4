/*###################
# Gobelin           #
# kezan : 4737      #
# Lost isles : 4720 #
###################*/

/* 
Contenue :

- Debugg Part.II Phase 2048

POUR INFO :
Liste id quete Kezan (14069,14070,14071,14075,14109,14110,14113,14114,14115,14116,14120,14121,14122,14123,14124,14125,14126,14137,14138,14139,14153,14158,24488,24502,24503,24520,24521,24567,25473,25902,26711,26712,28349,28414,28606,28607)
Liste id quete Lost-Isle (14001,14014,14019,14021,14031,14233,14234,14235,14236,14237,14238,14239,14240,14241,14242,14243,14244,14245,14248,14303,14326,14445,14473,14474,24671,24741,24744,24816,24817,24856,24858,24859,24860,24864,24868,24897,24901,24924,24925,24929,24935,24936,24937,24940,24942,24945,24946,24952,24954,24958,25023,25024,25058,25066,25093,25099,25100,25109,25110,25122,25123,25124,25125,25184,25200,25201,25202,25203,25204,25207,25213,25214,25243,25244,25251,25265,25903,27139)

*/


--
-- CREATURE
--
UPDATE `creature_template` SET `gossip_menu_id` = 0, `npcflag` = 2, `unit_flags` = 0, `unit_flags2` = 2048, `dynamicflags` = 0 WHERE `entry` = 36471;
UPDATE `creature` SET `unit_flags` = 0 WHERE `id` = 36471;
UPDATE `creature` SET `phaseMask` = 2049 WHERE `guid` IN (6492657,6492659,6492667,6492660,6492661,6492665,6492652,6492654,6492650,6492651,6492666,6492656);
UPDATE `creature_template` SET `gossip_menu_id` = '', `npcflag` = 0, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 38381;
DELETE FROM `creature` WHERE `id`=38381;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(6492654, 38381, 648, 1, 2049, 0, 38381, 952.428, 2370.9, 5.42355, 4.18716, 600, 0, 0, 102, 0, 0, 640, 0, 0),
(6931801, 38381, 648, 1, 1, 0, 38381, 714.527, 2056.44, 57.2225, 4.01914, 600, 0, 0, 102, 0, 0, 2, 0, 0);
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `dynamicflags` = 0 WHERE `entry` = 38120;
UPDATE `creature` SET `unit_flags` = 0 WHERE `id` = 38120;
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0 WHERE `entry` = 38111;
UPDATE `creature` SET `phaseMask` = 2049 WHERE `id` = 38111;
DELETE FROM `creature_template_addon` WHERE `entry` = 38111;
UPDATE `creature` SET `phaseMask` = 65534 WHERE `id` IN (40064,38187);
UPDATE `creature_template` SET `unit_flags` = 4 WHERE `entry` = 38195;
UPDATE `creature` SET `phaseMask` = 2049 WHERE `id` = 38224;
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` = 36470;
UPDATE `creature` SET `phaseMask` = 2049 WHERE `guid` = 6405289;
UPDATE `creature` SET `phaseMask` = 2049 WHERE `id` = 38409;
UPDATE `creature_template` SET `InhabitType` = 2 WHERE `entry` = 36681;
UPDATE `creature` SET `phaseMask` = 2048 WHERE `id` = 36682;
UPDATE `creature_template` SET `speed_walk` = 2, `speed_run` = 3, `InhabitType` = 2, `Armor_mod` = 100, `mechanic_immune_mask` = 613097436 WHERE `entry` = 38318;
UPDATE `creature` SET `phaseMask` = 2049 WHERE `guid` IN (6931784,6931801,6931797);
UPDATE `creature` SET `phaseMask` = 2049 WHERE `id` IN (38359,38360,38412);

--
-- GAMEOBJECT
--
DELETE FROM `gameobject` WHERE `id`= 201974;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 201974;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 201977;
UPDATE `gameobject` SET `phaseMask` = 2049 WHERE `id` = 201977;
UPDATE `gameobject` SET `phaseMask` = 2048 WHERE `id` = 202108;

DELETE FROM `gameobject` WHERE `id`=202133;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(202133, 648, 1, 2048, 399.312, 2177.03, 9.47343, 4.33975, 0, 0, 0.825854, -0.563884, 300, 0, 1),
(202133, 648, 1, 2048, 460.998, 2141.49, 3.25583, 3.37087, 0, 0, 0.993436, -0.114389, 300, 0, 1),
(202133, 648, 1, 2048, 505.663, 2123.83, 5.79419, 4.88826, 0, 0, 0.642274, -0.766475, 300, 0, 1),
(202133, 648, 1, 2048, 498.114, 2026.62, 2.21269, 3.84761, 0, 0, 0.938337, -0.345723, 300, 0, 1),
(202133, 648, 1, 2048, 563.925, 1961.38, 13.7666, 6.24889, 0, 0, 0.0171445, -0.999853, 300, 0, 1),
(202133, 648, 1, 2048, 533.336, 1880.57, 3.9476, 2.35803, 0, 0, 0.924231, 0.381835, 300, 0, 1),
(202133, 648, 1, 2048, 470.52, 1966.09, 10.6652, 6.28266, 0, 0, 0.000260266, -1, 300, 0, 1),
(202133, 648, 1, 2048, 487.142, 1882.32, 1.79567, 1.58441, 0, 0, 0.711905, 0.702276, 300, 0, 1),
(202133, 648, 1, 2048, 494.564, 1782.09, 1.66299, 2.44835, 0, 0, 0.940527, 0.33972, 300, 0, 1),
(202133, 648, 1, 2048, 437.358, 1791.29, 0.33416, 4.15188, 0, 0, 0.875104, -0.483934, 300, 0, 1),
(202133, 648, 1, 2048, 396.049, 1950.5, -0.512197, 3.18113, 0, 0, 0.999805, -0.0197693, 300, 0, 1),
(202133, 648, 1, 2048, 351.821, 1893.61, 1.09294, 3.04997, 0, 0, 0.998951, 0.0457957, 300, 0, 1),
(202133, 648, 1, 2048, 332.664, 2079.35, -0.256108, 0.236673, 0, 0, 0.118061, 0.993006, 300, 0, 1),
(202133, 648, 1, 2048, 308.599, 2022.77, -0.407049, 4.52808, 0, 0, 0.769176, -0.639037, 300, 0, 1),
(202133, 648, 1, 2048, 267.028, 1963.34, -0.534909, 3.82122, 0, 0, 0.942817, -0.333312, 300, 0, 1),
(202133, 648, 1, 2048, 185.431, 2184.52, 9.78175, 0.338759, 0, 0, 0.168571, 0.98569, 300, 0, 1),
(202133, 648, 1, 2048, 206.534, 2085.34, 7.39744, 0.490341, 0, 0, 0.242722, 0.970096, 300, 0, 1),
(202133, 648, 1, 2048, 181.307, 2028.56, 5.57077, 0.5948, 0, 0, 0.293035, 0.956102, 300, 0, 1),
(202133, 648, 1, 2048, 193.313, 1926.64, 2.10283, 5.64962, 0, 0, 0.311511, -0.950243, 300, 0, 1),
(202133, 648, 1, 2048, 186.973, 1858.04, 6.66723, 0.0206685, 0, 0, 0.0103341, 0.999947, 300, 0, 1),
(202133, 648, 1, 2048, 230.886, 1780.82, 9.70765, 0.31519, 0, 0, 0.156943, 0.987608, 300, 0, 1),
(202133, 648, 1, 2048, 274.3, 1777.41, 0.272232, 6.25987, 0, 0, 0.0116576, -0.999932, 300, 0, 1);
UPDATE `gameobject_template` SET `flags` = 0, `data10` = 71857 WHERE `entry` = 202133;

--
-- QUETE
--
UPDATE `quest_template` SET `PrevQuestId` = 24901 WHERE `Id` = 24945;
UPDATE `quest_template` SET `PrevQuestId` = 14245, `NextQuestId` = 0, `NextQuestIdChain` = 24671 WHERE `Id` = 27139;
UPDATE `quest_template` SET `PrevQuestId` = 27139, `NextQuestId` = 24741, `Flags` = 8 WHERE `Id` = 24671;
UPDATE `quest_template` SET `PrevQuestId` = 24671, `NextQuestId` = 24744 WHERE `Id` = 24741;
UPDATE `quest_template` SET `PrevQuestId` = 24741, `NextQuestId` = 24816 WHERE `Id` = 24744;

UPDATE `quest_template` SET `PrevQuestId` = 24744, `NextQuestId` = 0, `NextQuestIdChain` = 24817 WHERE `Id` = 24816;
UPDATE `quest_template` SET `PrevQuestId` = 24816, `NextQuestId` = 0, `NextQuestIdChain` = 24856 WHERE `Id` = 24817;
UPDATE `quest_template` SET `PrevQuestId` = 24817, `NextQuestId` = 0, `NextQuestIdChain` = 24858 WHERE `Id` = 24856;
UPDATE `quest_template` SET `PrevQuestId` = 24856, `NextQuestId` = 24864, `ExclusiveGroup` = -24858, `NextQuestIdChain` = 24864 WHERE `Id` = 24858;
UPDATE `quest_template` SET `NextQuestId` = 24864, `ExclusiveGroup` = -24858, `NextQuestIdChain` = 24864, `PrevQuestId` = 24856 WHERE `Id` = 24859;
UPDATE `quest_template` SET `PrevQuestId` = 24858, `NextQuestId` = 0, `NextQuestIdChain` = 24868 WHERE `Id` = 24864;
UPDATE `quest_template` SET `PrevQuestId` = 24864, `NextQuestId` = 0, `NextQuestIdChain` = 24897 WHERE `Id` = 24868;


UPDATE `quest_template` SET `PrevQuestId` = 24868, `NextQuestId` = 0, `NextQuestIdChain` = 24901 WHERE `Id` = 24897;
UPDATE `quest_template` SET `PrevQuestId` = 24897, `NextQuestId` = 0, `NextQuestIdChain` = 24924 WHERE `Id` = 24901;
UPDATE `quest_template` SET `PrevQuestId` = 24901 WHERE `Id` = 24924;

UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 12 WHERE `Id` = 24864;

--
-- compo vendeur
--
DELETE FROM `npc_vendor` WHERE `entry` = 38381;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(38381, 0, 49253, 0, 0, 0),
(38381, 0, 49254, 0, 0, 0),
(38381, 0, 49257, 0, 0, 0),
(38381, 0, 49258, 0, 0, 0),
(38381, 0, 49600, 0, 0, 0),
(38381, 0, 49601, 0, 0, 0);

--
-- Smart-script
--
SET @ENTRY := 38224;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,1000,10000,20000,30000,11,71657,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Mécapoulet - Barrage d'œufs mortel");