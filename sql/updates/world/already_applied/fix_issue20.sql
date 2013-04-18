--
-- Gameobject
--
UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` IN (190657,188419,191728,190602);
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` IN (191766);

--
-- npc
--
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 28221;

--
-- creature_involvedrelation
--
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12729;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (28401, 12729);

--
-- quete obsolete
--
SET @ID := 13111;

DELETE FROM `creature_questrelation` WHERE `quest` = @ID;
DELETE FROM `gameobject_questrelation` WHERE `quest` = @ID;
DELETE FROM `creature_involvedrelation` WHERE `quest` = @ID;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = @ID;

--
-- signal quete
--

UPDATE `quest_signal` SET `status` = 3, `date` = '2013-02-15 12:53:00', `name` = 'Mikadmin', `commentaire` = '' WHERE `id` IN (12655,12729,12615,12609,12902,12030,12031,12032);