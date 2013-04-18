--
-- Cité de tolvir
--

--
-- Netoyage instance
DELETE FROM `creature` WHERE `map` = 755;
DELETE FROM gameobject WHERE `map` = 755;
DELETE FROM `creature_template_addon` WHERE `entry`=45378;
DELETE FROM gameobject WHERE `map` = 755;


--
-- Implantation Script vers sql

-- Instance 
UPDATE `instance_template` SET `script`='instance_lost_city_of_the_tolvir' WHERE `map`=755;

-- Boss
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='boss_general_husam' WHERE `entry`=44577; 
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='boss_high_prophet_barim' WHERE `entry`=43612;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='boss_lockmaw' WHERE `entry`=43614;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='boss_siamat' WHERE `entry`=44819;

-- creature
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_augh' WHERE `entry`=49045;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_crosilik' WHERE `entry`=43658;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_trap' WHERE `entry`=44840;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_shokwave_spike' WHERE `entry`=44712;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_shokwave_spike_visual' WHERE `entry`=44711;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_harbinger_of_darkness' WHERE `entry`=43927; 
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_blaze_of_heavens' WHERE `entry`=48906;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_blaze_of_heavens_egg' WHERE `entry`=48904; 
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_soul_fragment' WHERE `entry`=43934; 
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_augh_scent' WHERE `entry`=45379;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_augh_whirlwind' WHERE `entry`=45378;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_minion_of_siamat' WHERE `entry`=44704;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_servant_of_siamat' WHERE `entry`=45269;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_cloud_burst' WHERE `entry`=44541;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='npc_wind_tunnel' WHERE `entry`=48092;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_bonesnapper_scorpid' WHERE `entry`=45063;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_neferset_darkcaster' WHERE `entry`=44982;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_neferset_plaguebringer' WHERE `entry`=44976;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_neferset_theurgist' WHERE `entry`=44980;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_neferset_torturer' WHERE `entry`=44977;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_oathsworn_axemaster' WHERE `entry`=44922;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_oathsworn_captain' WHERE `entry`=45122;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_oathsworn_myrmidon' WHERE `entry`=44924;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_oathsworn_pathfinder' WHERE `entry`=44932;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_oathsworn_scorpid_keeper' WHERE `entry`=45062;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_oathsworn_skinner' WHERE `entry`=44981;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_oathsworn_wanderer' WHERE `entry`=44926;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_pygmy_brute' WHERE `entry`=44896;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_pygmy_firebreather' WHERE `entry`=44898;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_pygmy_scout' WHERE `entry`=44897;
UPDATE `creature_template` SET `AIName` = '',  `ScriptName`='mob_sharptalon_eagle' WHERE `entry`=44261;


--
-- Correction template

-- Boss (no fear 652951551)
UPDATE `creature_template` SET `rank` = 3, `dmg_multiplier` = 13, `unit_flags` = 0, `unit_flags2` = 2048, `mechanic_immune_mask` = 652951551, `type_flags` = 0, `VehicleId` = 0, `flags_extra` = 2097153 WHERE `entry` = 44577;
UPDATE `creature_template` SET `rank` = 3, `dmg_multiplier` = 27, `type_flags` = 0, `Health_mod` = 55, `mechanic_immune_mask` = 652951551, `flags_extra` = 2097153 WHERE `entry` = 48932;
UPDATE `creature_template` SET `rank` = 3, `dmg_multiplier` = 13, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 20, `Mana_mod` = 11.8448, `flags_extra` = 2097153 WHERE `entry` = 43612;
UPDATE `creature_template` SET `rank` = 3, `dmg_multiplier` = 27, `type_flags` = 0, `Health_mod` = 45, `Mana_mod` = 11.8448, `flags_extra` = 2097153 WHERE `entry` = 48951;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 20, `Mana_mod` = 11.8448, `mechanic_immune_mask` = 652951551, `flags_extra` = 2097153 WHERE `entry` = 43614;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `lootid` = 49043, `Health_mod` = 45, `Mana_mod` = 11.8448, `flags_extra` = 2097153 WHERE `entry` = 49043;
UPDATE `creature_template` SET `rank` = 3, `dmg_multiplier` = 13, `unit_flags` = 0, `type_flags` = 0, `Mana_mod` = 11.8448, `flags_extra` = 2097153 WHERE `entry` = 44819;
UPDATE `creature_template` SET `rank` = 3, `dmg_multiplier` = 27, `type_flags` = 0, `Health_mod` = 30, `Mana_mod` = 11.8448, `flags_extra` = 2097153 WHERE `entry` = 51088;

-- Creature
UPDATE `creature_template` SET `Health_mod` = 25, `Mana_mod` = 0 WHERE `entry` = 49045;
UPDATE `creature_template` SET `minlevel` = 85, `dmg_multiplier` = 7.5, `type_flags` = 0, `Health_mod` = 0.5, `Mana_mod` = 0 WHERE `entry` = 43658;
UPDATE `creature_template` SET `exp` = 3, `dmg_multiplier` = 7.5 WHERE `entry` = 44840;
UPDATE `creature_template` SET `modelid1` = 11686, `modelid2` = 0 WHERE `entry` = 48092;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5 WHERE `entry` = 45063;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 44982;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49328, `Health_mod` = 5, `Mana_mod` = 14.133 WHERE `entry` = 49328;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 44976;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49324, `Health_mod` = 5, `Mana_mod` = 14.133 WHERE `entry` = 49324;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 44980;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49326, `Health_mod` = 5, `Mana_mod` = 14.133 WHERE `entry` = 49326;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 4, `Mana_mod` = 14.133 WHERE `entry` = 44977;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49325, `Health_mod` = 5, `Mana_mod` = 14.133 WHERE `entry` = 49325;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 44922;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49319, `Health_mod` = 5, `Mana_mod` = 0 WHERE `entry` = 49319;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `Mana_mod` = 0, `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 45122;
UPDATE `creature_template` SET `type_flags` = 0, `lootid` = 49334, `Health_mod` = 15, `Mana_mod` = 0 WHERE `entry` = 49334;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 44924;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `lootid` = 49321, `type_flags` = 0, `Health_mod` = 5, `Mana_mod` = 0 WHERE `entry` = 49321;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 4, `Mana_mod` = 0 WHERE `entry` = 44932;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49323, `Health_mod` = 5, `Mana_mod` = 0 WHERE `entry` = 49323;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 45062;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49330, `Health_mod` = 5, `Mana_mod` = 14.133 WHERE `entry` = 49330;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 44981;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49327, `Health_mod` = 5, `Mana_mod` = 0 WHERE `entry` = 49327;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 44926;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49322, `Health_mod` = 5, `Mana_mod` = 0 WHERE `entry` = 49322;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0, `VehicleId` = 0, `Health_mod` = 3.383, `Mana_mod` = 24.6743 WHERE `entry` = 44896;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `Health_mod` = 3.383, `Mana_mod` = 24.6743 WHERE `entry` = 49317;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49320, `Health_mod` = 4.2287 WHERE `entry` = 49320;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 0, `type_flags` = 0, `VehicleId` = 0, `Health_mod` = 3.383, `Mana_mod` = 24.6743 WHERE `entry` = 44897;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `type_flags` = 0, `lootid` = 49318, `Health_mod` = 4.2287, `Mana_mod` = 24.6743 WHERE `entry` = 49318;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5, `unit_flags` = 0, `Health_mod` = 2, `Mana_mod` = 0 WHERE `entry` = 44261;
UPDATE `creature_template` SET `unit_flags` = 6, `flags_extra` = 130 WHERE `entry` = 43650;
UPDATE `creature_template` SET `unit_flags` = 6, `flags_extra` = 130 WHERE `entry` = 43655;


--
-- Spell

-- SPELL_SHOCKWAVE_DMG
REPLACE INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`) VALUES (4004, 83454, 90029); 
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (83445, 83454, 'Husam Shockwave DMG');

-- SPELL_HEAVENS_FURY_DMG
REPLACE INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`) VALUES (4005, 81942, 90040); 
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (82320, 81947, 2, 'High Propher Barim SPELL_REPENTANCE');


--
-- Addon
DELETE FROM `creature_template_addon` WHERE (`entry`=43650);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (43650, 0, 0, 0, 1, 0, '81646 0 ');

DELETE FROM `creature_template_addon` WHERE (`entry`=43655);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (43655, 0, 0, 0, 1, 0, '81646 0 ');


--
-- Smart AI
DELETE FROM `smart_scripts` WHERE (`entryorguid`=43658 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43658, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 5000, 7500, 11, 81677, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, ' ');


--
-- Implantation

-- Boss
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(43612, 755, 3, 1, 0, 0, -11019.1, -1259.95, 13.5349, 4.87964, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(43614, 755, 3, 1, 0, 0, -11049, -1650.27, 0.745631, 0.775935, 86400, 10, 0, 1, 0, 1, 0, 0, 0),
(44577, 755, 3, 1, 0, 0, -10863.7, -1365.82, 15.3554, 3.29315, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(44819, 755, 3, 1, 0, 0, -10949, -1399.76, 35.4915, 3.43483, 96400, 0, 0, 1, 0, 0, 0, 0, 0);

-- Creature
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(44260, 755, 3, 1, 0, 0, -10750.9, -1368.67, 15.3532, 3.45838, 300, 0, 0, 77490, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11014.3, -1685.12, -0.581271, 3.76075, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11002.3, -1667.14, -0.49822, 2.60229, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -10994.4, -1667.33, -0.580587, 0.226456, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11036.9, -1500.65, 6.67674, 1.8169, 300, 0, 0, 77490, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11018.9, -1470.66, 6.67631, 3.17171, 300, 0, 0, 77490, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -10901.8, -1493.5, 6.6761, 2.93217, 300, 0, 0, 77490, 0, 0, 0, 0, 0),
(44977, 755, 3, 1, 0, 44977, -11101.7, -1360.65, 10.8075, 3.59272, 96000, 0, 0, 387450, 61768, 0, 0, 0, 0),
(44980, 755, 3, 1, 0, 44980, -11102.7, -1330.98, 10.7986, 3.60088, 96000, 0, 0, 387450, 0, 2, 0, 0, 0),
(44977, 755, 3, 1, 0, 44977, -11101.8, -1333.76, 10.7725, 3.65978, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 0, -11097.5, -1372.34, 10.8075, 3.53196, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(44898, 755, 3, 1, 0, 54002, -10995.2, -1581.58, 6.49246, 1.84792, 96000, 0, 0, 309960, 135716, 0, 0, 0, 0),
(44898, 755, 3, 1, 0, 54002, -10939.3, -1506.6, 6.67779, 0.745698, 96000, 0, 0, 309960, 135716, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11108.2, -1550.83, 6.67668, 0.391082, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(44897, 755, 3, 1, 0, 54002, -10941.6, -1504.11, 6.67779, 0.741771, 96000, 0, 0, 309960, 135716, 0, 0, 0, 0),
(44896, 755, 3, 1, 0, 54002, -10943.9, -1501.62, 6.67779, 0.745698, 96000, 0, 0, 309960, 135716, 0, 0, 0, 0),
(44896, 755, 3, 1, 0, 54002, -10998.7, -1578.33, 6.33745, 5.86567, 96000, 0, 0, 309960, 135716, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11108.9, -1543.74, 6.67668, 5.03671, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(44897, 755, 3, 1, 0, 54002, -10993.5, -1577.04, 6.61942, 4.0946, 96000, 0, 0, 309960, 135716, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11036.6, -1513.24, 6.67771, 0.64252, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(44982, 755, 3, 1, 0, 44982, -10967.4, -1489.73, 6.67713, 6.27251, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(45062, 755, 3, 1, 0, 45062, -11086, -1492.74, 6.67755, 5.23186, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11039.8, -1515.93, 6.67771, 4.37316, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(44922, 755, 3, 1, 0, 44922, -10872.7, -1333.09, 15.3546, 0.97029, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(44977, 755, 3, 1, 0, 44977, -10867.3, -1325.16, 15.3543, 4.14565, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(44926, 755, 3, 1, 0, 0, -10910.6, -1491.8, 6.66913, 5.80266, 96000, 0, 0, 168, 0, 0, 0, 0, 0),
(44932, 755, 3, 1, 0, 48139, -10865.4, -1331.22, 15.3546, 2.69031, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10712.2, -1279.94, 15.3533, 3.45981, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10716.2, -1277.02, 15.3533, 3.99388, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10722.4, -1276.25, 15.3533, 4.60648, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10727.7, -1277.49, 15.3533, 4.92064, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10733.3, -1279.42, 15.3539, 5.08166, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10694.6, -1347.19, 15.3534, 3.26739, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10694.4, -1351.93, 15.3534, 2.66263, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10699.3, -1353.79, 15.3534, 1.98326, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10705.3, -1356.65, 15.3534, 1.92436, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10712.3, -1357.08, 15.3534, 1.87331, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10695.1, -1341.35, 15.3534, 3.87678, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10710.1, -1285.76, 15.3557, 3.02855, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45097, 755, 3, 1, 0, 0, -10714.8, -1286.81, 15.3541, 1.92507, 96000, 0, 0, 168, 0, 0, 0, 0, 0),
(45097, 755, 3, 1, 0, 0, -10700.8, -1340.9, 15.3543, 4.91742, 96000, 0, 0, 168, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11022, -1477.01, 6.67491, 2.55497, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11026.5, -1461.99, 6.67491, 4.32211, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11113.2, -1552.02, 6.67668, 0.36998, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11108.9, -1555.31, 6.67668, 1.16795, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11103.9, -1553.7, 6.67668, 2.45993, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11103.8, -1548.2, 6.67668, 3.88542, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11111.1, -1547.77, 6.67668, 5.6722, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11042.2, -1520.51, 6.67771, 0.44224, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11045.8, -1517.7, 6.67771, 0.029906, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11044.2, -1513.98, 6.67771, 5.85363, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11027.7, -1509.24, 6.67771, 4.09827, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11031.4, -1513.64, 6.67771, 0.4069, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11027, -1516.36, 6.67771, 2.08373, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45063, 755, 3, 1, 0, 0, -11025.1, -1513.35, 6.67771, 3.24219, 96000, 0, 0, 232000, 0, 0, 0, 0, 0),
(45007, 755, 3, 1, 0, 54002, -11117.5, -1514.24, 6.67753, 0.903239, 96000, 0, 0, 309960, 0, 0, 0, 0, 0),
(45007, 755, 3, 1, 0, 54002, -11114.9, -1512, 6.67635, 3.72282, 96000, 0, 0, 309960, 0, 0, 0, 0, 0),
(45007, 755, 3, 1, 0, 54002, -11118.2, -1511.15, 6.67655, 5.67061, 96000, 0, 0, 309960, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10734.5, -1407.68, 15.354, 2.58321, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10731.4, -1402.88, 15.354, 2.88559, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10729.6, -1397.39, 15.354, 3.37646, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(45096, 755, 3, 1, 0, 0, -10728.9, -1391.48, 15.3541, 3.294, 96000, 0, 0, 42, 0, 0, 0, 0, 0),
(44982, 755, 3, 1, 0, 44982, -11115.7, -1401.57, 10.8068, 1.97509, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(48092, 755, 3, 1, 0, 0, -10989.2, -1335.22, 10.8089, 3.25416, 300, 10, 0, 64496, 0, 1, 0, 33554432, 0),
(45122, 755, 3, 1, 0, 0, -10801.2, -1409.5, 15.3536, 0.628547, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44932, 755, 3, 1, 0, 48139, -10754.2, -1367.32, 15.3533, 4.73041, 96000, 0, 0, 268405, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 48119, -10750.8, -1370.94, 15.3533, 3.13605, 96000, 0, 0, 268405, 0, 0, 0, 0, 0),
(44922, 755, 3, 1, 0, 0, -10754.2, -1374.49, 15.3536, 1.55531, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44924, 755, 3, 1, 0, 0, -10758.6, -1371.18, 15.3536, 0.0316323, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44932, 755, 3, 1, 0, 48139, -10855.2, -1410, 15.3533, 3.19495, 96000, 0, 0, 268405, 0, 0, 0, 0, 0),
(44924, 755, 3, 1, 0, 0, -10860.8, -1405.66, 15.3536, 4.75973, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 0, -10903, -1495.68, 6.67628, 2.74506, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 48119, -10874.5, -1321.16, 15.3533, 5.52363, 96000, 0, 0, 268405, 0, 0, 0, 0, 0),
(44977, 755, 3, 1, 0, 0, -10868.9, -1320.01, 15.3533, 3.97657, 43200, 0, 0, 1, 0, 0, 0, 0, 0),
(44924, 755, 3, 1, 0, 0, -10908.4, -1496.75, 6.67628, 1.19076, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44982, 755, 3, 1, 0, 0, -10955.7, -1489.16, 6.67764, 3.03572, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 0, -11018.9, -1468.19, 6.67629, 3.37187, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44982, 755, 3, 1, 0, 0, -11019, -1473.84, 6.67691, 2.84565, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44896, 755, 3, 1, 0, 0, -10997.5, -1583.8, 6.45713, 6.14275, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44924, 755, 3, 1, 0, 0, -11024.7, -1477.6, 6.67655, 1.42016, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 0, -11040, -1501.25, 6.67788, 1.7019, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44982, 755, 3, 1, 0, 0, -11113.3, -1398.9, 10.8071, 2.56674, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44980, 755, 3, 1, 0, 0, -11131.9, -1403.97, 10.8068, 1.23156, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44976, 755, 3, 1, 0, 0, -11078, -1396.06, 10.8075, 3.48958, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11034.5, -1371.77, 10.8073, 4.78549, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11014, -1365.42, 10.8076, 5.00855, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(47720, 755, 3, 1, 0, 0, -11002.9, -1389.75, 10.8075, 0.467233, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(47720, 755, 3, 1, 0, 0, -11004.2, -1387.39, 10.8075, 0.506503, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(47720, 755, 3, 1, 0, 0, -10997.6, -1380.3, 10.8069, 4.49633, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11021.5, -1315.86, 10.8069, 1.56679, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(44980, 755, 3, 1, 0, 0, -11049.1, -1305.72, 10.8073, 0.461744, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44977, 755, 3, 1, 0, 0, -11046.6, -1310.74, 10.8073, 0.461744, 43200, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11045.9, -1321.68, 10.8078, 1.78514, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11068.9, -1329.17, 10.808, 0.917278, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(47720, 755, 3, 1, 0, 0, -11081, -1316.17, 10.8081, 1.29427, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(44932, 755, 3, 1, 0, 48139, -10875.5, -1326.97, 15.3533, 0.842657, 96000, 0, 0, 268405, 0, 0, 0, 0, 0),
(44932, 755, 3, 1, 0, 48139, -10781.6, -1289.14, 15.353, 4.10995, 96000, 0, 0, 268405, 0, 0, 0, 0, 0),
(44922, 755, 3, 1, 0, 0, -10787.3, -1297.22, 15.3533, 0.987203, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 0, -10780, -1294.87, 15.3533, 2.73472, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(45122, 755, 3, 1, 0, 0, -10842.5, -1299.85, 15.354, 3.74866, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11160, -1393.1, 10.8072, 0.348688, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11165, -1375.48, 10.9105, 0.0777228, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(49043, 755, 3, 1, 0, 0, -11052.9, -1653.27, 0.746029, 0.721263, 96400, 10, 0, 1, 0, 1, 0, 0, 0),
(48932, 755, 3, 1, 0, 0, -10863.7, -1365.82, 15.3554, 3.29315, 96400, 0, 0, 1, 0, 0, 0, 0, 0),
(48951, 755, 3, 1, 0, 0, -11019.1, -1259.95, 13.5349, 4.87964, 96400, 0, 0, 1659880, 0, 0, 0, 0, 0),
(44922, 755, 3, 1, 0, 0, -10865.9, -1410.65, 15.3536, 6.27948, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 0, -10860.6, -1414.47, 15.3536, 1.6142, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44922, 755, 3, 1, 0, 0, -10905.2, -1490.74, 6.67622, 4.27115, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(45062, 755, 3, 1, 0, 0, -10962, -1485, 6.67764, 4.6717, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44922, 755, 3, 1, 0, 0, -10962.3, -1494.6, 6.67764, 1.49476, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 0, -11018.9, -1468.19, 6.67629, 3.37187, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44982, 755, 3, 1, 0, 0, -11019, -1473.84, 6.67691, 2.84565, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44896, 755, 3, 1, 0, 54002, -10969.9, -1601.27, 6.36101, 2.31602, 96000, 0, 0, 309960, 135716, 0, 0, 0, 0),
(44898, 755, 3, 1, 0, 0, -10974.1, -1604.45, 6.428, 2.23932, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44897, 755, 3, 1, 0, 0, -10965.7, -1597.49, 6.43939, 2.50636, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 48119, -11075.5, -1486.76, 6.67753, 5.1507, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(44922, 755, 3, 1, 0, 0, -11022.9, -1464.21, 6.67629, 4.45179, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44922, 755, 3, 1, 0, 0, -11079.5, -1491.84, 6.67753, 5.26066, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(44981, 755, 3, 1, 0, 0, -11037.8, -1506.89, 6.67734, 1.80119, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(44980, 755, 3, 1, 0, 44980, -11099.7, -1366.27, 10.8075, 3.56368, 96000, 0, 0, 387450, 61768, 0, 0, 0, 0),
(44977, 755, 3, 1, 0, 44977, -11126.2, -1405.98, 10.8068, 1.96331, 300, 0, 0, 387450, 0, 0, 0, 0, 0),
(44982, 755, 3, 1, 0, 0, -11079, -1392.24, 10.8075, 3.51314, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11077.7, -1384.11, 10.9017, 5.09179, 43200, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11057.2, -1376.65, 10.8343, 4.85617, 43200, 0, 0, 1, 0, 0, 0, 0, 0),
(47720, 755, 3, 1, 0, 0, -11047.5, -1370.91, 10.8068, 6.20313, 43200, 0, 0, 1, 0, 0, 0, 0, 0),
(47720, 755, 3, 1, 0, 0, -11046.3, -1374.97, 10.8068, 0.591461, 43200, 0, 0, 1, 0, 0, 0, 0, 0),
(44976, 755, 3, 1, 0, 44976, -11120.9, -1403.77, 10.8068, 2.00258, 96000, 0, 0, 387450, 0, 0, 0, 0, 0),
(47720, 755, 3, 1, 0, 0, -11077.5, -1316.79, 10.8081, 1.65555, 43200, 0, 0, 1, 0, 0, 0, 0, 0),
(44924, 755, 3, 1, 0, 0, -10788.7, -1290.37, 15.3533, 5.82919, 96000, 0, 0, 1, 0, 0, 0, 0, 0),
(45065, 755, 3, 1, 0, 0, -11094.3, -1337.05, 10.8069, 2.06385, 43200, 0, 0, 1, 0, 0, 0, 0, 0),
(48092, 755, 3, 1, 0, 0, -10998.2, -1484.64, 6.67534, 3.14422, 300, 12, 0, 64496, 0, 1, 0, 33554432, 0),
(44260, 755, 3, 1, 0, 0, -10751.3, -1350.48, 15.3528, 1.36921, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -10781.7, -1297.15, 15.3532, 2.36667, 60000, 0, 0, 77490, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -10858.3, -1414.29, 15.3542, 1.67553, 300, 0, 0, 77490, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -10876.1, -1322.97, 15.3542, 5.64179, 600, 0, 0, 77490, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11027.6, -1676.21, -0.619695, 2.48055, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11081, -1641.32, -0.37879, 5.75566, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11112.3, -1634.02, -0.723836, 5.64177, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11089.8, -1629.55, -0.563638, 5.52789, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11066.3, -1602.52, -0.470387, 5.42186, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(44260, 755, 3, 1, 0, 0, -11048.2, -1606.13, -0.448819, 3.41124, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(50038, 755, 3, 1, 0, 0, -10695.8, -1311.35, 17.6043, 3.41487, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(50037, 755, 3, 1, 0, 0, -10693.9, -1315.62, 17.6042, 3.39131, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(50036, 755, 3, 1, 0, 0, -10696.5, -1306.8, 17.6663, 3.42665, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(50036, 755, 3, 1, 0, 0, -10696.5, -1306.8, 17.6663, 3.42665, 86400, 0, 0, 1, 0, 0, 0, 0, 0);


-- Gameobject
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(4020251, 280000, 755, 3, 1, -10954, -1430.97, 35.5336, 1.41385, 0, 0, 0.649499, 0.760362, 300, 0, 1),
(4020253, 280000, 755, 3, 1, -10972.9, -1380.95, 35.5351, 5.56893, 0, 0, 0.349583, -0.936905, 300, 0, 1),
(4020249, 280000, 755, 3, 1, -10956.4, -1447.27, 10.2982, 1.37458, 0, 0, 0.634445, 0.772968, 300, 0, 1),
(4020137, 280000, 755, 3, 1, -10984.8, -1370.2, 10.807, 3.96935, 0, 0, 0.915567, -0.402165, 300, 0, 1),
(@, 205365, 755, 3, 1, -10954.7, -1409.89, 10.3062, 1.057, 0, 0, 0.504238, 0.863565, 300, 0, 1),
(@, 6100011, 755, 3, 1, -10954.7, -1409.89, 10.3062, 1.057, 0, 0, 0.504238, 0.863565, 300, 0, 1),
(@, 202209, 755, 3, 1, -10691, -1310.09, 17.6255, 0.261496, 0, 0, 0.130376, 0.991465, 300, 0, 1),
(@, 202210, 755, 3, 1, -10691, -1310.09, 17.6255, 0.261496, 0, 0, 0.130376, 0.991465, 300, 0, 1),
(@, 202210, 755, 3, 1, -10691.5, -1310.27, 17.6097, 0.277987, 0, 0, 0.138546, 0.990356, 300, 0, 1),
(@, 202209, 755, 3, 1, -10691, -1310.09, 17.6255, 0.261496, 0, 0, 0.130376, 0.991465, 300, 0, 1),
(@, 202210, 755, 3, 1, -10691, -1310.09, 17.6255, 0.261496, 0, 0, 0.130376, 0.991465, 300, 0, 1),
(@, 202209, 755, 3, 1, -10691.5, -1310.27, 17.6097, 0.277987, 0, 0, 0.138546, 0.990356, 300, 0, 1),
(@, 202210, 755, 3, 1, -10691.5, -1310.27, 17.6097, 0.277987, 0, 0, 0.138546, 0.990356, 300, 0, 1),
(@, 202209, 755, 3, 1, -10691, -1310.09, 17.6255, 0.261496, 0, 0, 0.130376, 0.991465, 300, 0, 1),
(@, 202210, 755, 3, 1, -10691, -1310.09, 17.6255, 0.261496, 0, 0, 0.130376, 0.991465, 300, 0, 1),
(@, 202210, 755, 3, 1, -10691.5, -1310.27, 17.6097, 0.277987, 0, 0, 0.138546, 0.990356, 300, 0, 1),
(@, 202209, 755, 3, 1, -10691.5, -1310.27, 17.6097, 0.277987, 0, 0, 0.138546, 0.990356, 300, 0, 1),
(@, 207409, 755, 3, 1, -10753.5, -1310.21, 15.3541, 5.88789, 0, 0, 0.196364, -0.980531, 300, 0, 1);

--
-- Teleporteur siamat
DELETE  FROM `gameobject_scripts` WHERE `id` IN (4020249,4020137,4020253,4020251);
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
('4020249', '0', '6', '755', '0', '0', '-10984.90', '-1414.05', '35.54', '0.36'),
('4020137', '0', '6', '755', '0', '0', '-10984.90', '-1414.05', '35.54', '0.36'),
('4020253', '0', '6', '755', '0', '0', '-10987.34', '-1366.47', '10.81', '3.68'),
('4020251', '0', '6', '755', '0', '0', '-10958.30', '-1449.99', '10.30', '4.76');

--
-- TexT & Traduction
REPLACE INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(44577, -1755001, 'Vous n''irez pas plus loin, envahisseurs !', 21886, 1, 0, 0, 'General Husam SAY_AGGRO'),
(44577, -1755002, 'Murkash!', 21887, 1, 0, 0, 'General Husam SAY_SHOCKWAVE'),
(44577, -1755003, 'Avancez prudemment !', 21888, 1, 0, 0, 'General Husam SAY_DETONATE'),
(44577, -1755004, 'Siamat ne doit pas être libéré ! Partez avant qu''il ne soit trop tard !', 21885, 1, 0, 0, 'General Husam SAY_DEATH'),
(43612, -1755005, 'Bande d''infidèles, vous n''êtes pas les bienvenus ici!', 19735, 1, 0, 0, 'High Prophet Barim SAY_AGGRO'),
(43612, -1755006, 'Agenouillez-vous devant moi et repentez-vous!', 19737, 1, 0, 0, 'High Prophet Barim SAY_REPETANCE_1'),
(43612, -1755007, 'Les cieux vous emmènerons!', 19736, 1, 0, 0, 'High Prophet Barim SAY_REPETANCE_2'),
(43612, -1755008, 'La mort n''est que le début!', 19733, 1, 0, 0, 'High Prophet Barim SAY_DEATH'),
(43612, -1755009, 'Puisse la paix vous trouvez maintenant.', 19738, 1, 0, 0, 'High Prophet Barim SAY_KILL');

DELETE FROM `creature_text` WHERE `entry` IN (45378,45379);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(45379,0,0, 'GAAAHH ! Comment vous avez tué le croco ?!',0,0,0,0,0,0, 'Augh - SAY_SCENT'),
(45378,0,0, 'Gwaaaaaaaaaaaahhh!!!',0,0,0,0,0,0, 'Augh - SAY_WHIRLWIND');

DELETE FROM `creature_text` WHERE `entry` = 44819;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`)
VALUES
('44819', '1', '0', 'Vents du Sud, levez-vous et venez à l''aide de votre maître !', '1', '0', '0', '0', '0', '20227', 'VO_TV_Siamat_Engage01'),
('44819', '0', '0', 'I. AM. UNLEASHED!', '1', '0', '0', '0', '0', '20231', 'VO_TV_Siamat_Intro01'),
('44819', '2', '1', 'Souffrez de la tempête!', '1', '0', '0', '0', '0', '20229', 'VO_TV_Siamat_Event02'),
('44819', '3', '0', 'Rien de plus qu''une poussière dans le vent.', '1', '0', '0', '0', '0', '20232', 'VO_TV_Siamat_Kill01'),
('44819', '4', '0', 'Le ciel... m''appelle...', '1', '0', '0', '0', '0', '20226', 'VO_TV_Siamat_Death01'),
('44819', '2', '0', 'Tremblez sous la violence de la tempête !', '1', '0', '0', '0', '0', '20228', 'VO_TV_Siamat_Event01'),
('44819', '2', '2', 'Votre ville sera enterré! Vos vies renoncer aux éléments! ', '1', '0', '0', '0', '0', '20230', 'VO_TV_Siamat_Event03');
  

--
-- Gain token
REPLACE INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`, `CurrencyId1`, `CurrencyId2`, `CurrencyId3`, `CurrencyCount1`, `CurrencyCount2`, `CurrencyCount3`) VALUES
(48932, 1173, 0, 7, 0, 250, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0),
(48951, 1173, 0, 7, 0, 250, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0),
(49043, 1173, 0, 7, 0, 250, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0),
(51088, 1173, 0, 7, 0, 250, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0);