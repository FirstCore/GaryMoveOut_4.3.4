--
-- Texts
--

SET @ENTRY := 50047;

DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`TEXT`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Bless you, hero!",12,0,100,0,0,0,"Injured Stormwind Infantry"),
(@ENTRY,0,1,"I live to fight another day!",12,0,100,0,0,0,"Injured Stormwind Infantry"),
(@ENTRY,0,2,"I... I'm ok! I'm ok!",12,0,100,0,0,0,"Injured Stormwind Infantry"),
(@ENTRY,0,3,"I will fear no evil!",12,0,100,0,0,0,"Injured Stormwind Infantry"),
(@ENTRY,0,4,"You're $N! The hero that everyone has been talking about! Thank you!",12,0,100,0,0,0,"Injured Stormwind Infantry"),
(@ENTRY,0,5,"Thank the Light!",12,0,100,0,0,0,"Injured Stormwind Infantry");