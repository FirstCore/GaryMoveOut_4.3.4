--
-- Grimbatol
--

--
-- Netoyage instance
DELETE FROM `creature` WHERE `map` = 670;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 40320;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 40177;

--
-- Implantation Script vers sql

-- Instance 
UPDATE `instance_template` SET `script`='instance_grim_batol' WHERE `map`=670;

-- Boss
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_drahga_shadowburner' WHERE `entry`=40319;
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_forgemaster_throngus' WHERE `entry`=40177;
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_erudax' WHERE `entry`=40484;
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_general_umbriss' WHERE `entry`=39625;

-- creature
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_valiona_gb' WHERE `entry`=40320;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_invoked_flame_spirit' WHERE `entry`=40357;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_twilight_archer' WHERE `entry`=40197;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_faceless' WHERE `entry`=40600;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_alexstraszas_eggs' WHERE `entry`=40486;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_shadow_gale_stalker' WHERE `entry`=40567;
UPDATE `creature_template` SET `AIName` = '', ScriptName='npc_malignant' WHERE `entry`=39984;
UPDATE `creature_template` SET `AIName` = '', ScriptName='npc_trogg_dweller' WHERE `entry`=45467;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_gardien_de_la_nuee_azur' WHERE `entry`=39854;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_gardien_de_la_nuee_cramoisie' WHERE `entry`=39381;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_prophete_de_la_nuee_azur' WHERE `entry`=39855;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_brise_tempete_du_crepuscule' WHERE `entry`=39962;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_esprit_de_leau_asservi' WHERE `entry`=39961;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_maitre_darmes_du_crepuscule' WHERE `entry`=40306;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_elementaire_de_roche_asservi' WHERE `entry`=39900;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_sculpte_terre_du_crepuscule' WHERE `entry`=39890;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_massacreur_du_crepuscule' WHERE `entry`=40448;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_massacreur_du_crepuscule' WHERE `entry`=39956;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_chercheflamme_rehausse' WHERE `entry`=39415;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_marche_vent_rehausse' WHERE `entry`=39414;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_tisseur_dombre_du_crepuscule' WHERE `entry`=39954;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_seigneur_de_guerre_de_la_nuee_azur' WHERE `entry`=39909;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_seigneur_de_guerre_de_la_nuee_cramoisie' WHERE `entry`=39626;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_imposteur_du_crepuscule' WHERE `entry`=40167;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_brute_gronn_asservie' WHERE `entry`=40166;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_esprit_du_tonnerre_asservie' WHERE `entry`=40269;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_mande_tonnerre_du_crepuscule' WHERE `entry`=40270;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_grippe_feu_du_crepuscule' WHERE `entry`=39870;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_braise_ardente_asservie' WHERE `entry`=39892;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_flagellant_aquatique_rehausse' WHERE `entry`=40273;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_brise_roche_rehausse' WHERE `entry`=40272;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_mande_wyrm_du_crepuscule' WHERE `entry`=39873;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_drake_du_crepuscule' WHERE `entry`=41095;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_drake_du_crepuscule' WHERE `entry`=39390;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_corrupteur_sans_visage' WHERE `entry`=48844;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_habitant_trogg' WHERE `entry`=39450;


--
-- Correction template

-- Boss
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 40319;
UPDATE `creature_template` SET `rank` = 3, `Health_mod` = 10.5, `flags_extra` = 2097153 WHERE `entry` = 48784;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 40177;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 48702;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `unit_flags2` = 2048, `flags_extra` = 2097153 WHERE `entry` = 40484;
UPDATE `creature_template` SET `rank` = 3, `Health_mod` = 75, `flags_extra` = 2097153 WHERE `entry` = 48822;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 39625;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 48337;

-- Creature
UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 0, `InhabitType`=5, `VehicleId`="0"  WHERE `entry`=40320;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 48801;
UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0 WHERE `entry`=40355;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `rank`=3, `Health_mod`=0.4174, `exp`=3, `modelid2`=0, `faction_A`=14, `faction_H`=14 WHERE `entry`=40357;
UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0 WHERE `entry`=40365;
UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0 WHERE `entry`=48711;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `modelid1`=11686, `modelid2`=0, `InhabitType`=7 WHERE `entry`=40197;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE `entry`=48822;
UPDATE `creature_template` SET `type_flags` = 0, `difficulty_entry_1`=0, `Health_mod`=2, `exp`=3, `rank`=1, `minlevel`=85, `maxlevel`=85, `faction_A`=16, `faction_H`=16 WHERE `entry`=40600;
UPDATE `creature_template` SET `type_flags` = 0,`faction_A`=16, `faction_H`=16, `minlevel`=85, `mechanic_immune_mask` = 617299807, `maxlevel`=85, `rank`=1, `Health_mod`=2.5, `exp`=3 WHERE `entry`=48844;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `Health_mod`=0.5589, `exp`=3, `difficulty_entry_1`=48832, `minlevel`=83, `maxlevel`=83 WHERE `entry`=39388;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod`=1, `exp`=3, `faction_A`=16, `faction_H`=16, `minlevel`=85, `maxlevel`=85 WHERE `entry`=48832;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `Health_mod`=0.8459, `exp`=3, `minlevel`=85, `maxlevel`=85, `rank`=1 WHERE `entry`=40486;
UPDATE `creature_template` SET `scale`=3, `modelid1`=11686, `modelid2`=0 WHERE `entry`=44314;
UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0 WHERE `entry`=40567;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 0.75 WHERE `entry` = 39984;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 45467;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 0.5 WHERE `entry` = 48348;
UPDATE `creature_template` SET `unit_flags` = 0, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0 WHERE `entry` = 39854;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0 WHERE `entry` = 48661;
UPDATE `creature_template` SET `faction_A` = 1771, `faction_H` = 1771, `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0 WHERE `entry` = 39381;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0 WHERE `entry` = 48654;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0, `Health_mod` = 3.383, `Mana_mod` = 35.249 WHERE `entry` = 39855;
UPDATE `creature_template` SET `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0, `Health_mod` = 5.0744, `Mana_mod` = 35.249 WHERE `entry` = 48746;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0, `Health_mod` = 3.383, `Mana_mod` = 35.249 WHERE `entry` = 39962;
UPDATE `creature_template` SET `minlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0, `Health_mod` = 5.0744, `Mana_mod` = 35.249 WHERE `entry` = 48597;
UPDATE `creature_template` SET `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0, `Health_mod` = 2.6429 WHERE `entry` = 39961;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0, `Health_mod` = 3.7001 WHERE `entry` = 48596;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0, `Health_mod` = 4 WHERE `entry` = 40306;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0, `lootid` = 48610 WHERE `entry` = 48610;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0 WHERE `entry` = 39900;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0 WHERE `entry` = 48594;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0, `Health_mod` = 3.383, `Mana_mod` = 35.249 WHERE `entry` = 39890;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0, `Health_mod` = 5.0744, `Mana_mod` = 35.249 WHERE `entry` = 48595;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0 WHERE `entry` = 40448;
UPDATE `creature_template` SET `faction_A` = 2102, `faction_H` = 2102, `type_flags` = 0, `lootid` = 48667 WHERE `entry` = 48667;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0 WHERE `entry` = 39956;
UPDATE `creature_template` SET `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0 WHERE `entry` = 48666;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0, `VehicleId` = '' WHERE `entry` = 39415;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 16, `faction_H` = 16, `type_flags` = 0 WHERE `entry` = 48677;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0 WHERE `entry` = 39414;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 16, `faction_H` = 16, `type_flags` = 0 WHERE `entry` = 48676;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0 WHERE `entry` = 39954;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0, `Mana_mod` = 35.17 WHERE `entry` = 48669;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0 WHERE `entry` = 39909;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 2102, `faction_H` = 2102, `type_flags` = 0 WHERE `entry` = 48680;
UPDATE `creature_template` SET `difficulty_entry_1` = 48682, `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0 WHERE `entry` = 39626;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 1771, `faction_H` = 1771, `mindmg` = 433, `maxdmg` = 771, `attackpower` = 4216, `dmg_multiplier` = 13, `minrangedmg` = 780, `maxrangedmg` = 1079.2, `rangedattackpower` = 225, `type_flags` = 0, `lootid` = 48682 WHERE `entry` = 48682;
UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 3.383 WHERE `entry` = 40167;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 2146, `faction_H` = 2146, `type_flags` = 0 WHERE `entry` = 48695;
UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 40166;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 16, `faction_H` = 16, `type_flags` = 0 WHERE `entry` = 48693;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `type_flags` = 0, `Health_mod` = 2.6429, `Mana_mod` = 1.619 WHERE `entry` = 40269;
UPDATE `creature_template` SET `maxlevel` = 85, `type_flags` = 0, `Health_mod` = 3.7001, `Mana_mod` = 1.619 WHERE `entry` = 48749;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0, `Health_mod` = 3.383, `Mana_mod` = 35.249 WHERE `entry` = 40270;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0, `Health_mod` = 5.0744, `Mana_mod` = 35.249 WHERE `entry` = 48750;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0, `Health_mod` = 3.383, `Mana_mod` = 35.249 WHERE `entry` = 39870;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 1771, `faction_H` = 1771, `type_flags` = 0, `Health_mod` = 5.0744, `Mana_mod` = 35.249 WHERE `entry` = 48748;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `type_flags` = 0 WHERE `entry` = 39892;
UPDATE `creature_template` SET `maxlevel` = 85, `type_flags` = 0 WHERE `entry` = 48747;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0 WHERE `entry` = 40273;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 16, `faction_H` = 16, `type_flags` = 0, `Mana_mod` = 2 WHERE `entry` = 48753;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 40272;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 16, `faction_H` = 16, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 48751;
UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 39873;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 2146, `faction_H` = 2146, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 48754;
UPDATE `creature_template` SET `unit_flags` = 0, `unit_flags2` = 2048, `difficulty_entry_1` = 48755, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 41095;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `type_flags` = 0, `lootid` = 48755 WHERE `entry` = 48755;
UPDATE `creature_template` SET `unit_flags2` = 2048, `type_flags` = 0, `Mana_mod` = 0 WHERE `entry` = 39390;
UPDATE `creature_template` SET `Mana_mod` = 0 WHERE `entry` = 48844;
UPDATE `creature_template` SET `difficulty_entry_1` = 48348, `exp` = 3, `type_flags` = 0 WHERE `entry` = 39450;
UPDATE `creature_template` SET `maxlevel` = 85, `faction_A` = 16, `faction_H` = 16, `lootid` = 48348, `Health_mod` = 0.75, `Mana_mod` = 0 WHERE `entry` = 48348;


--
-- Smart AI

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=39388 LIMIT 1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=39388;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (39388, 0, 2, 0, 0, 0, 100, 0, 5000, 5000, 5000, 5000, 11, 92949, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Erudax-Twilight Hatchlings Cast Twilight Blast (NH)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=48832 LIMIT 1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=48832;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (48832, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 5000, 5000, 11, 92949, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Erudax-Twilight Hatchlings Cast Twilight Blast (HC');


--
-- Implantation

-- Boss
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@, 39625, 670, 3, 1, 0, 0, -703.603, -437.609, 269.148, 0.867825, 94600, 0, 0, 4149700, 0, 0, 0, 0, 0),
(1051906, 40177, 670, 3, 1, 0, 56022, -573.843, -570.498, 276.596, 5.69298, 36000, 0, 0, 4979640, 0, 2, 0, 0, 0),
(@, 40319, 670, 3, 1, 0, 10077, -420.765, -689.706, 267.139, 3.23292, 93480, 0, 0, 871437, 0, 0, 0, 0, 0),
(1051910, 40484, 670, 3, 1, 0, 0, -764.896, -828.186, 232.413, 0.0041945, 93480, 0, 0, 6224550, 0, 2, 0, 0, 0);

-- Pnj
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(1051883, 50387, 670, 3, 1, 0, 0, -608.118, -244.739, 276.596, 0.28317, 7200, 0, 0, 210, 0, 2, 0, 0, 0),
(@, 50390, 670, 3, 1, 0, 0, -619.469, -254.886, 276.6, 0.330294, 7200, 0, 0, 420, 0, 0, 0, 0, 0),
(@, 50385, 670, 3, 1, 0, 0, -625.153, -242.769, 276.605, 0.719064, 7200, 0, 0, 464940, 0, 0, 0, 0, 0);

-- Creature
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(39392, 670, 3, 1, 0, 0, -724.497, -842.004, 232.413, 6.19286, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39294, 670, 3, 1, 0, 0, -435.205, -332.817, 268.572, 3.4233, 93480, 0, 0, 252, 0, 0, 0, 0, 0),
(39294, 670, 3, 1, 0, 0, -432.898, -389.837, 267.503, 2.28403, 93480, 0, 0, 252, 0, 0, 0, 0, 0),
(39294, 670, 3, 1, 0, 0, -433.93, -341.607, 268.686, 3.38393, 300, 0, 0, 252, 0, 0, 0, 0, 0),
(42570, 670, 3, 1, 0, 0, -433.93, -341.607, 268.686, 3.38393, 300, 0, 0, 2, 0, 0, 0, 0, 0),
(39294, 670, 3, 1, 0, 0, -449.418, -392.336, 268.928, 1.44994, 93480, 0, 0, 252, 0, 0, 0, 0, 0),
(39294, 670, 3, 1, 0, 0, -426.717, -380.877, 267.227, 2.77883, 93480, 0, 0, 252, 0, 0, 0, 0, 0),
(39892, 670, 3, 1, 0, 0, -660.054, -716.091, 269.116, 0.44873, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39870, 670, 3, 1, 0, 0, -656.724, -720.998, 269.116, 1.03385, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39909, 670, 3, 1, 0, 0, -700.889, -630.153, 269.169, 0.771577, 93480, 0, 0, 464940, 0, 0, 0, 0, 0),
(39626, 670, 3, 1, 0, 0, -689.625, -693.203, 269.12, 2.01716, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39909, 670, 3, 1, 0, 0, -479.35, -740.459, 268.767, 3.3602, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40272, 670, 3, 1, 0, 0, -533.178, -686.734, 269.12, 4.66709, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40270, 670, 3, 1, 0, 0, -676.916, -643.839, 268.767, 3.49375, 93480, 0, 0, 371952, 193880, 0, 0, 0, 0),
(39892, 670, 3, 1, 0, 0, -681.508, -643.267, 268.767, 5.09125, 93480, 0, 0, 271215, 0, 0, 0, 0, 0),
(40291, 670, 3, 1, 0, 0, -705.867, -609.054, 268.767, 6.18149, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39873, 670, 3, 1, 0, 0, -598.021, -691.601, 268.767, 2.7782, 93480, 0, 0, 336, 0, 0, 0, 0, 0),
(40166, 670, 3, 1, 0, 0, -489.429, -530.442, 271.908, 0.0126402, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40270, 670, 3, 1, 0, 0, -652.213, -723.683, 269.117, 1.08726, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39854, 670, 3, 1, 0, 0, -640.973, -668.894, 268.767, 5.84519, 93480, 0, 0, 464940, 0, 0, 0, 0, 0),
(41095, 670, 3, 1, 0, 0, -595.87, -686.166, 268.767, 2.7625, 93480, 0, 0, 336, 0, 0, 0, 0, 0),
(39392, 670, 3, 1, 0, 0, -724.582, -814.008, 232.413, 6.18422, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39626, 670, 3, 1, 0, 0, -526.625, -782.522, 269.422, 1.59227, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39954, 670, 3, 1, 0, 0, -485.662, -748.326, 268.767, 1.02756, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -581.283, -475.406, 276.872, 2.49474, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(40273, 670, 3, 1, 0, 0, -530.176, -785.709, 269.436, 1.59227, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40272, 670, 3, 1, 0, 0, -535.425, -785.822, 269.438, 1.59227, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40273, 670, 3, 1, 0, 0, -525.114, -691.63, 269.12, 3.67357, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40270, 670, 3, 1, 0, 0, -528.02, -699.932, 268.767, 1.78468, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39956, 670, 3, 1, 0, 0, -565.7, -691.401, 269.12, 4.15658, 93480, 0, 0, 464940, 0, 0, 0, 0, 0),
(39415, 670, 3, 1, 0, 0, -663.544, -424.571, 268.768, 3.01191, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40269, 670, 3, 1, 0, 0, -676.661, -648.652, 268.766, 3.14735, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(41073, 670, 3, 1, 0, 0, -680.924, -651.388, 268.765, 1.77383, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39909, 670, 3, 1, 0, 0, -561.894, -695.257, 268.767, 2.97456, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39954, 670, 3, 1, 0, 0, -568.103, -700.781, 268.767, 1.81609, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(42570, 670, 3, 1, 0, 0, -433.93, -341.607, 268.686, 3.38393, 300, 0, 0, 2, 0, 0, 0, 0, 0),
(42570, 670, 3, 1, 0, 0, -434.342, -341.514, 268.69, 3.54205, 93480, 0, 0, 2, 0, 0, 0, 0, 0),
(39626, 670, 3, 1, 0, 0, -643.842, -822.654, 235.201, 0.000265606, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40291, 670, 3, 1, 0, 0, -647.781, -826.102, 234.879, 0.0332542, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39909, 670, 3, 1, 0, 0, -539.507, -781.716, 269.368, 1.4941, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39873, 670, 3, 1, 0, 0, -512.723, -750.08, 268.767, 0.214671, 43200, 0, 0, 336, 0, 0, 0, 0, 0),
(41095, 670, 3, 1, 0, 0, -513.292, -744.861, 268.767, 0.108643, 93480, 0, 0, 336, 0, 0, 0, 0, 0),
(39870, 670, 3, 1, 0, 0, -685.111, -648.408, 268.766, 0.14319, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40166, 670, 3, 1, 0, 0, -532.581, -575.2, 276.596, 4.72262, 93480, 0, 0, 852390, 0, 0, 0, 0, 0),
(40167, 670, 3, 1, 0, 0, -533.089, -587.777, 276.596, 1.58532, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -488.429, -574.864, 271.913, 1.00807, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(40167, 670, 3, 1, 0, 0, -533.427, -470.835, 276.596, 4.7134, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -588.739, -480.028, 276.872, 2.38728, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39956, 670, 3, 1, 0, 0, -716.672, -402.444, 268.768, 0.346275, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39854, 670, 3, 1, 0, 0, -711.722, -403.766, 268.768, 2.32155, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39954, 670, 3, 1, 0, 0, -713.579, -398.761, 268.766, 4.56779, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39961, 670, 3, 1, 0, 0, -652.695, -350.843, 268.766, 0.707124, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39962, 670, 3, 1, 0, 0, -650.982, -353.484, 268.766, 0.632511, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39854, 670, 3, 1, 0, 0, -611.343, -329.695, 268.766, 3.42067, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39381, 670, 3, 1, 0, 0, -613.49, -324.269, 268.778, 3.48351, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39414, 670, 3, 1, 0, 0, -530.432, -381.528, 269.12, 1.8411, 93480, 0, 0, 210, 0, 0, 0, 0, 0),
(41073, 670, 3, 1, 0, 0, -561.099, -361.451, 268.767, 6.21862, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39405, 670, 3, 1, 0, 0, -526.326, -316.621, 268.767, 6.21525, 93480, 0, 0, 371952, 193880, 0, 0, 0, 0),
(39854, 670, 3, 1, 0, 0, -533.934, -311.606, 268.767, 6.11337, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(41073, 670, 3, 1, 0, 0, -453.457, -333.967, 268.542, 2.59719, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39381, 670, 3, 1, 0, 0, -526.171, -308.411, 268.767, 6.13722, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39890, 670, 3, 1, 0, 0, -455.854, -338.759, 268.391, 2.73802, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39900, 670, 3, 1, 0, 0, -452.776, -338.103, 268.407, 2.65531, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39956, 670, 3, 1, 0, 0, -502.756, -362.524, 268.667, 2.93068, 93480, 0, 0, 464940, 0, 0, 0, 0, 0),
(39381, 670, 3, 1, 0, 0, -509.572, -355.921, 268.762, 5.2066, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(39956, 670, 3, 1, 0, 0, -592.275, -374.541, 268.767, 2.65586, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39405, 670, 3, 1, 0, 0, -595.694, -366.866, 268.767, 4.23059, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39854, 670, 3, 1, 0, 0, -635.758, -401.66, 269.139, 0.805637, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39405, 670, 3, 1, 0, 0, -610.53, -334.544, 268.766, 3.31857, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -539.421, -233.965, 276.393, 2.24746, 93480, 0, 0, 1, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -550.036, -256.451, 276.413, 3.7892, 93480, 0, 0, 1, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -557.577, -227.393, 276.435, 2.09745, 93480, 0, 0, 1, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -551.692, -233.257, 276.425, 1.53196, 93480, 0, 0, 1, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -559.843, -248.968, 276.434, 4.67669, 93480, 0, 0, 1, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -554.636, -251.209, 276.351, 4.32719, 93480, 0, 0, 1, 0, 0, 0, 0, 0),
(39405, 670, 3, 1, 0, 0, -647.916, -828.671, 234.904, 6.22062, 93480, 0, 0, 371952, 193880, 0, 0, 0, 0),
(39626, 670, 3, 1, 0, 0, -560.051, -753.329, 268.879, 6.26539, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39956, 670, 3, 1, 0, 0, -559.854, -747.524, 268.769, 6.2379, 93480, 0, 0, 464940, 0, 0, 0, 0, 0),
(39909, 670, 3, 1, 0, 0, -559.617, -742.279, 268.769, 6.2379, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39909, 670, 3, 1, 0, 0, -681.389, -685.676, 268.767, 2.50646, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39954, 670, 3, 1, 0, 0, -684.436, -689.195, 268.767, 2.42792, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39956, 670, 3, 1, 0, 0, -695.5, -598.13, 268.759, 5.32544, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39626, 670, 3, 1, 0, 0, -700.01, -600.668, 268.763, 5.37414, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39954, 670, 3, 1, 0, 0, -704.362, -604.616, 268.766, 5.59013, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39962, 670, 3, 1, 0, 0, -527.613, -375.223, 269.12, 3.53883, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39900, 670, 3, 1, 0, 0, -536.645, -378.223, 269.12, 0.628666, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39909, 670, 3, 1, 0, 0, -643.493, -831.594, 235.372, 6.21669, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39415, 670, 3, 1, 0, 0, -535.337, -369.838, 269.12, 5.15676, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39961, 670, 3, 1, 0, 0, -528.887, -371.306, 269.12, 3.49956, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39961, 670, 3, 1, 0, 0, -556.834, -354.844, 268.767, 4.29673, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39962, 670, 3, 1, 0, 0, -554.788, -356.851, 268.767, 3.84906, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39890, 670, 3, 1, 0, 0, -538.427, -373.883, 269.12, 0.232039, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39405, 670, 3, 1, 0, 0, -448.113, -375.027, 269.303, 0.362192, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -526.112, -255.9, 276.448, 0.448898, 93480, 0, 0, 1, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -528.746, -249.831, 276.407, 0.78662, 93480, 0, 0, 1, 0, 0, 0, 0, 0),
(39381, 670, 3, 1, 0, 0, -443.271, -365.782, 269.328, 4.77298, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39405, 670, 3, 1, 0, 0, -510.735, -365.123, 268.766, 0.698342, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -530.79, -242.026, 276.626, 0.947626, 93480, 0, 0, 1, 0, 0, 0, 0, 0),
(39962, 670, 3, 1, 0, 0, -450.783, -328.445, 268.838, 2.90853, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39854, 670, 3, 1, 0, 0, -437.862, -375.048, 268.869, 2.57044, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39961, 670, 3, 1, 0, 0, -449.679, -331.646, 268.764, 2.69537, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39405, 670, 3, 1, 0, 0, -638.126, -389.045, 268.768, 5.79841, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39854, 670, 3, 1, 0, 0, -600.438, -378.502, 268.767, 1.07032, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39381, 670, 3, 1, 0, 0, -639.017, -396.664, 268.784, 0.621845, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39890, 670, 3, 1, 0, 0, -554.762, -363.437, 268.767, 2.77306, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39900, 670, 3, 1, 0, 0, -556.28, -365.856, 268.767, 2.30575, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39381, 670, 3, 1, 0, 0, -602.894, -370.287, 268.767, 5.81709, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(41073, 670, 3, 1, 0, 0, -658.414, -348.856, 268.766, 0.648649, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39956, 670, 3, 1, 0, 0, -641.532, -392.457, 268.786, 0.586502, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(41073, 670, 3, 1, 0, 0, -654.38, -354.07, 268.766, 0.648645, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39890, 670, 3, 1, 0, 0, -656.758, -345.635, 268.766, 0.693772, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39900, 670, 3, 1, 0, 0, -654.519, -348.334, 268.766, 0.689845, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39414, 670, 3, 1, 0, 0, -667.815, -430.68, 268.768, 2.01524, 93480, 0, 0, 210, 0, 0, 0, 0, 0),
(39962, 670, 3, 1, 0, 0, -672.871, -428.226, 268.769, 0.935318, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39961, 670, 3, 1, 0, 0, -674.805, -420.942, 268.769, 5.65556, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39890, 670, 3, 1, 0, 0, -667.699, -420.836, 268.77, 4.10049, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39956, 670, 3, 1, 0, 0, -489.912, -739.073, 268.767, 5.70853, 93480, 0, 0, 464940, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -583.001, -477.112, 276.872, 2.33623, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -584.602, -478.649, 276.872, 2.33623, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -586.54, -480.512, 276.872, 2.33623, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -589.852, -477.064, 276.872, 2.33623, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -583.787, -474.758, 276.872, 2.38728, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -585.384, -476.457, 276.872, 2.38728, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -586.903, -478.074, 276.872, 2.38728, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -582.105, -472.968, 276.872, 2.38728, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -587.919, -475.207, 276.872, 2.33623, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -586.238, -473.592, 276.872, 2.33623, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -584.386, -471.812, 276.872, 2.33623, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39909, 670, 3, 1, 0, 0, -575.39, -508.049, 276.598, 1.29062, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39626, 670, 3, 1, 0, 0, -568.171, -507.13, 276.598, 2.47892, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40166, 670, 3, 1, 0, 0, -533.008, -484.828, 276.598, 1.56393, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40167, 670, 3, 1, 0, 0, -545.81, -484.777, 276.598, 0.0449905, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40167, 670, 3, 1, 0, 0, -522.433, -484.757, 276.594, 3.15046, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40167, 670, 3, 1, 0, 0, -479.355, -530.34, 271.908, 3.14681, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40167, 670, 3, 1, 0, 0, -489.073, -519.328, 271.908, 4.69011, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40167, 670, 3, 1, 0, 0, -489.116, -540.977, 271.908, 1.57199, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -490.412, -573.613, 271.913, 1.00807, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -492.366, -572.38, 271.913, 1.00807, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -494.345, -571.132, 271.914, 1.00807, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -491.216, -577.103, 271.914, 1.00807, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -493.169, -575.871, 271.914, 1.00807, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -494.892, -573.582, 271.914, 0.925601, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -497.175, -571.778, 271.915, 0.902039, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -488.936, -578.288, 271.915, 0.902039, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -491.874, -580.182, 271.914, 0.876121, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -494.384, -577.845, 271.915, 0.821143, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(39450, 670, 3, 1, 0, 0, -496.598, -575.91, 271.915, 0.852559, 93480, 0, 0, 58118, 0, 0, 0, 0, 0),
(40167, 670, 3, 1, 0, 0, -543.722, -575.204, 276.596, 0.096987, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40167, 670, 3, 1, 0, 0, -522.477, -575.457, 276.595, 3.13648, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39909, 670, 3, 1, 0, 0, -567.372, -553.157, 276.596, 4.63109, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39626, 670, 3, 1, 0, 0, -574.809, -552.443, 276.596, 4.65549, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40291, 670, 3, 1, 0, 0, -679.406, -680.01, 268.767, 3.06017, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40269, 670, 3, 1, 0, 0, -648.646, -723.666, 269.117, 1.73286, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40273, 670, 3, 1, 0, 0, -653.203, -709.929, 268.766, 4.21472, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40272, 670, 3, 1, 0, 0, -647.255, -713.705, 268.766, 4.19901, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39870, 670, 3, 1, 0, 0, -624.083, -737.479, 269.12, 2.24337, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39892, 670, 3, 1, 0, 0, -622.486, -734.983, 268.768, 2.58894, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40270, 670, 3, 1, 0, 0, -620.648, -732.004, 268.768, 2.58815, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40269, 670, 3, 1, 0, 0, -617.569, -728.265, 269.885, 2.63919, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40291, 670, 3, 1, 0, 0, -637.875, -666.017, 268.768, 5.67633, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39956, 670, 3, 1, 0, 0, -635.833, -663.132, 268.768, 5.66062, 93480, 0, 0, 464940, 0, 0, 0, 0, 0),
(39626, 670, 3, 1, 0, 0, -562.751, -699.903, 268.767, 2.75465, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(40269, 670, 3, 1, 0, 0, -533.653, -700.941, 268.767, 1.04248, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(39870, 670, 3, 1, 0, 0, -538.177, -697.072, 268.767, 0.154981, 93480, 0, 0, 168, 0, 0, 0, 0, 0),
(39892, 670, 3, 1, 0, 0, -538.289, -692.445, 269.12, 6.11615, 93480, 0, 0, 309960, 0, 0, 0, 0, 0),
(40486, 670, 3, 1, 0, 0, -754.77, -787.614, 233.233, 1.79099, 300, 0, 0, 49638, 0, 0, 0, 0, 0),
(40486, 670, 3, 1, 0, 0, -748.307, -782.618, 233.233, 2.15856, 300, 0, 0, 49638, 0, 0, 0, 0, 0),
(40486, 670, 3, 1, 0, 0, -745.262, -787.899, 233.233, 1.15639, 300, 0, 0, 49638, 0, 0, 0, 0, 0),
(40486, 670, 3, 1, 0, 0, -743.479, -781.883, 233.233, 1.9033, 300, 0, 0, 49638, 0, 0, 0, 0, 0),
(40486, 670, 3, 1, 0, 0, -739.534, -866.357, 233.226, 4.6715, 300, 0, 0, 49638, 0, 0, 0, 0, 0),
(40486, 670, 3, 1, 0, 0, -743.071, -870.399, 233.233, 4.80816, 300, 0, 0, 49638, 0, 0, 0, 0, 0),
(40486, 670, 3, 1, 0, 0, -745.857, -863.124, 232.526, 4.66679, 300, 0, 0, 49638, 0, 0, 0, 0, 0),
(40486, 670, 3, 1, 0, 0, -748.124, -868.742, 233.232, 4.70292, 300, 0, 0, 49638, 0, 0, 0, 0, 0);

--
-- Gain token
REPLACE INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`, `CurrencyId1`, `CurrencyId2`, `CurrencyId3`, `CurrencyCount1`, `CurrencyCount2`, `CurrencyCount3`) VALUES
(48784, 1174, 1172, 7, 0, 125, 7, 0, 125, 1, 395, 0, 0, 70, 0, 0),
(48702, 1174, 1172, 7, 0, 125, 7, 0, 125, 1, 395, 0, 0, 70, 0, 0),
(48822, 1174, 1172, 7, 0, 125, 7, 0, 125, 1, 395, 0, 0, 70, 0, 0),
(48337, 1174, 1172, 7, 0, 125, 7, 0, 125, 1, 395, 0, 0, 70, 0, 0);
