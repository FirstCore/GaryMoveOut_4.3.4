--
-- Injured Stormwind Infantry template_addon
--

SET @ENTRY := 50047;

DELETE FROM `creature_template_addon` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 0, 0, 0, 93096);
