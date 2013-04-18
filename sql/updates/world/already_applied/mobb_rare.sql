--
-- mobb rare
--

UPDATE `creature_template` SET `dmg_multiplier` = 35 WHERE `entry` = 50005;
UPDATE `creature_template` SET `dmg_multiplier` = 35 WHERE `entry` = 50009;
UPDATE `creature_template` SET `dmg_multiplier` = 35 WHERE `entry` = 50089;
UPDATE `creature_template` SET `dmg_multiplier` = 35 WHERE `entry` = 50062;
UPDATE `creature_template` SET `exp` = 3, `dmg_multiplier` = 35 WHERE `entry` = 50050;
-- Shok'sharak
SET @ENTRY := 50050;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,30000,30000,30000,30000,11,75073,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Shok'sharak - Nova de l'ombre"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,10000,10000,10000,10000,11,43512,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Shok'sharak - Fouet mental"),
(@ENTRY,@SOURCETYPE,2,0,0,0,100,0,15000,15000,15000,15000,11,75903,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Shok'sharak - Déferlante d'ombre");

UPDATE `creature_template` SET `dmg_multiplier` = 35 WHERE `entry` = 50056;
UPDATE `creature_template` SET `exp` = 3, `dmg_multiplier` = 35 WHERE `entry` = 50053;
