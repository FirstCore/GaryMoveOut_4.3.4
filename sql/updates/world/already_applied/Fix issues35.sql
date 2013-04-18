--
-- fix issues #35
--

UPDATE `creature_template` SET `npcflag` = 16777216, `unit_flags` = 0, `dynamicflags` = 8 WHERE `entry` IN (29488,29501);
