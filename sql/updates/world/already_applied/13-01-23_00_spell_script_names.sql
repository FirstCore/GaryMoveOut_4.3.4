-- ---------------------------------------------
--  UPDATE SPELL_SCRIPT_NAMES GILNEAS-CITY
-- ---------------------------------------------

DELETE FROM `spell_script_names` WHERE `spell_id` = '68228';
INSERT `spell_script_names` (`spell_id`,`ScriptName`) VALUES ('68228', 'spell_rescue_krennan');

DELETE FROM `spell_script_names` WHERE `spell_id` = '68555';
INSERT `spell_script_names` (`spell_id`,`ScriptName`) VALUES ('68555', 'spell_keg_placed');