--
-- Salle des origine
--

-- Nettoyage instance
DELETE FROM `creature` WHERE `map` = 644;
DELETE FROM `gameobject` WHERE `map` = 644;

--
-- Implantation Script dans la base

-- Instance
UPDATE `instance_template` SET `script`='instance_halls_of_origination' WHERE `map`=644;

-- Boss
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_isiset' WHERE `entry`=39587;
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_ammunae' WHERE `entry`=39731;
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_ptah' WHERE `entry`=39428;
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_anraphet' WHERE `entry`=39788;
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_rajh' WHERE `entry`=39378;
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_setesh' WHERE `entry`=39732;
UPDATE `creature_template` SET `AIName` = '', ScriptName='boss_temple_guardian_anhuur' WHERE `creature_template`.`entry` =39425;

-- Npc
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_flore' WHERE `entry`=40592;
UPDATE `creature_template` SET `AIName` = '', ScriptName='npc_alpha_beam' WHERE `entry`=41144;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_solar_wind' WHERE `entry` IN (47922,39635,39634);
UPDATE `creature_template` SET `AIName` = '', ScriptName='npc_vide_portal' WHERE `entry`=38429;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_viper' WHERE `entry`=39444;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_gardien_dair' WHERE `entry`=39803;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_gardien_de_flammes' WHERE `entry`=39800;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_gardien_de_terre' WHERE `entry`=39801;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_gardien_deau' WHERE `entry`=39802;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_lancelombre_du_temple' WHERE `entry`=48141;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_traqueur_veloce_du_temple' WHERE `entry`=48139;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_lanceur_de_runes_du_temple' WHERE `entry`=48140;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_sculptefeu_du_temple' WHERE `entry`=48143;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_scarabee_caustique' WHERE `entry`=40310;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_glisseur_venimeux' WHERE `entry`=39440;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_horreur_os_poussiere' WHERE `entry`=40787;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_tourmenteur_os_poussiere' WHERE `entry`=40311;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_chercheur_du_vide' WHERE `entry`=41371;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_seigneur_du_vide' WHERE `entry`=41364;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_anomalie_spatiale' WHERE `entry`=40170;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_animateur_de_flux' WHERE `entry`=40033;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_serviteur_solegrace' WHERE `entry`=39366;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_fee_solegrace' WHERE `entry`=39369;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_petite_fee_solegrace' WHERE `entry`=39370;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_porte_parole_solegrace' WHERE `entry`=39373;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_nymphe_gardienne' WHERE `entry`=40715;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_liane_vivante' WHERE `entry`=40668;
UPDATE `creature_template` SET `AIName` = '', ScriptName='mob_spore_en_bourgeon' WHERE `entry`=40669;


-- Gameobject
UPDATE `gameobject_template` SET `ScriptName` = 'go_beacon_of_light' WHERE `entry` = 203133;
UPDATE `gameobject_template` SET `ScriptName` = 'go_beacon_of_light' WHERE `entry` = 203136;

-- Spell
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (74136, 'spell_isiset_supernova');


--
-- Traduction Text
DELETE FROM `creature_text` WHERE `entry` = 39587;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39587', '0', '0', 'Regardez vers le ciel ! Que voyez-vous ?', '14', '0', '0', '0', '0', '18843', 'VO_HO_Isiset_Engage'), 
('39587', '1', '0', 'Bask in my radiance!', '14', '0', '0', '0', '0', '18845', 'VO_HO_Isiset_Event01'),
('39587', '2', '0', 'Insignifiant!', '14', '0', '0', '0', '0', '18847', 'VO_HO_Isiset_Slay02'),
('39587', '2', '1', 'The glimmer of your life, extinguished.', '14', '0', '0', '0', '0', '18846', 'VO_HO_Isiset_Slay01'),
('39587', '3', '0', 'Eons of darkness... by your hand.', '14', '0', '0', '0', '0', '18842', 'VO_HO_Isiset_Death01'),
('39587', '3', '1', 'Mon lustre… se ternit.', '14', '0', '0', '0', '0', '18844', 'VO_HO_Isiset_Death02');

DELETE FROM `creature_text` WHERE `entry` = 39731;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39731', '0', '0', 'Votre force vitale va venir fleurir mon jardin !', '14', '0', '0', '0', '0', '18571', 'VO_HO_Ammunae_Engage'), 
('39731', '1', '0', 'Your life, UNLEASHED!', '14', '0', '0', '0', '0', '18572', 'VO_HO_Ammunae_Event'),
('39731', '2', '0', 'Wither away!', '14', '0', '0', '0', '0', '18573', 'VO_HO_Ammunae_Slay01'),
('39731', '2', '1', 'Waste of energy.', '14', '0', '0', '0', '0', '18574', 'VO_HO_Ammunae_Slay02'),
('39731', '3', '0', 'Le cycle se perpétue…', '14', '0', '0', '0', '0', '18569', 'VO_HO_Ammunae_Death');

DELETE FROM `creature_text` WHERE `entry` = 39428;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39428', '0', '0', 'Toujours plus de charogne pour l''essaim… ', '14', '0', '0', '0', '0', '18906', 'VO_HO_Ptah_Engage'), 
('39428', '1', '0', 'Ptah… n''est… plus… ', '14', '0', '0', '0', '0', '18905', 'VO_HO_Ptah_Death'),
('39428', '2', '0', 'Poussière à la poussière ', '14', '0', '0', '0', '0', '18907', 'VO_HO_Ptah_Slay01'),
('39428', '2', '1', 'HYAAAH!!', '14', '0', '0', '0', '0', '18908', 'VO_HO_Ptah_Slay02');

DELETE FROM `creature_text` WHERE `entry` = 39788;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39788', '0', '0', 'Cette unité a été activée en dehors des protocoles de fonctionnement normales. Téléchargement de nouveaux paramètres de fonctionnement. Téléchargement terminé. Routines complètes d''unités d''autodéfense sont maintenant actives. Destruction des unités étrangères dans ce système doit maintenant commencer.', '14', '0', '0', '0', '0', '20857', 'VO_HO_Anraphet_Intro01'), 
('39788', '1', '0', 'Initialisation de la purge des entités non accréditées.', '14', '0', '0', '0', '0', '20862', 'VO_HO_Anraphet_Engage01'),
('39788', '2', '1', 'Purge Complete. ', '14', '0', '0', '0', '0', '20859', 'VO_HO_Anraphet_Slay02'),
('39788', '2', '0', 'Cible Anéanti.', '14', '0', '0', '0', '0', '20858', 'VO_HO_Anraphet_Slay01'),
('39788', '3', '0', 'Posture oméga activée. Annihilation des unités étrangères imminente.', '14', '0', '0', '0', '0', '20861', 'VO_HO_Anraphet_Special02'),
('39788', '4', '0', 'Extinction de l''unité Anraphet…', '14', '0', '0', '0', '0', '20856', 'VO_HO_Anraphet_Death01');

DELETE FROM `creature_text` WHERE `entry` = 39378;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39378', '0', '0', ' Profanateurs ! Misérables ! Monstres ! Sortez d''ici !', '14', '0', '0', '0', '0', '18911', 'VO_HO_Rajh_Engage'), 
('39378', '1', '0', 'Sentez-vous cette caresse ? La chaleur bénie du soleil… ?', '14', '0', '0', '0', '0', '18912', 'VO_HO_Rajh_Event01'),
('39378', '2', '0', 'Je vous envoie à votre divinité', '14', '0', '0', '0', '0', '18913', 'VO_HO_Rajh_Slay01'),
('39378', '2', '1', 'Je profite de la vie comme une offrande!', '14', '0', '0', '0', '0', '18914', 'VO_HO_Rajh_Slay01'),
('39378', '3', '0', 'Lumière étincelante… Emporte-moi!', '14', '0', '0', '0', '0', '18910', 'VO_HO_Rajh_Death');

DELETE FROM `creature_text` WHERE `entry` = 39732;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39732', '0', '0', 'Ce que vous ne contrôlez pas vous fait peur. Mais pourrez-vous contrôler votre peur ? ', '14', '0', '0', '0', '0', '18553', 'VO_HO_Setesh_Engage'),
('39732', '1', '0', 'Voici, comme l''infini qui arrive à votre monde', '14', '0', '0', '0', '0', '18554', 'VO_HO_Setesh_Event'), 
('39732', '2', '0', 'Comprends-tu maintenant?', '14', '0', '0', '0', '0', '18556', 'VO_HO_Setesh_Slay02'),
('39732', '2', '1', 'Embrassez la fin.', '14', '0', '0', '0', '0', '18555', 'VO_HO_Setesh_Slay01'),
('39732', '3', '0', 'Oui ! Domptez… votre… haine…', '14', '0', '0', '0', '0', '18552', 'VO_HO_Setesh_Death');

DELETE FROM `creature_text` WHERE `entry` = 39425;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39425', '0', '0', 'Hors d''ici, intrus ! Personne ne doit troubler cet endroit !', '14', '0', '0', '0', '0', '18580', 'VO_HO_Anhuur_Engage'), 
('39425', '4', '0', 'Temple Guardian Anhuur devient protégé par ses balises de défense! Désactivez-les en tirant les leviers en dessous!', '41', '0', '0', '0', '0', '0', 'VO_HO_Anhuur_Special'),
('39425', '3', '0', 'Qu''avez… vous… fait… ? ', '14', '0', '0', '0', '0', '18579', 'VO_HO_Anhuur_Death'),
('39425', '2', '0', 'Un produit de votre propre insolence!', '14', '0', '0', '0', '0', '18583', 'VO_HO_Anhuur_Slay02'),
('39425', '1', '0', 'Balises de lumière, entourez-moi de votre égide !', '14', '0', '0', '0', '0', '18581', 'VO_HO_Anhuur_Event'),
('39425', '2', '1', 'Je ne regrette rien !', '14', '0', '0', '0', '0', '18582', 'VO_HO_Anhuur_Slay01');

--
-- SmartScript 
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 39720;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=39720 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39720, 0, 39720, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 74134, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Astral Rain');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 39721;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=39721 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39721, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 5000, 7000, 11, 74374, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, ' ');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 39722;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=39722 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39722, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 74133, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Veil of Sky');

SET @ENTRY := 56054;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,64,0,100,0,0,0,0,0,75,58549,0,0,0,0,0,11,56054,100,0,0.0,0.0,0.0,0.0,"Buff 1"),
(@ENTRY,@SOURCETYPE,1,0,23,0,100,0,58549,2,5000,5000,28,74938,0,0,0,0,0,11,39425,100,0,0.0,0.0,0.0,0.0,"EnleveAureAnhuur"),
(@ENTRY,@SOURCETYPE,2,0,64,0,100,0,0,0,0,0,75,58549,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Buff 1"),
(@ENTRY,@SOURCETYPE,3,0,64,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"ParlePlus"),
(@ENTRY,@SOURCETYPE,4,0,64,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"CloseGossip"),
(@ENTRY,@SOURCETYPE,5,0,23,0,100,0,2880,0,15000,15000,81,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Parle"),
(@ENTRY,@SOURCETYPE,6,0,23,0,100,0,2880,0,15000,15000,81,1,0,0,0,0,0,11,56054,100,0,0.0,0.0,0.0,0.0,"Parle"),
(@ENTRY,@SOURCETYPE,7,0,23,0,100,0,2880,0,15000,15000,28,58549,0,0,0,0,0,11,56054,100,0,0.0,0.0,0.0,0.0,"Puaura"),
(@ENTRY,@SOURCETYPE,8,0,23,0,100,0,2880,0,15000,15000,28,58549,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Puaura"),
(@ENTRY,@SOURCETYPE,9,0,23,0,100,0,58549,2,15000,15000,75,2880,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Etourdi"),
(@ENTRY,@SOURCETYPE,10,0,23,0,100,0,58549,1,15000,15000,28,95660,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"EnleveauraVisible");

--
-- Correction template

-- Boss
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `Health_mod` = 20, `Mana_mod` = 109.0513, `flags_extra` = 2097153 WHERE `entry` = 39587;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `Health_mod` = 45, `Mana_mod` = 109.0513, `flags_extra` = 2097153 WHERE `entry` = 48710;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `VehicleId` = '', `Health_mod` = 20.0, `flags_extra` = 2097153 WHERE `entry` = 39731;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `Health_mod` = 35, `flags_extra` = 2097153 WHERE `entry` = 48715;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `flags_extra` = 2097153 WHERE `entry` = 39428;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `Health_mod` = 55, `flags_extra` = 2097153 WHERE `entry` = 48714;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `type_flags` = 0, `Health_mod` = 25, `flags_extra` = 2097153 WHERE `entry` = 39788;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `Health_mod` = 60, `flags_extra` = 2097153 WHERE `entry` = 48902;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `VehicleId` = '', `Health_mod` = 25, `flags_extra` = 2097153 WHERE `entry` = 39378;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `Health_mod` = 60, `flags_extra` = 2097153 WHERE `entry` = 48815;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `Health_mod` = 20, `flags_extra` = 2097153 WHERE `entry` = 39732;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `Health_mod` = 45, `flags_extra` = 2097153 WHERE `entry` = 48776;
UPDATE `creature_template` SET `rank` = 3, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `Mana_mod` = 11.9429, `flags_extra` = 2097153 WHERE `entry` = 39425;
UPDATE `creature_template` SET `rank` = 3, `type_flags` = 0, `Health_mod` = 40, `Mana_mod` = 11.9429, `flags_extra` = 2097153 WHERE `entry` = 49262;

-- Npc
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 40592;
UPDATE `creature_template` SET `modelid1` = 1126, `modelid2` = 11686, `flags_extra` = 130 WHERE `entry` = 40183;
UPDATE `creature_template` SET `difficulty_entry_1` = 48891, `dynamicflags` = 0, `type_flags` = 0, `Health_mod` = 0.18 WHERE `entry` = 39444;
UPDATE `creature_template` SET `exp` = 3, `faction_A` = 16, `faction_H` = 16, `mindmg` = 417, `maxdmg` = 764, `attackpower` = 4133, `baseattacktime` = 2000, `rangeattacktime` = 2000, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `type_flags` = 0, `mechanic_immune_mask` = 2147483647 WHERE `entry` = 48891;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 12 WHERE `entry` = 39803;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 16 WHERE `entry` = 48896;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 12 WHERE `entry` = 39800;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 16 WHERE `entry` = 48894;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 12 WHERE `entry` = 39801;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 16 WHERE `entry` = 48895;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 12 WHERE `entry` = 39802;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 16 WHERE `entry` = 48892;
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 48141;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 7 WHERE `entry` = 49309;
UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 48139;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 7 WHERE `entry` = 49307;
UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 48140;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 7 WHERE `entry` = 49308;
UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 0 WHERE `entry` = 48143;
UPDATE `creature_template` SET `type_flags` = 0, `Health_mod` = 15 WHERE `entry` = 49310;
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 1, `Health_mod` = 4.0 WHERE `entry` = 40310;
UPDATE `creature_template` SET `maxlevel` = 85, `type_flags` = 1 WHERE `entry` = 49294;
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 1, `Health_mod` = 4.0 WHERE `entry` = 39440;
UPDATE `creature_template` SET `maxlevel` = 85, `type_flags` = 1 WHERE `entry` = 57540;
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 40787;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 49301;
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 40311;
UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 49295;
UPDATE `creature_template` SET `Health_mod` = 4, `difficulty_entry_1` = 49304, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `Health_mod` = 5 WHERE `entry` = 41371;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 16, `faction_H` = 16, `mindmg` = 417, `maxdmg` = 764, `attackpower` = 4133, `baseattacktime` = 2000, `rangeattacktime` = 2000, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `type_flags` = 0 WHERE `entry` = 49304;
UPDATE `creature_template` SET `difficulty_entry_1` = 49303, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 41364;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 16, `faction_H` = 16, `mindmg` = 417, `maxdmg` = 764, `attackpower` = 4133, `baseattacktime` = 2000, `rangeattacktime` = 2000, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `type_flags` = 0 WHERE `entry` = 49303;
UPDATE `creature_template` SET `difficulty_entry_1` = 49293, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `VehicleId` = 0, `Health_mod` = 8 WHERE `entry` = 40170;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 16, `faction_H` = 16, `mindmg` = 417, `maxdmg` = 764, `attackpower` = 4133, `baseattacktime` = 2000, `rangeattacktime` = 2000, `unit_class` = 4, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `type_flags` = 0 WHERE `entry` = 49293;
UPDATE `creature_template` SET `difficulty_entry_1` = 49291, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `Health_mod` = 4 WHERE `entry` = 40033;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 91, `faction_H` = 91, `mindmg` = 417, `maxdmg` = 764, `attackpower` = 4133, `baseattacktime` = 2000, `rangeattacktime` = 2000, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `type_flags` = 0 WHERE `entry` = 49291;
UPDATE `creature_template` SET `difficulty_entry_1` = 49282, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `Health_mod` = 4 WHERE `entry` = 39366;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 91, `faction_H` = 91, `mindmg` = 417, `maxdmg` = 764, `attackpower` = 4133, `baseattacktime` = 2000, `rangeattacktime` = 2000, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `type_flags` = 0 WHERE `entry` = 49282;
UPDATE `creature_template` SET `difficulty_entry_1` = 49283, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 39369;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 21, `faction_H` = 21, `baseattacktime` = 2000, `rangedattackpower` = 629, `type_flags` = 0 WHERE `entry` = 49283;
UPDATE `creature_template` SET `exp` = 3, `type_flags` = 0 WHERE `entry` = 39370;
UPDATE `creature_template` SET `difficulty_entry_1` = 49285, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `Health_mod` = 4 WHERE `entry` = 39373;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 91, `faction_H` = 91, `mindmg` = 417, `maxdmg` = 764, `attackpower` = 4133, `baseattacktime` = 2000, `rangeattacktime` = 2000, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `type_flags` = 0 WHERE `entry` = 49285;
UPDATE `creature_template` SET `difficulty_entry_1` = 49300, `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0, `Health_mod` = 12 WHERE `entry` = 40715;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 16, `faction_H` = 16, `mindmg` = 417, `maxdmg` = 764, `attackpower` = 4133, `baseattacktime` = 2000, `rangeattacktime` = 2000, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `type_flags` = 0, `equipment_id` = 54006 WHERE `entry` = 49300;
UPDATE `creature_template` SET `difficulty_entry_1` = 49299, `unit_flags` = 0, `unit_flags2` = 34848, `dynamicflags` = 0, `type_flags` = 0, `VehicleId` = 0, `Health_mod` = 4 WHERE `entry` = 40668;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 16, `faction_H` = 16, `mindmg` = 417, `maxdmg` = 764, `attackpower` = 4133, `baseattacktime` = 2000, `rangeattacktime` = 2000, `unit_flags2` = 34848, `minrangedmg` = 758.1, `maxrangedmg` = 1062.1, `rangedattackpower` = 220, `type_flags` = 0 WHERE `entry` = 49299;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `dynamicflags` = 0 WHERE `entry` = 40669;
UPDATE `creature_template` SET `VehicleId` = '' WHERE `entry` = 40539;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 41208;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3 WHERE `entry` = 39369;

-- Gameobject
UPDATE `gameobject_template` SET `flags` = 36 WHERE `entry` = 206506;

-- Template_Addon
DELETE FROM `creature_template_addon` WHERE (`entry`=40283);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40283, 0, 0, 0, 1, 0, '75116');

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(56054, 0, 0, 0, 1, 0, '95660');

--
-- Implentation

-- Boss
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(39378, 644, 3, 1, 0, 0, -289.933, 193.549, 343.947, 3.147, 96400, 0, 0, 2074850, 0, 0, 0, 0, 0),
(39425, 644, 3, 1, 0, 0, -640.559, 335.105, 77.7571, 1.58012, 94600, 0, 0, 3319760, 0, 0, 0, 0, 0),
(39428, 644, 3, 1, 0, 0, -504.835, -417.98, 155.145, 1.65941, 96400, 0, 0, 1659880, 0, 0, 0, 0, 0),
(39587, 644, 3, 1, 0, 0, -505.395, 417.567, 343.948, 4.78745, 93480, 0, 0, 3734730, 0, 0, 0, 0, 0),
(39731, 644, 3, 1, 0, 0, -719.422, 193.566, 343.948, 0.00146484, 96400, 0, 0, 1659880, 0, 0, 0, 0, 0),
(39732, 644, 3, 1, 0, 0, -505.581, -22.0298, 343.947, 1.5762, 96400, 0, 0, 1659880, 0, 0, 0, 0, 0),
(39788, 644, 3, 1, 0, 0, -54.0158, 366.694, 89.7789, 3.16456, 300, 0, 0, 4979640, 0, 0, 0, 0, 0);

-- Npc
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(39366, 644, 3, 1, 0, 0, -329.478, 163.187, 343.926, 1.85293, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(39366, 644, 3, 1, 0, 0, -328.997, 222.552, 343.927, 4.00885, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(39369, 644, 3, 1, 0, 0, -337.303, 224.219, 343.924, 3.67505, 80000, 0, 0, 84, 0, 0, 0, 0, 0),
(39369, 644, 3, 1, 0, 0, -323.145, 224.572, 343.924, 5.16731, 80000, 0, 0, 84, 0, 0, 0, 0, 0),
(39369, 644, 3, 1, 0, 0, -324.014, 163.557, 343.925, 0.60414, 80000, 0, 0, 84, 0, 0, 0, 0, 0),
(39369, 644, 3, 1, 0, 0, -335.192, 161.411, 343.922, 2.88965, 80000, 0, 0, 84, 0, 0, 0, 0, 0),
(39370, 644, 3, 1, 0, 0, -337.651, 196.605, 343.946, 0.553087, 80000, 0, 0, 13, 0, 0, 0, 0, 0),
(39370, 644, 3, 1, 0, 0, -338.951, 189.967, 343.945, 5.60712, 80000, 0, 0, 13, 0, 0, 0, 0, 0),
(39370, 644, 3, 1, 0, 0, -343.758, 189.894, 343.945, 3.74573, 80000, 0, 0, 13, 0, 0, 0, 0, 0),
(39370, 644, 3, 1, 0, 0, -343.215, 197.166, 343.945, 2.33594, 80000, 0, 0, 13, 0, 0, 0, 0, 0),
(39373, 644, 3, 1, 0, 0, -340.667, 193.409, 343.947, 0.003313, 80000, 0, 0, 210, 0, 0, 0, 0, 0),
(39440, 644, 3, 1, 0, 0, -461.163, -266.113, 141.073, 2.23133, 43200, 0, 0, 339960, 0, 0, 0, 0, 0),
(39440, 644, 3, 1, 0, 0, -512.917, 103.519, 82.0698, 1.34777, 43200, 0, 0, 339960, 0, 0, 0, 0, 0),
(39440, 644, 3, 1, 0, 0, -493.92, 31.684, 82.873, 2.20778, 43200, 0, 0, 339960, 0, 0, 0, 0, 0),
(39440, 644, 3, 1, 0, 0, -504.892, -37.3858, 81.8418, 1.55197, 43200, 0, 0, 339960, 0, 0, 0, 0, 0),
(39440, 644, 3, 1, 0, 0, -595.475, -255.892, 144.642, 0.609485, 43200, 0, 0, 339960, 0, 0, 0, 0, 0),
(39440, 644, 3, 1, 0, 0, -411.602, -263.814, 143.864, 0.574142, 43200, 0, 0, 339960, 0, 0, 0, 0, 0),
(39440, 644, 3, 1, 0, 0, -540.76, -295.419, 145.37, 1.91325, 43200, 0, 0, 339960, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -620.017, 354.375, 52.9072, 4.88595, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -663.054, 331.768, 53.1082, 1.84647, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -651.324, 303.707, 55.0546, 0.833306, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -673.848, 319.874, 52.9702, 5.27474, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -617.448, 307.137, 53.5624, 2.02317, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -629.009, 305.18, 52.953, 6.14651, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -624.934, 372.655, 53.92, 5.34541, 300, 0, 0, 49368, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -636.313, 367.866, 52.9524, 0.212833, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -660.232, 371.16, 53.6297, 0.299234, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -659.91, 359.351, 53.0507, 2.8989, 300, 0, 0, 49368, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -669.7, 345.221, 55.072, 0.821524, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -659.598, 310.598, 55.298, 2.25095, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -609.474, 347.047, 52.9491, 0.511277, 300, 0, 0, 49368, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -619.093, 319.792, 53.4394, 5.13727, 300, 0, 0, 9, 0, 0, 0, 0, 0),
(39444, 644, 3, 1, 0, 0, -617.347, 333.341, 52.9542, 1.45376, 300, 0, 0, 49368, 0, 0, 0, 0, 0),
(39800, 644, 3, 1, 0, 0, -223.085, 488.995, 89.1415, 4.63532, 96400, 0, 0, 996000, 0, 0, 0, 0, 0),
(39801, 644, 3, 1, 0, 0, -329.806, 244.807, 89.1371, 1.57226, 96400, 0, 0, 996000, 0, 0, 0, 0, 0),
(39802, 644, 3, 1, 0, 0, -223.083, 244.793, 89.1362, 1.50943, 96400, 0, 0, 996000, 0, 0, 0, 0, 0),
(39803, 644, 3, 1, 0, 0, -329.902, 489.053, 89.1406, 4.70208, 96400, 0, 0, 996000, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -260.157, 350.531, 75.8544, 2.80074, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -293.449, 382.256, 75.829, 3.02851, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -296.366, 399.591, 75.9044, 4.57181, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -289.801, 393.128, 75.8199, 3.70002, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -320.063, 381.621, 75.9148, 4.06133, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -420.125, 353.145, 89.8128, 0.197159, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -420.019, 369.811, 89.7949, 5.96198, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -415.445, 362.007, 89.7933, 2.01928, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -413.238, 377.908, 89.802, 4.04561, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -358.07, 350.933, 75.9417, 0.523104, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -263.936, 346.02, 75.8524, 1.17889, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -218.492, 335.899, 77.0171, 5.14909, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -260.277, 347.197, 75.8575, 2.0821, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -206.383, 356.57, 75.9147, 6.1544, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -399.051, 359.001, 86.8111, 2.8243, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -378.684, 375.296, 80.4334, 3.1306, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -295.986, 357.777, 75.853, 4.39904, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -297.13, 349.322, 75.8642, 1.46951, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -323.078, 355.698, 75.915, 2.32557, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -264.412, 349.377, 75.8477, 5.69886, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -350.87, 383.876, 75.916, 3.45262, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -265.318, 373.988, 75.7914, 1.87398, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39804, 644, 3, 1, 0, 0, -319.686, 302.347, 86.986, 3.48011, 43200, 0, 0, 10749, 0, 0, 0, 0, 0),
(39908, 644, 3, 1, 0, 0, -464.596, 366.847, 97.6927, 3.111, 300, 0, 0, 77, 0, 0, 0, 0, 0),
(40033, 644, 3, 1, 0, 0, -527.877, 366.55, 343.93, 5.18159, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(40033, 644, 3, 1, 0, 0, -534.383, 363.113, 343.927, 5.18159, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(40033, 644, 3, 1, 0, 0, -482.128, 367.314, 343.931, 4.09382, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(40033, 644, 3, 1, 0, 0, -475.466, 362.573, 343.925, 4.09382, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(40106, 644, 3, 1, 0, 0, -478.655, 375.774, 343.926, 4.09382, 80000, 0, 0, 84, 0, 0, 0, 0, 0),
(40106, 644, 3, 1, 0, 0, -469.269, 369.815, 343.918, 4.09382, 80000, 0, 0, 84, 0, 0, 0, 0, 0),
(40106, 644, 3, 1, 0, 0, -543.454, 369.166, 343.915, 5.31904, 80000, 0, 0, 84, 0, 0, 0, 0, 0),
(40106, 644, 3, 1, 0, 0, -530.484, 377.315, 343.929, 5.16196, 80000, 0, 0, 84, 0, 0, 0, 0, 0),
(40170, 644, 3, 1, 0, 0, -476.096, 369.718, 343.926, 4.09775, 80000, 0, 0, 336, 0, 0, 0, 0, 0),
(40170, 644, 3, 1, 0, 0, -535.805, 371.585, 343.925, 5.29155, 80000, 0, 0, 336, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -292.961, 355.404, 75.8505, 3.35446, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -355.193, 357.73, 75.9232, 4.92133, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -268.636, 374.448, 75.7879, 0.84119, 43200, 0, 0, 617012864, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -337.324, 427.192, 85.6588, 4.92524, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -237.428, 353.759, 75.9068, 3.42907, 43200, 0, 0, 617012864, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -240.741, 349.969, 75.904, 0.589855, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -336.608, 402.834, 78.4256, 1.02966, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -263.787, 379.643, 75.793, 4.06525, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -299.921, 351.818, 75.8664, 0.719453, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -351.54, 353.429, 75.9322, 3.16204, 43200, 0, 0, 617012864, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -206.197, 354.079, 75.9266, 0.440629, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -318.294, 334.575, 77.384, 4.57966, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -233.65, 412.445, 81.2267, 1.38703, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -205.322, 359.077, 75.9148, 5.71065, 43200, 0, 0, 617012864, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -233.848, 376.667, 75.9043, 5.79705, 43200, 0, 0, 617012864, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -323.9, 381.657, 75.9148, 5.26691, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -229.349, 373.544, 75.9071, 2.4002, 43200, 0, 0, 106235, 0, 0, 0, 0, 0),
(40251, 644, 3, 1, 0, 0, -318.462, 377.621, 75.9148, 2.7772, 43200, 0, 0, 617012864, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -240.738, 354.458, 75.9085, 5.46718, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -236.979, 350.065, 75.9073, 2.27846, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -228.592, 317.524, 82.492, 4.62679, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -208.854, 378.605, 75.921, 1.38311, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -201.48, 358.121, 75.9127, 3.52725, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -201.654, 354.087, 75.9152, 2.27454, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -230.387, 377.331, 75.9053, 4.16735, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -232.849, 372.991, 75.9051, 1.01397, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -262.771, 375.921, 75.8011, 2.88715, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -268.289, 379.121, 75.7554, 5.5418, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -294.185, 351.771, 75.8559, 2.25883, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -321.341, 410.924, 80.7693, 1.79543, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -337.608, 317.075, 82.6241, 4.65035, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -358.019, 355.146, 75.9296, 5.88344, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -215.539, 432.946, 87.3954, 1.09643, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -354.399, 349.967, 75.9526, 1.26923, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -325.843, 377.327, 75.9148, 0.578082, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -322.366, 375.121, 75.9148, 1.42632, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40252, 644, 3, 1, 0, 0, -299.288, 356.509, 75.8588, 5.50253, 43200, 0, 0, 39745, 0, 0, 0, 0, 0),
(40310, 644, 3, 1, 0, 0, -518.72, -8.83258, 82.6891, 3.7236, 43200, 0, 0, 338960, 0, 0, 0, 0, 0),
(40310, 644, 3, 1, 0, 0, -516.097, 35.278, 83.2987, 1.35562, 43200, 0, 0, 338960, 0, 0, 0, 0, 0),
(40310, 644, 3, 1, 0, 0, -496.184, 82.5577, 82.2746, 1.87398, 43200, 0, 0, 338960, 0, 0, 0, 0, 0),
(40310, 644, 3, 1, 0, 0, -480.602, -304.518, 147.827, 1.74831, 43200, 0, 0, 338960, 0, 0, 0, 0, 0),
(40310, 644, 3, 1, 0, 0, -406.079, -310.548, 144.835, 2.63189, 43200, 0, 0, 338960, 0, 0, 0, 0, 0),
(40310, 644, 3, 1, 0, 0, -544.371, -264.349, 141.073, 6.28006, 43200, 0, 0, 338960, 0, 0, 0, 0, 0),
(40311, 644, 3, 1, 0, 0, -519.877, -278.171, 141.952, 1.21817, 43200, 0, 0, 357, 0, 0, 0, 0, 0),
(40311, 644, 3, 1, 0, 0, -484.33, -249.357, 142.017, 2.85965, 43200, 0, 0, 357648, 0, 0, 0, 0, 0),
(40311, 644, 3, 1, 0, 0, -495.096, -276.878, 141.213, 1.59123, 43200, 0, 0, 357648, 0, 0, 0, 0, 0),
(40311, 644, 3, 1, 0, 0, -501.325, 53.6742, 82.7205, 1.63836, 43200, 0, 0, 357648, 0, 0, 0, 0, 0),
(40311, 644, 3, 1, 0, 0, -497.73, -36.308, 81.8418, 1.51269, 43200, 0, 0, 357648, 0, 0, 0, 0, 0),
(40311, 644, 3, 1, 0, 0, -514.221, 13.1552, 82.5146, 1.39488, 43200, 0, 0, 357648, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -845.059, 472.984, 53.9642, 3.37233, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -693.963, 454.465, 74.2059, 6.22725, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -734.339, 521.537, 67.1993, 3.26238, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -617.247, 485.772, 83.7949, 1.31459, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -656.836, 410.919, 83.8329, 2.99927, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -637.455, 186.24, 82.8412, 3.23881, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -81.0345, 336.722, 89.778, 0.910106, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -185.169, 380.788, 76.905, 0.391745, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -269.078, 336.804, 75.8537, 6.0152, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -423.928, 374.24, 89.7932, 0.293565, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -484.546, -371.765, 155.923, 5.90916, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -625.148, 260.617, 83.8379, 0.917961, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -957.906, 494.789, 53.36, 3.28986, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -511.091, 308.831, 95.649, 1.62482, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -476.141, 185.882, 79.8206, 0.784439, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -496.447, 42.3333, 82.9886, 1.42847, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -510.036, -57.7084, 83.4766, 1.66016, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -507.789, -120.342, 104.728, 1.91541, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -570.092, -248.296, 142.38, 2.98355, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -486.474, -265.49, 141.073, 0.163974, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -526.189, -655.263, 139.962, 1.56984, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -535.931, -709.601, 139.966, 3.06602, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -480.174, -668.612, 139.966, 4.91563, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -501.011, -560.97, 168.796, 4.93526, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -525.165, -471.109, 157.824, 5.08449, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -536.205, -400.628, 157.906, 2.85396, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40539, 644, 3, 1, 0, 0, -511.174, 130.879, 83.7963, 1.76619, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(40668, 644, 3, 1, 0, 0, -681.946, 163.038, 343.924, 0.366322, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(40668, 644, 3, 1, 0, 0, -682.26, 224.497, 343.925, 5.80913, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(40669, 644, 3, 1, 0, 0, -685.078, 219.317, 343.929, 1.69521, 80000, 0, 0, 42, 0, 0, 0, 0, 0),
(40669, 644, 3, 1, 0, 0, -685.107, 157.797, 343.918, 1.7384, 80000, 0, 0, 42, 0, 0, 0, 0, 0),
(40669, 644, 3, 1, 0, 0, -684.73, 228.973, 343.919, 4.23598, 80000, 0, 0, 42, 0, 0, 0, 0, 0),
(40715, 644, 3, 1, 0, 0, -678.84, 222.279, 343.928, 5.14155, 80000, 0, 0, 336, 0, 0, 0, 0, 0),
(40715, 644, 3, 1, 0, 0, -686.661, 165.486, 343.926, 1.12972, 80000, 0, 0, 336, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -513.106, -36.6724, 82.7276, 1.43024, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -496.016, 1.65393, 82.0296, 1.70905, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -487.302, -274.688, 141.073, 1.93682, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -495.659, 53.5947, 83.8329, 1.6855, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -514.638, -279.739, 141.456, 1.22209, 43200, 0, 0, 349960, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -583.042, -235.143, 142.774, 4.90563, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -589.07, -281.906, 141.073, 3.73538, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -515.034, 76.7116, 81.852, 1.32028, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -458.712, -287.438, 142.39, 5.29047, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -439.559, -263.93, 141.891, 2.2549, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -509.617, 12.3444, 81.8417, 1.46951, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -397.557, -284.711, 141.073, 2.9814, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -596.293, -284.303, 141.073, 0.487763, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(40787, 644, 3, 1, 0, 0, -554.754, -253.519, 143.131, 6.13085, 43200, 0, 0, 168, 0, 0, 0, 0, 0),
(41212, 644, 3, 1, 0, 0, -532.232, 10.4177, 343.927, 3.81971, 80000, 0, 0, 8, 0, 0, 0, 0, 0),
(41212, 644, 3, 1, 0, 0, -526.525, 19.092, 343.933, 0.297201, 80000, 0, 0, 8, 0, 0, 0, 0, 0),
(41212, 644, 3, 1, 0, 0, -475.375, 10.9708, 343.924, 4.75041, 80000, 0, 0, 8, 0, 0, 0, 0, 0),
(41212, 644, 3, 1, 0, 0, -477.479, 28.4646, 343.926, 1.1415, 80000, 0, 0, 8, 0, 0, 0, 0, 0),
(41212, 644, 3, 1, 0, 0, -484.599, 22.0368, 343.933, 2.56307, 80000, 0, 0, 8, 0, 0, 0, 0, 0),
(41212, 644, 3, 1, 0, 0, -534.673, 21.362, 343.927, 1.65594, 80000, 0, 0, 8, 0, 0, 0, 0, 0),
(41364, 644, 3, 1, 0, 0, -533.708, 14.767, 343.927, 1.59703, 80000, 0, 0, 336, 0, 0, 0, 0, 0),
(41364, 644, 3, 1, 0, 0, -478.835, 16.8348, 343.928, 1.86471, 80000, 0, 0, 336, 0, 0, 0, 0, 0),
(41371, 644, 3, 1, 0, 0, -529.974, 16.8405, 343.93, 1.06689, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(41371, 644, 3, 1, 0, 0, -482.963, 16.5216, 343.932, 2.03685, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(41371, 644, 3, 1, 0, 0, -537.747, 16.4193, 343.924, 1.34963, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(41371, 644, 3, 1, 0, 0, -475.559, 19.641, 343.926, 1.91904, 80000, 0, 0, 168, 0, 0, 0, 0, 0),
(48139, 644, 3, 1, 0, 0, -674.182, 262.273, 83.8614, 6.25253, 43200, 0, 0, 485620, 0, 0, 0, 0, 0),
(48139, 644, 3, 1, 0, 0, -479.318, 370.376, 95.7385, 3.50755, 43200, 0, 0, 485620, 0, 0, 0, 0, 0),
(48139, 644, 3, 1, 0, 0, -585.1, 196.405, 81.7493, 3.0913, 43200, 0, 0, 485620, 0, 0, 0, 0, 0),
(48139, 644, 3, 1, 0, 54002, -713.918, 516.548, 67.8163, 3.14408, 300, 0, 0, 485620, 0, 0, 0, 0, 0),
(48139, 644, 3, 1, 0, 54002, -705.456, 464.278, 70.5254, 3.13357, 7200, 0, 0, 485620, 0, 0, 0, 0, 0),
(48139, 644, 3, 1, 0, 0, -606.079, 187.517, 81.7525, 2.67111, 43200, 0, 0, 485620, 0, 0, 0, 0, 0),
(48139, 644, 3, 1, 0, 0, -510.002, 347.368, 95.6497, 4.8545, 43200, 0, 0, 485620, 0, 0, 0, 0, 0),
(48139, 644, 1, 1, 0, 48139, -836.985, 495.934, 53.9296, 3.16821, 300, 0, 0, 515968, 0, 0, 0, 0, 0),
(48139, 644, 3, 1, 0, 0, -898.136, 493.82, 51.8811, 3.64499, 43200, 0, 0, 485620, 0, 0, 0, 0, 0),
(48140, 644, 3, 1, 0, 0, -479.595, 363.343, 95.7385, 2.87531, 43200, 0, 0, 462530, 0, 0, 0, 0, 0),
(48140, 644, 3, 1, 0, 0, -605.599, 196.006, 81.7525, 3.22089, 43200, 0, 0, 462530, 0, 0, 0, 0, 0),
(48140, 644, 3, 1, 0, 54002, -705.417, 455.06, 70.5382, 3.16892, 7200, 0, 0, 462530, 0, 0, 0, 0, 0),
(48140, 644, 3, 1, 0, 0, -898.277, 482.452, 51.8756, 2.66324, 43200, 0, 0, 462530, 0, 0, 0, 0, 0),
(48140, 644, 3, 1, 0, 0, -503.546, 348.845, 95.6883, 4.75241, 43200, 0, 0, 462530, 0, 0, 0, 0, 0),
(48140, 644, 3, 1, 0, 0, -612.024, 254.171, 83.8573, 3.06381, 43200, 0, 0, 462530, 0, 0, 0, 0, 0),
(48140, 644, 3, 1, 0, 0, -673.902, 256.624, 83.8666, 0.0282414, 43200, 0, 0, 462530, 0, 0, 0, 0, 0),
(48140, 644, 1, 1, 0, 48140, -837.104, 479.215, 53.9686, 3.15808, 300, 0, 0, 375767, 59612, 0, 0, 0, 0),
(48140, 644, 3, 1, 0, 54002, -708.367, 511.215, 69.5933, 3.17957, 300, 0, 0, 462530, 0, 0, 0, 0, 0),
(48140, 644, 3, 1, 0, 54002, -648.612, 403.284, 83.8554, 0.0697825, 93480, 0, 0, 462530, 0, 0, 0, 0, 0),
(48141, 644, 3, 1, 0, 0, -611.666, 259.294, 83.8575, 3.05988, 43200, 0, 0, 452430, 0, 0, 0, 0, 0),
(48141, 644, 3, 1, 0, 0, -585.23, 191.097, 81.7509, 3.03632, 43200, 0, 0, 452430, 0, 0, 0, 0, 0),
(48141, 644, 3, 1, 0, 0, -497.354, 347.823, 95.6805, 4.42254, 43200, 0, 0, 452430, 0, 0, 0, 0, 0),
(48141, 644, 3, 1, 0, 54002, -708.427, 521.772, 69.5735, 3.14422, 300, 0, 0, 452430, 0, 0, 0, 0, 0),
(48141, 644, 1, 1, 0, 48141, -841.157, 488.344, 53.9279, 3.147, 300, 0, 0, 429448, 0, 0, 0, 0, 0),
(48141, 644, 3, 1, 0, 54002, -631.482, 403.727, 83.8549, 3.13441, 93480, 0, 0, 452430, 0, 0, 0, 0, 0),
(48141, 644, 3, 1, 0, 0, -606.711, 203.778, 81.7542, 3.84135, 43200, 0, 0, 452430, 0, 0, 0, 0, 0),
(48141, 644, 3, 1, 0, 54002, -713.156, 459.817, 68.06, 3.14308, 7200, 0, 0, 452430, 0, 0, 0, 0, 0),
(48141, 644, 3, 1, 0, 0, -899.99, 488.139, 51.8796, 3.15804, 43200, 0, 0, 452430, 0, 0, 0, 0, 0),
(48143, 644, 1, 1, 0, 0, -818.734, 488.251, 55.868, 3.14236, 300, 0, 0, 805215, 0, 0, 0, 0, 0),
(48143, 644, 3, 1, 0, 0, -505.477, 317.623, 95.6491, 4.6346, 43200, 0, 0, 1062350, 0, 0, 0, 0, 0),
(48143, 644, 3, 1, 0, 54002, -639.789, 400.159, 83.8624, 1.59738, 93480, 0, 0, 1062350, 0, 0, 0, 0, 0),
(48710, 644, 3, 1, 0, 0, -505.403, 408.859, 343.947, 4.70209, 96400, 0, 0, 1659880, 0, 0, 0, 0, 0),
(48902, 644, 3, 1, 0, 0, -79.168, 366.82, 89.7791, 3.12494, 96400, 0, 0, 2074850, 0, 0, 0, 0, 0),
(49941, 644, 3, 1, 0, 0, -482.729, 170.389, 330.668, 2.33741, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(51329, 644, 2, 1, 0, 0, -558.362, -379.155, 159.869, 3.95122, 300, 0, 0, 13, 0, 0, 0, 0, 0),
(51329, 644, 2, 1, 0, 0, -515.057, -339.496, 162.193, 1.47328, 300, 0, 0, 13, 0, 0, 0, 0, 0),
(51329, 644, 2, 1, 0, 0, -615.828, -391.876, 161.568, 2.99424, 300, 0, 0, 13, 0, 0, 0, 33554432, 0),
(56054, 644, 3, 1, 0, 0, -668.112, 325.167, 53.1607, 1.58557, 300, 0, 0, 963587, 0, 0, 0, 0, 0),
(56054, 644, 3, 1, 0, 0, -613.564, 327.041, 53.0268, 1.69553, 300, 0, 0, 963587, 0, 0, 0, 0, 0);

-- Gameobject
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(202314, 644, 3, 1, -121.47, 365.601, 89.7908, 6.27268, 0, 0, 0.00525344, -0.999986, 300, 0, 1),
(203133, 644, 3, 1, -671.668, 319.531, 52.9673, 4.82682, 0, 0, 0.665514, -0.746385, 300, 0, 1),
(203136, 644, 3, 1, -609.758, 322.384, 53.1516, 4.77576, 0, 0, 0.684349, -0.729155, 300, 0, 1),
(206506, 644, 1, 1, -640.516, 304.814, 53.2086, 3.12817, 0, 0, 0.999977, 0.00671246, 300, 0, 1),
(206506, 644, 2, 1, -640.516, 304.814, 53.2086, 3.12817, 0, 0, 0.999977, 0.00671246, 300, 0, 1),
(207410, 644, 3, 1, -613.236, 487.993, 83.7949, 3.09979, 0, 0, 0.999782, 0.0208977, 300, 0, 1),
(207547, 644, 3, 1, -505.319, 193.743, 79.01, 1.54664, 0, 0, 0.698513, 0.715597, 300, 0, 1),
(207899, 644, 1, 1, -954.13, 445.627, 53.3671, 1.58804, 0, 0, 0.713176, 0.700985, 300, 0, 1),
(207899, 644, 2, 1, -954.13, 445.627, 53.3671, 1.58804, 0, 0, 0.713176, 0.700985, 300, 0, 1),
(207900, 644, 1, 1, -954.13, 445.627, 53.3671, 1.58804, 0, 0, 0.713176, 0.700985, 300, 0, 1),
(207900, 644, 2, 1, -954.13, 445.627, 53.3671, 1.58804, 0, 0, 0.713176, 0.700985, 300, 0, 1),
(211086, 644, 1, 1, -507.723, -692.585, 139.967, 1.52739, 0, 0, 0.691596, 0.722285, 300, 0, 1),
(211086, 644, 2, 1, -91.3048, 399.835, 89.7742, 1.07501, 0, 0, 0.511993, 0.85899, 300, 0, 1),
(211087, 644, 1, 1, -439.54, 366.806, 89.7918, 3.14184, 0, 0, 1, -0.000123902, 300, 0, 1),
(211093, 644, 1, 1, -505.47, 259.13, 83.7964, 4.70478, 0, 0, 0.70979, -0.704413, 300, 0, 1),
(211093, 644, 1, 1, -640.609, 235.376, 83.7963, 1.5593, 0, 0, 0.703029, 0.711161, 300, 0, 1),
(211093, 644, 1, 1, -505.542, 127.759, 83.7941, 1.57106, 0, 0, 0.707199, 0.707015, 300, 0, 1),
(211093, 644, 1, 1, -570.758, 193.441, 83.7955, 3.134, 0, 0, 0.999993, 0.00379462, 300, 0, 1),
(211093, 644, 1, 1, -640.521, 434.26, 83.7963, 1.56787, 0, 0, 0.706072, 0.70814, 300, 0, 1),
(211093, 644, 1, 1, -884.37, 488.042, 53.9244, 3.20936, 0, 0, 0.999426, -0.0338794, 0, 0, 1),
(211093, 644, 2, 1, -505.423, 297.365, 97.6922, 4.71264, 0, 0, 0.707019, -0.707195, 300, 0, 1),
(211093, 644, 2, 1, -505.47, 259.13, 83.7964, 4.70478, 0, 0, 0.70979, -0.704413, 300, 0, 1),
(211093, 644, 2, 1, -505.489, -118.508, 104.728, 1.56712, 0, 0, 0.705807, 0.708405, 300, 0, 1),
(211093, 644, 1, 1, -505.423, 297.365, 97.6922, 4.71264, 0, 0, 0.707019, -0.707195, 300, 0, 1),
(211093, 644, 1, 1, -505.489, -118.508, 104.728, 1.56712, 0, 0, 0.705807, 0.708405, 300, 0, 1),
(211093, 644, 2, 1, -884.37, 488.042, 53.9244, 3.20936, 0, 0, 0.999426, -0.0338794, 0, 0, 1),
(211093, 644, 2, 1, -640.521, 434.26, 83.7963, 1.56787, 0, 0, 0.706072, 0.70814, 300, 0, 1),
(211093, 644, 1, 1, -505.544, -65.307, 83.7955, 1.55927, 0, 0, 0.70302, 0.71117, 300, 0, 1),
(211093, 644, 2, 1, -570.758, 193.441, 83.7955, 3.134, 0, 0, 0.999993, 0.00379462, 300, 0, 1),
(211093, 644, 2, 1, -505.542, 127.759, 83.7941, 1.57106, 0, 0, 0.707199, 0.707015, 300, 0, 1),
(211093, 644, 2, 1, -505.544, -65.307, 83.7955, 1.55927, 0, 0, 0.70302, 0.71117, 300, 0, 1),
(211093, 644, 2, 1, -640.609, 235.376, 83.7963, 1.5593, 0, 0, 0.703029, 0.711161, 300, 0, 1),
(280000, 644, 3, 1, -505.974, -335.395, 162.365, 4.68676, 0, 0, 0.71611, -0.697988, 300, 0, 1);


--
-- Gain token
REPLACE INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`, `CurrencyId1`, `CurrencyId2`, `CurrencyId3`, `CurrencyCount1`, `CurrencyCount2`, `CurrencyCount3`) VALUES
(48815, 1173, 0, 7, 0, 125, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0),
(49262, 1173, 0, 7, 0, 125, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0),
(48714, 1173, 0, 7, 0, 125, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0),
(48710, 1173, 0, 7, 0, 125, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0),
(48715, 1173, 0, 7, 0, 125, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0),
(48776, 1173, 0, 7, 0, 125, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0),
(48902, 1173, 0, 7, 0, 125, 0, 0, 0, 0, 395, 0, 0, 70, 0, 0);