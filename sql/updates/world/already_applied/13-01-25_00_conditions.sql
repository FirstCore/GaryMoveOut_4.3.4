--
-- Condition for quest 26616
--

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 43443, 81243, 0, 0, 9, 0, 26616, 0, 0, 0, 0, 0, '', 'Npc_spellclick_spells - ''�a n�en finit pas'' Doit �tre accept�'),
(18, 43443, 81243, 0, 0, 8, 0, 26616, 0, 0, 1, 0, 0, '', 'Npc_spellclick_spells - ''�a n�en finit pas'' Doit pas �tre remplie');
