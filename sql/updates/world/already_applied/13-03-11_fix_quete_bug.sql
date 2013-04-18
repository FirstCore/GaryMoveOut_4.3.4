--
-- Fix quete en Signal bugg
--

-- 9419 - 9422
UPDATE `gameobject_template` SET `data1` = 9419 WHERE `entry` = 181598;
UPDATE `quest_signal` SET `status` = '3', `date` = '2013-03-11 16:00:00', `name` = 'Mikadmin', `commentaire` = '' WHERE `id` IN (9419,9422);

-- 871
UPDATE `quest_template` SET `RequiredNpcOrGo2` = 3265, `RequiredNpcOrGo3` = 0, `RequiredNpcOrGoCount2` = 3, `RequiredNpcOrGoCount3` = 0 WHERE `Id` = 871;
UPDATE `quest_signal` SET `status` = '3', `date` = '2013-03-11 16:00:00', `name` = 'Mikadmin', `commentaire` = '' WHERE `id` =871;

-- 905
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@, 6906, 1, 1, 1, -1056.4, -2588.32, 91.632, 0.470049, 0, 0, 0.232867, 0.972509, 300, 0, 1),
(@, 6907, 1, 1, 1, -1068.5, -2651.85, 91.8003, 1.61115, 0, 0, 0.72123, 0.692696, 300, 0, 1),
(@, 6908, 1, 1, 1, -1081.85, -2631.08, 91.6803, 1.51519, 0, 0, 0.687178, 0.726489, 300, 0, 1);

UPDATE `quest_template` SET `RequiredNpcOrGo2` = -6906, `RequiredNpcOrGo3` = -6907, `RequiredNpcOrGo4` = -6908 WHERE `Id` = 905;
UPDATE `quest_signal` SET `status` = '3', `date` = '2013-03-11 16:00:00', `name` = 'Mikadmin', `commentaire` = '' WHERE `id` = 905;

-- 4021
DELETE FROM `creature` WHERE `id`=3389;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@, 3389, 1, 1, 1, 0, 191, -305.28, -1959.91, 96.3966, 1.68102, 300, 0, 0, 896, 0, 0, 0, 0, 0);
UPDATE `quest_signal` SET `status` = '3', `date` = '2013-03-11 16:00:00', `name` = 'Mikadmin', `commentaire` = '' WHERE `id` = 4021;