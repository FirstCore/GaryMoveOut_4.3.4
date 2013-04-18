--
-- issue #80
--

UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` = 205207;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = -205098 WHERE `Id` = 26261;
UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` = 204959;
UPDATE `creature_template` SET `faction_A` = 1171, `faction_H` = 1171, `unit_flags` = 0, `dynamicflags` = 0 WHERE `entry` = 44472;

-- signal ok
UPDATE `cata_world`.`quest_signal` SET `status` = '3',
`name` = 'Mikadmin',
`commentaire` = '' WHERE `id` IN (27101,26261,26869,26577);