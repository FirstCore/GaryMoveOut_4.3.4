-- 
-- Fix issues #44
--

UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 26170; /* suppression du lien vers le script - npc_thassarian */
UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 12019; /* auto-validation de la quete */
