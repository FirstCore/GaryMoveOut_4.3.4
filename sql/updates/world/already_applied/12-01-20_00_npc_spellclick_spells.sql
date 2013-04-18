--
-- Spellclick
--

SET @ENTRY := 50047;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY;
INSERT INTO ``npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES ('50047', '93072', '1', '0');