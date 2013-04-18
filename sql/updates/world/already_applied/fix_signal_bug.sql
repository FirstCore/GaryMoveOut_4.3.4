/* Fix des quete en signal bug */

-- fix quete 301
DELETE FROM `creature` WHERE `id`=1356;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@, 1356, 0, 1, 65535, 0, 1356, -4632,63, -1302,03, 503,382, 2,26583, 300, 0, 0, 1003, 0, 0, 0, 0, 0);

-- Fix quete 383
DELETE FROM `creature_questrelation` WHERE `quest` = 383;

-- fix quete 433
UPDATE `quest_template` SET `RequiredSpellCast1` = 77819 WHERE `Id` = 433;

-- fix quete 1393
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 32569;

-- fix quete 1454
UPDATE `quest_template` SET `Method` = 2, `Flags` = 8, `SpecialFlags` = 0 WHERE `Id` = 1454;
UPDATE `gameobject_template` SET `data3` = 0 WHERE `entry` = 35251;

-- fix quete 768
UPDATE `quest_template` SET `RequiredSkillId` = 393, `RequiredSkillPoints` = 1 WHERE `Id` = 768;

-- fix quete 769
UPDATE `quest_template` SET `RequiredSkillId` = 165, `RequiredSkillPoints` = 1 WHERE `Id` = 769;

-- fix quete 5561
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 4700, `RequiredSpellCast1` = 18153 WHERE `Id` = 5561;
INSERT INTO `conditions` VALUES ('17', '0', '18153', '0', '0', '29', '0', '4700', '20', '0', '0', '0', '0', '', NULL);

-- fix quete 5741(obsolete)
DELETE FROM `creature_questrelation` WHERE `quest` = 5741;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 5741;

-- fix quete 6027(obsolete)
DELETE FROM `creature_questrelation` WHERE `quest` = 6027;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 6027;

-- fix quete 6067(obsolete)
DELETE FROM `creature_questrelation` WHERE `quest` = 6067;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 6067;

-- fix quete 6134 (non-debug)
DELETE FROM `gameobject` WHERE `id`=300036;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@, 300036, 1, 1, 1, -2288,51, 1345,86, 66,1857, 4,84058, 0, 0, 0,660364, -0,750945, 300, 0, 1);

-- fix quete 6161(obsolete)
DELETE FROM `creature_questrelation` WHERE `quest` = 6161;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 6161;

-- fix quete 8279
DELETE FROM `creature_loot_template` WHERE (`entry`=15200) AND (`item`=20394);
INSERT INTO `creature_loot_template` VALUES (15200, 20394, '-37.96', 1, 0, 1, 1);

DELETE FROM `creature_loot_template` WHERE (`entry`=11803) AND (`item`=20395);
INSERT INTO `creature_loot_template` VALUES (11803, 20395, '-46.70', 1, 0, 1, 1);

DELETE FROM `creature_loot_template` WHERE (`entry`=11804) AND (`item`=20396);
INSERT INTO `creature_loot_template` VALUES (11804, 20396, '-29.11', 1, 0, 1, 1);

-- fix quete 8283
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 180448;

-- fix quete 8307
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 180503;

-- fix quete 8468
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 180918;

-- fix quete 9356
UPDATE `item_template` SET `AllowableClass` = -1 WHERE `entry` = 23239;
DELETE FROM `creature_loot_template` WHERE (`entry`=16972) AND (`item`=23239);
INSERT INTO `creature_loot_template` VALUES (16972, 23239, '-32.31', 1, 0, 1, 1);

-- fix quete 9361
UPDATE `item_template` SET `AllowableClass` = -1 WHERE `entry` = 23270;
DELETE FROM `creature_loot_template` WHERE `item` =23270 ;
INSERT INTO `creature_loot_template` VALUES (16863, 23270, '-41', 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (16879, 23270, '-5', 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (16880, 23270, '-1.6', 1, 0, 1, 1);

-- Fix quete 10072
UPDATE `creature_template` SET `gossip_menu_id` = '' WHERE `entry` = 15284;
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0, `unit_flags2` = 0, `ScriptName` = '' WHERE `entry` = 44937;
UPDATE `quest_template` SET `Title` = 'Learning the Word', `Objectives` = 'Reach level 3 to learn Shadow Word: Pain. Practice casting it 5 times on nearby training dummies.', `Details` = 'As you grow in skill, so will the array of powers that you can call upon.$B$BI''d like you to go, continue to become more experienced, and discover a new spell. Once you do, come back and demonstrate it for me.', `RequiredNpcOrGo1` = 44937, `RequiredSpell` = '589', `RequiredSpellCast1` = 589, `ObjectiveText1` = 'Reach Level 3 to Learn Shadow Word: Pain' WHERE `Id` = 10072;

-- fix quete 11129
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 23616, `RequiredNpcOrGoCount1` = 1, `RequiredNpcOrGoCount2` = 42222, `RequiredSpellCast2` = 0 WHERE `Id` = 11129;

DELETE FROM `conditions` WHERE `ConditionValue1` = 23616;
UPDATE  `conditions` SET  `SourceTypeOrReferenceId` =  '17',
`ConditionTypeOrReference` =  '29',
`ConditionValue1` =  '23616',
`ConditionValue2` =  '30' WHERE  `SourceTypeOrReferenceId` =13 AND  `SourceEntry` =42222 AND `ConditionTypeOrReference` =18 AND `ConditionValue2` =23616;

-- Fix quete 11901 issues #41
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 188085;

-- fix quete 11956
UPDATE `quest_template` SET `Method` = 2, `Flags` = 0 WHERE `Id` = 11956;

-- fix quete 11961
UPDATE `creature_template` SET `npcflag` = 16777216 WHERE `entry` = 26200;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 26200 ;
INSERT INTO `npc_spellclick_spells` VALUES
(26200, 39996, 1, 0);

SET @ENTRY := 26200;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,1,8,0,100,0,39996,0,0,0,56,35692,1,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"create-item"),
(@ENTRY,@SOURCETYPE,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"despawn");

-- fix quete 14491
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 36845, `RequiredSpellCast1` = 69453 WHERE `Id` = 14491;
