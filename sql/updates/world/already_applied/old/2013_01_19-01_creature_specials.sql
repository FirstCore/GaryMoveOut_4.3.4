-- Mise en place des NPC : Retoucheur arcanique
DELETE FROM `creature_model_info` WHERE `modelid` = 38799;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(38799, 0.259726, 0.85, 0, 0);

DELETE FROM `creature_template` WHERE `entry` IN (54441, 54471);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(54441, 0, 0, 0, 0, 0, 38799, 0, 0, 0, 'Thaumaturge Vashreen', 'Arcane Reforger', 'Reforge', 0, 85, 85, 0, 0, 35, 35, 134217728, 1.14286, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 8, 512, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 945459, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 54441, 0, 0, '', 15595),
(54471, 0, 0, 0, 0, 0, 38799, 0, 0, 0, 'Thaumaturge Zajir', 'Arcane Reforger', 'Reforge', 0, 85, 85, 0, 0, 35, 35, 134217728, 1.14286, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 8, 512, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 945459, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 54471, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id` IN (54441, 54471);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 54441, 0, 1, 1, 0, 0, -8693.52, 843.613, 99.0031, 2.809980, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(NULL, 54471, 1, 1, 1, 0, 0, 1721.14, -4513.19, 31.3289, 0.314159, 120, 0, 0, 1, 0, 0, 0, 0, 0);


-- Mise en place des NPC : Transmogrifieur
DELETE FROM `creature_model_info` WHERE `modelid` = 38804;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(38804, 0.259726, 0.85, 0, 0);

DELETE FROM `creature_template` WHERE `entry` IN (54442, 54473);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(54442, 0, 0, 0, 0, 0, 38804, 0, 0, 0, 'Warpweaver Hashom', 'Transmogrifier', 'Transmogrify', 0, 85, 85, 0, 0, 35, 35, 268435456, 1.14286, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 8, 512, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 945459, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 54442, 0, 32768, '', 15595),
(54473, 0, 0, 0, 0, 0, 38804, 0, 0, 0, 'Warpweaver Dushar', 'Transmogrifier', 'Transmogrify', 0, 85, 85, 0, 0, 35, 35, 268435456, 1.14286, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 8, 512, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 945459, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 54473, 0, 32768, '', 15595);

DELETE FROM `creature` WHERE `id` IN (54442, 54473);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 54442, 0, 1, 1, 0, 0, -8699.7, 838.564, 99.2015, 2.12930, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(NULL, 54473, 1, 1, 1, 0, 0, 1727.33, -4519.5, 32.6442, 1.29154, 120, 0, 0, 1, 0, 0, 0, 0, 0);


-- Mise en place des NPC : Chambre du Vide
DELETE FROM `creature_model_info` WHERE `modelid` = 38800;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(38800, 0.255, 0.85, 0, 0);

DELETE FROM `creature_template` WHERE `entry` IN (54443, 54472);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(54443, 0, 0, 0, 0, 0, 38800, 0, 0, 0, 'Vaultkeeper Razhid', 'Void Storage', 'Voidstorage', 0, 85, 85, 0, 0, 35, 35, 536870912, 1.14286, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 8, 512, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 945459, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 54443, 0, 0, '', 15595),
(54472, 0, 0, 0, 0, 0, 38800, 0, 0, 0, 'Vaultkeeper Jazra', 'Void Storage', 'Voidstorage', 0, 85, 85, 0, 0, 35, 35, 536870912, 1.14286, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 8, 512, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 945459, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 54472, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id` IN (54443, 54472);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(NULL, 54443, 0, 1, 1, 0, 0, -8695.38, 839.454, 99.8612, 2.25148, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(NULL, 54472, 1, 1, 1, 0, 0, 1725.56, -4515.26, 30.7725, 0.610865, 120, 0, 0, 1, 0, 0, 0, 0, 0);

-- Suppression de la table transmogrification
DROP TABLE `custom_transmogrification`;
